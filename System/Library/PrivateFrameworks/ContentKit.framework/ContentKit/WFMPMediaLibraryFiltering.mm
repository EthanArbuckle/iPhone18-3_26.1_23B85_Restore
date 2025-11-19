@interface WFMPMediaLibraryFiltering
+ (Class)objectClass;
+ (void)performCustomFilteringUsingComparisonPredicates:(id)a3 resultHandler:(id)a4;
@end

@implementation WFMPMediaLibraryFiltering

+ (Class)objectClass
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getMPMediaItemClass_softClass_26903;
  v9 = getMPMediaItemClass_softClass_26903;
  if (!getMPMediaItemClass_softClass_26903)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getMPMediaItemClass_block_invoke_26904;
    v5[3] = &unk_27834A178;
    v5[4] = &v6;
    __getMPMediaItemClass_block_invoke_26904(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (void)performCustomFilteringUsingComparisonPredicates:(id)a3 resultHandler:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v34 = a4;
  v35 = objc_opt_new();
  v37 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v6)
  {
    v7 = *v39;
    v33 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v37 addObject:v9];
          continue;
        }

        v10 = v9;
        if ([v10 comparisonType] == 4)
        {
          v11 = 0;
        }

        else
        {
          if ([v10 comparisonType] != 99)
          {

            goto LABEL_25;
          }

          v11 = 1;
        }

        v12 = [v10 property];
        v13 = [v12 userInfo];

        v14 = [v10 value];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v14 != 0)) == 1)
        {
          v43 = 0;
          v44 = &v43;
          v45 = 0x2020000000;
          v15 = getMPMediaItemPropertyMediaTypeSymbolLoc_ptr_26926;
          v46 = getMPMediaItemPropertyMediaTypeSymbolLoc_ptr_26926;
          if (!getMPMediaItemPropertyMediaTypeSymbolLoc_ptr_26926)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMPMediaItemPropertyMediaTypeSymbolLoc_block_invoke_26927;
            v49 = &unk_27834A178;
            v50 = &v43;
            v16 = MediaPlayerLibrary_26905();
            v17 = dlsym(v16, "MPMediaItemPropertyMediaType");
            *(v50[1] + 24) = v17;
            getMPMediaItemPropertyMediaTypeSymbolLoc_ptr_26926 = *(v50[1] + 24);
            v15 = v44[3];
          }

          _Block_object_dispose(&v43, 8);
          if (!v15)
          {
            v31 = [MEMORY[0x277CCA890] currentHandler];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyMediaType(void)"];
            [v31 handleFailureInFunction:v32 file:@"WFMPMediaLibraryFiltering.m" lineNumber:19 description:{@"%s", dlerror(), v33}];

            __break(1u);
          }

          if ([v13 isEqualToString:*v15])
          {
            v18 = WFMPMediaTypeMapping();
            v19 = [v18 allKeysForObject:v14];
            v20 = [v19 firstObject];

            v14 = v20;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2050000000;
          v21 = getMPMediaPropertyPredicateClass_softClass;
          v49 = getMPMediaPropertyPredicateClass_softClass;
          if (!getMPMediaPropertyPredicateClass_softClass)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __getMPMediaPropertyPredicateClass_block_invoke;
            v42[3] = &unk_27834A178;
            v42[4] = buf;
            __getMPMediaPropertyPredicateClass_block_invoke(v42);
            v21 = *(*&buf[8] + 24);
          }

          v22 = v21;
          _Block_object_dispose(buf, 8);
          v23 = [v21 predicateWithValue:v14 forProperty:v13 comparisonType:v11];
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          [v35 addObject:v23];

          continue;
        }

LABEL_25:
        [v37 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v6);
  }

  v24 = getWFMediaLibraryFilteringLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "+[WFMPMediaLibraryFiltering performCustomFilteringUsingComparisonPredicates:resultHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v35;
    *&buf[22] = 2112;
    v49 = v37;
    _os_log_impl(&dword_21E1BD000, v24, OS_LOG_TYPE_INFO, "%s Filtering with media predicates %@, unfilterable predicates %@", buf, 0x20u);
  }

  if ([v35 count])
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v25 = getMPMediaQueryClass_softClass_26933;
    v46 = getMPMediaQueryClass_softClass_26933;
    if (!getMPMediaQueryClass_softClass_26933)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPMediaQueryClass_block_invoke_26934;
      v49 = &unk_27834A178;
      v50 = &v43;
      __getMPMediaQueryClass_block_invoke_26934(buf);
      v25 = v44[3];
    }

    v26 = v25;
    _Block_object_dispose(&v43, 8);
    v27 = [[v25 alloc] initWithFilterPredicates:v35];
    v28 = [v27 items];

    v29 = getWFMediaLibraryFilteringLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v28 count];
      *buf = 136315394;
      *&buf[4] = "+[WFMPMediaLibraryFiltering performCustomFilteringUsingComparisonPredicates:resultHandler:]";
      *&buf[12] = 2048;
      *&buf[14] = v30;
      _os_log_impl(&dword_21E1BD000, v29, OS_LOG_TYPE_INFO, "%s MPMediaQuery completed with %lu results", buf, 0x16u);
    }

    v34[2](v34, v28, v37);
  }

  else
  {
    v34[2](v34, 0, 0);
  }
}

@end