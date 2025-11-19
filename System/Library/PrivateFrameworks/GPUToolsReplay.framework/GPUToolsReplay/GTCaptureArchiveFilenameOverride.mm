@interface GTCaptureArchiveFilenameOverride
- (GTCaptureArchiveFilenameOverride)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureArchiveFilenameOverride

- (GTCaptureArchiveFilenameOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTCaptureArchiveFilenameOverride;
  v5 = [(GTCaptureArchiveFilenameOverride *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalFilename"];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideFilename"];
    overrideFilename = v5->_overrideFilename;
    v5->_overrideFilename = v8;

    v5->_exportToolVersion = [v4 decodeInt64ForKey:@"exportToolVersion"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  originalFilename = self->_originalFilename;
  v5 = a3;
  [v5 encodeObject:originalFilename forKey:@"originalFilename"];
  [v5 encodeObject:self->_overrideFilename forKey:@"overrideFilename"];
  [v5 encodeInt64:self->_exportToolVersion forKey:@"exportToolVersion"];
}

@end