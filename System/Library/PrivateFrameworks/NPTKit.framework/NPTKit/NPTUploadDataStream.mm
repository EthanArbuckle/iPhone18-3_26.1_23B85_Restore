@interface NPTUploadDataStream
- (NPTUploadDataStream)initWithLength:(unint64_t)length;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)open;
@end

@implementation NPTUploadDataStream

- (NPTUploadDataStream)initWithLength:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = NPTUploadDataStream;
  v4 = [(NPTUploadDataStream *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->remainingLength = length;
    v4->status = 0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("streamCallBackQueue", v6);
    callBackQueue = v5->callBackQueue;
    v5->callBackQueue = v7;
  }

  return v5;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  if (self->remainingLength >= length)
  {
    remainingLength = length;
  }

  else
  {
    remainingLength = self->remainingLength;
  }

  memset(read, 114, remainingLength);
  v6 = self->remainingLength - remainingLength;
  self->remainingLength = v6;
  callBackQueue = self->callBackQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__NPTUploadDataStream_read_maxLength___block_invoke;
  v9[3] = &unk_2789D41D8;
  v9[4] = self;
  v10 = v6 != 0;
  dispatch_async(callBackQueue, v9);
  return remainingLength;
}

void __38__NPTUploadDataStream_read_maxLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) delegate];
    v6 = v4;
    if (v3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 16;
    }

    [v4 stream:*(a1 + 32) handleEvent:v5];
  }
}

- (void)open
{
  self->status = 2;
  callBackQueue = self->callBackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__NPTUploadDataStream_open__block_invoke;
  block[3] = &unk_2789D3DF8;
  block[4] = self;
  dispatch_async(callBackQueue, block);
}

void __27__NPTUploadDataStream_open__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 stream:*(a1 + 32) handleEvent:1];

    v4 = [*(a1 + 32) delegate];
    [v4 stream:*(a1 + 32) handleEvent:2];
  }
}

@end