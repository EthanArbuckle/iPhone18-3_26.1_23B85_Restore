@interface NSCoder(IconFoundationAdditions)
- (id)_IF_decodeObjectOfClass:()IconFoundationAdditions forKey:;
@end

@implementation NSCoder(IconFoundationAdditions)

- (id)_IF_decodeObjectOfClass:()IconFoundationAdditions forKey:
{
  v6 = a4;
  v7 = [self decodeObjectOfClass:a3 forKey:v6];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v9 = IFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [NSCoder(IconFoundationAdditions) _IF_decodeObjectOfClass:v6 forKey:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)_IF_decodeObjectOfClass:()IconFoundationAdditions forKey:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_FAULT, "Decode error: Unexpected class for key '%@'", &v2, 0xCu);
}

@end