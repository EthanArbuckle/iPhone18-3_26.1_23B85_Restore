@interface ICASActionMenuContextType
- (ICASActionMenuContextType)initWithActionMenuContextType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASActionMenuContextType

- (ICASActionMenuContextType)initWithActionMenuContextType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASActionMenuContextType;
  result = [(ICASActionMenuContextType *)&v5 init];
  if (result)
  {
    result->_actionMenuContextType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASActionMenuContextType *)self actionMenuContextType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"note";
  }

  if (v3 == 2)
  {
    return @"folder";
  }

  else
  {
    return v4;
  }
}

@end