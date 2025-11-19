@interface CPLArchiver
+ (id)_displayableArrayForArray:(id)a3;
+ (id)_displayableObjectForObject:(id)a3;
+ (id)archivedDataWithRootObject:(id)a3;
+ (id)archivedDataWithRootObject:(id)a3 usingBlock:(id)a4;
+ (id)archivedPropertyListWithRootObject:(id)a3;
+ (id)archivedPropertyListWithRootObject:(id)a3 usingBlock:(id)a4;
+ (id)displayableDictionaryForDictionary:(id)a3;
+ (id)displayablePropertyListWithRootObject:(id)a3;
+ (id)fullDescriptionForObject:(id)a3;
+ (id)unarchiveObjectWithData:(id)a3 ofClass:(Class)a4;
+ (id)unarchivedObjectWithPropertyList:(id)a3 ofClass:(Class)a4;
+ (void)_initializeSmallKeyMapping;
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (CGPoint)decodePointForKey:(id)a3;
- (CGRect)decodeRectForKey:(id)a3;
- (CGSize)decodeSizeForKey:(id)a3;
- (CPLArchiver)initWithArchive:(id)a3 rootClass:(Class)a4;
- (CPLArchiver)initWithRootObject:(id)a3 forDisplay:(BOOL)a4;
- (CPLArchiver)initWithRootObject:(id)a3 forDisplay:(BOOL)a4 block:(id)a5;
- (IMP)_createContext;
- (NSString)archiverContext;
- (_BYTE)_encodeKey:(_BYTE *)a1;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)_decodeKey:(uint64_t)a3 class:(void *)a4 inDictionary:;
- (id)decodeObject;
- (id)decodeObjectForKey:(id)a3;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)decodePropertyList;
- (id)decodePropertyListForKey:(id)a3;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
- (void)decodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(void *)a5;
- (void)decodeBytesWithReturnedLength:(unint64_t *)a3;
- (void)decodeValuesOfObjCTypes:(const char *)a3;
- (void)encodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(const void *)a5;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeBycopyObject:(id)a3;
- (void)encodeByrefObject:(id)a3;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)encodeConditionalObject:(id)a3;
- (void)encodeConditionalObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodePoint:(CGPoint)a3 forKey:(id)a4;
- (void)encodePropertyList:(id)a3;
- (void)encodeRect:(CGRect)a3 forKey:(id)a4;
- (void)encodeRootObject:(id)a3;
- (void)encodeSize:(CGSize)a3 forKey:(id)a4;
- (void)encodeValuesOfObjCTypes:(const char *)a3;
@end

@implementation CPLArchiver

- (CGRect)decodeRectForKey:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1801);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:v5];
  archiveCursor = self->_archiveCursor;
  if (v6)
  {
    v8 = [archiveCursor objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [self->_archiveCursor objectForKeyedSubscript:v5];
    }

    v11 = v10;
  }

  else
  {
    v11 = [archiveCursor objectForKeyedSubscript:v5];
  }

  if (self->_archiveCursor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [(CPLArchiver *)self archiverContext];
          v32 = NSStringFromSelector(a2);
          v33 = self->_archiveCursor;
          v34 = objc_opt_class();
          v35 = self->_archiveCursor;
          *buf = 138413058;
          v47 = v31;
          v48 = 2112;
          v49 = v32;
          v50 = 2112;
          v51 = v34;
          v52 = 2112;
          v53 = v35;
          v36 = v34;
          _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "%@: Unexpected dictionary for %@. Found %@: '%@'", buf, 0x2Au);
        }
      }

      v37 = NSStringFromSelector(a2);
      v38 = self->_archiveCursor;
      objc_opt_class();
      v45 = self->_archiveCursor;
      _CPLArchiverFailure(self, @"Unexpected dictionary for %@. Found %@: '%@'", v39, v40, v41, v42, v43, v44, v37);
    }

    v12 = v11;
    v13 = [v12 objectForKeyedSubscript:@"x"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v12 objectForKeyedSubscript:@"y"];
    [v16 doubleValue];
    v18 = v17;

    v19 = [v12 objectForKeyedSubscript:@"w"];
    [v19 doubleValue];
    v21 = v20;

    v22 = [v12 objectForKeyedSubscript:@"h"];

    [v22 doubleValue];
    v24 = v23;
  }

  else
  {
    v15 = *MEMORY[0x1E696AA80];
    v18 = *(MEMORY[0x1E696AA80] + 8);
    v21 = *(MEMORY[0x1E696AA80] + 16);
    v24 = *(MEMORY[0x1E696AA80] + 24);
  }

  v25 = *MEMORY[0x1E69E9840];
  v26 = v15;
  v27 = v18;
  v28 = v21;
  v29 = v24;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGSize)decodeSizeForKey:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1799);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:v5];
  archiveCursor = self->_archiveCursor;
  if (v6)
  {
    v8 = [archiveCursor objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [self->_archiveCursor objectForKeyedSubscript:v5];
    }

    v11 = v10;
  }

  else
  {
    v11 = [archiveCursor objectForKeyedSubscript:v5];
  }

  if (self->_archiveCursor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [(CPLArchiver *)self archiverContext];
          v24 = NSStringFromSelector(a2);
          v25 = self->_archiveCursor;
          v26 = objc_opt_class();
          v27 = self->_archiveCursor;
          *buf = 138413058;
          v39 = v23;
          v40 = 2112;
          v41 = v24;
          v42 = 2112;
          v43 = v26;
          v44 = 2112;
          v45 = v27;
          v28 = v26;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "%@: Unexpected dictionary for %@. Found %@: '%@'", buf, 0x2Au);
        }
      }

      v29 = NSStringFromSelector(a2);
      v30 = self->_archiveCursor;
      objc_opt_class();
      v37 = self->_archiveCursor;
      _CPLArchiverFailure(self, @"Unexpected dictionary for %@. Found %@: '%@'", v31, v32, v33, v34, v35, v36, v29);
    }

    v12 = v11;
    v13 = [v12 objectForKeyedSubscript:@"w"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v12 objectForKeyedSubscript:@"h"];

    [v16 doubleValue];
    v18 = v17;
  }

  else
  {
    v15 = *MEMORY[0x1E696AA88];
    v18 = *(MEMORY[0x1E696AA88] + 8);
  }

  v19 = *MEMORY[0x1E69E9840];
  v20 = v15;
  v21 = v18;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGPoint)decodePointForKey:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1794);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:v5];
  archiveCursor = self->_archiveCursor;
  if (v6)
  {
    v8 = [archiveCursor objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [self->_archiveCursor objectForKeyedSubscript:v5];
    }

    v11 = v10;
  }

  else
  {
    v11 = [archiveCursor objectForKeyedSubscript:v5];
  }

  if (self->_archiveCursor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [(CPLArchiver *)self archiverContext];
          v24 = NSStringFromSelector(a2);
          v25 = self->_archiveCursor;
          v26 = objc_opt_class();
          v27 = self->_archiveCursor;
          *buf = 138413058;
          v39 = v23;
          v40 = 2112;
          v41 = v24;
          v42 = 2112;
          v43 = v26;
          v44 = 2112;
          v45 = v27;
          v28 = v26;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "%@: Unexpected dictionary for %@. Found %@: '%@'", buf, 0x2Au);
        }
      }

      v29 = NSStringFromSelector(a2);
      v30 = self->_archiveCursor;
      objc_opt_class();
      v37 = self->_archiveCursor;
      _CPLArchiverFailure(self, @"Unexpected dictionary for %@. Found %@: '%@'", v31, v32, v33, v34, v35, v36, v29);
    }

    v12 = v11;
    v13 = [v12 objectForKeyedSubscript:@"x"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v12 objectForKeyedSubscript:@"y"];

    [v16 doubleValue];
    v18 = v17;
  }

  else
  {
    v15 = *MEMORY[0x1E696AA78];
    v18 = *(MEMORY[0x1E696AA78] + 8);
  }

  v19 = *MEMORY[0x1E69E9840];
  v20 = v15;
  v21 = v18;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)encodeRect:(CGRect)a3 forKey:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25[4] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = v9;
  if (self->_forDisplay)
  {
    v11 = v9;
LABEL_10:
    archiveCursor = self->_archiveCursor;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v16 = NSStringFromRect(v26);
    [archiveCursor setObject:v16 forKey:v10];

    goto LABEL_11;
  }

  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1792);
  }

  v12 = [_keyToSmallKeyMapping objectForKey:v10];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v11 = v14;

  if (self->_forDisplay)
  {
    v10 = v11;
    goto LABEL_10;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!NSIsEmptyRect(v27))
  {
    v18 = self->_archiveCursor;
    v24[0] = @"x";
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:x];
    v25[0] = v19;
    v24[1] = @"y";
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:y];
    v25[1] = v20;
    v24[2] = @"w";
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    v25[2] = v21;
    v24[3] = @"h";
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    v25[3] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
    [v18 setObject:v23 forKey:v11];
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)encodeSize:(CGSize)a3 forKey:(id)a4
{
  height = a3.height;
  width = a3.width;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (self->_forDisplay)
  {
    v9 = v7;
LABEL_10:
    archiveCursor = self->_archiveCursor;
    v22.width = width;
    v22.height = height;
    v14 = NSStringFromSize(v22);
    [archiveCursor setObject:v14 forKey:v8];

    goto LABEL_11;
  }

  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1784);
  }

  v10 = [_keyToSmallKeyMapping objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v9 = v12;

  if (self->_forDisplay)
  {
    v8 = v9;
    goto LABEL_10;
  }

  v23.width = width;
  v23.height = height;
  if (!NSEqualSizes(v23, *MEMORY[0x1E696AA88]))
  {
    v16 = self->_archiveCursor;
    v20[0] = @"w";
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    v20[1] = @"h";
    v21[0] = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    v21[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v16 setObject:v19 forKey:v9];
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)encodePoint:(CGPoint)a3 forKey:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (self->_forDisplay)
  {
    v9 = v7;
LABEL_10:
    archiveCursor = self->_archiveCursor;
    v22.x = x;
    v22.y = y;
    v14 = NSStringFromPoint(v22);
    [archiveCursor setObject:v14 forKey:v8];

    goto LABEL_11;
  }

  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1776);
  }

  v10 = [_keyToSmallKeyMapping objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v9 = v12;

  if (self->_forDisplay)
  {
    v8 = v9;
    goto LABEL_10;
  }

  v23.x = x;
  v23.y = y;
  if (!NSEqualPoints(v23, *MEMORY[0x1E696AA78]))
  {
    v16 = self->_archiveCursor;
    v20[0] = @"x";
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:x];
    v20[1] = @"y";
    v21[0] = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:y];
    v21[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v16 setObject:v19 forKey:v9];
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)decodePropertyListForKey:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1774);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:v5];
  archiveCursor = self->_archiveCursor;
  if (v6)
  {
    v8 = [archiveCursor objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      [self->_archiveCursor objectForKeyedSubscript:v5];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    [archiveCursor objectForKeyedSubscript:v5];
    objc_claimAutoreleasedReturnValue();
  }

  (self->_pushContext)(self->_context, sel_addObject_, v5);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(CPLArchiver *)self archiverContext];
      v13 = objc_opt_class();
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v16 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v17, v18, v19, v20, v21, v22, v16);
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1766);
  }

  v9 = [_keyToSmallKeyMapping objectForKey:v8];
  archiveCursor = self->_archiveCursor;
  if (v9)
  {
    v11 = [archiveCursor objectForKeyedSubscript:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [self->_archiveCursor objectForKeyedSubscript:v8];
    }

    v14 = v13;
  }

  else
  {
    v14 = [archiveCursor objectForKeyedSubscript:v8];
  }

  if ([v7 count] == 1)
  {
    v15 = [v7 anyObject];
    v16 = [(CPLArchiver *)self decodeObjectOfClass:v15 forKey:v8];
  }

  else
  {
    v17 = v14;
    if (v17)
    {
      if (([v7 containsObject:objc_opt_class()] & 1) == 0 && !objc_msgSend(v7, "containsObject:", objc_opt_class()))
      {
        v45 = self->_archiveCursor;
        v46 = self->_archiveCursor;
        self->_archiveCursor = 0;

        (self->_pushContext)(self->_context, sel_addObject_, v8);
        if ((_CPLSilentLogging & 1) == 0)
        {
          v47 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = [(CPLArchiver *)self archiverContext];
            v49 = NSStringFromSelector(a2);
            *buf = 138412802;
            v73 = v48;
            v74 = 2112;
            v75 = v7;
            v76 = 2112;
            v77 = v49;
            _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_ERROR, "%@: %@ is not supported for %@", buf, 0x20u);
          }
        }

        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        _CPLArchiverFailure(self, @"%@ is not supported for %@", v50, v51, v52, v53, v54, v55, v7);
      }

      v60 = v17;
      v18 = v17;
      objc_opt_class();
      v61 = v18;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v36 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = [(CPLArchiver *)self archiverContext];
            *buf = 138412802;
            v73 = v37;
            v74 = 2112;
            v75 = objc_opt_class();
            v76 = 2112;
            v77 = v18;
            v38 = v75;
            _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_ERROR, "%@: Unexpected array. Found %@: '%@'", buf, 0x20u);
          }
        }

        v56 = objc_opt_class();
        _CPLArchiverFailure(self, @"Unexpected array. Found %@: '%@'", v39, v40, v41, v42, v43, v44, v56);
      }

      v58 = v14;
      v57 = self->_archiveCursor;
      v19 = self->_archiveCursor;
      self->_archiveCursor = 0;

      (self->_pushContext)(self->_context, sel_addObject_, v8);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v59 = v7;
      v20 = v7;
      v21 = [v20 countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v67;
LABEL_17:
        v24 = 0;
        while (1)
        {
          if (*v67 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v66 + 1) + 8 * v24);
          if (v25 != objc_opt_class())
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [v20 countByEnumeratingWithState:&v66 objects:v71 count:16];
            if (v22)
            {
              goto LABEL_17;
            }

            v25 = 0;
            break;
          }
        }

        v18 = v61;
      }

      else
      {
        v25 = 0;
      }

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
      if (v25)
      {
        (self->_pushContext)(self->_context, sel_addObject_, v25);
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v26 = v18;
        v27 = [v26 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v63;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v63 != v29)
              {
                objc_enumerationMutation(v26);
              }

              objc_storeStrong(&self->_archiveCursor, *(*(&v62 + 1) + 8 * i));
              v31 = [[v25 alloc] initWithCPLArchiver:self];
              [v16 addObject:v31];
            }

            v28 = [v26 countByEnumeratingWithState:&v62 objects:v70 count:16];
          }

          while (v28);
        }

        v32 = self->_archiveCursor;
        self->_archiveCursor = 0;

        (self->_popContext)(self->_context, sel_removeLastObject);
        v18 = v61;
      }

      (self->_popContext)(self->_context, sel_removeLastObject);
      v33 = self->_archiveCursor;
      self->_archiveCursor = v57;

      v14 = v58;
      v7 = v59;
      v17 = v60;
    }

    else
    {
      v16 = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4
{
  v6 = a4;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1764);
  }

  v7 = [_keyToSmallKeyMapping objectForKey:v6];
  archiveCursor = self->_archiveCursor;
  if (v7)
  {
    v9 = [archiveCursor objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [self->_archiveCursor objectForKeyedSubscript:v6];
    }

    v12 = v11;
  }

  else
  {
    v12 = [archiveCursor objectForKeyedSubscript:v6];
  }

  v13 = v12;
  if (v13)
  {
    v14 = self->_archiveCursor;
    objc_storeStrong(&self->_archiveCursor, v12);
    (self->_pushContext)(self->_context, sel_addObject_, v6);
    (self->_pushContext)(self->_context, sel_addObject_, a3);
    v15 = [[a3 alloc] initWithCPLArchiver:self];
    (self->_popContext)(self->_context, sel_removeLastObject);
    (self->_popContext)(self->_context, sel_removeLastObject);
    v16 = self->_archiveCursor;
    self->_archiveCursor = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1762);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  v11 = [v10 integerValue];
  return v11;
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_forDisplay)
  {
    v13 = v6;
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1760);
      v7 = v13;
    }

    v8 = [_keyToSmallKeyMapping objectForKey:v7];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v13;
    }

    v10 = v9;

    v7 = v10;
  }

  if (a3)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66C30]();
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1758);
  }

  v7 = [_keyToSmallKeyMapping objectForKey:v6];
  archiveCursor = self->_archiveCursor;
  if (v7)
  {
    v9 = [archiveCursor objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      [self->_archiveCursor objectForKeyedSubscript:v6];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    [archiveCursor objectForKeyedSubscript:v6];
    objc_claimAutoreleasedReturnValue();
  }

  (self->_pushContext)(self->_context, sel_addObject_, v6);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CPLArchiver *)self archiverContext];
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138413058;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v17 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v18, v19, v20, v21, v22, v23, v17);
}

- (double)decodeDoubleForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1756);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  [v10 doubleValue];
  v12 = v11;

  return v12;
}

- (float)decodeFloatForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1754);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  [v10 floatValue];
  v12 = v11;

  return v12;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1752);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  v11 = [v10 longLongValue];
  return v11;
}

- (int)decodeInt32ForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1750);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  v11 = [v10 intValue];
  return v11;
}

- (int)decodeIntForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1748);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  v11 = [v10 intValue];
  return v11;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v4 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1746);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:v4];
  archiveCursor = self->_archiveCursor;
  if (v5)
  {
    v7 = [archiveCursor objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [self->_archiveCursor objectForKeyedSubscript:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:v4];
  }

  v11 = [v10 BOOLValue];
  return v11;
}

- (id)decodeObjectForKey:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1744);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:v5];
  archiveCursor = self->_archiveCursor;
  if (v6)
  {
    v8 = [archiveCursor objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      [self->_archiveCursor objectForKeyedSubscript:v5];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    [archiveCursor objectForKeyedSubscript:v5];
    objc_claimAutoreleasedReturnValue();
  }

  (self->_pushContext)(self->_context, sel_addObject_, v5);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(CPLArchiver *)self archiverContext];
      v13 = objc_opt_class();
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v16 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v17, v18, v19, v20, v21, v22, v16);
}

- (BOOL)containsValueForKey:(id)a3
{
  v3 = [self->_archiveCursor objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a5;
  if (!self->_forDisplay)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1742);
    }

    v8 = [_keyToSmallKeyMapping objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;

    v7 = v11;
  }

  (self->_pushContext)(self->_context, sel_addObject_, v7);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CPLArchiver *)self archiverContext];
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v17 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v18, v19, v20, v21, v22, v23, v17);
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_forDisplay)
  {
    v13 = v6;
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1740);
    }

    v8 = [_keyToSmallKeyMapping objectForKey:?];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v13;
    }

    v10 = v9;

    v7 = v10;
  }

  if (a3 != 0.0)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (!self->_forDisplay)
  {
    v14 = v6;
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1738);
    }

    v9 = [_keyToSmallKeyMapping objectForKey:?];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v14;
    }

    v11 = v10;

    v8 = v11;
  }

  if (a3 != 0.0)
  {
    archiveCursor = self->_archiveCursor;
    *&v7 = a3;
    v15 = v8;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    [archiveCursor setObject:v13 forKey:v15];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_forDisplay)
  {
    v13 = v6;
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1736);
      v7 = v13;
    }

    v8 = [_keyToSmallKeyMapping objectForKey:v7];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v13;
    }

    v10 = v9;

    v7 = v10;
  }

  if (a3)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66C30]();
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_forDisplay)
  {
    v13 = v6;
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1729);
    }

    v8 = [_keyToSmallKeyMapping objectForKey:?];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v13;
    }

    v10 = v9;

    v7 = v10;
  }

  if (v4)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)encodeConditionalObject:(id)a3 forKey:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_forDisplay)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1724);
    }

    v9 = [_keyToSmallKeyMapping objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;

    v8 = v12;
  }

  (self->_pushContext)(self->_context, sel_addObject_, v8);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(CPLArchiver *)self archiverContext];
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromSelector(a2);
      *buf = 138413058;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v18 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v19, v20, v21, v22, v23, v24, v18);
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (!self->_forDisplay)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1722);
    }

    v7 = [_keyToSmallKeyMapping objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;

    v6 = v10;
  }

  (self->_pushContext)(self->_context, sel_addObject_, v6);
  v11 = [v13 replacementObjectForCoder:self];
  v12 = [v11 plistArchiveWithCPLArchiver:self];

  (self->_popContext)(self->_context, sel_removeLastObject);
  if (v12)
  {
    [self->_archiveCursor setObject:v12 forKey:v6];
  }
}

- (id)decodePropertyList
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(CPLArchiver *)self archiverContext];
      v6 = objc_opt_class();
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v9 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v10, v11, v12, v13, v14, v15, v9);
}

- (void)encodePropertyList:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)decodeBytesWithReturnedLength:(unint64_t *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(CPLArchiver *)self archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v10 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v11, v12, v13, v14, v15, v16, v10);
}

- (void)decodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(void *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(CPLArchiver *)self archiverContext];
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v12 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)decodeValuesOfObjCTypes:(const char *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(CPLArchiver *)self archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v10 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v11, v12, v13, v14, v15, v16, v10);
}

- (id)decodeObject
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(CPLArchiver *)self archiverContext];
      v6 = objc_opt_class();
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v9 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v10, v11, v12, v13, v14, v15, v9);
}

- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)encodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(const void *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(CPLArchiver *)self archiverContext];
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v12 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)encodeValuesOfObjCTypes:(const char *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(CPLArchiver *)self archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v10 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v11, v12, v13, v14, v15, v16, v10);
}

- (void)encodeConditionalObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)encodeByrefObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)encodeBycopyObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)encodeRootObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)encodeObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@", buf, 0x20u);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@", v12, v13, v14, v15, v16, v17, v11);
}

- (NSString)archiverContext
{
  if (self->_unarchiving)
  {
    v3 = [(NSMutableArray *)self->_context componentsJoinedByString:@"."];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(NSMutableArray *)self->_context componentsJoinedByString:@"."];
    v3 = [v4 initWithFormat:@"ARCHIVING(%@)", v5];
  }

  return v3;
}

- (CPLArchiver)initWithArchive:(id)a3 rootClass:(Class)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 objectForKey:@"c"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (_CPLSilentLogging)
    {
LABEL_19:
      v19 = 0;
      goto LABEL_20;
    }

    v20 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Invalid stored class name '%@'", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_19;
  }

  v9 = [(objc_class *)a4 classForStoredClassName:v8 forCPLArchiver:self];
  if (!v9)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_19;
    }

    v20 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = a4;
      _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Can't find a proper class from '%@' according to %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v10 = v9;
  if (([(objc_class *)v9 isSubclassOfClass:a4]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v10;
        v27 = 2112;
        v28 = a4;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Invalid class for archive: %@. Expected subclass of %@", buf, 0x16u);
      }
    }

    goto LABEL_19;
  }

  v24.receiver = self;
  v24.super_class = CPLArchiver;
  v11 = [(CPLArchiver *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_archive, a3);
    v12->_unarchiving = 1;
    [(CPLArchiver *)v12 _createContext];
    v13 = v12->_archiveCursor;
    v14 = [v7 objectForKey:@"p"];
    archiveCursor = v12->_archiveCursor;
    v12->_archiveCursor = v14;

    (v12->_pushContext)(v12->_context, sel_addObject_, v10);
    v16 = [[v10 alloc] initWithCPLArchiver:v12];
    rootObject = v12->_rootObject;
    v12->_rootObject = v16;

    (v12->_popContext)(v12->_context, sel_removeLastObject);
    v18 = v12->_archiveCursor;
    v12->_archiveCursor = v13;
  }

  self = v12;
  v19 = self;
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (IMP)_createContext
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v3 = a1[4];
  a1[4] = v2;

  v4 = a1[4];
  v5 = objc_opt_class();
  a1[5] = class_getMethodImplementation(v5, sel_addObject_);
  v6 = a1[4];
  v7 = objc_opt_class();
  result = class_getMethodImplementation(v7, sel_removeLastObject);
  a1[6] = result;
  return result;
}

- (CPLArchiver)initWithRootObject:(id)a3 forDisplay:(BOOL)a4 block:(id)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = CPLArchiver;
  v11 = [(CPLArchiver *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_rootObject, a3);
    v12->_forDisplay = a4;
    [(CPLArchiver *)v12 _createContext];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = v12->_archiveCursor;
    archiveCursor = v12->_archiveCursor;
    v12->_archiveCursor = v13;
    v16 = v13;

    (v12->_pushContext)(v12->_context, sel_addObject_, v9);
    (v10)[2](v10, v12);
    (v12->_popContext)(v12->_context, sel_removeLastObject);
    v17 = v12->_archiveCursor;
    v12->_archiveCursor = v14;
    v18 = v14;

    v25[0] = @"c";
    v19 = [v12->_rootObject storedClassNameForCPLArchiver:v12];
    v25[1] = @"p";
    v26[0] = v19;
    v26[1] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    archive = v12->_archive;
    v12->_archive = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CPLArchiver)initWithRootObject:(id)a3 forDisplay:(BOOL)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v16.receiver = self;
  v16.super_class = CPLArchiver;
  v8 = [(CPLArchiver *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootObject, a3);
    v9->_forDisplay = a4;
    [(CPLArchiver *)v9 _createContext];
    v10 = [v9->_rootObject plistArchiveWithCPLArchiver:v9];
    if (v10)
    {
      v17[0] = @"c";
      v11 = [v9->_rootObject storedClassNameForCPLArchiver:v9];
      v17[1] = @"p";
      v18[0] = v11;
      v18[1] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      archive = v9->_archive;
      v9->_archive = v12;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)displayableDictionaryForDictionary:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CPLArchiver_displayableDictionaryForDictionary___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, block);
  }

  if (displayableDictionaryForDictionary__onceToken != -1)
  {
    dispatch_once(&displayableDictionaryForDictionary__onceToken, &__block_literal_global_1702);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5793;
  v16 = __Block_byref_object_dispose__5794;
  v17 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CPLArchiver_displayableDictionaryForDictionary___block_invoke_1705;
  v8[3] = &unk_1E861C220;
  v10 = &v12;
  v11 = a1;
  v5 = v4;
  v9 = v5;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __50__CPLArchiver_displayableDictionaryForDictionary___block_invoke_1705(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [displayableDictionaryForDictionary__smallKeyToDisplayableKey objectForKeyedSubscript:v18];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v18;
    }

    v10 = v9;

    v11 = [*(a1 + 48) _displayableObjectForObject:v7];
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (!v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v12 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v12 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    *a4 = 1;
  }
}

void __50__CPLArchiver_displayableDictionaryForDictionary___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x1E695DF90]);
  v1 = [v0 initWithCapacity:{objc_msgSend(_keyToSmallKeyMapping, "count")}];
  v2 = _keyToSmallKeyMapping;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CPLArchiver_displayableDictionaryForDictionary___block_invoke_3;
  v6[3] = &unk_1E861C1F8;
  v3 = v1;
  v7 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = displayableDictionaryForDictionary__smallKeyToDisplayableKey;
  displayableDictionaryForDictionary__smallKeyToDisplayableKey = v3;
  v5 = v3;
}

+ (id)_displayableObjectForObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 displayableDictionaryForDictionary:v4];
LABEL_5:
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _displayableArrayForArray:v4];
    goto LABEL_5;
  }

  v8 = v4;
LABEL_10:

  return v8;
}

+ (id)_displayableArrayForArray:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _displayableObjectForObject:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)unarchiveObjectWithData:(id)a3 ofClass:(Class)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v17];
    v8 = v17;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = objc_opt_class();
            *buf = 138412290;
            v19 = v14;
            v15 = v14;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Incorrect serialized record is a %@", buf, 0xCu);
          }
        }

        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"incorrect serialized record is a %@", objc_opt_class()];
        _CPLStoreFailure(v16);
      }

      v9 = [a1 unarchivedObjectWithPropertyList:v7 ofClass:a4];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v6;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Can't unarchive %@", buf, 0xCu);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)fullDescriptionForObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRootObject:v4 forDisplay:1];

  v6 = [v5 archivedPropertyList];
  v7 = [v6 objectForKey:@"p"];
  v8 = [v7 description];

  return v8;
}

+ (id)displayablePropertyListWithRootObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRootObject:v4 forDisplay:1];

  v6 = [v5 archivedPropertyList];

  return v6;
}

+ (id)unarchivedObjectWithPropertyList:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithArchive:v6 rootClass:a4];

  v8 = [v7 rootObject];

  return v8;
}

+ (id)archivedDataWithRootObject:(id)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 archivedPropertyListWithRootObject:v6 usingBlock:a4];
  if (v7)
  {
    v13 = 0;
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v13];
    v9 = v13;
    if (!v8 && (_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Can't encode %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)archivedPropertyListWithRootObject:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRootObject:v7 forDisplay:0 block:v6];

  v9 = [v8 archivedPropertyList];

  return v9;
}

+ (id)archivedPropertyListWithRootObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRootObject:v4 forDisplay:0];

  v6 = [v5 archivedPropertyList];

  return v6;
}

+ (id)archivedDataWithRootObject:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 archivedPropertyListWithRootObject:v4];
  if (v5)
  {
    v11 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v11];
    v7 = v11;
    if (!v6 && (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Can't encode %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (void)_initializeSmallKeyMapping
{
  v2 = _keyToSmallKeyMapping;
  _keyToSmallKeyMapping = &unk_1F57EF928;
}

- (id)_decodeKey:(uint64_t)a3 class:(void *)a4 inDictionary:
{
  v6 = a2;
  v7 = a4;
  if (a1)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1687);
    }

    v8 = [_keyToSmallKeyMapping objectForKey:v6];
    if (v8)
    {
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v7 objectForKeyedSubscript:v6];
      }

      v12 = v11;
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:v6];
    }

    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_BYTE)_encodeKey:(_BYTE *)a1
{
  v3 = a2;
  if (a1)
  {
    if ((a1[57] & 1) == 0)
    {
      if (_smallKeyOnce != -1)
      {
        dispatch_once(&_smallKeyOnce, &__block_literal_global_6164);
      }

      v4 = [_keyToSmallKeyMapping objectForKey:v3];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = v3;
      }

      v7 = v6;

      v3 = v7;
    }

    v3 = v3;
    a1 = v3;
  }

  return a1;
}

@end