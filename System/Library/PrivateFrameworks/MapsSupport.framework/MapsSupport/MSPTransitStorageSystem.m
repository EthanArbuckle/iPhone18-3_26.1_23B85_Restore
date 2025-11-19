@interface MSPTransitStorageSystem
- (BOOL)isEqual:(id)a3;
- (MSPTransitStorageSystem)initWithSystem:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageSystem

- (MSPTransitStorageSystem)initWithSystem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MSPTransitStorageSystem;
  v5 = [(MSPTransitStorageSystem *)&v13 init];
  if (v5)
  {
    -[MSPTransitStorageSystem setMuid:](v5, "setMuid:", [v4 muid]);
    v6 = [v4 name];
    [(MSPTransitStorageSystem *)v5 setName:v6];

    v7 = [v4 artwork];

    if (v7)
    {
      v8 = [MSPTransitStorageArtwork alloc];
      v9 = [v4 artwork];
      v10 = [(MSPTransitStorageArtwork *)v8 initWithArtwork:v9];
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
  v5 = [(MSPTransitStorageSystem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
    [v3 setObject:v4 forKey:@"muid"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  artwork = self->_artwork;
  if (artwork)
  {
    v7 = [(MSPTransitStorageArtwork *)artwork dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"artwork"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_artwork)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_muid;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_artwork)
  {
    [v5 setArtwork:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_muid;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(MSPTransitStorageArtwork *)self->_artwork copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_muid != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  name = self->_name;
  if (name | *(v4 + 4) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_11;
  }

  artwork = self->_artwork;
  if (artwork | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_muid = v4[2];
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (v4[4])
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