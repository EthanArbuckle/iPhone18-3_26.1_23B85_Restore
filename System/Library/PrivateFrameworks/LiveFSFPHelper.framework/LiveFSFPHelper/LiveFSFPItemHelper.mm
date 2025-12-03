@interface LiveFSFPItemHelper
+ (id)UTIForExtension:(id)extension liType:(int)type;
- (BOOL)_fetchXattrValues;
- (BOOL)calcNumberOfChildren:(id *)children;
- (BOOL)ensureFileHandleOrError:(id *)error;
- (BOOL)isDirectory;
- (BOOL)isDocument;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHidden;
- (BOOL)isSymlink;
- (BOOL)isTrashed;
- (LiveFSFPEnumeratorDataContainer)container;
- (NSData)tagData;
- (NSData)versionIdentifier;
- (NSDate)contentModificationDate;
- (NSDate)creationDate;
- (NSDate)lastUsedDate;
- (NSNumber)childItemCount;
- (NSNumber)documentSize;
- (NSNumber)favoriteRank;
- (NSString)description;
- (NSString)fp_domainIdentifier;
- (NSString)fp_parentDomainIdentifier;
- (NSString)fullPath;
- (NSString)parentItemIdentifier;
- (NSString)typeIdentifier;
- (id)initItemForFH:(id)h withReference:(int)reference name:(id)name parent:(id)parent type:(int)type attrs:(id)attrs extension:(id)extension;
- (id)lastUsedTime;
- (id)pathExtension;
- (int)refreshAttrsHasAProblem:(id *)problem;
- (unint64_t)capabilities;
- (void)_fetchFavoriteRank:(id)rank completionHandler:(id)handler;
- (void)_fetchLastUsedDateWithProxy:(id)proxy completionHandler:(id)handler;
- (void)_fetchTagDataWithProxy:(id)proxy completionHandler:(id)handler;
- (void)_fetchXattrNamed:(id)named proxy:(id)proxy completionHandler:(id)handler;
- (void)afterRename:(id)rename performBlock:(id)block;
- (void)capabilities;
- (void)childItemCount;
- (void)contentModificationDate;
- (void)creationDate;
- (void)dealloc;
- (void)doDealloc;
- (void)dropAfterRenameBlockForName:(id)name;
- (void)fullPath;
- (void)isHidden;
- (void)lastUsedTime;
- (void)parentItemIdentifier;
- (void)pathExtension;
- (void)performBlocksForRename:(id)rename onEHQueue:(BOOL)queue;
- (void)recursivelyReparentChildren;
- (void)recursivelySetChildrenDeleted;
- (void)resetFileHandle;
- (void)setAttributes:(id)attributes time:(int64_t)time;
- (void)setAttributesLocked:(id)locked time:(int64_t)time;
- (void)setAttributesStale;
- (void)setFavoriteRank:(id)rank;
- (void)setItemDeleted;
- (void)setLastUsedDate:(id)date;
- (void)setNewParent:(id)parent andName:(id)name;
- (void)setTagData:(id)data;
- (void)typeIdentifier;
@end

@implementation LiveFSFPItemHelper

- (NSString)fullPath
{
  fullPath = self->_fullPath;
  if (!fullPath)
  {
    mountPath = [(LiveFSFPExtensionHelper *)self->_extension mountPath];
    path = [mountPath path];
    v6 = [path stringByAppendingPathComponent:self->_path];
    v7 = self->_fullPath;
    self->_fullPath = v6;

    fullPath = self->_fullPath;
    if (!fullPath)
    {
      v8 = livefs_std_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(LiveFSFPItemHelper *)self fullPath];
      }

      fullPath = self->_fullPath;
    }
  }

  return fullPath;
}

- (id)initItemForFH:(id)h withReference:(int)reference name:(id)name parent:(id)parent type:(int)type attrs:(id)attrs extension:(id)extension
{
  v59 = *MEMORY[0x277D85DE8];
  hCopy = h;
  nameCopy = name;
  parentCopy = parent;
  attrsCopy = attrs;
  extensionCopy = extension;
  v18 = livefs_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPItemHelper initItemForFH:withReference:name:parent:type:attrs:extension:];
  }

  v52.receiver = self;
  v52.super_class = LiveFSFPItemHelper;
  v19 = [(LiveFSFPItemHelper *)&v52 init];
  v20 = nameCopy;
  if (!v19)
  {
    goto LABEL_38;
  }

  if (type != -1 || attrsCopy)
  {
    idsPersist = [extensionCopy idsPersist];
    objc_storeStrong(&v19->_extension, extension);
    if (reference)
    {
      v23 = hCopy;
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v19->_fh, v23);
    v19->_liType = type;
    objc_storeStrong(&v19->_parent, parent);
    v19->numChildren = -1;
    fullPath = v19->_fullPath;
    v19->_fullPath = 0;

    if (parentCopy)
    {
      objc_storeStrong(&v19->_filename, name);
      itemIdentifier = [parentCopy itemIdentifier];
      v26 = *MEMORY[0x277CC6348];

      if (itemIdentifier == v26)
      {
        v33 = v20;
        path = v19->_path;
        v19->_path = v33;
      }

      else
      {
        path = [parentCopy path];
        v28 = [path stringByAppendingPathComponent:v20];
        v29 = v19->_path;
        v19->_path = v28;
      }

      v32 = idsPersist;

      v31 = attrsCopy;
      if (idsPersist)
      {
        [MEMORY[0x277D23D90] identifierForItem:0 name:v20 parentID:{objc_msgSend(parentCopy, "inodeNum")}];
      }

      else
      {
        [(NSString *)v19->_path decomposedStringWithCanonicalMapping];
      }
      v34 = ;
      itemIdentifier = v19->_itemIdentifier;
      v19->_itemIdentifier = v34;

      v30 = livefs_std_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        filename = v19->_filename;
        v36 = v19->_itemIdentifier;
        v38 = v19->_path;
        *buf = 138412802;
        v54 = v36;
        v55 = 2112;
        v56 = filename;
        v57 = 2112;
        v58 = v38;
        _os_log_impl(&dword_255FE9000, v30, OS_LOG_TYPE_DEFAULT, "Created Item ID %@ name '%@', path '%@'", buf, 0x20u);
      }
    }

    else
    {
      objc_storeStrong(&v19->_itemIdentifier, *MEMORY[0x277CC6348]);
      objc_storeStrong(&v19->_fh, h);
      objc_storeStrong(&v19->_filename, name);
      v30 = v19->_path;
      v19->_path = &stru_286811DF0;
      v31 = attrsCopy;
      v32 = idsPersist;
    }

    [extensionCopy addItem:v19 identifier:v19->_itemIdentifier fileHandle:v19->_fh];
    if (v31)
    {
      v19->_attr_load = time(0);
      bytes = [v31 bytes];
      v40 = [v31 length];
      if (v40 >= 0xB8)
      {
        v41 = 184;
      }

      else
      {
        v41 = v40;
      }

      memcpy(&v19->attributes, bytes, v41);
      if (v32)
      {
        if ((v19->attributes.fa_validmask & 0x100) != 0)
        {
          v19->_inodeNum = v19->attributes.fa_fileid;
        }

        else
        {
          v42 = livefs_std_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            [LiveFSFPItemHelper initItemForFH:withReference:name:parent:type:attrs:extension:];
          }
        }
      }

      liType = v19->_liType;
      if (liType == -1)
      {
        liType = v19->attributes.fa_type;
        if ((liType - 1) > 2)
        {
          goto LABEL_37;
        }

        v19->_liType = liType;
      }
    }

    else
    {
      v19->_attr_load = -1;
      liType = v19->_liType;
    }

    if ((liType | 2) == 3)
    {
LABEL_38:
      v22 = v19;
      goto LABEL_39;
    }

LABEL_37:
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    itemNameCache = v19->_itemNameCache;
    v19->_itemNameCache = strongToWeakObjectsMapTable;

    goto LABEL_38;
  }

  v21 = livefs_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPItemHelper initItemForFH:v21 withReference:? name:? parent:? type:? attrs:? extension:?];
  }

  v22 = 0;
LABEL_39:

  v46 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)doDealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(self + 280);
  v2 = *(self + 304);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(LiveFSFPItemHelper *)self doDealloc];
  v3.receiver = self;
  v3.super_class = LiveFSFPItemHelper;
  [(LiveFSFPItemHelper *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = LiveFSFPItemHelper;
  v4 = [(LiveFSFPItemHelper *)&v8 description];
  filename = self->_filename;
  v6 = [v3 stringWithFormat:@"%@ ID '%@' name '%@' fh '%@'", v4, self->_itemIdentifier, filename, self->_fh];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    itemIdentifier = self->_itemIdentifier;
    itemIdentifier = [equalCopy itemIdentifier];
    v7 = [(NSString *)itemIdentifier isEqualToString:itemIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)ensureFileHandleOrError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (!self->_fh)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v29 = 0;
    if (self->_itemIdentifier == *MEMORY[0x277CC6348])
    {
      conn = [(LiveFSFPExtensionHelper *)self->_extension conn];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke;
      v24[3] = &unk_27981A740;
      v24[4] = &buf;
      v9 = [conn synchronousRemoteObjectProxyWithErrorHandler:v24];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2;
      v23[3] = &unk_27981AB88;
      v23[4] = self;
      v23[5] = &buf;
      [v9 getRootFileHandleWithError:v23];
      v10 = *(*(&buf + 1) + 40);
      if (v10)
      {
        if (error)
        {
          *error = v10;
        }

        v4 = 1;
        goto LABEL_21;
      }

      fh = self->_fh;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_3;
      v22[3] = &unk_27981ABB0;
      v22[4] = self;
      v22[5] = &buf;
      [v9 fileAttributes:fh requestID:-1 reply:v22];
      if (!error)
      {
        if ([(LiveFSFPExtensionHelper *)self->_extension idsPersist])
        {
          if ((self->attributes.fa_validmask & 0x100) != 0)
          {
            self->_inodeNum = self->attributes.fa_fileid;
          }

          else
          {
            v19 = livefs_std_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              [LiveFSFPItemHelper initItemForFH:withReference:name:parent:type:attrs:extension:];
            }
          }
        }

        goto LABEL_20;
      }

      v14 = *(*(&buf + 1) + 40);
    }

    else
    {
      v7 = [(LiveFSFPItemHelper *)self->_parent fh];
      if (v7)
      {
      }

      else if ([(LiveFSFPItemHelper *)self->_parent ensureFileHandleOrError:error])
      {
        v4 = 1;
LABEL_22:
        _Block_object_dispose(&buf, 8);

        goto LABEL_23;
      }

      conn2 = [(LiveFSFPExtensionHelper *)self->_extension conn];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_16;
      v21[3] = &unk_27981A740;
      v21[4] = &buf;
      v9 = [conn2 synchronousRemoteObjectProxyWithErrorHandler:v21];

      v12 = [(LiveFSFPItemHelper *)self->_parent fh];
      filename = self->_filename;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2_17;
      v20[3] = &unk_27981ABD8;
      v20[4] = self;
      v20[5] = &buf;
      [v9 lookupIn:v12 name:filename usingFlags:0 requestID:-1 reply:v20];

      if (!error)
      {
        v15 = self->_extension;
        objc_sync_enter(v15);
        [(LiveFSFPExtensionHelper *)self->_extension addFileHandle:self->_fh toItem:self];
        objc_sync_exit(v15);

LABEL_20:
        v4 = *(*(&buf + 1) + 40) != 0;
LABEL_21:

        goto LABEL_22;
      }

      v14 = *(*(&buf + 1) + 40);
    }

    *error = v14;
    goto LABEL_20;
  }

  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[LiveFSFPItemHelper ensureFileHandleOrError:]";
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_DEFAULT, "%s: exiting as already have the filehandle", &buf, 0xCu);
  }

  v4 = 0;
LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

void __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v8 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 304);
  *(v6 + 304) = v5;
}

void __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a3;
  if (a2)
  {
    v5 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    *(*(a1 + 32) + 288) = time(0);
    v8 = *(a1 + 32);
    v9 = [v19 bytes];
    v10 = *(v9 + 32);
    v11 = *(v9 + 48);
    v12 = *(v9 + 16);
    *(v8 + 8) = *v9;
    *(v8 + 56) = v11;
    *(v8 + 40) = v10;
    *(v8 + 24) = v12;
    v13 = *(v9 + 96);
    v14 = *(v9 + 112);
    v15 = *(v9 + 80);
    *(v8 + 72) = *(v9 + 64);
    *(v8 + 120) = v14;
    *(v8 + 104) = v13;
    *(v8 + 88) = v15;
    v17 = *(v9 + 144);
    v16 = *(v9 + 160);
    v18 = *(v9 + 176);
    *(v8 + 136) = *(v9 + 128);
    *(v8 + 184) = v18;
    *(v8 + 168) = v16;
    *(v8 + 152) = v17;
  }
}

void __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2_17(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (a2)
  {
    v24 = a2;
LABEL_11:
    v37 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v24];
    v38 = *(*(a1 + 40) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    goto LABEL_12;
  }

  if (!v17 || !v18)
  {
    v36 = livefs_std_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2_17_cold_2(v17, v18, v36);
    }

    v24 = 14;
    goto LABEL_11;
  }

  if ([v18 length] == 184 && objc_msgSend(v18, "bytes"))
  {
    objc_storeStrong((*(a1 + 32) + 304), a4);
    *(*(a1 + 32) + 288) = time(0);
    v25 = *(a1 + 32);
    v26 = [v18 bytes];
    v27 = *(v26 + 32);
    v28 = *(v26 + 48);
    v29 = *(v26 + 16);
    *(v25 + 8) = *v26;
    *(v25 + 56) = v28;
    *(v25 + 40) = v27;
    *(v25 + 24) = v29;
    v30 = *(v26 + 96);
    v31 = *(v26 + 112);
    v32 = *(v26 + 80);
    *(v25 + 72) = *(v26 + 64);
    *(v25 + 120) = v31;
    *(v25 + 104) = v30;
    *(v25 + 88) = v32;
    v34 = *(v26 + 144);
    v33 = *(v26 + 160);
    v35 = *(v26 + 176);
    *(v25 + 136) = *(v26 + 128);
    *(v25 + 184) = v35;
    *(v25 + 168) = v33;
    *(v25 + 152) = v34;
  }

  else
  {
    v40 = livefs_std_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2_17_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 304), a4);
    *(*(a1 + 32) + 288) = -1;
  }

LABEL_12:
}

- (void)resetFileHandle
{
  fh = self->_fh;
  self->_fh = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setAttributesLocked:(id)locked time:(int64_t)time
{
  lockedCopy = locked;
  v18 = lockedCopy;
  if (!time)
  {
    time = time(0);
    lockedCopy = v18;
  }

  self->_attr_load = time;
  v7 = lockedCopy;
  bytes = [v18 bytes];
  v9 = *bytes;
  v10 = *(bytes + 16);
  v11 = *(bytes + 32);
  *&self->attributes.fa_size = *(bytes + 48);
  *&self->attributes.fa_nlink = v11;
  *&self->attributes.fa_seqno = v10;
  *&self->attributes.__fa_rsvd0 = v9;
  v12 = *(bytes + 64);
  v13 = *(bytes + 80);
  v14 = *(bytes + 96);
  self->attributes.fa_ctime = *(bytes + 112);
  self->attributes.fa_mtime = v14;
  self->attributes.fa_atime = v13;
  *&self->attributes.fa_fileid = v12;
  v15 = *(bytes + 128);
  v16 = *(bytes + 144);
  v17 = *(bytes + 160);
  *&self->attributes.fa_int_flags = *(bytes + 176);
  self->attributes.fa_addedtime = v17;
  self->attributes.fa_backuptime = v16;
  self->attributes.fa_birthtime = v15;
  self->numChildren = -1;
}

- (void)setAttributes:(id)attributes time:(int64_t)time
{
  attributesCopy = attributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(LiveFSFPItemHelper *)selfCopy setAttributesLocked:attributesCopy time:time];
  objc_sync_exit(selfCopy);
}

- (void)setAttributesStale
{
  obj = self;
  objc_sync_enter(obj);
  obj->_attr_load = -1;
  lastXattrValuesFetchDate = obj->_lastXattrValuesFetchDate;
  obj->_lastXattrValuesFetchDate = 0;

  objc_sync_exit(obj);
}

- (void)setItemDeleted
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_parent && obj->_filename)
  {
    fh = obj->_fh;
    [LiveFSFPExtensionHelper removeItem:"removeItem:parent:name:fileHandle:" parent:obj->_itemIdentifier name:? fileHandle:?];
  }

  path = obj->_path;
  obj->_path = &stru_286811DF0;

  fullPath = obj->_fullPath;
  obj->_fullPath = &stru_286811DF0;

  parent = obj->_parent;
  obj->_parent = 0;

  [(LiveFSFPItemHelper *)obj doDealloc];
  v6 = obj->_fh;
  obj->_fh = 0;

  obj->_attr_load = -1;
  objc_sync_exit(obj);
}

- (void)recursivelySetChildrenDeleted
{
  liType = self->_liType;
  if (liType == +[LiveFSFPItemHelper dt_dir])
  {
    v17 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    lastObject = [v17 lastObject];
    if (lastObject)
    {
      lastObject2 = lastObject;
      objectEnumerator = 0;
      v7 = v17;
      do
      {
        v8 = objectEnumerator;
        [v7 removeObjectAtIndex:0];
        itemNameCache = [lastObject2 itemNameCache];
        objectEnumerator = [itemNameCache objectEnumerator];

        if (objectEnumerator)
        {
          nextObject = [objectEnumerator nextObject];
          if (nextObject)
          {
            nextObject2 = nextObject;
            do
            {
              v12 = nextObject2;
              objc_sync_enter(v12);
              v13 = *(v12 + 66);
              if (v13 == +[LiveFSFPItemHelper dt_dir])
              {
                [v17 insertObject:v12 atIndex:0];
              }

              if (*(v12 + 40) && *(v12 + 34))
              {
                v14 = *(v12 + 38);
                [LiveFSFPExtensionHelper removeItem:"removeItem:parent:name:fileHandle:" parent:*(v12 + 35) name:? fileHandle:?];
              }

              v15 = *(v12 + 34);
              *(v12 + 34) = 0;

              objc_sync_exit(v12);
              nextObject2 = [objectEnumerator nextObject];
            }

            while (nextObject2);
          }
        }

        lastObject2 = [v17 lastObject];
        v7 = v17;
      }

      while (lastObject2);
    }

    v16 = v17;
  }

  else
  {
    v16 = 0;
  }
}

- (void)recursivelyReparentChildren
{
  liType = self->_liType;
  if (liType == +[LiveFSFPItemHelper dt_dir])
  {
    v27 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    lastObject = [v27 lastObject];
    if (lastObject)
    {
      v5 = lastObject;
      v6 = 0;
      objectEnumerator = 0;
      v8 = *MEMORY[0x277CC6348];
      v9 = v27;
      do
      {
        v10 = objectEnumerator;
        [v9 removeObjectAtIndex:0];
        itemNameCache = [v5 itemNameCache];
        objectEnumerator = [itemNameCache objectEnumerator];

        if (objectEnumerator)
        {
          nextObject = [objectEnumerator nextObject];
          if (nextObject)
          {
            nextObject2 = nextObject;
            v14 = v6;
            do
            {
              v15 = nextObject2;
              objc_sync_enter(v15);
              v16 = *(v15 + 66);
              if (v16 == +[LiveFSFPItemHelper dt_dir])
              {
                [v27 insertObject:v15 atIndex:0];
              }

              itemIdentifier = [v5 itemIdentifier];

              if (itemIdentifier == v8)
              {
                v21 = v15[34];
                path = v15[37];
                v15[37] = v21;
              }

              else
              {
                path = [v5 path];
                v19 = [path stringByAppendingPathComponent:v15[34]];
                v20 = v15[37];
                v15[37] = v19;
              }

              v22 = v15[25];
              v15[25] = 0;

              v6 = v15[35];
              if ([(LiveFSFPExtensionHelper *)self->_extension idsPersist])
              {
                v23 = [MEMORY[0x277D23D90] identifierForItem:0 name:v15[34] parentID:v5[43]];
              }

              else
              {
                v23 = v15[37];
              }

              v24 = v15[35];
              v15[35] = v23;

              [(LiveFSFPExtensionHelper *)self->_extension reIDItem:v15 oldID:v6];
              objc_sync_exit(v15);

              nextObject2 = [objectEnumerator nextObject];

              v14 = v6;
            }

            while (nextObject2);
          }
        }

        lastObject2 = [v27 lastObject];

        v9 = v27;
        v5 = lastObject2;
      }

      while (lastObject2);
    }

    v26 = v27;
  }

  else
  {
    v26 = 0;
  }
}

- (void)setNewParent:(id)parent andName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSString *)selfCopy->_filename isEqualToString:nameCopy]&& [(LiveFSFPItemHelper *)selfCopy->_parent isEqual:parentCopy])
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[LiveFSFPItemHelper setNewParent:andName:]";
      _os_log_impl(&dword_255FE9000, v10, OS_LOG_TYPE_DEFAULT, "%s: reparenting to current values", &v22, 0xCu);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    itemIdentifier = [parentCopy itemIdentifier];
    v12 = *MEMORY[0x277CC6348];

    if (itemIdentifier == v12)
    {
      v16 = nameCopy;
      path = selfCopy->_path;
      selfCopy->_path = v16;
    }

    else
    {
      path = [parentCopy path];
      v14 = [path stringByAppendingPathComponent:nameCopy];
      v15 = selfCopy->_path;
      selfCopy->_path = v14;
    }

    fullPath = selfCopy->_fullPath;
    selfCopy->_fullPath = 0;

    v18 = selfCopy->_itemIdentifier;
    if ([(LiveFSFPExtensionHelper *)selfCopy->_extension idsPersist])
    {
      v19 = [MEMORY[0x277D23D90] identifierForItem:0 name:nameCopy parentID:parentCopy[43]];
    }

    else
    {
      v19 = selfCopy->_path;
    }

    itemIdentifier = selfCopy->_itemIdentifier;
    selfCopy->_itemIdentifier = v19;

    [(LiveFSFPExtensionHelper *)selfCopy->_extension reparentItem:selfCopy oldID:v18 oldParent:selfCopy->_parent oldName:selfCopy->_filename newParent:parentCopy newName:nameCopy];
    objc_storeStrong(&selfCopy->_filename, name);
    objc_storeStrong(&selfCopy->_parent, parent);
    objc_sync_exit(selfCopy);

    [(LiveFSFPItemHelper *)selfCopy recursivelyReparentChildren];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)afterRename:(id)rename performBlock:(id)block
{
  renameCopy = rename;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRenameCompletionBlocks = selfCopy->_pendingRenameCompletionBlocks;
  if (!pendingRenameCompletionBlocks)
  {
    v9 = objc_opt_new();
    v10 = selfCopy->_pendingRenameCompletionBlocks;
    selfCopy->_pendingRenameCompletionBlocks = v9;

    pendingRenameCompletionBlocks = selfCopy->_pendingRenameCompletionBlocks;
  }

  v11 = MEMORY[0x259C563F0](blockCopy);
  [(NSMutableDictionary *)pendingRenameCompletionBlocks setObject:v11 forKey:renameCopy];

  objc_sync_exit(selfCopy);
}

- (void)dropAfterRenameBlockForName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRenameCompletionBlocks = selfCopy->_pendingRenameCompletionBlocks;
  if (pendingRenameCompletionBlocks)
  {
    [(NSMutableDictionary *)pendingRenameCompletionBlocks setValue:0 forKey:nameCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)performBlocksForRename:(id)rename onEHQueue:(BOOL)queue
{
  renameCopy = rename;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRenameCompletionBlocks = selfCopy->_pendingRenameCompletionBlocks;
  if (pendingRenameCompletionBlocks)
  {
    if (renameCopy)
    {
      v9 = [(NSMutableDictionary *)pendingRenameCompletionBlocks mutableCopy];
    }

    else
    {
      v9 = pendingRenameCompletionBlocks;
      v10 = selfCopy->_pendingRenameCompletionBlocks;
      selfCopy->_pendingRenameCompletionBlocks = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__LiveFSFPItemHelper_performBlocksForRename_onEHQueue___block_invoke;
    v11[3] = &unk_27981AC00;
    queueCopy = queue;
    v12 = renameCopy;
    v13 = selfCopy;
    [(NSMutableDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);
}

void __55__LiveFSFPItemHelper_performBlocksForRename_onEHQueue___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (!v8 || [v8 isEqualToString:v10])
  {
    v9 = MEMORY[0x259C563F0](v7);
    v9[2](v9, *(a1 + 48));
    if (*(a1 + 32))
    {
      [*(*(a1 + 40) + 224) setValue:0 forKey:?];
      *a4 = 1;
    }
  }
}

- (void)setTagData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    if ([(LiveFSFPExtensionHelper *)self->_extension supportsTagging])
    {
      dataCopy = [(NSData *)v6 copy];
    }

    else
    {
      dataCopy = 0;
    }
  }

  tagData = self->_tagData;
  self->_tagData = dataCopy;
}

- (void)setFavoriteRank:(id)rank
{
  if (rank)
  {
    v4 = [rank copy];
  }

  else
  {
    v4 = 0;
  }

  favoriteRank = self->_favoriteRank;
  self->_favoriteRank = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setLastUsedDate:(id)date
{
  if (date)
  {
    v4 = [date copy];
  }

  else
  {
    v4 = 0;
  }

  lastUsedDate = self->_lastUsedDate;
  self->_lastUsedDate = v4;

  MEMORY[0x2821F96F8]();
}

- (int)refreshAttrsHasAProblem:(id *)problem
{
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPItemHelper refreshAttrsHasAProblem:?];
  }

  if (![(LiveFSFPExtensionHelper *)self->_extension _isLoggedInOrError:problem])
  {
    return 1;
  }

  if (problem)
  {
    *problem = 0;
  }

  if (![(LiveFSFPExtensionHelper *)self->_extension isClusterMaster])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = time(0);
    if (selfCopy->_attr_load + 3600 > v8)
    {
      v6 = 0;
LABEL_27:
      objc_sync_exit(selfCopy);

      return v6;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__1;
    v32 = __Block_byref_object_dispose__1;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    conn = [(LiveFSFPExtensionHelper *)self->_extension conn];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__LiveFSFPItemHelper_refreshAttrsHasAProblem___block_invoke;
    v21[3] = &unk_27981A740;
    v21[4] = &v22;
    v10 = [conn synchronousRemoteObjectProxyWithErrorHandler:v21];

    fh = selfCopy->_fh;
    if (fh)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__LiveFSFPItemHelper_refreshAttrsHasAProblem___block_invoke_25;
      v19[3] = &unk_27981A858;
      v19[4] = &v22;
      v19[5] = &v28;
      [v10 fileAttributes:fh requestID:-1 reply:v19];
      v12 = v29[5];
      if (v12)
      {
        [(LiveFSFPItemHelper *)selfCopy setAttributesLocked:v12 time:v8];
LABEL_18:
        v6 = 0;
LABEL_26:

        _Block_object_dispose(&v22, 8);
        _Block_object_dispose(&v28, 8);

        goto LABEL_27;
      }

      v15 = v23[5];
      if (v15)
      {
        v16 = livefs_std_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPItemHelper refreshAttrsHasAProblem:];
        }

LABEL_22:
      }
    }

    else
    {
      v13 = (v23 + 5);
      obj = v23[5];
      v14 = [(LiveFSFPItemHelper *)selfCopy ensureFileHandleOrError:&obj];
      objc_storeStrong(v13, obj);
      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = v23[5];
      if (v15)
      {
        v16 = livefs_std_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPItemHelper refreshAttrsHasAProblem:];
        }

        goto LABEL_22;
      }
    }

    if (problem)
    {
      v17 = v15;
      *problem = v15;
    }

    v6 = 1;
    goto LABEL_26;
  }

  return 0;
}

void __46__LiveFSFPItemHelper_refreshAttrsHasAProblem___block_invoke_25(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (a2)
  {
    v6 = a2;
LABEL_5:
    v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
    goto LABEL_6;
  }

  if ([v5 length] <= 0xB7)
  {
    v6 = 22;
    goto LABEL_5;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = v12;
  v9 = *(v10 + 40);
  *(v10 + 40) = v11;
LABEL_6:
}

- (BOOL)isDirectory
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_liType == 2;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isSymlink
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_liType == 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isDocument
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_liType == 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isHidden
{
  if (![(LiveFSFPExtensionHelper *)self->_extension isClusterMaster])
  {
    if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0]&& (self->attributes.fa_validmask & 2) != 0)
    {
      if ([(NSString *)self->_filename hasPrefix:@"."])
      {
        LOBYTE(v4) = 1;
        return v4;
      }

      if ((self->attributes.fa_validmask & 0x20) != 0)
      {
        return BYTE1(self->attributes.fa_bsd_flags) >> 7;
      }
    }

    else
    {
      v3 = livefs_std_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPItemHelper isHidden];
      }
    }
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (NSString)parentItemIdentifier
{
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPItemHelper parentItemIdentifier];
  }

  v4 = *MEMORY[0x277CC6348];
  if ([(NSString *)self->_itemIdentifier isEqualToString:*MEMORY[0x277CC6348]])
  {
    itemIdentifier = v4;
  }

  else
  {
    itemIdentifier = [(LiveFSFPItemHelper *)self->_parent itemIdentifier];
  }

  return itemIdentifier;
}

- (NSString)fp_domainIdentifier
{
  domain = [(NSFileProviderExtension *)self->_extension domain];
  identifier = [domain identifier];

  return identifier;
}

- (NSString)fp_parentDomainIdentifier
{
  if ([(LiveFSFPExtensionHelper *)self->_extension isClusterDomain]&& ![(LiveFSFPExtensionHelper *)self->_extension isClusterMaster]&& [(NSString *)self->_itemIdentifier isEqualToString:*MEMORY[0x277CC6348]])
  {
    clusterMasterID = [(LiveFSFPExtensionHelper *)self->_extension clusterMasterID];
  }

  else
  {
    domain = [(NSFileProviderExtension *)self->_extension domain];
    clusterMasterID = [domain identifier];
  }

  return clusterMasterID;
}

- (unint64_t)capabilities
{
  if ([(LiveFSFPExtensionHelper *)self->_extension isClusterMaster])
  {
    return 1;
  }

  if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0]&& (self->attributes.fa_validmask & 2) != 0)
  {
    fa_mode = self->attributes.fa_mode;
    [(LiveFSFPItemHelper *)self isDirectory];
    extension = [(LiveFSFPItemHelper *)self extension];
    v8 = [extension idsPersist] ^ 1;
    parent = self->_parent;
    extension2 = [(LiveFSFPItemHelper *)self extension];
    supportsTrash = [extension2 supportsTrash];
    extension3 = [(LiveFSFPItemHelper *)self extension];
    supportsTagging = [extension3 supportsTagging];
    extension4 = [(LiveFSFPItemHelper *)self extension];
    isReadOnlyVolume = [extension4 isReadOnlyVolume];
    if (parent)
    {
      v16 = isReadOnlyVolume;
    }

    else
    {
      v16 = 1;
    }

    if ((fa_mode & 0x80) != 0)
    {
      v17 = 0;
    }

    else
    {
      v16 = 1;
      v17 = v8;
    }

    if ((fa_mode & 0x80) != 0)
    {
      v18 = isReadOnlyVolume;
    }

    else
    {
      v18 = 1;
    }

    v19 = v17 | isReadOnlyVolume;
    if (!parent)
    {
      v19 = 1;
    }

    if (v16)
    {
      v20 = (fa_mode >> 8) & 1;
    }

    else
    {
      v20 = (fa_mode >> 8) & 1 | 0xC;
    }

    v21 = v20 | 0x10;
    if (!supportsTrash)
    {
      v21 = v20;
    }

    v22 = v21 | 0x20;
    if (!v19)
    {
      v20 = v22;
    }

    if (!v18)
    {
      v20 |= 2uLL;
    }

    if (isReadOnlyVolume | supportsTagging ^ 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = *MEMORY[0x277CC6340];
    }

    v3 = v20 | v23;
  }

  else
  {
    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPItemHelper capabilities];
    }

    return 0;
  }

  return v3;
}

- (id)pathExtension
{
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(LiveFSFPItemHelper *)self pathExtension];
  }

  filename = [(LiveFSFPItemHelper *)self filename];
  if (filename && (v5 = filename, -[LiveFSFPItemHelper filename](self, "filename"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 length], v6, v5, v7) && (v8 = malloc_type_calloc(1uLL, 0x401uLL, 0x100004077774924uLL)) != 0)
  {
    v9 = v8;
    filename2 = [(LiveFSFPItemHelper *)self filename];
    v11 = [filename2 getFileSystemRepresentation:v9 maxLength:1025];

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = _extensionInFilename(v12, 0);
    v14 = v13;
    if (v13)
    {
      v15 = strlen(v13);
      if (v15)
      {
        v16 = v15;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v14 = [defaultManager stringWithFileSystemRepresentation:v14 length:v16];
      }

      else
      {
        v14 = 0;
      }
    }

    free(v9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)UTIForExtension:(id)extension liType:(int)type
{
  v5 = UTIForExtension_liType__onceToken;
  extensionCopy = extension;
  if (v5 != -1)
  {
    +[LiveFSFPItemHelper UTIForExtension:liType:];
  }

  v7 = MEMORY[0x277CC2058];
  if (type != 2)
  {
    v7 = MEMORY[0x277CC2050];
  }

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], extensionCopy, *v7);

  return PreferredIdentifierForTag;
}

uint64_t __45__LiveFSFPItemHelper_UTIForExtension_liType___block_invoke()
{
  v0 = objc_opt_new();
  v1 = UTIForExtension_liType__utiCache;
  UTIForExtension_liType__utiCache = v0;

  v2 = UTIForExtension_liType__utiCache;

  return [v2 setCountLimit:200];
}

- (NSString)typeIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(LiveFSFPItemHelper *)self typeIdentifier];
  }

  if (self->_liType == 3)
  {
    v4 = MEMORY[0x277CC2178];
LABEL_5:
    v5 = *v4;
    goto LABEL_13;
  }

  pathExtension = [(LiveFSFPItemHelper *)self pathExtension];
  if (!pathExtension)
  {
    if (self->_liType == 2)
    {
      v4 = MEMORY[0x277CC2078];
      goto LABEL_5;
    }

    pathExtension = &stru_286811DF0;
  }

  v5 = [objc_opt_class() UTIForExtension:pathExtension liType:self->_liType];
  [v5 hasPrefix:@"dyn."];
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    liType = self->_liType;
    filename = self->_filename;
    v12 = 138412802;
    v13 = v5;
    v14 = 1024;
    v15 = liType;
    v16 = 2112;
    v17 = filename;
    _os_log_debug_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEBUG, "typeIdentifier: returning %@ for type %d name %@", &v12, 0x1Cu);
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isTrashed
{
  extension = [(LiveFSFPItemHelper *)self extension];
  if ([extension supportsTrash])
  {
    v4 = [(NSString *)self->_path hasPrefix:@".Trashes/"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)documentSize
{
  v3 = 0;
  if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->attributes.fa_type == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:selfCopy->attributes.fa_size];
    }

    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (BOOL)calcNumberOfChildren:(id *)children
{
  childrenCopy = children;
  v56 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x2020000000;
  v34 = 0;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[LiveFSFPItemHelper calcNumberOfChildren:]";
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_DEFAULT, "%s starting -H-", &buf, 0xCu);
  }

  v5 = 0;
  v28 = v31;
  v6 = 1;
LABEL_4:
  v50[3] = 0;
  v46[3] = 0;
  *(v33[0] + 24) = 0;
  v7 = [(LiveFSFPExtensionHelper *)self->_extension conn:childrenCopy];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v31[0] = __43__LiveFSFPItemHelper_calcNumberOfChildren___block_invoke;
  v31[1] = &unk_27981A740;
  v31[2] = &v39;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v30];

  while (!*(v36 + 6) && !v40[5])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x2020000000;
    v55 = 0;
    fh = self->_fh;
    v10 = v46[3];
    v11 = v50[3];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __43__LiveFSFPItemHelper_calcNumberOfChildren___block_invoke_2;
    v29[3] = &unk_27981AC48;
    v29[4] = &buf;
    v29[5] = &v35;
    v29[6] = &v32;
    v29[7] = &v45;
    v29[8] = &v49;
    [v8 readDirectory:fh amount:0x10000 cookie:v10 verifier:v11 requestID:-1 reply:v29];
    v12 = *(*(&buf + 1) + 24);
    if (v12)
    {
      if (v12 == -1002)
      {
        *(*(&buf + 1) + 24) = 70;
      }

      else if (v12 == -1000)
      {
        _Block_object_dispose(&buf, 8);
        ++v6;
        v5 = v8;
        if (v6 != 7)
        {
          goto LABEL_4;
        }

        v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:11];
        v14 = v40[5];
        v40[5] = v13;

        v15 = v40[5];
        if (v15)
        {
          v16 = livefs_std_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [LiveFSFPItemHelper calcNumberOfChildren:];
          }
        }

        if (childrenCopy)
        {
          v17 = v15;
          *childrenCopy = v15;
        }

        goto LABEL_30;
      }

      v20 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:?];
      v21 = v40[5];
      v40[5] = v20;

      v22 = v40[5];
      if (v22)
      {
        v23 = livefs_std_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPItemHelper calcNumberOfChildren:];
        }
      }

      if (childrenCopy)
      {
        v24 = v22;
        *childrenCopy = v22;
      }

      _Block_object_dispose(&buf, 8);
LABEL_30:
      v19 = 1;
      goto LABEL_31;
    }

    _Block_object_dispose(&buf, 8);
  }

  v18 = livefs_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(LiveFSFPItemHelper *)self calcNumberOfChildren:v33];
  }

  v19 = 0;
  self->numChildren = *(v33[0] + 24);
LABEL_31:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

void __43__LiveFSFPItemHelper_calcNumberOfChildren___block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[LiveFSFPItemHelper calcNumberOfChildren:]_block_invoke_2";
    v19 = 1024;
    v20 = a2;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_255FE9000, v10, OS_LOG_TYPE_DEFAULT, "%s: ReadDir got result %d, bytes %zd", &v17, 0x1Cu);
  }

  if (a2 != -1001 && a2)
  {
    *(*(a1[4] + 8) + 24) = a2;
  }

  else if (a2 == -1001 || !a3)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v11 = [v9 bytes];
    if (a3 >= 1)
    {
      LODWORD(v12) = 0;
      while (1)
      {
        if (*(v11 + 21) != 46)
        {
          ++*(*(a1[6] + 8) + 24);
        }

        v13 = *(v11 + 8);
        if (v13 == -1)
        {
          break;
        }

        v14 = *(v11 + 16);
        v12 = (v12 + v14);
        *(*(a1[7] + 8) + 24) = v13;
        v11 += v14;
        if (v14)
        {
          v15 = v12 >= a3;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          goto LABEL_21;
        }
      }

      *(*(a1[5] + 8) + 24) = 1;
    }

LABEL_21:
    *(*(a1[8] + 8) + 24) = a4;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSNumber)childItemCount
{
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPItemHelper childItemCount];
  }

  return 0;
}

- (NSDate)contentModificationDate
{
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPItemHelper contentModificationDate];
  }

  if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0]&& (self->attributes.fa_validmask & 0x800) != 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:selfCopy->attributes.fa_mtime.tv_sec + selfCopy->attributes.fa_mtime.tv_nsec * 0.000000001];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)creationDate
{
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPItemHelper creationDate];
  }

  if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0]&& (self->attributes.fa_validmask & 0x2000) != 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:selfCopy->attributes.fa_birthtime.tv_sec + selfCopy->attributes.fa_birthtime.tv_nsec * 0.000000001];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)lastUsedTime
{
  if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0]&& (self->attributes.fa_validmask & 0x800) != 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    tv_sec = selfCopy->attributes.fa_mtime.tv_sec;
    tv_nsec = selfCopy->attributes.fa_mtime.tv_nsec;
    v8 = livefs_std_log();
    v9 = tv_sec + tv_nsec * 0.000000001;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPItemHelper lastUsedTime];
    }

    v4 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = livefs_std_log();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPItemHelper lastUsedTime];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_fetchXattrValues
{
  if ([(LiveFSFPExtensionHelper *)self->_extension isClusterMaster])
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isFetchingXattrValues = selfCopy->_isFetchingXattrValues;
  if (isFetchingXattrValues)
  {
LABEL_6:
    objc_sync_exit(selfCopy);

    return isFetchingXattrValues;
  }

  lastXattrValuesFetchDate = selfCopy->_lastXattrValuesFetchDate;
  if (lastXattrValuesFetchDate)
  {
    [(NSDate *)lastXattrValuesFetchDate timeIntervalSinceNow];
    if (v6 + 3600.0 > 0.0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v8 = selfCopy->_lastXattrValuesFetchDate;
    selfCopy->_lastXattrValuesFetchDate = date;
  }

  [(LiveFSFPItemHelper *)selfCopy ensureFileHandleOrError:0];
  selfCopy->_isFetchingXattrValues = 1;
  if (!selfCopy->_xattrFetchGroup)
  {
    v9 = dispatch_group_create();
    xattrFetchGroup = selfCopy->_xattrFetchGroup;
    selfCopy->_xattrFetchGroup = v9;
  }

  v11 = 3;
  do
  {
    dispatch_group_enter(selfCopy->_xattrFetchGroup);
    --v11;
  }

  while (v11);
  objc_sync_exit(selfCopy);

  conn = [(LiveFSFPExtensionHelper *)self->_extension conn];
  remoteObjectProxy = [conn remoteObjectProxy];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__LiveFSFPItemHelper__fetchXattrValues__block_invoke;
  v17[3] = &unk_27981AC70;
  v17[4] = selfCopy;
  v17[5] = v18;
  [(LiveFSFPItemHelper *)selfCopy _fetchLastUsedDateWithProxy:remoteObjectProxy completionHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__LiveFSFPItemHelper__fetchXattrValues__block_invoke_2;
  v16[3] = &unk_27981AC98;
  v16[4] = selfCopy;
  v16[5] = v18;
  [(LiveFSFPItemHelper *)selfCopy _fetchTagDataWithProxy:remoteObjectProxy completionHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__LiveFSFPItemHelper__fetchXattrValues__block_invoke_3;
  v15[3] = &unk_27981ACC0;
  v15[4] = selfCopy;
  v15[5] = v18;
  [(LiveFSFPItemHelper *)selfCopy _fetchFavoriteRank:remoteObjectProxy completionHandler:v15];
  _Block_object_dispose(v18, 8);

  return 1;
}

void __39__LiveFSFPItemHelper__fetchXattrValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  objc_storeStrong((*(a1 + 32) + 240), a2);
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(a1 + 32) + 208) = 0;
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = *(a1 + 32);
    v10 = *(v9 + 216);
    *(v9 + 216) = v8;
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  objc_sync_exit(v7);
}

void __39__LiveFSFPItemHelper__fetchXattrValues__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  objc_storeStrong((*(a1 + 32) + 248), a2);
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(a1 + 32) + 208) = 0;
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = *(a1 + 32);
    v10 = *(v9 + 216);
    *(v9 + 216) = v8;
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  objc_sync_exit(v7);
}

void __39__LiveFSFPItemHelper__fetchXattrValues__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  objc_storeStrong((*(a1 + 32) + 256), a2);
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(a1 + 32) + 208) = 0;
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = *(a1 + 32);
    v10 = *(v9 + 216);
    *(v9 + 216) = v8;
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  objc_sync_exit(v7);
}

- (void)_fetchXattrNamed:(id)named proxy:(id)proxy completionHandler:(id)handler
{
  namedCopy = named;
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke;
  v20[3] = &unk_27981ACE8;
  v10 = namedCopy;
  v21 = v10;
  selfCopy = self;
  v11 = handlerCopy;
  v23 = v11;
  v12 = [proxy remoteObjectProxyWithErrorHandler:v20];
  fh = self->_fh;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_46;
  v16[3] = &unk_27981AD10;
  v17 = v10;
  selfCopy2 = self;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  [v12 xattrOf:fh named:v15 requestID:-1 reply:v16];
}

void __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_46(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 != 93 && a2)
  {
    v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_46_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_fetchLastUsedDateWithProxy:(id)proxy completionHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  if ([(LiveFSFPItemHelper *)self isDocument])
  {
    v8 = *MEMORY[0x277CC62C0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__LiveFSFPItemHelper__fetchLastUsedDateWithProxy_completionHandler___block_invoke;
    v9[3] = &unk_27981AD38;
    v10 = handlerCopy;
    [(LiveFSFPItemHelper *)self _fetchXattrNamed:v8 proxy:proxyCopy completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __68__LiveFSFPItemHelper__fetchLastUsedDateWithProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 fp_lastUsedDate];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_fetchTagDataWithProxy:(id)proxy completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = *MEMORY[0x277CC62D0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__LiveFSFPItemHelper__fetchTagDataWithProxy_completionHandler___block_invoke;
  v9[3] = &unk_27981AD38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(LiveFSFPItemHelper *)self _fetchXattrNamed:v7 proxy:proxy completionHandler:v9];
}

- (void)_fetchFavoriteRank:(id)rank completionHandler:(id)handler
{
  rankCopy = rank;
  handlerCopy = handler;
  if ([(LiveFSFPItemHelper *)self isDirectory]&& ![(LiveFSFPExtensionHelper *)self->_extension isClusterMaster])
  {
    v8 = *MEMORY[0x277CC62A0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__LiveFSFPItemHelper__fetchFavoriteRank_completionHandler___block_invoke;
    v9[3] = &unk_27981AD38;
    v10 = handlerCopy;
    [(LiveFSFPItemHelper *)self _fetchXattrNamed:v8 proxy:rankCopy completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __59__LiveFSFPItemHelper__fetchFavoriteRank_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 fp_favoriteRank];
  (*(v4 + 16))(v4, v6, v5);
}

- (NSDate)lastUsedDate
{
  if ([(LiveFSFPItemHelper *)self _fetchXattrValues])
  {
    dispatch_group_wait(self->_xattrFetchGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_lastUsedDate;
  objc_sync_exit(selfCopy);

  return v4;
}

- (NSData)tagData
{
  if ([(LiveFSFPItemHelper *)self _fetchXattrValues])
  {
    dispatch_group_wait(self->_xattrFetchGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_tagData;
  objc_sync_exit(selfCopy);

  return v4;
}

- (NSNumber)favoriteRank
{
  if ([(LiveFSFPItemHelper *)self _fetchXattrValues])
  {
    dispatch_group_wait(self->_xattrFetchGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_favoriteRank;
  objc_sync_exit(selfCopy);

  return v4;
}

- (NSData)versionIdentifier
{
  if (![(LiveFSFPItemHelper *)self refreshAttrsHasAProblem:0]&& (self->attributes.fa_validmask & 0x800) != 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = selfCopy->attributes.fa_mtime.tv_sec + selfCopy->attributes.fa_mtime.tv_nsec * 0.000000001;
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPItemHelper lastUsedTime];
    }

    v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v7 length:8];
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = livefs_std_log();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPItemHelper lastUsedTime];
    }

    v4 = 0;
  }

  return v4;
}

- (LiveFSFPEnumeratorDataContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (void)fullPath
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(self + 280);
  v3 = *a2;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)initItemForFH:withReference:name:parent:type:attrs:extension:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initItemForFH:(os_log_t)log withReference:name:parent:type:attrs:extension:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[LiveFSFPItemHelper initItemForFH:withReference:name:parent:type:attrs:extension:]";
  _os_log_error_impl(&dword_255FE9000, log, OS_LOG_TYPE_ERROR, "%s: type == -1 invalid without attributes", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2_17_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v8 = *MEMORY[0x277D85DE8];
  [v1 length];
  [v0 bytes];
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __46__LiveFSFPItemHelper_ensureFileHandleOrError___block_invoke_2_17_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_255FE9000, log, OS_LOG_TYPE_FAULT, "Got success from LILookup but some out parameters are nil: %@, %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)refreshAttrsHasAProblem:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 280);
  v2 = *(a1 + 304);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshAttrsHasAProblem:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isHidden
{
  OUTLINED_FUNCTION_7_0();
  v10 = *MEMORY[0x277D85DE8];
  filename = [v1 filename];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)parentItemIdentifier
{
  OUTLINED_FUNCTION_7_0();
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 280);
  v4 = *(v2 + 320);
  itemIdentifier = [v4 itemIdentifier];
  filename = [*(v1 + 320) filename];
  v8 = 136316162;
  v9 = "[LiveFSFPItemHelper parentItemIdentifier]";
  v10 = 2112;
  v11 = v3;
  v12 = 2112;
  v13 = v4;
  v14 = 2112;
  v15 = itemIdentifier;
  v16 = 2112;
  v17 = filename;
  _os_log_debug_impl(&dword_255FE9000, v0, OS_LOG_TYPE_DEBUG, "%s: Item %@ parent %@ parent ID %@ parent name %@", &v8, 0x34u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)capabilities
{
  OUTLINED_FUNCTION_7_0();
  v10 = *MEMORY[0x277D85DE8];
  filename = [v1 filename];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pathExtension
{
  v7 = *MEMORY[0x277D85DE8];
  filename = [self filename];
  v5 = 134217984;
  v6 = [filename length];
  _os_log_debug_impl(&dword_255FE9000, a2, OS_LOG_TYPE_DEBUG, "start:%lu", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)typeIdentifier
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(self + 264);
  v8 = *(self + 272);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)calcNumberOfChildren:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)calcNumberOfChildren:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 272);
  v3 = *(*a2 + 24);
  v7[0] = 136315650;
  OUTLINED_FUNCTION_4_0();
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEBUG, "%s: Item %@ caclulated %d total entries", v7, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)childItemCount
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)contentModificationDate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)creationDate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lastUsedTime
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__LiveFSFPItemHelper__fetchXattrNamed_proxy_completionHandler___block_invoke_46_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end