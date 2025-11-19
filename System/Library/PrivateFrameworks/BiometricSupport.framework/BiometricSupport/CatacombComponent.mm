@interface CatacombComponent
+ (id)component:(id *)a3;
+ (id)componentForUserID:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToComponent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CatacombComponent

+ (id)componentForUserID:(unsigned int)a3
{
  v4 = objc_alloc_init(CatacombComponent);
  if (v4)
  {
    v4->_component.userID = a3;
    v4->_component.group.type = 0;
  }

  return v4;
}

- (BOOL)isEqualToComponent:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 component];
  return *&self->_component.userID == *v4 && *self->_component.group.uuid == v4[1] && *&self->_component.group.uuid[8] == v4[2];
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
      v11 = [v10 UUIDString];
      v12 = [v4 stringWithFormat:@"<%@: %p:(Group userID:%u, type:%u, uuid:%@)>", v7, self, userID, v9, v11];

      goto LABEL_7;
    }

    [v4 stringWithFormat:@"<%@: %p:(User userID:%u)>", v6, self, userID];
  }
  v12 = ;
LABEL_7:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CatacombComponent *)self isEqualToComponent:v4];
  }

  return v5;
}

+ (id)component:(id *)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(CatacombComponent);
    if (v5)
    {
      v6 = *&a3->var0;
      *&v5->_component.group.uuid[8] = *&a3->var1.var1[8];
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