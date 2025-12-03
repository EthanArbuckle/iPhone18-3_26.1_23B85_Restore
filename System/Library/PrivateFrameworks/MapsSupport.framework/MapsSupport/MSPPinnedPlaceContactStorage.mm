@interface MSPPinnedPlaceContactStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPPinnedPlaceContactStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPinnedPlaceContactStorage;
  v4 = [(MSPPinnedPlaceContactStorage *)&v8 description];
  dictionaryRepresentation = [(MSPPinnedPlaceContactStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [dictionary setObject:contactIdentifier forKey:@"contactIdentifier"];
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
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_labeledValueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handleValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contactIdentifier)
  {
    [toCopy setContactIdentifier:?];
    toCopy = v5;
  }

  if (self->_labeledValueIdentifier)
  {
    [v5 setLabeledValueIdentifier:?];
    toCopy = v5;
  }

  if (self->_handleValue)
  {
    [v5 setHandleValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_labeledValueIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_handleValue copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | equalCopy[2])) || -[NSString isEqual:](contactIdentifier, "isEqual:")) && ((labeledValueIdentifier = self->_labeledValueIdentifier, !(labeledValueIdentifier | equalCopy[4])) || -[NSString isEqual:](labeledValueIdentifier, "isEqual:")))
  {
    handleValue = self->_handleValue;
    if (handleValue | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(MSPPinnedPlaceContactStorage *)self setContactIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(MSPPinnedPlaceContactStorage *)self setLabeledValueIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(MSPPinnedPlaceContactStorage *)self setHandleValue:?];
    fromCopy = v5;
  }
}

@end