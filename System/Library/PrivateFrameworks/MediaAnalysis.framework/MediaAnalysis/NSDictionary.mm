@interface NSDictionary
- (BOOL)vcp_isValidEffectsResult;
- (id)vcp_effectsResult;
- (id)vcp_recipe;
- (unint64_t)vcp_longExposureSugestionState;
- (unint64_t)vcp_loopSugestionState;
@end

@implementation NSDictionary

- (id)vcp_effectsResult
{
  vcp_results = [(NSDictionary *)self vcp_results];
  v3 = [vcp_results objectForKeyedSubscript:MediaAnalysisLivePhotoEffectsResultsKey];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

  return v5;
}

- (BOOL)vcp_isValidEffectsResult
{
  v3 = [(NSDictionary *)self objectForKey:MediaAnalysisResultLoopSuggestionStateAttributeKey];
  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKey:MediaAnalysisResultLongExposureSuggestionStateAttributeKey];
    if (v4)
    {
      v5 = [(NSDictionary *)self objectForKey:MediaAnalysisResultLivePhotoEffectsRecipeAttributeKey];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)vcp_loopSugestionState
{
  v2 = [(NSDictionary *)self objectForKey:MediaAnalysisResultLoopSuggestionStateAttributeKey];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)vcp_longExposureSugestionState
{
  v2 = [(NSDictionary *)self objectForKey:MediaAnalysisResultLongExposureSuggestionStateAttributeKey];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)vcp_recipe
{
  v2 = [(NSDictionary *)self objectForKey:MediaAnalysisResultLivePhotoEffectsRecipeAttributeKey];
  v3 = [[VCPProtoLivePhotoEffectsRecipe alloc] initWithData:v2];
  exportToLegacyDictionary = [v3 exportToLegacyDictionary];

  return exportToLegacyDictionary;
}

@end