@interface HDCodableEmergencyContact
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableEmergencyContact

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableEmergencyContact;
  v4 = [(HDCodableEmergencyContact *)&v8 description];
  dictionaryRepresentation = [(HDCodableEmergencyContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  nameContactIdentifier = self->_nameContactIdentifier;
  if (nameContactIdentifier)
  {
    [v4 setObject:nameContactIdentifier forKey:@"nameContactIdentifier"];
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v4 setObject:phoneNumber forKey:@"phoneNumber"];
  }

  phoneNumberContactIdentifier = self->_phoneNumberContactIdentifier;
  if (phoneNumberContactIdentifier)
  {
    [v4 setObject:phoneNumberContactIdentifier forKey:@"phoneNumberContactIdentifier"];
  }

  phoneNumberLabel = self->_phoneNumberLabel;
  if (phoneNumberLabel)
  {
    [v4 setObject:phoneNumberLabel forKey:@"phoneNumberLabel"];
  }

  relationship = self->_relationship;
  if (relationship)
  {
    [v4 setObject:relationship forKey:@"relationship"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nameContactIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_phoneNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_phoneNumberContactIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_phoneNumberLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_relationship)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_nameContactIdentifier)
  {
    [v5 setNameContactIdentifier:?];
    toCopy = v5;
  }

  if (self->_phoneNumber)
  {
    [v5 setPhoneNumber:?];
    toCopy = v5;
  }

  if (self->_phoneNumberContactIdentifier)
  {
    [v5 setPhoneNumberContactIdentifier:?];
    toCopy = v5;
  }

  if (self->_phoneNumberLabel)
  {
    [v5 setPhoneNumberLabel:?];
    toCopy = v5;
  }

  if (self->_relationship)
  {
    [v5 setRelationship:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_nameContactIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_phoneNumberContactIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_phoneNumberLabel copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_relationship copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[1])) || -[NSString isEqual:](name, "isEqual:")) && ((nameContactIdentifier = self->_nameContactIdentifier, !(nameContactIdentifier | equalCopy[2])) || -[NSString isEqual:](nameContactIdentifier, "isEqual:")) && ((phoneNumber = self->_phoneNumber, !(phoneNumber | equalCopy[3])) || -[NSString isEqual:](phoneNumber, "isEqual:")) && ((phoneNumberContactIdentifier = self->_phoneNumberContactIdentifier, !(phoneNumberContactIdentifier | equalCopy[4])) || -[NSString isEqual:](phoneNumberContactIdentifier, "isEqual:")) && ((phoneNumberLabel = self->_phoneNumberLabel, !(phoneNumberLabel | equalCopy[5])) || -[NSString isEqual:](phoneNumberLabel, "isEqual:")))
  {
    relationship = self->_relationship;
    if (relationship | equalCopy[6])
    {
      v11 = [(NSString *)relationship isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_nameContactIdentifier hash]^ v3;
  v5 = [(NSString *)self->_phoneNumber hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_phoneNumberContactIdentifier hash];
  v7 = [(NSString *)self->_phoneNumberLabel hash];
  return v6 ^ v7 ^ [(NSString *)self->_relationship hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(HDCodableEmergencyContact *)self setName:?];
  }

  if (fromCopy[2])
  {
    [(HDCodableEmergencyContact *)self setNameContactIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(HDCodableEmergencyContact *)self setPhoneNumber:?];
  }

  if (fromCopy[4])
  {
    [(HDCodableEmergencyContact *)self setPhoneNumberContactIdentifier:?];
  }

  if (fromCopy[5])
  {
    [(HDCodableEmergencyContact *)self setPhoneNumberLabel:?];
  }

  if (fromCopy[6])
  {
    [(HDCodableEmergencyContact *)self setRelationship:?];
  }
}

@end