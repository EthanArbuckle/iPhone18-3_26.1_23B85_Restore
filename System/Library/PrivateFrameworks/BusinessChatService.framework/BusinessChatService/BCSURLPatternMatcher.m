@interface BCSURLPatternMatcher
- (BOOL)isAnyMatchFoundForPathPattern:(id)a3 countOfPathComponents:(int64_t *)a4 error:(id *)a5;
- (BOOL)isValidDomainForURL:(id)a3 domainBundleIDPatterns:(id)a4;
- (id)dictionaryFromQueryString:(id)a3 orderedKeys:(id *)a4;
- (id)extractedPathForAnyMatchUsingScanner:(id)a3 delimiter:(id)a4 extractedPath:(id)a5 countOfPathComponentsToMatch:(unint64_t)a6;
- (id)extractedPathForExactMatchUsingScanner:(id)a3 delimiter:(id)a4 extractedPath:(id)a5 patternPathComponent:(id)a6;
- (id)extractedQueryByAddingKey:(id)a3 value:(id)a4 toExtractedQuery:(id)a5;
- (id)extractedURLForOriginalURL:(id)a3 originalURLPathComponents:(id)a4 extractedPath:(id)a5 extractedQuery:(id)a6;
- (id)matchPattern:(id)a3 withURL:(id)a4 forBundleID:(id)a5 expirationDate:(id)a6 error:(id *)a7;
- (id)orderedKeysForPatternQuery:(id)a3 originalURLQuery:(id)a4 orderedOriginalURLQueryKeys:(id)a5;
@end

@implementation BCSURLPatternMatcher

- (BOOL)isValidDomainForURL:(id)a3 domainBundleIDPatterns:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_5;
  }

  v8 = [v6 domain];
  v9 = [v8 length];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v7 bundleIdPatterns];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:1];
    v13 = [v12 host];
    v14 = [v7 domain];
    v15 = [v13 isEqualToString:v14];
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

  return v15;
}

- (id)matchPattern:(id)a3 withURL:(id)a4 forBundleID:(id)a5 expirationDate:(id)a6 error:(id *)a7
{
  v86 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12 && v13)
  {
    v16 = [v12 path];
    v17 = [v12 query];
    v18 = v17;
    if (!v16 && ![v17 length])
    {
      v36 = ABSLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[BCSURLPatternMatcher matchPattern:withURL:forBundleID:expirationDate:error:]";
        _os_log_impl(&dword_242072000, v36, OS_LOG_TYPE_DEFAULT, "%s No match since no path or query pattern provided", buf, 0xCu);
      }

      v35 = 0;
      goto LABEL_66;
    }

    v19 = [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:1];
    v20 = [v19 percentEncodedPath];
    v71 = [v19 percentEncodedQuery];
    v69 = v20;
    if ([v16 length])
    {
      v72 = a7;
      v21 = &stru_28544C2A0;
      if (*[v16 UTF8String]!= 47)
      {
        v35 = 0;
        v73 = &stru_28544C2A0;
        goto LABEL_65;
      }

      v65 = v18;
      v67 = v19;
      v63 = v15;
      v59 = v14;
      if (*[v20 UTF8String] == 47)
      {
        v21 = @"/";
      }

      v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
      v61 = v16;
      v23 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v16];
      [v23 setCharactersToBeSkipped:v22];
      v24 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v20];
      [v24 setCharactersToBeSkipped:v22];
      v83 = 0;
      v25 = [v23 scanUpToCharactersFromSet:v22 intoString:&v83];
      v26 = v83;
      if (v25)
      {
        v75 = 0;
        v76 = 0;
        v74 = 0;
        while (1)
        {
          *buf = 0;
          v82 = 0;
          v27 = [(BCSURLPatternMatcher *)self isAnyMatchFoundForPathPattern:v26 countOfPathComponents:buf error:&v82];
          v28 = v82;
          v29 = v28;
          if (v28)
          {
            break;
          }

          if (v27)
          {
            v30 = [(BCSURLPatternMatcher *)self extractedPathForAnyMatchUsingScanner:v24 delimiter:v22 extractedPath:v21 countOfPathComponentsToMatch:*buf];

            if (!v30)
            {
              goto LABEL_30;
            }

            v74 = 0;
            ++v76;
          }

          else
          {
            v30 = [(BCSURLPatternMatcher *)self extractedPathForExactMatchUsingScanner:v24 delimiter:v22 extractedPath:v21 patternPathComponent:v26];

            if (!v30)
            {
LABEL_30:
              v33 = v13;
              v21 = 0;
              goto LABEL_31;
            }

            ++v74;
            ++v75;
          }

          v21 = v30;
          v83 = v26;
          v31 = [v23 scanUpToCharactersFromSet:v22 intoString:&v83];
          v32 = v83;

          v26 = v32;
          if ((v31 & 1) == 0)
          {
            v33 = v13;
            v34 = 0;
            v26 = v32;
            goto LABEL_32;
          }
        }

        v33 = v13;
        if (v72)
        {
          v37 = v28;
          *v72 = v29;
        }

LABEL_31:

        v34 = 1;
      }

      else
      {
        v33 = v13;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v34 = 0;
      }

LABEL_32:

      v15 = v63;
      if (v34)
      {
        v73 = v21;
        v35 = 0;
        v21 = &stru_28544C2A0;
        v13 = v33;
        v14 = v59;
        v16 = v61;
        v18 = v65;
        v19 = v67;
        goto LABEL_65;
      }

      v13 = v33;
      v14 = v59;
      v16 = v61;
      v18 = v65;
      v19 = v67;
      v20 = v69;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v21 = &stru_28544C2A0;
    }

    v73 = v21;
    if (-[NSObject length](v16, "length") && [v18 length] && !-[__CFString isEqualToString:](v21, "isEqualToString:", v20) || !v16 && objc_msgSend(v18, "length") && objc_msgSend(v20, "length") && !objc_msgSend(v20, "isEqualToString:", @"/"))
    {
      v35 = 0;
      v21 = &stru_28544C2A0;
    }

    else
    {
      v62 = v16;
      v64 = v15;
      v66 = v18;
      v68 = v19;
      if ([v18 length])
      {
        v58 = v12;
        v38 = [(BCSURLPatternMatcher *)self dictionaryFromQueryString:v18 orderedKeys:0];
        v81 = 0;
        v39 = [(BCSURLPatternMatcher *)self dictionaryFromQueryString:v71 orderedKeys:&v81];
        v57 = v81;
        [(BCSURLPatternMatcher *)self orderedKeysForPatternQuery:v38 originalURLQuery:v39 orderedOriginalURLQueryKeys:?];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = v80 = 0u;
        v40 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
        if (v40)
        {
          v41 = v40;
          v60 = v14;
          v56 = v13;
          v42 = *v78;
          v43 = &stru_28544C2A0;
          while (2)
          {
            v44 = 0;
            v21 = v43;
            do
            {
              if (*v78 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v77 + 1) + 8 * v44);
              v46 = [v38 objectForKeyedSubscript:v45];
              v47 = [v39 valueForKey:v45];
              if (![v47 length])
              {
LABEL_57:

                v48 = 0;
                goto LABEL_58;
              }

              if ([v46 isEqualToString:@"*"])
              {
                ++v76;
              }

              else
              {
                if (![v46 isEqualToString:v47])
                {
                  goto LABEL_57;
                }

                ++v75;
              }

              v43 = [(BCSURLPatternMatcher *)self extractedQueryByAddingKey:v45 value:v47 toExtractedQuery:v21];

              ++v44;
              v21 = v43;
            }

            while (v41 != v44);
            v41 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

          v48 = 1;
          v21 = v43;
LABEL_58:
          v13 = v56;
          v14 = v60;
          v18 = v66;
        }

        else
        {
          v48 = 1;
          v21 = &stru_28544C2A0;
        }

        v12 = v58;
        if (!v48)
        {
          v35 = 0;
          v16 = v62;
          v15 = v64;
          v19 = v68;
          goto LABEL_65;
        }

        v19 = v68;
      }

      else
      {
        v21 = &stru_28544C2A0;
      }

      v49 = [(BCSURLPatternMatcher *)self extractedURLForOriginalURL:v13 originalURLPathComponents:v19 extractedPath:v73 extractedQuery:v21];
      v50 = [BCSURLNormalizer normalizedURLForURL:v49];
      v51 = [BCSURLPatternMatchResult alloc];
      v52 = [v12 description];
      v53 = objc_alloc_init(BCSDateHelper);
      v35 = [(BCSURLPatternMatchResult *)v51 initWithOriginalURL:v13 extractedURL:v50 totalConsecutivePrefixMatches:v74 totalExactMatches:v75 totalAnyMatches:v76 bundleID:v14 pattern:v52 expirationDate:v64 dateHelper:v53];

      v19 = v68;
      v15 = v64;
      v16 = v62;
      v18 = v66;
    }

LABEL_65:

    v36 = v73;
LABEL_66:

    goto LABEL_67;
  }

  v16 = ABSLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSURLPatternMatcher matchPattern:withURL:forBundleID:expirationDate:error:]";
    _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "%s Aborting parsing due to nil argument", buf, 0xCu);
  }

  v35 = 0;
LABEL_67:

  v54 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)extractedPathForAnyMatchUsingScanner:(id)a3 delimiter:(id)a4 extractedPath:(id)a5 countOfPathComponentsToMatch:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a6)
  {
    while (1)
    {
      v16 = 0;
      [v9 scanUpToCharactersFromSet:v10 intoString:&v16];
      v13 = v16;
      if (![v13 length])
      {
        break;
      }

      v14 = [v12 stringByAppendingPathComponent:v13];

      v12 = v14;
      if (!--a6)
      {
        goto LABEL_7;
      }
    }

    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

LABEL_7:

  return v14;
}

- (id)extractedPathForExactMatchUsingScanner:(id)a3 delimiter:(id)a4 extractedPath:(id)a5 patternPathComponent:(id)a6
{
  v9 = a5;
  v10 = a6;
  v14 = 0;
  [a3 scanUpToCharactersFromSet:a4 intoString:&v14];
  v11 = v14;
  if ([v11 length] && !objc_msgSend(v11, "caseInsensitiveCompare:", v10))
  {
    v12 = [v9 stringByAppendingPathComponent:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)extractedURLForOriginalURL:(id)a3 originalURLPathComponents:(id)a4 extractedPath:(id)a5 extractedQuery:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [a4 percentEncodedQuery];
  v13 = [v9 scheme];
  if (![v13 length])
  {
    v23 = 0;
LABEL_13:

    goto LABEL_15;
  }

  v14 = [v9 host];
  v15 = [v14 length];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [v9 scheme];
    v18 = [v9 host];
    if ([(__CFString *)v10 length])
    {
      v19 = v10;
    }

    else
    {
      v19 = &stru_28544C2A0;
    }

    v13 = [v16 stringWithFormat:@"%@://%@%@", v17, v18, v19];

    if ([v12 length])
    {
      v20 = MEMORY[0x277CCACA8];
      if ([(__CFString *)v11 length])
      {
        v21 = v11;
      }

      else
      {
        v21 = &stru_28544C2A0;
      }

      v22 = [v20 stringWithFormat:@"%@%@", v13, v21];

      v13 = v22;
    }

    v23 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    goto LABEL_13;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (BOOL)isAnyMatchFoundForPathPattern:(id)a3 countOfPathComponents:(int64_t *)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 length] < 3)
  {
    v18 = 0;
  }

  else
  {
    [v7 length];
    MEMORY[0x28223BE20]();
    v9 = (v22 - v8);
    [v7 length];
    MEMORY[0x28223BE20]();
    v11 = v22 - v10;
    [v7 getCharacters:v9 range:{0, objc_msgSend(v7, "length")}];
    if (*v9 != 91 || v9[[v7 length] - 1] != 93)
    {
      goto LABEL_16;
    }

    if (([v7 length] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = 0;
      v13 = v9 + 1;
      while (1)
      {
        v14 = v13[v12];
        if ((v14 - 58) <= 0xFFFFFFF5)
        {
          break;
        }

        v15 = v12 + 1;
        *&v11[2 * v12] = v14;
        v16 = [v7 length];
        v17 = v12 + 2;
        ++v12;
        if (v17 >= v16 - 1)
        {
          goto LABEL_11;
        }
      }

      if (a5)
      {
        [BCSError errorWithDomain:@"com.apple.businessservices" code:41 userInfo:0];
        *a5 = v18 = 0;
        goto LABEL_17;
      }

LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

    v15 = 0;
LABEL_11:
    *&v11[2 * v15] = 0;
    v19 = strtol(v11, 0, 10);
    if (a4)
    {
      *a4 = v19;
    }

    v18 = 1;
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)dictionaryFromQueryString:(id)a3 orderedKeys:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [a3 componentsSeparatedByString:@"&"];
  [MEMORY[0x277CBEB38] dictionary];
  v23 = v22 = a4;
  if (a4)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  }

  else
  {
    v6 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v10 = @"=";
    do
    {
      v11 = 0;
      v24 = v8;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v26 + 1) + 8 * v11) componentsSeparatedByString:{v10, v22}];
        if ([v12 count] >= 2)
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          [v6 addObject:v13];
          v14 = [v12 objectAtIndexedSubscript:1];
          [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
          v16 = v15 = v10;
          v17 = [v14 componentsSeparatedByCharactersInSet:v16];
          [v17 firstObject];
          v19 = v18 = v6;

          v10 = v15;
          [v23 setObject:v19 forKeyedSubscript:v13];

          v6 = v18;
          v8 = v24;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  if (v22)
  {
    *v22 = [v6 copy];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)extractedQueryByAddingKey:(id)a3 value:(id)a4 toExtractedQuery:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![(__CFString *)v9 length])
  {

    v9 = @"?";
  }

  if ([(__CFString *)v9 length]>= 2)
  {
    v10 = [(__CFString *)v9 stringByAppendingString:@"&"];

    v9 = v10;
  }

  v11 = [(__CFString *)v9 stringByAppendingFormat:@"%@=%@", v7, v8];

  return v11;
}

- (id)orderedKeysForPatternQuery:(id)a3 originalURLQuery:(id)a4 orderedOriginalURLQueryKeys:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [v7 objectForKeyedSubscript:v16];

        if (v17)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v7 allKeys];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = [v8 objectForKeyedSubscript:v23];

        if (!v24)
        {
          [v10 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v25 = [v10 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end