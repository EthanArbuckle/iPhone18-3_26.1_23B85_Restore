@interface _MDLabel
- ($DCF20CAD073027CB89FDEFA7A9A33809)_getUUIDBytesForUserUUID:(__CFUUID *)a3;
- (_MDLabel)initWithUUID:(__CFUUID *)a3 attributes:(__CFDictionary *)a4 forUserUUID:(__CFUUID *)a5;
- (id)description;
- (unint64_t)_cfTypeID;
- (void)dealloc;
- (void)getAttr:(__CFString *)a3;
- (void)updateAttrs:(__CFDictionary *)a3;
@end

@implementation _MDLabel

- ($DCF20CAD073027CB89FDEFA7A9A33809)_getUUIDBytesForUserUUID:(__CFUUID *)a3
{
  v7 = CFUUIDGetUUIDBytes(self->_uuid);
  v6 = *&v7.byte8;
  v5 = *&v7.byte0;
  data = v7;
  if ((*&self->_attrBits.var0 & 2) == 0)
  {
    memset(&v8, 0, sizeof(v8));
    CC_MD5_Init(&v8);
    CC_MD5_Update(&v8, &data, 0x10u);
    data = CFUUIDGetUUIDBytes(a3);
    CC_MD5_Update(&v8, &data, 0x10u);
    CC_MD5_Final(&data.byte0, &v8);
    v6 = *&data.byte8;
    v5 = *&data.byte0;
  }

  result.var8 = v6;
  result.var9 = BYTE1(v6);
  result.var10 = BYTE2(v6);
  result.var11 = BYTE3(v6);
  result.var12 = BYTE4(v6);
  result.var13 = BYTE5(v6);
  result.var14 = BYTE6(v6);
  result.var15 = HIBYTE(v6);
  result.var0 = v5;
  result.var1 = BYTE1(v5);
  result.var2 = BYTE2(v5);
  result.var3 = BYTE3(v5);
  result.var4 = BYTE4(v5);
  result.var5 = BYTE5(v5);
  result.var6 = BYTE6(v5);
  result.var7 = HIBYTE(v5);
  return result;
}

- (_MDLabel)initWithUUID:(__CFUUID *)a3 attributes:(__CFDictionary *)a4 forUserUUID:(__CFUUID *)a5
{
  v16.receiver = self;
  v16.super_class = _MDLabel;
  v8 = [(_MDLabel *)&v16 init];
  if (v8)
  {
    v9 = *MEMORY[0x277CBECE8];
    if (a4)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a4);
      v8->_attrs = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, kMDLabelAttributeBits);
      if ((!Value || !CFNumberGetValue(Value, kCFNumberSInt64Type, &v8->_attrBits)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_MDLabel initWithUUID:a4 attributes:? forUserUUID:?];
      }
    }

    else
    {
      v8->_attrs = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v8->_uuid = CFRetain(a3);
    v8->_userUUID = CFRetain(a5);
    v12 = [(_MDLabel *)v8 _getUUIDBytesForUserUUID:a5];
    _MDLabelUUIDEncode(v12, v13, initWithUUID_attributes_forUserUUID__idComponent);
    v14 = CFStringCreateWithCString(v9, initWithUUID_attributes_forUserUUID__idComponent, 0x8000100u);
    CFDictionarySetValue(v8->_attrs, kMDLabelID, v14);
    CFRelease(v14);
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->_attrs);
  CFRelease(self->_uuid);
  CFRelease(self->_userUUID);
  v3.receiver = self;
  v3.super_class = _MDLabel;
  [(_MDLabel *)&v3 dealloc];
}

- (unint64_t)_cfTypeID
{
  if (MDLabelGetTypeID_once != -1)
  {
    MDLabelGetTypeID_cold_1();
  }

  return MDLabelGetTypeID_typeID;
}

- (id)description
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<MDLabel %p [%@]>", self, self->_uuid);

  return v2;
}

- (void)getAttr:(__CFString *)a3
{
  result = CFDictionaryGetValue(self->_attrs, a3);
  if (!result)
  {

    return [(_MDLabel *)self getAttrFallback:a3];
  }

  return result;
}

- (void)updateAttrs:(__CFDictionary *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(a3);
  v6 = (v12 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, 8 * Count);
  v7 = v6;
  bzero(v6, 8 * Count);
  CFDictionaryGetKeysAndValues(a3, v6, v6);
  if (Count >= 1)
  {
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *v7++;
      CFDictionarySetValue(self->_attrs, v8, v10);
      --Count;
    }

    while (Count);
  }

  [(_MDLabel *)self cleanAttrs];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithUUID:(uint64_t)a1 attributes:forUserUUID:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[_MDLabel initWithUUID:attributes:forUserUUID:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: can't extract attributeBits from label attributes %@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end