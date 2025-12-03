@interface ESDDibFileBlipContext
- (BOOL)loadDelayedNode:(id)node;
@end

@implementation ESDDibFileBlipContext

- (BOOL)loadDelayedNode:(id)node
{
  nodeCopy = node;
  v21.receiver = self;
  v21.super_class = ESDDibFileBlipContext;
  [(ESDBlipContext *)&v21 loadDelayedNode:nodeCopy];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:0];
  data = [nodeCopy data];
  bytes = [data bytes];
  mByteCount = self->super.mByteCount;
  v20 = mByteCount + 14;
  if ([data length] >= 4 && ((v9 = CsLeReadSInt32(bytes), v10 = v9, v9 != 12) ? (v11 = 14) : (v11 = 10), v9 == 12 ? (v12 = 3) : (v12 = 4), objc_msgSend(data, "length") >= (v11 + 2)))
  {
    UInt16 = CsLeReadUInt16((bytes + v11));
    v15 = 1 << UInt16;
    if (UInt16 >= 9)
    {
      v15 = 0;
    }

    v19 = v10 + v15 * v12 + 14;
    [v5 appendBytes:"BM" length:2];
    v18 = CsLeReadSInt32(&v20);
    [v5 appendBytes:&v18 length:4];
    [v5 appendBytes:&unk_25D6FBB24 length:4];
    SInt32 = CsLeReadSInt32(&v19);
    [v5 appendBytes:&SInt32 length:4];
    [v5 appendBytes:bytes length:mByteCount];
    [nodeCopy setData:v5];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end