@interface MRGroupTopologyModificationRequest
+ (BOOL)_initiatorShouldClearPredictedRoutesByDefault:(id)a3 forModificationType:(unint64_t)a4;
- (MRGroupTopologyModificationRequest)initWithCoder:(id)a3;
- (MRGroupTopologyModificationRequest)initWithData:(id)a3;
- (MRGroupTopologyModificationRequest)initWithProtobuf:(id)a3;
- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)a3 type:(unint64_t)a4 outputDeviceUIDs:(id)a5;
- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)a3 type:(unint64_t)a4 outputDevices:(id)a5;
- (NSData)data;
- (_MRGroupTopologyModificationRequestProtobuf)protobuf;
- (id)copyWithOutputDeviceUIDs:(id)a3;
- (id)copyWithType:(unint64_t)a3 outputDeviceUIDs:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRGroupTopologyModificationRequest

- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)a3 type:(unint64_t)a4 outputDevices:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 msv_compactMap:&__block_literal_global_99];
  v11 = [(MRGroupTopologyModificationRequest *)self initWithRequestDetails:v9 type:a4 outputDeviceUIDs:v10];

  if (v11)
  {
    v12 = [v8 copy];
    outputDevices = v11->_outputDevices;
    v11->_outputDevices = v12;
  }

  return v11;
}

- (MRGroupTopologyModificationRequest)initWithRequestDetails:(id)a3 type:(unint64_t)a4 outputDeviceUIDs:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MRGroupTopologyModificationRequest;
  v11 = [(MRGroupTopologyModificationRequest *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestDetails, a3);
    v12->_type = a4;
    v13 = [v10 copy];
    outputDeviceUIDs = v12->_outputDeviceUIDs;
    v12->_outputDeviceUIDs = v13;

    v15 = objc_opt_class();
    v16 = [v9 initiator];
    v12->_shouldClearPredictedRoutes = [v15 _initiatorShouldClearPredictedRoutesByDefault:v16 forModificationType:a4];
  }

  return v12;
}

- (id)copyWithOutputDeviceUIDs:(id)a3
{
  v4 = a3;
  v5 = [(MRGroupTopologyModificationRequest *)self copyWithType:[(MRGroupTopologyModificationRequest *)self type] outputDeviceUIDs:v4];

  return v5;
}

- (id)copyWithType:(unint64_t)a3 outputDeviceUIDs:(id)a4
{
  v6 = a4;
  v7 = [(MRGroupTopologyModificationRequest *)self protobuf];
  v8 = [v6 mutableCopy];

  [v7 setOutputDeviceUIDs:v8];
  [v7 setType:a3];
  v9 = [objc_alloc(objc_opt_class()) initWithProtobuf:v7];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = MRGroupTopologyModificationRequestTypeDescription([(MRGroupTopologyModificationRequest *)self type]);
  v5 = [(MRGroupTopologyModificationRequest *)self requestDetails];
  v6 = [v3 initWithFormat:@"requestType=%@/%@/", v4, v5];

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

  v7 = [(MRGroupTopologyModificationRequest *)self outputDeviceUIDs];
  [v6 appendFormat:@"outputDeviceUIDs=%@", v7];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRGroupTopologyModificationRequest *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (MRGroupTopologyModificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRGroupTopologyModificationRequest *)self initWithProtobuf:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(MRGroupTopologyModificationRequest *)v3 protobuf];
  v5 = [(MRGroupTopologyModificationRequest *)v3 initWithProtobuf:v4];

  return v5;
}

- (MRGroupTopologyModificationRequest)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRGroupTopologyModificationRequestProtobuf alloc] initWithData:v4];

    self = [(MRGroupTopologyModificationRequest *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRGroupTopologyModificationRequest)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MRRequestDetails alloc];
    v6 = [v4 details];
    v7 = [(MRRequestDetails *)v5 initWithProtobuf:v6];
    v8 = [v4 type];
    v9 = [v4 outputDeviceUIDs];
    v10 = [(MRGroupTopologyModificationRequest *)self initWithRequestDetails:v7 type:v8 outputDeviceUIDs:v9];

    if (v10)
    {
      v10->_fadeAudio = [v4 fadeAudio];
      v10->_shouldNotPauseIfLastDeviceRemoved = [v4 shouldNotPauseIfLastDeviceRemoved];
      v10->_suppressErrorDialog = [v4 suppressErrorDialog];
      v10->_muteUntilFinished = [v4 muteUntilFinished];
      v10->_shouldModifyPredictedRoutes = [v4 shouldModifyPredictedRoutes];
      v10->_shouldClearPredictedRoutes = [v4 shouldClearPredictedRoutes];
      v10->_password = [v4 password];
      v10->_shouldWaitForUpdatedOutputDevices = [v4 shouldWaitForUpdatedOutputDevices];
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSData)data
{
  v2 = [(MRGroupTopologyModificationRequest *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRGroupTopologyModificationRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupTopologyModificationRequestProtobuf);
  v4 = [(MRRequestDetails *)self->_requestDetails protobuf];
  [(_MRGroupTopologyModificationRequestProtobuf *)v3 setDetails:v4];

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

+ (BOOL)_initiatorShouldClearPredictedRoutesByDefault:(id)a3 forModificationType:(unint64_t)a4
{
  v5 = [a3 isEqualToString:@"RoutePicker"] ^ 1;
  if (a4 == 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

@end