@interface CWFAutoJoinRetryInterval
- (id)autoJoinRetryInterval:(unint64_t)a3 count:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CWFAutoJoinRetryInterval

- (id)autoJoinRetryInterval:(unint64_t)a3 count:(unint64_t)a4
{
  v6 = [(CWFAutoJoinRetryInterval *)self copy];
  [v6 setInterval:a3];
  [v6 setCount:a4];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"interval=%lu, count=%lu, BSSChannelsOnly=%d, maxBSSChannelAge=%lu, maxBSSChannelCount=%lu, passiveScan=%d, dwellTime=%lu, autoHotspotFallback=%d, includeAdjacent5GHzChannel=%d, alwaysIncludeRemainingNon2GHzChannels=%d", self->_interval, self->_count, self->_BSSChannelsOnly, self->_maxBSSChannelAge, self->_maxBSSChannelCount, self->_passiveScan, self->_dwellTime, self->_allowAutoHotspotFallback, self->_includeAdjacent5GHzChannel, self->_alwaysIncludeRemainingNon2GHzChannels];
  [v3 appendFormat:@", alwaysInclude6GHzPSCChannels=%d", self->_alwaysInclude6GHzPSCChannels];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAutoJoinRetryInterval allocWithZone:?]];
  [(CWFAutoJoinRetryInterval *)v4 setInterval:self->_interval];
  [(CWFAutoJoinRetryInterval *)v4 setCount:self->_count];
  [(CWFAutoJoinRetryInterval *)v4 setBSSChannelsOnly:self->_BSSChannelsOnly];
  [(CWFAutoJoinRetryInterval *)v4 setMaxBSSChannelAge:self->_maxBSSChannelAge];
  [(CWFAutoJoinRetryInterval *)v4 setMaxBSSChannelCount:self->_maxBSSChannelCount];
  [(CWFAutoJoinRetryInterval *)v4 setPassiveScan:self->_passiveScan];
  [(CWFAutoJoinRetryInterval *)v4 setDwellTime:self->_dwellTime];
  [(CWFAutoJoinRetryInterval *)v4 setAllowAutoHotspotFallback:self->_allowAutoHotspotFallback];
  [(CWFAutoJoinRetryInterval *)v4 setIncludeAdjacent5GHzChannel:self->_includeAdjacent5GHzChannel];
  [(CWFAutoJoinRetryInterval *)v4 setAlwaysIncludeRemainingNon2GHzChannels:self->_alwaysIncludeRemainingNon2GHzChannels];
  [(CWFAutoJoinRetryInterval *)v4 setAlwaysInclude6GHzPSCChannels:self->_alwaysInclude6GHzPSCChannels];
  return v4;
}

@end