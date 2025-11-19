@interface OrgApacheLuceneUtilAutomatonStatePair
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)a3 withInt:(int)a4;
- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5;
- (id)description;
@end

@implementation OrgApacheLuceneUtilAutomatonStatePair

- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5
{
  self->s_ = a3;
  self->s1_ = a4;
  self->s2_ = a5;
  return self;
}

- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)a3 withInt:(int)a4
{
  self->s1_ = a3;
  self->s2_ = a4;
  self->s_ = -1;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a3 + 3) == self->s1_ && *(a3 + 4) == self->s2_;
}

- (id)description
{
  s2 = self->s2_;
  s1 = self->s1_;
  return JreStrcat("$I$IC", a2, v2, v3, v4, v5, v6, v7, @"StatePair(s1=");
}

@end