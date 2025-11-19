@interface ESDDibFileBlipContext
- (BOOL)loadDelayedNode:(id)a3;
@end

@implementation ESDDibFileBlipContext

- (BOOL)loadDelayedNode:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ESDDibFileBlipContext;
  [(ESDBlipContext *)&v21 loadDelayedNode:v4];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:0];
  v6 = [v4 data];
  v7 = [v6 bytes];
  mByteCount = self->super.mByteCount;
  v20 = mByteCount + 14;
  if ([v6 length] >= 4 && ((v9 = CsLeReadSInt32(v7), v10 = v9, v9 != 12) ? (v11 = 14) : (v11 = 10), v9 == 12 ? (v12 = 3) : (v12 = 4), objc_msgSend(v6, "length") >= (v11 + 2)))
  {
    UInt16 = CsLeReadUInt16((v7 + v11));
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
    [v5 appendBytes:v7 length:mByteCount];
    [v4 setData:v5];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end