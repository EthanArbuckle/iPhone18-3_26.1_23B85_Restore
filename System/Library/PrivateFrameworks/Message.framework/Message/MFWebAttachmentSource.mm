@interface MFWebAttachmentSource
+ (id)_setOfAllSources;
+ (id)allSources;
- (BOOL)setAttachment:(id)attachment forURL:(id)l;
- (MFWebAttachmentSource)init;
- (id)attachmentForURL:(id)l;
- (id)description;
- (void)dealloc;
- (void)removeAttachmentForURL:(id)l;
@end

@implementation MFWebAttachmentSource

+ (id)_setOfAllSources
{
  if (_setOfAllSources_onceToken != -1)
  {
    +[MFWebAttachmentSource _setOfAllSources];
  }

  v3 = _setOfAllSources_sAllWebAttachmentSources;

  return v3;
}

void __41__MFWebAttachmentSource__setOfAllSources__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69AD790]);
  v1 = _setOfAllSources_sAllWebAttachmentSources;
  _setOfAllSources_sAllWebAttachmentSources = v0;
}

+ (id)allSources
{
  _setOfAllSources = [self _setOfAllSources];
  allObjects = [_setOfAllSources allObjects];
  v4 = [allObjects sortedArrayUsingFunction:_SortWebAttachmentSources context:0];

  return v4;
}

- (MFWebAttachmentSource)init
{
  v9.receiver = self;
  v9.super_class = MFWebAttachmentSource;
  v2 = [(MFWebAttachmentSource *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"MFWebAttachmentSource_AttachmentLock" andDelegate:v2];
    attachmentsLock = v2->_attachmentsLock;
    v2->_attachmentsLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attachmentsByURL = v2->_attachmentsByURL;
    v2->_attachmentsByURL = v5;

    _setOfAllSources = [objc_opt_class() _setOfAllSources];
    [_setOfAllSources addObject:v2];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSMutableDictionary *)self->_attachmentsByURL description];
  v7 = [v3 stringWithFormat:@"<%@ %p>, attachments=%@", v5, self, v6];

  return v7;
}

- (void)dealloc
{
  _setOfAllSources = [objc_opt_class() _setOfAllSources];
  [_setOfAllSources removeObject:self];

  v4.receiver = self;
  v4.super_class = MFWebAttachmentSource;
  [(MFWebAttachmentSource *)&v4 dealloc];
}

- (id)attachmentForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    [(MFLock *)self->_attachmentsLock lock];
    v5 = [(NSMutableDictionary *)self->_attachmentsByURL objectForKeyedSubscript:lCopy];
    [(MFLock *)self->_attachmentsLock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setAttachment:(id)attachment forURL:(id)l
{
  attachmentCopy = attachment;
  lCopy = l;
  [(MFLock *)self->_attachmentsLock lock];
  [(NSMutableDictionary *)self->_attachmentsByURL setObject:attachmentCopy forKey:lCopy];
  [(MFLock *)self->_attachmentsLock unlock];

  return 1;
}

- (void)removeAttachmentForURL:(id)l
{
  lCopy = l;
  [(MFLock *)self->_attachmentsLock lock];
  [(NSMutableDictionary *)self->_attachmentsByURL removeObjectForKey:lCopy];
  [(MFLock *)self->_attachmentsLock unlock];
}

@end