@interface FCHLSSegment
- (id)description;
@end

@implementation FCHLSSegment

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = self->_url;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    v6 = self->_map;
    v7 = @" Map: ";
    if (!v6)
    {
      v7 = &stru_1F2DC7DC0;
    }

    map = self->_map;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v6 = 0;
    v4 = 0;
    map = 0;
    v7 = &stru_1F2DC7DC0;
  }

  if (!map)
  {
    map = &stru_1F2DC7DC0;
  }

  v9 = [v2 stringWithFormat:@"%@ (%@s)%@%@", v4, v5, v7, map];

  return v9;
}

@end