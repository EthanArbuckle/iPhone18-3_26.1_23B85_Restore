@interface SUUIMetricsDOMChangeQueue
- (SUUIMetricsDOMChangeQueue)init;
- (id)oldestPendingChange;
- (void)addPendingChange:(id)change;
@end

@implementation SUUIMetricsDOMChangeQueue

- (SUUIMetricsDOMChangeQueue)init
{
  v6.receiver = self;
  v6.super_class = SUUIMetricsDOMChangeQueue;
  v2 = [(SUUIMetricsDOMChangeQueue *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)addPendingChange:(id)change
{
  changeCopy = change;
  if ([(SUUIMetricsDOMChangeQueue *)self isEmpty])
  {
    goto LABEL_14;
  }

  lastObject = [(NSMutableArray *)self->_storage lastObject];
  if (![lastObject isFromDeferredMessage] || !objc_msgSend(changeCopy, "isFromDeferredMessage"))
  {

LABEL_14:
    storage = self->_storage;
    lastObject = [changeCopy copy];
    [(NSMutableArray *)storage addObject:lastObject];
    goto LABEL_15;
  }

  [lastObject buildStartTime];
  v6 = v5;
  [changeCopy buildStartTime];
  if (v6 < v7 != fmin(v6, v7) < 2.22044605e-16)
  {
    v7 = v6;
  }

  [lastObject setBuildStartTime:v7];
  [lastObject buildEndTime];
  v9 = v8;
  [changeCopy buildEndTime];
  if (v9 >= v10)
  {
    v10 = v9;
  }

  [lastObject setBuildEndTime:v10];
  [lastObject renderStartTime];
  v12 = v11;
  [changeCopy renderStartTime];
  if (v12 < v13 != fmin(v12, v13) < 2.22044605e-16)
  {
    v13 = v12;
  }

  [lastObject setRenderStartTime:v13];
  [lastObject renderEndTime];
  v15 = v14;
  [changeCopy renderEndTime];
  if (v15 >= v16)
  {
    v16 = v15;
  }

  [lastObject setRenderEndTime:v16];
LABEL_15:
}

- (id)oldestPendingChange
{
  if ([(NSMutableArray *)self->_storage count])
  {
    firstObject = [(NSMutableArray *)self->_storage firstObject];
    [(NSMutableArray *)self->_storage removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end