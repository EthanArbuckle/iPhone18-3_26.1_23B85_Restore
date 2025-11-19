@interface BRRemoteUserDefaults
+ (id)defaultExcludedExtensionsWorthPreserving;
+ (id)defaultExcludedFilenamesWorthPreserving;
+ (id)defaultExcludedFilenamesWorthWarningAtLogout;
+ (id)sharedDefaults;
- (BRRemoteUserDefaults)init;
- (NSSet)excludedExtensionsWorthPreserving;
- (NSSet)excludedFilenamesWorthWarningAtLogout;
- (double)collectionGathererPacerMinFireInterval;
- (id)_init;
- (int64_t)minFileSizeForThumbnailTransfer;
- (void)init;
@end

@implementation BRRemoteUserDefaults

+ (id)sharedDefaults
{
  if (sharedDefaults_onceToken != -1)
  {
    +[BRRemoteUserDefaults sharedDefaults];
  }

  v3 = g_remoteDefaults;

  return v3;
}

uint64_t __38__BRRemoteUserDefaults_sharedDefaults__block_invoke()
{
  g_remoteDefaults = [[BRRemoteUserDefaults alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = BRRemoteUserDefaults;
  v2 = [(BRRemoteUserDefaults *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    userDictionaryCache = v2->_userDictionaryCache;
    v2->_userDictionaryCache = v3;
  }

  return v2;
}

- (BRRemoteUserDefaults)init
{
  v3 = brc_bread_crumbs("[BRRemoteUserDefaults init]", 40);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BRRemoteUserDefaults *)v3 init];
  }

  return 0;
}

- (NSSet)excludedFilenamesWorthWarningAtLogout
{
  v3 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"excluded-filenames-worth-warning-at-logout"];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = +[BRDaemonConnection defaultConnection];
  v6 = [v5 newSyncProxy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__BRRemoteUserDefaults_excludedFilenamesWorthWarningAtLogout__block_invoke;
  v11[3] = &unk_1E7A14808;
  v7 = v6;
  v12 = v7;
  [v7 lookupExcludedFilenamesForLogoutWithReply:v11];
  v8 = [v7 result];
  [(NSMutableDictionary *)self->_userDictionaryCache setObject:v8 forKeyedSubscript:@"excluded-filenames-worth-warning-at-logout"];

  v9 = [v7 error];

  if (!v9)
  {

LABEL_2:
    v4 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"excluded-filenames-worth-warning-at-logout"];
    goto LABEL_5;
  }

  v4 = +[BRRemoteUserDefaults defaultExcludedFilenamesWorthWarningAtLogout];

LABEL_5:

  return v4;
}

- (NSSet)excludedExtensionsWorthPreserving
{
  v3 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"excluded-extensions-worth-preserving"];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = +[BRDaemonConnection defaultConnection];
  v6 = [v5 newSyncProxy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__BRRemoteUserDefaults_excludedExtensionsWorthPreserving__block_invoke;
  v11[3] = &unk_1E7A14808;
  v7 = v6;
  v12 = v7;
  [v7 lookupExcludedExtensionsForLogoutWithReply:v11];
  v8 = [v7 result];
  [(NSMutableDictionary *)self->_userDictionaryCache setObject:v8 forKeyedSubscript:@"excluded-extensions-worth-preserving"];

  v9 = [v7 error];

  if (!v9)
  {

LABEL_2:
    v4 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"excluded-extensions-worth-preserving"];
    goto LABEL_5;
  }

  v4 = +[BRRemoteUserDefaults defaultExcludedExtensionsWorthPreserving];

LABEL_5:

  return v4;
}

- (int64_t)minFileSizeForThumbnailTransfer
{
  v3 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"min-file-size-for-thumb-transfer"];

  if (v3)
  {
    goto LABEL_2;
  }

  v6 = +[BRDaemonConnection defaultConnection];
  v7 = [v6 newSyncProxy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__BRRemoteUserDefaults_minFileSizeForThumbnailTransfer__block_invoke;
  v12[3] = &unk_1E7A15D60;
  v13 = v7;
  v8 = v7;
  [v8 lookupMinFileSizeForThumbnailTransferWithReply:v12];
  v9 = [v8 result];
  [(NSMutableDictionary *)self->_userDictionaryCache setObject:v9 forKeyedSubscript:@"min-file-size-for-thumb-transfer"];

  v10 = [v8 error];

  if (v10)
  {
    return 0x100000;
  }

LABEL_2:
  v4 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"min-file-size-for-thumb-transfer"];
  v5 = [v4 longLongValue];

  return v5;
}

- (double)collectionGathererPacerMinFireInterval
{
  v3 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"collection-gatherer-pacer-min-fire-interval"];

  if (v3)
  {
    goto LABEL_2;
  }

  v6 = +[BRDaemonConnection defaultConnection];
  v7 = [v6 newSyncProxy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__BRRemoteUserDefaults_collectionGathererPacerMinFireInterval__block_invoke;
  v12[3] = &unk_1E7A15D60;
  v13 = v7;
  v8 = v7;
  [v8 lookupCollectionGathererPacerMinFireInterval:v12];
  v9 = [v8 result];
  [(NSMutableDictionary *)self->_userDictionaryCache setObject:v9 forKeyedSubscript:@"collection-gatherer-pacer-min-fire-interval"];

  v10 = [v8 error];

  v5 = 1.0;
  if (!v10)
  {
LABEL_2:
    v4 = [(NSMutableDictionary *)self->_userDictionaryCache objectForKeyedSubscript:@"collection-gatherer-pacer-min-fire-interval"];
    v5 = [v4 longLongValue];
  }

  return v5;
}

+ (id)defaultExcludedFilenamesWorthWarningAtLogout
{
  v2 = [MEMORY[0x1E695DFA8] set];
  [v2 addObject:@"Dropbox"];
  [v2 addObject:@"OneDrive"];
  [v2 addObject:@"IDrive-Sync"];

  return v2;
}

+ (id)defaultExcludedFilenamesWorthPreserving
{
  v2 = [a1 defaultExcludedFilenamesWorthWarningAtLogout];
  v3 = [v2 mutableCopy];

  [v3 addObject:@"Microsoft User Data"];
  [v3 addObject:@"iPhoto Library"];

  return v3;
}

+ (id)defaultExcludedExtensionsWorthPreserving
{
  v2 = [MEMORY[0x1E695DFA8] set];
  [v2 addObject:@"photoslibrary"];
  [v2 addObject:@"photolibrary"];
  [v2 addObject:@"aplibrary"];
  [v2 addObject:@"migratedaplibrary"];
  [v2 addObject:@"migratedphotolibrary"];
  [v2 addObject:@"migratedaperturelibrary"];

  return v2;
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: use sharedDefaults%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end