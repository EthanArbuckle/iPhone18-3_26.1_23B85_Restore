@interface CHPowerLogger
- (void)logModelInference:(unint64_t)inference startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp data:(id)data;
- (void)logModelLoaded:(unint64_t)loaded;
- (void)logModelUnloaded:(unint64_t)unloaded;
@end

@implementation CHPowerLogger

- (void)logModelLoaded:(unint64_t)loaded
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"model";
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, loaded, v3, v4, v5);
  v14[1] = @"loadType";
  v15[0] = v6;
  v15[1] = &unk_1EF1EC9D0;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v15, v14, 2, v8);
  objc_opt_self();
  v10 = dispatch_get_global_queue(9, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1836A09A4;
  v12[3] = &unk_1E6DDC1D0;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, v12);
}

- (void)logModelUnloaded:(unint64_t)unloaded
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"model";
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, unloaded, v3, v4, v5);
  v14[1] = @"loadType";
  v15[0] = v6;
  v15[1] = &unk_1EF1EC9E8;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v15, v14, 2, v8);
  objc_opt_self();
  v10 = dispatch_get_global_queue(9, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1836A09A4;
  v12[3] = &unk_1E6DDC1D0;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, v12);
}

- (void)logModelInference:(unint64_t)inference startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp data:(id)data
{
  dataCopy = data;
  v10 = dispatch_get_global_queue(9, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1836A0BC4;
  v12[3] = &unk_1E6DDC1F8;
  v13 = dataCopy;
  inferenceCopy = inference;
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  v11 = dataCopy;
  dispatch_async(v10, v12);
}

@end