@interface DNDRequestDetails
+ (id)detailsRepresentingNowWithClientIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (DNDRequestDetails)initWithClientIdentifier:(id)identifier auditUUID:(id)d timestamp:(unint64_t)timestamp;
- (DNDRequestDetails)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDRequestDetails

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  clientIdentifier = [(DNDRequestDetails *)self clientIdentifier];
  auditUUID = [(DNDRequestDetails *)self auditUUID];
  v6 = [v3 stringWithFormat:@"%@:%@", clientIdentifier, auditUUID];

  return v6;
}

+ (id)detailsRepresentingNowWithClientIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  uUID = [v4 UUID];
  v7 = [[self alloc] initWithClientIdentifier:identifierCopy auditUUID:uUID timestamp:mach_absolute_time()];

  return v7;
}

- (DNDRequestDetails)initWithClientIdentifier:(id)identifier auditUUID:(id)d timestamp:(unint64_t)timestamp
{
  identifierCopy = identifier;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = DNDRequestDetails;
  v10 = [(DNDRequestDetails *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    clientIdentifier = v10->_clientIdentifier;
    v10->_clientIdentifier = v11;

    v13 = [dCopy copy];
    auditUUID = v10->_auditUUID;
    v10->_auditUUID = v13;

    v10->_timestamp = timestamp;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = ([(DNDRequestDetails *)self timestamp]* 1000.0);
  clientIdentifier = [(DNDRequestDetails *)self clientIdentifier];
  v5 = [clientIdentifier hash];
  auditUUID = [(DNDRequestDetails *)self auditUUID];
  v7 = v5 ^ [auditUUID hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      clientIdentifier = [(DNDRequestDetails *)self clientIdentifier];
      clientIdentifier2 = [(DNDRequestDetails *)v8 clientIdentifier];
      if (clientIdentifier != clientIdentifier2)
      {
        clientIdentifier3 = [(DNDRequestDetails *)self clientIdentifier];
        if (!clientIdentifier3)
        {
          v14 = 0;
          goto LABEL_27;
        }

        v3 = clientIdentifier3;
        clientIdentifier4 = [(DNDRequestDetails *)v8 clientIdentifier];
        if (!clientIdentifier4)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = clientIdentifier4;
        clientIdentifier5 = [(DNDRequestDetails *)self clientIdentifier];
        clientIdentifier6 = [(DNDRequestDetails *)v8 clientIdentifier];
        if (![clientIdentifier5 isEqual:clientIdentifier6])
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = clientIdentifier6;
        v27 = clientIdentifier5;
        v28 = v4;
      }

      auditUUID = [(DNDRequestDetails *)self auditUUID];
      auditUUID2 = [(DNDRequestDetails *)v8 auditUUID];
      if (auditUUID == auditUUID2)
      {
        goto LABEL_16;
      }

      auditUUID3 = [(DNDRequestDetails *)self auditUUID];
      if (!auditUUID3)
      {

        v14 = 0;
        goto LABEL_24;
      }

      clientIdentifier6 = auditUUID3;
      auditUUID4 = [(DNDRequestDetails *)v8 auditUUID];
      if (!auditUUID4)
      {
        v14 = 0;
        goto LABEL_22;
      }

      v24 = auditUUID4;
      auditUUID5 = [(DNDRequestDetails *)self auditUUID];
      auditUUID6 = [(DNDRequestDetails *)v8 auditUUID];
      v25 = auditUUID5;
      v21 = auditUUID5;
      v4 = auditUUID6;
      if ([v21 isEqual:auditUUID6])
      {
LABEL_16:
        timestamp = [(DNDRequestDetails *)self timestamp];
        v14 = timestamp == [(DNDRequestDetails *)v8 timestamp];
        if (auditUUID == auditUUID2)
        {
LABEL_23:

LABEL_24:
          clientIdentifier5 = v27;
          v4 = v28;
          clientIdentifier6 = v26;
          if (clientIdentifier != clientIdentifier2)
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
  clientIdentifier = [(DNDRequestDetails *)self clientIdentifier];
  auditUUID = [(DNDRequestDetails *)self auditUUID];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: '%@'; auditUUID: %@; timestamp: %llu>", v4, self, clientIdentifier, auditUUID, -[DNDRequestDetails timestamp](self, "timestamp")];;

  return v7;
}

- (DNDRequestDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditUUID"];
  v7 = [coderCopy decodeInt64ForKey:@"timestamp"];

  v8 = [(DNDRequestDetails *)self initWithClientIdentifier:v5 auditUUID:v6 timestamp:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientIdentifier = [(DNDRequestDetails *)self clientIdentifier];
  [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];

  auditUUID = [(DNDRequestDetails *)self auditUUID];
  [coderCopy encodeObject:auditUUID forKey:@"auditUUID"];

  [coderCopy encodeInt64:-[DNDRequestDetails timestamp](self forKey:{"timestamp"), @"timestamp"}];
}

@end