@interface IDSService(HMDIDSService)
+ (id)_destinationForDevice:()HMDIDSService;
- (id)hmd_idsSessionWithAccount:()HMDIDSService device:options:;
@end

@implementation IDSService(HMDIDSService)

- (id)hmd_idsSessionWithAccount:()HMDIDSService device:options:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v8)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return [IDSService(HMDIDSService) _destinationForDevice:v16];
  }

  v11 = [objc_opt_class() _destinationForDevice:v8];
  v12 = objc_alloc(MEMORY[0x277D18788]);
  v13 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v14 = [v12 initWithAccount:v7 destinations:v13 options:v10];

  return v14;
}

+ (id)_destinationForDevice:()HMDIDSService
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  account = [v3 account];
  if ([account isCurrentAccount])
  {
    primaryHandle = [account primaryHandle];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    handles = [account handles];
    v7 = [handles countByEnumeratingWithState:&v32 objects:v37 count:16];
    v27 = account;
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(handles);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          if ([v11 isLocal])
          {
            v12 = v11;

            primaryHandle = v12;
            goto LABEL_12;
          }
        }

        v8 = [handles countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    globalHandles = [v3 globalHandles];
    v14 = [globalHandles countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(globalHandles);
          }

          internal = [*(*(&v28 + 1) + 8 * j) internal];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = internal;
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;

          if (v20)
          {
            v21 = [_HMDGlobalDeviceHandle alloc];
            pushToken = [v20 pushToken];
            v23 = [(_HMDGlobalDeviceHandle *)v21 initWithPushToken:pushToken accountHandle:primaryHandle];

            if (v23)
            {
              destination = [(_HMDGlobalDeviceHandle *)v23 destination];

              account = v27;
              goto LABEL_27;
            }
          }
        }

        v15 = [globalHandles countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    account = v27;
  }

  destination = [v3 remoteDestinationString];
LABEL_27:

  v25 = *MEMORY[0x277D85DE8];

  return destination;
}

@end