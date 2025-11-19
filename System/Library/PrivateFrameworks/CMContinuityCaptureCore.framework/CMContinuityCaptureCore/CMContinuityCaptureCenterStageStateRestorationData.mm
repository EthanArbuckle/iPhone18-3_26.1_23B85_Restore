@interface CMContinuityCaptureCenterStageStateRestorationData
- (CMContinuityCaptureCenterStageStateRestorationData)initWithPreferencesDomain:(id)a3;
- (id)description;
@end

@implementation CMContinuityCaptureCenterStageStateRestorationData

- (CMContinuityCaptureCenterStageStateRestorationData)initWithPreferencesDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CMContinuityCaptureCenterStageStateRestorationData;
  v6 = [(CMContinuityCaptureCenterStageStateRestorationData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferencesDomain, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureCenterStageStateRestorationData *)self debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

@end