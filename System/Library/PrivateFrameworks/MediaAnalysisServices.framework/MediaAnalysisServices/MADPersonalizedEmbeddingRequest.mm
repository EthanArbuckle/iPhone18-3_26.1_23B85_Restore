@interface MADPersonalizedEmbeddingRequest
- (CGRect)targetBounds;
- (MADPersonalizedEmbeddingRequest)init;
- (MADPersonalizedEmbeddingRequest)initWithCoder:(id)a3;
- (id)description;
- (int64_t)type;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation MADPersonalizedEmbeddingRequest

- (MADPersonalizedEmbeddingRequest)init
{
  v7.receiver = self;
  v7.super_class = MADPersonalizedEmbeddingRequest;
  v2 = [(MADPersonalizedEmbeddingRequest *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_revision = 1;
    v2->_bypassFaceDetection = 1;
    v4 = *(MEMORY[0x1E695F058] + 16);
    v2->_targetBounds.origin = *MEMORY[0x1E695F058];
    v2->_targetBounds.size = v4;
    personalizationOptions = v2->_personalizationOptions;
    v2->_personalizationOptions = 0;
  }

  return v3;
}

- (MADPersonalizedEmbeddingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADPersonalizedEmbeddingRequest;
  v5 = [(MADMultiModalRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_revision = [v4 decodeIntegerForKey:@"Revision"];
    v5->_bypassFaceDetection = [v4 decodeBoolForKey:@"BypassFaceDetection"];
    [v4 decodeRectForKey:@"TargetBounds"];
    v5->_targetBounds.origin.x = v6;
    v5->_targetBounds.origin.y = v7;
    v5->_targetBounds.size.width = v8;
    v5->_targetBounds.size.height = v9;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getVUWGalleryPersonalizationOptionsClass_softClass;
    v20 = getVUWGalleryPersonalizationOptionsClass_softClass;
    if (!getVUWGalleryPersonalizationOptionsClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getVUWGalleryPersonalizationOptionsClass_block_invoke;
      v16[3] = &unk_1E8342DE0;
      v16[4] = &v17;
      __getVUWGalleryPersonalizationOptionsClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersonalizationOptions"];
    personalizationOptions = v5->_personalizationOptions;
    v5->_personalizationOptions = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADPersonalizedEmbeddingRequest;
  v4 = a3;
  [(MADMultiModalRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_revision forKey:{@"Revision", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_bypassFaceDetection forKey:@"BypassFaceDetection"];
  [v4 encodeRect:@"TargetBounds" forKey:{self->_targetBounds.origin.x, self->_targetBounds.origin.y, self->_targetBounds.size.width, self->_targetBounds.size.height}];
  [v4 encodeObject:self->_personalizationOptions forKey:@"PersonalizationOptions"];
}

- (void)setType:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = 3;
    goto LABEL_5;
  }

  v3 = a3;
  if (a3 == 1)
  {
    v4 = 1;
LABEL_5:

    [(MADPersonalizedEmbeddingRequest *)self setRevision:v4];
    return;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADPersonalizedEmbeddingRequest setType:v3];
  }
}

- (int64_t)type
{
  revision = self->_revision;
  if (revision == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (revision == 3);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"revision: %d, ", self->_revision];
  [v3 appendFormat:@"bypassFaceDetection: %d, ", self->_bypassFaceDetection];
  if (!CGRectIsEmpty(self->_targetBounds))
  {
    [v3 appendFormat:@"targetBounds: (%0.2f, %0.2f) %0.2fx%0.2f, ", *&self->_targetBounds.origin.x, *&self->_targetBounds.origin.y, *&self->_targetBounds.size.width, *&self->_targetBounds.size.height];
  }

  if (self->_personalizationOptions)
  {
    [v3 appendFormat:@"personalization options: %@, ", self->_personalizationOptions];
  }

  v6 = [(MADMultiModalRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADMultiModalRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

- (CGRect)targetBounds
{
  x = self->_targetBounds.origin.x;
  y = self->_targetBounds.origin.y;
  width = self->_targetBounds.size.width;
  height = self->_targetBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setType:(int)a1 .cold.1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set unsupported personalization type (%d)", v1, 8u);
}

@end