@interface FSContainerIdentifier
- (FSVolumeIdentifier)volumeIdentifier;
@end

@implementation FSContainerIdentifier

- (FSVolumeIdentifier)volumeIdentifier
{
  v3 = [(FSEntityIdentifier *)self qualifier];

  v4 = [FSVolumeIdentifier alloc];
  v5 = [(FSEntityIdentifier *)self uuid];
  if (v3)
  {
    v6 = [(FSEntityIdentifier *)self qualifier];
    v7 = [(FSEntityIdentifier *)v4 initWithUUID:v5 data:v6];
  }

  else
  {
    v7 = [(FSEntityIdentifier *)v4 initWithUUID:v5];
  }

  return v7;
}

@end