@interface _CPQueryUnderstandingParse
- (BOOL)isEqual:(id)equal;
- (_CPQueryUnderstandingParse)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPQueryUnderstandingParse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  queryIntentType = self->_queryIntentType;
  if (queryIntentType != [equalCopy queryIntentType])
  {
    goto LABEL_21;
  }

  hasUnspecifiedTokens = self->_hasUnspecifiedTokens;
  if (hasUnspecifiedTokens != [equalCopy hasUnspecifiedTokens])
  {
    goto LABEL_21;
  }

  hasSortCriteriaTokens = self->_hasSortCriteriaTokens;
  if (hasSortCriteriaTokens != [equalCopy hasSortCriteriaTokens])
  {
    goto LABEL_21;
  }

  hasLocationTokens = self->_hasLocationTokens;
  if (hasLocationTokens != [equalCopy hasLocationTokens])
  {
    goto LABEL_21;
  }

  hasActionTokens = self->_hasActionTokens;
  if (hasActionTokens != [equalCopy hasActionTokens])
  {
    goto LABEL_21;
  }

  hasMediaTypeTokens = self->_hasMediaTypeTokens;
  if (hasMediaTypeTokens != [equalCopy hasMediaTypeTokens])
  {
    goto LABEL_21;
  }

  hasVisualQualityTokens = self->_hasVisualQualityTokens;
  if (hasVisualQualityTokens != [equalCopy hasVisualQualityTokens])
  {
    goto LABEL_21;
  }

  hasNounTokens = self->_hasNounTokens;
  if (hasNounTokens != [equalCopy hasNounTokens])
  {
    goto LABEL_21;
  }

  hasTimeTokens = self->_hasTimeTokens;
  if (hasTimeTokens != [equalCopy hasTimeTokens])
  {
    goto LABEL_21;
  }

  hasEventTokens = self->_hasEventTokens;
  if (hasEventTokens != [equalCopy hasEventTokens])
  {
    goto LABEL_21;
  }

  hasGenericLocationTokens = self->_hasGenericLocationTokens;
  if (hasGenericLocationTokens != [equalCopy hasGenericLocationTokens])
  {
    goto LABEL_21;
  }

  hasCaptureDeviceTokens = self->_hasCaptureDeviceTokens;
  if (hasCaptureDeviceTokens == [equalCopy hasCaptureDeviceTokens] && (hasFavoritedTokens = self->_hasFavoritedTokens, hasFavoritedTokens == objc_msgSend(equalCopy, "hasFavoritedTokens")) && (hasSourceAppTokens = self->_hasSourceAppTokens, hasSourceAppTokens == objc_msgSend(equalCopy, "hasSourceAppTokens")) && (hasPersonTokens = self->_hasPersonTokens, hasPersonTokens == objc_msgSend(equalCopy, "hasPersonTokens")) && (hasPersonSenderTokens = self->_hasPersonSenderTokens, hasPersonSenderTokens == objc_msgSend(equalCopy, "hasPersonSenderTokens")) && (spotlightQueryIntent = self->_spotlightQueryIntent, spotlightQueryIntent == objc_msgSend(equalCopy, "spotlightQueryIntent")) && (isUnsafeQuery = self->_isUnsafeQuery, isUnsafeQuery == objc_msgSend(equalCopy, "isUnsafeQuery")))
  {
    isBlocklistedQuery = self->_isBlocklistedQuery;
    v24 = isBlocklistedQuery == [equalCopy isBlocklistedQuery];
  }

  else
  {
LABEL_21:
    v24 = 0;
  }

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (_CPQueryUnderstandingParse)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPQueryUnderstandingParse *)self init];
  if (v5)
  {
    -[_CPQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [facadeCopy queryIntentType]);
    -[_CPQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [facadeCopy hasUnspecifiedTokens]);
    -[_CPQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [facadeCopy hasSortCriteriaTokens]);
    -[_CPQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [facadeCopy hasLocationTokens]);
    -[_CPQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [facadeCopy hasPersonTokens]);
    -[_CPQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [facadeCopy hasPersonSenderTokens]);
    -[_CPQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [facadeCopy hasActionTokens]);
    -[_CPQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [facadeCopy hasMediaTypeTokens]);
    -[_CPQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [facadeCopy hasVisualQualityTokens]);
    -[_CPQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [facadeCopy hasNounTokens]);
    -[_CPQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [facadeCopy hasTimeTokens]);
    -[_CPQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [facadeCopy hasEventTokens]);
    -[_CPQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [facadeCopy hasGenericLocationTokens]);
    -[_CPQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [facadeCopy hasCaptureDeviceTokens]);
    -[_CPQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [facadeCopy hasFavoritedTokens]);
    -[_CPQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [facadeCopy hasSourceAppTokens]);
    v6 = v5;
  }

  return v5;
}

@end