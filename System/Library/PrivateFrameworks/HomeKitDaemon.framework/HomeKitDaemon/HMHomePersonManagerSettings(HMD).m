@interface HMHomePersonManagerSettings(HMD)
- (id)createHMIHomePersonManagerSettings;
@end

@implementation HMHomePersonManagerSettings(HMD)

- (id)createHMIHomePersonManagerSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D14DA8]);
  [v2 setFaceClassificationEnabled:{objc_msgSend(a1, "isFaceClassificationEnabled")}];
  v3 = [v2 copy];

  return v3;
}

@end