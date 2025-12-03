@interface BWFigCaptureDeviceClient
- (BOOL)canShareRegistrationWithClientPID:(int)d deviceAvailabilityChangedHandler:(id)handler;
- (BWFigCaptureDeviceClient)initWithPID:(int)d clientApplicationID:(id)iD clientDescription:(id)description clientPriority:(int)priority canStealFromClientsWithSamePriority:(BOOL)samePriority deviceSharingWithOtherClientsAllowed:(BOOL)allowed clientType:(int)type deviceAvailabilityChangedHandler:(id)self0;
- (__CFString)_stringForBWFigCaptureDeviceVendorClientPriority;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation BWFigCaptureDeviceClient

- (BWFigCaptureDeviceClient)initWithPID:(int)d clientApplicationID:(id)iD clientDescription:(id)description clientPriority:(int)priority canStealFromClientsWithSamePriority:(BOOL)samePriority deviceSharingWithOtherClientsAllowed:(BOOL)allowed clientType:(int)type deviceAvailabilityChangedHandler:(id)self0
{
  v20.receiver = self;
  v20.super_class = BWFigCaptureDeviceClient;
  v16 = [(BWFigCaptureDeviceClient *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v18 = sNextClientID++;
    v16->_clientID = v18;
    v16->_pid = d;
    v16->_applicationID = [iD copy];
    v17->_clientDescription = [description copy];
    v17->_clientPriority = priority;
    v17->_canStealFromClientsWithSamePriority = samePriority;
    v17->_deviceSharingWithOtherClientsAllowed = allowed;
    v17->_clientType = type;
    v17->_deviceAvailabilityChangedHandler = [handler copy];
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigCaptureDeviceClient;
  [(BWFigCaptureDeviceClient *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[BWFigCaptureDeviceClient debugDescription](self, "debugDescription")];
}

- (BOOL)canShareRegistrationWithClientPID:(int)d deviceAvailabilityChangedHandler:(id)handler
{
  if (self->_pid != d || !(deviceSharingWithOtherClientsAllowed = self->_deviceSharingWithOtherClientsAllowed) || handler && self->_deviceAvailabilityChangedHandler)
  {
    LOBYTE(deviceSharingWithOtherClientsAllowed) = 0;
  }

  return deviceSharingWithOtherClientsAllowed;
}

- (__CFString)_stringForBWFigCaptureDeviceVendorClientPriority
{
  if (result)
  {
    isa_low = LODWORD(result[1].isa);
    if (isa_low > 5)
    {
      return @"Unknown";
    }

    else
    {
      return off_1E7999688[isa_low];
    }
  }

  return result;
}

- (id)debugDescription
{
  _stringForBWFigCaptureDeviceVendorClientPriority = [(BWFigCaptureDeviceClient *)self _stringForBWFigCaptureDeviceVendorClientPriority];
  clientType = self->_clientType;
  if (clientType > 3)
  {
    v5 = @"UnknownDeviceClientType";
  }

  else
  {
    v5 = off_1E79996B8[clientType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"clientID: %d, pid: %d, clientApplicationID: %@, clientDescription: %@, clientPriority: %@, canStealFromClientsWithSamePriority: %d, deviceSharingWithOtherClientsAllowed: %d, clientType: %@, handler: %p", self->_clientID, self->_pid, self->_applicationID, self->_clientDescription, _stringForBWFigCaptureDeviceVendorClientPriority, self->_canStealFromClientsWithSamePriority, self->_deviceSharingWithOtherClientsAllowed, v5, self->_deviceAvailabilityChangedHandler];
}

@end