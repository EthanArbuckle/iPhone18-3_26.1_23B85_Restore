@interface KmlCancelMessage
- (KmlCancelMessage)initWithCCCErrorCode:(unsigned __int8)code;
- (KmlCancelMessage)initWithData:(id)data;
- (KmlCancelMessage)initWithKmlErrorCode:(unsigned int)code;
- (id)asData;
@end

@implementation KmlCancelMessage

- (KmlCancelMessage)initWithData:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  [KmlTlv TLVsWithData:data];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v33 + 1) + 8 * v8);
      if ([v9 tag] == 32620)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (!v10)
    {
      goto LABEL_21;
    }

    value = [v10 value];
    v12 = [KmlTlv TLVsWithData:value];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v12;
    v13 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (!v13)
    {
LABEL_20:

LABEL_29:
      v24 = KmlLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[KmlCancelMessage initWithData:]";
        v40 = 1024;
        v41 = 120;
        _os_log_impl(&dword_248BF3000, v24, OS_LOG_TYPE_ERROR, "%s : %i : Cancel code TLV not found", buf, 0x12u);
      }

      goto LABEL_32;
    }

    v14 = v13;
    v15 = *v30;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(v4);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      if ([v17 tag] == 109 || objc_msgSend(v17, "tag") == 90)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    v18 = v17;

    if (!v18)
    {
      goto LABEL_29;
    }

    v28.receiver = self;
    v28.super_class = KmlCancelMessage;
    v19 = [(KmlCancelMessage *)&v28 init];
    if (v19)
    {
      valueAsUnsignedShort = [v18 valueAsUnsignedShort];
      v19->_cccCode = valueAsUnsignedShort;
      v21 = &byte_248C29D6C;
      v22 = 4;
      while (*v21 != valueAsUnsignedShort)
      {
        v21 += 8;
        if (!--v22)
        {
          v23 = 105;
          goto LABEL_35;
        }
      }

      v23 = *(v21 - 1);
LABEL_35:
      v19->_kmlCode = v23;
    }

    self = v19;

    selfCopy = self;
  }

  else
  {
LABEL_9:

LABEL_21:
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[KmlCancelMessage initWithData:]";
      v40 = 1024;
      v41 = 107;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Cancel TLV not found", buf, 0x12u);
    }

LABEL_32:
    selfCopy = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (KmlCancelMessage)initWithCCCErrorCode:(unsigned __int8)code
{
  codeCopy = code;
  v8.receiver = self;
  v8.super_class = KmlCancelMessage;
  result = [(KmlCancelMessage *)&v8 init];
  if (result)
  {
    result->_cccCode = codeCopy;
    v5 = &byte_248C29D6C;
    v6 = 4;
    while (*v5 != codeCopy)
    {
      v5 += 8;
      if (!--v6)
      {
        v7 = 105;
        goto LABEL_7;
      }
    }

    v7 = *(v5 - 1);
LABEL_7:
    result->_kmlCode = v7;
  }

  return result;
}

- (KmlCancelMessage)initWithKmlErrorCode:(unsigned int)code
{
  v8.receiver = self;
  v8.super_class = KmlCancelMessage;
  result = [(KmlCancelMessage *)&v8 init];
  if (result)
  {
    result->_kmlCode = code;
    v5 = &byte_248C29D6C;
    v6 = 4;
    while (*(v5 - 1) != code)
    {
      v5 += 8;
      if (!--v6)
      {
        v7 = -1;
        goto LABEL_7;
      }
    }

    v7 = *v5;
LABEL_7:
    result->_cccCode = v7;
  }

  return result;
}

- (id)asData
{
  v2 = [KmlTlv TLVWithTag:109 unsignedChar:self->_cccCode];
  asData = [v2 asData];
  v4 = [KmlTlv TLVWithTag:32620 value:asData];

  asData2 = [v4 asData];

  return asData2;
}

@end