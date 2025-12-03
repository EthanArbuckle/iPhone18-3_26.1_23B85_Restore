@interface ICASActionMenuContextType
- (ICASActionMenuContextType)initWithActionMenuContextType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASActionMenuContextType

- (ICASActionMenuContextType)initWithActionMenuContextType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASActionMenuContextType;
  result = [(ICASActionMenuContextType *)&v5 init];
  if (result)
  {
    result->_actionMenuContextType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  actionMenuContextType = [(ICASActionMenuContextType *)self actionMenuContextType];
  v4 = @"unknown";
  if (actionMenuContextType == 1)
  {
    v4 = @"note";
  }

  if (actionMenuContextType == 2)
  {
    return @"folder";
  }

  else
  {
    return v4;
  }
}

@end