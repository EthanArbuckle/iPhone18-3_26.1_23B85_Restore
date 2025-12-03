@interface MXIMaterialDescriptor
- (MXIMaterialDescriptor)initWithAtlasArray:(id)array;
@end

@implementation MXIMaterialDescriptor

- (MXIMaterialDescriptor)initWithAtlasArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = MXIMaterialDescriptor;
  v6 = [(MXIMaterialDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_atlases, array);
  }

  return v7;
}

@end