@interface MRAnimatedArtwork
- (MRAnimatedArtwork)initWithAssetFileURL:(id)l;
- (MRAnimatedArtwork)initWithProtobuf:(id)protobuf;
- (id)protobufWithFormat:(id)format;
@end

@implementation MRAnimatedArtwork

- (MRAnimatedArtwork)initWithAssetFileURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v10.receiver = self;
    v10.super_class = MRAnimatedArtwork;
    v5 = [(MRAnimatedArtwork *)&v10 init];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy readonly:1];
      assetFileURLWrapper = v5->_assetFileURLWrapper;
      v5->_assetFileURLWrapper = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRAnimatedArtwork)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if ([protobufCopy hasAssetFileURLData])
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = objc_opt_class();
    assetFileURLData = [protobufCopy assetFileURLData];
    v16 = 0;
    v8 = [v5 unarchivedObjectOfClass:v6 fromData:assetFileURLData error:&v16];
    v9 = v16;

    if (v8)
    {
      v15.receiver = self;
      v15.super_class = MRAnimatedArtwork;
      v10 = [(MRAnimatedArtwork *)&v15 init];
      v11 = v10;
      if (v10)
      {
        objc_storeStrong(&v10->_assetFileURLWrapper, v8);
      }

      self = v11;
      selfCopy = self;
    }

    else
    {
      v13 = _MRLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MRAnimatedArtwork *)v9 initWithProtobuf:v13];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)protobufWithFormat:(id)format
{
  formatCopy = format;
  assetFileURLWrapper = self->_assetFileURLWrapper;
  v11 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:assetFileURLWrapper requiringSecureCoding:1 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = objc_alloc_init(_MRAnimatedArtworkProtobuf);
    [(_MRAnimatedArtworkProtobuf *)v8 setType:formatCopy];
    [(_MRAnimatedArtworkProtobuf *)v8 setAssetFileURLData:v6];
  }

  else
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MRAnimatedArtwork *)v7 protobufWithFormat:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)initWithProtobuf:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Error initializing MRAnimatedArtwork from protobuf: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)protobufWithFormat:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Error archiving MRAnimatedArtwork data into protobuf: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end