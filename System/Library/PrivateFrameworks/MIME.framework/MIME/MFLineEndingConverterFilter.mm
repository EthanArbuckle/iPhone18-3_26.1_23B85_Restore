@interface MFLineEndingConverterFilter
- (int64_t)appendData:(id)a3;
- (void)done;
@end

@implementation MFLineEndingConverterFilter

- (int64_t)appendData:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(__b, 170, sizeof(__b));
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = &v5[v6];
  v8 = &off_1E8455000;
  if (v6 < 1)
  {
    v17 = 0;
    v12 = v5;
    if (v5)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(&self->super._serialAppend + 1);
  v12 = v5;
  while (1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

    v13 = memchr(v5, 13, v7 - v5);
    if (!v13)
    {
      break;
    }

    v5 = v13 + 1;
LABEL_6:
    if (v5 >= v7)
    {
      goto LABEL_23;
    }

    if (*v5 == 10)
    {
      if ((v11 & 1) == 0)
      {
        v14 = &v5[~v12 + v9];
        if (v14 <= 0x4000)
        {
          memmove(&__b[v9], v12, &v5[~v12]);
          v16 = v10;
          v12 = v5;
          v9 = v14;
        }

        else
        {
          if (v9)
          {
            v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v9 freeWhenDone:0];

            v26.receiver = self;
            v26.super_class = MFLineEndingConverterFilter;
            v10 = v15;
            [(MFBaseFilterDataConsumer *)&v26 appendData:v15];
          }

          v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v12 length:&v5[~v12] freeWhenDone:0];

          v25.receiver = self;
          v25.super_class = MFLineEndingConverterFilter;
          [(MFBaseFilterDataConsumer *)&v25 appendData:v16];
          v9 = 0;
          v12 = v5;
        }

        goto LABEL_17;
      }
    }

    else if (v11)
    {
      if (v9)
      {
        __assert_rtn("[MFLineEndingConverterFilter appendData:]", "MFDataConsumer.m", 407, "used == 0");
      }

      __b[0] = 13;
      v16 = v10;
      v9 = 1;
      goto LABEL_17;
    }

    v16 = v10;
LABEL_17:
    v11 = 0;
    *(&self->super._serialAppend + 1) = 0;
    v10 = v16;
    if (v12 >= v7)
    {
      goto LABEL_24;
    }
  }

  v5 = 0;
LABEL_23:
  v16 = v10;
LABEL_24:
  if (v9)
  {
    v8 = &off_1E8455000;
    v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v9 freeWhenDone:0];

    v24.receiver = self;
    v24.super_class = MFLineEndingConverterFilter;
    v17 = v18;
    [(MFBaseFilterDataConsumer *)&v24 appendData:v18];
    if (v5)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v17 = v16;
    v8 = &off_1E8455000;
    if (v5)
    {
LABEL_26:
      *(&self->super._serialAppend + 1) = 1;
      --v7;
    }
  }

LABEL_27:
  if (v12 && v12 < v7)
  {
    v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v12 length:&v7[-v12] freeWhenDone:0];

    v23.receiver = self;
    v23.super_class = MFLineEndingConverterFilter;
    v17 = v19;
    objc_msgSendSuper2(&v23, v8[470], v19);
  }

  v20 = [v4 length];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)done
{
  if (*(&self->super._serialAppend + 1))
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&kCarriageReturn length:1 freeWhenDone:0];
    v4.receiver = self;
    v4.super_class = MFLineEndingConverterFilter;
    [(MFBaseFilterDataConsumer *)&v4 appendData:v3];
    *(&self->super._serialAppend + 1) = 0;
  }
}

@end