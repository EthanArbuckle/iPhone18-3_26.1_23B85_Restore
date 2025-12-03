@interface CADChangeTrackingClientId
- (BOOL)hasCustomClientId;
- (BOOL)hasSuffix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChangeTrackingClientId:(id)id;
- (CADChangeTrackingClientId)clientIdWithBundleId:(id)id;
- (CADChangeTrackingClientId)initWithCoder:(id)coder;
- (CADChangeTrackingClientId)initWithCustomClientId:(id)id;
- (CADChangeTrackingClientId)initWithSuffix:(id)suffix;
- (id)clientId;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADChangeTrackingClientId

- (BOOL)hasCustomClientId
{
  customClientId = [(CADChangeTrackingClientId *)self customClientId];
  v3 = [customClientId length] != 0;

  return v3;
}

- (id)description
{
  if ([(CADChangeTrackingClientId *)self hasCustomClientId])
  {
    v3 = MEMORY[0x277CCACA8];
    clientId = [(CADChangeTrackingClientId *)self clientId];
    [v3 stringWithFormat:@"ClientId: {%@}", clientId];
    v6 = LABEL_5:;

    goto LABEL_7;
  }

  if ([(CADChangeTrackingClientId *)self hasSuffix])
  {
    v5 = MEMORY[0x277CCACA8];
    clientId = [(CADChangeTrackingClientId *)self suffix];
    [v5 stringWithFormat:@"Suffix: {%@}", clientId];
    goto LABEL_5;
  }

  v6 = @"No Custom ClientID or Suffix";
LABEL_7:

  return v6;
}

- (BOOL)hasSuffix
{
  suffix = [(CADChangeTrackingClientId *)self suffix];
  v3 = [suffix length] != 0;

  return v3;
}

- (CADChangeTrackingClientId)initWithCustomClientId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = CADChangeTrackingClientId;
  v6 = [(CADChangeTrackingClientId *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customClientId, id);
  }

  return v7;
}

- (CADChangeTrackingClientId)initWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v9.receiver = self;
  v9.super_class = CADChangeTrackingClientId;
  v6 = [(CADChangeTrackingClientId *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suffix, suffix);
  }

  return v7;
}

- (CADChangeTrackingClientId)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CADChangeTrackingClientId;
  v5 = [(CADChangeTrackingClientId *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientId"];
    customClientId = v5->_customClientId;
    v5->_customClientId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  customClientId = [(CADChangeTrackingClientId *)self customClientId];
  [coderCopy encodeObject:customClientId forKey:@"ClientId"];

  suffix = [(CADChangeTrackingClientId *)self suffix];
  [coderCopy encodeObject:suffix forKey:@"Suffix"];
}

- (id)clientId
{
  if ([(CADChangeTrackingClientId *)self hasCustomClientId])
  {
    customClientId = [(CADChangeTrackingClientId *)self customClientId];
  }

  else if ([(CADChangeTrackingClientId *)self hasSuffix])
  {
    suffix = [(CADChangeTrackingClientId *)self suffix];
    customClientId = [@"~" stringByAppendingString:suffix];
  }

  else
  {
    customClientId = 0;
  }

  return customClientId;
}

- (CADChangeTrackingClientId)clientIdWithBundleId:(id)id
{
  idCopy = id;
  if ([(CADChangeTrackingClientId *)self hasCustomClientId])
  {
    customClientId = [(CADChangeTrackingClientId *)self customClientId];
  }

  else
  {
    if ([(CADChangeTrackingClientId *)self hasSuffix])
    {
      suffix = [(CADChangeTrackingClientId *)self suffix];
      v7 = [idCopy stringByAppendingFormat:@"~%@", suffix];

      goto LABEL_7;
    }

    customClientId = idCopy;
  }

  v7 = customClientId;
LABEL_7:

  return v7;
}

- (BOOL)isEqualToChangeTrackingClientId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (idCopy == self)
  {
    v8 = 1;
  }

  else if (idCopy && ([(CADChangeTrackingClientId *)self suffix], v6 = objc_claimAutoreleasedReturnValue(), [(CADChangeTrackingClientId *)v5 suffix], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7))
  {
    customClientId = [(CADChangeTrackingClientId *)self customClientId];
    customClientId2 = [(CADChangeTrackingClientId *)v5 customClientId];
    v8 = customClientId == customClientId2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CADChangeTrackingClientId *)self isEqualToChangeTrackingClientId:equalCopy];
  }

  return v5;
}

@end