@interface MIOBufferAttachmentsOutput
- (MIOBufferAttachmentsOutput)initWithMetadataTrack:(id)a3 assetReader:(id)a4 error:(id *)a5;
- (id)decodeData:(id)a3 error:(id *)a4;
- (id)nextAttachmentsTimeRange:(id *)a3 error:(id *)a4;
- (void)finish;
@end

@implementation MIOBufferAttachmentsOutput

- (MIOBufferAttachmentsOutput)initWithMetadataTrack:(id)a3 assetReader:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MIOBufferAttachmentsOutput;
  v10 = [(MIOBufferAttachmentsOutput *)&v16 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v8 outputSettings:0];
    if (![v9 canAddOutput:v11])
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata track (%@) to the AVAssetReader.", v8];
      [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v14 code:1];

      v13 = 0;
      goto LABEL_6;
    }

    [v9 addOutput:v11];
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
    v4 = [(MIOBufferAttachmentsOutput *)self attachmentsAdaptor];
    v5 = [v4 nextTimedMetadataGroup];

    objc_autoreleasePoolPop(v3);
  }

  while (v5);
}

- (id)nextAttachmentsTimeRange:(id *)a3 error:(id *)a4
{
  v7 = [(MIOBufferAttachmentsOutput *)self attachmentsAdaptor];
  v8 = [v7 nextTimedMetadataGroup];

  if (v8)
  {
    v9 = [v8 items];
    v10 = [v9 count];

    if (v10)
    {
      if (a3)
      {
        [v8 timeRange];
        *&a3->var0.var0 = v17;
        *&a3->var0.var3 = v18;
        *&a3->var1.var1 = v19;
      }

      v11 = [v8 items];
      v12 = [v11 firstObject];

      v13 = [v12 value];
      if (v13)
      {
        v14 = v13;
        v15 = [(MIOBufferAttachmentsOutput *)self decodeData:v13 error:a4];

        goto LABEL_10;
      }
    }

    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"No attachments data found." code:30];
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)decodeData:(id)a3 error:(id *)a4
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:&v6 error:a4];

  return v4;
}

@end