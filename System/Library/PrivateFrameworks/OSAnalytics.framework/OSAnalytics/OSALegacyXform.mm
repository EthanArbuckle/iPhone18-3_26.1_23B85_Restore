@interface OSALegacyXform
+ (id)rollSchemaForward:(id)forward;
+ (id)transformURL:(id)l template:(id)template options:(id)options;
- (BOOL)prepareTemplate:(id)template forLogType:(id)type error:(id *)error;
- (BOOL)transformJSON:(id)n header:(id)header error:(id *)error streamingBlock:(id)block;
- (BOOL)transformLines:(id)lines withDefinitions:(id)definitions body:(id)body header:(id)header error:(id *)error streamingBlock:(id)block;
- (OSALegacyXform)init;
- (id)_getValueForKey:(id)key fromBody:(id)body orHeader:(id)header;
- (id)_hexDump:(id)dump offset:(int)offset indicator:(BOOL)indicator;
- (id)formatCallstacks:(id)callstacks withImages:(id)images macosStyle:(BOOL)style;
- (id)formatFrame:(id)frame withImages:(id)images macosStyle:(BOOL)style;
- (id)formatImages:(id)images macosStyle:(BOOL)style;
- (id)formatLastException:(id)exception withImages:(id)images;
@end

@implementation OSALegacyXform

- (OSALegacyXform)init
{
  v6.receiver = self;
  v6.super_class = OSALegacyXform;
  v2 = [(OSALegacyXform *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    templates = v2->_templates;
    v2->_templates = v3;
  }

  return v2;
}

- (BOOL)prepareTemplate:(id)template forLogType:(id)type error:(id *)error
{
  typeCopy = type;
  v8 = [template componentsSeparatedByString:@"\n"];
  [(NSMutableDictionary *)self->_templates setValue:v8 forKey:typeCopy];

  return 0;
}

- (id)formatFrame:(id)frame withImages:(id)images macosStyle:(BOOL)style
{
  v51 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  imagesCopy = images;
  v9 = [frameCopy objectForKeyedSubscript:@"imageIndex"];
  v10 = v9;
  if (v9)
  {
    v11 = [imagesCopy objectAtIndexedSubscript:{objc_msgSend(v9, "intValue")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectForKeyedSubscript:@"name"];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"???";
  }

  if ([(__CFString *)v13 length]< 0x1F)
  {
    v16 = [(__CFString *)v13 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
  }

  else
  {
    if (style)
    {
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = [(__CFString *)v13 substringFromIndex:[(__CFString *)v13 length]- 27];
    v16 = [v14 stringWithFormat:@"...%@", v15];

    v13 = v15;
  }

  v13 = v16;
LABEL_12:
  v17 = [v11 objectForKeyedSubscript:@"base"];
  unsignedLongLongValue = [v17 unsignedLongLongValue];

  v19 = [frameCopy objectForKeyedSubscript:@"imageOffset"];
  unsignedLongLongValue2 = [v19 unsignedLongLongValue];

  v21 = unsignedLongLongValue + unsignedLongLongValue2;
  if ([frameCopy count] < 3)
  {
    if (unsignedLongLongValue && unsignedLongLongValue2)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p + %llu", unsignedLongLongValue, unsignedLongLongValue2];
    }

    else
    {
      if (!unsignedLongLongValue)
      {
        v21 = unsignedLongLongValue2;
      }

      v23 = @"???";
    }
  }

  else
  {
    v47 = [frameCopy objectForKeyedSubscript:@"symbol"];
    v22 = [frameCopy objectForKeyedSubscript:@"symbolLocation"];
    v48 = unsignedLongLongValue + unsignedLongLongValue2;
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongLongValue2 = [v22 unsignedLongLongValue];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v22;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** ignoring non-numeric symbolLocation: '%@'", buf, 0xCu);
      }
    }

    v46 = imagesCopy;
    v24 = [frameCopy objectForKeyedSubscript:@"sourceFile"];
    v25 = [frameCopy objectForKeyedSubscript:@"sourceLine"];
    v26 = v25;
    v44 = v22;
    v45 = v11;
    v27 = &stru_1F2411100;
    if (v24 && v25)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@:%@)", v24, v25];
    }

    v28 = [frameCopy objectForKeyedSubscript:@"inline"];
    v29 = v28;
    v30 = v47;
    if (v47)
    {
      v31 = MEMORY[0x1E696AEC0];
      bOOLValue = [v28 BOOLValue];
      v33 = @" [inlined]";
      if (!bOOLValue)
      {
        v33 = &stru_1F2411100;
      }

      v23 = [v31 stringWithFormat:@"%@ + %llu%@%@", v47, unsignedLongLongValue2, v27, v33, v44];
    }

    else
    {
      if (unsignedLongLongValue && unsignedLongLongValue2)
      {
        v34 = MEMORY[0x1E696AEC0];
        bOOLValue2 = [v28 BOOLValue];
        v36 = @" [inlined]";
        if (!bOOLValue2)
        {
          v36 = &stru_1F2411100;
        }

        v23 = [v34 stringWithFormat:@"%p + %llu%@%@", v48 - unsignedLongLongValue2, unsignedLongLongValue2, v27, v36, v44];
      }

      else
      {
        v37 = v48;
        if (!unsignedLongLongValue)
        {
          v37 = unsignedLongLongValue2;
        }

        v48 = v37;
        v23 = @"???";
      }

      v38 = [frameCopy objectForKeyedSubscript:@"region"];
      v39 = v38;
      if (v38)
      {
        v40 = v38;

        v13 = v40;
      }

      v30 = 0;
    }

    imagesCopy = v46;
    v21 = v48;
    v11 = v45;
  }

  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t%18p %@", v13, v21, v23];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)formatCallstacks:(id)callstacks withImages:(id)images macosStyle:(BOOL)style
{
  styleCopy = style;
  v90 = *MEMORY[0x1E69E9840];
  callstacksCopy = callstacks;
  imagesCopy = images;
  array = [MEMORY[0x1E695DF70] array];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = callstacksCopy;
  v63 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
  if (v63)
  {
    v8 = -1;
    v62 = *v85;
    v9 = 0x1E696A000uLL;
    v68 = imagesCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v84 + 1) + 8 * v10);
        v12 = (v8 + 1);
        v13 = [v11 objectForKeyedSubscript:@"name"];
        v14 = [v11 objectForKeyedSubscript:@"queue"];
        v15 = v14;
        v66 = v10;
        v67 = v12;
        if (styleCopy)
        {
          v16 = *(v9 + 3776);
          v17 = [v11 objectForKeyedSubscript:@"triggered"];
          v18 = @" Crashed";
          if (!v17)
          {
            v18 = &stru_1F2411100;
          }

          v19 = @": ";
          if (!(v13 | v15))
          {
            v19 = &stru_1F2411100;
          }

          if (v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = &stru_1F2411100;
          }

          v21 = @" Dispatch queue: ";
          if (v15)
          {
            v22 = v15;
          }

          else
          {
            v21 = &stru_1F2411100;
            v22 = &stru_1F2411100;
          }

          [v16 stringWithFormat:@"Thread %d%@:%@%@%@%@", v12, v18, v19, v20, v21, v22];
        }

        else
        {
          if (v13 | v14)
          {
            if (v13)
            {
              v23 = v13;
            }

            else
            {
              v23 = &stru_1F2411100;
            }

            v24 = @" Dispatch queue: ";
            if (v14)
            {
              v25 = v14;
            }

            else
            {
              v24 = &stru_1F2411100;
              v25 = &stru_1F2411100;
            }

            v57 = v24;
            v58 = v25;
            v26 = [*(v9 + 3776) stringWithFormat:@"Thread %d name:  %@%@%@", v12, v23];
            [array addObject:v26];
          }

          v27 = *(v9 + 3776);
          v17 = [v11 objectForKeyedSubscript:@"triggered"];
          v28 = @" Crashed";
          if (!v17)
          {
            v28 = &stru_1F2411100;
          }

          [v27 stringWithFormat:@"Thread %d%@:", v12, v28, v57, v58, v59, v60];
        }
        v29 = ;
        v64 = v15;
        v65 = v13;
        [array addObject:v29];

        v30 = [v11 objectForKeyedSubscript:@"originalLength"];
        unsignedIntValue = [v30 unsignedIntValue];

        v32 = [*(v9 + 3776) stringWithFormat:@"%u", unsignedIntValue];
        v33 = [v32 length];

        if (v33 <= 3)
        {
          v34 = 3;
        }

        else
        {
          v34 = v33;
        }

        v74 = v34;
        v79 = [v11 objectForKeyedSubscript:@"recursionInfoArray"];
        v69 = [v79 count];
        v35 = [v11 objectForKeyedSubscript:@"frames"];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v71 = v35;
        v77 = [v35 countByEnumeratingWithState:&v80 objects:v88 count:16];
        if (!v77)
        {
          v36 = 0;
          v38 = 0;
          goto LABEL_60;
        }

        v70 = 0;
        v36 = 0;
        depth = 0;
        v38 = 0;
        v78 = 0;
        v73 = *v81;
        v39 = -1;
        do
        {
          v40 = 0;
          do
          {
            if (*v81 != v73)
            {
              objc_enumerationMutation(v71);
            }

            v41 = *(*(&v80 + 1) + 8 * v40);
            if (!v79 || v36)
            {
              v43 = v38;
            }

            else if (v70 >= v69)
            {
              v43 = v38;
              v36 = 0;
            }

            else
            {
              v42 = [v79 objectAtIndexedSubscript:v70];
              v36 = [objc_alloc(MEMORY[0x1E69D4F30]) initWithDictionary:v42];
              depth = [v36 depth];
              v43 = [v42 objectForKeyedSubscript:@"keyFrame"];
            }

            v44 = MEMORY[0x1E696AEC0];
            v57 = [(OSALegacyXform *)self formatFrame:v41 withImages:imagesCopy macosStyle:styleCopy];
            v45 = [v44 stringWithFormat:@"%-*u %@", v74, (v78 + v39 + 1)];
            [array addObject:v45];

            if (!depth)
            {
              goto LABEL_46;
            }

            v46 = [v41 objectForKeyedSubscript:@"inline"];
            if (v46)
            {

LABEL_46:
              v38 = v43;
              goto LABEL_47;
            }

            v38 = v43;
            v47 = [v43 objectForKeyedSubscript:@"imageIndex"];
            v48 = [v41 objectForKeyedSubscript:@"imageIndex"];
            if ([v47 isEqual:v48])
            {
              v49 = [v43 objectForKeyedSubscript:@"imageOffset"];
              v50 = [v41 objectForKeyedSubscript:@"imageOffset"];
              v51 = [v49 isEqual:v50];

              if (!v51)
              {
                imagesCopy = v68;
                goto LABEL_46;
              }

              v38 = v43;
              if (depth == [v36 depth] - 2)
              {
                coldestElided = [v36 coldestElided];
                v78 = v78 + coldestElided - [v36 hottestElided] + 1;
                depth = 3;
                imagesCopy = v68;
              }

              else
              {
                --depth;
                imagesCopy = v68;
                if (!depth)
                {
                  ++v70;

                  v36 = 0;
                }
              }
            }

            else
            {
            }

LABEL_47:
            ++v40;
            ++v39;
          }

          while (v77 != v40);
          v53 = [v71 countByEnumeratingWithState:&v80 objects:v88 count:16];
          v77 = v53;
        }

        while (v53);
LABEL_60:
        [array addObject:&stru_1F2411100];

        v8 = v67;
        v10 = v66 + 1;
        v9 = 0x1E696A000;
      }

      while (v66 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
    }

    while (v63);
  }

  v54 = [array componentsJoinedByString:@"\n"];

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)formatImages:(id)images macosStyle:(BOOL)style
{
  styleCopy = style;
  v48 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  v39 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = imagesCopy;
  v40 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v40)
  {
    v38 = *v44;
    v35 = styleCopy;
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
        if (!styleCopy)
        {
          v10 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F2411100];

          v9 = v10;
        }

        v42 = [v7 objectForKeyedSubscript:@"base"];
        unsignedLongLongValue = [v42 unsignedLongLongValue];
        v12 = [v7 objectForKeyedSubscript:@"size"];
        v41 = unsignedLongLongValue + [v12 unsignedLongLongValue] - 1;

        v13 = [v7 objectForKeyedSubscript:@"name"];
        v14 = [v7 objectForKeyedSubscript:@"arch"];
        v15 = [v7 objectForKeyedSubscript:@"path"];
        v16 = v15;
        if (styleCopy)
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

          v27 = [v20 stringWithFormat:@"%18p - %18p %@ (%@) <%@> %@", unsignedLongLongValue, v41, v22, v19, v9, v26];
          [v39 addObject:v27];

          if (v21)
          {
          }

          styleCopy = v35;
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

        v30 = [v23 stringWithFormat:@"%18p - %18p %@ %@  <%@> %@", unsignedLongLongValue, v41, v25, v28, v9, v29];
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

- (id)formatLastException:(id)exception withImages:(id)images
{
  v26 = *MEMORY[0x1E69E9840];
  exceptionCopy = exception;
  imagesCopy = images;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = exceptionCopy;
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
        v15 = [(OSALegacyXform *)self formatFrame:*(*(&v21 + 1) + 8 * i) withImages:imagesCopy macosStyle:0];
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

- (id)_hexDump:(id)dump offset:(int)offset indicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v26 = *MEMORY[0x1E69E9840];
  dumpCopy = dump;
  v8 = objc_opt_new();
  v24 = 0u;
  memset(v25, 0, 28);
  v22 = 0u;
  v23 = 0u;
  *__str = 0;
  if ([dumpCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [dumpCopy objectAtIndexedSubscript:v9];
      intValue = [v10 intValue];

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

      if (intValue > 0x7F)
      {
        v14 = __maskrune(intValue, 0x40000uLL);
      }

      else
      {
        v14 = *(MEMORY[0x1E69E9830] + 4 * intValue + 60) & 0x40000;
      }

      if (v14)
      {
        v15 = intValue;
      }

      else
      {
        v15 = 46;
      }

      snprintf(__str, 4uLL, "%02x%c", intValue, v15);
      v16 = (3 * v12);
      *(&v22 + v16 + 2) = *__str;
      *((v12 | &v22) + 0x33) = __str[2];
      if (offset == v9)
      {
        v17 = &v22 + v16;
        v17[1] = 91;
        v17[4] = 93;
        if (indicatorCopy)
        {
          __sprintf_chk(&v25[1] + 3, 0, 9uLL, "\t<==");
        }
      }

      if (v12 == 15 || v9 == [dumpCopy count] - 1)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v22];
        [v8 addObject:v18];
      }

      ++v9;
    }

    while ([dumpCopy count] > v9);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_getValueForKey:(id)key fromBody:(id)body orHeader:(id)header
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bodyCopy = body;
  headerCopy = header;
  if ([&unk_1F241F248 containsObject:keyCopy])
  {
    v11 = [(OSALegacyXform *)self _getValueForKey:@"faultingThread" fromBody:bodyCopy orHeader:0];
    if (!v11)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v12 = [bodyCopy objectForKeyedSubscript:@"threads"];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v11, "intValue")}];
    lastObject = v13;
    v15 = keyCopy;
  }

  else
  {
    v11 = bodyCopy;
    if ([keyCopy hasPrefix:@"metadata:"])
    {
      v16 = headerCopy;

      v17 = [keyCopy stringByReplacingOccurrencesOfString:@"metadata:" withString:&stru_1F2411100];

      v11 = v16;
      keyCopy = v17;
    }

    v18 = [keyCopy componentsSeparatedByString:@"."];
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
      v29 = headerCopy;
      v30 = bodyCopy;
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
            headerCopy = v29;
            bodyCopy = v30;
            goto LABEL_19;
          }

          ++v23;
          v25 = v11;
        }

        while (v21 != v23);
        v21 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
        headerCopy = v29;
        bodyCopy = v30;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    lastObject = [v12 lastObject];
    v13 = v11;
    v15 = lastObject;
  }

  v26 = [v13 objectForKeyedSubscript:{v15, v29, v30, v31}];

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (BOOL)transformJSON:(id)n header:(id)header error:(id *)error streamingBlock:(id)block
{
  v23[3] = *MEMORY[0x1E69E9840];
  nCopy = n;
  headerCopy = header;
  blockCopy = block;
  v13 = [headerCopy objectForKeyedSubscript:@"bug_type"];
  v14 = [(NSMutableDictionary *)self->_templates objectForKeyedSubscript:v13];
  v15 = objc_opt_new();
  if (v14)
  {
    v16 = [(OSALegacyXform *)self transformLines:v14 withDefinitions:v15 body:nCopy header:headerCopy error:error streamingBlock:blockCopy];
  }

  else
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' template not found", v13, *MEMORY[0x1E696A578]];
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *error = [v17 errorWithDomain:@"OSALegacyXform" code:1 userInfo:v19];
    }

    v16 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)transformLines:(id)lines withDefinitions:(id)definitions body:(id)body header:(id)header error:(id *)error streamingBlock:(id)block
{
  errorCopy = error;
  v89 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  definitionsCopy = definitions;
  bodyCopy = body;
  headerCopy = header;
  blockCopy = block;
  v84 = 0;
  v51 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\$\\((([^\\)\"]+|\"[^\"]+\"" options:? error:?], 0, &v84);
  v47 = v84;
  v13 = [(OSALegacyXform *)self _getValueForKey:@"osVersion.train" fromBody:bodyCopy orHeader:headerCopy];
  v49 = [v13 hasPrefix:@"macOS"];

  v50 = [(OSALegacyXform *)self _getValueForKey:@"faultingThread" fromBody:bodyCopy orHeader:0];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = linesCopy;
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
  v53 = blockCopy + 2;
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

        [definitionsCopy setObject:v58 forKeyedSubscript:v14];

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

                v31 = [v28 hasPrefix:{@"*", errorCopy}];
                if (v31)
                {
                  v32 = [v28 substringFromIndex:1];

                  v28 = v32;
                }

                v33 = [(OSALegacyXform *)self _getValueForKey:v28 fromBody:bodyCopy orHeader:headerCopy];
                bOOLValue = v33 != 0;
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
                    bOOLValue = [v33 count] != 0;
                  }

                  else
                  {
                    bOOLValue = [v33 BOOLValue];
                  }
                }

                v36 = v30 == bOOLValue;

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

        v37 = [v16 substringFromIndex:{v77[3], errorCopy}];
        v77[3] = 0;
        v38 = [v37 length];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __82__OSALegacyXform_transformLines_withDefinitions_body_header_error_streamingBlock___block_invoke;
        v62[3] = &unk_1E7A27E38;
        v39 = blockCopy;
        v69 = v39;
        v40 = v37;
        v63 = v40;
        v70 = &v76;
        v64 = definitionsCopy;
        selfCopy = self;
        v66 = bodyCopy;
        v67 = headerCopy;
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
    if (errorCopy)
    {
      v42 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      v86 = @"template has illformed definition";
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      *errorCopy = [v42 errorWithDomain:@"OSALegacyXform" code:2 userInfo:v43];
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

void __82__OSALegacyXform_transformLines_withDefinitions_body_header_error_streamingBlock___block_invoke(uint64_t a1, void *a2)
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 rangeAtIndex:0];
  v6 = v5;
  v73 = v3;
  v7 = [v3 rangeAtIndex:1];
  v9 = v8;
  v10 = *(a1 + 80);
  v11 = *(*(*(a1 + 88) + 8) + 24);
  v12 = [*(a1 + 32) substringWithRange:{v11, v4 - v11}];
  (*(v10 + 16))(v10, v12);

  v70 = v9;
  v71 = v7;
  v72 = [*(a1 + 32) substringWithRange:{v7, v9}];
  [v72 componentsSeparatedByString:@"|"];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v100 = 0u;
  v13 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
  if (!v13)
  {
    goto LABEL_79;
  }

  v14 = v13;
  v15 = *v98;
  v75 = *v98;
  while (2)
  {
    v16 = 0;
    v74 = v14;
    do
    {
      if (*v98 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v97 + 1) + 8 * v16);
      v18 = [v17 componentsSeparatedByString:@"#"];
      v80 = v16;
      if ([v18 count] == 2)
      {
        v19 = *(a1 + 40);
        v20 = [v18 objectAtIndexedSubscript:0];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (!v21)
        {
          goto LABEL_78;
        }

        v22 = *(a1 + 48);
        v23 = [v18 objectAtIndexedSubscript:1];
        v24 = [v22 _getValueForKey:v23 fromBody:*(a1 + 56) orHeader:*(a1 + 64)];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = v24;
          v78 = v18;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v81 = v24;
          v25 = [v81 countByEnumeratingWithState:&v93 objects:v107 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v94;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v94 != v28)
                {
                  objc_enumerationMutation(v81);
                }

                v30 = *(*(&v93 + 1) + 8 * i);
                v32 = *(a1 + 40);
                v31 = *(a1 + 48);
                v105[0] = @"<index>";
                v33 = [MEMORY[0x1E696AD98] numberWithInt:v27];
                v105[1] = @"<item>";
                v106[0] = v33;
                v106[1] = v30;
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
                v92 = 0;
                [v31 transformLines:v21 withDefinitions:v32 body:v34 header:0 error:&v92 streamingBlock:*(a1 + 80)];
                v35 = v92;

                v27 = (v27 + 1);
              }

              v26 = [v81 countByEnumeratingWithState:&v93 objects:v107 count:16];
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

            v6 = [*(a1 + 32) length];
            v4 = 0;
            v15 = v75;
            goto LABEL_32;
          }

          v77 = v24;
          v78 = v18;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v38 = v24;
          v39 = [v38 countByEnumeratingWithState:&v88 objects:v104 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v89;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v89 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v44 = *(a1 + 40);
                v43 = *(a1 + 48);
                v103[0] = *(*(&v88 + 1) + 8 * j);
                v102[0] = @"<key>";
                v102[1] = @"<value>";
                v45 = [v38 objectForKeyedSubscript:?];
                v103[1] = v45;
                v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
                v87 = 0;
                [v43 transformLines:v21 withDefinitions:v44 body:v46 header:0 error:&v87 streamingBlock:*(a1 + 80)];
                v47 = v87;
              }

              v40 = [v38 countByEnumeratingWithState:&v88 objects:v104 count:16];
            }

            while (v40);
          }
        }

        v24 = v77;

        v18 = v78;
        v14 = v74;
        goto LABEL_31;
      }

      if (([v17 hasPrefix:@""] & 1) == 0)
      {
        v37 = [*(a1 + 48) _getValueForKey:v17 fromBody:*(a1 + 56) orHeader:*(a1 + 64)];
        if (!v37)
        {
          goto LABEL_32;
        }

LABEL_35:
        if ([v17 isEqualToString:@"threads"])
        {
          v48 = *(a1 + 48);
          v49 = [*(a1 + 56) objectForKeyedSubscript:@"usedImages"];
          v50 = [v48 formatCallstacks:v37 withImages:v49 macosStyle:*(a1 + 96)];
LABEL_37:
          v51 = v50;

          goto LABEL_52;
        }

        if (![v17 isEqualToString:@"threadState"])
        {
          if ([v17 isEqualToString:@"instructionState"])
          {
            v54 = [*(a1 + 48) formatInstructionState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
          }

          else
          {
            if ([v17 isEqualToString:@"lastBranchState"])
            {
              v55 = *(a1 + 48);
              v56 = [*(a1 + 72) intValue];
              v49 = [*(a1 + 56) objectForKeyedSubscript:@"usedImages"];
              v50 = [v55 formatLastBranchState:v37 index:v56 withImages:v49];
              goto LABEL_37;
            }

            if ([v17 isEqualToString:@"lastExceptionBacktrace"])
            {
              v58 = *(a1 + 48);
              v49 = [*(a1 + 56) objectForKeyedSubscript:@"usedImages"];
              v50 = [v58 formatLastException:v37 withImages:v49];
              goto LABEL_37;
            }

            if ([v17 hasPrefix:@"usedImages"])
            {
              v54 = [*(a1 + 48) formatImages:v37 macosStyle:*(a1 + 96)];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                (*(*(a1 + 80) + 16))();
LABEL_77:

LABEL_78:
                goto LABEL_79;
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
                  v57 = *(a1 + 80);
                  goto LABEL_75;
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
                    v83 = 0u;
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v82 = v37;
                    v62 = [v82 countByEnumeratingWithState:&v83 objects:v101 count:16];
                    if (v62)
                    {
                      v63 = v62;
                      v64 = *v84;
                      do
                      {
                        for (k = 0; k != v63; ++k)
                        {
                          if (*v84 != v64)
                          {
                            objc_enumerationMutation(v82);
                          }

                          v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%016qx", objc_msgSend(*(*(&v83 + 1) + 8 * k), "longLongValue")];
                          [v61 addObject:v66];
                        }

                        v63 = [v82 countByEnumeratingWithState:&v83 objects:v101 count:16];
                      }

                      while (v63);
                    }

                    v51 = [v61 componentsJoinedByString:{@", "}];

                    v18 = v79;
LABEL_52:
                    v57 = *(a1 + 80);
                    if (v51)
                    {
                      (*(v57 + 16))(*(a1 + 80), v51);
LABEL_76:

                      goto LABEL_77;
                    }

LABEL_75:
                    v67 = MEMORY[0x1E696AEC0];
                    v51 = [*(a1 + 32) substringWithRange:{v71, v70}];
                    v68 = [v67 stringWithFormat:@"{%@}", v51];
                    (*(v57 + 16))(v57, v68);

                    goto LABEL_76;
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
          v53 = [*(a1 + 48) formatArm64ThreadState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
        }

        else if ([v52 isEqualToString:@"ARM_THREAD_STATE32"])
        {
          v53 = [*(a1 + 48) formatArm32ThreadState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
        }

        else
        {
          if (![v52 isEqualToString:@"x86_THREAD_STATE"])
          {
            v51 = 0;
            goto LABEL_51;
          }

          v53 = [*(a1 + 48) formatX86ThreadState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
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
    v14 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_79:

  *(*(*(a1 + 88) + 8) + 24) = v4 + v6;
  v69 = *MEMORY[0x1E69E9840];
}

+ (id)rollSchemaForward:(id)forward
{
  v134 = *MEMORY[0x1E69E9840];
  forwardCopy = forward;
  v62 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([A-Z_]+) options:(\\[0x[0-9a-zA-Z]\\])?(.*)$" error:{0, 0}];
  v65 = objc_opt_new();
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = forwardCopy;
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
              v113 = __Block_byref_object_copy__7;
              v114 = __Block_byref_object_dispose__7;
              v115 = 0;
              v10 = [v9 length];
              v106[0] = MEMORY[0x1E69E9820];
              v106[1] = 3221225472;
              v107[0] = __36__OSALegacyXform_rollSchemaForward___block_invoke;
              v107[1] = &unk_1E7A27E88;
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
              v74 = [&unk_1F241F120 objectForKeyedSubscript:v72];
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
            bOOLValue = [v30 BOOLValue];

            if (bOOLValue)
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
                  [v35 addObject:&unk_1F241F0F8];
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

uint64_t __36__OSALegacyXform_rollSchemaForward___block_invoke(uint64_t a1, void *a2)
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

+ (id)transformURL:(id)l template:(id)template options:(id)options
{
  v123[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  templateCopy = template;
  optionsCopy = options;
  v10 = objc_opt_new();
  v11 = [OSALog alloc];
  path = [lCopy path];
  v114 = 0;
  v13 = [(OSALog *)v11 initWithPath:path forRouting:&stru_1F2411100 options:&unk_1F241F148 error:&v114];
  v14 = v114;

  if (!v13)
  {
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load log '%@'", lCopy];
    v25 = [v14 augmentWithPrefix:lCopy];
    goto LABEL_86;
  }

  v107 = optionsCopy;
  lCopy = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:{fileno(-[OSALog stream](v13, "stream"))}];
  v16 = MEMORY[0x1B2702E10]([(OSALog *)v13 stream]);
  metaData = [(OSALog *)v13 metaData];
  v18 = [metaData count];

  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ips metadata not detected (%ld bytes before newline), attempting to read entire file as payload", buf, 0xCu);
    }

    v16 = 0;
  }

  v106 = templateCopy;
  [lCopy seekToFileOffset:v16];
  [lCopy availableData];
  v105 = v113[1] = v14;
  v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
  bugType = v14;

  if (v19)
  {
    v104 = bugType;
    bugType = [(OSALog *)v13 bugType];
    metaData2 = [(OSALog *)v13 metaData];
    metaData3 = [(OSALog *)v13 metaData];
    v23 = [metaData3 count];

    if (v23)
    {
      v24 = metaData2;
    }

    else
    {
      v26 = objc_opt_new();
      v27 = [v19 objectForKeyedSubscript:@"bug_type"];

      [v26 setObject:v27 forKeyedSubscript:@"bug_type"];
      v28 = [v19 objectForKeyedSubscript:@"isSimulated"];
      [v26 setObject:v28 forKeyedSubscript:@"isSimulated"];

      v29 = [v19 objectForKeyedSubscript:@"isCorpse"];
      [v26 setObject:v29 forKeyedSubscript:@"isCorpse"];

      v30 = [v19 objectForKeyedSubscript:@"incident_id"];
      [v26 setObject:v30 forKeyedSubscript:@"incident_id"];

      v31 = [v19 objectForKeyedSubscript:@"os_version"];
      [v26 setObject:v31 forKeyedSubscript:@"os_version"];

      v32 = [v19 objectForKeyedSubscript:@"platform"];
      [v26 setObject:v32 forKeyedSubscript:@"platform"];

      v24 = v26;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v24 count];
        *buf = 67109120;
        *&buf[4] = v33;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "synthesizing %d items from payload as metadata", buf, 8u);
      }

      v34 = [v19 objectForKeyedSubscript:@"parsedData"];
      if (v34)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "this log appears to be from the DA grid, using parsedData section", buf, 2u);
        }

        v35 = v34;

        v19 = v35;
      }

      bugType = v27;
    }

    if (![&unk_1F241F260 containsObject:bugType])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        bugType2 = [(OSALog *)v13 bugType];
        *buf = 138412546;
        *&buf[4] = bugType2;
        *&buf[12] = 2112;
        *&buf[14] = bugType;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unsupported log type '%@' effective (%@)", buf, 0x16u);
      }

      v43 = MEMORY[0x1E696ABC0];
      v115 = *MEMORY[0x1E696A578];
      v116 = @"legacy conversion not supported for log type";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v45 = v43;
      v41 = v44;
      v25 = [v45 errorWithDomain:@"OSALegacyXform" code:6 userInfo:v44];

      goto LABEL_84;
    }

    v103 = v24;
    v36 = [v19 objectForKeyedSubscript:@"version"];
    if ([v36 intValue] >= 2)
    {
    }

    else
    {
      v37 = [v19 objectForKeyedSubscript:@"variantVersion"];
      intValue = [v37 intValue];

      if (intValue <= 1)
      {
        v39 = [OSALegacyXform rollSchemaForward:v19];

        v19 = v39;
        if (!v39)
        {
          v40 = MEMORY[0x1E696ABC0];
          v117 = *MEMORY[0x1E696A578];
          v118 = @"unsupported JSON schema version";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
          v25 = [v40 errorWithDomain:@"OSALegacyXform" code:4 userInfo:v19];
          v41 = v104;
LABEL_84:

          goto LABEL_85;
        }
      }
    }

    v102 = objc_alloc_init(OSALegacyXform);
    v46 = [v24 objectForKeyedSubscript:@"os_version"];
    if ([v46 hasPrefix:@"macOS"])
    {
      v47 = [v24 objectForKeyedSubscript:@"platform"];
      if (v47)
      {
        v48 = [v24 objectForKeyedSubscript:@"platform"];
        if ([v48 intValue] == 1)
        {
          v49 = 1;
        }

        else
        {
          v100 = [v24 objectForKeyedSubscript:@"platform"];
          if ([v100 intValue] == 6)
          {
            v49 = 1;
          }

          else
          {
            v97 = [v24 objectForKeyedSubscript:@"platform"];
            v49 = [v97 intValue] == 10;
          }
        }
      }

      else
      {
        v49 = 1;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = [v107 objectForKeyedSubscript:OSATransformOptionMetadata];

    if (!v50)
    {
LABEL_53:
      v58 = v106;
      if (!v106)
      {
        v59 = &legacyTemplate_109;
        if (v49)
        {
          v59 = &legacyTemplate_9;
        }

        v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v59];
        if (!v58)
        {
          v25 = [v104 augmentWithPrefix:@"Unable to locate template"];
          v106 = 0;
          v24 = v103;
LABEL_83:

          v41 = v102;
          goto LABEL_84;
        }
      }

      v101 = v10;
      v113[0] = v104;
      v106 = v58;
      [(OSALegacyXform *)v102 prepareTemplate:v58 forLogType:bugType error:v113];
      v60 = v113[0];

      v61 = objc_opt_new();
      v112 = v60;
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __48__OSALegacyXform_transformURL_template_options___block_invoke;
      v110[3] = &unk_1E7A27EB0;
      v62 = v61;
      v111 = v62;
      v63 = [(OSALegacyXform *)v102 transformJSON:v19 header:v103 error:&v112 streamingBlock:v110];
      v64 = v112;

      v104 = v62;
      if (!v63)
      {
        v25 = [v64 augmentWithPrefix:@"Unable to transform log"];
        goto LABEL_81;
      }

      v98 = v64;
      v64 = v62;
      v65 = [v107 objectForKeyedSubscript:OSATransformOptionSymbolicate];
      bOOLValue = [v65 BOOLValue];

      if (!bOOLValue)
      {
        v25 = v98;
LABEL_68:
        v74 = [v107 objectForKeyedSubscript:OSATransformOptionFullReport];
        bOOLValue2 = [v74 BOOLValue];

        if (bOOLValue2)
        {
          v76 = v64;
          v109 = 0;
          v77 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:lCopy encoding:4 error:&v109];
          v78 = v109;
          if (!v77)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [OSALegacyXform transformURL:v78 template:? options:?];
            }

            v77 = @"Unable to load full report.";
          }

          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@%@\n%@\n", @"-------------------------------------\nTranslated Report (Full Report Below)\n-------------------------------------\n", v64, @"-----------\nFull Report\n-----------\n", v77];
        }

        v79 = [v107 objectForKeyedSubscript:OSATransformOptionPersist];
        if ([v79 BOOLValue])
        {
          v80 = [v64 length];

          if (v80)
          {
            memcpy(buf, "/tmp/temp.XXXXXX", 0x400uLL);
            v81 = mkstemp(buf);
            if (v81 == -1)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                +[OSALegacyXform transformURL:template:options:];
              }

              v90 = MEMORY[0x1E696ABC0];
              v119 = *MEMORY[0x1E696A578];
              v120 = @"Error creating temporary file for symbolicated log";
              v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
              v92 = v90;
              v93 = v91;
              v85 = [v92 errorWithDomain:@"OSALegacyXform" code:8 userInfo:v91];
              v24 = v103;
            }

            else
            {
              v82 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v81 closeOnDealloc:1];
              v83 = [v64 dataUsingEncoding:4];
              v108 = 0;
              v99 = v82;
              [v82 writeData:v83 error:&v108];
              v84 = v108;

              if (v84)
              {
                v85 = [v84 augmentWithPrefix:@"failed to persist symbolicated log"];
                v25 = v84;
              }

              else
              {
                v94 = MEMORY[0x1E695DFF8];
                v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
                v95 = [v94 fileURLWithPath:v25];
                [v101 setObject:v95 forKeyedSubscript:OSATransformResultFileURL];

                v85 = 0;
              }

              v24 = v103;
              v93 = v99;
            }

            v25 = v85;
            goto LABEL_82;
          }
        }

        else
        {
        }

        [v101 setObject:v64 forKeyedSubscript:OSATransformResultReport];
LABEL_81:
        v24 = v103;
LABEL_82:

        v10 = v101;
        goto LABEL_83;
      }

      v96 = [v64 dataUsingEncoding:4];
      v67 = symbolicateSpeedTracer(v96, v107);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = [v67 objectForKeyedSubscript:OSATransformResultRadars];
        [v101 setObject:v68 forKeyedSubscript:OSATransformResultRadars];

        v69 = [v67 objectForKeyedSubscript:OSATransformResultTracerURL];
        [v101 setObject:v69 forKeyedSubscript:OSATransformResultTracerURL];

        v25 = [v67 objectForKeyedSubscript:OSATransformResultError];

        v70 = [v67 objectForKeyedSubscript:OSATransformResultReport];
        v71 = v70;
        if (!v70)
        {
          goto LABEL_67;
        }

        v71 = v70;
        v72 = v64;
        v64 = v71;
      }

      else
      {
        v73 = MEMORY[0x1E696ABC0];
        v122 = *MEMORY[0x1E696A578];
        v123[0] = @"No speedtracer results";
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1];
        v25 = [v73 errorWithDomain:@"OSALegacyTransform" code:1 userInfo:v71];
        v72 = v98;
      }

LABEL_67:
      goto LABEL_68;
    }

    v51 = [v103 mutableCopy];
    v52 = [MEMORY[0x1E695DFD8] setWithObjects:{@"308", @"309", @"409", @"509", 0}];
    v53 = [v52 containsObject:bugType];

    if (v53)
    {
      if (v49)
      {
        v54 = @"9";
      }

      else
      {
        v54 = @"109";
      }

      v55 = 0x1E696A000;
    }

    else
    {
      v55 = 0x1E696A000uLL;
      if ([bugType isEqualToString:@"385"])
      {
        v54 = @"185";
      }

      else
      {
        if (![bugType isEqualToString:@"327"])
        {
LABEL_50:
          v56 = [*(v55 + 3248) dataWithJSONObject:v51 options:0 error:0];
          if (v56)
          {
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v56 encoding:4];
            [v10 setObject:v57 forKeyedSubscript:OSATransformResultMetadata];
          }

          goto LABEL_53;
        }

        v54 = @"227";
      }
    }

    [v51 setObject:v54 forKeyedSubscript:@"bug_type"];
    goto LABEL_50;
  }

  v25 = [bugType augmentWithPrefix:@"Unable to read JSON"];
LABEL_85:

  v14 = v105;
  templateCopy = v106;
  optionsCopy = v107;
LABEL_86:

  if (v25)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v25 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [v10 setObject:v25 forKeyedSubscript:OSATransformResultError];
  }

  v88 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)transformURL:(void *)a1 template:options:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error loading full report: %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end