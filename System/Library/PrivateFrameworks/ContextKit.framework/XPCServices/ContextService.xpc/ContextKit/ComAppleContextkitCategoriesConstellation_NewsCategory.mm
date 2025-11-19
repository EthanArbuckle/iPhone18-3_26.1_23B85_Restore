@interface ComAppleContextkitCategoriesConstellation_NewsCategory
- (ComAppleContextkitCategoriesConstellation_NewsCategory)initWithNSString:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_NewsCategory

- (ComAppleContextkitCategoriesConstellation_NewsCategory)initWithNSString:(id)a3 withNSString:(id)a4
{
  JreStrongAssign(&self->title_, a3);
  JreStrongAssign(&self->qid_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_NewsCategory;
  [(ComAppleContextkitCategoriesConstellation_NewsCategory *)&v3 dealloc];
}

@end