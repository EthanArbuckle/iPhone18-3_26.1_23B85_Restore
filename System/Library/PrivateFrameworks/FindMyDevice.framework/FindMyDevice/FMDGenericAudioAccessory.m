@interface FMDGenericAudioAccessory
+ (id)copyAccessory:(id)a3;
- (FMDGenericAudioAccessory)initWithAccessoryId:(id)a3 audioRoutingIdentifier:(id)a4 audioURL:(id)a5 audioAccessoryInfo:(id)a6 supportsChangingListeningMode:(BOOL)a7;
- (FMDGenericAudioAccessory)initWithCoder:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDGenericAudioAccessory

+ (id)copyAccessory:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FMDGenericAudioAccessory);
  if ([v3 conformsToProtocol:&unk_1F5AA7D10])
  {
    v5 = [v3 accessoryIdentifier];
    [(FMDGenericAudioAccessory *)v4 setAccessoryIdentifier:v5];
  }

  if ([v3 conformsToProtocol:&unk_1F5AA7CB0])
  {
    v6 = v3;
    v7 = [v6 audioRoutingIdentifier];
    [(FMDGenericAudioAccessory *)v4 setAudioRoutingIdentifier:v7];

    v8 = [v6 audioURL];
    [(FMDGenericAudioAccessory *)v4 setAudioURL:v8];

    v9 = [v6 audioAccessoryInfo];

    [(FMDGenericAudioAccessory *)v4 setAudioAccessoryInfo:v9];
  }

  [(FMDGenericAudioAccessory *)v4 setSupportsChangingListeningMode:1];

  return v4;
}

- (FMDGenericAudioAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FMDGenericAudioAccessory;
  v5 = [(FMDGenericAudioAccessory *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accessoryIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDGenericAudioAccessory *)v5 setAccessoryIdentifier:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_audioRoutingIdentifier);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDGenericAudioAccessory *)v5 setAudioRoutingIdentifier:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_audioURL);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDGenericAudioAccessory *)v5 setAudioURL:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_audioAccessoryInfo);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDGenericAudioAccessory *)v5 setAudioAccessoryInfo:v17];

    v18 = NSStringFromSelector(sel_supportsChangingListeningMode);
    -[FMDGenericAudioAccessory setSupportsChangingListeningMode:](v5, "setSupportsChangingListeningMode:", [v4 decodeBoolForKey:v18]);
  }

  return v5;
}

- (FMDGenericAudioAccessory)initWithAccessoryId:(id)a3 audioRoutingIdentifier:(id)a4 audioURL:(id)a5 audioAccessoryInfo:(id)a6 supportsChangingListeningMode:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = FMDGenericAudioAccessory;
  v17 = [(FMDGenericAudioAccessory *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accessoryIdentifier, a3);
    objc_storeStrong(&v18->_audioRoutingIdentifier, a4);
    objc_storeStrong(&v18->_audioURL, a5);
    objc_storeStrong(&v18->_audioAccessoryInfo, a6);
    v18->_supportsChangingListeningMode = a7;
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FMDGenericAudioAccessory *)self accessoryIdentifier];
  v5 = [(FMDGenericAudioAccessory *)self audioRoutingIdentifier];
  v6 = [(FMDGenericAudioAccessory *)self audioURL];
  v7 = [v3 stringWithFormat:@"FMDGenericAccessory(0x%lx), accessoryIdentifier - %@, audioRoutingIdentifier - %@, audioURL - %@", self, v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDGenericAudioAccessory *)self accessoryIdentifier];
  v6 = NSStringFromSelector(sel_accessoryIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDGenericAudioAccessory *)self audioRoutingIdentifier];
  v8 = NSStringFromSelector(sel_audioRoutingIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDGenericAudioAccessory *)self audioURL];
  v10 = NSStringFromSelector(sel_audioURL);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(FMDGenericAudioAccessory *)self audioAccessoryInfo];
  v12 = NSStringFromSelector(sel_audioAccessoryInfo);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(FMDGenericAudioAccessory *)self supportsChangingListeningMode];
  v14 = NSStringFromSelector(sel_supportsChangingListeningMode);
  [v4 encodeBool:v13 forKey:v14];
}

@end