@interface CADChangeTrackingClientId
- (BOOL)hasCustomClientId;
- (BOOL)hasSuffix;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChangeTrackingClientId:(id)a3;
- (CADChangeTrackingClientId)clientIdWithBundleId:(id)a3;
- (CADChangeTrackingClientId)initWithCoder:(id)a3;
- (CADChangeTrackingClientId)initWithCustomClientId:(id)a3;
- (CADChangeTrackingClientId)initWithSuffix:(id)a3;
- (id)clientId;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADChangeTrackingClientId

- (BOOL)hasCustomClientId
{
  v2 = [(CADChangeTrackingClientId *)self customClientId];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)description
{
  if ([(CADChangeTrackingClientId *)self hasCustomClientId])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(CADChangeTrackingClientId *)self clientId];
    [v3 stringWithFormat:@"ClientId: {%@}", v4];
    v6 = LABEL_5:;

    goto LABEL_7;
  }

  if ([(CADChangeTrackingClientId *)self hasSuffix])
  {
    v5 = MEMORY[0x277CCACA8];
    v4 = [(CADChangeTrackingClientId *)self suffix];
    [v5 stringWithFormat:@"Suffix: {%@}", v4];
    goto LABEL_5;
  }

  v6 = @"No Custom ClientID or Suffix";
LABEL_7:

  return v6;
}

- (BOOL)hasSuffix
{
  v2 = [(CADChangeTrackingClientId *)self suffix];
  v3 = [v2 length] != 0;

  return v3;
}

- (CADChangeTrackingClientId)initWithCustomClientId:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADChangeTrackingClientId;
  v6 = [(CADChangeTrackingClientId *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customClientId, a3);
  }

  return v7;
}

- (CADChangeTrackingClientId)initWithSuffix:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADChangeTrackingClientId;
  v6 = [(CADChangeTrackingClientId *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suffix, a3);
  }

  return v7;
}

- (CADChangeTrackingClientId)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CADChangeTrackingClientId;
  v5 = [(CADChangeTrackingClientId *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientId"];
    customClientId = v5->_customClientId;
    v5->_customClientId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CADChangeTrackingClientId *)self customClientId];
  [v4 encodeObject:v5 forKey:@"ClientId"];

  v6 = [(CADChangeTrackingClientId *)self suffix];
  [v4 encodeObject:v6 forKey:@"Suffix"];
}

- (id)clientId
{
  if ([(CADChangeTrackingClientId *)self hasCustomClientId])
  {
    v3 = [(CADChangeTrackingClientId *)self customClientId];
  }

  else if ([(CADChangeTrackingClientId *)self hasSuffix])
  {
    v4 = [(CADChangeTrackingClientId *)self suffix];
    v3 = [@"~" stringByAppendingString:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CADChangeTrackingClientId)clientIdWithBundleId:(id)a3
{
  v4 = a3;
  if ([(CADChangeTrackingClientId *)self hasCustomClientId])
  {
    v5 = [(CADChangeTrackingClientId *)self customClientId];
  }

  else
  {
    if ([(CADChangeTrackingClientId *)self hasSuffix])
    {
      v6 = [(CADChangeTrackingClientId *)self suffix];
      v7 = [v4 stringByAppendingFormat:@"~%@", v6];

      goto LABEL_7;
    }

    v5 = v4;
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (BOOL)isEqualToChangeTrackingClientId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && ([(CADChangeTrackingClientId *)self suffix], v6 = objc_claimAutoreleasedReturnValue(), [(CADChangeTrackingClientId *)v5 suffix], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7))
  {
    v9 = [(CADChangeTrackingClientId *)self customClientId];
    v10 = [(CADChangeTrackingClientId *)v5 customClientId];
    v8 = v9 == v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CADChangeTrackingClientId *)self isEqualToChangeTrackingClientId:v4];
  }

  return v5;
}

@end