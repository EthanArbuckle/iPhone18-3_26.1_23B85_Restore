@interface ML3DatabaseFunction
- (ML3DatabaseFunction)initWithName:(id)name argumentCount:(int)count;
@end

@implementation ML3DatabaseFunction

- (ML3DatabaseFunction)initWithName:(id)name argumentCount:(int)count
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ML3DatabaseFunction;
  v7 = [(ML3DatabaseFunction *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_argumentCount = count;
  }

  return v7;
}

@end