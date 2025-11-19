@interface _CPQueryUnderstandingParse
- (BOOL)isEqual:(id)a3;
- (_CPQueryUnderstandingParse)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPQueryUnderstandingParse

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  queryIntentType = self->_queryIntentType;
  if (queryIntentType != [v4 queryIntentType])
  {
    goto LABEL_21;
  }

  hasUnspecifiedTokens = self->_hasUnspecifiedTokens;
  if (hasUnspecifiedTokens != [v4 hasUnspecifiedTokens])
  {
    goto LABEL_21;
  }

  hasSortCriteriaTokens = self->_hasSortCriteriaTokens;
  if (hasSortCriteriaTokens != [v4 hasSortCriteriaTokens])
  {
    goto LABEL_21;
  }

  hasLocationTokens = self->_hasLocationTokens;
  if (hasLocationTokens != [v4 hasLocationTokens])
  {
    goto LABEL_21;
  }

  hasActionTokens = self->_hasActionTokens;
  if (hasActionTokens != [v4 hasActionTokens])
  {
    goto LABEL_21;
  }

  hasMediaTypeTokens = self->_hasMediaTypeTokens;
  if (hasMediaTypeTokens != [v4 hasMediaTypeTokens])
  {
    goto LABEL_21;
  }

  hasVisualQualityTokens = self->_hasVisualQualityTokens;
  if (hasVisualQualityTokens != [v4 hasVisualQualityTokens])
  {
    goto LABEL_21;
  }

  hasNounTokens = self->_hasNounTokens;
  if (hasNounTokens != [v4 hasNounTokens])
  {
    goto LABEL_21;
  }

  hasTimeTokens = self->_hasTimeTokens;
  if (hasTimeTokens != [v4 hasTimeTokens])
  {
    goto LABEL_21;
  }

  hasEventTokens = self->_hasEventTokens;
  if (hasEventTokens != [v4 hasEventTokens])
  {
    goto LABEL_21;
  }

  hasGenericLocationTokens = self->_hasGenericLocationTokens;
  if (hasGenericLocationTokens != [v4 hasGenericLocationTokens])
  {
    goto LABEL_21;
  }

  hasCaptureDeviceTokens = self->_hasCaptureDeviceTokens;
  if (hasCaptureDeviceTokens == [v4 hasCaptureDeviceTokens] && (hasFavoritedTokens = self->_hasFavoritedTokens, hasFavoritedTokens == objc_msgSend(v4, "hasFavoritedTokens")) && (hasSourceAppTokens = self->_hasSourceAppTokens, hasSourceAppTokens == objc_msgSend(v4, "hasSourceAppTokens")) && (hasPersonTokens = self->_hasPersonTokens, hasPersonTokens == objc_msgSend(v4, "hasPersonTokens")) && (hasPersonSenderTokens = self->_hasPersonSenderTokens, hasPersonSenderTokens == objc_msgSend(v4, "hasPersonSenderTokens")) && (spotlightQueryIntent = self->_spotlightQueryIntent, spotlightQueryIntent == objc_msgSend(v4, "spotlightQueryIntent")) && (isUnsafeQuery = self->_isUnsafeQuery, isUnsafeQuery == objc_msgSend(v4, "isUnsafeQuery")))
  {
    isBlocklistedQuery = self->_isBlocklistedQuery;
    v24 = isBlocklistedQuery == [v4 isBlocklistedQuery];
  }

  else
  {
LABEL_21:
    v24 = 0;
  }

  return v24;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  if ([(_CPQueryUnderstandingParse *)self queryIntentType])
  {
    queryIntentType = self->_queryIntentType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPQueryUnderstandingParse *)self hasUnspecifiedTokens])
  {
    hasUnspecifiedTokens = self->_hasUnspecifiedTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasSortCriteriaTokens])
  {
    hasSortCriteriaTokens = self->_hasSortCriteriaTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasLocationTokens])
  {
    hasLocationTokens = self->_hasLocationTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasActionTokens])
  {
    hasActionTokens = self->_hasActionTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasMediaTypeTokens])
  {
    hasMediaTypeTokens = self->_hasMediaTypeTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasVisualQualityTokens])
  {
    hasVisualQualityTokens = self->_hasVisualQualityTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasNounTokens])
  {
    hasNounTokens = self->_hasNounTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasTimeTokens])
  {
    hasTimeTokens = self->_hasTimeTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasEventTokens])
  {
    hasEventTokens = self->_hasEventTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasGenericLocationTokens])
  {
    hasGenericLocationTokens = self->_hasGenericLocationTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasCaptureDeviceTokens])
  {
    hasCaptureDeviceTokens = self->_hasCaptureDeviceTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasFavoritedTokens])
  {
    hasFavoritedTokens = self->_hasFavoritedTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasSourceAppTokens])
  {
    hasSourceAppTokens = self->_hasSourceAppTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasPersonTokens])
  {
    hasPersonTokens = self->_hasPersonTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasPersonSenderTokens])
  {
    hasPersonSenderTokens = self->_hasPersonSenderTokens;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self spotlightQueryIntent])
  {
    spotlightQueryIntent = self->_spotlightQueryIntent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPQueryUnderstandingParse *)self isUnsafeQuery])
  {
    isUnsafeQuery = self->_isUnsafeQuery;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self isBlocklistedQuery])
  {
    isBlocklistedQuery = self->_isBlocklistedQuery;
    PBDataWriterWriteBOOLField();
  }
}

- (_CPQueryUnderstandingParse)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPQueryUnderstandingParse *)self init];
  if (v5)
  {
    -[_CPQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [v4 queryIntentType]);
    -[_CPQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [v4 hasUnspecifiedTokens]);
    -[_CPQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [v4 hasSortCriteriaTokens]);
    -[_CPQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [v4 hasLocationTokens]);
    -[_CPQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [v4 hasPersonTokens]);
    -[_CPQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [v4 hasPersonSenderTokens]);
    -[_CPQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [v4 hasActionTokens]);
    -[_CPQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [v4 hasMediaTypeTokens]);
    -[_CPQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [v4 hasVisualQualityTokens]);
    -[_CPQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [v4 hasNounTokens]);
    -[_CPQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [v4 hasTimeTokens]);
    -[_CPQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [v4 hasEventTokens]);
    -[_CPQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [v4 hasGenericLocationTokens]);
    -[_CPQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [v4 hasCaptureDeviceTokens]);
    -[_CPQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [v4 hasFavoritedTokens]);
    -[_CPQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [v4 hasSourceAppTokens]);
    v6 = v5;
  }

  return v5;
}

@end