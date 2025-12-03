@interface HMMTRColorControlColorTemperatureAttributes
- (id)shortDescription;
@end

@implementation HMMTRColorControlColorTemperatureAttributes

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  colorMode = [(HMMTRColorControlColorTemperatureAttributes *)self colorMode];
  remainingTime = [(HMMTRColorControlColorTemperatureAttributes *)self remainingTime];
  colorTemperatureMireds = [(HMMTRColorControlColorTemperatureAttributes *)self colorTemperatureMireds];
  v7 = [v3 stringWithFormat:@"colorMode: %@ remainingTime: %@ colorTemperatureMireds: %@", colorMode, remainingTime, colorTemperatureMireds];

  return v7;
}

@end