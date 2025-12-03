@interface _MDLabel
- ($DCF20CAD073027CB89FDEFA7A9A33809)_getUUIDBytesForUserUUID:(__CFUUID *)d;
- (_MDLabel)initWithUUID:(__CFUUID *)d attributes:(__CFDictionary *)attributes forUserUUID:(__CFUUID *)iD;
- (id)description;
- (unint64_t)_cfTypeID;
- (void)dealloc;
- (void)getAttr:(__CFString *)attr;
- (void)updateAttrs:(__CFDictionary *)attrs;
@end

@implementation _MDLabel

- ($DCF20CAD073027CB89FDEFA7A9A33809)_getUUIDBytesForUserUUID:(__CFUUID *)d
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
    data = CFUUIDGetUUIDBytes(d);
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

- (_MDLabel)initWithUUID:(__CFUUID *)d attributes:(__CFDictionary *)attributes forUserUUID:(__CFUUID *)iD
{
  v15.receiver = self;
  v15.super_class = _MDLabel;
  v8 = [(_MDLabel *)&v15 init];
  if (v8)
  {
    if (attributes)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, attributes);
      v8->_attrs = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, kMDLabelAttributeBits);
      if ((!Value || !CFNumberGetValue(Value, kCFNumberSInt64Type, &v8->_attrBits)) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000CB88(attributes);
      }
    }

    else
    {
      v8->_attrs = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v8->_uuid = CFRetain(d);
    v8->_userUUID = CFRetain(iD);
    v11 = [(_MDLabel *)v8 _getUUIDBytesForUserUUID:iD];
    _MDLabelUUIDEncode(v11, v12, byte_10001A1A0);
    v13 = CFStringCreateWithCString(kCFAllocatorDefault, byte_10001A1A0, 0x8000100u);
    CFDictionarySetValue(v8->_attrs, kMDLabelID, v13);
    CFRelease(v13);
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
  if (qword_10001A198 != -1)
  {
    sub_10000CB74();
  }

  return qword_10001A190;
}

- (id)description
{
  v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<MDLabel %p [%@]>", self, self->_uuid);

  return v2;
}

- (void)getAttr:(__CFString *)attr
{
  result = CFDictionaryGetValue(self->_attrs, attr);
  if (!result)
  {

    return [(_MDLabel *)self getAttrFallback:attr];
  }

  return result;
}

- (void)updateAttrs:(__CFDictionary *)attrs
{
  Count = CFDictionaryGetCount(attrs);
  v6 = (&v11 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, 8 * Count);
  v7 = v6;
  bzero(v6, 8 * Count);
  CFDictionaryGetKeysAndValues(attrs, v6, v6);
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
}

@end