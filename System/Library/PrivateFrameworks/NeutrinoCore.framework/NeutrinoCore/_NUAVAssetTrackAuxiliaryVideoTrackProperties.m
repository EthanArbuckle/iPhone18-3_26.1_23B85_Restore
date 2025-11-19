@interface _NUAVAssetTrackAuxiliaryVideoTrackProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (_NUAVAssetTrackAuxiliaryVideoTrackProperties)init;
@end

@implementation _NUAVAssetTrackAuxiliaryVideoTrackProperties

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (_NUAVAssetTrackAuxiliaryVideoTrackProperties)init
{
  v3.receiver = self;
  v3.super_class = _NUAVAssetTrackAuxiliaryVideoTrackProperties;
  return [(_NUAVAssetTrackAuxiliaryVideoTrackProperties *)&v3 init];
}

@end