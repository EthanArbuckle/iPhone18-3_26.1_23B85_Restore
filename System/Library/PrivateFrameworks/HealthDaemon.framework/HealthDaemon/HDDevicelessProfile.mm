@interface HDDevicelessProfile
- (HDDevicelessProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier;
@end

@implementation HDDevicelessProfile

- (HDDevicelessProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HDDevicelessProfile;
  return [(HDProfile *)&v7 initWithDirectoryPath:path medicalIDDirectoryPath:directoryPath daemon:daemon profileIdentifier:identifier];
}

@end