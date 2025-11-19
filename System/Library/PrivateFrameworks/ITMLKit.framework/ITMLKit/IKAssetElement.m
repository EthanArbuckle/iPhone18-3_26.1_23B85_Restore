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
- (id)_numberForAttribute:(id)a3;
- (int64_t)keyDelivery;
- (int64_t)type;
@end

@implementation IKAssetElement

- (NSURL)url
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"src"];

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
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"type"];

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
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"keyDelivery"];
  v4 = [v3 isEqualToString:@"itunes"];

  return v4;
}

- (BOOL)infiniteDuration
{
  v3 = [(IKViewElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"type"];
  v5 = [v4 isEqualToString:@"hls"];

  if (!v5)
  {
    return 0;
  }

  v6 = [(IKViewElement *)self attributes];
  v7 = [v6 objectForKeyedSubscript:@"infiniteDuration"];
  v8 = [v7 ik_attributeBoolValue];

  return v8;
}

- (NSString)actionParams
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"actionParams"];

  return v3;
}

- (NSString)adamID
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"adamID"];

  return v3;
}

- (NSURL)extrasURL
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"extrasURL"];

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
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"bookmarkID"];

  return v3;
}

- (NSString)contentID
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"contentID"];

  return v3;
}

- (NSString)externalID
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"externalID"];

  return v3;
}

- (NSString)serviceID
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"serviceID"];

  return v3;
}

- (id)_numberForAttribute:(id)a3
{
  v4 = a3;
  v5 = [(IKViewElement *)self attributes];
  v6 = [v5 objectForKeyedSubscript:v4];

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