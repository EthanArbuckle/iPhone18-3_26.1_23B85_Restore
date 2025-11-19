@interface DMCModelAnyPayload
+ (id)buildFromDictionary:(id)a3;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DMCModelAnyPayload

+ (id)buildFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 loadFromDictionary:v3 serializationType:0 error:0];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v6 = [a3 copy];
  dictKeys = self->_dictKeys;
  self->_dictKeys = v6;

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = DMCModelAnyPayload;
  v4 = [(DMCModelPayloadBase *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_dictKeys copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end