@interface DESJSONPredicate
+ (BOOL)_testStrings:(id)a3 test:(id)a4 caseInsensitive:(BOOL)a5;
+ (BOOL)evaluateAnd:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateArrayOp:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateBoolOp:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateDefOp:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateDict:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateJson:(id)a3 onJson:(id)a4;
+ (BOOL)evaluateNumericOp:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateOr:(id)a3 onObj:(id)a4;
+ (BOOL)evaluatePredicate:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateRegexOp:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateStringOp:(id)a3 onObj:(id)a4;
+ (BOOL)evaluateTypeOp:(id)a3 onObj:(id)a4;
+ (BOOL)isBoolean:(id)a3;
+ (BOOL)isNumber:(id)a3;
+ (BOOL)obj:(id)a3 matchesRegex:(id)a4;
+ (id)fetchObjectAtPath:(id)a3 from:(id)a4;
+ (id)parseJSON:(id)a3;
+ (id)parsePath:(id)a3;
@end

@implementation DESJSONPredicate

+ (id)parseJSON:(id)a3
{
  v3 = [a3 UTF8String];
  v4 = v3;
  if (v3)
  {
    v5 = strlen(v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v4 length:v5];
  v11 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v11];
  v8 = v11;
  v9 = v8;
  if (!v7)
  {
    NSLog(&cfstr_ParseError.isa, v8);
  }

  return v7;
}

+ (id)fetchObjectAtPath:(id)a3 from:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!v12)
        {
          goto LABEL_17;
        }

        v13 = *(*(&v20 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v12 objectForKey:v13];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_17;
          }

          v14 = v12;
          v15 = [v13 intValue];
          v16 = [v14 count];
          if ((v15 & 0x80000000) != 0 || v15 >= v16)
          {

LABEL_17:
            v17 = 0;
            goto LABEL_18;
          }

          v6 = [v14 objectAtIndex:v15];
        }

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = v6;
  v17 = v12;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)parsePath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hasPrefix:@"/"])
  {
    v4 = [v3 substringWithRange:{1, objc_msgSend(v3, "length") - 1}];

    v3 = v4;
  }

  if ([v3 length])
  {
    v15 = v3;
    v5 = [v3 componentsSeparatedByString:@"/"];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"~1" withString:@"/"];
          v12 = [v11 stringByReplacingOccurrencesOfString:@"~0" withString:@"~"];
          [v6 addObject:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v3 = v15;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)evaluateDefOp:(id)a3 onObj:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"path"];
  if (v7)
  {
    v8 = [DESJSONPredicate parsePath:v7];
    v9 = [DESJSONPredicate fetchObjectAtPath:v8 from:v6];
    v10 = [v5 objectForKey:@"op"];
    v11 = (v9 == 0) ^ [@"defined" isEqualToString:v10];
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (BOOL)evaluateStringOp:(id)a3 onObj:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"op"];
  v8 = [v6 objectForKey:@"path"];
  v9 = [v6 objectForKey:@"value"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [DESJSONPredicate parsePath:v8];
      v11 = [DESJSONPredicate fetchObjectAtPath:v10 from:v5];
      if (!v11)
      {
        v13 = 0;
LABEL_21:

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v11];
      }

      v14 = v12;
      if ([v7 hasSuffix:@"-"])
      {
        v15 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];

        v16 = [v14 uppercaseString];

        v17 = [v9 uppercaseString];

        v9 = v17;
        v7 = v15;
        v14 = v16;
      }

      if ([@"starts" isEqualToString:v7])
      {
        v18 = [v14 hasPrefix:v9];
      }

      else if ([@"ends" isEqualToString:v7])
      {
        v18 = [v14 hasSuffix:v9];
      }

      else if ([@"contains" isEqualToString:v7])
      {
        v18 = [v14 containsString:v9];
      }

      else
      {
        if (![@"test" isEqualToString:v7])
        {
          v13 = 0;
          goto LABEL_20;
        }

        v18 = [v14 isEqualToString:v9];
      }

      v13 = v18;
LABEL_20:

      goto LABEL_21;
    }
  }

  v13 = 0;
LABEL_22:

  return v13;
}

+ (BOOL)evaluateRegexOp:(id)a3 onObj:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"op"];
  v8 = [v6 objectForKey:@"path"];
  v9 = [v6 objectForKey:@"value"];

  v10 = 0;
  if (v8 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [DESJSONPredicate parsePath:v8];
      v12 = [DESJSONPredicate fetchObjectAtPath:v11 from:v5];
      if (v12)
      {
        v13 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v13];
        }

        v15 = v14;
        v16 = [v7 hasSuffix:@"-"];
        v17 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v9 options:v16 error:0];
        v10 = [v17 numberOfMatchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}] != 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)evaluateNumericOp:(id)a3 onObj:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"op"];
  v8 = [v6 objectForKey:@"path"];
  v9 = [v6 objectForKey:@"value"];

  v10 = 0;
  if (v8 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [DESJSONPredicate parsePath:v8];
      v12 = [DESJSONPredicate fetchObjectAtPath:v11 from:v5];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v10 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v13 = v12;
      if ([@"less" isEqualToString:v7])
      {
        v14 = -1;
      }

      else
      {
        if (![@"more" isEqualToString:v7])
        {
          v10 = 0;
          goto LABEL_14;
        }

        v14 = 1;
      }

      v10 = [v13 compare:v9] == v14;
LABEL_14:

      goto LABEL_15;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

+ (BOOL)_testStrings:(id)a3 test:(id)a4 caseInsensitive:(BOOL)a5
{
  if (a5)
  {
    return [a3 caseInsensitiveCompare:a4] == 0;
  }

  return [a3 isEqualToString:a4];
}

+ (BOOL)evaluateArrayOp:(id)a3 onObj:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"path"];
  v8 = [v5 objectForKey:@"value"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [DESJSONPredicate parsePath:v7];
    v10 = [DESJSONPredicate fetchObjectAtPath:v9 from:v6];
    if (v10)
    {
      v11 = [v5 objectForKeyedSubscript:@"op"];
      v23 = [v11 isEqualToString:@"in-"];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v21 = v9;
        v22 = v6;
        v15 = *v25;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              if ([DESJSONPredicate _testStrings:v10 test:v17 caseInsensitive:v23])
              {
                goto LABEL_18;
              }
            }

            else if ([v17 isEqual:v10])
            {
LABEL_18:
              v18 = 1;
              goto LABEL_19;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v18 = 0;
LABEL_19:
        v9 = v21;
        v6 = v22;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)isNumber:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(v3);
    v5 = v4 != CFBooleanGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isBoolean:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(v3);
    v5 = v4 == CFBooleanGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)obj:(id)a3 matchesRegex:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v6 options:0 error:0];
    v9 = [v8 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
    v10 = v9;
    if (v9)
    {
      if ([v9 count] == 1)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

+ (BOOL)evaluateTypeOp:(id)a3 onObj:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"path"];
  v8 = [v6 objectForKey:@"value"];

  v9 = 0;
  if (v7 && v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [DESJSONPredicate parsePath:v7];
      v11 = [DESJSONPredicate fetchObjectAtPath:v10 from:v5];
      if (v11)
      {
        if ([v8 isEqualToString:@"string"])
        {
          goto LABEL_6;
        }

        if ([v8 isEqualToString:@"number"])
        {
          isKindOfClass = [DESJSONPredicate isNumber:v11];
          goto LABEL_14;
        }

        if ([v8 isEqualToString:@"BOOLean"])
        {
          isKindOfClass = [DESJSONPredicate isBoolean:v11];
          goto LABEL_14;
        }

        if ([v8 isEqualToString:@"object"] || objc_msgSend(v8, "isEqualToString:", @"array") || objc_msgSend(v8, "isEqualToString:", @"null"))
        {
LABEL_6:
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
LABEL_14:
          v9 = isKindOfClass;
          goto LABEL_20;
        }

        if (([v8 isEqualToString:@"undefined"] & 1) == 0)
        {
          if ([v8 isEqualToString:@"date"])
          {
            isKindOfClass = [DESJSONPredicate isDate:v11];
            goto LABEL_14;
          }

          if ([v8 isEqualToString:@"date-time"])
          {
            isKindOfClass = [DESJSONPredicate isDateTime:v11];
            goto LABEL_14;
          }

          if ([v8 isEqualToString:@"time"])
          {
            isKindOfClass = [DESJSONPredicate isTime:v11];
            goto LABEL_14;
          }
        }
      }

      else if ([v8 isEqualToString:@"undefined"])
      {
        v9 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v9 = 0;
      goto LABEL_20;
    }

    v9 = 0;
  }

LABEL_21:

  return v9 & 1;
}

+ (BOOL)evaluateAnd:(id)a3 onObj:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![DESJSONPredicate evaluatePredicate:*(*(&v15 + 1) + 8 * i) onObj:v6, v15])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)evaluateOr:(id)a3 onObj:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([DESJSONPredicate evaluatePredicate:*(*(&v13 + 1) + 8 * i) onObj:v6, v13])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)evaluateBoolOp:(id)a3 onObj:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"op"];
  v8 = [v6 objectForKey:@"path"];
  v9 = [v6 objectForKey:@"apply"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = v5;
      if (v8)
      {
        v12 = [DESJSONPredicate parsePath:v8];
        v13 = [DESJSONPredicate fetchObjectAtPath:v12 from:v11];

        v11 = v13;
      }

      if ([v7 isEqualToString:@"and"])
      {
        v14 = [DESJSONPredicate evaluateAnd:v10 onObj:v11];
      }

      else
      {
        if ([v7 isEqualToString:@"not"])
        {
          v15 = ![DESJSONPredicate evaluateAnd:v10 onObj:v11];
          goto LABEL_14;
        }

        if (![v7 isEqualToString:@"or"])
        {
          LOBYTE(v15) = 0;
          goto LABEL_14;
        }

        v14 = [DESJSONPredicate evaluateOr:v10 onObj:v11];
      }

      LOBYTE(v15) = v14;
LABEL_14:

      goto LABEL_15;
    }
  }

  LOBYTE(v15) = 0;
LABEL_15:

  return v15;
}

+ (BOOL)evaluateDict:(id)a3 onObj:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (evaluateDict_onObj__onceToken != -1)
  {
    +[DESJSONPredicate evaluateDict:onObj:];
  }

  v7 = [v5 allKeys];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v5 objectForKey:@"op"];
    if ([evaluateDict_onObj__BOOLOps containsObject:v9])
    {
      v10 = [DESJSONPredicate evaluateBoolOp:v5 onObj:v6];
    }

    else if ([evaluateDict_onObj__defOps containsObject:v9])
    {
      v10 = [DESJSONPredicate evaluateDefOp:v5 onObj:v6];
    }

    else if ([evaluateDict_onObj__stringOps containsObject:v9])
    {
      v10 = [DESJSONPredicate evaluateStringOp:v5 onObj:v6];
    }

    else if ([evaluateDict_onObj__regexOps containsObject:v9])
    {
      v10 = [DESJSONPredicate evaluateRegexOp:v5 onObj:v6];
    }

    else if ([evaluateDict_onObj__numericOps containsObject:v9])
    {
      v10 = [DESJSONPredicate evaluateNumericOp:v5 onObj:v6];
    }

    else if ([evaluateDict_onObj__arrayOps containsObject:v9])
    {
      v10 = [DESJSONPredicate evaluateArrayOp:v5 onObj:v6];
    }

    else
    {
      if (![evaluateDict_onObj__typeOps containsObject:v9])
      {
        v11 = 0;
        goto LABEL_20;
      }

      v10 = [DESJSONPredicate evaluateTypeOp:v5 onObj:v6];
    }

    v11 = v10;
LABEL_20:

    goto LABEL_21;
  }

  v11 = 1;
LABEL_21:

  return v11;
}

void __39__DESJSONPredicate_evaluateDict_onObj___block_invoke()
{
  v35[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v35[0] = @"and";
  v35[1] = @"not";
  v35[2] = @"or";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  v2 = [v0 initWithArray:v1];
  v3 = evaluateDict_onObj__BOOLOps;
  evaluateDict_onObj__BOOLOps = v2;

  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v34[0] = @"defined";
  v34[1] = @"undefined";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v6 = [v4 initWithArray:v5];
  v7 = evaluateDict_onObj__defOps;
  evaluateDict_onObj__defOps = v6;

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v33 = @"type";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v10 = [v8 initWithArray:v9];
  v11 = evaluateDict_onObj__typeOps;
  evaluateDict_onObj__typeOps = v10;

  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v32[0] = @"in";
  v32[1] = @"in-";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v14 = [v12 initWithArray:v13];
  v15 = evaluateDict_onObj__arrayOps;
  evaluateDict_onObj__arrayOps = v14;

  v16 = objc_alloc(MEMORY[0x277CBEB98]);
  v31[0] = @"less";
  v31[1] = @"more";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v18 = [v16 initWithArray:v17];
  v19 = evaluateDict_onObj__numericOps;
  evaluateDict_onObj__numericOps = v18;

  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  v30[0] = @"matches";
  v30[1] = @"matches-";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v22 = [v20 initWithArray:v21];
  v23 = evaluateDict_onObj__regexOps;
  evaluateDict_onObj__regexOps = v22;

  v24 = objc_alloc(MEMORY[0x277CBEB98]);
  v29[0] = @"contains";
  v29[1] = @"contains-";
  v29[2] = @"ends";
  v29[3] = @"ends-";
  v29[4] = @"starts";
  v29[5] = @"starts-";
  v29[6] = @"test";
  v29[7] = @"test-";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:8];
  v26 = [v24 initWithArray:v25];
  v27 = evaluateDict_onObj__stringOps;
  evaluateDict_onObj__stringOps = v26;

  v28 = *MEMORY[0x277D85DE8];
}

+ (BOOL)evaluatePredicate:(id)a3 onObj:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [DESJSONPredicate evaluateDict:v5 onObj:v6];

  return v7;
}

+ (BOOL)evaluateJson:(id)a3 onJson:(id)a4
{
  v5 = a4;
  v6 = [DESJSONPredicate parseJSON:a3];
  v7 = [DESJSONPredicate parseJSON:v5];

  LOBYTE(v5) = [DESJSONPredicate evaluatePredicate:v6 onObj:v7];
  return v5;
}

@end