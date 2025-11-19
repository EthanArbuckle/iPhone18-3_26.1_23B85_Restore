@interface OSAEphemeralLog
- (OSAEphemeralLog)initWithData:(id)a3 andMetadata:(id)a4;
- (void)retire:(const char *)a3;
@end

@implementation OSAEphemeralLog

- (OSAEphemeralLog)initWithData:(id)a3 andMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = OSAEphemeralLog;
  v9 = [(OSAEphemeralLog *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, a3);
    v11 = *MEMORY[0x277D36B90];
    v12 = *(&v10->super.super.isa + v11);
    *(&v10->super.super.isa + v11) = @"<ephemeral>";

    *(&v10->super.super.isa + *MEMORY[0x277D36BA0]) = fmemopen([v7 bytes], objc_msgSend(v7, "length"), "r");
    objc_storeStrong((&v10->super.super.isa + *MEMORY[0x277D36B98]), a4);
  }

  return v10;
}

- (void)retire:(const char *)a3
{
  [(OSAEphemeralLog *)self closeFileStream];
  content = self->_content;
  self->_content = 0;
}

@end