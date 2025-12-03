@interface CNTUCallProvider
- (BOOL)doesContactHaveSupportedHandles:(id)handles;
- (BOOL)supportsAudio;
- (BOOL)supportsVideo;
- (CNTUCallProvider)initWithCallProvider:(id)provider;
- (NSSet)supportedHandleTypes;
- (NSString)bundleIdentifier;
- (NSString)localizedName;
- (id)dialRequestForHandle:(id)handle contact:(id)contact video:(BOOL)video;
@end

@implementation CNTUCallProvider

- (CNTUCallProvider)initWithCallProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = CNTUCallProvider;
  v5 = [(CNTUCallProvider *)&v10 init];
  if (v5)
  {
    v6 = [providerCopy copy];
    callProvider = v5->_callProvider;
    v5->_callProvider = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)localizedName
{
  callProvider = [(CNTUCallProvider *)self callProvider];
  localizedName = [callProvider localizedName];

  return localizedName;
}

- (NSString)bundleIdentifier
{
  callProvider = [(CNTUCallProvider *)self callProvider];
  bundleIdentifier = [callProvider bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)supportsAudio
{
  callProvider = [(CNTUCallProvider *)self callProvider];
  if ([callProvider isTelephonyProvider])
  {
    supportsAudioOnly = 0;
  }

  else
  {
    callProvider2 = [(CNTUCallProvider *)self callProvider];
    if ([callProvider2 isFaceTimeProvider])
    {
      supportsAudioOnly = 0;
    }

    else
    {
      callProvider3 = [(CNTUCallProvider *)self callProvider];
      supportsAudioOnly = [callProvider3 supportsAudioOnly];
    }
  }

  return supportsAudioOnly;
}

- (BOOL)supportsVideo
{
  callProvider = [(CNTUCallProvider *)self callProvider];
  if ([callProvider isTelephonyProvider])
  {
    supportsAudioAndVideo = 0;
  }

  else
  {
    callProvider2 = [(CNTUCallProvider *)self callProvider];
    if ([callProvider2 isFaceTimeProvider])
    {
      supportsAudioAndVideo = 0;
    }

    else
    {
      callProvider3 = [(CNTUCallProvider *)self callProvider];
      supportsAudioAndVideo = [callProvider3 supportsAudioAndVideo];
    }
  }

  return supportsAudioAndVideo;
}

- (NSSet)supportedHandleTypes
{
  callProvider = [(CNTUCallProvider *)self callProvider];
  supportedHandleTypes = [callProvider supportedHandleTypes];

  return supportedHandleTypes;
}

- (BOOL)doesContactHaveSupportedHandles:(id)handles
{
  handlesCopy = handles;
  phoneNumbers = [handlesCopy phoneNumbers];
  v6 = [phoneNumbers count];

  emailAddresses = [handlesCopy emailAddresses];

  v8 = [emailAddresses count];
  if (!(v6 | v8))
  {
    return 0;
  }

  supportedHandleTypes = [(CNTUCallProvider *)self supportedHandleTypes];
  v10 = [supportedHandleTypes containsObject:&unk_1F1645DA8];

  if (v10 && v6)
  {
    return 1;
  }

  supportedHandleTypes2 = [(CNTUCallProvider *)self supportedHandleTypes];
  v12 = [supportedHandleTypes2 containsObject:&unk_1F1645DC0];

  if (v12)
  {
    if (v8)
    {
      return 1;
    }
  }

  supportedHandleTypes3 = [(CNTUCallProvider *)self supportedHandleTypes];
  v15 = [supportedHandleTypes3 containsObject:&unk_1F1645DD8];

  return v15;
}

- (id)dialRequestForHandle:(id)handle contact:(id)contact video:(BOOL)video
{
  videoCopy = video;
  handleCopy = handle;
  contactCopy = contact;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v10 = getTUDialRequestClass_softClass_2;
  v23 = getTUDialRequestClass_softClass_2;
  if (!getTUDialRequestClass_softClass_2)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getTUDialRequestClass_block_invoke_2;
    v19[3] = &unk_1E76E79E0;
    v19[4] = &v20;
    __getTUDialRequestClass_block_invoke_2(v19);
    v10 = v21[3];
  }

  v11 = v10;
  _Block_object_dispose(&v20, 8);
  v12 = [v10 alloc];
  callProvider = [(CNTUCallProvider *)self callProvider];
  v14 = [v12 cn_initWithProvider:callProvider];

  v15 = [CNHandle tuHandleForHandle:handleCopy];
  [v14 setHandle:v15];

  customIdentifier = [handleCopy customIdentifier];
  [v14 setProviderCustomIdentifier:customIdentifier];

  if ([contactCopy hasBeenPersisted])
  {
    identifier = [contactCopy identifier];
    [v14 setContactIdentifier:identifier];
  }

  [v14 setVideo:videoCopy];

  return v14;
}

@end