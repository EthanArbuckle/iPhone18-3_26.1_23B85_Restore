@interface MRSyncOutputDevicesMessage
- (MRSyncOutputDevicesMessage)initWithOutputDevices:(id)devices forClientWithDeviceInfo:(id)info;
- (NSArray)outputDevices;
@end

@implementation MRSyncOutputDevicesMessage

- (MRSyncOutputDevicesMessage)initWithOutputDevices:(id)devices forClientWithDeviceInfo:(id)info
{
  v42 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  infoCopy = info;
  v39.receiver = self;
  v39.super_class = MRSyncOutputDevicesMessage;
  v9 = [(MRProtocolMessage *)&v39 init];
  v10 = v9;
  if (v9)
  {
    v27 = v9;
    objc_storeStrong(&v9->_outputDevices, devices);
    v11 = objc_alloc_init(_MRUpdateOutputDevicesMessageProtobuf);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = devicesCopy;
    v12 = devicesCopy;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      v29 = v12;
      v30 = infoCopy;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          descriptor = [v17 descriptor];
          if (descriptor)
          {
            [(_MRUpdateOutputDevicesMessageProtobuf *)v11 addClusterAwareOutputDevices:descriptor];
            if (![infoCopy lastSupportedClusterType])
            {
              if ([v17 deviceSubtype] == 15)
              {
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                clusterComposition = [v17 clusterComposition];
                v20 = [clusterComposition countByEnumeratingWithState:&v31 objects:v40 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v32;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v32 != v22)
                      {
                        objc_enumerationMutation(clusterComposition);
                      }

                      descriptor2 = [*(*(&v31 + 1) + 8 * j) descriptor];
                      [(_MRUpdateOutputDevicesMessageProtobuf *)v11 addOutputDevices:descriptor2];
                    }

                    v21 = [clusterComposition countByEnumeratingWithState:&v31 objects:v40 count:16];
                  }

                  while (v21);
                }

                v12 = v29;
                infoCopy = v30;
              }

              else
              {
                [(_MRUpdateOutputDevicesMessageProtobuf *)v11 addOutputDevices:descriptor];
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v14);
    }

    v10 = v27;
    [(MRProtocolMessage *)v27 setUnderlyingCodableMessage:v11];

    devicesCopy = v28;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSArray)outputDevices
{
  outputDevices = self->_outputDevices;
  if (!outputDevices)
  {
    v4 = +[MRUserSettings currentSettings];
    useClusterDevices = [v4 useClusterDevices];

    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    v7 = underlyingCodableMessage;
    if (useClusterDevices)
    {
      clusterAwareOutputDevices = [underlyingCodableMessage clusterAwareOutputDevices];
      v9 = clusterAwareOutputDevices;
      if (clusterAwareOutputDevices)
      {
        outputDevices = clusterAwareOutputDevices;
      }

      else
      {
        underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
        outputDevices = [underlyingCodableMessage2 outputDevices];
      }
    }

    else
    {
      outputDevices = [underlyingCodableMessage outputDevices];
    }

    v12 = [outputDevices mr_map:&__block_literal_global_3];
    v13 = self->_outputDevices;
    self->_outputDevices = v12;

    outputDevices = self->_outputDevices;
  }

  return outputDevices;
}

MRAVDistantOutputDevice *__43__MRSyncOutputDevicesMessage_outputDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v3;
}

@end