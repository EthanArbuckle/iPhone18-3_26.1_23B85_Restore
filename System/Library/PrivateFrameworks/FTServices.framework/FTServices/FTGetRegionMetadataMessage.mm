@interface FTGetRegionMetadataMessage
- (FTGetRegionMetadataMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTGetRegionMetadataMessage

- (FTGetRegionMetadataMessage)init
{
  v6.receiver = self;
  v6.super_class = FTGetRegionMetadataMessage;
  v2 = [(IDSBaseMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    lastObject = [v3 lastObject];
    [(IDSBaseMessage *)v2 setTopic:lastObject];

    [(IDSBaseMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = FTGetRegionMetadataMessage;
  v4 = [(IDSBaseMessage *)&v8 copyWithZone:zone];
  language = [(FTGetRegionMetadataMessage *)self language];
  [v4 setLanguage:language];

  responseRegionInformation = [(FTGetRegionMetadataMessage *)self responseRegionInformation];
  [v4 setResponseRegionInformation:responseRegionInformation];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:@"accept-language"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  language = [(FTGetRegionMetadataMessage *)self language];
  if (language)
  {
    CFDictionarySetValue(v3, @"accept-language", language);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195964264();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"regions"];
  [(FTGetRegionMetadataMessage *)self setResponseRegionInformation:v4];
}

@end