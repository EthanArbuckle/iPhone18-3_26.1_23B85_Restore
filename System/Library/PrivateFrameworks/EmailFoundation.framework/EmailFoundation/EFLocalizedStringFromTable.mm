@interface EFLocalizedStringFromTable
@end

@implementation EFLocalizedStringFromTable

void ___EFLocalizedStringFromTable_block_invoke(uint64_t a1)
{
  if (**(a1 + 32))
  {
    ___EFLocalizedStringFromTable_block_invoke_cold_1();
  }

  v2 = dyld_image_path_containing_address();
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 stringWithFileSystemRepresentation:v2 length:strlen(v2)];
  v3 = _CFBundleCopyFrameworkURLForExecutablePath();

  v4 = v3;
  if (!v3)
  {
    [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v2 isDirectory:0 relativeToURL:0];
    v4 = _CFBundleCopyBundleURLForExecutableURL();
    if (!v4)
    {
      __assert_rtn("_EFLocalizedStringFromTable_block_invoke", "EFLocalizableStrings.m", 32, "URL");
    }
  }

  v9 = v4;
  v5 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
  v6 = *(a1 + 32);
  v7 = *v6;
  *v6 = v5;

  if (!**(a1 + 32))
  {
    __assert_rtn("_EFLocalizedStringFromTable_block_invoke", "EFLocalizableStrings.m", 35, "*bundle");
  }
}

@end