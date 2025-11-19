@interface NTKFaceSnapshotResult
- (NTKFaceSnapshotResult)initWithCachedFile:(id)a3 snapshotKey:(id)a4 rawSnapshotKey:(id)a5 context:(id)a6 blankComplications:(BOOL)a7 snapshot:(id)a8;
- (NTKFaceSnapshotResult)initWithCoder:(id)a3;
- (id)_snapshotResultForGalleryLiteStoredWithin:(id)a3 withError:(id *)a4;
- (id)snapshotResultForGalleryLiteUsingDevice:(id)a3 withError:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKFaceSnapshotResult

- (void)encodeWithCoder:(id)a3
{
  snapshot = self->_snapshot;
  v5 = a3;
  [v5 encodeObject:snapshot forKey:@"snapshot"];
  [v5 encodeObject:self->_snapshotContext forKey:@"context"];
  [v5 encodeObject:self->_cachedFile forKey:@"cachedFile"];
  [v5 encodeObject:self->_snapshotKey forKey:@"snapshotKey"];
  [v5 encodeObject:self->_rawSnapshotKey forKey:@"rawSnapshotKey"];
  [v5 encodeBool:self->_blankComplications forKey:@"blankComplications"];
}

- (NTKFaceSnapshotResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshot"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotKey"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawSnapshotKey"];
        if (v8)
        {
          v9 = [v4 decodeBoolForKey:@"blankComplications"];
          v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cachedFile"];
          self = [(NTKFaceSnapshotResult *)self initWithCachedFile:v10 snapshotKey:v7 rawSnapshotKey:v8 context:v6 blankComplications:v9 snapshot:v5];

          v11 = self;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NTKFaceSnapshotResult)initWithCachedFile:(id)a3 snapshotKey:(id)a4 rawSnapshotKey:(id)a5 context:(id)a6 blankComplications:(BOOL)a7 snapshot:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = NTKFaceSnapshotResult;
  v20 = [(NTKFaceSnapshotResult *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_cachedFile, a3);
    objc_storeStrong(&v21->_snapshotContext, a6);
    v22 = [v16 copy];
    snapshotKey = v21->_snapshotKey;
    v21->_snapshotKey = v22;

    v24 = [v17 copy];
    rawSnapshotKey = v21->_rawSnapshotKey;
    v21->_rawSnapshotKey = v24;

    v21->_blankComplications = a7;
    objc_storeStrong(&v21->_snapshot, a8);
  }

  return v21;
}

- (id)snapshotResultForGalleryLiteUsingDevice:(id)a3 withError:(id *)a4
{
  v6 = [MEMORY[0x277CBEBC0] galleryLiteSupportDirectoryForDevice:a3];
  v7 = [(NTKFaceSnapshotResult *)self _snapshotResultForGalleryLiteStoredWithin:v6 withError:a4];

  return v7;
}

- (id)_snapshotResultForGalleryLiteStoredWithin:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(NTKFaceSnapshotResult *)self cachedFile];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _cachedFileForGalleryLiteStoredWithin:v6 withError:a4];
    if (v9)
    {
      v10 = v9;
      v27 = v6;
      v11 = 0;
LABEL_13:
      v20 = [NTKFaceSnapshotResult alloc];
      v21 = [(NTKFaceSnapshotResult *)self snapshotKey];
      v22 = [(NTKFaceSnapshotResult *)self rawSnapshotKey];
      v23 = [(NTKFaceSnapshotResult *)self snapshotContext];
      v24 = [(NTKFaceSnapshotResult *)self hasBlankComplications];
      v25 = [(NTKFaceSnapshotResult *)self snapshot];
      v18 = [(NTKFaceSnapshotResult *)v20 initWithCachedFile:v10 snapshotKey:v21 rawSnapshotKey:v22 context:v23 blankComplications:v24 snapshot:v25];

      v6 = v27;
      goto LABEL_15;
    }

    v10 = 0;
    v11 = 0;
    if (a4)
    {
      v18 = 0;
      *a4 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v28 = [(NTKFaceSnapshotResult *)self snapshot];
    v12 = [[NTKEncodedSnapshot alloc] initWithImage:v28];
    v13 = [(NTKFaceSnapshotResult *)self snapshotKey];
    v14 = [v6 URLByAppendingPathComponent:v13];
    v15 = [v14 URLByAppendingPathExtension:@"cpbitmap"];

    v29 = 0;
    v16 = [(NTKEncodedSnapshot *)v12 writeToURL:v15 error:&v29];
    v17 = v29;
    v11 = v17;
    if (v16)
    {
      v10 = [[NTKFaceSnapshotResultCachedFile alloc] initWithFileURL:v15 format:2];
    }

    else if (a4)
    {
      v19 = v17;
      v10 = 0;
      *a4 = v11;
    }

    else
    {
      v10 = 0;
    }

    if (v16)
    {
      v27 = v6;
      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

@end