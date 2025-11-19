@interface MADVSKClient
- (MADVSKClient)initWithConfig:(id)a3 error:(id *)a4;
- (void)cooldown;
- (void)dealloc;
- (void)warmup;
@end

@implementation MADVSKClient

- (MADVSKClient)initWithConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MADVSKClient;
  v7 = [(MADVSKClient *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DF608]) initWithConfig:v6 error:a4];
    client = v7->_client;
    v7->_client = v8;
  }

  return v7;
}

- (void)warmup
{
  if (!self->_isPrewarmed)
  {
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MAD_VSKClientWarmup", "", buf, 2u);
    }

    [(VSKClient *)self->_client warmup];
    v7 = VCPSignPostLog();
    v8 = v7;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v4, "MAD_VSKClientWarmup", "", v9, 2u);
    }

    self->_isPrewarmed = 1;
  }
}

- (void)cooldown
{
  if (self->_isPrewarmed)
  {
    v13 = v2;
    v14 = v3;
    v5 = VCPSignPostLog();
    v6 = os_signpost_id_generate(v5);

    v7 = VCPSignPostLog();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MAD_VSKClientCooldown", "", buf, 2u);
    }

    [(VSKClient *)self->_client cooldown];
    v9 = VCPSignPostLog();
    v10 = v9;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v6, "MAD_VSKClientCooldown", "", v11, 2u);
    }

    self->_isPrewarmed = 0;
  }
}

- (void)dealloc
{
  [(MADVSKClient *)self cooldown];
  v3.receiver = self;
  v3.super_class = MADVSKClient;
  [(MADVSKClient *)&v3 dealloc];
}

@end