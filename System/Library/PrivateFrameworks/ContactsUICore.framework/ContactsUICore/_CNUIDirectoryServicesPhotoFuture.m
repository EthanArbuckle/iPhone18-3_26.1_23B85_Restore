@interface _CNUIDirectoryServicesPhotoFuture
+ (id)photoForEmailAddresses:(id)a3;
@end

@implementation _CNUIDirectoryServicesPhotoFuture

+ (id)photoForEmailAddresses:(id)a3
{
  v3 = MEMORY[0x1E6996720];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

@end