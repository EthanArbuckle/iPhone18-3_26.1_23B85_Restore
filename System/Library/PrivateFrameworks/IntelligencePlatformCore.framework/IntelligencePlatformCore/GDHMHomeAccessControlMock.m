@interface GDHMHomeAccessControlMock
- (GDHMHomeAccessControlMock)initWithIsAdminAnswer:(BOOL)a3;
@end

@implementation GDHMHomeAccessControlMock

- (GDHMHomeAccessControlMock)initWithIsAdminAnswer:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GDHMHomeAccessControlMock;
  result = [(GDHMHomeAccessControlMock *)&v5 init];
  if (result)
  {
    result->_isAdminAnswer = a3;
  }

  return result;
}

@end