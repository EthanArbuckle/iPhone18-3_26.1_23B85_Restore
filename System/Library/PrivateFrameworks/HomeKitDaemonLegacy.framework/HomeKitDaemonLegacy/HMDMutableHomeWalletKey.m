@interface HMDMutableHomeWalletKey
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableHomeWalletKey

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDHomeWalletKey allocWithZone:a3];
  v5 = [(HMDHomeWalletKey *)self typeIdentifier];
  v6 = [(HMDHomeWalletKey *)self serialNumber];
  v7 = [(HMDHomeWalletKey *)self state];
  v8 = [(HMDHomeWalletKey *)self walletKeyDescription];
  v9 = [(HMDHomeWalletKey *)self homeName];
  v10 = [(HMDHomeWalletKey *)self color];
  v11 = [(HMDHomeWalletKey *)self nfcInfos];
  v12 = [(HMDHomeWalletKey *)v4 initWithTypeIdentifier:v5 serialNumber:v6 state:v7 walletKeyDescription:v8 homeName:v9 color:v10 nfcInfos:v11];

  v13 = [(HMDHomeWalletKey *)self accessCode];
  [(HMDHomeWalletKey *)v12 setAccessCode:v13];

  v14 = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  [(HMDHomeWalletKey *)v12 setChangeAccessCodeHomeAppCustomURL:v14];

  v15 = [(HMDHomeWalletKey *)self customURL];
  [(HMDHomeWalletKey *)v12 setCustomURL:v15];

  return v12;
}

@end