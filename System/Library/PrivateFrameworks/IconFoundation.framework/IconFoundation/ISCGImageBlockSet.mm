@interface ISCGImageBlockSet
- (ISCGImageBlockSet)initWithBlockSet:(CGImageBlockSet *)set;
- (void)dealloc;
@end

@implementation ISCGImageBlockSet

- (ISCGImageBlockSet)initWithBlockSet:(CGImageBlockSet *)set
{
  v5.receiver = self;
  v5.super_class = ISCGImageBlockSet;
  v3 = [(ISCGImageBlockSet *)&v5 init];
  if (v3)
  {
    v3->_blockSet = CGImageBlockSetRetain();
  }

  return v3;
}

- (void)dealloc
{
  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
  }

  v3.receiver = self;
  v3.super_class = ISCGImageBlockSet;
  [(ISCGImageBlockSet *)&v3 dealloc];
}

@end