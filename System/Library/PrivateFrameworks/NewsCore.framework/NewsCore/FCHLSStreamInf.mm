@interface FCHLSStreamInf
- (id)description;
- (void)setPropertiesFromAttributeList:(void *)list;
@end

@implementation FCHLSStreamInf

- (void)setPropertiesFromAttributeList:(void *)list
{
  v3 = a2;
  if (list)
  {
    v11 = v3;
    v4 = [v3 objectForKeyedSubscript:@"BANDWIDTH"];
    list[2] = FCHLSUIntegerFromString(v4);
    v5 = [v11 objectForKeyedSubscript:@"AVERAGE-BANDWIDTH"];
    v6 = v5;
    if (v5)
    {
      list[3] = FCHLSUIntegerFromString(v5);
    }

    v7 = [v11 objectForKeyedSubscript:@"CODECS"];
    v8 = list[4];
    list[4] = v7;

    v9 = [v11 objectForKeyedSubscript:@"AUDIO"];
    v10 = list[5];
    list[5] = v9;

    v3 = v11;
  }
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    bandwidth = self->_bandwidth;
    averageBandwidth = self->_averageBandwidth;
    v6 = self->_codecs;
    audio = self->_audio;
  }

  else
  {
    v6 = 0;
    bandwidth = 0;
    averageBandwidth = 0;
    audio = 0;
  }

  audio = [v2 stringWithFormat:@"{ Bandwidth: %llu, Average Bandwidth: %llu, codecs: %@, audio: %@", bandwidth, averageBandwidth, v6, audio];

  return audio;
}

@end