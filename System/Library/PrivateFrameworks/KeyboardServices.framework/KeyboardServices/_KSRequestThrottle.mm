@interface _KSRequestThrottle
- (OS_dispatch_queue)queue;
- (_KSRequestThrottle)initWithCurve:(id)a3 maximumDelay:(double)a4;
- (void)_launch;
- (void)postRequest:(id)a3;
@end

@implementation _KSRequestThrottle

- (_KSRequestThrottle)initWithCurve:(id)a3 maximumDelay:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _KSRequestThrottle;
  v7 = [(_KSRequestThrottle *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    curveFunction = v7->_curveFunction;
    v7->_curveFunction = v8;

    v7->_maximum = a4;
  }

  return v7;
}

- (void)postRequest:(id)a3
{
  v4 = a3;
  v5 = [(_KSRequestThrottle *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___KSRequestThrottle_postRequest___block_invoke;
  v7[3] = &unk_2797F66D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (queue)
  {
    v3 = queue;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
  }

  return v3;
}

- (void)_launch
{
  objc_initWeak(&location, self);
  ++self->_retryCount;
  request = self->_request;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29___KSRequestThrottle__launch__block_invoke;
  v4[3] = &unk_2797F7278;
  objc_copyWeak(&v5, &location);
  request[2](request, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end