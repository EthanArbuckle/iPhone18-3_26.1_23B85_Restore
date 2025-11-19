@interface InProgressMessageDownload.AttachmentDecoderAndWriter.Decoder.DataConsumer
- (int64_t)appendData:(id)a3;
- (void)done;
@end

@implementation InProgressMessageDownload.AttachmentDecoderAndWriter.Decoder.DataConsumer

- (int64_t)appendData:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v6 = sub_1B0E42F38();
    v7 = v3;
    MEMORY[0x1E69E5920](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v5 = sub_1B075C7CC(v8, v9);
  sub_1B070E144(v8, v9);
  MEMORY[0x1E69E5920](self);
  return v5;
}

- (void)done
{
  MEMORY[0x1E69E5928](self);
  sub_1B075CA28();
  MEMORY[0x1E69E5920](self);
}

@end