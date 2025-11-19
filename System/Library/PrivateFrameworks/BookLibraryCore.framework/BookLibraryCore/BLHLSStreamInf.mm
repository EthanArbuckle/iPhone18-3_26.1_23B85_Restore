@interface BLHLSStreamInf
- (id)description;
- (unint64_t)averageBandwidthFallbackToPeak;
- (void)setPropertiesFromAttributeList:(id)a3;
@end

@implementation BLHLSStreamInf

- (void)setPropertiesFromAttributeList:(id)a3
{
  v11 = a3;
  v4 = [v11 objectForKeyedSubscript:@"BANDWIDTH"];
  self->_bandwidth = sub_241D30830(v4);
  v5 = [v11 objectForKeyedSubscript:@"AVERAGE-BANDWIDTH"];
  v6 = v5;
  if (v5)
  {
    self->_averageBandwidth = sub_241D30830(v5);
  }

  v7 = [v11 objectForKeyedSubscript:@"CODECS"];
  codecs = self->_codecs;
  self->_codecs = v7;

  v9 = [v11 objectForKeyedSubscript:@"AUDIO"];
  audio = self->_audio;
  self->_audio = v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BLHLSStreamInf *)self bandwidth];
  v5 = [(BLHLSStreamInf *)self averageBandwidth];
  v6 = [(BLHLSStreamInf *)self codecs];
  v7 = [(BLHLSStreamInf *)self audio];
  v8 = [v3 stringWithFormat:@"{ Bandwidth: %llu, Average Bandwidth: %llu, codecs: %@, audio: %@", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)averageBandwidthFallbackToPeak
{
  result = self->_averageBandwidth;
  if (!result)
  {
    return self->_bandwidth;
  }

  return result;
}

@end