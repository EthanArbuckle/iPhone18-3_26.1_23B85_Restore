@interface PBCodable
@end

@implementation PBCodable

id __61__PBCodable_MRAdditions__mr_valueForPotentiallyUndefinedKey___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  NSSelectorFromString(*(a1 + 40));
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) valueForKey:*(a1 + 40)];
  }

  else
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Encountered unknown protobuf key (%@) while converting to a dictionary; skipping.", &v8, 0xCu);
    }

    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

@end