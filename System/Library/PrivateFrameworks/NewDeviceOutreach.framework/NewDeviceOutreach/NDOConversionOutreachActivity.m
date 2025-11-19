@interface NDOConversionOutreachActivity
+ (id)outreachActivityForSerialNumber:(id)a3;
- (void)performActivityForScheduler:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation NDOConversionOutreachActivity

- (void)performActivityForScheduler:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[NDOConversionOutreachActivity performActivityForScheduler:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: for conversion outreach", &v11, 0xCu);
  }

  v10 = [(NDOConversionOutreachActivity *)self identifier];
  [v8 performOutreachActivityForActivityID:v10 withScheduler:v7 andCompletion:v6];
}

+ (id)outreachActivityForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "+[NDOConversionOutreachActivity outreachActivityForSerialNumber:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: for conversion outreach %@", &v7, 0x16u);
  }

  v5 = objc_opt_new();
  [v5 setWarrantySN:v3];

  return v5;
}

@end