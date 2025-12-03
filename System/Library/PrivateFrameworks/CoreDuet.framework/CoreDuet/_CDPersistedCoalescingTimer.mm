@interface _CDPersistedCoalescingTimer
- (_CDPersistedCoalescingTimer)initWithDelay:(double)delay coalesceData:(id)data operation:(id)operation persistencePath:(id)path dataClass:(Class)class timerName:(id)name;
@end

@implementation _CDPersistedCoalescingTimer

- (_CDPersistedCoalescingTimer)initWithDelay:(double)delay coalesceData:(id)data operation:(id)operation persistencePath:(id)path dataClass:(Class)class timerName:(id)name
{
  dataCopy = data;
  operationCopy = operation;
  pathCopy = path;
  nameCopy = name;
  v43.receiver = self;
  v43.super_class = _CDPersistedCoalescingTimer;
  v18 = [(_CDPersistedCoalescingTimer *)&v43 init];
  if (v18)
  {
    v19 = [getBMStoreConfigClass() newPrivateStreamDefaultConfigurationWithStoreBasePath:pathCopy];
    v20 = [objc_alloc(getBMStoreStreamClass()) initWithPrivateStreamIdentifier:nameCopy storeConfig:v19 eventDataClass:class];
    storeStream = v18->_storeStream;
    v18->_storeStream = v20;

    source = [(BMStoreStream *)v18->_storeStream source];
    source = v18->_source;
    v18->_source = source;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("_CDPersistedCoalescingTimer.innerQueue", v24);
    queue = v18->_queue;
    v18->_queue = v25;

    v18->_delay = delay;
    v18->_leeway = 1.0;
    objc_storeStrong(&v18->_persistencePath, path);
    v27 = objc_alloc(MEMORY[0x1E69C5CD8]);
    v28 = v18->_queue;
    leeway = v18->_leeway;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __104___CDPersistedCoalescingTimer_initWithDelay_coalesceData_operation_persistencePath_dataClass_timerName___block_invoke;
    v40[3] = &unk_1E7368D70;
    v41 = v18;
    v42 = dataCopy;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __104___CDPersistedCoalescingTimer_initWithDelay_coalesceData_operation_persistencePath_dataClass_timerName___block_invoke_3;
    v37 = &unk_1E7368DB8;
    v39 = operationCopy;
    v30 = v41;
    v38 = v30;
    v31 = [v27 initWithQueue:v28 leewaySeconds:v40 coalesceData:&v34 operation:leeway];
    coalescingTimer = v30->_coalescingTimer;
    v30->_coalescingTimer = v31;
  }

  [(_PASCoalescingTimer *)v18->_coalescingTimer immediatelyProcessData:0, v34, v35, v36, v37];

  return v18;
}

@end