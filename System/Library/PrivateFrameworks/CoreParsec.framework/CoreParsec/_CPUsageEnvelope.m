@interface _CPUsageEnvelope
- (BOOL)isEqual:(id)a3;
- (_CPImagesUsagePropensity)imagesUsagePropensity;
- (_CPNewsUsagePropensity)newsUsagePropensity;
- (_CPSafariUsagePropensity)safariUsagePropensity;
- (_CPSpotlightUsagePropensity)spotlightUsagePropensity;
- (_CPUsageSinceLookback)usageSinceLookback;
- (unint64_t)hash;
- (void)clearKind;
- (void)setImagesUsagePropensity:(id)a3;
- (void)setNewsUsagePropensity:(id)a3;
- (void)setSafariUsagePropensity:(id)a3;
- (void)setSpotlightUsagePropensity:(id)a3;
- (void)setUsageSinceLookback:(id)a3;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = [(_CPUsageEnvelope *)self usageSinceLookback];
  v6 = [v4 usageSinceLookback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v7 = [(_CPUsageEnvelope *)self usageSinceLookback];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPUsageEnvelope *)self usageSinceLookback];
    v10 = [v4 usageSinceLookback];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_CPUsageEnvelope *)self safariUsagePropensity];
  v6 = [v4 safariUsagePropensity];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v12 = [(_CPUsageEnvelope *)self safariUsagePropensity];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPUsageEnvelope *)self safariUsagePropensity];
    v15 = [v4 safariUsagePropensity];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
  v6 = [v4 spotlightUsagePropensity];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v17 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
    v20 = [v4 spotlightUsagePropensity];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_CPUsageEnvelope *)self imagesUsagePropensity];
  v6 = [v4 imagesUsagePropensity];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v22 = [(_CPUsageEnvelope *)self imagesUsagePropensity];
  if (v22)
  {
    v23 = v22;
    v24 = [(_CPUsageEnvelope *)self imagesUsagePropensity];
    v25 = [v4 imagesUsagePropensity];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_CPUsageEnvelope *)self newsUsagePropensity];
  v6 = [v4 newsUsagePropensity];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v27 = [(_CPUsageEnvelope *)self newsUsagePropensity];
  if (v27)
  {
    v28 = v27;
    v29 = [(_CPUsageEnvelope *)self newsUsagePropensity];
    v30 = [v4 newsUsagePropensity];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  collectionStartTimestamp = self->_collectionStartTimestamp;
  if (collectionStartTimestamp != [v4 collectionStartTimestamp])
  {
    goto LABEL_41;
  }

  collectionEndTimestamp = self->_collectionEndTimestamp;
  if (collectionEndTimestamp != [v4 collectionEndTimestamp])
  {
    goto LABEL_41;
  }

  configuredLookbackTimeInDays = self->_configuredLookbackTimeInDays;
  if (configuredLookbackTimeInDays != [v4 configuredLookbackTimeInDays])
  {
    goto LABEL_41;
  }

  totalSessions = self->_totalSessions;
  if (totalSessions != [v4 totalSessions])
  {
    goto LABEL_41;
  }

  v5 = [(_CPUsageEnvelope *)self context];
  v6 = [v4 context];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v36 = [(_CPUsageEnvelope *)self context];
  if (v36)
  {
    v37 = v36;
    v38 = [(_CPUsageEnvelope *)self context];
    v39 = [v4 context];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_CPUsageEnvelope *)self uuidBytes];
  v6 = [v4 uuidBytes];
  if ((v5 != 0) != (v6 == 0))
  {
    v41 = [(_CPUsageEnvelope *)self uuidBytes];
    if (!v41)
    {

LABEL_44:
      v46 = 1;
      goto LABEL_42;
    }

    v42 = v41;
    v43 = [(_CPUsageEnvelope *)self uuidBytes];
    v44 = [v4 uuidBytes];
    v45 = [v43 isEqual:v44];

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

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(_CPUsageEnvelope *)self usageSinceLookback];

  if (v4)
  {
    v5 = [(_CPUsageEnvelope *)self usageSinceLookback];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_CPUsageEnvelope *)self safariUsagePropensity];

  if (v6)
  {
    v7 = [(_CPUsageEnvelope *)self safariUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];

  if (v8)
  {
    v9 = [(_CPUsageEnvelope *)self spotlightUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_CPUsageEnvelope *)self imagesUsagePropensity];

  if (v10)
  {
    v11 = [(_CPUsageEnvelope *)self imagesUsagePropensity];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_CPUsageEnvelope *)self newsUsagePropensity];

  if (v12)
  {
    v13 = [(_CPUsageEnvelope *)self newsUsagePropensity];
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

  v18 = [(_CPUsageEnvelope *)self context];

  if (v18)
  {
    v19 = [(_CPUsageEnvelope *)self context];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_CPUsageEnvelope *)self uuidBytes];

  v21 = v23;
  if (v20)
  {
    uuidBytes = self->_uuidBytes;
    PBDataWriterWriteDataField();
    v21 = v23;
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

- (void)setNewsUsagePropensity:(id)a3
{
  v4 = a3;
  [(_CPUsageEnvelope *)self clearKind];
  v5 = 5;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  newsUsagePropensity = self->_newsUsagePropensity;
  self->_newsUsagePropensity = v4;
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

- (void)setImagesUsagePropensity:(id)a3
{
  v4 = a3;
  [(_CPUsageEnvelope *)self clearKind];
  self->_whichKind = 4 * (v4 != 0);
  imagesUsagePropensity = self->_imagesUsagePropensity;
  self->_imagesUsagePropensity = v4;
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

- (void)setSpotlightUsagePropensity:(id)a3
{
  v4 = a3;
  [(_CPUsageEnvelope *)self clearKind];
  v5 = 3;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  spotlightUsagePropensity = self->_spotlightUsagePropensity;
  self->_spotlightUsagePropensity = v4;
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

- (void)setSafariUsagePropensity:(id)a3
{
  v4 = a3;
  [(_CPUsageEnvelope *)self clearKind];
  self->_whichKind = 2 * (v4 != 0);
  safariUsagePropensity = self->_safariUsagePropensity;
  self->_safariUsagePropensity = v4;
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

- (void)setUsageSinceLookback:(id)a3
{
  v4 = a3;
  [(_CPUsageEnvelope *)self clearKind];
  self->_whichKind = v4 != 0;
  usageSinceLookback = self->_usageSinceLookback;
  self->_usageSinceLookback = v4;
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