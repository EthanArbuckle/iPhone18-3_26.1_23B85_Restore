@interface ML3DatabaseModule
- (ML3DatabaseModule)initWithName:(id)name moduleMethods:(sqlite3_module *)methods;
@end

@implementation ML3DatabaseModule

- (ML3DatabaseModule)initWithName:(id)name moduleMethods:(sqlite3_module *)methods
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ML3DatabaseModule;
  v7 = [(ML3DatabaseModule *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_moduleMethods = methods;
  }

  return v7;
}

@end