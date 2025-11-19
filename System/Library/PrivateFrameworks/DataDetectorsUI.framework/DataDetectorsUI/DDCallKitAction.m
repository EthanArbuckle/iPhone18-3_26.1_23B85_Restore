@interface DDCallKitAction
- (id)dialRequest;
- (id)localizedName;
@end

@implementation DDCallKitAction

- (id)localizedName
{
  v2 = [(DDCallKitAction *)self callProvider];
  v3 = [v2 localizedName];

  return v3;
}

- (id)dialRequest
{
  v3 = [(DDCallKitAction *)self callProvider];
  v4 = [(DDCallAction *)self dialRequestWithProvider:v3];

  return v4;
}

@end