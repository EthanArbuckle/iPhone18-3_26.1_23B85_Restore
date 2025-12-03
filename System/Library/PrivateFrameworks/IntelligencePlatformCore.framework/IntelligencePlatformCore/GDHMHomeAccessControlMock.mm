@interface GDHMHomeAccessControlMock
- (GDHMHomeAccessControlMock)initWithIsAdminAnswer:(BOOL)answer;
@end

@implementation GDHMHomeAccessControlMock

- (GDHMHomeAccessControlMock)initWithIsAdminAnswer:(BOOL)answer
{
  v5.receiver = self;
  v5.super_class = GDHMHomeAccessControlMock;
  result = [(GDHMHomeAccessControlMock *)&v5 init];
  if (result)
  {
    result->_isAdminAnswer = answer;
  }

  return result;
}

@end