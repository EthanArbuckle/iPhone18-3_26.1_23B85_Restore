@interface FSItemPair
+ (id)pairWith:(id)with andObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (FSItemPair)initWith:(id)with andObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FSItemPair

- (FSItemPair)initWith:(id)with andObject:(id)object
{
  withCopy = with;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = FSItemPair;
  v8 = [(FSItemPair *)&v14 init];
  if (v8)
  {
    v9 = [withCopy copy];
    first = v8->_first;
    v8->_first = v9;

    v11 = [objectCopy copy];
    second = v8->_second;
    v8->_second = v11;
  }

  return v8;
}

+ (id)pairWith:(id)with andObject:(id)object
{
  objectCopy = object;
  withCopy = with;
  v8 = [[self alloc] initWith:withCopy andObject:objectCopy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    first = self->_first;
    first = [v5 first];
    if ([first isEqual:first])
    {
      second = self->_second;
      second = [v5 second];
      v10 = [second isEqual:second];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  first = self->_first;
  second = self->_second;

  return [v4 initWith:first andObject:second];
}

@end