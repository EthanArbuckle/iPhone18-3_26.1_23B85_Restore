@interface MOSuggestionAssetImageURLPair
- (BOOL)setURLsWithAppendix:(id)a3;
- (BOOL)writeImageToURLs:(id)a3;
- (MOSuggestionAssetImageURLPair)initWithCoder:(id)a3;
- (id)constructedImage;
- (id)init:(id)a3 urlAppendix:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetImageURLPair

- (id)init:(id)a3 urlAppendix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetImageURLPair;
  v8 = [(MOSuggestionAssetImageURLPair *)&v12 init];
  v9 = v8;
  if (v8 && [(MOSuggestionAssetImageURLPair *)v8 setURLsWithAppendix:v7]&& [(MOSuggestionAssetImageURLPair *)v9 writeImageToURLs:v6])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setURLsWithAppendix:(id)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = NSTemporaryDirectory();
  v8 = [v6 initFileURLWithPath:v7];

  v9 = [v5 stringByAppendingString:@"_light.png"];
  v10 = [v5 stringByAppendingString:@"_dark.png"];

  v11 = [v8 URLByAppendingPathComponent:v9];
  lightURL = self->_lightURL;
  self->_lightURL = v11;

  v13 = [v8 URLByAppendingPathComponent:v10];
  darkURL = self->_darkURL;
  self->_darkURL = v13;

  if (!self->_lightURL)
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionAssetImageURLPair setURLsWithAppendix:];
    }

    goto LABEL_8;
  }

  if (!self->_darkURL)
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionAssetImageURLPair setURLsWithAppendix:];
    }

LABEL_8:

    v15 = 0;
    goto LABEL_9;
  }

  v15 = 1;
LABEL_9:

  return v15;
}

- (BOOL)writeImageToURLs:(id)a3
{
  v4 = a3;
  v5 = [v4 imageAsset];
  v6 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v7 = [v5 imageWithTraitCollection:v6];

  v8 = [v4 imageAsset];

  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v10 = [v8 imageWithTraitCollection:v9];

  if (v7)
  {
    if (v10)
    {
      v11 = UIImagePNGRepresentation(v7);
      v12 = UIImagePNGRepresentation(v10);
      if (([v11 writeToURL:self->_lightURL atomically:1]& 1) != 0)
      {
        darkURL = self->_darkURL;
        v14 = 1;
        if ([v12 writeToURL:darkURL atomically:1])
        {
LABEL_15:

          goto LABEL_16;
        }

        v15 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MOSuggestionAssetImageURLPair writeImageToURLs:];
        }
      }

      else
      {
        v15 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MOSuggestionAssetImageURLPair writeImageToURLs:];
        }
      }

      v14 = 0;
      goto LABEL_15;
    }

    v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionAssetImageURLPair writeImageToURLs:];
    }
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionAssetImageURLPair writeImageToURLs:];
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)constructedImage
{
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_lightURL];
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_darkURL];
  if (v3)
  {
    v5 = [MEMORY[0x277D755B8] imageWithData:v3];
    v6 = [MEMORY[0x277D755B8] imageWithData:v4];
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        v8 = v5;
        v9 = [v8 imageAsset];
        v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
        [v9 registerImage:v8 withTraitCollection:v10];

        v11 = [v8 imageAsset];
        v12 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
        [v11 registerImage:v7 withTraitCollection:v12];

LABEL_13:
        goto LABEL_14;
      }

      v13 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetImageURLPair constructedImage];
      }
    }

    else
    {
      v13 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetImageURLPair constructedImage];
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MOSuggestionAssetImageURLPair constructedImage];
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  lightURL = self->_lightURL;
  v5 = a3;
  [v5 encodeObject:lightURL forKey:@"kCoderKeyLightURL"];
  [v5 encodeObject:self->_darkURL forKey:@"kCoderKeyDarkURL"];
}

- (MOSuggestionAssetImageURLPair)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOSuggestionAssetImageURLPair;
  v5 = [(MOSuggestionAssetImageURLPair *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyLightURL"];
    lightURL = v5->_lightURL;
    v5->_lightURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyDarkURL"];
    darkURL = v5->_darkURL;
    v5->_darkURL = v8;
  }

  return v5;
}

@end