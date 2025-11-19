@interface _BPSInnerBiomeSubscription
- (_BPSInnerBiomeSubscription)initWithStreamEnumerator:(id)a3 downstream:(id)a4 streamId:(id)a5 accessClient:(id)a6;
- (id)newBookmark;
- (void)cancel;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSInnerBiomeSubscription

- (_BPSInnerBiomeSubscription)initWithStreamEnumerator:(id)a3 downstream:(id)a4 streamId:(id)a5 accessClient:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _BPSInnerBiomeSubscription;
  v15 = [(_BPSInnerBiomeSubscription *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_enumerator, a3);
    objc_storeStrong(&v16->_downstream, a4);
    v16->_pendingDemand = 0;
    objc_storeStrong(&v16->_streamId, a5);
    v16->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_accessClient, a6);
  }

  return v16;
}

- (void)requestDemand:(int64_t)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  v5 = v4->_downstream;
  if (!v5)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      streamId = v4->_streamId;
      *buf = 138412546;
      v44 = v15;
      v45 = 2112;
      v46 = streamId;
      _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_DEFAULT, "%@ - Downstream is nil. StreamId: %@", buf, 0x16u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"%@ - Downstream is nil. StreamId: %@", v20, v4->_streamId];
    v42 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v23 = [v17 errorWithDomain:@"com.apple.biome.BiomeStreams" code:-1 userInfo:v22];

    os_unfair_lock_unlock(&v4->_lock);
    v24 = [MEMORY[0x1E698F0C0] failureWithError:v23];
    v25 = 0;
    goto LABEL_20;
  }

  enumerator = v4->_enumerator;
  if (!enumerator)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [_BPSInnerBiomeSubscription requestDemand:v4];
    }

    v27 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40 = @"Can't form store enumerator. Going to complete this source";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v29 = v27;
    v30 = -1;
    goto LABEL_19;
  }

  if (([(BMStoreEnumerator *)enumerator isDataAccessible]& 1) == 0)
  {
    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_BPSInnerBiomeSubscription requestDemand:v4];
    }

    v32 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38 = @"Enumerator doesn't have access to data. Going to complete this source";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v29 = v32;
    v30 = 1;
LABEL_19:
    v23 = [v29 errorWithDomain:@"com.apple.biome.BiomeStreams" code:v30 userInfo:v28];

    downstream = v4->_downstream;
    v4->_downstream = 0;

    os_unfair_lock_unlock(&v4->_lock);
    v24 = [MEMORY[0x1E698F0C0] failureWithError:v23];
    v25 = v5;
LABEL_20:
    [(BPSSubscriber *)v25 receiveCompletion:v24];

    goto LABEL_21;
  }

  v7 = v4->_pendingDemand + a3;
  v4->_pendingDemand = v7;
  if (v4->_recursion || v7 < 1)
  {
LABEL_9:
    os_unfair_lock_unlock(&v4->_lock);
  }

  else
  {
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v4->_enumerator;
      if (!v9)
      {
        break;
      }

      v10 = [(BMStoreEnumerator *)v9 nextEvent];
      if (!v10)
      {
        v36 = v4->_downstream;
        v4->_downstream = 0;

        os_unfair_lock_unlock(&v4->_lock);
        v35 = [MEMORY[0x1E698F0C0] success];
        [(BPSSubscriber *)v5 receiveCompletion:v35];
        goto LABEL_25;
      }

      v11 = v10;
      --v4->_pendingDemand;
      v4->_recursion = 1;
      os_unfair_lock_unlock(&v4->_lock);
      v12 = [(BPSSubscriber *)v5 receiveInput:v11];
      os_unfair_lock_lock(&v4->_lock);
      v4->_pendingDemand += v12;
      v4->_recursion = 0;

      objc_autoreleasePoolPop(v8);
      if (v4->_pendingDemand <= 0)
      {
        goto LABEL_9;
      }
    }

    v35 = __biome_log_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [_BPSInnerBiomeSubscription requestDemand:v4];
    }

LABEL_25:

    objc_autoreleasePoolPop(v8);
  }

LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "%@ - cancel", &v9, 0xCu);
  }

  os_unfair_lock_lock(&v2->_lock);
  downstream = v2->_downstream;
  v2->_downstream = 0;

  enumerator = v2->_enumerator;
  v2->_enumerator = 0;

  os_unfair_lock_unlock(&v2->_lock);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)newBookmark
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    streamId = self->_streamId;
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = streamId;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "%@ - get new store bookmark for stream: %@", &v9, 0x16u);
  }

  result = [(BMStoreEnumerator *)self->_enumerator bookmark];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end