@interface TSUExtendedAttributeCollection
+ (BOOL)removeExtraExtendedAttributesAtPath:(id)a3 forIntent:(unsigned int)a4 options:(int)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)setAttributeCollectionToPath:(id)a3 intent:(unsigned int)a4 options:(int)a5 forRemoval:(BOOL)a6 error:(id *)a7;
- (TSUExtendedAttributeCollection)initWithAttributes:(id)a3;
- (TSUExtendedAttributeCollection)initWithPath:(id)a3 forRemoval:(BOOL)a4 options:(int)a5 error:(id *)a6;
- (id)description;
- (id)extendedAttributeForName:(id)a3;
- (void)setExtendedAttributeValue:(id)a3 forName:(id)a4;
@end

@implementation TSUExtendedAttributeCollection

+ (BOOL)removeExtraExtendedAttributesAtPath:(id)a3 forIntent:(unsigned int)a4 options:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPath:v10 forRemoval:1 options:v7 error:a6];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 setAttributeCollectionToPath:v10 intent:v8 options:v7 forRemoval:1 error:a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TSUExtendedAttributeCollection)initWithAttributes:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TSUExtendedAttributeCollection;
  v5 = [(TSUExtendedAttributeCollection *)&v24 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 name];
          v15 = xattr_name_without_flags([v14 UTF8String]);

          v16 = v5->_attributes;
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v15];
          [(NSMutableDictionary *)v16 setObject:v13 forKeyedSubscript:v17];

          free(v15);
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v4 = v19;
  }

  return v5;
}

- (TSUExtendedAttributeCollection)initWithPath:(id)a3 forRemoval:(BOOL)a4 options:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  v8 = a4;
  v10 = a3;
  v11 = [v10 fileSystemRepresentation];
  if (!v11)
  {
    if (!a6)
    {
      goto LABEL_27;
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = 2;
LABEL_23:
    [v25 tsu_fileReadPOSIXErrorWithNumber:v26 userInfo:0];
    *a6 = v28 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = listxattr(v11, 0, 0, v7);
  if (v13 == -1)
  {
    if (!a6)
    {
      goto LABEL_27;
    }

    v27 = MEMORY[0x277CCA9B8];
    v26 = *__error();
    v25 = v27;
    goto LABEL_23;
  }

  v14 = v13;
  if (v13 < 1)
  {
    self = [(TSUExtendedAttributeCollection *)self init];
    v28 = self;
    goto LABEL_30;
  }

  v15 = malloc_type_malloc(v13, 0x100004077774924uLL);
  if (!v15)
  {
    if (a6)
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = 12;
      goto LABEL_23;
    }

LABEL_27:
    v28 = 0;
    goto LABEL_30;
  }

  v16 = v15;
  v17 = listxattr(v12, v15, v14, v7);
  if (v17 == -1)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }

    free(v16);
    goto LABEL_27;
  }

  v18 = v17;
  v32 = objc_opt_new();
  if (v18 < 1)
  {
    goto LABEL_29;
  }

  v30 = self;
  v31 = v16;
  v19 = 0x277CCA000uLL;
  while (1)
  {
    v20 = [objc_alloc(*(v19 + 3240)) initWithUTF8String:v16];
    if ([v20 hasPrefix:@"com.apple.security.private."])
    {
      if (TSUDefaultCat_init_token != -1)
      {
        [TSUExtendedAttributeCollection initWithPath:forRemoval:options:error:];
      }

      goto LABEL_13;
    }

    v21 = v19;
    v22 = [[TSUExtendedAttribute alloc] initFromPathFileSystemRepresentation:v12 name:v20 forRemoval:v8 options:v7 error:a6];
    if (!v22)
    {
      break;
    }

    v23 = v22;
    [v32 addObject:v22];

    v19 = v21;
LABEL_13:
    v24 = strlen(v16);
    v16 += v24 + 1;
    v18 -= v24 + 1;

    if (v18 <= 0)
    {
      self = v30;
      v16 = v31;
      goto LABEL_29;
    }
  }

  self = 0;
  v16 = v31;
LABEL_29:
  free(v16);
  self = [(TSUExtendedAttributeCollection *)self initWithAttributes:v32];

  v28 = self;
LABEL_30:

  return v28;
}

void __72__TSUExtendedAttributeCollection_initWithPath_forRemoval_options_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (BOOL)setAttributeCollectionToPath:(id)a3 intent:(unsigned int)a4 options:(int)a5 forRemoval:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [v12 fileSystemRepresentation];
  if (v13)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__15;
    v25 = __Block_byref_object_dispose__15;
    v26 = 0;
    attributes = self->_attributes;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __95__TSUExtendedAttributeCollection_setAttributeCollectionToPath_intent_options_forRemoval_error___block_invoke;
    v17[3] = &unk_2799C7378;
    v20 = a6;
    v17[5] = &v27;
    v17[6] = v13;
    v18 = a4;
    v19 = a5;
    v17[4] = &v21;
    [(NSMutableDictionary *)attributes enumerateKeysAndObjectsUsingBlock:v17];
    v15 = *(v28 + 24);
    if (a7 && (v28[3] & 1) == 0)
    {
      *a7 = v22[5];
      v15 = *(v28 + 24);
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else if (a7)
  {
    [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void __95__TSUExtendedAttributeCollection_setAttributeCollectionToPath_intent_options_forRemoval_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 64);
  v10 = [v8 shouldPreserveForIntent:*(a1 + 56)];
  if (v9)
  {
    if ((v10 & 1) == 0)
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 60);
      v13 = *(*(a1 + 32) + 8);
      obj = *(v13 + 40);
      v14 = [v8 setAttributeToPathFileSystemRepresentation:v11 options:v12 error:&obj];
      objc_storeStrong((v13 + 40), obj);
      if ((v14 & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }

  else if (v10)
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 60);
    v17 = *(*(a1 + 32) + 8);
    v20 = *(v17 + 40);
    v18 = [v8 setAttributeToPathFileSystemRepresentation:v15 options:v16 error:&v20];
    objc_storeStrong((v17 + 40), v20);
    if ((v18 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 0;
    }
  }
}

- (id)extendedAttributeForName:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = xattr_name_without_flags(v6);
    attributes = self->_attributes;
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
    v10 = [(NSMutableDictionary *)attributes objectForKeyedSubscript:v9];

    free(v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setExtendedAttributeValue:(id)a3 forName:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 UTF8String];
  if (v7)
  {
    v8 = xattr_name_without_flags(v7);
    v9 = [[TSUExtendedAttribute alloc] initWithName:v6 value:v12];
    attributes = self->_attributes;
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v8];
    [(NSMutableDictionary *)attributes setObject:v9 forKeyedSubscript:v11];

    free(v8);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (v6)
  {
    attributes = self->_attributes;
    if (attributes | v6[1])
    {
      v8 = [(NSMutableDictionary *)attributes isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TSUExtendedAttributeCollection *)self allAttributes];
  v7 = [v3 stringWithFormat:@"<%@: %p attributes='%@'>", v5, self, v6];

  return v7;
}

@end