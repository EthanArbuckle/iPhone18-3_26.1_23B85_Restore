@interface _CUIiPhoneOSThemeSchema
- (const)_sortedEffectDefinitions;
- (const)_sortedElementDefinitions;
- (const)categoryForElementDefinition:(id *)definition;
- (const)effectDefinitionAtIndex:(unint64_t)index;
- (const)effectDefinitionWithName:(id)name;
- (const)elementCategoryAtIndex:(unint64_t)index;
- (const)elementDefinitionAtIndex:(unint64_t)index;
- (const)elementDefinitionWithName:(id)name;
@end

@implementation _CUIiPhoneOSThemeSchema

- (const)elementCategoryAtIndex:(unint64_t)index
{
  if ([(_CUIiPhoneOSThemeSchema *)self elementCategoryCount]+ 1 > index)
  {
    return (&gElementCategoriesEmbedded + 24 * index);
  }

  _CUILog(1, "Error: index out of range for elementCategoryAtIndex:", v4, v5, v6, v7, v8, v9, v11);
  return 0;
}

- (const)elementDefinitionAtIndex:(unint64_t)index
{
  if ([(_CUIiPhoneOSThemeSchema *)self elementDefinitionCount]> index)
  {
    return &gElementDefinitionsEmbedded[444 * index];
  }

  _CUILog(1, "Error: index out of range for elementDefinitionsAtIndex:", v4, v5, v6, v7, v8, v9, v11);
  return 0;
}

- (const)_sortedElementDefinitions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52___CUIiPhoneOSThemeSchema__sortedElementDefinitions__block_invoke;
  block[3] = &unk_1E7251540;
  block[4] = self;
  if (_sortedElementDefinitions_sortOnce != -1)
  {
    dispatch_once(&_sortedElementDefinitions_sortOnce, block);
  }

  return _sortedElementDefinitions__sortedElements;
}

- (const)elementDefinitionWithName:(id)name
{
  uTF8String = [name UTF8String];
  if (uTF8String && !strcmp("Named Asset", uTF8String))
  {
    return gElementDefinitionsEmbedded;
  }

  _CUILog(1, "Unable to find elementDefinition for Name: %@", v5, v6, v7, v8, v9, v10, name);
  return 0;
}

- (const)categoryForElementDefinition:(id *)definition
{
  if (definition->var3 >= 7)
  {
    var3 = 5;
  }

  else
  {
    var3 = definition->var3;
  }

  if ([(_CUIiPhoneOSThemeSchema *)self elementCategoryCount])
  {
    v11 = 0;
    while (1)
    {
      result = [(_CUIiPhoneOSThemeSchema *)self elementCategoryAtIndex:v11];
      if (result->var0 == var3)
      {
        break;
      }

      if (++v11 >= [(_CUIiPhoneOSThemeSchema *)self elementCategoryCount])
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    _CUILog(1, "Unable to find category definition for ID: %ld", v5, v6, v7, v8, v9, v10, var3);
    return 0;
  }

  return result;
}

- (const)effectDefinitionAtIndex:(unint64_t)index
{
  if ([(_CUIiPhoneOSThemeSchema *)self elementDefinitionCount]> index)
  {
    return &gEffectDefinitionsEmbedded[444 * index];
  }

  _CUILog(1, "Error: index out of range for effectDefinitionAtIndex:", v4, v5, v6, v7, v8, v9, v11);
  return 0;
}

- (const)_sortedEffectDefinitions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51___CUIiPhoneOSThemeSchema__sortedEffectDefinitions__block_invoke;
  block[3] = &unk_1E7251540;
  block[4] = self;
  if (_sortedEffectDefinitions_sortOnce != -1)
  {
    dispatch_once(&_sortedEffectDefinitions_sortOnce, block);
  }

  return _sortedEffectDefinitions__sortedEffects;
}

- (const)effectDefinitionWithName:(id)name
{
  uTF8String = [name UTF8String];
  if (uTF8String && !strcmp("Named Effect", uTF8String))
  {
    return gEffectDefinitionsEmbedded;
  }

  _CUILog(1, "Unable to find elementDefinition for Name: %@", v5, v6, v7, v8, v9, v10, name);
  return 0;
}

@end