@interface GTCaptureArchiveHeapRestoreTextureSliceOverride
- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithCoder:(id)coder;
- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithFilename:(id)filename fileSize:(unint64_t)size width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureArchiveHeapRestoreTextureSliceOverride

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GTCaptureArchiveHeapRestoreTextureSliceOverride alloc];
  filename = self->_filename;
  fileSize = self->_fileSize;
  width = self->_width;
  height = self->_height;
  bytesPerRow = self->_bytesPerRow;
  bytesPerImage = self->_bytesPerImage;

  return [(GTCaptureArchiveHeapRestoreTextureSliceOverride *)v4 initWithFilename:filename fileSize:fileSize width:width height:height bytesPerRow:bytesPerRow bytesPerImage:bytesPerImage];
}

- (void)encodeWithCoder:(id)coder
{
  filename = self->_filename;
  coderCopy = coder;
  [coderCopy encodeObject:filename forKey:@"filename"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fileSize];
  [coderCopy encodeObject:v6 forKey:@"fileSize"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_width];
  [coderCopy encodeObject:v7 forKey:@"width"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_height];
  [coderCopy encodeObject:v8 forKey:@"height"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesPerRow];
  [coderCopy encodeObject:v9 forKey:@"bytesPerRow"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesPerImage];
  [coderCopy encodeObject:v10 forKey:@"bytesPerImage"];
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverride;
  v5 = [(GTCaptureArchiveHeapRestoreTextureSliceOverride *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
    filename = v5->_filename;
    v5->_filename = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    v5->_fileSize = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"width"];
    v5->_width = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"height"];
    v5->_height = [v10 unsignedIntegerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bytesPerRow"];
    v5->_bytesPerRow = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bytesPerImage"];
    v5->_bytesPerImage = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithFilename:(id)filename fileSize:(unint64_t)size width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  filenameCopy = filename;
  v19.receiver = self;
  v19.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverride;
  v16 = [(GTCaptureArchiveHeapRestoreTextureSliceOverride *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_filename, filename);
    v17->_width = width;
    v17->_height = height;
    v17->_fileSize = size;
    v17->_bytesPerRow = row;
    v17->_bytesPerImage = image;
  }

  return v17;
}

@end