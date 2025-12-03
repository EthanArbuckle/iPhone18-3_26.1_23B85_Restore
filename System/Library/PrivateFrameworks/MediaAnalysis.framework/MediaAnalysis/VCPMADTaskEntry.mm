@interface VCPMADTaskEntry
+ (id)entryWithTaskID:(unint64_t)d qos:(unsigned int)qos background:(BOOL)background task:(id)task completionHandler:(id)handler;
- (VCPMADTaskEntry)initWithTaskID:(unint64_t)d qos:(unsigned int)qos background:(BOOL)background task:(id)task completionHandler:(id)handler;
@end

@implementation VCPMADTaskEntry

- (VCPMADTaskEntry)initWithTaskID:(unint64_t)d qos:(unsigned int)qos background:(BOOL)background task:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = VCPMADTaskEntry;
  v15 = [(VCPMADTaskEntry *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_taskID = d;
    v15->_qos = qos;
    v15->_background = background;
    objc_storeStrong(&v15->_task, task);
    v17 = dispatch_group_create();
    taskGroup = v16->_taskGroup;
    v16->_taskGroup = v17;

    v19 = objc_retainBlock(handlerCopy);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;
  }

  return v16;
}

+ (id)entryWithTaskID:(unint64_t)d qos:(unsigned int)qos background:(BOOL)background task:(id)task completionHandler:(id)handler
{
  backgroundCopy = background;
  v9 = *&qos;
  taskCopy = task;
  handlerCopy = handler;
  v13 = [objc_alloc(objc_opt_class()) initWithTaskID:d qos:v9 background:backgroundCopy task:taskCopy completionHandler:handlerCopy];

  return v13;
}

@end