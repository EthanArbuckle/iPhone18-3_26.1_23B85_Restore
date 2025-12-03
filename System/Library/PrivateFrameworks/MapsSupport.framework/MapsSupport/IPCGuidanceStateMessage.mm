@interface IPCGuidanceStateMessage
- (IPCGuidanceStateMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCGuidanceStateMessage

- (IPCGuidanceStateMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = IPCGuidanceStateMessage;
  v5 = [(IPCMessageObject *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCGuidanceStateMessageIncludeRouteKey"];
    -[IPCGuidanceStateMessage setIncludeRoute:](v5, "setIncludeRoute:", [v6 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryValue
{
  v8.receiver = self;
  v8.super_class = IPCGuidanceStateMessage;
  dictionaryValue = [(IPCMessageObject *)&v8 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [NSNumber numberWithBool:[(IPCGuidanceStateMessage *)self includeRoute]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCGuidanceStateMessageIncludeRouteKey"];

  v6 = [v4 copy];

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCGuidanceStateMessage;
  v3 = [(IPCGuidanceStateMessage *)&v7 description];
  dictionaryValue = [(IPCGuidanceStateMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

@end