@interface BWFigCaptureDeviceVendorDeviceState
- (BWFigCaptureDeviceVendorDeviceState)initWithDevice:(id)device figCaptureDevice:(OpaqueFigCaptureDevice *)captureDevice;
- (NSArray)streamsRequiringControlControlledByOtherClients;
- (id)description;
- (void)dealloc;
@end

@implementation BWFigCaptureDeviceVendorDeviceState

- (BWFigCaptureDeviceVendorDeviceState)initWithDevice:(id)device figCaptureDevice:(OpaqueFigCaptureDevice *)captureDevice
{
  v9.receiver = self;
  v9.super_class = BWFigCaptureDeviceVendorDeviceState;
  v6 = [(BWFigCaptureDeviceVendorDeviceState *)&v9 init];
  if (v6)
  {
    v6->_device = device;
    if (captureDevice)
    {
      v7 = CFRetain(captureDevice);
    }

    else
    {
      v7 = 0;
    }

    v6->_figCaptureDevice = v7;
    v6->_controlledStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_streamsToKeepControlled = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_streamsInUse = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_streamsControlledByOtherClients = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_portTypesAllowingStreamControlLoss = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_portTypesToCheckForToFAFEstimator = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6->_tofAFEstimatorResultsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_tofAFEstimatorResultsStreamingTimeByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_tofAFEstimatorClientApplicationIDByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_portTypesToCheckForAFDriverShortStatistics = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6->_afDriverShortStatisticsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)dealloc
{
  figCaptureDevice = self->_figCaptureDevice;
  if (figCaptureDevice)
  {
    CFRelease(figCaptureDevice);
  }

  deviceCloseTimer = self->_deviceCloseTimer;
  if (deviceCloseTimer)
  {
    dispatch_release(deviceCloseTimer);
  }

  v5.receiver = self;
  v5.super_class = BWFigCaptureDeviceVendorDeviceState;
  [(BWFigCaptureDeviceVendorDeviceState *)&v5 dealloc];
}

- (NSArray)streamsRequiringControlControlledByOtherClients
{
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  streamsControlledByOtherClients = self->_streamsControlledByOtherClients;
  v5 = [(NSMutableArray *)streamsControlledByOtherClients countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(streamsControlledByOtherClients);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ((-[NSMutableArray containsObject:](self->_portTypesAllowingStreamControlLoss, "containsObject:", [v9 portType]) & 1) == 0)
        {
          [(NSArray *)array addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)streamsControlledByOtherClients countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[BWFigCaptureDeviceVendorDeviceState debugDescription](self, "debugDescription")];
}

@end