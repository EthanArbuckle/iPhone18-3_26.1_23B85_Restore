@interface PKPass
+ (BOOL)isValidObjectWithFileDataAccessor:(id)accessor validationOptions:(unint64_t)options warnings:(id *)warnings error:(id *)error signingDate:(id *)date passDictionary:(id)dictionary;
+ (Class)classForDictionary:(id)dictionary bundle:(id)bundle;
+ (Class)classForPassType:(unint64_t)type;
+ (id)_dateForPassComparison:(id)comparison searchOption:(unint64_t)option;
+ (id)fetchSigningDateForObjectWithFileDataAccessor:(id)accessor passDictionary:(id)dictionary;
+ (id)recordNameForUniqueID:(id)d;
+ (id)uniqueIDFromRecordName:(id)name;
- (BOOL)availableForAutomaticPresentationUsingBeaconContext;
- (BOOL)hasFlightDetails;
- (BOOL)hasTimeOrLocationRelevancyInfo;
- (BOOL)hasValidNFCPayload;
- (BOOL)isEqualToPassIncludingMetadata:(id)metadata;
- (BOOL)isExpired;
- (BOOL)isExpiredBasedOnSigningDate;
- (BOOL)isPassStyleExpiresOnSigningDate;
- (BOOL)isPastRelevancy;
- (BOOL)isPersonalizable;
- (BOOL)isUpdatable;
- (BOOL)isValid;
- (BOOL)linksToApp;
- (BOOL)shouldRampBacklight;
- (BOOL)silenceRequested;
- (BOOL)supportsFeature:(unint64_t)feature forDevice:(id)device version:(id)version;
- (BOOL)supportsFeatureForCurrentDevice:(unint64_t)device;
- (BOOL)supportsIssuerBinding;
- (BOOL)supportsSyncing;
- (BOOL)wasAchivedInCloudStoreWithIdentifier:(id)identifier;
- (CGRect)cobrandLogoRect;
- (CGRect)logoRect;
- (CGRect)stripRect;
- (CGRect)thumbnailRect;
- (NSArray)auxiliaryPassInformation;
- (NSArray)auxiliaryStoreIdentifiers;
- (NSArray)backFieldBuckets;
- (NSArray)barcodes;
- (NSArray)frontFieldBuckets;
- (NSArray)passDetailSections;
- (NSArray)relevantDates;
- (NSArray)storeIdentifiers;
- (NSArray)systemAppBundleIdentifiers;
- (NSDate)effectiveExpirationDate;
- (NSDate)relevantDate;
- (NSSet)embeddedLocations;
- (NSString)airlineCode;
- (NSString)businessChatIdentifier;
- (NSString)cardholderInfoSectionTitle;
- (NSString)eventName;
- (NSString)flightCode;
- (NSString)localizedDescription;
- (NSString)localizedName;
- (NSString)logoText;
- (NSString)lowercaseLocalizedName;
- (NSString)pluralLocalizedName;
- (NSURL)appLaunchURL;
- (NSURL)localLocationsURL;
- (NSURL)passURL;
- (PKBarcode)barcode;
- (PKColor)frontFaceImageAverageColor;
- (PKColor)partialFrontFaceImageAverageColor;
- (PKImage)altImage;
- (PKImage)cardHolderPicture;
- (PKImage)compactBankLogoDarkImage;
- (PKImage)compactBankLogoLightImage;
- (PKImage)footerImage;
- (PKImage)frontFaceImage;
- (PKImage)frontFaceShadowImage;
- (PKImage)iconImage;
- (PKImage)notificationIconImage;
- (PKImage)partialFrontFaceImage;
- (PKImage)personalizationLogoImage;
- (PKImage)rawIcon;
- (PKLiveRenderedShaderSet)liveRenderedShaderSet;
- (PKLocation)eventLocation;
- (PKPass)initWithCloudStoreCoder:(id)coder;
- (PKPass)initWithCoder:(id)coder;
- (PKPass)initWithData:(NSData *)data error:(NSError *)error;
- (PKPass)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (PKPassBarcodeSettings)barcodeSettings;
- (PKPassPersonalization)personalization;
- (PKPassUpcomingPassInformation)upcomingPassInformation;
- (PKPaymentPass)paymentPass;
- (PKSeatingInformation)seatingInformation;
- (PKSecureElementPass)secureElementPass;
- (id)_changeMessageForDateSemantic:(id)semantic newSemantic:(id)newSemantic;
- (id)_changeMessageForDictionariesSemantic:(id)semantic newSemantic:(id)newSemantic passStyle:(int64_t)style;
- (id)_changeMessageForEventDateInfoSemantic:(id)semantic newSemantic:(id)newSemantic;
- (id)_changeMessageForFieldKey:(id)key;
- (id)_changeMessageForPersonNameComponentsSemantic:(id)semantic newSemantic:(id)newSemantic;
- (id)_changeMessageForSemantic:(id)semantic newSemantic:(id)newSemantic passStyle:(int64_t)style;
- (id)_changeMessageForStringSemantic:(id)semantic newSemantic:(id)newSemantic;
- (id)_localizationKeyForMultipleDiff;
- (id)additionalInfoFields;
- (id)allSemantics;
- (id)autoTopUpFields;
- (id)backgroundImage;
- (id)balanceFields;
- (id)balances;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currencyAmountForSemanticKey:(id)key;
- (id)dateForSemanticKey:(id)key;
- (id)dictionariesForSemanticKey:(id)key;
- (id)diff:(id)diff;
- (id)eventDateInfoForSemanticKey:(id)key;
- (id)fidoProfile;
- (id)fieldForKey:(id)key;
- (id)issuerBindingInformation;
- (id)liveDataConfiguration;
- (id)localizedDescriptionForDiff:(id)diff;
- (id)localizedValueForFieldKey:(NSString *)key;
- (id)locationForSemanticKey:(id)key;
- (id)logoImage;
- (id)numberForSemanticKey:(id)key;
- (id)passLocalizedStringForKey:(id)key;
- (id)personNameComponentsForSemanticKey:(id)key;
- (id)primaryFields;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (id)secondaryLogoImage;
- (id)semantics;
- (id)stringForSemanticKey:(id)key;
- (id)stringsForSemanticKey:(id)key;
- (id)stripImage;
- (id)systemFieldsDataForCloudStoreWithIdentifier:(id)identifier;
- (id)thumbnailImage;
- (id)timeZoneForSemanticKey:(id)key;
- (id)venueMapImage;
- (int64_t)comparePassDatesToPass:(id)pass searchOption:(unint64_t)option;
- (int64_t)eventType;
- (int64_t)style;
- (int64_t)transitType;
- (unint64_t)flightNumber;
- (void)downloadRemoteAssetsWithConfiguration:(id)configuration completion:(id)completion;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)loadFlightsWithCompletionHandler:(id)handler;
- (void)setEmbeddedLocations:(id)locations;
- (void)setRelevantDate:(id)date;
- (void)setSystemFieldsMetata:(id)metata forCloudStoreWithIdentifier:(id)identifier;
@end

@implementation PKPass

- (PKPaymentPass)paymentPass
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKSecureElementPass)secureElementPass
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)style
{
  displayProfile = [(PKObject *)self displayProfile];
  passStyle = [displayProfile passStyle];

  return passStyle;
}

- (BOOL)isExpired
{
  expirationDate = [(PKPass *)self expirationDate];
  date = [MEMORY[0x1E695DF00] date];
  [expirationDate timeIntervalSinceDate:date];
  v5 = v4 < 0.0;

  return v5;
}

- (BOOL)hasValidNFCPayload
{
  nfcPayload = [(PKPass *)self nfcPayload];
  message = [nfcPayload message];
  if (message && ![nfcPayload payloadState])
  {
    encryptionPublicKeyData = [nfcPayload encryptionPublicKeyData];
    if (encryptionPublicKeyData)
    {
      v4 = 1;
    }

    else
    {
      v4 = PKNFCPassKeyOptional();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKBarcode)barcode
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  barcode = [contentLoadedIfNeeded barcode];

  return barcode;
}

- (id)logoImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  logoImage = [v2 logoImage];

  return logoImage;
}

- (NSString)localizedDescription
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  localizedDescription = [contentLoadedIfNeeded localizedDescription];

  return localizedDescription;
}

- (PKImage)iconImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:1];
  iconImage = [v2 iconImage];

  return iconImage;
}

- (NSArray)frontFieldBuckets
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  frontFieldBuckets = [contentLoadedIfNeeded frontFieldBuckets];

  return frontFieldBuckets;
}

- (CGRect)cobrandLogoRect
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:0];
  [v2 cobrandLogoRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSString)logoText
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  logoText = [contentLoadedIfNeeded logoText];

  return logoText;
}

- (PKImage)frontFaceImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:0];
  faceImage = [v2 faceImage];

  return faceImage;
}

- (PKColor)frontFaceImageAverageColor
{
  if ([(PKObject *)self isImageSetLoaded:0]|| ![(PKObject *)self isImageSetLoaded:2])
  {
    v3 = [(PKObject *)self imageSetLoadedIfNeeded:0];
    faceImageAverageColor = [v3 faceImageAverageColor];
  }

  else
  {
    v3 = [(PKObject *)self imageSetLoadedIfNeeded:2];
    faceImageAverageColor = [v3 placeHolderImageAverageColor];
  }

  v5 = faceImageAverageColor;

  return v5;
}

- (PKImage)frontFaceShadowImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:0];
  faceShadowImage = [v2 faceShadowImage];

  return faceShadowImage;
}

- (PKImage)partialFrontFaceImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:2];
  placeHolderImage = [v2 placeHolderImage];

  return placeHolderImage;
}

- (PKColor)partialFrontFaceImageAverageColor
{
  if ([(PKObject *)self isImageSetLoaded:2]|| ![(PKObject *)self isImageSetLoaded:0])
  {
    v3 = [(PKObject *)self imageSetLoadedIfNeeded:2];
    placeHolderImageAverageColor = [v3 placeHolderImageAverageColor];
  }

  else
  {
    v3 = [(PKObject *)self imageSetLoadedIfNeeded:0];
    placeHolderImageAverageColor = [v3 faceImageAverageColor];
  }

  v5 = placeHolderImageAverageColor;

  return v5;
}

- (BOOL)supportsIssuerBinding
{
  if ([(PKPass *)self passType])
  {
    return 0;
  }

  nfcPayload = [(PKPass *)self nfcPayload];

  if (!nfcPayload)
  {
    return 0;
  }

  issuerBindingInformation = [(PKPass *)self issuerBindingInformation];
  if (issuerBindingInformation)
  {
    v3 = 1;
  }

  else
  {
    fidoProfile = [(PKPass *)self fidoProfile];
    v3 = fidoProfile != 0;
  }

  return v3;
}

- (id)issuerBindingInformation
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  issuerBindingInformation = [contentLoadedIfNeeded issuerBindingInformation];

  return issuerBindingInformation;
}

- (id)fidoProfile
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  fidoProfile = [contentLoadedIfNeeded fidoProfile];

  return fidoProfile;
}

- (BOOL)isValid
{
  if ([(PKPass *)self isRevoked]|| [(PKPass *)self isExpired])
  {
    return 0;
  }

  else
  {
    return ![(PKPass *)self isVoided];
  }
}

- (BOOL)supportsSyncing
{
  passType = self->_passType;
  if ([(PKPass *)self style]== 8)
  {
    v4 = ![(NSString *)self->_passTypeIdentifier hasPrefix:@"healthpass.com.apple.health"];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return (passType == 0) & v4;
}

- (BOOL)silenceRequested
{
  v2 = [(PKPass *)self numberForSemanticKey:@"silenceRequested"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)eventType
{
  v2 = [(PKPass *)self stringForSemanticKey:@"eventType"];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v8 = _PKEnumValueFromString(v2, v3, @"PKEventType", @"PKEventTypeGeneric, PKEventTypeLivePerformance, PKEventTypeMovie, PKEventTypeSports, PKEventTypeConference, PKEventTypeConvention, PKEventTypeWorkshop, PKEventTypeSocialGathering", v4, v5, v6, v7, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)eventName
{
  v3 = [(PKPass *)self stringForSemanticKey:@"eventName"];
  v4 = v3;
  if (v3)
  {
    localizedName = v3;
  }

  else
  {
    localizedName = [(PKPass *)self localizedName];
  }

  v6 = localizedName;

  return v6;
}

- (PKLocation)eventLocation
{
  firstObject = [(PKPass *)self locationForSemanticKey:@"venueLocation"];
  if (!firstObject)
  {
    if ([(PKPass *)self hasLocationRelevancyInfo])
    {
      embeddedLocationsArray = [(PKPass *)self embeddedLocationsArray];
      firstObject = [embeddedLocationsArray firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (PKPass)initWithData:(NSData *)data error:(NSError *)error
{
  v5.receiver = self;
  v5.super_class = PKPass;
  return [(PKObject *)&v5 initWithData:data error:error];
}

+ (Class)classForPassType:(unint64_t)type
{
  v4 = objc_opt_class();

  return v4;
}

- (PKPass)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v166 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v157.receiver = self;
  v157.super_class = PKPass;
  v8 = [(PKObject *)&v157 initWithDictionary:dictionaryCopy bundle:bundleCopy];

  if (!dictionaryCopy || !v8)
  {
    goto LABEL_124;
  }

  v150 = bundleCopy;
  v152 = [PKDisplayProfile displayProfileOfType:0 withDictionary:dictionaryCopy bundle:bundleCopy];
  [(PKObject *)v8 setDisplayProfile:?];
  v9 = [dictionaryCopy PKStringForKey:@"passTypeIdentifier"];
  [(PKPass *)v8 setPassTypeIdentifier:v9];

  v10 = [dictionaryCopy PKStringForKey:@"serialNumber"];
  [(PKPass *)v8 setSerialNumber:v10];

  v11 = [dictionaryCopy PKNumberForKey:@"sequenceCounter"];
  [(PKPass *)v8 setSequenceCounter:v11];

  passTypeIdentifier = [(PKPass *)v8 passTypeIdentifier];
  serialNumber = [(PKPass *)v8 serialNumber];
  v14 = PKGeneratePassUniqueID(passTypeIdentifier, serialNumber);
  [(PKObject *)v8 setUniqueID:v14];

  v15 = [dictionaryCopy PKStringForKey:@"teamIdentifier"];
  [(PKPass *)v8 setTeamID:v15];

  v16 = [dictionaryCopy PKStringForKey:@"organizationName"];
  [(PKPass *)v8 setOrganizationName:v16];

  v17 = [dictionaryCopy PKDateForKey:@"expirationDate"];
  [(PKPass *)v8 setExpirationDate:v17];

  -[PKPass setVoided:](v8, "setVoided:", [dictionaryCopy PKBoolForKey:@"voided"]);
  v151 = dictionaryCopy;
  v18 = dictionaryCopy;
  v19 = 0x1E695D000uLL;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = [v18 PKArrayContaining:objc_opt_class() forKey:@"relevantDates"];
  v22 = v21;
  if (v21)
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v158 objects:buf count:16];
    if (v24)
    {
      v25 = v24;
      v154 = v22;
      v26 = *v159;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v159 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v158 + 1) + 8 * i);
          if ([v20 count] >= 0xA)
          {
            v31 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
            {
              *v162 = 67109120;
              v163 = 10;
              _os_log_error_impl(&dword_1AD337000, &v31->super, OS_LOG_TYPE_ERROR, "Pass has more than %d dates. Capping.", v162, 8u);
            }

            v19 = 0x1E695D000;
            v22 = v154;
            goto LABEL_20;
          }

          v29 = PKValidateRelevantDateDictionary(v28);

          if (!v29)
          {
            v30 = [[PKPassRelevantDate alloc] initWithDictionary:v28];
            [v20 addObject:v30];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v158 objects:buf count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

      v19 = 0x1E695D000;
      v22 = v154;
    }
  }

  else
  {
    v23 = [v18 PKDateForKey:@"relevantDate"];
    if (v23)
    {
      v31 = [[PKPassRelevantDate alloc] initWithRelevantDate:v23];
      [v20 addObject:v31];
LABEL_20:
    }
  }

  if ([v20 count])
  {
    v32 = [v20 copy];
  }

  else
  {
    v32 = 0;
  }

  [(PKPass *)v8 setRelevantDates:v32];
  v33 = [v18 PKURLForKey:@"webServiceURL"];
  [(PKObject *)v8 setWebServiceURL:v33];

  v34 = [v18 PKStringForKey:@"authenticationToken"];
  [(PKObject *)v8 setAuthenticationToken:v34];

  v35 = [v18 PKDictionaryForKey:@"userInfo"];
  [(PKPass *)v8 setUserInfo:v35];

  v36 = [v18 PKSetForKey:@"associatedPassTypeIdentifiers"];
  [(PKPass *)v8 setAssociatedPassTypeIdentifiers:v36];

  -[PKPass setHasStoredValue:](v8, "setHasStoredValue:", [v18 PKBoolForKey:@"hasStoredValue"]);
  v37 = [v18 PKStringForKey:@"liveRenderType"];
  v149 = v37;
  if (v37)
  {
    v38 = PKPassLiveRenderTypeFromString(v37);
    [(PKPass *)v8 setLiveRenderType:v38];
    v39 = v38 != 0;
  }

  else
  {
    v39 = [v18 PKBoolForKey:@"liveRenderedBackground"];
    [(PKPass *)v8 setLiveRenderType:v39];
  }

  [(PKPass *)v8 setLiveRenderedBackground:v39];
  if (v8->_liveRenderType == 2)
  {
    v40 = [v18 PKStringForKey:@"homeKeyLiveType"];
    [(PKPass *)v8 setHomeKeyLiveRenderType:PKPassHomeKeyLiveRenderTypeFromString(v40)];
  }

  else
  {
    [(PKPass *)v8 setHomeKeyLiveRenderType:0];
  }

  -[PKPass setSupportsCategoryVisualization:](v8, "setSupportsCategoryVisualization:", [v18 PKBoolForKey:@"supportsCategoryVisualization"]);
  -[PKPass setLiveRenderingRequiresEnablement:](v8, "setLiveRenderingRequiresEnablement:", [v18 PKBoolForKey:@"liveRenderingRequiresEnablement"]);
  -[PKPass setMuteReadyForUseNotification:](v8, "setMuteReadyForUseNotification:", [v18 PKBoolForKey:@"muteReadyForUseNotification"]);
  -[PKPass setSupportsLifecycleUpdates:](v8, "setSupportsLifecycleUpdates:", [v18 PKBoolForKey:@"supportsLifecycleUpdates"]);
  v41 = objc_autoreleasePoolPush();
  v42 = v18;
  v43 = [v42 PKArrayContaining:objc_opt_class() forKey:@"locations"];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 count];
    if (v45 >= 0x3E8)
    {
      if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v165) = 1000;
        _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pass has more than %d locations. Capping.", buf, 8u);
      }

      v46 = PKLogFacilityTypeGetObject(6uLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v165) = 1000;
        _os_log_impl(&dword_1AD337000, v46, OS_LOG_TYPE_DEFAULT, "Pass has more than %d locations. Capping.", buf, 8u);
      }
    }

    v153 = v42;
    v155 = v41;
    if (v45 >= 0x3E8)
    {
      v47 = 1000;
    }

    else
    {
      v47 = v45;
    }

    v48 = [objc_alloc(*(v19 + 3952)) initWithCapacity:v47];
    v49 = 0;
    if (v45)
    {
      v50 = 0;
      do
      {
        v51 = [v44 objectAtIndexedSubscript:v50];
        v52 = PKValidateLocationDictionary(v51);

        if (v52)
        {
          if (!v49)
          {
            v49 = objc_alloc_init(MEMORY[0x1E696AD50]);
          }

          [v49 addIndex:v50];
        }

        else
        {
          v53 = [[PKLocation alloc] initWithDictionary:v51];
          if (v53)
          {
            v54 = v53;
            [v48 addObject:v53];
          }
        }

        ++v50;
      }

      while (v47 != v50);
    }

    v42 = v153;
    v41 = v155;
    if ([v49 count])
    {
      if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v165 = v49;
        _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pass has invalid locations at indices %@. Ignoring.", buf, 0xCu);
      }

      v55 = PKLogFacilityTypeGetObject(6uLL);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v165 = v49;
        _os_log_impl(&dword_1AD337000, v55, OS_LOG_TYPE_DEFAULT, "Pass has invalid locations at indices %@. Ignoring.", buf, 0xCu);
      }
    }

    if ([v48 count])
    {
      v56 = [v48 copy];
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  [(PKPass *)v8 setEmbeddedLocationsArray:v56];
  objc_autoreleasePoolPop(v41);
  v57 = v42;
  v58 = [v57 PKArrayContaining:objc_opt_class() forKey:@"beacons"];
  v59 = v58;
  if (v58)
  {
    v148 = v57;
    v60 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v58, "count")}];
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v147 = v59;
    v61 = v59;
    v62 = [v61 countByEnumeratingWithState:&v158 objects:buf count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v159;
      while (2)
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v159 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v158 + 1) + 8 * j);
          if ([v60 count] >= 0xA)
          {
            v74 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *v162 = 67109120;
              v163 = 10;
              _os_log_error_impl(&dword_1AD337000, v74, OS_LOG_TYPE_ERROR, "Pass has more than %d beacons. Capping.", v162, 8u);
            }

            goto LABEL_77;
          }

          v67 = PKValidateBeaconDictionary(v66);

          if (!v67)
          {
            v68 = objc_alloc_init(PKBeacon);
            v69 = [v66 PKUUIDForKey:@"proximityUUID"];
            [(PKBeacon *)v68 setProximityUUID:v69];

            v70 = [v66 PKNumberForKey:@"major"];
            [(PKBeacon *)v68 setMajor:v70];

            v71 = [v66 PKNumberForKey:@"minor"];
            [(PKBeacon *)v68 setMinor:v71];

            v72 = [v66 PKStringForKey:@"name"];
            [(PKBeacon *)v68 setName:v72];

            v73 = [v66 PKStringForKey:@"relevantText"];
            [(PKBeacon *)v68 setRelevantText:v73];

            [v60 addObject:v68];
          }
        }

        v63 = [v61 countByEnumeratingWithState:&v158 objects:buf count:16];
        if (v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_77:

    v59 = v147;
    v57 = v148;
  }

  else
  {
    v60 = 0;
  }

  if ([v60 count])
  {
    v75 = v60;
  }

  else
  {
    v75 = 0;
  }

  v76 = v75;

  [(PKPass *)v8 setEmbeddedBeacons:v76];
  v77 = [v57 objectForKey:@"nfc"];
  if (v77)
  {
    v78 = [[PKNFCPayload alloc] initWithNFCDictionary:v77];
  }

  else
  {
    v78 = 0;
  }

  [(PKPass *)v8 setNFCPayload:v78];
  passTypeIdentifier2 = [(PKPass *)v8 passTypeIdentifier];
  v80 = PKPassTypeForPassTypeIdentifier(passTypeIdentifier2);

  [(PKPass *)v8 setPassType:v80];
  passStyle = [v152 passStyle];
  v82 = v57;
  v83 = v82;
  if (v80 == 1)
  {
LABEL_95:
    passTypeIdentifier2 = [v82 PKStringForKey:@"groupingIdentifier"];
    goto LABEL_96;
  }

  if (passStyle > 0xD)
  {
    goto LABEL_96;
  }

  if (((1 << passStyle) & 0x20EB) == 0)
  {
    if (((1 << passStyle) & 0x714) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "groupingIdentifier is only supported for boardingPass, eventTicket, and healthPass styles as well as PKPassTypeSecureElement pass type. Ignoring.", buf, 2u);
  }

  v84 = PKLogFacilityTypeGetObject(6uLL);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v84, OS_LOG_TYPE_DEFAULT, "groupingIdentifier is only supported for boardingPass, eventTicket, and healthPass styles as well as PKPassTypeSecureElement pass type. Ignoring.", buf, 2u);
  }

  passTypeIdentifier2 = 0;
LABEL_96:

  [(PKPass *)v8 setGroupingID:passTypeIdentifier2];
  v85 = [v83 PKStringForKey:@"provisioningCredentialHash"];
  [(PKPass *)v8 setProvisioningCredentialHash:v85];
  v86 = [v83 objectForKey:@"sharingProhibited"];

  if (v86)
  {
    v87 = [v83 PKBoolForKey:@"sharingProhibited"];
  }

  else
  {
    v87 = 0;
  }

  v88 = [v83 PKDictionaryForKey:@"sharing"];
  v89 = v88;
  v156 = v85;
  if (v87)
  {
    v90 = v8;
    v91 = -1;
  }

  else
  {
    if (v88)
    {
      v92 = [v88 PKStringForKey:@"method"];
      v93 = [MEMORY[0x1E696AD98] numberWithInt:0];
      v98 = _PKEnumValueFromString(v92, v93, @"PKPassSharingMethod", @"PKPassSharingMethodDisabled, PKPassSharingMethodPass, PKPassSharingMethodURL", v94, v95, v96, v97, 0xFFFFFFFF);

      [(PKPass *)v8 setSharingMethod:v98];
      if ([(PKPass *)v8 sharingMethod]== 1)
      {
        v99 = [v89 PKURLForKey:@"url"];
        [(PKPass *)v8 setSharingURL:v99];
      }

      v100 = [v89 PKStringForKey:@"text"];
      [(PKPass *)v8 setSharingText:v100];

      goto LABEL_107;
    }

    v90 = v8;
    v91 = 0;
  }

  [(PKPass *)v90 setSharingMethod:v91];
LABEL_107:
  v101 = [v83 PKURLForKey:@"transferURL"];
  [(PKPass *)v8 setTransferURL:v101];

  v102 = [v83 PKURLForKey:@"sellURL"];
  [(PKPass *)v8 setSellURL:v102];

  v103 = [v83 PKURLForKey:@"upgradeURL"];
  [(PKPass *)v8 setUpgradeURL:v103];

  v104 = [v83 PKURLForKey:@"managementURL"];
  [(PKPass *)v8 setManagementURL:v104];

  v105 = [v83 PKURLForKey:@"bagPolicyURL"];
  [(PKPass *)v8 setBagPolicyURL:v105];

  v106 = [v83 PKURLForKey:@"orderFoodURL"];
  [(PKPass *)v8 setOrderFoodURL:v106];

  v107 = [v83 PKURLForKey:@"transitInformationURL"];
  [(PKPass *)v8 setTransitInformationURL:v107];

  v108 = [v83 PKURLForKey:@"parkingInformationURL"];
  [(PKPass *)v8 setParkingInformationURL:v108];

  v109 = [v83 PKURLForKey:@"directionsInformationURL"];
  [(PKPass *)v8 setDirectionsInformationURL:v109];

  v110 = [v83 PKURLForKey:@"merchandiseURL"];
  [(PKPass *)v8 setMerchandiseURL:v110];

  v111 = [v83 PKURLForKey:@"accessibilityURL"];
  [(PKPass *)v8 setAccessibilityURL:v111];

  v112 = [v83 PKURLForKey:@"purchaseParkingURL"];
  [(PKPass *)v8 setPurchaseParkingURL:v112];

  v113 = [v83 PKURLForKey:@"addOnURL"];
  [(PKPass *)v8 setPartnerAddOnURL:v113];

  v114 = [v83 PKURLForKey:@"purchaseWifiURL"];
  [(PKPass *)v8 setPurchaseWifiURL:v114];

  v115 = [v83 PKURLForKey:@"changeSeatURL"];
  [(PKPass *)v8 setChangeSeatURL:v115];

  v116 = [v83 PKURLForKey:@"entertainmentURL"];
  [(PKPass *)v8 setEntertainmentURL:v116];

  v117 = [v83 PKURLForKey:@"purchaseAdditionalBaggageURL"];
  [(PKPass *)v8 setPurchaseAdditionalBaggageURL:v117];

  v118 = [v83 PKURLForKey:@"purchaseLoungeAccessURL"];
  [(PKPass *)v8 setPurchaseLoungeAccessURL:v118];

  v119 = [v83 PKURLForKey:@"reportLostBagURL"];
  [(PKPass *)v8 setReportLostBagURL:v119];

  v120 = [v83 PKURLForKey:@"trackBagsURL"];
  [(PKPass *)v8 setTrackBagsURL:v120];

  v121 = [v83 PKURLForKey:@"requestWheelchairURL"];
  [(PKPass *)v8 setRequestWheelchairURL:v121];

  v122 = [v83 PKURLForKey:@"registerServiceAnimalURL"];
  [(PKPass *)v8 setRegisterServiceAnimalURL:v122];

  v123 = [v83 PKStringForKey:@"contactVenueEmail"];
  v124 = v123;
  if (v123)
  {
    v125 = [v123 length];

    if (v125)
    {
      if (([v124 hasPrefix:@"mailto:"] & 1) == 0)
      {
        v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v124];

        v124 = v124;
      }
    }
  }

  v127 = [MEMORY[0x1E695DFF8] URLWithString:v124];
  [(PKPass *)v8 setContactVenueEmail:v127];

  v128 = [v83 PKStringForKey:@"contactVenuePhoneNumber"];
  v129 = v128;
  if (v128 && (v130 = [v128 length], v129, v130) && (objc_msgSend(v129, "hasPrefix:", @"tel:") & 1) == 0)
  {
    v131 = PKTelephoneURLFromPhoneNumber(v129);
  }

  else
  {
    v131 = [MEMORY[0x1E695DFF8] URLWithString:v129];
  }

  v132 = v131;
  [(PKPass *)v8 setContactVenuePhoneNumber:v131];
  v133 = [v83 PKURLForKey:@"contactVenueWebsite"];
  [(PKPass *)v8 setContactVenueWebsite:v133];

  v134 = [v83 PKStringForKey:@"transitProviderEmail"];
  v135 = v134;
  if (v134)
  {
    v136 = [v134 length];

    if (v136)
    {
      if (([v135 hasPrefix:@"mailto:"] & 1) == 0)
      {
        v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v135];

        v135 = v135;
      }
    }
  }

  v138 = [MEMORY[0x1E695DFF8] URLWithString:v135];
  [(PKPass *)v8 setTransitProviderEmailURL:v138];

  v139 = [v83 PKStringForKey:@"transitProviderPhoneNumber"];
  v140 = v139;
  if (v139 && (v141 = [v139 length], v140, v141) && (objc_msgSend(v140, "hasPrefix:", @"tel:") & 1) == 0)
  {
    v142 = PKTelephoneURLFromPhoneNumber(v140);
  }

  else
  {
    v142 = [MEMORY[0x1E695DFF8] URLWithString:v140];
  }

  v143 = v142;
  [(PKPass *)v8 setTransitProviderPhoneNumberURL:v142];
  v144 = [v83 PKURLForKey:@"transitProviderWebsiteURL"];
  [(PKPass *)v8 setTransitProviderWebsiteURL:v144];

  bundleCopy = v150;
  dictionaryCopy = v151;
LABEL_124:
  v145 = v8;

  return v145;
}

+ (Class)classForDictionary:(id)dictionary bundle:(id)bundle
{
  v4 = [dictionary PKStringForKey:{@"passTypeIdentifier", bundle}];
  v5 = [PKPass classForPassType:PKPassTypeForPassTypeIdentifier(v4)];

  return v5;
}

+ (BOOL)isValidObjectWithFileDataAccessor:(id)accessor validationOptions:(unint64_t)options warnings:(id *)warnings error:(id *)error signingDate:(id *)date passDictionary:(id)dictionary
{
  optionsCopy = options;
  dictionaryCopy = dictionary;
  fileURL = [accessor fileURL];
  LOBYTE(date) = PKValidatePassWithOptions(fileURL, optionsCopy, error, warnings, date, dictionaryCopy);

  return date;
}

+ (id)fetchSigningDateForObjectWithFileDataAccessor:(id)accessor passDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  fileURL = [accessor fileURL];
  v7 = PKFetchSigningDate(fileURL, dictionaryCopy);

  return v7;
}

- (void)downloadRemoteAssetsWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPass_downloadRemoteAssetsWithConfiguration_completion___block_invoke;
  v9[3] = &unk_1E79DAD50;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = PKPass;
  v7 = completionCopy;
  [(PKObject *)&v8 downloadRemoteAssetsWithConfiguration:configuration completion:v9];
}

void __59__PKPass_downloadRemoteAssetsWithConfiguration_completion___block_invoke(uint64_t a1, int a2, void *a3, float a4)
{
  v7 = a3;
  if (a2)
  {
    [*(a1 + 32) reloadDisplayProfileOfType:0];
    [*(a1 + 32) flushLoadedImageSets];
  }

  (*(*(a1 + 40) + 16))(a4);
}

- (void)setRelevantDate:(id)date
{
  v7[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (dateCopy)
  {
    v5 = [[PKPassRelevantDate alloc] initWithRelevantDate:dateCopy];
    v7[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(PKPass *)self setRelevantDates:v6];
  }

  else
  {
    [(PKPass *)self setRelevantDates:MEMORY[0x1E695E0F0]];
  }
}

- (NSDate)relevantDate
{
  firstObject = [(NSArray *)self->_relevantDates firstObject];
  date = [firstObject date];

  return date;
}

- (NSArray)relevantDates
{
  if (self->_relevantDates)
  {
    return self->_relevantDates;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (PKPass)initWithCloudStoreCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [coder recordsWithRecordType:@"Pass"];
  firstObject = [v4 firstObject];

  v6 = [firstObject objectForKey:@"pkpass"];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    fileURL = [v6 fileURL];
    v9 = [v7 initWithContentsOfURL:fileURL];

    if (v9)
    {
      v20 = 0;
      v10 = [(PKPass *)self initWithData:v9 error:&v20];
      v11 = v20;
      self = v10;
      if (v11)
      {
        v12 = PKLogFacilityTypeGetObject(0xAuLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot create a PKPass from data: %{public}@", buf, 0xCu);
        }
      }

      creationDate = [firstObject creationDate];
      [(PKPass *)self setIngestedDate:creationDate];

      modificationDate = [firstObject modificationDate];
      [(PKPass *)self setModifiedDate:modificationDate];

      recordID = [firstObject recordID];
      recordName = [recordID recordName];
      v17 = [PKPass uniqueIDFromRecordName:recordName];
      [(PKObject *)self setUniqueID:v17];

      selfCopy = self;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Cannot create a PKPass with nil data", buf, 2u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Cannot create a PKPass with no asset data from CloudKit.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [coderCopy recordsWithRecordType:@"Pass"];
  firstObject = [v7 firstObject];

  archiveData = [(PKObject *)self archiveData];
  if (archiveData)
  {
    v10 = NSTemporaryDirectory();
    uniqueID = [(PKObject *)self uniqueID];
    v12 = [v10 stringByAppendingPathComponent:uniqueID];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtPath:v12 error:0];

    [archiveData writeToFile:v12 atomically:1];
    v14 = objc_alloc(MEMORY[0x1E695B878]);
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    v16 = [v14 initWithFileURL:v15];

    if (v16)
    {
      [firstObject setObject:v16 forKey:@"pkpass"];
    }

    else
    {
      v17 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Could not set CKAsset for the CKRecord because it is nil.", buf, 2u);
      }
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Could not set archiveData for PKPass on CKRecord because it is nil.", v18, 2u);
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  uniqueID = [(PKObject *)self uniqueID];
  v5 = [uniqueID length];

  if (v5)
  {
    v6 = objc_opt_class();
    uniqueID2 = [(PKObject *)self uniqueID];
    v8 = [v6 recordNameForUniqueID:uniqueID2];
    v13 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)systemFieldsDataForCloudStoreWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = @"com.apple.passes.sync";
  v6 = v5;
  if (v5 == identifierCopy)
  {

    goto LABEL_7;
  }

  if (!identifierCopy || !v5)
  {

    goto LABEL_9;
  }

  v7 = [(__CFString *)identifierCopy isEqualToString:v5];

  if (v7)
  {
LABEL_7:
    cloudKitMetadata = [(PKPass *)self cloudKitMetadata];
LABEL_16:
    v13 = cloudKitMetadata;
    goto LABEL_21;
  }

LABEL_9:
  v9 = identifierCopy;
  v10 = @"com.apple.passes.sync.secure";
  v11 = v10;
  if (v10 == v9)
  {

LABEL_15:
    cloudKitMetadata = [(PKPass *)self cloudKitSecureMetadata];
    goto LABEL_16;
  }

  if (identifierCopy && v10)
  {
    v12 = [(__CFString *)v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_18:
  v14 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "unknown cloud store identifier: %{public}@", &v16, 0xCu);
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (BOOL)wasAchivedInCloudStoreWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = @"com.apple.passes.sync";
  v6 = v5;
  if (v5 == identifierCopy)
  {

    goto LABEL_7;
  }

  if (!identifierCopy || !v5)
  {

    goto LABEL_9;
  }

  v7 = [(__CFString *)identifierCopy isEqualToString:v5];

  if (v7)
  {
LABEL_7:
    isCloudKitArchived = [(PKPass *)self isCloudKitArchived];
LABEL_16:
    v13 = isCloudKitArchived;
    goto LABEL_21;
  }

LABEL_9:
  v9 = identifierCopy;
  v10 = @"com.apple.passes.sync.secure";
  v11 = v10;
  if (v10 == v9)
  {

LABEL_15:
    isCloudKitArchived = [(PKPass *)self isCloudKitSecurelyArchived];
    goto LABEL_16;
  }

  if (identifierCopy && v10)
  {
    v12 = [(__CFString *)v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_18:
  v14 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "unknown cloud store identifier: %{public}@", &v16, 0xCu);
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (void)setSystemFieldsMetata:(id)metata forCloudStoreWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  metataCopy = metata;
  identifierCopy = identifier;
  v8 = @"com.apple.passes.sync";
  v9 = v8;
  if (v8 == identifierCopy)
  {

    goto LABEL_7;
  }

  if (!identifierCopy || !v8)
  {

    goto LABEL_9;
  }

  v10 = [(__CFString *)identifierCopy isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    [(PKPass *)self setIsCloudKitArchived:1];
    [(PKPass *)self setCloudKitMetadata:metataCopy];
    goto LABEL_20;
  }

LABEL_9:
  v11 = identifierCopy;
  v12 = @"com.apple.passes.sync.secure";
  v13 = v12;
  if (v12 == v11)
  {

    goto LABEL_15;
  }

  if (identifierCopy && v12)
  {
    v14 = [(__CFString *)v11 isEqualToString:v12];

    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    [(PKPass *)self setIsCloudKitSecurelyArchived:1];
    [(PKPass *)self setCloudKitSecureMetadata:metataCopy];
    goto LABEL_20;
  }

LABEL_17:
  v15 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "unknown cloud store identifier: %{public}@", &v16, 0xCu);
  }

LABEL_20:
}

+ (id)recordNameForUniqueID:(id)d
{
  v4 = MEMORY[0x1E696AEC0];
  dCopy = d;
  recordNamePrefix = [self recordNamePrefix];
  dCopy = [v4 stringWithFormat:@"%@%@", recordNamePrefix, dCopy];

  return dCopy;
}

+ (id)uniqueIDFromRecordName:(id)name
{
  nameCopy = name;
  recordNamePrefix = [self recordNamePrefix];
  v6 = [nameCopy hasPrefix:recordNamePrefix];

  if (v6)
  {
    recordNamePrefix2 = [self recordNamePrefix];
    v8 = [nameCopy stringByReplacingOccurrencesOfString:recordNamePrefix2 withString:&stru_1F227FD28];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSSet)embeddedLocations
{
  if (self->_embeddedLocations)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_embeddedLocations];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setEmbeddedLocations:(id)locations
{
  pk_arrayCopy = [locations pk_arrayCopy];
  embeddedLocations = self->_embeddedLocations;
  self->_embeddedLocations = pk_arrayCopy;
}

- (NSString)localizedName
{
  style = [(PKPass *)self style];
  if (style > 0xA)
  {
    v3 = @"TEMPLATE_NAME_PASS";
  }

  else
  {
    v3 = off_1E79DAD88[style];
  }

  v4 = PKCoreLocalizedString(&v3->isa, 0);

  return v4;
}

- (NSString)lowercaseLocalizedName
{
  style = [(PKPass *)self style];
  if (style > 0xA)
  {
    v3 = @"TEMPLATE_NAME_LOWERCASE_PASS";
  }

  else
  {
    v3 = off_1E79DADE0[style];
  }

  v4 = PKCoreLocalizedString(&v3->isa, 0);

  return v4;
}

- (NSString)pluralLocalizedName
{
  style = [(PKPass *)self style];
  if (style > 0xA)
  {
    v3 = @"TEMPLATE_NAME_PASSES";
  }

  else
  {
    v3 = off_1E79DAE38[style];
  }

  v4 = PKCoreLocalizedString(&v3->isa, 0);

  return v4;
}

- (NSURL)passURL
{
  uniqueID = [(PKObject *)self uniqueID];
  if (uniqueID && !self->_remotePass)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v5 setScheme:@"shoebox"];
    [v5 setHost:@"card"];
    uniqueID2 = [(PKObject *)self uniqueID];
    v7 = [@"/" stringByAppendingString:uniqueID2];
    [v5 setPath:v7];

    v8 = [v5 URL];
    v4 = [v8 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasTimeOrLocationRelevancyInfo
{
  if ([(NSArray *)self->_relevantDates count])
  {
    return 1;
  }

  return [(PKPass *)self hasLocationRelevancyInfo];
}

- (BOOL)isPastRelevancy
{
  relevantDates = [(PKPass *)self relevantDates];
  v3 = [PKPassRelevantDate findDateFromDates:relevantDates option:3];

  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5 > 86400.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isUpdatable
{
  webServiceURL = [(PKObject *)self webServiceURL];
  v3 = webServiceURL != 0;

  return v3;
}

- (BOOL)isPassStyleExpiresOnSigningDate
{
  style = [(PKPass *)self style];
  result = 0;
  if (style <= 0xD)
  {
    if (((1 << style) & 0x614) != 0)
    {
      return 1;
    }

    else if (style == 13)
    {
      __break(1u);
    }
  }

  return result;
}

- (BOOL)isExpiredBasedOnSigningDate
{
  signingDate = [(PKObject *)self signingDate];
  if (signingDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:signingDate];
    v6 = v5 > 31536000.0 && [(PKPass *)self isPassStyleExpiresOnSigningDate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDate)effectiveExpirationDate
{
  expirationDate = [(PKPass *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(PKPass *)self expirationDate];
  }

  else
  {
    relevantDates = [(PKPass *)self relevantDates];
    v6 = [PKPassRelevantDate findDateFromDates:relevantDates option:3];

    if (v6)
    {
      expirationDate2 = [v6 dateByAddingTimeInterval:86400.0];
    }

    else if ([(PKPass *)self isPassStyleExpiresOnSigningDate]&& ([(PKObject *)self signingDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      signingDate = [(PKObject *)self signingDate];
      expirationDate2 = [signingDate dateByAddingTimeInterval:31536000.0];
    }

    else
    {
      expirationDate2 = 0;
    }
  }

  return expirationDate2;
}

- (BOOL)linksToApp
{
  storeIdentifiers = [(PKPass *)self storeIdentifiers];
  if ([storeIdentifiers count])
  {
    v4 = 1;
  }

  else
  {
    systemAppBundleIdentifiers = [(PKPass *)self systemAppBundleIdentifiers];
    v4 = [systemAppBundleIdentifiers count] != 0;
  }

  return v4;
}

- (id)localizedValueForFieldKey:(NSString *)key
{
  v3 = [(PKPass *)self fieldForKey:key];
  v4 = v3;
  if (v3)
  {
    unformattedValue = [v3 unformattedValue];
  }

  else
  {
    unformattedValue = 0;
  }

  return unformattedValue;
}

- (id)fieldForKey:(id)key
{
  v58 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  frontFieldBuckets = [(PKPass *)self frontFieldBuckets];
  v36 = [frontFieldBuckets countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (!v36)
  {

LABEL_21:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obja = [(PKPass *)self backFieldBuckets];
    v37 = [obja countByEnumeratingWithState:&v42 objects:v55 count:16];
    v18 = 0;
    if (v37)
    {
      v35 = *v43;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v38 objects:v54 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v39;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v38 + 1) + 8 * j);
                v27 = [v26 key];
                v28 = [v27 isEqual:keyCopy];

                if (v28)
                {
                  v29 = v26;

                  v18 = v29;
                  goto LABEL_36;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v38 objects:v54 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_36:
        }

        v37 = [obja countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v37);
    }

    v6 = v18;
    goto LABEL_39;
  }

  selfCopy = self;
  obj = frontFieldBuckets;
  v6 = 0;
  v34 = *v51;
  do
  {
    for (k = 0; k != v36; ++k)
    {
      if (*v51 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v50 + 1) + 8 * k);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v47;
        while (2)
        {
          for (m = 0; m != v11; ++m)
          {
            if (*v47 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v46 + 1) + 8 * m);
            v15 = [v14 key];
            v16 = [v15 isEqual:keyCopy];

            if (v16)
            {
              v17 = v14;

              v6 = v17;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v36 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  }

  while (v36);

  self = selfCopy;
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_39:

  return v6;
}

- (id)localizedDescriptionForDiff:(id)diff
{
  v38 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if ([diffCopy hunkCount] == 1)
  {
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    [diffCopy key:&v31 oldValue:&v30 newValue:&v29 message:&v28 forHunkAtIndex:0];
    v5 = v31;
    v6 = v30;
    v7 = v29;
    v8 = v28;
    if (!v7)
    {
      goto LABEL_13;
    }

    if ([(PKPass *)self style]== 9 || [(PKPass *)self style]== 10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allSemantics = [(PKPass *)self allSemantics];
        v10 = [allSemantics objectForKey:v5];

        if (v10)
        {
          v10 = v8;
        }

LABEL_14:

        if (v10)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 length])
    {
LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v11 = [(PKPass *)self _changeMessageForFieldKey:v5];
    v12 = v11;
    if (v11)
    {
      v19 = PKValidateChangeMessage(v11);
      if (!v19)
      {
        v10 = PKStringWithValidatedFormat(v12, @"%@", v13, v14, v15, v16, v17, v18, v7);
LABEL_23:

        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      passTypeIdentifier = [(PKPass *)self passTypeIdentifier];
      serialNumber = [(PKPass *)self serialNumber];
      userInfo = [v19 userInfo];
      v25 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];
      localizedDescription = [v25 localizedDescription];
      *buf = 138543874;
      v33 = passTypeIdentifier;
      v34 = 2114;
      v35 = serialNumber;
      v36 = 2114;
      v37 = localizedDescription;
      _os_log_error_impl(&dword_1AD337000, v22, OS_LOG_TYPE_ERROR, "Change message didn't validate in pass %{public}@/%{public}@: %{public}@", buf, 0x20u);
    }

    v10 = 0;
    goto LABEL_23;
  }

LABEL_15:
  _localizationKeyForMultipleDiff = [(PKPass *)self _localizationKeyForMultipleDiff];
  v10 = PKCoreLocalizedString(_localizationKeyForMultipleDiff, 0);

LABEL_16:

  return v10;
}

- (NSURL)localLocationsURL
{
  dataAccessor = [(PKObject *)self dataAccessor];
  bundle = [dataAccessor bundle];
  bundleURL = [bundle bundleURL];

  return bundleURL;
}

- (id)diff:(id)diff
{
  v107 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  v5 = objc_alloc_init(PKDiff);
  uniqueID = [(PKObject *)self uniqueID];
  [(PKDiff *)v5 setPassUniqueID:uniqueID];

  manifestHash = [(PKObject *)self manifestHash];
  v87 = v5;
  [(PKDiff *)v5 setPassManifestHash:manifestHash];

  v8 = 0x1E695D000uLL;
  v85 = diffCopy;
  if ([(PKPass *)self style]== 9 || [(PKPass *)self style]== 10)
  {
    allSemantics = [(PKPass *)self allSemantics];
    allSemantics2 = [diffCopy allSemantics];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v88 = allSemantics;
    allKeys = [allSemantics allKeys];
    [v11 addObjectsFromArray:allKeys];

    allKeys2 = [allSemantics2 allKeys];
    [v11 addObjectsFromArray:allKeys2];

    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    obj = v11;
    v14 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
    if (!v14)
    {
      goto LABEL_151;
    }

    v15 = v14;
    selfCopy = self;
    v17 = *v99;
    v84 = @"airPlay";
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v99 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v98 + 1) + 8 * v18);
        if (([v19 isEqualToString:@"departureLocationDescription"] & 1) != 0
          || ([v19 isEqualToString:@"destinationLocationDescription"] & 1) != 0
          || ([v19 isEqualToString:@"transitProvider"] & 1) != 0
          || ([v19 isEqualToString:@"vehicleName"] & 1) != 0
          || ([v19 isEqualToString:@"vehicleNumber"] & 1) != 0
          || ([v19 isEqualToString:@"vehicleType"] & 1) != 0
          || ([v19 isEqualToString:@"boardingGroup"] & 1) != 0
          || ([v19 isEqualToString:@"boardingZone"] & 1) != 0
          || ([v19 isEqualToString:@"boardingSequenceNumber"] & 1) != 0
          || ([v19 isEqualToString:@"confirmationNumber"] & 1) != 0
          || ([v19 isEqualToString:@"transitStatus"] & 1) != 0
          || ([v19 isEqualToString:@"transitStatusReason"] & 1) != 0
          || ([v19 isEqualToString:@"membershipProgramName"] & 1) != 0
          || ([v19 isEqualToString:@"membershipProgramNumber"] & 1) != 0
          || ([v19 isEqualToString:@"membershipProgramStatus"] & 1) != 0
          || ([v19 isEqualToString:@"priorityStatus"] & 1) != 0
          || ([v19 isEqualToString:@"securityScreening"] & 1) != 0
          || ([v19 isEqualToString:@"flightCode"] & 1) != 0
          || ([v19 isEqualToString:@"airlineCode"] & 1) != 0
          || ([v19 isEqualToString:@"departureAirportCode"] & 1) != 0
          || ([v19 isEqualToString:@"departureAirportName"] & 1) != 0
          || ([v19 isEqualToString:@"departureCityName"] & 1) != 0
          || ([v19 isEqualToString:@"departureTerminal"] & 1) != 0
          || ([v19 isEqualToString:@"departureGate"] & 1) != 0
          || ([v19 isEqualToString:@"destinationAirportCode"] & 1) != 0
          || ([v19 isEqualToString:@"destinationAirportName"] & 1) != 0
          || ([v19 isEqualToString:@"destinationCityName"] & 1) != 0
          || ([v19 isEqualToString:@"destinationTerminal"] & 1) != 0
          || ([v19 isEqualToString:@"destinationGate"] & 1) != 0
          || ([v19 isEqualToString:@"departurePlatform"] & 1) != 0
          || ([v19 isEqualToString:@"departureStationName"] & 1) != 0
          || ([v19 isEqualToString:@"destinationPlatform"] & 1) != 0
          || ([v19 isEqualToString:@"destinationStationName"] & 1) != 0
          || ([v19 isEqualToString:@"carNumber"] & 1) != 0
          || ([v19 isEqualToString:@"eventName"] & 1) != 0
          || ([v19 isEqualToString:@"venueName"] & 1) != 0
          || ([v19 isEqualToString:@"venueEntrance"] & 1) != 0
          || ([v19 isEqualToString:@"venueEntranceGate"] & 1) != 0
          || ([v19 isEqualToString:@"venueEntranceDoor"] & 1) != 0
          || ([v19 isEqualToString:@"venueEntrancePortal"] & 1) != 0
          || ([v19 isEqualToString:@"venueRegionName"] & 1) != 0
          || ([v19 isEqualToString:@"venueRoom"] & 1) != 0
          || ([v19 isEqualToString:@"venuePhoneNumber"] & 1) != 0
          || ([v19 isEqualToString:@"venuePlaceID"] & 1) != 0
          || ([v19 isEqualToString:@"leagueName"] & 1) != 0
          || ([v19 isEqualToString:@"leagueAbbreviation"] & 1) != 0
          || ([v19 isEqualToString:@"homeTeamLocation"] & 1) != 0
          || ([v19 isEqualToString:@"homeTeamName"] & 1) != 0
          || ([v19 isEqualToString:@"homeTeamAbbreviation"] & 1) != 0
          || ([v19 isEqualToString:@"awayTeamLocation"] & 1) != 0
          || ([v19 isEqualToString:@"awayTeamName"] & 1) != 0
          || ([v19 isEqualToString:@"awayTeamAbbreviation"] & 1) != 0
          || ([v19 isEqualToString:@"sportName"] & 1) != 0
          || ([v19 isEqualToString:@"genre"] & 1) != 0
          || ([v19 isEqualToString:@"eventType"] & 1) != 0
          || ([v19 isEqualToString:@"eventLiveMessage"] & 1) != 0
          || ([v19 isEqualToString:@"admissionLevel"] & 1) != 0
          || ([v19 isEqualToString:@"admissionLevelAbbreviation"] & 1) != 0
          || ([v19 isEqualToString:@"attendeeName"] & 1) != 0
          || ([v19 isEqualToString:@"entranceDescription"] & 1) != 0
          || ([v19 isEqualToString:@"additionalTicketAttributes"] & 1) != 0
          || ([v19 isEqualToString:@"internationalDocumentsVerifiedDeclarationName"] & 1) != 0)
        {
          goto LABEL_117;
        }

        v20 = [v19 isEqualToString:@"ticketFareClass"];

        if (v20)
        {
          goto LABEL_118;
        }

        v21 = v19;
        if ([v21 isEqualToString:@"originalDepartureDate"] & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"currentDepartureDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"originalArrivalDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"currentArrivalDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"originalBoardingDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"currentBoardingDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"eventStartDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueDoorsOpenDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueGatesOpenDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueParkingLotsOpenDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueBoxOfficeOpenDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueFanZoneOpenDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueOpenDate") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"venueCloseDate"))
        {
          goto LABEL_117;
        }

        v22 = [v21 isEqualToString:@"eventEndDate"];

        if (v22)
        {
          goto LABEL_118;
        }

        v23 = v21;
        if ([v23 isEqualToString:@"eventTimeZone"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"departureAirportTimeZone") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"destinationAirportTimeZone") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"departureLocationTimeZone"))
        {
          goto LABEL_117;
        }

        v24 = [v23 isEqualToString:@"destinationLocationTimeZone"];

        if (v24 & 1) != 0 || ([v23 isEqualToString:@"eventStartDateInfo"])
        {
          goto LABEL_118;
        }

        v25 = v23;
        if ([v25 isEqualToString:@"flightNumber"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"duration") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"tailgatingAllowed") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"silenceRequested"))
        {
          goto LABEL_117;
        }

        v26 = [v25 isEqualToString:@"internationalDocumentsAreVerified"];

        if (v26)
        {
          goto LABEL_118;
        }

        v27 = v25;
        if ([v27 isEqualToString:@"departureLocation"] & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", @"destinationLocation"))
        {
          goto LABEL_117;
        }

        v28 = [v27 isEqualToString:@"venueLocation"];

        if (v28)
        {
          goto LABEL_118;
        }

        v29 = v27;
        if ([v29 isEqualToString:@"balance"])
        {
          goto LABEL_117;
        }

        v30 = [v29 isEqualToString:@"balance"];

        if (v30 & 1) != 0 || ([v29 isEqualToString:@"passengerName"])
        {
          goto LABEL_118;
        }

        v31 = v29;
        if ([v31 isEqualToString:@"artistIDs"] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"performerNames") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"albumIDs") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"playlistIDs") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"departureLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"destinationLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"passengerEligibleSecurityPrograms") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"passengerCapabilities") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"passengerServiceSSRs") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"passengerInformationSSRs") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"passengerAirlineSSRs"))
        {
          goto LABEL_117;
        }

        v32 = [v31 isEqualToString:@"loungePlaceIDs"];

        if (v32)
        {
          goto LABEL_118;
        }

        v33 = v31;
        if ([v33 isEqualToString:@"seats"])
        {
          _os_feature_enabled_impl();
LABEL_117:

LABEL_118:
LABEL_119:
          v34 = [v88 objectForKeyedSubscript:{v19, v84}];
          v35 = [allSemantics2 objectForKeyedSubscript:v19];
          v36 = v35;
          if (v35 && ([v35 isEqual:v34] & 1) == 0)
          {
            v37 = [(PKPass *)selfCopy _changeMessageForSemantic:v34 newSemantic:v36 passStyle:[(PKPass *)selfCopy style]];
            if (v37)
            {
              [(PKDiff *)v87 addHunkWithKey:v19 oldValue:v34 newValue:v36 message:v37];
            }
          }

          goto LABEL_125;
        }

        v38 = [v33 isEqualToString:@"wifiAccess"];
        v39 = _os_feature_enabled_impl();
        if (!v39 || (v38 & 1) != 0)
        {
          v40 = v39 | v38;
        }

        else
        {
          v40 = [v33 isEqualToString:v84];
        }

        if (v40)
        {
          goto LABEL_119;
        }

        v34 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v105 = v33;
          _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring semantic value in diff for unknown key %@", buf, 0xCu);
        }

LABEL_125:

        ++v18;
      }

      while (v15 != v18);
      v41 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
      v15 = v41;
      if (!v41)
      {
        self = selfCopy;
        v8 = 0x1E695D000;
        diffCopy = v85;
        goto LABEL_151;
      }
    }
  }

  frontFieldBuckets = [(PKPass *)self frontFieldBuckets];
  v43 = _FieldsByKey(frontFieldBuckets);

  frontFieldBuckets2 = [diffCopy frontFieldBuckets];
  allSemantics2 = _FieldsByKey(frontFieldBuckets2);

  v45 = [MEMORY[0x1E695DFA8] set];
  v88 = v43;
  allKeys3 = [v43 allKeys];
  [v45 addObjectsFromArray:allKeys3];

  allKeys4 = [allSemantics2 allKeys];
  [v45 addObjectsFromArray:allKeys4];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v45;
  v48 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v95;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v95 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v94 + 1) + 8 * i);
        v53 = [v88 valueForKey:v52];
        value = [v53 value];
        v55 = value;
        if (value)
        {
          v56 = value;
        }

        else
        {
          v56 = &stru_1F227FD28;
        }

        v57 = v56;

        v58 = [allSemantics2 valueForKey:v52];
        value2 = [v58 value];

        v60 = [allSemantics2 valueForKey:v52];
        changeMessage = [v60 changeMessage];

        if (value2 && ([value2 isEqual:v57] & 1) == 0 && changeMessage)
        {
          [(PKDiff *)v87 addHunkWithKey:v52 oldValue:v57 newValue:value2 message:changeMessage];
        }
      }

      v49 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
    }

    while (v49);
    diffCopy = v85;
    v8 = 0x1E695D000uLL;
  }

LABEL_151:

  backFieldBuckets = [(PKPass *)self backFieldBuckets];
  v63 = _FieldsByKey(backFieldBuckets);

  backFieldBuckets2 = [diffCopy backFieldBuckets];
  v65 = _FieldsByKey(backFieldBuckets2);

  v66 = [*(v8 + 4008) set];
  allKeys5 = [v63 allKeys];
  [v66 addObjectsFromArray:allKeys5];

  allKeys6 = [v65 allKeys];
  [v66 addObjectsFromArray:allKeys6];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v89 = v66;
  v69 = [v89 countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v91;
    do
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v91 != v71)
        {
          objc_enumerationMutation(v89);
        }

        v73 = *(*(&v90 + 1) + 8 * j);
        v74 = [v63 valueForKey:{v73, v84}];
        value3 = [v74 value];
        v76 = value3;
        v77 = &stru_1F227FD28;
        if (value3)
        {
          v77 = value3;
        }

        v78 = v77;

        v79 = [v65 valueForKey:v73];
        value4 = [v79 value];

        v81 = [v65 valueForKey:v73];
        changeMessage2 = [v81 changeMessage];

        if (value4 && ([value4 isEqual:v78] & 1) == 0 && changeMessage2)
        {
          [(PKDiff *)v87 addHunkWithKey:v73 oldValue:v78 newValue:value4 message:changeMessage2];
        }
      }

      v70 = [v89 countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v70);
  }

  return v87;
}

- (BOOL)shouldRampBacklight
{
  barcode = [(PKPass *)self barcode];
  if (barcode && !PKValueAddedServicesEnabledForPass(self))
  {
    v4 = ![(PKPass *)self supportsIssuerBinding];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSArray)barcodes
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  barcodes = [contentLoadedIfNeeded barcodes];

  return barcodes;
}

- (int64_t)transitType
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  transitType = [contentLoadedIfNeeded transitType];

  return transitType;
}

- (NSArray)backFieldBuckets
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  backFieldBuckets = [contentLoadedIfNeeded backFieldBuckets];

  return backFieldBuckets;
}

- (NSArray)passDetailSections
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  passDetailSections = [contentLoadedIfNeeded passDetailSections];

  return passDetailSections;
}

- (NSArray)auxiliaryPassInformation
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  auxiliaryPassInformationSections = [contentLoadedIfNeeded auxiliaryPassInformationSections];

  return auxiliaryPassInformationSections;
}

- (PKPassUpcomingPassInformation)upcomingPassInformation
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  upcomingPassInformation = [contentLoadedIfNeeded upcomingPassInformation];

  return upcomingPassInformation;
}

- (id)primaryFields
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  primaryFields = [contentLoadedIfNeeded primaryFields];

  return primaryFields;
}

- (id)balanceFields
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  balanceFields = [contentLoadedIfNeeded balanceFields];

  return balanceFields;
}

- (id)autoTopUpFields
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  autoTopUpFields = [contentLoadedIfNeeded autoTopUpFields];

  return autoTopUpFields;
}

- (id)additionalInfoFields
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  additionalInfoFields = [contentLoadedIfNeeded additionalInfoFields];

  return additionalInfoFields;
}

- (id)balances
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  balances = [contentLoadedIfNeeded balances];

  return balances;
}

- (NSArray)storeIdentifiers
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  storeIdentifiers = [contentLoadedIfNeeded storeIdentifiers];

  return storeIdentifiers;
}

- (NSArray)auxiliaryStoreIdentifiers
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  auxiliaryStoreIdentifiers = [contentLoadedIfNeeded auxiliaryStoreIdentifiers];

  return auxiliaryStoreIdentifiers;
}

- (NSArray)systemAppBundleIdentifiers
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  systemAppBundleIdentifiers = [contentLoadedIfNeeded systemAppBundleIdentifiers];

  return systemAppBundleIdentifiers;
}

- (NSURL)appLaunchURL
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  appLaunchURL = [contentLoadedIfNeeded appLaunchURL];

  return appLaunchURL;
}

- (PKPassPersonalization)personalization
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  personalization = [contentLoadedIfNeeded personalization];

  return personalization;
}

- (BOOL)isPersonalizable
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  personalization = [contentLoadedIfNeeded personalization];
  v4 = personalization != 0;

  return v4;
}

- (id)semantics
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  semantics = [contentLoadedIfNeeded semantics];

  return semantics;
}

- (id)allSemantics
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  allSemantics = [contentLoadedIfNeeded allSemantics];

  return allSemantics;
}

- (id)liveDataConfiguration
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  liveDataConfiguration = [contentLoadedIfNeeded liveDataConfiguration];

  return liveDataConfiguration;
}

- (PKImage)rawIcon
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:1];
  rawIcon = [v2 rawIcon];

  return rawIcon;
}

- (PKImage)notificationIconImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:1];
  notificationIconImage = [v2 notificationIconImage];

  return notificationIconImage;
}

- (CGRect)thumbnailRect
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:0];
  [v2 thumbnailRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)stripRect
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:0];
  [v2 stripRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PKImage)footerImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:0];
  footerImage = [v2 footerImage];

  return footerImage;
}

- (PKImage)altImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  altImage = [v2 altImage];

  return altImage;
}

- (PKImage)cardHolderPicture
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:5];
  cardHolderPicture = [v2 cardHolderPicture];

  return cardHolderPicture;
}

- (PKImage)personalizationLogoImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:3];
  logoImage = [v2 logoImage];

  return logoImage;
}

- (id)backgroundImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  backgroundImage = [v2 backgroundImage];

  return backgroundImage;
}

- (id)stripImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  stripImage = [v2 stripImage];

  return stripImage;
}

- (id)thumbnailImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  thumbnailImage = [v2 thumbnailImage];

  return thumbnailImage;
}

- (PKImage)compactBankLogoDarkImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  compactBankLogoDarkImage = [v2 compactBankLogoDarkImage];

  return compactBankLogoDarkImage;
}

- (PKImage)compactBankLogoLightImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  compactBankLogoLightImage = [v2 compactBankLogoLightImage];

  return compactBankLogoLightImage;
}

- (id)secondaryLogoImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:4];
  secondaryLogoImage = [v2 secondaryLogoImage];

  return secondaryLogoImage;
}

- (id)venueMapImage
{
  v2 = [(PKObject *)self imageSetLoadedIfNeeded:8];
  venueMapImage = [v2 venueMapImage];

  return venueMapImage;
}

- (NSString)businessChatIdentifier
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  businessChatIdentifier = [contentLoadedIfNeeded businessChatIdentifier];

  return businessChatIdentifier;
}

- (PKPassBarcodeSettings)barcodeSettings
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  barcodeSettings = [contentLoadedIfNeeded barcodeSettings];

  return barcodeSettings;
}

- (NSString)cardholderInfoSectionTitle
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  cardholderInfoSectionTitle = [contentLoadedIfNeeded cardholderInfoSectionTitle];

  return cardholderInfoSectionTitle;
}

- (PKLiveRenderedShaderSet)liveRenderedShaderSet
{
  liveRenderedShaderSet = self->_liveRenderedShaderSet;
  if (!liveRenderedShaderSet)
  {
    v4 = [PKLiveRenderedShaderSet alloc];
    dataAccessor = [(PKObject *)self dataAccessor];
    v6 = [(PKLiveRenderedShaderSet *)v4 initWithDataAccessor:dataAccessor suffix:0];
    v7 = self->_liveRenderedShaderSet;
    self->_liveRenderedShaderSet = v6;

    liveRenderedShaderSet = self->_liveRenderedShaderSet;
  }

  return liveRenderedShaderSet;
}

- (id)passLocalizedStringForKey:(id)key
{
  keyCopy = key;
  dataAccessor = [(PKObject *)self dataAccessor];
  v6 = [dataAccessor passLocalizedStringForKey:keyCopy];

  return v6;
}

- (int64_t)comparePassDatesToPass:(id)pass searchOption:(unint64_t)option
{
  passCopy = pass;
  v7 = [PKPass _dateForPassComparison:self searchOption:option];
  v8 = [PKPass _dateForPassComparison:passCopy searchOption:option];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8 != 0;
    }
  }

  else
  {
    v10 = [v7 compare:v8];
  }

  return v10;
}

+ (id)_dateForPassComparison:(id)comparison searchOption:(unint64_t)option
{
  comparisonCopy = comparison;
  relevantDates = [comparisonCopy relevantDates];
  v7 = [PKPassRelevantDate findDateFromDates:relevantDates option:option];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    expirationDate = [comparisonCopy expirationDate];
    v10 = expirationDate;
    if (expirationDate)
    {
      modifiedDate = expirationDate;
    }

    else
    {
      modifiedDate = [comparisonCopy modifiedDate];
    }

    v8 = modifiedDate;
  }

  return v8;
}

- (CGRect)logoRect
{
  if ([(PKObject *)self isImageSetLoaded:0])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = [(PKObject *)self imageSetLoadedIfNeeded:v3];
  [v4 logoRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (PKSeatingInformation)seatingInformation
{
  allSemantics = [(PKPass *)self allSemantics];
  v3 = [allSemantics objectForKeyedSubscript:@"seats"];

  v4 = [[PKSeatingInformation alloc] initFromSemantic:v3];

  return v4;
}

- (BOOL)isEqualToPassIncludingMetadata:(id)metadata
{
  metadataCopy = metadata;
  manifestHash = [(PKObject *)self manifestHash];
  manifestHash2 = [metadataCopy manifestHash];
  v7 = manifestHash2;
  if (manifestHash && manifestHash2)
  {
    if ([manifestHash isEqual:manifestHash2])
    {
LABEL_4:
      ingestedDate = [(PKPass *)self ingestedDate];
      ingestedDate2 = [metadataCopy ingestedDate];
      v10 = ingestedDate2;
      if (ingestedDate && ingestedDate2)
      {
        if ([ingestedDate isEqual:ingestedDate2])
        {
LABEL_7:
          modifiedDate = [(PKPass *)self modifiedDate];
          modifiedDate2 = [metadataCopy modifiedDate];
          v13 = modifiedDate2;
          if (modifiedDate && modifiedDate2)
          {
            if ([modifiedDate isEqual:modifiedDate2])
            {
LABEL_10:
              signingDate = [(PKObject *)self signingDate];
              signingDate2 = [metadataCopy signingDate];
              v16 = signingDate2;
              if (signingDate && signingDate2)
              {
                if ([signingDate isEqual:signingDate2])
                {
LABEL_13:
                  v28 = signingDate;
                  nfcPayload = [(PKPass *)self nfcPayload];
                  nfcPayload2 = [metadataCopy nfcPayload];
                  v19 = nfcPayload2;
                  v29 = nfcPayload;
                  if (nfcPayload && nfcPayload2)
                  {
                    v20 = nfcPayload2;
                    v21 = [v29 isEqual:nfcPayload2];
                    v19 = v20;
                    if (v21)
                    {
LABEL_16:
                      v27 = v19;
                      settings = [(PKObject *)self settings];
                      v23 = settings == [metadataCopy settings];
                      signingDate = v28;
                      if (v23)
                      {
                        isRevoked = [(PKPass *)self isRevoked];
                        v25 = isRevoked ^ [metadataCopy isRevoked] ^ 1;
                      }

                      else
                      {
                        LOBYTE(v25) = 0;
                      }

                      v19 = v27;
                      goto LABEL_30;
                    }
                  }

                  else if (nfcPayload == nfcPayload2)
                  {
                    goto LABEL_16;
                  }

                  LOBYTE(v25) = 0;
                  signingDate = v28;
LABEL_30:

                  goto LABEL_31;
                }
              }

              else if (signingDate == signingDate2)
              {
                goto LABEL_13;
              }

              LOBYTE(v25) = 0;
LABEL_31:

              goto LABEL_32;
            }
          }

          else if (modifiedDate == modifiedDate2)
          {
            goto LABEL_10;
          }

          LOBYTE(v25) = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      else if (ingestedDate == ingestedDate2)
      {
        goto LABEL_7;
      }

      LOBYTE(v25) = 0;
LABEL_33:

      goto LABEL_34;
    }
  }

  else if (manifestHash == manifestHash2)
  {
    goto LABEL_4;
  }

  LOBYTE(v25) = 0;
LABEL_34:

  return v25;
}

- (PKPass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v126.receiver = self;
  v126.super_class = PKPass;
  v5 = [(PKObject *)&v126 initWithCoder:coderCopy];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v121 = objc_opt_class();
    v123 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v120 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:v7 forKey:@"passLibraryMachServiceName"];
    passLibraryMachServiceName = v5->_passLibraryMachServiceName;
    v5->_passLibraryMachServiceName = v12;

    v14 = [coderCopy decodeObjectOfClass:v7 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v14;

    v5->_remotePass = [coderCopy decodeBoolForKey:@"remotePass"];
    v16 = [coderCopy decodeObjectOfClass:v7 forKey:@"provisioningCredentialHash"];
    provisioningCredentialHash = v5->_provisioningCredentialHash;
    v5->_provisioningCredentialHash = v16;

    v18 = [coderCopy decodeObjectOfClass:v7 forKey:@"passTypeID"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:v7 forKey:@"teamID"];
    teamID = v5->_teamID;
    v5->_teamID = v20;

    v22 = [coderCopy decodeObjectOfClass:v7 forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v22;

    v24 = [coderCopy decodeObjectOfClass:v10 forKey:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v24;

    v26 = [coderCopy decodeObjectOfClass:v7 forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v26;

    v28 = [coderCopy decodeObjectOfClass:v8 forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v28;

    v5->_voided = [coderCopy decodeBoolForKey:@"voided"];
    v122 = v8;
    v124 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v123, v6, v7, v120, v10, v8, v11, 0}];
    v30 = [coderCopy decodeObjectOfClasses:? forKey:?];
    userInfo = v5->_userInfo;
    v5->_userInfo = v30;

    v32 = [coderCopy decodeObjectOfClass:v7 forKey:@"groupingID"];
    groupingID = v5->_groupingID;
    v5->_groupingID = v32;

    v34 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"relevantDates"];
    relevantDates = v5->_relevantDates;
    v5->_relevantDates = v35;

    v5->_sharingMethod = [coderCopy decodeIntegerForKey:@"sharingMethod"];
    v37 = [coderCopy decodeObjectOfClass:v7 forKey:@"sharingText"];
    sharingText = v5->_sharingText;
    v5->_sharingText = v37;

    v39 = [coderCopy decodeObjectOfClass:v9 forKey:@"sharingURL"];
    sharingURL = v5->_sharingURL;
    v5->_sharingURL = v39;

    v41 = objc_autoreleasePoolPush();
    v42 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v121, objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"embeddedLocations"];
    if (objc_opt_isKindOfClass())
    {
      pk_arrayCopy = [v43 copy];
    }

    else
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      pk_arrayCopy = [v43 pk_arrayCopy];
    }

    embeddedLocations = v5->_embeddedLocations;
    v5->_embeddedLocations = pk_arrayCopy;

LABEL_7:
    objc_autoreleasePoolPop(v41);
    v46 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v121, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"embeddedBeacons"];
    embeddedBeacons = v5->_embeddedBeacons;
    v5->_embeddedBeacons = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nfcPayload"];
    nfcPayload = v5->_nfcPayload;
    v5->_nfcPayload = v49;

    v5->_hasStoredValue = [coderCopy decodeBoolForKey:@"hasStoredValue"];
    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liveRenderType"];
    v52 = v51;
    if (v51)
    {
      v53 = PKPassLiveRenderTypeFromString(v51);
      v5->_liveRenderType = v53;
      v5->_liveRenderedBackground = v53 != 0;
      if (v53 == 2)
      {
        v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeKeyLiveRenderType"];
        v5->_homeKeyLiveRenderType = PKPassHomeKeyLiveRenderTypeFromString(v54);

LABEL_12:
        v5->_supportsCategoryVisualization = [coderCopy decodeBoolForKey:@"supportsCategoryVisualization"];
        v5->_liveRenderingRequiresEnablement = [coderCopy decodeBoolForKey:@"liveRenderingRequiresEnablement"];
        v5->_passType = [coderCopy decodeIntegerForKey:@"passType"];
        v56 = [coderCopy decodeObjectOfClass:v122 forKey:@"ingestedDate"];
        ingestedDate = v5->_ingestedDate;
        v5->_ingestedDate = v56;

        v58 = [coderCopy decodeObjectOfClass:v122 forKey:@"modifiedDate"];
        modifiedDate = v5->_modifiedDate;
        v5->_modifiedDate = v58;

        v5->_revoked = [coderCopy decodeBoolForKey:@"revoked"];
        v5->_muteReadyForUseNotification = [coderCopy decodeBoolForKey:@"muteReadyForUseNotification"];
        v60 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v121, v7, 0}];
        v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"associatedPassTypeIdentifiers"];
        associatedPassTypeIdentifiers = v5->_associatedPassTypeIdentifiers;
        v5->_associatedPassTypeIdentifiers = v61;

        v63 = [coderCopy decodeObjectOfClass:v9 forKey:@"transferURL"];
        transferURL = v5->_transferURL;
        v5->_transferURL = v63;

        v65 = [coderCopy decodeObjectOfClass:v9 forKey:@"sellURL"];
        sellURL = v5->_sellURL;
        v5->_sellURL = v65;

        v67 = [coderCopy decodeObjectOfClass:v9 forKey:@"upgradeURL"];
        upgradeURL = v5->_upgradeURL;
        v5->_upgradeURL = v67;

        v69 = [coderCopy decodeObjectOfClass:v9 forKey:@"managementURL"];
        managementURL = v5->_managementURL;
        v5->_managementURL = v69;

        v71 = [coderCopy decodeObjectOfClass:v9 forKey:@"bagPolicyURL"];
        bagPolicyURL = v5->_bagPolicyURL;
        v5->_bagPolicyURL = v71;

        v73 = [coderCopy decodeObjectOfClass:v9 forKey:@"orderFoodURL"];
        orderFoodURL = v5->_orderFoodURL;
        v5->_orderFoodURL = v73;

        v75 = [coderCopy decodeObjectOfClass:v9 forKey:@"transitInformationURL"];
        transitInformationURL = v5->_transitInformationURL;
        v5->_transitInformationURL = v75;

        v77 = [coderCopy decodeObjectOfClass:v9 forKey:@"parkingInformationURL"];
        parkingInformationURL = v5->_parkingInformationURL;
        v5->_parkingInformationURL = v77;

        v79 = [coderCopy decodeObjectOfClass:v9 forKey:@"directionsInformationURL"];
        directionsInformationURL = v5->_directionsInformationURL;
        v5->_directionsInformationURL = v79;

        v81 = [coderCopy decodeObjectOfClass:v9 forKey:@"merchandiseURL"];
        merchandiseURL = v5->_merchandiseURL;
        v5->_merchandiseURL = v81;

        v83 = [coderCopy decodeObjectOfClass:v9 forKey:@"accessibilityURL"];
        accessibilityURL = v5->_accessibilityURL;
        v5->_accessibilityURL = v83;

        v85 = [coderCopy decodeObjectOfClass:v9 forKey:@"purchaseParkingURL"];
        purchaseParkingURL = v5->_purchaseParkingURL;
        v5->_purchaseParkingURL = v85;

        v87 = [coderCopy decodeObjectOfClass:v9 forKey:@"addOnURL"];
        partnerAddOnURL = v5->_partnerAddOnURL;
        v5->_partnerAddOnURL = v87;

        v89 = [coderCopy decodeObjectOfClass:v9 forKey:@"purchaseWifiURL"];
        purchaseWifiURL = v5->_purchaseWifiURL;
        v5->_purchaseWifiURL = v89;

        v91 = [coderCopy decodeObjectOfClass:v9 forKey:@"changeSeatURL"];
        changeSeatURL = v5->_changeSeatURL;
        v5->_changeSeatURL = v91;

        v93 = [coderCopy decodeObjectOfClass:v9 forKey:@"entertainmentURL"];
        entertainmentURL = v5->_entertainmentURL;
        v5->_entertainmentURL = v93;

        v95 = [coderCopy decodeObjectOfClass:v9 forKey:@"purchaseAdditionalBaggageURL"];
        purchaseAdditionalBaggageURL = v5->_purchaseAdditionalBaggageURL;
        v5->_purchaseAdditionalBaggageURL = v95;

        v97 = [coderCopy decodeObjectOfClass:v9 forKey:@"purchaseLoungeAccessURL"];
        purchaseLoungeAccessURL = v5->_purchaseLoungeAccessURL;
        v5->_purchaseLoungeAccessURL = v97;

        v99 = [coderCopy decodeObjectOfClass:v9 forKey:@"reportLostBagURL"];
        reportLostBagURL = v5->_reportLostBagURL;
        v5->_reportLostBagURL = v99;

        v101 = [coderCopy decodeObjectOfClass:v9 forKey:@"trackBagsURL"];
        trackBagsURL = v5->_trackBagsURL;
        v5->_trackBagsURL = v101;

        v103 = [coderCopy decodeObjectOfClass:v9 forKey:@"requestWheelchairURL"];
        requestWheelchairURL = v5->_requestWheelchairURL;
        v5->_requestWheelchairURL = v103;

        v105 = [coderCopy decodeObjectOfClass:v9 forKey:@"registerServiceAnimalURL"];
        registerServiceAnimalURL = v5->_registerServiceAnimalURL;
        v5->_registerServiceAnimalURL = v105;

        v107 = [coderCopy decodeObjectOfClass:v9 forKey:@"contactVenuePhoneNumber"];
        contactVenuePhoneNumber = v5->_contactVenuePhoneNumber;
        v5->_contactVenuePhoneNumber = v107;

        v109 = [coderCopy decodeObjectOfClass:v9 forKey:@"contactVenueEmail"];
        contactVenueEmail = v5->_contactVenueEmail;
        v5->_contactVenueEmail = v109;

        v111 = [coderCopy decodeObjectOfClass:v9 forKey:@"contactVenueWebsite"];
        contactVenueWebsite = v5->_contactVenueWebsite;
        v5->_contactVenueWebsite = v111;

        v113 = [coderCopy decodeObjectOfClass:v9 forKey:@"transitProviderPhoneNumberURL"];
        transitProviderPhoneNumberURL = v5->_transitProviderPhoneNumberURL;
        v5->_transitProviderPhoneNumberURL = v113;

        v115 = [coderCopy decodeObjectOfClass:v9 forKey:@"transitProviderEmailURL"];
        transitProviderEmailURL = v5->_transitProviderEmailURL;
        v5->_transitProviderEmailURL = v115;

        v117 = [coderCopy decodeObjectOfClass:v9 forKey:@"transitProviderWebsiteURL"];
        transitProviderWebsiteURL = v5->_transitProviderWebsiteURL;
        v5->_transitProviderWebsiteURL = v117;

        objc_autoreleasePoolPop(context);
        goto LABEL_13;
      }
    }

    else
    {
      v55 = [coderCopy decodeBoolForKey:@"liveRendered"];
      v5->_liveRenderedBackground = v55;
      v5->_liveRenderType = v55;
    }

    v5->_homeKeyLiveRenderType = 0;
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPass;
  [(PKObject *)&v8 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_passLibraryMachServiceName forKey:@"passLibraryMachServiceName"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeBool:self->_remotePass forKey:@"remotePass"];
  [coderCopy encodeObject:self->_provisioningCredentialHash forKey:@"provisioningCredentialHash"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeID"];
  [coderCopy encodeObject:self->_teamID forKey:@"teamID"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_sequenceCounter forKey:@"sequenceCounter"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_voided forKey:@"voided"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
  [coderCopy encodeObject:self->_groupingID forKey:@"groupingID"];
  [coderCopy encodeObject:self->_relevantDates forKey:@"relevantDates"];
  [coderCopy encodeInteger:self->_sharingMethod forKey:@"sharingMethod"];
  [coderCopy encodeObject:self->_sharingText forKey:@"sharingText"];
  [coderCopy encodeObject:self->_sharingURL forKey:@"sharingURL"];
  [coderCopy encodeObject:self->_embeddedLocations forKey:@"embeddedLocations"];
  [coderCopy encodeObject:self->_embeddedBeacons forKey:@"embeddedBeacons"];
  [coderCopy encodeObject:self->_nfcPayload forKey:@"nfcPayload"];
  [coderCopy encodeBool:self->_hasStoredValue forKey:@"hasStoredValue"];
  [coderCopy encodeBool:self->_liveRenderedBackground forKey:@"liveRendered"];
  v6 = PKPassLiveRenderTypeToString(self->_liveRenderType);
  [coderCopy encodeObject:v6 forKey:@"liveRenderType"];

  if (self->_liveRenderType == 2)
  {
    v7 = PKPassHomeKeyLiveRenderTypeToString(self->_homeKeyLiveRenderType);
    [coderCopy encodeObject:v7 forKey:@"homeKeyLiveRenderType"];
  }

  [coderCopy encodeBool:self->_supportsCategoryVisualization forKey:@"supportsCategoryVisualization"];
  [coderCopy encodeBool:self->_liveRenderingRequiresEnablement forKey:@"liveRenderingRequiresEnablement"];
  [coderCopy encodeInteger:self->_passType forKey:@"passType"];
  [coderCopy encodeObject:self->_ingestedDate forKey:@"ingestedDate"];
  [coderCopy encodeObject:self->_modifiedDate forKey:@"modifiedDate"];
  [coderCopy encodeBool:self->_revoked forKey:@"revoked"];
  [coderCopy encodeObject:self->_associatedPassTypeIdentifiers forKey:@"associatedPassTypeIdentifiers"];
  [coderCopy encodeBool:self->_muteReadyForUseNotification forKey:@"muteReadyForUseNotification"];
  [coderCopy encodeObject:self->_transferURL forKey:@"transferURL"];
  [coderCopy encodeObject:self->_sellURL forKey:@"sellURL"];
  [coderCopy encodeObject:self->_upgradeURL forKey:@"upgradeURL"];
  [coderCopy encodeObject:self->_managementURL forKey:@"managementURL"];
  [coderCopy encodeObject:self->_bagPolicyURL forKey:@"bagPolicyURL"];
  [coderCopy encodeObject:self->_orderFoodURL forKey:@"orderFoodURL"];
  [coderCopy encodeObject:self->_transitInformationURL forKey:@"transitInformationURL"];
  [coderCopy encodeObject:self->_parkingInformationURL forKey:@"parkingInformationURL"];
  [coderCopy encodeObject:self->_directionsInformationURL forKey:@"directionsInformationURL"];
  [coderCopy encodeObject:self->_merchandiseURL forKey:@"merchandiseURL"];
  [coderCopy encodeObject:self->_accessibilityURL forKey:@"accessibilityURL"];
  [coderCopy encodeObject:self->_purchaseParkingURL forKey:@"purchaseParkingURL"];
  [coderCopy encodeObject:self->_partnerAddOnURL forKey:@"addOnURL"];
  [coderCopy encodeObject:self->_purchaseWifiURL forKey:@"purchaseWifiURL"];
  [coderCopy encodeObject:self->_changeSeatURL forKey:@"changeSeatURL"];
  [coderCopy encodeObject:self->_entertainmentURL forKey:@"entertainmentURL"];
  [coderCopy encodeObject:self->_purchaseAdditionalBaggageURL forKey:@"purchaseAdditionalBaggageURL"];
  [coderCopy encodeObject:self->_purchaseLoungeAccessURL forKey:@"purchaseLoungeAccessURL"];
  [coderCopy encodeObject:self->_reportLostBagURL forKey:@"reportLostBagURL"];
  [coderCopy encodeObject:self->_trackBagsURL forKey:@"trackBagsURL"];
  [coderCopy encodeObject:self->_requestWheelchairURL forKey:@"requestWheelchairURL"];
  [coderCopy encodeObject:self->_registerServiceAnimalURL forKey:@"registerServiceAnimalURL"];
  [coderCopy encodeObject:self->_contactVenuePhoneNumber forKey:@"contactVenuePhoneNumber"];
  [coderCopy encodeObject:self->_contactVenueEmail forKey:@"contactVenueEmail"];
  [coderCopy encodeObject:self->_contactVenueWebsite forKey:@"contactVenueWebsite"];
  [coderCopy encodeObject:self->_transitProviderPhoneNumberURL forKey:@"transitProviderPhoneNumberURL"];
  [coderCopy encodeObject:self->_transitProviderEmailURL forKey:@"transitProviderEmailURL"];
  [coderCopy encodeObject:self->_transitProviderWebsiteURL forKey:@"transitProviderWebsiteURL"];
  objc_autoreleasePoolPop(v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v95.receiver = self;
  v95.super_class = PKPass;
  v5 = [(PKObject *)&v95 copyWithZone:?];
  v6 = [(NSString *)self->_passLibraryMachServiceName copyWithZone:zone];
  v7 = *(v5 + 37);
  *(v5 + 37) = v6;

  v8 = [(NSString *)self->_deviceName copyWithZone:zone];
  v9 = *(v5 + 36);
  *(v5 + 36) = v8;

  *(v5 + 208) = self->_remotePass;
  v10 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v11 = *(v5 + 31);
  *(v5 + 31) = v10;

  v12 = [(NSString *)self->_teamID copyWithZone:zone];
  v13 = *(v5 + 41);
  *(v5 + 41) = v12;

  v14 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v15 = *(v5 + 30);
  *(v5 + 30) = v14;

  v16 = [(NSString *)self->_provisioningCredentialHash copyWithZone:zone];
  v17 = *(v5 + 83);
  *(v5 + 83) = v16;

  v18 = [(NSNumber *)self->_sequenceCounter copyWithZone:zone];
  v19 = *(v5 + 38);
  *(v5 + 38) = v18;

  v20 = [(NSString *)self->_organizationName copyWithZone:zone];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  v22 = [(NSArray *)self->_relevantDates copyWithZone:zone];
  v23 = *(v5 + 33);
  *(v5 + 33) = v22;

  v24 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v25 = *(v5 + 42);
  *(v5 + 42) = v24;

  *(v5 + 211) = self->_voided;
  v26 = [(NSDictionary *)self->_userInfo copyWithZone:zone];
  v27 = *(v5 + 34);
  *(v5 + 34) = v26;

  v28 = [(NSString *)self->_groupingID copyWithZone:zone];
  v29 = *(v5 + 43);
  *(v5 + 43) = v28;

  v30 = [(NSArray *)self->_embeddedLocations copyWithZone:zone];
  v31 = *(v5 + 28);
  *(v5 + 28) = v30;

  v32 = [(NSSet *)self->_embeddedBeacons copyWithZone:zone];
  v33 = *(v5 + 44);
  *(v5 + 44) = v32;

  v34 = [(PKNFCPayload *)self->_nfcPayload copyWithZone:zone];
  v35 = *(v5 + 51);
  *(v5 + 51) = v34;

  *(v5 + 212) = self->_hasStoredValue;
  *(v5 + 213) = self->_liveRenderedBackground;
  *(v5 + 81) = self->_liveRenderType;
  *(v5 + 82) = self->_homeKeyLiveRenderType;
  *(v5 + 214) = self->_supportsCategoryVisualization;
  *(v5 + 215) = self->_liveRenderingRequiresEnablement;
  *(v5 + 29) = self->_passType;
  *(v5 + 47) = self->_sharingMethod;
  objc_storeStrong(v5 + 49, self->_sharingText);
  objc_storeStrong(v5 + 48, self->_sharingURL);
  objc_storeStrong(v5 + 85, self->_ingestedDate);
  objc_storeStrong(v5 + 86, self->_modifiedDate);
  *(v5 + 218) = self->_revoked;
  v36 = [(NSSet *)self->_associatedPassTypeIdentifiers copyWithZone:zone];
  v37 = *(v5 + 50);
  *(v5 + 50) = v36;

  *(v5 + 216) = self->_muteReadyForUseNotification;
  v38 = [(NSURL *)self->_transferURL copyWithZone:zone];
  v39 = *(v5 + 52);
  *(v5 + 52) = v38;

  v40 = [(NSURL *)self->_sellURL copyWithZone:zone];
  v41 = *(v5 + 53);
  *(v5 + 53) = v40;

  v42 = [(NSURL *)self->_upgradeURL copyWithZone:zone];
  v43 = *(v5 + 54);
  *(v5 + 54) = v42;

  v44 = [(NSURL *)self->_managementURL copyWithZone:zone];
  v45 = *(v5 + 55);
  *(v5 + 55) = v44;

  v46 = [(NSURL *)self->_bagPolicyURL copyWithZone:zone];
  v47 = *(v5 + 56);
  *(v5 + 56) = v46;

  v48 = [(NSURL *)self->_orderFoodURL copyWithZone:zone];
  v49 = *(v5 + 57);
  *(v5 + 57) = v48;

  v50 = [(NSURL *)self->_transitInformationURL copyWithZone:zone];
  v51 = *(v5 + 58);
  *(v5 + 58) = v50;

  v52 = [(NSURL *)self->_parkingInformationURL copyWithZone:zone];
  v53 = *(v5 + 59);
  *(v5 + 59) = v52;

  v54 = [(NSURL *)self->_directionsInformationURL copyWithZone:zone];
  v55 = *(v5 + 60);
  *(v5 + 60) = v54;

  v56 = [(NSURL *)self->_merchandiseURL copyWithZone:zone];
  v57 = *(v5 + 61);
  *(v5 + 61) = v56;

  v58 = [(NSURL *)self->_accessibilityURL copyWithZone:zone];
  v59 = *(v5 + 62);
  *(v5 + 62) = v58;

  v60 = [(NSURL *)self->_purchaseParkingURL copyWithZone:zone];
  v61 = *(v5 + 63);
  *(v5 + 63) = v60;

  v62 = [(NSURL *)self->_partnerAddOnURL copyWithZone:zone];
  v63 = *(v5 + 64);
  *(v5 + 64) = v62;

  v64 = [(NSURL *)self->_purchaseWifiURL copyWithZone:zone];
  v65 = *(v5 + 65);
  *(v5 + 65) = v64;

  v66 = [(NSURL *)self->_changeSeatURL copyWithZone:zone];
  v67 = *(v5 + 66);
  *(v5 + 66) = v66;

  v68 = [(NSURL *)self->_entertainmentURL copyWithZone:zone];
  v69 = *(v5 + 67);
  *(v5 + 67) = v68;

  v70 = [(NSURL *)self->_purchaseAdditionalBaggageURL copyWithZone:zone];
  v71 = *(v5 + 68);
  *(v5 + 68) = v70;

  v72 = [(NSURL *)self->_purchaseLoungeAccessURL copyWithZone:zone];
  v73 = *(v5 + 69);
  *(v5 + 69) = v72;

  v74 = [(NSURL *)self->_reportLostBagURL copyWithZone:zone];
  v75 = *(v5 + 70);
  *(v5 + 70) = v74;

  v76 = [(NSURL *)self->_trackBagsURL copyWithZone:zone];
  v77 = *(v5 + 71);
  *(v5 + 71) = v76;

  v78 = [(NSURL *)self->_requestWheelchairURL copyWithZone:zone];
  v79 = *(v5 + 72);
  *(v5 + 72) = v78;

  v80 = [(NSURL *)self->_registerServiceAnimalURL copyWithZone:zone];
  v81 = *(v5 + 73);
  *(v5 + 73) = v80;

  v82 = [(NSURL *)self->_contactVenuePhoneNumber copyWithZone:zone];
  v83 = *(v5 + 74);
  *(v5 + 74) = v82;

  v84 = [(NSURL *)self->_contactVenueEmail copyWithZone:zone];
  v85 = *(v5 + 75);
  *(v5 + 75) = v84;

  v86 = [(NSURL *)self->_contactVenueWebsite copyWithZone:zone];
  v87 = *(v5 + 76);
  *(v5 + 76) = v86;

  v88 = [(NSURL *)self->_transitProviderPhoneNumberURL copyWithZone:zone];
  v89 = *(v5 + 77);
  *(v5 + 77) = v88;

  v90 = [(NSURL *)self->_transitProviderEmailURL copyWithZone:zone];
  v91 = *(v5 + 78);
  *(v5 + 78) = v90;

  v92 = [(NSURL *)self->_transitProviderWebsiteURL copyWithZone:zone];
  v93 = *(v5 + 79);
  *(v5 + 79) = v92;

  return v5;
}

- (BOOL)availableForAutomaticPresentationUsingBeaconContext
{
  embeddedBeacons = [(PKPass *)self embeddedBeacons];
  v3 = [embeddedBeacons count] != 0;

  return v3;
}

- (id)stringForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  stringValue = [v6 stringValue];

  return stringValue;
}

- (id)dateForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  dateValue = [v6 dateValue];

  return dateValue;
}

- (id)timeZoneForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  timeZoneValue = [v6 timeZoneValue];

  return timeZoneValue;
}

- (id)eventDateInfoForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  eventDateInfoValue = [v6 eventDateInfoValue];

  return eventDateInfoValue;
}

- (id)numberForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  numberValue = [v6 numberValue];

  return numberValue;
}

- (id)locationForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  locationValue = [v6 locationValue];

  return locationValue;
}

- (id)currencyAmountForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  currencyAmountValue = [v6 currencyAmountValue];

  return currencyAmountValue;
}

- (id)personNameComponentsForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  personNameComponentsValue = [v6 personNameComponentsValue];

  return personNameComponentsValue;
}

- (id)stringsForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  stringsValue = [v6 stringsValue];

  return stringsValue;
}

- (id)dictionariesForSemanticKey:(id)key
{
  keyCopy = key;
  allSemantics = [(PKPass *)self allSemantics];
  v6 = [allSemantics objectForKey:keyCopy];

  dictionariesValue = [v6 dictionariesValue];

  return dictionariesValue;
}

- (BOOL)supportsFeatureForCurrentDevice:(unint64_t)device
{
  v5 = PKDeviceClass();
  v6 = +[PKOSVersionRequirement fromDeviceVersion];
  LOBYTE(device) = [(PKPass *)self supportsFeature:device forDevice:v5 version:v6];

  return device;
}

- (BOOL)supportsFeature:(unint64_t)feature forDevice:(id)device version:(id)version
{
  deviceCopy = device;
  versionCopy = version;
  v10 = PKPassFeatureTypeToString(feature);
  if (v10)
  {
    contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
    features = [contentLoadedIfNeeded features];
    v13 = [features objectForKeyedSubscript:v10];

    if (v13 && [v13 enabled])
    {
      versionRange = [v13 versionRange];
      v15 = versionRange;
      if (versionRange)
      {
        v16 = [versionRange versionMeetsRequirements:versionCopy deviceClass:deviceCopy];
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_localizationKeyForMultipleDiff
{
  style = [(PKPass *)self style];
  if (style > 0xA)
  {
    return @"PASS_MULTIPLE_CHANGES_BULLETIN_PASS";
  }

  else
  {
    return off_1E79DAE90[style];
  }
}

- (id)_changeMessageForFieldKey:(id)key
{
  v48 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  frontFieldBuckets = [(PKPass *)self frontFieldBuckets];
  v46[0] = frontFieldBuckets;
  backFieldBuckets = [(PKPass *)self backFieldBuckets];
  v46[1] = backFieldBuckets;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];

  v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = *v41;
    v29 = v7;
    v27 = *v41;
    do
    {
      v10 = 0;
      v26 = v8;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v12 = v11;
        v30 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v30)
        {
          v13 = *v37;
          v31 = v12;
          v28 = *v37;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v37 != v13)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v36 + 1) + 8 * i);
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v33;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v33 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v32 + 1) + 8 * j);
                    v22 = [v21 key];
                    v23 = [v22 isEqual:keyCopy];

                    if (v23)
                    {
                      changeMessage = [v21 changeMessage];

                      v7 = v29;
                      goto LABEL_26;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v12 = v31;
              v13 = v28;
            }

            v7 = v29;
            v30 = [v31 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v30);
        }

        ++v10;
        v9 = v27;
      }

      while (v10 != v26);
      v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
      v9 = v27;
      changeMessage = 0;
    }

    while (v8);
  }

  else
  {
    changeMessage = 0;
  }

LABEL_26:

  return changeMessage;
}

- (id)_changeMessageForStringSemantic:(id)semantic newSemantic:(id)newSemantic
{
  semanticCopy = semantic;
  newSemanticCopy = newSemantic;
  semanticKey = [newSemanticCopy semanticKey];
  if (([semanticKey isEqualToString:@"departureLocationDescription"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationLocationDescription"] & 1) != 0
    || ([semanticKey isEqualToString:@"transitProvider"] & 1) != 0
    || ([semanticKey isEqualToString:@"vehicleName"] & 1) != 0
    || ([semanticKey isEqualToString:@"vehicleNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"vehicleType"] & 1) != 0
    || ([semanticKey isEqualToString:@"boardingGroup"] & 1) != 0
    || ([semanticKey isEqualToString:@"boardingZone"] & 1) != 0
    || ([semanticKey isEqualToString:@"boardingSequenceNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"confirmationNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"transitStatus"] & 1) != 0
    || ([semanticKey isEqualToString:@"transitStatusReason"] & 1) != 0
    || ([semanticKey isEqualToString:@"membershipProgramName"] & 1) != 0
    || ([semanticKey isEqualToString:@"membershipProgramNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"membershipProgramStatus"] & 1) != 0
    || ([semanticKey isEqualToString:@"priorityStatus"] & 1) != 0
    || ([semanticKey isEqualToString:@"securityScreening"] & 1) != 0
    || ([semanticKey isEqualToString:@"flightCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"airlineCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureAirportCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureAirportName"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureCityName"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureTerminal"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureGate"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationAirportCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationAirportName"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationCityName"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationTerminal"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationGate"] & 1) != 0
    || ([semanticKey isEqualToString:@"departurePlatform"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureStationName"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationPlatform"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationStationName"] & 1) != 0
    || ([semanticKey isEqualToString:@"carNumber"] & 1) != 0
    || ([semanticKey isEqualToString:?] & 1) != 0
    || ([semanticKey isEqualToString:@"venueName"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntrance"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntranceGate"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntranceDoor"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntrancePortal"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueRegionName"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueRoom"] & 1) != 0
    || ([semanticKey isEqualToString:@"venuePhoneNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"venuePlaceID"] & 1) != 0
    || ([semanticKey isEqualToString:@"leagueName"] & 1) != 0
    || ([semanticKey isEqualToString:@"leagueAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"homeTeamLocation"] & 1) != 0
    || ([semanticKey isEqualToString:@"homeTeamName"] & 1) != 0
    || ([semanticKey isEqualToString:@"homeTeamAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"awayTeamLocation"] & 1) != 0
    || ([semanticKey isEqualToString:@"awayTeamName"] & 1) != 0
    || ([semanticKey isEqualToString:@"awayTeamAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"sportName"] & 1) != 0
    || ([semanticKey isEqualToString:@"genre"] & 1) != 0
    || ([semanticKey isEqualToString:@"eventType"] & 1) != 0
    || ([semanticKey isEqualToString:@"eventLiveMessage"] & 1) != 0
    || ([semanticKey isEqualToString:@"admissionLevel"] & 1) != 0
    || ([semanticKey isEqualToString:@"admissionLevelAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"attendeeName"] & 1) != 0
    || ([semanticKey isEqualToString:@"entranceDescription"] & 1) != 0
    || ([semanticKey isEqualToString:@"additionalTicketAttributes"] & 1) != 0
    || [semanticKey isEqualToString:@"internationalDocumentsVerifiedDeclarationName"])
  {
  }

  else
  {
    v22 = [semanticKey isEqualToString:@"ticketFareClass"];

    result = @"eventName";
    if ((v22 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  if (![@"eventName" isEqualToString:semanticKey])
  {
    if ([@"performerNames" isEqualToString:semanticKey])
    {
      v8 = @"SEMANTICS_PERFORMER_NAMES_CHANGE_MESSAGE";
      goto LABEL_68;
    }

    if ([@"venueEntrance" isEqualToString:semanticKey])
    {
      v10 = PKLocalizedTicketingString(&cfstr_SemanticsVenue.isa, 0);
    }

    else
    {
      if ([@"boardingGroup" isEqualToString:semanticKey])
      {
        v11 = @"SEMANTICS_BOARDING_GROUP_CHANGE_MESSAGE";
      }

      else if ([@"boardingZone" isEqualToString:semanticKey])
      {
        v11 = @"SEMANTICS_BOARDING_ZONE_CHANGE_MESSAGE";
      }

      else
      {
        if (![@"flightCode" isEqualToString:semanticKey])
        {
          v12 = 0;
          goto LABEL_83;
        }

        v11 = @"SEMANTICS_BOARDING_FLIGHT_CODE_CHANGE_MESSAGE";
      }

      v10 = PKLocalizedFlightString(&v11->isa, 0);
    }

    v12 = v10;
    if (v10)
    {
      v13 = PKValidateChangeMessage(v10);
      if (v13)
      {
        v9 = 0;
LABEL_85:

        goto LABEL_86;
      }

      stringValue = [newSemanticCopy stringValue];
      v9 = PKStringWithValidatedFormat(v12, @"%@", v15, v16, v17, v18, v19, v20, stringValue);

LABEL_84:
      v13 = 0;
      goto LABEL_85;
    }

LABEL_83:
    v9 = 0;
    goto LABEL_84;
  }

  v8 = @"SEMANTICS_EVENT_NAME_CHANGE_MESSAGE";
LABEL_68:
  v9 = PKLocalizedTicketingString(&v8->isa, 0);
LABEL_86:

  return v9;
}

- (id)_changeMessageForDateSemantic:(id)semantic newSemantic:(id)newSemantic
{
  semanticCopy = semantic;
  newSemanticCopy = newSemantic;
  semanticKey = [newSemanticCopy semanticKey];
  if (([semanticKey isEqualToString:@"originalDepartureDate"] & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"currentDepartureDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"originalArrivalDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"currentArrivalDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"originalBoardingDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"currentBoardingDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"eventStartDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"venueDoorsOpenDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"venueGatesOpenDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"venueParkingLotsOpenDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"venueBoxOfficeOpenDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"venueFanZoneOpenDate") & 1) != 0 || (objc_msgSend(semanticKey, "isEqualToString:", @"venueOpenDate") & 1) != 0 || objc_msgSend(semanticKey, "isEqualToString:", @"venueCloseDate"))
  {
  }

  else
  {
    v23 = [semanticKey isEqualToString:@"eventEndDate"];

    if ((v23 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  dateValue = [semanticCopy dateValue];
  dateValue2 = [newSemanticCopy dateValue];
  if ([@"eventStartDate" isEqualToString:semanticKey])
  {
    v10 = @"SEMANTICS_EVENT_START_";
    if (!dateValue)
    {
      goto LABEL_27;
    }

LABEL_21:
    v24 = semanticCopy;
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    v12 = [autoupdatingCurrentCalendar components:96 fromDate:dateValue];
    v13 = [autoupdatingCurrentCalendar components:96 fromDate:dateValue2];
    hour = [v12 hour];
    if (hour == [v13 hour])
    {
      minute = [v12 minute];
      v16 = minute != [v13 minute];
    }

    else
    {
      v16 = 1;
    }

    v18 = [autoupdatingCurrentCalendar isDate:dateValue2 equalToDate:dateValue toUnitGranularity:16];

    semanticCopy = v24;
    if (!v16 || (v18 & 1) != 0)
    {
      if (v16)
      {
        v19 = [(__CFString *)v10 stringByAppendingString:@"TIME_CHANGE_MESSAGE"];
        PKTimeStringFromDate(dateValue2, 0);
      }

      else
      {
        v19 = [(__CFString *)v10 stringByAppendingString:@"DATE_CHANGE_MESSAGE"];
        PKMediumDayAndLongMonthStringFromDate(dateValue2, 0);
      }
      v20 = ;
      goto LABEL_28;
    }

LABEL_27:
    v19 = [(__CFString *)v10 stringByAppendingString:@"DATE_TIME_CHANGE_MESSAGE"];
    v20 = PKMediumDayLongMonthAndTimeStringFromDate(dateValue2);
LABEL_28:
    v21 = v20;
    v17 = PKLocalizedTicketingString(v19, &stru_1F2281668.isa, v20);

    goto LABEL_29;
  }

  if ([@"eventEndDate" isEqualToString:semanticKey])
  {
    v10 = @"SEMANTICS_EVENT_END_";
    if (!dateValue)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v17 = 0;
LABEL_29:

  return v17;
}

- (id)_changeMessageForEventDateInfoSemantic:(id)semantic newSemantic:(id)newSemantic
{
  semanticCopy = semantic;
  newSemanticCopy = newSemantic;
  semanticKey = [newSemanticCopy semanticKey];
  result = [semanticKey isEqualToString:@"eventStartDateInfo"];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  eventDateInfoValue = [semanticCopy eventDateInfoValue];
  eventDateInfoValue2 = [newSemanticCopy eventDateInfoValue];
  date = [eventDateInfoValue date];
  date2 = [eventDateInfoValue2 date];
  if (!date2)
  {
    goto LABEL_28;
  }

  if ([eventDateInfoValue ignoreTimeComponents] & 1) != 0 || (objc_msgSend(eventDateInfoValue, "isUnannounced"))
  {
    isUndetermined = 1;
  }

  else
  {
    isUndetermined = [eventDateInfoValue isUndetermined];
  }

  if ([eventDateInfoValue2 ignoreTimeComponents] & 1) != 0 || (objc_msgSend(eventDateInfoValue2, "isUnannounced"))
  {
    isUndetermined2 = 1;
  }

  else
  {
    isUndetermined2 = [eventDateInfoValue2 isUndetermined];
  }

  v29 = semanticKey;
  if (date)
  {
    v28 = semanticCopy;
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    v16 = [autoupdatingCurrentCalendar components:96 fromDate:date];
    v17 = [autoupdatingCurrentCalendar components:96 fromDate:date2];
    if (isUndetermined2)
    {
      v18 = 0;
    }

    else
    {
      v27 = isUndetermined;
      hour = [v16 hour];
      if (hour == [v17 hour])
      {
        minute = [v16 minute];
        v18 = minute != [v17 minute];
      }

      else
      {
        v18 = 1;
      }

      isUndetermined = v27;
    }

    v20 = v18 | (isUndetermined2 ^ 1) & isUndetermined;
    v19 = [autoupdatingCurrentCalendar isDate:date2 equalToDate:date toUnitGranularity:16];

    if (v19)
    {
      semanticCopy = v28;
      semanticKey = v29;
      if ((v20 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      semanticCopy = v28;
      semanticKey = v29;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v20 = isUndetermined2 ^ 1;
  }

  if ([@"eventStartDateInfo" isEqualToString:semanticKey])
  {
    if (v19 & 1 | ((v20 & 1) == 0))
    {
      if (v20)
      {
        v23 = [@"SEMANTICS_EVENT_START_" stringByAppendingString:@"TIME_CHANGE_MESSAGE"];
        PKTimeStringFromDate(date2, 0);
      }

      else
      {
        v23 = [@"SEMANTICS_EVENT_START_" stringByAppendingString:@"DATE_CHANGE_MESSAGE"];
        PKMediumDayAndLongMonthStringFromDate(date2, 0);
      }
      v24 = ;
    }

    else
    {
      v23 = [@"SEMANTICS_EVENT_START_" stringByAppendingString:@"DATE_TIME_CHANGE_MESSAGE"];
      v24 = PKMediumDayLongMonthAndTimeStringFromDate(date2);
    }

    v26 = v24;
    v25 = PKLocalizedTicketingString(v23, &stru_1F2281668.isa, v24);

    semanticKey = v29;
    goto LABEL_32;
  }

LABEL_28:
  v25 = 0;
LABEL_32:

  return v25;
}

- (id)_changeMessageForPersonNameComponentsSemantic:(id)semantic newSemantic:(id)newSemantic
{
  semanticCopy = semantic;
  newSemanticCopy = newSemantic;
  semanticKey = [newSemanticCopy semanticKey];
  result = [semanticKey isEqualToString:@"passengerName"];
  if (result)
  {
    if ([@"passengerName" isEqualToString:semanticKey])
    {
      personNameComponentsValue = [newSemanticCopy personNameComponentsValue];
      v10 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:personNameComponentsValue style:2 options:0];
      v11 = PKLocalizedFlightString(&cfstr_SemanticsBoard_2.isa, &stru_1F2281668.isa, v10);
    }

    else
    {
      v11 = 0;
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)_changeMessageForDictionariesSemantic:(id)semantic newSemantic:(id)newSemantic passStyle:(int64_t)style
{
  semanticCopy = semantic;
  newSemanticCopy = newSemantic;
  semanticKey = [newSemanticCopy semanticKey];
  if ([semanticKey isEqualToString:@"seats"])
  {
    _os_feature_enabled_impl();
  }

  else
  {
    v10 = [semanticKey isEqualToString:@"wifiAccess"];
    v11 = _os_feature_enabled_impl();
    if (!v11 || (v10 & 1) != 0)
    {
      v12 = v11 | v10;
    }

    else
    {
      v12 = [semanticKey isEqualToString:@"airPlay"];
    }

    if ((v12 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  if ([@"seats" isEqualToString:semanticKey])
  {
    v14 = [[PKSeatingInformation alloc] initFromSemantic:semanticCopy];
    v15 = [[PKSeatingInformation alloc] initFromSemantic:newSemanticCopy];
    v16 = [v15 changeMessageFromInformation:v14 isTransit:style == 10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_changeMessageForSemantic:(id)semantic newSemantic:(id)newSemantic passStyle:(int64_t)style
{
  v24 = *MEMORY[0x1E69E9840];
  semanticCopy = semantic;
  newSemanticCopy = newSemantic;
  semanticKey = [newSemanticCopy semanticKey];
  if (([semanticKey isEqualToString:@"departureLocationDescription"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationLocationDescription"] & 1) != 0
    || ([semanticKey isEqualToString:@"transitProvider"] & 1) != 0
    || ([semanticKey isEqualToString:@"vehicleName"] & 1) != 0
    || ([semanticKey isEqualToString:@"vehicleNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"vehicleType"] & 1) != 0
    || ([semanticKey isEqualToString:@"boardingGroup"] & 1) != 0
    || ([semanticKey isEqualToString:@"boardingZone"] & 1) != 0
    || ([semanticKey isEqualToString:@"boardingSequenceNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"confirmationNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"transitStatus"] & 1) != 0
    || ([semanticKey isEqualToString:@"transitStatusReason"] & 1) != 0
    || ([semanticKey isEqualToString:@"membershipProgramName"] & 1) != 0
    || ([semanticKey isEqualToString:@"membershipProgramNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"membershipProgramStatus"] & 1) != 0
    || ([semanticKey isEqualToString:@"priorityStatus"] & 1) != 0
    || ([semanticKey isEqualToString:@"securityScreening"] & 1) != 0
    || ([semanticKey isEqualToString:@"flightCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"airlineCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureAirportCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureAirportName"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureCityName"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureTerminal"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureGate"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationAirportCode"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationAirportName"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationCityName"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationTerminal"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationGate"] & 1) != 0
    || ([semanticKey isEqualToString:@"departurePlatform"] & 1) != 0
    || ([semanticKey isEqualToString:@"departureStationName"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationPlatform"] & 1) != 0
    || ([semanticKey isEqualToString:@"destinationStationName"] & 1) != 0
    || ([semanticKey isEqualToString:@"carNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"eventName"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueName"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntrance"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntranceGate"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntranceDoor"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueEntrancePortal"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueRegionName"] & 1) != 0
    || ([semanticKey isEqualToString:@"venueRoom"] & 1) != 0
    || ([semanticKey isEqualToString:@"venuePhoneNumber"] & 1) != 0
    || ([semanticKey isEqualToString:@"venuePlaceID"] & 1) != 0
    || ([semanticKey isEqualToString:@"leagueName"] & 1) != 0
    || ([semanticKey isEqualToString:@"leagueAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"homeTeamLocation"] & 1) != 0
    || ([semanticKey isEqualToString:@"homeTeamName"] & 1) != 0
    || ([semanticKey isEqualToString:@"homeTeamAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"awayTeamLocation"] & 1) != 0
    || ([semanticKey isEqualToString:@"awayTeamName"] & 1) != 0
    || ([semanticKey isEqualToString:@"awayTeamAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"sportName"] & 1) != 0
    || ([semanticKey isEqualToString:@"genre"] & 1) != 0
    || ([semanticKey isEqualToString:@"eventType"] & 1) != 0
    || ([semanticKey isEqualToString:@"eventLiveMessage"] & 1) != 0
    || ([semanticKey isEqualToString:@"admissionLevel"] & 1) != 0
    || ([semanticKey isEqualToString:@"admissionLevelAbbreviation"] & 1) != 0
    || ([semanticKey isEqualToString:@"attendeeName"] & 1) != 0
    || ([semanticKey isEqualToString:@"entranceDescription"] & 1) != 0
    || ([semanticKey isEqualToString:@"additionalTicketAttributes"] & 1) != 0
    || [semanticKey isEqualToString:@"internationalDocumentsVerifiedDeclarationName"])
  {

LABEL_64:
    v11 = [(PKPass *)self _changeMessageForStringSemantic:semanticCopy newSemantic:newSemanticCopy];
LABEL_65:
    v12 = v11;
    goto LABEL_66;
  }

  v14 = [semanticKey isEqualToString:@"ticketFareClass"];

  if (v14)
  {
    goto LABEL_64;
  }

  v15 = semanticKey;
  if (([v15 isEqualToString:@"originalDepartureDate"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"currentDepartureDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"originalArrivalDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"currentArrivalDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"originalBoardingDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"currentBoardingDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"eventStartDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"venueDoorsOpenDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"venueGatesOpenDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"venueParkingLotsOpenDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"venueBoxOfficeOpenDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"venueFanZoneOpenDate") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"venueOpenDate") & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"venueCloseDate"))
  {

LABEL_86:
    v11 = [(PKPass *)self _changeMessageForDateSemantic:semanticCopy newSemantic:newSemanticCopy];
    goto LABEL_65;
  }

  v16 = [v15 isEqualToString:@"eventEndDate"];

  if (v16)
  {
    goto LABEL_86;
  }

  if ([v15 isEqualToString:@"eventStartDateInfo"])
  {
    v11 = [(PKPass *)self _changeMessageForEventDateInfoSemantic:semanticCopy newSemantic:newSemanticCopy];
    goto LABEL_65;
  }

  if ([v15 isEqualToString:@"passengerName"])
  {
    v11 = [(PKPass *)self _changeMessageForPersonNameComponentsSemantic:semanticCopy newSemantic:newSemanticCopy];
    goto LABEL_65;
  }

  v17 = v15;
  if ([v17 isEqualToString:@"seats"])
  {
    _os_feature_enabled_impl();

LABEL_98:
    v11 = [(PKPass *)self _changeMessageForDictionariesSemantic:semanticCopy newSemantic:newSemanticCopy passStyle:style];
    goto LABEL_65;
  }

  v18 = [v17 isEqualToString:@"wifiAccess"];
  v19 = _os_feature_enabled_impl();
  if (!v19 || (v18 & 1) != 0)
  {
    v20 = v19 | v18;
  }

  else
  {
    v20 = [v17 isEqualToString:@"airPlay"];
  }

  if (v20)
  {
    goto LABEL_98;
  }

  v21 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v17;
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring changeMessage formatting for unknown or unsupported semantic key %@.", &v22, 0xCu);
  }

  v12 = 0;
LABEL_66:

  return v12;
}

- (BOOL)hasFlightDetails
{
  style = [(PKPass *)self style];
  if (style < 0xE && ((0x23EFu >> style) & 1) != 0 || [(PKPass *)self transitType]!= 1 || ![(PKPass *)self flightNumber])
  {
    return 0;
  }

  flightCode = [(PKPass *)self flightCode];
  v5 = [flightCode length] != 0;

  return v5;
}

- (unint64_t)flightNumber
{
  v2 = [(PKPass *)self numberForSemanticKey:@"flightNumber"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSString)airlineCode
{
  v2 = [(PKPass *)self stringForSemanticKey:@"airlineCode"];
  uppercaseString = [v2 uppercaseString];

  return uppercaseString;
}

- (NSString)flightCode
{
  v3 = [(PKPass *)self stringForSemanticKey:@"flightCode"];
  v4 = v3;
  if (v3 && (v5 = [v3 length], v4, v5))
  {
    uppercaseString = [v4 uppercaseString];
  }

  else
  {
    airlineCode = [(PKPass *)self airlineCode];
    flightNumber = [(PKPass *)self flightNumber];
    uppercaseString = 0;
    if ([airlineCode length] && flightNumber)
    {
      uppercaseString = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", airlineCode, flightNumber];
    }
  }

  return uppercaseString;
}

- (void)loadFlightsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  flightNumber = [(PKPass *)self flightNumber];
  airlineCode = [(PKPass *)self airlineCode];
  v7 = [(PKPass *)self dateForSemanticKey:@"currentDepartureDate"];
  v8 = [(PKPass *)self dateForSemanticKey:@"originalDepartureDate"];
  v9 = [(PKPass *)self dateForSemanticKey:@"currentArrivalDate"];
  v10 = [(PKPass *)self dateForSemanticKey:@"originalArrivalDate"];
  v20 = v9;
  if (v7)
  {
    v11 = v10;
    v12 = 1;
    v9 = v7;
  }

  else if (v8)
  {
    v11 = v10;
    v12 = 1;
    v9 = v8;
  }

  else if (v9)
  {
    v11 = v10;
    v12 = 2;
  }

  else
  {
    if (!v10)
    {
      v11 = 0;
      v13 = 0;
      v12 = 3;
      goto LABEL_10;
    }

    v12 = 2;
    v11 = v10;
    v9 = v10;
  }

  v13 = v9;
LABEL_10:
  v14 = _MergedGlobals_178();
  v15 = off_1ED6D1140();
  v16 = [(objc_class *)v14 flightFactoryClassWithProvider:v15];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__PKPass_Flight__loadFlightsWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E79DDDE0;
  v22 = airlineCode;
  v23 = v13;
  v25 = flightNumber;
  v26 = v12;
  v24 = handlerCopy;
  v17 = handlerCopy;
  v18 = v13;
  v19 = airlineCode;
  [v16 loadFlightsWithNumber:flightNumber airlineCode:v19 date:v18 dateType:v12 completionHandler:v21];
}

void __51__PKPass_Flight__loadFlightsWithCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![v5 count])
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[7];
      v11 = a1[8];
      v12 = 134219010;
      v13 = v10;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Could not find flights matching flightNumber: %ld, airlineCode: %@, date: %@, dateType: %ld, error: %@", &v12, 0x34u);
    }
  }

  (*(a1[6] + 16))();
}

@end