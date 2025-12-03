@interface JavaTextAttributedString_Range
- (JavaTextAttributedString_Range)initWithInt:(int)int withInt:(int)withInt withId:(id)id;
- (void)dealloc;
@end

@implementation JavaTextAttributedString_Range

- (JavaTextAttributedString_Range)initWithInt:(int)int withInt:(int)withInt withId:(id)id
{
  self->start_ = int;
  self->end_ = withInt;
  JreStrongAssign(&self->value_, id);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextAttributedString_Range;
  [(JavaTextAttributedString_Range *)&v3 dealloc];
}

@end