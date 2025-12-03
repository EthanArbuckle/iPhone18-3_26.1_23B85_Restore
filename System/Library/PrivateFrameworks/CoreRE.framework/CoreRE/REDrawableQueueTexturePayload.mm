@interface REDrawableQueueTexturePayload
- (REDrawableQueueTexturePayload)initWithCoder:(id)coder;
- (REDrawableQueueTexturePayload)initWithDrawableQueue:(id)queue placeholderTexture:(id)texture;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REDrawableQueueTexturePayload

- (REDrawableQueueTexturePayload)initWithDrawableQueue:(id)queue placeholderTexture:(id)texture
{
  queueCopy = queue;
  textureCopy = texture;
  v16.receiver = self;
  v16.super_class = REDrawableQueueTexturePayload;
  v9 = [(RESharedResourcePayload *)&v16 init];
  v10 = v9;
  if (v9 && (objc_storeStrong(&v9->_drawableQueue, queue), objc_storeStrong(&v10->_placeholderTexture, texture), !v10->_drawableQueue))
  {
    v13 = *re::assetTypesLogObjects(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, "Expected DrawableQueue payload to be non-nil", v15, 2u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

- (REDrawableQueueTexturePayload)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = REDrawableQueueTexturePayload;
  v5 = [(RESharedResourcePayload *)&v18 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"drawableQueue"];
  drawableQueue = v5->_drawableQueue;
  v5->_drawableQueue = v6;

  if (v5->_drawableQueue)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"placeholderTexture"];
    placeholderTexture = v5->_placeholderTexture;
    v5->_placeholderTexture = v13;

LABEL_4:
    v15 = v5;
    goto LABEL_8;
  }

  v16 = *re::assetTypesLogObjects(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_fault_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_FAULT, "Failed to decode DrawableQueue object for %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_drawableQueue forKey:@"drawableQueue"];
  [coderCopy encodeObject:self->_placeholderTexture forKey:@"placeholderTexture"];
}

@end