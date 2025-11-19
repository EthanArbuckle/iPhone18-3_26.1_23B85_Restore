@interface MFProgressiveMimeParser
- (MFProgressiveMimeParser)initWithBodyData:(id)a3 topLevelHeaders:(id)a4 headersToPreserve:(id)a5;
- (id)_currentBoundary;
- (void)_continueParsing;
- (void)_continueParsingBody;
- (void)_continueParsingHeaders;
- (void)_continueParsingStartOfPart;
- (void)_initializeTopLevelPartWithHeaders:(id)a3;
- (void)_reportError:(id)a3;
- (void)noteDataLengthChanged:(unsigned int)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MFProgressiveMimeParser

- (MFProgressiveMimeParser)initWithBodyData:(id)a3 topLevelHeaders:(id)a4 headersToPreserve:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFProgressiveMimeParser;
  v12 = [(MFProgressiveMimeParser *)&v15 init];
  v13 = v12;
  if (v12)
  {
    if (v9 && v10)
    {
      objc_storeStrong(&v12->_data, a3);
      v13->_lastLength = [v9 length];
      objc_storeStrong(&v13->_preserveHeaders, a5);
      [(MFProgressiveMimeParser *)v13 _initializeTopLevelPartWithHeaders:v10];
    }

    else
    {

      v13 = 0;
    }
  }

  return v13;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  if (self->_delegate != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_delegate, a3);
    delegate = self->_delegate;
    *&self->_parserFlags = *&self->_parserFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    v7 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xFD | v8;
    v9 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xFB | v10;
    v11 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xF7 | v12;
    v5 = v13;
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

- (void)_initializeTopLevelPartWithHeaders:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69AD720]);
  topLevelPart = self->_topLevelPart;
  self->_topLevelPart = v5;

  v7 = [v4 objectForKey:*MEMORY[0x1E699B0D0]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 cStringUsingEncoding:4];
    v10 = self->_topLevelPart;
    strlen(v9);
    if ((MFMimePartParseContentTypeHeader() & 1) == 0)
    {
      [(MFProgressiveMimeParser *)self _reportError:@"Unable to parse Content-type header in top-level part"];
    }
  }

  else
  {
    [(MFProgressiveMimeParser *)self _reportError:@"No Content-type header found in top-level part"];
  }

  v11 = [v4 objectForKey:*MEMORY[0x1E699B0C8]];

  if (v11)
  {
    [(MFMimePart *)self->_topLevelPart setContentTransferEncoding:v11];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_preserveHeaders;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = *v22;
    v15 = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v4 objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];

        v15 = v17;
        if (v17)
        {
          v18 = self->_topLevelPart;
          MFMimePartSetValueForPreservedHeader();
        }
      }

      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = v11;
  }

  [(MFMimePart *)self->_topLevelPart setRange:0, 0];
  objc_storeStrong(&self->_currentPart, self->_topLevelPart);
  parserFlags = self->_parserFlags;
  *&self->_parserFlags = parserFlags & 0x8F | 0x30;
  if (parserFlags)
  {
    [self->_delegate progressiveMimeParser:self beganMimePart:self->_topLevelPart];
  }

  v20 = *MEMORY[0x1E69E9840];
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
        currentBoundary = self->_currentBoundary;
        self->_currentBoundary = 0;
      }

      v8 = [(MFMimePart *)self->_currentPart parentPart];
      currentPart = self->_currentPart;
      self->_currentPart = v8;

      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x40;
      return;
    }
  }

  obj = objc_alloc_init(MEMORY[0x1E69AD720]);
  [obj setRange:{self->_cursor, 0}];
  [(MFMimePart *)self->_currentPart addSubpart:obj];
  objc_storeStrong(&self->_currentPart, obj);
  parserFlags = self->_parserFlags;
  *&self->_parserFlags = parserFlags & 0x8F | 0x20;
  if (parserFlags)
  {
    [self->_delegate progressiveMimeParser:self beganMimePart:self->_currentPart];
  }
}

- (void)_continueParsingHeaders
{
  v36 = *MEMORY[0x1E69E9840];
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
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v28 = [(NSMutableData *)self->_data bytes];
      v5 = self->_cursor - [(MFMimePart *)self->_currentPart range];
      v6 = *MEMORY[0x1E699B0D0];
      data = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(v28 + v33 + v34 - 1) == 13)
        {
          --v34;
        }

        currentPart = self->_currentPart;
        MFMimePartParseContentTypeHeader();
      }

      v9 = *MEMORY[0x1E699B0A8];
      v10 = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(v28 + v33 + v34 - 1) == 13)
        {
          --v34;
        }

        v11 = self->_currentPart;
        MFMimePartParseContentDispositionHeader();
      }

      v12 = *MEMORY[0x1E699B0C8];
      v13 = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(v28 + v33 + v34 - 1) == 13)
        {
          --v34;
        }

        v14 = MFMimeDataCreateStringFromHeaderBytes();
        [(MFMimePart *)self->_currentPart setContentTransferEncoding:v14];
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = self->_preserveHeaders;
      v16 = 0;
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v17)
      {
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * v19);
            v21 = self->_data;
            if (MFMimeDataGetRangeOfHeader())
            {
              if (*(v28 + v33 + v34 - 1) == 13)
              {
                --v34;
              }

              v22 = MFMimeDataCreateStringFromHeaderBytes();

              v23 = self->_currentPart;
              v16 = v22;
              MFMimePartSetValueForPreservedHeader();
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v17);
      }

      [(MFMimePart *)self->_currentPart setRange:self->_cursor, 0];
      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x30;
      v24 = [(MFMimePart *)self->_currentPart type];
      v25 = [v24 isEqualToString:@"multipart"];

      if (v25)
      {
        currentBoundary = self->_currentBoundary;
        self->_currentBoundary = 0;
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_currentBoundary
{
  currentBoundary = self->_currentBoundary;
  if (!currentBoundary)
  {
    v4 = self->_currentPart;
    v5 = [(MFMimePart *)v4 bodyParameterForKey:@"boundary"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 cStringUsingEncoding:1];
      v8 = strlen(v7);
      v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v8 + 4];
      [(NSData *)v9 mf_appendCString:"\r\n--"];
      [(NSData *)v9 appendBytes:v7 length:v8];
      v10 = self->_currentBoundary;
      self->_currentBoundary = v9;
    }

    if (!self->_currentBoundary)
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      v12 = self->_currentBoundary;
      self->_currentBoundary = v11;
    }

    currentBoundary = self->_currentBoundary;
  }

  return currentBoundary;
}

- (void)_continueParsingBody
{
  v30 = [(MFProgressiveMimeParser *)self _currentBoundary];
  cursor = self->_cursor;
  lastLength = self->_lastLength;
  v5 = [(NSMutableData *)self->_data bytes];
  if (!v30)
  {
    v30 = 0;
LABEL_23:
    v21 = [(MFMimePart *)self->_currentPart range];
    [(MFMimePart *)self->_currentPart setRange:v21, self->_cursor - v21];
    parserFlags = self->_parserFlags;
    if ((parserFlags & 0x70) == 0x30)
    {
      *&self->_parserFlags = parserFlags & 0x8F | 0x40;
      if ((parserFlags & 4) != 0)
      {
        [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
      }
    }

    goto LABEL_36;
  }

  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v30 isEqual:v6];
  v8 = lastLength - cursor;

  if (cursor)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 >= 3;
  }

  v10 = !v9;
  if ((v10 | v7))
  {
    if (v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = [v30 bytes];
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v11 + 2 length:objc_msgSend(v30 freeWhenDone:{"length") - 2, 0}];

    v30 = v12;
  }

  v13 = [v30 length];
  if (v8 < v13 || (v15 = [(NSMutableData *)self->_data mf_rangeOfData:v30 options:0 range:cursor, lastLength - cursor], v15 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v16 = [v30 bytes];
    if (v13 < v8)
    {
      v8 = v13;
    }

    if (v8 <= 0)
    {
LABEL_21:
      v20 = self->_lastLength;
    }

    else
    {
      v17 = v16;
      v18 = v5 + lastLength;
      v19 = (v5 + lastLength - v8);
      while (memcmp(v19, v17, v8))
      {
        ++v19;
        --v8;
        if (v19 >= v18)
        {
          goto LABEL_21;
        }
      }

      v20 = self->_lastLength - v8;
    }

    self->_cursor = v20;
    goto LABEL_23;
  }

  v23 = v14;
  v24 = [(MFMimePart *)self->_currentPart range];
  if (v15)
  {
    v25 = v15 - v24;
  }

  else
  {
    v25 = 0;
  }

  [(MFMimePart *)self->_currentPart setRange:v24, v25];
  if ((*&self->_parserFlags & 0x74) == 0x34)
  {
    [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
  }

  v26 = [(MFMimePart *)self->_currentPart type];
  v27 = [v26 isEqualToString:@"multipart"];

  if ((v27 & 1) == 0)
  {
    if ((*&self->_parserFlags & 2) != 0)
    {
      [self->_delegate progressiveMimeParser:self finishedMimePart:self->_currentPart];
    }

    v28 = [(MFMimePart *)self->_currentPart parentPart];
    currentPart = self->_currentPart;
    self->_currentPart = v28;
  }

  self->_cursor = v15 + v23;
  *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x10;
LABEL_36:
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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parser state (%d)", (*&self->_parserFlags >> 4) & 7];
        [(MFProgressiveMimeParser *)self _reportError:v5];
      }
    }

    while (self->_cursor < self->_lastLength);
  }
}

- (void)_reportError:(id)a3
{
  v4 = a3;
  if ((*&self->_parserFlags & 8) != 0)
  {
    delegate = self->_delegate;
    v7 = v4;
    v6 = [MFError errorWithDomain:@"ProgressiveMimeParseErrorDomain" code:-1 localizedDescription:v4];
    [delegate progressiveMimeParser:self failedWithError:v6];

    v4 = v7;
  }
}

@end