@interface BRNWPathMonitorWrapper
+ (id)createPathMonitorWithQueue:(id)queue changeHandler:(id)handler;
@end

@implementation BRNWPathMonitorWrapper

+ (id)createPathMonitorWithQueue:(id)queue changeHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  v7 = nw_path_monitor_create();
  nw_path_monitor_set_queue(v7, queueCopy);

  nw_path_monitor_set_update_handler(v7, handlerCopy);
  nw_path_monitor_start(v7);

  return v7;
}

@end