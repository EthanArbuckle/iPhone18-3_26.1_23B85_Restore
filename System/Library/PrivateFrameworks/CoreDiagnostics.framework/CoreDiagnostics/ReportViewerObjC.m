@interface ReportViewerObjC
+ (id)rollSchemaForward:(id)a3;
+ (id)transformURL:(id)a3 template:(id)a4 options:(id)a5;
- (BOOL)prepareTemplate:(id)a3 forLogType:(id)a4 error:(id *)a5;
- (BOOL)transformJSON:(id)a3 header:(id)a4 error:(id *)a5 streamingBlock:(id)a6;
- (BOOL)transformLines:(id)a3 withDefinitions:(id)a4 body:(id)a5 header:(id)a6 error:(id *)a7 streamingBlock:(id)a8;
- (ReportViewerObjC)init;
- (id)_getValueForKey:(id)a3 fromBody:(id)a4 orHeader:(id)a5;
- (id)_hexDump:(id)a3 offset:(int)a4 indicator:(BOOL)a5;
- (id)formatFrame:(id)a3 withImages:(id)a4 macosStyle:(BOOL)a5 showBinaryImage:(BOOL)a6;
- (id)formatImages:(id)a3 macosStyle:(BOOL)a4;
- (id)formatLastException:(id)a3 withImages:(id)a4;
@end

@implementation ReportViewerObjC

- (ReportViewerObjC)init
{
  v6.receiver = self;
  v6.super_class = ReportViewerObjC;
  v2 = [(ReportViewerObjC *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    templates = v2->_templates;
    v2->_templates = v3;
  }

  return v2;
}

- (BOOL)prepareTemplate:(id)a3 forLogType:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 componentsSeparatedByString:@"\n"];
  [(NSMutableDictionary *)self->_templates setValue:v8 forKey:v7];

  return 0;
}

- (id)formatFrame:(id)a3 withImages:(id)a4 macosStyle:(BOOL)a5 showBinaryImage:(BOOL)a6
{
  v6 = a6;
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 objectForKeyedSubscript:@"imageIndex"];
  v12 = v11;
  if (v11)
  {
    v13 = [v10 objectAtIndexedSubscript:{objc_msgSend(v11, "intValue")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 objectForKeyedSubscript:@"name"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"???";
  }

  if ([(__CFString *)v15 length]< 0x1F)
  {
    v18 = [(__CFString *)v15 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
  }

  else
  {
    if (a5)
    {
      goto LABEL_12;
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [(__CFString *)v15 substringFromIndex:[(__CFString *)v15 length]- 27];
    v18 = [v16 stringWithFormat:@"...%@", v17];

    v15 = v17;
  }

  v15 = v18;
LABEL_12:
  v19 = [v13 objectForKeyedSubscript:@"base"];
  v20 = [v19 unsignedLongLongValue];

  v21 = [v9 objectForKeyedSubscript:@"imageOffset"];
  v22 = [v21 unsignedLongLongValue];

  v23 = v20 + v22;
  if ([v9 count] < 3)
  {
    if (v20 && v22)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p + %llu", v20, v22];
    }

    else
    {
      if (!v20)
      {
        v23 = v22;
      }

      v26 = @"???";
    }
  }

  else
  {
    v50 = v12;
    v53 = [v9 objectForKeyedSubscript:@"symbol"];
    v24 = [v9 objectForKeyedSubscript:@"symbolLocation"];
    v51 = v10;
    v52 = v24;
    v49 = v6;
    v54 = v20 + v22;
    if (v24)
    {
      v25 = v24;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v25 unsignedLongLongValue];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v52;
        _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** ignoring non-numeric symbolLocation: '%@'", buf, 0xCu);
      }
    }

    v27 = [v9 objectForKeyedSubscript:@"sourceFile"];
    v28 = [v9 objectForKeyedSubscript:@"sourceLine"];
    v29 = v28;
    v48 = v13;
    v30 = &stru_1F550D880;
    if (v27 && v28)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@:%@)", v27, v28];
    }

    v31 = [v9 objectForKeyedSubscript:@"inline"];
    v32 = v31;
    v33 = v53;
    if (v53)
    {
      v34 = MEMORY[0x1E696AEC0];
      v35 = [v31 BOOLValue];
      v36 = @" [inlined]";
      if (!v35)
      {
        v36 = &stru_1F550D880;
      }

      v26 = [v34 stringWithFormat:@"%@ + %llu%@%@", v53, v22, v30, v36];
      v6 = v49;
    }

    else
    {
      if (v20 && v22)
      {
        v37 = MEMORY[0x1E696AEC0];
        v38 = [v31 BOOLValue];
        v39 = @" [inlined]";
        if (!v38)
        {
          v39 = &stru_1F550D880;
        }

        v26 = [v37 stringWithFormat:@"%p + %llu%@%@", v54 - v22, v22, v30, v39];
      }

      else
      {
        v40 = v54;
        if (!v20)
        {
          v40 = v22;
        }

        v54 = v40;
        v26 = @"???";
      }

      v6 = v49;
      v41 = [v9 objectForKeyedSubscript:@"region"];
      v42 = v41;
      if (v41)
      {
        v43 = v41;

        v15 = v43;
      }

      v33 = 0;
    }

    v12 = v50;
    v10 = v51;
    v13 = v48;
    v23 = v54;
  }

  if (v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t%18p %@", v15, v23, v26];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%p %@", v23, v26, v47];
  }
  v44 = ;

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)formatImages:(id)a3 macosStyle:(BOOL)a4
{
  v4 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v39 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v40 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v40)
  {
    v38 = *v44;
    v35 = v4;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"uuid"];
        v9 = v8;
        if (!v4)
        {
          v10 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F550D880];

          v9 = v10;
        }

        v42 = [v7 objectForKeyedSubscript:@"base"];
        v11 = [v42 unsignedLongLongValue];
        v12 = [v7 objectForKeyedSubscript:@"size"];
        v41 = v11 + [v12 unsignedLongLongValue] - 1;

        v13 = [v7 objectForKeyedSubscript:@"name"];
        v14 = [v7 objectForKeyedSubscript:@"arch"];
        v15 = [v7 objectForKeyedSubscript:@"path"];
        v16 = v15;
        if (v4)
        {
          v17 = [v7 objectForKeyedSubscript:@"CFBundleIdentifier"];
          if ([v17 length])
          {
            v18 = v17;

            v13 = v18;
          }

          v19 = [v7 objectForKeyedSubscript:@"CFBundleShortVersionString"];
          if (![(__CFString *)v19 length])
          {

            v19 = @"*";
          }

          v20 = MEMORY[0x1E696AEC0];
          if (v13)
          {
            v21 = 0;
            v22 = v13;
          }

          else if (v16)
          {
            [(__CFString *)v16 lastPathComponent];
            v34 = v21 = 1;
            v22 = v34;
          }

          else
          {
            v21 = 0;
            v22 = @"???";
          }

          v26 = @"???";
          if (v16)
          {
            v26 = v16;
          }

          v27 = [v20 stringWithFormat:@"%18p - %18p %@ (%@) <%@> %@", v11, v41, v22, v19, v9, v26];
          [v39 addObject:v27];

          if (v21)
          {
          }

          v4 = v35;
LABEL_33:

          goto LABEL_34;
        }

        v23 = MEMORY[0x1E696AEC0];
        if (v13)
        {
          v24 = 0;
          v25 = v13;
        }

        else if (v15)
        {
          [(__CFString *)v15 lastPathComponent];
          v37 = v24 = 1;
          v25 = v37;
        }

        else
        {
          v24 = 0;
          v25 = @"???";
        }

        v28 = @"unknown-arch";
        if (v14)
        {
          v28 = v14;
        }

        v29 = @"???";
        if (v16)
        {
          v29 = v16;
        }

        v30 = [v23 stringWithFormat:@"%18p - %18p %@ %@  <%@> %@", v11, v41, v25, v28, v9, v29];
        [v39 addObject:v30];

        v17 = v37;
        if (v24)
        {
          goto LABEL_33;
        }

LABEL_34:
      }

      v40 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v40);
  }

  v31 = [v39 componentsJoinedByString:@"\n"];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)formatLastException:(id)a3 withImages:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    LODWORD(v12) = -1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v12 = (v12 + 1);
        v14 = MEMORY[0x1E696AEC0];
        v15 = [(ReportViewerObjC *)self formatFrame:*(*(&v21 + 1) + 8 * i) withImages:v7 macosStyle:0];
        v16 = [v14 stringWithFormat:@"%-3d %@", v12, v15];
        [v8 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [v8 componentsJoinedByString:@"\n"];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_hexDump:(id)a3 offset:(int)a4 indicator:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_opt_new();
  v24 = 0u;
  memset(v25, 0, 28);
  v22 = 0u;
  v23 = 0u;
  *__str = 0;
  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:v9];
      v11 = [v10 intValue];

      v12 = v9 & 0xF;
      if (v12 == 9)
      {
        BYTE9(v23) = 45;
      }

      else if ((v9 & 0xF) == 0)
      {
        strcpy(v25 + 15, "    ");
        *&v13 = 0x2020202020202020;
        *(&v13 + 1) = 0x2020202020202020;
        v24 = v13;
        v25[0] = v13;
        v22 = v13;
        v23 = v13;
      }

      if (v11 > 0x7F)
      {
        v14 = __maskrune(v11, 0x40000uLL);
      }

      else
      {
        v14 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
      }

      if (v14)
      {
        v15 = v11;
      }

      else
      {
        v15 = 46;
      }

      snprintf(__str, 4uLL, "%02x%c", v11, v15);
      v16 = (3 * v12);
      *(&v22 + v16 + 2) = *__str;
      *((v12 | &v22) + 0x33) = __str[2];
      if (a4 == v9)
      {
        v17 = &v22 + v16;
        v17[1] = 91;
        v17[4] = 93;
        if (v5)
        {
          __sprintf_chk(&v25[1] + 3, 0, 9uLL, "\t<==");
        }
      }

      if (v12 == 15 || v9 == [v7 count] - 1)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v22];
        [v8 addObject:v18];
      }

      ++v9;
    }

    while ([v7 count] > v9);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_getValueForKey:(id)a3 fromBody:(id)a4 orHeader:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([&unk_1F5514378 containsObject:v8])
  {
    v11 = [(ReportViewerObjC *)self _getValueForKey:@"faultingThread" fromBody:v9 orHeader:0];
    if (!v11)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v12 = [v9 objectForKeyedSubscript:@"threads"];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v11, "intValue")}];
    v14 = v13;
    v15 = v8;
  }

  else
  {
    v11 = v9;
    if ([v8 hasPrefix:@"metadata:"])
    {
      v16 = v10;

      v17 = [v8 stringByReplacingOccurrencesOfString:@"metadata:" withString:&stru_1F550D880];

      v11 = v16;
      v8 = v17;
    }

    v18 = [v8 componentsSeparatedByString:@"."];
    v19 = [v18 count];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v18;
    v20 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      v29 = v10;
      v30 = v9;
      while (2)
      {
        v23 = 0;
        v24 = v19 - 1;
        v19 -= v21;
        v25 = v11;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v12);
          }

          if (v24 == v23)
          {
            goto LABEL_18;
          }

          v11 = [v25 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * v23)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_18:
            v11 = v25;
            v10 = v29;
            v9 = v30;
            goto LABEL_19;
          }

          ++v23;
          v25 = v11;
        }

        while (v21 != v23);
        v21 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v10 = v29;
        v9 = v30;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v14 = [v12 lastObject];
    v13 = v11;
    v15 = v14;
  }

  v26 = [v13 objectForKeyedSubscript:{v15, v29, v30, v31}];

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (BOOL)transformJSON:(id)a3 header:(id)a4 error:(id *)a5 streamingBlock:(id)a6
{
  v23[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 objectForKeyedSubscript:@"bug_type"];
  v14 = [(NSMutableDictionary *)self->_templates objectForKeyedSubscript:v13];
  v15 = objc_opt_new();
  if (v14)
  {
    v16 = [(ReportViewerObjC *)self transformLines:v14 withDefinitions:v15 body:v10 header:v11 error:a5 streamingBlock:v12];
  }

  else
  {
    if (a5)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' template not found", v13, *MEMORY[0x1E696A578]];
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a5 = [v17 errorWithDomain:@"ReportViewer" code:1 userInfo:v19];
    }

    v16 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)transformLines:(id)a3 withDefinitions:(id)a4 body:(id)a5 header:(id)a6 error:(id *)a7 streamingBlock:(id)a8
{
  v46 = a7;
  v89 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v54 = a4;
  v61 = a5;
  v59 = a6;
  v52 = a8;
  v84 = 0;
  v51 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\$\\((([^\\)\"]+|\"[^\"]+\"" options:? error:?], 0, &v84);
  v47 = v84;
  v13 = [(ReportViewerObjC *)self _getValueForKey:@"osVersion.train" fromBody:v61 orHeader:v59];
  v49 = [v13 hasPrefix:@"macOS"];

  v50 = [(ReportViewerObjC *)self _getValueForKey:@"faultingThread" fromBody:v61 orHeader:0];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v12;
  v57 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  v48 = v57 == 0;
  if (!v57)
  {
    v14 = 0;
    v58 = 0;
    v43 = obj;
LABEL_47:

    goto LABEL_50;
  }

  v58 = 0;
  v14 = 0;
  v56 = *v81;
  v53 = v52 + 2;
  do
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v81 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v80 + 1) + 8 * i);
      if (v14)
      {
        if (![*(*(&v80 + 1) + 8 * i) hasPrefix:@"#"]))
        {
          [v58 addObject:v16];
          continue;
        }

        [v54 setObject:v58 forKeyedSubscript:v14];

        v58 = 0;
      }

      else
      {
        if ([*(*(&v80 + 1) + 8 * i) hasPrefix:@"#("]
        {
          v14 = [v16 substringFromIndex:2];
          v17 = objc_opt_new();

          v58 = v17;
          continue;
        }

        v76 = 0;
        v77 = &v76;
        v78 = 0x2020000000;
        v79 = 0;
        v18 = [v16 rangeOfString:@"\\^\\([^\\)]+\\" options:?], 1040);
        v20 = v18;
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v19;
          v22 = [v16 substringWithRange:{v18 + 2, v19 - 3}];
          v23 = [v22 componentsSeparatedByString:@"&"];

          v77[3] = v21 + v20;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v72 objects:v87 count:16];
          if (v25)
          {
            v26 = *v73;
            while (2)
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v73 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v72 + 1) + 8 * j);
                if ([v28 hasPrefix:@"!"])
                {
                  v29 = [v28 substringFromIndex:1];

                  v30 = 1;
                  v28 = v29;
                }

                else
                {
                  v30 = 0;
                }

                v31 = [v28 hasPrefix:{@"*", v46}];
                if (v31)
                {
                  v32 = [v28 substringFromIndex:1];

                  v28 = v32;
                }

                v33 = [(ReportViewerObjC *)self _getValueForKey:v28 fromBody:v61 orHeader:v59];
                v34 = v33 != 0;
                if (v33)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = 0;
                }

                if (v35 == 1)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    v34 = [v33 count] != 0;
                  }

                  else
                  {
                    v34 = [v33 BOOLValue];
                  }
                }

                v36 = v30 == v34;

                if (v36)
                {
                  v41 = v24;
                  goto LABEL_39;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v72 objects:v87 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }
        }

        v37 = [v16 substringFromIndex:{v77[3], v46}];
        v77[3] = 0;
        v38 = [v37 length];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __84__ReportViewerObjC_transformLines_withDefinitions_body_header_error_streamingBlock___block_invoke;
        v62[3] = &unk_1E8585600;
        v39 = v52;
        v69 = v39;
        v40 = v37;
        v63 = v40;
        v70 = &v76;
        v64 = v54;
        v65 = self;
        v66 = v61;
        v67 = v59;
        v71 = v49;
        v68 = v50;
        [v51 enumerateMatchesInString:v40 options:0 range:0 usingBlock:{v38, v62}];
        v41 = [v40 substringFromIndex:v77[3]];

        if ([v41 length])
        {
          (*v53)(v39, v41);
        }

        (*v53)(v39, @"\n");

        v24 = v69;
LABEL_39:

        _Block_object_dispose(&v76, 8);
      }

      v14 = 0;
    }

    v57 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v57);

  if (v14)
  {
    if (v46)
    {
      v42 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      v86 = @"template has illformed definition";
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      *v46 = [v42 errorWithDomain:@"ReportViewer" code:2 userInfo:v43];
      goto LABEL_47;
    }

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

LABEL_50:

  v44 = *MEMORY[0x1E69E9840];
  return v48;
}

void __84__ReportViewerObjC_transformLines_withDefinitions_body_header_error_streamingBlock___block_invoke(void *a1, void *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 rangeAtIndex:0];
  v6 = v5;
  v73 = v3;
  v7 = [v3 rangeAtIndex:1];
  v9 = v8;
  v10 = a1[10];
  v11 = *(*(a1[11] + 8) + 24);
  v12 = [a1[4] substringWithRange:{v11, v4 - v11}];
  (*(v10 + 16))(v10, v12);

  v70 = v9;
  v71 = v7;
  v72 = [a1[4] substringWithRange:{v7, v9}];
  [v72 componentsSeparatedByString:@"|"];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v101 = 0u;
  v13 = [obj countByEnumeratingWithState:&v98 objects:v109 count:16];
  if (!v13)
  {
    goto LABEL_81;
  }

  v14 = v13;
  v15 = *v99;
  v82 = a1;
  v75 = *v99;
  while (2)
  {
    v16 = 0;
    v74 = v14;
    do
    {
      if (*v99 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v98 + 1) + 8 * v16);
      v18 = [v17 componentsSeparatedByString:@"#"];
      v80 = v16;
      if ([v18 count] == 2)
      {
        v19 = a1[5];
        v20 = [v18 objectAtIndexedSubscript:0];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (!v21)
        {
          goto LABEL_80;
        }

        v22 = a1[6];
        v23 = [v18 objectAtIndexedSubscript:1];
        v24 = [v22 _getValueForKey:v23 fromBody:a1[7] orHeader:a1[8]];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = v24;
          v78 = v18;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v81 = v24;
          v25 = [v81 countByEnumeratingWithState:&v94 objects:v108 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v95;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v95 != v28)
                {
                  objc_enumerationMutation(v81);
                }

                v30 = *(*(&v94 + 1) + 8 * i);
                v32 = v82[5];
                v31 = v82[6];
                v106[0] = @"<index>";
                v33 = [MEMORY[0x1E696AD98] numberWithInt:v27];
                v106[1] = @"<item>";
                v107[0] = v33;
                v107[1] = v30;
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:2];
                v93 = 0;
                [v31 transformLines:v21 withDefinitions:v32 body:v34 header:0 error:&v93 streamingBlock:v82[10]];
                v35 = v93;

                v27 = (v27 + 1);
              }

              v26 = [v81 countByEnumeratingWithState:&v94 objects:v108 count:16];
            }

            while (v26);
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_31:

            v6 = [a1[4] length];
            v4 = 0;
            v15 = v75;
            goto LABEL_32;
          }

          v77 = v24;
          v78 = v18;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v38 = v24;
          v39 = [v38 countByEnumeratingWithState:&v89 objects:v105 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v90;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v90 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v44 = v82[5];
                v43 = v82[6];
                v104[0] = *(*(&v89 + 1) + 8 * j);
                v103[0] = @"<key>";
                v103[1] = @"<value>";
                v45 = [v38 objectForKeyedSubscript:?];
                v104[1] = v45;
                v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
                v88 = 0;
                [v43 transformLines:v21 withDefinitions:v44 body:v46 header:0 error:&v88 streamingBlock:v82[10]];
                v47 = v88;
              }

              v40 = [v38 countByEnumeratingWithState:&v89 objects:v105 count:16];
            }

            while (v40);
          }
        }

        v24 = v77;

        v18 = v78;
        v14 = v74;
        a1 = v82;
        goto LABEL_31;
      }

      if (([v17 hasPrefix:@""] & 1) == 0)
      {
        v37 = [a1[6] _getValueForKey:v17 fromBody:a1[7] orHeader:a1[8]];
        if (!v37)
        {
          goto LABEL_32;
        }

LABEL_35:
        if ([v17 isEqualToString:@"threads"])
        {
          v48 = a1[6];
          v49 = [a1[7] objectForKeyedSubscript:@"usedImages"];
          v50 = [v48 formatCallstacks:v37 withImages:v49 macosStyle:*(a1 + 96)];
LABEL_37:
          v51 = v50;

          goto LABEL_52;
        }

        if (![v17 isEqualToString:@"threadState"])
        {
          if ([v17 isEqualToString:@"instructionState"])
          {
            v54 = [a1[6] formatInstructionState:v37 index:{objc_msgSend(a1[9], "intValue")}];
          }

          else
          {
            if ([v17 isEqualToString:@"lastBranchState"])
            {
              v55 = a1[6];
              v56 = [a1[9] intValue];
              v49 = [a1[7] objectForKeyedSubscript:@"usedImages"];
              v50 = [v55 formatLastBranchState:v37 index:v56 withImages:v49];
              goto LABEL_37;
            }

            if ([v17 isEqualToString:@"lastExceptionBacktrace"])
            {
              v58 = a1[6];
              v49 = [a1[7] objectForKeyedSubscript:@"usedImages"];
              v50 = [v58 formatLastException:v37 withImages:v49];
              goto LABEL_37;
            }

            if ([v17 hasPrefix:@"usedImages"])
            {
              v54 = [a1[6] formatImages:v37 macosStyle:*(a1 + 96)];
            }

            else if ([v17 isEqualToString:@"mtePageTags"])
            {
              v54 = [_TtC15CoreDiagnostics27TextualRepresentationBridge formatMTEPageTags:v37 report:a1[7]];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                (*(a1[10] + 16))();
LABEL_79:

LABEL_80:
                goto LABEL_81;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v54 = [v37 stringValue];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v57 = a1[10];
                  goto LABEL_77;
                }

                if ([v37 count])
                {
                  v59 = [v37 firstObject];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v79 = v18;
                    v61 = objc_opt_new();
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v87 = 0u;
                    v83 = v37;
                    v62 = [v83 countByEnumeratingWithState:&v84 objects:v102 count:16];
                    if (v62)
                    {
                      v63 = v62;
                      v64 = *v85;
                      do
                      {
                        for (k = 0; k != v63; ++k)
                        {
                          if (*v85 != v64)
                          {
                            objc_enumerationMutation(v83);
                          }

                          v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%016qx", objc_msgSend(*(*(&v84 + 1) + 8 * k), "longLongValue")];
                          [v61 addObject:v66];
                        }

                        v63 = [v83 countByEnumeratingWithState:&v84 objects:v102 count:16];
                      }

                      while (v63);
                    }

                    v51 = [v61 componentsJoinedByString:{@", "}];

                    v18 = v79;
LABEL_52:
                    v57 = a1[10];
                    if (v51)
                    {
                      (*(v57 + 16))(a1[10], v51);
LABEL_78:

                      goto LABEL_79;
                    }

LABEL_77:
                    v67 = MEMORY[0x1E696AEC0];
                    v51 = [a1[4] substringWithRange:{v71, v70}];
                    v68 = [v67 stringWithFormat:@"{%@}", v51];
                    (*(v57 + 16))(v57, v68);

                    goto LABEL_78;
                  }
                }

                v54 = [v37 componentsJoinedByString:@"\n"];
              }
            }
          }

          v51 = v54;
          goto LABEL_52;
        }

        v52 = [v37 objectForKeyedSubscript:@"flavor"];
        if ([v52 isEqualToString:@"ARM_THREAD_STATE64"])
        {
          v53 = [a1[6] formatArm64ThreadState:v37 index:{objc_msgSend(a1[9], "intValue")}];
        }

        else if ([v52 isEqualToString:@"ARM_THREAD_STATE32"])
        {
          v53 = [a1[6] formatArm32ThreadState:v37 index:{objc_msgSend(a1[9], "intValue")}];
        }

        else
        {
          if (![v52 isEqualToString:@"x86_THREAD_STATE"])
          {
            v51 = 0;
            goto LABEL_51;
          }

          v53 = [a1[6] formatX86ThreadState:v37 index:{objc_msgSend(a1[9], "intValue")}];
        }

        v51 = v53;
LABEL_51:

        goto LABEL_52;
      }

      v36 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""];
      v37 = [v17 stringByTrimmingCharactersInSet:v36];

      if (v37)
      {
        goto LABEL_35;
      }

LABEL_32:

      v16 = v80 + 1;
    }

    while (v80 + 1 != v14);
    v14 = [obj countByEnumeratingWithState:&v98 objects:v109 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_81:

  *(*(a1[11] + 8) + 24) = v4 + v6;
  v69 = *MEMORY[0x1E69E9840];
}

+ (id)rollSchemaForward:(id)a3
{
  v134 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v62 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([A-Z_]+) options:(\\[0x[0-9a-zA-Z]\\])?(.*)$" error:{0, 0}];
  v65 = objc_opt_new();
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v3;
  v68 = [obj countByEnumeratingWithState:&v116 objects:v133 count:16];
  if (v68)
  {
    v66 = *v117;
    v60 = v107;
    do
    {
      v70 = 0;
      do
      {
        if (*v117 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v116 + 1) + 8 * v70);
        v71 = [obj objectForKeyedSubscript:v60];
        if (![v72 isEqualToString:@"asi"])
        {
          if ([v72 isEqualToString:@"termination"])
          {
            v74 = v71;
            v4 = objc_opt_new();
            v5 = [v74 objectForKeyedSubscript:@"namespace"];
            [v4 setObject:v5 forKeyedSubscript:@"namespace"];

            v6 = [v74 objectForKeyedSubscript:@"code"];
            [v4 setObject:v6 forKeyedSubscript:@"code"];

            v7 = [v74 objectForKeyedSubscript:@"flag"];
            [v4 setObject:v7 forKeyedSubscript:@"flag"];

            v8 = [v74 objectForKeyedSubscript:@"signal"];
            if (v8)
            {
              [v4 setObject:v8 forKeyedSubscript:@"indicator"];
            }

            v9 = [v74 objectForKeyedSubscript:@"description"];

            if (v9 || ([v74 objectForKeyedSubscript:@"reason"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v110 = 0;
              v111 = &v110;
              v112 = 0x3032000000;
              v113 = __Block_byref_object_copy_;
              v114 = __Block_byref_object_dispose_;
              v115 = 0;
              v10 = [v9 length];
              v106[0] = MEMORY[0x1E69E9820];
              v106[1] = 3221225472;
              v107[0] = __38__ReportViewerObjC_rollSchemaForward___block_invoke;
              v107[1] = &unk_1E8585628;
              v109 = &v110;
              v11 = v9;
              v108 = v11;
              [v62 enumerateMatchesInString:v11 options:0 range:0 usingBlock:{v10, v106}];
              if (v111[5])
              {
                v12 = v111[5];
              }

              else
              {
                v12 = v11;
              }

              v13 = [v12 componentsSeparatedByString:@"|"];
              v14 = [v13 valueForKey:@"stringByTrimming"];
              [v4 setObject:v14 forKeyedSubscript:@"reasons"];

              _Block_object_dispose(&v110, 8);
            }

            v15 = [v74 objectForKeyedSubscript:@"details"];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 componentsSeparatedByString:@"|"];
              v18 = [v17 valueForKey:@"stringByTrimming"];
              [v4 setObject:v18 forKeyedSubscript:@"details"];
            }

            [v65 setObject:v4 forKeyedSubscript:v72];

LABEL_23:
            goto LABEL_24;
          }

          if ([v72 isEqualToString:@"legacyInfo"])
          {
            v74 = [v71 objectForKeyedSubscript:@"threadTriggered"];
            v19 = [v74 objectForKeyedSubscript:@"index"];
            [v65 setObject:v19 forKeyedSubscript:@"faultingThread"];

            [v65 setObject:v71 forKeyedSubscript:v72];
            goto LABEL_23;
          }

          if (![v72 isEqualToString:@"threads"])
          {
            if ([v72 isEqualToString:@"usedImages"])
            {
              v45 = v71;
              v85 = objc_opt_new();
              v83 = [obj objectForKeyedSubscript:@"legacyInfo"];
              v46 = [v83 objectForKeyedSubscript:@"imageExtraInfo"];
              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              v74 = v45;
              v47 = [v74 countByEnumeratingWithState:&v86 objects:v120 count:16];
              if (v47)
              {
                LODWORD(v48) = 0;
                v49 = *v87;
                do
                {
                  v50 = 0;
                  v48 = v48;
                  do
                  {
                    if (*v87 != v49)
                    {
                      objc_enumerationMutation(v74);
                    }

                    v51 = *(*(&v86 + 1) + 8 * v50);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v52 = [v46 objectAtIndexedSubscript:v48];
                      v53 = [v52 mutableCopy];

                      v54 = [v51 objectAtIndexedSubscript:0];
                      [v53 setObject:v54 forKeyedSubscript:@"uuid"];

                      v55 = [v51 objectAtIndexedSubscript:1];
                      [v53 setObject:v55 forKeyedSubscript:@"base"];

                      v56 = [v51 objectAtIndexedSubscript:2];
                      [v53 setObject:v56 forKeyedSubscript:@"source"];

                      [v85 addObject:v53];
                    }

                    ++v48;
                    ++v50;
                  }

                  while (v47 != v50);
                  v47 = [v74 countByEnumeratingWithState:&v86 objects:v120 count:16];
                }

                while (v47);
              }

              [v65 setObject:v85 forKeyedSubscript:v72];
            }

            else
            {
              v74 = [&unk_1F55146B0 objectForKeyedSubscript:v72];
              if (v74)
              {
                [v65 setObject:v71 forKeyedSubscript:?];
              }

              else
              {
                [v65 setObject:v71 forKeyedSubscript:v72];
              }
            }

            goto LABEL_23;
          }

          v74 = objc_opt_new();
          v20 = v71;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v61 = v20;
          v64 = [v20 countByEnumeratingWithState:&v102 objects:v130 count:16];
          if (!v64)
          {
            goto LABEL_74;
          }

          v63 = *v103;
LABEL_29:
          v67 = 0;
          while (1)
          {
            if (*v103 != v63)
            {
              objc_enumerationMutation(v61);
            }

            v79 = *(*(&v102 + 1) + 8 * v67);
            v82 = [v79 mutableCopy];
            v84 = objc_opt_new();
            v81 = [v79 objectForKeyedSubscript:@"frames"];
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v21 = [v81 countByEnumeratingWithState:&v98 objects:v129 count:16];
            if (v21)
            {
              v22 = *v99;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v99 != v22)
                  {
                    objc_enumerationMutation(v81);
                  }

                  v24 = *(*(&v98 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v25 = v24;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v127[0] = @"imageIndex";
                      v26 = [v24 objectAtIndexedSubscript:0];
                      v128[0] = v26;
                      v127[1] = @"imageOffset";
                      v27 = [v24 objectAtIndexedSubscript:1];
                      v128[1] = v27;
                      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
                      v25 = [v28 mutableCopy];

                      if ([v24 count] >= 3)
                      {
                        v29 = [v24 objectAtIndexedSubscript:2];
                        [v25 addEntriesFromDictionary:v29];
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  [v84 addObject:v25];
                  [v82 setObject:v84 forKeyedSubscript:@"frames"];
                }

                v21 = [v81 countByEnumeratingWithState:&v98 objects:v129 count:16];
              }

              while (v21);
            }

            v30 = [v79 objectForKeyedSubscript:@"triggered"];
            v31 = [v30 BOOLValue];

            if (v31)
            {
              v32 = [obj objectForKeyedSubscript:@"threadState"];
              if (v32)
              {
                break;
              }

              v32 = [v79 objectForKeyedSubscript:@"threadState"];
              if (v32)
              {
                break;
              }
            }

LABEL_72:
            [v74 addObject:v82];

            if (++v67 == v64)
            {
              v64 = [v61 countByEnumeratingWithState:&v102 objects:v130 count:16];
              if (!v64)
              {
LABEL_74:
                [v65 setObject:v74 forKeyedSubscript:v72];

                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }

          v75 = [v32 mutableCopy];
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v78 = v32;
          v77 = [v78 countByEnumeratingWithState:&v94 objects:v126 count:16];
          if (!v77)
          {
            goto LABEL_71;
          }

          v76 = *v95;
          while (2)
          {
            v33 = 0;
LABEL_51:
            if (*v95 != v76)
            {
              objc_enumerationMutation(v78);
            }

            v80 = *(*(&v94 + 1) + 8 * v33);
            v34 = [v78 objectForKeyedSubscript:?];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v124 = @"value";
              v125 = v34;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
              goto LABEL_55;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = objc_opt_new();
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v36 = v34;
              v37 = [v36 countByEnumeratingWithState:&v90 objects:v123 count:16];
              if (v37)
              {
                v38 = *v91;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v91 != v38)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v40 = *(*(&v90 + 1) + 8 * j);
                    v121 = @"value";
                    v122 = v40;
                    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
                    [v35 addObject:v41];
                  }

                  v37 = [v36 countByEnumeratingWithState:&v90 objects:v123 count:16];
                }

                while (v37);
              }

              v42 = [v35 count];
              if (v42 <= 28)
              {
                v43 = v42 - 29;
                do
                {
                  [v35 addObject:&unk_1F5514688];
                }

                while (!__CFADD__(v43++, 1));
              }

LABEL_55:
              [v75 setObject:v35 forKeyedSubscript:v80];
            }

            if (++v33 == v77)
            {
              v77 = [v78 countByEnumeratingWithState:&v94 objects:v126 count:16];
              if (!v77)
              {
LABEL_71:

                [v82 setObject:v75 forKeyedSubscript:@"threadState"];
                goto LABEL_72;
              }

              continue;
            }

            goto LABEL_51;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v131 = @"unknown";
          v132 = v71;
          v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          [v65 setObject:v73 forKeyedSubscript:v72];
        }

LABEL_24:

        ++v70;
      }

      while (v70 != v68);
      v57 = [obj countByEnumeratingWithState:&v116 objects:v133 count:16];
      v68 = v57;
    }

    while (v57);
  }

  v58 = *MEMORY[0x1E69E9840];

  return v65;
}

uint64_t __38__ReportViewerObjC_rollSchemaForward___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 rangeAtIndex:3];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) substringWithRange:{result, v4}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)transformURL:(id)a3 template:(id)a4 options:(id)a5
{
  v92[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v77 = a5;
  v9 = objc_opt_new();
  v10 = objc_alloc(MEMORY[0x1E69B7C00]);
  v11 = [v7 path];
  v84 = 0;
  v12 = [v10 initWithPath:v11 forRouting:&stru_1F550D880 options:&unk_1F55146D8 error:&v84];
  v13 = v84;

  if (!v12)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load log '%@'", v7];
    v26 = [v13 augmentWithPrefix:v14];
    goto LABEL_44;
  }

  v14 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:{fileno(objc_msgSend(v12, "stream"))}];
  v15 = MEMORY[0x1DA738670]([v12 stream]);
  v16 = [v12 metaData];
  v17 = [v16 count];

  v76 = v9;
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v88 = v15;
      _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ips metadata not detected (%ld bytes before newline), attempting to read entire file as payload", buf, 0xCu);
    }

    v15 = 0;
  }

  [v14 seekToFileOffset:v15];
  v18 = [v14 availableData];
  v83 = v13;
  v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v18 options:0 error:&v83];
  v20 = v83;

  if (v19)
  {
    v74 = v8;
    v75 = v18;
    v21 = [v12 bugType];
    v22 = [v12 metaData];
    v23 = [v12 metaData];
    v24 = [v23 count];

    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v27 = objc_opt_new();
      v28 = [v19 objectForKeyedSubscript:@"bug_type"];

      v71 = v28;
      [v27 setObject:v28 forKeyedSubscript:@"bug_type"];
      v29 = [v19 objectForKeyedSubscript:@"isSimulated"];
      [v27 setObject:v29 forKeyedSubscript:@"isSimulated"];

      v30 = [v19 objectForKeyedSubscript:@"isCorpse"];
      [v27 setObject:v30 forKeyedSubscript:@"isCorpse"];

      v31 = [v19 objectForKeyedSubscript:@"incident_id"];
      [v27 setObject:v31 forKeyedSubscript:@"incident_id"];

      v32 = [v19 objectForKeyedSubscript:@"os_version"];
      [v27 setObject:v32 forKeyedSubscript:@"os_version"];

      v33 = [v19 objectForKeyedSubscript:@"platform"];
      [v27 setObject:v33 forKeyedSubscript:@"platform"];

      v25 = v27;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v25 count];
        *buf = 67109120;
        LODWORD(v88) = v34;
        _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "synthesizing %d items from payload as metadata", buf, 8u);
      }

      v35 = [v19 objectForKeyedSubscript:@"parsedData"];
      if (v35)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "this log appears to be from the DA grid, using parsedData section", buf, 2u);
        }

        v36 = v35;

        v19 = v36;
      }

      v21 = v71;
    }

    v18 = v75;
    if (![&unk_1F5514390 containsObject:v21])
    {
      v73 = v7;
      v44 = v25;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v12 bugType];
        *buf = 138412546;
        v88 = v45;
        v89 = 2112;
        v90 = v21;
        _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unsupported log type '%@' effective (%@)", buf, 0x16u);
      }

      v46 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      v86 = @"Transformation not supported for log type";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v26 = [v46 errorWithDomain:@"ReportViewer" code:6 userInfo:v42];

      v43 = v44;
      v7 = v73;
      goto LABEL_42;
    }

    v72 = v25;
    v37 = [v19 objectForKeyedSubscript:@"version"];
    if ([v37 intValue] >= 2)
    {
    }

    else
    {
      v38 = [v19 objectForKeyedSubscript:@"variantVersion"];
      v39 = [v38 intValue];

      if (v39 > 1)
      {
        v18 = v75;
      }

      else
      {
        v40 = [ReportViewerObjC rollSchemaForward:v19];

        v19 = v40;
        v18 = v75;
        if (!v40)
        {
          v41 = MEMORY[0x1E696ABC0];
          v91 = *MEMORY[0x1E696A578];
          v92[0] = @"unsupported JSON schema version";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
          v26 = [v41 errorWithDomain:@"ReportViewer" code:4 userInfo:v19];
          v42 = v20;
          v43 = v72;
LABEL_42:

          v8 = v74;
          goto LABEL_43;
        }
      }
    }

    v47 = objc_alloc_init(ReportViewerObjC);
    v42 = v47;
    if (v74)
    {
      v82 = v20;
      [(ReportViewerObjC *)v47 prepareTemplate:v74 forLogType:v21 error:&v82];
      v48 = v82;

      v49 = objc_opt_new();
      v81 = v48;
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __50__ReportViewerObjC_transformURL_template_options___block_invoke;
      v79[3] = &unk_1E8585650;
      v50 = v49;
      v80 = v50;
      v51 = [v42 transformJSON:v19 header:v25 error:&v81 streamingBlock:v79];
      v26 = v81;

      if (v51)
      {
        v70 = v50;
        v52 = [v77 objectForKeyedSubscript:OSATransformOptionFullReport[0]];
        v53 = [v52 BOOLValue];

        if (v53)
        {
          v78 = 0;
          v54 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v7 encoding:4 error:&v78];
          v55 = v78;
          v56 = v54;
          v57 = v55;
          v18 = v75;
          if (!v56)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [ReportViewerObjC transformURL:v57 template:? options:?];
            }

            v56 = @"Unable to load full report.";
          }

          v67 = v56;
          v69 = v57;
          v58 = v7;
          v59 = v50;
          v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@\n%@\n", @"-------------------------------------\nTranslated Report (Full Report Below)\n-------------------------------------\n", v70, @"-----------\nFull Report\n-----------\n", v56];

          v60 = v68;
        }

        else
        {
          v58 = v7;
          v59 = v50;
          v18 = v75;
          v60 = v70;
        }

        [v76 setObject:v60 forKeyedSubscript:OSATransformResultReport];
        v62 = v60;
      }

      else
      {
        v58 = v7;
        v59 = v50;
        v61 = [v26 augmentWithPrefix:@"Unable to transform log"];
        v62 = v26;
        v26 = v61;
        v18 = v75;
      }

      v43 = v72;
    }

    else
    {
      v58 = v7;
      v26 = [v20 augmentWithPrefix:@"Unable to locate template"];
      v59 = v20;
      v43 = v72;
    }

    v7 = v58;
    goto LABEL_42;
  }

  v26 = [v20 augmentWithPrefix:@"Unable to read JSON"];
  v21 = v20;
LABEL_43:
  v9 = v76;

  v13 = v18;
LABEL_44:

  if (v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v63 = [v26 localizedDescription];
      v64 = [v63 UTF8String];
      *buf = 136315138;
      v88 = v64;
      _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [v9 setObject:v26 forKeyedSubscript:OSATransformResultError[0]];
  }

  v65 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)transformURL:(void *)a1 template:options:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error loading full report: %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end