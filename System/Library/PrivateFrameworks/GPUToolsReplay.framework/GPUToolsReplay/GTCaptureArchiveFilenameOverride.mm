@interface GTCaptureArchiveFilenameOverride
- (GTCaptureArchiveFilenameOverride)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureArchiveFilenameOverride

- (GTCaptureArchiveFilenameOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTCaptureArchiveFilenameOverride;
  v5 = [(GTCaptureArchiveFilenameOverride *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalFilename"];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideFilename"];
    overrideFilename = v5->_overrideFilename;
    v5->_overrideFilename = v8;

    v5->_exportToolVersion = [coderCopy decodeInt64ForKey:@"exportToolVersion"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalFilename = self->_originalFilename;
  coderCopy = coder;
  [coderCopy encodeObject:originalFilename forKey:@"originalFilename"];
  [coderCopy encodeObject:self->_overrideFilename forKey:@"overrideFilename"];
  [coderCopy encodeInt64:self->_exportToolVersion forKey:@"exportToolVersion"];
}

@end