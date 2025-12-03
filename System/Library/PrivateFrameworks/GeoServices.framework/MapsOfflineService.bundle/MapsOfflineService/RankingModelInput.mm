@interface RankingModelInput
- (RankingModelInput)initWithPOPULARITY:(double)y DISTANCE:(double)e SCORE:(double)rE NORMALIZED_RATING_SCORE:(double)oRE COUNTRY_CODE:(double)dE ADDRESS_ACCURACY:(double)cY ADDRESS_FEATURE_TYPE:(double)pE NUM_TOKENS_MATCH_QUERY_RESULT:(double)self0 TYPE_OF_QUERY_RESULT_MATCH:(double)self1 IS_CATEGORY_QUERY:(double)self2 CATEGORY_TRIGGER_POPULARITY:(double)self3 JACCARD_SIMILARITY_UNION:(double)self4 JACCARD_SIMILARITY_RESULT:(double)self5 IS_NEGATIVE_CATEGORY:(double)self6 IS_PREFERRED_LANGUAGE:(double)self7 DEVICE_LOCALE:(double)self8 SUBSTRING_SIMILARITY:(double)self9 PREFIX_SIMILARITY:(double)rITY DIST_USER_TO_VIEWPORT:(double)rT IS_USER_IN_VIEWPORT:(double)oRT IS_DEVICELOCATION_IN_VIEWPORT:(double)pORT DIST_RESULT_TO_VIEWPORT:(double)wPORT IS_RESULT_IN_VIEWPORT:(double)eWPORT TIME_SINCE_VIEWPORT_CHANGED:(double)d IS_VIEWPORT_FRESH:(double)sH CATEGORY_MATCH_NORMALIZED_SCORE:(double)cORE;
- (id)featureValueForName:(id)name;
@end

@implementation RankingModelInput

- (RankingModelInput)initWithPOPULARITY:(double)y DISTANCE:(double)e SCORE:(double)rE NORMALIZED_RATING_SCORE:(double)oRE COUNTRY_CODE:(double)dE ADDRESS_ACCURACY:(double)cY ADDRESS_FEATURE_TYPE:(double)pE NUM_TOKENS_MATCH_QUERY_RESULT:(double)self0 TYPE_OF_QUERY_RESULT_MATCH:(double)self1 IS_CATEGORY_QUERY:(double)self2 CATEGORY_TRIGGER_POPULARITY:(double)self3 JACCARD_SIMILARITY_UNION:(double)self4 JACCARD_SIMILARITY_RESULT:(double)self5 IS_NEGATIVE_CATEGORY:(double)self6 IS_PREFERRED_LANGUAGE:(double)self7 DEVICE_LOCALE:(double)self8 SUBSTRING_SIMILARITY:(double)self9 PREFIX_SIMILARITY:(double)rITY DIST_USER_TO_VIEWPORT:(double)rT IS_USER_IN_VIEWPORT:(double)oRT IS_DEVICELOCATION_IN_VIEWPORT:(double)pORT DIST_RESULT_TO_VIEWPORT:(double)wPORT IS_RESULT_IN_VIEWPORT:(double)eWPORT TIME_SINCE_VIEWPORT_CHANGED:(double)d IS_VIEWPORT_FRESH:(double)sH CATEGORY_MATCH_NORMALIZED_SCORE:(double)cORE
{
  v37.receiver = self;
  v37.super_class = RankingModelInput;
  result = [(RankingModelInput *)&v37 init];
  if (result)
  {
    result->_POPULARITY = y;
    result->_DISTANCE = e;
    result->_SCORE = rE;
    result->_NORMALIZED_RATING_SCORE = oRE;
    result->_COUNTRY_CODE = dE;
    result->_ADDRESS_ACCURACY = cY;
    result->_ADDRESS_FEATURE_TYPE = pE;
    result->_NUM_TOKENS_MATCH_QUERY_RESULT = t;
    result->_TYPE_OF_QUERY_RESULT_MATCH = h;
    result->_IS_CATEGORY_QUERY = rY;
    result->_CATEGORY_TRIGGER_POPULARITY = tY;
    result->_JACCARD_SIMILARITY_UNION = n;
    result->_JACCARD_SIMILARITY_RESULT = lT;
    result->_IS_NEGATIVE_CATEGORY = oRY;
    result->_IS_PREFERRED_LANGUAGE = gE;
    result->_DEVICE_LOCALE = lE;
    result->_SUBSTRING_SIMILARITY = iTY;
    result->_PREFIX_SIMILARITY = rITY;
    result->_DIST_USER_TO_VIEWPORT = rT;
    result->_IS_USER_IN_VIEWPORT = oRT;
    result->_IS_DEVICELOCATION_IN_VIEWPORT = pORT;
    result->_DIST_RESULT_TO_VIEWPORT = wPORT;
    result->_IS_RESULT_IN_VIEWPORT = eWPORT;
    result->_TIME_SINCE_VIEWPORT_CHANGED = d;
    result->_IS_VIEWPORT_FRESH = sH;
    result->_CATEGORY_MATCH_NORMALIZED_SCORE = cORE;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"POPULARITY"])
  {
    [(RankingModelInput *)self POPULARITY];
LABEL_53:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_54;
  }

  if ([nameCopy isEqualToString:@"DISTANCE"])
  {
    [(RankingModelInput *)self DISTANCE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"SCORE"])
  {
    [(RankingModelInput *)self SCORE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"NORMALIZED_RATING_SCORE"])
  {
    [(RankingModelInput *)self NORMALIZED_RATING_SCORE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"COUNTRY_CODE"])
  {
    [(RankingModelInput *)self COUNTRY_CODE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"ADDRESS_ACCURACY"])
  {
    [(RankingModelInput *)self ADDRESS_ACCURACY];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"ADDRESS_FEATURE_TYPE"])
  {
    [(RankingModelInput *)self ADDRESS_FEATURE_TYPE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"NUM_TOKENS_MATCH_QUERY_RESULT"])
  {
    [(RankingModelInput *)self NUM_TOKENS_MATCH_QUERY_RESULT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"TYPE_OF_QUERY_RESULT_MATCH"])
  {
    [(RankingModelInput *)self TYPE_OF_QUERY_RESULT_MATCH];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_CATEGORY_QUERY"])
  {
    [(RankingModelInput *)self IS_CATEGORY_QUERY];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"CATEGORY_TRIGGER_POPULARITY"])
  {
    [(RankingModelInput *)self CATEGORY_TRIGGER_POPULARITY];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"JACCARD_SIMILARITY_UNION"])
  {
    [(RankingModelInput *)self JACCARD_SIMILARITY_UNION];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"JACCARD_SIMILARITY_RESULT"])
  {
    [(RankingModelInput *)self JACCARD_SIMILARITY_RESULT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_NEGATIVE_CATEGORY"])
  {
    [(RankingModelInput *)self IS_NEGATIVE_CATEGORY];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_PREFERRED_LANGUAGE"])
  {
    [(RankingModelInput *)self IS_PREFERRED_LANGUAGE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"DEVICE_LOCALE"])
  {
    [(RankingModelInput *)self DEVICE_LOCALE];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"SUBSTRING_SIMILARITY"])
  {
    [(RankingModelInput *)self SUBSTRING_SIMILARITY];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"PREFIX_SIMILARITY"])
  {
    [(RankingModelInput *)self PREFIX_SIMILARITY];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"DIST_USER_TO_VIEWPORT"])
  {
    [(RankingModelInput *)self DIST_USER_TO_VIEWPORT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_USER_IN_VIEWPORT"])
  {
    [(RankingModelInput *)self IS_USER_IN_VIEWPORT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_DEVICELOCATION_IN_VIEWPORT"])
  {
    [(RankingModelInput *)self IS_DEVICELOCATION_IN_VIEWPORT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"DIST_RESULT_TO_VIEWPORT"])
  {
    [(RankingModelInput *)self DIST_RESULT_TO_VIEWPORT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_RESULT_IN_VIEWPORT"])
  {
    [(RankingModelInput *)self IS_RESULT_IN_VIEWPORT];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"TIME_SINCE_VIEWPORT_CHANGED"])
  {
    [(RankingModelInput *)self TIME_SINCE_VIEWPORT_CHANGED];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"IS_VIEWPORT_FRESH"])
  {
    [(RankingModelInput *)self IS_VIEWPORT_FRESH];
    goto LABEL_53;
  }

  if ([nameCopy isEqualToString:@"CATEGORY_MATCH_NORMALIZED_SCORE"])
  {
    [(RankingModelInput *)self CATEGORY_MATCH_NORMALIZED_SCORE];
    goto LABEL_53;
  }

  v5 = 0;
LABEL_54:

  return v5;
}

@end