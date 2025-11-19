@interface CPLSuggestionAsset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLSuggestionAsset

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[3])
  {
    [(CPLSuggestionAsset *)self setAssetIdentifier:?];
  }

  assetFlag = self->_assetFlag;
  v5 = v6[2];
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

  if (v6[1])
  {
    [(CPLSuggestionAsset *)self setActionData:?];
  }

  if (v6[4])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((assetIdentifier = self->_assetIdentifier, !(assetIdentifier | v4[3])) || -[NSString isEqual:](assetIdentifier, "isEqual:")) && ((assetFlag = self->_assetFlag, !(assetFlag | v4[2])) || -[CPLSuggestionAssetFlag isEqual:](assetFlag, "isEqual:")) && ((actionData = self->_actionData, !(actionData | v4[1])) || -[NSData isEqual:](actionData, "isEqual:")))
  {
    masterIdentifier = self->_masterIdentifier;
    if (masterIdentifier | v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_assetIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(CPLSuggestionAssetFlag *)self->_assetFlag copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_actionData copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_masterIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_assetIdentifier)
  {
    [v4 setAssetIdentifier:?];
    v4 = v5;
  }

  if (self->_assetFlag)
  {
    [v5 setAssetFlag:?];
    v4 = v5;
  }

  if (self->_actionData)
  {
    [v5 setActionData:?];
    v4 = v5;
  }

  if (self->_masterIdentifier)
  {
    [v5 setMasterIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_assetIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_assetFlag)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_actionData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_masterIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    [v3 setObject:assetIdentifier forKey:@"assetIdentifier"];
  }

  assetFlag = self->_assetFlag;
  if (assetFlag)
  {
    v7 = [(CPLSuggestionAssetFlag *)assetFlag dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"assetFlag"];
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
  v5 = [(CPLSuggestionAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end