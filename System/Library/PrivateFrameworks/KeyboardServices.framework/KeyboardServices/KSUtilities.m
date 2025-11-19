@interface KSUtilities
@end

@implementation KSUtilities

void __33___KSUtilities_keyboardDirectory__block_invoke()
{
  v0 = _homeDirectory();
  v1 = keyboardDirectory_dir;
  keyboardDirectory_dir = v0;

  v2 = [keyboardDirectory_dir stringByAppendingPathComponent:@"/Library/Keyboard"];
  v3 = keyboardDirectory_dir;
  keyboardDirectory_dir = v2;
}

void __41___KSUtilities_keyboardServicesDirectory__block_invoke()
{
  v0 = _homeDirectory();
  v1 = keyboardServicesDirectory_dir;
  keyboardServicesDirectory_dir = v0;

  v2 = [keyboardServicesDirectory_dir stringByAppendingPathComponent:@"/Library/KeyboardServices"];
  v3 = keyboardServicesDirectory_dir;
  keyboardServicesDirectory_dir = v2;

  v11 = 1;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:keyboardServicesDirectory_dir isDirectory:&v11];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    [v6 createDirectoryAtPath:keyboardServicesDirectory_dir withIntermediateDirectories:0 attributes:0 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = keyboardServicesDirectory_dir;
      v9 = [v7 localizedDescription];
      NSLog(&cfstr_CouldNotCreate.isa, v8, v9);
    }
  }
}

@end