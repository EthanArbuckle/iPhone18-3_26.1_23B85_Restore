@interface MIBOMWrapper
+ (BOOL)_countFilesAndBytesInArchiveAtURL:(id)l withBOMCopier:(_BOMCopier *)copier totalFiles:(unint64_t *)files totalUncompressedBytes:(unint64_t *)bytes error:(id *)error;
+ (BOOL)extractZipArchiveAtURL:(id)l toURL:(id)rL withError:(id *)error;
+ (BOOL)extractZipArchiveAtURL:(id)l toURL:(id)rL withError:(id *)error extractionProgressBlock:(id)block;
@end

@implementation MIBOMWrapper

+ (BOOL)_countFilesAndBytesInArchiveAtURL:(id)l withBOMCopier:(_BOMCopier *)copier totalFiles:(unint64_t *)files totalUncompressedBytes:(unint64_t *)bytes error:(id *)error
{
  [l fileSystemRepresentation];
  v8 = BOMCopierCountFilesInArchive();
  v10 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
    v13 = *MEMORY[0x1E69A8D00];
    if (v12)
    {
      strerror(v12);
    }
  }

  else
  {
    if (!v8)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v13 = *MEMORY[0x1E69A8D00];
  }

  v11 = _CreateError("+[MIBOMWrapper _countFilesAndBytesInArchiveAtURL:withBOMCopier:totalFiles:totalUncompressedBytes:error:]", 149, v13, 4, 0, 0, @"Failed to count the files and bytes in archive : %d (%s)", v9, v10);
  if (error && v11)
  {
    v11 = v11;
    *error = v11;
  }

LABEL_10:
  v14 = v11 == 0;

  return v14;
}

+ (BOOL)extractZipArchiveAtURL:(id)l toURL:(id)rL withError:(id *)error
{
  rLCopy = rL;
  lCopy = l;
  LOBYTE(error) = [objc_opt_class() extractZipArchiveAtURL:lCopy toURL:rLCopy withError:error extractionProgressBlock:0];

  return error;
}

+ (BOOL)extractZipArchiveAtURL:(id)l toURL:(id)rL withError:(id *)error extractionProgressBlock:(id)block
{
  lCopy = l;
  rLCopy = rL;
  blockCopy = block;
  v46 = 0u;
  v47 = 0u;
  v12 = objc_opt_new();
  v13 = v12;
  if (error)
  {
    *error = 0;
  }

  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"extractPKZip"];
  v45 = 0;
  BomSys_init();
  BomSys_set_open();
  v15 = BOMCopierNewWithSys();
  if (v15)
  {
    BOMCopierSetFileErrorHandler();
    BOMCopierSetFatalErrorHandler();
    BOMCopierSetFatalFileErrorHandler();
    BOMCopierSetUserData();
    if (blockCopy)
    {
      v43 = 0;
      v44 = 0;
      v42 = 0;
      v16 = [objc_opt_class() _countFilesAndBytesInArchiveAtURL:lCopy withBOMCopier:v15 totalFiles:&v44 totalUncompressedBytes:&v43 error:&v42];
      v17 = v42;
      v18 = v43;
      if (v43)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          path = [lCopy path];
          v40 = v44;
          v41 = v43;
          path2 = path;
          MOLogWrite();

          v18 = v43;
        }

        v21 = MEMORY[0x1BFB56710](blockCopy);
        *(&v46 + 1) = v18;
        *&v47 = 0;
        v22 = MEMORY[0x1BFB56710]();
        v23 = *(&v47 + 1);
        *(&v47 + 1) = v22;

        BOMCopierSetCopyFileFinishedHandler();
        BOMCopierSetCopyFileUpdateHandler();
      }

      else
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          path2 = [lCopy path];
          v40 = v17;
          MOLogWrite();
        }

        blockCopy[2](blockCopy, -1.0);
      }
    }

    v27 = lCopy;
    v28 = rLCopy;
    v29 = v13;
    if (!v29)
    {
      v29 = objc_opt_new();
    }

    v30 = v29;
    MIAssertHighResourceUsage();
    [v27 fileSystemRepresentation];
    [v28 fileSystemRepresentation];
    v31 = BOMCopierCopyWithOptions();
    MIClearResourceAssertion();

    if (v31 || BYTE4(v46) == 1)
    {
      v32 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v46 userInfo:{0, path2, v40, v41}];
      v24 = _CreateAndLogError("+[MIBOMWrapper extractZipArchiveAtURL:toURL:withError:extractionProgressBlock:]", 223, *MEMORY[0x1E69A8D00], 5, v32, &unk_1F3DE99A0, @"Could not extract archive", v33, v39);

      v26 = 0;
    }

    else
    {
      v24 = 0;
      v26 = 1;
    }

    v34 = *(&v47 + 1);
    *(&v47 + 1) = 0;

    BOMCopierFree();
  }

  else
  {
    v24 = _CreateAndLogError("+[MIBOMWrapper extractZipArchiveAtURL:toURL:withError:extractionProgressBlock:]", 189, *MEMORY[0x1E69A8D00], 5, 0, 0, @"Failed to create copier", v14, path2);
    v25 = *(&v47 + 1);
    *(&v47 + 1) = 0;

    v26 = 0;
  }

  if (v45)
  {
    BomSys_free();
  }

  if (error)
  {
    v35 = v26;
  }

  else
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    v36 = v24;
    *error = v24;
  }

  return v26;
}

@end