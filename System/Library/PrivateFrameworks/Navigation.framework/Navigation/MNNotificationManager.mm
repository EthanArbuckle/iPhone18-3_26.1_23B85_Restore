@interface MNNotificationManager
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3;
@end

@implementation MNNotificationManager

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(a2);
    v8 = 136316162;
    v9 = "[MNNotificationManager showPredictedRouteTrafficIncidentBulletinForCommuteDetails:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNNotificationManager.m";
    v12 = 1024;
    v13 = 20;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: %@ must implement '%@'", &v8, 0x30u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end