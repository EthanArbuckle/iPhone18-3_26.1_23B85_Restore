@interface MIOBufferAttachmentsOutput
- (MIOBufferAttachmentsOutput)initWithMetadataTrack:(id)track assetReader:(id)reader error:(id *)error;
- (id)decodeData:(id)data error:(id *)error;
- (id)nextAttachmentsTimeRange:(id *)range error:(id *)error;
- (void)finish;
@end

@implementation MIOBufferAttachmentsOutput

- (MIOBufferAttachmentsOutput)initWithMetadataTrack:(id)track assetReader:(id)reader error:(id *)error
{
  trackCopy = track;
  readerCopy = reader;
  v16.receiver = self;
  v16.super_class = MIOBufferAttachmentsOutput;
  v10 = [(MIOBufferAttachmentsOutput *)&v16 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:trackCopy outputSettings:0];
    if (![readerCopy canAddOutput:v11])
    {
      trackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata track (%@) to the AVAssetReader.", trackCopy];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy code:1];

      v13 = 0;
      goto LABEL_6;
    }

    [readerCopy addOutput:v11];
    v12 = [objc_alloc(MEMORY[0x277CE6420]) initWithAssetReaderTrackOutput:v11];
    [(MIOBufferAttachmentsOutput *)v10 setAttachmentsAdaptor:v12];
  }

  v13 = v10;
LABEL_6:

  return v13;
}

- (void)finish
{
  do
  {
    v3 = objc_autoreleasePoolPush();
    attachmentsAdaptor = [(MIOBufferAttachmentsOutput *)self attachmentsAdaptor];
    nextTimedMetadataGroup = [attachmentsAdaptor nextTimedMetadataGroup];

    objc_autoreleasePoolPop(v3);
  }

  while (nextTimedMetadataGroup);
}

- (id)nextAttachmentsTimeRange:(id *)range error:(id *)error
{
  attachmentsAdaptor = [(MIOBufferAttachmentsOutput *)self attachmentsAdaptor];
  nextTimedMetadataGroup = [attachmentsAdaptor nextTimedMetadataGroup];

  if (nextTimedMetadataGroup)
  {
    items = [nextTimedMetadataGroup items];
    v10 = [items count];

    if (v10)
    {
      if (range)
      {
        [nextTimedMetadataGroup timeRange];
        *&range->var0.var0 = v17;
        *&range->var0.var3 = v18;
        *&range->var1.var1 = v19;
      }

      items2 = [nextTimedMetadataGroup items];
      firstObject = [items2 firstObject];

      value = [firstObject value];
      if (value)
      {
        v14 = value;
        v15 = [(MIOBufferAttachmentsOutput *)self decodeData:value error:error];

        goto LABEL_10;
      }
    }

    [MEMORY[0x277CCA9B8] populateReaderError:error message:@"No attachments data found." code:30];
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)decodeData:(id)data error:(id *)error
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:&v6 error:error];

  return v4;
}

@end