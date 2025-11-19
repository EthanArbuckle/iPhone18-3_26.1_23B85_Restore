@interface CKVCustomTerm
+ (id)customTermFromItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCustomTerm:(id)a3;
- (CKVCustomTerm)init;
- (CKVCustomTerm)initWithCoder:(id)a3;
- (CKVCustomTerm)initWithItemId:(id)a3 vocabularyType:(unsigned __int16)a4 term:(id)a5 vocabularyId:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)toItemWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKVCustomTerm

- (id)toItemWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69ABCF8]);
  v6 = [(CKVCustomTerm *)self vocabularyType];
  v7 = [(CKVCustomTerm *)self itemId];
  v8 = [v5 setItemType:1 itemId:v7 error:a3];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = CKVCustomTypeToFieldType(v6);
  v11 = [(CKVCustomTerm *)self term];
  v12 = [v5 addFieldWithType:v10 value:v11 error:a3];
  if (!v12)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [(CKVCustomTerm *)self vocabularyId];
  v15 = [v5 addFieldWithType:20 value:v14 error:a3];

  if (v15)
  {
    v16 = [v5 buildItemWithError:a3];
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_itemId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_vocabularyType;
  v8 = [(NSString *)self->_term copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_vocabularyId copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_itemId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_vocabularyType];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_term hash];
  v7 = v6 ^ [(NSString *)self->_vocabularyId hash];

  return v5 ^ v7;
}

- (BOOL)isEqualToCustomTerm:(id)a3
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_35;
  }

  itemId = self->_itemId;
  v10 = itemId;
  if (!itemId)
  {
    v3 = [v7 itemId];
    if (!v3)
    {
      vocabularyType = self->_vocabularyType;
      v12 = 0;
      v13 = 0;
      if (vocabularyType != [v8 vocabularyType])
      {
LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_12;
    }

    v10 = self->_itemId;
  }

  v4 = [v8 itemId];
  if (([(NSString *)v10 isEqual:v4]& 1) == 0)
  {

    v13 = 0;
    goto LABEL_33;
  }

  v11 = self->_vocabularyType;
  if (v11 != [v8 vocabularyType])
  {
    v13 = 0;
    goto LABEL_32;
  }

  v12 = 1;
LABEL_12:
  term = self->_term;
  v16 = term;
  if (!term)
  {
    v17 = [v8 term];
    if (!v17)
    {
      v27 = v12;
      v26 = 0;
      v18 = 0;
LABEL_19:
      vocabularyId = self->_vocabularyId;
      v20 = vocabularyId;
      if (!vocabularyId)
      {
        v21 = [v8 vocabularyId];
        if (!v21)
        {
          v23 = 0;
          v13 = 1;
          goto LABEL_28;
        }

        v25 = v21;
        v20 = self->_vocabularyId;
      }

      v22 = [v8 vocabularyId];
      v13 = [(NSString *)v20 isEqual:v22];

      if (vocabularyId)
      {
        if (!v18)
        {
          v12 = v27;
          goto LABEL_30;
        }

        v12 = v27;
        goto LABEL_29;
      }

      v23 = v25;
LABEL_28:

      v12 = v27;
      if ((v18 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v26 = v17;
    v16 = self->_term;
  }

  v5 = [v8 term];
  if ([(NSString *)v16 isEqual:v5])
  {
    v27 = v12;
    v18 = 1;
    goto LABEL_19;
  }

  v13 = 0;
LABEL_29:

LABEL_30:
  if (term)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v12)
  {
LABEL_32:
  }

LABEL_33:
  if (!itemId)
  {
    goto LABEL_34;
  }

LABEL_35:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVCustomTerm *)self isEqualToCustomTerm:v5];
  }

  return v6;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = CKVCustomTerm;
  v3 = [(CKVCustomTerm *)&v8 description];
  itemId = self->_itemId;
  v5 = CKVCustomTypeToNumber(self->_vocabularyType);
  v6 = [v3 stringByAppendingFormat:@"%@: %@ %@: %@, %@: %@, %@: %@", @"itemId", itemId, @"vocabType", v5, @"term", self->_term, @"vocabId", self->_vocabularyId];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  itemId = self->_itemId;
  v5 = a3;
  [v5 encodeObject:itemId forKey:@"itemId"];
  [v5 encodeInteger:self->_vocabularyType forKey:@"vocabType"];
  [v5 encodeObject:self->_term forKey:@"term"];
  [v5 encodeObject:self->_vocabularyId forKey:@"vocabId"];
}

- (CKVCustomTerm)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKVCustomTerm;
  v5 = [(CKVCustomTerm *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemId"];
    itemId = v5->_itemId;
    v5->_itemId = v6;

    v5->_vocabularyType = [v4 decodeIntegerForKey:@"vocabType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"term"];
    term = v5->_term;
    v5->_term = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vocabId"];
    vocabularyId = v5->_vocabularyId;
    v5->_vocabularyId = v10;
  }

  return v5;
}

- (CKVCustomTerm)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use - initWithItemId:termType:term:vocabularyId" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVCustomTerm)initWithItemId:(id)a3 vocabularyType:(unsigned __int16)a4 term:(id)a5 vocabularyId:(id)a6
{
  v8 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v29.receiver = self;
  v29.super_class = CKVCustomTerm;
  v13 = [(CKVCustomTerm *)&v29 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [v10 copy];
  itemId = v13->_itemId;
  v13->_itemId = v14;

  v16 = v13->_itemId;
  if (!v16 || ![(NSString *)v16 length])
  {
    goto LABEL_11;
  }

  v13->_vocabularyType = v8;
  if (!CKVCustomTypeIsValid(v8))
  {
    v23 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v25 = v23;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = CKVCustomTypeToNumber(v13->_vocabularyType);
      *buf = 136315650;
      v31 = "[CKVCustomTerm initWithItemId:vocabularyType:term:vocabularyId:]";
      v32 = 2112;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      _os_log_error_impl(&dword_1C8683000, v25, OS_LOG_TYPE_ERROR, "%s Cannot construct %@ with invalid vocabularyType: %@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v17 = [v11 copy];
  term = v13->_term;
  v13->_term = v17;

  v19 = v13->_term;
  if (!v19 || ![(NSString *)v19 length])
  {
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v20 = [v12 copy];
  vocabularyId = v13->_vocabularyId;
  v13->_vocabularyId = v20;

LABEL_8:
  v22 = v13;
LABEL_12:

  return v22;
}

+ (id)customTermFromItem:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 itemType] == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    *&v34 = __Block_byref_object_dispose_;
    *(&v34 + 1) = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __36__CKVCustomTerm_customTermFromItem___block_invoke;
    v19[3] = &unk_1E831E280;
    v19[4] = &v20;
    v19[5] = buf;
    [v3 enumerateFieldsUsingBlock:v19];
    v4 = [*(*&buf[8] + 40) fieldType];
    if ((v4 - 1) > 0x12)
    {
      v5 = 0;
    }

    else
    {
      v5 = word_1C86FE3E8[v4 - 1];
    }

    v8 = [CKVCustomTerm alloc];
    v9 = [v3 itemId];
    v10 = [*(*&buf[8] + 40) value];
    v7 = [(CKVCustomTerm *)v8 initWithItemId:v9 vocabularyType:v5 term:v10 vocabularyId:v21[5]];

    if (!v7)
    {
      v11 = CKLogContextVocabulary;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *v26 = 136315650;
        v27 = "+[CKVCustomTerm customTermFromItem:]";
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v3;
        _os_log_error_impl(&dword_1C8683000, v11, OS_LOG_TYPE_ERROR, "%s Failed to initialize %@ from item: %@", v26, 0x20u);
      }
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v13 = v6;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = KVItemTypeName();
      *buf = 136315906;
      *&buf[4] = "+[CKVCustomTerm customTermFromItem:]";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 2112;
      v33 = v15;
      LOWORD(v34) = 2112;
      *(&v34 + 2) = v16;
      _os_log_error_impl(&dword_1C8683000, v13, OS_LOG_TYPE_ERROR, "%s Unexpected item: %@ expected %@ with itemType: %@", buf, 0x2Au);
    }

    v7 = 0;
  }

  return v7;
}

void __36__CKVCustomTerm_customTermFromItem___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 fieldType] == 20)
  {
    v3 = [v8 value];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v8;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }
}

@end