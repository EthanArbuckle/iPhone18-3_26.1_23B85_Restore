@interface MRModifyOutputContextRequestMessage
- (MRGroupTopologyModificationRequest)request;
- (MRModifyOutputContextRequestMessage)initWithRequest:(id)a3;
- (NSArray)addingOutputDeviceUIDs;
- (NSArray)removingOutputDeviceUIDs;
- (NSArray)settingOutputDeviceUIDs;
- (unsigned)contextType;
@end

@implementation MRModifyOutputContextRequestMessage

- (MRModifyOutputContextRequestMessage)initWithRequest:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MRModifyOutputContextRequestMessage;
  v5 = [(MRProtocolMessage *)&v13 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = objc_alloc_init(_MRAVModifyOutputContextRequestProtobuf);
  [(_MRAVModifyOutputContextRequestProtobuf *)v6 setOutputContextType:1];
  v7 = [v4 protobuf];
  [(_MRAVModifyOutputContextRequestProtobuf *)v6 setRequest:v7];

  v8 = [v4 type];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = [v4 outputDeviceUIDs];
      v10 = [v9 mutableCopy];
      [(_MRAVModifyOutputContextRequestProtobuf *)v6 setClusterAwareRemovingOutputDeviceUIDs:v10];
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      v9 = [v4 outputDeviceUIDs];
      v10 = [v9 mutableCopy];
      [(_MRAVModifyOutputContextRequestProtobuf *)v6 setClusterAwareSettingOutputDeviceUIDs:v10];
      goto LABEL_11;
    }

LABEL_12:
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];

LABEL_13:
    v11 = v5;
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = [v4 outputDeviceUIDs];
      v10 = [v9 mutableCopy];
      [(_MRAVModifyOutputContextRequestProtobuf *)v6 setClusterAwareAddingOutputDeviceUIDs:v10];
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (unsigned)contextType
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputContextType];
  if (v3 - 1 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (MRGroupTopologyModificationRequest)request
{
  if (!self->_request)
  {
    v3 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v4 = [v3 hasRequest];

    if (v4)
    {
      v5 = [MRGroupTopologyModificationRequest alloc];
      v6 = [(MRProtocolMessage *)self underlyingCodableMessage];
      v7 = [(MRRequestDetails *)v6 request];
      v8 = [(MRGroupTopologyModificationRequest *)v5 initWithProtobuf:v7];
LABEL_12:
      request = self->_request;
      self->_request = v8;

      goto LABEL_13;
    }

    v9 = [MRRequestDetails alloc];
    v10 = [(MRProtocolMessage *)self replyIdentifier];
    v6 = [(MRRequestDetails *)v9 initWithName:@"MRModifyOutputContextRequestMessage" requestID:v10 reason:@"MRModifyOutputContextRequestMessage"];

    v11 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v12 = [v11 clusterAwareAddingOutputDeviceUIDs];
    v13 = [v12 count];

    v14 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v15 = v14;
    if (v13)
    {
      v7 = [v14 clusterAwareAddingOutputDeviceUIDs];
      v16 = 1;
    }

    else
    {
      v17 = [v14 clusterAwareRemovingOutputDeviceUIDs];
      v18 = [v17 count];

      v19 = [(MRProtocolMessage *)self underlyingCodableMessage];
      v15 = v19;
      if (v18)
      {
        v7 = [v19 clusterAwareRemovingOutputDeviceUIDs];
        v16 = 2;
      }

      else
      {
        v20 = [v19 clusterAwareSettingOutputDeviceUIDs];
        v16 = [v20 count];

        if (!v16)
        {
          v7 = 0;
          goto LABEL_11;
        }

        v15 = [(MRProtocolMessage *)self underlyingCodableMessage];
        v7 = [v15 clusterAwareSettingOutputDeviceUIDs];
        v16 = 3;
      }
    }

LABEL_11:
    v8 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v6 type:v16 outputDeviceUIDs:v7];
    goto LABEL_12;
  }

LABEL_13:
  v22 = self->_request;

  return v22;
}

- (NSArray)addingOutputDeviceUIDs
{
  v3 = [(MRModifyOutputContextRequestMessage *)self request];
  if ([v3 type] == 1)
  {
    v4 = [(MRModifyOutputContextRequestMessage *)self request];
    v5 = [v4 outputDeviceUIDs];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)removingOutputDeviceUIDs
{
  v3 = [(MRModifyOutputContextRequestMessage *)self request];
  if ([v3 type] == 2)
  {
    v4 = [(MRModifyOutputContextRequestMessage *)self request];
    v5 = [v4 outputDeviceUIDs];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)settingOutputDeviceUIDs
{
  v3 = [(MRModifyOutputContextRequestMessage *)self request];
  if ([v3 type] == 3)
  {
    v4 = [(MRModifyOutputContextRequestMessage *)self request];
    v5 = [v4 outputDeviceUIDs];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end