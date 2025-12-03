@interface _CUIRawDataRendition
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (id)data;
- (void)dealloc;
@end

@implementation _CUIRawDataRendition

- (void)dealloc
{
  dataBytes = self->_dataBytes;
  if (dataBytes)
  {
    CFRelease(dataBytes);
  }

  v4.receiver = self;
  v4.super_class = _CUIRawDataRendition;
  [(CUIThemeRendition *)&v4 dealloc];
}

- (id)data
{
  v2 = self->_dataBytes;

  return v2;
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v18.receiver = self;
  v18.super_class = _CUIRawDataRendition;
  v5 = [(CUIThemeRendition *)&v18 _initWithCSIHeader:header version:*&version];
  if (header->var6 != 1145132097)
  {
    [_CUIRawDataRendition _initWithCSIHeader:version:];
  }

  v6 = &header->var0 + 4 * header->var11.var0 + header->var10;
  v8 = *(v6 + 45);
  v7 = v6 + 180;
  v9 = *(v7 + 2);
  v10 = bswap32(v9);
  if (v8 == 1146569042)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v7 - [objc_msgSend(v5 "srcData")];
  v13 = *(v7 + 1);
  renditionFlags = [v5 renditionFlags];
  v15 = *renditionFlags & 0xFFFFFFC3;
  if (v13)
  {
    *renditionFlags = v15 | 0x10;
    v16 = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v5 srcData], v12 + 12, v11);
    v5[27] = CUIUncompressDataWithLZFSE(v16);
  }

  else
  {
    *renditionFlags = v15;
    v5[27] = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v5 srcData], v12 + 12, v11);
  }

  return v5;
}

- (id)_initWithCSIHeader:version:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v4 = NSStringFromSelector(v0);
  return [OUTLINED_FUNCTION_0_4() handleFailureInMethod:v2 object:v4 file:? lineNumber:? description:?];
}

@end