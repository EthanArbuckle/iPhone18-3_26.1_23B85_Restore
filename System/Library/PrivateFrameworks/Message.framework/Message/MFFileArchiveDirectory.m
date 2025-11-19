@interface MFFileArchiveDirectory
+ (BOOL)_hasZipSignature:(id)a3;
+ (CentralDirectory)_centralDirectory:(id)a3;
+ (CentralHeader)_centralHeader:(id)a3;
+ (_NSRange)_rangeOfCentralDirectory:(int64_t)a3;
+ (_NSRange)rangeOfCentralDirectoryInData:(id)a3;
+ (id)_entriesFromCentralDictionary:(CentralDirectory *)a3 inData:(id)a4 archiveData:(id)a5;
+ (id)archiveDirectory;
- (BOOL)inputWithData:(id)a3;
- (BOOL)inputWithURL:(id)a3;
- (BOOL)setArchiveEntry:(id)a3;
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

+ (_NSRange)rangeOfCentralDirectoryInData:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v4 = 0;
    goto LABEL_10;
  }

  v4 = memmem([v3 bytes], objc_msgSend(v3, "length"), &centralDirectorySignatureString, 4uLL);
  if (!v4)
  {
LABEL_10:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v5 = [v3 bytes];
  v6 = [v3 length];
  v7 = v4 - v5 + 22;
  if (v7 <= v6)
  {
    v8 = v4 - v5;
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

- (BOOL)inputWithURL:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_url, a3);
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

- (BOOL)inputWithData:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_contents, a3);
  v6 = +[MFFileArchiveDirectory _rangeOfCentralDirectory:](MFFileArchiveDirectory, "_rangeOfCentralDirectory:", [v5 length]);
  v8 = [v5 subdataWithRange:{v6, v7}];
  v9 = [MFFileArchiveDirectory _centralDirectory:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v5 subdataWithRange:{v9->var6, v9->var5}];
    v12 = [MFFileArchiveDirectory _entriesFromCentralDictionary:v10 inData:v11 archiveData:v5];
    v13 = [v12 mutableCopy];
    entries = self->_entries;
    self->_entries = v13;

    scrubbedEntries = self->_scrubbedEntries;
    self->_scrubbedEntries = 0;
  }

  return v10 != 0;
}

+ (id)_entriesFromCentralDictionary:(CentralDirectory *)a3 inData:(id)a4 archiveData:(id)a5
{
  v20 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3->var3];
  var3 = a3->var3;
  if (a3->var3)
  {
    v11 = 0;
    v12 = 0;
    var5 = a3->var5;
    do
    {
      v14 = [v20 subdataWithRange:{v12, var5}];

      v15 = [a1 _centralHeader:v14];
      if (!v15)
      {
        break;
      }

      v16 = [MFFileArchiveEntry archiveEntryWithCentralHeader:v15 archiveData:v8];
      v17 = [v16 path];
      [v9 setObject:v16 forKey:v17];

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
  v4 = self->_mainEntry;
  v5 = [(MFFileArchiveEntry *)*(p_mainEntry - 2) allValues];
  v6 = v5;
  if (!v4)
  {
    if (![v5 count])
    {
      v4 = 0;
      goto LABEL_9;
    }

    if ([v6 count] == 1)
    {
      v4 = [v6 firstObject];
    }

    else
    {
      v4 = 0;
    }

    [(MFFileArchiveDirectory *)self _scrubContentDirectory];
    v7 = [(NSMutableDictionary *)self->_scrubbedEntries allValues];
    v8 = v7;
    if (v4)
    {
      goto LABEL_8;
    }

    if ([v7 count] == 1)
    {
      v4 = [v8 firstObject];
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v11 = [(NSURL *)self->_url path];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [(NSURL *)self->_url path];
      v14 = [v13 lastPathComponent];
      v15 = [v14 lowercaseString];

      v16 = [v15 pathExtension];
      LODWORD(v14) = [v16 isEqualToString:@"zip"];

      if (v14)
      {
        v17 = [v15 stringByDeletingPathExtension];

        v15 = v17;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __35__MFFileArchiveDirectory_mainEntry__block_invoke;
      v36[3] = &unk_1E7AA5760;
      v18 = v15;
      v37 = v18;
      v19 = [v8 indexOfObjectPassingTest:v36];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v4 = [v8 objectAtIndex:v19];

        if (v4)
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
      v23 = 0;
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
          if (v23 < [v28 uncompressedSize])
          {
            v23 = [v28 uncompressedSize];
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
        v4 = [v20 objectAtIndex:v25];
        if (v4)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
    }

    v29 = [v20 indexOfObjectPassingTest:&__block_literal_global_32];
    if (v29 == 0x7FFFFFFFFFFFFFFFLL || ([v20 objectAtIndex:v29], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = [v20 firstObject];
    }

LABEL_8:
    objc_storeStrong(p_mainEntry, v4);
  }

LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return v4;
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
    v17 = self;
    v5 = [(NSMutableDictionary *)self->_entries allValues];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 fileName];
        if ([v10 length] && objc_msgSend(v9, "uncompressedSize"))
        {
          v11 = [v9 fileName];
          v12 = [v9 fileName];
          if ([v11 characterAtIndex:{objc_msgSend(v12, "length") - 1}] == 47)
          {
          }

          else
          {
            v13 = [v9 path];
            v14 = [v13 hasPrefix:@"__MACOSX/"];

            if (v14)
            {
              continue;
            }

            v15 = v17->_scrubbedEntries;
            v10 = [v9 path];
            [(NSMutableDictionary *)v15 setObject:v9 forKey:v10];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (CentralHeader)_centralHeader:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0x36)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [v3 bytes];
  if (*v4->var0 != 33639248)
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

  return v4;
}

+ (CentralDirectory)_centralDirectory:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0x16)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [v3 bytes];
  if (*v4->var0 != 101010256)
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

  return v4;
}

+ (_NSRange)_rangeOfCentralDirectory:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = a3 - 22;
  }

  v4 = 22;
  result.length = v4;
  result.location = v3;
  return result;
}

+ (BOOL)_hasZipSignature:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = memmem([v3 bytes], objc_msgSend(v3, "length"), &localHeaderSignatureString, 4uLL) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setArchiveEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    entries = self->_entries;
    v7 = [v4 path];
    v8 = [(NSMutableDictionary *)entries objectForKey:v7];

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

      v12 = [v5 path];
      [(NSMutableDictionary *)v9 setObject:v5 forKey:v12];
    }
  }

  return v5 != 0;
}

@end