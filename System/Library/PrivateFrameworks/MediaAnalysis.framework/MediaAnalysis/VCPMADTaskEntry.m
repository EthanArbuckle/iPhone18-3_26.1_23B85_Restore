@interface VCPMADTaskEntry
+ (id)entryWithTaskID:(unint64_t)a3 qos:(unsigned int)a4 background:(BOOL)a5 task:(id)a6 completionHandler:(id)a7;
- (VCPMADTaskEntry)initWithTaskID:(unint64_t)a3 qos:(unsigned int)a4 background:(BOOL)a5 task:(id)a6 completionHandler:(id)a7;
@end

@implementation VCPMADTaskEntry

- (VCPMADTaskEntry)initWithTaskID:(unint64_t)a3 qos:(unsigned int)a4 background:(BOOL)a5 task:(id)a6 completionHandler:(id)a7
{
  v13 = a6;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = VCPMADTaskEntry;
  v15 = [(VCPMADTaskEntry *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_taskID = a3;
    v15->_qos = a4;
    v15->_background = a5;
    objc_storeStrong(&v15->_task, a6);
    v17 = dispatch_group_create();
    taskGroup = v16->_taskGroup;
    v16->_taskGroup = v17;

    v19 = objc_retainBlock(v14);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;
  }

  return v16;
}

+ (id)entryWithTaskID:(unint64_t)a3 qos:(unsigned int)a4 background:(BOOL)a5 task:(id)a6 completionHandler:(id)a7
{
  v8 = a5;
  v9 = *&a4;
  v11 = a6;
  v12 = a7;
  v13 = [objc_alloc(objc_opt_class()) initWithTaskID:a3 qos:v9 background:v8 task:v11 completionHandler:v12];

  return v13;
}

@end