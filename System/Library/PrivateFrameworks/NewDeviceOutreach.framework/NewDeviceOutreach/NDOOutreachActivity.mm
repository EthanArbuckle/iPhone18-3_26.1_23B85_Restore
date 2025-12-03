@interface NDOOutreachActivity
- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler;
@end

@implementation NDOOutreachActivity

- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  schedulerCopy = scheduler;
  v8 = objc_opt_new();
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[NDOOutreachActivity performActivityForScheduler:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: for general outreach", &v11, 0xCu);
  }

  identifier = [(NDOOutreachActivity *)self identifier];
  [v8 performOutreachActivityForActivityID:identifier withScheduler:schedulerCopy andCompletion:handlerCopy];
}

@end