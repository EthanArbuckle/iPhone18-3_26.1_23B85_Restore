@interface NSObject(CPLCodingProxy)
+ (id)_cplPropertyAttributeMap;
+ (id)cplAllPropertyNames;
+ (uint64_t)cplShouldIgnorePropertyForCoding:()CPLCodingProxy;
+ (void)_addPropertyAttributeMapToPropertyMapLocked:()CPLCodingProxy;
+ (void)cplDumpProperties;
- (id)cplDeepCopy;
- (uint64_t)cplHash;
- (uint64_t)cplProperties:()CPLCodingProxy areEqualToPropertiesOf:diffTracker:withEqualityBlock:;
- (void)_cplCopyProperties:()CPLCodingProxy fromOtherObject:withCopyBlock:;
- (void)cplClearProperties:()CPLCodingProxy;
- (void)cplDecodePropertiesFromCoder:()CPLCodingProxy;
- (void)cplEncodePropertiesWithCoder:()CPLCodingProxy;
@end

@implementation NSObject(CPLCodingProxy)

+ (id)_cplPropertyAttributeMap
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13182;
  v9 = __Block_byref_object_dispose__13183;
  v10 = 0;
  if (_cplPropertyAttributeMap_onceToken != -1)
  {
    dispatch_once(&_cplPropertyAttributeMap_onceToken, &__block_literal_global_101);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSObject_CPLCodingProxy___cplPropertyAttributeMap__block_invoke_2;
  v4[3] = &unk_1E861DA80;
  v4[4] = &v5;
  v4[5] = self;
  dispatch_sync(_cplPropertyAttributeMap_lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)cplDeepCopy
{
  if ([self conformsToProtocol:&unk_1F57F3060])
  {

    return [self copy];
  }

  else
  {

    return self;
  }
}

- (void)_cplCopyProperties:()CPLCodingProxy fromOtherObject:withCopyBlock:
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_class();
  if (v12 != objc_opt_class())
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLCodingOSLogDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v38 = objc_opt_class();
        v39 = 2112;
        v40 = v12;
        v25 = v38;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Trying to copy properties from an instance of %@ to an instance of %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/NSObject+CPLCodingProxy.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v27 lineNumber:962 description:{@"Trying to copy properties from an instance of %@ to an instance of %@", objc_opt_class(), v12}];

    abort();
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __77__NSObject_CPLCodingProxy___cplCopyProperties_fromOtherObject_withCopyBlock___block_invoke;
  v34[3] = &unk_1E861DB98;
  v13 = v11;
  v36 = v13;
  v34[4] = self;
  v14 = v10;
  v35 = v14;
  v15 = MEMORY[0x1E128EBA0](v34);
  _cplPropertyAttributeMap = [v12 _cplPropertyAttributeMap];
  if (v9)
  {
    null = [MEMORY[0x1E695DFB0] null];
    allObjects = [v9 allObjects];
    v19 = [_cplPropertyAttributeMap objectsForKeys:allObjects notFoundMarker:null];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __77__NSObject_CPLCodingProxy___cplCopyProperties_fromOtherObject_withCopyBlock___block_invoke_2;
    v28[3] = &unk_1E861DB70;
    v30 = allObjects;
    v31 = v15;
    v29 = null;
    v20 = allObjects;
    v21 = v15;
    v22 = null;
    [v19 enumerateObjectsUsingBlock:v28];
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __77__NSObject_CPLCodingProxy___cplCopyProperties_fromOtherObject_withCopyBlock___block_invoke_140;
    v32[3] = &unk_1E861DB48;
    v33 = v15;
    v22 = v15;
    [_cplPropertyAttributeMap enumerateKeysAndObjectsUsingBlock:v32];
    v21 = v33;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)cplClearProperties:()CPLCodingProxy
{
  v4 = a3;
  v5 = objc_opt_class();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__NSObject_CPLCodingProxy__cplClearProperties___block_invoke;
  v20[3] = &unk_1E861DB20;
  v20[4] = self;
  v6 = MEMORY[0x1E128EBA0](v20);
  _cplPropertyAttributeMap = [v5 _cplPropertyAttributeMap];
  if (v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
    allObjects = [v4 allObjects];
    v10 = [_cplPropertyAttributeMap objectsForKeys:allObjects notFoundMarker:null];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__NSObject_CPLCodingProxy__cplClearProperties___block_invoke_2;
    v14[3] = &unk_1E861DB70;
    v16 = allObjects;
    v17 = v6;
    v15 = null;
    v11 = allObjects;
    v12 = v6;
    v13 = null;
    [v10 enumerateObjectsUsingBlock:v14];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__NSObject_CPLCodingProxy__cplClearProperties___block_invoke_132;
    v18[3] = &unk_1E861DB48;
    v19 = v6;
    v13 = v6;
    [_cplPropertyAttributeMap enumerateKeysAndObjectsUsingBlock:v18];
    v12 = v19;
  }
}

- (uint64_t)cplHash
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v2 = objc_opt_class();
  _cplPropertyAttributeMap = [v2 _cplPropertyAttributeMap];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__NSObject_CPLCodingProxy__cplHash__block_invoke;
  v6[3] = &unk_1E861DAF8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = v2;
  [_cplPropertyAttributeMap enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (uint64_t)cplProperties:()CPLCodingProxy areEqualToPropertiesOf:diffTracker:withEqualityBlock:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 == self)
  {
    v17 = 1;
  }

  else
  {
    v14 = objc_opt_class();
    if ([v11 isMemberOfClass:v14])
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v15 = 1;
      v31 = 1;
      if (v12)
      {
        v15 = [v12 shouldCompareAllProperties] ^ 1;
      }

      _cplPropertyAttributeMap = [v14 _cplPropertyAttributeMap];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __95__NSObject_CPLCodingProxy__cplProperties_areEqualToPropertiesOf_diffTracker_withEqualityBlock___block_invoke;
      v19[3] = &unk_1E861DAD0;
      v20 = v10;
      v26 = v14;
      v24 = v13;
      selfCopy = self;
      v22 = v11;
      v25 = &v28;
      v23 = v12;
      v27 = v15;
      [_cplPropertyAttributeMap enumerateKeysAndObjectsUsingBlock:v19];
      v17 = *(v29 + 24);

      _Block_object_dispose(&v28, 8);
    }

    else
    {
      [v12 noteObjectAreTotallyDifferent];
      v17 = 0;
    }
  }

  return v17 & 1;
}

- (void)cplDecodePropertiesFromCoder:()CPLCodingProxy
{
  v4 = a3;
  _cplPropertyAttributeMap = [objc_opt_class() _cplPropertyAttributeMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__NSObject_CPLCodingProxy__cplDecodePropertiesFromCoder___block_invoke;
  v7[3] = &unk_1E861DAA8;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [_cplPropertyAttributeMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)cplEncodePropertiesWithCoder:()CPLCodingProxy
{
  v4 = a3;
  _cplPropertyAttributeMap = [objc_opt_class() _cplPropertyAttributeMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__NSObject_CPLCodingProxy__cplEncodePropertiesWithCoder___block_invoke;
  v7[3] = &unk_1E861DAA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [_cplPropertyAttributeMap enumerateKeysAndObjectsUsingBlock:v7];
}

+ (id)cplAllPropertyNames
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2050000000;
  v11[3] = objc_opt_class();
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13182;
  v9 = __Block_byref_object_dispose__13183;
  v10 = 0;
  if (cplAllPropertyNames_onceToken != -1)
  {
    dispatch_once(&cplAllPropertyNames_onceToken, &__block_literal_global_142);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NSObject_CPLCodingProxy__cplAllPropertyNames__block_invoke_2;
  block[3] = &unk_1E861DBC0;
  block[4] = &v5;
  block[5] = v11;
  block[6] = self;
  dispatch_sync(cplAllPropertyNames_lock, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(v11, 8);

  return v2;
}

+ (void)cplDumpProperties
{
  v7 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLCodingOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      _cplPropertyAttributeMap = [self _cplPropertyAttributeMap];
      v5 = 138412290;
      v6 = _cplPropertyAttributeMap;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_addPropertyAttributeMapToPropertyMapLocked:()CPLCodingProxy
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_class() != self)
  {
    [objc_msgSend(self "superclass")];
    outCount = 0;
    v5 = class_copyPropertyList(self, &outCount);
    v6 = v5;
    if (!outCount)
    {
      goto LABEL_61;
    }

    v7 = 0;
    v48 = v5;
    v49 = v4;
    selfCopy = self;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v6[v7];
      aSelectorName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:property_getName(v9) encoding:4];
      if ([self cplShouldIgnorePropertyForCoding:?])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            selfCopy3 = self;
            v62 = 2112;
            v63 = aSelectorName;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Ignoring %@.%@ for coding", buf, 0x16u);
          }

          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v51 = v8;
      v52 = v7;
      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:property_getAttributes(v9) encoding:4];
      v11 = [v50 componentsSeparatedByString:@", "];
      v12 = objc_alloc_init(CPLCodingPropertyEntry);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (!v14)
      {
        v16 = 0;
        goto LABEL_48;
      }

      v15 = v14;
      v16 = 0;
      v17 = *v56;
      do
      {
        v18 = 0;
        do
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v55 + 1) + 8 * v18);
          v20 = __tolower([v19 characterAtIndex:0]);
          if (v20 <= 114)
          {
            if (v20 == 103)
            {
              v22 = [v19 substringFromIndex:1];
              v28 = NSSelectorFromString(&v22->isa);
              MethodImplementation = class_getMethodImplementation(self, v28);
              [(CPLCodingPropertyEntry *)v12 setPropertyGetter:v28];
              [(CPLCodingPropertyEntry *)v12 setPropertyGetterIMP:MethodImplementation];
              goto LABEL_26;
            }

            if (v20 == 114)
            {
              [(CPLCodingPropertyEntry *)v12 setReadOnly:1];
            }
          }

          else
          {
            if (v20 == 115)
            {
              v22 = [v19 substringFromIndex:1];
              v25 = NSSelectorFromString(&v22->isa);
              v26 = class_getMethodImplementation(self, v25);
              [(CPLCodingPropertyEntry *)v12 setPropertySetter:v25];
              [(CPLCodingPropertyEntry *)v12 setPropertySetterIMP:v26];
LABEL_26:

              goto LABEL_27;
            }

            if (v20 == 118)
            {
              v27 = [v19 substringFromIndex:1];

              v16 = v27;
              goto LABEL_27;
            }

            if (v20 != 116)
            {
              goto LABEL_27;
            }

            v21 = [v19 characterAtIndex:1];
            [(CPLCodingPropertyEntry *)v12 setPropertyType:v21];
            if (v21 != 64)
            {
              if (v21 != 123)
              {
                goto LABEL_27;
              }

              v22 = [v19 substringWithRange:{2, objc_msgSend(v19, "length") - 3}];
              v23 = [v22 componentsSeparatedByString:@"="];
              v24 = [v23 objectAtIndex:0];
              [(CPLCodingPropertyEntry *)v12 setStructName:v24];

              goto LABEL_26;
            }

            if ([v19 length] > 3)
            {
              [v19 substringWithRange:{3, objc_msgSend(v19, "length") - 4}];
              v31 = v30 = self;
              v32 = NSClassFromString(v31);
              v33 = [v30 cplAdditionalSecureClassesForProperty:aSelectorName];
              if ((_CPLSilentLogging & 1) == 0)
              {
                v34 = __CPLCodingOSLogDomain();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138413058;
                  selfCopy3 = selfCopy;
                  v62 = 2112;
                  v63 = aSelectorName;
                  v64 = 2112;
                  v65 = v32;
                  v66 = 2112;
                  v67 = v33;
                  _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEBUG, "Class for property %@.%@ is %@. Additional secure classes are %@", buf, 0x2Au);
                }
              }

              if (v32)
              {
                if (v33)
                {
                  [v33 setByAddingObject:v32];
                }

                else
                {
                  [MEMORY[0x1E695DFD8] setWithObject:v32];
                }
                v35 = ;
                [(CPLCodingPropertyEntry *)v12 setPropertyClasses:v35];
              }

              else if (v33)
              {
                [(CPLCodingPropertyEntry *)v12 setPropertyClasses:v33];
              }

              self = selfCopy;
            }

            else if ((_CPLSilentLogging & 1) == 0)
            {
              v22 = __CPLCodingOSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                selfCopy3 = self;
                v62 = 2112;
                v63 = aSelectorName;
                _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Ignoring %@.%@ for coding as its type is too generic", buf, 0x16u);
              }

              goto LABEL_26;
            }
          }

LABEL_27:
          ++v18;
        }

        while (v15 != v18);
        v36 = [v13 countByEnumeratingWithState:&v55 objects:v68 count:16];
        v15 = v36;
      }

      while (v36);
LABEL_48:

      if (![(CPLCodingPropertyEntry *)v12 propertyGetter])
      {
        v37 = NSSelectorFromString(aSelectorName);
        v38 = class_getMethodImplementation(self, v37);
        [(CPLCodingPropertyEntry *)v12 setPropertyGetter:v37];
        [(CPLCodingPropertyEntry *)v12 setPropertyGetterIMP:v38];
      }

      v6 = v48;
      v4 = v49;
      if (![(CPLCodingPropertyEntry *)v12 propertySetter]&& ![(CPLCodingPropertyEntry *)v12 isReadOnly])
      {
        v39 = objc_alloc(MEMORY[0x1E696AEC0]);
        v40 = __toupper([(NSString *)aSelectorName characterAtIndex:0]);
        v41 = [(NSString *)aSelectorName substringFromIndex:1];
        v42 = [v39 initWithFormat:@"set%c%@:", v40, v41];

        v43 = NSSelectorFromString(v42);
        v44 = class_getMethodImplementation(self, v43);
        [(CPLCodingPropertyEntry *)v12 setPropertySetter:v43];
        [(CPLCodingPropertyEntry *)v12 setPropertySetterIMP:v44];
      }

      if (![v16 length])
      {
        aSelectorName = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@", aSelectorName];

        v16 = aSelectorName;
      }

      if ([v16 length])
      {
        InstanceVariable = class_getInstanceVariable(self, [v16 UTF8String]);
        if (InstanceVariable)
        {
          [(CPLCodingPropertyEntry *)v12 setIvar:InstanceVariable];
        }
      }

      [v49 setObject:v12 forKey:aSelectorName];

      v8 = v51;
      v7 = v52;
      v10 = v50;
LABEL_59:

LABEL_60:
      objc_autoreleasePoolPop(v8);
      if (++v7 >= outCount)
      {
LABEL_61:
        free(v6);
        break;
      }
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)cplShouldIgnorePropertyForCoding:()CPLCodingProxy
{
  v3 = cplShouldIgnorePropertyForCoding__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&cplShouldIgnorePropertyForCoding__onceToken, &__block_literal_global_13203);
  }

  v5 = [cplShouldIgnorePropertyForCoding__baseIgnorableProperties containsObject:v4];

  return v5;
}

@end