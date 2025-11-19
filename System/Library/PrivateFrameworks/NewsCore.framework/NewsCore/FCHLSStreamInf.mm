@interface FCHLSStreamInf
- (id)description;
- (void)setPropertiesFromAttributeList:(void *)a1;
@end

@implementation FCHLSStreamInf

- (void)setPropertiesFromAttributeList:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v11 = v3;
    v4 = [v3 objectForKeyedSubscript:@"BANDWIDTH"];
    a1[2] = FCHLSUIntegerFromString(v4);
    v5 = [v11 objectForKeyedSubscript:@"AVERAGE-BANDWIDTH"];
    v6 = v5;
    if (v5)
    {
      a1[3] = FCHLSUIntegerFromString(v5);
    }

    v7 = [v11 objectForKeyedSubscript:@"CODECS"];
    v8 = a1[4];
    a1[4] = v7;

    v9 = [v11 objectForKeyedSubscript:@"AUDIO"];
    v10 = a1[5];
    a1[5] = v9;

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

  v8 = [v2 stringWithFormat:@"{ Bandwidth: %llu, Average Bandwidth: %llu, codecs: %@, audio: %@", bandwidth, averageBandwidth, v6, audio];

  return v8;
}

@end