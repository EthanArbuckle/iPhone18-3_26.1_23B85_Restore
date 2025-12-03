@interface CNUIInteractionDonor
+ (OS_os_log)log;
- (void)donateInteraction:(id)interaction;
@end

@implementation CNUIInteractionDonor

+ (OS_os_log)log
{
  if (log_cn_once_token_1_3 != -1)
  {
    +[CNUIInteractionDonor log];
  }

  v3 = log_cn_once_object_1_3;

  return v3;
}

uint64_t __27__CNUIInteractionDonor_log__block_invoke()
{
  log_cn_once_object_1_3 = os_log_create("contactsui", "activity");

  return MEMORY[0x1EEE66BB8]();
}

- (void)donateInteraction:(id)interaction
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CNUIInteractionDonor_donateInteraction___block_invoke;
  v3[3] = &unk_1E76E7970;
  v3[4] = self;
  [interaction donateInteractionWithCompletion:v3];
}

void __42__CNUIInteractionDonor_donateInteraction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__CNUIInteractionDonor_donateInteraction___block_invoke_cold_1(v2, v3);
    }
  }
}

void __42__CNUIInteractionDonor_donateInteraction___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "error donating interaction: %@", &v2, 0xCu);
}

@end