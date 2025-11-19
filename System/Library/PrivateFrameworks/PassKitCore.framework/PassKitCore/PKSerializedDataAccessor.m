@interface PKSerializedDataAccessor
- (PKSerializedDataAccessor)initWithData:(id)a3 error:(id *)p_isa outputURL:(id)a5;
- (PKSerializedDataAccessor)initWithFileDescriptor:(int)a3 error:(id *)p_isa outputURL:(id)a5;
- (id)_initWithFileURL:(id)a3 data:(id)a4 error:(id *)a5;
- (id)archiveData;
- (void)_downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation PKSerializedDataAccessor

- (PKSerializedDataAccessor)initWithData:(id)a3 error:(id *)p_isa outputURL:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(NSData *)v8 length];
  if (v10)
  {
    if (v10 <= 0xF00000)
    {
      if (!v9)
      {
        v9 = PKTemporaryItemURLWithExtension(@"pkpass", 1);
        PKTemporaryItemPrepareDirectory();
      }

      if ((PKUnarchiverZip(v8, v9) & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AC08] defaultManager];
        v21 = 0;
        v17 = [v16 removeItemAtURL:v9 error:&v21];
        v18 = v21;

        if ((v17 & 1) == 0)
        {
          v19 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v23 = v9;
            v24 = 2112;
            v25 = v18;
            _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Couldn't remove disk representation at %@:%@", buf, 0x16u);
          }
        }

        v9 = 0;
      }

      self = [(PKSerializedDataAccessor *)self _initWithFileURL:v9 data:v8 error:p_isa];
      p_isa = &self->super.super.super.isa;
    }

    else if (p_isa)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Data exceeds maximum size of %g megabytes", 0x402E000000000000];
      v12 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v27 = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *p_isa = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v13];

LABEL_7:
      p_isa = 0;
    }
  }

  else if (p_isa)
  {
    v14 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"No data supplied";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *p_isa = [v14 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v15];

    goto LABEL_7;
  }

  return p_isa;
}

- (PKSerializedDataAccessor)initWithFileDescriptor:(int)a3 error:(id *)p_isa outputURL:(id)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a3 < 0)
  {
    if (p_isa)
    {
      v9 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33[0] = @"Invalid file descriptor";
      v10 = MEMORY[0x1E695DF20];
      v11 = v33;
      v12 = &v32;
      goto LABEL_7;
    }
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
    if (fstat(a3, &v23))
    {
      if (p_isa)
      {
        v9 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A578];
        v31 = @"Unable to fstat file descriptor";
        v10 = MEMORY[0x1E695DF20];
        v11 = &v31;
        v12 = &v30;
LABEL_7:
        v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
        *p_isa = [v9 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v13];

LABEL_8:
        p_isa = 0;
      }
    }

    else
    {
      if (v23.st_size > 15728640)
      {
        if (!p_isa)
        {
          goto LABEL_9;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fd exceeds maximum size of %g megabytes", 0x402E000000000000];
        v16 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        v29 = v15;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *p_isa = [v16 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v17];

        goto LABEL_8;
      }

      if (!v8)
      {
        v8 = PKTemporaryItemURLWithExtension(@"pkpass", 1);
        PKTemporaryItemPrepareDirectory();
      }

      if ((PKUnarchiverZip(a3, v8, 0x600000uLL) & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AC08] defaultManager];
        v22 = 0;
        v19 = [v18 removeItemAtURL:v8 error:&v22];
        v20 = v22;

        if ((v19 & 1) == 0)
        {
          v21 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v25 = v8;
            v26 = 2112;
            v27 = v20;
            _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Couldn't remove disk representation at %@:%@", buf, 0x16u);
          }
        }

        v8 = 0;
      }

      self = [(PKSerializedDataAccessor *)self _initWithFileURL:v8 data:0 error:p_isa];
      p_isa = &self->super.super.super.isa;
    }
  }

LABEL_9:

  return p_isa;
}

- (id)_initWithFileURL:(id)a3 data:(id)a4 error:(id *)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PKSerializedDataAccessor;
  v10 = [(PKFileDataAccessor *)&v13 initWithFileURL:a3 error:a5 coordinator:0];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_archiveData, a4);
    [(PKFileDataAccessor *)v11 setOwnsFileURL:1];
  }

  return v11;
}

- (void)_downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PKSerializedDataAccessor__downloadRemoteAssetsWithConfiguration_completion___block_invoke;
  v10[3] = &unk_1E79CC260;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = PKSerializedDataAccessor;
  [(PKFileDataAccessor *)&v9 _downloadRemoteAssetsWithConfiguration:v6 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __78__PKSerializedDataAccessor__downloadRemoteAssetsWithConfiguration_completion___block_invoke(uint64_t a1, int a2, void *a3, float a4)
{
  v10 = a3;
  if (!v10 && a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      os_unfair_lock_lock(WeakRetained + 16);
      v9 = *&v8[18]._os_unfair_lock_opaque;
      *&v8[18]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(v8 + 16);
    }
  }

  (*(*(a1 + 32) + 16))(a4);
}

- (id)archiveData
{
  os_unfair_lock_lock(&self->_lock);
  archiveData = self->_archiveData;
  if (archiveData)
  {
    v4 = [(NSData *)archiveData copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v6.receiver = self;
  v6.super_class = PKSerializedDataAccessor;
  v4 = [(PKFileDataAccessor *)&v6 archiveData];
LABEL_6:

  return v4;
}

@end