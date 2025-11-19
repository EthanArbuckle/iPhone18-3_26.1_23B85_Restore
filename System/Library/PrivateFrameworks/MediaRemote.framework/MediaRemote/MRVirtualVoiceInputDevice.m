@interface MRVirtualVoiceInputDevice
- (MRVirtualVoiceInputDevice)initWithData:(id)a3;
- (MRVirtualVoiceInputDevice)initWithDeviceID:(unsigned int)a3;
- (NSData)data;
- (id)description;
@end

@implementation MRVirtualVoiceInputDevice

- (MRVirtualVoiceInputDevice)initWithDeviceID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = MRVirtualVoiceInputDevice;
  result = [(MRVirtualVoiceInputDevice *)&v5 init];
  if (result)
  {
    result->_deviceID = a3;
    result->_recordingState = 2;
  }

  return result;
}

- (MRVirtualVoiceInputDevice)initWithData:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MRVirtualVoiceInputDevice;
  v5 = [(MRVirtualVoiceInputDevice *)&v12 init];
  if (v5)
  {
    v6 = [[_MRVoiceInputDevice alloc] initWithData:v4];
    v5->_deviceID = [(_MRVoiceInputDevice *)v6 deviceID];
    v5->_recordingState = [(_MRVoiceInputDevice *)v6 recordingState];
    v7 = [MRVirtualVoiceInputDeviceDescriptor alloc];
    v8 = [(_MRVoiceInputDevice *)v6 descriptor];
    v9 = [(MRVirtualVoiceInputDeviceDescriptor *)v7 initWithProtobuf:v8];
    descriptor = v5->_descriptor;
    v5->_descriptor = v9;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NotRecording";
  if (self->_recordingState == 1)
  {
    v7 = @"Recording";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p %u, recordingState=%@, descriptor=%@>", v5, self, self->_deviceID, v7, self->_descriptor];

  return v8;
}

- (NSData)data
{
  v3 = objc_alloc_init(_MRVoiceInputDevice);
  [(_MRVoiceInputDevice *)v3 setDeviceID:self->_deviceID];
  [(_MRVoiceInputDevice *)v3 setRecordingState:self->_recordingState];
  v4 = [(MRVirtualVoiceInputDeviceDescriptor *)self->_descriptor protobuf];
  [(_MRVoiceInputDevice *)v3 setDescriptor:v4];

  v5 = [(_MRVoiceInputDevice *)v3 data];

  return v5;
}

@end