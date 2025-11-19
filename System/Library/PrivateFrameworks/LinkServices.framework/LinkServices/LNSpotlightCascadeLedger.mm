@interface LNSpotlightCascadeLedger
+ (id)_loadLedgerFileInDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_isDeleted;
- (BOOL)deleteLedger:(id *)a3;
- (BOOL)resetLedger:(id *)a3;
- (LNSpotlightCascadeLedger)initWithDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)description;
- (unint64_t)version;
- (unsigned)_options;
@end

@implementation LNSpotlightCascadeLedger

- (BOOL)deleteLedger:(id *)a3
{
  v4 = [(BMFileBackedDictionary *)self->_dictionary clear:a3];
  if (v4)
  {
    self->_deleted = 1;
  }

  return v4;
}

- (BOOL)_isDeleted
{
  v10 = *MEMORY[0x1E69E9840];
  deleted = self->_deleted;
  if (deleted)
  {
    v4 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v8 = 138412290;
      v9 = bundleIdentifier;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_FAULT, "API violation - Attempting to write to a deleted ledger file for bundle: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return deleted;
}

- (BOOL)resetLedger:(id *)a3
{
  v5 = [(BMFileBackedDictionary *)self->_dictionary clear:?];
  if (v5)
  {
    v6 = [objc_opt_class() _loadLedgerFileInDirectory:self->_directory bundleIdentifier:self->_bundleIdentifier error:a3];
    dictionary = self->_dictionary;
    self->_dictionary = v6;

    LOBYTE(v5) = self->_dictionary != 0;
  }

  return v5;
}

- (unint64_t)version
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Version"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unsigned)_options
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Options"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = LNSpotlightCascadeLedger;
  v4 = [(LNSpotlightCascadeLedger *)&v8 description];
  bundleIdentifier = self->_bundleIdentifier;
  v6 = [v3 stringWithFormat:@"%@ %@ %@", v4, bundleIdentifier, self->_dictionary];

  return v6;
}

- (LNSpotlightCascadeLedger)initWithDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = LNSpotlightCascadeLedger;
  v11 = [(LNSpotlightCascadeLedger *)&v16 init];
  if (v11)
  {
    v12 = [objc_opt_class() _loadLedgerFileInDirectory:v9 bundleIdentifier:v10 error:a5];
    dictionary = v11->_dictionary;
    v11->_dictionary = v12;

    if (!v11->_dictionary)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v11->_directory, a3);
    objc_storeStrong(&v11->_bundleIdentifier, a4);
  }

  v14 = v11;
LABEL_6:

  return v14;
}

+ (id)_loadLedgerFileInDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = +[LNAvailabilityChecker currentBuildVersion];
  v29[0] = @"Build";
  v29[1] = @"Options";
  v30[0] = v9;
  v30[1] = &unk_1F0BD7198;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v11 = [objc_alloc(MEMORY[0x1E698E9B0]) initWithFilename:v7 protectionClass:4 directory:v8 readOnly:0 create:1 initialDictionary:v10 error:a5];

  if (!v11)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v12 = [v11 objectForKey:@"Build"];
  if (([v9 isEqual:v12] & 1) == 0)
  {
    v13 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_DEBUG, "Ledger file for bundle: %@ was written on build (%@) different from current (%@)", buf, 0x20u);
    }

    v22[0] = v9;
    v22[1] = &unk_1F0BD7198;
    v22[2] = &unk_1F0BD71B0;
    v22[3] = &unk_1F0BD71B0;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    v21[0] = @"Build";
    v21[1] = @"Options";
    v21[2] = @"Full";
    v21[3] = @"Incremental";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    v16 = [v11 writeUpdatedObjects:v14 forKeys:v15 error:a5];

    if (!v16)
    {
      v18 = 0;
      goto LABEL_12;
    }

    v17 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_DEBUG, "Reset ledger file for bundle: %@ on current build (%@): %@", buf, 0x20u);
    }
  }

  v18 = v11;
LABEL_12:

LABEL_13:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end