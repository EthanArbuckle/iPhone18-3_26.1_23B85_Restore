@interface MFStringTransform
+ (id)identityTransform;
- (MFStringTransform)initWithSoftBankHexData:(id)data;
- (id)_init;
- (void)dealloc;
@end

@implementation MFStringTransform

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MFStringTransform;
  return [(MFStringTransform *)&v3 init];
}

- (MFStringTransform)initWithSoftBankHexData:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = MFStringTransform;
  v5 = [(MFStringTransform *)&v28 init];
  if (!v5)
  {
    goto LABEL_37;
  }

  v6 = dataCopy;
  v7 = objc_autoreleasePoolPush();
  if (!v6)
  {
    v12 = 0;
    goto LABEL_16;
  }

  *v30 = 0;
  v8 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:v30];
  v9 = *v30;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v8 count];
        *buf = 67109120;
        *&buf[4] = v11;
        _os_log_impl(&dword_1D36B2000, v10, OS_LOG_TYPE_INFO, "MFStringTransform: Found %u hex values.", buf, 8u);
      }

      v12 = v8;
      goto LABEL_15;
    }

    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      [(MFStringTransform *)v14 initWithSoftBankHexData:v29, v13];
    }
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MFStringTransform initWithSoftBankHexData:];
    }
  }

  v12 = 0;
LABEL_15:

LABEL_16:
  objc_autoreleasePoolPop(v7);

  v15 = v12;
  v16 = objc_autoreleasePoolPush();
  if (!v15)
  {
    v18 = 0;
    goto LABEL_33;
  }

  if ([v15 count])
  {
    if ([v15 count] < 0x186A1)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{20 * objc_msgSend(v15, "count")}];
      v37 = 0u;
      v38 = 0u;
      *buf = 0u;
      v36 = 0u;
      v17 = v15;
      v19 = [v17 countByEnumeratingWithState:buf objects:v30 count:16];
      if (v19)
      {
        v20 = *v36;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [v18 appendFormat:@"\\u%@ > \\ufffd; ", *(*&buf[8] + 8 * i)];
          }

          v19 = [v17 countByEnumeratingWithState:buf objects:v30 count:16];
        }

        while (v19);
      }

      goto LABEL_32;
    }

    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFStringTransform initWithSoftBankHexData:];
    }
  }

  else
  {
    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v30 = 0;
      _os_log_impl(&dword_1D36B2000, v17, OS_LOG_TYPE_INFO, "MFStringTransform: Empty hex values found.", v30, 2u);
    }
  }

  v18 = 0;
LABEL_32:

LABEL_33:
  objc_autoreleasePoolPop(v16);

  v22 = v18;
  v23 = objc_autoreleasePoolPush();
  if (v22)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&v36 = 0x2020000000;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __createTransliterator_block_invoke;
    v33 = &unk_1E8455178;
    v34 = buf;
    withMutableCharacters(v22, v30);
    v24 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = 0;
  }

  objc_autoreleasePoolPop(v23);

  v5->_underlying = v24;
  if (!v5->_underlying)
  {
    v25 = 0;
    goto LABEL_39;
  }

LABEL_37:
  v25 = v5;
LABEL_39:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)dealloc
{
  if (self->_underlying)
  {
    utrans_close();
    self->_underlying = 0;
  }

  v3.receiver = self;
  v3.super_class = MFStringTransform;
  [(MFStringTransform *)&v3 dealloc];
}

+ (id)identityTransform
{
  _init = [[MFStringTransform alloc] _init];

  return _init;
}

- (void)initWithSoftBankHexData:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&dword_1D36B2000, a3, OS_LOG_TYPE_ERROR, "MFStringTransform: hex values of unexpected type '%{public}@'.", a2, 0xCu);
}

- (void)initWithSoftBankHexData:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithSoftBankHexData:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end