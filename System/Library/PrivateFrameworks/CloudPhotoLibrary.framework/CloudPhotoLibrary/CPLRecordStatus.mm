@interface CPLRecordStatus
- (CPLRecordStatus)initWithCoder:(id)coder;
- (CPLRecordStatus)initWithRecord:(id)record generation:(unint64_t)generation;
- (NSString)statusDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmed:(BOOL)confirmed;
- (void)setQuarantined:(BOOL)quarantined;
- (void)setResetting:(BOOL)resetting;
- (void)setShared:(BOOL)shared;
- (void)setUpdating:(BOOL)updating;
- (void)setUploaded:(BOOL)uploaded;
- (void)setUploading:(BOOL)uploading;
- (void)setWaitingForUpdate:(BOOL)update;
- (void)setWaitingForUpload:(BOOL)upload;
@end

@implementation CPLRecordStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  generation = self->_generation;
  statusDescription = [(CPLRecordStatus *)self statusDescription];
  v7 = [v3 stringWithFormat:@"<%@ (%lu) for %@>", v4, generation, statusDescription];

  return v7;
}

- (NSString)statusDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  record = self->_record;
  v5 = objc_opt_class();
  scopedIdentifier = [(CPLRecordChange *)self->_record scopedIdentifier];
  v7 = [v3 initWithFormat:@"%@ %@:", v5, scopedIdentifier];

  isUnknown = [(CPLRecordStatus *)self isUnknown];
  if (isUnknown)
  {
    [v7 appendString:@" unknown"];
  }

  if ([(CPLRecordStatus *)self isResetting])
  {
    [v7 appendString:@" resetting"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isQuarantined])
  {
    [v7 appendString:@" quarantined"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isUploaded])
  {
    [v7 appendString:@" uploaded"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isWaitingForUpload])
  {
    [v7 appendString:@" waitingForUpload"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isUploading])
  {
    [v7 appendString:@" uploading"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isWaitingForUpdate])
  {
    [v7 appendString:@" waitingForUpdate"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isUpdating])
  {
    [v7 appendString:@" updating"];
    isUnknown = 1;
  }

  if ([(CPLRecordStatus *)self isConfirmed])
  {
    [v7 appendString:@" confirmed"];
    if (![(CPLRecordStatus *)self isShared])
    {
      goto LABEL_26;
    }

    v9 = @" shared";
  }

  else
  {
    isShared = [(CPLRecordStatus *)self isShared];
    if (isShared)
    {
      v9 = @" shared";
    }

    else
    {
      v9 = @" no status";
    }

    if (!isShared && isUnknown)
    {
      goto LABEL_26;
    }
  }

  [v7 appendString:v9];
LABEL_26:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  record = self->_record;
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [coderCopy encodeObject:v6 forKey:@"rClass"];

  scopedIdentifier = [(CPLRecordChange *)self->_record scopedIdentifier];
  [coderCopy encodeObject:scopedIdentifier forKey:@"r"];

  [coderCopy encodeInteger:self->_generation forKey:@"g"];
  [coderCopy encodeInt:self->_status.packedStatus forKey:@"pS"];
}

- (CPLRecordStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPLRecordStatus;
  v5 = [(CPLRecordStatus *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rClass"];
    v7 = v6;
    if (v6)
    {
      v8 = NSClassFromString(v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"r"];
    v10 = v9;
    if (!v8 || !v9)
    {

      v13 = 0;
      goto LABEL_10;
    }

    v11 = [(objc_class *)v8 newRecordWithScopedIdentifier:v9];
    record = v5->_record;
    v5->_record = v11;

    v5->_generation = [coderCopy decodeIntegerForKey:@"g"];
    v5->_status.packedStatus = [coderCopy decodeIntForKey:@"pS"];
  }

  v13 = v5;
LABEL_10:

  return v13;
}

- (CPLRecordStatus)initWithRecord:(id)record generation:(unint64_t)generation
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = CPLRecordStatus;
  v8 = [(CPLRecordStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_record, record);
    v9->_generation = generation;
  }

  return v9;
}

- (void)setShared:(BOOL)shared
{
  if (shared)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFDFF | v3;
}

- (void)setConfirmed:(BOOL)confirmed
{
  if (confirmed)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFEFF | v3;
}

- (void)setUpdating:(BOOL)updating
{
  if (updating)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFF7F | v3;
}

- (void)setWaitingForUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFBF | v3;
}

- (void)setUploading:(BOOL)uploading
{
  if (uploading)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFDF | v3;
}

- (void)setWaitingForUpload:(BOOL)upload
{
  if (upload)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFEF | v3;
}

- (void)setUploaded:(BOOL)uploaded
{
  if (uploaded)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFF7 | v3;
}

- (void)setResetting:(BOOL)resetting
{
  if (resetting)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFFB | v3;
}

- (void)setQuarantined:(BOOL)quarantined
{
  if (quarantined)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFFD | v3;
}

@end