@interface DMCProtocolWellKnownResponse
+ (id)requestWithServers:(id)servers;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation DMCProtocolWellKnownResponse

+ (id)requestWithServers:(id)servers
{
  serversCopy = servers;
  v4 = objc_opt_new();
  [v4 setResponseServers:serversCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  LOWORD(v10) = type;
  LOBYTE(error) = [(DMCModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Servers" forKeyPath:@"responseServers" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v10 error:error];

  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseServers = [(DMCProtocolWellKnownResponse *)self responseServers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__DMCProtocolWellKnownResponse_serializeWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e76___NSDictionary_16__0__DMCProtocolWellKnownResponse_WellKnownResponseServer_8l;
  typeCopy = type;
  [(DMCModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Servers" value:responseServers itemSerializer:v9 isRequired:1 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = DMCProtocolWellKnownResponse;
  v4 = [(DMCModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_responseServers copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end