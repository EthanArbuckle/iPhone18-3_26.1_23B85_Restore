@interface DICVolumeController
- (BOOL)setVolumeForCategory:(id)a3 volume:(float)a4 error:(id *)a5;
- (id)volumeForCategory:(id)a3 error:(id *)a4;
@end

@implementation DICVolumeController

- (id)volumeForCategory:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D26E58];
  v6 = a3;
  v7 = [v5 sharedAVSystemController];
  v12 = 0;
  v8 = [v7 getVolume:&v12 forCategory:v6];

  if (v8)
  {
    LODWORD(v9) = v12;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.dropincore.volumecontroller" code:1 userInfo:0];
    }
  }

  return v10;
}

- (BOOL)setVolumeForCategory:(id)a3 volume:(float)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D26E58];
  v8 = a3;
  v9 = [v7 sharedAVSystemController];
  *&v10 = a4;
  v11 = [v9 setVolumeTo:v8 forCategory:v10];

  if (a5 && (v11 & 1) == 0)
  {
    *a5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.dropincore.volumecontroller" code:2 userInfo:0];
  }

  return v11;
}

@end