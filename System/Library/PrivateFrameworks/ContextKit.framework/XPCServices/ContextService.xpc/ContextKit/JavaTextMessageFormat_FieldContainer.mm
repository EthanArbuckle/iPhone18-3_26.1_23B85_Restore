@interface JavaTextMessageFormat_FieldContainer
- (JavaTextMessageFormat_FieldContainer)initWithInt:(int)int withInt:(int)withInt withJavaTextAttributedCharacterIterator_Attribute:(id)attribute withId:(id)id;
- (void)dealloc;
@end

@implementation JavaTextMessageFormat_FieldContainer

- (JavaTextMessageFormat_FieldContainer)initWithInt:(int)int withInt:(int)withInt withJavaTextAttributedCharacterIterator_Attribute:(id)attribute withId:(id)id
{
  self->start_ = int;
  self->end_ = withInt;
  JreStrongAssign(&self->attribute_, attribute);
  JreStrongAssign(&self->value_, id);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextMessageFormat_FieldContainer;
  [(JavaTextMessageFormat_FieldContainer *)&v3 dealloc];
}

@end