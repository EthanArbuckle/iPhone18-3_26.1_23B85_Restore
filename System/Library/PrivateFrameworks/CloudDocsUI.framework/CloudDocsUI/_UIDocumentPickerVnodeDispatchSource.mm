@interface _UIDocumentPickerVnodeDispatchSource
- (_UIDocumentPickerVnodeDispatchSource)initWithTarget:(id)target url:(id)url queue:(id)queue;
- (void)dealloc;
- (void)event;
- (void)invalidate;
@end

@implementation _UIDocumentPickerVnodeDispatchSource

- (_UIDocumentPickerVnodeDispatchSource)initWithTarget:(id)target url:(id)url queue:(id)queue
{
  targetCopy = target;
  urlCopy = url;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = _UIDocumentPickerVnodeDispatchSource;
  v11 = [(_UIDocumentPickerVnodeDispatchSource *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_target, targetCopy);
    objc_storeStrong(&v12->_url, url);
    v13 = open([urlCopy fileSystemRepresentation], 0x8000);
    v14 = dispatch_source_create(MEMORY[0x277D85D48], v13, 2uLL, queueCopy);
    source = v12->_source;
    v12->_source = v14;

    objc_initWeak(&location, v12);
    v16 = v12->_source;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __65___UIDocumentPickerVnodeDispatchSource_initWithTarget_url_queue___block_invoke;
    handler[3] = &unk_278DD6900;
    objc_copyWeak(&v22, &location);
    dispatch_source_set_event_handler(v16, handler);
    v17 = v12->_source;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65___UIDocumentPickerVnodeDispatchSource_initWithTarget_url_queue___block_invoke_2;
    v19[3] = &__block_descriptor_36_e5_v8__0l;
    v20 = v13;
    dispatch_source_set_cancel_handler(v17, v19);
    dispatch_resume(v12->_source);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)event
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained dispatchSourceDidReceiveEvent:self];
}

- (void)invalidate
{
  dispatch_source_cancel(self->_source);
  source = self->_source;
  self->_source = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UIDocumentPickerVnodeDispatchSource;
  [(_UIDocumentPickerVnodeDispatchSource *)&v2 dealloc];
}

@end