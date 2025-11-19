@interface JavaTextMessageFormat_FieldContainer
- (JavaTextMessageFormat_FieldContainer)initWithInt:(int)a3 withInt:(int)a4 withJavaTextAttributedCharacterIterator_Attribute:(id)a5 withId:(id)a6;
- (void)dealloc;
@end

@implementation JavaTextMessageFormat_FieldContainer

- (JavaTextMessageFormat_FieldContainer)initWithInt:(int)a3 withInt:(int)a4 withJavaTextAttributedCharacterIterator_Attribute:(id)a5 withId:(id)a6
{
  self->start_ = a3;
  self->end_ = a4;
  JreStrongAssign(&self->attribute_, a5);
  JreStrongAssign(&self->value_, a6);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextMessageFormat_FieldContainer;
  [(JavaTextMessageFormat_FieldContainer *)&v3 dealloc];
}

@end