@interface JavaTextParsePosition
- (BOOL)isEqual:(id)a3;
- (JavaTextParsePosition)initWithInt:(int)a3;
- (id)description;
@end

@implementation JavaTextParsePosition

- (JavaTextParsePosition)initWithInt:(int)a3
{
  self->currentPosition_ = a3;
  self->errorIndex_ = -1;
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

  return self->currentPosition_ == *(a3 + 2) && self->errorIndex_ == *(a3 + 3);
}

- (id)description
{
  v3 = [-[JavaTextParsePosition getClass](self "getClass")];
  errorIndex = self->errorIndex_;
  currentPosition = self->currentPosition_;
  return JreStrcat("$$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end