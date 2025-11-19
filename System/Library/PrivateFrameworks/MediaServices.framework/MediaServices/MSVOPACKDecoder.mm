@interface MSVOPACKDecoder
+ (id)decodedObjectOfClass:(Class)a3 fromData:(id)a4 userInfo:(id)a5 error:(id *)a6;
+ (id)decodedObjectOfClasses:(id)a3 fromData:(id)a4 userInfo:(id)a5 error:(id *)a6;
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (MSVOPACKDecoderDelegate)delegate;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)_decodeNumberForKey:(id)a3;
- (id)_decodeOPACKObject:(id)a3 ofClasses:(id)a4;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)decodeRootObjectOfClass:(Class)a3 error:(id *)a4;
- (id)initForReadingFromData:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (id)msv_userInfo;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (void)_validateClass:(Class)a3 fromSupportedClasses:(id)a4;
- (void)beginDecodingPartialTopLevelObjectOfClasses:(id)a3;
- (void)msv_setUserInfo:(id)a3;
@end

@implementation MSVOPACKDecoder

- (MSVOPACKDecoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_decodeNumberForKey:(id)a3
{
  wrapperStack = self->_wrapperStack;
  v5 = a3;
  v6 = [(NSMutableArray *)wrapperStack lastObject];
  v7 = [v6 objectForKeyedSubscript:&unk_1F215CA70];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8 && (_NSIsNSNumber() & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [(MSVOPACKDecoder *)self _decodeOPACKObject:v8 ofClasses:v9];

    v8 = v10;
  }

  return v8;
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

- (void)beginDecodingPartialTopLevelObjectOfClasses:(id)a3
{
  objects = self->_objects;
  v6 = a3;
  v13 = [(NSArray *)objects firstObject];
  v7 = [v13 objectForKeyedSubscript:&unk_1F215CAA0];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:366 description:@"Can't decode a partial object if it isn't."];
  }

  v9 = [v13 objectForKeyedSubscript:&unk_1F215CA88];
  v10 = [v9 firstObject];
  v11 = NSClassFromString(v10);

  [(MSVOPACKDecoder *)self _validateClass:v11 fromSupportedClasses:v6];
  [(NSMutableArray *)self->_wrapperStack addObject:v13];
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  wrapperStack = self->_wrapperStack;
  v6 = a3;
  v7 = [(NSMutableArray *)wrapperStack lastObject];
  v8 = [v7 objectForKeyedSubscript:&unk_1F215CA70];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (a4)
  {
    *a4 = [v9 length];
  }

  v10 = [v9 bytes];

  return v10;
}

- (double)decodeDoubleForKey:(id)a3
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (float)decodeFloatForKey:(id)a3
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:a3];
  v4 = [v3 longValue];

  return v4;
}

- (int)decodeIntForKey:(id)a3
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:a3];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  wrapperStack = self->_wrapperStack;
  v4 = a3;
  v5 = [(NSMutableArray *)wrapperStack lastObject];
  v6 = [v5 objectForKeyedSubscript:&unk_1F215CA70];
  v7 = [v6 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v7 BOOLValue];
  return v4;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (![v8 isEqual:@"rootObject"])
  {
    v12 = [(NSMutableArray *)self->_wrapperStack lastObject];
    v13 = [v12 objectForKeyedSubscript:&unk_1F215CA70];
    v10 = [v13 objectForKeyedSubscript:v8];

    goto LABEL_6;
  }

  v10 = [(NSArray *)self->_objects firstObject];
  if (!v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:305 description:@"No root object"];
LABEL_6:

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v7)
  {
LABEL_4:
    [(NSMutableArray *)self->_allowedClassesStack addObject:v7];
    v11 = [(MSVOPACKDecoder *)self _decodeOPACKObject:v10 ofClasses:v7];
    [(NSMutableArray *)self->_allowedClassesStack removeLastObject];
    goto LABEL_8;
  }

LABEL_7:
  v11 = [(MSVOPACKDecoder *)self _decodeOPACKObject:v10 ofClasses:0];
LABEL_8:

  objc_autoreleasePoolPop(v9);

  return v11;
}

- (id)_decodeOPACKObject:(id)a3 ofClasses:(id)a4
{
  v95 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_67;
  }

  if (!_NSIsNSNumber() || ([v7 unsignedLongValue] & 0x80000000) == 0)
  {
    if (_NSIsNSArray())
    {
      v9 = v7;
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v87 objects:v94 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v88;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v88 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v87 + 1) + 8 * i) ofClasses:v8];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v87 objects:v94 count:16];
        }

        while (v13);
      }

      goto LABEL_13;
    }

    if (!_NSIsNSDictionary())
    {
      goto LABEL_66;
    }

    v11 = v7;
    v17 = [v11 count];
    if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v18 = [v11 objectForKeyedSubscript:&unk_1F215CA70];
      if (v18)
      {
        v19 = v18;
        v20 = [v11 objectForKeyedSubscript:&unk_1F215CA88];

        if (v20)
        {
          v21 = [v11 objectForKeyedSubscript:&unk_1F215CAA0];
          v22 = [v21 BOOLValue];

          if (v22)
          {
            v68 = [MEMORY[0x1E696AAA8] currentHandler];
            [v68 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:207 description:@"Can't decode a partial object without a segmented decoder."];
          }

          v23 = [v11 objectForKeyedSubscript:&unk_1F215CA88];
          v24 = [v23 firstObject];
          v25 = [&unk_1F215CC08 objectForKeyedSubscript:v24];
          v26 = v25;
          if (v25)
          {
            v27 = v25;

            v24 = v27;
          }

          v28 = NSClassFromString(v24);
          [(MSVOPACKDecoder *)self _validateClass:v28 fromSupportedClasses:v8];
          [(NSMutableArray *)self->_wrapperStack addObject:v11];
          v10 = [[v28 alloc] initWithCoder:self];
          [(NSMutableArray *)self->_wrapperStack removeLastObject];
          [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v8];

          goto LABEL_39;
        }
      }

      goto LABEL_65;
    }

    if (v17 == 1)
    {
      v31 = [v11 objectForKeyedSubscript:&unk_1F215CAB8];

      if (v31)
      {
        v32 = [v11 objectForKeyedSubscript:&unk_1F215CAB8];
        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v32, "count")}];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v23 = v32;
        v33 = [v23 countByEnumeratingWithState:&v83 objects:v93 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v84;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v84 != v35)
              {
                objc_enumerationMutation(v23);
              }

              v37 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v83 + 1) + 8 * j) ofClasses:v8];
              [v10 addObject:v37];
            }

            v34 = [v23 countByEnumeratingWithState:&v83 objects:v93 count:16];
          }

          while (v34);
        }

LABEL_38:
        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v8];
LABEL_39:

        goto LABEL_14;
      }

      v38 = [v11 objectForKeyedSubscript:&unk_1F215CAD0];

      if (v38)
      {
        v10 = [v11 objectForKeyedSubscript:&unk_1F215CAD0];
LABEL_13:
        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v8];
LABEL_14:

        goto LABEL_67;
      }

      v39 = [v11 objectForKeyedSubscript:&unk_1F215CAE8];

      if (v39)
      {
        v23 = [v11 objectForKeyedSubscript:&unk_1F215CAE8];
        v40 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __48__MSVOPACKDecoder__decodeOPACKObject_ofClasses___block_invoke;
        v80[3] = &unk_1E79820A8;
        v80[4] = self;
        v41 = v8;
        v81 = v41;
        v82 = v40;
        v42 = v40;
        [v23 enumerateKeysAndObjectsUsingBlock:v80];
        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v41];
        v10 = [v42 copy];

        goto LABEL_39;
      }

      v43 = [v11 objectForKeyedSubscript:&unk_1F215CB00];

      if (v43)
      {
        v23 = [v11 objectForKeyedSubscript:&unk_1F215CB00];
        v44 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __48__MSVOPACKDecoder__decodeOPACKObject_ofClasses___block_invoke_40;
        v77[3] = &unk_1E79820A8;
        v77[4] = self;
        v45 = v8;
        v78 = v45;
        v46 = v44;
        v79 = v46;
        [v23 enumerateKeysAndObjectsUsingBlock:v77];
        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v45];
        v47 = v79;
        v10 = v46;

        goto LABEL_39;
      }

      v48 = [v11 objectForKeyedSubscript:&unk_1F215CB18];

      if (v48)
      {
        v49 = [v11 objectForKeyedSubscript:&unk_1F215CB18];
        v50 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v49, "count")}];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v51 = v49;
        v52 = [v51 countByEnumeratingWithState:&v73 objects:v92 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v74;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v74 != v54)
              {
                objc_enumerationMutation(v51);
              }

              v56 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v73 + 1) + 8 * k) ofClasses:v8];
              [v50 addObject:v56];
            }

            v53 = [v51 countByEnumeratingWithState:&v73 objects:v92 count:16];
          }

          while (v53);
        }

        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v8];
        v10 = [v50 copy];

        goto LABEL_14;
      }

      v57 = [v11 objectForKeyedSubscript:&unk_1F215CB30];

      if (v57)
      {
        v58 = [v11 objectForKeyedSubscript:&unk_1F215CB30];
        v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v58, "count")}];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v23 = v58;
        v59 = [v23 countByEnumeratingWithState:&v69 objects:v91 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v70;
          do
          {
            for (m = 0; m != v60; ++m)
            {
              if (*v70 != v61)
              {
                objc_enumerationMutation(v23);
              }

              v63 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v69 + 1) + 8 * m) ofClasses:v8, v69];
              [v10 addObject:v63];
            }

            v60 = [v23 countByEnumeratingWithState:&v69 objects:v91 count:16];
          }

          while (v60);
        }

        goto LABEL_38;
      }

      v64 = [MEMORY[0x1E696AAA8] currentHandler];
      [v64 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:289 description:{@"Data key exists, but unknown object type."}];
    }

LABEL_65:
    v65 = [MEMORY[0x1E696AAA8] currentHandler];
    [v65 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:291 description:@"Unknown encoded dictionary literal."];

LABEL_66:
    [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v8];
    v10 = v7;
    goto LABEL_67;
  }

  v29 = [v7 unsignedLongValue];
  v10 = NSMapGet(self->_objectLookupTable, (v29 ^ 0x80000000));
  if (!v10)
  {
    v30 = [(NSArray *)self->_objects objectAtIndexedSubscript:v29 ^ 0x80000000];
    v10 = [(MSVOPACKDecoder *)self _decodeOPACKObject:v30 ofClasses:v8];
    NSMapInsert(self->_objectLookupTable, (v29 ^ 0x80000000), v10);
  }

  [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:v8];
LABEL_67:

  v66 = *MEMORY[0x1E69E9840];

  return v10;
}

void __48__MSVOPACKDecoder__decodeOPACKObject_ofClasses___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v9 = [v5 _decodeOPACKObject:a2 ofClasses:v6];
  v8 = [*(a1 + 32) _decodeOPACKObject:v7 ofClasses:*(a1 + 40)];

  [*(a1 + 48) setObject:v8 forKeyedSubscript:v9];
}

void __48__MSVOPACKDecoder__decodeOPACKObject_ofClasses___block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v9 = [v5 _decodeOPACKObject:a2 ofClasses:v6];
  v8 = [*(a1 + 32) _decodeOPACKObject:v7 ofClasses:*(a1 + 40)];

  [*(a1 + 48) setObject:v8 forKeyedSubscript:v9];
}

- (void)_validateClass:(Class)a3 fromSupportedClasses:(id)a4
{
  v10 = a4;
  if (a3)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(objc_class *)a3 supportsSecureCoding]& 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:162 description:{@"Class %@ does not support secure coding.", a3}];
    }

    v7 = a3;
    while (([v10 containsObject:v7] & 1) == 0)
    {
      v7 = [(objc_class *)v7 superclass];
      if (!v7)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:170 description:{@"Class %@ does not match supported classes: %@", a3, v10}];

        break;
      }
    }
  }
}

- (id)decodeRootObjectOfClass:(Class)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v7 = [(MSVOPACKDecoder *)self decodeRootObjectOfClasses:v6 error:a4];

  return v7;
}

- (BOOL)containsValueForKey:(id)a3
{
  wrapperStack = self->_wrapperStack;
  v4 = a3;
  v5 = [(NSMutableArray *)wrapperStack lastObject];
  v6 = [v5 objectForKeyedSubscript:&unk_1F215CA70];
  v7 = [v6 allKeys];
  v8 = [v7 containsObject:v4];

  return v8;
}

- (id)initForReadingFromData:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v31[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = MSVOPACKDecoder;
  v10 = [(MSVOPACKDecoder *)&v29 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v9 copy];
  v12 = v11;
  v13 = (v11 ? v11 : MEMORY[0x1E695E0F8]);
  objc_storeStrong(&v10->_userInfo, v13);

  v14 = OPACKDecodeData();
  objects = v10->_objects;
  v10->_objects = v14;

  v16 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
  objectLookupTable = v10->_objectLookupTable;
  v10->_objectLookupTable = v16;

  v18 = [MEMORY[0x1E695DF70] array];
  wrapperStack = v10->_wrapperStack;
  v10->_wrapperStack = v18;

  v20 = [MEMORY[0x1E695DF70] array];
  allowedClassesStack = v10->_allowedClassesStack;
  v10->_allowedClassesStack = v20;

  v22 = v10->_objects;
  if ((_NSIsNSArray() & 1) == 0)
  {
    if (a5)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = MSVOPACKDecoderErrorDomain;
      v30 = *MEMORY[0x1E696A278];
      v31[0] = @"Decoded OPACK data did not contain an array as the root object.";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *a5 = [v24 errorWithDomain:v25 code:1 userInfo:v26];
    }

    v23 = 0;
  }

  else
  {
LABEL_6:
    v23 = v10;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (id)decodedObjectOfClasses:(id)a3 fromData:(id)a4 userInfo:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[MSVOPACKDecoder alloc] initForReadingFromData:v10 userInfo:v9 error:a6];

  v13 = [v12 decodeRootObjectOfClasses:v11 error:a6];

  return v13;
}

+ (id)decodedObjectOfClass:(Class)a3 fromData:(id)a4 userInfo:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x1E695DFD8];
  v11 = a5;
  v12 = a4;
  v13 = [v10 setWithObject:a3];
  v14 = [a1 decodedObjectOfClasses:v13 fromData:v12 userInfo:v11 error:a6];

  return v14;
}

@end