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
    unsignedLongLongValue = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectForKey:*MEMORY[0x277D82398]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongLongValue = [v5 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }
    }

    [(MKStorage *)v2 setAvailableSpaceInBytes:unsignedLongLongValue];
    [(MKStorage *)v2 setAvailableSpaceInMegabytes:unsignedLongLongValue >> 20];
    [(MKStorage *)v2 setAvailableSpaceInGigabytes:v2->_availableSpaceInMegabytes >> 10];
    [(MKStorage *)v2 setAvailableSpaceInTerabytes:v2->_availableSpaceInGigabytes >> 10];
  }

  return v2;
}

@end