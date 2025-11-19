@interface INInteraction(schema)
+ (id)fromSchemas:()schema;
- (id)toSchemas;
- (uint64_t)canConvertToSchemaOrg;
@end

@implementation INInteraction(schema)

- (uint64_t)canConvertToSchemaOrg
{
  v2 = [a1 intentResponse];
  if (v2)
  {
    v3 = [a1 intentResponse];
    v4 = [v3 conformsToProtocol:&unk_28479D600];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)toSchemas
{
  v2 = [a1 intentResponse];
  if (v2 && (v3 = v2, [a1 intentResponse], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "conformsToProtocol:", &unk_28479D600), v4, v3, v5))
  {
    v6 = [a1 intentResponse];
    v7 = [v6 toSchemas];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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