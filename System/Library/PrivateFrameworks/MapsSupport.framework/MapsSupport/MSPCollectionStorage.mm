@interface MSPCollectionStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPCollectionStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPCollectionStorage;
  v4 = [(MSPCollectionStorage *)&v8 description];
  dictionaryRepresentation = [(MSPCollectionStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  image = self->_image;
  if (image)
  {
    [v4 setObject:image forKey:@"image"];
  }

  imageURL = self->_imageURL;
  if (imageURL)
  {
    [v4 setObject:imageURL forKey:@"imageURL"];
  }

  collectionDescription = self->_collectionDescription;
  if (collectionDescription)
  {
    [v4 setObject:collectionDescription forKey:@"collectionDescription"];
  }

  itemData = self->_itemData;
  if (itemData)
  {
    [v4 setObject:itemData forKey:@"itemData"];
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
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_imageURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_collectionDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_itemData)
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
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_image)
  {
    [v5 setImage:?];
    toCopy = v5;
  }

  if (self->_imageURL)
  {
    [v5 setImageURL:?];
    toCopy = v5;
  }

  if (self->_collectionDescription)
  {
    [v5 setCollectionDescription:?];
    toCopy = v5;
  }

  if (self->_itemData)
  {
    [v5 setItemData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSData *)self->_image copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_imageURL copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_collectionDescription copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSData *)self->_itemData copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[6])) || -[NSString isEqual:](title, "isEqual:")) && ((image = self->_image, !(image | equalCopy[3])) || -[NSData isEqual:](image, "isEqual:")) && ((imageURL = self->_imageURL, !(imageURL | equalCopy[4])) || -[NSString isEqual:](imageURL, "isEqual:")) && ((collectionDescription = self->_collectionDescription, !(collectionDescription | equalCopy[2])) || -[NSString isEqual:](collectionDescription, "isEqual:")))
  {
    itemData = self->_itemData;
    if (itemData | equalCopy[5])
    {
      v10 = [(NSData *)itemData isEqual:?];
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
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSData *)self->_image hash]^ v3;
  v5 = [(NSString *)self->_imageURL hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_collectionDescription hash];
  return v6 ^ [(NSData *)self->_itemData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    [(MSPCollectionStorage *)self setTitle:?];
  }

  if (fromCopy[3])
  {
    [(MSPCollectionStorage *)self setImage:?];
  }

  if (fromCopy[4])
  {
    [(MSPCollectionStorage *)self setImageURL:?];
  }

  if (fromCopy[2])
  {
    [(MSPCollectionStorage *)self setCollectionDescription:?];
  }

  if (fromCopy[5])
  {
    [(MSPCollectionStorage *)self setItemData:?];
  }
}

@end