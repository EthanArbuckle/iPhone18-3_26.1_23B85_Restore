@interface WBXMLData
- (WBXMLData)init;
- (id)dataExpectCompleteData:(BOOL)data;
- (void)_applyCurrentCodePage;
- (void)appendByteArrayData:(id)data;
- (void)appendData:(id)data;
- (void)appendEmptyTag:(unsigned __int8)tag;
- (void)appendInt:(int)int;
- (void)appendString:(id)string;
- (void)closeProspectiveTag:(unsigned __int8)tag;
- (void)closeTag:(unsigned __int8)tag;
- (void)openTag:(unsigned __int8)tag;
- (void)renderProspectiveTags;
- (void)switchToCodePage:(unsigned __int8)page;
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

- (void)appendString:(id)string
{
  v7 = 3;
  data = self->_data;
  stringCopy = string;
  [(NSMutableData *)data appendBytes:&v7 length:1];
  uTF8String = [stringCopy UTF8String];

  [(NSMutableData *)self->_data appendBytes:uTF8String length:strlen(uTF8String) + 1];
}

- (void)appendData:(id)data
{
  v7 = 3;
  data = self->_data;
  dataCopy = data;
  [(NSMutableData *)data appendBytes:&v7 length:1];
  [(NSMutableData *)self->_data appendData:dataCopy];
  v6 = 0;
  [dataCopy getBytes:&v6 range:{objc_msgSend(dataCopy, "length") - 1, 1}];

  if (v6)
  {
    v6 = 0;
    [(NSMutableData *)self->_data appendBytes:&v6 length:1];
  }
}

- (void)appendInt:(int)int
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0xCuLL, "%d", int);
  v5 = 3;
  [(NSMutableData *)self->_data appendBytes:&v5 length:1];
  [(NSMutableData *)self->_data appendBytes:__str length:strlen(__str) + 1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)appendByteArrayData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v10 = -61;
  [(NSMutableData *)self->_data appendBytes:&v10 length:1];
  v5 = [dataCopy length];
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
  [(NSMutableData *)self->_data appendData:dataCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)renderProspectiveTags
{
  mutableBytes = [(NSMutableData *)self->_stateStack mutableBytes];
  v4 = [(NSMutableData *)self->_stateStack length];
  if ([(NSMutableData *)self->_stateStack length])
  {
    v5 = &mutableBytes[v4 - 1];
    v6 = *v5;
    if (v6 != 195 && (v6 & 0x40) != 0)
    {
      while (v5 >= mutableBytes)
      {
        v8 = *v5;
        if (v8 == 195 || (v8 & 0x40) == 0)
        {
          break;
        }

        --v5;
      }

      for (i = (v5 + 1); i < &mutableBytes[[(NSMutableData *)self->_stateStack length]]; ++i)
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

- (void)switchToCodePage:(unsigned __int8)page
{
  if (self->_currentCodePage != page)
  {
    [(WBXMLData *)self renderProspectiveTags];
    self->_haveAppliedCurrentCodePage = 0;
    self->_currentCodePage = page;
  }
}

- (void)closeProspectiveTag:(unsigned __int8)tag
{
  tagCopy = tag;
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableData *)self->_stateStack length])
  {
    v11 = 0;
    [(NSMutableData *)self->_stateStack getBytes:&v11 range:[(NSMutableData *)self->_stateStack length]- 1, 1];
    v5 = v11 != 195 && (v11 & 0x40) != 0;
    if ((v11 & 0x3F) != tagCopy)
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 67109376;
        v13 = tagCopy;
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
      v13 = tagCopy;
      _os_log_impl(&dword_24A0AC000, v8, v9, "closing a WBXML tag %d when we don't have a tag open", buf, 8u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)appendEmptyTag:(unsigned __int8)tag
{
  [(WBXMLData *)self renderProspectiveTags];
  [(WBXMLData *)self _applyCurrentCodePage];
  tagCopy = tag;
  [(NSMutableData *)self->_data appendBytes:&tagCopy length:1];
}

- (void)openTag:(unsigned __int8)tag
{
  tagCopy = tag;
  tagCopy2 = tag;
  [(WBXMLData *)self renderProspectiveTags];
  [(WBXMLData *)self _applyCurrentCodePage];
  if (tagCopy != 195 && (tagCopy & 0x40) != 0)
  {
    [(WBXMLData *)tagCopy openTag:a2, self];
  }

  v6 = tagCopy | 0x40;
  [(NSMutableData *)self->_data appendBytes:&v6 length:1];
  [(NSMutableData *)self->_stateStack appendBytes:&tagCopy2 length:1];
}

- (void)closeTag:(unsigned __int8)tag
{
  tagCopy = tag;
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableData *)self->_stateStack length])
  {
    v10 = 0;
    [(NSMutableData *)self->_stateStack getBytes:&v10 range:[(NSMutableData *)self->_stateStack length]- 1, 1];
    if (v10 != tagCopy)
    {
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 67109376;
        v12 = tagCopy;
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
      v12 = tagCopy;
      _os_log_impl(&dword_24A0AC000, v7, v8, "closing a WBXML tag %d when we don't have a tag open", buf, 8u);
    }
  }

  buf[0] = 1;
  [(NSMutableData *)self->_data appendBytes:buf length:1];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)dataExpectCompleteData:(BOOL)data
{
  if (data && [(NSMutableData *)self->_stateStack length])
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