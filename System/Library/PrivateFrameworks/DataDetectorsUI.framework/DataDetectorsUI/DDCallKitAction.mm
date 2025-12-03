@interface DDCallKitAction
- (id)dialRequest;
- (id)localizedName;
@end

@implementation DDCallKitAction

- (id)localizedName
{
  callProvider = [(DDCallKitAction *)self callProvider];
  localizedName = [callProvider localizedName];

  return localizedName;
}

- (id)dialRequest
{
  callProvider = [(DDCallKitAction *)self callProvider];
  v4 = [(DDCallAction *)self dialRequestWithProvider:callProvider];

  return v4;
}

@end