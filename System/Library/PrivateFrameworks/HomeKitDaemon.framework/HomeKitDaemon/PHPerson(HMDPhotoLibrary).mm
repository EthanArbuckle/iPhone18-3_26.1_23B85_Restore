@interface PHPerson(HMDPhotoLibrary)
- (HMDPhotoLibraryPerson)createPhotoLibraryPerson;
@end

@implementation PHPerson(HMDPhotoLibrary)

- (HMDPhotoLibraryPerson)createPhotoLibraryPerson
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [self uuid];
  v4 = [v2 initWithUUIDString:uuid];

  name = [self name];
  if ([name length])
  {
    name2 = [self name];
  }

  else
  {
    name2 = 0;
  }

  v7 = [[HMDPhotoLibraryPerson alloc] initWithUUID:v4 name:name2];

  return v7;
}

@end