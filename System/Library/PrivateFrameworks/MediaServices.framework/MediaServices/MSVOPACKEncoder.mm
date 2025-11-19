@interface MSVOPACKEncoder
+ (id)encodedDataWithRootObject:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (BOOL)finishEncodingWithError:(id *)a3;
- (BOOL)hasTopLevelData;
- (MSVOPACKEncoder)init;
- (id)_convertNumber:(id)a3;
- (id)_convertObject:(id)a3;
- (id)encodedDataWithError:(id *)a3;
- (id)msv_userInfo;
- (void)_encodeNumber:(id)a3 forKey:(id)a4;
- (void)beginEncodingPartialTopLevelObject:(id)a3;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)msv_setUserInfo:(id)a3;
@end

@implementation MSVOPACKEncoder

- (id)_convertObject:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_NSIsNSArray())
  {
    v6 = v5;
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(MSVOPACKEncoder *)self _convertObject:*(*(&v49 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = &unk_1F215CBA8;
      v61 = v7;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    }

    else
    {
      v14 = v7;
    }

    v21 = v14;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  if (_NSIsNSDictionary())
  {
    v15 = MEMORY[0x1E695DF90];
    v16 = v5;
    v17 = [v15 dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __34__MSVOPACKEncoder__convertObject___block_invoke;
    v47[3] = &unk_1E79820D0;
    v47[4] = self;
    v48 = v17;
    v18 = v17;
    [v16 enumerateKeysAndObjectsUsingBlock:v47];
    objc_opt_class();
    LOBYTE(v15) = objc_opt_isKindOfClass();

    if (v15)
    {
      v19 = 4;
    }

    else
    {
      v19 = 3;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    v58 = v20;
    v59 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];

    goto LABEL_20;
  }

  if (_NSIsNSSet())
  {
    v24 = v5;
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v24, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v24;
    v25 = [v8 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v8);
          }

          v29 = [(MSVOPACKEncoder *)self _convertObject:*(*(&v43 + 1) + 8 * j)];
          [v7 addObject:v29];
        }

        v26 = [v8 countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v26);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 8;
    }

    else
    {
      v30 = 7;
    }

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
    v55 = v31;
    v56 = v7;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

    goto LABEL_18;
  }

  if (_NSIsNSData() & 1) != 0 || (_NSIsNSDate() & 1) != 0 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (_NSIsNSNumber())
    {
      v32 = [(MSVOPACKEncoder *)self _convertNumber:v5];
    }

    else
    {
      v32 = v5;
    }

    v21 = v32;
    goto LABEL_20;
  }

  v33 = NSMapGet(self->_objectLookupTable, v5);
  if (v33)
  {
    v34 = v33 - 1;
  }

  else
  {
    v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    v36 = [v5 classForCoder];
    do
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      if (![v36 supportsSecureCoding])
      {
        break;
      }

      v37 = NSStringFromClass(v36);
      [v35 addObject:v37];

      v36 = [v36 superclass];
    }

    while (v36);
    v53[0] = &unk_1F215CB60;
    v53[1] = &unk_1F215CB48;
    v54[0] = v35;
    v38 = [MEMORY[0x1E695DF90] dictionary];
    v54[1] = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];

    v34 = [(NSMutableArray *)self->_objects count];
    NSMapInsert(self->_objectLookupTable, v5, (v34 + 1));
    [(NSMutableArray *)self->_objects addObject:v39];
    if (![v5 conformsToProtocol:&unk_1F215D990] || (objc_msgSend(objc_msgSend(v5, "classForCoder"), "supportsSecureCoding") & 1) == 0)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:a2 object:self file:@"MSVOPACKEncoder.m" lineNumber:275 description:{@"Objects must support secure coding: %@", objc_msgSend(v5, "classForCoder")}];
    }

    [(NSMutableArray *)self->_wrapperStack addObject:v39];
    [v5 encodeWithCoder:self];
    [(NSMutableArray *)self->_wrapperStack removeLastObject];
  }

  if (v34 >= [(NSMutableArray *)self->_objects count])
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"MSVOPACKEncoder.m" lineNumber:280 description:@"index out of bounds"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v34 | 0x80000000];
  v40 = [v21 unsignedLongValue] ^ 0x80000000;
  if (v40 >= [(NSMutableArray *)self->_objects count])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVOPACKEncoder.m" lineNumber:282 description:@"index out of bounds"];
    goto LABEL_19;
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __34__MSVOPACKEncoder__convertObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 _convertObject:a2];
  v7 = [*(a1 + 32) _convertObject:v6];

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
}

- (id)_convertNumber:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (([v3 unsignedLongValue] & 0x80000000) != 0)
  {
    v8 = &unk_1F215CB90;
    v9[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_encodeNumber:(id)a3 forKey:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 unsignedLongValue] & 0x80000000) != 0)
  {
    v8 = [(NSMutableArray *)self->_wrapperStack lastObject];
    v9 = [v8 objectForKeyedSubscript:&unk_1F215CB48];
    v12 = &unk_1F215CB90;
    v13[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v9 setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    [(MSVOPACKEncoder *)self encodeObject:v6 forKey:v7];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)msv_setUserInfo:(id)a3
{
  v4 = [a3 copy];
  userInfo = self->_userInfo;
  self->_userInfo = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)msv_userInfo
{
  if (self->_userInfo)
  {
    return self->_userInfo;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (void)beginEncodingPartialTopLevelObject:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v6 = [v4 classForCoder];
  do
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      break;
    }

    if (![v6 supportsSecureCoding])
    {
      break;
    }

    v7 = NSStringFromClass(v6);
    [v5 addObject:v7];

    v6 = [v6 superclass];
  }

  while (v6);
  v12[0] = v5;
  v11[0] = &unk_1F215CB60;
  v11[1] = &unk_1F215CB48;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v11[2] = &unk_1F215CB78;
  v12[1] = v8;
  v12[2] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  [(NSMutableArray *)self->_wrapperStack addObject:v9];
  [(NSMutableArray *)self->_objects addObject:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasTopLevelData
{
  v2 = [(NSMutableArray *)self->_objects firstObject];
  v3 = [v2 objectForKeyedSubscript:&unk_1F215CB48];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  v8 = MEMORY[0x1E695DEF0];
  v9 = a5;
  v10 = [v8 dataWithBytes:a3 length:a4];
  [(MSVOPACKEncoder *)self encodeObject:v10 forKey:v9];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(MSVOPACKEncoder *)self _encodeNumber:v8 forKey:v7];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(MSVOPACKEncoder *)self _encodeNumber:v9 forKey:v7];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(MSVOPACKEncoder *)self _encodeNumber:v8 forKey:v7];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_objects count])
  {
    if (!v14)
    {
      goto LABEL_8;
    }

    v8 = [(NSMutableArray *)self->_wrapperStack lastObject];
    v9 = [v8 objectForKeyedSubscript:&unk_1F215CB48];
    v10 = [(MSVOPACKEncoder *)self _convertObject:v14];
    [v9 setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    if (([v7 isEqual:@"rootObject"] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"MSVOPACKEncoder.m" lineNumber:105 description:@"Missing wrapper when not root object"];
    }

    objects = self->_objects;
    v12 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)objects addObject:v12];

    v8 = [(MSVOPACKEncoder *)self _convertObject:v14];
    [(NSMutableArray *)self->_objects replaceObjectAtIndex:0 withObject:v8];
  }

LABEL_8:
}

- (id)encodedDataWithError:(id *)a3
{
  if (![(MSVOPACKEncoder *)self hasFinished])
  {
    [(MSVOPACKEncoder *)self finishEncodingWithError:a3];
  }

  encodedData = self->_encodedData;

  return encodedData;
}

- (BOOL)finishEncodingWithError:(id *)a3
{
  if ([(MSVOPACKEncoder *)self hasFinished])
  {
    return 1;
  }

  v10 = 0;
  v6 = MEMORY[0x1B26EB950](self->_objects, 0, &v10);
  encodedData = self->_encodedData;
  self->_encodedData = v6;

  if (a3)
  {
    v8 = v10 == 0;
  }

  else
  {
    v8 = 1;
  }

  v5 = v8;
  if (!v8)
  {
    *a3 = NSErrorWithOSStatusF();
  }

  [(MSVOPACKEncoder *)self setHasFinished:1];
  return v5;
}

- (MSVOPACKEncoder)init
{
  v10.receiver = self;
  v10.super_class = MSVOPACKEncoder;
  v2 = [(MSVOPACKEncoder *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    wrapperStack = v2->_wrapperStack;
    v2->_wrapperStack = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    objects = v2->_objects;
    v2->_objects = v5;

    v7 = [MEMORY[0x1E696AD18] msvIndexMapTableWithCapacity:0];
    objectLookupTable = v2->_objectLookupTable;
    v2->_objectLookupTable = v7;
  }

  return v2;
}

+ (id)encodedDataWithRootObject:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(MSVOPACKEncoder);
  v10 = v9;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  [(MSVOPACKEncoder *)v9 msv_setUserInfo:v11];

  [(MSVOPACKEncoder *)v10 encodeRootObject:v8];
  v12 = [(MSVOPACKEncoder *)v10 encodedDataWithError:a5];

  return v12;
}

@end