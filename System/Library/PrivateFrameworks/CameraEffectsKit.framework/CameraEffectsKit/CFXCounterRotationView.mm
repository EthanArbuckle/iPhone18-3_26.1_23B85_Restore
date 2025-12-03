@interface CFXCounterRotationView
- (void)setZRotation:(double)rotation;
@end

@implementation CFXCounterRotationView

- (void)setZRotation:(double)rotation
{
  if (self->_zRotation != rotation)
  {
    self->_zRotation = rotation;
    snapshotLayer = [(CFXCounterRotationView *)self snapshotLayer];
    [snapshotLayer setZRotation:rotation];

    memset(&v8, 0, sizeof(v8));
    CGAffineTransformMakeRotation(&v8, rotation);
    v7.receiver = self;
    v7.super_class = CFXCounterRotationView;
    v6 = v8;
    [(CFXCounterRotationView *)&v7 setTransform:&v6];
  }
}

@end