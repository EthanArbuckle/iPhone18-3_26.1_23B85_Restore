@interface _CNUIDirectoryServicesPhotoFuture
+ (id)photoForEmailAddresses:(id)addresses;
@end

@implementation _CNUIDirectoryServicesPhotoFuture

+ (id)photoForEmailAddresses:(id)addresses
{
  v3 = MEMORY[0x1E6996720];
  null = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 futureWithResult:null];

  return v5;
}

@end