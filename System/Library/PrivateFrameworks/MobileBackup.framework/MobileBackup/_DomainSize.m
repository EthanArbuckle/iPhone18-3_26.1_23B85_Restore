@interface _DomainSize
- (_DomainSize)init;
@end

@implementation _DomainSize

- (_DomainSize)init
{
  v3.receiver = self;
  v3.super_class = _DomainSize;
  result = [(_DomainSize *)&v3 init];
  if (result)
  {
    result->_cloudSize = 0;
    result->_localSize = 0;
  }

  return result;
}

@end