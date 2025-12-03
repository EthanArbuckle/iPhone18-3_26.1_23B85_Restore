@interface INInteraction(schema)
+ (id)fromSchemas:()schema;
- (id)toSchemas;
- (uint64_t)canConvertToSchemaOrg;
@end

@implementation INInteraction(schema)

- (uint64_t)canConvertToSchemaOrg
{
  intentResponse = [self intentResponse];
  if (intentResponse)
  {
    intentResponse2 = [self intentResponse];
    v4 = [intentResponse2 conformsToProtocol:&unk_28479D600];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)toSchemas
{
  intentResponse = [self intentResponse];
  if (intentResponse && (v3 = intentResponse, [self intentResponse], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "conformsToProtocol:", &unk_28479D600), v4, v3, v5))
  {
    intentResponse2 = [self intentResponse];
    toSchemas = [intentResponse2 toSchemas];
  }

  else
  {
    toSchemas = 0;
  }

  return toSchemas;
}

+ (id)fromSchemas:()schema
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CD3C78] fromSchemas:v3];

  v6 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v4 response:v5];

  return v6;
}

@end