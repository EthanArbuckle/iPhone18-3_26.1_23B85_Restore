@interface BRContainerBundleIdentifiersEnumerator
- (BRContainerBundleIdentifiersEnumerator)initWithContainerPlist:(id)a3;
- (id)nextObject;
@end

@implementation BRContainerBundleIdentifiersEnumerator

- (BRContainerBundleIdentifiersEnumerator)initWithContainerPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRContainerBundleIdentifiersEnumerator;
  v5 = [(BRContainerBundleIdentifiersEnumerator *)&v9 init];
  if (v5)
  {
    v6 = [v4 keyEnumerator];
    enumerator = v5->_enumerator;
    v5->_enumerator = v6;
  }

  return v5;
}

- (id)nextObject
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(NSEnumerator *)self->_enumerator nextObject];
  if (v3)
  {
    *&v4 = 138412290;
    v10 = v4;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 isEqualToString:@"BRContainerIcons"] & 1) == 0)
      {
        if (![v3 isEqualToString:@"com.apple.bird"])
        {
          break;
        }

        v5 = brc_bread_crumbs("[BRContainerBundleIdentifiersEnumerator nextObject]", 206);
        v6 = brc_default_log(1, 0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v10;
          v12 = v5;
          _os_log_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring bundle com.apple.bird%@", buf, 0xCu);
        }
      }

      v7 = [(NSEnumerator *)self->_enumerator nextObject];

      v3 = v7;
    }

    while (v7);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

@end