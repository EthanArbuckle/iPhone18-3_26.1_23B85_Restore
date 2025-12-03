@interface CPLRecordComputeState
- (CPLRecordComputeState)initWithCoder:(id)coder;
- (CPLRecordComputeState)initWithItemScopedIdentifier:(id)identifier fileStorageIdentifier:(id)storageIdentifier version:(id)version fileURL:(id)l adjustmentFingerprint:(id)fingerprint lastUpdatedDate:(id)date;
- (id)copyAddingFileURL:(id)l;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
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
    path = [(NSURL *)fileURL path];
    v12 = [v3 initWithFormat:@"<%@ %@ %@ %@ %@ %@ %@>", v4, itemScopedIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate, path];
  }

  else
  {
    v12 = [v3 initWithFormat:@"<%@ %@ %@ %@ %@ %@ %@>", v4, itemScopedIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, self->_lastUpdatedDate, @"no file"];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  itemScopedIdentifier = self->_itemScopedIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemScopedIdentifier forKey:@"itemScopedIdentifier"];
  [coderCopy encodeObject:self->_fileStorageIdentifier forKey:@"fileStorageIdentifier"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_fileURL forKey:@"fileURL"];
  [coderCopy encodeObject:self->_adjustmentFingerprint forKey:@"adjustmentFingerprint"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
}

- (CPLRecordComputeState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemScopedIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileStorageIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentFingerprint"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];

  v11 = [(CPLRecordComputeState *)self initWithItemScopedIdentifier:v5 fileStorageIdentifier:v6 version:v7 fileURL:v8 adjustmentFingerprint:v9 lastUpdatedDate:v10];
  return v11;
}

- (id)copyAddingFileURL:(id)l
{
  lCopy = l;
  v5 = [CPLRecordComputeState alloc];
  itemScopedIdentifier = [(CPLRecordComputeState *)self itemScopedIdentifier];
  fileStorageIdentifier = [(CPLRecordComputeState *)self fileStorageIdentifier];
  version = [(CPLRecordComputeState *)self version];
  adjustmentFingerprint = [(CPLRecordComputeState *)self adjustmentFingerprint];
  lastUpdatedDate = [(CPLRecordComputeState *)self lastUpdatedDate];
  v11 = [(CPLRecordComputeState *)v5 initWithItemScopedIdentifier:itemScopedIdentifier fileStorageIdentifier:fileStorageIdentifier version:version fileURL:lCopy adjustmentFingerprint:adjustmentFingerprint lastUpdatedDate:lastUpdatedDate];

  return v11;
}

- (CPLRecordComputeState)initWithItemScopedIdentifier:(id)identifier fileStorageIdentifier:(id)storageIdentifier version:(id)version fileURL:(id)l adjustmentFingerprint:(id)fingerprint lastUpdatedDate:(id)date
{
  identifierCopy = identifier;
  storageIdentifierCopy = storageIdentifier;
  versionCopy = version;
  lCopy = l;
  fingerprintCopy = fingerprint;
  dateCopy = date;
  v34.receiver = self;
  v34.super_class = CPLRecordComputeState;
  v20 = [(CPLRecordComputeState *)&v34 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    itemScopedIdentifier = v20->_itemScopedIdentifier;
    v20->_itemScopedIdentifier = v21;

    v23 = [storageIdentifierCopy copy];
    fileStorageIdentifier = v20->_fileStorageIdentifier;
    v20->_fileStorageIdentifier = v23;

    v25 = [versionCopy copy];
    version = v20->_version;
    v20->_version = v25;

    v27 = [lCopy copy];
    fileURL = v20->_fileURL;
    v20->_fileURL = v27;

    v29 = [fingerprintCopy copy];
    adjustmentFingerprint = v20->_adjustmentFingerprint;
    v20->_adjustmentFingerprint = v29;

    v31 = [dateCopy copy];
    lastUpdatedDate = v20->_lastUpdatedDate;
    v20->_lastUpdatedDate = v31;
  }

  return v20;
}

@end