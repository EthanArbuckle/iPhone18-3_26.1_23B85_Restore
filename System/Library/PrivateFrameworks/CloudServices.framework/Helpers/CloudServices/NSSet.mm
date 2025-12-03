@interface NSSet
- (int64_t)compareMembershipOfObject:(id)object withSet:(id)set;
- (unint64_t)countOfObjectsWithPrefix:(id)prefix;
@end

@implementation NSSet

- (unint64_t)countOfObjectsWithPrefix:(id)prefix
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032AFC;
  v8[3] = &unk_100075A18;
  prefixCopy = prefix;
  v4 = prefixCopy;
  v5 = [(NSSet *)self objectsPassingTest:v8];
  v6 = [v5 count];

  return v6;
}

- (int64_t)compareMembershipOfObject:(id)object withSet:(id)set
{
  objectCopy = object;
  setCopy = set;
  if (-[NSSet containsObject:](self, "containsObject:", objectCopy) && ([setCopy containsObject:objectCopy] & 1) != 0)
  {
    goto LABEL_8;
  }

  if (-[NSSet containsObject:](self, "containsObject:", objectCopy) && ![setCopy containsObject:objectCopy])
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (-[NSSet containsObject:](self, "containsObject:", objectCopy) || ([setCopy containsObject:objectCopy] & 1) == 0)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_10:

  return v8;
}

@end