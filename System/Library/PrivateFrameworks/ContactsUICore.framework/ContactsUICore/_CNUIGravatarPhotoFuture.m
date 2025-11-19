@interface _CNUIGravatarPhotoFuture
+ (id)filenameForEmailAddress:(id)a3;
+ (id)hashForEmailAddress:(id)a3;
+ (id)photoForEmailAddress:(id)a3;
+ (id)photoForEmailAddress:(id)a3 dataProxy:(id)a4;
+ (id)photoForEmailAddresses:(id)a3;
+ (id)photoForEmailAddresses:(id)a3 dataProxy:(id)a4;
+ (id)urlForEmailAddress:(id)a3;
@end

@implementation _CNUIGravatarPhotoFuture

+ (id)photoForEmailAddresses:(id)a3
{
  v4 = MEMORY[0x1E6996690];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 photoForEmailAddresses:v5 dataProxy:v6];

  return v7;
}

+ (id)photoForEmailAddresses:(id)a3 dataProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v18 = a1;
    v17 = v7;
    v11 = [v6 _cn_map:v16];
    v12 = [MEMORY[0x1E6996720] chain:v11];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___CNUIGravatarPhotoFuture_photoForEmailAddresses_dataProxy___block_invoke_2;
    v14[3] = &unk_1E76E9CD8;
    v15 = v6;
    v10 = [v12 recover:v14];
  }

  return v10;
}

+ (id)photoForEmailAddress:(id)a3
{
  v4 = MEMORY[0x1E6996690];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 photoForEmailAddress:v5 dataProxy:v6];

  return v7;
}

+ (id)photoForEmailAddress:(id)a3 dataProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v8 = MEMORY[0x1E6996720];
    v9 = [CNContactsUIError errorWithCode:401];
    v10 = [v8 futureWithError:v9];
  }

  else
  {
    v9 = [a1 urlForEmailAddress:v6];
    v11 = [v7 dataWithContentsOfURL:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___CNUIGravatarPhotoFuture_photoForEmailAddress_dataProxy___block_invoke;
    v13[3] = &unk_1E76E9CD8;
    v14 = v6;
    v10 = [v11 recover:v13];
  }

  return v10;
}

+ (id)urlForEmailAddress:(id)a3
{
  v4 = [a1 filenameForEmailAddress:a3];
  v5 = [a1 imageSize];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://www.gravatar.com/avatar/%@.jpg?s=%lu&d=404&r=pg", v4, v5];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

+ (id)filenameForEmailAddress:(id)a3
{
  v4 = [a3 _cn_trimmedString];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v4 lowercaseStringWithLocale:v5];

  v7 = [a1 hashForEmailAddress:v6];

  return v7;
}

+ (id)hashForEmailAddress:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 _cn_md5Hash];
  v5 = [v4 _cn_hexString];
  v6 = [v5 lowercaseString];

  return v6;
}

@end