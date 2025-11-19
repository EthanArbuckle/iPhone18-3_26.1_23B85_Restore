@interface ULBGNonRepeatingSystemTaskRequest
- (ULBGNonRepeatingSystemTaskRequest)initWithIdentifier:(id)a3 scheduleAfter:(double)a4 trySchedulingBefore:(double)a5;
- (id)createRequestFromSelf;
@end

@implementation ULBGNonRepeatingSystemTaskRequest

- (ULBGNonRepeatingSystemTaskRequest)initWithIdentifier:(id)a3 scheduleAfter:(double)a4 trySchedulingBefore:(double)a5
{
  v10.receiver = self;
  v10.super_class = ULBGNonRepeatingSystemTaskRequest;
  v7 = [(ULBGSystemTaskRequest *)&v10 initWithIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    [(ULBGNonRepeatingSystemTaskRequest *)v7 setScheduleAfter:a4];
    [(ULBGNonRepeatingSystemTaskRequest *)v8 setTrySchedulingBefore:a5];
  }

  return v8;
}

- (id)createRequestFromSelf
{
  v3 = objc_alloc(MEMORY[0x277CF07C8]);
  v4 = [(ULBGSystemTaskRequest *)self identifier];
  v5 = [v3 initWithIdentifier:v4];

  [(ULBGNonRepeatingSystemTaskRequest *)self scheduleAfter];
  [v5 setScheduleAfter:?];
  [(ULBGNonRepeatingSystemTaskRequest *)self trySchedulingBefore];
  [v5 setTrySchedulingBefore:?];
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

@end