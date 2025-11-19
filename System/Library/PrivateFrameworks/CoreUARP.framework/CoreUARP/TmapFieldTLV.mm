@interface TmapFieldTLV
- (BOOL)createFieldType:(id)a3;
- (BOOL)expandEncodedString:(id)a3 inCoreAnalytics:(id)a4;
- (BOOL)expandFieldData:(id)a3 inCoreAnalytics:(id)a4;
- (BOOL)expandFieldData:(id)a3 withOffset:(unint64_t)a4 inCoreAnalytics:(id)a5;
- (BOOL)expandFloat:(id)a3 inCoreAnalytics:(id)a4;
- (BOOL)expandInteger:(id)a3 inCoreAnalytics:(id)a4;
- (BOOL)expandString:(id)a3 inCoreAnalytics:(id)a4;
- (BOOL)expandUnsignedInteger:(id)a3 inCoreAnalytics:(id)a4;
- (BOOL)getNextOffset:(unint64_t *)a3 fromStart:(unint64_t)a4;
- (TmapFieldTLV)init;
- (TmapFieldTLV)initWithCoder:(id)a3;
- (TmapFieldTLV)initWithDictionary:(id)a3 endian:(id)a4;
- (id)bigEndianSwap:(id)a3;
- (id)description;
- (id)endianSwap:(id)a3;
- (id)endianToString;
- (id)fieldTypeToString;
- (id)littleEndianSwap:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TmapFieldTLV

- (TmapFieldTLV)init
{
  [(TmapFieldTLV *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TmapFieldTLV)initWithDictionary:(id)a3 endian:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = TmapFieldTLV;
  v8 = [(TmapFieldTLV *)&v28 init];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  v10 = *(v8 + 5);
  *(v8 + 5) = v9;

  v11 = [v6 objectForKeyedSubscript:@"FieldName"];
  v12 = [v11 copy];
  v13 = *(v8 + 1);
  *(v8 + 1) = v12;

  if (!*(v8 + 1))
  {
    if (os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV initWithDictionary:endian:];
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetTmapDatabase addTmapMapping:];
    }

    goto LABEL_28;
  }

  v14 = [v6 objectForKeyedSubscript:@"FieldLength"];
  if (!v14)
  {
    if (os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV initWithDictionary:endian:];
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV initWithDictionary:endian:];
    }

    goto LABEL_27;
  }

  *(v8 + 2) = [v14 unsignedIntValue];
  v15 = [v6 objectForKeyedSubscript:@"FieldType"];
  v16 = [v15 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = *(v8 + 5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(TmapFieldTLV *)v19 initWithDictionary:v20 endian:v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_26;
  }

  if (![v8 createFieldType:v16])
  {
LABEL_26:

LABEL_27:
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  v17 = [v6 objectForKeyedSubscript:@"FieldPrivacyRestricted"];
  if (!v17)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV initWithDictionary:endian:];
    }

    goto LABEL_26;
  }

  *(v8 + 28) = [v17 BOOLValue];
  *(v8 + 8) = [v7 isEqualToString:@"LittleEndian"];

LABEL_12:
  v18 = v8;
LABEL_29:

  return v18;
}

- (BOOL)createFieldType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Integer"])
  {
    self->_fieldType = 0;
LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"UnsignedInteger"])
  {
    v5 = 1;
    self->_fieldType = 1;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"UTF8String"])
  {
    v6 = 2;
LABEL_11:
    self->_fieldType = v6;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"Base64EncodedString"])
  {
    v6 = 3;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"Float"])
  {
    v6 = 4;
    goto LABEL_11;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [TmapFieldTLV createFieldType:];
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (TmapFieldTLV)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TmapFieldTLV;
  v5 = [(TmapFieldTLV *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FieldName"];
    fieldName = v5->_fieldName;
    v5->_fieldName = v6;

    v5->_fieldLength = [v4 decodeIntegerForKey:@"FieldLength"];
    v5->_fieldType = [v4 decodeIntegerForKey:@"FieldType"];
    v5->_fieldPrivacyRestricted = [v4 decodeBoolForKey:@"FieldPrivacyRestricted"];
    v5->_endian = [v4 decodeIntegerForKey:@"Endian"];
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v5->_log;
    v5->_log = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fieldName = self->_fieldName;
  v5 = a3;
  [v5 encodeObject:fieldName forKey:@"FieldName"];
  [v5 encodeInteger:self->_fieldLength forKey:@"FieldLength"];
  [v5 encodeInteger:self->_fieldType forKey:@"FieldType"];
  [v5 encodeBool:self->_fieldPrivacyRestricted forKey:@"FieldPrivacyRestricted"];
  [v5 encodeInteger:self->_endian forKey:@"Endian"];
}

- (BOOL)expandFieldData:(id)a3 withOffset:(unint64_t)a4 inCoreAnalytics:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  fieldLength = self->_fieldLength;
  if (__CFADD__(a4, fieldLength))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV expandFieldData:withOffset:inCoreAnalytics:];
    }

    goto LABEL_15;
  }

  if (fieldLength + a4 > [v8 length])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v12 = log;
      v13 = [v8 length];
      v14 = self->_fieldLength + a4;
      v19 = 134218240;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      _os_log_error_impl(&dword_247AA7000, v12, OS_LOG_TYPE_ERROR, "Length of MTIC Data(%lu) and Expected TMAP Data(%lu) do not match ", &v19, 0x16u);
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (!v9)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV expandFieldData:withOffset:inCoreAnalytics:];
    }

    goto LABEL_15;
  }

  if (!self->_fieldName)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV expandFieldData:withOffset:inCoreAnalytics:];
    }

    goto LABEL_15;
  }

  v15 = [v8 subdataWithRange:{a4, self->_fieldLength}];
  v16 = [(TmapFieldTLV *)self expandFieldData:v15 inCoreAnalytics:v9];

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)expandFieldData:(id)a3 inCoreAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  fieldType = self->_fieldType;
  if (fieldType == 3)
  {
    v9 = [(TmapFieldTLV *)self expandEncodedString:v6 inCoreAnalytics:v7];
    goto LABEL_5;
  }

  if (fieldType == 2)
  {
    v9 = [(TmapFieldTLV *)self expandString:v6 inCoreAnalytics:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_18;
  }

  v11 = [(TmapFieldTLV *)self endianSwap:v6];
  v12 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV expandFieldData:inCoreAnalytics:];
    }

    v10 = 0;
    goto LABEL_17;
  }

  v13 = self->_fieldType;
  switch(v13)
  {
    case 4:
      v14 = [(TmapFieldTLV *)self expandFloat:v11 inCoreAnalytics:v7];
      goto LABEL_16;
    case 1:
      v14 = [(TmapFieldTLV *)self expandUnsignedInteger:v11 inCoreAnalytics:v7];
      goto LABEL_16;
    case 0:
      v14 = [(TmapFieldTLV *)self expandInteger:v11 inCoreAnalytics:v7];
LABEL_16:
      v10 = v14;
LABEL_17:

      goto LABEL_18;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [TmapFieldTLV expandFieldData:inCoreAnalytics:];
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (BOOL)getNextOffset:(unint64_t *)a3 fromStart:(unint64_t)a4
{
  fieldLength = self->_fieldLength;
  v5 = __CFADD__(a4, fieldLength);
  if (!__CFADD__(a4, fieldLength))
  {
    *a3 = fieldLength + a4;
  }

  return !v5;
}

- (id)endianSwap:(id)a3
{
  if (self->_endian == 1)
  {
    [(TmapFieldTLV *)self littleEndianSwap:a3];
  }

  else
  {
    [(TmapFieldTLV *)self bigEndianSwap:a3];
  }
  v3 = ;

  return v3;
}

- (id)bigEndianSwap:(id)a3
{
  v4 = a3;
  v5 = v4;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      LODWORD(v13) = 0;
      [v4 getBytes:&v13 length:4];
      LODWORD(v12) = bswap32(v13);
      v7 = objc_alloc(MEMORY[0x277CBEA90]);
      v8 = 4;
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v13 = 0;
      [v4 getBytes:&v13 length:8];
      v12 = bswap64(v13);
      v7 = objc_alloc(MEMORY[0x277CBEA90]);
      v8 = 8;
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v4];
LABEL_14:
      v9 = v10;
      goto LABEL_15;
    }

    if (fieldLength == 2)
    {
      LOWORD(v13) = 0;
      [v4 getBytes:&v13 length:2];
      LOWORD(v12) = bswap32(v13) >> 16;
      v7 = objc_alloc(MEMORY[0x277CBEA90]);
      v8 = 2;
LABEL_13:
      v10 = [v7 initWithBytes:&v12 length:{v8, v12}];
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [TmapFieldTLV bigEndianSwap:];
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)littleEndianSwap:(id)a3
{
  v4 = a3;
  v5 = v4;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      LODWORD(v11) = 0;
      [v4 getBytes:&v11 length:4];
      LODWORD(v10) = v11;
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v11 = 0;
      [v4 getBytes:&v11 length:8];
      v10 = v11;
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v4];
LABEL_14:
      v7 = v8;
      goto LABEL_15;
    }

    if (fieldLength == 2)
    {
      LOWORD(v11) = 0;
      [v4 getBytes:&v11 length:2];
      LOWORD(v10) = v11;
LABEL_13:
      v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v10 length:self->_fieldLength];
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [TmapFieldTLV bigEndianSwap:];
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)expandInteger:(id)a3 inCoreAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  p_fieldLength = &self->_fieldLength;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      v23 = 0;
      [v6 getBytes:&v23 length:4];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:v23];
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v22 = 0;
      [v6 getBytes:&v22 length:8];
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v25 = 0;
      v18 = 1;
      [v6 getBytes:&v25 length:1];
      v19 = [MEMORY[0x277CCABB0] numberWithChar:v25];
      [v7 setObject:v19 forKeyedSubscript:self->_fieldName];

      goto LABEL_14;
    }

    if (fieldLength == 2)
    {
      v24 = 0;
      [v6 getBytes:&v24 length:2];
      v10 = [MEMORY[0x277CCABB0] numberWithShort:v24];
LABEL_13:
      v20 = v10;
      [v7 setObject:v10 forKeyedSubscript:self->_fieldName];

      v18 = 1;
      goto LABEL_14;
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(TmapFieldTLV *)p_fieldLength expandInteger:v12 inCoreAnalytics:v13, v14, v15, v16, v17];
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)expandUnsignedInteger:(id)a3 inCoreAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  p_fieldLength = &self->_fieldLength;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      v23 = 0;
      [v6 getBytes:&v23 length:4];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v22 = 0;
      [v6 getBytes:&v22 length:8];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v25 = 0;
      v18 = 1;
      [v6 getBytes:&v25 length:1];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25];
      [v7 setObject:v19 forKeyedSubscript:self->_fieldName];

      goto LABEL_14;
    }

    if (fieldLength == 2)
    {
      v24 = 0;
      [v6 getBytes:&v24 length:2];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
LABEL_13:
      v20 = v10;
      [v7 setObject:v10 forKeyedSubscript:self->_fieldName];

      v18 = 1;
      goto LABEL_14;
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(TmapFieldTLV *)p_fieldLength expandUnsignedInteger:v12 inCoreAnalytics:v13, v14, v15, v16, v17];
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)expandFloat:(id)a3 inCoreAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  fieldLength = self->_fieldLength;
  if (fieldLength == 8)
  {
    v14 = 0.0;
    [v6 getBytes:&v14 length:8];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    goto LABEL_5;
  }

  if (fieldLength == 4)
  {
    v15 = 0;
    [v6 getBytes:&v15 length:4];
    LODWORD(v9) = v15;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
LABEL_5:
    v11 = v10;
    [v7 setObject:v10 forKeyedSubscript:self->_fieldName];

    v12 = 1;
    goto LABEL_9;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [TmapFieldTLV expandFloat:inCoreAnalytics:];
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (BOOL)expandString:(id)a3 inCoreAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    v9 = v8;
    if (v8)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v8, "UTF8String")}];
      v11 = v10 != 0;
      if (v10)
      {
        [v7 setObject:v10 forKeyedSubscript:self->_fieldName];
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [TmapFieldTLV expandString:inCoreAnalytics:];
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [TmapFieldTLV expandString:inCoreAnalytics:];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)expandEncodedString:(id)a3 inCoreAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [v6 base64EncodedStringWithOptions:0];
    v9 = v8 != 0;
    if (v8)
    {
      [v7 setObject:v8 forKeyedSubscript:self->_fieldName];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [TmapFieldTLV expandEncodedString:inCoreAnalytics:];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_fieldName)
  {
    [v3 appendFormat:@"Event Field Name %@\n", self->_fieldName];
  }

  else
  {
    [v3 appendFormat:@"No Event Field Name", v8];
  }

  [v4 appendFormat:@"Event Field Length %lu\n", self->_fieldLength];
  v5 = [(TmapFieldTLV *)self fieldTypeToString];
  [v4 appendFormat:@"Event Field Type %@ \n", v5];

  v6 = [(TmapFieldTLV *)self endianToString];
  [v4 appendFormat:@"Event Field Endian %@ \n", v6];

  return v4;
}

- (id)fieldTypeToString
{
  fieldType = self->_fieldType;
  if (fieldType <= 1)
  {
    if (!fieldType)
    {
      v3 = kUARPStringTMAPTypeInteger;
      goto LABEL_12;
    }

    if (fieldType == 1)
    {
      v3 = kUARPStringTMAPTypeUnsignedInteger;
      goto LABEL_12;
    }
  }

  else
  {
    switch(fieldType)
    {
      case 2:
        v3 = kUARPStringTMAPTypeString;
        goto LABEL_12;
      case 3:
        v3 = kUARPStringTMAPTypeEncodedString;
        goto LABEL_12;
      case 4:
        v3 = kUARPStringTMAPTypeFloat;
LABEL_12:
        v4 = *v3;
        goto LABEL_13;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [TmapFieldTLV fieldTypeToString];
  }

  v4 = @"No Field Type";
LABEL_13:

  return v4;
}

- (id)endianToString
{
  if (self->_endian == 1)
  {
    v2 = kUARPStringTMAPTypeLittleEndian;
  }

  else
  {
    v2 = kUARPStringTMAPTypeBigEndian;
  }

  return *v2;
}

- (void)initWithDictionary:(uint64_t)a3 endian:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Field Type is not type String", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)expandInteger:(uint64_t)a3 inCoreAnalytics:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "Integer must be length: 1, 2, 4, or 8; not: %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)expandUnsignedInteger:(uint64_t)a3 inCoreAnalytics:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "Unsigned Integer must be length: 1, 2, 4, or 8; not: %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end