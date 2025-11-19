@interface MFProgressiveMimeParser
- (MFProgressiveMimeParser)initWithBodyData:(id)a3 topLevelHeaders:(id)a4 headersToPreserve:(id)a5;
- (id)_currentBoundary;
- (id)data;
- (void)_continueParsing;
- (void)_continueParsingBody;
- (void)_continueParsingHeaders;
- (void)_continueParsingStartOfPart;
- (void)_initializeTopLevelPartWithHeaders:(id)a3;
- (void)_reportError:(id)a3;
- (void)dealloc;
- (void)noteDataLengthChanged:(unsigned int)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MFProgressiveMimeParser

- (MFProgressiveMimeParser)initWithBodyData:(id)a3 topLevelHeaders:(id)a4 headersToPreserve:(id)a5
{
  v11.receiver = self;
  v11.super_class = MFProgressiveMimeParser;
  v8 = [(MFProgressiveMimeParser *)&v11 init];
  v9 = v8;
  if (v8)
  {
    if (a3 && a4)
    {
      v8->_data = a3;
      v9->_lastLength = [a3 length];
      v9->_preserveHeaders = a5;
      [(MFProgressiveMimeParser *)v9 _initializeTopLevelPartWithHeaders:a4];
    }

    else
    {
      [(MFProgressiveMimeParser *)v8 dealloc];
      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFProgressiveMimeParser;
  [(MFProgressiveMimeParser *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    *&self->_parserFlags = *&self->_parserFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xFD | v5;
    v6 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xFB | v7;
    v8 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xF7 | v9;
  }
}

- (void)noteDataLengthChanged:(unsigned int)a3
{
  if (self->_lastLength < a3)
  {
    v4 = a3;
    if ([(NSMutableData *)self->_data length]>= a3)
    {
      self->_lastLength = v4;

      [(MFProgressiveMimeParser *)self _continueParsing];
    }

    else
    {

      [(MFProgressiveMimeParser *)self _reportError:@"Data is not as long as reported"];
    }
  }
}

- (id)data
{
  v2 = self->_data;

  return v2;
}

- (void)_initializeTopLevelPartWithHeaders:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  self->_topLevelPart = objc_alloc_init(MEMORY[0x277D24F68]);
  v5 = [a3 objectForKey:*MEMORY[0x277D06F88]];
  if (v5)
  {
    v6 = [v5 cStringUsingEncoding:4];
    topLevelPart = self->_topLevelPart;
    strlen(v6);
    if (MFMimePartParseContentTypeHeader())
    {
      goto LABEL_6;
    }

    v8 = @"Unable to parse Content-type header in top-level part";
  }

  else
  {
    v8 = @"No Content-type header found in top-level part";
  }

  [(MFProgressiveMimeParser *)self _reportError:v8];
LABEL_6:
  v9 = [a3 objectForKey:*MEMORY[0x277D06F80]];
  if (v9)
  {
    [(MFMimePart *)self->_topLevelPart setContentTransferEncoding:v9];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  preserveHeaders = self->_preserveHeaders;
  v11 = [(NSArray *)preserveHeaders countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(preserveHeaders);
        }

        if ([a3 objectForKey:*(*(&v18 + 1) + 8 * i)])
        {
          v15 = self->_topLevelPart;
          MFMimePartSetValueForPreservedHeader();
        }
      }

      v12 = [(NSArray *)preserveHeaders countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(MFMimePart *)self->_topLevelPart setRange:0, 0];
  self->_currentPart = self->_topLevelPart;
  parserFlags = self->_parserFlags;
  *&self->_parserFlags = parserFlags & 0x8F | 0x30;
  if (parserFlags)
  {
    [self->_delegate progressiveMimeParser:self beganMimePart:?];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_continueParsingStartOfPart
{
  v3 = [(NSMutableData *)self->_data bytes];
  cursor = self->_cursor;
  v5 = v3 + cursor;
  v6 = *(v3 + cursor);
  if ((v6 | 0x20) == 0x2D)
  {
    if (cursor - self->_lastLength < 2)
    {
      return;
    }

    if (v6 == 13)
    {
      if (*(v5 + 1) == 10)
      {
        self->_cursor = cursor + 2;
      }
    }

    else if (v6 == 45 && *(v5 + 1) == 45)
    {
      self->_cursor = cursor + 2;
      if ((*&self->_parserFlags & 2) != 0)
      {
        [self->_delegate progressiveMimeParser:self finishedMimePart:self->_currentPart];

        self->_currentBoundary = 0;
      }

      self->_currentPart = [(MFMimePart *)self->_currentPart parentPart];
      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x40;
      return;
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277D24F68]);
  [(MFMimePart *)v7 setRange:self->_cursor, 0];
  [(MFMimePart *)self->_currentPart addSubpart:v7];

  self->_currentPart = v7;
  parserFlags = self->_parserFlags;
  *&self->_parserFlags = parserFlags & 0x8F | 0x20;
  if (parserFlags)
  {
    delegate = self->_delegate;

    [delegate progressiveMimeParser:self beganMimePart:v7];
  }
}

- (void)_continueParsingHeaders
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_lastLength - self->_cursor >= 4)
  {
    v3 = [(NSMutableData *)self->_data mf_rangeOfCString:"\r\n\r\n" options:0 range:?];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_cursor = self->_lastLength;
    }

    else
    {
      self->_cursor = v3 + v4;
      v30 = 0;
      v31 = 0;
      v5 = [(NSMutableData *)self->_data bytes];
      v6 = self->_cursor - [(MFMimePart *)self->_currentPart range];
      v7 = *MEMORY[0x277D06F88];
      data = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(v5 + v30 + v31 - 1) == 13)
        {
          --v31;
        }

        currentPart = self->_currentPart;
        MFMimePartParseContentTypeHeader();
      }

      v10 = *MEMORY[0x277D06F60];
      v11 = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(v5 + v30 + v31 - 1) == 13)
        {
          --v31;
        }

        v12 = self->_currentPart;
        MFMimePartParseContentDispositionHeader();
      }

      v13 = *MEMORY[0x277D06F80];
      v14 = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(v5 + v30 + v31 - 1) == 13)
        {
          --v31;
        }

        StringFromHeaderBytes = MFMimeDataCreateStringFromHeaderBytes();
        [(MFMimePart *)self->_currentPart setContentTransferEncoding:StringFromHeaderBytes];
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      preserveHeaders = self->_preserveHeaders;
      v17 = [(NSArray *)preserveHeaders countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(preserveHeaders);
            }

            v21 = *(*(&v26 + 1) + 8 * i);
            v22 = self->_data;
            if (MFMimeDataGetRangeOfHeader())
            {
              if (*(v5 + v30 + v31 - 1) == 13)
              {
                --v31;
              }

              v23 = MFMimeDataCreateStringFromHeaderBytes();
              v24 = self->_currentPart;
              MFMimePartSetValueForPreservedHeader();
            }
          }

          v18 = [(NSArray *)preserveHeaders countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v18);
      }

      [(MFMimePart *)self->_currentPart setRange:self->_cursor, 0];
      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x30;
      if ([-[MFMimePart type](self->_currentPart "type")])
      {

        self->_currentBoundary = 0;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_currentBoundary
{
  currentBoundary = self->_currentBoundary;
  if (!currentBoundary)
  {
    v4 = [(MFMimePart *)self->_currentPart bodyParameterForKey:@"boundary"];
    if (!v4)
    {
      currentBoundary = self->_currentBoundary;
      if (currentBoundary)
      {
        return currentBoundary;
      }

      goto LABEL_4;
    }

    v5 = [v4 cStringUsingEncoding:1];
    v6 = strlen(v5);
    currentBoundary = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v6 + 4];
    [(NSData *)currentBoundary mf_appendCString:"\r\n--"];
    [(NSData *)currentBoundary appendBytes:v5 length:v6];
    self->_currentBoundary = currentBoundary;
    if (!currentBoundary)
    {
LABEL_4:
      currentBoundary = [MEMORY[0x277CBEB68] null];
      self->_currentBoundary = currentBoundary;
    }
  }

  return currentBoundary;
}

- (void)_continueParsingBody
{
  v29 = [(MFProgressiveMimeParser *)self _currentBoundary];
  cursor = self->_cursor;
  lastLength = self->_lastLength;
  v5 = [(NSMutableData *)self->_data bytes];
  if (!v29)
  {
    v29 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = lastLength - cursor;
  v8 = [v29 isEqual:{objc_msgSend(MEMORY[0x277CBEB68], "null")}];
  if (cursor)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 >= 3;
  }

  v10 = !v9;
  v11 = v10 | v8;
  if ((v10 | v8))
  {
    if ((v8 & 1) == 0)
    {
      v12 = v29;
      goto LABEL_14;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_24;
  }

  v14 = [v29 bytes];
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v14 + 2 length:objc_msgSend(v29 freeWhenDone:{"length") - 2, 0}];
LABEL_14:
  v29 = v12;
  v15 = [v12 length];
  if (v7 >= v15)
  {
    v16 = [(NSMutableData *)self->_data mf_rangeOfData:v29 options:0 range:cursor, lastLength - cursor];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v16;
      v26 = v17;
      v27 = [(MFMimePart *)self->_currentPart range];
      if (v25)
      {
        v28 = v25 - v27;
      }

      else
      {
        v28 = 0;
      }

      [(MFMimePart *)self->_currentPart setRange:v27, v28];
      if ((*&self->_parserFlags & 0x74) == 0x34)
      {
        [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
      }

      if (([-[MFMimePart type](self->_currentPart "type")] & 1) == 0)
      {
        if ((*&self->_parserFlags & 2) != 0)
        {
          [self->_delegate progressiveMimeParser:self finishedMimePart:self->_currentPart];
        }

        self->_currentPart = [(MFMimePart *)self->_currentPart parentPart];
      }

      self->_cursor = v25 + v26;
      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x10;
      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  v13 = v11 ^ 1;
  if (v15 < v7)
  {
    v7 = v15;
  }

  v18 = [v29 bytes];
  if (-v7 < 0)
  {
    v19 = v18;
    v20 = v6 + lastLength;
    v21 = (v6 + lastLength - v7);
    while (memcmp(v21, v19, v7))
    {
      ++v21;
      --v7;
      if (v21 >= v20)
      {
        goto LABEL_22;
      }
    }

    v22 = self->_lastLength - v7;
  }

  else
  {
LABEL_22:
    v22 = self->_lastLength;
  }

  self->_cursor = v22;
LABEL_24:
  v23 = [(MFMimePart *)self->_currentPart range];
  [(MFMimePart *)self->_currentPart setRange:v23, self->_cursor - v23];
  parserFlags = self->_parserFlags;
  if ((parserFlags & 0x70) == 0x30)
  {
    *&self->_parserFlags = parserFlags & 0x8F | 0x40;
    if ((parserFlags & 4) != 0)
    {
      [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
    }
  }

  if (v13)
  {
LABEL_28:
  }
}

- (void)_continueParsing
{
  if (self->_cursor < self->_lastLength)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      v3 = (*&self->_parserFlags >> 4) & 7;
      if (v4 == v3)
      {
        break;
      }

      if ((v3 - 3) < 2)
      {
        [(MFProgressiveMimeParser *)self _continueParsingBody];
      }

      else if (v3 == 2)
      {
        [(MFProgressiveMimeParser *)self _continueParsingHeaders];
      }

      else if (v3 == 1)
      {
        [(MFProgressiveMimeParser *)self _continueParsingStartOfPart];
      }

      else
      {
        -[MFProgressiveMimeParser _reportError:](self, "_reportError:", [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parser state (%d)", (*&self->_parserFlags >> 4) & 7]);
      }
    }

    while (self->_cursor < self->_lastLength);
  }
}

- (void)_reportError:(id)a3
{
  if ((*&self->_parserFlags & 8) != 0)
  {
    delegate = self->_delegate;
    v6 = [MFError errorWithDomain:@"ProgressiveMimeParseErrorDomain" code:-1 localizedDescription:a3];

    [delegate progressiveMimeParser:self failedWithError:v6];
  }
}

@end