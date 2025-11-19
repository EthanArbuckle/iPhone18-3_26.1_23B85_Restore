@interface BRQueryItem
+ (id)askDaemonQueryItemForURL:(id)a3 andFakeFSEvent:(BOOL)a4 error:(id *)a5;
+ (id)containerItemForContainer:(id)a3 withRepresentativeItem:(id)a4;
+ (id)containerItemForContainer:(id)a3 withRepresentativeItem:(id)a4 zoneRowID:(id)a5;
+ (void)initialize;
- (BOOL)_isInSharedZone;
- (BOOL)_isSharedFolderSubItem;
- (BOOL)canMerge:(id)a3;
- (BOOL)editedSinceShared;
- (BOOL)fp_isLastModifiedByCurrentUser;
- (BOOL)isBRAlias;
- (BOOL)isConflicted;
- (BOOL)isDead;
- (BOOL)isDirectory;
- (BOOL)isDocument;
- (BOOL)isDownloadActive;
- (BOOL)isDownloaded;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQueryItem:(id)a3;
- (BOOL)isEvictable;
- (BOOL)isFinderBookmark;
- (BOOL)isHidden;
- (BOOL)isHiddenExt;
- (BOOL)isInTransfer;
- (BOOL)isLive;
- (BOOL)isMostRecentVersionDownloaded;
- (BOOL)isNetworkOffline;
- (BOOL)isPackage;
- (BOOL)isPreCrash;
- (BOOL)isShared;
- (BOOL)isSharedByCurrentUser;
- (BOOL)isSymlink;
- (BOOL)isTopLevel;
- (BOOL)isTopLevelSharedItem;
- (BOOL)isTrashed;
- (BOOL)isUploadActive;
- (BOOL)isUploaded;
- (BOOL)isUploading;
- (BRFileObjectID)fileObjectID;
- (BRFileObjectID)parentFileObjectID;
- (BRQueryItem)initWithCoder:(id)a3;
- (BRQueryItem)initWithFPItem:(id)a3;
- (BRQueryItem)initWithQueryItem:(id)a3;
- (NSArray)decorations;
- (NSData)tagData;
- (NSData)versionIdentifier;
- (NSDate)contentModificationDate;
- (NSDate)creationDate;
- (NSDate)lastUsedDate;
- (NSDictionary)userInfo;
- (NSFileProviderItemVersion)itemVersion;
- (NSNumber)btime;
- (NSNumber)documentSize;
- (NSNumber)favoriteRank;
- (NSNumber)isDownloadRequested;
- (NSNumber)lastUsedTime;
- (NSNumber)mtime;
- (NSNumber)size;
- (NSPersonNameComponents)mostRecentEditorNameComponents;
- (NSString)appLibraryID;
- (NSString)collaborationIdentifier;
- (NSString)containerDisplayName;
- (NSString)description;
- (NSString)displayName;
- (NSString)filename;
- (NSString)logicalName;
- (NSString)parentItemIdentifier;
- (NSString)parentPath;
- (NSString)path;
- (NSString)physicalName;
- (NSString)sharingPermissions;
- (NSURL)localRepresentationURL;
- (NSURL)url;
- (id)attributeForKey:(id)a3;
- (id)attributeForName:(id)a3;
- (id)attributesForNames:(id)a3;
- (id)containerIDIfDesktopOrDocuments;
- (id)copyWithZone:(_NSZone *)a3;
- (id)downloadingStatus;
- (id)localizedFileNameIfDesktopOrDocuments;
- (id)owner;
- (id)parentFileID;
- (id)sharedItemRole;
- (unint64_t)capabilities;
- (unint64_t)fileSystemFlags;
- (unint64_t)hash;
- (unsigned)br_downloadStatus;
- (unsigned)br_shareOptions;
- (unsigned)br_uploadStatus;
- (unsigned)diffs;
- (void)_mergeAttrs:(id)a3;
- (void)_mergeURL:(id)a3;
- (void)attachLogicalExtension:(id)a3 physicalExtension:(id)a4;
- (void)clearDiffs;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)markDead;
- (void)merge:(id)a3 allowMergingFileObjectIDIfPossible:(BOOL)a4;
- (void)parentFileID;
- (void)setAttribute:(id)a3 forKey:(id)a4;
- (void)setIsNetworkOffline:(BOOL)a3;
- (void)setIsPreCrash:(BOOL)a3;
@end

@implementation BRQueryItem

+ (void)initialize
{
  v27[44] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    v2 = *MEMORY[0x1E696A5C0];
    v26[0] = *MEMORY[0x1E696A5C8];
    v26[1] = v2;
    v27[0] = &__block_literal_global_16;
    v27[1] = &__block_literal_global_66;
    v3 = *MEMORY[0x1E696A5E8];
    v26[2] = *MEMORY[0x1E696A5D0];
    v26[3] = v3;
    v27[2] = &__block_literal_global_68;
    v27[3] = &__block_literal_global_70;
    v4 = *MEMORY[0x1E696A5F8];
    v26[4] = *MEMORY[0x1E696A5F0];
    v26[5] = v4;
    v27[4] = &__block_literal_global_72;
    v27[5] = &__block_literal_global_74;
    v5 = *MEMORY[0x1E696A608];
    v26[6] = *MEMORY[0x1E696A600];
    v26[7] = v5;
    v27[6] = &__block_literal_global_76;
    v27[7] = &__block_literal_global_78_0;
    v6 = *MEMORY[0x1E696A5E0];
    v26[8] = *MEMORY[0x1E696A5B8];
    v26[9] = v6;
    v27[8] = &__block_literal_global_80;
    v27[9] = &__block_literal_global_82;
    v7 = *MEMORY[0x1E696A698];
    v26[10] = *MEMORY[0x1E696A5D8];
    v26[11] = v7;
    v27[10] = &__block_literal_global_84;
    v27[11] = &__block_literal_global_86;
    v8 = *MEMORY[0x1E696A6A0];
    v26[12] = *MEMORY[0x1E696A688];
    v26[13] = v8;
    v27[12] = &__block_literal_global_89;
    v27[13] = &__block_literal_global_91_0;
    v9 = *MEMORY[0x1E696A6D0];
    v26[14] = *MEMORY[0x1E696A6A8];
    v26[15] = v9;
    v27[14] = &__block_literal_global_93;
    v27[15] = &__block_literal_global_95;
    v10 = *MEMORY[0x1E696A6C0];
    v26[16] = *MEMORY[0x1E696A670];
    v26[17] = v10;
    v27[16] = &__block_literal_global_97;
    v27[17] = &__block_literal_global_99;
    v11 = *MEMORY[0x1E696A668];
    v26[18] = *MEMORY[0x1E696A6C8];
    v26[19] = v11;
    v27[18] = &__block_literal_global_101;
    v27[19] = &__block_literal_global_103;
    v12 = *MEMORY[0x1E696A6E8];
    v26[20] = *MEMORY[0x1E696A6D8];
    v26[21] = v12;
    v27[20] = &__block_literal_global_105;
    v27[21] = &__block_literal_global_107;
    v13 = *MEMORY[0x1E696A660];
    v26[22] = *MEMORY[0x1E696A6B0];
    v26[23] = v13;
    v27[22] = &__block_literal_global_109;
    v27[23] = &__block_literal_global_111;
    v14 = *MEMORY[0x1E696A6B8];
    v26[24] = *MEMORY[0x1E696A6E0];
    v26[25] = v14;
    v27[24] = &__block_literal_global_113;
    v27[25] = &__block_literal_global_115;
    v15 = *MEMORY[0x1E696A708];
    v26[26] = *MEMORY[0x1E696A710];
    v26[27] = v15;
    v27[26] = &__block_literal_global_117;
    v27[27] = &__block_literal_global_119;
    v26[28] = *MEMORY[0x1E696A700];
    v26[29] = @"NSMetadataUbiquitousSharedItemLastEditorNameKey";
    v27[28] = &__block_literal_global_121;
    v27[29] = &__block_literal_global_123;
    v16 = *MEMORY[0x1E696A718];
    v26[30] = @"NSMetadataUbiquitousSharedItemLastEditorNameComponentsKey";
    v26[31] = v16;
    v27[30] = &__block_literal_global_125;
    v27[31] = &__block_literal_global_127;
    v17 = *MEMORY[0x1E696A730];
    v26[32] = *MEMORY[0x1E696A6F0];
    v26[33] = v17;
    v27[32] = &__block_literal_global_129;
    v27[33] = &__block_literal_global_131;
    v26[34] = *MEMORY[0x1E696A6F8];
    v26[35] = @"BRURLTagNamesKey";
    v27[34] = &__block_literal_global_133;
    v27[35] = &__block_literal_global_135_0;
    v26[36] = @"BRMetadataItemFileObjectIdentifierKey";
    v26[37] = @"BRMetadataItemParentFileIDKey";
    v27[36] = &__block_literal_global_137;
    v27[37] = &__block_literal_global_139;
    v26[38] = @"BRMetadataUbiquitousItemDownloadingSizeKey";
    v26[39] = @"BRMetadataUbiquitousItemUploadingSizeKey";
    v27[38] = &__block_literal_global_141_0;
    v27[39] = &__block_literal_global_143;
    v26[40] = @"BRModifiedSinceSharedKey";
    v26[41] = @"BRMetadataIsTopLevelSharedItemKey";
    v27[40] = &__block_literal_global_145;
    v27[41] = &__block_literal_global_147;
    v26[42] = @"BRMetadataCreatorNameComponentsKey";
    v26[43] = @"BRMetadataUbiquitousItemFavoriteRankKey";
    v27[42] = &__block_literal_global_149;
    v27[43] = &__block_literal_global_151;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:44];
    v19 = _getterMap;
    _getterMap = v18;

    v20 = [_getterMap keyEnumerator];
    v21 = [v20 allObjects];
    v22 = _allKeys;
    _allKeys = v21;

    v23 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:_allKeys];
    v24 = _sharedKeySet;
    _sharedKeySet = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)isTrashed
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = HIWORD(*&v2->_flags.var0) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isDead
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 & 0x30) == 16;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_opt_class();
  fileObjectID = v4->_fileObjectID;
  v7 = BRQueryItemFieldsPrettyPrint(v4->_diffs);
  v8 = BRCPrettyPrintEnum(*&v4->_flags.var0 & 3, br_download_status_entries);
  [(NSString *)v3 appendFormat:@"<%@ %@ (%@) dn:%s up:%s", v5, fileObjectID, v7, v8, BRCPrettyPrintEnum((LODWORD(v4->_flags.value) >> 2) & 3, br_upload_status_entries)];

  if (v4->_url)
  {
    [(NSString *)v3 appendString:@" url:"];
    v9 = [(NSURL *)v4->_url path];
    v10 = [v9 fp_obfuscatedPath];
    [(NSString *)v3 appendString:v10];
  }

  var0 = v4->_flags.var0;
  if ((var0 & 0x100000) != 0)
  {
    [(NSString *)v3 appendString:@" roDB"];
    var0 = v4->_flags.var0;
  }

  if ((var0 & 0x40) != 0)
  {
    [(NSString *)v3 appendString:@" conflicted"];
  }

  if ([(BRQueryItem *)v4 isHidden])
  {
    [(NSString *)v3 appendString:@" hidden"];
  }

  if ([(BRQueryItem *)v4 isHiddenExt])
  {
    [(NSString *)v3 appendString:@" h-ext"];
  }

  v12 = (*&v4->_flags.var0 >> 4) & 3;
  if (v12 > 1)
  {
    if (v12 == 3)
    {
      v13 = @" evicted";
    }

    else
    {
      v13 = @" fault";
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = @" dead";
  }

  [(NSString *)v3 appendString:v13];
LABEL_18:
  v14 = v4->_flags.var0;
  if ((v14 & 0x8000) != 0)
  {
    [(NSString *)v3 appendString:@" br-alias"];
    v14 = v4->_flags.var0;
  }

  if ((v14 & 0x200) != 0)
  {
    [(NSString *)v3 appendString:@" downloading"];
    v14 = v4->_flags.var0;
  }

  if ((v14 & 0x100) != 0)
  {
    [(NSString *)v3 appendString:@" uploading"];
  }

  v15 = [(BRQueryItem *)v4 subclassDescription];
  if (v15)
  {
    [(NSString *)v3 appendString:v15];
  }

  v16 = (*&v4->_flags.var0 >> 11) & 7;
  if (v16)
  {
    switch(v16)
    {
      case 1:
        v17 = @" shared-by-me-r";
        goto LABEL_31;
      case 2:
        v17 = @" shared-by-me-rw";
LABEL_31:
        [(NSString *)v3 appendString:v17];
        goto LABEL_36;
      case 4:
        v18 = "rw";
        break;
      default:
        v18 = "ro";
        break;
    }

    [(NSString *)v3 appendFormat:@" share:%s", v18];
  }

LABEL_36:
  v19 = v4->_flags.var0;
  if ((v19 & 0x3800) != 0)
  {
    if ((v19 & 0x200000) != 0)
    {
      v20 = @" sh-chd";
    }

    else
    {
      v20 = @" sh-top";
    }

    [(NSString *)v3 appendString:v20];
  }

  if ([(BRQueryItem *)v4 editedSinceShared])
  {
    [(NSString *)v3 appendFormat:@" ess"];
  }

  v21 = [(BRQueryItem *)v4 collaborationIdentifier];

  if (v21)
  {
    v22 = [(BRQueryItem *)v4 collaborationIdentifier];
    [(NSString *)v3 appendFormat:@" collabid: %@", v22];
  }

  v23 = [(BRQueryItem *)v4 attributeForKey:@"created-by-user"];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    [(NSString *)v3 appendFormat:@" cbm"];
  }

  if (v4->_appLibraryID)
  {
    [(NSString *)v3 appendFormat:@" ct:%@", v4->_appLibraryID];
  }

  if (v4->_parentPath)
  {
    [(NSString *)v3 appendFormat:@" p:'%@'", v4->_parentPath];
  }

  if (v4->_parentFileObjectID)
  {
    [(NSString *)v3 appendFormat:@" pid:%@", v4->_parentFileObjectID];
  }

  if (v4->_shareRootFileObjectID)
  {
    [(NSString *)v3 appendFormat:@" shroot:%@", v4->_shareRootFileObjectID];
  }

  logicalName = v4->_logicalName;
  if (logicalName)
  {
    v26 = [(NSString *)logicalName fp_obfuscatedFilename];
    [(NSString *)v3 appendFormat:@" n:'%@'", v26];
  }

  physicalName = v4->_physicalName;
  if (physicalName)
  {
    v28 = [(NSString *)physicalName fp_obfuscatedFilename];
    [(NSString *)v3 appendFormat:@" f:'%@'", v28];
  }

  kind = v4->_flags.var0.kind;
  if (kind > 4)
  {
    v30 = &stru_1F23D4ED0;
  }

  else
  {
    v30 = off_1E7A15B10[kind];
  }

  [(NSString *)v3 appendFormat:@" %@:%llu", v30, [(BRFileObjectID *)v4->_fileObjectID rawID]];
  size = v4->_size;
  if (size)
  {
    v32 = BRLocalizedFileSizeDescriptionWithExactCount([(NSNumber *)size longLongValue]);
    [(NSString *)v3 appendFormat:@" sz:%@", v32];
  }

  if (!v4->_flags.var0.kind)
  {
    [(NSString *)v3 appendFormat:@" ch:%@", v4->_childItemCount];
  }

  if (v4->_mtime)
  {
    [(NSString *)v3 appendFormat:@" mt:%@", v4->_mtime];
  }

  if (v4->_btime)
  {
    [(NSString *)v3 appendFormat:@" bt:%@", v4->_btime];
  }

  if (v4->_lastUsedTime)
  {
    [(NSString *)v3 appendFormat:@" last-open:%@", v4->_lastUsedTime];
  }

  if (v4->_favoriteRank)
  {
    [(NSString *)v3 appendFormat:@" favorite-rank:%@", v4->_favoriteRank];
  }

  if (v4->_attrs)
  {
    [(NSString *)v3 appendString:@" a:{"];
    attrs = v4->_attrs;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __26__BRQueryItem_description__block_invoke;
    v41[3] = &unk_1E7A159B8;
    v34 = v3;
    v42 = v34;
    [(NSMutableDictionary *)attrs enumerateKeysAndObjectsUsingBlock:v41];
    [(NSString *)v34 replaceCharactersInRange:[(NSString *)v34 length]- 1 withString:1, @"}"];
  }

  xattrs = v4->_xattrs;
  if (xattrs && [(NSDictionary *)xattrs count])
  {
    [(NSString *)v3 appendFormat:@" xattrs"];
  }

  conflictingVersions = v4->_conflictingVersions;
  if (conflictingVersions && [(NSArray *)conflictingVersions count])
  {
    [(NSString *)v3 appendFormat:@" conflictingversions"];
  }

  symlinkTargetPath = v4->_symlinkTargetPath;
  if (symlinkTargetPath)
  {
    v38 = [(NSString *)symlinkTargetPath fp_obfuscatedPath];
    [(NSString *)v3 appendFormat:@" symlink-target:%@", v38];
  }

  [(NSString *)v3 appendFormat:@" content-policy:%ld", v4->_contentPolicy];
  [(NSString *)v3 appendString:@">"];

  objc_sync_exit(v4);
  v39 = v3;

  return v3;
}

- (NSDate)creationDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSNumber *)v2->_btime unsignedLongLongValue];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (NSString)filename
{
  v3 = [(BRQueryItem *)self localizedFileNameIfDesktopOrDocuments];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A5E8]];
  }

  v6 = v5;

  return v6;
}

- (id)localizedFileNameIfDesktopOrDocuments
{
  v2 = [(BRQueryItem *)self containerIDIfDesktopOrDocuments];
  v3 = v2;
  if (v2)
  {
    if ([v2 isEqualToString:@"com.apple.Desktop"])
    {
      v4 = +[BRContainer localizedNameForDesktopContainer];
LABEL_6:
      v5 = v4;
      goto LABEL_8;
    }

    if ([v3 isEqualToString:@"com.apple.Documents"])
    {
      v4 = +[BRContainer localizedNameForDocumentsContainer];
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)isDirectory
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_flags.var0.kind == 0;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)containerDisplayName
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if ([(BRFileObjectID *)v2->_fileObjectID isRootContainerItem])
  {
    v3 = 0;
  }

  else
  {
    v4 = [BRMangledID alloc];
    v5 = [(BRQueryItem *)v2 appLibraryID];
    v6 = [(BRMangledID *)v4 initWithAppLibraryName:v5];

    v7 = +[BRContainerCache containerCache];
    v8 = [v7 containerByID:v6];

    v3 = [v8 localizedName];
    if (!v3)
    {
      v9 = brc_bread_crumbs("[BRQueryItem containerDisplayName]", 1151);
      v10 = brc_default_log(0, 0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = [(BRQueryItem *)v2 url];
        v14 = 138412802;
        v15 = v13;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_fault_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_FAULT, "[CRIT] containerDisplayName is nil %@, %@%@", &v14, 0x20u);
      }
    }
  }

  objc_sync_exit(v2);

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)parentItemIdentifier
{
  if ([(BRQueryItem *)self isTrashed])
  {
    v3 = MEMORY[0x1E6967278];
  }

  else
  {
    parentFileObjectID = self->_parentFileObjectID;
    if (parentFileObjectID)
    {
      v5 = [(BRFileObjectID *)parentFileObjectID asString];
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E6967250];
  }

  v5 = *v3;
LABEL_7:

  return v5;
}

- (BOOL)isHidden
{
  v3 = [(BRQueryItem *)self logicalName];
  if ([v3 hasPrefix:@"."])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = (BYTE3(self->_flags.value) >> 2) & 1;
  }

  return v4;
}

- (NSString)logicalName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_logicalName;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isHiddenExt
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 14) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)editedSinceShared
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = HIBYTE(*&v2->_flags.var0) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)collaborationIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_collaborationIdentifier;
  objc_sync_exit(v2);

  return v3;
}

- (BRFileObjectID)fileObjectID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fileObjectID;
  objc_sync_exit(v2);

  return v3;
}

- (id)containerIDIfDesktopOrDocuments
{
  if ([(BRQueryItem *)self isDirectory])
  {
    v3 = [(BRQueryItem *)self logicalName];
    if (([v3 isEqualToString:@"Desktop"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Documents"))
    {
      v4 = [(BRQueryItem *)self url];
      v5 = [v4 br_containerIDIfIsDocumentsContainerURL];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBRAlias
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 15) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)appLibraryID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_appLibraryID;
  objc_sync_exit(v2);

  return v3;
}

- (BRFileObjectID)parentFileObjectID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_parentFileObjectID;
  objc_sync_exit(v2);

  return v3;
}

- (void)dealloc
{
  if ((self->_logicalHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  if ((self->_physicalHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = BRQueryItem;
  [(BRQueryItem *)&v3 dealloc];
}

- (NSFileProviderItemVersion)itemVersion
{
  v3 = objc_alloc(MEMORY[0x1E69674F0]);
  v4 = [v3 initWithMainContentVersion:self->_contentVersion equivalentContentVersions:self->_equivalentContentVersions mainMetadataVersion:self->_structureVersion equivalentMetadataVersions:MEMORY[0x1E695E0F0] lastEditorDeviceName:self->_lastEditorDeviceName];

  return v4;
}

- (BOOL)isFinderBookmark
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_flags.var0.kind == 3;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isSymlink
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_flags.var0.kind == 4;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isPackage
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_flags.var0.kind == 2;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isDocument
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_flags.var0.kind - 1 < 2;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)capabilities
{
  if ([(BRFileObjectID *)self->_fileObjectID isRootContainerItem])
  {
    v3 = 1;
  }

  else
  {
    v3 = 61;
  }

  [(BRQueryItem *)self isDirectory];
  if (![(BRFileObjectID *)self->_fileObjectID isRootContainerItem]&& (self->_flags.value & 0x20000) != 0)
  {
    if (![(BRQueryItem *)self isDirectory]|| (*&self->_flags.var0 & 0x3800) == 0x1800)
    {
      if ((*&self->_flags.var0 & 0x80000) == 0)
      {
        v3 |= 2uLL;
      }
    }

    else
    {
      v3 |= 2uLL;
    }
  }

  v4 = [(BRQueryItem *)self isBRAlias];
  v5 = v3 & 0xFFFFFFFFFFFFFFEFLL;
  if (v4)
  {
    v3 &= ~0x10uLL;
  }

  v6 = v3;
  if (((*&self->_flags.var0 >> 11) & 7u) - 3 <= 1)
  {
    v6 = v5;
    if ((*&self->_flags.var0 & 0x3800) == 0x1800)
    {
      v7 = [(BRQueryItem *)self _isSharedFolderSubItem];
      v8 = -19;
      if (v7)
      {
        v8 = -63;
      }

      v6 = v8 & v3;
    }
  }

  if ((self->_flags.value & 0x100000000) == 0)
  {
    v9 = [(BRQueryItem *)self parentItemIdentifier];
    if (([v9 isEqualToString:*MEMORY[0x1E6967250]] & 1) == 0)
    {

      goto LABEL_25;
    }

    v10 = [(BRQueryItem *)self filename];
    if ([v10 isEqualToString:@"Desktop"])
    {
    }

    else
    {
      v11 = [(BRQueryItem *)self filename];
      v12 = [v11 isEqualToString:@"Documents"];

      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  v6 &= 0xFFFFFFFFFFFFFF63;
LABEL_25:
  if ((self->_flags.value & 0x200000000) != 0)
  {
    v13 = *MEMORY[0x1E6967218];
  }

  else
  {
    v13 = 0;
  }

  return v13 | v6;
}

- (NSNumber)documentSize
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRQueryItem *)v2 attributeForName:*MEMORY[0x1E696A5F0]];
  objc_sync_exit(v2);

  return v3;
}

- (NSNumber)size
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_size;
  objc_sync_exit(v2);

  return v3;
}

- (NSDate)contentModificationDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSNumber *)v2->_mtime unsignedLongLongValue];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if ([(BRQueryItem *)v2 isDirectory])
  {
    v4 = [(BRQueryItem *)v2 creationDate];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
  objc_sync_exit(v2);

  return v5;
}

- (NSDate)lastUsedDate
{
  v2 = [(BRQueryItem *)self lastUsedTime];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)lastUsedTime
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastUsedTime;
  objc_sync_exit(v2);

  return v3;
}

- (NSData)tagData
{
  v2 = [(BRQueryItem *)self attributeForName:@"BRURLTagNamesKey"];
  if ([v2 count])
  {
    v3 = [v2 br_transform:&__block_literal_global_227];
    v4 = FPGetTagsDataForTags();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)favoriteRank
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_favoriteRank;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isUploaded
{
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A6C0]];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __25__BRQueryItem_initialize__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 br_uploadStatus];
  if (v3 >= 4)
  {
    v5 = brc_bread_crumbs("_getIsUploaded", 381);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __25__BRQueryItem_initialize__block_invoke_18_cold_1();
    }

    v4 = 0;
  }

  else
  {
    v4 = qword_1E7A15AD0[v3];
  }

  return v4;
}

- (unsigned)br_uploadStatus
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (LOWORD(v2->_flags.value) >> 2) & 3;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isUploading
{
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A6C8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isNetworkOffline
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 25) & 1;
  objc_sync_exit(v2);

  return v3;
}

id __25__BRQueryItem_initialize__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 br_uploadStatus] == 3 || !objc_msgSend(v2, "isNetworkOffline"))
  {
    v4 = [v2 attributeForKey:@"ulErr"];
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4355 userInfo:0];
    v4 = [v3 br_fileProviderError];
  }

  return v4;
}

- (BOOL)isDownloading
{
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A6A8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unsigned)br_downloadStatus
{
  v2 = self;
  objc_sync_enter(v2);
  var0 = v2->_flags.var0;
  objc_sync_exit(v2);

  return var0 & 3;
}

- (BOOL)isDownloaded
{
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A688]];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A690]];

  return v3 ^ 1;
}

id __25__BRQueryItem_initialize__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 br_downloadStatus] - 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = **(&unk_1E7A15AB8 + v2);
  }

  return v3;
}

- (BOOL)isMostRecentVersionDownloaded
{
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A688]];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A678]];

  return v3;
}

id __25__BRQueryItem_initialize__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDownloading] && objc_msgSend(v2, "br_downloadStatus") != 3 && objc_msgSend(v2, "isNetworkOffline"))
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4355 userInfo:0];
    v4 = [v3 br_fileProviderError];
  }

  else
  {
    v4 = [v2 attributeForKey:@"dlErr"];
  }

  return v4;
}

- (BOOL)isShared
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 & 0x3800) != 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isSharedByCurrentUser
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A6F8]];
  v3 = *MEMORY[0x1E696A740];
  v10[0] = *MEMORY[0x1E696A738];
  v10[1] = v3;
  v5 = *MEMORY[0x1E695DD48];
  v11[0] = *MEMORY[0x1E695DD40];
  v4 = v11[0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v6 objectForKeyedSubscript:v2];
  LOBYTE(v4) = [v7 isEqualToString:v4];

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)sharedItemRole
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = ((*&v2->_flags.var0 >> 11) & 7) - 1;
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E7A15AF0 + v3);
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)fp_isLastModifiedByCurrentUser
{
  if ([(BRQueryItem *)self isShared]&& ![(BRQueryItem *)self editedSinceShared])
  {
    return 0;
  }

  v3 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A700]];
  v4 = v3 == 0;

  return v4;
}

- (NSPersonNameComponents)mostRecentEditorNameComponents
{
  if ([(BRQueryItem *)self editedSinceShared])
  {
    v3 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A700]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)userInfo
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_zoneRowID && self->_parentZoneRowID)
  {
    v4 = [(BRQueryItem *)self url];
    v5 = [v4 br_isInTrash];

    if (v5)
    {
      [(NSDictionary *)v3 setObject:self->_appLibraryID forKeyedSubscript:@"palid"];
    }

    [(NSDictionary *)v3 setObject:self->_zoneRowID forKeyedSubscript:@"zid"];
    [(NSDictionary *)v3 setObject:self->_parentZoneRowID forKeyedSubscript:@"pzid"];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:(*&self->_flags.var0 & 0x3800) != 0];
    [(NSDictionary *)v3 setObject:v6 forKeyedSubscript:@"s"];

    if ((*&self->_flags.var0 & 0x3800) == 0x1800)
    {
      [(NSDictionary *)v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ro"];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BRQueryItem isUploaded](self, "isUploaded")}];
      [(NSDictionary *)v3 setObject:v7 forKeyedSubscript:@"up"];
    }

    shareRootFileObjectID = self->_shareRootFileObjectID;
    if (shareRootFileObjectID)
    {
      v9 = [(BRFileObjectID *)shareRootFileObjectID asString];
      [(NSDictionary *)v3 setObject:v9 forKeyedSubscript:@"sr"];
    }

    if ([(BRQueryItem *)self isDirectory])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:(*&self->_flags.var0 & 0xC00000) != 0];
      [(NSDictionary *)v3 setObject:v10 forKeyedSubscript:@"cs"];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(*&self->_flags.var0 >> 23) & 1];
      [(NSDictionary *)v3 setObject:v11 forKeyedSubscript:@"csbm"];

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(*&self->_flags.var0 >> 22) & 1];
      [(NSDictionary *)v3 setObject:v12 forKeyedSubscript:@"cstm"];
    }

    if ([(BRQueryItem *)self _isInSharedZone])
    {
      v13 = &unk_1F23E6868;
    }

    else
    {
      v13 = &unk_1F23E6880;
    }

    [(NSDictionary *)v3 setObject:v13 forKeyedSubscript:@"isz"];
    if ([(BRQueryItem *)self _isSharedFolderSubItem]&& ![(BRQueryItem *)self editedSinceShared])
    {
      v14 = [(BRQueryItem *)self attributeForKey:@"creator-components"];
      [(NSDictionary *)v3 setObject:v14 forKeyedSubscript:@"crnc"];
    }

    if ([(BRQueryItem *)self isPackage])
    {
      [(NSDictionary *)v3 setObject:self->_size forKeyedSubscript:@"pkg_size"];
    }
  }

  v15 = [(BRQueryItem *)self attributeForKey:@"quota-available"];
  if (v15)
  {
    v16 = objc_opt_new();
    [v16 setCountStyle:3];
    v17 = [v16 stringFromByteCount:{objc_msgSend(v15, "longLongValue")}];
    v18 = objc_opt_new();
    [v18 setNumberStyle:1];
    [v16 setIncludesUnit:0];
    v19 = [v16 stringFromByteCount:{objc_msgSend(v15, "longLongValue")}];
    v20 = [v18 numberFromString:v19];

    if (v17 && v20)
    {
      [(NSDictionary *)v3 setObject:v17 forKeyedSubscript:@"q"];
      [(NSDictionary *)v3 setObject:v20 forKeyedSubscript:@"qn"];
    }

    else
    {
      v21 = brc_bread_crumbs("[BRQueryItem userInfo]", 787);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, 0x90u))
      {
        v27 = 138413058;
        v28 = v15;
        v29 = 2112;
        v30 = v17;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        _os_log_error_impl(&dword_1AE2A9000, v22, 0x90u, "[ERROR] Couldn't format quota %@ (%@, %@)%@", &v27, 0x2Au);
      }
    }
  }

  if ([(BRQueryItem *)self editedSinceShared])
  {
    [(NSDictionary *)v3 setObject:&unk_1F23E6868 forKeyedSubscript:@"ess"];
  }

  if ([(NSDictionary *)v3 count])
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NSURL)url
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_url;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_isInSharedZone
{
  v2 = (*&self->_flags.var0 >> 11) & 7;
  if ((v2 - 3) < 2)
  {
    return 1;
  }

  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_shareRootFileObjectID == 0;
  }

  return !v4;
}

- (BOOL)_isSharedFolderSubItem
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 21) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)displayName
{
  v3 = [(BRQueryItem *)self localizedFileNameIfDesktopOrDocuments];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A5D0]];
  }

  v6 = v5;

  return v6;
}

id __25__BRQueryItem_initialize__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isDirectory];
  v4 = [v2 logicalName];

  v5 = [v4 br_displayFilenameWithExtensionHidden:v3 ^ 1u];

  return v5;
}

uint64_t __25__BRQueryItem_initialize__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isConflicted];

  return [v2 numberWithBool:v3];
}

- (BOOL)isConflicted
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 6) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (NSNumber)isDownloadRequested
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(LOWORD(v2->_flags.value) >> 10) & 1];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)sharingPermissions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A718]];
  v3 = *MEMORY[0x1E696A728];
  v10[0] = *MEMORY[0x1E696A720];
  v10[1] = v3;
  v4 = *MEMORY[0x1E695DD30];
  v11[0] = *MEMORY[0x1E695DD28];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = v5;
  if (v2)
  {
    v7 = [v5 objectForKeyedSubscript:v2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __25__BRQueryItem_initialize__block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 br_shareOptions];
  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_11:
      v7 = 0;
      goto LABEL_14;
    }

    if (v3 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = brc_bread_crumbs("_getSharePermissions", 467);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __25__BRQueryItem_initialize__block_invoke_32_cold_1();
    }

    goto LABEL_11;
  }

  if (v3 == 2 || v3 == 4)
  {
    v4 = MEMORY[0x1E696A728];
    goto LABEL_13;
  }

  if (v3 != 3)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4 = MEMORY[0x1E696A720];
LABEL_13:
  v7 = *v4;
LABEL_14:

  return v7;
}

- (unsigned)br_shareOptions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 11) & 7;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isTopLevelSharedItem
{
  v3 = [(BRQueryItem *)self isShared];
  if (v3)
  {
    LOBYTE(v3) = ![(BRQueryItem *)self _isSharedFolderSubItem];
  }

  return v3;
}

- (unint64_t)fileSystemFlags
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(BRFileObjectID *)v2->_fileObjectID isRootContainerItem]&& ((v2->_flags.value & 0x20000) != 0 || ([(BRQueryItem *)v2 isDirectory]|| [(BRQueryItem *)v2 isPackage]) && ([(BRQueryItem *)v2 capabilities]& 4) != 0))
  {
    v3 = 6;
  }

  else
  {
    v3 = 2;
  }

  value_low = LODWORD(v2->_flags.value);
  if ([(BRQueryItem *)v2 isHidden])
  {
    v5 = v3 | (value_low >> 18) & 1 | (value_low >> 10) & 0x10 | 8;
  }

  else
  {
    v5 = v3 | (value_low >> 18) & 1 | (value_low >> 10) & 0x10;
  }

  objc_sync_exit(v2);

  return v5;
}

- (NSArray)decorations
{
  v3 = objc_opt_new();
  v4 = [(BRQueryItem *)self attributeForKey:@"quota-available"];

  if (v4)
  {
    [v3 addObject:@"Quota"];
  }

  if ([(BRQueryItem *)self _isSharedFolderSubItem]&& ![(BRQueryItem *)self editedSinceShared])
  {
    v5 = [(BRQueryItem *)self attributeForKey:@"created-by-user"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = @"AddedByMe";
    }

    else
    {
      v7 = @"AddedByOther";
    }

    [v3 addObject:v7];
  }

  return v3;
}

id __25__BRQueryItem_initialize__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = *MEMORY[0x1E695DC68];
  v12 = 0;
  v13 = 0;
  v4 = [v2 getPromisedItemResourceValue:&v13 forKey:v3 error:&v12];
  v5 = v13;
  v6 = v12;
  v7 = v6;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    NSLog(@"unable to get %@ property for %@: %@\n", v3, v2, v6);
    v8 = 0;
  }

  if (v8)
  {
    v9 = _UTTypeCopyPedigreeSet();
    v10 = [v9 allObjects];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __25__BRQueryItem_initialize__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 br_downloadStatus];
  v3 = MEMORY[0x1E695E118];
  if (v2 == 1)
  {
    v3 = MEMORY[0x1E695E110];
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __25__BRQueryItem_initialize__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 isDirectory])
  {
    v9 = [v2 br_downloadStatus];
    if (!v9)
    {
      v10 = 0;
      goto LABEL_16;
    }

    if (v9 == 3)
    {
      v10 = &unk_1F23E6928;
      goto LABEL_16;
    }

    v11 = [v2 attributeForKey:@"dl%"];
    v3 = v11;
    v12 = &unk_1F23E6938;
    if (v11)
    {
      v12 = v11;
    }

    v8 = v12;
    goto LABEL_14;
  }

  v3 = [v2 attributeForKey:@"inflight"];
  v4 = [v2 attributeForKey:@"downloaded"];
  v5 = [v4 unsignedLongLongValue];

  v6 = [v2 attributeForKey:@"needsDownload"];
  v7 = [v6 unsignedLongLongValue];

  if ([v3 downloadTotalSize] > v7)
  {
    v7 = [v3 downloadTotalSize];
  }

  if (v7 + v5)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:{(objc_msgSend(v3, "downloadCompletedSize") + v5) * 100.0 / (v7 + v5)}];
LABEL_14:
    v10 = v8;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

LABEL_16:

  return v10;
}

id __25__BRQueryItem_initialize__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDirectory])
  {
    v3 = [v2 attributeForKey:@"inflight"];
    v4 = [v2 attributeForKey:@"uploaded"];
    v5 = [v4 unsignedLongLongValue];

    v6 = [v2 attributeForKey:@"needsUpload"];
    v7 = [v6 unsignedLongLongValue];

    v8 = [v2 attributeForKey:@"needsSyncUp"];
    v9 = [v8 unsignedLongLongValue];

    if (v7 < [v3 uploadTotalSize])
    {
      v7 = [v3 uploadTotalSize];
    }

    v10 = v7 + v5;
    if (v10 || !v9)
    {
      if (v10)
      {
        v13 = ([v3 uploadCompletedSize] + v5) / v10;
      }

      else
      {
        v13 = 1.0;
      }

      if (v9)
      {
        v13 = v13 * 0.95;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * 100.0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v2 br_uploadStatus];
    if (v12)
    {
      if (v12 == 3)
      {
        v11 = &unk_1F23E6928;
      }

      else if (v12 == 2)
      {
        v11 = &unk_1F23E6948;
      }

      else
      {
        v14 = MEMORY[0x1E696AD98];
        v15 = [v2 attributeForKey:@"ul%"];
        [v15 doubleValue];
        v11 = [v14 numberWithDouble:v16 * 0.95];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __25__BRQueryItem_initialize__block_invoke_23(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isBRAlias];

  return [v2 numberWithBool:v3];
}

uint64_t __25__BRQueryItem_initialize__block_invoke_26(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isShared];

  return [v2 numberWithBool:v3];
}

id __25__BRQueryItem_initialize__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = [a2 attributeForKey:@"owner-components"];
  v3 = [v2 br_formattedName];

  return v3;
}

id __25__BRQueryItem_initialize__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = [a2 attributeForKey:@"last-editor-components"];
  v3 = [v2 br_formattedName];

  return v3;
}

id __25__BRQueryItem_initialize__block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 br_shareOptions];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = MEMORY[0x1E696A720];
      goto LABEL_9;
    }

    if (v3 != 4)
    {
LABEL_10:
      v6 = brc_bread_crumbs("_getSharedItemCurrentUserPermissions", 488);
      v7 = brc_default_log(0, 0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __25__BRQueryItem_initialize__block_invoke_32_cold_1();
      }

      goto LABEL_13;
    }

LABEL_7:
    v4 = MEMORY[0x1E696A728];
LABEL_9:
    v5 = *v4;
    goto LABEL_14;
  }

  if ((v3 - 1) < 2)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    goto LABEL_10;
  }

LABEL_13:
  v5 = 0;
LABEL_14:

  return v5;
}

id __25__BRQueryItem_initialize__block_invoke_39(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _getIsDownloading(v2);
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v2 attributeForKey:@"needsDownload"];
    v6 = [v5 unsignedLongLongValue];

    v7 = [v2 attributeForKey:@"downloaded"];
    v8 = [v7 unsignedLongLongValue];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8 + v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __25__BRQueryItem_initialize__block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _getIsUploading(v2);
  v4 = [v3 BOOLValue];

  if (v4)
  {
    if ([v2 isDirectory])
    {
      v5 = [v2 attributeForKey:@"needsUpload"];
      v6 = [v5 unsignedLongLongValue];

      v7 = [v2 attributeForKey:@"uploaded"];
      v8 = [v7 unsignedLongLongValue];

      [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8 + v6];
    }

    else
    {
      [v2 size];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __25__BRQueryItem_initialize__block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isShared] && objc_msgSend(v2, "isDocument"))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "editedSinceShared")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __25__BRQueryItem_initialize__block_invoke_42(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isTopLevelSharedItem];

  return [v2 numberWithBool:v3];
}

- (id)downloadingStatus
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [(BRQueryItem *)self attributeForName:*MEMORY[0x1E696A688]];
  v3 = *MEMORY[0x1E695DC88];
  v4 = *MEMORY[0x1E696A690];
  v11[0] = *MEMORY[0x1E696A678];
  v11[1] = v4;
  v5 = *MEMORY[0x1E695DCA0];
  v12[0] = v3;
  v12[1] = v5;
  v11[2] = *MEMORY[0x1E696A680];
  v12[2] = *MEMORY[0x1E695DC90];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v7 = v6;
  if (v2)
  {
    v8 = [v6 objectForKeyedSubscript:v2];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)owner
{
  v2 = [(BRQueryItem *)self ownerNameComponents];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 br_formattedName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)localRepresentationURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_localRepresentationURL;
  objc_sync_exit(v2);

  return v3;
}

- (unsigned)diffs
{
  v2 = self;
  objc_sync_enter(v2);
  diffs = v2->_diffs;
  objc_sync_exit(v2);

  return diffs;
}

- (NSString)parentPath
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_parentPath;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)physicalName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_physicalName;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isTopLevel
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 27) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (NSNumber)mtime
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_mtime;
  objc_sync_exit(v2);

  return v3;
}

- (NSNumber)btime
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_btime;
  objc_sync_exit(v2);

  return v3;
}

id __22__BRQueryItem_tagData__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6967430];
  v3 = a2;
  v4 = [[v2 alloc] initWithLabel:v3 color:0];

  return v4;
}

- (NSData)versionIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSNumber *)v2->_mtime unsignedLongValue];
  v11 = v3;
  v4 = [(BRQueryItem *)v2 size];
  v5 = [v4 unsignedLongLongValue];

  if (v5 > 0x100000)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:8];
  }

  else
  {
    v9 = [(BRQueryItem *)v2 isDownloaded];
    v10 = v3;
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v9 length:9];
  }

  v7 = v6;
  objc_sync_exit(v2);

  return v7;
}

- (void)setIsNetworkOffline:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (v3)
  {
    v4 = 0x2000000;
  }

  else
  {
    v4 = 0;
  }

  *&obj->_flags.var0 = *&obj->_flags.var0 & 0xFDFFFFFF | v4;
  objc_sync_exit(obj);
}

- (id)parentFileID
{
  v2 = brc_bread_crumbs("[BRQueryItem parentFileID]", 1314);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(BRQueryItem *)v2 parentFileID:v3];
  }

  return 0;
}

- (BOOL)isInTransfer
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_flags.var0.kind)
  {
    var0 = v2->_flags.var0;
    v4 = (~var0 & 0x30) != 0 && (~var0 & 0xF) != 0;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)isLive
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 & 0x30) == 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)markDead
{
  obj = self;
  objc_sync_enter(obj);
  *&obj->_flags.var0 = *&obj->_flags.var0 & 0xFFFFFFCF | 0x10;
  objc_sync_exit(obj);
}

- (void)clearDiffs
{
  obj = self;
  objc_sync_enter(obj);
  obj->_diffs = 0;
  objc_sync_exit(obj);
}

- (BOOL)isPreCrash
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 7) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (void)setIsPreCrash:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (v3)
  {
    v4 = 128;
  }

  else
  {
    v4 = 0;
  }

  *&obj->_flags.var0 = *&obj->_flags.var0 & 0xFFFFFF7F | v4;
  objc_sync_exit(obj);
}

- (BOOL)isDownloadActive
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 9) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isUploadActive
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 8) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEvictable
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (*&v2->_flags.var0 >> 28) & 1;
  objc_sync_exit(v2);

  return v3;
}

- (BRQueryItem)initWithCoder:(id)a3
{
  v93[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (initWithCoder__once != -1)
  {
    [BRQueryItem initWithCoder:];
  }

  v90.receiver = self;
  v90.super_class = BRQueryItem;
  v5 = [(BRQueryItem *)&v90 init];
  v6 = v5;
  if (v5)
  {
    v5->_logicalHandle = -1;
    v5->_physicalHandle = -1;
    v5->_flags.value = [v4 decodeInt64ForKey:@"flags"];
    v6->_diffs = [v4 decodeIntForKey:@"diffs"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
    appLibraryID = v6->_appLibraryID;
    v6->_appLibraryID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    logicalName = v6->_logicalName;
    v6->_logicalName = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fault"];
    p_physicalName = &v6->_physicalName;
    physicalName = v6->_physicalName;
    v6->_physicalName = v11;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parent"];
    parentPath = v6->_parentPath;
    v6->_parentPath = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foid"];
    fileObjectID = v6->_fileObjectID;
    v6->_fileObjectID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pfoid"];
    parentFileObjectID = v6->_parentFileObjectID;
    v6->_parentFileObjectID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sr"];
    shareRootFileObjectID = v6->_shareRootFileObjectID;
    v6->_shareRootFileObjectID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v6->_size;
    v6->_size = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mtime"];
    mtime = v6->_mtime;
    v6->_mtime = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"btime"];
    btime = v6->_btime;
    v6->_btime = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastusedtime"];
    lastUsedTime = v6->_lastUsedTime;
    v6->_lastUsedTime = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"favoriterank"];
    favoriteRank = v6->_favoriteRank;
    v6->_favoriteRank = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childitemcount"];
    childItemCount = v6->_childItemCount;
    v6->_childItemCount = v32;

    v34 = [v4 decodeObjectOfClasses:initWithCoder__allowedClasses forKey:@"attrs"];
    v35 = [v34 mutableCopy];
    attrs = v6->_attrs;
    v6->_attrs = v35;

    v37 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "decodeInt64ForKey:", @"zrid"}];
    zoneRowID = v6->_zoneRowID;
    v6->_zoneRowID = v37;

    v39 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "decodeInt64ForKey:", @"pzrid"}];
    parentZoneRowID = v6->_parentZoneRowID;
    v6->_parentZoneRowID = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collabid"];
    collaborationIdentifier = v6->_collaborationIdentifier;
    v6->_collaborationIdentifier = v41;

    v43 = MEMORY[0x1E695DFD8];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    v45 = [v43 setWithArray:v44];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"conflictingversions"];
    conflictingVersions = v6->_conflictingVersions;
    v6->_conflictingVersions = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cver"];
    contentVersion = v6->_contentVersion;
    v6->_contentVersion = v48;

    v50 = MEMORY[0x1E695DFD8];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    v52 = [v50 setWithArray:v51];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"eqCver"];
    equivalentContentVersions = v6->_equivalentContentVersions;
    v6->_equivalentContentVersions = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sver"];
    structureVersion = v6->_structureVersion;
    v6->_structureVersion = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastEditorDeviceName"];
    lastEditorDeviceName = v6->_lastEditorDeviceName;
    v6->_lastEditorDeviceName = v57;

    v59 = MEMORY[0x1E695DFD8];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v91[2] = objc_opt_class();
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
    v61 = [v59 setWithArray:v60];
    v62 = [v4 decodeObjectOfClasses:v61 forKey:@"xattrs"];
    xattrs = v6->_xattrs;
    v6->_xattrs = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symlinkTargetPath"];
    symlinkTargetPath = v6->_symlinkTargetPath;
    v6->_symlinkTargetPath = v64;

    v6->_contentPolicy = [v4 decodeIntForKey:@"contentPolicy"];
    if (!v6->_parentPath)
    {
LABEL_22:
      if ([(BRQueryItem *)v6 isBRAlias])
      {
        v84 = [(NSMutableDictionary *)v6->_attrs objectForKey:@"alias-path"];
        if (v84)
        {
          v85 = [MEMORY[0x1E695DFF8] fileURLWithPath:v84];
          localRepresentationURL = v6->_localRepresentationURL;
          v6->_localRepresentationURL = v85;
        }
      }

      else
      {
        v87 = v6->_url;
        v84 = v6->_localRepresentationURL;
        v6->_localRepresentationURL = v87;
      }

      goto LABEL_27;
    }

    v66 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v6->_parentPath isDirectory:1];
    kind = v6->_flags.var0.kind;
    v68 = v6->_physicalName;
    if (v68 && ![(NSString *)v68 br_isSideFaultName])
    {
      v71 = [v66 URLByAppendingPathComponent:v6->_physicalName isDirectory:kind == 0];
      url = v6->_url;
      v6->_url = v71;

      MEMORY[0x1B26FDF70](v6->_url, *MEMORY[0x1E695EBE8], v6->_logicalName);
LABEL_19:
      if ([(BRFileObjectID *)v6->_fileObjectID isDocumentID])
      {
        v81 = v6->_url;
        v82 = *MEMORY[0x1E695EA60];
        v83 = [(BRFileObjectID *)v6->_fileObjectID documentID];
        MEMORY[0x1B26FDF70](v81, v82, v83);
      }

      goto LABEL_22;
    }

    if (v6->_logicalName)
    {
      v69 = [v66 URLByAppendingPathComponent:? isDirectory:?];
      v70 = v6->_url;
      v6->_url = v69;
    }

    else
    {
      v73 = brc_bread_crumbs("[BRQueryItem initWithCoder:]", 1602);
      v74 = brc_default_log(0, 0);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
      {
        [BRQueryItem initWithCoder:?];
      }

      if (![*p_physicalName length])
      {
        goto LABEL_15;
      }

      v75 = [(NSString *)v6->_physicalName substringFromIndex:1];
      v70 = [v75 brc_stringByDeletingPathExtension];

      v76 = [v66 URLByAppendingPathComponent:v70 isDirectory:kind == 0];
      v77 = v6->_url;
      v6->_url = v76;
    }

LABEL_15:
    if (kind)
    {
      if (*p_physicalName)
      {
        v78 = [v66 URLByAppendingPathComponent:*p_physicalName isDirectory:0];
        v79 = v6->_url;
        _CFURLPromiseSetPhysicalURL();
      }

      else
      {
        v80 = v6->_url;
        _CFURLPromiseSetPhysicalURL();
      }
    }

    goto LABEL_19;
  }

LABEL_27:

  v88 = *MEMORY[0x1E69E9840];
  return v6;
}

void __29__BRQueryItem_initWithCoder___block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:7];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10}];
  v3 = initWithCoder__allowedClasses;
  initWithCoder__allowedClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)attachLogicalExtension:(id)a3 physicalExtension:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  p_url = &v8->_url;
  url = v8->_url;
  if (!v6 || !url)
  {
    goto LABEL_21;
  }

  v11 = url;
  v12 = v6;
  active_platform = dyld_get_active_platform();
  if ((active_platform & 0xFFFFFFFB) != 2 && active_platform != 1 && active_platform != 11)
  {
    syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
    goto LABEL_20;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_20:

    MEMORY[0x1B26FDEB0](*p_url, v12);
    goto LABEL_21;
  }

  if ([v12 length])
  {
    [v12 bytes];
    v14 = sandbox_extension_consume();
    if (v14 < 0)
    {
      v17 = *__error();
      v18 = brc_bread_crumbs("brc_sandbox_replace_extension", 1658);
      v19 = brc_default_log(0, 0);
      if (os_log_type_enabled(v19, 0x90u))
      {
        *buf = 138412802;
        v45 = v12;
        v46 = 1024;
        v47 = v17;
        v48 = 2112;
        v49 = v18;
        _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v17;
    }

    else
    {
      if (v8->_logicalHandle < 0)
      {
        v15 = brc_bread_crumbs("brc_sandbox_replace_extension", 1654);
        v16 = brc_notifications_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [BRQueryItem attachLogicalExtension:physicalExtension:];
        }
      }

      else
      {
        sandbox_extension_release();
        v15 = brc_bread_crumbs("brc_sandbox_replace_extension", 1652);
        v16 = brc_notifications_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [BRQueryItem attachLogicalExtension:physicalExtension:];
        }
      }

      v8->_logicalHandle = v14;
    }

    goto LABEL_20;
  }

LABEL_21:
  if (v7 && *p_url)
  {
    v20 = _CFURLPromiseCopyPhysicalURL();
    v21 = v20;
    if (v20)
    {
      v22 = *p_url;
      if (v20 == *p_url)
      {
        v36 = brc_bread_crumbs("[BRQueryItem attachLogicalExtension:physicalExtension:]", 1679);
        v37 = brc_default_log(0, 0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          [(BRQueryItem *)v36 attachLogicalExtension:v37 physicalExtension:v38, v39, v40, v41, v42, v43];
        }

        v22 = *p_url;
      }

      if (v21 == v22)
      {
        goto LABEL_48;
      }

      v23 = v21;
      v24 = v7;
      v25 = dyld_get_active_platform();
      if ((v25 & 0xFFFFFFFB) == 2 || v25 == 1 || v25 == 11)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          if (![v24 length])
          {

LABEL_48:
            CFRelease(v21);
            goto LABEL_49;
          }

          v28 = v24;
          [v24 bytes];
          v29 = sandbox_extension_consume();
          if (v29 < 0)
          {
            v32 = *__error();
            v33 = brc_bread_crumbs("brc_sandbox_replace_extension", 1658);
            v34 = brc_default_log(0, 0);
            if (os_log_type_enabled(v34, 0x90u))
            {
              *buf = 138412802;
              v45 = v24;
              v46 = 1024;
              v47 = v32;
              v48 = 2112;
              v49 = v33;
              _os_log_error_impl(&dword_1AE2A9000, v34, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
            }

            *__error() = v32;
          }

          else
          {
            if (v8->_physicalHandle < 0)
            {
              v30 = brc_bread_crumbs("brc_sandbox_replace_extension", 1654);
              v31 = brc_notifications_log();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                [BRQueryItem attachLogicalExtension:physicalExtension:];
              }
            }

            else
            {
              sandbox_extension_release();
              v30 = brc_bread_crumbs("brc_sandbox_replace_extension", 1652);
              v31 = brc_notifications_log();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                [BRQueryItem attachLogicalExtension:physicalExtension:];
              }
            }

            v8->_physicalHandle = v29;
          }
        }
      }

      else
      {
        syslog(5, "Unknown platform linking against CloudDocs framework %d", v25);
      }

      MEMORY[0x1B26FDEB0](v23, v24);
      goto LABEL_48;
    }

    v26 = brc_bread_crumbs("[BRQueryItem attachLogicalExtension:physicalExtension:]", 1687);
    v27 = brc_default_log(0, 0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [BRQueryItem attachLogicalExtension:? physicalExtension:?];
    }
  }

LABEL_49:
  objc_sync_exit(v8);

  v35 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeInt64:v4->_flags.value forKey:@"flags"];
  [v5 encodeInt:v4->_diffs forKey:@"diffs"];
  [v5 encodeObject:v4->_appLibraryID forKey:@"cid"];
  [v5 encodeObject:v4->_logicalName forKey:@"name"];
  [v5 encodeObject:v4->_physicalName forKey:@"fault"];
  [v5 encodeObject:v4->_parentPath forKey:@"parent"];
  [v5 encodeObject:v4->_fileObjectID forKey:@"foid"];
  [v5 encodeObject:v4->_parentFileObjectID forKey:@"pfoid"];
  [v5 encodeObject:v4->_shareRootFileObjectID forKey:@"sr"];
  [v5 encodeObject:v4->_size forKey:@"size"];
  [v5 encodeObject:v4->_mtime forKey:@"mtime"];
  [v5 encodeObject:v4->_btime forKey:@"btime"];
  [v5 encodeObject:v4->_lastUsedTime forKey:@"lastusedtime"];
  [v5 encodeObject:v4->_favoriteRank forKey:@"favoriterank"];
  [v5 encodeObject:v4->_childItemCount forKey:@"childitemcount"];
  [v5 encodeObject:v4->_attrs forKey:@"attrs"];
  [v5 encodeInt64:-[NSNumber longLongValue](v4->_zoneRowID forKey:{"longLongValue"), @"zrid"}];
  [v5 encodeInt64:-[NSNumber longLongValue](v4->_parentZoneRowID forKey:{"longLongValue"), @"pzrid"}];
  [v5 encodeObject:v4->_collaborationIdentifier forKey:@"collabid"];
  [v5 encodeObject:v4->_contentVersion forKey:@"cver"];
  [v5 encodeObject:v4->_equivalentContentVersions forKey:@"eqCver"];
  [v5 encodeObject:v4->_structureVersion forKey:@"sver"];
  [v5 encodeObject:v4->_lastEditorDeviceName forKey:@"lastEditorDeviceName"];
  [v5 encodeObject:v4->_xattrs forKey:@"xattrs"];
  [v5 encodeObject:v4->_conflictingVersions forKey:@"conflictingversions"];
  [v5 encodeObject:v4->_symlinkTargetPath forKey:@"symlinkTargetPath"];
  [v5 encodeInt:LODWORD(v4->_contentPolicy) forKey:@"contentPolicy"];
  objc_sync_exit(v4);
}

- (BRQueryItem)initWithQueryItem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BRQueryItem;
  v5 = [(BRQueryItem *)&v10 init];
  if (v5)
  {
    v6 = v4;
    objc_sync_enter(v6);
    v5->_logicalHandle = -1;
    v5->_physicalHandle = -1;
    v5->_flags.value = *(v6 + 30);
    v5->_diffs = *(v6 + 132);
    objc_storeStrong(&v5->_appLibraryID, *(v6 + 1));
    objc_storeStrong(&v5->_logicalName, *(v6 + 3));
    objc_storeStrong(&v5->_physicalName, *(v6 + 4));
    objc_storeStrong(&v5->_parentPath, *(v6 + 2));
    objc_storeStrong(&v5->_fileObjectID, *(v6 + 6));
    objc_storeStrong(&v5->_parentFileObjectID, *(v6 + 7));
    objc_storeStrong(&v5->_shareRootFileObjectID, *(v6 + 8));
    objc_storeStrong(&v5->_size, *(v6 + 9));
    objc_storeStrong(&v5->_mtime, *(v6 + 10));
    objc_storeStrong(&v5->_btime, *(v6 + 11));
    objc_storeStrong(&v5->_lastUsedTime, *(v6 + 12));
    objc_storeStrong(&v5->_favoriteRank, *(v6 + 13));
    objc_storeStrong(&v5->_childItemCount, *(v6 + 14));
    v7 = [*(v6 + 27) mutableCopy];
    attrs = v5->_attrs;
    v5->_attrs = v7;

    objc_storeStrong(&v5->_url, *(v6 + 15));
    objc_storeStrong(&v5->_localRepresentationURL, *(v6 + 16));
    objc_storeStrong(&v5->_zoneRowID, *(v6 + 18));
    objc_storeStrong(&v5->_parentZoneRowID, *(v6 + 17));
    objc_storeStrong(&v5->_collaborationIdentifier, *(v6 + 19));
    objc_storeStrong(&v5->_contentVersion, *(v6 + 21));
    objc_storeStrong(&v5->_equivalentContentVersions, *(v6 + 22));
    objc_storeStrong(&v5->_structureVersion, *(v6 + 23));
    objc_storeStrong(&v5->_lastEditorDeviceName, *(v6 + 26));
    objc_storeStrong(&v5->_xattrs, *(v6 + 28));
    objc_storeStrong(&v5->_conflictingVersions, *(v6 + 24));
    objc_storeStrong(&v5->_symlinkTargetPath, *(v6 + 20));
    v5->_contentPolicy = *(v6 + 25);
    objc_sync_exit(v6);
  }

  return v5;
}

- (BRQueryItem)initWithFPItem:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v82.receiver = self;
    v82.super_class = BRQueryItem;
    v5 = [(BRQueryItem *)&v82 init];
    if (!v5)
    {
LABEL_75:
      self = v5;
      v16 = self;
      goto LABEL_76;
    }

    v6 = [v4 fileURL];
    url = v5->_url;
    v5->_url = v6;

    objc_storeStrong(&v5->_localRepresentationURL, v5->_url);
    v8 = [v4 filename];
    logicalName = v5->_logicalName;
    v5->_logicalName = v8;

    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"pkg_size"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v4 documentSize];
    }

    size = v5->_size;
    v5->_size = v13;

    if ([(NSURL *)v5->_url br_isInTrash])
    {
      [v10 objectForKey:@"palid"];
    }

    else
    {
      [(NSURL *)v5->_url br_containerID];
    }
    v18 = ;
    appLibraryID = v5->_appLibraryID;
    v5->_appLibraryID = v18;

    v20 = [v4 providerItemIdentifier];
    v21 = [BRFileObjectID fileObjectIDWithString:v20];
    fileObjectID = v5->_fileObjectID;
    v5->_fileObjectID = v21;

    v23 = [v4 itemID];
    nsmdqFPItemID = v5->_nsmdqFPItemID;
    v5->_nsmdqFPItemID = v23;

    v25 = MEMORY[0x1E696AD98];
    v26 = [v4 creationDate];
    [v26 timeIntervalSince1970];
    v27 = [v25 numberWithDouble:?];
    btime = v5->_btime;
    v5->_btime = v27;

    v29 = MEMORY[0x1E696AD98];
    v30 = [v4 contentModificationDate];
    [v30 timeIntervalSince1970];
    v31 = [v29 numberWithDouble:?];
    mtime = v5->_mtime;
    v5->_mtime = v31;

    v33 = [v4 favoriteRank];
    favoriteRank = v5->_favoriteRank;
    v5->_favoriteRank = v33;

    v35 = [v4 contentType];
    if ([v4 isFolder])
    {
      v36 = 0;
    }

    else if ([v4 isPackage])
    {
      v36 = 2;
    }

    else if ([v35 br_isSymbolicLinkType])
    {
      v36 = 4;
    }

    else if ([v35 br_isAliasFileType])
    {
      v36 = 3;
    }

    else
    {
      if (([v35 br_isFileType] & 1) == 0)
      {
        v37 = brc_bread_crumbs("[BRQueryItem initWithFPItem:]", 1815);
        v38 = brc_default_log(0, 0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v84 = v35;
          v85 = 2112;
          v86 = v4;
          v87 = 2112;
          v88 = v37;
          _os_log_fault_impl(&dword_1AE2A9000, v38, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't initialize _flags.kind from the content type %@ for %@%@", buf, 0x20u);
        }
      }

      v36 = 1;
    }

    v5->_flags.var0.kind = v36;
    if ([v4 isMostRecentVersionDownloaded])
    {
      v39 = *&v5->_flags.var0 | 3;
    }

    else
    {
      v40 = [v4 isDownloaded];
      v41 = *&v5->_flags.var0 & 0xFFFFFFFC;
      if (v40)
      {
        v39 = v41 | 2;
      }

      else
      {
        v39 = v41 | 1;
      }
    }

    *&v5->_flags.var0 = v39;
    v42 = [v4 downloadingError];

    if (v42)
    {
      v43 = [v4 downloadingError];
      [(BRQueryItem *)v5 setAttribute:v43 forKey:@"dlErr"];
    }

    v44 = [v4 uploadingError];

    if (v44)
    {
      v45 = [v4 uploadingError];
      [(BRQueryItem *)v5 setAttribute:v45 forKey:@"ulErr"];
    }

    v46 = [v4 downloadingProgress];
    v47 = v46;
    if (v46)
    {
      v48 = MEMORY[0x1E696AD98];
      [v46 fractionCompleted];
      v50 = [v48 numberWithDouble:v49 * 100.0];
      [(BRQueryItem *)v5 setAttribute:v50 forKey:@"dl%"];
    }

    v51 = [v4 uploadingProgress];
    v52 = v51;
    if (v51)
    {
      v53 = MEMORY[0x1E696AD98];
      [v51 fractionCompleted];
      v55 = [v53 numberWithDouble:v54 * 100.0];
      [(BRQueryItem *)v5 setAttribute:v55 forKey:@"ul%"];
    }

    if ([v4 isUploaded])
    {
      v56 = *&v5->_flags.var0 | 0xC;
    }

    else
    {
      v57 = [v4 isUploading];
      v56 = *&v5->_flags.var0 & 0xFFFFFFF3;
      if (v57)
      {
        v56 |= 4u;
      }
    }

    *&v5->_flags.var0 = v56;
    v58 = [v4 tags];
    v59 = [v58 count];

    if (v59)
    {
      v60 = [v4 tags];
      v61 = [v60 br_transform:&__block_literal_global_323];
      [(BRQueryItem *)v5 setAttribute:v61 forKey:@"tags"];
    }

    if (([v4 conformsToProtocol:&unk_1F23ED4F8] & 1) == 0)
    {
      [BRQueryItem initWithFPItem:];
    }

    v62 = v4;
    *&v5->_flags.var0 &= ~0x8000u;
    v63 = [v62 isDownloadRequested];
    if ([v63 unsignedShortValue])
    {
      v64 = 1024;
    }

    else
    {
      v64 = 1024;
      if (([v62 isDownloading] & 1) == 0)
      {
        if ([v62 isDownloaded])
        {
          v64 = 1024;
        }

        else
        {
          v64 = 0;
        }
      }
    }

    *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFFFFFBFF | v64;

    if ([v62 isDownloading])
    {
      v65 = [v62 downloadingProgress];
      *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFFFFFDFF | ((v65 != 0) << 9);
    }

    else
    {
      *&v5->_flags.var0 &= ~0x200u;
    }

    if ([v62 isUploading])
    {
      v66 = 256;
    }

    else
    {
      v66 = 0;
    }

    *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFFFFFEFF | v66;
    v67 = [v62 conflictingVersions];
    *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFFFFFFBF | (([v67 count] != 0) << 6);

    *&v5->_flags.var0 &= 0xFFFFC7FF;
    v68 = [v62 sharingPermissions];
    if ([v62 isShared])
    {
      v69 = [v62 isSharedByCurrentUser];
      if ([v68 isEqual:*MEMORY[0x1E695DD28]])
      {
        v70 = v69 == 0;
        v71 = 6144;
        v72 = 2048;
LABEL_63:
        if (!v70)
        {
          v71 = v72;
        }

        *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFFFFC7FF | v71;
        goto LABEL_66;
      }

      if ([v68 isEqual:*MEMORY[0x1E695DD30]])
      {
        v70 = v69 == 0;
        v71 = 0x2000;
        v72 = 4096;
        goto LABEL_63;
      }
    }

LABEL_66:
    v73 = [v62 ownerNameComponents];
    [(BRQueryItem *)v5 setAttribute:v73 forKey:@"owner-components"];

    v74 = [v62 mostRecentEditorNameComponents];
    [(BRQueryItem *)v5 setAttribute:v74 forKey:@"last-editor-components"];

    if ([v62 isShared])
    {
      if ([v62 isTopLevelSharedItem])
      {
        v75 = 0;
      }

      else
      {
        v75 = 0x200000;
      }
    }

    else
    {
      v75 = 0;
    }

    *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFFDFFFFF | v75;
    v76 = [v10 objectForKeyedSubscript:@"ess"];
    if ([v76 BOOLValue])
    {
      v77 = 0x1000000;
    }

    else
    {
      v77 = 0;
    }

    *&v5->_flags.var0 = *&v5->_flags.var0 & 0xFEFFFFFF | v77;

    v78 = [v62 symlinkTargetPath];
    symlinkTargetPath = v5->_symlinkTargetPath;
    v5->_symlinkTargetPath = v78;

    goto LABEL_75;
  }

  v14 = brc_bread_crumbs("[BRQueryItem initWithFPItem:]", 1780);
  v15 = brc_default_log(1, 0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v84 = v14;
    _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't build query item with nil FPItem%@", buf, 0xCu);
  }

  v16 = 0;
LABEL_76:

  v80 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithQueryItem:self];
}

- (NSString)path
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSURL *)v2->_url path];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqualToQueryItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __34__BRQueryItem_isEqualToQueryItem___block_invoke;
    v15 = &unk_1E7A159E0;
    v16 = self;
    v17 = v4;
    v6 = self;
    v7 = v17;
    v8 = v13;
    if (v6 >= v7)
    {
      v9 = v7;
      objc_sync_enter(v9);
      v10 = v6;
    }

    else
    {
      v9 = v6;
      objc_sync_enter(v9);
      v10 = v7;
    }

    objc_sync_enter(v10);
    v11 = v14(v8);
    objc_sync_exit(v10);

    objc_sync_exit(v9);
  }

  return v11;
}

uint64_t __34__BRQueryItem_isEqualToQueryItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1[30] != v2[30])
  {
    return 0;
  }

  v4 = v1[1];
  v5 = v2[1];
  if (v4 != v5)
  {
    if (!v5)
    {
      return 0;
    }

    result = [v4 isEqualToString:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v7 = v1[2];
  v8 = v2[2];
  if (v7 != v8)
  {
    if (!v8)
    {
      return 0;
    }

    result = [v7 isEqualToString:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v9 = v1[3];
  v10 = v2[3];
  if (v9 != v10)
  {
    if (!v10)
    {
      return 0;
    }

    result = [v9 isEqualToString:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v11 = v1[4];
  v12 = v2[4];
  if (v11 != v12)
  {
    if (!v12)
    {
      return 0;
    }

    result = [v11 isEqualToString:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v13 = v1[6];
  v14 = v2[6];
  if (v13 != v14)
  {
    if (!v14)
    {
      return 0;
    }

    result = [v13 isEqualToFileObjectID:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v15 = v1[7];
  v16 = v2[7];
  if (v15 != v16)
  {
    if (!v16)
    {
      return 0;
    }

    result = [v15 isEqualToFileObjectID:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v17 = v1[8];
  v18 = v2[8];
  if (v17 != v18)
  {
    if (!v18)
    {
      return 0;
    }

    result = [v17 isEqualToFileObjectID:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v19 = v1[9];
  v20 = v2[9];
  if (v19 != v20)
  {
    if (!v20)
    {
      return 0;
    }

    result = [v19 isEqualToNumber:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v21 = v1[10];
  v22 = v2[10];
  if (v21 != v22)
  {
    if (!v22)
    {
      return 0;
    }

    result = [v21 isEqualToNumber:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v23 = v1[11];
  v24 = v2[11];
  if (v23 != v24)
  {
    if (!v24)
    {
      return 0;
    }

    result = [v23 isEqualToNumber:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v25 = v1[12];
  v26 = v2[12];
  if (v25 != v26)
  {
    if (!v26)
    {
      return 0;
    }

    result = [v25 isEqualToNumber:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v27 = v1[13];
  v28 = v2[13];
  if (v27 != v28)
  {
    if (!v28)
    {
      return 0;
    }

    result = [v27 isEqualToNumber:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v29 = v1[27];
  v30 = v2[27];
  if (v29 != v30)
  {
    if (!v30)
    {
      return 0;
    }

    result = [v29 isEqualToDictionary:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v31 = v1[24];
  v32 = v2[24];
  if (v31 != v32)
  {
    if (!v32)
    {
      return 0;
    }

    result = [v31 isEqualToArray:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v33 = v1[21];
  v34 = v2[21];
  if (v33 != v34)
  {
    if (!v34)
    {
      return 0;
    }

    result = [v33 isEqualToData:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v35 = v1[23];
  v36 = v2[23];
  if (v35 != v36)
  {
    if (!v36)
    {
      return 0;
    }

    result = [v35 isEqualToData:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v37 = v1[26];
  v38 = v2[26];
  if (v37 != v38)
  {
    if (!v38)
    {
      return 0;
    }

    result = [v37 isEqualToString:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v39 = v1[28];
  v40 = v2[28];
  if (v39 != v40)
  {
    if (!v40)
    {
      return 0;
    }

    result = [v39 isEqualToDictionary:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v41 = v1[20];
  v42 = v2[20];
  if (v41 == v42)
  {
    return v1[25] == v2[25];
  }

  if (v42)
  {
    result = [v41 isEqualToString:?];
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
    return v1[25] == v2[25];
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRQueryItem *)self isEqualToQueryItem:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRFileObjectID *)v2->_fileObjectID hash];
  objc_sync_exit(v2);

  return v3;
}

- (void)_mergeAttrs:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0;
  v47 = xmmword_1E7A15A60;
  v48 = *&off_1E7A15A70;
  v49 = xmmword_1E7A15A80;
  v43 = xmmword_1E7A15A20;
  v44 = *&off_1E7A15A30;
  v45 = xmmword_1E7A15A40;
  v46 = *&off_1E7A15A50;
  v41 = xmmword_1E7A15A00;
  v42 = *&off_1E7A15A10;
  do
  {
    v6 = *(&v41 + v5);
    v7 = v4[27];
    v8 = self;
    v9 = v6;
    v10 = v7;
    v11 = [v10 objectForKey:{v9, v41, v42, v43, v44, v45, v46, v47, v48, v49}];
    attrs = self->_attrs;
    if (v11)
    {
      if (!attrs)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = self->_attrs;
        self->_attrs = v13;

        attrs = self->_attrs;
      }

      [(NSMutableDictionary *)attrs setObject:v11 forKey:v9];
    }

    else
    {
      [(NSMutableDictionary *)attrs removeObjectForKey:v9];
    }

    v5 += 8;
  }

  while (v5 != 144);
  v15 = v4[27];
  v16 = v8;
  v17 = v15;
  v18 = [v17 objectForKey:@"alias-path"];
  if (v18)
  {
    v19 = self->_attrs;
    if (!v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = self->_attrs;
      self->_attrs = v20;

      v19 = self->_attrs;
    }

    [(NSMutableDictionary *)v19 setObject:v18 forKey:@"alias-path"];
  }

  v22 = [(BRQueryItem *)v16 isInTransfer];
  v23 = v4[27];
  v24 = v16;
  v25 = v23;
  v26 = [v25 objectForKey:@"dl%"];
  if (v26)
  {
    v27 = self->_attrs;
    if (!v27)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v29 = self->_attrs;
      self->_attrs = v28;

      v27 = self->_attrs;
    }

    [(NSMutableDictionary *)v27 setObject:v26 forKey:@"dl%"];
  }

  else if (!v22)
  {
    [(NSMutableDictionary *)self->_attrs removeObjectForKey:@"dl%"];
  }

  v30 = v4[27];
  v31 = v24;
  v32 = v30;
  v33 = [v32 objectForKey:@"ul%"];
  if (v33)
  {
    v34 = self->_attrs;
    if (!v34)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v36 = self->_attrs;
      self->_attrs = v35;

      v34 = self->_attrs;
    }

    [(NSMutableDictionary *)v34 setObject:v33 forKey:@"ul%"];
  }

  else if (!v22)
  {
    [(NSMutableDictionary *)self->_attrs removeObjectForKey:@"ul%"];
  }

  v37 = self->_attrs;
  if (v37 && ![(NSMutableDictionary *)v37 count])
  {
    v38 = self->_attrs;
    self->_attrs = 0;
  }

  for (i = 136; i != -8; i -= 8)
  {
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_mergeURL:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_url = &self->_url;
  url = self->_url;
  v7 = v4[15];
  if (url == v7 || v7 == 0)
  {
    goto LABEL_63;
  }

  v9 = url;
  v10 = v7;
  v11 = MEMORY[0x1B26FDF00]();
  if (!v11)
  {
    v12 = MEMORY[0x1B26FDF00](v9);
    if (!v12)
    {
      goto LABEL_9;
    }

    v11 = v12;
    MEMORY[0x1B26FDEB0](v10, v12);
  }

  CFRelease(v11);
LABEL_9:

  v13 = v4[15];
  v14 = _CFURLPromiseCopyPhysicalURL();
  v15 = v4[15];
  if (v14 != v15)
  {
    v16 = *p_url;
    v17 = _CFURLPromiseCopyPhysicalURL();
    v18 = v14;
    v19 = MEMORY[0x1B26FDF00]();
    if (!v19)
    {
      v20 = MEMORY[0x1B26FDF00](v17);
      if (!v20)
      {
LABEL_14:

        v21 = v4[15];
        _CFURLPromiseSetPhysicalURL();
        v15 = v4[15];

        goto LABEL_15;
      }

      v19 = v20;
      MEMORY[0x1B26FDEB0](v18, v20);
    }

    CFRelease(v19);
    goto LABEL_14;
  }

LABEL_15:
  objc_storeStrong(&self->_url, v15);
  v22 = v14;
  if ([(BRFileObjectID *)self->_fileObjectID isDocumentID])
  {
    v23 = self->_url;
    v24 = *MEMORY[0x1E695EA60];
    v25 = [(BRFileObjectID *)self->_fileObjectID documentID];
    MEMORY[0x1B26FDF70](v23, v24, v25);
  }

  v26 = MEMORY[0x1B26FDF00](*p_url);
  if (v26)
  {
    v27 = v26;
    v28 = self->_url;
    v29 = v27;
    active_platform = dyld_get_active_platform();
    if ((active_platform & 0xFFFFFFFB) == 2 || active_platform == 11 || active_platform == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0 && [v29 length])
      {
        [v29 bytes];
        v31 = sandbox_extension_consume();
        if (v31 < 0)
        {
          v35 = *__error();
          v36 = brc_bread_crumbs("brc_sandbox_replace_extension", 1658);
          v37 = brc_default_log(0, 0);
          if (os_log_type_enabled(v37, 0x90u))
          {
            *buf = 138412802;
            v55 = v29;
            v56 = 1024;
            v57 = v35;
            v58 = 2112;
            v59 = v36;
            _os_log_error_impl(&dword_1AE2A9000, v37, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
          }

          *__error() = v35;
        }

        else
        {
          v32 = v31;
          if (self->_logicalHandle < 0)
          {
            v33 = brc_bread_crumbs("brc_sandbox_replace_extension", 1654);
            v34 = brc_notifications_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [BRQueryItem attachLogicalExtension:physicalExtension:];
            }
          }

          else
          {
            sandbox_extension_release();
            v33 = brc_bread_crumbs("brc_sandbox_replace_extension", 1652);
            v34 = brc_notifications_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [BRQueryItem attachLogicalExtension:physicalExtension:];
            }
          }

          self->_logicalHandle = v32;
        }
      }
    }

    else
    {
      syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
    }

    CFRelease(v29);
  }

  if (v22)
  {
    if (v22 == *p_url)
    {
      if ((self->_physicalHandle & 0x8000000000000000) == 0)
      {
        v43 = brc_bread_crumbs("[BRQueryItem _mergeURL:]", 2281);
        v44 = brc_notifications_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          [BRQueryItem _mergeURL:];
        }

        physicalHandle = self->_physicalHandle;
        sandbox_extension_release();
        self->_physicalHandle = -1;
      }
    }

    else
    {
      v38 = MEMORY[0x1B26FDF00](v22);
      if (v38)
      {
        v39 = v38;
        v40 = v22;
        v41 = v39;
        v42 = dyld_get_active_platform();
        if ((v42 & 0xFFFFFFFB) == 2 || v42 == 11 || v42 == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0 && [v41 length])
          {
            [v41 bytes];
            v46 = sandbox_extension_consume();
            if (v46 < 0)
            {
              v50 = *__error();
              v51 = brc_bread_crumbs("brc_sandbox_replace_extension", 1658);
              v52 = brc_default_log(0, 0);
              if (os_log_type_enabled(v52, 0x90u))
              {
                *buf = 138412802;
                v55 = v41;
                v56 = 1024;
                v57 = v50;
                v58 = 2112;
                v59 = v51;
                _os_log_error_impl(&dword_1AE2A9000, v52, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
              }

              *__error() = v50;
            }

            else
            {
              v47 = v46;
              if (self->_physicalHandle < 0)
              {
                v48 = brc_bread_crumbs("brc_sandbox_replace_extension", 1654);
                v49 = brc_notifications_log();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  [BRQueryItem attachLogicalExtension:physicalExtension:];
                }
              }

              else
              {
                sandbox_extension_release();
                v48 = brc_bread_crumbs("brc_sandbox_replace_extension", 1652);
                v49 = brc_notifications_log();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  [BRQueryItem attachLogicalExtension:physicalExtension:];
                }
              }

              self->_physicalHandle = v47;
            }
          }
        }

        else
        {
          syslog(5, "Unknown platform linking against CloudDocs framework %d", v42);
        }

        CFRelease(v41);
      }
    }
  }

LABEL_63:
  v53 = *MEMORY[0x1E69E9840];
}

- (id)attributeForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_getterMap objectForKeyedSubscript:v4];

  if (v6)
  {
    v10 = brc_bread_crumbs("[BRQueryItem attributeForKey:]", 2292);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(BRQueryItem *)v10 attributeForKey:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  v7 = [(NSMutableDictionary *)v5->_attrs objectForKeyedSubscript:v4];
  v8 = [v7 copy];

  objc_sync_exit(v5);

  return v8;
}

- (void)setAttribute:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  attrs = v7->_attrs;
  if (v11)
  {
    if (attrs)
    {
      [(NSMutableDictionary *)attrs setObject:v11 forKey:v6];
      goto LABEL_8;
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, v6, 0}];
  }

  else
  {
    [(NSMutableDictionary *)attrs removeObjectForKey:v6];
    v9 = [(NSMutableDictionary *)v7->_attrs count];
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v10 = v7->_attrs;
  v7->_attrs = v9;

LABEL_8:
  objc_sync_exit(v7);
}

- (BOOL)canMerge:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __24__BRQueryItem_canMerge___block_invoke;
    v15 = &unk_1E7A159E0;
    v16 = self;
    v17 = v4;
    v6 = self;
    v7 = v17;
    v8 = v13;
    if (v6 >= v7)
    {
      v9 = v7;
      objc_sync_enter(v9);
      v10 = v6;
    }

    else
    {
      v9 = v6;
      objc_sync_enter(v9);
      v10 = v7;
    }

    objc_sync_enter(v10);
    v11 = v14(v8);
    objc_sync_exit(v10);

    objc_sync_exit(v9);
  }

  return v11;
}

uint64_t __24__BRQueryItem_canMerge___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (v2 == *(v1 + 8))
  {
    return 1;
  }

  else
  {
    return [v2 isEqualToString:?];
  }
}

- (void)merge:(id)a3 allowMergingFileObjectIDIfPossible:(BOOL)a4
{
  v6 = a3;
  if (!v6)
  {
    [BRQueryItem merge:allowMergingFileObjectIDIfPossible:];
  }

  if (self != v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = __56__BRQueryItem_merge_allowMergingFileObjectIDIfPossible___block_invoke;
    v14 = &unk_1E7A15A98;
    v17 = a4;
    v15 = self;
    v16 = v6;
    v7 = self;
    v8 = v16;
    v9 = v12;
    if (v7 >= v8)
    {
      v10 = v8;
      objc_sync_enter(v10);
      v11 = v7;
    }

    else
    {
      v10 = v7;
      objc_sync_enter(v10);
      v11 = v8;
    }

    objc_sync_enter(v11);
    v13(v9);
    objc_sync_exit(v11);

    objc_sync_exit(v10);
  }
}

uint64_t __56__BRQueryItem_merge_allowMergingFileObjectIDIfPossible___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    if (!*(v2 + 48))
    {
      objc_storeStrong((v2 + 48), *(*(a1 + 40) + 48));
      v2 = *(a1 + 32);
    }

    v3 = *(v2 + 272);
    if (v3 && *(*(a1 + 40) + 272) && [v3 isEqual:?])
    {
      objc_storeStrong((*(a1 + 32) + 48), *(*(a1 + 40) + 48));
    }
  }

  v4 = *(*(a1 + 32) + 48);
  if (*(a1 + 48) == 1 && v4 == 0)
  {
    if (!*(*(a1 + 40) + 48))
    {
      v10 = brc_bread_crumbs("[BRQueryItem merge:allowMergingFileObjectIDIfPossible:]_block_invoke", 2358);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v10;
        _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Both fileObjectIDs are nil, proceeding%@", &v29, 0xCu);
      }

      goto LABEL_24;
    }

    v4 = 0;
  }

  if (([v4 isEqualToFileObjectID:*(*(a1 + 40) + 48)] & 1) == 0)
  {
    v6 = brc_bread_crumbs("[BRQueryItem merge:allowMergingFileObjectIDIfPossible:]_block_invoke", 2360);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v23 = *(*(a1 + 32) + 48);
      v24 = *(*(a1 + 40) + 48);
      v29 = 138412802;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] failed merging object id %@ with %@%@", &v29, 0x20u);
    }

    v8 = brc_bread_crumbs("[BRQueryItem merge:allowMergingFileObjectIDIfPossible:]_block_invoke", 2361);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v25 = *(*(a1 + 32) + 48);
      v26 = *(*(a1 + 40) + 48);
      v29 = 138412802;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = v8;
      _os_log_fault_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't merge objects with different object ids (%@, %@)%@", &v29, 0x20u);
    }

LABEL_28:
    result = 0;
    goto LABEL_36;
  }

LABEL_24:
  v12 = (a1 + 40);
  if ((*(*(a1 + 40) + 240) >> 20) & ~(*(*(a1 + 32) + 240) >> 20))
  {
    v13 = brc_bread_crumbs("[BRQueryItem merge:allowMergingFileObjectIDIfPossible:]_block_invoke", 2366);
    v14 = brc_notifications_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __56__BRQueryItem_merge_allowMergingFileObjectIDIfPossible___block_invoke_cold_1(v12);
    }

    goto LABEL_28;
  }

  v16 = brc_bread_crumbs("[BRQueryItem merge:allowMergingFileObjectIDIfPossible:]_block_invoke", 2369);
  v17 = brc_notifications_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = 138412802;
    v30 = v27;
    v31 = 2112;
    v32 = v28;
    v33 = 2112;
    v34 = v16;
    _os_log_debug_impl(&dword_1AE2A9000, v17, OS_LOG_TYPE_DEBUG, "[NOTIF] Merging %@ with %@%@", &v29, 0x20u);
  }

  *(*(a1 + 32) + 240) = *(*(a1 + 40) + 240);
  *(*(a1 + 32) + 264) |= *(*(a1 + 40) + 264);
  objc_storeStrong((*(a1 + 32) + 8), *(*(a1 + 40) + 8));
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (v19)
  {
    objc_storeStrong((*(a1 + 32) + 16), v19);
    v18 = *(a1 + 40);
  }

  [*(a1 + 32) _mergeURL:v18];
  v20 = *(a1 + 40);
  v21 = *(v20 + 128);
  if (v21)
  {
    objc_storeStrong((*(a1 + 32) + 128), v21);
    v20 = *(a1 + 40);
  }

  objc_storeStrong((*(a1 + 32) + 24), *(v20 + 24));
  objc_storeStrong((*(a1 + 32) + 32), *(*(a1 + 40) + 32));
  objc_storeStrong((*(a1 + 32) + 72), *(*(a1 + 40) + 72));
  objc_storeStrong((*(a1 + 32) + 80), *(*(a1 + 40) + 80));
  objc_storeStrong((*(a1 + 32) + 88), *(*(a1 + 40) + 88));
  objc_storeStrong((*(a1 + 32) + 96), *(*(a1 + 40) + 96));
  objc_storeStrong((*(a1 + 32) + 104), *(*(a1 + 40) + 104));
  objc_storeStrong((*(a1 + 32) + 112), *(*(a1 + 40) + 112));
  objc_storeStrong((*(a1 + 32) + 56), *(*(a1 + 40) + 56));
  objc_storeStrong((*(a1 + 32) + 64), *(*(a1 + 40) + 64));
  [*(a1 + 32) _mergeAttrs:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 184), *(*(a1 + 40) + 184));
  objc_storeStrong((*(a1 + 32) + 168), *(*(a1 + 40) + 168));
  objc_storeStrong((*(a1 + 32) + 176), *(*(a1 + 40) + 176));
  objc_storeStrong((*(a1 + 32) + 208), *(*(a1 + 40) + 208));
  objc_storeStrong((*(a1 + 32) + 224), *(*(a1 + 40) + 224));
  objc_storeStrong((*(a1 + 32) + 192), *(*(a1 + 40) + 192));
  objc_storeStrong((*(a1 + 32) + 160), *(*(a1 + 40) + 160));
  *(*(a1 + 32) + 200) = *(*(a1 + 40) + 200);
  result = 1;
LABEL_36:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)askDaemonQueryItemForURL:(id)a3 andFakeFSEvent:(BOOL)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "+[BRQueryItem askDaemonQueryItemForURL:andFakeFSEvent:error:]", 2437, 0, v18);
  v7 = brc_bread_crumbs("+[BRQueryItem askDaemonQueryItemForURL:andFakeFSEvent:error:]", 2437);
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = v18[0];
    v17 = [v6 path];
    *buf = 134218498;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx asking item for url: %@%@", buf, 0x20u);
  }

  v9 = [MEMORY[0x1E69673A8] defaultManager];
  v10 = [v9 itemForURL:v6 error:a5];

  if (v10)
  {
    v11 = [[BRQueryItem alloc] initWithFPItem:v10];
    v12 = brc_bread_crumbs("+[BRQueryItem askDaemonQueryItemForURL:andFakeFSEvent:error:]", 2446);
    v13 = brc_notifications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[BRQueryItem askDaemonQueryItemForURL:andFakeFSEvent:error:];
    }
  }

  else
  {
    v12 = brc_bread_crumbs("+[BRQueryItem askDaemonQueryItemForURL:andFakeFSEvent:error:]", 2441);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't build FPItem%@", buf, 0xCu);
    }

    v11 = 0;
  }

  __brc_leave_section(v18);
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)attributeForName:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_getterMap objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 16))(v6, v5);
  }

  else
  {
    v10 = brc_bread_crumbs("[BRQueryItem attributeForName:]", 2464);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BRQueryItem attributeForName:];
    }

    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (id)attributesForNames:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:_sharedKeySet];
  v6 = self;
  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(BRQueryItem *)v6 attributeForName:v11, v15];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)containerItemForContainer:(id)a3 withRepresentativeItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_BRContainerItem alloc] initWithQueryItem:v5 container:v6 zoneRowID:0];

  return v7;
}

+ (id)containerItemForContainer:(id)a3 withRepresentativeItem:(id)a4 zoneRowID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_BRContainerItem alloc] initWithQueryItem:v8 container:v9 zoneRowID:v7];

  return v10;
}

void __25__BRQueryItem_initialize__block_invoke_18_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: bogus uploading state for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __25__BRQueryItem_initialize__block_invoke_32_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: unknown permissions for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)parentFileID
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, a2, a3, "[CRIT] UNREACHABLE: BRQueryItem::parentFileID is not implemented in FPFS.%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a1 .cold.2(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v1, v2, "[CRIT] UNREACHABLE: No logical name for item. Falling back to physical name if it exists %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)attachLogicalExtension:physicalExtension:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[NOTIF] consumed sandbox extension for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attachLogicalExtension:physicalExtension:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[NOTIF] replaced sandbox extension for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attachLogicalExtension:(uint64_t)a3 physicalExtension:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, a2, a3, "[CRIT] Assertion failed: physicalURL != (__bridge CFURLRef)_url%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)attachLogicalExtension:(void *)a1 physicalExtension:.cold.6(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v1, v2, "[CRIT] UNREACHABLE: there should be a physical URL on url: %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithFPItem:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRQueryItem initWithFPItem:]", 1865);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: [item conformsToProtocol:@protocol(NSFileProviderItem_Private)]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_mergeURL:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[NOTIF] released sandbox extension for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attributeForKey:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, a2, a3, "[CRIT] Assertion failed: !_getterMap[key]%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)merge:allowMergingFileObjectIDIfPossible:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRQueryItem merge:allowMergingFileObjectIDIfPossible:]", 2333);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: update != nil%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __56__BRQueryItem_merge_allowMergingFileObjectIDIfPossible___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[NOTIF] Dropping from gather update %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)askDaemonQueryItemForURL:andFakeFSEvent:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[NOTIF] returning %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attributeForName:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v0, v1, "[CRIT] Assertion failed: getter No getter found for key: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end