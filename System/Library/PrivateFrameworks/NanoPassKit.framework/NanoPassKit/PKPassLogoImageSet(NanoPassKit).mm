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
  logoImage = [self logoImage];
  v15 = [v13 resizedImage:logoImage];
  [self setLogoImage:v15];

  objc_autoreleasePoolPop(v8);
  logoImage2 = [self logoImage];
  v17 = [logoImage2 resizedImageToFit:{a2, a3}];
  [self setLogoImage:v17];

  backgroundImage = [self backgroundImage];
  v19 = [backgroundImage resizedImageToCover:{a2, a3}];
  [self setBackgroundImage:v19];

  thumbnailImage = [self thumbnailImage];
  v21 = [thumbnailImage resizedImageToFit:{a2, a3}];
  [self setThumbnailImage:v21];

  stripImage = [self stripImage];
  v23 = [stripImage resizedImageToFit:{a2, a3}];
  [self setStripImage:v23];

  footerImage = [self footerImage];
  v25 = [footerImage resizedImageToFit:{a2, a3}];
  [self setFooterImage:v25];

  bankLogoImage = [self bankLogoImage];
  v27 = [bankLogoImage resizedImageToFit:{a2, a3}];
  [self setBankLogoImage:v27];

  networkLogoImage = [self networkLogoImage];
  v29 = [networkLogoImage resizedImageToFit:{a2, a3}];
  [self setNetworkLogoImage:v29];

  cobrandLogoImage = [self cobrandLogoImage];
  v31 = [cobrandLogoImage resizedImageToFit:{a2, a3}];
  [self setCobrandLogoImage:v31];

  cardBackgroundImage = [self cardBackgroundImage];
  v33 = [cardBackgroundImage resizedImageToFit:{a2, a3}];
  [self setCardBackgroundImage:v33];

  cardBackgroundCombinedImage = [self cardBackgroundCombinedImage];
  v35 = [cardBackgroundCombinedImage resizedImageToFit:{a2, a3}];
  [self setCardBackgroundCombinedImage:v35];
}

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  logoImage = [self logoImage];
  v4 = [logoImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setLogoImage:v4];

  backgroundImage = [self backgroundImage];
  v6 = [backgroundImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setBackgroundImage:v6];

  thumbnailImage = [self thumbnailImage];
  v8 = [thumbnailImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setThumbnailImage:v8];

  stripImage = [self stripImage];
  v10 = [stripImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setStripImage:v10];

  footerImage = [self footerImage];
  v12 = [footerImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setFooterImage:v12];

  altImage = [self altImage];
  v14 = [altImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setAltImage:v14];

  bankLogoImage = [self bankLogoImage];
  v16 = [bankLogoImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setBankLogoImage:v16];

  networkLogoImage = [self networkLogoImage];
  v18 = [networkLogoImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setNetworkLogoImage:v18];

  cobrandLogoImage = [self cobrandLogoImage];
  v20 = [cobrandLogoImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setCobrandLogoImage:v20];

  cardBackgroundImage = [self cardBackgroundImage];
  v22 = [cardBackgroundImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setCardBackgroundImage:v22];

  cardBackgroundCombinedImage = [self cardBackgroundCombinedImage];
  v24 = [cardBackgroundCombinedImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setCardBackgroundCombinedImage:v24];

  compactBankLogoDarkImage = [self compactBankLogoDarkImage];
  v26 = [compactBankLogoDarkImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setCompactBankLogoDarkImage:v26];

  compactBankLogoLightImage = [self compactBankLogoLightImage];
  v28 = [compactBankLogoLightImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setCompactBankLogoLightImage:v28];

  secondaryLogoImage = [self secondaryLogoImage];
  v30 = [secondaryLogoImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLogoImage"];
  [self setSecondaryLogoImage:v30];

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
    [self setBankLogoImage:v16];
  }

  v17 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38690], v14, v15, a4);
  if (v17)
  {
    [self setNetworkLogoImage:v17];
  }

  v18 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38680], v14, v15, a4);
  if (v18)
  {
    [self setCobrandLogoImage:v18];
  }

  v19 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38678], a2, a3, a4);
  if (v19)
  {
    [self setCardBackgroundImage:v19];
  }

  v20 = NPKGetPDFImageFromBundle(v10, *MEMORY[0x277D38670], a2, a3, a4);
  if (v20)
  {
    [self setCardBackgroundCombinedImage:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)npkHasValidPaymentCardAssets
{
  cardBackgroundCombinedImage = [self cardBackgroundCombinedImage];
  if (cardBackgroundCombinedImage)
  {
    v3 = 1;
  }

  else
  {
    cardBackgroundImage = [self cardBackgroundImage];
    if (cardBackgroundImage)
    {
      v3 = 1;
    }

    else
    {
      backgroundImage = [self backgroundImage];
      if (backgroundImage)
      {
        v3 = 1;
      }

      else
      {
        cobrandLogoImage = [self cobrandLogoImage];
        if (cobrandLogoImage)
        {
          v3 = 1;
        }

        else
        {
          bankLogoImage = [self bankLogoImage];
          if (bankLogoImage)
          {
            v3 = 1;
          }

          else
          {
            logoImage = [self logoImage];
            if (logoImage)
            {
              v3 = 1;
            }

            else
            {
              networkLogoImage = [self networkLogoImage];
              v3 = networkLogoImage != 0;
            }
          }
        }
      }
    }
  }

  return v3;
}

@end