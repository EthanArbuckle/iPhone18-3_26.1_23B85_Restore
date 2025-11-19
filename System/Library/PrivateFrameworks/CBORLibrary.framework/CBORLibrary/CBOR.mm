@interface CBOR
+ (id)cborFalse;
+ (id)cborNil;
+ (id)cborTrue;
+ (id)cborWithArray:(id)a3;
+ (id)cborWithData:(id)a3;
+ (id)cborWithDateTime:(id)a3;
+ (id)cborWithDictionary:(id)a3;
+ (id)cborWithDictionary:(id)a3 keyOrderList:(id)a4;
+ (id)cborWithDouble:(double)a3;
+ (id)cborWithEmbeddedCBORData:(id)a3;
+ (id)cborWithEncodedTag24Data:(id)a3;
+ (id)cborWithFloat:(float)a3;
+ (id)cborWithFullDate:(id)a3;
+ (id)cborWithHalfFloat:(float)a3;
+ (id)cborWithInteger:(int64_t)a3;
+ (id)cborWithUTF8String:(id)a3;
+ (id)cborWithUnsignedInteger:(unint64_t)a3;
+ (id)decodeMajorType0And1FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5;
+ (id)decodeMajorType2And3FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5 indefiniteLenContainerType:(unint64_t)a6 noCopy:(BOOL)a7;
+ (id)decodeMajorType6FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5;
+ (id)decodeMajorType7FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5;
+ (id)encodeMajorType2or3:(uint64_t)a1;
+ (id)encodeMajorType7Bool:(uint64_t)a1;
+ (id)encodeMajorType7Undefined;
- (BOOL)BOOLValue;
- (BOOL)isDate;
- (BOOL)isEmbeddedCBORData;
- (BOOL)isEqual:(id)a3;
- (CBOR)initWithCbor:(id)a3 tag:(id)a4;
- (CBOR)initWithType:(unint64_t)a3 value:(id)a4 valueSize:(int64_t)a5 tag:(id)a6;
- (NSArray)array;
- (NSData)data;
- (NSDate)date;
- (NSDictionary)dictionary;
- (NSNumber)numeric;
- (NSString)string;
- (double)doubleValue;
- (id)asJSON;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeToEmbeddedCBORData;
- (int64_t)longLongValue;
- (unint64_t)unsignedLongLongValue;
@end

@implementation CBOR

+ (id)encodeMajorType2or3:(uint64_t)a1
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 dataUsingEncoding:4];
    v4 = 96;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = objc_opt_new();
      goto LABEL_17;
    }

    v3 = v2;
    v4 = 64;
  }

  [v3 length];
  if ([v3 length] >> 32)
  {
    v12 = v4 | 0x1B;
    v13[0] = bswap64([v3 length]);
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 9}];
    [v5 appendBytes:&v12 length:1];
    v6 = v13;
    v7 = v5;
    v8 = 8;
  }

  else if ([v3 length] < 0x10000)
  {
    if ([v3 length] < 0x100)
    {
      if ([v3 length] < 0x18)
      {
        v12 = v4 + [v3 length];
        v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 1}];
        v5 = v7;
        v6 = &v12;
      }

      else
      {
        v12 = v4 | 0x18;
        LOBYTE(v13[0]) = [v3 length];
        v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 2}];
        [v5 appendBytes:&v12 length:1];
        v6 = v13;
        v7 = v5;
      }

      v8 = 1;
    }

    else
    {
      v12 = v4 | 0x19;
      LOWORD(v13[0]) = bswap32([v3 length]) >> 16;
      v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 3}];
      [v5 appendBytes:&v12 length:1];
      v6 = v13;
      v7 = v5;
      v8 = 2;
    }
  }

  else
  {
    v12 = v4 | 0x1A;
    LODWORD(v13[0]) = bswap32([v3 length]);
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 5}];
    [v5 appendBytes:&v12 length:1];
    v6 = v13;
    v7 = v5;
    v8 = 4;
  }

  [v7 appendBytes:v6 length:v8];
  [v5 appendData:v3];
  v9 = v5;

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __51__CBOR_Encoder__encodeMajorType5_encodingKeyOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEA90] dataWithCBOR:v5];
  v8 = [MEMORY[0x277CBEA90] dataWithCBOR:v6];
  v9 = *(a1 + 32);
  v10 = [v7 length];
  v11 = [v8 length];
  if (v9)
  {
    if (v10 < v11)
    {
LABEL_3:
      v12 = -1;
      goto LABEL_17;
    }

    v23 = [v7 length];
    if (v23 <= [v8 length])
    {
      v24 = [v7 length];
      v25 = [v7 bytes];
      v26 = [v8 bytes];
      if (!v24)
      {
        goto LABEL_3;
      }

      v27 = *v25;
      v28 = *v26;
      if (v27 <= v28)
      {
        v32 = v25 + 1;
        v33 = v26 + 1;
        v12 = 1;
        while (v27 >= v28)
        {
          v34 = *v32++;
          v27 = v34;
          v35 = *v33++;
          v28 = v35;
          if (v27 > v35)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_3;
      }
    }

LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  if (v10 <= v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v7;
  }

  v14 = [v13 length];
  v15 = [v7 bytes];
  v16 = [v8 bytes];
  if (v14)
  {
    v17 = *v15;
    v18 = *v16;
    if (v17 <= v18)
    {
      v19 = v15 + 1;
      v20 = v16 + 1;
      v12 = 1;
      while (v17 >= v18)
      {
        v21 = *v19++;
        v17 = v21;
        v22 = *v20++;
        v18 = v22;
        if (v17 > v22)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_3;
    }

    goto LABEL_16;
  }

  v30 = [v7 length];
  if (v30 == [v8 length])
  {
    v12 = 0;
  }

  else
  {
    v31 = [v7 length];
    if (v31 > [v8 length])
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }
  }

LABEL_17:

  return v12;
}

+ (id)encodeMajorType7Undefined
{
  objc_opt_self();
  v2 = -9;
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v2 length:1];

  return v0;
}

+ (id)encodeMajorType7Bool:(uint64_t)a1
{
  objc_opt_self();
  if (a2)
  {
    v3 = -11;
  }

  else
  {
    v3 = -12;
  }

  v6 = v3;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v6 length:1];

  return v4;
}

- (id)asJSON
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(CBOR *)self type]== 4)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [(CBOR *)self array];
    v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = [(CBOR *)self array];
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 asJSON];
          if (v12)
          {
            [v11 asJSON];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v13 = ;
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }
  }

  else if ([(CBOR *)self type]== 5)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v15 = [(CBOR *)self dictionary];
    v5 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = [(CBOR *)self dictionary];
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * j);
          v22 = [(CBOR *)self dictionary];
          v23 = [v22 objectForKeyedSubscript:v21];

          v24 = [v21 asJSON];
          v25 = [v23 asJSON];
          v26 = v25;
          if (v24)
          {
            if (v25)
            {
              [v5 setObject:v25 forKey:v24];
            }

            else
            {
              v27 = [MEMORY[0x277CBEB68] null];
              [v5 setObject:v27 forKey:v24];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v5 = [(CBOR *)self value];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB68] null];
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)decodeMajorType0And1FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5
{
  v7 = a5;
  v8 = *a4;
  if (!*a4)
  {
    v16 = 0;
    goto LABEL_33;
  }

  v9 = *a3;
  v10 = **a3;
  v11 = v10 & 0xFFFFFFDF;
  v12 = (v10 >> 5) & 1;
  if ((v10 & 0xFFFFFFDF) <= 0x17)
  {
    if ((v10 & 0x20) != 0)
    {
      v13 = ~v11;
    }

    else
    {
      v13 = v11;
    }

    v14 = [CBOR alloc];
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v13];
    v16 = [(CBOR *)v14 initWithType:v12 value:v15 valueSize:0 tag:v7];

    v17 = v8 - 1;
    v18 = 1;
    goto LABEL_7;
  }

  v17 = 0;
  if (v11 > 25)
  {
    if (v11 == 26)
    {
      v17 = v8 - 5;
      if (v8 - 5 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_31;
      }

      v26 = *(v9 + 1);
      if ((v10 & 0x20) != 0)
      {
        v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:bswap32(~v26)];
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:bswap32(v26)];
      }

      v32 = v27;
      v16 = [[CBOR alloc] initWithType:v12 value:v27 valueSize:4 tag:v7];

      v18 = 5;
    }

    else
    {
      if (v11 != 27)
      {
        goto LABEL_21;
      }

      v17 = v8 - 9;
      if (v8 - 9 > 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_31;
      }

      v22 = *(v9 + 1);
      if ((v10 & 0x20) != 0)
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:bswap64(~v22)];
      }

      else
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:bswap64(v22)];
      }

      v30 = v23;
      v16 = [[CBOR alloc] initWithType:v12 value:v23 valueSize:8 tag:v7];

      v18 = 9;
    }

LABEL_7:
    v19 = &v9[v18];
    if (v16)
    {
LABEL_23:
      if (&v19[v17] > &v9[v8])
      {
        __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType0And1FromBuffer:length:tag:]", "CBOR+decoder.m", 277, "buffer + bufferSize <= endOfBuffer");
      }

      *a3 = v19;
      goto LABEL_32;
    }

LABEL_22:
    v16 = [[CBOR alloc] initWithType:16 value:0 valueSize:0 tag:v7];
    goto LABEL_23;
  }

  if (v11 == 24)
  {
    if (v8 == 1)
    {
      goto LABEL_31;
    }

    v24 = *(v9 + 1);
    if ((v10 & 0x20) != 0)
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:~v24];
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v24];
    }

    v31 = v25;
    v16 = [[CBOR alloc] initWithType:v12 value:v25 valueSize:1 tag:v7];

    v17 = v8 - 2;
    v18 = 2;
    goto LABEL_7;
  }

  if (v11 != 25)
  {
LABEL_21:
    v19 = *a3;
    goto LABEL_22;
  }

  v17 = v8 - 3;
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = *(v9 + 1);
    if ((v10 & 0x20) != 0)
    {
      v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:(bswap32(~v20) >> 16)];
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:__rev16(v20)];
    }

    v29 = v21;
    v16 = [[CBOR alloc] initWithType:v12 value:v21 valueSize:2 tag:v7];

    v18 = 3;
    goto LABEL_7;
  }

LABEL_31:
  v17 = 0;
  v16 = 0;
LABEL_32:
  *a4 = v17;
LABEL_33:

  return v16;
}

+ (id)decodeMajorType2And3FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5 indefiniteLenContainerType:(unint64_t)a6 noCopy:(BOOL)a7
{
  v7 = a7;
  v11 = a5;
  v12 = *a3;
  v13 = *a4;
  v66 = v13;
  v67 = v12;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_86;
  }

  v14 = *v12;
  if ((v14 & 0x20) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  if (a6 != 16 && v15 != a6)
  {
    goto LABEL_7;
  }

  v17 = v14 & 0xFFFFFFDF;
  v62 = v7;
  if ((v14 & 0xFFFFFFDF) <= 0x57)
  {
    v18 = v14 & 0x1F;
    if (v13 < v18)
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v21 = 0;
      v22 = 1;
      v23 = v13;
      goto LABEL_56;
    }

    v22 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = v13 - 1;
    v66 = v13 - 1;
    v31 = v12 + 1;
    goto LABEL_33;
  }

  v19 = 0;
  v22 = 0;
  v20 = 1;
  if (v17 <= 89)
  {
    if (v17 == 88)
    {
      v23 = v13 - 1;
      v66 = v13 - 1;
      v67 = v12 + 1;
      if (v13 != 1)
      {
        v19 = 0;
        v20 = 0;
        v35 = *(v12 + 1);
        v23 = v13 - 2;
        v66 = v13 - 2;
        v67 = v12 + 2;
        v22 = v13 - 2 < v35;
        v21 = v13 - 2 >= v35;
        if (v13 - 2 >= v35)
        {
          v18 = v35;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v23 = v13;
      v18 = 0;
      v21 = 0;
      if (v17 != 89)
      {
        goto LABEL_56;
      }

      v23 = v13 - 1;
      v66 = v13 - 1;
      v67 = v12 + 1;
      if (v13 - 1 >= 2)
      {
        v19 = 0;
        v20 = 0;
        v32 = bswap32(*(v12 + 1)) >> 16;
        v23 = v13 - 3;
        v66 = v13 - 3;
        v67 = v12 + 3;
        v22 = v13 - 3 < v32;
        if (v13 - 3 >= v32)
        {
          v18 = v32;
        }

        else
        {
          v18 = 0;
        }

        v21 = 2 * (v13 - 3 >= v32);
        goto LABEL_56;
      }
    }

LABEL_55:
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    goto LABEL_56;
  }

  if (v17 == 90)
  {
    v23 = v13 - 1;
    v66 = v13 - 1;
    v67 = v12 + 1;
    if (v13 - 1 >= 4)
    {
      v19 = 0;
      v20 = 0;
      v33 = bswap32(*(v12 + 1));
      v23 = v13 - 5;
      v66 = v13 - 5;
      v67 = v12 + 5;
      v22 = v13 - 5 < v33;
      if (v13 - 5 >= v33)
      {
        v18 = v33;
      }

      else
      {
        v18 = 0;
      }

      v21 = 4 * (v13 - 5 >= v33);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v17 == 91)
  {
    v23 = v13 - 1;
    v66 = v13 - 1;
    v67 = v12 + 1;
    if (v13 - 1 >= 8)
    {
      v19 = 0;
      v20 = 0;
      v34 = bswap64(*(v12 + 1));
      v23 = v13 - 9;
      v66 = v13 - 9;
      v67 = v12 + 9;
      v22 = v13 - 9 < v34;
      if (v13 - 9 >= v34)
      {
        v18 = v34;
      }

      else
      {
        v18 = 0;
      }

      v21 = 8 * (v13 - 9 >= v34);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v23 = v13;
  v18 = 0;
  v21 = 0;
  if (v17 != 95)
  {
    goto LABEL_56;
  }

  if (a6 != 16)
  {
LABEL_7:
    v16 = 0;
    *a4 = 0;
    goto LABEL_86;
  }

  v24 = v11;
  v25 = v13 - 1;
  v66 = v13 - 1;
  v67 = v12 + 1;
  v19 = objc_opt_new();
  if (v13 != 1)
  {
    v63 = 0;
    v11 = v24;
    while (1)
    {
      v26 = *v67;
      if (v26 == 255)
      {
        break;
      }

      if ((v26 & 0xE0) == 0x60)
      {
        v27 = (v14 >> 5) & 1;
      }

      else
      {
        v27 = 1;
      }

      v22 = 1;
      if ((v26 & 0xE0) == 64 && (v14 & 0x20) != 0 || !v27 || (v26 | 0x20) == 0x7F)
      {
        v20 = 0;
        v18 = 0;
        v21 = 0;
LABEL_92:
        v23 = v25;
        goto LABEL_56;
      }

      v28 = [CBOR decodeMajorType2And3FromBuffer:&v67 length:&v66 tag:0 indefiniteLenContainerType:v15 noCopy:v62];
      v29 = v28;
      if (v28 && [v28 type] == v15)
      {
        v30 = [v29 data];
        [v19 appendData:v30];
      }

      else
      {

        v19 = 0;
        v66 = 0;
        v63 = 1;
      }

      v23 = 0;
      v20 = 0;
      v18 = 0;
      v21 = 0;
      v25 = v66;
      v22 = 1;
      v11 = v24;
      if (!v66)
      {
        goto LABEL_56;
      }
    }

    if (v63)
    {
      v20 = 0;
      v18 = 0;
      v21 = 0;
      v22 = 1;
      goto LABEL_92;
    }

    v22 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    v23 = v25 - 1;
    v66 = v25 - 1;
    v31 = v67 + 1;
LABEL_33:
    v67 = v31;
    goto LABEL_56;
  }

  v23 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v22 = 1;
  v11 = v24;
LABEL_56:
  v36 = v20;
  v61 = v21;
  v37 = v18 > v23 || v22;
  v65 = v11;
  v38 = [v11 numeric];
  v64 = v38;
  if (v38)
  {
    if ([v38 unsignedIntValue] == 24)
    {
      v39 = (v14 >> 5) & 1;
    }

    else
    {
      v39 = 0;
    }

    if ((v39 | v37))
    {
      goto LABEL_63;
    }
  }

  else if (v37)
  {
    goto LABEL_63;
  }

  v60 = v19;
  if (v19)
  {
    if ((v14 & 0x20) != 0)
    {
      if ([v19 length])
      {
        v40 = objc_alloc(MEMORY[0x277CCACA8]);
        v41 = [v19 bytes];
        v42 = [v19 length];
        if (v62)
        {
          v43 = [v40 initWithBytesNoCopy:v41 length:v42 encoding:4 freeWhenDone:0];
        }

        else
        {
          v43 = [v40 initWithBytes:v41 length:v42 encoding:4];
        }

        goto LABEL_81;
      }

LABEL_80:
      v43 = objc_opt_new();
LABEL_81:
      v50 = v43;
      v51 = [CBOR alloc];
      v52 = 3;
LABEL_82:
      v47 = [(CBOR *)v51 initWithType:v52 value:v50 valueSize:0 tag:v65];

      goto LABEL_83;
    }

    v44 = [CBOR alloc];
    v45 = 2;
    v46 = v19;
LABEL_72:
    v47 = [(CBOR *)v44 initWithType:v45 value:v46 valueSize:0 tag:v65];
LABEL_83:
    v53 = v66;
    if (&v67[v66] > &v12[v13])
    {
      __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType2And3FromBuffer:length:tag:indefiniteLenContainerType:noCopy:]", "CBOR+decoder.m", 541, "buffer + bufferSize <= endOfBuffer");
    }

    *a3 = v67;
    *a4 = v53;
    v16 = v47;
    v19 = v60;
    goto LABEL_85;
  }

  if (v36)
  {
    v44 = [CBOR alloc];
    v45 = 16;
    v46 = 0;
    goto LABEL_72;
  }

  if (!v18)
  {
    if ((v14 & 0x20) == 0)
    {
      v50 = objc_opt_new();
      v51 = [CBOR alloc];
      v52 = 2;
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (v18 <= v66)
  {
    if ((v14 & 0x20) != 0)
    {
      v48 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v62)
      {
        v49 = [v48 initWithBytesNoCopy:v67 length:v18 encoding:4 freeWhenDone:0];
      }

      else
      {
        v49 = [v48 initWithBytes:v67 length:v18 encoding:4];
      }

      v57 = v49;
      v58 = [CBOR alloc];
      v59 = 3;
    }

    else
    {
      v55 = objc_alloc(MEMORY[0x277CBEA90]);
      if (v62)
      {
        v56 = [v55 initWithBytesNoCopy:v67 length:v18 freeWhenDone:0];
      }

      else
      {
        v56 = [v55 initWithBytes:v67 length:v18];
      }

      v57 = v56;
      v58 = [CBOR alloc];
      v59 = 2;
    }

    v47 = [(CBOR *)v58 initWithType:v59 value:v57 valueSize:v61 tag:v65];

    v66 -= v18;
    v67 += v18;
    goto LABEL_83;
  }

LABEL_63:
  v16 = 0;
  *a4 = 0;
LABEL_85:

  v11 = v65;
LABEL_86:

  return v16;
}

+ (id)decodeMajorType6FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5
{
  v7 = a5;
  v8 = *a4;
  if (!*a4)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v9 = *a3;
  v10 = **a3 & 0x3F;
  if (v10 <= 0x17)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v10];
    v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:0 tag:v7];
    v13 = v8 - 1;
    v14 = 1;
LABEL_4:
    v15 = &v9[v14];

LABEL_5:
    if (&v15[v13] > &v9[v8])
    {
      __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType6FromBuffer:length:tag:]", "CBOR+decoder.m", 1003, "buffer + bufferSize <= endOfBuffer");
    }

    *a3 = v15;
    goto LABEL_23;
  }

  v12 = 0;
  if ((**a3 & 0x3Fu) > 0x19)
  {
    if (v10 == 26)
    {
      v13 = v8 - 5;
      if (v8 - 5 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:bswap32(*(v9 + 1))];
        v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:4 tag:v7];
        v14 = 5;
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (v10 == 27)
    {
      v13 = v8 - 9;
      if (v8 - 9 <= 0xFFFFFFFFFFFFFFF7)
      {
        v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:bswap64(*(v9 + 1))];
        v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:8 tag:v7];
        v14 = 9;
        goto LABEL_4;
      }

      goto LABEL_22;
    }

LABEL_17:
    v13 = 0;
    v15 = *a3;
    goto LABEL_5;
  }

  if (v10 == 24)
  {
    if (v8 != 1)
    {
      v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v9[1]];
      v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:1 tag:v7];
      v13 = v8 - 2;
      v14 = 2;
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  if (v10 != 25)
  {
    goto LABEL_17;
  }

  v13 = v8 - 3;
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:(bswap32(*(v9 + 1)) >> 16)];
    v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:2 tag:v7];
    v14 = 3;
    goto LABEL_4;
  }

LABEL_22:
  v13 = 0;
  v12 = 0;
LABEL_23:
  *a4 = v13;
LABEL_24:

  return v12;
}

+ (id)decodeMajorType7FromBuffer:(const char *)a3 length:(unint64_t *)a4 tag:(id)a5
{
  v7 = a5;
  v8 = *a4;
  if (!*a4)
  {
    v15 = 0;
    goto LABEL_46;
  }

  v9 = *a3;
  v10 = **a3;
  v11 = v10 & 0x1F;
  if ((v10 & 0x1Fu) <= 0x17)
  {
    if ((v10 & 0x1Fu) > 0x15)
    {
      if (v11 == 22)
      {
        v25 = [CBOR alloc];
        v12 = [MEMORY[0x277CBEB68] null];
        v13 = v25;
        v14 = 11;
        goto LABEL_25;
      }

      if (v11 == 23)
      {
        v18 = [CBOR alloc];
        v12 = [MEMORY[0x277CBEB68] null];
        v13 = v18;
        v14 = 12;
        goto LABEL_25;
      }
    }

    else
    {
      if (v11 == 20)
      {
        v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:0];
        v13 = [CBOR alloc];
        v14 = 9;
        goto LABEL_25;
      }

      if (v11 == 21)
      {
        v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
        v13 = [CBOR alloc];
        v14 = 10;
LABEL_25:
        v15 = [(CBOR *)v13 initWithType:v14 value:v12 valueSize:0 tag:v7];

        v16 = v8 - 1;
        v17 = v9 + 1;
LABEL_43:
        if (&v17[v16] > &v9[v8])
        {
          __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType7FromBuffer:length:tag:]", "CBOR+decoder.m", 1137, "buffer + bufferSize <= endOfBuffer");
        }

        *a3 = v17;
        goto LABEL_45;
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v11];
    v13 = [CBOR alloc];
    v14 = 13;
    goto LABEL_25;
  }

  v15 = 0;
  if ((v10 & 0x1Fu) <= 0x19)
  {
    if (v11 == 24)
    {
      if (v8 != 1)
      {
        v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(v9 + 1)];
        v15 = [[CBOR alloc] initWithType:13 value:v29 valueSize:1 tag:v7];
        v16 = v8 - 2;
        v17 = v9 + 2;
        goto LABEL_42;
      }
    }

    else
    {
      if (v11 != 25)
      {
        v16 = *a4;
        v17 = *a3;
        goto LABEL_43;
      }

      v16 = v8 - 3;
      if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = *(v9 + 1);
        v20 = v19;
        v21 = (v19 >> 2) & 0x1F;
        v22 = *(v9 + 2) | ((v19 & 3) << 8);
        if (v21 == 31)
        {
          if (v22)
          {
            v30 = NAN;
          }

          else
          {
            v30 = INFINITY;
          }
        }

        else
        {
          if (v21)
          {
            v23 = (v22 | 0x400);
            v24 = v21 - 25;
          }

          else
          {
            v23 = v22;
            v24 = -24;
          }

          v30 = ldexp(v23, v24);
        }

        v31 = objc_alloc(MEMORY[0x277CCABB0]);
        v32 = -v30;
        if (v20 >= 0)
        {
          v32 = v30;
        }

        v29 = [v31 initWithDouble:v32];
        v15 = [[CBOR alloc] initWithType:6 value:v29 valueSize:2 tag:v7];
        v17 = v9 + 3;
        goto LABEL_42;
      }
    }
  }

  else if (v11 == 26)
  {
    v16 = v8 - 5;
    if (v8 - 5 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v26 = bswap32(*(v9 + 1));
      v27 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v28) = v26;
      v29 = [v27 initWithFloat:v28];
      v15 = [[CBOR alloc] initWithType:7 value:v29 valueSize:4 tag:v7];
      v17 = v9 + 5;
LABEL_42:

      goto LABEL_43;
    }
  }

  else
  {
    if (v11 != 27)
    {
      v16 = *a4;
      v17 = *a3;
      if (v11 == 31)
      {
        v16 = v8 - 1;
        v17 = v9 + 1;
        v15 = [[CBOR alloc] initWithType:15 value:0 valueSize:0 tag:v7];
      }

      goto LABEL_43;
    }

    v16 = v8 - 9;
    if (v8 - 9 <= 0xFFFFFFFFFFFFFFF7)
    {
      v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:COERCE_DOUBLE(bswap64(*(v9 + 1)))];
      v15 = [[CBOR alloc] initWithType:8 value:v29 valueSize:8 tag:v7];
      v17 = v9 + 9;
      goto LABEL_42;
    }
  }

  v16 = 0;
  v15 = 0;
LABEL_45:
  *a4 = v16;
LABEL_46:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CBOR alloc];
  value = self->_value;
  valueSize = self->_valueSize;
  type = self->_type;
  tag = self->_tag;

  return [(CBOR *)v4 initWithType:type value:value valueSize:valueSize tag:tag];
}

- (CBOR)initWithType:(unint64_t)a3 value:(id)a4 valueSize:(int64_t)a5 tag:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a6;
  v33.receiver = self;
  v33.super_class = CBOR;
  v13 = [(CBOR *)&v33 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_23;
  }

  v13->_type = a3;
  objc_storeStrong(&v13->_value, a4);
  v14->_valueSize = a5;
  objc_storeStrong(&v14->_tag, a6);
  value = v14->_value;
  v16 = v14->_valueSize ^ v14->_type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v14->_value;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          v23 = [v17 objectForKeyedSubscript:v22];
          v24 = [v22 hash] ^ v16;
          v16 = v24 ^ [v23 hash];
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v19);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = v14->_value;
      if (v32 && [v32 conformsToProtocol:&unk_2835DEA00])
      {
        v16 ^= [v14->_value hash];
      }

      goto LABEL_20;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v14->_value;
    v25 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v17);
          }

          v16 ^= [*(*(&v34 + 1) + 8 * j) hash];
        }

        v26 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v26);
    }
  }

LABEL_20:
  tag = v14->_tag;
  if (tag)
  {
    v16 ^= [(CBOR *)tag hash];
  }

  v14->_cachedHash = v16;
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

- (CBOR)initWithCbor:(id)a3 tag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 type];
  v9 = [v7 value];
  v10 = [v7 valueSize];

  v11 = [(CBOR *)self initWithType:v8 value:v9 valueSize:v10 tag:v6];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if ([(CBOR *)v6 type]== self->_type)
    {
      v7 = [(CBOR *)self hash];
      v8 = v7 == [(CBOR *)v6 hash];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)longLongValue
{
  type = self->_type;
  if (type != 13 && type != 1)
  {
    return 0;
  }

  value = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = self->_value;

  return [v6 longLongValue];
}

- (unint64_t)unsignedLongLongValue
{
  type = self->_type;
  v3 = type > 0xE;
  v4 = (1 << type) & 0x6001;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  value = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = self->_value;

  return [v8 unsignedLongLongValue];
}

- (double)doubleValue
{
  if (self->_type - 6 > 2)
  {
    return 0.0;
  }

  value = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0.0;
  }

  v4 = self->_value;

  [v4 doubleValue];
  return result;
}

- (NSNumber)numeric
{
  type = self->_type;
  v4 = type > 0xE;
  v5 = (1 << type) & 0x61C3;
  if (v4 || v5 == 0)
  {
    v9 = &unk_2835DCF00;
  }

  else
  {
    value = self->_value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = self->_value;
    }

    else
    {
      v9 = &unk_2835DCF00;
    }
  }

  return v9;
}

- (BOOL)BOOLValue
{
  type = self->_type;
  if (type == 10)
  {
    return 1;
  }

  if (type == 9)
  {
    return 0;
  }

  value = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = self->_value;

  return [v5 BOOLValue];
}

- (NSString)string
{
  type = self->_type;
  if (type != 3)
  {
LABEL_5:
    if (type == 2 && (v6 = self->_value, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      value = self->_value;
      v8 = MEMORY[0x277CCACA8];
      v9 = value;
      v10 = [v8 alloc];
      v11 = [v9 bytes];
      v12 = [v9 length];

      v5 = [v10 initWithBytes:v11 length:v12 encoding:4];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_9;
  }

  v4 = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    type = self->_type;
    goto LABEL_5;
  }

  v5 = self->_value;
LABEL_9:

  return v5;
}

- (NSData)data
{
  type = self->_type;
  if (type != 3)
  {
LABEL_5:
    if (type == 2 && (value = self->_value, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = self->_value;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_9;
  }

  v4 = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    type = self->_type;
    goto LABEL_5;
  }

  v5 = [self->_value dataUsingEncoding:4];
LABEL_9:

  return v5;
}

- (NSArray)array
{
  if (self->_type == 4)
  {
    value = self->_value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_value;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)dictionary
{
  if (self->_type == 5)
  {
    value = self->_value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_value;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)date
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_type != 3)
  {
    goto LABEL_17;
  }

  value = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = [(CBOR *)self->_tag numeric];
  v5 = [v4 intValue];

  if (v5 == 1004)
  {
    v25 = _getRFC3339DateFormatter(0);
    v10 = [v25 dateFromString:self->_value];

    goto LABEL_18;
  }

  if (v5)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v6 = self->_value;
  v7 = [v6 cStringUsingEncoding:4];
  if (!v7)
  {
    goto LABEL_47;
  }

  v8 = v7;
  v9 = [v6 lengthOfBytesUsingEncoding:4];
  if (v9 < 0x14 || *(v8 + 10) != 84)
  {
    goto LABEL_47;
  }

  v10 = 0;
  v11 = (v8 + v9);
  memset(&v35, 0, sizeof(v35));
  v13 = (v8 + 19);
  v12 = *(v8 + 19);
  if (v12 <= 0x2D)
  {
    if (v12 != 43 && v12 != 45)
    {
      goto LABEL_48;
    }

    v14 = *(v11 - 1);
    v36 = 0;
    v37 = 0;
    v39 = 0;
    v38 = 0;
    __strlcpy_chk();
    v15 = -1.0;
    if (v14 == 90)
    {
      goto LABEL_12;
    }

LABEL_44:
    if (v11 - v13 == 6 && v13[3] == 58)
    {
      __strlcpy_chk();
      __strlcpy_chk();
      v16 = "%Y-%m-%dT%H:%M:%S%z";
      goto LABEL_13;
    }

LABEL_47:
    v10 = 0;
    goto LABEL_48;
  }

  if (v12 == 46)
  {
    if (v9 < 21)
    {
      goto LABEL_47;
    }

    v28 = 20;
    do
    {
      v29 = *(v8 + v28);
      if ((v29 - 43) <= 0x2F && ((1 << (v29 - 43)) & 0x800000000005) != 0)
      {
        v31 = v28 - 20;
        v32 = (v8 + v28);
        goto LABEL_37;
      }

      if ((v29 - 48) > 9)
      {
        goto LABEL_47;
      }

      ++v28;
      v32 = (v8 + v28);
    }

    while (v8 + v28 < v11);
    v31 = v28 - 20;
LABEL_37:
    v10 = 0;
    if (v32 == v11 || (v31 - 4) < 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_48;
    }

    v36 = &v13[v31];
    v33 = strtod((v8 + 19), &v36);
    if (v36 == v13)
    {
      goto LABEL_47;
    }

    v15 = v33;
    v34 = *(v11 - 1);
    if (*v32 == 90 && v34 != 90)
    {
      goto LABEL_47;
    }

    v36 = 0;
    v37 = 0;
    v39 = 0;
    v38 = 0;
    __strlcpy_chk();
    if (v34 == 90)
    {
LABEL_12:
      v16 = "%Y-%m-%dT%H:%M:%S";
LABEL_13:
      v17 = strptime_l(&v36, v16, &v35, 0);
      if (v17 && !*v17)
      {
        v18 = objc_alloc(MEMORY[0x277CBEAA8]);
        v19 = mktime(&v35);
        v20 = [v18 initWithTimeIntervalSince1970:{v19, *&v35.tm_sec, *&v35.tm_mon, *&v35.tm_isdst, v35.tm_zone}];
        v21 = v20;
        if (v15 <= 0.0)
        {
          v22 = v20;
        }

        else
        {
          v22 = [v20 dateByAddingTimeInterval:v15];
        }

        v10 = v22;

        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v13 = v32;
    goto LABEL_44;
  }

  if (v12 == 90)
  {
    if (v9 > 20 || !strptime_l(v8, "%Y-%m-%dT%H:%M:%S", &v35, 0))
    {
      goto LABEL_47;
    }

    v26 = objc_alloc(MEMORY[0x277CBEAA8]);
    v27 = timegm(&v35);
    v10 = [v26 initWithTimeIntervalSince1970:{v27, *&v35.tm_sec, *&v35.tm_mon, *&v35.tm_isdst, v35.tm_zone}];
  }

LABEL_48:

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isDate
{
  if (self->_type != 3)
  {
    return 0;
  }

  tag = self->_tag;
  if (!tag)
  {
    return 0;
  }

  v4 = [(CBOR *)tag numeric];
  if ([v4 intValue])
  {
    v5 = [(CBOR *)self->_tag numeric];
    v6 = [v5 intValue] == 1004;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEmbeddedCBORData
{
  if (self->_type != 2)
  {
    return 0;
  }

  tag = self->_tag;
  if (!tag)
  {
    return 0;
  }

  v3 = [(CBOR *)tag numeric];
  v4 = [v3 intValue] == 24;

  return v4;
}

- (id)description
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  tag = self->_tag;
  if (tag)
  {
    v5 = [(CBOR *)tag description];
    [v3 appendFormat:@"(%@)", v5];
  }

  switch(self->_type)
  {
    case 0uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsigned int<%@>", self->_value];
      goto LABEL_22;
    case 1uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"negative int<%@>", self->_value];
      goto LABEL_22;
    case 2uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"byte string<%@>", self->_value];
      goto LABEL_22;
    case 3uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UTF8 string<%@>", self->_value];
      goto LABEL_22;
    case 4uLL:
      v7 = @"array";
      break;
    case 5uLL:
      v7 = @"dictionary";
      break;
    case 6uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"half float<%@>", self->_value];
      goto LABEL_22;
    case 7uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"single float<%@>", self->_value];
      goto LABEL_22;
    case 8uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"double float<%@>", self->_value];
      goto LABEL_22;
    case 9uLL:
      v7 = @"false";
      break;
    case 0xAuLL:
      v7 = @"true";
      break;
    case 0xBuLL:
      v7 = @"null";
      break;
    case 0xCuLL:
      v7 = @"undefined";
      break;
    case 0xDuLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"simple<%@>", self->_value];
      goto LABEL_22;
    case 0xEuLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"tag<%@>", self->_value];
LABEL_22:
      v7 = v6;
      break;
    case 0xFuLL:
      v7 = @"break";
      break;
    case 0x10uLL:
      v7 = @"uknown";
      break;
    default:
      v7 = 0;
      break;
  }

  [v3 appendString:v7];
  type = self->_type;
  if (type == 4)
  {
    v21 = self->_value;
    [v3 appendString:@"<["];
    v22 = [v21 count];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v21;
    v23 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v32 = v7;
      v25 = *v35;
      do
      {
        v26 = 0;
        v27 = v22;
        do
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v11);
          }

          v28 = [*(*(&v34 + 1) + 8 * v26) description];
          [v3 appendFormat:@"%@", v28];

          if (v27 >= 2)
          {
            [v3 appendString:{@", "}];
          }

          ++v26;
          --v27;
        }

        while (v24 != v26);
        v22 -= v24;
        v24 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
      v7 = v32;
    }

    v20 = @"]>";
  }

  else
  {
    if (type != 5)
    {
      goto LABEL_48;
    }

    v9 = self->_value;
    [v3 appendString:@"<{"];
    v10 = [v9 count];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v31 = v7;
      v14 = *v39;
      do
      {
        v15 = 0;
        v33 = v10;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v38 + 1) + 8 * v15);
          v17 = [v11 objectForKeyedSubscript:v16];
          v18 = [v16 description];
          v19 = [v17 description];
          [v3 appendFormat:@"%@: %@", v18, v19];

          if (v10 >= 2)
          {
            [v3 appendString:{@", "}];
          }

          ++v15;
          --v10;
        }

        while (v13 != v15);
        v10 = v33 - v13;
        v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);
      v7 = v31;
    }

    v20 = @"}>";
  }

  [v3 appendString:v20];
LABEL_48:

  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)cborWithInteger:(int64_t)a3
{
  v3 = a3 ^ (a3 >> 63);
  v4 = 1;
  v5 = 2;
  v6 = 8;
  if (!HIDWORD(v3))
  {
    v6 = 4;
  }

  if (v3 >= 0x10000)
  {
    v5 = v6;
  }

  if (v3 >= 0x100)
  {
    v4 = v5;
  }

  if (v3 >= 24)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3 >> 63;
  v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:a3];
  v10 = [[CBOR alloc] initWithType:v8 value:v9 valueSize:v7 tag:0];

  return v10;
}

+ (id)cborWithUnsignedInteger:(unint64_t)a3
{
  v3 = 1;
  v4 = 2;
  v5 = 8;
  if (!HIDWORD(a3))
  {
    v5 = 4;
  }

  if (a3 >= 0x10000)
  {
    v4 = v5;
  }

  if (a3 >= 0x100)
  {
    v3 = v4;
  }

  if (a3 >= 24)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:a3];
  v8 = [[CBOR alloc] initWithType:0 value:v7 valueSize:v6 tag:0];

  return v8;
}

+ (id)cborWithHalfFloat:(float)a3
{
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v5 = a3;
  v6 = [v4 initWithFloat:v5];
  v7 = [[CBOR alloc] initWithType:6 value:v6 valueSize:2 tag:0];

  return v7;
}

+ (id)cborWithFloat:(float)a3
{
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v5 = a3;
  v6 = [v4 initWithFloat:v5];
  v7 = [[CBOR alloc] initWithType:7 value:v6 valueSize:4 tag:0];

  return v7;
}

+ (id)cborWithDouble:(double)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  v4 = [[CBOR alloc] initWithType:8 value:v3 valueSize:8 tag:0];

  return v4;
}

+ (id)cborWithArray:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:4 value:v3 valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:5 value:v3 valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithDictionary:(id)a3 keyOrderList:(id)a4
{
  v5 = a4;
  v6 = [CBOR cborWithDictionary:a3];
  v7 = v6[6];
  v6[6] = v5;

  return v6;
}

+ (id)cborWithData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:2 value:v3 valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithEncodedTag24Data:(id)a3
{
  v3 = a3;
  v9 = [v3 bytes];
  v8 = [v3 length];
  v4 = [v3 length];

  if (v4 >= 2)
  {
    v6 = [CBOR decodeMajorType6FromBuffer:&v9 length:&v8 tag:0];
    v5 = 0;
    if (v6 && v8)
    {
      v5 = [CBOR decodeMajorType2And3FromBuffer:&v9 length:&v8 tag:v6 indefiniteLenContainerType:16 noCopy:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)cborWithUTF8String:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:3 value:v3 valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithFullDate:(id)a3
{
  v3 = a3;
  v4 = [[CBOR alloc] initWithType:14 value:&unk_2835DCF18 valueSize:2 tag:0];
  v5 = _getRFC3339DateFormatter(0);
  v6 = [v5 stringFromDate:v3];

  v7 = [CBOR alloc];
  v8 = [v6 length];
  v9 = 1;
  v10 = 2;
  v11 = 8;
  if (!HIDWORD(v8))
  {
    v11 = 4;
  }

  if (v8 >= 0x10000)
  {
    v10 = v11;
  }

  if (v8 >= 0x100)
  {
    v9 = v10;
  }

  if (v8 >= 24)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CBOR *)v7 initWithType:3 value:v6 valueSize:v12 tag:v4];

  return v13;
}

+ (id)cborWithDateTime:(id)a3
{
  v3 = a3;
  v4 = [[CBOR alloc] initWithType:14 value:&unk_2835DCF30 valueSize:0 tag:0];
  v5 = _getRFC3339DateFormatter(1);
  v6 = [v5 stringFromDate:v3];

  v7 = [CBOR alloc];
  v8 = [v6 length];
  v9 = 1;
  v10 = 2;
  v11 = 8;
  if (!HIDWORD(v8))
  {
    v11 = 4;
  }

  if (v8 >= 0x10000)
  {
    v10 = v11;
  }

  if (v8 >= 0x100)
  {
    v9 = v10;
  }

  if (v8 >= 24)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CBOR *)v7 initWithType:3 value:v6 valueSize:v12 tag:v4];

  return v13;
}

+ (id)cborNil
{
  v2 = [[CBOR alloc] initWithType:11 value:0 valueSize:0 tag:0];

  return v2;
}

+ (id)cborTrue
{
  v2 = [[CBOR alloc] initWithType:10 value:0 valueSize:0 tag:0];

  return v2;
}

+ (id)cborFalse
{
  v2 = [[CBOR alloc] initWithType:9 value:0 valueSize:0 tag:0];

  return v2;
}

+ (id)cborWithEmbeddedCBORData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [CBOR cborWithInteger:24];
  v10 = [[CBOR alloc] initWithType:2 value:v3 valueSize:v8 tag:v9];

  return v10;
}

- (id)encodeToEmbeddedCBORData
{
  v2 = [MEMORY[0x277CBEA90] dataWithCBOR:self];
  v3 = [CBOR cborWithEmbeddedCBORData:v2];

  return v3;
}

@end