@interface EMDEUtils
+ (BOOL)isValidConfigFile;
+ (CFScopedPtr<MontrealNeuralNetwork)loadExtractionModelWithError:(id *)error;
+ (NSDictionary)config;
+ (basic_string<char,)getTokenForTokenID:(std::allocator<char>> *__return_ptr)retstr;
+ (id)decodeSequence:()vector<int;
+ (id)preProcessInputMessage:(id)message;
+ (id)profaneRangesForText:(id)text usingLexicon:(_LXLexicon *)lexicon;
+ (id)removeLinksFrom:(id)from;
+ (unsigned)validateAndUpdateAllowedWords:(void *)words forWord:()basic_string<char isComplete:()std:(std::allocator<char>> *)std :char_traits<char>;
+ (vector<float,)tokenizeInputSequence:(id)sequence;
+ (vector<std::string,)allowedPrefixes;
+ (vector<std::string,)decodeVocabulary;
+ (void)loadConfigFromFile:(id)file assetFolderPath:(id)path error:(id *)error;
+ (void)loadDecodeVocabulary;
+ (void)setAllowedPrefixes:()vector<std:(std::allocator<std::string>> *)std :string;
+ (void)setDecodeVocabulary:()vector<std:(std::allocator<std::string>> *)std :string;
@end

@implementation EMDEUtils

+ (void)setAllowedPrefixes:()vector<std:(std::allocator<std::string>> *)std :string
{
  if (std != &qword_1000B6400)
  {
    sub_10000CD84(&qword_1000B6400, std->var0, std->var1, 0xAAAAAAAAAAAAAAABLL * ((std->var1 - std->var0) >> 3));
  }
}

+ (vector<std::string,)allowedPrefixes
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return sub_10000D024(retstr, qword_1000B6400, *algn_1000B6408, 0xAAAAAAAAAAAAAAABLL * ((*algn_1000B6408 - qword_1000B6400) >> 3));
}

+ (void)setDecodeVocabulary:()vector<std:(std::allocator<std::string>> *)std :string
{
  if (std != &qword_1000B6418)
  {
    sub_10000CD84(&qword_1000B6418, std->var0, std->var1, 0xAAAAAAAAAAAAAAABLL * ((std->var1 - std->var0) >> 3));
  }
}

+ (vector<std::string,)decodeVocabulary
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return sub_10000D024(retstr, qword_1000B6418, qword_1000B6420, 0xAAAAAAAAAAAAAAABLL * ((qword_1000B6420 - qword_1000B6418) >> 3));
}

+ (NSDictionary)config
{
  v2 = qword_1000B6430;
  if (!qword_1000B6430)
  {
    v12 = 0;
    [self loadConfigFromFile:qword_1000B6440 assetFolderPath:qword_1000B6438 error:&v12];
    v3 = v12;
    if (v3)
    {
      v4 = extractionLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10008B7E8(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    v2 = qword_1000B6430;
  }

  return v2;
}

+ (void)loadConfigFromFile:(id)file assetFolderPath:(id)path error:(id *)error
{
  fileCopy = file;
  pathCopy = path;
  v11 = pathCopy;
  if (fileCopy && pathCopy)
  {
    objc_storeStrong(&qword_1000B6438, path);
    objc_storeStrong(&qword_1000B6440, file);
    v12 = [qword_1000B6438 stringByAppendingPathComponent:qword_1000B6440];
    v13 = [NSURL fileURLWithPath:v12];
    v14 = [NSData dataWithContentsOfURL:v13 options:0 error:error];

    if (error && *error)
    {
      v15 = extractionLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10008B854(error, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    else
    {
      v24 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:error];
      v25 = qword_1000B6430;
      qword_1000B6430 = v24;

      if (error && *error)
      {
        v15 = extractionLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10008B8C4(error, v15, v26, v27, v28, v29, v30, v31);
        }
      }

      else
      {
        v15 = [qword_1000B6430 mutableCopy];
        [v15 setObject:qword_1000B6438 forKey:@"EMDE_ASSET_FOLDER_PATH"];
        v32 = [v15 copy];
        v33 = qword_1000B6430;
        qword_1000B6430 = v32;

        if ([objc_opt_class() isValidConfigFile])
        {
          [self loadDecodeVocabulary];
        }

        else
        {
          v34 = extractionLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10008B934();
          }

          if (error)
          {
            v37 = NSLocalizedDescriptionKey;
            v35 = [NSString stringWithFormat:@"EMDEUtils - Loaded config file is not valid."];
            v38 = v35;
            v36 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];

            *error = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v36];
          }
        }
      }
    }

    goto LABEL_22;
  }

  v22 = extractionLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10008B968(fileCopy, v11, v22);
  }

  if (error)
  {
    v39 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithFormat:@"Found nil in input parameters for loadConfigFromFile:%@ assetFolderPath:%@", fileCopy, v11];
    v40 = v23;
    v12 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    *error = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v12];
LABEL_22:
  }
}

+ (BOOL)isValidConfigFile
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1000B63F0;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [qword_1000B6430 objectForKey:{v6, v12}];
        v8 = v7 == 0;

        if (v8)
        {
          v10 = extractionLogHandle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v17 = v6;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "EMDEUtils - Missing key %@ in loaded config", buf, 0xCu);
          }

          v9 = 0;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

+ (void)loadDecodeVocabulary
{
  v2 = +[EMDEUtils config];
  v3 = [v2 objectForKeyedSubscript:@"EMDE_ASSET_FOLDER_PATH"];
  v4 = +[EMDEUtils config];
  v5 = [v4 objectForKeyedSubscript:@"EMDE_VOCAB_FILE"];
  v6 = [v3 stringByAppendingPathComponent:v5];

  v24 = [NSString stringWithContentsOfFile:v6 encoding:4 error:0];
  v7 = +[NSCharacterSet newlineCharacterSet];
  v8 = [v24 componentsSeparatedByCharactersInSet:v7];

  sub_10000CF24(&qword_1000B6418);
  qword_1000B6418 = 0;
  qword_1000B6420 = 0;
  qword_1000B6428 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  __p[0] = &v32;
  sub_10000CCE0(__p);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v9)
  {
    v10 = *v29;
    v11 = v6;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        sub_100009A74(__p, [*(*(&v28 + 1) + 8 * i) UTF8String]);
        v13 = qword_1000B6420;
        if (qword_1000B6420 >= qword_1000B6428)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((qword_1000B6420 - qword_1000B6418) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_100003F50();
          }

          if (0x5555555555555556 * ((qword_1000B6428 - qword_1000B6418) >> 3) > v16)
          {
            v16 = 0x5555555555555556 * ((qword_1000B6428 - qword_1000B6418) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((qword_1000B6428 - qword_1000B6418) >> 3) >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v16;
          }

          v36 = &qword_1000B6418;
          if (v17)
          {
            sub_10000CB48(&qword_1000B6418, v17);
          }

          v18 = 8 * ((qword_1000B6420 - qword_1000B6418) >> 3);
          v19 = *__p;
          *(v18 + 16) = v27;
          *v18 = v19;
          __p[1] = 0;
          v27 = 0;
          __p[0] = 0;
          v20 = 24 * v15 + 24;
          v21 = 24 * v15 - (qword_1000B6420 - qword_1000B6418);
          memcpy((v18 - (qword_1000B6420 - qword_1000B6418)), qword_1000B6418, qword_1000B6420 - qword_1000B6418);
          v22 = qword_1000B6418;
          qword_1000B6418 = v21;
          qword_1000B6420 = v20;
          v23 = qword_1000B6428;
          qword_1000B6428 = 0;
          v34 = v22;
          v35 = v23;
          v32 = v22;
          v33 = v22;
          sub_10000D0AC(&v32);
          qword_1000B6420 = v20;
          v6 = v11;
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v14 = *__p;
          *(qword_1000B6420 + 16) = v27;
          *v13 = v14;
          qword_1000B6420 = v13 + 24;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v9);
  }
}

+ (basic_string<char,)getTokenForTokenID:(std::allocator<char>> *__return_ptr)retstr
{
  v2 = qword_1000B6418 + 24 * v1;
  if (*(v2 + 23) < 0)
  {
    return sub_100019AD4(retstr, *v2, *(v2 + 8));
  }

  v3 = *v2;
  *(&retstr->__rep_.__l + 2) = *(v2 + 16);
  *retstr->__rep_.__s.__data_ = v3;
  return result;
}

+ (CFScopedPtr<MontrealNeuralNetwork)loadExtractionModelWithError:(id *)error
{
  v5 = v3;
  v6 = +[EMDEUtils config];
  v7 = [v6 objectForKeyedSubscript:@"EMDE_ASSET_FOLDER_PATH"];
  v8 = +[EMDEUtils config];
  v9 = [v8 objectForKeyedSubscript:@"EMDE_UNILM_MODEL_FILE"];
  v10 = [v7 stringByAppendingPathComponent:v9];

  sub_100009A74(__p, [v10 UTF8String]);
  sub_10000AAE0(kMRLNeuralNetworkOptionModelURLKey, &cf);
  if ((v27 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v12 = v27;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = CFURLCreateWithBytes(0, v11, v12, 0, 0);
  v23 = v13;
  if (!v13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
    v13 = v23;
    v28[0] = v14;
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v28[0] = 0;
  }

  CFRetain(v13);
LABEL_13:
  v28[1] = v13;
  sub_10000AAE0(kMRLNeuralNetworkOptionModelTypeKey, &v22);
  sub_10000D140(v29, &v22, "Espresso");
  v25[0] = v28;
  v25[1] = 2;
  v15 = sub_10000C5A0(v25);
  v16 = 0;
  v25[2] = v15;
  do
  {
    v17 = *&v29[v16 * 8 + 8];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = v28[v16 + 2];
    if (v18)
    {
      CFRelease(v18);
    }

    v16 -= 2;
  }

  while (v16 != -4);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v28[0] = 0;
  *v5 = MRLNeuralNetworkCreate();
  if (error && v28[0])
  {
    v19 = CFRetain(v28[0]);
  }

  else
  {
    if (!error)
    {
      goto LABEL_31;
    }

    v19 = 0;
  }

  *error = v19;
LABEL_31:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  return v20;
}

+ (vector<float,)tokenizeInputSequence:(id)sequence
{
  v44 = a4;
  if (v44)
  {
    v4 = +[EMDEUtils config];
    v5 = [v4 objectForKeyedSubscript:@"EMDE_ASSET_FOLDER_PATH"];
    v6 = +[EMDEUtils config];
    v7 = [v6 objectForKeyedSubscript:@"EMDE_SPIECE_MODEL_FILE"];
    v42 = [v5 stringByAppendingPathComponent:v7];

    memset(v62, 0, sizeof(v62));
    v8 = +[EMDEUtils config];
    v9 = [v8 objectForKeyedSubscript:@"EMDE_TOKENISER_UPPERCASE_TOKEN_ID"];

    if (v9)
    {
      v10 = +[EMDEUtils config];
      v11 = [v10 objectForKeyedSubscript:@"EMDE_TOKENISER_UPPERCASE_TOKEN_ID"];
      intValue = [v11 intValue];
      v13 = qword_1000B6418 + 24 * intValue;
      if (*(v13 + 23) < 0)
      {
        v13 = *v13;
      }

      v48 = [NSString stringWithUTF8String:v13];

      v45 = [NSRegularExpression regularExpressionWithPattern:@"(?<!\\p{L})\\p{Lu}\\p{Ll}*(?!\\p{L})" options:0 error:0];
      v14 = +[NSCharacterSet whitespaceCharacterSet];
      v15 = [v44 componentsSeparatedByCharactersInSet:v14];
      v16 = [v15 mutableCopy];

      for (i = 0; [v16 count] > i; ++i)
      {
        v18 = [v16 objectAtIndexedSubscript:i];
        v19 = [v18 length];

        v20 = [v16 objectAtIndexedSubscript:i];
        v46 = [v45 matchesInString:v20 options:0 range:{0, v19}];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = [v46 reverseObjectEnumerator];
        v21 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v21)
        {
          v22 = *v59;
          do
          {
            for (j = 0; j != v21; j = j + 1)
            {
              if (*v59 != v22)
              {
                objc_enumerationMutation(obj);
              }

              range = [*(*(&v58 + 1) + 8 * j) range];
              v26 = v25;
              v27 = [v16 objectAtIndexedSubscript:i];
              v28 = [v27 substringWithRange:{range, v26}];

              lowercaseString = [v28 lowercaseString];
              v30 = [NSString stringWithFormat:@"%@%@", v48, lowercaseString];

              v31 = [v16 objectAtIndexedSubscript:i];
              v32 = [v31 stringByReplacingCharactersInRange:range withString:{v26, v30}];
              [v16 setObject:v32 atIndexedSubscript:i];
            }

            v21 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v21);
        }
      }

      v34 = [v16 componentsJoinedByString:@" "];
      v35 = v34;
      sub_100009A74(&v54, [v34 UTF8String]);
      v37 = v54;
      v36 = v55;
      *v62 = *v56;
      *&v62[3] = *&v56[3];
      v38 = v57;

      if ((v38 & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_100009A74(&v54, [v44 UTF8String]);
      v37 = v54;
      v36 = v55;
      *v62 = *v56;
      *&v62[3] = *&v56[3];
      v38 = v57;
      if ((v57 & 0x80) == 0)
      {
LABEL_19:
        __dst[0] = v37;
        __dst[1] = v36;
        *v52 = *v62;
        *&v52[3] = *&v62[3];
        v53 = v38;
LABEL_22:
        v39 = v42;
        sub_100009A74(__p, [v42 UTF8String]);
        SentencePiece::encode(__dst, __p, &retstr->__begin_);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }

        if (v53 < 0)
        {
          operator delete(__dst[0]);
        }

        if (retstr->__end_ == retstr->__begin_)
        {
          v40 = modelLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_10008B9F0();
          }
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        goto LABEL_33;
      }
    }

    sub_100019AD4(__dst, v37, v36);
    goto LABEL_22;
  }

  v33 = modelLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_10008BA24();
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
LABEL_33:

  return result;
}

+ (id)decodeSequence:()vector<int
{
  v4 = +[EMDEUtils config];
  v5 = [v4 objectForKeyedSubscript:@"EMDE_ASSET_FOLDER_PATH"];
  v6 = +[EMDEUtils config];
  v7 = [v6 objectForKeyedSubscript:@"EMDE_SPIECE_MODEL_FILE"];
  v8 = [v5 stringByAppendingPathComponent:v7];

  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_10000D2DC(&v14, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  sub_100009A74(__p, [v8 UTF8String]);
  SentencePiece::decode(&v14, __p, v17);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v18 >= 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = v17[0];
  }

  v10 = [NSString stringWithUTF8String:v9];
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return v10;
}

+ (id)removeLinksFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (fromCopy)
  {
    v5 = fromCopy;
    v6 = [NSDataDetector dataDetectorWithTypes:32 error:0];
    v7 = [v6 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [v7 reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if ([v12 resultType] == 32)
          {
            range = [v12 range];
            v15 = [v5 stringByReplacingCharactersInRange:range withString:{v14, @"."}];

            v5 = v15;
          }
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = v5;
    v17 = v16;
  }

  else
  {
    v16 = extractionLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10008BA58();
    }

    v17 = 0;
  }

  return v17;
}

+ (id)preProcessInputMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v5 = [self removeLinksFrom:messageCopy];
    if (!v5)
    {
      v5 = messageCopy;
    }

    v6 = [NSRegularExpression regularExpressionWithPattern:@"\\*" options:0 error:0];
    v7 = [v6 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @" "}];

    v8 = [NSRegularExpression regularExpressionWithPattern:@"( *\n)+" options:0 error:0];
    v9 = [v7 length];
    v10 = +[EMDEUtils config];
    v11 = [v10 objectForKeyedSubscript:@"EMDE_NEW_LINE_SEPARATOR"];
    v12 = [v8 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{v9, v11}];

    v13 = [v12 stringByReplacingOccurrencesOfString:@" withString:{", @", "}];

    v14 = [NSRegularExpression regularExpressionWithPattern:@" +" options:0 error:0];
    v15 = [v14 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{objc_msgSend(v13, "length"), @" "}];

    v16 = [NSRegularExpression regularExpressionWithPattern:@"’" options:0 error:0];
    v17 = [v16 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{objc_msgSend(v15, "length"), @"'"}];
  }

  else
  {
    v18 = extractionLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10008BA8C();
    }

    v17 = 0;
  }

  return v17;
}

+ (id)profaneRangesForText:(id)text usingLexicon:(_LXLexicon *)lexicon
{
  textCopy = text;
  if (lexicon)
  {
    v6 = [NLTagger alloc];
    v19 = NLTagSchemeTokenType;
    v7 = [NSArray arrayWithObjects:&v19 count:1];
    v8 = [v6 initWithTagSchemes:v7];

    [v8 setString:textCopy];
    v9 = objc_opt_new();
    v10 = [textCopy length];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000BC84;
    v15[3] = &unk_1000ACAD8;
    v16 = textCopy;
    lexiconCopy = lexicon;
    v11 = v9;
    v17 = v11;
    [v8 enumerateTagsInRange:0 unit:v10 scheme:0 options:NLTagSchemeTokenType usingBlock:46, v15];
    v12 = v17;
    v13 = v11;
  }

  else
  {
    v8 = extractionLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008BAC0();
    }

    v13 = 0;
  }

  return v13;
}

+ (unsigned)validateAndUpdateAllowedWords:(void *)words forWord:()basic_string<char isComplete:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v53 = v4;
  if (!words)
  {
    v10 = modelLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008BAF4();
    }

    return 0;
  }

  stdCopy = std;
  wordsCopy = words;
  size = *(&std->__rep_.__l + 23);
  if ((size & 0x8000000000000000) != 0)
  {
    data = std->__rep_.__l.__data_;
    size = std->__rep_.__l.__size_;
  }

  else
  {
    data = std;
  }

  LOBYTE(__dst) = 44;
  v12 = sub_10000C46C(data, &data->__rep_.__s.__data_[size], &__dst);
  v13 = *(&stdCopy->__rep_.__l + 23);
  if (v13 < 0)
  {
    v15 = stdCopy->__rep_.__l.__data_;
    v14 = &stdCopy->__rep_.__l.__data_[stdCopy->__rep_.__l.__size_];
  }

  else
  {
    v14 = &stdCopy->__rep_.__s.__data_[v13];
    v15 = stdCopy;
  }

  std::string::erase(stdCopy, v12 - v15, v14 - v12);
  v16 = *(&stdCopy->__rep_.__l + 23);
  if (v16 < 0)
  {
    v18 = stdCopy->__rep_.__l.__data_;
    v17 = &stdCopy->__rep_.__l.__data_[stdCopy->__rep_.__l.__size_];
  }

  else
  {
    v17 = &stdCopy->__rep_.__s.__data_[v16];
    v18 = stdCopy;
  }

  while (v18 != v17)
  {
    v18->__rep_.__s.__data_[0] = __tolower(v18->__rep_.__s.__data_[0]);
    v18 = (v18 + 1);
  }

  sub_100009A74(&__dst, " ");
  sub_100009A74(v70, ",");
  sub_100009A74(v71, "");
  v66 = 0uLL;
  v67 = 0;
  sub_10000CA74(&v66, &__dst, v72, 3uLL);
  for (i = 0; i != -72; i -= 24)
  {
    if (v71[i + 23] < 0)
    {
      operator delete(*&v71[i]);
    }
  }

  sub_100009A74(&__dst, " ");
  sub_100009A74(v70, ",");
  sub_100009A74(v71, "");
  v63 = 0;
  v64 = 0;
  v65 = 0;
  sub_10000CA74(&v63, &__dst, v72, 3uLL);
  for (j = 0; j != -72; j -= 24)
  {
    if (v71[j + 23] < 0)
    {
      operator delete(*&v71[j]);
    }
  }

  v21 = +[EMDEUtils config];
  v22 = [v21 objectForKeyedSubscript:@"EMDE_VALIDATE_ONLY_ALLOWED_PREFIX"];
  v23 = v22 == 0;

  if (!v23)
  {
    [self allowedPrefixes];
    sub_10000CF24(&v66);
    v66 = __dst;
    v67 = v69;
    v69 = 0;
    __dst = 0uLL;
    __p[0] = &__dst;
    sub_10000CCE0(__p);
  }

  v24 = v63;
  v54 = v64;
  if (v63 == v64)
  {
LABEL_90:
    v11 = 0;
    goto LABEL_94;
  }

  v56 = wordsCopy;
  __n1 = 0;
  while (2)
  {
    v55 = v24;
    if (*(v24 + 23) < 0)
    {
      sub_100019AD4(&__dst, *v24, *(v24 + 1));
    }

    else
    {
      v25 = *v24;
      v69 = *(v24 + 2);
      __dst = v25;
    }

    v26 = *(&v66 + 1);
    v58 = *(&v66 + 1);
    for (k = v66; k != v26; k = (k + 24))
    {
      if (*(k + 23) < 0)
      {
        sub_100019AD4(__p, *k, *(k + 1));
      }

      else
      {
        v28 = *k;
        v62 = *(k + 2);
        *__p = v28;
      }

      sub_10000C4D4(__p, stdCopy, &v59);
      if (v69 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v69 >= 0)
      {
        v30 = HIBYTE(v69);
      }

      else
      {
        v30 = *(&__dst + 1);
      }

      v31 = std::string::append(&v59, p_dst, v30);
      v60 = *v31;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v32 = SHIBYTE(wordsCopy->__r_.__value_.__r.__words[2]);
      if (v32 < 0)
      {
        v33 = wordsCopy->__r_.__value_.__r.__words[0];
        v32 = wordsCopy->__r_.__value_.__l.__size_;
      }

      else
      {
        v33 = wordsCopy;
      }

      v34 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
      v35 = *&v60.__r_.__value_.__l.__data_;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v60;
      }

      else
      {
        v36 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v60.__r_.__value_.__l.__size_;
      }

      if (!v37)
      {
        v41 = 0;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_67:
        operator delete(v35);
        goto LABEL_68;
      }

      v38 = stdCopy;
      v39 = v33 + v32;
      if (v32 >= v37)
      {
        v42 = v36->__r_.__value_.__s.__data_[0];
        v43 = v33;
        do
        {
          v44 = v32 - v37;
          if (v44 == -1)
          {
            break;
          }

          v45 = memchr(v43, v42, v44 + 1);
          if (!v45)
          {
            break;
          }

          v40 = v45;
          if (!memcmp(v45, v36, v37))
          {
            goto LABEL_62;
          }

          v43 = (v40 + 1);
          v32 = v39 - (v40 + 1);
        }

        while (v32 >= v37);
        v40 = v39;
LABEL_62:
        wordsCopy = v56;
      }

      else
      {
        v40 = v33 + v32;
      }

      if (v40 == v39)
      {
        v41 = -1;
      }

      else
      {
        v41 = v40 - v33;
      }

      stdCopy = v38;
      if (v34 < 0)
      {
        goto LABEL_67;
      }

LABEL_68:
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (v41 != -1)
      {
        sub_10000C4D4(__p, stdCopy, &v60);
        if (v69 >= 0)
        {
          v46 = &__dst;
        }

        else
        {
          v46 = __dst;
        }

        if (v69 >= 0)
        {
          v47 = HIBYTE(v69);
        }

        else
        {
          v47 = *(&__dst + 1);
        }

        v48 = std::string::append(&v60, v46, v47);
        v49 = v48->__r_.__value_.__r.__words[0];
        v50 = v48->__r_.__value_.__l.__size_;
        v51 = SHIBYTE(v48->__r_.__value_.__r.__words[2]);
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        __n1 = v51;
        if ((v51 & 0x8000000000000000) != 0)
        {
          operator delete(v49);
          __n1 = v50;
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
      }

      if (v41 != -1)
      {
        goto LABEL_86;
      }

      v26 = v58;
    }

    v41 = -1;
LABEL_86:
    if (SHIBYTE(v69) < 0)
    {
      operator delete(__dst);
    }

    if (v41 == -1)
    {
      v24 = (v55 + 24);
      if ((v55 + 24) == v54)
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  if (v53)
  {
    std::string::replace(wordsCopy, v41, __n1, " ");
  }

  v11 = 1;
LABEL_94:
  *&__dst = &v63;
  sub_10000CCE0(&__dst);
  *&__dst = &v66;
  sub_10000CCE0(&__dst);
  return v11;
}

@end