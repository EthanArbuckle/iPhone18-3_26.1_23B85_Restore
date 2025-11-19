@interface FTGetRegionMetadataMessage
- (FTGetRegionMetadataMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
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
    v4 = [v3 lastObject];
    [(IDSBaseMessage *)v2 setTopic:v4];

    [(IDSBaseMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = FTGetRegionMetadataMessage;
  v4 = [(IDSBaseMessage *)&v8 copyWithZone:a3];
  v5 = [(FTGetRegionMetadataMessage *)self language];
  [v4 setLanguage:v5];

  v6 = [(FTGetRegionMetadataMessage *)self responseRegionInformation];
  [v4 setResponseRegionInformation:v6];

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
  v4 = [(FTGetRegionMetadataMessage *)self language];
  if (v4)
  {
    CFDictionarySetValue(v3, @"accept-language", v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195964264();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"regions"];
  [(FTGetRegionMetadataMessage *)self setResponseRegionInformation:v4];
}

@end