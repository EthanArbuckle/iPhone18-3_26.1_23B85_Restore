@interface KmlTlv
+ (KmlTlv)TLVWithJustTag:(unsigned __int16)a3;
+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 unsignedChar:(unsigned __int8)a4;
+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 unsignedLongValue:(unsigned int)a4;
+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 unsignedShort:(unsigned __int16)a4;
+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 value:(id)a4;
+ (id)TLVsWithData:(id)a3;
+ (id)_intToData:(uint64_t)a1;
+ (id)_parseTLVs:(unint64_t)a3 end:;
- (id)asData;
- (id)description;
- (unsigned)valueAsUnsignedChar;
- (unsigned)valueAsUnsignedLong;
- (unsigned)valueAsUnsignedShort;
@end

@implementation KmlTlv

+ (id)TLVsWithData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 bytes];
    v6 = +[KmlTlv _parseTLVs:end:](a1, v11, v5 + [v4 length]);
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 136315394;
      *&v11[4] = "+[KmlTlv TLVsWithData:]";
      v12 = 1024;
      v13 = 29;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : nothing to parse", v11, 0x12u);
    }

    v6 = [MEMORY[0x277CBEA60] array];
  }

  v8 = v6;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_parseTLVs:(unint64_t)a3 end:
{
  *&v42[5] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v5 = [MEMORY[0x277CBEB18] array];
  v7 = *a2;
  if (*a2 >= a3)
  {
LABEL_23:
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v29 = [v5 count];
      *buf = 136315650;
      v38 = "+[KmlTlv _parseTLVs:end:]";
      v39 = 1024;
      v40 = 304;
      v41 = 2048;
      *v42 = v29;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : TLV: found %lu tlvs", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = 0x277CBE000uLL;
    *&v6 = 136315906;
    v35 = v6;
    while (1)
    {
      v9 = [*(v8 + 2704) dataWithBytes:v7 length:{a3 - v7, v35}];
      v10 = [KmlTlv TLVWithTag:0xFFFFLL value:v9];

      v11 = *a2;
      v12 = (*a2 + 1);
      *a2 = v12;
      v13 = *v11;
      if ((~v13 & 0x1F) == 0)
      {
        while (v12 < a3)
        {
          v14 = (v12 + 1);
          *a2 = (v12 + 1);
          v15 = *v12++;
          v16 = v15 < -1;
          v17 = v15 | (v13 << 8);
          v13 = v17;
          if (!v16)
          {
            goto LABEL_8;
          }
        }

        v23 = KmlLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v38 = "+[KmlTlv _parseTLVs:end:]";
          v39 = 1024;
          v40 = 252;
          v30 = "%s : %i : TLV: Underflow";
LABEL_27:
          v31 = v23;
          v32 = 18;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      v14 = v12;
      LOWORD(v17) = v13;
LABEL_8:
      if (v14 >= a3)
      {
        v23 = KmlLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_34;
        }

        *buf = 136315650;
        v38 = "+[KmlTlv _parseTLVs:end:]";
        v39 = 1024;
        v40 = 266;
        v41 = 1024;
        v42[0] = v17;
        v30 = "%s : %i : TLV: Underflow: tag=0x%x";
LABEL_32:
        v31 = v23;
        v32 = 24;
LABEL_33:
        _os_log_impl(&dword_248BF3000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
        goto LABEL_34;
      }

      v18 = v14 + 1;
      *a2 = (v14 + 1);
      v19 = *v14;
      if (*v14 < 0)
      {
        v27 = v19 & 0x7F;
        if ((v19 & 0x7F) != 0)
        {
          v19 = 0;
          v28 = v14 + 1;
          while (v28 < a3)
          {
            v18 = v28 + 1;
            *a2 = (v28 + 1);
            v19 = *v28++ | (v19 << 8);
            if (!--v27)
            {
              goto LABEL_10;
            }
          }

          v23 = KmlLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v38 = "+[KmlTlv _parseTLVs:end:]";
            v39 = 1024;
            v40 = 276;
            v41 = 1024;
            v42[0] = v17;
            v30 = "%s : %i : TLV: Underflow: tag=0x%x";
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        v19 = 0;
      }

LABEL_10:
      if (!v17 && !v19)
      {
        break;
      }

      v36 = v10;
      v20 = v5;
      v21 = v8;
      v22 = a3 - v18;
      v23 = KmlLogger();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
      if (v22 < v19)
      {
        if (v24)
        {
          *buf = v35;
          v38 = "+[KmlTlv _parseTLVs:end:]";
          v39 = 1024;
          v40 = 295;
          v41 = 1024;
          v42[0] = v17;
          LOWORD(v42[1]) = 1024;
          *(&v42[1] + 2) = v19;
          _os_log_impl(&dword_248BF3000, v23, OS_LOG_TYPE_INFO, "%s : %i : TLV: Underflow: tag=0x%x len=%u", buf, 0x1Eu);
        }

        v5 = v20;
        v10 = v36;
        goto LABEL_34;
      }

      if (v24)
      {
        *buf = v35;
        v38 = "+[KmlTlv _parseTLVs:end:]";
        v39 = 1024;
        v40 = 299;
        v41 = 1024;
        v42[0] = v17;
        LOWORD(v42[1]) = 1024;
        *(&v42[1] + 2) = v19;
        _os_log_impl(&dword_248BF3000, v23, OS_LOG_TYPE_INFO, "%s : %i : TLV: adding tag:0x%x, len:%u", buf, 0x1Eu);
      }

      v8 = v21;
      v25 = [*(v21 + 2704) dataWithBytes:*a2 length:v19];
      v26 = [KmlTlv TLVWithTag:v17 value:v25];
      v5 = v20;
      [v20 addObject:v26];

      *a2 += v19;
      v7 = *a2;
      if (*a2 >= a3)
      {
        goto LABEL_23;
      }
    }

    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v38 = "+[KmlTlv _parseTLVs:end:]";
      v39 = 1024;
      v40 = 287;
      v30 = "%s : %i : TLV: tag and length is 0";
      goto LABEL_27;
    }

LABEL_34:

    [v5 addObject:v10];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 value:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(a1);
  v7[4] = a3;
  v8 = *(v7 + 2);
  *(v7 + 2) = v6;

  return v7;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 unsignedChar:(unsigned __int8)a4
{
  v9 = a4;
  v5 = objc_alloc_init(a1);
  v5[4] = a3;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v9 length:1];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  return v5;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 unsignedShort:(unsigned __int16)a4
{
  v4 = a4;
  v6 = objc_alloc_init(a1);
  v6[4] = a3;
  v10 = __rev16(v4);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:2];
  v8 = *(v6 + 2);
  *(v6 + 2) = v7;

  return v6;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)a3 unsignedLongValue:(unsigned int)a4
{
  v6 = objc_alloc_init(a1);
  v6[4] = a3;
  v10 = bswap32(a4);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:2];
  v8 = *(v6 + 2);
  *(v6 + 2) = v7;

  return v6;
}

+ (KmlTlv)TLVWithJustTag:(unsigned __int16)a3
{
  v4 = objc_alloc_init(a1);
  v4[4] = a3;

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_value encoding:1];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v10.receiver = self;
    v10.super_class = KmlTlv;
    v5 = [(KmlTlv *)&v10 description];
    [v4 stringWithFormat:@"%@ %02x = %@ %@", v5, self->_tag, self->_value, v3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = KmlTlv;
    v5 = [(KmlTlv *)&v9 description];
    [v4 stringWithFormat:@"%@ %02x = %@", v5, self->_tag, self->_value, v8];
  }
  v6 = ;

  return v6;
}

- (unsigned)valueAsUnsignedLong
{
  v17 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    goto LABEL_10;
  }

  if ([(NSData *)value length]>= 5)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = self->_value;
      v11 = 136315650;
      v12 = "[KmlTlv valueAsUnsignedLong]";
      v13 = 1024;
      v14 = 113;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_INFO, "%s : %i : TLV: Value too large: %@", &v11, 0x1Cu);
    }

    goto LABEL_10;
  }

  v6 = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = v6[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unsigned)valueAsUnsignedChar
{
  v14 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (value)
  {
    if ([(NSData *)value length]< 2)
    {
      LOBYTE(value) = *[(NSData *)self->_value bytes];
    }

    else
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = self->_value;
        v8 = 136315650;
        v9 = "[KmlTlv valueAsUnsignedChar]";
        v10 = 1024;
        v11 = 132;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_INFO, "%s : %i : TLV: Value too large: %@", &v8, 0x1Cu);
      }

      LOBYTE(value) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return value;
}

- (unsigned)valueAsUnsignedShort
{
  v17 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    goto LABEL_10;
  }

  if ([(NSData *)value length]>= 3)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = self->_value;
      v11 = 136315650;
      v12 = "[KmlTlv valueAsUnsignedShort]";
      v13 = 1024;
      v14 = 147;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_INFO, "%s : %i : TLV: Value too large: %@", &v11, 0x1Cu);
    }

    goto LABEL_10;
  }

  v6 = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = v6[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_intToData:(uint64_t)a1
{
  objc_opt_self();
  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:4];
  v4 = v3;
  v8 = 0;
  if (a2)
  {
    v5 = 4;
    if (HIBYTE(a2))
    {
      goto LABEL_14;
    }

    do
    {
      v6 = HIWORD(a2);
      a2 <<= 8;
      --v5;
    }

    while (!v6 && v5);
    if (v5)
    {
LABEL_14:
      do
      {
        v8 = HIBYTE(a2);
        [v4 appendBytes:&v8 length:1];
        a2 <<= 8;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    [v3 appendBytes:&v8 length:1];
  }

  return v4;
}

- (id)asData
{
  v3 = [MEMORY[0x277CBEB28] data];
  v4 = [KmlTlv _intToData:?];
  [v3 appendData:v4];

  v5 = self->_value;
  v6 = [(NSData *)v5 length];
  v7 = [KmlTlv _intToData:v6];
  v8 = v7;
  if (v6 >= 0x80)
  {
    v10 = [v7 length] | 0x80;
    [v3 appendBytes:&v10 length:1];
  }

  [v3 appendData:v8];
  if (v5)
  {
    [v3 appendData:v5];
  }

  return v3;
}

@end