@interface OABBlip
+ (EshBlip)writeBlip:(id)a3;
+ (id)compressMetafileData:(id)a3 info:(void *)a4;
+ (id)delayedSubBlipWithMetafileInfo:(const void *)a3;
+ (id)dibFileContentsWithDibBlipData:(const OcBinaryData *)a3;
+ (id)readBlipFromBse:(id)a3;
+ (id)readBlipFromEshBlip:(EshBlip *)a3;
+ (id)subBlipWithMetafileInfo:(const void *)a3;
+ (int)blipTypeForBlipSignature:(int)a3;
+ (void)setMetafileBoundsFromPictData:(id)a3 info:(void *)a4;
+ (void)writeBlip:(id)a3 toBlipStoreEntry:(EshBSE *)a4;
+ (void)writeEmptyBlipStoreEntry:(EshBSE *)a3;
@end

@implementation OABBlip

+ (id)readBlipFromBse:(id)a3
{
  v4 = a3;
  v5 = [v4 eshObject];
  {
    v7 = v6[13];
    if (v7 && *(v6 + 4))
    {
      v8 = [a1 readBlipFromEshBlip:?];
      *[(OADBlip *)v8 referenceCount]= v7;
    }

    else
    {
      v8 = objc_alloc_init(OADBlip);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readBlipFromEshBlip:(EshBlip *)a3
{
  if (!a3)
  {
    v10 = 0;
    goto LABEL_20;
  }

  RecordType = EshRecord::getRecordType(a3);
  v6 = objc_alloc_init(OADBlip);
  if ((RecordType - 61466) >= 6 && (RecordType - 61481) > 1)
  {
    goto LABEL_18;
  }

  if ((*(a3->var0 + 10))(a3))
  {
    v7 = 2;
    if (RecordType <= 61470)
    {
      if (RecordType != 61469)
      {
        if (RecordType != 61470)
        {
          goto LABEL_23;
        }

        v7 = 3;
      }
    }

    else if (RecordType != 61482)
    {
      if (RecordType != 61481)
      {
        if (RecordType == 61471)
        {
          v8 = [[OADSubBlip alloc] initWithData:0 type:1];
          v9 = [(ESDBlipContext *)[ESDDibFileBlipContext alloc] initWithOffset:*&a3[1].var3.var0[4] byteCount:*&a3[1].var3.var0[12] stream:*&a3[2].var2.var1 streamID:*&a3[1].var3.var0[8]];
          [(OCDDelayedNode *)v8 setDelayedContext:v9];
          [(OADBlip *)v6 setMainSubBlip:v8];
LABEL_17:

LABEL_18:
          v10 = v6;
          goto LABEL_19;
        }

LABEL_23:
        v8 = [a1 delayedSubBlipWithMetafileInfo:&a3[1]];
        [(OADBlip *)v6 setMainSubBlip:v8];
        v9 = [a1 delayedSubBlipWithMetafileInfo:&a3[3].var2.var4];
        if (v9)
        {
          [(OADBlip *)v6 setAltSubBlip:v9];
        }

        goto LABEL_17;
      }

      v7 = 8;
    }

    v8 = [[OADSubBlip alloc] initWithData:0 type:v7];
    v9 = [[ESDBlipContext alloc] initWithOffset:*&a3[1].var3.var0[4] byteCount:*&a3[1].var3.var0[12] stream:*&a3[2].var2.var1 streamID:*&a3[1].var3.var0[8]];
    [(OCDDelayedNode *)v8 setDelayedContext:v9];
    [(OADBlip *)v6 setMainSubBlip:v8];
    goto LABEL_17;
  }

  [TCMessageException raise:TCUnknownProblemMessage];
  v10 = 0;
LABEL_19:

LABEL_20:

  return v10;
}

+ (EshBlip)writeBlip:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a3 mainSubBlip];
  v6 = [v5 type];
  if (v6 <= 3)
  {
    v8 = v6 == 2 || v6 == 3;
    v9 = v6 == 2;
    v10 = v6 != 2 && v6 == 3;
  }

  else
  {
    v7 = v6 == 5 || v6 == 6;
    v8 = v6 == 4 || v7;
    v9 = 0;
    v10 = 0;
  }

  v11 = [v5 data];
  v12 = v11;
  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && [v11 length])
  {
    v14 = CFUUIDCreate(0);
    CFUUIDGetUUIDBytes(v14);
    if (v9 || v10)
    {
      operator new();
    }

    operator new();
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

+ (void)writeBlip:(id)a3 toBlipStoreEntry:(EshBSE *)a4
{
  v13 = a3;
  if (*[v13 referenceCount])
  {
    v6 = [v13 mainSubBlip];
    v7 = [v6 sizeInBytes];

    if (v7 >= 1)
    {
      v8 = [a1 writeBlip:v13];
      v9 = v8;
      if (v8)
      {
        BlipType = EshBlip::getBlipType(v8);
        if (BlipType > 2)
        {
          if (BlipType != 3)
          {
            if (BlipType == 4)
            {
              v11 = 3;
LABEL_14:
              v12 = BlipType;
              goto LABEL_15;
            }

LABEL_13:
            v11 = BlipType;
            goto LABEL_14;
          }

LABEL_12:
          v12 = 4;
          v11 = BlipType;
LABEL_15:
          EshRecord::setInstance(a4, BlipType);
          a4->var11 = v11;
          a4->var12 = v12;
          a4->var8 = 255;
          a4->var9 = 0;
          a4->var6 = *[v13 referenceCount];
          a4->var15 = v9->var3;
          a4->var3 = v9;
          goto LABEL_17;
        }

        if (BlipType)
        {
          if (BlipType != 2)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }
    }
  }

  [a1 writeEmptyBlipStoreEntry:a4];
LABEL_17:
}

+ (id)dibFileContentsWithDibBlipData:(const OcBinaryData *)a3
{
  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  var5 = a3->var5;
  var3 = a3->var3;
  v16 = var3 + 14;
  SInt32 = CsLeReadSInt32(var5);
  v8 = 14;
  if (SInt32 == 12)
  {
    v8 = 10;
  }

  UInt16 = CsLeReadUInt16((var5 + v8));
  if (SInt32 == 12)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = 1 << UInt16;
  if (UInt16 >= 9)
  {
    v11 = 0;
  }

  v15 = SInt32 + v11 * v10 + 14;
  [v4 appendBytes:"BM" length:2];
  v14 = CsLeReadSInt32(&v16);
  [v4 appendBytes:&v14 length:4];
  [v4 appendBytes:&unk_25D6FB6FC length:4];
  v13 = CsLeReadSInt32(&v15);
  [v4 appendBytes:&v13 length:4];
  [v4 appendBytes:var5 length:var3];

  return v4;
}

+ (id)subBlipWithMetafileInfo:(const void *)a3
{
  v3 = **a3 & 0xFFFE;
  if ((**a3 & 0xFFFE) != 0)
  {
    v5 = [a1 blipTypeForBlipSignature:**a3 & 0xFFFE];
    v6 = v3 == 1346;
    v7 = *(a3 + 25);
    v8 = *(a3 + 18);
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(v8 + (v6 << 9))];
    destLen = v8;
    if (uncompress(([v9 mutableBytes] + (v6 << 9)), &destLen, *(a3 + 6), v7))
    {
      v10 = 0;
    }

    else
    {
      v10 = destLen == v8;
    }

    if (v10)
    {
      v11 = [[OADSubBlip alloc] initWithData:v9 type:v5];
      v12 = *(a3 + 92);
      v13.i64[0] = v12;
      v13.i64[1] = SHIDWORD(v12);
      [(OADSubBlip *)v11 setSizeInPoints:vdivq_f64(vcvtq_f64_s64(v13), vdupq_n_s64(0x40C8CE0000000000uLL))];
      [(OADSubBlip *)v11 setFrame:*(a3 + 19), *(a3 + 20), (*(a3 + 21) - *(a3 + 19)), (*(a3 + 22) - *(a3 + 20))];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)delayedSubBlipWithMetafileInfo:(const void *)a3
{
  v4 = **a3 & 0xFFFE;
  if (v4 && (v5 = v4 == 1346, v6 = [a1 blipTypeForBlipSignature:?], v6) && *(a3 + 10))
  {
    v7 = [[OADSubBlip alloc] initWithData:0 type:v6];
    v8 = *(a3 + 92);
    v9.i64[0] = v8;
    v9.i64[1] = SHIDWORD(v8);
    [(OADSubBlip *)v7 setSizeInPoints:vdivq_f64(vcvtq_f64_s64(v9), vdupq_n_s64(0x40C8CE0000000000uLL))];
    [(OADSubBlip *)v7 setFrame:*(a3 + 19), *(a3 + 20), (*(a3 + 21) - *(a3 + 19)), (*(a3 + 22) - *(a3 + 20))];
    v10 = [[ESDMetafileBlipContext alloc] initWithOffset:*(a3 + 8) byteCount:*(a3 + 10) uncompressed:*(a3 + 18) stream:*(a3 + 8) streamID:*(a3 + 9)];
    [(ESDMetafileBlipContext *)v10 setDefaultHeaderSize:(v5 << 9)];
    [(OCDDelayedNode *)v7 setDelayedContext:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)blipTypeForBlipSignature:(int)a3
{
  if (a3 <= 1759)
  {
    if (a3 <= 1129)
    {
      if (a3 == 534)
      {
        return 4;
      }

      if (a3 == 980)
      {
        return 5;
      }

      return 0;
    }

    if (a3 != 1130)
    {
      if (a3 == 1346)
      {
        return 6;
      }

      return 0;
    }

    return 2;
  }

  if (a3 <= 1763)
  {
    if (a3 == 1760)
    {
      return 3;
    }

    if (a3 != 1762)
    {
      return 0;
    }

    return 2;
  }

  if (a3 == 1764)
  {
    return 8;
  }

  return a3 == 1960;
}

+ (void)setMetafileBoundsFromPictData:(id)a3 info:(void *)a4
{
  v14 = a3;
  v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v14];
  v6 = v5;
  if (v5)
  {
    [v5 size];
  }

  else
  {
    v7 = 1000.0;
    v8 = 1000.0;
  }

  v9 = v7 * 12700.0;
  v10 = v8 * 12700.0;
  *(a4 + 23) = llroundf(v9);
  *(a4 + 24) = llroundf(v10);
  v11 = v7;
  v12 = llroundf(v11);
  v13 = v8;
  *(a4 + 19) = 0;
  *(a4 + 20) = 0;
  *(a4 + 21) = v12;
  *(a4 + 22) = llroundf(v13);
}

+ (id)compressMetafileData:(id)a3 info:(void *)a4
{
  v5 = a3;
  v6 = [v5 length];
  *(a4 + 18) = v6;
  v7 = vcvtps_s32_f32((v6 * 1.01) + 12.0);
  v8 = [MEMORY[0x277CBEB28] dataWithLength:v7];
  destLen = v7;
  if (compress([v8 mutableBytes], &destLen, objc_msgSend(v5, "bytes"), v6))
  {
    [TCMessageException raise:TCUnknownProblemMessage];
  }

  [v8 setLength:destLen];
  *(a4 + 25) = destLen;
  *(a4 + 52) = -512;

  return v8;
}

+ (void)writeEmptyBlipStoreEntry:(EshBSE *)a3
{
  EshRecord::setInstance(a3, 0);
  *&a3->var11 = 0;
  a3->var8 = 255;
  a3->var9 = 0;
  a3->var6 = 0;
}

@end