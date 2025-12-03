@interface ML3MigrationDirectives
- (ML3MigrationDirectives)initWithOriginalUserVersion:(int)version;
@end

@implementation ML3MigrationDirectives

- (ML3MigrationDirectives)initWithOriginalUserVersion:(int)version
{
  v5.receiver = self;
  v5.super_class = ML3MigrationDirectives;
  result = [(ML3MigrationDirectives *)&v5 init];
  if (result)
  {
    result->_originalUserVersion = version;
    result->_currentUserVersion = version;
  }

  return result;
}

@end