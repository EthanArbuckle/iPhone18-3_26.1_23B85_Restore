@interface MSPTransitStorageSystem
- (BOOL)isEqual:(id)equal;
- (MSPTransitStorageSystem)initWithSystem:(id)system;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageSystem

- (MSPTransitStorageSystem)initWithSystem:(id)system
{
  systemCopy = system;
  v13.receiver = self;
  v13.super_class = MSPTransitStorageSystem;
  v5 = [(MSPTransitStorageSystem *)&v13 init];
  if (v5)
  {
    -[MSPTransitStorageSystem setMuid:](v5, "setMuid:", [systemCopy muid]);
    name = [systemCopy name];
    [(MSPTransitStorageSystem *)v5 setName:name];

    artwork = [systemCopy artwork];

    if (artwork)
    {
      v8 = [MSPTransitStorageArtwork alloc];
      artwork2 = [systemCopy artwork];
      v10 = [(MSPTransitStorageArtwork *)v8 initWithArtwork:artwork2];
      [(MSPTransitStorageSystem *)v5 setArtwork:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageSystem;
  v4 = [(MSPTransitStorageSystem *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageSystem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
    [dictionary setObject:v4 forKey:@"muid"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  artwork = self->_artwork;
  if (artwork)
  {
    dictionaryRepresentation = [(MSPTransitStorageArtwork *)artwork dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"artwork"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation2 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_artwork)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_muid;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_artwork)
  {
    [v5 setArtwork:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_muid;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(MSPTransitStorageArtwork *)self->_artwork copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_muid != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  name = self->_name;
  if (name | *(equalCopy + 4) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_11;
  }

  artwork = self->_artwork;
  if (artwork | *(equalCopy + 3))
  {
    v8 = [(MSPTransitStorageArtwork *)artwork isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_muid;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash]^ v3;
  return v4 ^ [(MSPTransitStorageArtwork *)self->_artwork hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_muid = fromCopy[2];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (fromCopy[4])
  {
    [(MSPTransitStorageSystem *)self setName:?];
    v5 = v8;
  }

  artwork = self->_artwork;
  v7 = v5[3];
  if (artwork)
  {
    if (v7)
    {
      [(MSPTransitStorageArtwork *)artwork mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MSPTransitStorageSystem *)self setArtwork:?];
  }

  MEMORY[0x2821F96F8]();
}

@end