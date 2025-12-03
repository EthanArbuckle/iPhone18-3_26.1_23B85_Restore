@interface ICASChecklistAction
- (ICASChecklistAction)initWithChecklistAction:(int64_t)action;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASChecklistAction

- (ICASChecklistAction)initWithChecklistAction:(int64_t)action
{
  v5.receiver = self;
  v5.super_class = ICASChecklistAction;
  result = [(ICASChecklistAction *)&v5 init];
  if (result)
  {
    result->_checklistAction = action;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  checklistAction = [(ICASChecklistAction *)self checklistAction];
  if ((checklistAction - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF5F8[checklistAction - 1];
  }
}

@end