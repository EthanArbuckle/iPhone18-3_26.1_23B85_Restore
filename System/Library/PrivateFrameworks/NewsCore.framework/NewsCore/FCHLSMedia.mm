@interface FCHLSMedia
- (id)description;
@end

@implementation FCHLSMedia

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = self->_name;
    v5 = self->_type;
    url = self->_url;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    url = 0;
  }

  v7 = [v2 stringWithFormat:@"%@(%@): %@", v4, v5, url];

  return v7;
}

@end