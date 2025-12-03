@interface MTMutableTimer
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTMutableTimer

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTTimer allocWithZone:zone];
  timerID = [(MTTimer *)self timerID];
  v6 = [(MTTimer *)v4 initWithIdentifier:timerID];

  [(MTTimer *)self _copyStateOntoTimer:v6];
  return v6;
}

@end