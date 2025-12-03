@interface MADActivitySchedulingRecord
- (id)description;
@end

@implementation MADActivitySchedulingRecord

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  v6 = VCPTaskIDDescription([(MADActivitySchedulingRecord *)self activityID]);
  [string appendFormat:@"activityID: %@, ", v6];

  startTime = [(MADActivitySchedulingRecord *)self startTime];
  [string appendFormat:@"startTime: %@, ", startTime];

  [(MADActivitySchedulingRecord *)self duration];
  [string appendFormat:@"duration: %f(sec), ", v8];
  [string appendFormat:@"exitStatus: %d>", -[MADActivitySchedulingRecord exitStatus](self, "exitStatus")];

  return string;
}

@end