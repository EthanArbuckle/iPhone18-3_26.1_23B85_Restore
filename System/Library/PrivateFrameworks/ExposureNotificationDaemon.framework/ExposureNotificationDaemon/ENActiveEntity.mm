@interface ENActiveEntity
- (BOOL)isEqual:(id)equal;
- (ENActiveEntity)initWithCoder:(id)coder;
- (ENActiveEntity)initWithEntity:(id)entity activeStatus:(int)status;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENActiveEntity

- (ENActiveEntity)initWithEntity:(id)entity activeStatus:(int)status
{
  entityCopy = entity;
  v11.receiver = self;
  v11.super_class = ENActiveEntity;
  v7 = [(ENActiveEntity *)&v11 init];
  if (v7)
  {
    v8 = [entityCopy copy];
    entity = v7->_entity;
    v7->_entity = v8;

    v7->_activeStatus = status;
  }

  return v7;
}

- (ENActiveEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
  v6 = [coderCopy decodeInt32ForKey:@"status"];

  v7 = [(ENActiveEntity *)self initWithEntity:v5 activeStatus:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  entity = self->_entity;
  coderCopy = coder;
  [coderCopy encodeObject:entity forKey:@"entity"];
  [coderCopy encodeInt32:self->_activeStatus forKey:@"status"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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