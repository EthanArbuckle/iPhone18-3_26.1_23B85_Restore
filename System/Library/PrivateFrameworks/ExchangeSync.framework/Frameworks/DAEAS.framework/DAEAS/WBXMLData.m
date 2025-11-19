@interface WBXMLData
- (WBXMLData)init;
- (id)dataExpectCompleteData:(BOOL)a3;
- (void)_applyCurrentCodePage;
- (void)appendByteArrayData:(id)a3;
- (void)appendData:(id)a3;
- (void)appendEmptyTag:(unsigned __int8)a3;
- (void)appendInt:(int)a3;
- (void)appendString:(id)a3;
- (void)closeProspectiveTag:(unsigned __int8)a3;
- (void)closeTag:(unsigned __int8)a3;
- (void)openTag:(unsigned __int8)a3;
- (void)renderProspectiveTags;
- (void)switchToCodePage:(unsigned __int8)a3;
@end

@implementation WBXMLData

- (void)_applyCurrentCodePage
{
  if (!self->_haveAppliedCurrentCodePage)
  {
    self->_haveAppliedCurrentCodePage = 1;
    v2[0] = 0;
    v2[1] = self->_currentCodePage;
    [(NSMutableData *)self->_data appendBytes:v2 length:2];
  }
}

- (void)appendString:(id)a3
{
  v7 = 3;
  data = self->_data;
  v5 = a3;
  [(NSMutableData *)data appendBytes:&v7 length:1];
  v6 = [v5 UTF8String];

  [(NSMutableData *)self->_data appendBytes:v6 length:strlen(v6) + 1];
}

- (void)appendData:(id)a3
{
  v7 = 3;
  data = self->_data;
  v5 = a3;
  [(NSMutableData *)data appendBytes:&v7 length:1];
  [(NSMutableData *)self->_data appendData:v5];
  v6 = 0;
  [v5 getBytes:&v6 range:{objc_msgSend(v5, "length") - 1, 1}];

  if (v6)
  {
    v6 = 0;
    [(NSMutableData *)self->_data appendBytes:&v6 length:1];
  }
}

- (void)appendInt:(int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0xCuLL, "%d", a3);
  v5 = 3;
  [(NSMutableData *)self->_data appendBytes:&v5 length:1];
  [(NSMutableData *)self->_data appendBytes:__str length:strlen(__str) + 1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)appendByteArrayData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = -61;
  [(NSMutableData *)self->_data appendBytes:&v10 length:1];
  v5 = [v4 length];
  if (HIDWORD(v5))
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 134217984;
      v12 = v5;
      _os_log_impl(&dword_24A0AC000, v6, v7, "Bad things gunna happen.  Trying to send a wbxml data blob of length %lu inline", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initForLengthTokenOfLength:v5];
  [(NSMutableData *)self->_data appendData:v8];
  [(NSMutableData *)self->_data appendData:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)renderProspectiveTags
{
  v3 = [(NSMutableData *)self->_stateStack mutableBytes];
  v4 = [(NSMutableData *)self->_stateStack length];
  if ([(NSMutableData *)self->_stateStack length])
  {
    v5 = &v3[v4 - 1];
    v6 = *v5;
    if (v6 != 195 && (v6 & 0x40) != 0)
    {
      while (v5 >= v3)
      {
        v8 = *v5;
        if (v8 == 195 || (v8 & 0x40) == 0)
        {
          break;
        }

        --v5;
      }

      for (i = (v5 + 1); i < &v3[[(NSMutableData *)self->_stateStack length]]; ++i)
      {
        [(WBXMLData *)self _applyCurrentCodePage];
        v11 = *i;
        *i &= 0x3Fu;
        v12 = v11 & 0x3F | 0x40;
        [(NSMutableData *)self->_data appendBytes:&v12 length:1];
      }
    }
  }
}

- (void)switchToCodePage:(unsigned __int8)a3
{
  if (self->_currentCodePage != a3)
  {
    [(WBXMLData *)self renderProspectiveTags];
    self->_haveAppliedCurrentCodePage = 0;
    self->_currentCodePage = a3;
  }
}

- (void)closeProspectiveTag:(unsigned __int8)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableData *)self->_stateStack length])
  {
    v11 = 0;
    [(NSMutableData *)self->_stateStack getBytes:&v11 range:[(NSMutableData *)self->_stateStack length]- 1, 1];
    v5 = v11 != 195 && (v11 & 0x40) != 0;
    if ((v11 & 0x3F) != v3)
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 67109376;
        v13 = v3;
        v14 = 1024;
        v15 = v11 & 0x3F;
        _os_log_impl(&dword_24A0AC000, v6, v7, "closing a WBXML tag %d when our stack's top tag is %d", buf, 0xEu);
      }
    }

    [(NSMutableData *)self->_stateStack setLength:[(NSMutableData *)self->_stateStack length]- 1];
    if (!v5)
    {
      buf[0] = 1;
      [(NSMutableData *)self->_data appendBytes:buf length:1];
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 67109120;
      v13 = v3;
      _os_log_impl(&dword_24A0AC000, v8, v9, "closing a WBXML tag %d when we don't have a tag open", buf, 8u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)appendEmptyTag:(unsigned __int8)a3
{
  [(WBXMLData *)self renderProspectiveTags];
  [(WBXMLData *)self _applyCurrentCodePage];
  v5 = a3;
  [(NSMutableData *)self->_data appendBytes:&v5 length:1];
}

- (void)openTag:(unsigned __int8)a3
{
  v3 = a3;
  v7 = a3;
  [(WBXMLData *)self renderProspectiveTags];
  [(WBXMLData *)self _applyCurrentCodePage];
  if (v3 != 195 && (v3 & 0x40) != 0)
  {
    [(WBXMLData *)v3 openTag:a2, self];
  }

  v6 = v3 | 0x40;
  [(NSMutableData *)self->_data appendBytes:&v6 length:1];
  [(NSMutableData *)self->_stateStack appendBytes:&v7 length:1];
}

- (void)closeTag:(unsigned __int8)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableData *)self->_stateStack length])
  {
    v10 = 0;
    [(NSMutableData *)self->_stateStack getBytes:&v10 range:[(NSMutableData *)self->_stateStack length]- 1, 1];
    if (v10 != v3)
    {
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 67109376;
        v12 = v3;
        v13 = 1024;
        v14 = v10;
        _os_log_impl(&dword_24A0AC000, v5, v6, "closing a WBXML tag %d when our stack's top tag is %d", buf, 0xEu);
      }
    }

    [(NSMutableData *)self->_stateStack setLength:[(NSMutableData *)self->_stateStack length]- 1];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 67109120;
      v12 = v3;
      _os_log_impl(&dword_24A0AC000, v7, v8, "closing a WBXML tag %d when we don't have a tag open", buf, 8u);
    }
  }

  buf[0] = 1;
  [(NSMutableData *)self->_data appendBytes:buf length:1];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)dataExpectCompleteData:(BOOL)a3
{
  if (a3 && [(NSMutableData *)self->_stateStack length])
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      *v8 = 0;
      _os_log_impl(&dword_24A0AC000, v4, v5, "accessing raw bytes of incomplete WBXML", v8, 2u);
    }
  }

  data = self->_data;

  return data;
}

- (WBXMLData)init
{
  v9.receiver = self;
  v9.super_class = WBXMLData;
  v2 = [(WBXMLData *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    data = v2->_data;
    v2->_data = v3;

    v8 = 6947075;
    [(NSMutableData *)v2->_data appendBytes:&v8 length:4];
    v2->_currentCodePage = 0;
    v5 = objc_opt_new();
    stateStack = v2->_stateStack;
    v2->_stateStack = v5;

    v2->_haveAppliedCurrentCodePage = 1;
  }

  return v2;
}

- (void)openTag:(uint64_t)a3 .cold.1(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"WBXMLData.m" lineNumber:151 description:{@"tag %d must not use reserved content bit", a1}];
}

@end