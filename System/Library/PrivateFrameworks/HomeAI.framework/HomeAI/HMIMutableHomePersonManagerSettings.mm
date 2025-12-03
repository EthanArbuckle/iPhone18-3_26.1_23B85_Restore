@interface HMIMutableHomePersonManagerSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMIMutableHomePersonManagerSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMIHomePersonManagerSettings allocWithZone:?]];
  [(HMIHomePersonManagerSettings *)v4 setFaceClassificationEnabled:[(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled]];
  return v4;
}

@end