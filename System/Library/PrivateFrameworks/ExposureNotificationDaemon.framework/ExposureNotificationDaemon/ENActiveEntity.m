@interface ENActiveEntity
- (BOOL)isEqual:(id)a3;
- (ENActiveEntity)initWithCoder:(id)a3;
- (ENActiveEntity)initWithEntity:(id)a3 activeStatus:(int)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENActiveEntity

- (ENActiveEntity)initWithEntity:(id)a3 activeStatus:(int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ENActiveEntity;
  v7 = [(ENActiveEntity *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    entity = v7->_entity;
    v7->_entity = v8;

    v7->_activeStatus = a4;
  }

  return v7;
}

- (ENActiveEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
  v6 = [v4 decodeInt32ForKey:@"status"];

  v7 = [(ENActiveEntity *)self initWithEntity:v5 activeStatus:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  entity = self->_entity;
  v5 = a3;
  [v5 encodeObject:entity forKey:@"entity"];
  [v5 encodeInt32:self->_activeStatus forKey:@"status"];
}

- (id)description
{
  activeStatus = self->_activeStatus;
  if (activeStatus > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278FD2348[activeStatus];
  }

  return [MEMORY[0x277CCACA0] stringWithFormat:@"[ %@ ], Status: %s", self->_entity, v5, v2, v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(ENEntity *)self->_entity isEqual:*(v5 + 2)])
    {
      v6 = self->_activeStatus == v5[2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end