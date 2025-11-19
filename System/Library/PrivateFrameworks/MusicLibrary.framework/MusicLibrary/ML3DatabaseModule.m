@interface ML3DatabaseModule
- (ML3DatabaseModule)initWithName:(id)a3 moduleMethods:(sqlite3_module *)a4;
@end

@implementation ML3DatabaseModule

- (ML3DatabaseModule)initWithName:(id)a3 moduleMethods:(sqlite3_module *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ML3DatabaseModule;
  v7 = [(ML3DatabaseModule *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_moduleMethods = a4;
  }

  return v7;
}

@end