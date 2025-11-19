@interface MRAVRoutingDiscoverySession(MPAVOutputDeviceRoutingDataSource)
- (id)_replaceOutputDevices:()MPAVOutputDeviceRoutingDataSource withOutputDevices:;
- (id)availableOutputDevicesForEndpoint:()MPAVOutputDeviceRoutingDataSource;
@end

@implementation MRAVRoutingDiscoverySession(MPAVOutputDeviceRoutingDataSource)

- (id)availableOutputDevicesForEndpoint:()MPAVOutputDeviceRoutingDataSource
{
  v4 = a3;
  v5 = [a1 availableOutputDevices];
  v6 = [v4 resolvedOutputDevices];

  v7 = [a1 _replaceOutputDevices:v5 withOutputDevices:v6];

  return v7;
}

- (id)_replaceOutputDevices:()MPAVOutputDeviceRoutingDataSource withOutputDevices:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = a4;
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __106__MRAVRoutingDiscoverySession_MPAVOutputDeviceRoutingDataSource___replaceOutputDevices_withOutputDevices___block_invoke;
        v23[3] = &unk_1E76661D0;
        v23[4] = v10;
        v11 = [v22 msv_firstWhere:v23];
        if ([v10 isGroupable] && (objc_msgSend(v11, "isGroupable") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v12 = [v11 groupableOutputDevice];

          v11 = v12;
        }

        v13 = [v10 sourceInfo];
        v14 = [v13 multipleBuiltInDevices];
        v15 = [v11 sourceInfo];
        v16 = [v15 multipleBuiltInDevices];

        if (v14 != v16)
        {
          v17 = [v11 outputDeviceWithSourceInfoFrom:v10];

          v11 = v17;
        }

        if (v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = v10;
        }

        [v21 addObject:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v21;
}

@end