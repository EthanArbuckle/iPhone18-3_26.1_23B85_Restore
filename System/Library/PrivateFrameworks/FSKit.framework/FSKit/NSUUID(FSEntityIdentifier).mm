@interface NSUUID(FSEntityIdentifier)
- (FSContainerIdentifier)fs_containerIdentifier;
- (FSVolumeIdentifier)fs_volumeIdentifier;
@end

@implementation NSUUID(FSEntityIdentifier)

- (FSContainerIdentifier)fs_containerIdentifier
{
  v1 = [(FSEntityIdentifier *)[FSContainerIdentifier alloc] initWithUUID:self];

  return v1;
}

- (FSVolumeIdentifier)fs_volumeIdentifier
{
  v1 = [(FSEntityIdentifier *)[FSVolumeIdentifier alloc] initWithUUID:self];

  return v1;
}

@end