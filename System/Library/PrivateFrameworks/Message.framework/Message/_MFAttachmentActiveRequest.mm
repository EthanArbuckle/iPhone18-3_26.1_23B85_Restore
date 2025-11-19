@interface _MFAttachmentActiveRequest
- (_MFAttachmentActiveRequest)initWithAttachment:(id)a3;
- (void)completeWithData:(id)a3 error:(id)a4;
@end

@implementation _MFAttachmentActiveRequest

- (_MFAttachmentActiveRequest)initWithAttachment:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _MFAttachmentActiveRequest;
  v6 = [(_MFAttachmentActiveRequest *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, a3);
    v8 = [v5 fetchCompletionBlock];
    v9 = [v8 copy];
    fetchCompletionBlock = v7->_fetchCompletionBlock;
    v7->_fetchCompletionBlock = v9;

    v11 = [v5 newDownloadProgress];
    downloadProgress = v7->_downloadProgress;
    v7->_downloadProgress = v11;

    v7->_wantsCompletionBlockOffMainThread = [v5 wantsCompletionBlockOffMainThread];
    [v5 setFetchCompletionBlock:0];
  }

  return v7;
}

- (void)completeWithData:(id)a3 error:(id)a4
{
  v11 = a3;
  v6 = a4;
  fetchCompletionBlock = self->_fetchCompletionBlock;
  if (fetchCompletionBlock)
  {
    v8 = [(_MFAttachmentActiveRequest *)self attachment];
    v9 = [v8 fileURL];
    fetchCompletionBlock[2](fetchCompletionBlock, v9, v11, v6);

    v10 = self->_fetchCompletionBlock;
    self->_fetchCompletionBlock = 0;
  }
}

@end