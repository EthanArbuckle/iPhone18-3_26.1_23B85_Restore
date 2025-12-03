@interface NTKComplicationKey
- (BOOL)isEqual:(id)equal;
- (NTKComplicationKey)initWithClientIdentifier:(id)identifier complicationIdentifier:(id)complicationIdentifier;
- (NTKComplicationKey)initWithClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (NTKComplicationKey)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationKey

- (NTKComplicationKey)initWithClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = NTKComplicationKey;
  v8 = [(NTKComplicationKey *)&v18 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    identifier = [descriptorCopy identifier];
    v12 = [identifier copy];
    complicationIdentifier = v8->_complicationIdentifier;
    v8->_complicationIdentifier = v12;

    v14 = [descriptorCopy copy];
    descriptor = v8->_descriptor;
    v8->_descriptor = v14;

    v16 = v8;
  }

  return v8;
}

- (NTKComplicationKey)initWithClientIdentifier:(id)identifier complicationIdentifier:(id)complicationIdentifier
{
  identifierCopy = identifier;
  complicationIdentifierCopy = complicationIdentifier;
  v15.receiver = self;
  v15.super_class = NTKComplicationKey;
  v8 = [(NTKComplicationKey *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [complicationIdentifierCopy copy];
    complicationIdentifier = v8->_complicationIdentifier;
    v8->_complicationIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clientIdentifier = [equalCopy clientIdentifier];
    clientIdentifier2 = [(NTKComplicationKey *)self clientIdentifier];
    if ([clientIdentifier isEqualToString:clientIdentifier2])
    {
      complicationIdentifier = [equalCopy complicationIdentifier];
      complicationIdentifier2 = [(NTKComplicationKey *)self complicationIdentifier];
      v9 = [complicationIdentifier isEqualToString:complicationIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  clientIdentifier = [(NTKComplicationKey *)self clientIdentifier];
  v4 = [clientIdentifier hash];
  complicationIdentifier = [(NTKComplicationKey *)self complicationIdentifier];
  v6 = [complicationIdentifier hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_complicationIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(CLKComplicationDescriptor *)self->_descriptor copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (NTKComplicationKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NTKComplicationKey;
  v5 = [(NTKComplicationKey *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"complicationIdentifier"];
    complicationIdentifier = v5->_complicationIdentifier;
    v5->_complicationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientIdentifier = self->_clientIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  [coderCopy encodeObject:self->_complicationIdentifier forKey:@"complicationIdentifier"];
  [coderCopy encodeObject:self->_descriptor forKey:@"descriptor"];
}

@end