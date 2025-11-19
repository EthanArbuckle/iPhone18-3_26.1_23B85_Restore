@interface MFBase64Encoder
- (MFBase64Encoder)initWithConsumers:(id)a3;
- (int64_t)appendData:(id)a3;
- (void)done;
- (void)setAllowSlash:(BOOL)a3;
@end

@implementation MFBase64Encoder

- (MFBase64Encoder)initWithConsumers:(id)a3
{
  v4.receiver = self;
  v4.super_class = MFBase64Encoder;
  result = [(MFBaseFilterDataConsumer *)&v4 initWithConsumers:a3];
  if (result)
  {
    result->_padChar = 61;
    result->_table = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  }

  return result;
}

- (int64_t)appendData:(id)a3
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, a3);
  v42 = *MEMORY[0x1E69E9840];
  v5 = v4;
  v38 = v5;
  v6 = [v38 bytes];
  v7 = [v5 length];
  memset(__b, 170, sizeof(__b));
  v8 = *(v3 + 32);
  if (v8)
  {
    if (3 - v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 3 - v8;
    }

    memmove((v3 + 40 + v8), v6, v9);
    v10 = *(v3 + 32) + v9;
    *(v3 + 32) = v10;
    v11 = v7 - v9;
    if (v10 == 3)
    {
      v12 = *(v3 + 40);
      v13 = *(v3 + 41);
      v14 = *(v3 + 24);
      v15 = *(v3 + 56);
      v16 = *(v3 + 42);
      __b[0] = *(v14 + (v12 >> 2));
      __b[1] = *(v14 + (((v13 | (v12 << 8)) >> 4) & 0x3F));
      __b[2] = *(v14 + (((v16 | (v13 << 8)) >> 6) & 0x3F));
      __b[3] = *(v14 + (v16 & 0x3F));
      if (v15 && (v17 = *(v3 + 48) + 4, *(v3 + 48) = v17, v18 = v17 - v15, v17 >= v15))
      {
        *(v3 + 48) = v18;
        memmove(&__b[v18 + 1], &__b[v18], v17 - v15);
        __b[-v18 + 4] = 10;
        v19 = 5;
      }

      else
      {
        v19 = 4;
      }

      *(v3 + 32) = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v11 = v7;
  }

  v37 = v11;
  if (v11)
  {
    v35 = v6;
    v20 = &v6[v9];
    v36 = 3 * (v11 / 3);
    for (i = &v20[v36]; v20 < i; v20 += 3)
    {
      v22 = &__b[v19];
      v23 = *v20;
      v24 = *(v3 + 24);
      v25 = v20[1];
      v26 = *(v3 + 56);
      v27 = v20[2];
      *v22 = *(v24 + (v23 >> 2));
      v22[1] = *(v24 + (((v25 | (v23 << 8)) >> 4) & 0x3F));
      v22[2] = *(v24 + (((v27 | (v25 << 8)) >> 6) & 0x3F));
      v22[3] = *(v24 + (v27 & 0x3F));
      if (v26)
      {
        v28 = *(v3 + 48) + 4;
        *(v3 + 48) = v28;
        v29 = v28 - v26;
        if (v28 >= v26)
        {
          *(v3 + 48) = v29;
          memmove(&v22[v29 + 1], &v22[v29], v28 - v26);
          v22[-v29 + 4] = 10;
          v30 = 5;
        }

        else
        {
          v30 = 4;
        }

        v5 = v38;
      }

      else
      {
        v30 = 4;
      }

      v19 += v30;
      if (v19 >> 3 >= 0xFFF)
      {
        v31 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v19 freeWhenDone:0];
        v40.receiver = v3;
        v40.super_class = MFBase64Encoder;
        [(MFBaseFilterDataConsumer *)&v40 appendData:v31];

        v19 = 0;
      }
    }

    *(v3 + 32) = v37 - v36;
    if (v37 != v36)
    {
      *(v3 + 40) = 0;
      *(v3 + 42) = 0;
      memmove((v3 + 40), &v35[v37 + v9 - *(v3 + 32)], *(v3 + 32));
    }
  }

  if (v19)
  {
    v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v19 freeWhenDone:0];
    v39.receiver = v3;
    v39.super_class = MFBase64Encoder;
    [(MFBaseFilterDataConsumer *)&v39 appendData:v32];
  }

  v33 = *MEMORY[0x1E69E9840];
  return v37;
}

- (void)done
{
  v24[2] = *MEMORY[0x1E69E9840];
  memset(v24, 170, 11);
  left = self->_left;
  if (left)
  {
    if (left == 1)
    {
      table = self->_table;
      v9 = v24 + 1;
      LOBYTE(v24[0]) = table[self->_leftovers[0] >> 2];
      if (self->_lineBreak && (v10 = self->_line + 1, self->_line = v10, !(v10 % self->_lineBreak)))
      {
        v9 = v24 + 2;
        BYTE1(v24[0]) = 10;
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      *v9 = table[((self->_leftovers[1] | (self->_leftovers[0] << 8)) >> 4) & 0x3F];
    }

    else if (left == 2)
    {
      v4 = self->_table;
      LOBYTE(v24[0]) = v4[self->_leftovers[0] >> 2];
      lineBreak = self->_lineBreak;
      if (lineBreak && (v6 = self->_line + 1, self->_line = v6, !(v6 % self->_lineBreak)))
      {
        BYTE1(v24[0]) = 10;
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v12 = v7 + 1;
      *(v24 | v7) = v4[((self->_leftovers[1] | (self->_leftovers[0] << 8)) >> 4) & 0x3F];
      if (lineBreak)
      {
        v13 = self->_line + 1;
        self->_line = v13;
        if (!(v13 % self->_lineBreak))
        {
          v14 = (v24 | v12);
          v12 = v7 + 2;
          *v14 = 10;
        }
      }

      v15 = v4[((self->_leftovers[2] | (self->_leftovers[1] << 8)) >> 6) & 0x3F];
      v11 = v12 + 1;
      *(v24 | v12) = v15;
    }

    else
    {
      v11 = 0;
    }

    if (self->_padChar && (v16 = self->_left - 3, self->_left != 3))
    {
      v18 = self->_lineBreak;
      do
      {
        v17 = v11 + 1;
        *(v24 + v11) = self->_padChar;
        if (v18)
        {
          v19 = self->_line + 1;
          self->_line = v19;
          v18 = self->_lineBreak;
          if (!(v19 % v18))
          {
            *(v24 + v17) = 10;
            v17 = v11 + 2;
          }
        }

        v11 = v17;
        v20 = __CFADD__(v16++, 1);
      }

      while (!v20);
    }

    else
    {
      v17 = v11;
    }

    if (v17)
    {
      if (!self->_lineBreak || *(v24 + v17 - 1) == 10 || (*(v24 + v17) = 10, v20 = __CFADD__(v17, 1), ++v17, !v20))
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v24 length:v17 freeWhenDone:0];
        v23.receiver = self;
        v23.super_class = MFBase64Encoder;
        [(MFBaseFilterDataConsumer *)&v23 appendData:v21];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setAllowSlash:(BOOL)a3
{
  v3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,";
  if (a3)
  {
    v3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  }

  self->_table = v3;
}

@end