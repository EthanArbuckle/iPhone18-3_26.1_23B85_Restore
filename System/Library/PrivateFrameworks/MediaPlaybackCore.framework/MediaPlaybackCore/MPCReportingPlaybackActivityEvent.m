@interface MPCReportingPlaybackActivityEvent
- (NSString)description;
@end

@implementation MPCReportingPlaybackActivityEvent

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_shouldReportToStore)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p shouldReportToStore:%@ playActivityEvent:%@>", v5, self, v7, self->_playActivityEvent];

  return v8;
}

@end