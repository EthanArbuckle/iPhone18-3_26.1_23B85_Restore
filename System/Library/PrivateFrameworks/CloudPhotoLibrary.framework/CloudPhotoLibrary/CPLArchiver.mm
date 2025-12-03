@interface CPLArchiver
+ (id)_displayableArrayForArray:(id)array;
+ (id)_displayableObjectForObject:(id)object;
+ (id)archivedDataWithRootObject:(id)object;
+ (id)archivedDataWithRootObject:(id)object usingBlock:(id)block;
+ (id)archivedPropertyListWithRootObject:(id)object;
+ (id)archivedPropertyListWithRootObject:(id)object usingBlock:(id)block;
+ (id)displayableDictionaryForDictionary:(id)dictionary;
+ (id)displayablePropertyListWithRootObject:(id)object;
+ (id)fullDescriptionForObject:(id)object;
+ (id)unarchiveObjectWithData:(id)data ofClass:(Class)class;
+ (id)unarchivedObjectWithPropertyList:(id)list ofClass:(Class)class;
+ (void)_initializeSmallKeyMapping;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (CGPoint)decodePointForKey:(id)key;
- (CGRect)decodeRectForKey:(id)key;
- (CGSize)decodeSizeForKey:(id)key;
- (CPLArchiver)initWithArchive:(id)archive rootClass:(Class)class;
- (CPLArchiver)initWithRootObject:(id)object forDisplay:(BOOL)display;
- (CPLArchiver)initWithRootObject:(id)object forDisplay:(BOOL)display block:(id)block;
- (IMP)_createContext;
- (NSString)archiverContext;
- (_BYTE)_encodeKey:(_BYTE *)key;
- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)_decodeKey:(uint64_t)key class:(void *)class inDictionary:;
- (id)decodeObject;
- (id)decodeObjectForKey:(id)key;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)decodePropertyList;
- (id)decodePropertyListForKey:(id)key;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (int64_t)decodeIntegerForKey:(id)key;
- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at;
- (void)decodeBytesWithReturnedLength:(unint64_t *)length;
- (void)decodeValuesOfObjCTypes:(const char *)types;
- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBycopyObject:(id)object;
- (void)encodeByrefObject:(id)object;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeBytes:(const void *)bytes length:(unint64_t)length;
- (void)encodeConditionalObject:(id)object;
- (void)encodeConditionalObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodePoint:(CGPoint)point forKey:(id)key;
- (void)encodePropertyList:(id)list;
- (void)encodeRect:(CGRect)rect forKey:(id)key;
- (void)encodeRootObject:(id)object;
- (void)encodeSize:(CGSize)size forKey:(id)key;
- (void)encodeValuesOfObjCTypes:(const char *)types;
@end

@implementation CPLArchiver

- (CGRect)decodeRectForKey:(id)key
{
  v54 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1801);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v10 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v11 = v10;
  }

  else
  {
    v11 = [archiveCursor objectForKeyedSubscript:keyCopy];
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
          archiverContext = [(CPLArchiver *)self archiverContext];
          v32 = NSStringFromSelector(a2);
          v33 = self->_archiveCursor;
          v34 = objc_opt_class();
          v35 = self->_archiveCursor;
          *buf = 138413058;
          v47 = archiverContext;
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

- (CGSize)decodeSizeForKey:(id)key
{
  v46 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1799);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v10 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v11 = v10;
  }

  else
  {
    v11 = [archiveCursor objectForKeyedSubscript:keyCopy];
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
          archiverContext = [(CPLArchiver *)self archiverContext];
          v24 = NSStringFromSelector(a2);
          v25 = self->_archiveCursor;
          v26 = objc_opt_class();
          v27 = self->_archiveCursor;
          *buf = 138413058;
          v39 = archiverContext;
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

- (CGPoint)decodePointForKey:(id)key
{
  v46 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1794);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v10 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v11 = v10;
  }

  else
  {
    v11 = [archiveCursor objectForKeyedSubscript:keyCopy];
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
          archiverContext = [(CPLArchiver *)self archiverContext];
          v24 = NSStringFromSelector(a2);
          v25 = self->_archiveCursor;
          v26 = objc_opt_class();
          v27 = self->_archiveCursor;
          *buf = 138413058;
          v39 = archiverContext;
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

- (void)encodeRect:(CGRect)rect forKey:(id)key
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25[4] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v10 = keyCopy;
  if (self->_forDisplay)
  {
    v11 = keyCopy;
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

- (void)encodeSize:(CGSize)size forKey:(id)key
{
  height = size.height;
  width = size.width;
  v21[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = keyCopy;
  if (self->_forDisplay)
  {
    v9 = keyCopy;
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

- (void)encodePoint:(CGPoint)point forKey:(id)key
{
  y = point.y;
  x = point.x;
  v21[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = keyCopy;
  if (self->_forDisplay)
  {
    v9 = keyCopy;
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

- (id)decodePropertyListForKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1774);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      [self->_archiveCursor objectForKeyedSubscript:keyCopy];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    [archiveCursor objectForKeyedSubscript:keyCopy];
    objc_claimAutoreleasedReturnValue();
  }

  (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v13 = objc_opt_class();
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = archiverContext;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = keyCopy;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v16 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v17, v18, v19, v20, v21, v22, v16);
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  v78 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1766);
  }

  v9 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v13 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v14 = v13;
  }

  else
  {
    v14 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  if ([classesCopy count] == 1)
  {
    anyObject = [classesCopy anyObject];
    v16 = [(CPLArchiver *)self decodeObjectOfClass:anyObject forKey:keyCopy];
  }

  else
  {
    v17 = v14;
    if (v17)
    {
      if (([classesCopy containsObject:objc_opt_class()] & 1) == 0 && !objc_msgSend(classesCopy, "containsObject:", objc_opt_class()))
      {
        v45 = self->_archiveCursor;
        v46 = self->_archiveCursor;
        self->_archiveCursor = 0;

        (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
        if ((_CPLSilentLogging & 1) == 0)
        {
          v47 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            archiverContext = [(CPLArchiver *)self archiverContext];
            v49 = NSStringFromSelector(a2);
            *buf = 138412802;
            v73 = archiverContext;
            v74 = 2112;
            v75 = classesCopy;
            v76 = 2112;
            v77 = v49;
            _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_ERROR, "%@: %@ is not supported for %@", buf, 0x20u);
          }
        }

        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        _CPLArchiverFailure(self, @"%@ is not supported for %@", v50, v51, v52, v53, v54, v55, classesCopy);
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
            archiverContext2 = [(CPLArchiver *)self archiverContext];
            *buf = 138412802;
            v73 = archiverContext2;
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

      (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v59 = classesCopy;
      v20 = classesCopy;
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
      classesCopy = v59;
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

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1764);
  }

  v7 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v11 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v12 = v11;
  }

  else
  {
    v12 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  v13 = v12;
  if (v13)
  {
    v14 = self->_archiveCursor;
    objc_storeStrong(&self->_archiveCursor, v12);
    (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
    (self->_pushContext)(self->_context, sel_addObject_, class);
    v15 = [[class alloc] initWithCPLArchiver:self];
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

- (int64_t)decodeIntegerForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1762);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  integerValue = [v10 integerValue];
  return integerValue;
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (!self->_forDisplay)
  {
    v13 = keyCopy;
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

  if (integer)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66C30]();
}

- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length
{
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1758);
  }

  v7 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      [self->_archiveCursor objectForKeyedSubscript:keyCopy];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    [archiveCursor objectForKeyedSubscript:keyCopy];
    objc_claimAutoreleasedReturnValue();
  }

  (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138413058;
      v26 = archiverContext;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = keyCopy;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v17 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v18, v19, v20, v21, v22, v23, v17);
}

- (double)decodeDoubleForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1756);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  [v10 doubleValue];
  v12 = v11;

  return v12;
}

- (float)decodeFloatForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1754);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  [v10 floatValue];
  v12 = v11;

  return v12;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1752);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  longLongValue = [v10 longLongValue];
  return longLongValue;
}

- (int)decodeInt32ForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1750);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  intValue = [v10 intValue];
  return intValue;
}

- (int)decodeIntForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1748);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  intValue = [v10 intValue];
  return intValue;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1746);
  }

  v5 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      v9 = [self->_archiveCursor objectForKeyedSubscript:keyCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = [archiveCursor objectForKeyedSubscript:keyCopy];
  }

  bOOLValue = [v10 BOOLValue];
  return bOOLValue;
}

- (id)decodeObjectForKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_smallKeyOnce != -1)
  {
    dispatch_once(&_smallKeyOnce, &__block_literal_global_1744);
  }

  v6 = [_keyToSmallKeyMapping objectForKey:keyCopy];
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
      [self->_archiveCursor objectForKeyedSubscript:keyCopy];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    [archiveCursor objectForKeyedSubscript:keyCopy];
    objc_claimAutoreleasedReturnValue();
  }

  (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v13 = objc_opt_class();
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = archiverContext;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = keyCopy;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v16 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v17, v18, v19, v20, v21, v22, v16);
}

- (BOOL)containsValueForKey:(id)key
{
  v3 = [self->_archiveCursor objectForKeyedSubscript:key];
  v4 = v3 != 0;

  return v4;
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!self->_forDisplay)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1742);
    }

    v8 = [_keyToSmallKeyMapping objectForKey:keyCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = keyCopy;
    }

    v11 = v10;

    keyCopy = v11;
  }

  (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = archiverContext;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = keyCopy;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v17 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v18, v19, v20, v21, v22, v23, v17);
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (!self->_forDisplay)
  {
    v13 = keyCopy;
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

  if (double != 0.0)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:double];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  v8 = keyCopy;
  if (!self->_forDisplay)
  {
    v14 = keyCopy;
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

  if (float != 0.0)
  {
    archiveCursor = self->_archiveCursor;
    *&v7 = float;
    v15 = v8;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    [archiveCursor setObject:v13 forKey:v15];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (!self->_forDisplay)
  {
    v13 = keyCopy;
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

  if (int64)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:int64];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66C30]();
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  v7 = keyCopy;
  if (!self->_forDisplay)
  {
    v13 = keyCopy;
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

  if (boolCopy)
  {
    archiveCursor = self->_archiveCursor;
    v14 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [archiveCursor setObject:v12 forKey:v14];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)encodeConditionalObject:(id)object forKey:(id)key
{
  v33 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  if (!self->_forDisplay)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1724);
    }

    v9 = [_keyToSmallKeyMapping objectForKey:keyCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = keyCopy;
    }

    v12 = v11;

    keyCopy = v12;
  }

  (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromSelector(a2);
      *buf = 138413058;
      v26 = archiverContext;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = keyCopy;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@: %@ does not support %@ (key: %@)", buf, 0x2Au);
    }
  }

  v18 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _CPLArchiverFailure(self, @"%@ does not support %@ (key: %@)", v19, v20, v21, v22, v23, v24, v18);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!self->_forDisplay)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1722);
    }

    v7 = [_keyToSmallKeyMapping objectForKey:keyCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = keyCopy;
    }

    v10 = v9;

    keyCopy = v10;
  }

  (self->_pushContext)(self->_context, sel_addObject_, keyCopy);
  v11 = [objectCopy replacementObjectForCoder:self];
  v12 = [v11 plistArchiveWithCPLArchiver:self];

  (self->_popContext)(self->_context, sel_removeLastObject);
  if (v12)
  {
    [self->_archiveCursor setObject:v12 forKey:keyCopy];
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
      archiverContext = [(CPLArchiver *)self archiverContext];
      v6 = objc_opt_class();
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = archiverContext;
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

- (void)encodePropertyList:(id)list
{
  v24 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)decodeBytesWithReturnedLength:(unint64_t *)length
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at
{
  v25 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = archiverContext;
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

- (void)decodeValuesOfObjCTypes:(const char *)types
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = archiverContext;
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
      archiverContext = [(CPLArchiver *)self archiverContext];
      v6 = objc_opt_class();
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = archiverContext;
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

- (void)encodeBytes:(const void *)bytes length:(unint64_t)length
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at
{
  v25 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = archiverContext;
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

- (void)encodeValuesOfObjCTypes:(const char *)types
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = archiverContext;
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

- (void)encodeConditionalObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)encodeByrefObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)encodeBycopyObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)encodeRootObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (void)encodeObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      archiverContext = [(CPLArchiver *)self archiverContext];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = archiverContext;
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

- (CPLArchiver)initWithArchive:(id)archive rootClass:(Class)class
{
  v29 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  v8 = [archiveCopy objectForKey:@"c"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (_CPLSilentLogging)
    {
LABEL_19:
      selfCopy = 0;
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

  v9 = [(objc_class *)class classForStoredClassName:v8 forCPLArchiver:self];
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
      classCopy2 = class;
      _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Can't find a proper class from '%@' according to %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v10 = v9;
  if (([(objc_class *)v9 isSubclassOfClass:class]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v10;
        v27 = 2112;
        classCopy2 = class;
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
    objc_storeStrong(&v11->_archive, archive);
    v12->_unarchiving = 1;
    [(CPLArchiver *)v12 _createContext];
    v13 = v12->_archiveCursor;
    v14 = [archiveCopy objectForKey:@"p"];
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
  selfCopy = self;
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (IMP)_createContext
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v3 = self[4];
  self[4] = v2;

  v4 = self[4];
  v5 = objc_opt_class();
  self[5] = class_getMethodImplementation(v5, sel_addObject_);
  v6 = self[4];
  v7 = objc_opt_class();
  result = class_getMethodImplementation(v7, sel_removeLastObject);
  self[6] = result;
  return result;
}

- (CPLArchiver)initWithRootObject:(id)object forDisplay:(BOOL)display block:(id)block
{
  v26[2] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = CPLArchiver;
  v11 = [(CPLArchiver *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_rootObject, object);
    v12->_forDisplay = display;
    [(CPLArchiver *)v12 _createContext];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = v12->_archiveCursor;
    archiveCursor = v12->_archiveCursor;
    v12->_archiveCursor = v13;
    v16 = v13;

    (v12->_pushContext)(v12->_context, sel_addObject_, objectCopy);
    (blockCopy)[2](blockCopy, v12);
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

- (CPLArchiver)initWithRootObject:(id)object forDisplay:(BOOL)display
{
  v18[2] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = CPLArchiver;
  v8 = [(CPLArchiver *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootObject, object);
    v9->_forDisplay = display;
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

+ (id)displayableDictionaryForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CPLArchiver_displayableDictionaryForDictionary___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  selfCopy = self;
  v5 = dictionaryCopy;
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

+ (id)_displayableObjectForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self displayableDictionaryForDictionary:objectCopy];
LABEL_5:
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objectCopy;
    }

    v8 = v7;

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self _displayableArrayForArray:objectCopy];
    goto LABEL_5;
  }

  v8 = objectCopy;
LABEL_10:

  return v8;
}

+ (id)_displayableArrayForArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = arrayCopy;
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

        v11 = [self _displayableObjectForObject:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)unarchiveObjectWithData:(id)data ofClass:(Class)class
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v17];
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

      v9 = [self unarchivedObjectWithPropertyList:v7 ofClass:class];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = dataCopy;
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

+ (id)fullDescriptionForObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithRootObject:objectCopy forDisplay:1];

  archivedPropertyList = [v5 archivedPropertyList];
  v7 = [archivedPropertyList objectForKey:@"p"];
  v8 = [v7 description];

  return v8;
}

+ (id)displayablePropertyListWithRootObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithRootObject:objectCopy forDisplay:1];

  archivedPropertyList = [v5 archivedPropertyList];

  return archivedPropertyList;
}

+ (id)unarchivedObjectWithPropertyList:(id)list ofClass:(Class)class
{
  listCopy = list;
  v7 = [[self alloc] initWithArchive:listCopy rootClass:class];

  rootObject = [v7 rootObject];

  return rootObject;
}

+ (id)archivedDataWithRootObject:(id)object usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = [self archivedPropertyListWithRootObject:objectCopy usingBlock:block];
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
        v15 = objectCopy;
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

+ (id)archivedPropertyListWithRootObject:(id)object usingBlock:(id)block
{
  blockCopy = block;
  objectCopy = object;
  v8 = [[self alloc] initWithRootObject:objectCopy forDisplay:0 block:blockCopy];

  archivedPropertyList = [v8 archivedPropertyList];

  return archivedPropertyList;
}

+ (id)archivedPropertyListWithRootObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithRootObject:objectCopy forDisplay:0];

  archivedPropertyList = [v5 archivedPropertyList];

  return archivedPropertyList;
}

+ (id)archivedDataWithRootObject:(id)object
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = [self archivedPropertyListWithRootObject:objectCopy];
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
        v13 = objectCopy;
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

- (id)_decodeKey:(uint64_t)key class:(void *)class inDictionary:
{
  v6 = a2;
  classCopy = class;
  if (self)
  {
    if (_smallKeyOnce != -1)
    {
      dispatch_once(&_smallKeyOnce, &__block_literal_global_1687);
    }

    v8 = [_keyToSmallKeyMapping objectForKey:v6];
    if (v8)
    {
      v9 = [classCopy objectForKeyedSubscript:v8];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [classCopy objectForKeyedSubscript:v6];
      }

      v12 = v11;
    }

    else
    {
      v12 = [classCopy objectForKeyedSubscript:v6];
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

- (_BYTE)_encodeKey:(_BYTE *)key
{
  v3 = a2;
  if (key)
  {
    if ((key[57] & 1) == 0)
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
    key = v3;
  }

  return key;
}

@end