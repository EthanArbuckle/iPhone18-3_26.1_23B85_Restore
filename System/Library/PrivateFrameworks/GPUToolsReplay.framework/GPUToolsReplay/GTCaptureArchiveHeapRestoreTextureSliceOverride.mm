@interface GTCaptureArchiveHeapRestoreTextureSliceOverride
- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithCoder:(id)a3;
- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithFilename:(id)a3 fileSize:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureArchiveHeapRestoreTextureSliceOverride

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  filename = self->_filename;
  v5 = a3;
  [v5 encodeObject:filename forKey:@"filename"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fileSize];
  [v5 encodeObject:v6 forKey:@"fileSize"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_width];
  [v5 encodeObject:v7 forKey:@"width"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_height];
  [v5 encodeObject:v8 forKey:@"height"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesPerRow];
  [v5 encodeObject:v9 forKey:@"bytesPerRow"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesPerImage];
  [v5 encodeObject:v10 forKey:@"bytesPerImage"];
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverride;
  v5 = [(GTCaptureArchiveHeapRestoreTextureSliceOverride *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
    filename = v5->_filename;
    v5->_filename = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    v5->_fileSize = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"width"];
    v5->_width = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"height"];
    v5->_height = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bytesPerRow"];
    v5->_bytesPerRow = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bytesPerImage"];
    v5->_bytesPerImage = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverride)initWithFilename:(id)a3 fileSize:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverride;
  v16 = [(GTCaptureArchiveHeapRestoreTextureSliceOverride *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_filename, a3);
    v17->_width = a5;
    v17->_height = a6;
    v17->_fileSize = a4;
    v17->_bytesPerRow = a7;
    v17->_bytesPerImage = a8;
  }

  return v17;
}

@end