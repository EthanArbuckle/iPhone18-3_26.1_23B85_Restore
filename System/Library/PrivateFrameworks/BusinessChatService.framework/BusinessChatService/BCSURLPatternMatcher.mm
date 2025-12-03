@interface BCSURLPatternMatcher
- (BOOL)isAnyMatchFoundForPathPattern:(id)pattern countOfPathComponents:(int64_t *)components error:(id *)error;
- (BOOL)isValidDomainForURL:(id)l domainBundleIDPatterns:(id)patterns;
- (id)dictionaryFromQueryString:(id)string orderedKeys:(id *)keys;
- (id)extractedPathForAnyMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path countOfPathComponentsToMatch:(unint64_t)match;
- (id)extractedPathForExactMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path patternPathComponent:(id)component;
- (id)extractedQueryByAddingKey:(id)key value:(id)value toExtractedQuery:(id)query;
- (id)extractedURLForOriginalURL:(id)l originalURLPathComponents:(id)components extractedPath:(id)path extractedQuery:(id)query;
- (id)matchPattern:(id)pattern withURL:(id)l forBundleID:(id)d expirationDate:(id)date error:(id *)error;
- (id)orderedKeysForPatternQuery:(id)query originalURLQuery:(id)lQuery orderedOriginalURLQueryKeys:(id)keys;
@end

@implementation BCSURLPatternMatcher

- (BOOL)isValidDomainForURL:(id)l domainBundleIDPatterns:(id)patterns
{
  lCopy = l;
  patternsCopy = patterns;
  v7 = patternsCopy;
  if (!lCopy)
  {
    goto LABEL_5;
  }

  domain = [patternsCopy domain];
  v9 = [domain length];

  if (!v9)
  {
    goto LABEL_5;
  }

  bundleIdPatterns = [v7 bundleIdPatterns];
  v11 = [bundleIdPatterns count];

  if (v11)
  {
    v12 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    host = [v12 host];
    domain2 = [v7 domain];
    v15 = [host isEqualToString:domain2];
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

  return v15;
}

- (id)matchPattern:(id)pattern withURL:(id)l forBundleID:(id)d expirationDate:(id)date error:(id *)error
{
  v86 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  lCopy = l;
  dCopy = d;
  dateCopy = date;
  if (patternCopy && lCopy)
  {
    path = [patternCopy path];
    query = [patternCopy query];
    v18 = query;
    if (!path && ![query length])
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

    v19 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    percentEncodedPath = [v19 percentEncodedPath];
    percentEncodedQuery = [v19 percentEncodedQuery];
    v69 = percentEncodedPath;
    if ([path length])
    {
      errorCopy = error;
      v21 = &stru_28544C2A0;
      if (*[path UTF8String]!= 47)
      {
        v35 = 0;
        v73 = &stru_28544C2A0;
        goto LABEL_65;
      }

      v65 = v18;
      v67 = v19;
      v63 = dateCopy;
      v59 = dCopy;
      if (*[percentEncodedPath UTF8String] == 47)
      {
        v21 = @"/";
      }

      v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
      v61 = path;
      v23 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:path];
      [v23 setCharactersToBeSkipped:v22];
      v24 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:percentEncodedPath];
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
              v33 = lCopy;
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
            v33 = lCopy;
            v34 = 0;
            v26 = v32;
            goto LABEL_32;
          }
        }

        v33 = lCopy;
        if (errorCopy)
        {
          v37 = v28;
          *errorCopy = v29;
        }

LABEL_31:

        v34 = 1;
      }

      else
      {
        v33 = lCopy;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v34 = 0;
      }

LABEL_32:

      dateCopy = v63;
      if (v34)
      {
        v73 = v21;
        v35 = 0;
        v21 = &stru_28544C2A0;
        lCopy = v33;
        dCopy = v59;
        path = v61;
        v18 = v65;
        v19 = v67;
        goto LABEL_65;
      }

      lCopy = v33;
      dCopy = v59;
      path = v61;
      v18 = v65;
      v19 = v67;
      percentEncodedPath = v69;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v21 = &stru_28544C2A0;
    }

    v73 = v21;
    if (-[NSObject length](path, "length") && [v18 length] && !-[__CFString isEqualToString:](v21, "isEqualToString:", percentEncodedPath) || !path && objc_msgSend(v18, "length") && objc_msgSend(percentEncodedPath, "length") && !objc_msgSend(percentEncodedPath, "isEqualToString:", @"/"))
    {
      v35 = 0;
      v21 = &stru_28544C2A0;
    }

    else
    {
      v62 = path;
      v64 = dateCopy;
      v66 = v18;
      v68 = v19;
      if ([v18 length])
      {
        v58 = patternCopy;
        v38 = [(BCSURLPatternMatcher *)self dictionaryFromQueryString:v18 orderedKeys:0];
        v81 = 0;
        v39 = [(BCSURLPatternMatcher *)self dictionaryFromQueryString:percentEncodedQuery orderedKeys:&v81];
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
          v60 = dCopy;
          v56 = lCopy;
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
          lCopy = v56;
          dCopy = v60;
          v18 = v66;
        }

        else
        {
          v48 = 1;
          v21 = &stru_28544C2A0;
        }

        patternCopy = v58;
        if (!v48)
        {
          v35 = 0;
          path = v62;
          dateCopy = v64;
          v19 = v68;
          goto LABEL_65;
        }

        v19 = v68;
      }

      else
      {
        v21 = &stru_28544C2A0;
      }

      v49 = [(BCSURLPatternMatcher *)self extractedURLForOriginalURL:lCopy originalURLPathComponents:v19 extractedPath:v73 extractedQuery:v21];
      v50 = [BCSURLNormalizer normalizedURLForURL:v49];
      v51 = [BCSURLPatternMatchResult alloc];
      v52 = [patternCopy description];
      v53 = objc_alloc_init(BCSDateHelper);
      v35 = [(BCSURLPatternMatchResult *)v51 initWithOriginalURL:lCopy extractedURL:v50 totalConsecutivePrefixMatches:v74 totalExactMatches:v75 totalAnyMatches:v76 bundleID:dCopy pattern:v52 expirationDate:v64 dateHelper:v53];

      v19 = v68;
      dateCopy = v64;
      path = v62;
      v18 = v66;
    }

LABEL_65:

    v36 = v73;
LABEL_66:

    goto LABEL_67;
  }

  path = ABSLogCommon();
  if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSURLPatternMatcher matchPattern:withURL:forBundleID:expirationDate:error:]";
    _os_log_impl(&dword_242072000, path, OS_LOG_TYPE_DEFAULT, "%s Aborting parsing due to nil argument", buf, 0xCu);
  }

  v35 = 0;
LABEL_67:

  v54 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)extractedPathForAnyMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path countOfPathComponentsToMatch:(unint64_t)match
{
  scannerCopy = scanner;
  delimiterCopy = delimiter;
  pathCopy = path;
  v12 = pathCopy;
  if (match)
  {
    while (1)
    {
      v16 = 0;
      [scannerCopy scanUpToCharactersFromSet:delimiterCopy intoString:&v16];
      v13 = v16;
      if (![v13 length])
      {
        break;
      }

      v14 = [v12 stringByAppendingPathComponent:v13];

      v12 = v14;
      if (!--match)
      {
        goto LABEL_7;
      }
    }

    v14 = 0;
  }

  else
  {
    v14 = pathCopy;
  }

LABEL_7:

  return v14;
}

- (id)extractedPathForExactMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path patternPathComponent:(id)component
{
  pathCopy = path;
  componentCopy = component;
  v14 = 0;
  [scanner scanUpToCharactersFromSet:delimiter intoString:&v14];
  v11 = v14;
  if ([v11 length] && !objc_msgSend(v11, "caseInsensitiveCompare:", componentCopy))
  {
    v12 = [pathCopy stringByAppendingPathComponent:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)extractedURLForOriginalURL:(id)l originalURLPathComponents:(id)components extractedPath:(id)path extractedQuery:(id)query
{
  lCopy = l;
  pathCopy = path;
  queryCopy = query;
  percentEncodedQuery = [components percentEncodedQuery];
  scheme = [lCopy scheme];
  if (![scheme length])
  {
    v23 = 0;
LABEL_13:

    goto LABEL_15;
  }

  host = [lCopy host];
  v15 = [host length];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    scheme2 = [lCopy scheme];
    host2 = [lCopy host];
    if ([(__CFString *)pathCopy length])
    {
      v19 = pathCopy;
    }

    else
    {
      v19 = &stru_28544C2A0;
    }

    scheme = [v16 stringWithFormat:@"%@://%@%@", scheme2, host2, v19];

    if ([percentEncodedQuery length])
    {
      v20 = MEMORY[0x277CCACA8];
      if ([(__CFString *)queryCopy length])
      {
        v21 = queryCopy;
      }

      else
      {
        v21 = &stru_28544C2A0;
      }

      v22 = [v20 stringWithFormat:@"%@%@", scheme, v21];

      scheme = v22;
    }

    v23 = [MEMORY[0x277CBEBC0] URLWithString:scheme];
    goto LABEL_13;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (BOOL)isAnyMatchFoundForPathPattern:(id)pattern countOfPathComponents:(int64_t *)components error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  if ([patternCopy length] < 3)
  {
    v18 = 0;
  }

  else
  {
    [patternCopy length];
    MEMORY[0x28223BE20]();
    v9 = (v22 - v8);
    [patternCopy length];
    MEMORY[0x28223BE20]();
    v11 = v22 - v10;
    [patternCopy getCharacters:v9 range:{0, objc_msgSend(patternCopy, "length")}];
    if (*v9 != 91 || v9[[patternCopy length] - 1] != 93)
    {
      goto LABEL_16;
    }

    if (([patternCopy length] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
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
        v16 = [patternCopy length];
        v17 = v12 + 2;
        ++v12;
        if (v17 >= v16 - 1)
        {
          goto LABEL_11;
        }
      }

      if (error)
      {
        [BCSError errorWithDomain:@"com.apple.businessservices" code:41 userInfo:0];
        *error = v18 = 0;
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
    if (components)
    {
      *components = v19;
    }

    v18 = 1;
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)dictionaryFromQueryString:(id)string orderedKeys:(id *)keys
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [string componentsSeparatedByString:@"&"];
  [MEMORY[0x277CBEB38] dictionary];
  v23 = v22 = keys;
  if (keys)
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

- (id)extractedQueryByAddingKey:(id)key value:(id)value toExtractedQuery:(id)query
{
  keyCopy = key;
  valueCopy = value;
  queryCopy = query;
  if (![(__CFString *)queryCopy length])
  {

    queryCopy = @"?";
  }

  if ([(__CFString *)queryCopy length]>= 2)
  {
    v10 = [(__CFString *)queryCopy stringByAppendingString:@"&"];

    queryCopy = v10;
  }

  valueCopy = [(__CFString *)queryCopy stringByAppendingFormat:@"%@=%@", keyCopy, valueCopy];

  return valueCopy;
}

- (id)orderedKeysForPatternQuery:(id)query originalURLQuery:(id)lQuery orderedOriginalURLQueryKeys:(id)keys
{
  v38 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  lQueryCopy = lQuery;
  keysCopy = keys;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(queryCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = keysCopy;
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
        v17 = [queryCopy objectForKeyedSubscript:v16];

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
  allKeys = [queryCopy allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = [lQueryCopy objectForKeyedSubscript:v23];

        if (!v24)
        {
          [v10 addObject:v23];
        }
      }

      v20 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v25 = [v10 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end