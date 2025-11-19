@interface NSSet
- (int64_t)compareMembershipOfObject:(id)a3 withSet:(id)a4;
- (unint64_t)countOfObjectsWithPrefix:(id)a3;
@end

@implementation NSSet

- (unint64_t)countOfObjectsWithPrefix:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032AFC;
  v8[3] = &unk_100075A18;
  v9 = a3;
  v4 = v9;
  v5 = [(NSSet *)self objectsPassingTest:v8];
  v6 = [v5 count];

  return v6;
}

- (int64_t)compareMembershipOfObject:(id)a3 withSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[NSSet containsObject:](self, "containsObject:", v6) && ([v7 containsObject:v6] & 1) != 0)
  {
    goto LABEL_8;
  }

  if (-[NSSet containsObject:](self, "containsObject:", v6) && ![v7 containsObject:v6])
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (-[NSSet containsObject:](self, "containsObject:", v6) || ([v7 containsObject:v6] & 1) == 0)
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