@interface HMMTRColorControlColorTemperatureAttributes
- (id)shortDescription;
@end

@implementation HMMTRColorControlColorTemperatureAttributes

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMMTRColorControlColorTemperatureAttributes *)self colorMode];
  v5 = [(HMMTRColorControlColorTemperatureAttributes *)self remainingTime];
  v6 = [(HMMTRColorControlColorTemperatureAttributes *)self colorTemperatureMireds];
  v7 = [v3 stringWithFormat:@"colorMode: %@ remainingTime: %@ colorTemperatureMireds: %@", v4, v5, v6];

  return v7;
}

@end