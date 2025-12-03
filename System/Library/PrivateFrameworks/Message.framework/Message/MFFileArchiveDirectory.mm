@interface MFFileArchiveDirectory
+ (BOOL)_hasZipSignature:(id)signature;
+ (CentralDirectory)_centralDirectory:(id)directory;
+ (CentralHeader)_centralHeader:(id)header;
+ (_NSRange)_rangeOfCentralDirectory:(int64_t)directory;
+ (_NSRange)rangeOfCentralDirectoryInData:(id)data;
+ (id)_entriesFromCentralDictionary:(CentralDirectory *)dictionary inData:(id)data archiveData:(id)archiveData;
+ (id)archiveDirectory;
- (BOOL)inputWithData:(id)data;
- (BOOL)inputWithURL:(id)l;
- (BOOL)setArchiveEntry:(id)entry;
- (id)description;
- (id)mainEntry;
- (id)scrubbedArchiveEntries;
- (void)_scrubContentDirectory;
@end

@implementation MFFileArchiveDirectory

+ (id)archiveDirectory
{
  v2 = objc_alloc_init(MFFileArchiveDirectory);

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  url = self->_url;
  return [v3 stringWithFormat:@"Class:%@\nURL:%@\nEntries[%@]", v4, url, self->_entries];
}

+ (_NSRange)rangeOfCentralDirectoryInData:(id)data
{
  dataCopy = data;
  if (![dataCopy length])
  {
    v4 = 0;
    goto LABEL_10;
  }

  v4 = memmem([dataCopy bytes], objc_msgSend(dataCopy, "length"), &centralDirectorySignatureString, 4uLL);
  if (!v4)
  {
LABEL_10:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  bytes = [dataCopy bytes];
  v6 = [dataCopy length];
  v7 = v4 - bytes + 22;
  if (v7 <= v6)
  {
    v8 = v4 - bytes;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 <= v6)
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

LABEL_11:

  v9 = v8;
  v10 = v4;
  result.length = v10;
  result.location = v9;
  return result;
}

- (BOOL)inputWithURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_url, l);
  url = self->_url;
  v12 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:url options:3 error:&v12];
  v8 = v12;
  v9 = v12;
  if (v9)
  {
    objc_storeStrong(&self->_error, v8);
  }

  v10 = [(MFFileArchiveDirectory *)self inputWithData:v7];

  return v10;
}

- (BOOL)inputWithData:(id)data
{
  dataCopy = data;
  objc_storeStrong(&self->_contents, data);
  v6 = +[MFFileArchiveDirectory _rangeOfCentralDirectory:](MFFileArchiveDirectory, "_rangeOfCentralDirectory:", [dataCopy length]);
  v8 = [dataCopy subdataWithRange:{v6, v7}];
  v9 = [MFFileArchiveDirectory _centralDirectory:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [dataCopy subdataWithRange:{v9->var6, v9->var5}];
    v12 = [MFFileArchiveDirectory _entriesFromCentralDictionary:v10 inData:v11 archiveData:dataCopy];
    v13 = [v12 mutableCopy];
    entries = self->_entries;
    self->_entries = v13;

    scrubbedEntries = self->_scrubbedEntries;
    self->_scrubbedEntries = 0;
  }

  return v10 != 0;
}

+ (id)_entriesFromCentralDictionary:(CentralDirectory *)dictionary inData:(id)data archiveData:(id)archiveData
{
  dataCopy = data;
  archiveDataCopy = archiveData;
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:dictionary->var3];
  var3 = dictionary->var3;
  if (dictionary->var3)
  {
    v11 = 0;
    v12 = 0;
    var5 = dictionary->var5;
    do
    {
      v14 = [dataCopy subdataWithRange:{v12, var5}];

      v15 = [self _centralHeader:v14];
      if (!v15)
      {
        break;
      }

      v16 = [MFFileArchiveEntry archiveEntryWithCentralHeader:v15 archiveData:archiveDataCopy];
      path = [v16 path];
      [v9 setObject:v16 forKey:path];

      v18 = v15[14] + v15[15] + v15[16] + 46;
      v12 += v18;
      var5 -= v18;

      v11 = v14;
      --var3;
    }

    while (var3);
  }

  return v9;
}

- (id)mainEntry
{
  v39 = *MEMORY[0x1E69E9840];
  p_mainEntry = &self->_mainEntry;
  firstObject = self->_mainEntry;
  allValues = [(MFFileArchiveEntry *)*(p_mainEntry - 2) allValues];
  v6 = allValues;
  if (!firstObject)
  {
    if (![allValues count])
    {
      firstObject = 0;
      goto LABEL_9;
    }

    if ([v6 count] == 1)
    {
      firstObject = [v6 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    [(MFFileArchiveDirectory *)self _scrubContentDirectory];
    allValues2 = [(NSMutableDictionary *)self->_scrubbedEntries allValues];
    v8 = allValues2;
    if (firstObject)
    {
      goto LABEL_8;
    }

    if ([allValues2 count] == 1)
    {
      firstObject = [v8 firstObject];
      if (firstObject)
      {
        goto LABEL_8;
      }
    }

    path = [(NSURL *)self->_url path];
    v12 = [path length];

    if (v12)
    {
      path2 = [(NSURL *)self->_url path];
      lastPathComponent = [path2 lastPathComponent];
      lowercaseString = [lastPathComponent lowercaseString];

      pathExtension = [lowercaseString pathExtension];
      LODWORD(lastPathComponent) = [pathExtension isEqualToString:@"zip"];

      if (lastPathComponent)
      {
        stringByDeletingPathExtension = [lowercaseString stringByDeletingPathExtension];

        lowercaseString = stringByDeletingPathExtension;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __35__MFFileArchiveDirectory_mainEntry__block_invoke;
      v36[3] = &unk_1E7AA5760;
      v18 = lowercaseString;
      v37 = v18;
      v19 = [v8 indexOfObjectPassingTest:v36];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        firstObject = [v8 objectAtIndex:v19];

        if (firstObject)
        {
          goto LABEL_8;
        }
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v21)
    {
      v30 = v8;
      v31 = v6;
      v22 = 0;
      uncompressedSize = 0;
      v24 = *v33;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v26 = 0;
        v27 = v22;
        v22 += v21;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v28 = *(*(&v32 + 1) + 8 * v26);
          if (uncompressedSize < [v28 uncompressedSize])
          {
            uncompressedSize = [v28 uncompressedSize];
            v25 = v27;
          }

          ++v27;
          ++v26;
        }

        while (v21 != v26);
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v21);

      v8 = v30;
      v6 = v31;
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        firstObject = [v20 objectAtIndex:v25];
        if (firstObject)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
    }

    v29 = [v20 indexOfObjectPassingTest:&__block_literal_global_32];
    if (v29 == 0x7FFFFFFFFFFFFFFFLL || ([v20 objectAtIndex:v29], (firstObject = objc_claimAutoreleasedReturnValue()) == 0))
    {
      firstObject = [v20 firstObject];
    }

LABEL_8:
    objc_storeStrong(p_mainEntry, firstObject);
  }

LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return firstObject;
}

uint64_t __35__MFFileArchiveDirectory_mainEntry__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 fileName];
    v8 = [v7 lastPathComponent];
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqualToString:*(a1 + 32)];

    if (v10)
    {
      *a4 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __35__MFFileArchiveDirectory_mainEntry__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 fileName];
    v7 = [v6 lastPathComponent];
    v8 = [v7 characterAtIndex:0];

    v9 = v8 != 46;
    if (v8 != 46)
    {
      v9 = 1;
      *a4 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_scrubContentDirectory
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_scrubbedEntries)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_entries, "count")}];
    scrubbedEntries = self->_scrubbedEntries;
    self->_scrubbedEntries = v3;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    allValues = [(NSMutableDictionary *)self->_entries allValues];
    v6 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = *v19;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        fileName = [v9 fileName];
        if ([fileName length] && objc_msgSend(v9, "uncompressedSize"))
        {
          fileName2 = [v9 fileName];
          fileName3 = [v9 fileName];
          if ([fileName2 characterAtIndex:{objc_msgSend(fileName3, "length") - 1}] == 47)
          {
          }

          else
          {
            path = [v9 path];
            v14 = [path hasPrefix:@"__MACOSX/"];

            if (v14)
            {
              continue;
            }

            v15 = selfCopy->_scrubbedEntries;
            fileName = [v9 path];
            [(NSMutableDictionary *)v15 setObject:v9 forKey:fileName];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v6)
      {
LABEL_16:

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)scrubbedArchiveEntries
{
  scrubbedEntries = self->_scrubbedEntries;
  if (!scrubbedEntries)
  {
    [(MFFileArchiveDirectory *)self _scrubContentDirectory];
    scrubbedEntries = self->_scrubbedEntries;
  }

  return [(NSMutableDictionary *)scrubbedEntries allValues];
}

+ (CentralHeader)_centralHeader:(id)header
{
  headerCopy = header;
  if ([headerCopy length] < 0x36)
  {
LABEL_6:
    bytes = 0;
    goto LABEL_7;
  }

  bytes = [headerCopy bytes];
  if (*bytes->var0 != 33639248)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "#Attachments Failed to validate archive central header", v7, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:

  return bytes;
}

+ (CentralDirectory)_centralDirectory:(id)directory
{
  directoryCopy = directory;
  if ([directoryCopy length] < 0x16)
  {
LABEL_6:
    bytes = 0;
    goto LABEL_7;
  }

  bytes = [directoryCopy bytes];
  if (*bytes->var0 != 101010256)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "#Attachments Failed to validate archive central directory", v7, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:

  return bytes;
}

+ (_NSRange)_rangeOfCentralDirectory:(int64_t)directory
{
  if (directory == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = directory - 22;
  }

  v4 = 22;
  result.length = v4;
  result.location = v3;
  return result;
}

+ (BOOL)_hasZipSignature:(id)signature
{
  signatureCopy = signature;
  if ([signatureCopy length])
  {
    v4 = memmem([signatureCopy bytes], objc_msgSend(signatureCopy, "length"), &localHeaderSignatureString, 4uLL) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setArchiveEntry:(id)entry
{
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    entries = self->_entries;
    path = [entryCopy path];
    v8 = [(NSMutableDictionary *)entries objectForKey:path];

    if (v8)
    {
      [v8 merge:v5];
    }

    else
    {
      v9 = self->_entries;
      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = self->_entries;
        self->_entries = v10;

        v9 = self->_entries;
      }

      path2 = [v5 path];
      [(NSMutableDictionary *)v9 setObject:v5 forKey:path2];
    }
  }

  return v5 != 0;
}

@end