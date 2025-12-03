@interface _DKDiskSubsystemIdentifier
+ (id)withDiskSubsystem:(id)subsystem;
@end

@implementation _DKDiskSubsystemIdentifier

+ (id)withDiskSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:subsystemCopy type:type];

  return v6;
}

@end