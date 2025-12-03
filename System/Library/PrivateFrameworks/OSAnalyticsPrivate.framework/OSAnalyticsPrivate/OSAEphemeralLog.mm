@interface OSAEphemeralLog
- (OSAEphemeralLog)initWithData:(id)data andMetadata:(id)metadata;
- (void)retire:(const char *)retire;
@end

@implementation OSAEphemeralLog

- (OSAEphemeralLog)initWithData:(id)data andMetadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = OSAEphemeralLog;
  v9 = [(OSAEphemeralLog *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, data);
    v11 = *MEMORY[0x277D36B90];
    v12 = *(&v10->super.super.isa + v11);
    *(&v10->super.super.isa + v11) = @"<ephemeral>";

    *(&v10->super.super.isa + *MEMORY[0x277D36BA0]) = fmemopen([dataCopy bytes], objc_msgSend(dataCopy, "length"), "r");
    objc_storeStrong((&v10->super.super.isa + *MEMORY[0x277D36B98]), metadata);
  }

  return v10;
}

- (void)retire:(const char *)retire
{
  [(OSAEphemeralLog *)self closeFileStream];
  content = self->_content;
  self->_content = 0;
}

@end