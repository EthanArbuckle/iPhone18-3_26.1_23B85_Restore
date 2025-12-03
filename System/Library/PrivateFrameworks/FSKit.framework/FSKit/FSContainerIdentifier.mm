@interface FSContainerIdentifier
- (FSVolumeIdentifier)volumeIdentifier;
@end

@implementation FSContainerIdentifier

- (FSVolumeIdentifier)volumeIdentifier
{
  qualifier = [(FSEntityIdentifier *)self qualifier];

  v4 = [FSVolumeIdentifier alloc];
  uuid = [(FSEntityIdentifier *)self uuid];
  if (qualifier)
  {
    qualifier2 = [(FSEntityIdentifier *)self qualifier];
    v7 = [(FSEntityIdentifier *)v4 initWithUUID:uuid data:qualifier2];
  }

  else
  {
    v7 = [(FSEntityIdentifier *)v4 initWithUUID:uuid];
  }

  return v7;
}

@end