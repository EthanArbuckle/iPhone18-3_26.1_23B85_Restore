@interface NSDictionary(MCUtilities)
+ (id)MCDictionaryFromFile:()MCUtilities;
+ (id)MCShortenedArray:()MCUtilities;
+ (id)MCShortenedData:()MCUtilities;
+ (id)MCShortenedDictionary:()MCUtilities;
+ (id)MCShortenedObject:()MCUtilities;
- (id)MCDictionaryAdditiveDeltaToCreateDictionary:()MCUtilities;
- (id)MCDictionarySubtractiveDeltaToCreateDictionary:()MCUtilities;
- (id)MCDictionaryWithLeafValuesSetToValue:()MCUtilities;
- (id)MCInsertedKeysFromDictionary:()MCUtilities withNewLeafValue:;
- (id)MCRemovedKeysFromDictionary:()MCUtilities;
- (id)MCRetainRequiredNonZeroLengthStringKey:()MCUtilities errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:;
- (id)MCRetainRequiredObjectKey:()MCUtilities type:errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:;
- (id)MCShortenedPlistDescription;
- (uint64_t)MCValidateBoolRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCValidateIntersectionRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCValidateRestrictions;
- (uint64_t)MCValidateUnionRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCValidateValueRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCWriteToBinaryFile:()MCUtilities;
- (uint64_t)MCWriteToBinaryFile:()MCUtilities atomically:;
- (void)MCMutableDeepCopyWithZone:()MCUtilities;
- (void)MCRetainOptionalNonZeroLengthStringKey:()MCUtilities errorDomain:invalidDataCode:invalidDataErrorString:outError:;
- (void)MCRetainOptionalObjectKey:()MCUtilities type:errorDomain:invalidDataCode:invalidDataErrorString:outError:;
@end

@implementation NSDictionary(MCUtilities)

- (uint64_t)MCWriteToBinaryFile:()MCUtilities
{
  v4 = a3;
  v5 = [[MCDictionaryWriter alloc] initWithDictionary:a1 path:v4];

  v6 = [(MCDictionaryWriter *)v5 write];
  return v6;
}

- (uint64_t)MCWriteToBinaryFile:()MCUtilities atomically:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v18 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:&v18];
  v9 = v18;
  if (v8)
  {
    v17 = 0;
    v10 = [v8 writeToFile:v6 options:a4 error:&v17];
    v11 = v17;
    if (v10)
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Could not serialize data for %{public}@: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  v14 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Could not write data to path %{public}@: %{public}@", buf, 0x16u);
  }

  v12 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)MCDictionaryFromFile:()MCUtilities
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v10 = 0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v4 error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Failed to make dictionary from file at path: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)MCMutableDeepCopyWithZone:()MCUtilities
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [a1 keyEnumerator];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = v10;
        if ([v10 conformsToProtocol:&unk_1F1AC0DC8])
        {
          v11 = [v10 mutableCopyWithZone:a3];
        }

        v12 = [a1 objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 MCMutableDeepCopyWithZone:a3];
LABEL_13:
          v14 = v13;
          [v5 setObject:v13 forKey:v11];

          goto LABEL_14;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [v12 conformsToProtocol:&unk_1F1AC0DC8])
        {
          v13 = [v12 mutableCopyWithZone:a3];
          goto LABEL_13;
        }

        if ([v12 conformsToProtocol:&unk_1F1AB3400])
        {
          v13 = [v12 copyWithZone:a3];
          goto LABEL_13;
        }

        [v5 setObject:v12 forKey:v11];
LABEL_14:

        ++v9;
      }

      while (v7 != v9);
      v15 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      v7 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)MCRetainRequiredObjectKey:()MCUtilities type:errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v26 = [a1 objectForKey:v15];
  if (v26)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v26;
      goto LABEL_10;
    }

    if (a10)
    {
      v40 = MEMORY[0x1E696ABC0];
      v36 = MCErrorArray(v18, v27, v28, v29, v30, v31, v32, v33, v15);
      v37 = v40;
      v38 = v16;
      v39 = a8;
      goto LABEL_8;
    }
  }

  else if (a10)
  {
    v35 = MEMORY[0x1E696ABC0];
    v36 = MCErrorArray(v17, v19, v20, v21, v22, v23, v24, v25, v15);
    v37 = v35;
    v38 = v16;
    v39 = a6;
LABEL_8:
    *a10 = [v37 MCErrorWithDomain:v38 code:v39 descriptionArray:v36 errorType:@"MCFatalError"];
  }

  v34 = 0;
LABEL_10:

  return v34;
}

- (void)MCRetainOptionalObjectKey:()MCUtilities type:errorDomain:invalidDataCode:invalidDataErrorString:outError:
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = [a1 objectForKey:v13];
  if (v16 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = MCErrorArray(v15, v17, v18, v19, v20, v21, v22, v23, v13);
      *a8 = [v24 MCErrorWithDomain:v14 code:a6 descriptionArray:v25 errorType:@"MCFatalError"];

      a8 = 0;
    }
  }

  else
  {
    a8 = v16;
  }

  return a8;
}

- (id)MCRetainRequiredNonZeroLengthStringKey:()MCUtilities errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = [a1 objectForKey:v15];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a9)
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = MCErrorArray(v18, v20, v21, v22, v23, v24, v25, v26, v15);
      v37 = v35;
      v38 = v16;
      v39 = a7;
LABEL_9:
      *a9 = [v37 MCErrorWithDomain:v38 code:v39 descriptionArray:v36 errorType:@"MCFatalError"];
    }
  }

  else
  {
    if ([v19 length])
    {
      v34 = v19;
      goto LABEL_11;
    }

    if (a9)
    {
      v40 = MEMORY[0x1E696ABC0];
      v36 = MCErrorArray(v17, v27, v28, v29, v30, v31, v32, v33, v15);
      v37 = v40;
      v38 = v16;
      v39 = a5;
      goto LABEL_9;
    }
  }

  v34 = 0;
LABEL_11:

  return v34;
}

- (void)MCRetainOptionalNonZeroLengthStringKey:()MCUtilities errorDomain:invalidDataCode:invalidDataErrorString:outError:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [a1 objectForKey:v12];
  if (!v15)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v15 length])
    {
LABEL_4:
      a7 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a7)
    {
      goto LABEL_8;
    }

    v23 = MEMORY[0x1E696ABC0];
    v24 = MCErrorArray(v14, v16, v17, v18, v19, v20, v21, v22, v12);
    *a7 = [v23 MCErrorWithDomain:v13 code:a5 descriptionArray:v24 errorType:@"MCFatalError"];
  }

  a7 = 0;
LABEL_8:

  return a7;
}

- (id)MCShortenedPlistDescription
{
  v1 = [objc_opt_class() MCShortenedDictionary:a1];
  v2 = [v1 description];

  return v2;
}

+ (id)MCShortenedObject:()MCUtilities
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 MCShortenedArray:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 MCShortenedDictionary:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [a1 MCShortenedData:v4];
      }

      else
      {
        v5 = v4;
      }
    }
  }

  v6 = v5;

  return v6;
}

+ (id)MCShortenedData:()MCUtilities
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 length];
    v5 = MEMORY[0x1E696AEC0];
    if (v4 > 0x10)
    {
      v6 = [v3 subdataWithRange:{0, 8}];
      v8 = [v6 MCHexString];
      v9 = [v3 subdataWithRange:{objc_msgSend(v3, "length") - 8, 8}];
      v10 = [v9 MCHexString];
      v7 = [v5 stringWithFormat:@"0x%@ ... 0x%@", v8, v10];
    }

    else
    {
      v6 = [v3 MCHexString];
      v7 = [v5 stringWithFormat:@"0x%@", v6];
    }
  }

  else
  {
    v7 = @"<empty>";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Data { length = %lu, bytes = %@ }", objc_msgSend(v3, "length"), v7];

  return v11;
}

+ (id)MCShortenedArray:()MCUtilities
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
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

        v11 = [a1 MCShortenedObject:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)MCShortenedDictionary:()MCUtilities
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__NSDictionary_MCUtilities__MCShortenedDictionary___block_invoke;
  v9[3] = &unk_1E77CFE90;
  v7 = v6;
  v10 = v7;
  v11 = a1;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

- (uint64_t)MCValidateRestrictions
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 defaultRestrictions];

  [a1 objectForKeyedSubscript:@"restrictedBool"];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = v42 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![a1 MCValidateBoolRestriction:*(*(&v39 + 1) + 8 * v8) inRestrictions:v4 defaultRestrictions:v3])
        {
          v24 = 0;
          v9 = v4;
          goto LABEL_41;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [a1 objectForKeyedSubscript:@"restrictedValue"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v38 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![a1 MCValidateValueRestriction:*(*(&v35 + 1) + 8 * v13) inRestrictions:v9 defaultRestrictions:v3])
        {
          v24 = 0;
          v14 = v9;
          goto LABEL_40;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [a1 objectForKeyedSubscript:@"intersection"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v34 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![a1 MCValidateIntersectionRestriction:*(*(&v31 + 1) + 8 * v18) inRestrictions:v14 defaultRestrictions:v3])
        {
          v24 = 0;
          v19 = v14;
          goto LABEL_39;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  [a1 objectForKeyedSubscript:@"union"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = v30 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        if (![a1 MCValidateUnionRestriction:*(*(&v27 + 1) + 8 * v23) inRestrictions:v19 defaultRestrictions:{v3, v27}])
        {
          v24 = 0;
          goto LABEL_38;
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v27 objects:v43 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (uint64_t)MCValidateBoolRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"restrictedBool"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"preference"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:v7];
      v13 = [v10 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      LOBYTE(v10) = objc_opt_isKindOfClass();
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

- (uint64_t)MCValidateValueRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"restrictedValue"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"preferSmallerValues"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:v7];
      v13 = [v10 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      LOBYTE(v10) = objc_opt_isKindOfClass();
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

- (uint64_t)MCValidateIntersectionRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"intersection"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"values"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (uint64_t)MCValidateUnionRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"union"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"values"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)MCDictionaryAdditiveDeltaToCreateDictionary:()MCUtilities
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [a1 objectForKeyedSubscript:{v12, v19}];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (!v13)
        {
          goto LABEL_11;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        if ([v14 isEqual:v13])
        {
          goto LABEL_12;
        }

        v15 = *(v10 + 3872);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v13 MCDictionaryAdditiveDeltaToCreateDictionary:v14];
          [v5 setObject:v16 forKeyedSubscript:v12];

          v10 = 0x1E695D000;
        }

        else
        {
LABEL_11:
          [v5 setObject:v14 forKeyedSubscript:v12];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)MCDictionarySubtractiveDeltaToCreateDictionary:()MCUtilities
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v19}];
        v14 = [v4 objectForKeyedSubscript:v12];
        if (v14)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 isEqual:v13] & 1) == 0)
          {
            v15 = *(v10 + 3872);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v13 MCDictionarySubtractiveDeltaToCreateDictionary:v14];
              if ([v16 count])
              {
                [v5 setObject:v16 forKeyedSubscript:v12];
              }

              v10 = 0x1E695D000;
            }
          }
        }

        else
        {
          [v5 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)MCRemovedKeysFromDictionary:()MCUtilities
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = 0x1E695D000uLL;
    v22 = a1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [a1 objectForKeyedSubscript:v12];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (v13)
        {
          v15 = *(v10 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (v16 = *(v10 + 3872), objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v17 = v5;
            v18 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v13];
            v19 = [v18 MCRemovedKeysFromDictionary:v14];

            v5 = v17;
            if ([v19 count])
            {
              [v17 setObject:v19 forKeyedSubscript:v12];
            }

            else
            {
              [v17 removeObjectForKey:v12];
            }

            a1 = v22;
            v10 = 0x1E695D000;
          }

          else
          {
            [v5 removeObjectForKey:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)MCInsertedKeysFromDictionary:()MCUtilities withNewLeafValue:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v6;
  v25 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v22 = a1;
    v23 = *v27;
    v21 = v8;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [a1 objectForKeyedSubscript:v10];
        v12 = [v8 objectForKeyedSubscript:v10];
        v13 = v12;
        if (v7)
        {
          v14 = v7;
        }

        else
        {
          v14 = v12;
        }

        v15 = v14;
        v16 = v13;
        if (v7)
        {
          objc_opt_class();
          v16 = v7;
          if (objc_opt_isKindOfClass())
          {
            v16 = [v13 MCDictionaryWithLeafValuesSetToValue:v7];
          }
        }

        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];
          v18 = [v17 MCInsertedKeysFromDictionary:v13 withNewLeafValue:v7];

          v8 = v21;
          [v24 setObject:v18 forKeyedSubscript:v10];

          a1 = v22;
        }

        else
        {
          [v24 setObject:v16 forKeyedSubscript:v10];
        }
      }

      v25 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)MCDictionaryWithLeafValuesSetToValue:()MCUtilities
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v16}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 MCDictionaryWithLeafValuesSetToValue:v4];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }

        else
        {
          [v5 setObject:v4 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

@end