@interface NTKComplicationKey
- (BOOL)isEqual:(id)a3;
- (NTKComplicationKey)initWithClientIdentifier:(id)a3 complicationIdentifier:(id)a4;
- (NTKComplicationKey)initWithClientIdentifier:(id)a3 descriptor:(id)a4;
- (NTKComplicationKey)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKComplicationKey

- (NTKComplicationKey)initWithClientIdentifier:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = NTKComplicationKey;
  v8 = [(NTKComplicationKey *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [v7 identifier];
    v12 = [v11 copy];
    complicationIdentifier = v8->_complicationIdentifier;
    v8->_complicationIdentifier = v12;

    v14 = [v7 copy];
    descriptor = v8->_descriptor;
    v8->_descriptor = v14;

    v16 = v8;
  }

  return v8;
}

- (NTKComplicationKey)initWithClientIdentifier:(id)a3 complicationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKComplicationKey;
  v8 = [(NTKComplicationKey *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [v7 copy];
    complicationIdentifier = v8->_complicationIdentifier;
    v8->_complicationIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 clientIdentifier];
    v6 = [(NTKComplicationKey *)self clientIdentifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [v4 complicationIdentifier];
      v8 = [(NTKComplicationKey *)self complicationIdentifier];
      v9 = [v7 isEqualToString:v8];
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
  v3 = [(NTKComplicationKey *)self clientIdentifier];
  v4 = [v3 hash];
  v5 = [(NTKComplicationKey *)self complicationIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_complicationIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(CLKComplicationDescriptor *)self->_descriptor copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (NTKComplicationKey)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKComplicationKey;
  v5 = [(NTKComplicationKey *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"complicationIdentifier"];
    complicationIdentifier = v5->_complicationIdentifier;
    v5->_complicationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientIdentifier = self->_clientIdentifier;
  v5 = a3;
  [v5 encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  [v5 encodeObject:self->_complicationIdentifier forKey:@"complicationIdentifier"];
  [v5 encodeObject:self->_descriptor forKey:@"descriptor"];
}

@end