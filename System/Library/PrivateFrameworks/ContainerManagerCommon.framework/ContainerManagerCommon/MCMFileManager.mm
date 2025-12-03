@interface MCMFileManager
+ (id)defaultManager;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)diskUsageForURL:(id)l;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)fastDiskUsageForURL:(id)l;
- (BOOL)_CreateSystemUserACEInACL:(_acl *)l withPermissions:(int)permissions andFlags:(int)flags withError:(id *)error;
- (BOOL)_copyItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_enumeratePOSIX1eACLEntriesAtURL:(id)l error:(id *)error usingBlock:(id)block;
- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_traverseDirectory:(id)directory error:(id *)error withBlock:(id)block;
- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth;
- (BOOL)_withEveryoneDenyDeleteACLDoBlock:(id)block;
- (BOOL)checkFileSystemAtURL:(id)l isCaseSensitive:(BOOL *)sensitive canAtomicSwap:(BOOL *)swap error:(id *)error;
- (BOOL)checkFileSystemAtURL:(id)l supportsPerFileKeys:(BOOL *)keys error:(id *)error;
- (BOOL)compareVolumeForURL:(id)l versusURL:(id)rL isSameVolume:(BOOL *)volume error:(id *)error;
- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)copyItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)dataProtectionClassOfItemAtURL:(id)l dataProtectionClass:(int *)class error:(id *)error;
- (BOOL)enableFastDiskUsageForURL:(id)l error:(id *)error;
- (BOOL)fixUserPermissionsAtURL:(id)l limitToTopLevelURL:(id)rL error:(id *)error;
- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists error:(id *)error;
- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists isDirectory:(BOOL *)directory error:(id *)error;
- (BOOL)itemAtURL:(id)l followSymlinks:(BOOL)symlinks exists:(BOOL *)exists isDirectory:(BOOL *)directory fsNode:(id *)node error:(id *)error;
- (BOOL)itemDoesNotExistAtURL:(id)l;
- (BOOL)itemExistsAtURL:(id)l;
- (BOOL)itemExistsAtURL:(id)l isDirectory:(BOOL *)directory;
- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)moveItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)quarantineNeededForDirectoryURL:(id)l;
- (BOOL)quarantineURL:(id)l identifier:(id)identifier error:(id *)error;
- (BOOL)removeExclusionFromBackupFromURL:(id)l error:(id *)error;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (BOOL)repairPermissionsAtURL:(id)l uid:(unsigned int)uid gid:(unsigned int)gid options:(unint64_t)options error:(id *)error;
- (BOOL)replaceItemAtDestinationURL:(id)l withSourceURL:(id)rL swapped:(BOOL *)swapped error:(id *)error;
- (BOOL)setDataProtectionAtURL:(id)l toDataProtectionClass:(int)class directoriesOnly:(BOOL)only recursive:(BOOL)recursive error:(id *)error;
- (BOOL)setTopLevelSystemContainerACLAtURL:(id)l error:(id *)error;
- (BOOL)standardizeACLsAtURL:(id)l isSystemContainer:(BOOL)container error:(id *)error;
- (BOOL)standardizeACLsForSystemContainerAtURL:(id)l error:(id *)error;
- (BOOL)standardizeAllSystemContainerACLsAtURL:(id)l error:(id *)error;
- (BOOL)standardizeOwnershipAtURL:(id)l toPOSIXUser:(id)user error:(id *)error;
- (BOOL)stripACLFromURL:(id)l error:(id *)error;
- (BOOL)symbolicallyLinkURL:(id)l toSymlinkTarget:(id)target error:(id *)error;
- (BOOL)writeData:(id)data toURL:(id)l options:(unint64_t)options mode:(unsigned __int16)mode error:(id *)error;
- (_acl)_CopySystemContainerACLWithNumACEs:(int)es isDir:(BOOL)dir inheritOnly:(BOOL)only withError:(id *)error;
- (_acl)_CopyTopLevelSystemContainerACLWithError:(id *)error;
- (_filesec)_denyDeleteACLFilesecWithACLText:(char *)text;
- (_filesec)_removeACLFilesec;
- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components;
- (id)_realPathWhatExistsInPath:(id)path;
- (id)copyDescriptionOfURL:(id)l;
- (id)createTemporaryDirectoryInDirectoryURL:(id)l error:(id *)error;
- (id)createTemporaryDirectoryInDirectoryURL:(id)l withNamePrefix:(id)prefix error:(id *)error;
- (id)fsMinimallySanitizedStringFromString:(id)string;
- (id)fsNodeOfURL:(id)l followSymlinks:(BOOL)symlinks error:(id *)error;
- (id)fsSanitizedStringFromString:(id)string allowSpaces:(BOOL)spaces;
- (id)mountPointForURL:(id)l error:(id *)error;
- (id)readDataFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)readDataFromURL:(id)l options:(unint64_t)options fsNode:(id *)node error:(id *)error;
- (id)realPathForURL:(id)l ifChildOfURL:(id)rL;
- (id)targetOfSymbolicLinkAtURL:(id)l error:(id *)error;
- (id)urlsForItemsInDirectoryAtURL:(id)l error:(id *)error;
- (unint64_t)dataWritingOptionsForFileAtURL:(id)l;
- (void)printDirectoryStructureAtURL:(id)l;
@end

@implementation MCMFileManager

+ (id)defaultManager
{
  v5 = *MEMORY[0x1E69E9840];
  if (containermanager_copy_default_file_manager_onceToken != -1)
  {
    dispatch_once(&containermanager_copy_default_file_manager_onceToken, &__block_literal_global_1209);
  }

  v2 = gMCMDefaultFileManager;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id __69__MCMFileManager__fixOwnershipOnFD_FTSENT_stat_statfs_uid_gid_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchown(uid=%u, gid=%u) failed on path [%s]", *(a1 + 40), *(a1 + 44), *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixOwnershipOnFD:FTSENT:stat:statfs:uid:gid:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76528;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __50__MCMFileManager__fixFlagsOnFD_FTSENT_stat_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchflags failed on open fd for path [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixFlagsOnFD:FTSENT:stat:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76510;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __54__MCMFileManager__fixPOSIXBitsOnFD_FTSENT_stat_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmod (un-setuid) failed on path [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixPOSIXBitsOnFD:FTSENT:stat:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A764F8;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmod failed on directory [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixPOSIXPermsOnFD:FTSENT:stat:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A764C8;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke_665(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmod failed on file [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixPOSIXPermsOnFD:FTSENT:stat:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A764E0;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_630(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstatx_np failed on path [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76450;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_636(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"filesec_get_property(..., FILESEC_ACL, ...) failed on path [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76468;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_642(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstat(...) failed on [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76480;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_648(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmodx_np() failed when removing ACLs on path [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76498;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_654(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmodx_np() failed when setting default ACL on path [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A764B0;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_withEveryoneDenyDeleteACLDoBlock:(id)block
{
  identifier[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  strcpy(identifier, "everyone");
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  memset(uu, 0, sizeof(uu));
  v4 = mbr_identifier_to_uuid(5, identifier, 9uLL, uu);
  v5 = MEMORY[0x1E69E9988];
  if (v4)
  {
    v6 = v4;
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v6;
      v8 = "mbr_identifier_to_uuid(group, everyone) failed (%d)";
LABEL_19:
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, v8, buf, 8u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v16 = (*(*MEMORY[0x1E69E9988] + 80))(1);
  if (!v16 || (*(*v5 + 16))(&v16, &v15) || (*(*v5 + 64))(v15, &v14) || (*(*v5 + 56))(v15, &v13) || (*(*v5 + 120))(v15, 2) || (*(*v5 + 112))(v15, uu) || (*(*v5 + 8))(v14, 16) || (*(*v5 + 104))(v15, v14) || (*(*v5 + 96))(v15, v13))
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      *buf = 67109120;
      v18 = v12;
      v8 = "acl creation failed (%{darwin.errno}d)";
      goto LABEL_19;
    }

LABEL_14:

    v9 = 0;
    goto LABEL_15;
  }

  v9 = blockCopy[2](blockCopy, v16);
LABEL_15:
  if (v16)
  {
    (*(*v5 + 32))();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (_filesec)_denyDeleteACLFilesecWithACLText:(char *)text
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = (*(*MEMORY[0x1E69E9988] + 288))(self, a2);
  v6 = v5;
  if (text && v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MCMFileManager__denyDeleteACLFilesecWithACLText___block_invoke;
    v9[3] = &unk_1E86AFDA0;
    v9[4] = &v10;
    v9[5] = v5;
    [(MCMFileManager *)self _withEveryoneDenyDeleteACLDoBlock:v9];
    *text = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL __51__MCMFileManager__denyDeleteACLFilesecWithACLText___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = MEMORY[0x1E69E9988];
  *(*(*(a1 + 32) + 8) + 24) = (*(*MEMORY[0x1E69E9988] + 128))(a2, 0);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      *buf = 67240192;
      v13 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "acl_to_text() failed (%{darwin.errno, public}d)", buf, 8u);
    }
  }

  v5 = (*(*v3 + 296))(*(a1 + 40), 5, &v11);
  if (v5)
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67240192;
      v13 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "filesec_set_property() for default ACL failed (%{darwin.errno, public}d)", buf, 8u);
    }
  }

  result = v5 == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (_filesec)_removeACLFilesec
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9988];
  v3 = (*(*MEMORY[0x1E69E9988] + 288))(self, a2);
  v4 = v3;
  if (v3)
  {
    (*(*v2 + 296))(v3, 5, 1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)quarantineNeededForDirectoryURL:(id)l
{
  v8 = *MEMORY[0x1E69E9840];
  path = [l path];
  pathExtension = [path pathExtension];
  v5 = [&unk_1F5A76FC0 containsObject:pathExtension];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)quarantineURL:(id)l identifier:(id)identifier error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v9 = MEMORY[0x1E69E9998];
  v10 = (*(*MEMORY[0x1E69E9998] + 8))();
  v11 = (*(*v9 + 48))(v10, fileSystemRepresentation);
  if (v11)
  {
    if (v11 != -1)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke;
      v31[3] = &__block_descriptor_44_e14___NSError_8__0l;
      v31[4] = fileSystemRepresentation;
      v32 = v11;
      v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke(v31);
      goto LABEL_12;
    }

    (*(*v9 + 40))(v10);
    (*(*v9 + 32))(v10, 0);
  }

  if (identifierCopy)
  {
    v12 = (*(*v9 + 64))(v10, [identifierCopy UTF8String]);
    if (v12)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_589;
      v29[3] = &__block_descriptor_44_e14___NSError_8__0l;
      v29[4] = fileSystemRepresentation;
      v30 = v12;
      v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_589(v29);
      goto LABEL_12;
    }
  }

  v14 = (*(*v9 + 24))(v10);
  v15 = (*(*v9 + 32))(v10, v14 | 0x86u);
  if (v15)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_595;
    v27[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v27[4] = fileSystemRepresentation;
    v28 = v15;
    v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_595(v27);
    goto LABEL_12;
  }

  v16 = time(0);
  (*(*v9 + 80))(v10, v16);
  v17 = (*(*v9 + 56))(v10, fileSystemRepresentation);
  if (v17)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_601;
    v25[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v25[4] = fileSystemRepresentation;
    v26 = v17;
    v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_601(v25);
LABEL_12:
    v18 = v13;
    v19 = 0;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v24 = container_log_handle_for_category();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v34 = fileSystemRepresentation;
    _os_log_debug_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_DEBUG, "Quarantined [%s]", buf, 0xCu);
  }

  v18 = 0;
  v19 = 1;
  if (v10)
  {
LABEL_13:
    (*(*v9 + 16))(v10);
  }

LABEL_14:
  if (error)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v18;
    *error = v18;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [v2 initWithFormat:@"Could not init quarantine structure from path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A763D8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_589(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [v2 initWithFormat:@"Could not set quarantine identifier for path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A763F0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_595(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [v2 initWithFormat:@"Could not set quarantine flags for path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76408;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_601(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [v2 initWithFormat:@"Could not apply quarantine to path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76420;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)setDataProtectionAtURL:(id)l toDataProtectionClass:(int)class directoriesOnly:(BOOL)only recursive:(BOOL)recursive error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1135;
  v32 = __Block_byref_object_dispose__1136;
  v33 = 0;
  v27 = 0;
  v11 = lCopy;
  [lCopy fileSystemRepresentation];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke;
  v23 = &unk_1E86AFD78;
  onlyCopy = only;
  classCopy = class;
  v24 = &v28;
  if ((container_traverse_directory() & 1) == 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_578;
    v18[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v19 = v27;
    v12 = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_578(v18);
    v13 = v29[5];
    v29[5] = v12;
  }

  v14 = v29[5];
  if (error && v14)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = v14 == 0;
  _Block_object_dispose(&v28, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  is_directory = container_traverse_node_is_directory();
  if (*(a1 + 44) == 1 && is_directory == 0)
  {
    goto LABEL_26;
  }

  v4 = is_directory;
  v5 = *(a1 + 40);
  optional_dp_class = container_traverse_node_get_optional_dp_class();
  name = container_traverse_node_get_name();
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  if (!v5)
  {
    v5 = v8;
  }

  if (v4)
  {
    optional_parent_fd = container_traverse_node_get_optional_parent_fd();
  }

  else
  {
    if ((optional_dp_class | v5) > 7 || v5 - 5 < 2 || ((v12 = MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[v5], optional_dp_class - 5 >= 2) ? (v13 = MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[optional_dp_class]) : (v13 = 2), v12 < v13))
    {
      container_traverse_node_get_optional_parent_fd();
      goto LABEL_26;
    }

    optional_parent_fd = container_traverse_node_get_optional_parent_fd();
    if (v12 <= v13)
    {
      goto LABEL_26;
    }
  }

  if ((optional_parent_fd & 0x80000000) == 0)
  {
    v25 = 0;
    v24 = xmmword_1DF3BE508;
    v23 = v5;
    v10 = *MEMORY[0x1E69E9988];
    if (name)
    {
      v11 = (*(v10 + 656))();
    }

    else
    {
      v11 = (*(v10 + 320))();
    }

LABEL_25:
    if (v11 == -1)
    {
      v17 = *__error();
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_2;
      v21[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v22 = v17;
      v18 = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_2(v21);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      result = 0;
      goto LABEL_27;
    }

LABEL_26:
    result = 1;
LABEL_27:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  path = container_traverse_node_get_path();
  v24 = xmmword_1DF3BE508;
  v25 = 0;
  v23 = v5;
  if (path)
  {
    v11 = (*(*MEMORY[0x1E69E9988] + 648))(path, &v24, &v23, 4, 2048);
    goto LABEL_25;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

id __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_578(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"container_traverse_directory() failed"];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager setDataProtectionAtURL:toDataProtectionClass:directoriesOnly:recursive:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A763C0;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 32) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_2(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MCMSetDataProtectionClass() failed"];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager setDataProtectionAtURL:toDataProtectionClass:directoriesOnly:recursive:error:]_block_invoke_2"];
  v10[0] = v3;
  v10[1] = &unk_1F5A763A8;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 32) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)repairPermissionsAtURL:(id)l uid:(unsigned int)uid gid:(unsigned int)gid options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v80[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  _removeACLFilesec = 0;
  v80[0] = [lCopy fileSystemRepresentation];
  v80[1] = 0;
  __s = 0;
  if (optionsCopy)
  {
    _removeACLFilesec = [(MCMFileManager *)self _removeACLFilesec];
    if (!_removeACLFilesec)
    {
      v48 = 0;
      v18 = 0;
      goto LABEL_60;
    }
  }

  v14 = MEMORY[0x1E69E9988];
  if ((optionsCopy & 2) != 0)
  {
    v15 = [(MCMFileManager *)self _denyDeleteACLFilesecWithACLText:&__s];
    if (!v15)
    {
      v18 = 0;
      v48 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v15 = 0;
  }

  selfCopy = self;
  v61 = v15;
  v16 = (*(*v14 + 384))(v80, 84, 0);
  if (!v16)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke;
    v70[3] = &unk_1E86B0B98;
    v49 = lCopy;
    v71 = v49;
    v18 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke(v70);
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      errorCopy = error;
      v55 = *__error();
      path = [v49 path];
      *v75 = 67240450;
      v76 = v55;
      error = errorCopy;
      v77 = 2112;
      v78 = path;
      _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "fts_open() failed (%{darwin.errno, public}d) on [%@]", v75, 0x12u);
    }

    v48 = 0;
    goto LABEL_56;
  }

  v17 = v16;
  uidCopy = uid;
  gidCopy = gid;
  v18 = 0;
  do
  {
    v19 = (*(*v14 + 392))(v17);
    if (!v19)
    {
      goto LABEL_48;
    }

    v20 = v19;
    v21 = (*(*v14 + 512))(*(v19 + 48), 0x200000);
    if ((v21 & 0x80000000) != 0)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_553;
      v69[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v69[4] = v20;
      v23 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_553(v69);

      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = *__error();
        v38 = *(v20 + 48);
        *v75 = 67240450;
        v76 = v37;
        v77 = 2080;
        v78 = v38;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "open() failed (%{darwin.errno, public}d) on path [%s]", v75, 0x12u);
      }

      goto LABEL_25;
    }

    v22 = v21;
    memset(v79, 0, sizeof(v79));
    if ((*(*v14 + 336))())
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_559;
      v68[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v68[4] = v20;
      v23 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_559(v68);

      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *__error();
        v26 = *(v20 + 48);
        *v75 = 67240450;
        v76 = v25;
        v77 = 2080;
        v78 = v26;
        v27 = v75;
        v28 = v24;
        v29 = "fstat failed (%{darwin.errno, public}d) on open fd for path [%s]";
LABEL_46:
        _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, v29, v27, 0x12u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    bzero(v75, 0x878uLL);
    if ((*(*v14 + 352))(v22, v75))
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_565;
      v67[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v67[4] = v20;
      v23 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_565(v67);

      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v45 = *__error();
        v46 = *(v20 + 48);
        *buf = 67240450;
        *v74 = v45;
        *&v74[4] = 2080;
        *&v74[6] = v46;
        v27 = buf;
        v28 = v24;
        v29 = "fstatfs failed (%{darwin.errno, public}d) on open fd for path [%s]";
        goto LABEL_46;
      }

LABEL_18:

      v31 = 0;
      goto LABEL_19;
    }

    errorCopy2 = error;
    v66 = v18;
    v34 = [(MCMFileManager *)selfCopy _fixFlagsOnFD:v22 FTSENT:v20 stat:v79 error:&v66];
    v23 = v66;

    if (!v34)
    {
      goto LABEL_42;
    }

    if ((WORD2(v79[0]) & 0xF000) != 0x4000 && WORD3(v79[0]) >= 2u)
    {
      v35 = container_log_handle_for_category();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v47 = *(v20 + 48);
        *buf = 136315394;
        *v74 = v47;
        *&v74[8] = 1024;
        *&v74[10] = WORD3(v79[0]);
        _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "path [%s] is hardlinked [nlink: %d], skipping", buf, 0x12u);
      }

      v31 = 1;
      goto LABEL_43;
    }

    if ((optionsCopy & 3) != 0)
    {
      v39 = *(v20 + 48);
      v65 = v23;
      v40 = [(MCMFileManager *)selfCopy _fixACLOnFD:v22 removeACLFilesec:_removeACLFilesec denyDeleteFilesec:v61 denyDeleteText:__s path:v39 error:&v65];
      v41 = v65;

      if (!v40)
      {
        goto LABEL_44;
      }

      v23 = v41;
    }

    v42 = v23;
    v64 = v23;
    v43 = [(MCMFileManager *)selfCopy _fixPOSIXPermsOnFD:v22 FTSENT:v20 stat:v79 error:&v64];
    v23 = v64;

    if (v43)
    {
      v63 = v23;
      v44 = [(MCMFileManager *)selfCopy _fixOwnershipOnFD:v22 FTSENT:v20 stat:v79 statfs:v75 uid:uidCopy gid:gidCopy error:&v63];
      v41 = v63;

      if (!v44)
      {
LABEL_44:
        v31 = 0;
        v23 = v41;
        goto LABEL_43;
      }

      v62 = v41;
      v31 = [(MCMFileManager *)selfCopy _fixPOSIXBitsOnFD:v22 FTSENT:v20 stat:v79 error:&v62];
      v23 = v62;
    }

    else
    {
LABEL_42:
      v31 = 0;
    }

LABEL_43:
    error = errorCopy2;
LABEL_19:
    if ((*(*v14 + 152))(v22))
    {
      v32 = container_log_handle_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v36 = *__error();
        *buf = 67109120;
        *v74 = v36;
        _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "close() failed (%{darwin.errno}d) on file descriptor.", buf, 8u);
      }

      if (v31)
      {
LABEL_23:
        v33 = 0;
        goto LABEL_26;
      }
    }

    else if (v31)
    {
      goto LABEL_23;
    }

LABEL_25:
    v33 = 2;
LABEL_26:
    v18 = v23;
    if ((optionsCopy & 0x100) == 0)
    {
      v33 = 4;
    }
  }

  while (!v33);
  if (v33 == 4)
  {
LABEL_48:
    v48 = 1;
    goto LABEL_55;
  }

  v48 = 0;
LABEL_55:
  (*(*v14 + 376))(v17);
LABEL_56:
  if (v61)
  {
    (*(*v14 + 272))();
  }

LABEL_58:
  if (_removeACLFilesec)
  {
    (*(*v14 + 272))(_removeACLFilesec);
  }

LABEL_60:
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (error)
  {
    v51 = v18;
    *error = v18;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v48;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"fts_open() failed on [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76348;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_553(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"open() failed on path [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76360;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_559(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstat() failed on path [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76378;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_565(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstatfs() failed on path [%s]", *(*(a1 + 32) + 48)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76390;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fsMinimallySanitizedStringFromString:(id)string
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [string stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F5A5B2B8];
  if (([v3 isEqualToString:@".."] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"."))
  {

    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)fsSanitizedStringFromString:(id)string allowSpaces:(BOOL)spaces
{
  spacesCopy = spaces;
  v15 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (fsSanitizedStringFromString_allowSpaces__onceToken != -1)
  {
    dispatch_once(&fsSanitizedStringFromString_allowSpaces__onceToken, &__block_literal_global_539);
  }

  v6 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersDisallowingSpace;
  if (spacesCopy)
  {
    v7 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersAllowingSpace;

    v6 = v7;
  }

  v8 = [stringCopy dataUsingEncoding:1 allowLossyConversion:1];
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithData:v8 encoding:1];
  v10 = [v9 rangeOfCharacterFromSet:v6];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [v9 rangeOfCharacterFromSet:v6])
    {
      [v9 replaceCharactersInRange:i withString:{1, @"-"}];
    }
  }

  if (([v9 isEqualToString:@".."] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"."))
  {

    v9 = 0;
  }

  v12 = [v9 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __58__MCMFileManager_fsSanitizedStringFromString_allowSpaces___block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_"];
  v1 = [v0 invertedSet];
  v2 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersDisallowingSpace;
  fsSanitizedStringFromString_allowSpaces__forbiddenCharactersDisallowingSpace = v1;

  v7 = [@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_" stringByAppendingString:@" "];
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:?];
  v4 = [v3 invertedSet];
  v5 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersAllowingSpace;
  fsSanitizedStringFromString_allowSpaces__forbiddenCharactersAllowingSpace = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (id)fsNodeOfURL:(id)l followSymlinks:(BOOL)symlinks error:(id *)error
{
  symlinksCopy = symlinks;
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v16, 0, sizeof(v16));
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (symlinksCopy)
  {
    if (stat(fileSystemRepresentation, &v16))
    {
      goto LABEL_3;
    }
  }

  else if (lstat(fileSystemRepresentation, &v16))
  {
LABEL_3:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__MCMFileManager_fsNodeOfURL_followSymlinks_error___block_invoke;
    v14[3] = &unk_1E86B0B98;
    v15 = lCopy;
    v9 = __51__MCMFileManager_fsNodeOfURL_followSymlinks_error___block_invoke(v14);

    v10 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = [[MCMFSNode alloc] initWithStat:&v16];
  v9 = 0;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v10)
  {
    v11 = v9;
    *error = v9;
  }

LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

id __51__MCMFileManager_fsNodeOfURL_followSymlinks_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not determine fsNode of path [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager fsNodeOfURL:followSymlinks:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76330;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)copyDescriptionOfURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(&v13, 0x878uLL);
  memset(&v12, 0, sizeof(v12));
  fileSystemRepresentation = [l fileSystemRepresentation];
  string = [MEMORY[0x1E696AEC0] string];
  if (lstat(fileSystemRepresentation, &v12))
  {
    v6 = [string stringByAppendingFormat:@"lstat error = %d ", *__error()];

    string = v6;
    if (!statfs(fileSystemRepresentation, &v13))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (statfs(fileSystemRepresentation, &v13))
  {
LABEL_5:
    v6 = [string stringByAppendingFormat:@"statfs error = %d ", *__error()];

    goto LABEL_6;
  }

  v10 = fflagstostr(v12.st_flags);
  v6 = [string stringByAppendingFormat:@"%d/0%o/[%s]/[%s]/%08x/%llx/%x-%x/%d", v12.st_uid, v12.st_mode, v10, v13.f_fstypename, v13.f_flags, v12.st_ino, v13.f_fsid.val[0], v13.f_fsid.val[1], v13.f_owner, v10, *&v12.st_dev];

  if (v10)
  {
    free(v10);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

LABEL_6:
  v7 = [v6 copy];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)removeExclusionFromBackupFromURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Removing backup exclusion unimplemented"];
    v18 = @"FunctionName";
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeExclusionFromBackupFromURL:error:]_block_invoke"];
    v21 = v7;
    v22 = &unk_1F5A76318;
    v8 = *MEMORY[0x1E696A578];
    v19 = @"SourceFileLine";
    v20 = v8;
    v23 = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v18 count:3];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v9];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil path when trying to remove backup exclusion"];
    v18 = @"FunctionName";
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeExclusionFromBackupFromURL:error:]_block_invoke"];
    v21 = v12;
    v22 = &unk_1F5A76300;
    v13 = *MEMORY[0x1E696A578];
    v19 = @"SourceFileLine";
    v20 = v13;
    v23 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v18 count:3];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v14];

    if (error)
    {
      v15 = v10;
      *error = v10;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return lCopy != 0;
}

- (BOOL)fixUserPermissionsAtURL:(id)l limitToTopLevelURL:(id)rL error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v25 = 0;
  path = [lCopy path];
  path2 = [rLCopy path];
  v11 = [path hasPrefix:path2];

  if (v11)
  {
    v21 = 0;
    if (_fix_permissions_on_path([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), &v25, &v21))
    {
      v12 = 0;
      goto LABEL_9;
    }

    v25 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke_500;
    v18[3] = &unk_1E86B0618;
    v13 = &v19;
    v19 = lCopy;
    v20 = v21;
    v12 = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke_500(v18);
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke;
    v22[3] = &unk_1E86B0BE8;
    v13 = &v23;
    v23 = lCopy;
    v24 = rLCopy;
    v12 = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke(v22);
  }

  if (error && v12)
  {
    v14 = v12;
    *error = v12;
  }

LABEL_9:
  v15 = v25;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

id __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"provided path [%@] not beneath limit path [%@]", v3, v4];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager fixUserPermissionsAtURL:limitToTopLevelURL:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A762D0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke_500(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"could not fix permissions at [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager fixUserPermissionsAtURL:limitToTopLevelURL:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A762E8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)dataWritingOptionsForFileAtURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v17 = 0;
  v4 = +[MCMFileManager defaultManager];
  v16 = 0;
  v5 = [v4 checkFileSystemAtURL:lCopy isCaseSensitive:0 canAtomicSwap:&v17 + 1 error:&v16];
  v6 = v16;

  if (v5)
  {
    v7 = +[MCMFileManager defaultManager];
    v15 = v6;
    v8 = [v7 checkFileSystemAtURL:lCopy supportsPerFileKeys:&v17 error:&v15];
    v9 = v15;

    if (v8)
    {
      if (v17)
      {
        v10 = HIBYTE(v17) | 0x10000000;
      }

      else
      {
        v10 = HIBYTE(v17);
      }
    }

    else
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = lCopy;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Could not check fs capabilities for data protection at [%@]: %@", buf, 0x16u);
      }

      v10 = 0;
    }

    v6 = v9;
  }

  else
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = lCopy;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Could not check fs capabilities for atomic swap at [%@]: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)stripACLFromURL:(id)l error:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self _enumeratePOSIX1eACLEntriesAtURL:l error:error usingBlock:&__block_literal_global_463];
}

uint64_t __40__MCMFileManager_stripACLFromURL_error___block_invoke(int a1, acl_entry_t entry_d, _BYTE *a3, void *a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  tag_type_p = ACL_UNDEFINED_TAG;
  permset_p = 0;
  if (acl_get_tag_type(entry_d, &tag_type_p))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not get ACL tag type."];
    v19[0] = @"FunctionName";
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke_2"];
    v9 = v8;
    v10 = &unk_1F5A76270;
LABEL_5:
    v20[0] = v8;
    v20[1] = v10;
    v11 = *MEMORY[0x1E696A578];
    v19[1] = @"SourceFileLine";
    v19[2] = v11;
    v20[2] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v12];

    goto LABEL_6;
  }

  if (acl_get_permset(entry_d, &permset_p))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not get ACL permset."];
    v19[0] = @"FunctionName";
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke"];
    v9 = v8;
    v10 = &unk_1F5A76288;
    goto LABEL_5;
  }

  if (tag_type_p == ACL_EXTENDED_DENY)
  {
    if (acl_delete_perm(permset_p, ACL_DELETE))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not delete ACL_DELETE permission from permset."];
      v19[0] = @"FunctionName";
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke"];
      v9 = v8;
      v10 = &unk_1F5A762A0;
      goto LABEL_5;
    }

    if (acl_set_permset(entry_d, permset_p))
    {
      v13 = __40__MCMFileManager_stripACLFromURL_error___block_invoke_487();
    }

    else
    {
      v13 = 0;
      *a3 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_6:
  if (a4)
  {
    v14 = v13;
    *a4 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

id __40__MCMFileManager_stripACLFromURL_error___block_invoke_487()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set new permset on ACL entry."];
  v7[0] = @"FunctionName";
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke"];
  v8[0] = v1;
  v8[1] = &unk_1F5A762B8;
  v2 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v2;
  v8[2] = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_enumeratePOSIX1eACLEntriesAtURL:(id)l error:(id *)error usingBlock:(id)block
{
  v29[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"URL is nil"];
    v28[0] = @"FunctionName";
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _enumeratePOSIX1eACLEntriesAtURL:error:usingBlock:]_block_invoke"];
    v29[0] = v15;
    v29[1] = &unk_1F5A76228;
    v16 = *MEMORY[0x1E696A578];
    v28[1] = @"SourceFileLine";
    v28[2] = v16;
    v29[2] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v17];

    goto LABEL_7;
  }

  v9 = fileSystemRepresentation;
  file = acl_get_file(fileSystemRepresentation, ACL_TYPE_EXTENDED);
  if (!file)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_449;
    v27[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v27[4] = v9;
    v12 = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_449(v27);
LABEL_7:
    LOBYTE(v13) = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v11 = file;
  entry_p = 0;
  if (acl_get_entry(file, 0, &entry_p))
  {
    v12 = 0;
    LOBYTE(v13) = 1;
  }

  else
  {
    v18 = 0;
    v12 = 0;
    do
    {
      LOBYTE(v29[0]) = 0;
      v25 = v12;
      v13 = blockCopy[2](blockCopy, entry_p, v29, &v25);
      v19 = v25;

      v12 = v19;
      v18 |= LOBYTE(v29[0]);
      if (!error)
      {
        v13 = 1;
      }
    }

    while (v13 == 1 && !acl_get_entry(v11, -1, &entry_p));
    if ((v18 & 1) != 0 && acl_set_file(v9, ACL_TYPE_EXTENDED, v11))
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_455;
      v24[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v24[4] = v9;
      v20 = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_455(v24);

      LOBYTE(v13) = 0;
      v12 = v20;
    }
  }

  acl_free(v11);
  if (error)
  {
LABEL_18:
    if ((v13 & 1) == 0)
    {
      v21 = v12;
      *error = v12;
    }
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

id __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_449(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not get ACL for [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _enumeratePOSIX1eACLEntriesAtURL:error:usingBlock:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76240;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_455(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set ACL for [%s]", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _enumeratePOSIX1eACLEntriesAtURL:error:usingBlock:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76258;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)checkFileSystemAtURL:(id)l supportsPerFileKeys:(BOOL *)keys error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent = lCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  }

  v9 = uRLByDeletingLastPathComponent;
  bzero(&v17, 0x878uLL);
  v10 = statfs([v9 fileSystemRepresentation], &v17);
  if (v10)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__MCMFileManager_checkFileSystemAtURL_supportsPerFileKeys_error___block_invoke;
    v15[3] = &unk_1E86B0B98;
    v16 = v9;
    v11 = __65__MCMFileManager_checkFileSystemAtURL_supportsPerFileKeys_error___block_invoke(v15);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  else
  {
    v11 = 0;
    if (keys)
    {
      *keys = (v17.f_flags & 0x80) != 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

id __65__MCMFileManager_checkFileSystemAtURL_supportsPerFileKeys_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get statfs at [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:supportsPerFileKeys:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76210;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)checkFileSystemAtURL:(id)l isCaseSensitive:(BOOL *)sensitive canAtomicSwap:(BOOL *)swap error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v24 = xmmword_1DF3BE498;
  v25 = 0;
  if ([lCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent = lCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  }

  v11 = uRLByDeletingLastPathComponent;
  if (getattrlist([uRLByDeletingLastPathComponent fileSystemRepresentation], &v24, &v32, 0x38uLL, 0))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_434;
    v20[3] = &unk_1E86B0B98;
    v12 = &v21;
    v21 = v11;
    v13 = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_434(v20);
    goto LABEL_10;
  }

  if (v32 != 56)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_431;
    v26[3] = &unk_1E86AFD10;
    v12 = &v27;
    v14 = v11;
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v27 = v14;
    v31 = v35;
    v13 = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_431(v26);
LABEL_10:
    v15 = v13;

    if (error)
    {
      v16 = v15;
      v17 = 0;
      *error = v15;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_18;
  }

  if ((BYTE10(v32) & 2) == 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke;
    v22[3] = &unk_1E86B0B98;
    v12 = &v23;
    v23 = v11;
    v13 = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke(v22);
    goto LABEL_10;
  }

  if (sensitive)
  {
    *sensitive = ((WORD4(v34) & WORD4(v33)) >> 8) & 1;
  }

  v15 = 0;
  if (swap)
  {
    *swap = (BYTE14(v33) >> 2) & ((HIDWORD(v34) & 0x40000u) >> 18);
  }

  v17 = 1;
LABEL_18:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

id __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return volume capabilities for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:isCaseSensitive:canAtomicSwap:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A761C8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_431(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return correctly sized attributes buffer for [%@]: expected = %lu, got = %d", v3, 56, *(a1 + 40)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:isCaseSensitive:canAtomicSwap:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A761E0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_434(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get volume capabilities for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:isCaseSensitive:canAtomicSwap:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A761F8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)compareVolumeForURL:(id)l versusURL:(id)rL isSameVolume:(BOOL *)volume error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, 36);
  v40 = xmmword_1DF3BE480;
  v41 = 0;
  v38 = xmmword_1DF3BE480;
  v39 = 0;
  if ([lCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent = lCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  }

  v12 = uRLByDeletingLastPathComponent;
  if ([rLCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent2 = rLCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent2 = [rLCopy URLByDeletingLastPathComponent];
  }

  v14 = uRLByDeletingLastPathComponent2;
  if (getattrlist([v12 fileSystemRepresentation], &v40, v53, 0x24uLL, 0))
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_408;
    v32[3] = &unk_1E86B0B98;
    v15 = &v33;
    v33 = v12;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_408(v32);
    goto LABEL_13;
  }

  if (*v53 != 36)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_402;
    v47[3] = &unk_1E86AFCE8;
    v15 = &v48;
    v48 = v12;
    v49 = *v53;
    v50 = *&v53[16];
    v51 = *&v53[32];
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_402(v47);
    goto LABEL_13;
  }

  if ((v53[4] & 2) == 0)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke;
    v36[3] = &unk_1E86B0B98;
    v15 = &v37;
    v37 = v12;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke(v36);
    goto LABEL_13;
  }

  if ((v53[4] & 4) == 0)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_399;
    v34[3] = &unk_1E86B0B98;
    v15 = &v35;
    v35 = v12;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_399(v34);
    goto LABEL_13;
  }

  v22 = *&v53[24];
  v23 = *&v53[28];
  if (getattrlist([v14 fileSystemRepresentation], &v38, v52, 0x24uLL, 0))
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_423;
    v26[3] = &unk_1E86B0B98;
    v15 = &v27;
    v27 = v14;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_423(v26);
    goto LABEL_13;
  }

  if (LODWORD(v52[0]) != 36)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_420;
    v42[3] = &unk_1E86AFCE8;
    v15 = &v43;
    v43 = v14;
    v44 = v52[0];
    v45 = v52[1];
    v46 = v52[2];
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_420(v42);
    goto LABEL_13;
  }

  if ((BYTE4(v52[0]) & 2) == 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_414;
    v30[3] = &unk_1E86B0B98;
    v15 = &v31;
    v31 = v14;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_414(v30);
    goto LABEL_13;
  }

  if ((BYTE4(v52[0]) & 4) == 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_417;
    v28[3] = &unk_1E86B0B98;
    v15 = &v29;
    v29 = v14;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_417(v28);
LABEL_13:
    v17 = v16;

    if (error)
    {
      v18 = v17;
      v19 = 0;
      *error = v17;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_16;
  }

  v17 = 0;
  if (volume)
  {
    v25 = v22 == DWORD2(v52[1]) && v23 == *(&v52[1] + 12);
    *volume = v25;
  }

  v19 = 1;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76108;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_399(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76120;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_402(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return correctly sized attributes buffer for [%@]: expected = %lu, got = %d", v3, 36, *(a1 + 40)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76138;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_408(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get attributes for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76150;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_414(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76168;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_417(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76180;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_420(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return correctly sized attributes buffer for [%@]: expected = %lu, got = %d", v3, 36, *(a1 + 40)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76198;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_423(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get attributes for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A761B0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)mountPointForURL:(id)l error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  bzero(&v16, 0x878uLL);
  if (statfs([lCopy fileSystemRepresentation], &v16))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__MCMFileManager_mountPointForURL_error___block_invoke;
    v14[3] = &unk_1E86B0B98;
    v15 = lCopy;
    v7 = __41__MCMFileManager_mountPointForURL_error___block_invoke(v14);
    v8 = 0;
    v9 = v15;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v16.f_mntonname isDirectory:1 relativeToURL:0];
    v13 = 0;
    v8 = [(MCMFileManager *)self realPathForURL:v9 isDirectory:1 error:&v13];
    v7 = v13;
  }

  if (error && !v8)
  {
    v10 = v7;
    *error = v7;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

id __41__MCMFileManager_mountPointForURL_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get statfs at [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager mountPointForURL:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A760F0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)writeData:(id)data toURL:(id)l options:(unint64_t)options mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v79 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  bytes = [dataCopy bytes];
  __s = 0;
  container_seam_fs_ensure_lazy_loaded();
  v14 = MEMORY[0x1E69E9988];
  if ((options & 0xFFFFFFFF8FFFFFFELL) != 0)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke;
    v69[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v69[4] = options & 0xFFFFFFFF8FFFFFFELL;
    v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke(v69);
LABEL_3:
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  v21 = *MEMORY[0x1E69E9988];
  if ((options - 0x10000000) >> 28 > 4)
  {
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = *(&unk_1DF3BE4B0 + (((options - 0x10000000) >> 26) & 0x3FFFFFFFFCLL));
  }

  v23 = *(v21 + 504);
  if ((options & 1) == 0)
  {
    v16 = 0;
    v24 = -1;
    v25 = 1793;
    goto LABEL_21;
  }

  if (asprintf(&__s, "%s.atomic.XXXXXX", [lCopy fileSystemRepresentation]) < 0)
  {
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_353;
    v67[3] = &unk_1E86B0B98;
    v68 = lCopy;
    v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_353(v67);

    goto LABEL_3;
  }

  v26 = *v14;
  v48 = lCopy;
  if (!v23)
  {
    v27 = (*(v26 + 496))(__s);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_44:
    v43 = *__error();
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_359;
    v65[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v65[4] = __s;
    v66 = v43;
    v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_359(v65);
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  v27 = (*(v26 + 504))(__s, v22, 0);
  if (v27 < 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  v28 = modeCopy;
  errorCopy = error;
  v30 = v27;
  v16 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:__s isDirectory:0 relativeToURL:0];
  v24 = v30;
  error = errorCopy;
  modeCopy = v28;
  v21 = *v14;
  v25 = 256;
  lCopy = v48;
LABEL_21:
  v49 = v24;
  if (v23)
  {
    v31 = (*(v21 + 520))([lCopy fileSystemRepresentation], v25, v22, 0);
  }

  else
  {
    v31 = (*(v21 + 512))([lCopy fileSystemRepresentation], v25);
  }

  v32 = v31;
  v33 = *__error();
  v35 = (options & 1) == 0 || v33 != 2;
  if ((v32 & 0x80000000) == 0 || !v35)
  {
    if (options)
    {
      v36 = v49;
    }

    else
    {
      v36 = v32;
    }

    v37 = (*(*MEMORY[0x1E69E9988] + 704))(v36, bytes, [dataCopy length]);
    if (v37 == [dataCopy length])
    {
      if (options)
      {
        v14 = MEMORY[0x1E69E9988];
        v38 = (*(*MEMORY[0x1E69E9988] + 688))(18);
        (*(*v14 + 688))();
        v39 = modeCopy & ~v38;
        if (((*(*v14 + 208))(v49, v39) & 0x80000000) != 0)
        {
          v44 = *__error();
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_377;
          v54[3] = &unk_1E86B0578;
          v55 = v16;
          v57 = v39;
          v56 = v44;
          v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_377(v54);
          v17 = 0;
          v42 = v55;
          goto LABEL_53;
        }

        if ((v32 & 0x80000000) != 0)
        {
          v40 = 4;
        }

        else
        {
          (*(*v14 + 152))(v32);
          v32 = 0xFFFFFFFFLL;
          v40 = 2;
        }

        (*(*v14 + 152))(v49);
        if (((*(*v14 + 640))([v16 fileSystemRepresentation], objc_msgSend(lCopy, "fileSystemRepresentation"), v40) & 0x80000000) != 0)
        {
          v47 = *__error();
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_383;
          v50[3] = &unk_1E86B05A0;
          v16 = v16;
          v51 = v16;
          v52 = lCopy;
          v53 = v47;
          v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_383(v50);

          v17 = 0;
          v14 = MEMORY[0x1E69E9988];
          goto LABEL_4;
        }

        v49 = -1;
      }

      v42 = container_log_handle_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        path = [lCopy path];
        v46 = [dataCopy length];
        *buf = 138544130;
        v72 = path;
        v73 = 2050;
        v74 = v46;
        v75 = 2050;
        optionsCopy = options;
        v77 = 1026;
        v78 = modeCopy;
        _os_log_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_DEFAULT, "Wrote [%{public}@], length = %{public}lu, options = 0x%{public}lx, mode = 0%{public}o", buf, 0x26u);
      }

      v15 = 0;
      v17 = 1;
    }

    else
    {
      v41 = *__error();
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_371;
      v58[3] = &unk_1E86B0618;
      v59 = lCopy;
      v60 = v41;
      v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_371(v58);
      v17 = 0;
      v42 = v59;
    }

    v14 = MEMORY[0x1E69E9988];
LABEL_53:

    if ((v32 & 0x80000000) == 0)
    {
      (*(*v14 + 152))(v32);
    }

    goto LABEL_55;
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_365;
  v61[3] = &unk_1E86B05A0;
  v62 = lCopy;
  v63 = v16;
  v64 = v33;
  v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_365(v61);

  v17 = 0;
  v14 = MEMORY[0x1E69E9988];
LABEL_55:
  if ((v49 & 0x80000000) == 0)
  {
    (*(*v14 + 152))();
  }

LABEL_4:
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v16)
  {
    (*(*v14 + 696))([v16 fileSystemRepresentation]);
  }

  if (error && v15)
  {
    v18 = v15;
    *error = v15;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported data writing options: 0x%lx", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76048;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_353(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not allocate memory for temporary filename for [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76060;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_359(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not open temp [%s] for create+writing", *(a1 + 32)];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A76078;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_365(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not open [%@] -> [%@] for create+writing", v3, v4];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A76090;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_371(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not write to [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A760A8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_377(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not chmod temp file [%@] to 0%o", v3, *(a1 + 44)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A760C0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_383(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not swap temp file [%@] with destination file [%@]", v3, v4];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A760D8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)readDataFromURL:(id)l options:(unint64_t)options fsNode:(id *)node error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = lCopy;
  __s = 0;
  if ((options & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke;
    v51[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v51[4] = options & 0xFFFFFFFFFFFFFFFDLL;
    v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke(v51);
    v12 = 0;
    v13 = 0;
    v14 = -1;
    goto LABEL_33;
  }

  v15 = open([lCopy fileSystemRepresentation], 256);
  v14 = v15;
  if (v15 < 0)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_313;
    v49[3] = &unk_1E86B0B98;
    v50 = v10;
    v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_313(v49);
    v25 = v50;
LABEL_18:

    v12 = 0;
    v13 = 0;
    goto LABEL_33;
  }

  if (options)
  {
    fcntl(v15, 48, 1);
  }

  v16 = malloc_type_calloc(1uLL, 0x4000uLL, 0x5169260AuLL);
  __s = v16;
  if (!v16)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_319;
    v46[3] = &unk_1E86B0B48;
    v48 = 0x4000;
    v47 = v10;
    v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_319(v46);
    v25 = v47;
    goto LABEL_18;
  }

  v17 = v16;
  errorCopy = error;
  v18 = 0;
  v19 = 0x4000;
  v20 = 0x4000;
  do
  {
    v21 = read(v14, &v17[v18], v20);
    if ((v21 & 0x8000000000000000) != 0)
    {
      __s = v17;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_325;
      v44[3] = &unk_1E86B0B98;
      v45 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_325(v44);
      v26 = v45;
      goto LABEL_21;
    }

    v22 = v21;
    v23 = v20 - v21;
    v18 += v21;
    if (v21 < v20 - v21)
    {
      break;
    }

    if (v19 > 0x9FC000)
    {
      __s = v17;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_331;
      v42[3] = &unk_1E86B0B98;
      v43 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_331(v42);
      v26 = v43;
LABEL_21:

      v13 = 0;
      error = errorCopy;
LABEL_32:
      free(v17);
      memset_s(&__s, 8uLL, 0, 8uLL);
      v12 = 0;
      goto LABEL_33;
    }

    v24 = malloc_type_realloc(v17, v19 + 0x4000, 0x1624FB37uLL);
    if (!v24)
    {
      __s = 0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_337;
      v39[3] = &unk_1E86B0B48;
      v41 = v19 + 0x4000;
      v40 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_337(v39);

      v12 = 0;
      v13 = 0;
      error = errorCopy;
      goto LABEL_33;
    }

    v17 = v24;
    v20 = v23 + 0x4000;
    v19 += 0x4000;
  }

  while (v22);
  __s = v17;
  if (node)
  {
    memset(&v59, 0, sizeof(v59));
    error = errorCopy;
    if (fstat(v14, &v59))
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_340;
      v37[3] = &unk_1E86B0B98;
      v38 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_340(v37);

      v13 = 0;
      goto LABEL_32;
    }

    if (v18 != v59.st_size)
    {
      v27 = container_log_handle_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        path = [v10 path];
        *buf = 134218498;
        v54 = v18;
        v55 = 2112;
        v56 = path;
        v57 = 2048;
        st_size = v59.st_size;
        _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Read size (%zu) of file [%@] did not match its length (%lld). Possibly a concurrent write+read.", buf, 0x20u);
      }
    }

    v13 = [[MCMFSNode alloc] initWithStat:&v59];
  }

  else
  {
    v13 = 0;
    error = errorCopy;
  }

  v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v17 length:v18];
  v28 = container_log_handle_for_category();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    path2 = [v10 path];
    v34 = [v12 length];
    v59.st_dev = 138543874;
    *&v59.st_mode = path2;
    WORD2(v59.st_ino) = 2050;
    *(&v59.st_ino + 6) = v34;
    HIWORD(v59.st_gid) = 2050;
    *&v59.st_rdev = options;
    _os_log_debug_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_DEBUG, "Read [%{public}@], length = %{public}lu, options = 0x%{public}lx", &v59, 0x20u);
  }

  v11 = 0;
  v17 = __s;
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_33:
  close(v14);
  if (error && v11)
  {
    v29 = v11;
    *error = v11;
  }

  if (node && v12)
  {
    v30 = v13;
    *node = v13;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v12;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported data reading options: 0x%lx", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A75FA0;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_313(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not open [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A75FB8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_319(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) path];
  v5 = [v2 initWithFormat:@"Could not allocate %zu bytes for [%@]", v3, v4];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75FD0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_325(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not read [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A75FE8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_331(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"File [%@] is too large: >%llu", v3, 10485760];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76000;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_337(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) path];
  v5 = [v2 initWithFormat:@"Could not allocate %zu bytes for [%@]", v3, v4];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A76018;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_340(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not stat [%@]", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76030;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)readDataFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self readDataFromURL:l options:options fsNode:0 error:error];
}

id __51__MCMFileManager_realPathForURL_isDirectory_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"container_realpath([%s]) failed", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager realPathForURL:isDirectory:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A75F88;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)realPathForURL:(id)l ifChildOfURL:(id)rL
{
  v100 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  bzero(v99, 0x401uLL);
  if (!lCopy || !rLCopy)
  {
    v25 = container_log_handle_for_category();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412546;
    v88 = rLCopy;
    v89 = 2112;
    v90 = lCopy;
    v30 = "The base path %@ and/or suspicious path %@ were nil";
    v31 = v25;
    v32 = 22;
    goto LABEL_14;
  }

  path = [rLCopy path];
  v9 = [path hasPrefix:@"/private/"];

  if (v9)
  {
    v10 = MEMORY[0x1E695DFF8];
    path2 = [rLCopy path];
    v12 = [path2 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v13 = [v10 fileURLWithPath:v12];

    rLCopy = v13;
  }

  path3 = [lCopy path];
  v15 = [path3 hasPrefix:@"/private/"];

  if (v15)
  {
    v16 = MEMORY[0x1E695DFF8];
    path4 = [lCopy path];
    v18 = [path4 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v19 = [v16 fileURLWithPath:v18];

    lCopy = v19;
  }

  path5 = [lCopy path];
  path6 = [rLCopy path];
  v22 = [path5 hasPrefix:path6];

  if ((v22 & 1) == 0)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [lCopy path];
      path8 = [rLCopy path];
      *buf = 138412546;
      v88 = path7;
      v89 = 2112;
      v90 = path8;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "supiscious path %@ does not contain base path %@ as a prefix", buf, 0x16u);

      goto LABEL_42;
    }

    goto LABEL_16;
  }

  pathComponents = [lCopy pathComponents];
  v24 = [pathComponents containsObject:@".."];

  if (v24)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [lCopy path];
      *buf = 138412290;
      v88 = path7;
      v27 = "The suspicious path %@ contains '..' paths, which are invalid";
LABEL_11:
      v28 = v25;
      v29 = 12;
LABEL_27:
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_42:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v41 = readlink([lCopy fileSystemRepresentation], v99, 0x400uLL);
  if (v41 == -1)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      path9 = [lCopy path];
      stringByDeletingLastPathComponent = 0;
      goto LABEL_33;
    }

    v25 = container_log_handle_for_category();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v53 = __error();
    v54 = strerror(*v53);
    *buf = 136315138;
    v88 = v54;
    v30 = "Readlink failed: %s";
    v31 = v25;
    v32 = 12;
LABEL_14:
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_16;
  }

  if (v99[0] == 47)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [lCopy path];
      *buf = 138412546;
      v88 = path7;
      v89 = 2080;
      v90 = v99;
      v27 = "Rejecting %@ -> %s, as absolute symlinks are not allowed";
      v28 = v25;
      v29 = 22;
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v86 = 0;
  path10 = [rLCopy path];
  v43 = [(MCMFileManager *)self _validateSymlink:path10 withStartingDepth:0 andEndingDepth:&v86];

  if (!v43)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [rLCopy path];
      *buf = 138412290;
      v88 = path7;
      v27 = "Failed to retrieve depth of %@";
      goto LABEL_11;
    }

LABEL_16:

    stringByDeletingLastPathComponent = 0;
    path9 = 0;
LABEL_17:
    v35 = 0;
LABEL_18:
    v36 = 0;
LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  path11 = [lCopy path];
  path12 = [rLCopy path];
  v46 = [path11 substringFromIndex:{objc_msgSend(path12, "length")}];

  stringByDeletingLastPathComponent = [v46 stringByDeletingLastPathComponent];

  v47 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v99 length:v41];
  path9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v47];

  if (![(MCMFileManager *)self _validateSymlink:path9 withStartingDepth:v86 andEndingDepth:0])
  {
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      path13 = [lCopy path];
      path14 = [rLCopy path];
      *buf = 138412802;
      v88 = path13;
      v89 = 2112;
      v90 = path9;
      v91 = 2112;
      v92 = path14;
      _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "Rejecting %@ -> %@, as it is points outside or to the base %@", buf, 0x20u);

      goto LABEL_67;
    }

LABEL_49:

    goto LABEL_17;
  }

LABEL_33:
  v48 = [(MCMFileManager *)self _realPathForURL:rLCopy allowNonExistentPathComponents:0];
  if (!v48)
  {
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      path13 = [rLCopy path];
      *buf = 138412290;
      v88 = path13;
      _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "Failed to retrieve realpath for base path %@ ", buf, 0xCu);
LABEL_67:

      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v35 = v48;
  v49 = [(MCMFileManager *)self _realPathForURL:lCopy allowNonExistentPathComponents:1];
  if (!v49)
  {
    v55 = container_log_handle_for_category();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      path15 = [lCopy path];
      *buf = 138412290;
      v88 = path15;
      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Failed to retrieve realpath for suspicious path %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v36 = v49;
  if (v41 == -1)
  {
    pathComponents2 = [v49 pathComponents];
    pathComponents3 = [v35 pathComponents];
    v57 = [pathComponents3 count];
    v85 = pathComponents2;
    v58 = [pathComponents2 count];
    if (v58 < 2 || v57 <= 1)
    {
      v64 = container_log_handle_for_category();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        path16 = [lCopy path];
        path17 = [rLCopy path];
        path18 = [v36 path];
        path19 = [v35 path];
        *buf = 138413058;
        v88 = path16;
        v89 = 2112;
        v90 = path17;
        v91 = 2112;
        v92 = path18;
        v93 = 2112;
        v94 = path19;
        v68 = path19;
        v69 = "Rejecting %@ with base %@ because real component counts don't make sense (reals %@ ; %@)";
        goto LABEL_71;
      }
    }

    else
    {
      v59 = v58;
      v60 = 1;
      v61 = [pathComponents3 objectAtIndexedSubscript:1];
      if ([v61 isEqualToString:@"private"])
      {
        v60 = 2;
      }

      [v85 objectAtIndexedSubscript:1];
      v62 = v80 = v57;
      if ([v62 isEqualToString:@"private"])
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v80 - v60 <= v59 - v63)
      {
        if (v80 <= v60)
        {
LABEL_65:

          goto LABEL_36;
        }

        while (1)
        {
          v70 = [pathComponents3 objectAtIndexedSubscript:v60];
          v71 = [v85 objectAtIndexedSubscript:v63];
          v83 = [v70 isEqualToString:v71];

          if ((v83 & 1) == 0)
          {
            break;
          }

          ++v60;
          ++v63;
          if (v80 == v60)
          {
            goto LABEL_65;
          }
        }

        v74 = v63;
        v64 = container_log_handle_for_category();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          path16 = [lCopy path];
          path20 = [rLCopy path];
          path21 = [v36 path];
          path22 = [v35 path];
          v76 = [pathComponents3 objectAtIndexedSubscript:v60];
          v77 = [v85 objectAtIndexedSubscript:v74];
          *buf = 138413570;
          v88 = path16;
          v89 = 2112;
          v90 = path20;
          v91 = 2112;
          v92 = path21;
          v93 = 2112;
          v94 = path22;
          v95 = 2112;
          v96 = v76;
          v97 = 2112;
          v98 = v77;
          _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "Rejecting %@ with base %@ (reals %@ ; %@) because components diverge at %@ != %@", buf, 0x3Eu);

LABEL_72:
        }
      }

      else
      {
        v64 = container_log_handle_for_category();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          path16 = [lCopy path];
          path17 = [rLCopy path];
          path18 = [v36 path];
          path23 = [v35 path];
          *buf = 138413058;
          v88 = path16;
          v89 = 2112;
          v90 = path17;
          v91 = 2112;
          v92 = path18;
          v93 = 2112;
          v94 = path23;
          v68 = path23;
          v69 = "Rejecting %@ with base %@ because base component count is greater than child component count (reals %@ ; %@)";
LABEL_71:
          _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, v69, buf, 0x2Au);

          goto LABEL_72;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_36:
  v36 = v36;
  v37 = v36;
LABEL_20:
  v38 = v37;

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth
{
  v28 = *MEMORY[0x1E69E9840];
  symlinkCopy = symlink;
  v8 = symlinkCopy;
  if (symlinkCopy)
  {
    endingDepthCopy = endingDepth;
    v22 = symlinkCopy;
    [symlinkCopy pathComponents];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      depthCopy2 = depth;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          if ([v15 isEqualToString:@".."])
          {
            v16 = -1;
          }

          else
          {
            if ([v15 isEqualToString:&stru_1F5A5B2B8] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"."))
            {
              goto LABEL_13;
            }

            v16 = [v15 isEqualToString:@"/"] ^ 1;
          }

          depthCopy2 += v16;
          if (depthCopy2 < depth)
          {

            v18 = 0;
            goto LABEL_23;
          }

LABEL_13:
          ++v14;
        }

        while (v11 != v14);
        v17 = [v9 countByEnumeratingWithState:&v24 objects:v23 count:16];
        v11 = v17;
        if (!v17)
        {
          goto LABEL_20;
        }
      }
    }

    depthCopy2 = depth;
LABEL_20:

    if (endingDepthCopy)
    {
      *endingDepthCopy = depthCopy2;
    }

    v18 = 1;
LABEL_23:
    v8 = v22;
  }

  else
  {
    v9 = 0;
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components
{
  componentsCopy = components;
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v18 = 0;
  v7 = -[MCMFileManager realPathForURL:isDirectory:error:](self, "realPathForURL:isDirectory:error:", lCopy, [lCopy hasDirectoryPath], &v18);
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]] && objc_msgSend(v9, "code") == 2)
    {

      if (componentsCopy)
      {
        path = [lCopy path];
        v12 = [(MCMFileManager *)self _realPathWhatExistsInPath:path];

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      fileSystemRepresentation = [path2 fileSystemRepresentation];
      *buf = 136315394;
      v20 = fileSystemRepresentation;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to realpath [%s] : %@", buf, 0x16u);
    }
  }

  v12 = v7;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_realPathWhatExistsInPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathComponents = [path pathComponents];
  v5 = [pathComponents count];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v7 = [pathComponents subarrayWithRange:{0, v6 + 1}];
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v7];
      v9 = 0;
      if ([(MCMFileManager *)self itemExistsAtURL:v8])
      {
        v10 = [(MCMFileManager *)self _realPathForURL:v8 allowNonExistentPathComponents:0];
        if (v10)
        {
          v11 = [pathComponents subarrayWithRange:{v6 + 1, objc_msgSend(pathComponents, "count") - (v6 + 1)}];
          v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v11];
          v13 = container_log_handle_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            path = [v10 path];
            *buf = 138412546;
            v18 = path;
            v19 = 2112;
            v20 = v12;
            _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "Realpathed %@ ; appending non-existing components %@", buf, 0x16u);
          }

          v9 = [v10 URLByAppendingPathComponent:v12 isDirectory:0];
        }

        else
        {
          v9 = 0;
        }
      }

      if (v9)
      {
        break;
      }

      --v6;
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)diskUsageForURL:(id)l
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  v6 = container_log_handle_for_category();
  v7 = os_signpost_id_make_with_pointer(v6, lCopy);

  v8 = container_log_handle_for_category();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138477827;
    v31 = path;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

  if (!fileSystemRepresentation)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = lCopy;
      v14 = "Failed to get path to url %@";
      v15 = v10;
      v16 = 12;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v28 = 0;
  v29 = 0;
  if ((*(*MEMORY[0x1E69E9988] + 184))(fileSystemRepresentation, 2, &v28, 16))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136446722;
      v31 = fileSystemRepresentation;
      v32 = 1024;
      *v33 = v11;
      *&v33[4] = 2080;
      *&v33[6] = v13;
      v14 = "Failed to get dirstats on %{public}s using fallback: (err %d) %s";
      v15 = v10;
      v16 = 28;
LABEL_20:
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v18 = v28;
  if ((v28 & 0x8000000000000000) != 0)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = v28;
      v25 = *__error();
      v26 = __error();
      v27 = strerror(*v26);
      *buf = 134218754;
      v31 = v24;
      v32 = 2082;
      *v33 = fileSystemRepresentation;
      *&v33[8] = 1024;
      *&v33[10] = v25;
      *&v33[14] = 2080;
      *&v33[16] = v27;
      v14 = "Invalid size (%lld) from dirstats on %{public}s using fallback: (err %d) %s";
      v15 = v10;
      v16 = 38;
      goto LABEL_20;
    }

LABEL_9:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v17 = v29;
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v31 = fileSystemRepresentation;
    v32 = 2048;
    *v33 = v17;
    *&v33[8] = 2048;
    *&v33[10] = v18;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s]: descendants: %llu, total size: %llu, using fallback", buf, 0x20u);
  }

LABEL_10:

  v19 = container_log_handle_for_category();
  v20 = v19;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138478339;
    v31 = path;
    v32 = 2050;
    *v33 = v17;
    *&v33[8] = 2049;
    *&v33[10] = v18;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v20, OS_SIGNPOST_INTERVAL_END, v7, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@  numNodes=%{public, signpost.description:attribute}llu  size=%{private, signpost.description:attribute}llu ", buf, 0x20u);
  }

  v21 = *MEMORY[0x1E69E9840];
  v22 = v18;
  v23 = v17;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)fastDiskUsageForURL:(id)l
{
  v61 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!_os_feature_enabled_impl())
  {
LABEL_41:
    v31 = [(MCMFileManager *)self diskUsageForURL:lCopy, v42];
    v29 = v36;
    goto LABEL_42;
  }

  v45 = 0;
  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  v7 = container_log_handle_for_category();
  v8 = os_signpost_id_make_with_pointer(v7, lCopy);

  v9 = container_log_handle_for_category();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138477827;
    *&buf[4] = path;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    *v46 = 0;
    *&v46[8] = 0;
    v12 = MEMORY[0x1E69E9988];
    v13 = (*(*MEMORY[0x1E69E9988] + 184))(fileSystemRepresentation, 1, v46, 16);
    v14 = *__error();
    if (_os_feature_enabled_impl() && v13 && v14 == 45)
    {
      *v46 = 0;
      *&v46[8] = 0;
      v15 = (*(*v12 + 312))(fileSystemRepresentation, 2148026882, &v45, 0);
      v16 = *__error();
      v17 = container_log_handle_for_category();
      v18 = v17;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = fileSystemRepresentation;
          *&buf[12] = 1024;
          *&buf[14] = v16;
          v19 = "[%{public}s] Failed to set maintain-dir-stats: %{darwin.errno}d";
LABEL_46:
          v26 = buf;
          goto LABEL_47;
        }

        goto LABEL_31;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = fileSystemRepresentation;
        _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_INFO, "[%{public}s] Enabled APFSIOC_MAINTAIN_DIR_STATS", buf, 0xCu);
      }

      v13 = (*(*v12 + 184))(fileSystemRepresentation, 1, v46, 16);
      v14 = *__error();
    }

    if (v13)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = fileSystemRepresentation;
        *&buf[12] = 1024;
        *&buf[14] = v14;
        v19 = "[%{public}s] Failed to get dirstats: %{darwin.errno}d";
        goto LABEL_46;
      }

LABEL_31:

      v32 = 0;
      v29 = 0;
      v31 = 0;
      goto LABEL_37;
    }

    v31 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = fileSystemRepresentation;
        *&buf[12] = 2048;
        *&buf[14] = *v46;
        *&buf[22] = 1024;
        *&buf[24] = v14;
        v19 = "[%{public}s] Invalid size (%lld) from dirstats: %{darwin.errno}d";
        v26 = buf;
        v40 = v18;
        v41 = 28;
LABEL_48:
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, v19, v26, v41);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    v42 = v8;
    v43 = v8 - 1;
    v28 = 0;
    v30 = 0;
    v27 = 0;
    v29 = *&v46[8];
  }

  else
  {
    v43 = v8 - 1;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    memset(buf, 0, sizeof(buf));
    memset_s(buf, 0x110uLL, 0, 0x110uLL);
    *buf = 1;
    *&buf[8] = 1;
    v20 = MEMORY[0x1E69E9988];
    v21 = (*(*MEMORY[0x1E69E9988] + 312))(fileSystemRepresentation, 3239070321, buf, 0);
    v22 = *__error();
    if (_os_feature_enabled_impl() && v21 && v22 == 45)
    {
      v44 = 0;
      v23 = [(MCMFileManager *)self enableFastDiskUsageForURL:lCopy error:&v44];
      v18 = v44;
      v24 = container_log_handle_for_category();
      v25 = v24;
      if (!v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v46 = 136446466;
          *&v46[4] = fileSystemRepresentation;
          *&v46[12] = 2112;
          *&v46[14] = v18;
          _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "[%{public}s] Enabling fast disk sizing failed: %@", v46, 0x16u);
        }

        v11 = v8 - 1;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v46 = 136446210;
        *&v46[4] = fileSystemRepresentation;
        _os_log_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_INFO, "[%{public}s] Enabled APFSIOC_DIR_STATS_OP", v46, 0xCu);
      }

      memset_s(buf, 0x110uLL, 0, 0x110uLL);
      *buf = 1;
      *&buf[8] = 1;
      v21 = (*(*v20 + 312))(fileSystemRepresentation, 3239070321, buf, 0);
      v22 = *__error();
    }

    v11 = v8 - 1;
    if (v21)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v46 = 136446466;
        *&v46[4] = fileSystemRepresentation;
        *&v46[12] = 1024;
        *&v46[14] = v22;
        v19 = "[%{public}s] Fast disk sizing failed: %{darwin.errno}d";
        v26 = v46;
LABEL_47:
        v40 = v18;
        v41 = 18;
        goto LABEL_48;
      }

      goto LABEL_31;
    }

    v42 = v8;
    v27 = *(&v48 + 1);
    v28 = v49;
    v29 = *&buf[56];
    v30 = v48;
    v31 = *(&v48 + 1) + v48 + v49;
  }

  v33 = container_log_handle_for_category();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = fileSystemRepresentation;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    *&buf[24] = v31;
    *&buf[32] = 2048;
    *&buf[34] = v30;
    *&buf[42] = 2048;
    *&buf[44] = v27;
    *&buf[52] = 2048;
    *&buf[54] = v28;
    _os_log_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}s]: descendants: %llu, total size: %llu [ph%llu; cl%llu; pu%llu]", buf, 0x3Eu);
  }

  v32 = 1;
  v8 = v42;
  v11 = v43;
LABEL_37:
  v34 = container_log_handle_for_category();
  v35 = v34;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 138478339;
    *&buf[4] = path;
    *&buf[12] = 2050;
    *&buf[14] = v29;
    *&buf[22] = 2049;
    *&buf[24] = v31;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v35, OS_SIGNPOST_INTERVAL_END, v8, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@  numNodes=%{public, signpost.description:attribute}llu  size=%{private, signpost.description:attribute}llu ", buf, 0x20u);
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:

  v37 = *MEMORY[0x1E69E9840];
  v38 = v31;
  v39 = v29;
  result.var1 = v39;
  result.var0 = v38;
  return result;
}

- (BOOL)enableFastDiskUsageForURL:(id)l error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  fileSystemRepresentation = [l fileSystemRepresentation];
  memset(__s, 0, sizeof(__s));
  memset_s(__s, 0x110uLL, 0, 0x110uLL);
  *&__s[0] = 0x100000001;
  *(&__s[0] + 1) = 28;
  v6 = (*(*MEMORY[0x1E69E9988] + 312))(fileSystemRepresentation, 3239070321, __s, 0);
  if (v6)
  {
    v7 = *__error();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MCMFileManager_enableFastDiskUsageForURL_error___block_invoke;
    v12[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v12[4] = fileSystemRepresentation;
    v13 = v7;
    v8 = __50__MCMFileManager_enableFastDiskUsageForURL_error___block_invoke(v12);
    if (error)
    {
      v8 = v8;
      *error = v8;
    }
  }

  else
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v15 = fileSystemRepresentation;
      _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "[%{public}s] Enabled APFSIOC_DIR_STATS_OP", buf, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

id __50__MCMFileManager_enableFastDiskUsageForURL_error___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%s] APFSIOC_DIR_STATS_OP: DIR_STATS_OP_SET failed: (%d) %s", *(a1 + 32), *(a1 + 40), strerror(*(a1 + 40))];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager enableFastDiskUsageForURL:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A75F70;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)printDirectoryStructureAtURL:(id)l
{
  v24[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v24[0] = [lCopy fileSystemRepresentation];
  v24[1] = 0;
  v4 = fts_open(v24, 84, 0);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      do
      {
        v6 = fts_read(v5);
        if (!v6)
        {
          fts_close(v5);
          goto LABEL_17;
        }

        v7 = v6;
        fts_info = v6->fts_info;
        if (fts_info > 0xD)
        {
          break;
        }

        if (((1 << fts_info) & 0x310A) != 0)
        {
          v9 = container_log_handle_for_category();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          fts_path = v7->fts_path;
          *buf = 136315138;
          v21 = fts_path;
          v12 = v9;
          v13 = "\tOrphaned File: %s";
          v14 = 12;
          goto LABEL_12;
        }
      }

      while (fts_info == 6);
      v9 = container_log_handle_for_category();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v10 = v7->fts_path;
      v11 = strerror(v7->fts_errno);
      *buf = 136315394;
      v21 = v10;
      v22 = 2080;
      v23 = v11;
      v12 = v9;
      v13 = "FTS returned error for %s : %s";
      v14 = 22;
LABEL_12:
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, v13, buf, v14);
LABEL_7:
    }
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = __error();
    v19 = strerror(*v18);
    *buf = 138412546;
    v21 = lCopy;
    v22 = 2080;
    v23 = v19;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "fts_open failed for %@ : %s", buf, 0x16u);
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)dataProtectionClassOfItemAtURL:(id)l dataProtectionClass:(int *)class error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = open([lCopy fileSystemRepresentation], 256);
  v9 = v8;
  if (v8 < 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke;
    v21[3] = &unk_1E86B0B98;
    v13 = v22;
    v22[0] = lCopy;
    v14 = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke(v21);
  }

  else
  {
    v10 = fcntl(v8, 63);
    if ((v10 & 0x80000000) == 0 || *__error() == 45)
    {
      v11 = 0;
      *class = v10;
      v12 = 1;
LABEL_10:
      close(v9);
      v16 = v12;
      goto LABEL_11;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke_267;
    v19[3] = &unk_1E86B0B98;
    v13 = &v20;
    v20 = lCopy;
    v14 = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke_267(v19);
  }

  v11 = v14;

  if (error)
  {
    v15 = v11;
    *error = v11;
  }

  v12 = 0;
  v16 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

id __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) fileSystemRepresentation];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to open %s : %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager dataProtectionClassOfItemAtURL:dataProtectionClass:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75F40;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke_267(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) fileSystemRepresentation];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to getclass of file %s: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager dataProtectionClassOfItemAtURL:dataProtectionClass:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75F58;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)itemDoesNotExistAtURL:(id)l
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [(MCMFileManager *)self itemExistsAtURL:l];
  v4 = *MEMORY[0x1E69E9840];
  return !v3;
}

- (BOOL)itemAtURL:(id)l followSymlinks:(BOOL)symlinks exists:(BOOL *)exists isDirectory:(BOOL *)directory fsNode:(id *)node error:(id *)error
{
  symlinksCopy = symlinks;
  v42 = *MEMORY[0x1E69E9840];
  fileSystemRepresentation = [l fileSystemRepresentation];
  v14 = fileSystemRepresentation;
  memset(&v41, 0, sizeof(v41));
  if (symlinksCopy)
  {
    v15 = stat(fileSystemRepresentation, &v41);
  }

  else
  {
    v15 = lstat(fileSystemRepresentation, &v41);
  }

  v16 = v15;
  if (!v15)
  {
    v18 = (v41.st_mode & 0xF000) == 0x4000;
    if (node)
    {
      v17 = [[MCMFSNode alloc] initWithStat:&v41];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  if (*__error() == 2)
  {
    v17 = 0;
    v18 = 0;
LABEL_14:
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v32 = v14;
      v33 = 1024;
      v34 = v16 == 0;
      v35 = 1024;
      *v36 = v18;
      *&v36[4] = 1024;
      *&v36[6] = v41.st_mode & 0x1FF;
      v37 = 1024;
      st_uid = v41.st_uid;
      v39 = 1024;
      st_gid = v41.st_gid;
      _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "stat [%s]: %d/%d/0%03o/%u/%u", buf, 0x2Au);
    }

    if (exists)
    {
      *exists = v16 == 0;
    }

    if (directory)
    {
      *directory = v18;
    }

    if (node)
    {
      v24 = v17;
      v19 = 0;
      *node = v17;
    }

    else
    {
      v19 = 0;
    }

    v22 = 1;
    goto LABEL_24;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__MCMFileManager_itemAtURL_followSymlinks_exists_isDirectory_fsNode_error___block_invoke;
  v30[3] = &__block_descriptor_40_e14___NSError_8__0l;
  v30[4] = v14;
  v19 = __75__MCMFileManager_itemAtURL_followSymlinks_exists_isDirectory_fsNode_error___block_invoke(v30);
  v20 = container_log_handle_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v27 = *__error();
    v28 = __error();
    v29 = strerror(*v28);
    *buf = 136315650;
    v32 = v14;
    v33 = 1024;
    v34 = v27;
    v35 = 2080;
    *v36 = v29;
    _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to determine if [%s] exists: (%d) %s", buf, 0x1Cu);
  }

  if (error)
  {
    v21 = v19;
    v17 = 0;
    v22 = 0;
    *error = v19;
  }

  else
  {
    v17 = 0;
    v22 = 0;
  }

LABEL_24:

  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

id __75__MCMFileManager_itemAtURL_followSymlinks_exists_isDirectory_fsNode_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to determine if [%s] exists.", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager itemAtURL:followSymlinks:exists:isDirectory:fsNode:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A75F28;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists isDirectory:(BOOL *)directory error:(id *)error
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self itemAtURL:l followSymlinks:0 exists:exists isDirectory:directory error:error];
}

- (BOOL)itemExistsAtURL:(id)l isDirectory:(BOOL *)directory
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(MCMFileManager *)self itemAtURL:l exists:&v6 isDirectory:directory error:0];
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self itemAtURL:l exists:exists isDirectory:0 error:error];
}

- (BOOL)itemExistsAtURL:(id)l
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self itemExistsAtURL:l isDirectory:0];
}

- (id)urlsForItemsInDirectoryAtURL:(id)l error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = objc_opt_new();
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke;
  v36 = &unk_1E86AFCC0;
  v8 = v6;
  v37 = v8;
  v9 = lCopy;
  v38 = v9;
  v10 = v34;
  v11 = opendir(fileSystemRepresentation);
  if (v11)
  {
    v12 = v11;
    v13 = readdir(v11);
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        d_type = v14->d_type;
        if (!v14->d_type)
        {
          break;
        }

LABEL_8:
        v18 = v14->d_name[0];
        d_name = v14->d_name;
        if (v18 == 46 || v35(v10, d_type, d_name))
        {
          v14 = readdir(v12);
          if (v14)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      memset(&v39, 0, sizeof(v39));
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s/%s", fileSystemRepresentation, v14->d_name];
      if (stat([v16 fileSystemRepresentation], &v39))
      {
        goto LABEL_6;
      }

      v19 = v39.st_mode & 0xF000;
      if (v19 == 0x4000)
      {
        d_type = 4;
        goto LABEL_7;
      }

      if (v19 == 0x8000)
      {
        d_type = 8;
        goto LABEL_7;
      }

      if (v19 != 40960)
      {
LABEL_6:
        d_type = 0;
      }

      else
      {
        d_type = 10;
      }

LABEL_7:

      goto LABEL_8;
    }

LABEL_18:
    closedir(v12);
  }

  else
  {
    if (*__error() != 2)
    {
      v22 = container_log_handle_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = __error();
        v30 = strerror(*v29);
        v39.st_dev = 136315394;
        *&v39.st_mode = fileSystemRepresentation;
        WORD2(v39.st_ino) = 2080;
        *(&v39.st_ino + 6) = v30;
        _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "opendir of %s failed: %s", &v39, 0x16u);
      }
    }

    v23 = *__error();

    if (v23)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke_2;
      v31[3] = &unk_1E86B0618;
      v32 = v9;
      v33 = v23;
      v21 = __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke_2(v31);

      v20 = 0;
      if (!error)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  v20 = v8;
  v21 = 0;
  if (!error)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!v20)
  {
    v24 = v21;
    *error = v21;
  }

LABEL_29:
  v25 = v38;
  v26 = v20;

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a3 isDirectory:a2 == 4 relativeToURL:*(a1 + 40)];
  v5 = [v4 absoluteURL];
  [v3 addObject:v5];

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

id __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke_2(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"_IterateDirectory for %@ returned %s", v3, strerror(*v4)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager urlsForItemsInDirectoryAtURL:error:]_block_invoke_2"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75F10;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)standardizeOwnershipAtURL:(id)l toPOSIXUser:(id)user error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  userCopy = user;
  memset(&v32, 0, sizeof(v32));
  lCopy = l;
  lCopy2 = l;
  fileSystemRepresentation = [lCopy2 fileSystemRepresentation];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke;
  v26[3] = &unk_1E86AFC98;
  v12 = userCopy;
  v27 = v12;
  v13 = [(MCMFileManager *)self _traverseDirectory:lCopy2 error:error withBlock:v26];

  if (lstat(fileSystemRepresentation, &v32) == -1)
  {
    if (error)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke_244;
      v25[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v25[4] = fileSystemRepresentation;
      __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke_244(v25);
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (!strstr(fileSystemRepresentation, ".com.apple.mobile_container_manager.metadata.plist"))
  {
    st_uid = v32.st_uid;
    if (st_uid != [v12 UID] && lchown(fileSystemRepresentation, objc_msgSend(v12, "UID"), objc_msgSend(v12, "primaryGID")) == -1)
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = __error();
        v24 = strerror(*v23);
        *buf = 136315394;
        v29 = fileSystemRepresentation;
        v30 = 2080;
        v31 = v24;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not chown %s: %s", buf, 0x16u);
      }
    }

    if ((v32.st_mode & 0x49) != 0)
    {
      v16 = 493;
    }

    else
    {
      v16 = 420;
    }

    if ((v32.st_mode & 0xF000) == 0x4000)
    {
      v17 = 493;
    }

    else
    {
      v17 = v16;
    }

    if (lchmod(fileSystemRepresentation, v17) == -1)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        *buf = 136315394;
        v29 = fileSystemRepresentation;
        v30 = 2080;
        v31 = v22;
        _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Could not chmod %s: %s", buf, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!strstr(*(a2 + 48), ".com.apple.mobile_container_manager.metadata.plist"))
  {
    v4 = *(*(a2 + 96) + 16);
    if (v4 != [*(a1 + 32) UID] || (v5 = *(*(a2 + 96) + 20), v5 != objc_msgSend(*(a1 + 32), "primaryGID")))
    {
      if (lchown(*(a2 + 48), [*(a1 + 32) UID], objc_msgSend(*(a1 + 32), "primaryGID")) == -1)
      {
        v6 = container_log_handle_for_category();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a2 + 48);
          v16 = __error();
          v17 = strerror(*v16);
          v18 = 136315394;
          v19 = v15;
          v20 = 2080;
          v21 = v17;
          _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Could not chown %s: %s", &v18, 0x16u);
        }
      }
    }

    if ((*(*(a2 + 96) + 4) & 0x49) != 0)
    {
      v7 = 493;
    }

    else
    {
      v7 = 420;
    }

    if ((*(*(a2 + 96) + 4) & 0xF000) == 0x4000)
    {
      v8 = 493;
    }

    else
    {
      v8 = v7;
    }

    if (lchmod(*(a2 + 48), v8) == -1)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a2 + 48);
        v13 = __error();
        v14 = strerror(*v13);
        v18 = 136315394;
        v19 = v12;
        v20 = 2080;
        v21 = v14;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Could not chmod %s: %s", &v18, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

id __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke_244(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"Could not stat %s: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager standardizeOwnershipAtURL:toPOSIXUser:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75EF8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)standardizeAllSystemContainerACLsAtURL:(id)l error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = +[MCMFileManager defaultManager];
  v32 = 0;
  v8 = [v7 urlsForItemsInDirectoryAtURL:lCopy error:&v32];
  v9 = v32;

  if (!v8)
  {
    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v9 code];

      if (code == 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412546;
      v39 = path;
      v40 = 2112;
      v41 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to get items at URL%@ : %@", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_25;
  }

  if (![v8 count])
  {
LABEL_19:
    v15 = 1;
    goto LABEL_28;
  }

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Potential containers requiring ACL migration: %@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v28 = v8;
    errorCopy = error;
    v30 = lCopy;
    v14 = *v35;
    v15 = 1;
    do
    {
      v16 = 0;
      v17 = v9;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v34 + 1) + 8 * v16);
        v31 = v17;
        v19 = [(MCMFileManager *)self standardizeACLsForSystemContainerAtURL:v18 error:&v31];
        v9 = v31;

        if (!v19)
        {
          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            path2 = [v18 path];
            *buf = 138412546;
            v39 = path2;
            v40 = 2112;
            v41 = v9;
            _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to set system container ACL at %@: %@", buf, 0x16u);
          }

          v15 = 0;
        }

        ++v16;
        v17 = v9;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v13);
    error = errorCopy;
    lCopy = v30;
    v8 = v28;
  }

  else
  {
    v15 = 1;
  }

LABEL_25:

  if (error && (v15 & 1) == 0)
  {
    v24 = v9;
    v15 = 0;
    *error = v9;
  }

LABEL_28:

  v25 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (BOOL)standardizeACLsForSystemContainerAtURL:(id)l error:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self standardizeACLsAtURL:l isSystemContainer:1 error:error];
}

- (BOOL)standardizeACLsAtURL:(id)l isSystemContainer:(BOOL)container error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v9 = +[MCMPOSIXUser nobody];
  v10 = [v9 UID];
  primaryGID = [v9 primaryGID];
  v34 = 0;
  v12 = [(MCMFileManager *)self _CopyTopLevelSystemContainerACLWithError:&v34];
  v13 = v34;
  v14 = v13;
  v44[3] = v12;
  if (!v12)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_7;
  }

  v33 = v13;
  v15 = [(MCMFileManager *)self _CopySystemContainerACLWithNumACEs:1 isDir:1 inheritOnly:0 withError:&v33];
  v16 = v33;

  v40[3] = v15;
  if (v15)
  {
    v32 = v16;
    v17 = [(MCMFileManager *)self _CopySystemContainerACLWithNumACEs:1 isDir:0 inheritOnly:0 withError:&v32];
    v14 = v32;

    v36[3] = v17;
    if (v17)
    {
      v31 = v14;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __63__MCMFileManager_standardizeACLsAtURL_isSystemContainer_error___block_invoke;
      v27[3] = &unk_1E86AFC70;
      containerCopy = container;
      v27[4] = &v43;
      v27[5] = &v39;
      v27[6] = &v35;
      v28 = v10;
      v29 = primaryGID;
      v18 = [(MCMFileManager *)self _traverseDirectory:lCopy error:&v31 withBlock:v27];
      v19 = v31;

      v14 = v19;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18 = 0;
  v14 = v16;
LABEL_7:
  v20 = v44[3];
  if (v20)
  {
    acl_free(v20);
  }

  v21 = v40[3];
  if (v21)
  {
    acl_free(v21);
  }

  v22 = v36[3];
  if (v22)
  {
    acl_free(v22);
  }

  if (error)
  {
    v23 = v18;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v14;
    *error = v14;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __63__MCMFileManager_standardizeACLsAtURL_isSystemContainer_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  if (strstr(v4, ".com.apple.mobile_container_manager.metadata.plist"))
  {
    goto LABEL_21;
  }

  if ((*(*(a2 + 96) + 4) & 0xF000) == 0x4000)
  {
    if (*(a1 + 64) == 1 && !*(a2 + 86))
    {
      if (!acl_set_file(v4, ACL_TYPE_EXTENDED, *(*(*(a1 + 32) + 8) + 24)))
      {
        goto LABEL_11;
      }

      v5 = container_log_handle_for_category();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v10 = *(a2 + 48);
      v11 = __error();
      v12 = strerror(*v11);
      v23 = 136315394;
      v24 = v10;
      v25 = 2080;
      v26 = v12;
      v13 = "Failed to set top level ACL on dir %s: %s";
      goto LABEL_26;
    }

    if (acl_set_file(v4, ACL_TYPE_EXTENDED, *(*(*(a1 + 40) + 8) + 24)))
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_10;
    }
  }

  else if (acl_set_file(v4, ACL_TYPE_EXTENDED, *(*(*(a1 + 48) + 8) + 24)))
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v14 = *(a2 + 48);
      v15 = __error();
      v16 = strerror(*v15);
      v23 = 136315394;
      v24 = v14;
      v25 = 2080;
      v26 = v16;
      v13 = "Failed to set ACL on dir %s: %s";
LABEL_26:
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, v13, &v23, 0x16u);
    }

LABEL_10:
  }

LABEL_11:
  if (*(a1 + 64) != 1 || *(a2 + 86))
  {
    if (lchmod(*(a2 + 48), 0) == -1)
    {
      v6 = container_log_handle_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a2 + 48);
        v18 = __error();
        v19 = strerror(*v18);
        v23 = 136315394;
        v24 = v17;
        v25 = 2080;
        v26 = v19;
        _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Could not chmod %s: %s", &v23, 0x16u);
      }
    }

    if (lchown(*(a2 + 48), *(a1 + 56), *(a1 + 60)) == -1)
    {
      v7 = container_log_handle_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a2 + 48);
        v21 = __error();
        v22 = strerror(*v21);
        v23 = 136315394;
        v24 = v20;
        v25 = 2080;
        v26 = v22;
        _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Could not chown %s: %s", &v23, 0x16u);
      }
    }
  }

LABEL_21:
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)setTopLevelSystemContainerACLAtURL:(id)l error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v19[0] = 0;
  v7 = [(MCMFileManager *)self _CopyTopLevelSystemContainerACLWithError:v19];
  v8 = v19[0];
  if (!v7)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  path = [lCopy path];
  v10 = acl_set_file([path UTF8String], ACL_TYPE_EXTENDED, v7);
  v11 = v10 == 0;

  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__MCMFileManager_setTopLevelSystemContainerACLAtURL_error___block_invoke;
    v16[3] = &unk_1E86B0BE8;
    v17 = lCopy;
    v18 = v8;
    v12 = v8;
    v8 = __59__MCMFileManager_setTopLevelSystemContainerACLAtURL_error___block_invoke(v16);
  }

  acl_free(v7);
  if (error)
  {
LABEL_7:
    if (!v11)
    {
      v13 = v8;
      *error = v8;
    }
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

id __59__MCMFileManager_setTopLevelSystemContainerACLAtURL_error___block_invoke(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to set ACL on %@: %s", v3, strerror(*v4)];

  v23[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager setTopLevelSystemContainerACLAtURL:error:]_block_invoke"];
  v24[0] = v6;
  v24[1] = &unk_1F5A75EE0;
  v7 = *MEMORY[0x1E696A578];
  v23[1] = @"SourceFileLine";
  v23[2] = v7;
  v24[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  if (*(a1 + 40))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 40))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 40);
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v20 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v10];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (_acl)_CopyTopLevelSystemContainerACLWithError:(id *)error
{
  obj_p[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v5 = [(MCMFileManager *)self _CopySystemContainerACLWithNumACEs:2 isDir:1 inheritOnly:1 withError:&v14];
  v6 = v14;
  v7 = v6;
  obj_p[0] = v5;
  if (!v5)
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v13 = v6;
  [(MCMFileManager *)self _CreateSystemUserACEInACL:obj_p withPermissions:1572 andFlags:0 withError:&v13];
  v8 = v13;

  v9 = obj_p[0];
  if (v8 && obj_p[0])
  {
    acl_free(obj_p[0]);
    v9 = 0;
    obj_p[0] = 0;
  }

  v7 = v8;
  if (error)
  {
LABEL_8:
    if (!v9)
    {
      v10 = v7;
      *error = v7;
      v9 = obj_p[0];
    }
  }

LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (_acl)_CopySystemContainerACLWithNumACEs:(int)es isDir:(BOOL)dir inheritOnly:(BOOL)only withError:(id *)error
{
  onlyCopy = only;
  dirCopy = dir;
  obj_p[1] = *MEMORY[0x1E69E9840];
  obj_p[0] = acl_init(es);
  if (!obj_p[0])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__MCMFileManager__CopySystemContainerACLWithNumACEs_isDir_inheritOnly_withError___block_invoke;
    v19[3] = &unk_1E86B0B98;
    v20 = 0;
    v13 = __81__MCMFileManager__CopySystemContainerACLWithNumACEs_isDir_inheritOnly_withError___block_invoke(v19);

    v14 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (onlyCopy)
  {
    v10 = 352;
  }

  else
  {
    v10 = 96;
  }

  if (dirCopy)
  {
    v11 = 16382;
  }

  else
  {
    v11 = 16318;
  }

  if (dirCopy)
  {
    v12 = v10;
  }

  else
  {
    v12 = 16;
  }

  v18 = 0;
  [(MCMFileManager *)self _CreateSystemUserACEInACL:obj_p withPermissions:v11 andFlags:v12 withError:&v18];
  v13 = v18;
  v14 = obj_p[0];
  if (v13 && obj_p[0])
  {
    acl_free(obj_p[0]);
    v14 = 0;
    obj_p[0] = 0;
  }

  if (error)
  {
LABEL_17:
    if (!v14)
    {
      v15 = v13;
      *error = v13;
      v14 = obj_p[0];
    }
  }

LABEL_19:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

id __81__MCMFileManager__CopySystemContainerACLWithNumACEs_isDir_inheritOnly_withError___block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_init() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CopySystemContainerACLWithNumACEs:isDir:inheritOnly:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75EC8;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)_CreateSystemUserACEInACL:(_acl *)l withPermissions:(int)permissions andFlags:(int)flags withError:(id *)error
{
  entry_p[1] = *MEMORY[0x1E69E9840];
  permset_p = 0;
  entry_p[0] = 0;
  __s = 0;
  flagset_p = 0;
  if (acl_create_entry(l, entry_p))
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke;
    v41[3] = &unk_1E86B0B98;
    v42 = 0;
    v9 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke(v41);
    v10 = v42;
    goto LABEL_3;
  }

  v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  __s = v12;
  if (v12)
  {
    v13 = v12;
    if (mbr_identifier_to_uuid(5, "systemusers", 0xBuLL, v12))
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_178;
      v37[3] = &unk_1E86B0B98;
      v14 = &v38;
      v38 = 0;
      v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_178(v37);
    }

    else
    {
      if (permissions)
      {
        if (acl_get_permset(entry_p[0], &permset_p))
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_184;
          v35[3] = &unk_1E86B0B98;
          v14 = &v36;
          v36 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_184(v35);
          goto LABEL_8;
        }

        if (acl_add_perm(permset_p, permissions))
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_190;
          v32[3] = &unk_1E86B0618;
          permissionsCopy = permissions;
          v14 = &v33;
          v33 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_190(v32);
          goto LABEL_8;
        }

        if (acl_set_permset(entry_p[0], permset_p))
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_196;
          v30[3] = &unk_1E86B0B98;
          v14 = &v31;
          v31 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_196(v30);
          goto LABEL_8;
        }
      }

      if (flags)
      {
        if (acl_get_flagset_np(entry_p[0], &flagset_p))
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_202;
          v28[3] = &unk_1E86B0B98;
          v14 = &v29;
          v29 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_202(v28);
          goto LABEL_8;
        }

        if (acl_add_flag_np(flagset_p, flags))
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_208;
          v25[3] = &unk_1E86B0618;
          flagsCopy = flags;
          v14 = &v26;
          v26 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_208(v25);
          goto LABEL_8;
        }

        if (acl_set_flagset_np(entry_p[0], flagset_p))
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_214;
          v23[3] = &unk_1E86B0B98;
          v14 = &v24;
          v24 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_214(v23);
          goto LABEL_8;
        }
      }

      if (acl_set_tag_type(entry_p[0], ACL_EXTENDED_ALLOW))
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_220;
        v21[3] = &unk_1E86B0B98;
        v14 = &v22;
        v22 = 0;
        v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_220(v21);
      }

      else
      {
        if (!acl_set_qualifier(entry_p[0], v13))
        {
          v9 = 0;
          v11 = 1;
LABEL_9:
          free(v13);
          memset_s(&__s, 8uLL, 0, 8uLL);
          if (!error)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }

        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_226;
        v19[3] = &unk_1E86B0B98;
        v14 = &v20;
        v20 = 0;
        v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_226(v19);
      }
    }

LABEL_8:
    v9 = v15;

    v11 = 0;
    goto LABEL_9;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_172;
  v39[3] = &unk_1E86B0B98;
  v40 = 0;
  v9 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_172(v39);
  v10 = v40;
LABEL_3:

  v11 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v11)
  {
    v16 = v9;
    *error = v9;
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_create_entry() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75DC0;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_172(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"failed to calloc nameUUID: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75DD8;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_178(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"mbr_identifier_to_uuid() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75DF0;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_184(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_get_permset() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75E08;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_190(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = __error();
  v5 = [v2 initWithFormat:@"acl_add_perm() failed to set perms %x: %s", v3, strerror(*v4)];
  v23[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v24[0] = v6;
  v24[1] = &unk_1F5A75E20;
  v7 = *MEMORY[0x1E696A578];
  v23[1] = @"SourceFileLine";
  v23[2] = v7;
  v24[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  if (*(a1 + 32))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 32))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 32);
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v20 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v10];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_196(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_permset() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75E38;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_202(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_get_flagset_np() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75E50;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_208(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = __error();
  v5 = [v2 initWithFormat:@"acl_add_flag_np() failed to set flags %x: %s", v3, strerror(*v4)];
  v23[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v24[0] = v6;
  v24[1] = &unk_1F5A75E68;
  v7 = *MEMORY[0x1E696A578];
  v23[1] = @"SourceFileLine";
  v23[2] = v7;
  v24[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  if (*(a1 + 32))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 32))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 32);
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v20 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v10];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_214(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_flagset_np() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75E80;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_220(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_tag_type() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75E98;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_226(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_qualifier() failed: %s", strerror(*v3)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A75EB0;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)_traverseDirectory:(id)directory error:(id *)error withBlock:(id)block
{
  v43[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  blockCopy = block;
  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  v10 = container_log_handle_for_category();
  v11 = os_signpost_id_make_with_pointer(v10, directoryCopy);

  v12 = container_log_handle_for_category();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    path = [directoryCopy path];
    *buf = 138477827;
    v40 = path;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "TraversingDirectory", " path=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

  spid = v11;

  v43[0] = fileSystemRepresentation;
  v43[1] = 0;
  v16 = fts_open(v43, 84, 0);
  if (!v16)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke;
    v38[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v38[4] = fileSystemRepresentation;
    v25 = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke(v38);
    v18 = 0;
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v17 = v16;
  v32 = v11 - 1;
  errorCopy = error;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = fts_read(v17);
    if (!v21)
    {
      break;
    }

    fts_info = v21->fts_info;
    if (fts_info == 10 || fts_info == 7)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_154;
      v37[3] = &__block_descriptor_48_e14___NSError_8__0l;
      v37[4] = fileSystemRepresentation;
      v37[5] = v21;
      v25 = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_154(v37);

LABEL_15:
      v20 = 0;
      goto LABEL_17;
    }

    ++v18;
    v36 = v19;
    v24 = blockCopy[2](blockCopy, v21, &v36);
    v25 = v36;

    v20 = 1;
    v19 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v25 = v19;
LABEL_17:
  error = errorCopy;
  v14 = v32;
  if (fts_close(v17))
  {
    if (!v25)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_160;
      v35[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v35[4] = fileSystemRepresentation;
      v25 = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_160(v35);
    }

    goto LABEL_20;
  }

LABEL_21:
  v26 = container_log_handle_for_category();
  v27 = v26;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    path2 = [directoryCopy path];
    *buf = 138478083;
    v40 = path2;
    v41 = 2050;
    v42 = v18;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v27, OS_SIGNPOST_INTERVAL_END, spid, "TraversingDirectory", " path=%{private, signpost.description:attribute}@  numNodes=%{public, signpost.description:attribute}llu ", buf, 0x16u);
  }

  if (!((error == 0) | v20 & 1))
  {
    v29 = v25;
    *error = v25;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

id __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"fts_open failed for %s with error %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _traverseDirectory:error:withBlock:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75D78;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_154(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error for path %s: %s", *(a1 + 32), strerror(*(*(a1 + 40) + 56))];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _traverseDirectory:error:withBlock:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A75D90;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(*(a1 + 40) + 56) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_160(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"fts_close failed for %s with error %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _traverseDirectory:error:withBlock:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75DA8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)createTemporaryDirectoryInDirectoryURL:(id)l error:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self createTemporaryDirectoryInDirectoryURL:l withNamePrefix:@"temp." error:error];
}

- (id)createTemporaryDirectoryInDirectoryURL:(id)l withNamePrefix:(id)prefix error:(id *)error
{
  __s[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  prefixCopy = prefix;
  v9 = prefixCopy;
  __s[0] = 0;
  if (lCopy)
  {
    prefixCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@XXXXXX", prefixCopy];
    v11 = [lCopy URLByAppendingPathComponent:prefixCopy isDirectory:1];
    v12 = strdup([v11 fileSystemRepresentation]);
    __s[0] = v12;
    if (mkdtemp(v12))
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 isDirectory:1 relativeToURL:0];
      v14 = 0;
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke_139;
    v19[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v19[4] = v12;
    v14 = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke_139(v19);
    v13 = 0;
    if (v12)
    {
LABEL_7:
      free(v12);
      memset_s(__s, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke;
    v20[3] = &unk_1E86B0B98;
    v21 = prefixCopy;
    v14 = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke(v20);

    v11 = 0;
    prefixCopy = 0;
    v13 = 0;
  }

LABEL_8:
  if (error && !v13)
  {
    v15 = v14;
    *error = v14;
  }

  v16 = v13;

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

id __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil base directory when trying to create temporary directory for %@", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createTemporaryDirectoryInDirectoryURL:withNamePrefix:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A75D48;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke_139(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to create temp dir at path %s : %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createTemporaryDirectoryInDirectoryURL:withNamePrefix:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75D60;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)replaceItemAtDestinationURL:(id)l withSourceURL:(id)rL swapped:(BOOL *)swapped error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  rLCopy = rL;
  lCopy = l;
  fileSystemRepresentation = [rL fileSystemRepresentation];
  fileSystemRepresentation2 = [lCopy fileSystemRepresentation];

  v14 = MEMORY[0x1E69E9988];
  v15 = (*(*MEMORY[0x1E69E9988] + 640))(fileSystemRepresentation, fileSystemRepresentation2, 2);
  if (v15 < 0 && (*__error() != 45 || ((*(*v14 + 640))(fileSystemRepresentation, fileSystemRepresentation2, 0) & 0x80000000) != 0))
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__MCMFileManager_replaceItemAtDestinationURL_withSourceURL_swapped_error___block_invoke;
    v22[3] = &__block_descriptor_48_e14___NSError_8__0l;
    v22[4] = fileSystemRepresentation2;
    v22[5] = fileSystemRepresentation;
    v18 = __74__MCMFileManager_replaceItemAtDestinationURL_withSourceURL_swapped_error___block_invoke(v22);
    if (error)
    {
      v18 = v18;
      v19 = 0;
      *error = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (swapped)
    {
      *swapped = v15 >= 0;
    }

    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = "Replaced";
      *buf = 136315650;
      if (v15 >= 0)
      {
        v17 = "Swapped";
      }

      v24 = v17;
      v25 = 2080;
      v26 = fileSystemRepresentation2;
      v27 = 2080;
      v28 = fileSystemRepresentation;
      _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_INFO, "%s [%s] <-> [%s].", buf, 0x20u);
    }

    v18 = 0;
    v19 = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

id __74__MCMFileManager_replaceItemAtDestinationURL_withSourceURL_swapped_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not replace [%s] with file [%s]", *(a1 + 32), *(a1 + 40)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager replaceItemAtDestinationURL:withSourceURL:swapped:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A75D30;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self _moveItemAtURL:l toURL:rL failIfSrcMissing:1 error:error];
}

- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self _copyItemAtURL:l toURL:rL failIfSrcMissing:1 error:error];
}

- (BOOL)moveItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self _moveItemAtURL:l toURL:rL failIfSrcMissing:0 error:error];
}

- (BOOL)copyItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMFileManager *)self _copyItemAtURL:l toURL:rL failIfSrcMissing:0 error:error];
}

- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];
  if (!missing)
  {
    memset(&v34, 0, sizeof(v34));
    if (lstat(fileSystemRepresentation, &v34))
    {
      if (*__error() != 2)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke;
        v33[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v33[4] = fileSystemRepresentation;
        v15 = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke(v33);
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  rename(fileSystemRepresentation, fileSystemRepresentation2, v13);
  if (!v16)
  {
LABEL_13:
    v21 = 0;
    v23 = "";
    goto LABEL_14;
  }

  if (*__error() != 18)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke_115;
    v32[3] = &__block_descriptor_48_e14___NSError_8__0l;
    v32[4] = fileSystemRepresentation;
    v32[5] = fileSystemRepresentation2;
    v15 = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke_115(v32);
LABEL_18:
    v21 = v15;
    if (error)
    {
LABEL_19:
      v26 = v21;
      v25 = 0;
      *error = v21;
      goto LABEL_22;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v31 = 0;
  v17 = [(MCMFileManager *)self _copyItemAtURL:lCopy toURL:rLCopy failIfSrcMissing:1 error:&v31];
  v18 = v31;
  v19 = v18;
  if (!v17)
  {
    v21 = v18;
    if (error)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v30 = v18;
  v20 = [(MCMFileManager *)self removeItemAtURL:lCopy error:&v30];
  v21 = v30;

  if (!v20)
  {
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      v34.st_dev = 138412546;
      *&v34.st_mode = path;
      WORD2(v34.st_ino) = 2112;
      *(&v34.st_ino + 6) = v21;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to remove move source after copy at %@ : %@", &v34, 0x16u);
    }
  }

  v23 = "(using copy-delete) ";
LABEL_14:
  v24 = container_log_handle_for_category();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v34.st_dev = 136315650;
    *&v34.st_mode = v23;
    WORD2(v34.st_ino) = 2080;
    *(&v34.st_ino + 6) = fileSystemRepresentation;
    HIWORD(v34.st_gid) = 2080;
    *&v34.st_rdev = fileSystemRepresentation2;
    _os_log_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_INFO, "Moved %s[%s] → [%s].", &v34, 0x20u);
  }

  v25 = 1;
LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

id __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke_115(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"rename of [%s] to [%s] failed: %s", v4, v3, strerror(*v5)];
  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A75D18;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"stat of [%s] failed: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75D00;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_copyItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  if (missing || (memset(&v22, 0, sizeof(v22)), !lstat([lCopy fileSystemRepresentation], &v22)))
  {
    if (!copyfile([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 0, 0x10C800Fu))
    {
      v13 = 0;
      v12 = 1;
      goto LABEL_14;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke_104;
    v17[3] = &unk_1E86B0BE8;
    v18 = lCopy;
    v19 = rLCopy;
    v13 = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke_104(v17);

    v12 = 0;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *__error();
    v12 = v11 == 2;
    if (v11 == 2)
    {
      v13 = 0;
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke;
      v20[3] = &unk_1E86B0B98;
      v21 = lCopy;
      v13 = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke(v20);

      if (!error)
      {
        goto LABEL_14;
      }
    }
  }

  if (!v12)
  {
    v14 = v13;
    v12 = 0;
    *error = v13;
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

id __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"stat of %@ failed: %s", v3, strerror(*v4)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _copyItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75CD0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke_104(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = __error();
  v6 = [v2 initWithFormat:@"copyfile of %@ to %@ failed: %s", v3, v4, strerror(*v5)];

  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _copyItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A75CE8;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)targetOfSymbolicLinkAtURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v19, 0, sizeof(v19));
  bzero(v18, 0x401uLL);
  if (lstat([lCopy fileSystemRepresentation], &v19))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke;
    v16[3] = &unk_1E86B0B98;
    v17 = lCopy;
    v6 = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke(v16);
    v7 = v17;
  }

  else if ((v19.st_mode & 0xF000) == 0xA000)
  {
    if (readlink([lCopy fileSystemRepresentation], v18, 0x400uLL) > 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
      v6 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_93;
    v12[3] = &unk_1E86B0B98;
    v13 = lCopy;
    v6 = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_93(v12);
    v7 = v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_87;
    v14[3] = &unk_1E86B0B98;
    v15 = lCopy;
    v6 = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_87(v14);
    v7 = v15;
  }

  v8 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v8)
  {
    v9 = v6;
    *error = v6;
  }

LABEL_12:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

id __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"fetching target of symlink from [%@] failed: file exists and lstat on it failed: %s", v3, strerror(*v4)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager targetOfSymbolicLinkAtURL:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75C88;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_87(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"fetching target of symlink from [%@] failed: file exists and is not a symlink: %s", v3, strerror(17)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager targetOfSymbolicLinkAtURL:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A75CA0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_93(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"fetching target of symlink from [%@] failed: file exists, is a symlink, but its target could not be read: %s", v3, strerror(*v4)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager targetOfSymbolicLinkAtURL:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75CB8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)symbolicallyLinkURL:(id)l toSymlinkTarget:(id)target error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  targetCopy = target;
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    path = [lCopy path];
    *buf = 138412546;
    v36 = path;
    v37 = 2112;
    v38 = targetCopy;
    _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Creating symlink [%@] → [%@]", buf, 0x16u);
  }

  if (!symlink([targetCopy UTF8String], objc_msgSend(lCopy, "fileSystemRepresentation")))
  {
    goto LABEL_8;
  }

  if (*__error() == 17)
  {
    v31 = 0;
    v11 = [(MCMFileManager *)self targetOfSymbolicLinkAtURL:lCopy error:&v31];
    v12 = v31;
    if (v11)
    {
      if ([targetCopy isEqualToString:v11])
      {

LABEL_8:
        v13 = 0;
        v14 = 1;
        goto LABEL_16;
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_76;
      v23[3] = &unk_1E86B05C8;
      v15 = &v24;
      v24 = lCopy;
      v16 = &v25;
      v25 = targetCopy;
      v17 = &v26;
      v26 = v11;
      v18 = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_76(v23);
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_70;
      v27[3] = &unk_1E86B05C8;
      v15 = &v28;
      v28 = lCopy;
      v16 = &v29;
      v29 = targetCopy;
      v17 = &v30;
      v30 = v12;
      v18 = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_70(v27);
    }

    v13 = v18;
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke;
    v32[3] = &unk_1E86B0BE8;
    v33 = lCopy;
    v34 = targetCopy;
    v13 = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke(v32);

    v12 = v33;
  }

  if (error)
  {
    v19 = v13;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

id __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"symlink from [%@] → [%@] failed: %s", v3, v4, strerror(*v5)];

  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager symbolicallyLinkURL:toSymlinkTarget:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A75C40;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_70(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"symlink from [%@] → [%@] failed: %@", v3, *(a1 + 40), *(a1 + 48)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager symbolicallyLinkURL:toSymlinkTarget:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A75C58;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_76(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = __error();
  v7 = [v2 initWithFormat:@"symlink from [%@] → [%@] failed: file exists, is a symlink, but its target is different [%@]: %s", v3, v5, v4, strerror(*v6)];

  v14[0] = @"FunctionName";
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager symbolicallyLinkURL:toSymlinkTarget:error:]_block_invoke"];
  v15[0] = v8;
  v15[1] = &unk_1F5A75C70;
  v9 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v9;
  v15[2] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mkpath_np of %s failed: %s", *(a1 + 32), strerror(*(a1 + 40))];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A75B98;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_26(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"mkdir of %s failed: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75BB0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_33(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"opendir of %s failed: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75BC8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_39(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"dirfd of %s failed: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75BE0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_46(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to fstat() on directory %s: %s", v3, strerror(*v4)];
  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A75BF8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_52(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"Failed to setclass(%d) on directory %s: %s", v4, v3, strerror(*v5)];
  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A75C10;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_58(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"Failed to chown(%@) %s: %s", v4, v3, strerror(*v5)];
  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A75C28;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  value = 0;
  lCopy = l;
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (!l)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil url passed to -removeItemAtURL:error:"];
    v36[0] = @"FunctionName";
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeItemAtURL:error:]_block_invoke"];
    *buf = v21;
    *&buf[8] = &unk_1F5A75B50;
    v22 = *MEMORY[0x1E696A578];
    v36[1] = @"SourceFileLine";
    v36[2] = v22;
    *&buf[16] = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v36 count:3];

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:v23];

    v25 = 0;
    goto LABEL_25;
  }

  v8 = fileSystemRepresentation;
  v9 = 100;
  do
  {
    value = 0;
    v10 = removefile_state_alloc();
    if (removefile_state_set(v10, 3u, _removefile_error_callback))
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = __error();
        v16 = strerror(*v15);
        *buf = 136315138;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "removefile_state_set REMOVEFILE_STATE_ERROR_CALLBACK failed: %s", buf, 0xCu);
      }
    }

    if (removefile_state_set(v10, 4u, &value))
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "removefile_state_set REMOVEFILE_STATE_ERROR_CONTEXT failed: %s", buf, 0xCu);
      }
    }

    if (removefile(v8, v10, 1u))
    {
      v13 = *__error();
    }

    else
    {
      v13 = 0;
    }

    removefile_state_free(v10);
    v14 = v9 - 1;
    if (value != 35)
    {
      break;
    }

    --v9;
  }

  while (v9);
  if ((v13 & 0xFFFFFFFD) != 0)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __40__MCMFileManager_removeItemAtURL_error___block_invoke_9;
    v33[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v33[4] = v8;
    v34 = v13;
    v19 = __40__MCMFileManager_removeItemAtURL_error___block_invoke_9(v33);
    goto LABEL_21;
  }

  if ((value & 0xFFFFFFFD) != 0)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __40__MCMFileManager_removeItemAtURL_error___block_invoke_15;
    v31[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v31[4] = v8;
    v32 = value;
    v19 = __40__MCMFileManager_removeItemAtURL_error___block_invoke_15(v31);
LABEL_21:
    v24 = v19;
    v25 = 0;
    if (v14)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v30 = container_log_handle_for_category();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_DEBUG, "removefile([%s]) succeeded", buf, 0xCu);
  }

  v24 = 0;
  v25 = 1;
  if (!v14)
  {
LABEL_22:
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 1026;
      *&buf[14] = v13;
      *&buf[18] = 1026;
      *&buf[20] = value;
      _os_log_fault_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_FAULT, "Hit maximum iterations trying to removefile([%s]); removefile error = %{public}d, recovery error = %{public}d", buf, 0x18u);
    }
  }

LABEL_25:
  if (error && !v25)
  {
    v27 = v24;
    *error = v24;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v25;
}

id __40__MCMFileManager_removeItemAtURL_error___block_invoke_9(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"removefile of [%s] failed: (%d) %s", *(a1 + 32), *(a1 + 40), strerror(*(a1 + 40))];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeItemAtURL:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A75B68;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __40__MCMFileManager_removeItemAtURL_error___block_invoke_15(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"removefile of [%s] failed", *(a1 + 32)];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeItemAtURL:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A75B80;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end