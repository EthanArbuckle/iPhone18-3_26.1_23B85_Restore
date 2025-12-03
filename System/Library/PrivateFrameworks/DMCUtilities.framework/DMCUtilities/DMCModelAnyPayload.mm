@interface DMCModelAnyPayload
+ (id)buildFromDictionary:(id)dictionary;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DMCModelAnyPayload

+ (id)buildFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  [v4 loadFromDictionary:dictionaryCopy serializationType:0 error:0];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v6 = [dictionary copy];
  dictKeys = self->_dictKeys;
  self->_dictKeys = v6;

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = DMCModelAnyPayload;
  v4 = [(DMCModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_dictKeys copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end