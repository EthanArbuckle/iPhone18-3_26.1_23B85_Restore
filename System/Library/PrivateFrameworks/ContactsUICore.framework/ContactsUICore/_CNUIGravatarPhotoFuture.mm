@interface _CNUIGravatarPhotoFuture
+ (id)filenameForEmailAddress:(id)address;
+ (id)hashForEmailAddress:(id)address;
+ (id)photoForEmailAddress:(id)address;
+ (id)photoForEmailAddress:(id)address dataProxy:(id)proxy;
+ (id)photoForEmailAddresses:(id)addresses;
+ (id)photoForEmailAddresses:(id)addresses dataProxy:(id)proxy;
+ (id)urlForEmailAddress:(id)address;
@end

@implementation _CNUIGravatarPhotoFuture

+ (id)photoForEmailAddresses:(id)addresses
{
  v4 = MEMORY[0x1E6996690];
  addressesCopy = addresses;
  v6 = objc_alloc_init(v4);
  v7 = [self photoForEmailAddresses:addressesCopy dataProxy:v6];

  return v7;
}

+ (id)photoForEmailAddresses:(id)addresses dataProxy:(id)proxy
{
  addressesCopy = addresses;
  proxyCopy = proxy;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v8 = MEMORY[0x1E6996720];
    v9 = [CNContactsUIError errorWithCode:401];
    v10 = [v8 futureWithError:v9];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61___CNUIGravatarPhotoFuture_photoForEmailAddresses_dataProxy___block_invoke;
    v16[3] = &unk_1E76E9CB0;
    selfCopy = self;
    v17 = proxyCopy;
    v11 = [addressesCopy _cn_map:v16];
    v12 = [MEMORY[0x1E6996720] chain:v11];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___CNUIGravatarPhotoFuture_photoForEmailAddresses_dataProxy___block_invoke_2;
    v14[3] = &unk_1E76E9CD8;
    v15 = addressesCopy;
    v10 = [v12 recover:v14];
  }

  return v10;
}

+ (id)photoForEmailAddress:(id)address
{
  v4 = MEMORY[0x1E6996690];
  addressCopy = address;
  v6 = objc_alloc_init(v4);
  v7 = [self photoForEmailAddress:addressCopy dataProxy:v6];

  return v7;
}

+ (id)photoForEmailAddress:(id)address dataProxy:(id)proxy
{
  addressCopy = address;
  proxyCopy = proxy;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v8 = MEMORY[0x1E6996720];
    v9 = [CNContactsUIError errorWithCode:401];
    v10 = [v8 futureWithError:v9];
  }

  else
  {
    v9 = [self urlForEmailAddress:addressCopy];
    v11 = [proxyCopy dataWithContentsOfURL:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___CNUIGravatarPhotoFuture_photoForEmailAddress_dataProxy___block_invoke;
    v13[3] = &unk_1E76E9CD8;
    v14 = addressCopy;
    v10 = [v11 recover:v13];
  }

  return v10;
}

+ (id)urlForEmailAddress:(id)address
{
  v4 = [self filenameForEmailAddress:address];
  imageSize = [self imageSize];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://www.gravatar.com/avatar/%@.jpg?s=%lu&d=404&r=pg", v4, imageSize];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

+ (id)filenameForEmailAddress:(id)address
{
  _cn_trimmedString = [address _cn_trimmedString];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [_cn_trimmedString lowercaseStringWithLocale:currentLocale];

  v7 = [self hashForEmailAddress:v6];

  return v7;
}

+ (id)hashForEmailAddress:(id)address
{
  v3 = [address dataUsingEncoding:4];
  _cn_md5Hash = [v3 _cn_md5Hash];
  _cn_hexString = [_cn_md5Hash _cn_hexString];
  lowercaseString = [_cn_hexString lowercaseString];

  return lowercaseString;
}

@end