@interface HMIMutableHomePersonManagerSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMIMutableHomePersonManagerSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMIHomePersonManagerSettings allocWithZone:?]];
  [(HMIHomePersonManagerSettings *)v4 setFaceClassificationEnabled:[(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled]];
  return v4;
}

@end