@interface ComAppleContextkitCategoriesConstellation_QIDCount
- (ComAppleContextkitCategoriesConstellation_QIDCount)initWithNSString:(id)string withInt:(int)int;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_QIDCount

- (ComAppleContextkitCategoriesConstellation_QIDCount)initWithNSString:(id)string withInt:(int)int
{
  JreStrongAssign(&self->qid_, string);
  self->count_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_QIDCount;
  [(ComAppleContextkitCategoriesConstellation_QIDCount *)&v3 dealloc];
}

@end