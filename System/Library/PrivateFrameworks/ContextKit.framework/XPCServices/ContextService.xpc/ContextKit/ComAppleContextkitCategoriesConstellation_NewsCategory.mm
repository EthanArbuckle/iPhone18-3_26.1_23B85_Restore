@interface ComAppleContextkitCategoriesConstellation_NewsCategory
- (ComAppleContextkitCategoriesConstellation_NewsCategory)initWithNSString:(id)string withNSString:(id)sString;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_NewsCategory

- (ComAppleContextkitCategoriesConstellation_NewsCategory)initWithNSString:(id)string withNSString:(id)sString
{
  JreStrongAssign(&self->title_, string);
  JreStrongAssign(&self->qid_, sString);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_NewsCategory;
  [(ComAppleContextkitCategoriesConstellation_NewsCategory *)&v3 dealloc];
}

@end