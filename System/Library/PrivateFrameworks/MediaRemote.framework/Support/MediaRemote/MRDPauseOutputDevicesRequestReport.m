@interface MRDPauseOutputDevicesRequestReport
- (MRDPauseOutputDevicesRequestReport)initWithOutputDevices:(id)a3 requestID:(id)a4;
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
- (void)addOperation:(id)a3;
@end

@implementation MRDPauseOutputDevicesRequestReport

- (MRDPauseOutputDevicesRequestReport)initWithOutputDevices:(id)a3 requestID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MRDPauseOutputDevicesRequestReport;
  v9 = [(MRDPauseOutputDevicesRequestReport *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestID, a4);
    objc_storeStrong(&v10->_outputDevices, a3);
    v11 = objc_alloc_init(NSMutableArray);
    operations = v10->_operations;
    v10->_operations = v11;

    v13 = +[NSDate now];
    startDate = v10->_startDate;
    v10->_startDate = v13;
  }

  return v10;
}

- (void)addOperation:(id)a3
{
  v5 = a3;
  v4 = self->_operations;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_operations addObject:v5];
  objc_sync_exit(v4);
}

- (NSError)error
{
  v2 = [(NSMutableArray *)self->_operations msv_firstWhere:&stru_1004BB828];
  v3 = [v2 error];

  return v3;
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

        v8 = [*(*(&v12 + 1) + 8 * i) pauseOperation];
        v9 = [v8 relevantOutputDevices];
        v10 = [v9 msv_filter:&stru_1004BB848];
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

        v8 = [*(*(&v12 + 1) + 8 * i) pauseOperation];
        v9 = [v8 relevantOutputDevices];
        v10 = [v9 msv_filter:&stru_1004BB868];
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

        v8 = [*(*(&v11 + 1) + 8 * i) pauseOperation];
        v9 = [v8 type];

        if (v9 == 3)
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
        v9 = [v8 pauseOperation];
        v10 = [v9 type];

        if (v10 == 3)
        {
          v11 = [v8 pauseOperation];
          v12 = [v11 relevantOutputDevices];
          v5 += [v12 count];
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

        v8 = [*(*(&v11 + 1) + 8 * i) pauseOperation];
        v9 = [v8 type];

        if (v9 == 2)
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
        v9 = [v8 pauseOperation];
        v10 = [v9 type];

        if (v10 == 2)
        {
          v11 = [v8 pauseOperation];
          v12 = [v11 relevantOutputDevices];
          v5 += [v12 count];
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

        v8 = [*(*(&v11 + 1) + 8 * i) pauseOperation];
        v9 = [v8 type];

        if (v9 == 1)
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
        v9 = [v8 pauseOperation];
        v10 = [v9 type];

        if (v10 == 1)
        {
          v11 = [v8 pauseOperation];
          v12 = [v11 relevantOutputDevices];
          v5 += [v12 count];
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
        v7 = [v6 pauseOperation];
        v8 = [v7 type];
        v9 = @"?";
        if (v8 <= 4)
        {
          v9 = off_1004BB888[v8];
        }

        v37 = v5;
        [v3 appendFormat:@" Operation: %@\n", v9];

        v10 = [v6 pauseOperation];
        v11 = [v10 reason];
        [v3 appendFormat:@" Reason: %@\n", v11];

        v12 = [v6 endpoint];
        v13 = [v12 debugName];
        [v3 appendFormat:@" Endpoint: %@\n", v13];

        [v6 duration];
        [v3 appendFormat:@" Duration: %lf\n", v14];
        v15 = [v6 pauseOperation];
        v16 = [v15 relevantOutputDevices];
        v17 = [v16 count];

        if (v17)
        {
          v18 = [v6 pauseOperation];
          v19 = [v18 relevantOutputDeviceUIDs];
          [v3 appendFormat:@" RelevantOuptutDevices: %@\n", v19];

          v20 = [v6 pauseOperation];
          v21 = [v20 devicesInGroup];
          [v3 appendFormat:@" DevicesInGroup: %@\n", v21];
        }

        [v3 appendFormat:@" Events:\n"];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = [v6 events];
        v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v38 + 1) + 8 * i);
              v28 = [v27 error];

              v29 = [v27 name];
              [v27 duration];
              v31 = v30;
              if (v28)
              {
                v32 = [v27 error];
                [v3 appendFormat:@"    %@ : %lf seconds : %@\n", v29, v31, v32];
              }

              else
              {
                [v3 appendFormat:@"    %@ : %lf seconds\n", v29, v30];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
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