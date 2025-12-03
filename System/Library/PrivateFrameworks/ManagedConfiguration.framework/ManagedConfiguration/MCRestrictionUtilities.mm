@interface MCRestrictionUtilities
+ (id)intersectionFeatureForPayloadRestrictionKey:(id)key;
+ (id)intersectionFeaturesWithPayloadRestictionKeyAlias;
+ (id)intersectionPayloadRestrictionKeysForFeature:(id)feature;
@end

@implementation MCRestrictionUtilities

+ (id)intersectionFeaturesWithPayloadRestictionKeyAlias
{
  v2 = _intersectionFeaturesToAlias();
  allKeys = [v2 allKeys];

  return allKeys;
}

+ (id)intersectionPayloadRestrictionKeysForFeature:(id)feature
{
  v11[1] = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  v4 = _intersectionFeaturesToAlias();
  v5 = [v4 objectForKey:featureCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v11[0] = featureCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)intersectionFeatureForPayloadRestrictionKey:(id)key
{
  v3 = _intersectionAliasToFeatures_onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    +[MCRestrictionUtilities intersectionFeatureForPayloadRestrictionKey:];
  }

  v5 = [_intersectionAliasToFeatures_dict objectForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = keyCopy;
  }

  v8 = v7;

  return v7;
}

@end