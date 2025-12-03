@interface MPCPlayerFavoriteCommandRequest
- (MPCPlayerFavoriteCommandRequest)initWithModelObject:(id)object value:(BOOL)value controller:(id)controller label:(id)label;
@end

@implementation MPCPlayerFavoriteCommandRequest

- (MPCPlayerFavoriteCommandRequest)initWithModelObject:(id)object value:(BOOL)value controller:(id)controller label:(id)label
{
  objectCopy = object;
  labelCopy = label;
  resolvedPlayerPath = [controller resolvedPlayerPath];
  v14 = [(MPCPlayerCommandRequest *)self initWithMediaRemoteCommand:0xFFFFFFFFLL options:0 playerPath:resolvedPlayerPath label:labelCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_modelObject, object);
    v14->_value = value;
  }

  return v14;
}

@end