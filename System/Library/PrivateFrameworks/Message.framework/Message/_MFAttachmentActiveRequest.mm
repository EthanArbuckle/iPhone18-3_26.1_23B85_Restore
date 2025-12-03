@interface _MFAttachmentActiveRequest
- (_MFAttachmentActiveRequest)initWithAttachment:(id)attachment;
- (void)completeWithData:(id)data error:(id)error;
@end

@implementation _MFAttachmentActiveRequest

- (_MFAttachmentActiveRequest)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v14.receiver = self;
  v14.super_class = _MFAttachmentActiveRequest;
  v6 = [(_MFAttachmentActiveRequest *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, attachment);
    fetchCompletionBlock = [attachmentCopy fetchCompletionBlock];
    v9 = [fetchCompletionBlock copy];
    fetchCompletionBlock = v7->_fetchCompletionBlock;
    v7->_fetchCompletionBlock = v9;

    newDownloadProgress = [attachmentCopy newDownloadProgress];
    downloadProgress = v7->_downloadProgress;
    v7->_downloadProgress = newDownloadProgress;

    v7->_wantsCompletionBlockOffMainThread = [attachmentCopy wantsCompletionBlockOffMainThread];
    [attachmentCopy setFetchCompletionBlock:0];
  }

  return v7;
}

- (void)completeWithData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  fetchCompletionBlock = self->_fetchCompletionBlock;
  if (fetchCompletionBlock)
  {
    attachment = [(_MFAttachmentActiveRequest *)self attachment];
    fileURL = [attachment fileURL];
    fetchCompletionBlock[2](fetchCompletionBlock, fileURL, dataCopy, errorCopy);

    v10 = self->_fetchCompletionBlock;
    self->_fetchCompletionBlock = 0;
  }
}

@end