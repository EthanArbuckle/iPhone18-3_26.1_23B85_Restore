@interface DSError
+ (id)errorWithCode:(int64_t)code appName:(id)name serviceName:(id)serviceName underlyingErrors:(id)errors;
+ (id)errorWithCode:(int64_t)code sourceName:(id)name underlyingErrors:(id)errors;
@end

@implementation DSError

+ (id)errorWithCode:(int64_t)code sourceName:(id)name underlyingErrors:(id)errors
{
  nameCopy = name;
  errorsCopy = errors;
  v9 = descriptionForError(code);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (v9)
  {
    [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if ([errorsCopy count])
  {
    [v11 setObject:errorsCopy forKeyedSubscript:*MEMORY[0x277CCA578]];
  }

  if (nameCopy)
  {
    [v11 setObject:nameCopy forKeyedSubscript:@"DSErrorKeySourceName"];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:DSErrorDomain code:code userInfo:v11];

  return v12;
}

+ (id)errorWithCode:(int64_t)code appName:(id)name serviceName:(id)serviceName underlyingErrors:(id)errors
{
  nameCopy = name;
  serviceNameCopy = serviceName;
  errorsCopy = errors;
  v12 = descriptionForError(code);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = dictionary;
  if (v12)
  {
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if ([errorsCopy count])
  {
    [v14 setObject:errorsCopy forKeyedSubscript:*MEMORY[0x277CCA578]];
  }

  if (nameCopy)
  {
    [v14 setObject:nameCopy forKeyedSubscript:@"DSErrorKeyAppName"];
  }

  if (serviceNameCopy)
  {
    [v14 setObject:serviceNameCopy forKeyedSubscript:@"DSErrorKeyServiceName"];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:DSErrorDomain code:code userInfo:v14];

  return v15;
}

@end