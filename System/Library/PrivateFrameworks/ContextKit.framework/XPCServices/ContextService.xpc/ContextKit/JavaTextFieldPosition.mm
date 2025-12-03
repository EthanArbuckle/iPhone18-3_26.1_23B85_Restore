@interface JavaTextFieldPosition
- (BOOL)isEqual:(id)equal;
- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)field;
- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)field withInt:(int)int;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaTextFieldPosition

- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)field
{
  JreStrongAssign(&self->attribute_, field);
  self->field_ = -1;
  return self;
}

- (JavaTextFieldPosition)initWithJavaTextFormat_Field:(id)field withInt:(int)int
{
  JreStrongAssign(&self->attribute_, field);
  self->field_ = int;
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

  return self->field_ == *(equal + 2) && self->attribute_ == *(equal + 3) && self->beginIndex_ == *(equal + 3) && self->endIndex_ == *(equal + 4);
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