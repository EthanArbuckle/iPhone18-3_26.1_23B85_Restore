@interface FCHLSMap
- (id)description;
@end

@implementation FCHLSMap

- (id)description
{
  url = self;
  if (self)
  {
    url = self->_url;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", url];
}

@end