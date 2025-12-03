@interface CUKeyValueStoreWriter
- (BOOL)addKey:(id)key value:(id)value error:(id *)error;
- (BOOL)finishAndReturnError:(id *)error;
- (BOOL)startAtPath:(id)path error:(id *)error;
- (CUKeyValueStoreWriter)init;
- (void)cancel;
- (void)dealloc;
@end

@implementation CUKeyValueStoreWriter

- (BOOL)addKey:(id)key value:(id)value error:(id *)error
{
  v83 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  if (self->_cdbStarted)
  {
    v78 = 0;
    v77 = 0;
    bytes = [keyCopy encodedBytesAndReturnLength:&v78 error:&v77];
    v17 = v77;
    v24 = v17;
    if (bytes)
    {
      v25 = 0;
      v26 = v78;
      goto LABEL_4;
    }

    if (v17)
    {
      if (error)
      {
LABEL_11:
        v28 = v24;
        v25 = 0;
        v27 = 0;
        *error = v24;
        goto LABEL_50;
      }
    }

    else
    {
      v76 = 0;
      v25 = [keyCopy encodedDataAndReturnError:&v76];
      v39 = v76;
      v24 = v39;
      if (v25)
      {
        bytes = [v25 bytes];
        v26 = [v25 length];
        v78 = v26;
LABEL_4:
        if (HIDWORD(v26))
        {
          if (error)
          {
            NSErrorWithOSStatusF(4294960591, "Key too big %zu vs %u", v18, v19, v20, v21, v22, v23, v26);
            *error = v27 = 0;
LABEL_50:

            goto LABEL_51;
          }

LABEL_35:
          v27 = 0;
          goto LABEL_50;
        }

        v75 = 0;
        v74 = v24;
        bytes2 = [valueCopy encodedBytesAndReturnLength:&v75 error:&v74];
        v30 = v74;

        if (bytes2)
        {
          v37 = 0;
          v38 = v75;
LABEL_15:
          if (!HIDWORD(v38))
          {
            v72 = v37;
            v47 = v78;
            __src = v78;
            v80 = v38;
            v81 = BYTE2(v38);
            v82 = BYTE3(v38);
            addend = buffer_putalign(&self->_cdb.b, &__src, 8uLL);
            if (addend != -1)
            {
              addend = buffer_putalign(&self->_cdb.b, bytes, v47);
              if (addend != -1)
              {
                addend = buffer_putalign(&self->_cdb.b, bytes2, v38);
                if (addend != -1)
                {
                  if (v47)
                  {
                    v55 = 5381;
                    v56 = v47;
                    do
                    {
                      v57 = *bytes++;
                      v55 = (33 * v55) ^ v57;
                      --v56;
                    }

                    while (v56);
                    p_cdb = &self->_cdb;
                    v59 = v47;
                    v60 = v38;
                  }

                  else
                  {
                    p_cdb = &self->_cdb;
                    v59 = 0;
                    v60 = v38;
                    v55 = 5381;
                  }

                  addend = cdb_make_addend(p_cdb, v59, v60, v55);
                }
              }
            }

            v27 = addend == 0;
            v37 = v72;
            if (!error || !addend)
            {
              goto LABEL_49;
            }

            NSErrorWithOSStatusF(addend, "Add failed", v49, v50, v51, v52, v53, v54, v71);
            goto LABEL_48;
          }

          if (error)
          {
            NSErrorWithOSStatusF(4294960591, "Value too big %zu vs %u", v31, v32, v33, v34, v35, v36, v38);
LABEL_48:
            *error = v27 = 0;
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        if (v30)
        {
          if (error)
          {
LABEL_22:
            v46 = v30;
            v37 = 0;
            v27 = 0;
            *error = v30;
LABEL_49:

            v24 = v30;
            goto LABEL_50;
          }
        }

        else
        {
          v73 = 0;
          v37 = [valueCopy encodedDataAndReturnError:&v73];
          v62 = v73;
          v30 = v62;
          if (v37)
          {
            bytes2 = [v37 bytes];
            v38 = [v37 length];
            v75 = v38;
            goto LABEL_15;
          }

          if (error)
          {
            if (v62)
            {
              goto LABEL_22;
            }

            v69 = NSErrorWithOSStatusF(4294960534, "Encode value failed", v63, v64, v65, v66, v67, v68, v71);
            *error = v69;
          }
        }

        v37 = 0;
LABEL_42:
        v27 = 0;
        goto LABEL_49;
      }

      if (error)
      {
        if (v39)
        {
          goto LABEL_11;
        }

        v61 = NSErrorWithOSStatusF(4294960534, "Encode key failed", v40, v41, v42, v43, v44, v45, v71);
        *error = v61;
      }
    }

    v25 = 0;
    goto LABEL_35;
  }

  if (error)
  {
    NSErrorWithOSStatusF(4294960551, "Not started", v9, v10, v11, v12, v13, v14, v71);
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_51:

  return v27;
}

- (void)cancel
{
  v3 = &self->_cdb.start[254];
  if (self->_cdbStarted)
  {
    split = self->_cdb.split;
    if (split)
    {
      free(split);
      self->_cdb.split = 0;
    }

    head = self->_cdb.head;
    if (head)
    {
      do
      {
        v6 = *(head + 1000);
        free(head);
        self->_cdb.head = v6;
        head = v6;
      }

      while (v6);
    }

    *(v3 + 80) = 0;
  }

  tempFD = self->_tempFD;
  if ((tempFD & 0x80000000) == 0)
  {
    if (close(tempFD) && *__error())
    {
      __error();
    }

    self->_tempFD = -1;
  }

  v9 = *(v3 + 100);
  v8 = (v3 + 25);
  if (v9)
  {
    unlink(v8);
    *v8 = 0;
  }
}

- (BOOL)finishAndReturnError:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = &self->_cdb.start[254];
  if (self->_cdbStarted)
  {
    count = self->_cdb.count;
    bzero(self->_cdb.count, 0x400uLL);
    for (i = self->_cdb.head; i; i = *(i + 1000))
    {
      v8 = *(i + 2002);
      if (v8)
      {
        v9 = i + 8 * v8 - 8;
        do
        {
          v10 = *v9;
          v9 -= 8;
          ++count[v10];
          --v8;
        }

        while (v8);
      }
    }

    v11 = 0;
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    do
    {
      v12 = vmaxq_u32(vaddq_s32(*&count[v11], *&count[v11]), v12);
      v11 += 4;
    }

    while (v11 != 256);
    v13 = self->_cdb.numentries + vmaxvq_u32(v12);
    if (v13 >> 29)
    {
LABEL_10:
      v14 = 0;
      *__error() = 12;
    }

    else
    {
      v15 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
      self->_cdb.split = v15;
      if (v15)
      {
        v16 = 0;
        self->_cdb.hash = (v15 + 8 * self->_cdb.numentries);
        start = self->_cdb.start;
        v18 = 256;
        v19 = self->_cdb.count;
        do
        {
          v16 += *v19;
          v19[256] = v16;
          ++v19;
          --v18;
        }

        while (v18);
        for (j = self->_cdb.head; j; j = *(j + 1000))
        {
          v21 = *(j + 2002);
          if (v21)
          {
            v22 = j + 8 * v21 - 8;
            do
            {
              v23 = *v22;
              v24 = start[v23] - 1;
              start[v23] = v24;
              v25 = *v22;
              v22 -= 8;
              *(self->_cdb.split + v24) = v25;
              --v21;
            }

            while (v21);
          }
        }

        for (k = 0; k != 256; ++k)
        {
          v27 = count[k];
          v28 = &self->_cdb.final[8 * k];
          *v28 = self->_cdb.pos;
          v29 = 2 * v27;
          *(v28 + 2) = __PAIR16__((2 * v27) >> 24, 2 * v27);
          v28[6] = v27 >> 15;
          v28[7] = v27 >> 23;
          if (2 * v27)
          {
            bzero(self->_cdb.hash, 16 * v27);
          }

          if (v27)
          {
            v30 = 0;
            v31 = (self->_cdb.split + 8 * start[k]);
            do
            {
              v32 = (*v31 >> 8) % v29;
              while (1)
              {
                v33 = self->_cdb.hash + 8 * v32;
                if (!*(v33 + 1))
                {
                  break;
                }

                if (v32 + 1 == v29)
                {
                  v32 = 0;
                }

                else
                {
                  ++v32;
                }
              }

              v34 = *v31;
              v31 += 2;
              *v33 = v34;
              ++v30;
            }

            while (v30 != v27);
            v35 = 0;
            v36 = 8 * v29;
            do
            {
              v37 = (self->_cdb.hash + v35);
              v38 = *v37;
              LODWORD(v37) = v37[1];
              __src[0] = v38;
              __src[1] = v37;
              if (buffer_putalign(&self->_cdb.b, __src, 8uLL) == -1)
              {
                goto LABEL_39;
              }

              pos = self->_cdb.pos;
              if (pos >= 0xFFFFFFF8)
              {
                goto LABEL_10;
              }

              self->_cdb.pos = pos + 8;
              v35 += 8;
            }

            while (v36 != v35);
          }
        }

        if (buffer_flush(&self->_cdb.b) != -1 && lseek(self->_cdb.fd, 0, 0) != -1)
        {
          v14 = buffer_putflush(&self->_cdb.b, self->_cdb.final) == 0;
          goto LABEL_40;
        }
      }

LABEL_39:
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_40:
  tempFD = self->_tempFD;
  if ((tempFD & 0x80000000) == 0)
  {
    if (close(tempFD) && *__error())
    {
      __error();
    }

    self->_tempFD = -1;
  }

  if (v14)
  {
    uTF8String = [(NSString *)self->_finalPath UTF8String];
    if (uTF8String && (v44 = *(v5 + 100), v43 = (v5 + 25), v44))
    {
      rename(v43, uTF8String, v42);
      if (!v45)
      {
        goto LABEL_51;
      }

      if (!*__error())
      {
        v46 = 4294960596;
        goto LABEL_54;
      }

      v46 = *__error();
      if (!v46)
      {
LABEL_51:
        v46 = 0;
        v43->__pn_.__r_.__value_.__s.__data_[0] = 0;
      }
    }

    else
    {
      v46 = 4294960592;
    }
  }

  else
  {
    v46 = 0xFFFFFFFFLL;
  }

LABEL_54:
  [(CUKeyValueStoreWriter *)self cancel];
  if (error && v46)
  {
    if (*__error())
    {
      v53 = *__error();
    }

    else
    {
      v53 = 4294960596;
    }

    *error = NSErrorWithOSStatusF(v53, "Finish failed: %#m", v47, v48, v49, v50, v51, v52, v46);
  }

  return v46 == 0;
}

- (BOOL)startAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [pathCopy copy];
  finalPath = self->_finalPath;
  self->_finalPath = v7;

  v9 = [pathCopy stringByAppendingString:@".XXXXXX"];

  if (([v9 getCString:self->_tempPath maxLength:1024 encoding:4] & 1) == 0)
  {
    if (error)
    {
      v20 = "No file path";
      v21 = 4294960592;
LABEL_22:
      NSErrorWithOSStatusF(v21, v20, v10, v11, v12, v13, v14, v15, tempPath);
LABEL_23:
      *error = v19 = 0;
      goto LABEL_24;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_24;
  }

  v16 = mkstemp(self->_tempPath);
  if (v16 < 0)
  {
    if (error)
    {
      if (*__error())
      {
        v28 = *__error();
      }

      else
      {
        v28 = 4294960596;
      }

      NSErrorWithOSStatusF(v28, "Open temp file failed '%s'", v22, v23, v24, v25, v26, v27, self->_tempPath);
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v17 = v16;
  tempFD = self->_tempFD;
  if ((tempFD & 0x80000000) == 0 && close(tempFD) && *__error())
  {
    __error();
  }

  self->_tempFD = v17;
  self->_cdb.head = 0;
  self->_cdb.numentries = 0;
  *&self->_cdb.split = 0u;
  self->_cdb.fd = v17;
  self->_cdb.pos = 2048;
  self->_cdb.b.x = self->_cdb.bspace;
  self->_cdb.b.fd = v17;
  self->_cdb.b.op = MEMORY[0x1E69E9AD8];
  *&self->_cdb.b.p = 0x200000000000;
  if (lseek(v17, 2048, 0) == -1)
  {
    [(CUKeyValueStoreWriter *)self cancel];
    if (error)
    {
      if (*__error())
      {
        v21 = *__error();
      }

      else
      {
        v21 = 4294960596;
      }

      tempPath = self->_tempPath;
      v20 = "Open failed '%s'";
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v19 = 1;
  self->_cdbStarted = 1;
LABEL_24:

  return v19;
}

- (void)dealloc
{
  [(CUKeyValueStoreWriter *)self cancel];
  v3.receiver = self;
  v3.super_class = CUKeyValueStoreWriter;
  [(CUKeyValueStoreWriter *)&v3 dealloc];
}

- (CUKeyValueStoreWriter)init
{
  v6.receiver = self;
  v6.super_class = CUKeyValueStoreWriter;
  v2 = [(CUKeyValueStoreWriter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_tempFD = -1;
    v4 = v2;
  }

  return v3;
}

@end