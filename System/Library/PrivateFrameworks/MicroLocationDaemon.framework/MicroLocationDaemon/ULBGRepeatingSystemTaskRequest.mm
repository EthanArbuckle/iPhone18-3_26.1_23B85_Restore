@interface ULBGRepeatingSystemTaskRequest
+ (id)analyticsULBGRepeatingSystemTaskRequest;
+ (id)exportBackupULBGRepeatingSystemTaskRequest;
+ (id)learningULBGRepeatingSystemTaskRequest;
+ (id)maintenanceULBGRepeatingSystemTaskRequest;
+ (id)routineStateAnalyzerULBGRepeatingSystemTaskRequest;
+ (id)wifiAnalyzerULBGRepeatingSystemTaskRequest;
- (ULBGRepeatingSystemTaskRequest)initWithIdentifier:(id)a3 interval:(double)a4 minDurationBetweenInstances:(double)a5;
- (id)createRequestFromSelf;
@end

@implementation ULBGRepeatingSystemTaskRequest

- (ULBGRepeatingSystemTaskRequest)initWithIdentifier:(id)a3 interval:(double)a4 minDurationBetweenInstances:(double)a5
{
  v10.receiver = self;
  v10.super_class = ULBGRepeatingSystemTaskRequest;
  v7 = [(ULBGSystemTaskRequest *)&v10 initWithIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    [(ULBGRepeatingSystemTaskRequest *)v7 setInterval:a4];
    [(ULBGRepeatingSystemTaskRequest *)v8 setMinDurationBetweenInstances:a5];
  }

  return v8;
}

- (id)createRequestFromSelf
{
  v3 = objc_alloc(MEMORY[0x277CF07D8]);
  v4 = [(ULBGSystemTaskRequest *)self identifier];
  v5 = [v3 initWithIdentifier:v4];

  [(ULBGRepeatingSystemTaskRequest *)self interval];
  [v5 setInterval:?];
  [(ULBGRepeatingSystemTaskRequest *)self minDurationBetweenInstances];
  [v5 setMinDurationBetweenInstances:?];
  [v5 setPriority:{-[ULBGSystemTaskRequest priority](self, "priority")}];
  [v5 setRequiresProtectionClass:{-[ULBGSystemTaskRequest requiresProtectionClass](self, "requiresProtectionClass")}];
  [v5 setResourceIntensive:{-[ULBGSystemTaskRequest resourceIntensive](self, "resourceIntensive")}];
  [v5 setResources:{-[ULBGSystemTaskRequest resources](self, "resources")}];
  [v5 setRequiresBuddyComplete:{-[ULBGSystemTaskRequest requiresBuddyComplete](self, "requiresBuddyComplete")}];
  [v5 setRequiresUserInactivity:{-[ULBGSystemTaskRequest requiresUserInactivity](self, "requiresUserInactivity")}];
  [v5 setPostInstall:{-[ULBGSystemTaskRequest postInstall](self, "postInstall")}];
  [v5 setRequiresExternalPower:{-[ULBGSystemTaskRequest requiresExternalPower](self, "requiresExternalPower")}];

  return v5;
}

+ (id)learningULBGRepeatingSystemTaskRequest
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningInterval"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [&unk_286A712F8 intValue];
  }

  v7 = v6;

  v8 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.learning" interval:v7 minDurationBetweenInstances:v7 * 0.8];
  [(ULBGSystemTaskRequest *)v8 setPriority:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresProtectionClass:0];
  [(ULBGSystemTaskRequest *)v8 setResourceIntensive:1];
  [(ULBGSystemTaskRequest *)v8 setResources:7];
  [(ULBGSystemTaskRequest *)v8 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresUserInactivity:1];
  [(ULBGSystemTaskRequest *)v8 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v8 setRequiresExternalPower:1];

  return v8;
}

+ (id)maintenanceULBGRepeatingSystemTaskRequest
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaintenanceInterval"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [&unk_286A712F8 intValue];
  }

  v7 = v6;

  v8 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.maintenance" interval:v7 minDurationBetweenInstances:v7 * 0.8];
  [(ULBGSystemTaskRequest *)v8 setPriority:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresProtectionClass:0];
  [(ULBGSystemTaskRequest *)v8 setResourceIntensive:1];
  [(ULBGSystemTaskRequest *)v8 setResources:7];
  [(ULBGSystemTaskRequest *)v8 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresUserInactivity:1];
  [(ULBGSystemTaskRequest *)v8 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v8 setRequiresExternalPower:1];

  return v8;
}

+ (id)routineStateAnalyzerULBGRepeatingSystemTaskRequest
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRoutineStateRefreshInterval"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [&unk_286A712F8 intValue];
  }

  v7 = v6;

  v8 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.routineStateAnalyzerExecute" interval:v7 minDurationBetweenInstances:v7 * 0.8];
  [(ULBGSystemTaskRequest *)v8 setPriority:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresProtectionClass:0];
  [(ULBGSystemTaskRequest *)v8 setResourceIntensive:1];
  [(ULBGSystemTaskRequest *)v8 setResources:7];
  [(ULBGSystemTaskRequest *)v8 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresUserInactivity:1];
  [(ULBGSystemTaskRequest *)v8 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v8 setRequiresExternalPower:1];

  return v8;
}

+ (id)analyticsULBGRepeatingSystemTaskRequest
{
  v2 = ULSettings::get<ULSettings::AnalyticsInterval>();
  v3 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.analytics" interval:v2 minDurationBetweenInstances:v2 * 0.8];
  [(ULBGSystemTaskRequest *)v3 setPriority:1];
  [(ULBGSystemTaskRequest *)v3 setRequiresProtectionClass:0];
  [(ULBGSystemTaskRequest *)v3 setResourceIntensive:1];
  [(ULBGSystemTaskRequest *)v3 setResources:7];
  [(ULBGSystemTaskRequest *)v3 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v3 setRequiresUserInactivity:1];
  [(ULBGSystemTaskRequest *)v3 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v3 setRequiresExternalPower:1];

  return v3;
}

+ (id)wifiAnalyzerULBGRepeatingSystemTaskRequest
{
  v2 = ULSettings::get<ULSettings::AnalyticsInterval>();
  v3 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.wifiAnalyzer" interval:v2 minDurationBetweenInstances:v2 * 0.8];
  [(ULBGSystemTaskRequest *)v3 setPriority:1];
  [(ULBGSystemTaskRequest *)v3 setRequiresProtectionClass:0];
  [(ULBGSystemTaskRequest *)v3 setResourceIntensive:1];
  [(ULBGSystemTaskRequest *)v3 setResources:7];
  [(ULBGSystemTaskRequest *)v3 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v3 setRequiresUserInactivity:1];
  [(ULBGSystemTaskRequest *)v3 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v3 setRequiresExternalPower:1];

  return v3;
}

+ (id)exportBackupULBGRepeatingSystemTaskRequest
{
  v2 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.exportiCloudBackup" interval:86400.0 minDurationBetweenInstances:69120.0];
  [(ULBGSystemTaskRequest *)v2 setPriority:1];
  [(ULBGSystemTaskRequest *)v2 setRequiresProtectionClass:1];
  [(ULBGSystemTaskRequest *)v2 setResourceIntensive:0];
  [(ULBGSystemTaskRequest *)v2 setResources:0];
  [(ULBGSystemTaskRequest *)v2 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v2 setRequiresUserInactivity:0];
  [(ULBGSystemTaskRequest *)v2 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v2 setRequiresExternalPower:0];

  return v2;
}

@end