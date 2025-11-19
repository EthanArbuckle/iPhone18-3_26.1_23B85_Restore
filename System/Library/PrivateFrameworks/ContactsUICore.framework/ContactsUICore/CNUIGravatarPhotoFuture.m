@interface CNUIGravatarPhotoFuture
@end

@implementation CNUIGravatarPhotoFuture

id __61___CNUIGravatarPhotoFuture_photoForEmailAddresses_dataProxy___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"email-address";
  v1 = (*(*MEMORY[0x1E6996588] + 16))(*MEMORY[0x1E6996588], *(a1 + 32));
  v7[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [CNContactsUIError errorWithCode:402 userInfo:v2];

  v4 = [MEMORY[0x1E6996720] futureWithError:v3];

  return v4;
}

id __59___CNUIGravatarPhotoFuture_photoForEmailAddress_dataProxy___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"email-address";
  v1 = (*(*MEMORY[0x1E6996588] + 16))(*MEMORY[0x1E6996588], *(a1 + 32));
  v7[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [CNContactsUIError errorWithCode:402 userInfo:v2];

  v4 = [MEMORY[0x1E6996720] futureWithError:v3];

  return v4;
}

@end