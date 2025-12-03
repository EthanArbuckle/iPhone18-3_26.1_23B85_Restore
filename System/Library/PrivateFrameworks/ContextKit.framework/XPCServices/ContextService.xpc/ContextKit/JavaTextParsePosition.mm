@interface JavaTextParsePosition
- (BOOL)isEqual:(id)equal;
- (JavaTextParsePosition)initWithInt:(int)int;
- (id)description;
@end

@implementation JavaTextParsePosition

- (JavaTextParsePosition)initWithInt:(int)int
{
  self->currentPosition_ = int;
  self->errorIndex_ = -1;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->currentPosition_ == *(equal + 2) && self->errorIndex_ == *(equal + 3);
}

- (id)description
{
  v3 = [-[JavaTextParsePosition getClass](self "getClass")];
  errorIndex = self->errorIndex_;
  currentPosition = self->currentPosition_;
  return JreStrcat("$$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end