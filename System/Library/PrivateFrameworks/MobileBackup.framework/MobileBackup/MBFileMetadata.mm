@interface MBFileMetadata
+ (id)fileMetadataExcludingAssetForPath:(id)path error:(id *)error;
+ (id)fileMetadataExcludingAssetForPath:(id)path modifiedDate:(int64_t *)date error:(id *)error;
+ (id)fileMetadataExcludingXattrsAndAssetFromNode:(id *)node error:(id *)error;
+ (id)fileMetadataFromNode:(id *)node xattrs:(id)xattrs linkTarget:(id)target assetMetadata:(id)metadata error:(id *)error;
+ (unint64_t)modificationTypeForMetadata:(id)metadata oldMetadata:(id)oldMetadata;
- ($A74A704DF38FE0153EF2DEEF31040CF8)mbNode;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stringRepresentationWithAssetMetadata:(BOOL)metadata;
- (void)getNode:(id *)node;
- (void)setXattrs:(id)xattrs;
@end

@implementation MBFileMetadata

- (void)getNode:(id *)node
{
  *&node->var0 = *&self->_mbNode.direntCount;
  v3 = *&self->_mbNode.birth;
  v4 = *&self->_mbNode.statusChanged;
  v5 = *&self->_mbNode.inode;
  node->var10 = self->_mbNode.cloneID;
  *&node->var6 = v4;
  *&node->var8 = v5;
  *&node->var4 = v3;
}

- (void)setXattrs:(id)xattrs
{
  xattrsCopy = xattrs;
  if (xattrsCopy && [xattrsCopy count])
  {
    objc_storeStrong(&self->_xattrs, xattrs);
    v6 = HIBYTE(self->_mbNode.cloneID) | 4;
  }

  else
  {
    v6 = HIBYTE(self->_mbNode.cloneID) & 0xFB;
  }

  HIBYTE(self->_mbNode.cloneID) = v6;

  _objc_release_x1();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    memset(v15, 0, 56);
    if (v5)
    {
      [v5 mbNode];
    }

    if (!WORD2(self->_mbNode.cloneID) && self->_mbNode.userID == DWORD1(v15[0]) && *&self->_mbNode.groupID == *(v15 + 8) && *&self->_mbNode.modified == *(&v15[1] + 8) && *&self->_mbNode.fileSize == *(&v15[2] + 8) && !BYTE6(self->_mbNode.cloneID) && (self->_mbNode.cloneID & 0x400000000000000) == 0)
    {
      xattrs = [(MBFileMetadata *)self xattrs];
      if ([xattrs count])
      {
      }

      else
      {
        xattrs2 = [v6 xattrs];
        v10 = [xattrs2 count];

        if (!v10)
        {
LABEL_16:
          v7 = 1;
LABEL_18:

          goto LABEL_19;
        }
      }

      xattrs3 = [(MBFileMetadata *)self xattrs];
      xattrs4 = [v6 xattrs];
      v13 = [xattrs3 isEqualToDictionary:xattrs4];

      if (v13)
      {
        goto LABEL_16;
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithUnsignedShort:WORD2(self->_mbNode.cloneID)];
  [v3 setObject:v4 forKeyedSubscript:@"mode"];

  0xF000 = [NSNumber numberWithInt:WORD2(self->_mbNode.cloneID) & 0xF000];
  [v3 setObject:0xF000 forKeyedSubscript:@"type"];

  v6 = [NSNumber numberWithUnsignedInt:self->_mbNode.userID];
  [v3 setObject:v6 forKeyedSubscript:@"userID"];

  v7 = [NSNumber numberWithUnsignedInt:self->_mbNode.groupID];
  [v3 setObject:v7 forKeyedSubscript:@"groupID"];

  v8 = [NSNumber numberWithUnsignedInt:self->_mbNode.flags];
  [v3 setObject:v8 forKeyedSubscript:@"flags"];

  v9 = [NSNumber numberWithLong:self->_mbNode.birth];
  [v3 setObject:v9 forKeyedSubscript:@"birth"];

  v10 = [NSNumber numberWithLong:self->_mbNode.modified];
  [v3 setObject:v10 forKeyedSubscript:@"modified"];

  v11 = [NSNumber numberWithLong:self->_mbNode.statusChanged];
  [v3 setObject:v11 forKeyedSubscript:@"statusChanged"];

  v12 = [NSNumber numberWithLongLong:self->_mbNode.fileSize];
  [v3 setObject:v12 forKeyedSubscript:@"size"];

  v13 = [NSNumber numberWithUnsignedLongLong:self->_mbNode.inode];
  [v3 setObject:v13 forKeyedSubscript:@"inode"];

  v14 = [NSNumber numberWithUnsignedLongLong:*(&self->_mbNode.genCount + 1)];
  [v3 setObject:v14 forKeyedSubscript:@"cloneID"];

  v15 = [NSNumber numberWithUnsignedChar:BYTE6(self->_mbNode.cloneID)];
  [v3 setObject:v15 forKeyedSubscript:@"pc"];

  v16 = [NSNumber numberWithBool:HIBYTE(self->_mbNode.cloneID) & 1];
  [v3 setObject:v16 forKeyedSubscript:@"isHardlink"];

  v17 = [NSNumber numberWithBool:(HIBYTE(self->_mbNode.cloneID) >> 1) & 1];
  [v3 setObject:v17 forKeyedSubscript:@"isFullClone"];

  v18 = [NSNumber numberWithBool:(HIBYTE(self->_mbNode.cloneID) >> 2) & 1];
  [v3 setObject:v18 forKeyedSubscript:@"hasXattrs"];

  v19 = [NSNumber numberWithUnsignedInt:self->_mbNode.direntCount];
  [v3 setObject:v19 forKeyedSubscript:@"direntCount"];

  [v3 setObject:self->_linkTarget forKeyedSubscript:@"target"];
  v20 = [NSNumber numberWithUnsignedInt:self->_mbNode.genCount];
  [v3 setObject:v20 forKeyedSubscript:@"genCount"];

  dictionaryRepresentation = [(MBAssetMetadata *)self->_assetMetadata dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"assetMetadata"];

  v22 = [NSNumber numberWithBool:(self->_mbNode.flags >> 30) & 1];
  [v3 setObject:v22 forKeyedSubscript:@"isDataless"];

  if ((self->_mbNode.cloneID & 0x400000000000000) != 0)
  {
    v23 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    xattrs = [(MBFileMetadata *)self xattrs];
    v25 = [xattrs countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(xattrs);
          }

          v29 = *(*(&v34 + 1) + 8 * i);
          xattrs2 = [(MBFileMetadata *)self xattrs];
          v31 = [xattrs2 objectForKeyedSubscript:v29];

          v32 = [v31 base64EncodedStringWithOptions:0];
          [v23 setObject:v32 forKeyedSubscript:v29];
        }

        v26 = [xattrs countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"xattrs"];
  }

  return v3;
}

- (id)stringRepresentationWithAssetMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v4 = WORD2(self->_mbNode.cloneID);
  v5 = v4 & 0xF000;
  if (v5 == 0x4000)
  {
    v55 = *&self->_mbNode.birth;
    v53 = *&self->_mbNode.statusChanged;
    inode = self->_mbNode.inode;
    v23 = BYTE6(self->_mbNode.cloneID);
    v24 = (HIBYTE(self->_mbNode.cloneID) >> 2) & 1;
    userID = self->_mbNode.userID;
    groupID = self->_mbNode.groupID;
    flags = self->_mbNode.flags;
    xattrs = [(MBFileMetadata *)self xattrs];
    v44 = v24;
    v45 = [xattrs count];
    v41 = inode;
    v43 = v23;
    v39 = v53;
    v36 = v55;
    v32 = groupID;
    v34 = flags;
    v13 = @"(dir) mode 0%o, u/gid %d/%d, flags 0x%x, b/m/ctime %ld/%ld/%ld, size %llu, ino %llu, pc %hhu, hasXattrs %d(%llu)";
  }

  else
  {
    if (v5 == 0x8000)
    {
      v52 = self->_mbNode.userID;
      v50 = self->_mbNode.groupID;
      v49 = self->_mbNode.flags;
      modified = self->_mbNode.modified;
      birth = self->_mbNode.birth;
      statusChanged = self->_mbNode.statusChanged;
      fileSize = self->_mbNode.fileSize;
      v17 = self->_mbNode.inode;
      genCount = self->_mbNode.genCount;
      v19 = (HIBYTE(self->_mbNode.cloneID) >> 2) & 1;
      v20 = BYTE6(self->_mbNode.cloneID);
      xattrs = [(MBFileMetadata *)self xattrs];
      v47 = [xattrs count];
      if (fileSize)
      {
        *(&v40 + 1) = fileSize;
        v42 = v17;
        v38 = modified;
        *&v40 = statusChanged;
        v35 = v49;
        v37 = birth;
        v33 = v50;
        v21 = @"(reg) mode 0%o, u/gid %d/%d, flags 0x%x, b/m/ctime %ld/%ld/%ld, size %llu, ino %llu, gen %u, pc %hhu, hasXattrs %d(%llu)";
      }

      else
      {
        v42 = v17;
        v38 = modified;
        v40 = statusChanged;
        v35 = v49;
        v37 = birth;
        v33 = v50;
        v21 = @"(reg-empty) mode 0%o, u/gid %d/%d, flags 0x%x, b/m/ctime %ld/%ld/%ld, size %llu, ino %llu, gen %u, pc %hhu, hasXattrs %d(%llu)";
      }

      [NSString stringWithFormat:v21, v4, v52, v33, v35, v37, v38, v40, v42, genCount, v20, v19, v47];
      goto LABEL_12;
    }

    v54 = *&self->_mbNode.birth;
    v51 = *&self->_mbNode.statusChanged;
    v6 = self->_mbNode.inode;
    v7 = BYTE6(self->_mbNode.cloneID);
    v8 = (HIBYTE(self->_mbNode.cloneID) >> 2) & 1;
    userID = self->_mbNode.userID;
    v10 = self->_mbNode.groupID;
    v11 = self->_mbNode.flags;
    if (v5 == 40960)
    {
      xattrs = [(MBFileMetadata *)self xattrs];
      v45 = [xattrs count];
      linkTarget = self->_linkTarget;
      v43 = v7;
      v44 = v8;
      v41 = v6;
      v39 = v51;
      v36 = v54;
      v32 = v10;
      v34 = v11;
      v13 = @"(symlink) mode 0%o, u/gid %d/%d, flags 0x%x, b/m/ctime %ld/%ld/%ld, size %llu, ino %llu, pc %hhu hasXattrs %d(%llu), target %@";
    }

    else
    {
      xattrs = [(MBFileMetadata *)self xattrs];
      v44 = v8;
      v45 = [xattrs count];
      v41 = v6;
      v43 = v7;
      v39 = v51;
      v36 = v54;
      v32 = v10;
      v34 = v11;
      v13 = @"(unsupported) mode 0%o, u/gid %d/%d, flags 0x%x, b/m/ctime %ld/%ld/%ld, size %llu, ino %llu, pc %hhu, hasXattrs %d(%llu)";
    }
  }

  [NSString stringWithFormat:v13, v4, userID, v32, v34, v36, v39, v41, v43, v44, v45, linkTarget];
  v27 = LABEL_12:;

  if (metadataCopy && (assetMetadata = self->_assetMetadata) != 0)
  {
    stringRepresentation = [(MBAssetMetadata *)assetMetadata stringRepresentation];
    v30 = [NSString stringWithFormat:@"%@, %@", v27, stringRepresentation];
  }

  else
  {
    v30 = v27;
  }

  return v30;
}

- (id)description
{
  v3 = [(MBFileMetadata *)self stringRepresentationWithAssetMetadata:0];
  v4 = objc_opt_class();
  v5 = [NSString stringWithFormat:@"<%s: %p, %@>", class_getName(v4), self, v3];

  return v5;
}

+ (id)fileMetadataFromNode:(id *)node xattrs:(id)xattrs linkTarget:(id)target assetMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  targetCopy = target;
  xattrsCopy = xattrs;
  v13 = objc_opt_new();
  *(v13 + 32) = *&node->var0;
  v15 = *&node->var6;
  v14 = *&node->var8;
  v16 = *&node->var4;
  *(v13 + 96) = node->var10;
  *(v13 + 64) = v15;
  *(v13 + 80) = v14;
  *(v13 + 48) = v16;
  [v13 setLinkTarget:targetCopy];

  [v13 setXattrs:xattrsCopy];
  [v13 setAssetMetadata:metadataCopy];

  return v13;
}

+ (id)fileMetadataExcludingXattrsAndAssetFromNode:(id *)node error:(id *)error
{
  v6 = objc_opt_class();

  return [v6 fileMetadataFromNode:node xattrs:0 linkTarget:0 assetMetadata:0 error:error];
}

+ (id)fileMetadataExcludingAssetForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = [objc_opt_class() fileMetadataExcludingAssetForPath:pathCopy modifiedDate:0 error:error];

  return v6;
}

+ (id)fileMetadataExcludingAssetForPath:(id)path modifiedDate:(int64_t *)date error:(id *)error
{
  pathCopy = path;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = 0;
  if (MBNodeForPath(pathCopy, &v16, error))
  {
    if (date)
    {
      *(&v17 + 1) = *date;
    }

    fileSystemRepresentation = [pathCopy fileSystemRepresentation];
    if ((v20 & 0x400000000000000) != 0)
    {
      v15 = 0;
      v10 = [MBExtendedAttributes attributesForPathFSR:fileSystemRepresentation error:&v15];
      v11 = v15;
      if (v11)
      {
        v12 = v11;
        if (error)
        {
          v13 = v11;
          v8 = 0;
          *error = v12;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
    }

    if ((WORD2(v20) & 0xF000) == 0xA000)
    {
      v12 = [MBFileOperation symbolicLinkTargetWithPathFSR:fileSystemRepresentation error:error];
      if (!v12)
      {
        v8 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v8 = [MBFileMetadata fileMetadataFromNode:&v16 xattrs:v10 linkTarget:v12 assetMetadata:0 error:error];
LABEL_14:

    goto LABEL_15;
  }

LABEL_16:

  return v8;
}

+ (unint64_t)modificationTypeForMetadata:(id)metadata oldMetadata:(id)oldMetadata
{
  metadataCopy = metadata;
  oldMetadataCopy = oldMetadata;
  if (oldMetadataCopy)
  {
    [oldMetadataCopy mbNode];
    if (metadataCopy)
    {
      [metadataCopy mbNode];
    }

    __assert_rtn("+[MBFileMetadata modificationTypeForMetadata:oldMetadata:]", "MBFileMetadata.m", 384, "0");
  }

  return 1;
}

- ($A74A704DF38FE0153EF2DEEF31040CF8)mbNode
{
  v3 = *&self[1].var0;
  *&retstr->var6 = *&self->var10;
  *&retstr->var8 = v3;
  retstr->var10 = self[1].var4;
  v4 = *&self->var8;
  *&retstr->var0 = *&self->var6;
  *&retstr->var4 = v4;
  return self;
}

@end