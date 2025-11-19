@interface CPLRecordComputeState
- (CPLRecordComputeState)initWithCoder:(id)a3;
- (CPLRecordComputeState)initWithItemScopedIdentifier:(id)a3 fileStorageIdentifier:(id)a4 version:(id)a5 fileURL:(id)a6 adjustmentFingerprint:(id)a7 lastUpdatedDate:(id)a8;
- (id)copyAddingFileURL:(id)a3;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLRecordComputeState

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  if (self->_fileURL)
  {
    v5 = @"has file";
  }

  else
  {
    v5 = @"no file";
  }

  v6 = [v3 initWithFormat:@"<%@ %@ %@ %@ %@ %@ %@>", v4, self->_itemScopedIdentifier, self->_fileStorageIdentifier, self->_version, self->_adjustmentFingerprint, self->_lastUpdatedDate, v5];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  itemScopedIdentifier = self->_itemScopedIdentifier;
  version = self->_version;
  lastUpdatedDate = self->_lastUpdatedDate;
  fileStorageIdentifier = self->_fileStorageIdentifier;
  fileURL = self->_fileURL;
  adjustmentFingerprint = self->_adjustmentFingerprint;
  if (fileURL)
  {
    v11 = [(NSURL *)fileURL path];
    v12 = [v3 initWithFormat:@"<%@ %@ %@ %@ %@ %@ %@>", v4, itemScopedIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate, v11];
  }

  else
  {
    v12 = [v3 initWithFormat:@"<%@ %@ %@ %@ %@ %@ %@>", v4, itemScopedIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, self->_lastUpdatedDate, @"no file"];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  itemScopedIdentifier = self->_itemScopedIdentifier;
  v5 = a3;
  [v5 encodeObject:itemScopedIdentifier forKey:@"itemScopedIdentifier"];
  [v5 encodeObject:self->_fileStorageIdentifier forKey:@"fileStorageIdentifier"];
  [v5 encodeObject:self->_version forKey:@"version"];
  [v5 encodeObject:self->_fileURL forKey:@"fileURL"];
  [v5 encodeObject:self->_adjustmentFingerprint forKey:@"adjustmentFingerprint"];
  [v5 encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
}

- (CPLRecordComputeState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemScopedIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileStorageIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentFingerprint"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];

  v11 = [(CPLRecordComputeState *)self initWithItemScopedIdentifier:v5 fileStorageIdentifier:v6 version:v7 fileURL:v8 adjustmentFingerprint:v9 lastUpdatedDate:v10];
  return v11;
}

- (id)copyAddingFileURL:(id)a3
{
  v4 = a3;
  v5 = [CPLRecordComputeState alloc];
  v6 = [(CPLRecordComputeState *)self itemScopedIdentifier];
  v7 = [(CPLRecordComputeState *)self fileStorageIdentifier];
  v8 = [(CPLRecordComputeState *)self version];
  v9 = [(CPLRecordComputeState *)self adjustmentFingerprint];
  v10 = [(CPLRecordComputeState *)self lastUpdatedDate];
  v11 = [(CPLRecordComputeState *)v5 initWithItemScopedIdentifier:v6 fileStorageIdentifier:v7 version:v8 fileURL:v4 adjustmentFingerprint:v9 lastUpdatedDate:v10];

  return v11;
}

- (CPLRecordComputeState)initWithItemScopedIdentifier:(id)a3 fileStorageIdentifier:(id)a4 version:(id)a5 fileURL:(id)a6 adjustmentFingerprint:(id)a7 lastUpdatedDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = CPLRecordComputeState;
  v20 = [(CPLRecordComputeState *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    itemScopedIdentifier = v20->_itemScopedIdentifier;
    v20->_itemScopedIdentifier = v21;

    v23 = [v15 copy];
    fileStorageIdentifier = v20->_fileStorageIdentifier;
    v20->_fileStorageIdentifier = v23;

    v25 = [v16 copy];
    version = v20->_version;
    v20->_version = v25;

    v27 = [v17 copy];
    fileURL = v20->_fileURL;
    v20->_fileURL = v27;

    v29 = [v18 copy];
    adjustmentFingerprint = v20->_adjustmentFingerprint;
    v20->_adjustmentFingerprint = v29;

    v31 = [v19 copy];
    lastUpdatedDate = v20->_lastUpdatedDate;
    v20->_lastUpdatedDate = v31;
  }

  return v20;
}

@end