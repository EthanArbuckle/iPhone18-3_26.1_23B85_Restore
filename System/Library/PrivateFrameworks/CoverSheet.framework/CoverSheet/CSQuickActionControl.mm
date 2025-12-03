@interface CSQuickActionControl
- (CSQuickActionControl)initWithCategory:(int64_t)category position:(int64_t)position;
- (NSString)title;
@end

@implementation CSQuickActionControl

- (CSQuickActionControl)initWithCategory:(int64_t)category position:(int64_t)position
{
  v7.receiver = self;
  v7.super_class = CSQuickActionControl;
  result = [(CSQuickActionControl *)&v7 init];
  if (result)
  {
    result->_category = category;
    result->_position = position;
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