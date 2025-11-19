@interface PHAsset
@end

@implementation PHAsset

void __71__PHAsset_CloudSupport__isAssetLocalWithCompletion_requiresDerivative___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7)
  {
    v6 = [v5 objectForKey:*MEMORY[0x277CD9BB0]];
    [v6 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

void __71__PHAsset_CloudSupport__isAssetLocalWithCompletion_requiresDerivative___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 || ([v9 objectForKeyedSubscript:*MEMORY[0x277CD9C10]], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, !v12))
  {
    v13 = *(*(a1 + 56) + 16);
  }

  else
  {
    if ((*(a1 + 64) & 1) == 0 && ([*(a1 + 32) pixelHeight] > 0x86F || objc_msgSend(*(a1 + 32), "pixelWidth") >= 0x870) && !+[CFXVideoSettings canDecodeHEVC2160P](CFXVideoSettings, "canDecodeHEVC2160P"))
    {
      [*(a1 + 40) setDeliveryMode:2];
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__PHAsset_CloudSupport__isAssetLocalWithCompletion_requiresDerivative___block_invoke_4;
      v17[3] = &unk_278D7A520;
      v18 = *(a1 + 56);
      [v14 requestAVAssetForVideo:v16 options:v15 resultHandler:v17];

      goto LABEL_10;
    }

    v13 = *(*(a1 + 56) + 16);
  }

  v13();
LABEL_10:
}

@end