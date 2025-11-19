@interface HDCodableEmergencyContact
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableEmergencyContact

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableEmergencyContact;
  v4 = [(HDCodableEmergencyContact *)&v8 description];
  v5 = [(HDCodableEmergencyContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_nameContactIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_phoneNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_phoneNumberContactIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_phoneNumberLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_relationship)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_nameContactIdentifier)
  {
    [v5 setNameContactIdentifier:?];
    v4 = v5;
  }

  if (self->_phoneNumber)
  {
    [v5 setPhoneNumber:?];
    v4 = v5;
  }

  if (self->_phoneNumberContactIdentifier)
  {
    [v5 setPhoneNumberContactIdentifier:?];
    v4 = v5;
  }

  if (self->_phoneNumberLabel)
  {
    [v5 setPhoneNumberLabel:?];
    v4 = v5;
  }

  if (self->_relationship)
  {
    [v5 setRelationship:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_nameContactIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_phoneNumberContactIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_phoneNumberLabel copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_relationship copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[1])) || -[NSString isEqual:](name, "isEqual:")) && ((nameContactIdentifier = self->_nameContactIdentifier, !(nameContactIdentifier | v4[2])) || -[NSString isEqual:](nameContactIdentifier, "isEqual:")) && ((phoneNumber = self->_phoneNumber, !(phoneNumber | v4[3])) || -[NSString isEqual:](phoneNumber, "isEqual:")) && ((phoneNumberContactIdentifier = self->_phoneNumberContactIdentifier, !(phoneNumberContactIdentifier | v4[4])) || -[NSString isEqual:](phoneNumberContactIdentifier, "isEqual:")) && ((phoneNumberLabel = self->_phoneNumberLabel, !(phoneNumberLabel | v4[5])) || -[NSString isEqual:](phoneNumberLabel, "isEqual:")))
  {
    relationship = self->_relationship;
    if (relationship | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(HDCodableEmergencyContact *)self setName:?];
  }

  if (v4[2])
  {
    [(HDCodableEmergencyContact *)self setNameContactIdentifier:?];
  }

  if (v4[3])
  {
    [(HDCodableEmergencyContact *)self setPhoneNumber:?];
  }

  if (v4[4])
  {
    [(HDCodableEmergencyContact *)self setPhoneNumberContactIdentifier:?];
  }

  if (v4[5])
  {
    [(HDCodableEmergencyContact *)self setPhoneNumberLabel:?];
  }

  if (v4[6])
  {
    [(HDCodableEmergencyContact *)self setRelationship:?];
  }
}

@end