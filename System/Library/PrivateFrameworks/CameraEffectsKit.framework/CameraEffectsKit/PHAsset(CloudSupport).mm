@interface PHAsset(CloudSupport)
- (void)isAssetLocalWithCompletion:()CloudSupport requiresDerivative:;
@end

@implementation PHAsset(CloudSupport)

- (void)isAssetLocalWithCompletion:()CloudSupport requiresDerivative:
{
  v6 = a3;
  defaultManager = [MEMORY[0x277CD9898] defaultManager];
  if ([self mediaType] == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD9850]);
    [v8 setNetworkAccessAllowed:0];
    [v8 setCanHandleAdjustmentData:&__block_literal_global_25];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__PHAsset_CloudSupport__isAssetLocalWithCompletion_requiresDerivative___block_invoke_2;
    v19[3] = &unk_278D7AFC8;
    v20 = v6;
    v9 = v6;
    [self requestContentEditingInputWithOptions:v8 completionHandler:v19];
    v10 = v20;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CD9A00]);
    [v11 setNetworkAccessAllowed:0];
    if (a4)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v11 setDeliveryMode:v12];
    [v11 setVersion:0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__PHAsset_CloudSupport__isAssetLocalWithCompletion_requiresDerivative___block_invoke_3;
    v14[3] = &unk_278D7AFF0;
    v18 = a4;
    v14[4] = self;
    v15 = v11;
    v16 = defaultManager;
    v17 = v6;
    v13 = v6;
    v8 = v11;
    [v16 requestAVAssetForVideo:self options:v8 resultHandler:v14];

    v10 = v15;
  }
}

@end