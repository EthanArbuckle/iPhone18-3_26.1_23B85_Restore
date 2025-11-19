@interface MSPPinnedPlaceContactStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPPinnedPlaceContactStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPinnedPlaceContactStorage;
  v4 = [(MSPPinnedPlaceContactStorage *)&v8 description];
  v5 = [(MSPPinnedPlaceContactStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v3 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  labeledValueIdentifier = self->_labeledValueIdentifier;
  if (labeledValueIdentifier)
  {
    [v4 setObject:labeledValueIdentifier forKey:@"labeledValueIdentifier"];
  }

  handleValue = self->_handleValue;
  if (handleValue)
  {
    [v4 setObject:handleValue forKey:@"handleValue"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_labeledValueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handleValue)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contactIdentifier)
  {
    [v4 setContactIdentifier:?];
    v4 = v5;
  }

  if (self->_labeledValueIdentifier)
  {
    [v5 setLabeledValueIdentifier:?];
    v4 = v5;
  }

  if (self->_handleValue)
  {
    [v5 setHandleValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_labeledValueIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_handleValue copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | v4[2])) || -[NSString isEqual:](contactIdentifier, "isEqual:")) && ((labeledValueIdentifier = self->_labeledValueIdentifier, !(labeledValueIdentifier | v4[4])) || -[NSString isEqual:](labeledValueIdentifier, "isEqual:")))
  {
    handleValue = self->_handleValue;
    if (handleValue | v4[3])
    {
      v8 = [(NSString *)handleValue isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(NSString *)self->_labeledValueIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_handleValue hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(MSPPinnedPlaceContactStorage *)self setContactIdentifier:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(MSPPinnedPlaceContactStorage *)self setLabeledValueIdentifier:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(MSPPinnedPlaceContactStorage *)self setHandleValue:?];
    v4 = v5;
  }
}

@end