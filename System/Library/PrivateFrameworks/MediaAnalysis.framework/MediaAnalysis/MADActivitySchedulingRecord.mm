@interface MADActivitySchedulingRecord
- (id)description;
@end

@implementation MADActivitySchedulingRecord

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = VCPTaskIDDescription([(MADActivitySchedulingRecord *)self activityID]);
  [v3 appendFormat:@"activityID: %@, ", v6];

  v7 = [(MADActivitySchedulingRecord *)self startTime];
  [v3 appendFormat:@"startTime: %@, ", v7];

  [(MADActivitySchedulingRecord *)self duration];
  [v3 appendFormat:@"duration: %f(sec), ", v8];
  [v3 appendFormat:@"exitStatus: %d>", -[MADActivitySchedulingRecord exitStatus](self, "exitStatus")];

  return v3;
}

@end