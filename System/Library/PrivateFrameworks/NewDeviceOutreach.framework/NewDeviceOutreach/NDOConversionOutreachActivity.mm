@interface NDOConversionOutreachActivity
+ (id)outreachActivityForSerialNumber:(id)number;
- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler;
@end

@implementation NDOConversionOutreachActivity

- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  schedulerCopy = scheduler;
  v8 = objc_opt_new();
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[NDOConversionOutreachActivity performActivityForScheduler:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: for conversion outreach", &v11, 0xCu);
  }

  identifier = [(NDOConversionOutreachActivity *)self identifier];
  [v8 performOutreachActivityForActivityID:identifier withScheduler:schedulerCopy andCompletion:handlerCopy];
}

+ (id)outreachActivityForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "+[NDOConversionOutreachActivity outreachActivityForSerialNumber:]";
    v9 = 2112;
    v10 = numberCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: for conversion outreach %@", &v7, 0x16u);
  }

  v5 = objc_opt_new();
  [v5 setWarrantySN:numberCopy];

  return v5;
}

@end