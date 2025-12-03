@interface DNDSIDSRecordID
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (DNDSIDSRecordID)initWithIdentifier:(id)identifier zone:(id)zone;
- (NSString)description;
- (id)_initWithRecordID:(id)d;
- (id)dictionaryRepresentationWithContext:(id)context;
@end

@implementation DNDSIDSRecordID

- (DNDSIDSRecordID)initWithIdentifier:(id)identifier zone:(id)zone
{
  identifierCopy = identifier;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = DNDSIDSRecordID;
  v8 = [(DNDSIDSRecordID *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [zoneCopy copy];
    zone = v8->_zone;
    v8->_zone = v11;
  }

  return v8;
}

- (id)_initWithRecordID:(id)d
{
  dCopy = d;
  identifier = [dCopy identifier];
  v6 = [dCopy zone];

  v7 = [(DNDSIDSRecordID *)self initWithIdentifier:identifier zone:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = [(DNDSIDSRecordID *)self identifier];
      identifier2 = [(DNDSIDSRecordID *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(DNDSIDSRecordID *)self identifier];
        if (!identifier3)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = identifier3;
        identifier4 = [(DNDSIDSRecordID *)v6 identifier];
        if (!identifier4)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        identifier5 = [(DNDSIDSRecordID *)self identifier];
        identifier6 = [(DNDSIDSRecordID *)v6 identifier];
        if (![identifier5 isEqual:identifier6])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = identifier6;
        v25 = identifier5;
        v26 = identifier4;
      }

      v14 = [(DNDSIDSRecordID *)self zone];
      v15 = [(DNDSIDSRecordID *)v6 zone];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDSIDSRecordID *)self zone];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDSIDSRecordID *)v6 zone];
          if (v19)
          {
            v22 = [(DNDSIDSRecordID *)self zone];
            [(DNDSIDSRecordID *)v6 zone];
            v20 = v23 = v3;
            v13 = [v22 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      identifier5 = v25;
      identifier4 = v26;
      identifier6 = v24;
      if (identifier == identifier2)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(DNDSIDSRecordID *)self identifier];
  v6 = [(DNDSIDSRecordID *)self zone];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@; zone: %@>", v4, self, identifier, v6];;

  return v7;
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeStringForKey:@"identifier"];
  v7 = [representationCopy bs_safeStringForKey:@"zone"];

  v8 = [[self alloc] initWithIdentifier:v6 zone:v7];
  return v8;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"identifier";
  v7[1] = @"zone";
  zone = self->_zone;
  v8[0] = self->_identifier;
  v8[1] = zone;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end