@interface NSFileProviderDomain(BRAdditions)
- (id)br_volumeUUID;
- (uint64_t)br_isCiconiaDomain;
@end

@implementation NSFileProviderDomain(BRAdditions)

- (uint64_t)br_isCiconiaDomain
{
  identifier = [self identifier];
  v2 = [identifier hasPrefix:@"Ciconia-"];

  return v2;
}

- (id)br_volumeUUID
{
  v3 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v4 = 1;
  a2.n128_u64[0] = 138412802;
  v20 = a2;
  while (1)
  {
    v5 = v4;
    v6 = MEMORY[0x1E69673E0];
    identifier = [self identifier];
    v8 = [BRFileProviderHelper br_getProviderDomainIDForDomainIdentifier:identifier dataSeparated:v3 & 1];
    v21 = 0;
    v9 = [v6 providerDomainWithID:v8 cachePolicy:0 error:&v21];
    v10 = v21;

    storageURLs = [v9 storageURLs];
    v12 = [storageURLs count];

    if (v12)
    {
      break;
    }

    if (v10)
    {
      v13 = brc_bread_crumbs("[NSFileProviderDomain(BRAdditions) br_volumeUUID]", 34);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = v20.n128_u32[0];
        selfCopy = self;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v13;
        _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Failed getting provider domain: %@%@", buf, 0x20u);
      }
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      fp_volumeUUID = 0;
      goto LABEL_10;
    }
  }

  storageURLs2 = [v9 storageURLs];
  v16 = [storageURLs2 objectAtIndexedSubscript:0];

  fp_volumeUUID = [v16 fp_volumeUUID];

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];

  return fp_volumeUUID;
}

@end