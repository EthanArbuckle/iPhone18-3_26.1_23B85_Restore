@interface CSQuickActionControl
- (CSQuickActionControl)initWithCategory:(int64_t)a3 position:(int64_t)a4;
- (NSString)title;
@end

@implementation CSQuickActionControl

- (CSQuickActionControl)initWithCategory:(int64_t)a3 position:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = CSQuickActionControl;
  result = [(CSQuickActionControl *)&v7 init];
  if (result)
  {
    result->_category = a3;
    result->_position = a4;
  }

  return result;
}

- (NSString)title
{
  category = self->_category;
  if (category > 2)
  {
    return @"Undefined Quick Action";
  }

  else
  {
    return &off_27838D920[category]->isa;
  }
}

@end