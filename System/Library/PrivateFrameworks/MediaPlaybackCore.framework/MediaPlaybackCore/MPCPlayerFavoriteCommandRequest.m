@interface MPCPlayerFavoriteCommandRequest
- (MPCPlayerFavoriteCommandRequest)initWithModelObject:(id)a3 value:(BOOL)a4 controller:(id)a5 label:(id)a6;
@end

@implementation MPCPlayerFavoriteCommandRequest

- (MPCPlayerFavoriteCommandRequest)initWithModelObject:(id)a3 value:(BOOL)a4 controller:(id)a5 label:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = [a5 resolvedPlayerPath];
  v14 = [(MPCPlayerCommandRequest *)self initWithMediaRemoteCommand:0xFFFFFFFFLL options:0 playerPath:v13 label:v12];

  if (v14)
  {
    objc_storeStrong(&v14->_modelObject, a3);
    v14->_value = a4;
  }

  return v14;
}

@end