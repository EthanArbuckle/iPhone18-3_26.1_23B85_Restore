@interface MFWebAttachmentSource
+ (id)_setOfAllSources;
+ (id)allSources;
- (BOOL)setAttachment:(id)a3 forURL:(id)a4;
- (MFWebAttachmentSource)init;
- (id)attachmentForURL:(id)a3;
- (id)description;
- (void)dealloc;
- (void)removeAttachmentForURL:(id)a3;
@end

@implementation MFWebAttachmentSource

+ (id)_setOfAllSources
{
  if (_setOfAllSources_onceToken != -1)
  {
    +[MFWebAttachmentSource _setOfAllSources];
  }

  return _setOfAllSources_sAllWebAttachmentSources;
}

id __41__MFWebAttachmentSource__setOfAllSources__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x277D24FC8]);
  _setOfAllSources_sAllWebAttachmentSources = result;
  return result;
}

+ (id)allSources
{
  v2 = [objc_msgSend(a1 "_setOfAllSources")];

  return [v2 sortedArrayUsingFunction:_SortWebAttachmentSources context:0];
}

- (MFWebAttachmentSource)init
{
  v4.receiver = self;
  v4.super_class = MFWebAttachmentSource;
  v2 = [(MFWebAttachmentSource *)&v4 init];
  if (v2)
  {
    v2->_attachmentsLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MFWebAttachmentSource_AttachmentLock" andDelegate:v2];
    v2->_attachmentsByURL = objc_alloc_init(MEMORY[0x277CBEB38]);
    [objc_msgSend(objc_opt_class() "_setOfAllSources")];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>, attachments=%@", NSStringFromClass(v4), self, -[NSMutableDictionary description](self->_attachmentsByURL, "description")];
}

- (void)dealloc
{
  [objc_msgSend(objc_opt_class() "_setOfAllSources")];

  v3.receiver = self;
  v3.super_class = MFWebAttachmentSource;
  [(MFWebAttachmentSource *)&v3 dealloc];
}

- (id)attachmentForURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [(MFLock *)self->_attachmentsLock lock];
  v5 = [(NSMutableDictionary *)self->_attachmentsByURL objectForKey:a3];
  [(MFLock *)self->_attachmentsLock unlock];
  return v5;
}

- (BOOL)setAttachment:(id)a3 forURL:(id)a4
{
  [(MFLock *)self->_attachmentsLock lock];
  [(NSMutableDictionary *)self->_attachmentsByURL setObject:a3 forKey:a4];
  [(MFLock *)self->_attachmentsLock unlock];
  return 1;
}

- (void)removeAttachmentForURL:(id)a3
{
  [(MFLock *)self->_attachmentsLock lock];
  [(NSMutableDictionary *)self->_attachmentsByURL removeObjectForKey:a3];
  attachmentsLock = self->_attachmentsLock;

  [(MFLock *)attachmentsLock unlock];
}

@end