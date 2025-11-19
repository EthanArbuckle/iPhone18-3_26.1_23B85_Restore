@interface BRNWPathMonitorWrapper
+ (id)createPathMonitorWithQueue:(id)a3 changeHandler:(id)a4;
@end

@implementation BRNWPathMonitorWrapper

+ (id)createPathMonitorWithQueue:(id)a3 changeHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = nw_path_monitor_create();
  nw_path_monitor_set_queue(v7, v6);

  nw_path_monitor_set_update_handler(v7, v5);
  nw_path_monitor_start(v7);

  return v7;
}

@end