@interface MKStorage
- (MKStorage)init;
@end

@implementation MKStorage

- (MKStorage)init
{
  v7.receiver = self;
  v7.super_class = MKStorage;
  v2 = [(MKStorage *)&v7 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    objc_opt_class();
    v4 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectForKey:*MEMORY[0x277D82398]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v5 unsignedLongLongValue];
      }

      else
      {
        v4 = 0;
      }
    }

    [(MKStorage *)v2 setAvailableSpaceInBytes:v4];
    [(MKStorage *)v2 setAvailableSpaceInMegabytes:v4 >> 20];
    [(MKStorage *)v2 setAvailableSpaceInGigabytes:v2->_availableSpaceInMegabytes >> 10];
    [(MKStorage *)v2 setAvailableSpaceInTerabytes:v2->_availableSpaceInGigabytes >> 10];
  }

  return v2;
}

@end