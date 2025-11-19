@interface CKPlainStringItemProviderWriter
+ (id)writableTypeIdentifiersForItemProvider;
@end

@implementation CKPlainStringItemProviderWriter

+ (id)writableTypeIdentifiersForItemProvider
{
  if (writableTypeIdentifiersForItemProvider_onceToken != -1)
  {
    +[CKPlainStringItemProviderWriter writableTypeIdentifiersForItemProvider];
  }

  v3 = writableTypeIdentifiersForItemProvider_sTypeIdentifiers;

  return v3;
}

void __73__CKPlainStringItemProviderWriter_writableTypeIdentifiersForItemProvider__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6983060] identifier];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v2 = writableTypeIdentifiersForItemProvider_sTypeIdentifiers;
  writableTypeIdentifiersForItemProvider_sTypeIdentifiers = v1;
}

@end