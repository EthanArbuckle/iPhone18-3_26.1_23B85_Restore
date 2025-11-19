@interface ICASChecklistAction
- (ICASChecklistAction)initWithChecklistAction:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASChecklistAction

- (ICASChecklistAction)initWithChecklistAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASChecklistAction;
  result = [(ICASChecklistAction *)&v5 init];
  if (result)
  {
    result->_checklistAction = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASChecklistAction *)self checklistAction];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF5F8[v3 - 1];
  }
}

@end