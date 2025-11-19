@interface MKFObjectDatabaseID
- (BOOL)isEqual:(id)a3;
- (MKFObjectDatabaseID)initWithMKFObject:(id)a3;
@end

@implementation MKFObjectDatabaseID

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (MKFObjectDatabaseID)initWithMKFObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKFObjectDatabaseID;
  v5 = [(MKFObjectDatabaseID *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectID];
    objectID = v5->_objectID;
    v5->_objectID = v6;
  }

  return v5;
}

@end