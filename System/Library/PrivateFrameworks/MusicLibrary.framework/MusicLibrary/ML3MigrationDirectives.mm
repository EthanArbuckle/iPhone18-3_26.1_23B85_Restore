@interface ML3MigrationDirectives
- (ML3MigrationDirectives)initWithOriginalUserVersion:(int)a3;
@end

@implementation ML3MigrationDirectives

- (ML3MigrationDirectives)initWithOriginalUserVersion:(int)a3
{
  v5.receiver = self;
  v5.super_class = ML3MigrationDirectives;
  result = [(ML3MigrationDirectives *)&v5 init];
  if (result)
  {
    result->_originalUserVersion = a3;
    result->_currentUserVersion = a3;
  }

  return result;
}

@end