@interface MFQuotedPrintableDecoder
- (int64_t)appendData:(id)data;
- (void)done;
@end

@implementation MFQuotedPrintableDecoder

- (int64_t)appendData:(id)data
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, data);
  v31 = *MEMORY[0x1E69E9840];
  v23 = v4;
  v24 = [v23 length];
  memset(__b, 170, sizeof(__b));
  if (*(v3 + 33) == 1)
  {
    v29.receiver = v3;
    v29.super_class = MFQuotedPrintableDecoder;
    [(MFBaseFilterDataConsumer *)&v29 appendData:v23];
    goto LABEL_40;
  }

  if (v24)
  {
    bytes = [v23 bytes];
    if (v24 >= 1)
    {
      v6 = bytes;
      v7 = 0;
      v8 = bytes + v24;
      v9 = bytes + v24 - 1;
      while (1)
      {
        if (*(v3 + 33) == 1)
        {
          if (v7)
          {
            v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v7 freeWhenDone:0];
            v28.receiver = v3;
            v28.super_class = MFQuotedPrintableDecoder;
            [(MFBaseFilterDataConsumer *)&v28 appendData:v10];
          }

          v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v8 - v6 freeWhenDone:0];
          v27.receiver = v3;
          v27.super_class = MFQuotedPrintableDecoder;
          [(MFBaseFilterDataConsumer *)&v27 appendData:v11];
          v6 = v9;
          goto LABEL_36;
        }

        v12 = *(v3 + 24);
        v13 = *v6;
        if (!v12)
        {
          if (v13 == 61)
          {
            *(v3 + 24) = 2;
            *(v3 + 17) = 0;
            goto LABEL_34;
          }

          if (v13 == 10 && (*(v3 + 32) & 1) == 0)
          {
            __b[v7++] = 13;
            LOBYTE(v13) = *v6;
          }

          __b[v7] = v13;
LABEL_29:
          ++v7;
          goto LABEL_34;
        }

        if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x10000) != 0)
        {
          *(v3 + 24) = v12 - 1;
          v18 = *v6;
          if (v12 != 1)
          {
            *(v3 + 17) = v18;
            goto LABEL_34;
          }

          v19 = __maskrune(v18, 0xFuLL);
          __b[v7] = v19 | (16 * __maskrune(*(v3 + 17), 0xFuLL));
          goto LABEL_29;
        }

        if (v12 == 2 && v13 == 10)
        {
          *(v3 + 24) = 0;
          goto LABEL_34;
        }

        if (v12 == 2)
        {
          break;
        }

        v17 = v7 + 1;
        __b[v7] = 61;
        if (v12 == 1)
        {
          v15 = *(v3 + 17);
          v16 = 2;
LABEL_32:
          __b[v17] = v15;
          v17 = v7 + v16;
        }

        __b[v17] = *v6;
        v7 = v17 + 1;
        *(v3 + 24) = 0;
        *(v3 + 33) = 1;
LABEL_34:
        if (v7 >= 0x3FFE)
        {
          v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v7 freeWhenDone:0];
          v26.receiver = v3;
          v26.super_class = MFQuotedPrintableDecoder;
          [(MFBaseFilterDataConsumer *)&v26 appendData:v11];
LABEL_36:

          v7 = 0;
        }

        if (++v6 >= v8)
        {
          if (v7)
          {
            v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v7 freeWhenDone:0];
            v25.receiver = v3;
            v25.super_class = MFQuotedPrintableDecoder;
            [(MFBaseFilterDataConsumer *)&v25 appendData:v20];
          }

          goto LABEL_40;
        }
      }

      if (v13 == 32)
      {
        goto LABEL_34;
      }

      v15 = 61;
      v16 = 1;
      v17 = v7;
      goto LABEL_32;
    }
  }

LABEL_40:

  v21 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)done
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *&self->_lastEncoded;
  if (v2)
  {
    memset(&v8[1], 170, 0x3FFFuLL);
    v8[0] = 61;
    if (v2 == 1)
    {
      v8[1] = *(&self->super._serialAppend + 1);
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *&self->_lastEncoded = 0;
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 length:v4 freeWhenDone:0];
    v7.receiver = self;
    v7.super_class = MFQuotedPrintableDecoder;
    [(MFBaseFilterDataConsumer *)&v7 appendData:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end