@interface HDDevicelessProfile
- (HDDevicelessProfile)initWithDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4 daemon:(id)a5 profileIdentifier:(id)a6;
@end

@implementation HDDevicelessProfile

- (HDDevicelessProfile)initWithDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4 daemon:(id)a5 profileIdentifier:(id)a6
{
  v7.receiver = self;
  v7.super_class = HDDevicelessProfile;
  return [(HDProfile *)&v7 initWithDirectoryPath:a3 medicalIDDirectoryPath:a4 daemon:a5 profileIdentifier:a6];
}

@end