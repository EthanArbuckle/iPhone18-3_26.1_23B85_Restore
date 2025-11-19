@interface FSVolume
- (FSVolume)initWithVolumeID:(id)a3 volumeName:(id)a4;
@end

@implementation FSVolume

- (FSVolume)initWithVolumeID:(id)a3 volumeName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = FSVolume;
    v9 = [(FSVolume *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_volumeID, a3);
      objc_storeStrong(p_isa + 3, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end