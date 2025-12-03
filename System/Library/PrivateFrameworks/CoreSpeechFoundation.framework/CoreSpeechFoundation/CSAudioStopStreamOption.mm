@interface CSAudioStopStreamOption
- (CSAudioStopStreamOption)initWithStopRecordingReason:(unint64_t)reason expectedStopHostTime:(unint64_t)time trailingSilenceDurationAtEndpoint:(double)endpoint holdRequest:(id)request supportsMagus:(BOOL)magus requestId:(id)id;
- (CSAudioStopStreamOption)initWithXPCObject:(id)object;
- (id)description;
- (id)xpcObject;
@end

@implementation CSAudioStopStreamOption

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v4 = v3;
  stopRecordingReason = self->_stopRecordingReason;
  if (stopRecordingReason <= 7)
  {
    [v3 appendString:off_1E865C3C0[stopRecordingReason]];
  }

  [v4 appendFormat:@", %llu", self->_expectedStopHostTime];
  [v4 appendFormat:@", %f", *&self->_trailingSilenceDurationAtEndpoint];
  [v4 appendFormat:@", %d", self->_supportsMagus];
  holdRequest = self->_holdRequest;
  if (holdRequest)
  {
    v7 = [(CSAudioStreamHoldRequestOption *)holdRequest description];
    [v4 appendFormat:@", %@", v7];
  }

  [v4 appendFormat:@"}"];

  return v4;
}

- (id)xpcObject
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = "stopRecordingReason";
  keys[1] = "expectedStopHostTime";
  keys[2] = "trailingSilenceDurationAtEndpoint";
  keys[3] = "supportsMagus";
  values[0] = xpc_uint64_create(self->_stopRecordingReason);
  values[1] = xpc_uint64_create(self->_expectedStopHostTime);
  values[2] = xpc_double_create(self->_trailingSilenceDurationAtEndpoint);
  values[3] = xpc_BOOL_create(self->_supportsMagus);
  v3 = xpc_dictionary_create(keys, values, 4uLL);
  holdRequest = self->_holdRequest;
  if (holdRequest)
  {
    xpcObject = [(CSAudioStreamHoldRequestOption *)holdRequest xpcObject];
    xpc_dictionary_set_value(v3, "holdRequest", xpcObject);
  }

  requestId = self->_requestId;
  if (requestId)
  {
    v7 = xpc_string_create([(NSString *)requestId UTF8String]);
    xpc_dictionary_set_value(v3, "requestId", v7);
  }

  for (i = 3; i != -1; --i)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSAudioStopStreamOption)initWithXPCObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CSAudioStopStreamOption;
  v5 = [(CSAudioStopStreamOption *)&v14 init];
  if (v5)
  {
    v5->_stopRecordingReason = xpc_dictionary_get_uint64(objectCopy, "stopRecordingReason");
    v5->_expectedStopHostTime = xpc_dictionary_get_uint64(objectCopy, "expectedStopHostTime");
    v5->_trailingSilenceDurationAtEndpoint = xpc_dictionary_get_double(objectCopy, "trailingSilenceDurationAtEndpoint");
    v5->_supportsMagus = xpc_dictionary_get_BOOL(objectCopy, "supportsMagus");
    string = xpc_dictionary_get_string(objectCopy, "requestId");
    if (string)
    {
      string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    }

    requestId = v5->_requestId;
    v5->_requestId = string;

    v8 = xpc_dictionary_get_dictionary(objectCopy, "holdRequest");

    if (v8)
    {
      v9 = [CSAudioStreamHoldRequestOption alloc];
      v10 = xpc_dictionary_get_dictionary(objectCopy, "holdRequest");
      v11 = [(CSAudioStreamHoldRequestOption *)v9 initWithXPCObject:v10];
      holdRequest = v5->_holdRequest;
      v5->_holdRequest = v11;
    }
  }

  return v5;
}

- (CSAudioStopStreamOption)initWithStopRecordingReason:(unint64_t)reason expectedStopHostTime:(unint64_t)time trailingSilenceDurationAtEndpoint:(double)endpoint holdRequest:(id)request supportsMagus:(BOOL)magus requestId:(id)id
{
  requestCopy = request;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = CSAudioStopStreamOption;
  v17 = [(CSAudioStopStreamOption *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_stopRecordingReason = reason;
    v17->_expectedStopHostTime = time;
    v17->_trailingSilenceDurationAtEndpoint = endpoint;
    objc_storeStrong(&v17->_holdRequest, request);
    v18->_supportsMagus = magus;
    objc_storeStrong(&v18->_requestId, id);
  }

  return v18;
}

@end