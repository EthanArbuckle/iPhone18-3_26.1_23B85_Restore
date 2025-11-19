@interface MXIMaterialDescriptor
- (MXIMaterialDescriptor)initWithAtlasArray:(id)a3;
@end

@implementation MXIMaterialDescriptor

- (MXIMaterialDescriptor)initWithAtlasArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXIMaterialDescriptor;
  v6 = [(MXIMaterialDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_atlases, a3);
  }

  return v7;
}

@end