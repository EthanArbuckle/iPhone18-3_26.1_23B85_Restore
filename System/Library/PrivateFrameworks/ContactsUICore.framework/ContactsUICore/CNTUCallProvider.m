@interface CNTUCallProvider
- (BOOL)doesContactHaveSupportedHandles:(id)a3;
- (BOOL)supportsAudio;
- (BOOL)supportsVideo;
- (CNTUCallProvider)initWithCallProvider:(id)a3;
- (NSSet)supportedHandleTypes;
- (NSString)bundleIdentifier;
- (NSString)localizedName;
- (id)dialRequestForHandle:(id)a3 contact:(id)a4 video:(BOOL)a5;
@end

@implementation CNTUCallProvider

- (CNTUCallProvider)initWithCallProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNTUCallProvider;
  v5 = [(CNTUCallProvider *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    callProvider = v5->_callProvider;
    v5->_callProvider = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)localizedName
{
  v2 = [(CNTUCallProvider *)self callProvider];
  v3 = [v2 localizedName];

  return v3;
}

- (NSString)bundleIdentifier
{
  v2 = [(CNTUCallProvider *)self callProvider];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (BOOL)supportsAudio
{
  v3 = [(CNTUCallProvider *)self callProvider];
  if ([v3 isTelephonyProvider])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CNTUCallProvider *)self callProvider];
    if ([v5 isFaceTimeProvider])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(CNTUCallProvider *)self callProvider];
      v4 = [v6 supportsAudioOnly];
    }
  }

  return v4;
}

- (BOOL)supportsVideo
{
  v3 = [(CNTUCallProvider *)self callProvider];
  if ([v3 isTelephonyProvider])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CNTUCallProvider *)self callProvider];
    if ([v5 isFaceTimeProvider])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(CNTUCallProvider *)self callProvider];
      v4 = [v6 supportsAudioAndVideo];
    }
  }

  return v4;
}

- (NSSet)supportedHandleTypes
{
  v2 = [(CNTUCallProvider *)self callProvider];
  v3 = [v2 supportedHandleTypes];

  return v3;
}

- (BOOL)doesContactHaveSupportedHandles:(id)a3
{
  v4 = a3;
  v5 = [v4 phoneNumbers];
  v6 = [v5 count];

  v7 = [v4 emailAddresses];

  v8 = [v7 count];
  if (!(v6 | v8))
  {
    return 0;
  }

  v9 = [(CNTUCallProvider *)self supportedHandleTypes];
  v10 = [v9 containsObject:&unk_1F1645DA8];

  if (v10 && v6)
  {
    return 1;
  }

  v11 = [(CNTUCallProvider *)self supportedHandleTypes];
  v12 = [v11 containsObject:&unk_1F1645DC0];

  if (v12)
  {
    if (v8)
    {
      return 1;
    }
  }

  v14 = [(CNTUCallProvider *)self supportedHandleTypes];
  v15 = [v14 containsObject:&unk_1F1645DD8];

  return v15;
}

- (id)dialRequestForHandle:(id)a3 contact:(id)a4 video:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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
  v13 = [(CNTUCallProvider *)self callProvider];
  v14 = [v12 cn_initWithProvider:v13];

  v15 = [CNHandle tuHandleForHandle:v8];
  [v14 setHandle:v15];

  v16 = [v8 customIdentifier];
  [v14 setProviderCustomIdentifier:v16];

  if ([v9 hasBeenPersisted])
  {
    v17 = [v9 identifier];
    [v14 setContactIdentifier:v17];
  }

  [v14 setVideo:v5];

  return v14;
}

@end