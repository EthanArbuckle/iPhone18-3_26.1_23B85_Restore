@interface FMDGenericAudioAccessory
+ (id)copyAccessory:(id)accessory;
- (FMDGenericAudioAccessory)initWithAccessoryId:(id)id audioRoutingIdentifier:(id)identifier audioURL:(id)l audioAccessoryInfo:(id)info supportsChangingListeningMode:(BOOL)mode;
- (FMDGenericAudioAccessory)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDGenericAudioAccessory

+ (id)copyAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = objc_alloc_init(FMDGenericAudioAccessory);
  if ([accessoryCopy conformsToProtocol:&unk_1F5AA7D10])
  {
    accessoryIdentifier = [accessoryCopy accessoryIdentifier];
    [(FMDGenericAudioAccessory *)v4 setAccessoryIdentifier:accessoryIdentifier];
  }

  if ([accessoryCopy conformsToProtocol:&unk_1F5AA7CB0])
  {
    v6 = accessoryCopy;
    audioRoutingIdentifier = [v6 audioRoutingIdentifier];
    [(FMDGenericAudioAccessory *)v4 setAudioRoutingIdentifier:audioRoutingIdentifier];

    audioURL = [v6 audioURL];
    [(FMDGenericAudioAccessory *)v4 setAudioURL:audioURL];

    audioAccessoryInfo = [v6 audioAccessoryInfo];

    [(FMDGenericAudioAccessory *)v4 setAudioAccessoryInfo:audioAccessoryInfo];
  }

  [(FMDGenericAudioAccessory *)v4 setSupportsChangingListeningMode:1];

  return v4;
}

- (FMDGenericAudioAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = FMDGenericAudioAccessory;
  v5 = [(FMDGenericAudioAccessory *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accessoryIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDGenericAudioAccessory *)v5 setAccessoryIdentifier:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_audioRoutingIdentifier);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDGenericAudioAccessory *)v5 setAudioRoutingIdentifier:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_audioURL);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDGenericAudioAccessory *)v5 setAudioURL:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_audioAccessoryInfo);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDGenericAudioAccessory *)v5 setAudioAccessoryInfo:v17];

    v18 = NSStringFromSelector(sel_supportsChangingListeningMode);
    -[FMDGenericAudioAccessory setSupportsChangingListeningMode:](v5, "setSupportsChangingListeningMode:", [coderCopy decodeBoolForKey:v18]);
  }

  return v5;
}

- (FMDGenericAudioAccessory)initWithAccessoryId:(id)id audioRoutingIdentifier:(id)identifier audioURL:(id)l audioAccessoryInfo:(id)info supportsChangingListeningMode:(BOOL)mode
{
  idCopy = id;
  identifierCopy = identifier;
  lCopy = l;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = FMDGenericAudioAccessory;
  v17 = [(FMDGenericAudioAccessory *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accessoryIdentifier, id);
    objc_storeStrong(&v18->_audioRoutingIdentifier, identifier);
    objc_storeStrong(&v18->_audioURL, l);
    objc_storeStrong(&v18->_audioAccessoryInfo, info);
    v18->_supportsChangingListeningMode = mode;
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  accessoryIdentifier = [(FMDGenericAudioAccessory *)self accessoryIdentifier];
  audioRoutingIdentifier = [(FMDGenericAudioAccessory *)self audioRoutingIdentifier];
  audioURL = [(FMDGenericAudioAccessory *)self audioURL];
  v7 = [v3 stringWithFormat:@"FMDGenericAccessory(0x%lx), accessoryIdentifier - %@, audioRoutingIdentifier - %@, audioURL - %@", self, accessoryIdentifier, audioRoutingIdentifier, audioURL];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(FMDGenericAudioAccessory *)self accessoryIdentifier];
  v6 = NSStringFromSelector(sel_accessoryIdentifier);
  [coderCopy encodeObject:accessoryIdentifier forKey:v6];

  audioRoutingIdentifier = [(FMDGenericAudioAccessory *)self audioRoutingIdentifier];
  v8 = NSStringFromSelector(sel_audioRoutingIdentifier);
  [coderCopy encodeObject:audioRoutingIdentifier forKey:v8];

  audioURL = [(FMDGenericAudioAccessory *)self audioURL];
  v10 = NSStringFromSelector(sel_audioURL);
  [coderCopy encodeObject:audioURL forKey:v10];

  audioAccessoryInfo = [(FMDGenericAudioAccessory *)self audioAccessoryInfo];
  v12 = NSStringFromSelector(sel_audioAccessoryInfo);
  [coderCopy encodeObject:audioAccessoryInfo forKey:v12];

  supportsChangingListeningMode = [(FMDGenericAudioAccessory *)self supportsChangingListeningMode];
  v14 = NSStringFromSelector(sel_supportsChangingListeningMode);
  [coderCopy encodeBool:supportsChangingListeningMode forKey:v14];
}

@end