@interface NTKFaceSnapshotResult
- (NTKFaceSnapshotResult)initWithCachedFile:(id)file snapshotKey:(id)key rawSnapshotKey:(id)snapshotKey context:(id)context blankComplications:(BOOL)complications snapshot:(id)snapshot;
- (NTKFaceSnapshotResult)initWithCoder:(id)coder;
- (id)_snapshotResultForGalleryLiteStoredWithin:(id)within withError:(id *)error;
- (id)snapshotResultForGalleryLiteUsingDevice:(id)device withError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKFaceSnapshotResult

- (void)encodeWithCoder:(id)coder
{
  snapshot = self->_snapshot;
  coderCopy = coder;
  [coderCopy encodeObject:snapshot forKey:@"snapshot"];
  [coderCopy encodeObject:self->_snapshotContext forKey:@"context"];
  [coderCopy encodeObject:self->_cachedFile forKey:@"cachedFile"];
  [coderCopy encodeObject:self->_snapshotKey forKey:@"snapshotKey"];
  [coderCopy encodeObject:self->_rawSnapshotKey forKey:@"rawSnapshotKey"];
  [coderCopy encodeBool:self->_blankComplications forKey:@"blankComplications"];
}

- (NTKFaceSnapshotResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshot"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshotKey"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawSnapshotKey"];
        if (v8)
        {
          v9 = [coderCopy decodeBoolForKey:@"blankComplications"];
          v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cachedFile"];
          self = [(NTKFaceSnapshotResult *)self initWithCachedFile:v10 snapshotKey:v7 rawSnapshotKey:v8 context:v6 blankComplications:v9 snapshot:v5];

          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NTKFaceSnapshotResult)initWithCachedFile:(id)file snapshotKey:(id)key rawSnapshotKey:(id)snapshotKey context:(id)context blankComplications:(BOOL)complications snapshot:(id)snapshot
{
  fileCopy = file;
  keyCopy = key;
  snapshotKeyCopy = snapshotKey;
  contextCopy = context;
  snapshotCopy = snapshot;
  v27.receiver = self;
  v27.super_class = NTKFaceSnapshotResult;
  v20 = [(NTKFaceSnapshotResult *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_cachedFile, file);
    objc_storeStrong(&v21->_snapshotContext, context);
    v22 = [keyCopy copy];
    snapshotKey = v21->_snapshotKey;
    v21->_snapshotKey = v22;

    v24 = [snapshotKeyCopy copy];
    rawSnapshotKey = v21->_rawSnapshotKey;
    v21->_rawSnapshotKey = v24;

    v21->_blankComplications = complications;
    objc_storeStrong(&v21->_snapshot, snapshot);
  }

  return v21;
}

- (id)snapshotResultForGalleryLiteUsingDevice:(id)device withError:(id *)error
{
  v6 = [MEMORY[0x277CBEBC0] galleryLiteSupportDirectoryForDevice:device];
  v7 = [(NTKFaceSnapshotResult *)self _snapshotResultForGalleryLiteStoredWithin:v6 withError:error];

  return v7;
}

- (id)_snapshotResultForGalleryLiteStoredWithin:(id)within withError:(id *)error
{
  withinCopy = within;
  cachedFile = [(NTKFaceSnapshotResult *)self cachedFile];
  v8 = cachedFile;
  if (cachedFile)
  {
    v9 = [cachedFile _cachedFileForGalleryLiteStoredWithin:withinCopy withError:error];
    if (v9)
    {
      v10 = v9;
      v27 = withinCopy;
      v11 = 0;
LABEL_13:
      v20 = [NTKFaceSnapshotResult alloc];
      snapshotKey = [(NTKFaceSnapshotResult *)self snapshotKey];
      rawSnapshotKey = [(NTKFaceSnapshotResult *)self rawSnapshotKey];
      snapshotContext = [(NTKFaceSnapshotResult *)self snapshotContext];
      hasBlankComplications = [(NTKFaceSnapshotResult *)self hasBlankComplications];
      snapshot = [(NTKFaceSnapshotResult *)self snapshot];
      v18 = [(NTKFaceSnapshotResult *)v20 initWithCachedFile:v10 snapshotKey:snapshotKey rawSnapshotKey:rawSnapshotKey context:snapshotContext blankComplications:hasBlankComplications snapshot:snapshot];

      withinCopy = v27;
      goto LABEL_15;
    }

    v10 = 0;
    v11 = 0;
    if (error)
    {
      v18 = 0;
      *error = 0;
      goto LABEL_15;
    }
  }

  else
  {
    snapshot2 = [(NTKFaceSnapshotResult *)self snapshot];
    v12 = [[NTKEncodedSnapshot alloc] initWithImage:snapshot2];
    snapshotKey2 = [(NTKFaceSnapshotResult *)self snapshotKey];
    v14 = [withinCopy URLByAppendingPathComponent:snapshotKey2];
    v15 = [v14 URLByAppendingPathExtension:@"cpbitmap"];

    v29 = 0;
    v16 = [(NTKEncodedSnapshot *)v12 writeToURL:v15 error:&v29];
    v17 = v29;
    v11 = v17;
    if (v16)
    {
      v10 = [[NTKFaceSnapshotResultCachedFile alloc] initWithFileURL:v15 format:2];
    }

    else if (error)
    {
      v19 = v17;
      v10 = 0;
      *error = v11;
    }

    else
    {
      v10 = 0;
    }

    if (v16)
    {
      v27 = withinCopy;
      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

@end