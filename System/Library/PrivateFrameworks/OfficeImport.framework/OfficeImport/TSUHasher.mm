@interface TSUHasher
- (TSUHasher)init;
- (void)addObject:(id)object;
@end

@implementation TSUHasher

- (TSUHasher)init
{
  v3.receiver = self;
  v3.super_class = TSUHasher;
  result = [(TSUHasher *)&v3 init];
  if (result)
  {
    result->_currentHash = 0xCBF29CE484222325;
  }

  return result;
}

- (void)addObject:(id)object
{
  v4 = [object hash];

  [(TSUHasher *)self p_appendUnsignedInteger:v4];
}

@end