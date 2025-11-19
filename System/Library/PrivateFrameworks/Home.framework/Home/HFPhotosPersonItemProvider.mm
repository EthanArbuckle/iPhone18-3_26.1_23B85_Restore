@interface HFPhotosPersonItemProvider
- (HFPhotosPersonItemProvider)initWithHome:(id)a3 forUser:(id)a4;
- (HFPhotosPersonItemProvider)initWithHome:(id)a3 personManager:(id)a4;
@end

@implementation HFPhotosPersonItemProvider

- (HFPhotosPersonItemProvider)initWithHome:(id)a3 forUser:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 hf_allUsersIncludingCurrentUser];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [v6 photosPersonManager];
    v15.receiver = self;
    v15.super_class = HFPhotosPersonItemProvider;
    v11 = [(HFPersonItemProvider *)&v15 initWithHome:v7 personManager:v10];

    self = v11;
    v12 = self;
  }

  else
  {
    v13 = [v7 hf_allUsersIncludingCurrentUser];
    NSLog(&cfstr_SHomeDoesnTInc_0.isa, self, "[HFPhotosPersonItemProvider initWithHome:forUser:]", v7, v6, v13);

    v12 = 0;
  }

  return v12;
}

- (HFPhotosPersonItemProvider)initWithHome:(id)a3 personManager:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_forUser_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFPersonItemProvider.m" lineNumber:106 description:{@"%s is unavailable; use %@ instead", "-[HFPhotosPersonItemProvider initWithHome:personManager:]", v7}];

  return 0;
}

@end