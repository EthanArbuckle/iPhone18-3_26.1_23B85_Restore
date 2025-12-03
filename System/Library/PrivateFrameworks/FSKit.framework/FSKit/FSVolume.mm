@interface FSVolume
- (FSVolume)initWithVolumeID:(id)d volumeName:(id)name;
@end

@implementation FSVolume

- (FSVolume)initWithVolumeID:(id)d volumeName:(id)name
{
  dCopy = d;
  nameCopy = name;
  if (dCopy)
  {
    v13.receiver = self;
    v13.super_class = FSVolume;
    v9 = [(FSVolume *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_volumeID, d);
      objc_storeStrong(p_isa + 3, name);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end