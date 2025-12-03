@interface CUIThemeSchema
+ (id)defaultSchema;
+ (id)schemaForPlatform:(int64_t)platform;
- (const)partDefinitionWithName:(id)name forElementDefinition:(id *)definition;
- (unint64_t)dimensionDefinitionCountForPartDefinition:(id *)definition;
- (unint64_t)partDefinitionCountForEffectDefinition:(id *)definition;
- (unint64_t)partDefinitionCountForElementDefinition:(id *)definition;
- (unint64_t)partDefinitionCountForMaterialDefinition:(id *)definition;
@end

@implementation CUIThemeSchema

+ (id)defaultSchema
{
  v3 = CUICurrentPlatform();

  return [self schemaForPlatform:v3];
}

+ (id)schemaForPlatform:(int64_t)platform
{
  if (platform > 5 || (v6 = objc_alloc_init(*off_1E72554E0[platform])) == 0)
  {
    [(CUIThemeSchema *)platform schemaForPlatform:a2, self];
    v6 = 0;
  }

  return v6;
}

- (unint64_t)partDefinitionCountForElementDefinition:(id *)definition
{
  if (!definition)
  {
    return 0;
  }

  var4 = definition->var4;
  result = -1;
  do
  {
    var0 = var4->var0;
    ++result;
    ++var4;
  }

  while (var0);
  return result;
}

- (unint64_t)dimensionDefinitionCountForPartDefinition:(id *)definition
{
  if (!definition)
  {
    return 0;
  }

  var5 = definition->var5;
  result = -1;
  do
  {
    var0 = var5->var0;
    ++var5;
    ++result;
  }

  while (var0);
  return result;
}

- (const)partDefinitionWithName:(id)name forElementDefinition:(id *)definition
{
  uTF8String = [name UTF8String];
  v13 = uTF8String;
  if (!definition || !uTF8String)
  {
    [+[NSException exceptionWithName:reason:userInfo:](NSException raise:NSInvalidArgumentException];
  }

  var0 = definition->var4[0].var0;
  if (!var0)
  {
    goto LABEL_9;
  }

  v15 = &definition[-1].var4[7].var2[4];
  do
  {
    v16 = strcmp(var0, v13);
    v17 = v15 + 1;
    if (!v16)
    {
      break;
    }

    var0 = v15[2].var0;
    ++v15;
  }

  while (var0);
  if (v16)
  {
LABEL_9:
    _CUILog(1, "Unable to find partDefinition for Name: %@", v7, v8, v9, v10, v11, v12, name);
    return 0;
  }

  return v17;
}

- (unint64_t)partDefinitionCountForEffectDefinition:(id *)definition
{
  if (!definition)
  {
    return 0;
  }

  var4 = definition->var4;
  result = -1;
  do
  {
    var0 = var4->var0;
    ++result;
    ++var4;
  }

  while (var0);
  return result;
}

- (unint64_t)partDefinitionCountForMaterialDefinition:(id *)definition
{
  if (!definition)
  {
    return 0;
  }

  var4 = definition->var4;
  result = -1;
  do
  {
    var0 = var4->var0;
    ++result;
    ++var4;
  }

  while (var0);
  return result;
}

@end