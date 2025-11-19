@interface MCRestrictionUtilities
+ (id)intersectionFeatureForPayloadRestrictionKey:(id)a3;
+ (id)intersectionFeaturesWithPayloadRestictionKeyAlias;
+ (id)intersectionPayloadRestrictionKeysForFeature:(id)a3;
@end

@implementation MCRestrictionUtilities

+ (id)intersectionFeaturesWithPayloadRestictionKeyAlias
{
  v2 = _intersectionFeaturesToAlias();
  v3 = [v2 allKeys];

  return v3;
}

+ (id)intersectionPayloadRestrictionKeysForFeature:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _intersectionFeaturesToAlias();
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v11[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)intersectionFeatureForPayloadRestrictionKey:(id)a3
{
  v3 = _intersectionAliasToFeatures_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[MCRestrictionUtilities intersectionFeatureForPayloadRestrictionKey:];
  }

  v5 = [_intersectionAliasToFeatures_dict objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

@end