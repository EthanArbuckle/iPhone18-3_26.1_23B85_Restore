@interface _CPUsageEnvelope
- (BOOL)isEqual:(id)equal;
- (_CPImagesUsagePropensity)imagesUsagePropensity;
- (_CPNewsUsagePropensity)newsUsagePropensity;
- (_CPSafariUsagePropensity)safariUsagePropensity;
- (_CPSpotlightUsagePropensity)spotlightUsagePropensity;
- (_CPUsageSinceLookback)usageSinceLookback;
- (unint64_t)hash;
- (void)clearKind;
- (void)setImagesUsagePropensity:(id)propensity;
- (void)setNewsUsagePropensity:(id)propensity;
- (void)setSafariUsagePropensity:(id)propensity;
- (void)setSpotlightUsagePropensity:(id)propensity;
- (void)setUsageSinceLookback:(id)lookback;
- (void)writeTo:(id)to;
@end

@implementation _CPUsageEnvelope

- (unint64_t)hash
{
  v3 = [(_CPUsageSinceLookback *)self->_usageSinceLookback hash];
  v4 = [(_CPSafariUsagePropensity *)self->_safariUsagePropensity hash]^ v3;
  v5 = [(_CPSpotlightUsagePropensity *)self->_spotlightUsagePropensity hash];
  v6 = v4 ^ v5 ^ [(_CPImagesUsagePropensity *)self->_imagesUsagePropensity hash];
  v7 = v6 ^ [(_CPNewsUsagePropensity *)self->_newsUsagePropensity hash]^ (2654435761 * self->_collectionStartTimestamp) ^ (2654435761 * self->_collectionEndTimestamp) ^ (2654435761 * self->_configuredLookbackTimeInDays);
  v8 = 2654435761 * self->_totalSessions;
  v9 = v8 ^ [(_CPDeviceContext *)self->_context hash];
  return v7 ^ v9 ^ [(NSData *)self->_uuidBytes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self usageSinceLookback];
  usageSinceLookback2 = [equalCopy usageSinceLookback];
  if ((usageSinceLookback != 0) == (usageSinceLookback2 == 0))
  {
    goto LABEL_40;
  }

  usageSinceLookback3 = [(_CPUsageEnvelope *)self usageSinceLookback];
  if (usageSinceLookback3)
  {
    v8 = usageSinceLookback3;
    usageSinceLookback4 = [(_CPUsageEnvelope *)self usageSinceLookback];
    usageSinceLookback5 = [equalCopy usageSinceLookback];
    v11 = [usageSinceLookback4 isEqual:usageSinceLookback5];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self safariUsagePropensity];
  usageSinceLookback2 = [equalCopy safariUsagePropensity];
  if ((usageSinceLookback != 0) == (usageSinceLookback2 == 0))
  {
    goto LABEL_40;
  }

  safariUsagePropensity = [(_CPUsageEnvelope *)self safariUsagePropensity];
  if (safariUsagePropensity)
  {
    v13 = safariUsagePropensity;
    safariUsagePropensity2 = [(_CPUsageEnvelope *)self safariUsagePropensity];
    safariUsagePropensity3 = [equalCopy safariUsagePropensity];
    v16 = [safariUsagePropensity2 isEqual:safariUsagePropensity3];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
  usageSinceLookback2 = [equalCopy spotlightUsagePropensity];
  if ((usageSinceLookback != 0) == (usageSinceLookback2 == 0))
  {
    goto LABEL_40;
  }

  spotlightUsagePropensity = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
  if (spotlightUsagePropensity)
  {
    v18 = spotlightUsagePropensity;
    spotlightUsagePropensity2 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
    spotlightUsagePropensity3 = [equalCopy spotlightUsagePropensity];
    v21 = [spotlightUsagePropensity2 isEqual:spotlightUsagePropensity3];

    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self imagesUsagePropensity];
  usageSinceLookback2 = [equalCopy imagesUsagePropensity];
  if ((usageSinceLookback != 0) == (usageSinceLookback2 == 0))
  {
    goto LABEL_40;
  }

  imagesUsagePropensity = [(_CPUsageEnvelope *)self imagesUsagePropensity];
  if (imagesUsagePropensity)
  {
    v23 = imagesUsagePropensity;
    imagesUsagePropensity2 = [(_CPUsageEnvelope *)self imagesUsagePropensity];
    imagesUsagePropensity3 = [equalCopy imagesUsagePropensity];
    v26 = [imagesUsagePropensity2 isEqual:imagesUsagePropensity3];

    if (!v26)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self newsUsagePropensity];
  usageSinceLookback2 = [equalCopy newsUsagePropensity];
  if ((usageSinceLookback != 0) == (usageSinceLookback2 == 0))
  {
    goto LABEL_40;
  }

  newsUsagePropensity = [(_CPUsageEnvelope *)self newsUsagePropensity];
  if (newsUsagePropensity)
  {
    v28 = newsUsagePropensity;
    newsUsagePropensity2 = [(_CPUsageEnvelope *)self newsUsagePropensity];
    newsUsagePropensity3 = [equalCopy newsUsagePropensity];
    v31 = [newsUsagePropensity2 isEqual:newsUsagePropensity3];

    if (!v31)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  collectionStartTimestamp = self->_collectionStartTimestamp;
  if (collectionStartTimestamp != [equalCopy collectionStartTimestamp])
  {
    goto LABEL_41;
  }

  collectionEndTimestamp = self->_collectionEndTimestamp;
  if (collectionEndTimestamp != [equalCopy collectionEndTimestamp])
  {
    goto LABEL_41;
  }

  configuredLookbackTimeInDays = self->_configuredLookbackTimeInDays;
  if (configuredLookbackTimeInDays != [equalCopy configuredLookbackTimeInDays])
  {
    goto LABEL_41;
  }

  totalSessions = self->_totalSessions;
  if (totalSessions != [equalCopy totalSessions])
  {
    goto LABEL_41;
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self context];
  usageSinceLookback2 = [equalCopy context];
  if ((usageSinceLookback != 0) == (usageSinceLookback2 == 0))
  {
    goto LABEL_40;
  }

  context = [(_CPUsageEnvelope *)self context];
  if (context)
  {
    v37 = context;
    context2 = [(_CPUsageEnvelope *)self context];
    context3 = [equalCopy context];
    v40 = [context2 isEqual:context3];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  usageSinceLookback = [(_CPUsageEnvelope *)self uuidBytes];
  usageSinceLookback2 = [equalCopy uuidBytes];
  if ((usageSinceLookback != 0) != (usageSinceLookback2 == 0))
  {
    uuidBytes = [(_CPUsageEnvelope *)self uuidBytes];
    if (!uuidBytes)
    {

LABEL_44:
      v46 = 1;
      goto LABEL_42;
    }

    v42 = uuidBytes;
    uuidBytes2 = [(_CPUsageEnvelope *)self uuidBytes];
    uuidBytes3 = [equalCopy uuidBytes];
    v45 = [uuidBytes2 isEqual:uuidBytes3];

    if (v45)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_40:
  }

LABEL_41:
  v46 = 0;
LABEL_42:

  return v46;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  usageSinceLookback = [(_CPUsageEnvelope *)self usageSinceLookback];

  if (usageSinceLookback)
  {
    usageSinceLookback2 = [(_CPUsageEnvelope *)self usageSinceLookback];
    PBDataWriterWriteSubmessage();
  }

  safariUsagePropensity = [(_CPUsageEnvelope *)self safariUsagePropensity];

  if (safariUsagePropensity)
  {
    safariUsagePropensity2 = [(_CPUsageEnvelope *)self safariUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  spotlightUsagePropensity = [(_CPUsageEnvelope *)self spotlightUsagePropensity];

  if (spotlightUsagePropensity)
  {
    spotlightUsagePropensity2 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  imagesUsagePropensity = [(_CPUsageEnvelope *)self imagesUsagePropensity];

  if (imagesUsagePropensity)
  {
    imagesUsagePropensity2 = [(_CPUsageEnvelope *)self imagesUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  newsUsagePropensity = [(_CPUsageEnvelope *)self newsUsagePropensity];

  if (newsUsagePropensity)
  {
    newsUsagePropensity2 = [(_CPUsageEnvelope *)self newsUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPUsageEnvelope *)self collectionStartTimestamp])
  {
    collectionStartTimestamp = self->_collectionStartTimestamp;
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPUsageEnvelope *)self collectionEndTimestamp])
  {
    collectionEndTimestamp = self->_collectionEndTimestamp;
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPUsageEnvelope *)self configuredLookbackTimeInDays])
  {
    configuredLookbackTimeInDays = self->_configuredLookbackTimeInDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageEnvelope *)self totalSessions])
  {
    totalSessions = self->_totalSessions;
    PBDataWriterWriteInt32Field();
  }

  context = [(_CPUsageEnvelope *)self context];

  if (context)
  {
    context2 = [(_CPUsageEnvelope *)self context];
    PBDataWriterWriteSubmessage();
  }

  uuidBytes = [(_CPUsageEnvelope *)self uuidBytes];

  v21 = toCopy;
  if (uuidBytes)
  {
    uuidBytes = self->_uuidBytes;
    PBDataWriterWriteDataField();
    v21 = toCopy;
  }
}

- (_CPNewsUsagePropensity)newsUsagePropensity
{
  if (self->_whichKind == 5)
  {
    v3 = self->_newsUsagePropensity;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNewsUsagePropensity:(id)propensity
{
  propensityCopy = propensity;
  [(_CPUsageEnvelope *)self clearKind];
  v5 = 5;
  if (!propensityCopy)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  newsUsagePropensity = self->_newsUsagePropensity;
  self->_newsUsagePropensity = propensityCopy;
}

- (_CPImagesUsagePropensity)imagesUsagePropensity
{
  if (self->_whichKind == 4)
  {
    v3 = self->_imagesUsagePropensity;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImagesUsagePropensity:(id)propensity
{
  propensityCopy = propensity;
  [(_CPUsageEnvelope *)self clearKind];
  self->_whichKind = 4 * (propensityCopy != 0);
  imagesUsagePropensity = self->_imagesUsagePropensity;
  self->_imagesUsagePropensity = propensityCopy;
}

- (_CPSpotlightUsagePropensity)spotlightUsagePropensity
{
  if (self->_whichKind == 3)
  {
    v3 = self->_spotlightUsagePropensity;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpotlightUsagePropensity:(id)propensity
{
  propensityCopy = propensity;
  [(_CPUsageEnvelope *)self clearKind];
  v5 = 3;
  if (!propensityCopy)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  spotlightUsagePropensity = self->_spotlightUsagePropensity;
  self->_spotlightUsagePropensity = propensityCopy;
}

- (_CPSafariUsagePropensity)safariUsagePropensity
{
  if (self->_whichKind == 2)
  {
    v3 = self->_safariUsagePropensity;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSafariUsagePropensity:(id)propensity
{
  propensityCopy = propensity;
  [(_CPUsageEnvelope *)self clearKind];
  self->_whichKind = 2 * (propensityCopy != 0);
  safariUsagePropensity = self->_safariUsagePropensity;
  self->_safariUsagePropensity = propensityCopy;
}

- (_CPUsageSinceLookback)usageSinceLookback
{
  if (self->_whichKind == 1)
  {
    v3 = self->_usageSinceLookback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsageSinceLookback:(id)lookback
{
  lookbackCopy = lookback;
  [(_CPUsageEnvelope *)self clearKind];
  self->_whichKind = lookbackCopy != 0;
  usageSinceLookback = self->_usageSinceLookback;
  self->_usageSinceLookback = lookbackCopy;
}

- (void)clearKind
{
  self->_whichKind = 0;
  usageSinceLookback = self->_usageSinceLookback;
  self->_usageSinceLookback = 0;

  safariUsagePropensity = self->_safariUsagePropensity;
  self->_safariUsagePropensity = 0;

  spotlightUsagePropensity = self->_spotlightUsagePropensity;
  self->_spotlightUsagePropensity = 0;

  imagesUsagePropensity = self->_imagesUsagePropensity;
  self->_imagesUsagePropensity = 0;

  newsUsagePropensity = self->_newsUsagePropensity;
  self->_newsUsagePropensity = 0;
}

@end