@interface _NTKBundleBundleComplicationLoader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateBundles:(id)bundles;
- (void)_loadClassesUsingBlock:(id)block;
@end

@implementation _NTKBundleBundleComplicationLoader

- (void)_enumerateBundles:(id)bundles
{
  v19 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  if (self->_urls)
  {
    if (_enumerateBundles__onceToken_1 != -1)
    {
      [_NTKBundleBundleComplicationLoader _enumerateBundles:];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = self->_urls;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = _enumerateBundles____complicationBundleLoader;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __56___NTKBundleBundleComplicationLoader__enumerateBundles___block_invoke_2;
          v12[3] = &unk_278782058;
          v13 = bundlesCopy;
          [v10 enumerateBundlesFromDirectoryURL:v9 enumerator:v12];
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (void)_loadClassesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___NTKBundleBundleComplicationLoader__loadClassesUsingBlock___block_invoke;
  v6[3] = &unk_2787826C8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(_NTKBundleBundleComplicationLoader *)self _enumerateBundles:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = NTKEqualObjects(self->_urls, equalCopy->_urls);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUrls:self->_urls];
  return v4;
}

@end