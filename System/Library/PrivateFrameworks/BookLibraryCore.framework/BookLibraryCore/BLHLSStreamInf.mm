@interface BLHLSStreamInf
- (id)description;
- (unint64_t)averageBandwidthFallbackToPeak;
- (void)setPropertiesFromAttributeList:(id)list;
@end

@implementation BLHLSStreamInf

- (void)setPropertiesFromAttributeList:(id)list
{
  listCopy = list;
  v4 = [listCopy objectForKeyedSubscript:@"BANDWIDTH"];
  self->_bandwidth = sub_241D30830(v4);
  v5 = [listCopy objectForKeyedSubscript:@"AVERAGE-BANDWIDTH"];
  v6 = v5;
  if (v5)
  {
    self->_averageBandwidth = sub_241D30830(v5);
  }

  v7 = [listCopy objectForKeyedSubscript:@"CODECS"];
  codecs = self->_codecs;
  self->_codecs = v7;

  v9 = [listCopy objectForKeyedSubscript:@"AUDIO"];
  audio = self->_audio;
  self->_audio = v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bandwidth = [(BLHLSStreamInf *)self bandwidth];
  averageBandwidth = [(BLHLSStreamInf *)self averageBandwidth];
  codecs = [(BLHLSStreamInf *)self codecs];
  audio = [(BLHLSStreamInf *)self audio];
  v8 = [v3 stringWithFormat:@"{ Bandwidth: %llu, Average Bandwidth: %llu, codecs: %@, audio: %@", bandwidth, averageBandwidth, codecs, audio];

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