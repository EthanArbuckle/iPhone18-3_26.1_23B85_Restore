@interface DICVolumeController
- (BOOL)setVolumeForCategory:(id)category volume:(float)volume error:(id *)error;
- (id)volumeForCategory:(id)category error:(id *)error;
@end

@implementation DICVolumeController

- (id)volumeForCategory:(id)category error:(id *)error
{
  v5 = MEMORY[0x277D26E58];
  categoryCopy = category;
  sharedAVSystemController = [v5 sharedAVSystemController];
  v12 = 0;
  v8 = [sharedAVSystemController getVolume:&v12 forCategory:categoryCopy];

  if (v8)
  {
    LODWORD(v9) = v12;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  }

  else
  {
    v10 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.dropincore.volumecontroller" code:1 userInfo:0];
    }
  }

  return v10;
}

- (BOOL)setVolumeForCategory:(id)category volume:(float)volume error:(id *)error
{
  v7 = MEMORY[0x277D26E58];
  categoryCopy = category;
  sharedAVSystemController = [v7 sharedAVSystemController];
  *&v10 = volume;
  v11 = [sharedAVSystemController setVolumeTo:categoryCopy forCategory:v10];

  if (error && (v11 & 1) == 0)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.dropincore.volumecontroller" code:2 userInfo:0];
  }

  return v11;
}

@end