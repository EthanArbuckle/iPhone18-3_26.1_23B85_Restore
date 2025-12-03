@interface PKExtensionRequestHandler
- (BOOL)isInvalidated;
- (NSExtensionContext)extensionContext;
- (id)_initWithExtension:(id)extension extensionRequestOptions:(unint64_t)options;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKExtensionRequestHandler

- (id)_initWithExtension:(id)extension extensionRequestOptions:(unint64_t)options
{
  v27 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  if (extensionCopy)
  {
    v22.receiver = self;
    v22.super_class = PKExtensionRequestHandler;
    v8 = [(PKExtensionRequestHandler *)&v22 init];
    v9 = v8;
    if (v8)
    {
      v8->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v8->_extension, extension);
      extension = v9->_extension;
      v21 = 0;
      v11 = [(NSExtension *)extension beginExtensionRequestWithOptions:options inputItems:0 error:&v21];
      v12 = v21;
      requestIdentifier = v9->_requestIdentifier;
      v9->_requestIdentifier = v11;

      if (v9->_requestIdentifier)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v15 = [(NSExtension *)v9->_extension _extensionContextForUUID:?];
        extensionContext = v9->_extensionContext;
        v9->_extensionContext = v15;
      }

      if (!v9->_extensionContext)
      {
        v9->_invalidated = 1;
        v17 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v9->_extension;
          *buf = 138412546;
          v24 = v18;
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKExtensionRequestHandler: failed to begin extension request for extension %@, with error %@", buf, 0x16u);
        }

        if (v9->_requestIdentifier)
        {
          [(NSExtension *)v9->_extension cancelExtensionRequestWithIdentifier:?];
        }
      }
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(PKExtensionRequestHandler *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKExtensionRequestHandler;
  [(PKExtensionRequestHandler *)&v3 dealloc];
}

- (NSExtensionContext)extensionContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_extensionContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  extensionContext = self->_extensionContext;
  self->_extensionContext = 0;

  if (self->_requestIdentifier)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      extension = self->_extension;
      v7 = 138412290;
      v8 = extension;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Canceled extension request for extension %@", &v7, 0xCu);
    }

    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:self->_requestIdentifier];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = 0;
  }

  self->_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

@end