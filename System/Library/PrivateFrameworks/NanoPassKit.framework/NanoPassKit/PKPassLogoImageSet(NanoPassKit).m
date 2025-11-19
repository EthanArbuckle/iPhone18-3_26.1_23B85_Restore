@interface PKPassLogoImageSet(NanoPassKit)
- (BOOL)npkHasValidPaymentCardAssets;
- (void)loadPDFArtFromBundle:()NanoPassKit targetSize:scale:;
- (void)memoryMapImageData;
- (void)resizeWithScreenSize:()NanoPassKit pass:;
@end

@implementation PKPassLogoImageSet(NanoPassKit)

- (void)resizeWithScreenSize:()NanoPassKit pass:
{
  v36 = a5;
  v8 = objc_autoreleasePoolPush();
  if (NPKNewEventTicketDesignTreatment(v36))
  {
    v9 = MEMORY[0x277D37F20];
    v10 = a2 + -15.0;
  }

  else
  {
    v11 = NPKNewFlightTicketDesignTreatment(v36);
    v9 = MEMORY[0x277D37F20];
    v10 = a2 + -15.0;
    v12 = 21.0;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = 30.0;
LABEL_5:
  v13 = [v9 constraintsWithMaxSize:{v10, v12}];
  v14 = [a1 logoImage];
  v15 = [v13 resizedImage:v14];
  [a1 setLogoImage:v15];

  objc_autoreleasePoolPop(v8);
  v16 = [a1 logoImage];
  v17 = [v16 resizedImageToFit:{a2, a3}];
  [a1 setLogoImage:v17];

  v18 = [a1 backgroundImage];
  v19 = [v18 resizedImageToCover:{a2, a3}];
  [a1 setBackgroundImage:v19];

  v20 = [a1 thumbnailImage];
  v21 = [v20 resizedImageToFit:{a2, a3}];
  [a1 setThumbnailImage:v21];

  v22 = [a1 stripImage];
  v23 = [v22 resizedImageToFit:{a2, a3}];
  [a1 setStripImage:v23];

  v24 = [a1 footerImage];
  v25 = [v24 resizedImageToFit:{a2, a3}];
  [a1 setFooterImage:v25];

  v26 = [a1 bankLogoImage];
  v27 = [v26 resizedImageToFit:{a2, a3}];
  [a1 setBankLogoImage:v27];

  v28 = [a1 networkLogoImage];
  v29 = [v28 resizedImageToFit:{a2, a3}];
  [a1 setNetworkLogoImage:v29];

  v30 = [a1 cobrandLogoImage];
  v31 = [v30 resizedImageToFit:{a2, a3}];
  [a1 setCobrandLogoImage:v31];

  v32 = [a1 cardBackgroundImage];
  v33 = [v32 resizedImageToFit:{a2, a3}];
  [a1 setCardBackgroundImage:v33];

  v34 = [a1 cardBackgroundCombinedImage];
  v35 = [v34 resizedImageToFit:{a2, a3}];
  [a1 setCardBackgroundCombinedImage:v35];
}

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 logoImage];
  v4 = [v3 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setLogoImage:v4];

  v5 = [a1 backgroundImage];
  v6 = [v5 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setBackgroundImage:v6];

  v7 = [a1 thumbnailImage];
  v8 = [v7 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setThumbnailImage:v8];

  v9 = [a1 stripImage];
  v10 = [v9 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setStripImage:v10];

  v11 = [a1 footerImage];
  v12 = [v11 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setFooterImage:v12];

  v13 = [a1 altImage];
  v14 = [v13 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setAltImage:v14];

  v15 = [a1 bankLogoImage];
  v16 = [v15 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setBankLogoImage:v16];

  v17 = [a1 networkLogoImage];
  v18 = [v17 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setNetworkLogoImage:v18];

  v19 = [a1 cobrandLogoImage];
  v20 = [v19 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setCobrandLogoImage:v20];

  v21 = [a1 cardBackgroundImage];
  v22 = [v21 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setCardBackgroundImage:v22];

  v23 = [a1 cardBackgroundCombinedImage];
  v24 = [v23 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setCardBackgroundCombinedImage:v24];

  v25 = [a1 compactBankLogoDarkImage];
  v26 = [v25 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setCompactBankLogoDarkImage:v26];

  v27 = [a1 compactBankLogoLightImage];
  v28 = [v27 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setCompactBankLogoLightImage:v28];

  v29 = [a1 secondaryLogoImage];
  v30 = [v29 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [a1 setSecondaryLogoImage:v30];

  objc_autoreleasePoolPop(v2);
}

- (void)loadPDFArtFromBundle:()NanoPassKit targetSize:scale:
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Load PDF art from bundle: %@", &v22, 0xCu);
    }
  }

  v14 = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38668], *MEMORY[0x277CBF3A8], v15, a4);
  if (v16)
  {
    [a1 setBankLogoImage:v16];
  }

  v17 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38690], v14, v15, a4);
  if (v17)
  {
    [a1 setNetworkLogoImage:v17];
  }

  v18 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38680], v14, v15, a4);
  if (v18)
  {
    [a1 setCobrandLogoImage:v18];
  }

  v19 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38678], a2, a3, a4);
  if (v19)
  {
    [a1 setCardBackgroundImage:v19];
  }

  v20 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38670], a2, a3, a4);
  if (v20)
  {
    [a1 setCardBackgroundCombinedImage:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)npkHasValidPaymentCardAssets
{
  v2 = [a1 cardBackgroundCombinedImage];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 cardBackgroundImage];
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v5 = [a1 backgroundImage];
      if (v5)
      {
        v3 = 1;
      }

      else
      {
        v6 = [a1 cobrandLogoImage];
        if (v6)
        {
          v3 = 1;
        }

        else
        {
          v7 = [a1 bankLogoImage];
          if (v7)
          {
            v3 = 1;
          }

          else
          {
            v8 = [a1 logoImage];
            if (v8)
            {
              v3 = 1;
            }

            else
            {
              v9 = [a1 networkLogoImage];
              v3 = v9 != 0;
            }
          }
        }
      }
    }
  }

  return v3;
}

@end