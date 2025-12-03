@interface MTMutableStopwatch
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTMutableStopwatch

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTStopwatch allocWithZone:zone];
  identifier = [(MTStopwatch *)self identifier];
  v6 = [(MTStopwatch *)v4 initWithId:identifier];

  [(MTStopwatch *)self _copyStateOntoStopwatch:v6];
  return v6;
}

@end