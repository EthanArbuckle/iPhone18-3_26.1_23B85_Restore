@interface FPDiagnosticCollector
+ (unint64_t)getStringCharactersSet:(id)set;
- (BOOL)_collectFnameAttributesWithError:(id *)error;
- (BOOL)_collectInodeAttributesWithError:(id *)error;
- (BOOL)_collectMountAttributesWithError:(id *)error;
- (BOOL)_collectParentACLCountWithError:(id *)error;
- (BOOL)_collectPurgeAttributesWithError:(id *)error;
- (BOOL)_collectXattrAttributesWithError:(id *)error;
- (BOOL)_collectdocIDAttributesWithError:(id *)error;
- (BOOL)_performStep:(unint64_t)step error:(id *)error;
- (BOOL)_tryReadFirstByteOfFileWithError:(id *)error;
- (BOOL)collectDiagnosticDiskAttributesWithError:(id *)error;
- (FPDiagnosticCollector)initWithFD:(int)d trashURL:(id)l isExternalQuery:(BOOL)query;
@end

@implementation FPDiagnosticCollector

- (FPDiagnosticCollector)initWithFD:(int)d trashURL:(id)l isExternalQuery:(BOOL)query
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = FPDiagnosticCollector;
  v10 = [(FPDiagnosticCollector *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    diagnostic = v10->_diagnostic;
    v10->_diagnostic = v11;

    v10->_fd = d;
    v10->_isExternalQuery = query;
    objc_storeStrong(&v10->_trashURL, l);
    v10->_stepsNeeded = 147;
  }

  return v10;
}

- (BOOL)_performStep:(unint64_t)step error:(id *)error
{
  if (step > 15)
  {
    if (step > 63)
    {
      if (step == 64)
      {

        return [(FPDiagnosticCollector *)self _tryReadFirstByteOfFileWithError:error];
      }

      else
      {
        if (step != 128)
        {
          goto LABEL_36;
        }

        return [(FPDiagnosticCollector *)self _collectParentACLCountWithError:error];
      }
    }

    else if (step == 16)
    {

      return [(FPDiagnosticCollector *)self _collectMountAttributesWithError:error];
    }

    else
    {
      if (step != 32)
      {
        goto LABEL_36;
      }

      return [(FPDiagnosticCollector *)self _collectdocIDAttributesWithError:error];
    }
  }

  else if (step > 3)
  {
    if (step == 4)
    {

      return [(FPDiagnosticCollector *)self _collectXattrAttributesWithError:error];
    }

    else
    {
      if (step != 8)
      {
        goto LABEL_36;
      }

      return [(FPDiagnosticCollector *)self _collectPurgeAttributesWithError:error];
    }
  }

  else
  {
    if (step != 1)
    {
      if (step == 2)
      {

        return [(FPDiagnosticCollector *)self _collectFnameAttributesWithError:error];
      }

LABEL_36:
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:45];
      return 0;
    }

    return [(FPDiagnosticCollector *)self _collectInodeAttributesWithError:error];
  }
}

- (BOOL)collectDiagnosticDiskAttributesWithError:(id *)error
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    if ((self->_stepsNeeded & v7) != 0)
    {
      v24 = 0;
      v9 = [(FPDiagnosticCollector *)self _performStep:v7 error:&v24];
      v10 = v24;
      v11 = v10;
      if (v9)
      {
        self->_stepsNeeded &= ~v7;
      }

      else
      {
        v5 |= v7;
        if (!v6)
        {
          v6 = v10;
        }

        v8 = 0;
      }
    }

    v12 = v7 >= 0x41;
    v7 *= 2;
  }

  while (!v12);
  if ((v8 & 1) == 0)
  {
    if (error)
    {
      v13 = v6;
      *error = v6;
    }

    domain = [v6 domain];
    [(NSMutableDictionary *)self->_diagnostic setObject:domain forKeyedSubscript:*MEMORY[0x1E6966F50]];

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
    [(NSMutableDictionary *)self->_diagnostic setObject:v15 forKeyedSubscript:*MEMORY[0x1E6966F48]];

    underlyingErrors = [v6 underlyingErrors];
    v17 = [underlyingErrors count];

    if (v17)
    {
      underlyingErrors2 = [v6 underlyingErrors];
      firstObject = [underlyingErrors2 firstObject];

      domain2 = [firstObject domain];
      [(NSMutableDictionary *)self->_diagnostic setObject:domain2 forKeyedSubscript:*MEMORY[0x1E6966F68]];

      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(firstObject, "code")}];
      [(NSMutableDictionary *)self->_diagnostic setObject:v21 forKeyedSubscript:*MEMORY[0x1E6966F60]];
    }

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    [(NSMutableDictionary *)self->_diagnostic setObject:v22 forKeyedSubscript:*MEMORY[0x1E6966F58]];
  }

  return v8 & 1;
}

- (BOOL)_collectInodeAttributesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = xmmword_1CF9F4CB0;
  v48 = 0x60000001601;
  v6 = getpagesize();
  v7 = malloc_type_malloc(v6, 0x5E9646DAuLL);
  if (!v7)
  {
    [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    *error = v12 = 0;
    goto LABEL_69;
  }

  v8 = v7;
  if (fgetattrlist(self->_fd, &v47, v7, v6, 0x28u) < 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v11 = *__error();
    v10 = v13;
    goto LABEL_9;
  }

  v9 = *(v8 + 1);
  if ((v9 & 4) != 0)
  {
    self->_fsid = *(v8 + 3);
    v9 = *(v8 + 1);
  }

  if ((v9 & 8) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = 9;
LABEL_9:
    *error = [v10 fp_errorWithPOSIXCode:v11];
    free(v8);
    v12 = 0;
    goto LABEL_69;
  }

  v14 = *(v8 + 8) - 1;
  if (v14 > 6)
  {
    v15 = 0;
  }

  else
  {
    v15 = word_1CF9F4CE0[v14];
  }

  if ((v9 & 0x20000) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v15 | v8[52]];
    [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6967050]];

    v9 = *(v8 + 1);
    if ((v9 & 0x200) == 0)
    {
LABEL_15:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithLong:*(v8 + 18)];
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6966FE8]];

  v18 = *(v8 + 18);
  v19 = [MEMORY[0x1E696AD98] numberWithBool:fpfs_is_busy_date()];
  [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6966FF0]];

  v9 = *(v8 + 1);
  if ((v9 & 0x400) == 0)
  {
LABEL_16:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v20 = [MEMORY[0x1E696AD98] numberWithLong:*(v8 + 26)];
  [v5 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6967058]];

  v9 = *(v8 + 1);
  if ((v9 & 0x4000) == 0)
  {
LABEL_17:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v8[38]) >> 16];
  [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6967020]];

  v9 = *(v8 + 1);
  if ((v9 & 0x8000) == 0)
  {
LABEL_18:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v8 + 25)];
  [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6967078]];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:geteuid()];
  [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6967098]];

  v9 = *(v8 + 1);
  if ((v9 & 0x40000) == 0)
  {
LABEL_19:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v8 + 28)];
    [v5 setObject:v25 forKeyedSubscript:*MEMORY[0x1E6967028]];

    v9 = *(v8 + 1);
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_27:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v8 + 27)];
  [v5 setObject:v24 forKeyedSubscript:*MEMORY[0x1E6966FE0]];

  v9 = *(v8 + 1);
  if ((v9 & 0x80000) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v9 & 0x100000) == 0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v26 = *(v8 + 29);
  if (v26)
  {
    self->_stepsNeeded |= 0x20uLL;
    self->_docid = v26;
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v8 + 29)];
    [v5 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6967010]];

    v9 = *(v8 + 1);
  }

LABEL_31:
  if ((v9 & 0x400000) != 0)
  {
    v28 = (v8 + *(v8 + 30) + 120);
    if (*v28 == 19710317 && (v28[9] + 1) >= 2)
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v5 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6967040]];

      v9 = *(v8 + 1);
    }
  }

  if ((v9 & 0x2000000) != 0)
  {
    self->_ino = *(v8 + 16);
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v8 + 16)];
    [v5 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6967018]];

    v9 = *(v8 + 1);
  }

  if ((v9 & 0x40000000) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v8 + 34)];
    [v5 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6967000]];
  }

  v32 = *(v8 + 8);
  if (v32 != 1)
  {
    goto LABEL_51;
  }

  v33 = *(v8 + 4);
  if (v33)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 35) > 1u];
    [v5 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6967030]];

    v33 = *(v8 + 4);
    if ((v33 & 0x200) == 0)
    {
LABEL_42:
      if ((v33 & 0x400) == 0)
      {
        goto LABEL_43;
      }

LABEL_72:
      v45 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v8 + 19)];
      [v5 setObject:v45 forKeyedSubscript:*MEMORY[0x1E6967068]];

      if ((*(v8 + 4) & 0x1000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  else if ((v33 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v44 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v8 + 18)];
  [v5 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6967048]];

  v33 = *(v8 + 4);
  if ((v33 & 0x400) != 0)
  {
    goto LABEL_72;
  }

LABEL_43:
  if ((v33 & 0x1000) != 0)
  {
LABEL_44:
    v34 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v8 + 20)];
    [v5 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6967070]];
  }

LABEL_45:
  if ((*(v8 + 21) & 2) != 0)
  {
    v35 = *(v8 + 21);
    if ((v35 & 8) != 0)
    {
      self->_stepsNeeded |= 8uLL;
      v35 = *(v8 + 21);
    }

    if ((v35 & 2) == 0)
    {
      self->_stepsNeeded |= 4uLL;
    }
  }

  v32 = *(v8 + 8);
LABEL_51:
  if (v32 == 2)
  {
    if ((v8[6] & 2) != 0)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v8 + 35)];
      [v5 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6967008]];
    }

    v37 = *(v8 + 5);
    if ((v37 & 0x200) != 0)
    {
      v38 = *(v8 + 18);
      if ((v38 & 8) != 0)
      {
        self->_stepsNeeded |= 8uLL;
        v38 = *(v8 + 18);
      }

      if ((v38 & 2) == 0)
      {
        self->_stepsNeeded |= 4uLL;
      }
    }

    if ((v37 & 0x400) != 0)
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 19) != 0];
      [v5 setObject:v39 forKeyedSubscript:*MEMORY[0x1E6967038]];
    }
  }

  v40 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [v5 setObject:v40 forKeyedSubscript:*MEMORY[0x1E6967088]];

  if (*(v8 + 8) == 1 && *(v8 + 18) >= 1 && (v8[54] & 0x20) == 0 && (*(v8 + 34) - 1) >= 2)
  {
    self->_stepsNeeded |= 0x40uLL;
  }

  v46 = 0;
  if (!ffsctl(self->_fd, 0x40084A4AuLL, &v46, 0))
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46];
    [v5 setObject:v41 forKeyedSubscript:*MEMORY[0x1E6966FF8]];
  }

  free(v8);
  [(NSMutableDictionary *)self->_diagnostic addEntriesFromDictionary:v5];
  v12 = 1;
LABEL_69:

  return v12;
}

+ (unint64_t)getStringCharactersSet:(id)set
{
  v3 = getStringCharactersSet__onceToken;
  setCopy = set;
  if (v3 != -1)
  {
    +[FPDiagnosticCollector getStringCharactersSet:];
  }

  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
  v6 = [setCopy rangeOfCharacterFromSet:controlCharacterSet];

  illegalCharacterSet = [MEMORY[0x1E696AB08] illegalCharacterSet];
  v8 = [setCopy rangeOfCharacterFromSet:illegalCharacterSet];

  v9 = 2;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 3;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  nonBaseCharacterSet = [MEMORY[0x1E696AB08] nonBaseCharacterSet];
  v12 = [setCopy rangeOfCharacterFromSet:nonBaseCharacterSet];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 |= 4uLL;
  }

  symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
  v14 = [setCopy rangeOfCharacterFromSet:symbolCharacterSet];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 |= 8uLL;
  }

  _emojiCharacterSet = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  v16 = [setCopy rangeOfCharacterFromSet:_emojiCharacterSet];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 | 0x10;
  }

  v18 = [setCopy rangeOfCharacterFromSet:getStringCharactersSet__nonLatinCharacterSet];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v17;
  }

  else
  {
    return v17 | 0x20;
  }
}

void __48__FPDiagnosticCollector_getStringCharactersSet___block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithRange:{0, 591}];
  v0 = [v2 invertedSet];
  v1 = getStringCharactersSet__nonLatinCharacterSet;
  getStringCharactersSet__nonLatinCharacterSet = v0;
}

- (BOOL)_collectFnameAttributesWithError:(id *)error
{
  v48[5] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = malloc_type_malloc(0x2000uLL, 0x5928EA5uLL);
  if (!v6)
  {
    [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    *error = v12 = 0;
    goto LABEL_33;
  }

  v7 = v6;
  if (fsgetpath(v6, 0x2000uLL, &self->_fsid, self->_ino) < 0)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    free(v7);
    v12 = 0;
    goto LABEL_33;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  lastPathComponent = [v8 lastPathComponent];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(lastPathComponent, "length")}];
  [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6966F98]];

  if ([lastPathComponent hasPrefix:@"._"])
  {
    v11 = MEMORY[0x1E6966F80];
  }

  else
  {
    if (![lastPathComponent hasPrefix:@"."])
    {
      goto LABEL_12;
    }

    if (!self->_isExternalQuery)
    {
      v13 = [[FPBoolean alloc] initWithBool:1];
      [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6966F88]];

      goto LABEL_12;
    }

    v11 = MEMORY[0x1E6966F88];
  }

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v11];
LABEL_12:
  getUnicodeNormalization = [lastPathComponent getUnicodeNormalization];
  [v5 setObject:getUnicodeNormalization forKeyedSubscript:*MEMORY[0x1E6966FB8]];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6966FA8]];

  v16 = MEMORY[0x1E696AD98];
  pathComponents = [v8 pathComponents];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(pathComponents, "count")}];
  [v5 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6966FA0]];

  pathExtension = [lastPathComponent pathExtension];
  if ([pathExtension length])
  {
    [v5 setObject:pathExtension forKeyedSubscript:*MEMORY[0x1E6966F78]];
  }

  v20 = [FPDiagnosticCollector getStringCharactersSet:lastPathComponent];
  if (v20)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
    [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6966F70]];
  }

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v46 = 0;
  v23 = [v22 getResourceValue:&v46 forKey:*MEMORY[0x1E695DAA0] error:0];
  v24 = v46;
  if (v23)
  {
    v39 = pathExtension;
    v40 = lastPathComponent;
    v41 = v8;
    v25 = *MEMORY[0x1E6982D80];
    v48[0] = *MEMORY[0x1E6982F30];
    v48[1] = v25;
    v26 = *MEMORY[0x1E6982FF8];
    v48[2] = *MEMORY[0x1E6982C80];
    v48[3] = v26;
    v48[4] = *MEMORY[0x1E6982D60];
    [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = v45 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v42 + 1) + 8 * i);
          if ([v24 conformsToType:v32])
          {
            identifier = [v32 identifier];
            [v5 setObject:identifier forKeyedSubscript:*MEMORY[0x1E6966FB0]];

            goto LABEL_27;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    lastPathComponent = v40;
    v8 = v41;
    pathExtension = v39;
  }

  uRLByDeletingLastPathComponent = [v22 URLByDeletingLastPathComponent];
  parentURL = self->_parentURL;
  self->_parentURL = uRLByDeletingLastPathComponent;

  if (![(NSURL *)self->_trashURL fp_relationshipToItemAtURL:v22])
  {
    if (self->_isExternalQuery)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6966F90]];
    }

    else
    {
      v36 = [[FPBoolean alloc] initWithBool:1];
      [v5 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6966F90]];
    }
  }

  free(v7);
  [(NSMutableDictionary *)self->_diagnostic addEntriesFromDictionary:v5];

  v12 = 1;
LABEL_33:

  v37 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_collectXattrAttributesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = getpagesize();
  v7 = malloc_type_malloc(v6, 0xA80CA15FuLL);
  if (!v7)
  {
    [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    *error = v12 = 0;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = flistxattr(self->_fd, v7, v6, 32);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v11 = *__error();
    v10 = v13;
    goto LABEL_7;
  }

  if (v9 > v6)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = 12;
LABEL_7:
    *error = [v10 fp_errorWithPOSIXCode:v11];
    free(v8);
    v12 = 0;
    goto LABEL_29;
  }

  if (!v9)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v27 = MEMORY[0x1E69670A8];
    goto LABEL_27;
  }

  selfCopy = self;
  v33 = 0;
  LODWORD(self) = 0;
  v14 = &v8[v9];
  v30 = *MEMORY[0x1E69670B0];
  v15 = *MEMORY[0x1E69670C0];
  v31 = *MEMORY[0x1E69670C0];
  v32 = *MEMORY[0x1E69670B8];
  v16 = MEMORY[0x1E695E118];
  v17 = *MEMORY[0x1E69670C8];
  v18 = v8;
  do
  {
    v19 = strlen(v18);
    if (!strcmp(v18, "com.apple.quarantine"))
    {
      v20 = v5;
      v21 = v16;
      v22 = v17;
    }

    else if (!strcmp(v18, "com.apple.fileprovider.dir#N"))
    {
      v20 = v5;
      v21 = v16;
      v22 = v32;
    }

    else if (!strcmp(v18, "com.apple.fileprovider.fpfs#P"))
    {
      v20 = v5;
      v21 = v16;
      v22 = v31;
    }

    else
    {
      if (strcmp(v18, "com.apple.fileprovider.before-bounce#PX"))
      {
        v33 |= strcmp(v18, "com.apple.decmpfs") == 0;
        goto LABEL_20;
      }

      v20 = v5;
      v21 = v16;
      v22 = v30;
    }

    [v20 setObject:v21 forKeyedSubscript:v22];
LABEL_20:
    v18 += v19 + 1;
    self = (self + 1);
  }

  while (v18 < v14);
  v23 = [MEMORY[0x1E696AD98] numberWithInt:self];
  [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69670A8]];

  self = selfCopy;
  if (v33)
  {
    fd = selfCopy->_fd;
    v25 = fpfs_fget_decmpf_type();
    if (v25 < 0)
    {
      [MEMORY[0x1E696AD98] numberWithInt:-*__error()];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithLong:v25];
    }
    v26 = ;
    v27 = MEMORY[0x1E69670A0];
LABEL_27:
    [v5 setObject:v26 forKeyedSubscript:*v27];
  }

  free(v8);
  [(NSMutableDictionary *)self->_diagnostic addEntriesFromDictionary:v5];
  v12 = 1;
LABEL_29:

  return v12;
}

- (BOOL)_collectPurgeAttributesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v6 = ffsctl(self->_fd, 0x40304A6DuLL, &v12, 0);
  if (v6 < 0)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6966FC8]];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v13 + 1)];
    [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6966FD0]];

    0x3B9ACA00 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13 / 0x3B9ACA00];
    [v5 setObject:0x3B9ACA00 forKeyedSubscript:*MEMORY[0x1E6966FC0]];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6966FD8]];

    [(NSMutableDictionary *)self->_diagnostic addEntriesFromDictionary:v5];
  }

  return v6 >= 0;
}

- (BOOL)_collectMountAttributesWithError:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bzero(&v13, 0x878uLL);
  v6 = fstatfs(self->_fd, &v13);
  if (v6 < 0)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:12];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13.f_bavail * v13.f_bsize];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6966E40]];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13.f_flags];
    [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6966E58]];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13.f_bsize];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6966E48]];

    if (!APFSVolumeRole())
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:0];
      [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6966E60]];
    }

    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6966E50]];
    [(NSMutableDictionary *)self->_diagnostic addEntriesFromDictionary:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6 >= 0;
}

- (BOOL)_collectdocIDAttributesWithError:(id *)error
{
  docid = self->_docid;
  v5 = self->_fsid.val[0];
  v6 = GSLibraryResolveDocumentId2();
  diagnostic = self->_diagnostic;
  if (v6 == self->_ino)
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  [(NSMutableDictionary *)self->_diagnostic setObject:v8 forKeyedSubscript:*MEMORY[0x1E6967080]];
  return 1;
}

- (BOOL)_tryReadFirstByteOfFileWithError:(id *)error
{
  __buf = 0;
  if (pread(self->_fd, &__buf, 1uLL, 0) < 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:*__error()];
    [(NSMutableDictionary *)self->_diagnostic setObject:v4 forKeyedSubscript:*MEMORY[0x1E6967090]];
  }

  else
  {
    [(NSMutableDictionary *)self->_diagnostic setObject:&unk_1F4C62A90 forKeyedSubscript:*MEMORY[0x1E6967090]];
  }

  return 1;
}

- (BOOL)_collectParentACLCountWithError:(id *)error
{
  if (!self->_parentURL)
  {
    return 1;
  }

  v14 = 0;
  v13 = xmmword_1CF9F4CC8;
  v5 = getpagesize();
  v6 = malloc_type_malloc(v5, 0xD492276CuLL);
  if (v6)
  {
    v7 = v6;
    if (getattrlist([(NSURL *)self->_parentURL fileSystemRepresentation:v13], &v13, v6, v5, 0x20u) < 0)
    {
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      free(v7);
      return 0;
    }

    else
    {
      if ((v7[6] & 0x40) != 0)
      {
        v8 = &v7[*(v7 + 6) + 24];
        if (*v8 == 19710317 && (*(v8 + 9) + 1) >= 2)
        {
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          [(NSMutableDictionary *)self->_diagnostic setObject:v9 forKeyedSubscript:*MEMORY[0x1E6967060]];
        }
      }

      free(v7);
      return 1;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:{*__error(), v13, v14}];
    v12 = v11;
    result = 0;
    *error = v11;
  }

  return result;
}

@end