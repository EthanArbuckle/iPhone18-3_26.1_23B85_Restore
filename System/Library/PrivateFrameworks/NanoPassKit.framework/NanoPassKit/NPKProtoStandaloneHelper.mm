@interface NPKProtoStandaloneHelper
+ (CGSize)passImageSize;
+ (CGSize)passThumbnailImageSize;
+ (id)_convertProtoWelcomeStepContext:(id)a3 requestContext:(id)a4;
+ (id)fromNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)a3 requestContext:(id)a4;
+ (id)sha1hash:(id)a3;
+ (id)toJsonString:(id)a3;
+ (id)toNPKProtoStandaloneError:(id)a3;
+ (id)toNPKProtoStandalonePass:(id)a3 thumbnailSize:(BOOL)a4;
+ (id)toNPKProtoStandalonePaymentCredential:(id)a3;
+ (id)toNPKProtoStandalonePaymentDigitalIssuanceMetadata:(id)a3;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:(id)a3;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerItem:(id)a3;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerSection:(id)a3;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)a3 fromStep:(int)a4 toStep:(int)a5;
+ (id)toNPKProtoStandalonePaymentProvisioningMethodMetadata:(id)a3;
+ (id)toNPKProtoStandalonePaymentSetupField:(id)a3;
+ (id)toNPKProtoStandalonePaymentSetupMoreInfoItem:(id)a3;
+ (id)toNPKProtoStandalonePaymentSetupProduct:(id)a3;
+ (id)toNPKProtoStandalonePaymentSetupProductImageAssetURLs:(id)a3;
+ (id)toNPKProtoStandalonePaymentSetupProductPaymentOption:(id)a3;
+ (id)toNPKProtoStandaloneVerificationChannel:(id)a3;
+ (id)toPKPaymentSetupField:(id)a3;
+ (id)toStringValue:(id)a3;
+ (int)toNPKProtoStandalonePassType:(unint64_t)a3;
+ (int)toNPKProtoStandalonePaymentApplicationState:(int64_t)a3;
+ (int)toNPKProtoStandalonePaymentPassActivationState:(unint64_t)a3;
+ (int)toNPKProtoStandalonePaymentSetupFieldType:(unint64_t)a3;
+ (int)toNPKProtoStandaloneReaderModeIngestionState:(unint64_t)a3;
+ (int)toNPKProtoStandaloneVerificationChannelType:(unint64_t)a3;
+ (unint64_t)toPKPaymentSetupFieldType:(int)a3;
+ (void)_convertChooseCredentialsStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertChooseFlowStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertChooseProductStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertDigitalIssuanceAmountStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertDigitalIssuancePaymentStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertIssuerVerificationChannelsStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertIssuerVerificationCodeStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertIssuerVerificationFieldsStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertLocalDeviceManualEntry:(id)a3 protoContext:(id)a4;
+ (void)_convertLocalDeviceManualEntryProgress:(id)a3 protoContext:(id)a4;
+ (void)_convertManualEntryStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertMoreInformationStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertPasscodeUpgradeStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertProvisioningProgressStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertProvisioningResultStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertReaderModeEntryStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertReaderModeIngestionStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertSecondaryManualEntryStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertTermsAndConditionsStepContext:(id)a3 protoContext:(id)a4;
+ (void)_convertWelcomeStepContext:(id)a3 protoContext:(id)a4;
+ (void)setPassImageSize:(CGSize)a3;
+ (void)setPassThumbnailImageSize:(CGSize)a3;
@end

@implementation NPKProtoStandaloneHelper

+ (void)setPassImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12 = *MEMORY[0x277D85DE8];
  if (a3.width <= 0.0 || a3.height <= 0.0)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13.width = width;
        v13.height = height;
        v10 = 138412290;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v13);
        v8 = DictionaryRepresentation;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Ignoring invalid pass image size %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    __PassImageSize_0 = *&a3.width;
    __PassImageSize_1 = *&a3.height;
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (CGSize)passImageSize
{
  v2 = *&__PassImageSize_0;
  v3 = *&__PassImageSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)setPassThumbnailImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12 = *MEMORY[0x277D85DE8];
  if (a3.width <= 0.0 || a3.height <= 0.0)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13.width = width;
        v13.height = height;
        v10 = 138412290;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v13);
        v8 = DictionaryRepresentation;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Ignoring invalid pass thumbnail image size %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    __PassThumbnailImageSize_0 = *&a3.width;
    __PassThumbnailImageSize_1 = *&a3.height;
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (CGSize)passThumbnailImageSize
{
  v2 = *&__PassThumbnailImageSize_0;
  v3 = *&__PassThumbnailImageSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)a3 fromStep:(int)a4 toStep:(int)a5
{
  v6 = a3;
  v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowStepContext);
  v8 = [v6 stepIdentifier];
  [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)v7 setStepIdentifier:v8];

  v9 = [v6 backStepIdentifier];
  [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)v7 setBackStepIdentifier:v9];

  -[NPKProtoStandalonePaymentProvisioningFlowStepContext setAllowsAddLater:](v7, "setAllowsAddLater:", [v6 allowsAddLater]);
  if (a5 > 164)
  {
    if (a5 > 199)
    {
      if (a5 > 229)
      {
        switch(a5)
        {
          case 230:
            [NPKProtoStandaloneHelper _convertIssuerVerificationChannelsStepContext:v6 protoContext:v7];
            break;
          case 240:
            [NPKProtoStandaloneHelper _convertIssuerVerificationFieldsStepContext:v6 protoContext:v7];
            break;
          case 250:
            [NPKProtoStandaloneHelper _convertIssuerVerificationCodeStepContext:v6 protoContext:v7];
            break;
        }
      }

      else
      {
        switch(a5)
        {
          case 200:
            [NPKProtoStandaloneHelper _convertTermsAndConditionsStepContext:v6 protoContext:v7];
            break;
          case 210:
            [NPKProtoStandaloneHelper _convertProvisioningProgressStepContext:v6 protoContext:v7];
            break;
          case 220:
            [NPKProtoStandaloneHelper _convertProvisioningResultStepContext:v6 protoContext:v7];
            break;
        }
      }
    }

    else if (a5 > 191)
    {
      switch(a5)
      {
        case 192:
          [NPKProtoStandaloneHelper _convertLocalDeviceManualEntry:v6 protoContext:v7];
          break;
        case 193:
          [NPKProtoStandaloneHelper _convertLocalDeviceManualEntryProgress:v6 protoContext:v7];
          break;
        case 197:
          [NPKProtoStandaloneHelper _convertPasscodeUpgradeStepContext:v6 protoContext:v7];
          break;
      }
    }

    else
    {
      switch(a5)
      {
        case 165:
          [NPKProtoStandaloneHelper _convertReaderModeIngestionStepContext:v6 protoContext:v7];
          break;
        case 180:
          [NPKProtoStandaloneHelper _convertManualEntryStepContext:v6 protoContext:v7];
          break;
        case 190:
          [NPKProtoStandaloneHelper _convertSecondaryManualEntryStepContext:v6 protoContext:v7];
          break;
      }
    }

    goto LABEL_51;
  }

  if (a5 > 143)
  {
    if (a5 > 154)
    {
      switch(a5)
      {
        case 155:
          [NPKProtoStandaloneHelper _convertDigitalIssuancePaymentStepContext:v6 protoContext:v7];
          break;
        case 157:
          [NPKProtoStandaloneHelper _convertMoreInformationStepContext:v6 protoContext:v7];
          break;
        case 160:
          [NPKProtoStandaloneHelper _convertReaderModeEntryStepContext:v6 protoContext:v7];
          break;
      }
    }

    else if ((a5 - 144) < 2 || a5 == 150)
    {
      [NPKProtoStandaloneHelper _convertDigitalIssuanceAmountStepContext:v6 protoContext:v7];
    }

    goto LABEL_51;
  }

  if (a5 > 136)
  {
    if ((a5 - 137) >= 2)
    {
      if (a5 == 140)
      {
        [NPKProtoStandaloneHelper _convertChooseCredentialsStepContext:v6 protoContext:v7];
      }

      goto LABEL_51;
    }

LABEL_24:
    [NPKProtoStandaloneHelper _convertChooseProductStepContext:v6 protoContext:v7];
    goto LABEL_51;
  }

  switch(a5)
  {
    case 120:
      [NPKProtoStandaloneHelper _convertWelcomeStepContext:v6 protoContext:v7];
      break;
    case 130:
      [NPKProtoStandaloneHelper _convertChooseFlowStepContext:v6 protoContext:v7];
      break;
    case 135:
      goto LABEL_24;
  }

LABEL_51:

  return v7;
}

+ (int)toNPKProtoStandalonePaymentSetupFieldType:(unint64_t)a3
{
  if (a3 - 1 >= 5)
  {
    return 100;
  }

  else
  {
    return 10 * (a3 - 1) + 110;
  }
}

+ (id)toNPKProtoStandaloneError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandaloneError);
  -[NPKProtoStandaloneError setCode:](v5, "setCode:", [v4 code]);
  v6 = [v4 domain];
  if (v6)
  {
    v7 = [v4 domain];
    [(NPKProtoStandaloneError *)v5 setDomain:v7];
  }

  else
  {
    [(NPKProtoStandaloneError *)v5 setDomain:@"com.apple.NPKStandaloneErrorDomain"];
  }

  v8 = [v4 userInfo];

  if (v8)
  {
    v9 = [v4 userInfo];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__NPKProtoStandaloneHelper_toNPKProtoStandaloneError___block_invoke;
    v11[3] = &unk_279948A80;
    v13 = a1;
    v12 = v5;
    [v9 enumerateKeysAndObjectsUsingBlock:v11];
  }

  return v5;
}

void __54__NPKProtoStandaloneHelper_toNPKProtoStandaloneError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(NPKProtoStandaloneUserInfo);
  [(NPKProtoStandaloneUserInfo *)v8 setKey:v6];

  v7 = [*(a1 + 40) toStringValue:v5];

  [(NPKProtoStandaloneUserInfo *)v8 setValue:v7];
  [*(a1 + 32) addUserInfos:v8];
}

+ (id)toStringValue:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_15:
    v5 = &stru_286C934F8;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 absoluteString];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 stringValue];
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v6 = v3;
  if ([v6 count] && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    v5 = [v6 firstObject];
  }

  else
  {
    v5 = &stru_286C934F8;
  }

LABEL_16:

  return v5;
}

+ (void)_convertWelcomeStepContext:(id)a3 protoContext:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 welcomeStepContext];
  if (v7)
  {
    v22 = v5;
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext);
    [v6 setWelcomeStepContext:v8];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [v7 heroImages];
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = objc_alloc_init(NPKProtoStandalonePaymentHeroImage);
          v16 = [v13 identifier];
          [(NPKProtoStandalonePaymentHeroImage *)v15 setIdentifier:v16];

          PKScreenScale();
          v17 = [v13 URLForImageWithScale:?];
          v18 = [v17 absoluteString];
          [(NPKProtoStandalonePaymentHeroImage *)v15 setImageURL:v18];

          if ([v7 defaultImagesUsed])
          {
            v19 = 0;
          }

          else
          {
            PKScreenScale();
            v19 = [v13 imageWithScale:?];
          }

          [(NPKProtoStandalonePaymentHeroImage *)v15 setImageData:v19, v22];
          v20 = [v6 welcomeStepContext];
          [v20 addHeroImages:v15];

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v5 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)_convertChooseFlowStepContext:(id)a3 protoContext:(id)a4
{
  v6 = a4;
  v7 = [a3 chooseFlowStepContext];
  if (v7)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext);
    [v6 setChooseFlowStepContext:v8];

    v9 = [v7 sections];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__NPKProtoStandaloneHelper__convertChooseFlowStepContext_protoContext___block_invoke;
    v10[3] = &unk_279948AA8;
    v11 = v6;
    v12 = a1;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void __71__NPKProtoStandaloneHelper__convertChooseFlowStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 chooseFlowStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandalonePaymentProvisioningFlowPickerSection:v4];

  [v6 addSections:v5];
}

+ (void)_convertChooseProductStepContext:(id)a3 protoContext:(id)a4
{
  v6 = a4;
  v7 = [a3 chooseProductStepContext];
  if (v7)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext);
    [v6 setChooseProductStepContext:v8];

    v9 = [v7 products];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__NPKProtoStandaloneHelper__convertChooseProductStepContext_protoContext___block_invoke;
    v10[3] = &unk_279948AD0;
    v11 = v6;
    v12 = a1;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void __74__NPKProtoStandaloneHelper__convertChooseProductStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 chooseProductStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupProduct:v4];

  [v6 addProducts:v5];
}

+ (void)_convertChooseCredentialsStepContext:(id)a3 protoContext:(id)a4
{
  v6 = a4;
  v7 = [a3 chooseCredentialsStepContext];
  if (v7)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext);
    [v6 setChooseCredentialsStepContext:v8];

    v9 = [v7 allowsManualEntry];
    v10 = [v6 chooseCredentialsStepContext];
    [v10 setAllowsManualEntry:v9];

    v11 = [v7 flowIdentifiers];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__NPKProtoStandaloneHelper__convertChooseCredentialsStepContext_protoContext___block_invoke;
    v12[3] = &unk_279948AF8;
    v13 = v7;
    v14 = v6;
    v15 = a1;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

void __78__NPKProtoStandaloneHelper__convertChooseCredentialsStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 flowIdentifierToCredential];
  v12 = [v5 objectForKey:v4];

  v6 = [*(a1 + 40) chooseCredentialsStepContext];
  v7 = [*(a1 + 48) toNPKProtoStandalonePaymentCredentialUnion:v12 withFlowIdentifier:v4 thumbnailSize:1];

  [v6 addCredentials:v7];
  if ([v12 isRemoteCredential])
  {
    v8 = [*(a1 + 40) chooseCredentialsStepContext];
    v9 = *(a1 + 48);
    v10 = [v12 remoteCredential];
    v11 = [v9 toNPKProtoStandalonePaymentRemoteCredential:v10 thumbnailSize:1];
    [v8 addRemoteCredentials:v11];
  }
}

+ (void)_convertDigitalIssuanceAmountStepContext:(id)a3 protoContext:(id)a4
{
  v14 = a4;
  v6 = [a3 digitalIssuanceAmountStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext);
    [v14 setDigitalIssuanceAmountStepContext:v7];

    v8 = [v6 product];

    if (v8)
    {
      v9 = [v6 product];
      v10 = [a1 toNPKProtoStandalonePaymentSetupProduct:v9];
      v11 = [v14 digitalIssuanceAmountStepContext];
      [v11 setProduct:v10];
    }

    v12 = [v6 allowsReaderModeEntry];
    v13 = [v14 digitalIssuanceAmountStepContext];
    [v13 setAllowsReaderModeEntry:v12];
  }
}

+ (void)_convertDigitalIssuancePaymentStepContext:(id)a3 protoContext:(id)a4
{
  v12 = a4;
  v6 = [a3 digitalIssuancePaymentStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext);
    [v12 setDigitalIssuancePaymentStepContext:v7];

    v8 = [v6 product];

    if (v8)
    {
      v9 = [v6 product];
      v10 = [a1 toNPKProtoStandalonePaymentSetupProduct:v9];
      v11 = [v12 digitalIssuancePaymentStepContext];
      [v11 setProduct:v10];
    }
  }
}

+ (void)_convertReaderModeEntryStepContext:(id)a3 protoContext:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 readerModeEntryStepContext];
  if (v7)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext);
    [v6 setReaderModeEntryStepContext:v8];

    v9 = [v7 title];
    v10 = [v6 readerModeEntryStepContext];
    [v10 setTitle:v9];

    v11 = [v7 subtitle];
    v12 = [v6 readerModeEntryStepContext];
    [v12 setSubtitle:v11];

    v13 = [v7 setupFields];
    if (v13)
    {
      v14 = v13;
      v15 = [v7 setupFields];
      v16 = [v15 count];

      if (v16)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v17 = [v7 setupFields];
        v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            v21 = 0;
            do
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v30 + 1) + 8 * v21);
              v23 = [v6 readerModeEntryStepContext];
              v24 = [a1 toNPKProtoStandalonePaymentSetupField:v22];
              [v23 addSetupFields:v24];

              ++v21;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v19);
        }
      }
    }

    v25 = [v7 product];

    if (v25)
    {
      v26 = [v7 product];
      v27 = [a1 toNPKProtoStandalonePaymentSetupProduct:v26];
      v28 = [v6 readerModeEntryStepContext];
      [v28 setProduct:v27];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (void)_convertReaderModeIngestionStepContext:(id)a3 protoContext:(id)a4
{
  v22 = a4;
  v6 = [a3 readerModeIngestionStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext);
    [v22 setReaderModeIngestionStepContext:v7];

    v8 = [v6 physicalCardImageURL];

    if (v8)
    {
      v9 = [v6 physicalCardImageURL];
      v10 = [v9 absoluteString];
      v11 = [v22 readerModeIngestionStepContext];
      [v11 setPhysicalCardImageURL:v10];
    }

    v12 = [v6 title];
    v13 = [v22 readerModeIngestionStepContext];
    [v13 setTitle:v12];

    v14 = [v6 subtitle];
    v15 = [v22 readerModeIngestionStepContext];
    [v15 setSubtitle:v14];

    v16 = [a1 toNPKProtoStandaloneReaderModeIngestionState:{objc_msgSend(v6, "ingestionState")}];
    v17 = [v22 readerModeIngestionStepContext];
    [v17 setIngestionState:v16];

    [v6 ingestionProgress];
    v19 = v18;
    v20 = [v22 readerModeIngestionStepContext];
    *&v21 = v19;
    [v20 setIngestionProgress:v21];
  }
}

+ (void)_convertManualEntryStepContext:(id)a3 protoContext:(id)a4
{
  v8 = a4;
  v6 = [a3 manualEntryStepContext];
  if (v6)
  {
    v7 = [a1 toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:v6];
    [v8 setManualEntryStepContext:v7];
  }
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext);
  -[NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext setCameraFirstProvisioningEnabled:](v5, "setCameraFirstProvisioningEnabled:", [v4 cameraFirstProvisioningEnabled]);
  v6 = [v4 setupFields];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 setupFields];
    v9 = [v8 count];

    if (v9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [v4 setupFields];
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [a1 toNPKProtoStandalonePaymentSetupField:*(*(&v18 + 1) + 8 * i)];
            [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)v5 addSetupFields:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)toNPKProtoStandalonePaymentSetupField:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupField);
  v5 = [v3 identifier];
  [(NPKProtoStandalonePaymentSetupField *)v4 setIdentifier:v5];

  v6 = [v3 fieldType];
  [(NPKProtoStandalonePaymentSetupField *)v4 setFieldType:[NPKProtoStandaloneHelper toNPKProtoStandalonePaymentSetupFieldType:v6]];

  return v4;
}

+ (void)_convertSecondaryManualEntryStepContext:(id)a3 protoContext:(id)a4
{
  v21 = a4;
  v6 = [a3 secondaryManualEntryStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext);
    [v21 setSecondaryManualEntryStepContext:v7];

    v8 = [a1 toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:v6];
    v9 = [v21 secondaryManualEntryStepContext];
    [v9 setManualEntryStepContext:v8];

    v10 = [v6 credential];

    if (v10)
    {
      v11 = [v6 credential];
      v12 = [a1 toNPKProtoStandalonePaymentCredentialUnion:v11 withFlowIdentifier:0 thumbnailSize:0];
      v13 = [v21 secondaryManualEntryStepContext];
      [v13 setCredential:v12];

      v14 = [v6 credential];
      LODWORD(v12) = [v14 isRemoteCredential];

      if (v12)
      {
        v15 = [v6 credential];
        v16 = [v15 remoteCredential];
        v17 = [a1 toNPKProtoStandalonePaymentRemoteCredential:v16 thumbnailSize:0];
        v18 = [v21 secondaryManualEntryStepContext];
        [v18 setRemoteCredential:v17];
      }
    }

    v19 = [v6 allowsAddingDifferentCard];
    v20 = [v21 secondaryManualEntryStepContext];
    [v20 setAllowsAddingDifferentCard:v19];
  }
}

+ (void)_convertLocalDeviceManualEntry:(id)a3 protoContext:(id)a4
{
  v27 = a4;
  v6 = [a3 localDeviceManualEntryStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext);
    [v27 setLocalDeviceManualEntryStepContext:v7];

    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext);
    v9 = [v27 localDeviceManualEntryStepContext];
    [v9 setSecondaryManualEntryStepContext:v8];

    v10 = [a1 toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:v6];
    v11 = [v27 localDeviceManualEntryStepContext];
    v12 = [v11 secondaryManualEntryStepContext];
    [v12 setManualEntryStepContext:v10];

    v13 = [v6 credential];

    if (v13)
    {
      v14 = [v6 credential];
      v15 = [a1 toNPKProtoStandalonePaymentCredentialUnion:v14 withFlowIdentifier:0 thumbnailSize:0];
      v16 = [v27 localDeviceManualEntryStepContext];
      v17 = [v16 secondaryManualEntryStepContext];
      [v17 setCredential:v15];

      v18 = [v6 credential];
      LODWORD(v15) = [v18 isRemoteCredential];

      if (v15)
      {
        v19 = [v6 credential];
        v20 = [v19 remoteCredential];
        v21 = [a1 toNPKProtoStandalonePaymentRemoteCredential:v20 thumbnailSize:0];
        v22 = [v27 localDeviceManualEntryStepContext];
        v23 = [v22 secondaryManualEntryStepContext];
        [v23 setRemoteCredential:v21];
      }
    }

    v24 = [v6 allowsAddingDifferentCard];
    v25 = [v27 localDeviceManualEntryStepContext];
    v26 = [v25 secondaryManualEntryStepContext];
    [v26 setAllowsAddingDifferentCard:v24];
  }
}

+ (void)_convertLocalDeviceManualEntryProgress:(id)a3 protoContext:(id)a4
{
  v9 = a4;
  v5 = [a3 localDeviceManualEntryProgressStepContext];
  if (v5)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext);
    [v9 setLocalDeviceManualEntryProgressStepContext:v6];

    v7 = [v5 numericEntryPending];
    v8 = [v9 localDeviceManualEntryProgressStepContext];
    [v8 setNumericEntryPending:v7];
  }
}

+ (void)_convertPasscodeUpgradeStepContext:(id)a3 protoContext:(id)a4
{
  v7 = a4;
  v5 = [a3 passcodeUpgradeStepContext];
  if (v5)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext);
    [v7 setPasscodeUpgradeStepContext:v6];
  }
}

+ (void)_convertTermsAndConditionsStepContext:(id)a3 protoContext:(id)a4
{
  v16 = a4;
  v6 = [a3 termsAndConditionsStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext);
    [v16 setTermsAndConditionsStepContext:v7];

    v8 = [v6 termsURL];

    if (v8)
    {
      v9 = [v6 termsURL];
      v10 = [v9 absoluteString];
      v11 = [v16 termsAndConditionsStepContext];
      [v11 setTermsURL:v10];
    }

    [v6 setAllowNonSecureHTTP:{objc_msgSend(v6, "allowNonSecureHTTP")}];
    v12 = [v6 product];

    if (v12)
    {
      v13 = [v6 product];
      v14 = [a1 toNPKProtoStandalonePaymentSetupProduct:v13];
      v15 = [v16 termsAndConditionsStepContext];
      [v15 setProduct:v14];
    }
  }
}

+ (void)_convertProvisioningProgressStepContext:(id)a3 protoContext:(id)a4
{
  v15 = a4;
  v6 = [a3 provisioningProgressStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext);
    [v15 setProvisioningProgressStepContext:v7];

    v8 = [v6 product];

    if (v8)
    {
      v9 = [v6 product];
      v10 = [a1 toNPKProtoStandalonePaymentSetupProduct:v9];
      v11 = [v15 provisioningProgressStepContext];
      [v11 setProduct:v10];
    }

    v12 = [v6 localizedProgressDescription];

    if (v12)
    {
      v13 = [v6 localizedProgressDescription];
      v14 = [v15 provisioningProgressStepContext];
      [v14 setLocalizedProgressDescription:v13];
    }
  }
}

+ (void)_convertProvisioningResultStepContext:(id)a3 protoContext:(id)a4
{
  v14 = a4;
  v6 = [a3 provisioningResultStepContext];
  if (v6)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext);
    [v14 setProvisioningResultStepContext:v7];

    v8 = [v6 cardAdded];
    v9 = [v14 provisioningResultStepContext];
    [v9 setCardAdded:v8];

    v10 = [v6 error];

    if (v10)
    {
      v11 = [v6 error];
      v12 = [a1 toNPKProtoStandaloneError:v11];
      v13 = [v14 provisioningResultStepContext];
      [v13 setError:v12];
    }
  }
}

+ (void)_convertIssuerVerificationChannelsStepContext:(id)a3 protoContext:(id)a4
{
  v6 = a4;
  v7 = [a3 verificationChannelsStepContext];
  if (v7)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext);
    [v6 setIssuerVerificationChannelsStepContext:v8];

    v9 = [v7 paymentPass];

    if (v9)
    {
      v10 = [v7 paymentPass];
      v11 = [a1 toNPKProtoStandalonePaymentPass:v10 thumbnailSize:0];
      v12 = [v6 issuerVerificationChannelsStepContext];
      [v12 setPaymentPass:v11];
    }

    v13 = [v7 verificationChannels];

    if (v13)
    {
      v14 = [v7 verificationChannels];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__NPKProtoStandaloneHelper__convertIssuerVerificationChannelsStepContext_protoContext___block_invoke;
      v15[3] = &unk_279948B20;
      v16 = v6;
      v17 = a1;
      [v14 enumerateObjectsUsingBlock:v15];
    }
  }
}

void __87__NPKProtoStandaloneHelper__convertIssuerVerificationChannelsStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 issuerVerificationChannelsStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandaloneVerificationChannel:v4];

  [v6 addVerificationChannels:v5];
}

+ (void)_convertIssuerVerificationFieldsStepContext:(id)a3 protoContext:(id)a4
{
  v7 = a4;
  v5 = [a3 verificationFieldsStepContext];
  if (v5)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext);
    [v7 setIssuerVerificationFieldsStepContext:v6];
  }
}

+ (void)_convertMoreInformationStepContext:(id)a3 protoContext:(id)a4
{
  v6 = a4;
  v7 = [a3 moreInformationStepContext];
  if (v7)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext);
    [v6 setMoreInformationStepContext:v8];

    v9 = [v7 moreInfoItems];

    if (v9)
    {
      v10 = [v7 moreInfoItems];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __76__NPKProtoStandaloneHelper__convertMoreInformationStepContext_protoContext___block_invoke;
      v18 = &unk_279948B48;
      v19 = v6;
      v20 = a1;
      [v10 enumerateObjectsUsingBlock:&v15];
    }

    v11 = [v7 paymentPass];

    if (v11)
    {
      v12 = [v7 paymentPass];
      v13 = [a1 toNPKProtoStandalonePaymentPass:v12 thumbnailSize:0];
      v14 = [v6 moreInformationStepContext];
      [v14 setPaymentPass:v13];
    }
  }
}

void __76__NPKProtoStandaloneHelper__convertMoreInformationStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 moreInformationStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupMoreInfoItem:v4];

  [v6 addMoreInfoItems:v5];
}

+ (void)_convertIssuerVerificationCodeStepContext:(id)a3 protoContext:(id)a4
{
  v7 = a4;
  v5 = [a3 verificationCodeStepContext];
  if (v5)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext);
    [v7 setIssuerVerificationCodeStepContext:v6];
  }
}

+ (id)_convertProtoWelcomeStepContext:(id)a3 requestContext:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v6 = [[NPKPaymentProvisioningFlowControllerWelcomeStepContext alloc] initWithRequestContext:v21];
  v7 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v5 heroImages];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277D38060]);
        v15 = [v13 identifier];
        v16 = [v13 imageData];
        v17 = [v14 initWithIdentifier:v15 imageData:v16 credentialType:0];

        [v7 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = [v7 copy];
  [(NPKPaymentProvisioningFlowControllerWelcomeStepContext *)v6 setHeroImages:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)fromNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 hasWelcomeStepContext])
  {
    v8 = [v7 welcomeStepContext];

    v9 = [a1 _convertProtoWelcomeStepContext:v8 requestContext:v6];
  }

  else
  {
    v10 = [v7 hasChooseFlowStepContext];

    if (v10)
    {
      v9 = [[NPKPaymentProvisioningFlowControllerChooseFlowStepContext alloc] initWithRequestContext:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)toNPKProtoStandalonePaymentSetupMoreInfoItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupMoreInfoItem);
  v5 = [v3 title];

  if (v5)
  {
    v6 = [v3 title];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setTitle:v6];
  }

  v7 = [v3 body];

  if (v7)
  {
    v8 = [v3 body];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setBody:v8];
  }

  v9 = [v3 linkText];

  if (v9)
  {
    v10 = [v3 linkText];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setLinkText:v10];
  }

  v11 = [v3 linkURL];

  if (v11)
  {
    v12 = [v3 linkURL];
    v13 = [v12 absoluteString];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setLinkURL:v13];
  }

  v14 = [v3 imageURL];

  if (v14)
  {
    v15 = [v3 imageURL];
    v16 = [v15 absoluteString];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setImageURL:v16];
  }

  v17 = [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 imageURL];
  if (!v17)
  {
    v18 = [v3 imageData];

    if (!v18)
    {
      goto LABEL_15;
    }

    v17 = [v3 imageData];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setImageData:v17];
  }

LABEL_15:

  return v4;
}

+ (int)toNPKProtoStandalonePassType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 110;
  }

  else
  {
    v3 = 100;
  }

  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (int)toNPKProtoStandalonePaymentPassActivationState:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 100;
  }

  else
  {
    return 10 * (a3 - 1) + 110;
  }
}

+ (id)toNPKProtoStandalonePass:(id)a3 thumbnailSize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NPKProtoStandalonePass);
  -[NPKProtoStandalonePass setPassType:](v7, "setPassType:", [a1 toNPKProtoStandalonePassType:{objc_msgSend(v6, "passType")}]);
  v8 = NPKURLForPass(v6);
  if (v8)
  {
    [a1 passImageSize];
    if (v4)
    {
      [a1 passThumbnailImageSize];
    }

    if (v9 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
    {
      PKScreenSize();
      PKScreenScale();
    }

    v12 = v8;
    v13 = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x277D37F98] createWithFileURL:v12 warnings:0 error:0];
    v15 = [v14 imageSetLoadedIfNeeded:0];
    v16 = [v15 faceImage];
    v17 = [v16 imageData];

    objc_autoreleasePoolPop(v13);
    [(NPKProtoStandalonePass *)v7 setImageData:v17];
  }

  v18 = [v6 serialNumber];
  [(NPKProtoStandalonePass *)v7 setSerialNumber:v18];

  v19 = [v6 passTypeIdentifier];
  [(NPKProtoStandalonePass *)v7 setPassTypeIdentifier:v19];

  v20 = [v6 localizedName];
  [(NPKProtoStandalonePass *)v7 setLocalizedName:v20];

  v21 = [v6 localizedDescription];
  [(NPKProtoStandalonePass *)v7 setLocalizedDescription:v21];

  v22 = [v6 organizationName];
  [(NPKProtoStandalonePass *)v7 setOrganizationName:v22];

  v23 = [v6 userInfo];

  if (v23)
  {
    v24 = [v6 userInfo];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__NPKProtoStandaloneHelper_toNPKProtoStandalonePass_thumbnailSize___block_invoke;
    v27[3] = &unk_279948B70;
    v28 = v7;
    [v24 enumerateKeysAndObjectsUsingBlock:v27];
  }

  -[NPKProtoStandalonePass setRemotePass:](v7, "setRemotePass:", [v6 isRemotePass]);
  v25 = [v6 deviceName];
  [(NPKProtoStandalonePass *)v7 setDeviceName:v25];

  return v7;
}

void __67__NPKProtoStandaloneHelper_toNPKProtoStandalonePass_thumbnailSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = objc_alloc_init(NPKProtoStandaloneUserInfo);
  [(NPKProtoStandaloneUserInfo *)v6 setKey:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NPKProtoStandaloneUserInfo *)v6 setValue:v7];
    }
  }

  [*(a1 + 32) addUserInfos:v6];
}

+ (id)sha1hash:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int)toNPKProtoStandaloneVerificationChannelType:(unint64_t)a3
{
  if (a3 - 2 > 9)
  {
    return 110;
  }

  else
  {
    return dword_25B59AA70[a3 - 2];
  }
}

+ (id)toNPKProtoStandaloneVerificationChannel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandaloneVerificationChannel);
  v6 = [v4 identifier];
  [(NPKProtoStandaloneVerificationChannel *)v5 setIdentifier:v6];

  -[NPKProtoStandaloneVerificationChannel setType:](v5, "setType:", [a1 toNPKProtoStandaloneVerificationChannelType:{objc_msgSend(v4, "type")}]);
  v7 = [v4 typeDescriptionUnlocalized];
  [(NPKProtoStandaloneVerificationChannel *)v5 setTypeDescriptionUnlocalized:v7];

  v8 = [v4 typeDescription];
  [(NPKProtoStandaloneVerificationChannel *)v5 setTypeDescription:v8];

  v9 = [v4 organizationName];
  [(NPKProtoStandaloneVerificationChannel *)v5 setOrganizationName:v9];

  -[NPKProtoStandaloneVerificationChannel setRequiresUserInteraction:](v5, "setRequiresUserInteraction:", [v4 requiresUserInteraction]);
  v10 = [v4 contactPoint];
  [(NPKProtoStandaloneVerificationChannel *)v5 setContactPoint:v10];

  v11 = [v4 sourceAddress];

  [(NPKProtoStandaloneVerificationChannel *)v5 setSourceAddress:v11];

  return v5;
}

+ (int)toNPKProtoStandalonePaymentApplicationState:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return 100;
  }

  else
  {
    return dword_25B59AA98[a3 - 1];
  }
}

+ (id)toNPKProtoStandalonePaymentCredential:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentCredential);
  v5 = [v3 sanitizedPrimaryAccountNumber];
  [(NPKProtoStandalonePaymentCredential *)v4 setSanitizedPrimaryAccountNumber:v5];

  v6 = [v3 expiration];
  [(NPKProtoStandalonePaymentCredential *)v4 setExpiration:v6];

  v7 = [v3 longDescription];

  [(NPKProtoStandalonePaymentCredential *)v4 setLongDescription:v7];

  return v4;
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerSection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPickerSection);
  v6 = [v4 title];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)v5 setTitle:v6];

  v7 = [v4 footer];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)v5 setFooter:v7];

  v8 = [v4 items];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerSection___block_invoke;
  v11[3] = &unk_279948B98;
  v9 = v5;
  v12 = v9;
  v13 = a1;
  [v8 enumerateObjectsUsingBlock:v11];

  return v9;
}

void __85__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentProvisioningFlowPickerItem:a2];
  [v2 addItems:v3];
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPickerItem);
  v6 = [v4 title];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerItem *)v5 setTitle:v6];

  v7 = [v4 identifier];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerItem *)v5 setIdentifier:v7];

  v8 = [v4 products];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerItem___block_invoke;
  v11[3] = &unk_279948AD0;
  v9 = v5;
  v12 = v9;
  v13 = a1;
  [v8 enumerateObjectsUsingBlock:v11];

  return v9;
}

void __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupProduct:a2];
  [v2 addProducts:v3];
}

+ (id)toNPKProtoStandalonePaymentSetupProduct:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentSetupProduct);
  v6 = [v4 displayName];
  [(NPKProtoStandalonePaymentSetupProduct *)v5 setDisplayName:v6];

  v7 = [v4 regions];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke;
  v44[3] = &unk_279948BC0;
  v8 = v5;
  v45 = v8;
  [v7 enumerateObjectsUsingBlock:v44];

  v9 = [v4 productIdentifier];
  [(NPKProtoStandalonePaymentSetupProduct *)v8 setProductIdentifier:v9];

  v10 = [v4 partnerIdentifier];
  [(NPKProtoStandalonePaymentSetupProduct *)v8 setPartnerIdentifier:v10];

  v11 = [v4 partnerName];
  [(NPKProtoStandalonePaymentSetupProduct *)v8 setPartnerName:v11];

  v12 = [v4 requiredFields];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_2;
  v41[3] = &unk_279948BE8;
  v13 = v8;
  v42 = v13;
  v43 = a1;
  [v12 enumerateObjectsUsingBlock:v41];

  v14 = [v4 supportedProtocols];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_3;
  v39[3] = &unk_279945858;
  v15 = v13;
  v40 = v15;
  [v14 enumerateObjectsUsingBlock:v39];

  v16 = [v4 termsURL];

  if (v16)
  {
    v17 = [v4 termsURL];
    v18 = [v17 absoluteString];
    [(NPKProtoStandalonePaymentSetupProduct *)v15 setTermsURL:v18];
  }

  -[NPKProtoStandalonePaymentSetupProduct setSupportedProvisioningMethods:](v15, "setSupportedProvisioningMethods:", [v4 supportedProvisioningMethods]);
  v19 = [v4 readerModeMetadata];
  v20 = [a1 toJsonString:v19];

  if (v20)
  {
    [(NPKProtoStandalonePaymentSetupProduct *)v15 setReaderModeMetadataJson:v20];
  }

  -[NPKProtoStandalonePaymentSetupProduct setFlags:](v15, "setFlags:", [v4 flags]);
  -[NPKProtoStandalonePaymentSetupProduct setHsa2Requirement:](v15, "setHsa2Requirement:", [v4 hsa2Requirement]);
  v21 = [v4 imageAssetURLs];

  if (v21)
  {
    v22 = [v4 imageAssetURLs];
    v23 = [a1 toNPKProtoStandalonePaymentSetupProductImageAssetURLs:v22];
    [(NPKProtoStandalonePaymentSetupProduct *)v15 setImageAssetURLs:v23];
  }

  -[NPKProtoStandalonePaymentSetupProduct setSuppressPendingPurchases:](v15, "setSuppressPendingPurchases:", [v4 suppressPendingPurchases]);
  v24 = [v4 paymentOptions];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_4;
  v36[3] = &unk_279948C10;
  v25 = v15;
  v37 = v25;
  v38 = a1;
  [v24 enumerateObjectsUsingBlock:v36];

  v26 = [v4 provisioningMethodTypes];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_5;
  v32[3] = &unk_279948AF8;
  v33 = v4;
  v35 = a1;
  v27 = v25;
  v34 = v27;
  v28 = v4;
  [v26 enumerateObjectsUsingBlock:v32];

  v29 = v34;
  v30 = v27;

  return v27;
}

void __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupField:a2];
  [v2 addRequiredFields:v3];
}

void __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupProductPaymentOption:a2];
  [v2 addPaymentOptions:v3];
}

void __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [a1[4] provisioningMethodMetadataForType:v3];
    if (v4)
    {
      v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry);
      [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)v5 setType:v7];
      v6 = [a1[6] toNPKProtoStandalonePaymentProvisioningMethodMetadata:v4];
      [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)v5 setMetadata:v6];

      [a1[5] addRequestedProvisioningMethods:v5];
    }

    v3 = v7;
  }
}

+ (id)toNPKProtoStandalonePaymentProvisioningMethodMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningMethodMetadata);
  v6 = [v4 productIdentifier];

  if (v6)
  {
    v7 = [v4 productIdentifier];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setProductIdentifier:v7];
  }

  v8 = [v4 currency];

  if (v8)
  {
    v9 = [v4 currency];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setCurrency:v9];
  }

  v10 = [v4 depositAmount];

  if (v10)
  {
    v11 = [v4 depositAmount];
    v12 = [v11 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setDepositAmount:v12];
  }

  v13 = [v4 minLoadedBalance];

  if (v13)
  {
    v14 = [v4 minLoadedBalance];
    v15 = [v14 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setMinLoadedBalance:v15];
  }

  v16 = [v4 maxLoadedBalance];

  if (v16)
  {
    v17 = [v4 maxLoadedBalance];
    v18 = [v17 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setMaxLoadedBalance:v18];
  }

  v19 = [v4 requiredFields];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningMethodMetadata___block_invoke;
  v36 = &unk_279948BE8;
  v20 = v5;
  v37 = v20;
  v38 = a1;
  [v19 enumerateObjectsUsingBlock:&v33];

  v21 = [v4 readerModeMetadata];
  v22 = [a1 toJsonString:v21];

  if (v22)
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setReaderModeMetadataJson:v22];
  }

  v23 = [v4 digitalIssuanceMetadata];

  if (v23)
  {
    v24 = [v4 digitalIssuanceMetadata];
    v25 = [a1 toNPKProtoStandalonePaymentDigitalIssuanceMetadata:v24];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setDigitalIssuanceMetadata:v25];
  }

  v26 = [v4 readerModeResources];
  v27 = [a1 toJsonString:v26];

  if (v27)
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setReaderModeResourcesJson:v27];
  }

  v28 = [v4 minimumReaderModeBalance];

  if (v28)
  {
    v29 = [v4 minimumReaderModeBalance];
    v30 = [v29 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setMinimumReaderModeBalance:v30];
  }

  v31 = v20;

  return v20;
}

void __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningMethodMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupField:a2];
  [v2 addRequiredFields:v3];
}

+ (id)toNPKProtoStandalonePaymentDigitalIssuanceMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentDigitalIssuanceMetadata);
  v6 = [v4 serviceProviderIdentifier];

  if (v6)
  {
    v7 = [v4 serviceProviderIdentifier];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v5 setServiceProviderIdentifier:v7];
  }

  v8 = [v4 serviceProviderCountryCode];

  if (v8)
  {
    v9 = [v4 serviceProviderCountryCode];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v5 setServiceProviderCountryCode:v9];
  }

  v10 = [v4 serviceProviderCountryCode];

  if (v10)
  {
    v11 = [v4 serviceProviderCountryCode];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v5 setServiceProviderCountryCode:v11];
  }

  v12 = [v4 serviceProviderAcceptedNetworks];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke;
  v31[3] = &unk_279945858;
  v13 = v5;
  v32 = v13;
  [v12 enumerateObjectsUsingBlock:v31];

  v14 = [v4 serviceProviderCapabilities];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke_2;
  v29[3] = &unk_279945858;
  v15 = v13;
  v30 = v15;
  [v14 enumerateObjectsUsingBlock:v29];

  v16 = [v4 serviceProviderDict];
  v17 = [a1 toJsonString:v16];

  if (v17)
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v15 setServiceProviderDictJson:v17];
  }

  v18 = [v4 action];

  if (v18)
  {
    v19 = [v4 action];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v15 setAction:v19];
  }

  v20 = [v4 merchantID];

  if (v20)
  {
    v21 = [v4 merchantID];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v15 setMerchantID:v21];
  }

  v22 = [v4 defaultSuggestions];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke_3;
  v27[3] = &unk_279948C38;
  v23 = v15;
  v28 = v23;
  [v22 enumerateObjectsUsingBlock:v27];

  v24 = v28;
  v25 = v23;

  return v23;
}

void __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  [v2 addDefaultSuggestions:v3];
}

+ (id)toNPKProtoStandalonePaymentSetupProductPaymentOption:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupProductPaymentOption);
  -[NPKProtoStandalonePaymentSetupProductPaymentOption setPriority:](v4, "setPriority:", [v3 priority]);
  -[NPKProtoStandalonePaymentSetupProductPaymentOption setCardType:](v4, "setCardType:", [v3 cardType]);
  v5 = [v3 supportedProtocols];

  [(NPKProtoStandalonePaymentSetupProductPaymentOption *)v4 setSupportedProtocols:v5];

  return v4;
}

+ (id)toNPKProtoStandalonePaymentSetupProductImageAssetURLs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupProductImageAssetURLs);
  v5 = [v3 digitalCardImageUrl];

  if (v5)
  {
    v6 = [v3 digitalCardImageUrl];
    v7 = [v6 absoluteString];
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)v4 setDigitalCardImageUrl:v7];
  }

  v8 = [v3 thumbnailImageUrl];

  if (v8)
  {
    v9 = [v3 thumbnailImageUrl];
    v10 = [v9 absoluteString];
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)v4 setThumbnailImageUrl:v10];
  }

  v11 = [v3 logoImageUrl];

  if (v11)
  {
    v12 = [v3 logoImageUrl];
    v13 = [v12 absoluteString];
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)v4 setLogoImageUrl:v13];
  }

  return v4;
}

+ (id)toJsonString:(id)a3
{
  v3 = a3;
  if (v3 && ([MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)toNPKProtoStandaloneReaderModeIngestionState:(unint64_t)a3
{
  if (a3 - 1 >= 5)
  {
    return 100;
  }

  else
  {
    return 10 * (a3 - 1) + 110;
  }
}

+ (id)toPKPaymentSetupField:(id)a3
{
  v4 = a3;
  v5 = [a1 toPKPaymentSetupFieldType:{objc_msgSend(v4, "fieldType")}];
  v6 = MEMORY[0x277D38108];
  v7 = [v4 identifier];

  v8 = [v6 paymentSetupFieldWithIdentifier:v7 type:v5];

  return v8;
}

+ (unint64_t)toPKPaymentSetupFieldType:(int)a3
{
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if (a3 != 150)
  {
    v5 = 0;
  }

  if (a3 != 140)
  {
    v4 = v5;
  }

  if (a3 != 130)
  {
    v3 = v4;
  }

  v6 = 1;
  v7 = 2;
  if (a3 != 120)
  {
    v7 = 0;
  }

  if (a3 != 110)
  {
    v6 = v7;
  }

  if (a3 <= 129)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end