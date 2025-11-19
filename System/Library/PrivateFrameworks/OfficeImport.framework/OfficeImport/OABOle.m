@interface OABOle
+ (BOOL)isBiffCLSID:(id)a3;
+ (BOOL)isChart:(id)a3;
+ (BOOL)readSharedInfoFor:(id)a3 fromStorage:(SsrwOOStorage *)a4;
+ (id)read4ByteFromStream:(SsrwOOStream *)a3;
+ (id)readAnsiStringFromStream:(SsrwOOStream *)a3;
+ (id)readCLSIDFromStream:(SsrwOOStream *)a3;
+ (id)readCompressedFromStream:(SsrwOOStream *)a3 compressedSize:(unsigned int)a4 uncompressedSize:(unsigned int)a5 cancel:(id)a6;
+ (id)readFromData:(id)a3 cancel:(id)a4;
+ (id)readFromFileName:(id)a3 cancel:(id)a4;
+ (id)readFromParentStorage:(SsrwOOStorage *)a3 storageName:(id)a4 cancel:(id)a5;
+ (id)readFromStream:(SsrwOOStream *)a3 size:(unsigned int)a4 cancel:(id)a5;
+ (id)readUnicodeStringFromStream:(SsrwOOStream *)a3;
@end

@implementation OABOle

+ (id)read4ByteFromStream:(SsrwOOStream *)a3
{
  if ((*(a3->var0 + 22))(a3, a2) >= 4)
  {
    for (i = 3; i != -1; --i)
    {
      v7[i] = (*(a3->var0 + 8))(a3);
    }

    v7[4] = 0;
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)readAnsiStringFromStream:(SsrwOOStream *)a3
{
  if ((*(a3->var0 + 22))(a3, a2) < 4)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = (*(a3->var0 + 13))(a3);
  if (v4)
  {
    if ((*(a3->var0 + 22))(a3) >= v4)
    {
      operator new[]();
    }

    goto LABEL_4;
  }

  v5 = &stru_286EE1130;
LABEL_7:

  return v5;
}

+ (id)readCLSIDFromStream:(SsrwOOStream *)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  if ((*(a3->var0 + 22))(a3, a2) >= 0x10)
  {
    LODWORD(v8[0]) = (*(a3->var0 + 13))(a3);
    WORD2(v8[0]) = (*(a3->var0 + 10))(a3);
    HIWORD(v8[0]) = (*(a3->var0 + 10))(a3);
    for (i = 8; i != 16; ++i)
    {
      *(v8 + i) = (*(a3->var0 + 8))(a3);
    }

    v5 = [a1 stringForCLSID:{v8[0], v8[1]}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isBiffCLSID:(id)a3
{
  v3 = a3;
  v4 = +[OABOle isBiffCLSID:]::biffClassIds;
  if (!+[OABOle isBiffCLSID:]::biffClassIds)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"00020820-0000-0000-C000-000000000046", @"00020803-0000-0000-C000-000000000046", @"00020821-0000-0000-C000-000000000046", @"00020801-0000-0000-C000-000000000046", 0}];
    v6 = +[OABOle isBiffCLSID:]::biffClassIds;
    +[OABOle isBiffCLSID:]::biffClassIds = v5;

    v4 = +[OABOle isBiffCLSID:]::biffClassIds;
  }

  v7 = [v4 containsObject:v3];

  return v7;
}

+ (BOOL)isChart:(id)a3
{
  v4 = [a3 CLSID];
  if (v4)
  {
    v5 = [a1 isBiffCLSID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readUnicodeStringFromStream:(SsrwOOStream *)a3
{
  if ((*(a3->var0 + 22))(a3, a2) < 4)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = (*(a3->var0 + 13))(a3);
  if (v4)
  {
    if ((*(a3->var0 + 22))(a3) >= v4)
    {
      operator new[]();
    }

    goto LABEL_4;
  }

  v5 = &stru_286EE1130;
LABEL_7:

  return v5;
}

+ (BOOL)readSharedInfoFor:(id)a3 fromStorage:(SsrwOOStorage *)a4
{
  v5 = a3;
  if (v5 && SsrwOOStorage::getChildType(a4, +[OABOle readSharedInfoFor:fromStorage:]::compObjStreamName) == 2)
  {
    SsrwOOStorage::openStream(a4, +[OABOle readSharedInfoFor:fromStorage:]::compObjStreamName);
  }

  return 0;
}

+ (id)readFromFileName:(id)a3 cancel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(OADOle);
  SsrwOORootStorage::SsrwOORootStorage(v18);
  SsrwOORootStorage::open(v18, [(NSString *)v6 fileSystemRepresentation], 0);
  LOBYTE(a1) = [a1 readSharedInfoFor:v8 fromStorage:v18];
  SsrwOORootStorage::close(v18, 0);
  SsrwOORootStorage::~SsrwOORootStorage(v18);
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [[EBReader alloc] initWithCancelDelegate:v7];
  [(OCDReader *)v9 setFileName:v6];
  if (![(EBReader *)v9 start])
  {

LABEL_9:
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    [v16 removeItemAtPath:v6 error:0];

    v13 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  LODWORD(v18[0]) = 0;
  if ([(OCBReader *)v10 retainDecryptorWithErrorCode:v18])
  {
    v11 = [(OCDEncryptedReader *)v10 decryptor];
    v12 = [v11 isReadProtectedUsingDefaultPassphrase];

    if ((v12 & 1) == 0)
    {

      TCRemoveFileSecurely(v6);
      v14 = 0;
      v15 = v10;
      goto LABEL_11;
    }
  }

  v13 = [(EBReader *)v10 read];

  if (!v13)
  {
    goto LABEL_9;
  }

  [(OADOle *)v8 setObject:v13];
LABEL_10:
  v15 = v8;
  v10 = v13;
  v14 = v15;
LABEL_11:

  return v14;
}

+ (id)readFromParentStorage:(SsrwOOStorage *)a3 storageName:(id)a4 cancel:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 UTF8String];
  if (v9)
  {
    SsrwOOStorage::openStorage(a3, v9);
  }

  free(0);
  v10 = 0;

  return v10;
}

+ (id)readFromData:(id)a3 cancel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] >> 32)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = objc_alloc_init(OADOle);
  SsrwOORootStorage::SsrwOORootStorage(v19);
  SsrwOORootStorage::openInBuf(v19, &v18, [v6 length]);
  v10 = [a1 readSharedInfoFor:v9 fromStorage:v19];
  SsrwOORootStorage::close(v19, 0);
  SsrwOORootStorage::~SsrwOORootStorage(v19);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = [[EBReader alloc] initWithCancelDelegate:v7];
  [(OCDReader *)v11 setData:v6];
  if (![(EBReader *)v11 start])
  {

    goto LABEL_11;
  }

  v12 = v11;
  v19[0] = 0;
  if (!-[OCBReader retainDecryptorWithErrorCode:](v12, "retainDecryptorWithErrorCode:", v19) || (-[OCDEncryptedReader decryptor](v12, "decryptor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isReadProtectedUsingDefaultPassphrase], v13, (v14 & 1) != 0))
  {
    v15 = [(EBReader *)v12 read];

    if (v15)
    {
      [(OADOle *)v9 setObject:v15];
LABEL_12:
      v16 = v9;
      v12 = v15;
      v8 = v16;
      goto LABEL_13;
    }

LABEL_11:

    v15 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  v16 = v12;
LABEL_13:

LABEL_14:

  return v8;
}

+ (id)readCompressedFromStream:(SsrwOOStream *)a3 compressedSize:(unsigned int)a4 uncompressedSize:(unsigned int)a5 cancel:(id)a6
{
  v10 = a6;
  if (a4 >= 0x4000)
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = a4;
  }

  v29 = v11;
  v12 = malloc_type_malloc(v11, 0x9AD330A3uLL);
  if (v12)
  {
    if (a5 >= 0x4000)
    {
      v13 = 0x4000;
    }

    else
    {
      v13 = a5;
    }

    v14 = malloc_type_malloc(v13, 0xA2661725uLL);
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a5];
      v27 = a1;
      memset(&strm, 0, sizeof(strm));
      v16 = inflateInit_(&strm, "1.2.12", 112);
      strm.avail_in = 0;
      strm.next_out = v14;
      strm.avail_out = v13;
      if (!v16)
      {
        v17 = a4;
        do
        {
          if (!strm.avail_in)
          {
            v18 = v29;
            if (v17 - strm.total_in < v29)
            {
              v29 = v17 - LODWORD(strm.total_in);
              v18 = v17 - LODWORD(strm.total_in);
            }

            if (!v18)
            {
              break;
            }

            (*(a3->var0 + 7))(a3, v12, &v29);
            strm.next_in = v12;
            strm.avail_in = v29;
            if (!v29)
            {
              break;
            }
          }

          v19 = inflate(&strm, 0);
          v20 = (v13 - strm.avail_out);
          if (v20 >= 1)
          {
            v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v14 length:v20 freeWhenDone:0];
            [v15 appendData:v21];
          }

          strm.next_out = v14;
          strm.avail_out = v13;
        }

        while (!v19);
      }

      v22 = 1;
      v23 = inflateEnd(&strm);
      a1 = v27;
    }

    else
    {
      v22 = 0;
      v15 = 0;
      v23 = 0;
    }
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v23 = 0;
    v14 = 0;
  }

  if (v12)
  {
    free(v12);
  }

  if (v14)
  {
    free(v14);
  }

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == 1)
  {
    v25 = [a1 readFromData:v15 cancel:v10];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)readFromStream:(SsrwOOStream *)a3 size:(unsigned int)a4 cancel:(id)a5
{
  v8 = a5;
  v9 = malloc_type_malloc(a4, 0xA08413B1uLL);
  v13 = a4;
  (*(a3->var0 + 7))(a3, v9, &v13);
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v9 length:a4 freeWhenDone:1];
  v11 = [a1 readFromData:v10 cancel:v8];

  return v11;
}

@end