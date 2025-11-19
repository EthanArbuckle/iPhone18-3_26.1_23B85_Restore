@interface DMCProtocolWellKnownResponse
+ (id)requestWithServers:(id)a3;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation DMCProtocolWellKnownResponse

+ (id)requestWithServers:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setResponseServers:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  LOWORD(v10) = a4;
  LOBYTE(a5) = [(DMCModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Servers" forKeyPath:@"responseServers" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v10 error:a5];

  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(DMCProtocolWellKnownResponse *)self responseServers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__DMCProtocolWellKnownResponse_serializeWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e76___NSDictionary_16__0__DMCProtocolWellKnownResponse_WellKnownResponseServer_8l;
  v10 = a3;
  [(DMCModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Servers" value:v6 itemSerializer:v9 isRequired:1 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = DMCProtocolWellKnownResponse;
  v4 = [(DMCModelPayloadBase *)&v8 copyWithZone:a3];
  v5 = [(NSArray *)self->_responseServers copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end