@interface DNDSIDSRecordID
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSIDSRecordID)initWithIdentifier:(id)a3 zone:(id)a4;
- (NSString)description;
- (id)_initWithRecordID:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
@end

@implementation DNDSIDSRecordID

- (DNDSIDSRecordID)initWithIdentifier:(id)a3 zone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DNDSIDSRecordID;
  v8 = [(DNDSIDSRecordID *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    zone = v8->_zone;
    v8->_zone = v11;
  }

  return v8;
}

- (id)_initWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 zone];

  v7 = [(DNDSIDSRecordID *)self initWithIdentifier:v5 zone:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSIDSRecordID *)self identifier];
      v8 = [(DNDSIDSRecordID *)v6 identifier];
      if (v7 != v8)
      {
        v9 = [(DNDSIDSRecordID *)self identifier];
        if (!v9)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = v9;
        v10 = [(DNDSIDSRecordID *)v6 identifier];
        if (!v10)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [(DNDSIDSRecordID *)self identifier];
        v12 = [(DNDSIDSRecordID *)v6 identifier];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = v12;
        v25 = v11;
        v26 = v10;
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

      v11 = v25;
      v10 = v26;
      v12 = v24;
      if (v7 == v8)
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
  v5 = [(DNDSIDSRecordID *)self identifier];
  v6 = [(DNDSIDSRecordID *)self zone];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@; zone: %@>", v4, self, v5, v6];;

  return v7;
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeStringForKey:@"identifier"];
  v7 = [v5 bs_safeStringForKey:@"zone"];

  v8 = [[a1 alloc] initWithIdentifier:v6 zone:v7];
  return v8;
}

- (id)dictionaryRepresentationWithContext:(id)a3
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