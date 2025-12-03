@interface MRDPauseOutputDevicesRequestReport
- (MRDPauseOutputDevicesRequestReport)initWithOutputDevices:(id)devices requestID:(id)d;
- (NSError)error;
- (id)description;
- (int)appletvsEffected;
- (int)devicesForcedRemoved;
- (int)devicesPaused;
- (int)devicesRemoved;
- (int)endpointsForcedRemoved;
- (int)endpointsPaused;
- (int)endpointsRemoved;
- (int)homepodsEffected;
- (void)addOperation:(id)operation;
@end

@implementation MRDPauseOutputDevicesRequestReport

- (MRDPauseOutputDevicesRequestReport)initWithOutputDevices:(id)devices requestID:(id)d
{
  devicesCopy = devices;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MRDPauseOutputDevicesRequestReport;
  v9 = [(MRDPauseOutputDevicesRequestReport *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestID, d);
    objc_storeStrong(&v10->_outputDevices, devices);
    v11 = objc_alloc_init(NSMutableArray);
    operations = v10->_operations;
    v10->_operations = v11;

    v13 = +[NSDate now];
    startDate = v10->_startDate;
    v10->_startDate = v13;
  }

  return v10;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  v4 = self->_operations;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_operations addObject:operationCopy];
  objc_sync_exit(v4);
}

- (NSError)error
{
  v2 = [(NSMutableArray *)self->_operations msv_firstWhere:&stru_1004BB828];
  error = [v2 error];

  return error;
}

- (int)homepodsEffected
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    LODWORD(v5) = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        pauseOperation = [*(*(&v12 + 1) + 8 * i) pauseOperation];
        relevantOutputDevices = [pauseOperation relevantOutputDevices];
        v10 = [relevantOutputDevices msv_filter:&stru_1004BB848];
        v5 = [v10 count] + v5;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (int)appletvsEffected
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    LODWORD(v5) = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        pauseOperation = [*(*(&v12 + 1) + 8 * i) pauseOperation];
        relevantOutputDevices = [pauseOperation relevantOutputDevices];
        v10 = [relevantOutputDevices msv_filter:&stru_1004BB868];
        v5 = [v10 count] + v5;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (int)endpointsForcedRemoved
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        pauseOperation = [*(*(&v11 + 1) + 8 * i) pauseOperation];
        type = [pauseOperation type];

        if (type == 3)
        {
          ++v5;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)devicesForcedRemoved
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        pauseOperation = [v8 pauseOperation];
        type = [pauseOperation type];

        if (type == 3)
        {
          pauseOperation2 = [v8 pauseOperation];
          relevantOutputDevices = [pauseOperation2 relevantOutputDevices];
          v5 += [relevantOutputDevices count];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)endpointsRemoved
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        pauseOperation = [*(*(&v11 + 1) + 8 * i) pauseOperation];
        type = [pauseOperation type];

        if (type == 2)
        {
          ++v5;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)devicesRemoved
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        pauseOperation = [v8 pauseOperation];
        type = [pauseOperation type];

        if (type == 2)
        {
          pauseOperation2 = [v8 pauseOperation];
          relevantOutputDevices = [pauseOperation2 relevantOutputDevices];
          v5 += [relevantOutputDevices count];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)endpointsPaused
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        pauseOperation = [*(*(&v11 + 1) + 8 * i) pauseOperation];
        type = [pauseOperation type];

        if (type == 1)
        {
          ++v5;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)devicesPaused
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_operations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        pauseOperation = [v8 pauseOperation];
        type = [pauseOperation type];

        if (type == 1)
        {
          pauseOperation2 = [v8 pauseOperation];
          relevantOutputDevices = [pauseOperation2 relevantOutputDevices];
          v5 += [relevantOutputDevices count];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"%@ Report\n", @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs"];
  [v3 appendString:@"----------------------------------\n"];
  [v3 appendFormat:@"Identifier: %@\n", self->_requestID];
  [(MRDPauseOutputDevicesRequestReport *)self duration];
  [v3 appendFormat:@"Duration: %lf seconds\n", v4];
  [v3 appendFormat:@"outputDevices = %@\n", self->_outputDevices];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_operations;
  v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v36)
  {
    v35 = *v43;
    do
    {
      v5 = 0;
      do
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v42 + 1) + 8 * v5);
        [v3 appendFormat:@"{\n"];
        pauseOperation = [v6 pauseOperation];
        type = [pauseOperation type];
        v9 = @"?";
        if (type <= 4)
        {
          v9 = off_1004BB888[type];
        }

        v37 = v5;
        [v3 appendFormat:@" Operation: %@\n", v9];

        pauseOperation2 = [v6 pauseOperation];
        reason = [pauseOperation2 reason];
        [v3 appendFormat:@" Reason: %@\n", reason];

        endpoint = [v6 endpoint];
        debugName = [endpoint debugName];
        [v3 appendFormat:@" Endpoint: %@\n", debugName];

        [v6 duration];
        [v3 appendFormat:@" Duration: %lf\n", v14];
        pauseOperation3 = [v6 pauseOperation];
        relevantOutputDevices = [pauseOperation3 relevantOutputDevices];
        v17 = [relevantOutputDevices count];

        if (v17)
        {
          pauseOperation4 = [v6 pauseOperation];
          relevantOutputDeviceUIDs = [pauseOperation4 relevantOutputDeviceUIDs];
          [v3 appendFormat:@" RelevantOuptutDevices: %@\n", relevantOutputDeviceUIDs];

          pauseOperation5 = [v6 pauseOperation];
          devicesInGroup = [pauseOperation5 devicesInGroup];
          [v3 appendFormat:@" DevicesInGroup: %@\n", devicesInGroup];
        }

        [v3 appendFormat:@" Events:\n"];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        events = [v6 events];
        v23 = [events countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v39;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v39 != v25)
              {
                objc_enumerationMutation(events);
              }

              v27 = *(*(&v38 + 1) + 8 * i);
              error = [v27 error];

              name = [v27 name];
              [v27 duration];
              v31 = v30;
              if (error)
              {
                error2 = [v27 error];
                [v3 appendFormat:@"    %@ : %lf seconds : %@\n", name, v31, error2];
              }

              else
              {
                [v3 appendFormat:@"    %@ : %lf seconds\n", name, v30];
              }
            }

            v24 = [events countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v24);
        }

        [v3 appendFormat:@"}\n"];
        v5 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v36);
  }

  [v3 appendString:@"----------------------------------\n"];

  return v3;
}

@end