@interface OABBlip
+ (EshBlip)writeBlip:(id)blip;
+ (id)compressMetafileData:(id)data info:(void *)info;
+ (id)delayedSubBlipWithMetafileInfo:(const void *)info;
+ (id)dibFileContentsWithDibBlipData:(const OcBinaryData *)data;
+ (id)readBlipFromBse:(id)bse;
+ (id)readBlipFromEshBlip:(EshBlip *)blip;
+ (id)subBlipWithMetafileInfo:(const void *)info;
+ (int)blipTypeForBlipSignature:(int)signature;
+ (void)setMetafileBoundsFromPictData:(id)data info:(void *)info;
+ (void)writeBlip:(id)blip toBlipStoreEntry:(EshBSE *)entry;
+ (void)writeEmptyBlipStoreEntry:(EshBSE *)entry;
@end

@implementation OABBlip

+ (id)readBlipFromBse:(id)bse
{
  bseCopy = bse;
  eshObject = [bseCopy eshObject];
  {
    v7 = v6[13];
    if (v7 && *(v6 + 4))
    {
      v8 = [self readBlipFromEshBlip:?];
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

+ (id)readBlipFromEshBlip:(EshBlip *)blip
{
  if (!blip)
  {
    v10 = 0;
    goto LABEL_20;
  }

  RecordType = EshRecord::getRecordType(blip);
  v6 = objc_alloc_init(OADBlip);
  if ((RecordType - 61466) >= 6 && (RecordType - 61481) > 1)
  {
    goto LABEL_18;
  }

  if ((*(blip->var0 + 10))(blip))
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
          v9 = [(ESDBlipContext *)[ESDDibFileBlipContext alloc] initWithOffset:*&blip[1].var3.var0[4] byteCount:*&blip[1].var3.var0[12] stream:*&blip[2].var2.var1 streamID:*&blip[1].var3.var0[8]];
          [(OCDDelayedNode *)v8 setDelayedContext:v9];
          [(OADBlip *)v6 setMainSubBlip:v8];
LABEL_17:

LABEL_18:
          v10 = v6;
          goto LABEL_19;
        }

LABEL_23:
        v8 = [self delayedSubBlipWithMetafileInfo:&blip[1]];
        [(OADBlip *)v6 setMainSubBlip:v8];
        v9 = [self delayedSubBlipWithMetafileInfo:&blip[3].var2.var4];
        if (v9)
        {
          [(OADBlip *)v6 setAltSubBlip:v9];
        }

        goto LABEL_17;
      }

      v7 = 8;
    }

    v8 = [[OADSubBlip alloc] initWithData:0 type:v7];
    v9 = [[ESDBlipContext alloc] initWithOffset:*&blip[1].var3.var0[4] byteCount:*&blip[1].var3.var0[12] stream:*&blip[2].var2.var1 streamID:*&blip[1].var3.var0[8]];
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

+ (EshBlip)writeBlip:(id)blip
{
  v4 = objc_autoreleasePoolPush();
  mainSubBlip = [blip mainSubBlip];
  type = [mainSubBlip type];
  if (type <= 3)
  {
    v8 = type == 2 || type == 3;
    v9 = type == 2;
    v10 = type != 2 && type == 3;
  }

  else
  {
    v7 = type == 5 || type == 6;
    v8 = type == 4 || v7;
    v9 = 0;
    v10 = 0;
  }

  data = [mainSubBlip data];
  v12 = data;
  if (data)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && [data length])
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

+ (void)writeBlip:(id)blip toBlipStoreEntry:(EshBSE *)entry
{
  blipCopy = blip;
  if (*[blipCopy referenceCount])
  {
    mainSubBlip = [blipCopy mainSubBlip];
    sizeInBytes = [mainSubBlip sizeInBytes];

    if (sizeInBytes >= 1)
    {
      v8 = [self writeBlip:blipCopy];
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
          EshRecord::setInstance(entry, BlipType);
          entry->var11 = v11;
          entry->var12 = v12;
          entry->var8 = 255;
          entry->var9 = 0;
          entry->var6 = *[blipCopy referenceCount];
          entry->var15 = v9->var3;
          entry->var3 = v9;
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

  [self writeEmptyBlipStoreEntry:entry];
LABEL_17:
}

+ (id)dibFileContentsWithDibBlipData:(const OcBinaryData *)data
{
  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  var5 = data->var5;
  var3 = data->var3;
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

+ (id)subBlipWithMetafileInfo:(const void *)info
{
  v3 = **info & 0xFFFE;
  if ((**info & 0xFFFE) != 0)
  {
    0xFFFE = [self blipTypeForBlipSignature:**info & 0xFFFE];
    v6 = v3 == 1346;
    v7 = *(info + 25);
    v8 = *(info + 18);
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(v8 + (v6 << 9))];
    destLen = v8;
    if (uncompress(([v9 mutableBytes] + (v6 << 9)), &destLen, *(info + 6), v7))
    {
      v10 = 0;
    }

    else
    {
      v10 = destLen == v8;
    }

    if (v10)
    {
      v11 = [[OADSubBlip alloc] initWithData:v9 type:0xFFFE];
      v12 = *(info + 92);
      v13.i64[0] = v12;
      v13.i64[1] = SHIDWORD(v12);
      [(OADSubBlip *)v11 setSizeInPoints:vdivq_f64(vcvtq_f64_s64(v13), vdupq_n_s64(0x40C8CE0000000000uLL))];
      [(OADSubBlip *)v11 setFrame:*(info + 19), *(info + 20), (*(info + 21) - *(info + 19)), (*(info + 22) - *(info + 20))];
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

+ (id)delayedSubBlipWithMetafileInfo:(const void *)info
{
  v4 = **info & 0xFFFE;
  if (v4 && (v5 = v4 == 1346, v6 = [self blipTypeForBlipSignature:?], v6) && *(info + 10))
  {
    v7 = [[OADSubBlip alloc] initWithData:0 type:v6];
    v8 = *(info + 92);
    v9.i64[0] = v8;
    v9.i64[1] = SHIDWORD(v8);
    [(OADSubBlip *)v7 setSizeInPoints:vdivq_f64(vcvtq_f64_s64(v9), vdupq_n_s64(0x40C8CE0000000000uLL))];
    [(OADSubBlip *)v7 setFrame:*(info + 19), *(info + 20), (*(info + 21) - *(info + 19)), (*(info + 22) - *(info + 20))];
    v10 = [[ESDMetafileBlipContext alloc] initWithOffset:*(info + 8) byteCount:*(info + 10) uncompressed:*(info + 18) stream:*(info + 8) streamID:*(info + 9)];
    [(ESDMetafileBlipContext *)v10 setDefaultHeaderSize:(v5 << 9)];
    [(OCDDelayedNode *)v7 setDelayedContext:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)blipTypeForBlipSignature:(int)signature
{
  if (signature <= 1759)
  {
    if (signature <= 1129)
    {
      if (signature == 534)
      {
        return 4;
      }

      if (signature == 980)
      {
        return 5;
      }

      return 0;
    }

    if (signature != 1130)
    {
      if (signature == 1346)
      {
        return 6;
      }

      return 0;
    }

    return 2;
  }

  if (signature <= 1763)
  {
    if (signature == 1760)
    {
      return 3;
    }

    if (signature != 1762)
    {
      return 0;
    }

    return 2;
  }

  if (signature == 1764)
  {
    return 8;
  }

  return signature == 1960;
}

+ (void)setMetafileBoundsFromPictData:(id)data info:(void *)info
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:dataCopy];
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
  *(info + 23) = llroundf(v9);
  *(info + 24) = llroundf(v10);
  v11 = v7;
  v12 = llroundf(v11);
  v13 = v8;
  *(info + 19) = 0;
  *(info + 20) = 0;
  *(info + 21) = v12;
  *(info + 22) = llroundf(v13);
}

+ (id)compressMetafileData:(id)data info:(void *)info
{
  dataCopy = data;
  v6 = [dataCopy length];
  *(info + 18) = v6;
  v7 = vcvtps_s32_f32((v6 * 1.01) + 12.0);
  v8 = [MEMORY[0x277CBEB28] dataWithLength:v7];
  destLen = v7;
  if (compress([v8 mutableBytes], &destLen, objc_msgSend(dataCopy, "bytes"), v6))
  {
    [TCMessageException raise:TCUnknownProblemMessage];
  }

  [v8 setLength:destLen];
  *(info + 25) = destLen;
  *(info + 52) = -512;

  return v8;
}

+ (void)writeEmptyBlipStoreEntry:(EshBSE *)entry
{
  EshRecord::setInstance(entry, 0);
  *&entry->var11 = 0;
  entry->var8 = 255;
  entry->var9 = 0;
  entry->var6 = 0;
}

@end