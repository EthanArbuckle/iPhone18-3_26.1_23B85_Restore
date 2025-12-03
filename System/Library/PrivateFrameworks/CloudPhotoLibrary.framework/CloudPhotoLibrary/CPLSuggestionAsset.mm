@interface CPLSuggestionAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLSuggestionAsset

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(CPLSuggestionAsset *)self setAssetIdentifier:?];
  }

  assetFlag = self->_assetFlag;
  v5 = fromCopy[2];
  if (assetFlag)
  {
    if (v5)
    {
      [(CPLSuggestionAssetFlag *)assetFlag mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(CPLSuggestionAsset *)self setAssetFlag:?];
  }

  if (fromCopy[1])
  {
    [(CPLSuggestionAsset *)self setActionData:?];
  }

  if (fromCopy[4])
  {
    [(CPLSuggestionAsset *)self setMasterIdentifier:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetIdentifier hash];
  v4 = [(CPLSuggestionAssetFlag *)self->_assetFlag hash]^ v3;
  v5 = [(NSData *)self->_actionData hash];
  return v4 ^ v5 ^ [(NSString *)self->_masterIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((assetIdentifier = self->_assetIdentifier, !(assetIdentifier | equalCopy[3])) || -[NSString isEqual:](assetIdentifier, "isEqual:")) && ((assetFlag = self->_assetFlag, !(assetFlag | equalCopy[2])) || -[CPLSuggestionAssetFlag isEqual:](assetFlag, "isEqual:")) && ((actionData = self->_actionData, !(actionData | equalCopy[1])) || -[NSData isEqual:](actionData, "isEqual:")))
  {
    masterIdentifier = self->_masterIdentifier;
    if (masterIdentifier | equalCopy[4])
    {
      v9 = [(NSString *)masterIdentifier isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_assetIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(CPLSuggestionAssetFlag *)self->_assetFlag copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_actionData copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_masterIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_assetIdentifier)
  {
    [toCopy setAssetIdentifier:?];
    toCopy = v5;
  }

  if (self->_assetFlag)
  {
    [v5 setAssetFlag:?];
    toCopy = v5;
  }

  if (self->_actionData)
  {
    [v5 setActionData:?];
    toCopy = v5;
  }

  if (self->_masterIdentifier)
  {
    [v5 setMasterIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_assetIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_assetFlag)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_actionData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_masterIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    [dictionary setObject:assetIdentifier forKey:@"assetIdentifier"];
  }

  assetFlag = self->_assetFlag;
  if (assetFlag)
  {
    dictionaryRepresentation = [(CPLSuggestionAssetFlag *)assetFlag dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"assetFlag"];
  }

  actionData = self->_actionData;
  if (actionData)
  {
    [v4 setObject:actionData forKey:@"actionData"];
  }

  masterIdentifier = self->_masterIdentifier;
  if (masterIdentifier)
  {
    [v4 setObject:masterIdentifier forKey:@"masterIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLSuggestionAsset;
  v4 = [(CPLSuggestionAsset *)&v8 description];
  dictionaryRepresentation = [(CPLSuggestionAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end