@interface NPKManifestForURL
@end

@implementation NPKManifestForURL

void ___NPKManifestForURL_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v25 = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = objc_opt_class();
        v13 = v28;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: manifest.json for unique ID %@ should map filenames to SHA1 hash strings. Found key of class %@", &v25, 0x16u);
      }
    }

    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    *a4 = 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = objc_opt_class();
        v25 = 138412546;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        v21 = v20;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: manifest.json for unique ID %@ should map filenames to SHA1 hash strings. Found object of class %@", &v25, 0x16u);
      }
    }

    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;

    *a4 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end