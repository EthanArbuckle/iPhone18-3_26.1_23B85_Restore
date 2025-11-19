@interface CADObjectChangeID
- (CADObjectChangeID)initWithCoder:(id)a3;
- (CADObjectChangeID)initWithEntityType:(int)a3 changeID:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADObjectChangeID

- (CADObjectChangeID)initWithEntityType:(int)a3 changeID:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = CADObjectChangeID;
  result = [(CADObjectChangeID *)&v7 init];
  if (result)
  {
    result->_entityType = a3;
    result->_changeID = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  entityType = self->_entityType;
  v5 = a3;
  [v5 encodeInt:entityType forKey:@"entityType"];
  [v5 encodeInteger:self->_changeID forKey:@"changeID"];
}

- (CADObjectChangeID)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CADObjectChangeID;
  v5 = [(CADObjectChangeID *)&v7 init];
  if (v5)
  {
    v5->_entityType = [v4 decodeIntForKey:@"entityType"];
    v5->_changeID = [v4 decodeIntegerForKey:@"changeID"];
  }

  return v5;
}

@end