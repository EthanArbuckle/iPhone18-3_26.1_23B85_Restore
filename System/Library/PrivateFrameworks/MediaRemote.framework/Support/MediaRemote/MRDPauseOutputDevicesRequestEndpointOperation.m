@interface MRDPauseOutputDevicesRequestEndpointOperation
- (MRDPauseOutputDevicesRequestEndpointOperation)initWithEndpoint:(id)a3;
- (NSError)error;
- (double)duration;
- (void)endEvent:(id)a3 withError:(id)a4;
- (void)startEvent:(id)a3;
@end

@implementation MRDPauseOutputDevicesRequestEndpointOperation

- (MRDPauseOutputDevicesRequestEndpointOperation)initWithEndpoint:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MRDPauseOutputDevicesRequestEndpointOperation;
  v6 = [(MRDPauseOutputDevicesRequestEndpointOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v8 = objc_alloc_init(NSMutableArray);
    events = v7->_events;
    v7->_events = v8;
  }

  return v7;
}

- (void)startEvent:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(MRDPauseOutputDevicesRequestEndpointOperationEvent);
  [(MRDPauseOutputDevicesRequestEndpointOperationEvent *)v6 setName:v4];

  v5 = +[NSDate now];
  [(MRDPauseOutputDevicesRequestEndpointOperationEvent *)v6 setStartDate:v5];

  [(NSMutableArray *)self->_events addObject:v6];
}

- (void)endEvent:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_events;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          v16 = +[NSDate now];
          [v13 setEndDate:v16];

          if ((MRMediaRemoteErrorIsInformational() & 1) == 0)
          {
            [v13 setError:v7];
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (NSError)error
{
  v2 = [(NSMutableArray *)self->_events msv_firstWhere:&stru_1004BB728];
  v3 = [v2 error];

  return v3;
}

- (double)duration
{
  v3 = [(NSMutableArray *)self->_events msv_map:&stru_1004BB768];
  v4 = [(NSMutableArray *)self->_events msv_map:&stru_1004BB788];
  v5 = [v3 sortedArrayUsingComparator:&stru_1004BB7C8];
  v6 = [v5 firstObject];

  v7 = [v4 sortedArrayUsingComparator:&stru_1004BB7E8];
  v8 = [v7 lastObject];

  [v6 timeIntervalSinceDate:v8];
  v10 = -v9;

  return v10;
}

@end