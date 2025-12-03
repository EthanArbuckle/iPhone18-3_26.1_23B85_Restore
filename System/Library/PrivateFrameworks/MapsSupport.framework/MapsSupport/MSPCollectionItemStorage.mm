@interface MSPCollectionItemStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPCollectionItemStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPCollectionItemStorage;
  v4 = [(MSPCollectionItemStorage *)&v8 description];
  dictionaryRepresentation = [(MSPCollectionItemStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  storageIdentifier = self->_storageIdentifier;
  if (storageIdentifier)
  {
    [dictionary setObject:storageIdentifier forKey:@"storageIdentifier"];
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
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_storageIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_contents)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_contentsTimestamp)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_position)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_positionTimestamp)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_storageIdentifier)
  {
    [toCopy setStorageIdentifier:?];
    toCopy = v5;
  }

  if (self->_contents)
  {
    [v5 setContents:?];
    toCopy = v5;
  }

  if (self->_contentsTimestamp)
  {
    [v5 setContentsTimestamp:?];
    toCopy = v5;
  }

  if (self->_position)
  {
    [v5 setPosition:?];
    toCopy = v5;
  }

  if (self->_positionTimestamp)
  {
    [v5 setPositionTimestamp:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_storageIdentifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSData *)self->_contents copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_contentsTimestamp copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_position copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSData *)self->_positionTimestamp copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((storageIdentifier = self->_storageIdentifier, !(storageIdentifier | equalCopy[6])) || -[NSData isEqual:](storageIdentifier, "isEqual:")) && ((contents = self->_contents, !(contents | equalCopy[2])) || -[NSData isEqual:](contents, "isEqual:")) && ((contentsTimestamp = self->_contentsTimestamp, !(contentsTimestamp | equalCopy[3])) || -[NSData isEqual:](contentsTimestamp, "isEqual:")) && ((position = self->_position, !(position | equalCopy[4])) || -[NSData isEqual:](position, "isEqual:")))
  {
    positionTimestamp = self->_positionTimestamp;
    if (positionTimestamp | equalCopy[5])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    [(MSPCollectionItemStorage *)self setStorageIdentifier:?];
  }

  if (fromCopy[2])
  {
    [(MSPCollectionItemStorage *)self setContents:?];
  }

  if (fromCopy[3])
  {
    [(MSPCollectionItemStorage *)self setContentsTimestamp:?];
  }

  if (fromCopy[4])
  {
    [(MSPCollectionItemStorage *)self setPosition:?];
  }

  if (fromCopy[5])
  {
    [(MSPCollectionItemStorage *)self setPositionTimestamp:?];
  }
}

@end