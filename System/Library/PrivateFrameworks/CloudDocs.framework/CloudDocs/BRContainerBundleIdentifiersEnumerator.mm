@interface BRContainerBundleIdentifiersEnumerator
- (BRContainerBundleIdentifiersEnumerator)initWithContainerPlist:(id)plist;
- (id)nextObject;
@end

@implementation BRContainerBundleIdentifiersEnumerator

- (BRContainerBundleIdentifiersEnumerator)initWithContainerPlist:(id)plist
{
  plistCopy = plist;
  v9.receiver = self;
  v9.super_class = BRContainerBundleIdentifiersEnumerator;
  v5 = [(BRContainerBundleIdentifiersEnumerator *)&v9 init];
  if (v5)
  {
    keyEnumerator = [plistCopy keyEnumerator];
    enumerator = v5->_enumerator;
    v5->_enumerator = keyEnumerator;
  }

  return v5;
}

- (id)nextObject
{
  v13 = *MEMORY[0x1E69E9840];
  nextObject = [(NSEnumerator *)self->_enumerator nextObject];
  if (nextObject)
  {
    *&v4 = 138412290;
    v10 = v4;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([nextObject isEqualToString:@"BRContainerIcons"] & 1) == 0)
      {
        if (![nextObject isEqualToString:@"com.apple.bird"])
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

      nextObject2 = [(NSEnumerator *)self->_enumerator nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

  v8 = *MEMORY[0x1E69E9840];

  return nextObject;
}

@end