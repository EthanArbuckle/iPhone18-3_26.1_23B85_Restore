@interface MXDuckingSource
- (MXDuckingSource)initWithType:(unsigned int)type ID:(unint64_t)d duckVolume:(float)volume duckFadeDuration:(float)duration;
- (id)typeAsAString;
- (void)dealloc;
@end

@implementation MXDuckingSource

- (id)typeAsAString
{
  type = [(MXDuckingSource *)self type];
  if (type >= 9)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknow(%d)", -[MXDuckingSource type](self, "type")];
  }

  else
  {
    return off_1E7AEADF8[type];
  }
}

- (MXDuckingSource)initWithType:(unsigned int)type ID:(unint64_t)d duckVolume:(float)volume duckFadeDuration:(float)duration
{
  v11.receiver = self;
  v11.super_class = MXDuckingSource;
  result = [(MXDuckingSource *)&v11 init];
  if (result)
  {
    result->_type = type;
    result->_ID = d;
    result->_duckVolume = volume;
    result->_duckFadeDuration = duration;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXDuckingSource;
  [(MXDuckingSource *)&v2 dealloc];
}

@end