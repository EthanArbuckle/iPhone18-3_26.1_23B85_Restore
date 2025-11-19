@interface MSPCollectionItemStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPCollectionItemStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPCollectionItemStorage;
  v4 = [(MSPCollectionItemStorage *)&v8 description];
  v5 = [(MSPCollectionItemStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  storageIdentifier = self->_storageIdentifier;
  if (storageIdentifier)
  {
    [v3 setObject:storageIdentifier forKey:@"storageIdentifier"];
  }

  contents = self->_contents;
  if (contents)
  {
    [v4 setObject:contents forKey:@"contents"];
  }

  contentsTimestamp = self->_contentsTimestamp;
  if (contentsTimestamp)
  {
    [v4 setObject:contentsTimestamp forKey:@"contentsTimestamp"];
  }

  position = self->_position;
  if (position)
  {
    [v4 setObject:position forKey:@"position"];
  }

  positionTimestamp = self->_positionTimestamp;
  if (positionTimestamp)
  {
    [v4 setObject:positionTimestamp forKey:@"positionTimestamp"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v11 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_storageIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_contents)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_contentsTimestamp)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_position)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_positionTimestamp)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_storageIdentifier)
  {
    [v4 setStorageIdentifier:?];
    v4 = v5;
  }

  if (self->_contents)
  {
    [v5 setContents:?];
    v4 = v5;
  }

  if (self->_contentsTimestamp)
  {
    [v5 setContentsTimestamp:?];
    v4 = v5;
  }

  if (self->_position)
  {
    [v5 setPosition:?];
    v4 = v5;
  }

  if (self->_positionTimestamp)
  {
    [v5 setPositionTimestamp:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_storageIdentifier copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSData *)self->_contents copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_contentsTimestamp copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_position copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSData *)self->_positionTimestamp copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((storageIdentifier = self->_storageIdentifier, !(storageIdentifier | v4[6])) || -[NSData isEqual:](storageIdentifier, "isEqual:")) && ((contents = self->_contents, !(contents | v4[2])) || -[NSData isEqual:](contents, "isEqual:")) && ((contentsTimestamp = self->_contentsTimestamp, !(contentsTimestamp | v4[3])) || -[NSData isEqual:](contentsTimestamp, "isEqual:")) && ((position = self->_position, !(position | v4[4])) || -[NSData isEqual:](position, "isEqual:")))
  {
    positionTimestamp = self->_positionTimestamp;
    if (positionTimestamp | v4[5])
    {
      v10 = [(NSData *)positionTimestamp isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_storageIdentifier hash];
  v4 = [(NSData *)self->_contents hash]^ v3;
  v5 = [(NSData *)self->_contentsTimestamp hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_position hash];
  return v6 ^ [(NSData *)self->_positionTimestamp hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    [(MSPCollectionItemStorage *)self setStorageIdentifier:?];
  }

  if (v4[2])
  {
    [(MSPCollectionItemStorage *)self setContents:?];
  }

  if (v4[3])
  {
    [(MSPCollectionItemStorage *)self setContentsTimestamp:?];
  }

  if (v4[4])
  {
    [(MSPCollectionItemStorage *)self setPosition:?];
  }

  if (v4[5])
  {
    [(MSPCollectionItemStorage *)self setPositionTimestamp:?];
  }
}

@end