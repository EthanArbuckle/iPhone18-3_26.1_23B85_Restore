@interface MKFObjectDatabaseID
- (BOOL)isEqual:(id)equal;
- (MKFObjectDatabaseID)initWithMKFObject:(id)object;
@end

@implementation MKFObjectDatabaseID

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(NSManagedObjectID *)self->_objectID isEqual:v6->_objectID];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (MKFObjectDatabaseID)initWithMKFObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = MKFObjectDatabaseID;
  v5 = [(MKFObjectDatabaseID *)&v9 init];
  if (v5)
  {
    objectID = [objectCopy objectID];
    objectID = v5->_objectID;
    v5->_objectID = objectID;
  }

  return v5;
}

@end