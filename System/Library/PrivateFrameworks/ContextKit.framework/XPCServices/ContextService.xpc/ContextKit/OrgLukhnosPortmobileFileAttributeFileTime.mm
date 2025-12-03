@interface OrgLukhnosPortmobileFileAttributeFileTime
+ (id)fromMillisWithLong:(int64_t)long;
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
@end

@implementation OrgLukhnosPortmobileFileAttributeFileTime

+ (id)fromMillisWithLong:(int64_t)long
{
  v4 = [OrgLukhnosPortmobileFileAttributeFileTime alloc];
  v4->time_ = long;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (equal)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return [(OrgLukhnosPortmobileFileAttributeFileTime *)self compareToWithId:equal]== 0;
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(id + 1);
  time = self->time_;
  v7 = v5 < time;
  v8 = v5 != time;
  if (v7)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

@end