@interface MSVOPACKDecoder
+ (id)decodedObjectOfClass:(Class)class fromData:(id)data userInfo:(id)info error:(id *)error;
+ (id)decodedObjectOfClasses:(id)classes fromData:(id)data userInfo:(id)info error:(id *)error;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (MSVOPACKDecoderDelegate)delegate;
- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)_decodeNumberForKey:(id)key;
- (id)_decodeOPACKObject:(id)object ofClasses:(id)classes;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)decodeRootObjectOfClass:(Class)class error:(id *)error;
- (id)initForReadingFromData:(id)data userInfo:(id)info error:(id *)error;
- (id)msv_userInfo;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (void)_validateClass:(Class)class fromSupportedClasses:(id)classes;
- (void)beginDecodingPartialTopLevelObjectOfClasses:(id)classes;
- (void)msv_setUserInfo:(id)info;
@end

@implementation MSVOPACKDecoder

- (MSVOPACKDecoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_decodeNumberForKey:(id)key
{
  wrapperStack = self->_wrapperStack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)wrapperStack lastObject];
  v7 = [lastObject objectForKeyedSubscript:&unk_1F215CA70];
  v8 = [v7 objectForKeyedSubscript:keyCopy];

  if (v8 && (_NSIsNSNumber() & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [(MSVOPACKDecoder *)self _decodeOPACKObject:v8 ofClasses:v9];

    v8 = v10;
  }

  return v8;
}

- (void)msv_setUserInfo:(id)info
{
  v4 = [info copy];
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

- (void)beginDecodingPartialTopLevelObjectOfClasses:(id)classes
{
  objects = self->_objects;
  classesCopy = classes;
  firstObject = [(NSArray *)objects firstObject];
  v7 = [firstObject objectForKeyedSubscript:&unk_1F215CAA0];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:366 description:@"Can't decode a partial object if it isn't."];
  }

  v9 = [firstObject objectForKeyedSubscript:&unk_1F215CA88];
  firstObject2 = [v9 firstObject];
  v11 = NSClassFromString(firstObject2);

  [(MSVOPACKDecoder *)self _validateClass:v11 fromSupportedClasses:classesCopy];
  [(NSMutableArray *)self->_wrapperStack addObject:firstObject];
}

- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length
{
  wrapperStack = self->_wrapperStack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)wrapperStack lastObject];
  v8 = [lastObject objectForKeyedSubscript:&unk_1F215CA70];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  if (length)
  {
    *length = [v9 length];
  }

  bytes = [v9 bytes];

  return bytes;
}

- (double)decodeDoubleForKey:(id)key
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (float)decodeFloatForKey:(id)key
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:key];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int)decodeInt32ForKey:(id)key
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:key];
  longValue = [v3 longValue];

  return longValue;
}

- (int)decodeIntForKey:(id)key
{
  v3 = [(MSVOPACKDecoder *)self _decodeNumberForKey:key];
  intValue = [v3 intValue];

  return intValue;
}

- (BOOL)decodeBoolForKey:(id)key
{
  wrapperStack = self->_wrapperStack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)wrapperStack lastObject];
  v6 = [lastObject objectForKeyedSubscript:&unk_1F215CA70];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  LOBYTE(keyCopy) = [v7 BOOLValue];
  return keyCopy;
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  classesCopy = classes;
  keyCopy = key;
  v9 = objc_autoreleasePoolPush();
  if (![keyCopy isEqual:@"rootObject"])
  {
    lastObject = [(NSMutableArray *)self->_wrapperStack lastObject];
    v13 = [lastObject objectForKeyedSubscript:&unk_1F215CA70];
    firstObject = [v13 objectForKeyedSubscript:keyCopy];

    goto LABEL_6;
  }

  firstObject = [(NSArray *)self->_objects firstObject];
  if (!firstObject)
  {
    lastObject = [MEMORY[0x1E696AAA8] currentHandler];
    [lastObject handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:305 description:@"No root object"];
LABEL_6:

    if (classesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (classesCopy)
  {
LABEL_4:
    [(NSMutableArray *)self->_allowedClassesStack addObject:classesCopy];
    v11 = [(MSVOPACKDecoder *)self _decodeOPACKObject:firstObject ofClasses:classesCopy];
    [(NSMutableArray *)self->_allowedClassesStack removeLastObject];
    goto LABEL_8;
  }

LABEL_7:
  v11 = [(MSVOPACKDecoder *)self _decodeOPACKObject:firstObject ofClasses:0];
LABEL_8:

  objc_autoreleasePoolPop(v9);

  return v11;
}

- (id)_decodeOPACKObject:(id)object ofClasses:(id)classes
{
  v95 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  classesCopy = classes;
  if (!objectCopy)
  {
    v10 = 0;
    goto LABEL_67;
  }

  if (!_NSIsNSNumber() || ([objectCopy unsignedLongValue] & 0x80000000) == 0)
  {
    if (_NSIsNSArray())
    {
      v9 = objectCopy;
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

            v16 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v87 + 1) + 8 * i) ofClasses:classesCopy];
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

    v11 = objectCopy;
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
          bOOLValue = [v21 BOOLValue];

          if (bOOLValue)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:207 description:@"Can't decode a partial object without a segmented decoder."];
          }

          v23 = [v11 objectForKeyedSubscript:&unk_1F215CA88];
          firstObject = [v23 firstObject];
          v25 = [&unk_1F215CC08 objectForKeyedSubscript:firstObject];
          v26 = v25;
          if (v25)
          {
            v27 = v25;

            firstObject = v27;
          }

          v28 = NSClassFromString(firstObject);
          [(MSVOPACKDecoder *)self _validateClass:v28 fromSupportedClasses:classesCopy];
          [(NSMutableArray *)self->_wrapperStack addObject:v11];
          v10 = [[v28 alloc] initWithCoder:self];
          [(NSMutableArray *)self->_wrapperStack removeLastObject];
          [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:classesCopy];

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

              v37 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v83 + 1) + 8 * j) ofClasses:classesCopy];
              [v10 addObject:v37];
            }

            v34 = [v23 countByEnumeratingWithState:&v83 objects:v93 count:16];
          }

          while (v34);
        }

LABEL_38:
        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:classesCopy];
LABEL_39:

        goto LABEL_14;
      }

      v38 = [v11 objectForKeyedSubscript:&unk_1F215CAD0];

      if (v38)
      {
        v10 = [v11 objectForKeyedSubscript:&unk_1F215CAD0];
LABEL_13:
        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:classesCopy];
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
        v41 = classesCopy;
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
        v45 = classesCopy;
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

              v56 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v73 + 1) + 8 * k) ofClasses:classesCopy];
              [v50 addObject:v56];
            }

            v53 = [v51 countByEnumeratingWithState:&v73 objects:v92 count:16];
          }

          while (v53);
        }

        [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:classesCopy];
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

              v63 = [(MSVOPACKDecoder *)self _decodeOPACKObject:*(*(&v69 + 1) + 8 * m) ofClasses:classesCopy, v69];
              [v10 addObject:v63];
            }

            v60 = [v23 countByEnumeratingWithState:&v69 objects:v91 count:16];
          }

          while (v60);
        }

        goto LABEL_38;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:289 description:{@"Data key exists, but unknown object type."}];
    }

LABEL_65:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:291 description:@"Unknown encoded dictionary literal."];

LABEL_66:
    [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:classesCopy];
    v10 = objectCopy;
    goto LABEL_67;
  }

  unsignedLongValue = [objectCopy unsignedLongValue];
  v10 = NSMapGet(self->_objectLookupTable, (unsignedLongValue ^ 0x80000000));
  if (!v10)
  {
    0x80000000 = [(NSArray *)self->_objects objectAtIndexedSubscript:unsignedLongValue ^ 0x80000000];
    v10 = [(MSVOPACKDecoder *)self _decodeOPACKObject:0x80000000 ofClasses:classesCopy];
    NSMapInsert(self->_objectLookupTable, (unsignedLongValue ^ 0x80000000), v10);
  }

  [(MSVOPACKDecoder *)self _validateClass:objc_opt_class() fromSupportedClasses:classesCopy];
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

- (void)_validateClass:(Class)class fromSupportedClasses:(id)classes
{
  classesCopy = classes;
  if (class)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(objc_class *)class supportsSecureCoding]& 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:162 description:{@"Class %@ does not support secure coding.", class}];
    }

    classCopy = class;
    while (([classesCopy containsObject:classCopy] & 1) == 0)
    {
      classCopy = [(objc_class *)classCopy superclass];
      if (!classCopy)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVOPACKDecoder.m" lineNumber:170 description:{@"Class %@ does not match supported classes: %@", class, classesCopy}];

        break;
      }
    }
  }
}

- (id)decodeRootObjectOfClass:(Class)class error:(id *)error
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:class];
  v7 = [(MSVOPACKDecoder *)self decodeRootObjectOfClasses:v6 error:error];

  return v7;
}

- (BOOL)containsValueForKey:(id)key
{
  wrapperStack = self->_wrapperStack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)wrapperStack lastObject];
  v6 = [lastObject objectForKeyedSubscript:&unk_1F215CA70];
  allKeys = [v6 allKeys];
  v8 = [allKeys containsObject:keyCopy];

  return v8;
}

- (id)initForReadingFromData:(id)data userInfo:(id)info error:(id *)error
{
  v31[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = MSVOPACKDecoder;
  v10 = [(MSVOPACKDecoder *)&v29 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [infoCopy copy];
  v12 = v11;
  v13 = (v11 ? v11 : MEMORY[0x1E695E0F8]);
  objc_storeStrong(&v10->_userInfo, v13);

  v14 = OPACKDecodeData();
  objects = v10->_objects;
  v10->_objects = v14;

  v16 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
  objectLookupTable = v10->_objectLookupTable;
  v10->_objectLookupTable = v16;

  array = [MEMORY[0x1E695DF70] array];
  wrapperStack = v10->_wrapperStack;
  v10->_wrapperStack = array;

  array2 = [MEMORY[0x1E695DF70] array];
  allowedClassesStack = v10->_allowedClassesStack;
  v10->_allowedClassesStack = array2;

  v22 = v10->_objects;
  if ((_NSIsNSArray() & 1) == 0)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = MSVOPACKDecoderErrorDomain;
      v30 = *MEMORY[0x1E696A278];
      v31[0] = @"Decoded OPACK data did not contain an array as the root object.";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *error = [v24 errorWithDomain:v25 code:1 userInfo:v26];
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

+ (id)decodedObjectOfClasses:(id)classes fromData:(id)data userInfo:(id)info error:(id *)error
{
  infoCopy = info;
  dataCopy = data;
  classesCopy = classes;
  v12 = [[MSVOPACKDecoder alloc] initForReadingFromData:dataCopy userInfo:infoCopy error:error];

  v13 = [v12 decodeRootObjectOfClasses:classesCopy error:error];

  return v13;
}

+ (id)decodedObjectOfClass:(Class)class fromData:(id)data userInfo:(id)info error:(id *)error
{
  v10 = MEMORY[0x1E695DFD8];
  infoCopy = info;
  dataCopy = data;
  v13 = [v10 setWithObject:class];
  v14 = [self decodedObjectOfClasses:v13 fromData:dataCopy userInfo:infoCopy error:error];

  return v14;
}

@end