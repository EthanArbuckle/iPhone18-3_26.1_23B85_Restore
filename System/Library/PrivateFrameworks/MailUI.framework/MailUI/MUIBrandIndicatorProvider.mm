@interface MUIBrandIndicatorProvider
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (MUIBrandIndicatorProvider)initWithMessageRepository:(id)repository svgConverter:(id)converter;
- (id)brandIndicatorFutureForLocation:(id)location size:(CGSize)size scale:(double)scale;
- (unint64_t)signpostID;
- (void)bimiLogoFromLocation:(id)location size:(CGSize)size scale:(double)scale handler:(id)handler;
@end

@implementation MUIBrandIndicatorProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MUIBrandIndicatorProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v2 = log_log_8;

  return v2;
}

void __32__MUIBrandIndicatorProvider_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_8;
  log_log_8 = v2;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MUIBrandIndicatorProvider_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __40__MUIBrandIndicatorProvider_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_0;
  signpostLog_log_0 = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (MUIBrandIndicatorProvider)initWithMessageRepository:(id)repository svgConverter:(id)converter
{
  repositoryCopy = repository;
  converterCopy = converter;
  v14.receiver = self;
  v14.super_class = MUIBrandIndicatorProvider;
  v9 = [(MUIBrandIndicatorProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageRepository, repository);
    objc_storeStrong(&v10->_svgConverter, converter);
    v11 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mail.MUIBrandIndicatorProvider" qualityOfService:25];
    scheduler = v10->_scheduler;
    v10->_scheduler = v11;
  }

  return v10;
}

- (id)brandIndicatorFutureForLocation:(id)location size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (locationCopy)
  {
    v10 = +[MUIBrandIndicatorProvider signpostLog];
    signpostID = [(MUIBrandIndicatorProvider *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID;
      if (os_signpost_enabled(v10))
      {
        v13 = locationCopy;
        if ([MEMORY[0x277D06DA0] preferenceEnabled:10])
        {
          absoluteString = [v13 absoluteString];
        }

        else
        {
          v16 = MEMORY[0x277D07198];
          absoluteString2 = [v13 absoluteString];
          absoluteString = [v16 fullyRedactedStringForString:absoluteString2];
        }

        *buf = 138543362;
        v27 = absoluteString;
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "BIMI REQUEST", "Scheduling request for brand indicator url %{public}@", buf, 0xCu);
      }
    }

    v18 = MEMORY[0x277D07150];
    scheduler = [(MUIBrandIndicatorProvider *)self scheduler];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke;
    v21[3] = &unk_27818A2B8;
    v21[4] = self;
    v22 = locationCopy;
    v23 = width;
    v24 = height;
    scaleCopy = scale;
    v15 = [v18 onScheduler:scheduler lazyFutureWithBlock:v21];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) messageRepository];
  v5 = [v4 brandIndicatorForLocation:*(a1 + 40)];

  v6 = +[MUIBrandIndicatorProvider signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      v9 = MEMORY[0x277D06DA0];
      v10 = *(a1 + 40);
      if ([v9 preferenceEnabled:10])
      {
        v11 = [v10 absoluteString];
      }

      else
      {
        v12 = MEMORY[0x277D07198];
        v13 = [v10 absoluteString];
        v11 = [v12 fullyRedactedStringForString:v13];

        v10 = v13;
      }

      *buf = 138543362;
      v34 = v11;
      _os_signpost_emit_with_name_impl(&dword_214A5E000, v6, OS_SIGNPOST_EVENT, v8, "BIMI REQUEST", "Requesting brand indicator for url %{public}@", buf, 0xCu);
    }
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_6;
  v28[3] = &unk_27818A290;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v29 = v14;
  v30 = v15;
  v31 = *(a1 + 48);
  v32 = *(a1 + 64);
  v16 = [v5 then:v28];
  v17 = [v16 result:a2];

  v18 = +[MUIBrandIndicatorProvider signpostLog];
  v19 = [*(a1 + 32) signpostID];
  if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      v21 = *(a1 + 40);
      v22 = MEMORY[0x277D06DA0];
      v23 = v21;
      if ([v22 preferenceEnabled:10])
      {
        v24 = [v23 absoluteString];
      }

      else
      {
        v25 = MEMORY[0x277D07198];
        v26 = [v23 absoluteString];
        v24 = [v25 fullyRedactedStringForString:v26];

        v23 = v26;
      }

      *buf = 138543362;
      v34 = v24;
      _os_signpost_emit_with_name_impl(&dword_214A5E000, v18, OS_SIGNPOST_INTERVAL_END, v20, "BIMI REQUEST", "Fetched brand indicator data for url %{public}@", buf, 0xCu);
    }
  }

  return v17;
}

id __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_6(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = +[MUIBrandIndicatorProvider signpostLog];
    v7 = [*(a1 + 40) signpostID];
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        v9 = MEMORY[0x277D06DA0];
        v10 = *(a1 + 32);
        if ([v9 preferenceEnabled:10])
        {
          v11 = [v10 absoluteString];
        }

        else
        {
          v16 = MEMORY[0x277D07198];
          v17 = [v10 absoluteString];
          v11 = [v16 fullyRedactedStringForString:v17];

          v10 = v17;
        }

        *buf = 138543362;
        v31 = v11;
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v6, OS_SIGNPOST_EVENT, v8, "BIMI REQUEST", "Generating image for url %{public}@", buf, 0xCu);
      }
    }

    v18 = objc_alloc_init(MEMORY[0x277D071A8]);
    v19 = [*(a1 + 40) svgConverter];
    v20 = *(a1 + 64);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_13;
    v27 = &unk_27818A268;
    v28 = *(a1 + 32);
    v29 = v18;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v14 = v18;
    [v19 imageForSVGData:v5 size:&v24 scale:v21 completionHandler:{v22, v20}];

    v15 = [v14 future];
  }

  else
  {
    v12 = +[MUIBrandIndicatorProvider log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_6_cold_1(a1);
    }

    v13 = MEMORY[0x277D07150];
    v14 = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:@"No data fetched for brand indicator url"];
    v15 = [v13 futureWithError:v14];
  }

  return v15;
}

void __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_13(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);

    [v3 finishWithResult:a2];
  }

  else
  {
    v4 = +[MUIBrandIndicatorProvider log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_13_cold_1(a1);
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:@"Failed to render image for brand indicator url"];
    [v5 finishWithError:v6];
  }
}

- (void)bimiLogoFromLocation:(id)location size:(CGSize)size scale:(double)scale handler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  if (location)
  {
    scale = [(MUIBrandIndicatorProvider *)self brandIndicatorFutureForLocation:location size:width scale:height, scale];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__MUIBrandIndicatorProvider_bimiLogoFromLocation_size_scale_handler___block_invoke;
    v16[3] = &unk_27818A2E0;
    v13 = handlerCopy;
    v17 = v13;
    [scale addSuccessBlock:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__MUIBrandIndicatorProvider_bimiLogoFromLocation_size_scale_handler___block_invoke_2;
    v14[3] = &unk_27818A308;
    v15 = v13;
    [scale addFailureBlock:v14];
  }

  else
  {
    scale = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:@"Brand indicator location is nil"];
    (*(handlerCopy + 2))(handlerCopy, 0, scale);
  }
}

void __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_6_cold_1(uint64_t a1)
{
  v1 = MEMORY[0x277D06DA0];
  v2 = *(a1 + 32);
  if ([v1 preferenceEnabled:10])
  {
    v3 = [v2 absoluteString];
  }

  else
  {
    v4 = MEMORY[0x277D07198];
    v5 = [v2 absoluteString];
    v3 = [v4 fullyRedactedStringForString:v5];

    v2 = v5;
  }

  OUTLINED_FUNCTION_0(&dword_214A5E000, v6, v7, "No data fetched for brand indicator url %{public}@", v8, v9, v10, v11, 2u);
}

void __72__MUIBrandIndicatorProvider_brandIndicatorFutureForLocation_size_scale___block_invoke_13_cold_1(uint64_t a1)
{
  v1 = MEMORY[0x277D06DA0];
  v2 = *(a1 + 32);
  if ([v1 preferenceEnabled:10])
  {
    v3 = [v2 absoluteString];
  }

  else
  {
    v4 = MEMORY[0x277D07198];
    v5 = [v2 absoluteString];
    v3 = [v4 fullyRedactedStringForString:v5];

    v2 = v5;
  }

  OUTLINED_FUNCTION_0(&dword_214A5E000, v6, v7, "Failed to render image for brand indicator url %{public}@", v8, v9, v10, v11, 2u);
}

@end