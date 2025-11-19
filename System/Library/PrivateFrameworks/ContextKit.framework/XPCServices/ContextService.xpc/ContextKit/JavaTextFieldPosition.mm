@interface JavaTextFieldPosition
- (BOOL)isEqual:(id)a3;
- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)a3;
- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)a3 withInt:(int)a4;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaTextFieldPosition

- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)a3
{
  JreStrongAssign(&self->attribute_, a3);
  self->field_ = -1;
  return self;
}

- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->attribute_, a3);
  self->field_ = a4;
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

  return self->field_ == *(a3 + 2) && self->attribute_ == *(a3 + 3) && self->beginIndex_ == *(a3 + 3) && self->endIndex_ == *(a3 + 4);
}

- (unint64_t)hash
{
  attribute = self->attribute_;
  if (attribute)
  {
    LODWORD(attribute) = [(JavaTextAttributedCharacterIterator_Attribute *)attribute hash];
  }

  return attribute + 10 * self->field_ + 100 * self->beginIndex_ + self->endIndex_;
}

- (id)description
{
  v3 = [-[JavaTextFieldPosition getClass](self "getClass")];
  endIndex = self->endIndex_;
  beginIndex = self->beginIndex_;
  field = self->field_;
  attribute = self->attribute_;
  return JreStrcat("$$@$I$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextFieldPosition;
  [(JavaTextFieldPosition *)&v3 dealloc];
}

@end