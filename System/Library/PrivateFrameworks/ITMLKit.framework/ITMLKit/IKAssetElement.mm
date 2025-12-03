@interface IKAssetElement
- (BOOL)infiniteDuration;
- (NSString)actionParams;
- (NSString)adamID;
- (NSString)bookmarkID;
- (NSString)contentID;
- (NSString)externalID;
- (NSString)serviceID;
- (NSURL)extrasURL;
- (NSURL)url;
- (id)_numberForAttribute:(id)attribute;
- (int64_t)keyDelivery;
- (int64_t)type;
@end

@implementation IKAssetElement

- (NSURL)url
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"src"];

  if ([v3 length])
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)type
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"type"];

  if ([v3 isEqualToString:@"file"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"hls"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)keyDelivery
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"keyDelivery"];
  v4 = [v3 isEqualToString:@"itunes"];

  return v4;
}

- (BOOL)infiniteDuration
{
  attributes = [(IKViewElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"type"];
  v5 = [v4 isEqualToString:@"hls"];

  if (!v5)
  {
    return 0;
  }

  attributes2 = [(IKViewElement *)self attributes];
  v7 = [attributes2 objectForKeyedSubscript:@"infiniteDuration"];
  ik_attributeBoolValue = [v7 ik_attributeBoolValue];

  return ik_attributeBoolValue;
}

- (NSString)actionParams
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"actionParams"];

  return v3;
}

- (NSString)adamID
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"adamID"];

  return v3;
}

- (NSURL)extrasURL
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"extrasURL"];

  if ([v3 length])
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)bookmarkID
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"bookmarkID"];

  return v3;
}

- (NSString)contentID
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"contentID"];

  return v3;
}

- (NSString)externalID
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"externalID"];

  return v3;
}

- (NSString)serviceID
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"serviceID"];

  return v3;
}

- (id)_numberForAttribute:(id)attribute
{
  attributeCopy = attribute;
  attributes = [(IKViewElement *)self attributes];
  v6 = [attributes objectForKeyedSubscript:attributeCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCA980] decimalNumberWithString:v6];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end