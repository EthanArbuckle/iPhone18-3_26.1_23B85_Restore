@interface MXDuckingSource
- (MXDuckingSource)initWithType:(unsigned int)a3 ID:(unint64_t)a4 duckVolume:(float)a5 duckFadeDuration:(float)a6;
- (id)typeAsAString;
- (void)dealloc;
@end

@implementation MXDuckingSource

- (id)typeAsAString
{
  v3 = [(MXDuckingSource *)self type];
  if (v3 >= 9)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknow(%d)", -[MXDuckingSource type](self, "type")];
  }

  else
  {
    return off_1E7AEADF8[v3];
  }
}

- (MXDuckingSource)initWithType:(unsigned int)a3 ID:(unint64_t)a4 duckVolume:(float)a5 duckFadeDuration:(float)a6
{
  v11.receiver = self;
  v11.super_class = MXDuckingSource;
  result = [(MXDuckingSource *)&v11 init];
  if (result)
  {
    result->_type = a3;
    result->_ID = a4;
    result->_duckVolume = a5;
    result->_duckFadeDuration = a6;
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