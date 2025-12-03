@interface MRModifyOutputContextRequestMessage
- (MRGroupTopologyModificationRequest)request;
- (MRModifyOutputContextRequestMessage)initWithRequest:(id)request;
- (NSArray)addingOutputDeviceUIDs;
- (NSArray)removingOutputDeviceUIDs;
- (NSArray)settingOutputDeviceUIDs;
- (unsigned)contextType;
@end

@implementation MRModifyOutputContextRequestMessage

- (MRModifyOutputContextRequestMessage)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = MRModifyOutputContextRequestMessage;
  v5 = [(MRProtocolMessage *)&v13 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = objc_alloc_init(_MRAVModifyOutputContextRequestProtobuf);
  [(_MRAVModifyOutputContextRequestProtobuf *)v6 setOutputContextType:1];
  protobuf = [requestCopy protobuf];
  [(_MRAVModifyOutputContextRequestProtobuf *)v6 setRequest:protobuf];

  type = [requestCopy type];
  if (type > 1)
  {
    if (type == 2)
    {
      outputDeviceUIDs = [requestCopy outputDeviceUIDs];
      v10 = [outputDeviceUIDs mutableCopy];
      [(_MRAVModifyOutputContextRequestProtobuf *)v6 setClusterAwareRemovingOutputDeviceUIDs:v10];
      goto LABEL_11;
    }

    if (type == 3)
    {
      outputDeviceUIDs = [requestCopy outputDeviceUIDs];
      v10 = [outputDeviceUIDs mutableCopy];
      [(_MRAVModifyOutputContextRequestProtobuf *)v6 setClusterAwareSettingOutputDeviceUIDs:v10];
      goto LABEL_11;
    }

LABEL_12:
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];

LABEL_13:
    v11 = v5;
    goto LABEL_14;
  }

  if (type)
  {
    if (type == 1)
    {
      outputDeviceUIDs = [requestCopy outputDeviceUIDs];
      v10 = [outputDeviceUIDs mutableCopy];
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
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputContextType = [underlyingCodableMessage outputContextType];
  if (outputContextType - 1 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = outputContextType;
  }

  return v4;
}

- (MRGroupTopologyModificationRequest)request
{
  if (!self->_request)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    hasRequest = [underlyingCodableMessage hasRequest];

    if (hasRequest)
    {
      v5 = [MRGroupTopologyModificationRequest alloc];
      underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
      request = [(MRRequestDetails *)underlyingCodableMessage2 request];
      v8 = [(MRGroupTopologyModificationRequest *)v5 initWithProtobuf:request];
LABEL_12:
      request = self->_request;
      self->_request = v8;

      goto LABEL_13;
    }

    v9 = [MRRequestDetails alloc];
    replyIdentifier = [(MRProtocolMessage *)self replyIdentifier];
    underlyingCodableMessage2 = [(MRRequestDetails *)v9 initWithName:@"MRModifyOutputContextRequestMessage" requestID:replyIdentifier reason:@"MRModifyOutputContextRequestMessage"];

    underlyingCodableMessage3 = [(MRProtocolMessage *)self underlyingCodableMessage];
    clusterAwareAddingOutputDeviceUIDs = [underlyingCodableMessage3 clusterAwareAddingOutputDeviceUIDs];
    v13 = [clusterAwareAddingOutputDeviceUIDs count];

    underlyingCodableMessage4 = [(MRProtocolMessage *)self underlyingCodableMessage];
    underlyingCodableMessage6 = underlyingCodableMessage4;
    if (v13)
    {
      request = [underlyingCodableMessage4 clusterAwareAddingOutputDeviceUIDs];
      v16 = 1;
    }

    else
    {
      clusterAwareRemovingOutputDeviceUIDs = [underlyingCodableMessage4 clusterAwareRemovingOutputDeviceUIDs];
      v18 = [clusterAwareRemovingOutputDeviceUIDs count];

      underlyingCodableMessage5 = [(MRProtocolMessage *)self underlyingCodableMessage];
      underlyingCodableMessage6 = underlyingCodableMessage5;
      if (v18)
      {
        request = [underlyingCodableMessage5 clusterAwareRemovingOutputDeviceUIDs];
        v16 = 2;
      }

      else
      {
        clusterAwareSettingOutputDeviceUIDs = [underlyingCodableMessage5 clusterAwareSettingOutputDeviceUIDs];
        v16 = [clusterAwareSettingOutputDeviceUIDs count];

        if (!v16)
        {
          request = 0;
          goto LABEL_11;
        }

        underlyingCodableMessage6 = [(MRProtocolMessage *)self underlyingCodableMessage];
        request = [underlyingCodableMessage6 clusterAwareSettingOutputDeviceUIDs];
        v16 = 3;
      }
    }

LABEL_11:
    v8 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:underlyingCodableMessage2 type:v16 outputDeviceUIDs:request];
    goto LABEL_12;
  }

LABEL_13:
  v22 = self->_request;

  return v22;
}

- (NSArray)addingOutputDeviceUIDs
{
  request = [(MRModifyOutputContextRequestMessage *)self request];
  if ([request type] == 1)
  {
    request2 = [(MRModifyOutputContextRequestMessage *)self request];
    outputDeviceUIDs = [request2 outputDeviceUIDs];
  }

  else
  {
    outputDeviceUIDs = 0;
  }

  return outputDeviceUIDs;
}

- (NSArray)removingOutputDeviceUIDs
{
  request = [(MRModifyOutputContextRequestMessage *)self request];
  if ([request type] == 2)
  {
    request2 = [(MRModifyOutputContextRequestMessage *)self request];
    outputDeviceUIDs = [request2 outputDeviceUIDs];
  }

  else
  {
    outputDeviceUIDs = 0;
  }

  return outputDeviceUIDs;
}

- (NSArray)settingOutputDeviceUIDs
{
  request = [(MRModifyOutputContextRequestMessage *)self request];
  if ([request type] == 3)
  {
    request2 = [(MRModifyOutputContextRequestMessage *)self request];
    outputDeviceUIDs = [request2 outputDeviceUIDs];
  }

  else
  {
    outputDeviceUIDs = 0;
  }

  return outputDeviceUIDs;
}

@end