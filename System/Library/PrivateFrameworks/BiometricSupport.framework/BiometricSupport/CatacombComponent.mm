@interface CatacombComponent
+ (id)component:(id *)component;
+ (id)componentForUserID:(unsigned int)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComponent:(id)component;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CatacombComponent

+ (id)componentForUserID:(unsigned int)d
{
  v4 = objc_alloc_init(CatacombComponent);
  if (v4)
  {
    v4->_component.userID = d;
    v4->_component.group.type = 0;
  }

  return v4;
}

- (BOOL)isEqualToComponent:(id)component
{
  if (!component)
  {
    return 0;
  }

  component = [component component];
  return *&self->_component.userID == *component && *self->_component.group.uuid == component[1] && *&self->_component.group.uuid[8] == component[2];
}

- (id)description
{
  if (self->_component.userID == -1)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v7 = NSStringFromClass(v14);
    [v13 stringWithFormat:@"<%@: %p:(Master)>", v7, self, v16];
  }

  else
  {
    type = self->_component.group.type;
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    userID = self->_component.userID;
    if (type)
    {
      v9 = self->_component.group.type;
      v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_component.group.uuid];
      uUIDString = [v10 UUIDString];
      v12 = [v4 stringWithFormat:@"<%@: %p:(Group userID:%u, type:%u, uuid:%@)>", v7, self, userID, v9, uUIDString];

      goto LABEL_7;
    }

    [v4 stringWithFormat:@"<%@: %p:(User userID:%u)>", v6, self, userID];
  }
  v12 = ;
LABEL_7:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(CatacombComponent);
  if (result)
  {
    v5 = *&self->_component.userID;
    *(result + 3) = *&self->_component.group.uuid[8];
    *(result + 8) = v5;
  }

  return result;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CatacombComponent *)self isEqualToComponent:equalCopy];
  }

  return v5;
}

+ (id)component:(id *)component
{
  if (component)
  {
    v5 = objc_alloc_init(CatacombComponent);
    if (v5)
    {
      v6 = *&component->var0;
      *&v5->_component.group.uuid[8] = *&component->var1.var1[8];
      *&v5->_component.userID = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end