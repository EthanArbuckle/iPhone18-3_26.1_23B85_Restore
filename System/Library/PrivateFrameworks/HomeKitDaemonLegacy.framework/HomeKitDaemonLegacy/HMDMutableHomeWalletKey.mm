@interface HMDMutableHomeWalletKey
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableHomeWalletKey

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDHomeWalletKey allocWithZone:zone];
  typeIdentifier = [(HMDHomeWalletKey *)self typeIdentifier];
  serialNumber = [(HMDHomeWalletKey *)self serialNumber];
  state = [(HMDHomeWalletKey *)self state];
  walletKeyDescription = [(HMDHomeWalletKey *)self walletKeyDescription];
  homeName = [(HMDHomeWalletKey *)self homeName];
  color = [(HMDHomeWalletKey *)self color];
  nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
  v12 = [(HMDHomeWalletKey *)v4 initWithTypeIdentifier:typeIdentifier serialNumber:serialNumber state:state walletKeyDescription:walletKeyDescription homeName:homeName color:color nfcInfos:nfcInfos];

  accessCode = [(HMDHomeWalletKey *)self accessCode];
  [(HMDHomeWalletKey *)v12 setAccessCode:accessCode];

  changeAccessCodeHomeAppCustomURL = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  [(HMDHomeWalletKey *)v12 setChangeAccessCodeHomeAppCustomURL:changeAccessCodeHomeAppCustomURL];

  customURL = [(HMDHomeWalletKey *)self customURL];
  [(HMDHomeWalletKey *)v12 setCustomURL:customURL];

  return v12;
}

@end