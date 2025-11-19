uint64_t DBHIsClassOverridingSelector(void *a1, uint64_t a2)
{
  v4 = [a1 superclass];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v5 = [a1 methodForSelector:a2];
    v6 = v5 != [v4 methodForSelector:a2];
  }

  else
  {
    v6 = 1;
  }

  if (objc_opt_class() == a1)
  {
    v9 = 1;
  }

  else
  {
    v8 = [a1 methodForSelector:a2];
    v9 = v8 != [objc_opt_class() methodForSelector:a2];
  }

  return v6 & v9;
}

BOOL DBHIsInstanceOverridingNSObjectSelector(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 methodForSelector:a2];
    v5 = v4 != [objc_opt_class() methodForSelector:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL DBHIsClassOverridingNSObjectSelector(void *a1, uint64_t a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = [a1 methodForSelector:a2];
  return v4 != [objc_opt_class() methodForSelector:a2];
}

id DebugHierarchyClassesConformingToProtocol(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v3 = _dyld_image_count();
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      image_header = _dyld_get_image_header(i);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __DebugHierarchyClassesConformingToProtocol_block_invoke;
      block[3] = &unk_241D8;
      v9 = v2;
      objc_enumerateClasses(image_header, 0, v1, 0, block);
    }
  }

  return v2;
}

id DebugHierarchyEntryPointClasses()
{
  v0 = DebugHierarchyClassesConformingToProtocol(&OBJC_PROTOCOL___DebugHierarchyEntryPoint);
  v1 = DebugHierarchyClassesConformingToProtocol(&OBJC_PROTOCOL___DebugHierarchyEntryPoint_Fallback);
  v2 = [NSSet setWithArray:v0];
  v3 = [v2 setByAddingObjectsFromArray:v1];
  v4 = [v3 allObjects];

  return v4;
}

id DebugHierarchyMetaDataProviderClasses()
{
  v0 = DebugHierarchyClassesConformingToProtocol(&OBJC_PROTOCOL___DebugHierarchyMetaDataProvider);
  v1 = DebugHierarchyClassesConformingToProtocol(&OBJC_PROTOCOL___DebugHierarchyMetaDataProvider_Fallback);
  v2 = [NSSet setWithArray:v0];
  v3 = [v2 setByAddingObjectsFromArray:v1];
  v4 = [v3 allObjects];

  return v4;
}

id DBGGroupDict(void *a1, void *a2)
{
  v7[0] = @"groupingID";
  v7[1] = @"debugHierarchyObjects";
  v8[0] = a1;
  v8[1] = a2;
  v3 = a2;
  v4 = a1;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

int64_t DebugHierarchyVisibilityForObject(void *a1, int64_t a2)
{
  v3 = a1;
  if ([DebugHierarchyObjectProtocolHelper objectImplements_debugHierarchyVisibility:v3])
  {
    v4 = [DebugHierarchyObjectProtocolHelper debugHierarchyVisibilityOfObject:v3];
  }

  else
  {
    v4 = 1;
  }

  if (v4 > a2)
  {
    a2 = v4;
  }

  return a2;
}

void sub_9E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = [v9 requestContext];
    v12 = [v11 request];
    *a9 = [NSError debugHierarchyErrorFromException:v10 caughtDuringRequest:v12 forMethodSignature:"[DebugHierarchyRequestExecutor runWithError:]"];

    objc_end_catch();
    JUMPOUT(0x9DF8);
  }

  _Unwind_Resume(exception_object);
}

id DebugHierarchyRequestsOSLog()
{
  if (DebugHierarchyRequestsOSLog___dvt_lazy_init_predicate != -1)
  {
    DebugHierarchyRequestsOSLog_cold_1();
  }

  v1 = DebugHierarchyRequestsOSLog___dvt_lazy_init_variable;

  return v1;
}

id DebugHierarchyResponseDataForException(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 callStackSymbols];
  v8 = [NSString stringWithFormat:@"%@\n%@", v6, v7];

  v9 = DebugHierarchyResponseDataForGenericError(@"Exception gathering debug hierarchy information.", v8, v5, a3);

  return v9;
}

id DebugHierarchyResponseDataForGenericError(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (!v9)
  {
    v10 = [DebugHierarchyRequest requestWithDiscoveryType:0 actions:&__NSArray0__struct completion:&__block_literal_global];
  }

  if (a4)
  {
    a4 = [NSString stringWithCString:a4 encoding:4];
  }

  v11 = [DebugHierarchyLogEntry errorLogEntryWithTitle:v7 message:v8 methodSignature:a4];
  [v10 addLogEntry:v11];
  v21 = @"request";
  v12 = [v10 dictionaryRepresentation];
  v22 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v20 = 0;
  v14 = [v13 generateJSONDataWithError:&v20];
  v15 = v20;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 localizedDescription];
    NSLog(&cfstr_Debughierarchy_12.isa, v17);
  }

  v18 = [v9 formattedResponseDataForRawRequestResultData:v14];

  return v18;
}

uint64_t DebugHierarchyBitMaskComparison(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a2 & a1) != 0;
  v4 = (a2 & a1) == 0;
  v5 = a2 == a1;
  if (a3 != 4)
  {
    v5 = 0;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 != 2)
  {
    v3 = v4;
  }

  v6 = (a2 & ~a1) == 0;
  if (a3 != 1)
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (a3 <= 1)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

id DebugHierarchyJSONProcessingOSLog()
{
  if (DebugHierarchyJSONProcessingOSLog___dvt_lazy_init_predicate != -1)
  {
    DebugHierarchyJSONProcessingOSLog_cold_1();
  }

  v1 = DebugHierarchyJSONProcessingOSLog___dvt_lazy_init_variable;

  return v1;
}

objc_class *DebugHierarchyRequestActionClassForDictionary(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"actionClass"];
  v2 = NSClassFromString(v1);
  if ([(objc_class *)v2 conformsToProtocol:&OBJC_PROTOCOL___DebugHierarchyRequestAction])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DebugHierarchyRequestActionForDictionary(void *a1)
{
  v1 = a1;
  v2 = DebugHierarchyRequestActionClassForDictionary(v1);
  if (v2)
  {
    v3 = [(objc_class *)v2 actionWithDictionary:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_E8D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    *v2 = +[NSError debugHierarchyErrorFromException:caughtDuringRequest:forMethodSignature:](NSError, "debugHierarchyErrorFromException:caughtDuringRequest:forMethodSignature:", v3, 0, "+[DebugHierarchyRequest(TargetHubAdditions) requestWithBase64Data:error:]");

    objc_end_catch();
    JUMPOUT(0xE8A4);
  }

  _Unwind_Resume(exception_object);
}

id DebugHierarchyGzipOSLog()
{
  if (DebugHierarchyGzipOSLog___dvt_lazy_init_predicate != -1)
  {
    DebugHierarchyGzipOSLog_cold_1();
  }

  v1 = DebugHierarchyGzipOSLog___dvt_lazy_init_variable;

  return v1;
}

void sub_1171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _DBGViewHierarchyInitialize()
{
  v0 = +[DebugHierarchyTargetHub sharedHub];
  [v0 registerForDarwinNotifications];
}

id DebugHierarchyRequestsOSLog_0()
{
  if (DebugHierarchyRequestsOSLog___dvt_lazy_init_predicate_0 != -1)
  {
    DebugHierarchyRequestsOSLog_cold_1_0();
  }

  v1 = DebugHierarchyRequestsOSLog___dvt_lazy_init_variable_0;

  return v1;
}

id _DBGStructureOfDictionaryDescriptionWithFormat(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"font"])
  {
    v7 = @"familyName";
    v8 = @"fontName";
    v16 = @"public.plain-text";
    v17 = @"public.plain-text";
    v9 = @"pointSize";
    v10 = @"ascender";
    v18 = @"CGf";
    v19 = @"CGf";
    v11 = @"descender";
    v12 = @"capHeight";
    v20 = @"CGf";
    v21 = @"CGf";
    v13 = @"xHeight";
    v14 = @"lineHeight";
    v22 = @"CGf";
    v23 = @"CGf";
    v15 = @"leading";
    v24 = @"CGf";
    v2 = 9;
LABEL_3:
    v3 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v7 count:v2];
    goto LABEL_7;
  }

  if (([v1 isEqualToString:@"color"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"patternImageColor"))
  {
    v7 = @"componentValues";
    v4 = [@"key:" stringByAppendingString:@"componentValuesFormat"];
    v16 = v4;
    v17 = @"public.plain-text";
    v8 = @"colorSpaceName";
    v9 = @"patternImageData";
    v5 = [@"key:" stringByAppendingString:@"patternImageFormat"];
    v18 = v5;
    v19 = @"public.plain-text";
    v10 = @"colorName";
    v11 = @"catalogName";
    v12 = @"catalogBundleID";
    v20 = @"public.plain-text";
    v21 = @"public.plain-text";
    v3 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v7 count:6];

    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"image"])
  {
    v7 = @"imageData";
    v8 = @"metadata";
    v16 = @"public.data";
    v17 = @"custom";
LABEL_14:
    v2 = 2;
    goto LABEL_3;
  }

  if ([v1 isEqualToString:@"objectInfo"])
  {
    v7 = @"className";
    v8 = @"memoryAddress";
    v16 = @"public.plain-text";
    v17 = @"public.plain-text";
    goto LABEL_14;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void DBGClearCachedFormatSpecifiers()
{
  v0 = DBGCachedFormatSpecifiers();
  [v0 removeAllObjects];
}

id DBGCachedFormatSpecifiers()
{
  if (DBGCachedFormatSpecifiers_onceToken != -1)
  {
    DBGCachedFormatSpecifiers_cold_1();
  }

  v1 = DBGCachedFormatSpecifiers_dict;

  return v1;
}

id DBGSpecifiersFromFormatString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v2 = DBGCachedFormatSpecifiers();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (!v3)
  {
    v5 = [NSScanner scannerWithString:v1];
    [v5 setCharactersToBeSkipped:0];
    v6 = [NSMutableArray arrayWithCapacity:8];
    v7 = [NSCharacterSet characterSetWithCharactersInString:@", "];
    v23 = [NSCharacterSet characterSetWithCharactersInString:@", "];
    v22 = [NSCharacterSet characterSetWithCharactersInString:@""];
    if ([v5 isAtEnd])
    {
LABEL_6:
      v4 = [v6 copy];
      v8 = DBGCachedFormatSpecifiers();
      [v8 setObject:v4 forKeyedSubscript:v1];

      v3 = 0;
      goto LABEL_7;
    }

    while (1)
    {
      v10 = +[NSCharacterSet whitespaceCharacterSet];
      v26 = 0;
      [v5 scanUpToCharactersFromSet:v10 intoString:&v26];
      v11 = v26;

      v12 = +[NSCharacterSet whitespaceCharacterSet];
      v13 = [v11 stringByTrimmingCharactersInSet:v12];

      if ([v13 length] < 2)
      {
        if ([v5 isAtEnd])
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = [v13 substringFromIndex:{objc_msgSend(v13, "length") - 1}];
        if ([v14 isEqualToString:{@", "}])
        {

LABEL_15:
          [v13 stringByTrimmingCharactersInSet:v7];
          v13 = v15 = v13;
          goto LABEL_16;
        }

        v19 = [v5 isAtEnd];

        if (v19)
        {
          goto LABEL_15;
        }
      }

      v25 = 0;
      [v5 scanUpToCharactersFromSet:v23 intoString:&v25];
      v15 = v25;
      v20 = 0;
      if (([v5 isAtEnd] & 1) == 0)
      {
        v20 = [v1 substringWithRange:{objc_msgSend(v5, "scanLocation"), 1}];
      }

      if ([v20 isEqualToString:@""])
      {
        [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
        v24 = 0;
        [v5 scanUpToCharactersFromSet:v22 intoString:&v24];
        v16 = v24;
        goto LABEL_29;
      }

      if ([v15 length])
      {
        v21 = +[NSCharacterSet whitespaceCharacterSet];
        v16 = [v15 stringByTrimmingCharactersInSet:v21];

LABEL_29:
        if (v16)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
LABEL_17:
      v16 = +[NSNull null];
LABEL_18:
      v17 = [DebugHierarchyFormatSpecifier specifierWithFormat:v13 label:v16];
      [v6 addObject:v17];

      if (([v5 isAtEnd] & 1) == 0)
      {
        v18 = +[NSCharacterSet alphanumericCharacterSet];
        [v5 scanUpToCharactersFromSet:v18 intoString:0];
      }

      if ([v5 isAtEnd])
      {
        goto LABEL_6;
      }
    }
  }

  v4 = v3;
LABEL_7:

LABEL_8:

  return v4;
}

id DBGEncodeDictionaryAsJSONCompatibleDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __DBGEncodeDictionaryAsJSONCompatibleDictionary_block_invoke;
  v10[3] = &unk_244F0;
  v11 = v4;
  v13 = v12 = v3;
  v5 = v13;
  v6 = v3;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [v5 copy];

  return v8;
}

void __DBGEncodeDictionaryAsJSONCompatibleDictionary_block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  if ([v4 hasPrefix:@"key:"])
  {
    v5 = a1[5];
    v6 = [v4 substringFromIndex:4];
    v7 = [v5 objectForKeyedSubscript:v6];

    v4 = v7;
  }

  v8 = [a1[5] objectForKeyedSubscript:v3];
  v11 = 0;
  v9 = DBGEncodeValueAsJSONCompatibleValue(v8, v4, &v11);
  v10 = v11;
  [a1[6] setObject:v9 forKeyedSubscript:v3];

  if (v10)
  {
    [a1[6] removeObjectForKey:v3];
    NSLog(&cfstr_ErrorFailedToE.isa, v3, v4);
  }
}

id DBGEncodeValueAsJSONCompatibleValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 isEqualToString:@"custom"])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v10 = DBGSpecifiersFromFormatString(v6);
    v11 = [v9 count];
    if (v11 == [v10 count])
    {
      v35 = a3;
      v36 = v6;
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      if ([v9 count])
      {
        v13 = 0;
        while (1)
        {
          v14 = [v9 objectAtIndexedSubscript:v13];
          v15 = [v10 objectAtIndexedSubscript:v13];
          v16 = [v15 format];
          v38 = 0;
          v17 = DBGEncodeValueAsJSONCompatibleValue(v14, v16, &v38);
          v18 = v38;
          [v12 addObject:v17];

          if (v18)
          {
            break;
          }

          if ([v9 count] <= ++v13)
          {
            goto LABEL_31;
          }
        }

        if (v35)
        {
          v27 = v18;
          *v35 = v18;
        }
      }

LABEL_31:
      v8 = [v12 copy];
      v6 = v36;
    }

    else
    {
      if (!a3)
      {
        v8 = 0;
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Mismatch between number of values (%lu) and number of format specifiers (%lu).\nValue: %@\nFormat: %@", [v9 count], objc_msgSend(v10, "count"), v9, v6);
      v43 = NSLocalizedDescriptionKey;
      v44 = v12;
      v19 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v20 = [NSError errorWithDomain:@"DebugHierarchyJSONEncodingErrorDomain" code:2 userInfo:v19];

      v21 = v20;
      *a3 = v20;

      v8 = 0;
    }

    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = _DBGStructureOfDictionaryDescriptionWithFormat(v6);
    if (v9)
    {
      v8 = DBGEncodeDictionaryAsJSONCompatibleDictionary(v5, v9);
    }

    else
    {
      v23 = [NSString stringWithFormat:@"Unsupported dictionary structure described with format: %@ for value: %@", v6, v5];
      v41 = NSLocalizedDescriptionKey;
      v42 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v25 = [NSError errorWithDomain:@"DebugHierarchyJSONEncodingErrorDomain" code:1 userInfo:v24];

      if (a3 && v25)
      {
        v26 = v25;
        *a3 = v25;
      }

      v8 = 0;
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
    v8 = [v5 dbgStringForType:v6 error:&v37];
    v22 = v37;
    if (a3 && v22)
    {
      v22 = v22;
      *a3 = v22;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 string];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      v7 = v5;
LABEL_3:
      v8 = v7;
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 base64EncodedStringWithOptions:0];
      goto LABEL_3;
    }

    if (a3)
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [NSString stringWithFormat:@"Unsupported type: %@ of value: %@", v30, v5];

      v39 = NSLocalizedDescriptionKey;
      v40 = v31;
      v32 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v33 = [NSError errorWithDomain:@"DebugHierarchyJSONEncodingErrorDomain" code:1 userInfo:v32];

      v34 = v33;
      *a3 = v33;
    }

    v8 = 0;
  }

LABEL_35:

  return v8;
}

id DBGDecodeDictionaryFromJSONCompatibleDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __DBGDecodeDictionaryFromJSONCompatibleDictionary_block_invoke;
  v10[3] = &unk_244F0;
  v11 = v4;
  v13 = v12 = v3;
  v5 = v13;
  v6 = v3;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [v5 copy];

  return v8;
}

void __DBGDecodeDictionaryFromJSONCompatibleDictionary_block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  if ([v4 hasPrefix:@"key:"])
  {
    v5 = a1[5];
    v6 = [v4 substringFromIndex:4];
    v7 = [v5 objectForKeyedSubscript:v6];

    v4 = v7;
  }

  v8 = [a1[5] objectForKeyedSubscript:v3];
  v11 = 0;
  v9 = DBGDecodeValueFromJSONCompatibleValue(v8, v4, &v11);
  v10 = v11;
  [a1[6] setObject:v9 forKeyedSubscript:v3];

  if (v10)
  {
    [a1[6] removeObjectForKey:v3];
    NSLog(&cfstr_ErrorFailedToD.isa, v3, v4);
  }
}

id DBGDecodeValueFromJSONCompatibleValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 isEqualToString:@"custom"])
  {
    v7 = v5;
    goto LABEL_44;
  }

  v8 = DBGSpecifiersFromFormatString(v6);
  if ([v8 count] < 2)
  {
    if ([v8 count] != &dword_0 + 1)
    {
      goto LABEL_17;
    }

    v18 = [v8 firstObject];
    v9 = [v18 format];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
      if ([v9 isEqualToString:@"b"])
      {
        v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 dbgBoolValue]);
LABEL_35:
        v7 = v19;
        goto LABEL_41;
      }

      if ([v9 isEqualToString:@"CGf"])
      {
        [v12 dbgCGFloatValue];
LABEL_25:
        v19 = [NSNumber numberWithDouble:?];
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"f"])
      {
        [v12 dbgFloatValue];
        v19 = [NSNumber numberWithFloat:?];
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"d"])
      {
        [v12 dbgDoubleValue];
        goto LABEL_25;
      }

      if ([v9 isEqualToString:@"integer"])
      {
        v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 dbgIntegerValue]);
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"uinteger"])
      {
        v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 dbgUnsignedIntegerValue]);
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"public.plain-text"])
      {
        v19 = v12;
        v12 = v19;
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"attrStr"])
      {
        v19 = [[NSAttributedString alloc] initWithString:v12];
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"public.data"])
      {
        v19 = [v12 dbgDataValue];
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"i"])
      {
        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 dbgIntValue]);
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"ui"])
      {
        v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 dbgUnsignedIntValue]);
        goto LABEL_35;
      }

      if ([v9 isEqualToString:@"l"])
      {
        v36 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v12 dbgLongValue]);
LABEL_71:
        v7 = v36;
        goto LABEL_41;
      }

      if ([v9 isEqualToString:@"ul"])
      {
        v36 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 dbgUnsignedLongValue]);
        goto LABEL_71;
      }

      if ([v9 isEqualToString:@"ll"])
      {
        v36 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 dbgLongLongValue]);
        goto LABEL_71;
      }

      if ([v9 isEqualToString:@"ull"])
      {
        v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 dbgUnsignedLongLongValue]);
        goto LABEL_71;
      }

      if (!a3)
      {
        v7 = 0;
        goto LABEL_41;
      }

      v27 = [NSString stringWithFormat:@"Unsupported typeSpecifier: %@ of string value: %@", v9, v12];
      v44 = NSLocalizedDescriptionKey;
      v45 = v27;
      v30 = &v45;
      v31 = &v44;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a3)
        {
          goto LABEL_28;
        }

        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v12 = [NSString stringWithFormat:@"Unsupported type: %@ of value: %@", v25, v5];

        v40 = NSLocalizedDescriptionKey;
        v41 = v12;
        v26 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v27 = [NSError errorWithDomain:@"DebugHierarchyJSONDecodingErrorDomain" code:1 userInfo:v26];

        v28 = v27;
        *a3 = v27;
        goto LABEL_39;
      }

      v12 = _DBGStructureOfDictionaryDescriptionWithFormat(v6);
      if (v12)
      {
        v19 = DBGDecodeDictionaryFromJSONCompatibleDictionary(v5, v12);
        goto LABEL_35;
      }

      if (!a3)
      {
LABEL_40:
        v7 = 0;
        goto LABEL_41;
      }

      v27 = [NSString stringWithFormat:@"Unsupported dictionary structure described with format: %@ for value: %@", v6, v5];
      v42 = NSLocalizedDescriptionKey;
      v43 = v27;
      v30 = &v43;
      v31 = &v42;
    }

    v32 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:1];
    v33 = [NSError errorWithDomain:@"DebugHierarchyJSONDecodingErrorDomain" code:1 userInfo:v32];

    v34 = v33;
    *a3 = v33;

LABEL_39:
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v10 = [v9 count];
    if (v10 == [v8 count])
    {
      v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      if ([v9 count])
      {
        v37 = a3;
        v38 = v5;
        v11 = 0;
        while (1)
        {
          v12 = [v9 objectAtIndexedSubscript:v11];
          v13 = v8;
          v14 = [v8 objectAtIndexedSubscript:v11];
          v15 = [v14 format];
          v39 = 0;
          v16 = DBGDecodeValueFromJSONCompatibleValue(v12, v15, &v39);
          v17 = v39;
          [v7 addObject:v16];

          if (v17)
          {
            break;
          }

          ++v11;
          v8 = v13;
          if ([v9 count] <= v11)
          {
            v5 = v38;
            goto LABEL_42;
          }
        }

        if (v37)
        {
          v29 = v17;
          *v37 = v17;
        }

        v8 = v13;
        v5 = v38;
        goto LABEL_32;
      }

LABEL_42:

      goto LABEL_43;
    }

    if (a3)
    {
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Mismatch between number of values (%lu) and number of format specifiers (%lu).\nValue: %@\nFormat: %@", [v9 count], objc_msgSend(v8, "count"), v9, v6);
      v48 = NSLocalizedDescriptionKey;
      v49 = v12;
      v22 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v14 = [NSError errorWithDomain:@"DebugHierarchyJSONDecodingErrorDomain" code:2 userInfo:v22];

      v23 = v14;
      v7 = 0;
      *a3 = v14;
LABEL_32:

      goto LABEL_41;
    }

LABEL_28:
    v7 = 0;
    goto LABEL_42;
  }

  if (a3)
  {
    v9 = [NSString stringWithFormat:@"Multiple format specifiers (%@) paired with non-array type value: %@", v6, v5];
    v46 = NSLocalizedDescriptionKey;
    v47 = v9;
    v20 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v12 = [NSError errorWithDomain:@"DebugHierarchyJSONDecodingErrorDomain" code:2 userInfo:v20];

    v21 = v12;
    v7 = 0;
    *a3 = v12;
LABEL_41:

    goto LABEL_42;
  }

LABEL_17:
  v7 = 0;
LABEL_43:

LABEL_44:

  return v7;
}

id DBGSerializePropertyDescriptionAsJSON(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"propertyValue"];
  v5 = v3;
  if (v4)
  {
    objc_opt_class();
    v5 = v3;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [v3 objectForKeyedSubscript:@"propertyFormat"];
      if ([v6 length])
      {
        v16 = 0;
        v7 = DBGEncodeValueAsJSONCompatibleValue(v4, v6, &v16);
        v8 = v16;
        v9 = v8;
        if (a2 && v8)
        {
          v10 = v8;
          *a2 = v9;
        }

        v11 = [v3 mutableCopy];
        [v11 setObject:v7 forKeyedSubscript:@"propertyValue"];
        v5 = [v11 copy];
      }

      else
      {
        v9 = [v3 mutableCopy];
        [v9 removeObjectForKey:@"propertyValue"];
        v5 = [v9 copy];

        if (!a2)
        {
LABEL_11:

          goto LABEL_12;
        }

        v12 = [v3 objectForKeyedSubscript:@"propertyName"];
        v7 = [NSString stringWithFormat:@"Format has zero length. Discarding value for property: %@.", v12];

        v17 = NSLocalizedDescriptionKey;
        v18 = v7;
        v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v11 = [NSError errorWithDomain:@"DebugHierarchyJSONEncodingErrorDomain" code:1 userInfo:v13];

        v14 = v11;
        *a2 = v11;
      }

      goto LABEL_11;
    }
  }

LABEL_12:

  return v5;
}

id DBGSerializePropertyDescriptionsAsJSON(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v11 = DBGSerializePropertyDescriptionAsJSON(v10, &v17);
        v12 = v17;
        if (v12)
        {
          v14 = v12;
          if (a2)
          {
            v15 = v12;
            *a2 = v14;
          }

          v13 = 0;
          goto LABEL_15;
        }

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v4 copy];
LABEL_15:

  return v13;
}

id DBGDeserializePropertyDictionaryFromJSON(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"propertyValue"];
  v5 = v3;
  if (v4)
  {
    v6 = [v3 objectForKeyedSubscript:@"propertyFormat"];
    v5 = v3;
    if ([v6 length])
    {
      v13 = 0;
      v7 = DBGDecodeValueFromJSONCompatibleValue(v4, v6, &v13);
      v8 = v13;
      v9 = v8;
      if (a2 && v8)
      {
        v10 = v8;
        *a2 = v9;
      }

      v11 = [v3 mutableCopy];
      [v11 setObject:v7 forKeyedSubscript:@"propertyValue"];
      v5 = [v11 copy];
    }
  }

  return v5;
}

id DBGDeserializePropertyDictionariesFromJSON(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v11 = DBGDeserializePropertyDictionaryFromJSON(v10, &v17);
        v12 = v17;
        if (v12)
        {
          v14 = v12;
          if (a2)
          {
            v15 = v12;
            *a2 = v14;
          }

          v13 = 0;
          goto LABEL_15;
        }

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v4 copy];
LABEL_15:

  return v13;
}