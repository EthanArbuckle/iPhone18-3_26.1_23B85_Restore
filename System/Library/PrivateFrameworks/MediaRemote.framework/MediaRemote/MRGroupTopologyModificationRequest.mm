@interface MRGroupTopologyModificationRequest
+ (BOOL)_initiatorShouldClearPredictedRoutesByDefault:(id)default forModificationType:(unint64_t)type;
- (MRGroupTopologyModificationRequest)initWithCoder:(id)coder;
- (MRGroupTopologyModificationRequest)initWithData:(id)data;
- (MRGroupTopologyModificationRequest)initWithProtobuf:(id)protobuf;
- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)details type:(unint64_t)type outputDeviceUIDs:(id)ds;
- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)details type:(unint64_t)type outputDevices:(id)devices;
- (NSData)data;
- (_MRGroupTopologyModificationRequestProtobuf)protobuf;
- (id)copyWithOutputDeviceUIDs:(id)ds;
- (id)copyWithType:(unint64_t)type outputDeviceUIDs:(id)ds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRGroupTopologyModificationRequest

- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)details type:(unint64_t)type outputDevices:(id)devices
{
  devicesCopy = devices;
  detailsCopy = details;
  v10 = [devicesCopy msv_compactMap:&__block_literal_global_99];
  v11 = [(MRGroupTopologyModificationRequest *)self initWithRequestDetails:detailsCopy type:type outputDeviceUIDs:v10];

  if (v11)
  {
    v12 = [devicesCopy copy];
    outputDevices = v11->_outputDevices;
    v11->_outputDevices = v12;
  }

  return v11;
}

- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)details type:(unint64_t)type outputDeviceUIDs:(id)ds
{
  detailsCopy = details;
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = MRGroupTopologyModificationRequest;
  v11 = [(MRGroupTopologyModificationRequest *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestDetails, details);
    v12->_type = type;
    v13 = [dsCopy copy];
    outputDeviceUIDs = v12->_outputDeviceUIDs;
    v12->_outputDeviceUIDs = v13;

    v15 = objc_opt_class();
    initiator = [detailsCopy initiator];
    v12->_shouldClearPredictedRoutes = [v15 _initiatorShouldClearPredictedRoutesByDefault:initiator forModificationType:type];
  }

  return v12;
}

- (id)copyWithOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(MRGroupTopologyModificationRequest *)self copyWithType:[(MRGroupTopologyModificationRequest *)self type] outputDeviceUIDs:dsCopy];

  return v5;
}

- (id)copyWithType:(unint64_t)type outputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  protobuf = [(MRGroupTopologyModificationRequest *)self protobuf];
  v8 = [dsCopy mutableCopy];

  [protobuf setOutputDeviceUIDs:v8];
  [protobuf setType:type];
  v9 = [objc_alloc(objc_opt_class()) initWithProtobuf:protobuf];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = MRGroupTopologyModificationRequestTypeDescription([(MRGroupTopologyModificationRequest *)self type]);
  requestDetails = [(MRGroupTopologyModificationRequest *)self requestDetails];
  v6 = [v3 initWithFormat:@"requestType=%@/%@/", v4, requestDetails];

  if (self->_fadeAudio)
  {
    [v6 appendFormat:@"FadeAudio/"];
  }

  if (self->_shouldNotPauseIfLastDeviceRemoved)
  {
    [v6 appendFormat:@"DontPause/"];
  }

  if (self->_suppressErrorDialog)
  {
    [v6 appendFormat:@"SuppressErrorDialog/"];
  }

  if (self->_muteUntilFinished)
  {
    [v6 appendFormat:@"MuteUntilFinished/"];
  }

  if (self->_shouldModifyPredictedRoutes)
  {
    [v6 appendFormat:@"shouldModifyPredictedRoutes/"];
  }

  if (self->_shouldClearPredictedRoutes)
  {
    [v6 appendFormat:@"shouldClearPredictedRoutes/"];
  }

  if (self->_shouldWaitForUpdatedOutputDevices)
  {
    [v6 appendFormat:@"shouldWaitForUpdatedOutputDevices/"];
  }

  outputDeviceUIDs = [(MRGroupTopologyModificationRequest *)self outputDeviceUIDs];
  [v6 appendFormat:@"outputDeviceUIDs=%@", outputDeviceUIDs];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRGroupTopologyModificationRequest *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (MRGroupTopologyModificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRGroupTopologyModificationRequest *)self initWithProtobuf:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  protobuf = [(MRGroupTopologyModificationRequest *)selfCopy protobuf];
  v5 = [(MRGroupTopologyModificationRequest *)selfCopy initWithProtobuf:protobuf];

  return v5;
}

- (MRGroupTopologyModificationRequest)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRGroupTopologyModificationRequestProtobuf alloc] initWithData:dataCopy];

    self = [(MRGroupTopologyModificationRequest *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRGroupTopologyModificationRequest)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v5 = [MRRequestDetails alloc];
    details = [protobufCopy details];
    v7 = [(MRRequestDetails *)v5 initWithProtobuf:details];
    type = [protobufCopy type];
    outputDeviceUIDs = [protobufCopy outputDeviceUIDs];
    v10 = [(MRGroupTopologyModificationRequest *)self initWithRequestDetails:v7 type:type outputDeviceUIDs:outputDeviceUIDs];

    if (v10)
    {
      v10->_fadeAudio = [protobufCopy fadeAudio];
      v10->_shouldNotPauseIfLastDeviceRemoved = [protobufCopy shouldNotPauseIfLastDeviceRemoved];
      v10->_suppressErrorDialog = [protobufCopy suppressErrorDialog];
      v10->_muteUntilFinished = [protobufCopy muteUntilFinished];
      v10->_shouldModifyPredictedRoutes = [protobufCopy shouldModifyPredictedRoutes];
      v10->_shouldClearPredictedRoutes = [protobufCopy shouldClearPredictedRoutes];
      v10->_password = [protobufCopy password];
      v10->_shouldWaitForUpdatedOutputDevices = [protobufCopy shouldWaitForUpdatedOutputDevices];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSData)data
{
  protobuf = [(MRGroupTopologyModificationRequest *)self protobuf];
  data = [protobuf data];

  return data;
}

- (_MRGroupTopologyModificationRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupTopologyModificationRequestProtobuf);
  protobuf = [(MRRequestDetails *)self->_requestDetails protobuf];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setDetails:protobuf];

  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setType:LODWORD(self->_type)];
  if ([(NSArray *)self->_outputDevices count])
  {
    v5 = [(NSArray *)self->_outputDevices msv_compactMap:&__block_literal_global_33_1];
    v6 = [v5 mutableCopy];
    [(_MRGroupTopologyModificationRequestProtobuf *)v3 setOutputDeviceUIDs:v6];
  }

  else
  {
    v5 = [(NSArray *)self->_outputDeviceUIDs mutableCopy];
    [(_MRGroupTopologyModificationRequestProtobuf *)v3 setOutputDeviceUIDs:v5];
  }

  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setFadeAudio:self->_fadeAudio];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setShouldNotPauseIfLastDeviceRemoved:self->_shouldNotPauseIfLastDeviceRemoved];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setSuppressErrorDialog:self->_suppressErrorDialog];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setMuteUntilFinished:self->_muteUntilFinished];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setShouldModifyPredictedRoutes:self->_shouldModifyPredictedRoutes];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setShouldClearPredictedRoutes:self->_shouldClearPredictedRoutes];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setPassword:self->_password];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setShouldWaitForUpdatedOutputDevices:self->_shouldWaitForUpdatedOutputDevices];

  return v3;
}

+ (BOOL)_initiatorShouldClearPredictedRoutesByDefault:(id)default forModificationType:(unint64_t)type
{
  v5 = [default isEqualToString:@"RoutePicker"] ^ 1;
  if (type == 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

@end