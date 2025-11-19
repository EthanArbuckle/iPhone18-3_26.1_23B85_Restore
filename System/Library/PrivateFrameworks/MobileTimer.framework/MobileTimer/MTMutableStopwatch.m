@interface MTMutableStopwatch
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTMutableStopwatch

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTStopwatch allocWithZone:a3];
  v5 = [(MTStopwatch *)self identifier];
  v6 = [(MTStopwatch *)v4 initWithId:v5];

  [(MTStopwatch *)self _copyStateOntoStopwatch:v6];
  return v6;
}

@end