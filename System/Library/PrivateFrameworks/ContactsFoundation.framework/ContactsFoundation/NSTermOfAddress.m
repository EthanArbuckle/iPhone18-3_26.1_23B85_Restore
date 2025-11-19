@interface NSTermOfAddress
@end

@implementation NSTermOfAddress

uint64_t __45__NSTermOfAddress_ContactsFoundation__os_log__block_invoke()
{
  os_log_cn_once_object_1_3 = os_log_create("com.apple.contacts", "NSTermOfAddress+ContactsFoundation");

  return MEMORY[0x1EEE66BB8]();
}

id __91__NSTermOfAddress_ContactsFoundation__pronounDescriptionsForAddressingGrammars_uppercased___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pronouns];
  v5 = off_1EF43E9E8(&__block_literal_global_5, v4);

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 pronouns];
    v8 = [v7 firstObject];
    v9 = [v8 pronoun];

    if (*(a1 + 32))
    {
      v10 = [v3 locale];
      v6 = [v9 uppercaseStringWithLocale:v10];
    }

    else
    {
      v6 = v9;
    }
  }

  return v6;
}

@end