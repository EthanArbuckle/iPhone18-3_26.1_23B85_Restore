@interface ML3DatabaseFunction
- (ML3DatabaseFunction)initWithName:(id)a3 argumentCount:(int)a4;
@end

@implementation ML3DatabaseFunction

- (ML3DatabaseFunction)initWithName:(id)a3 argumentCount:(int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ML3DatabaseFunction;
  v7 = [(ML3DatabaseFunction *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_argumentCount = a4;
  }

  return v7;
}

@end