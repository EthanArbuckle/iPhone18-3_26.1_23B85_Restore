@interface OrgLukhnosPortmobileFileAttributeFileTime
+ (id)fromMillisWithLong:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (int)compareToWithId:(id)a3;
@end

@implementation OrgLukhnosPortmobileFileAttributeFileTime

+ (id)fromMillisWithLong:(int64_t)a3
{
  v4 = [OrgLukhnosPortmobileFileAttributeFileTime alloc];
  v4->time_ = a3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (a3)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return [(OrgLukhnosPortmobileFileAttributeFileTime *)self compareToWithId:a3]== 0;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(a3 + 1);
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