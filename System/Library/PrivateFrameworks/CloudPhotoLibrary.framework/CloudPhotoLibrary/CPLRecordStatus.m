@interface CPLRecordStatus
- (CPLRecordStatus)initWithCoder:(id)a3;
- (CPLRecordStatus)initWithRecord:(id)a3 generation:(unint64_t)a4;
- (NSString)statusDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmed:(BOOL)a3;
- (void)setQuarantined:(BOOL)a3;
- (void)setResetting:(BOOL)a3;
- (void)setShared:(BOOL)a3;
- (void)setUpdating:(BOOL)a3;
- (void)setUploaded:(BOOL)a3;
- (void)setUploading:(BOOL)a3;
- (void)setWaitingForUpdate:(BOOL)a3;
- (void)setWaitingForUpload:(BOOL)a3;
@end

@implementation CPLRecordStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  generation = self->_generation;
  v6 = [(CPLRecordStatus *)self statusDescription];
  v7 = [v3 stringWithFormat:@"<%@ (%lu) for %@>", v4, generation, v6];

  return v7;
}

- (NSString)statusDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  record = self->_record;
  v5 = objc_opt_class();
  v6 = [(CPLRecordChange *)self->_record scopedIdentifier];
  v7 = [v3 initWithFormat:@"%@ %@:", v5, v6];

  v8 = [(CPLRecordStatus *)self isUnknown];
  if (v8)
  {
    [v7 appendString:@" unknown"];
  }

  if ([(CPLRecordStatus *)self isResetting])
  {
    [v7 appendString:@" resetting"];
    v8 = 1;
  }

  if ([(CPLRecordStatus *)self isQuarantined])
  {
    [v7 appendString:@" quarantined"];
    v8 = 1;
  }

  if ([(CPLRecordStatus *)self isUploaded])
  {
    [v7 appendString:@" uploaded"];
    v8 = 1;
  }

  if ([(CPLRecordStatus *)self isWaitingForUpload])
  {
    [v7 appendString:@" waitingForUpload"];
    v8 = 1;
  }

  if ([(CPLRecordStatus *)self isUploading])
  {
    [v7 appendString:@" uploading"];
    v8 = 1;
  }

  if ([(CPLRecordStatus *)self isWaitingForUpdate])
  {
    [v7 appendString:@" waitingForUpdate"];
    v8 = 1;
  }

  if ([(CPLRecordStatus *)self isUpdating])
  {
    [v7 appendString:@" updating"];
    v8 = 1;
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
    v10 = [(CPLRecordStatus *)self isShared];
    if (v10)
    {
      v9 = @" shared";
    }

    else
    {
      v9 = @" no status";
    }

    if (!v10 && v8)
    {
      goto LABEL_26;
    }
  }

  [v7 appendString:v9];
LABEL_26:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  record = self->_record;
  v8 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v8 encodeObject:v6 forKey:@"rClass"];

  v7 = [(CPLRecordChange *)self->_record scopedIdentifier];
  [v8 encodeObject:v7 forKey:@"r"];

  [v8 encodeInteger:self->_generation forKey:@"g"];
  [v8 encodeInt:self->_status.packedStatus forKey:@"pS"];
}

- (CPLRecordStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPLRecordStatus;
  v5 = [(CPLRecordStatus *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rClass"];
    v7 = v6;
    if (v6)
    {
      v8 = NSClassFromString(v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
    v10 = v9;
    if (!v8 || !v9)
    {

      v13 = 0;
      goto LABEL_10;
    }

    v11 = [(objc_class *)v8 newRecordWithScopedIdentifier:v9];
    record = v5->_record;
    v5->_record = v11;

    v5->_generation = [v4 decodeIntegerForKey:@"g"];
    v5->_status.packedStatus = [v4 decodeIntForKey:@"pS"];
  }

  v13 = v5;
LABEL_10:

  return v13;
}

- (CPLRecordStatus)initWithRecord:(id)a3 generation:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CPLRecordStatus;
  v8 = [(CPLRecordStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_record, a3);
    v9->_generation = a4;
  }

  return v9;
}

- (void)setShared:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFDFF | v3;
}

- (void)setConfirmed:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFEFF | v3;
}

- (void)setUpdating:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFF7F | v3;
}

- (void)setWaitingForUpdate:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFBF | v3;
}

- (void)setUploading:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFDF | v3;
}

- (void)setWaitingForUpload:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFEF | v3;
}

- (void)setUploaded:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFF7 | v3;
}

- (void)setResetting:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_status.status = *&self->_status.status & 0xFFFB | v3;
}

- (void)setQuarantined:(BOOL)a3
{
  if (a3)
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