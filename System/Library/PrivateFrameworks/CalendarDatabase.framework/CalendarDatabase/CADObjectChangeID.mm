@interface CADObjectChangeID
- (CADObjectChangeID)initWithCoder:(id)coder;
- (CADObjectChangeID)initWithEntityType:(int)type changeID:(int64_t)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADObjectChangeID

- (CADObjectChangeID)initWithEntityType:(int)type changeID:(int64_t)d
{
  v7.receiver = self;
  v7.super_class = CADObjectChangeID;
  result = [(CADObjectChangeID *)&v7 init];
  if (result)
  {
    result->_entityType = type;
    result->_changeID = d;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  entityType = self->_entityType;
  coderCopy = coder;
  [coderCopy encodeInt:entityType forKey:@"entityType"];
  [coderCopy encodeInteger:self->_changeID forKey:@"changeID"];
}

- (CADObjectChangeID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CADObjectChangeID;
  v5 = [(CADObjectChangeID *)&v7 init];
  if (v5)
  {
    v5->_entityType = [coderCopy decodeIntForKey:@"entityType"];
    v5->_changeID = [coderCopy decodeIntegerForKey:@"changeID"];
  }

  return v5;
}

@end