@interface MSPCollectionStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPCollectionStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPCollectionStorage;
  v4 = [(MSPCollectionStorage *)&v8 description];
  v5 = [(MSPCollectionStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
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
    v11 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_imageURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_collectionDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_itemData)
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
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_image)
  {
    [v5 setImage:?];
    v4 = v5;
  }

  if (self->_imageURL)
  {
    [v5 setImageURL:?];
    v4 = v5;
  }

  if (self->_collectionDescription)
  {
    [v5 setCollectionDescription:?];
    v4 = v5;
  }

  if (self->_itemData)
  {
    [v5 setItemData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSData *)self->_image copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_imageURL copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_collectionDescription copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSData *)self->_itemData copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | v4[6])) || -[NSString isEqual:](title, "isEqual:")) && ((image = self->_image, !(image | v4[3])) || -[NSData isEqual:](image, "isEqual:")) && ((imageURL = self->_imageURL, !(imageURL | v4[4])) || -[NSString isEqual:](imageURL, "isEqual:")) && ((collectionDescription = self->_collectionDescription, !(collectionDescription | v4[2])) || -[NSString isEqual:](collectionDescription, "isEqual:")))
  {
    itemData = self->_itemData;
    if (itemData | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    [(MSPCollectionStorage *)self setTitle:?];
  }

  if (v4[3])
  {
    [(MSPCollectionStorage *)self setImage:?];
  }

  if (v4[4])
  {
    [(MSPCollectionStorage *)self setImageURL:?];
  }

  if (v4[2])
  {
    [(MSPCollectionStorage *)self setCollectionDescription:?];
  }

  if (v4[5])
  {
    [(MSPCollectionStorage *)self setItemData:?];
  }
}

@end