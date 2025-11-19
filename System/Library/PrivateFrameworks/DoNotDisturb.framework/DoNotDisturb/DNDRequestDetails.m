@interface DNDRequestDetails
+ (id)detailsRepresentingNowWithClientIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DNDRequestDetails)initWithClientIdentifier:(id)a3 auditUUID:(id)a4 timestamp:(unint64_t)a5;
- (DNDRequestDetails)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDRequestDetails

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DNDRequestDetails *)self clientIdentifier];
  v5 = [(DNDRequestDetails *)self auditUUID];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

+ (id)detailsRepresentingNowWithClientIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [[a1 alloc] initWithClientIdentifier:v5 auditUUID:v6 timestamp:mach_absolute_time()];

  return v7;
}

- (DNDRequestDetails)initWithClientIdentifier:(id)a3 auditUUID:(id)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = DNDRequestDetails;
  v10 = [(DNDRequestDetails *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    clientIdentifier = v10->_clientIdentifier;
    v10->_clientIdentifier = v11;

    v13 = [v9 copy];
    auditUUID = v10->_auditUUID;
    v10->_auditUUID = v13;

    v10->_timestamp = a5;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = ([(DNDRequestDetails *)self timestamp]* 1000.0);
  v4 = [(DNDRequestDetails *)self clientIdentifier];
  v5 = [v4 hash];
  v6 = [(DNDRequestDetails *)self auditUUID];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(DNDRequestDetails *)self clientIdentifier];
      v10 = [(DNDRequestDetails *)v8 clientIdentifier];
      if (v9 != v10)
      {
        v11 = [(DNDRequestDetails *)self clientIdentifier];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_27;
        }

        v3 = v11;
        v12 = [(DNDRequestDetails *)v8 clientIdentifier];
        if (!v12)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = v12;
        v13 = [(DNDRequestDetails *)self clientIdentifier];
        v5 = [(DNDRequestDetails *)v8 clientIdentifier];
        if (![v13 isEqual:v5])
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = v5;
        v27 = v13;
        v28 = v4;
      }

      v15 = [(DNDRequestDetails *)self auditUUID];
      v16 = [(DNDRequestDetails *)v8 auditUUID];
      if (v15 == v16)
      {
        goto LABEL_16;
      }

      v17 = [(DNDRequestDetails *)self auditUUID];
      if (!v17)
      {

        v14 = 0;
        goto LABEL_24;
      }

      v5 = v17;
      v18 = [(DNDRequestDetails *)v8 auditUUID];
      if (!v18)
      {
        v14 = 0;
        goto LABEL_22;
      }

      v24 = v18;
      v19 = [(DNDRequestDetails *)self auditUUID];
      v20 = [(DNDRequestDetails *)v8 auditUUID];
      v25 = v19;
      v21 = v19;
      v4 = v20;
      if ([v21 isEqual:v20])
      {
LABEL_16:
        v22 = [(DNDRequestDetails *)self timestamp];
        v14 = v22 == [(DNDRequestDetails *)v8 timestamp];
        if (v15 == v16)
        {
LABEL_23:

LABEL_24:
          v13 = v27;
          v4 = v28;
          v5 = v26;
          if (v9 != v10)
          {
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_22:
      goto LABEL_23;
    }

    v14 = 0;
  }

LABEL_28:

  return v14;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDRequestDetails *)self clientIdentifier];
  v6 = [(DNDRequestDetails *)self auditUUID];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: '%@'; auditUUID: %@; timestamp: %llu>", v4, self, v5, v6, -[DNDRequestDetails timestamp](self, "timestamp")];;

  return v7;
}

- (DNDRequestDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditUUID"];
  v7 = [v4 decodeInt64ForKey:@"timestamp"];

  v8 = [(DNDRequestDetails *)self initWithClientIdentifier:v5 auditUUID:v6 timestamp:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DNDRequestDetails *)self clientIdentifier];
  [v6 encodeObject:v4 forKey:@"clientIdentifier"];

  v5 = [(DNDRequestDetails *)self auditUUID];
  [v6 encodeObject:v5 forKey:@"auditUUID"];

  [v6 encodeInt64:-[DNDRequestDetails timestamp](self forKey:{"timestamp"), @"timestamp"}];
}

@end