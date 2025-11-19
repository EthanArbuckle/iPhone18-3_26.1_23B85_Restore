@interface BWFigCaptureDeviceClient
- (BOOL)canShareRegistrationWithClientPID:(int)a3 deviceAvailabilityChangedHandler:(id)a4;
- (BWFigCaptureDeviceClient)initWithPID:(int)a3 clientApplicationID:(id)a4 clientDescription:(id)a5 clientPriority:(int)a6 canStealFromClientsWithSamePriority:(BOOL)a7 deviceSharingWithOtherClientsAllowed:(BOOL)a8 clientType:(int)a9 deviceAvailabilityChangedHandler:(id)a10;
- (__CFString)_stringForBWFigCaptureDeviceVendorClientPriority;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation BWFigCaptureDeviceClient

- (BWFigCaptureDeviceClient)initWithPID:(int)a3 clientApplicationID:(id)a4 clientDescription:(id)a5 clientPriority:(int)a6 canStealFromClientsWithSamePriority:(BOOL)a7 deviceSharingWithOtherClientsAllowed:(BOOL)a8 clientType:(int)a9 deviceAvailabilityChangedHandler:(id)a10
{
  v20.receiver = self;
  v20.super_class = BWFigCaptureDeviceClient;
  v16 = [(BWFigCaptureDeviceClient *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v18 = sNextClientID++;
    v16->_clientID = v18;
    v16->_pid = a3;
    v16->_applicationID = [a4 copy];
    v17->_clientDescription = [a5 copy];
    v17->_clientPriority = a6;
    v17->_canStealFromClientsWithSamePriority = a7;
    v17->_deviceSharingWithOtherClientsAllowed = a8;
    v17->_clientType = a9;
    v17->_deviceAvailabilityChangedHandler = [a10 copy];
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

- (BOOL)canShareRegistrationWithClientPID:(int)a3 deviceAvailabilityChangedHandler:(id)a4
{
  if (self->_pid != a3 || !(deviceSharingWithOtherClientsAllowed = self->_deviceSharingWithOtherClientsAllowed) || a4 && self->_deviceAvailabilityChangedHandler)
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
  v3 = [(BWFigCaptureDeviceClient *)self _stringForBWFigCaptureDeviceVendorClientPriority];
  clientType = self->_clientType;
  if (clientType > 3)
  {
    v5 = @"UnknownDeviceClientType";
  }

  else
  {
    v5 = off_1E79996B8[clientType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"clientID: %d, pid: %d, clientApplicationID: %@, clientDescription: %@, clientPriority: %@, canStealFromClientsWithSamePriority: %d, deviceSharingWithOtherClientsAllowed: %d, clientType: %@, handler: %p", self->_clientID, self->_pid, self->_applicationID, self->_clientDescription, v3, self->_canStealFromClientsWithSamePriority, self->_deviceSharingWithOtherClientsAllowed, v5, self->_deviceAvailabilityChangedHandler];
}

@end