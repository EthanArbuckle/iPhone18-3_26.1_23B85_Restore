@interface MFProgressiveMimeParser
- (MFProgressiveMimeParser)initWithBodyData:(id)data topLevelHeaders:(id)headers headersToPreserve:(id)preserve;
- (id)_currentBoundary;
- (void)_continueParsing;
- (void)_continueParsingBody;
- (void)_continueParsingHeaders;
- (void)_continueParsingStartOfPart;
- (void)_initializeTopLevelPartWithHeaders:(id)headers;
- (void)_reportError:(id)error;
- (void)noteDataLengthChanged:(unsigned int)changed;
- (void)setDelegate:(id)delegate;
@end

@implementation MFProgressiveMimeParser

- (MFProgressiveMimeParser)initWithBodyData:(id)data topLevelHeaders:(id)headers headersToPreserve:(id)preserve
{
  dataCopy = data;
  headersCopy = headers;
  preserveCopy = preserve;
  v15.receiver = self;
  v15.super_class = MFProgressiveMimeParser;
  v12 = [(MFProgressiveMimeParser *)&v15 init];
  v13 = v12;
  if (v12)
  {
    if (dataCopy && headersCopy)
    {
      objc_storeStrong(&v12->_data, data);
      v13->_lastLength = [dataCopy length];
      objc_storeStrong(&v13->_preserveHeaders, preserve);
      [(MFProgressiveMimeParser *)v13 _initializeTopLevelPartWithHeaders:headersCopy];
    }

    else
    {

      v13 = 0;
    }
  }

  return v13;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_delegate != delegateCopy)
  {
    v13 = delegateCopy;
    objc_storeStrong(&self->_delegate, delegate);
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
    delegateCopy = v13;
  }
}

- (void)noteDataLengthChanged:(unsigned int)changed
{
  if (self->_lastLength < changed)
  {
    changedCopy = changed;
    if ([(NSMutableData *)self->_data length]>= changed)
    {
      self->_lastLength = changedCopy;

      [(MFProgressiveMimeParser *)self _continueParsing];
    }

    else
    {

      [(MFProgressiveMimeParser *)self _reportError:@"Data is not as long as reported"];
    }
  }
}

- (void)_initializeTopLevelPartWithHeaders:(id)headers
{
  v26 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v5 = objc_alloc_init(MEMORY[0x1E69AD720]);
  topLevelPart = self->_topLevelPart;
  self->_topLevelPart = v5;

  v7 = [headersCopy objectForKey:*MEMORY[0x1E699B0D0]];
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

  v11 = [headersCopy objectForKey:*MEMORY[0x1E699B0C8]];

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

        v17 = [headersCopy objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];

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
  bytes = [(NSMutableData *)self->_data bytes];
  cursor = self->_cursor;
  v5 = bytes + cursor;
  v6 = *(bytes + cursor);
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

      parentPart = [(MFMimePart *)self->_currentPart parentPart];
      currentPart = self->_currentPart;
      self->_currentPart = parentPart;

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
      bytes = [(NSMutableData *)self->_data bytes];
      v5 = self->_cursor - [(MFMimePart *)self->_currentPart range];
      v6 = *MEMORY[0x1E699B0D0];
      data = self->_data;
      if (MFMimeDataGetRangeOfHeader())
      {
        if (*(bytes + v33 + v34 - 1) == 13)
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
        if (*(bytes + v33 + v34 - 1) == 13)
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
        if (*(bytes + v33 + v34 - 1) == 13)
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
              if (*(bytes + v33 + v34 - 1) == 13)
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
      type = [(MFMimePart *)self->_currentPart type];
      v25 = [type isEqualToString:@"multipart"];

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
      null = [MEMORY[0x1E695DFB0] null];
      v12 = self->_currentBoundary;
      self->_currentBoundary = null;
    }

    currentBoundary = self->_currentBoundary;
  }

  return currentBoundary;
}

- (void)_continueParsingBody
{
  _currentBoundary = [(MFProgressiveMimeParser *)self _currentBoundary];
  cursor = self->_cursor;
  lastLength = self->_lastLength;
  bytes = [(NSMutableData *)self->_data bytes];
  if (!_currentBoundary)
  {
    _currentBoundary = 0;
LABEL_23:
    range = [(MFMimePart *)self->_currentPart range];
    [(MFMimePart *)self->_currentPart setRange:range, self->_cursor - range];
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

  null = [MEMORY[0x1E695DFB0] null];
  v7 = [_currentBoundary isEqual:null];
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
    bytes2 = [_currentBoundary bytes];
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes2 + 2 length:objc_msgSend(_currentBoundary freeWhenDone:{"length") - 2, 0}];

    _currentBoundary = v12;
  }

  v13 = [_currentBoundary length];
  if (v8 < v13 || (v15 = [(NSMutableData *)self->_data mf_rangeOfData:_currentBoundary options:0 range:cursor, lastLength - cursor], v15 == 0x7FFFFFFFFFFFFFFFLL))
  {
    bytes3 = [_currentBoundary bytes];
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
      v17 = bytes3;
      v18 = bytes + lastLength;
      v19 = (bytes + lastLength - v8);
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
  range2 = [(MFMimePart *)self->_currentPart range];
  if (v15)
  {
    v25 = v15 - range2;
  }

  else
  {
    v25 = 0;
  }

  [(MFMimePart *)self->_currentPart setRange:range2, v25];
  if ((*&self->_parserFlags & 0x74) == 0x34)
  {
    [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
  }

  type = [(MFMimePart *)self->_currentPart type];
  v27 = [type isEqualToString:@"multipart"];

  if ((v27 & 1) == 0)
  {
    if ((*&self->_parserFlags & 2) != 0)
    {
      [self->_delegate progressiveMimeParser:self finishedMimePart:self->_currentPart];
    }

    parentPart = [(MFMimePart *)self->_currentPart parentPart];
    currentPart = self->_currentPart;
    self->_currentPart = parentPart;
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

- (void)_reportError:(id)error
{
  errorCopy = error;
  if ((*&self->_parserFlags & 8) != 0)
  {
    delegate = self->_delegate;
    v7 = errorCopy;
    v6 = [MFError errorWithDomain:@"ProgressiveMimeParseErrorDomain" code:-1 localizedDescription:errorCopy];
    [delegate progressiveMimeParser:self failedWithError:v6];

    errorCopy = v7;
  }
}

@end