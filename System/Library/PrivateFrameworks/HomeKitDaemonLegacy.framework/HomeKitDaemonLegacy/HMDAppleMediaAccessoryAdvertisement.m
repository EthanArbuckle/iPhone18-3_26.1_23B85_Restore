@interface HMDAppleMediaAccessoryAdvertisement
- (HMDAppleMediaAccessoryAdvertisement)initWithOutputDevice:(id)a3 device:(id)a4;
- (id)description;
@end

@implementation HMDAppleMediaAccessoryAdvertisement

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDAppleMediaAccessoryAdvertisement;
  v4 = [(HMDMediaAccessoryAdvertisement *)&v8 description];
  v5 = [(HMDAppleMediaAccessoryAdvertisement *)self device];
  v6 = [v3 stringWithFormat:@"[ %@, device = %@]", v4, v5];

  return v6;
}

- (HMDAppleMediaAccessoryAdvertisement)initWithOutputDevice:(id)a3 device:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDAppleMediaAccessoryAdvertisement;
  v8 = [(HMDMediaAccessoryAdvertisement *)&v11 initWithOutputDevice:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
  }

  return v9;
}

@end