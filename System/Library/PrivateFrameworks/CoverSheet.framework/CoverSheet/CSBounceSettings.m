@interface CSBounceSettings
- (void)setDefaultValues;
@end

@implementation CSBounceSettings

- (void)setDefaultValues
{
  [(CSBounceSettings *)self setGravity:4.0];
  [(CSBounceSettings *)self setElasticity:0.4];
  [(CSBounceSettings *)self setVelocity:600.0];
  [(CSBounceSettings *)self setFriction:0.2];
  [(CSBounceSettings *)self setResistance:0.1];
  [(CSBounceSettings *)self setMultiplier:1.0];
  [(CSBounceSettings *)self setMinVelocityToAssist:1450.0];
  [(CSBounceSettings *)self setMaxVelocityToAssist:2610.0];

  [(CSBounceSettings *)self setMaxVelocityAssistance:1050.0];
}

@end