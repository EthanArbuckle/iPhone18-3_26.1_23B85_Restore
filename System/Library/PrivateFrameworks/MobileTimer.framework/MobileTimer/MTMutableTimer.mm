@interface MTMutableTimer
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTMutableTimer

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTTimer allocWithZone:a3];
  v5 = [(MTTimer *)self timerID];
  v6 = [(MTTimer *)v4 initWithIdentifier:v5];

  [(MTTimer *)self _copyStateOntoTimer:v6];
  return v6;
}

@end