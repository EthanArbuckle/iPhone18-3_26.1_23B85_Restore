@interface ISBundleIdentifierIcon
- (ISBundleIdentifierIcon)initWithBundleIdentifier:(id)a3;
- (ISBundleIdentifierIcon)initWithCoder:(id)a3;
- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISBundleIdentifierIcon

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  bundleIdentifier = self->_bundleIdentifier;
  v7 = [(ISConcreteIcon *)self digest];
  v8 = [v3 initWithFormat:@"<%s %p>BundleID: %@ digest: %@", Name, self, bundleIdentifier, v7];

  return v8;
}

- (ISBundleIdentifierIcon)initWithBundleIdentifier:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 stringByAppendingPathComponent:v5];

  v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
  v10 = 0x1E696A000uLL;
  if (!v9)
  {
    v11 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 bundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v5), v12, (v13))
    {
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:v5 error:0];
    if (!v9)
    {
      v38 = _ISDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v5;
        _os_log_impl(&dword_1A77B8000, v38, OS_LOG_TYPE_DEFAULT, "No record for %@", buf, 0xCu);
      }

      v11 = 0;
      v27 = 0;
      goto LABEL_25;
    }
  }

  v11 = v9;
LABEL_9:
  if ([v11 isPlaceholder])
  {
    v14 = [v11 URL];
    v15 = [v14 __is__contentModifiedDate];

    v16 = MEMORY[0x1E696AEC0];
    [v15 timeIntervalSinceReferenceDate];
    v18 = [v16 stringWithFormat:@"%f", v17];
    v19 = [v8 stringByAppendingPathComponent:v18];

    v20 = _ISDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(ISBundleIdentifierIcon *)v19 initWithBundleIdentifier:v20, v21, v22, v23, v24, v25, v26];
    }

    v27 = 0;
  }

  else
  {
    v27 = [v11 persistentIdentifier];

    if (!v27)
    {
      goto LABEL_18;
    }

    v27 = [v11 exactBundleVersion];
    v28 = MEMORY[0x1E696AFB0];
    v29 = [v11 persistentIdentifier];
    v30 = [v28 _IF_UUIDWithData:v29];
    v31 = [v30 UUIDString];
    v19 = [v5 stringByAppendingPathComponent:v31];

    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(ISBundleIdentifierIcon *)v19 initWithBundleIdentifier:v15, v32, v33, v34, v35, v36, v37];
    }

    v10 = 0x1E696A000;
  }

  v8 = v19;
LABEL_18:
  v38 = [v11 alternateIconName];
  if (!v38)
  {
LABEL_25:
    v39 = v8;
    goto LABEL_26;
  }

  v39 = [v5 stringByAppendingPathComponent:v38];

  v40 = _ISDefaultLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [(ISBundleIdentifierIcon *)v39 initWithBundleIdentifier:v40, v41, v42, v43, v44, v45, v46];
  }

LABEL_26:
  v47 = [*(v10 + 4016) _IF_UUIDWithString:v39];
  v52.receiver = self;
  v52.super_class = ISBundleIdentifierIcon;
  v48 = [(ISConcreteIcon *)&v52 initWithDigest:v47];
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(&v48->_bundleIdentifier, a3);
    objc_storeStrong(&v49->_bundleVersion, v27);
  }

  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

- (ISBundleIdentifierIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ISBundleIdentifierIcon;
  v5 = [(ISConcreteIcon *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ISBundleIdentifierIcon;
  v4 = a3;
  [(ISConcreteIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
}

- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_bundleIdentifier allowPlaceholder:1 error:0];
  v6 = +[ISDefaults sharedInstance];
  v7 = [v6 enableAppIconOverides];

  if (!v7 || (+[ISCustomIconManager sharedInstance](ISCustomIconManager, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), [v8 overrideResourceForBundleIdentifier:self->_bundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:self->_bundleIdentifier error:0];
      v12 = 0;
      if ([v5 _IS_isMessagesExtension])
      {
        v12 = objc_opt_new();
      }

      if (([v5 _is_canProvideIconResources] & 1) == 0)
      {
        v13 = [v5 containingBundleRecord];

        v5 = v13;
      }

      if (!v5)
      {
        v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:self->_bundleIdentifier error:0];
        if (!v14)
        {
          v23 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*MEMORY[0x1E6963738]];
          v11 = v23;
          if (v23)
          {
            v24 = v23;
          }

          v5 = 0;
LABEL_14:
          v15 = [[ISRecordResourceProvider alloc] initWithRecord:v11 options:0];
          if (v15)
          {
            v10 = v15;
            if (!v3)
            {
              goto LABEL_25;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v11 containingBundleRecord];

              v10 = [[ISRecordResourceProvider alloc] initWithRecord:v16 options:0];
              v11 = v16;
              if (!v3)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v10 = 0;
              if (!v3)
              {
LABEL_25:
                v20 = [(ISResourceProvider *)v10 suggestedRecipe];
                if (v20)
                {
                  v21 = [(ISResourceProvider *)v10 suggestedRecipe];
                  [(ISResourceProvider *)v10 setSuggestedRecipe:v21];
                }

                else
                {
                  [(ISResourceProvider *)v10 setSuggestedRecipe:v12];
                }

                [(ISResourceProvider *)v10 setResourceType:1];
                goto LABEL_29;
              }
            }
          }

          v17 = [(ISRecordResourceProvider *)v10 iconResource];

          if (!v17)
          {
            v18 = _ISDefaultLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(ISBundleIdentifierIcon *)&self->_bundleIdentifier _makeResourceProviderAllowIconResourceFallback:v10, v18];
            }

            v19 = +[ISResourceProvider defaultAppIconResourceProvider];

            [(ISResourceProvider *)v19 setPlaceholder:1];
            v10 = v19;
          }

          goto LABEL_25;
        }

        v5 = v14;
      }
    }

    v5 = v5;
    v11 = v5;
    goto LABEL_14;
  }

  v10 = [[ISResourceProvider alloc] initWithResource:v9 templateResource:0];

  v11 = 0;
LABEL_29:

  return v10;
}

- (void)initWithBundleIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, a2, a3, "Suffixed bundle ID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithBundleIdentifier:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, a2, a3, "Placeholder bundle suffixed bundle ID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithBundleIdentifier:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, a2, a3, "Custom icon suffixed bundle ID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_makeResourceProviderAllowIconResourceFallback:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Failed to find icon resources for bundle identifier %@ - %@. Creating placeholder provider", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end