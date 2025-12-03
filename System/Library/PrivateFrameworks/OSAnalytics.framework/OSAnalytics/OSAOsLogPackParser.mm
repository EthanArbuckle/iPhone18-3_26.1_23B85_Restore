@interface OSAOsLogPackParser
- (OSAOsLogPackParser)initWithMaxNumAruments:(unint64_t)aruments;
- (id)compose:(id)compose;
- (id)extractArguments:(id)arguments;
- (id)filterOutSensitiveParts:(id)parts withFormats:(id)formats;
- (id)parse:(id)parse;
@end

@implementation OSAOsLogPackParser

- (OSAOsLogPackParser)initWithMaxNumAruments:(unint64_t)aruments
{
  v5.receiver = self;
  v5.super_class = OSAOsLogPackParser;
  result = [(OSAOsLogPackParser *)&v5 init];
  if (result)
  {
    result->_maxNumArguments = aruments;
  }

  return result;
}

- (id)parse:(id)parse
{
  parseCopy = parse;
  v5 = objc_opt_new();
  bytes = [parseCopy bytes];
  v7 = *(bytes + 69);
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__1;
  v71 = __Block_byref_object_dispose__1;
  v8 = *(bytes + 40);
  v72 = (*(self->_readCStringFromTarget + 2))();
  v9 = v68[5];
  if (v9 && [v9 length] && objc_msgSend(v68[5], "length") < 0x401)
  {
    objc_storeStrong(&self->_formatString, v68[5]);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __28__OSAOsLogPackParser_parse___block_invoke;
    v66[3] = &unk_1E7A272E8;
    v66[4] = &v67;
    v12 = MEMORY[0x1B2703360](v66);
    v13 = *(bytes + 40);
    self->_formatStringIsSafe = (*(self->_pointerPointsToSafeMemory + 2))();
    v14 = *(bytes + 40);
    v15 = (*(self->_modulePathForMemoryPointer + 2))();
    v64 = v7;
    v65 = (bytes + 70);
    formatStringOriginatingModulePath = self->_formatStringOriginatingModulePath;
    self->_formatStringOriginatingModulePath = v15;

    v17 = 0;
    while ([v68[5] length])
    {
      if (v17 >= self->_maxNumArguments)
      {
        break;
      }

      v18 = [v68[5] rangeOfString:@"%"];
      if (!v19)
      {
        break;
      }

      v20 = v18;
      if ([v68[5] length] < v18)
      {
        break;
      }

      if ([v68[5] characterAtIndex:v20 + 1] == 37)
      {
        v21 = [OSAParsedOsLogPart alloc];
        v22 = [v68[5] substringToIndex:v20];
        v23 = [(OSAParsedOsLogPart *)v21 initWithLiteral:v22 isSafe:self->_formatStringIsSafe];
        [v5 addObject:v23];

        v24 = [[OSAParsedOsLogPart alloc] initWithLiteral:@"%" isSafe:self->_formatStringIsSafe];
        [v5 addObject:v24];

        v12[2](v12, v20 + 2);
      }

      else
      {
        if (!v64)
        {
          break;
        }

        v63 = v65[1];
        v25 = [OSAParsedOsLogPart alloc];
        v26 = [v68[5] substringToIndex:v20];
        v27 = [(OSAParsedOsLogPart *)v25 initWithLiteral:v26 isSafe:self->_formatStringIsSafe];
        [v5 addObject:v27];

        v28 = [v68[5] substringFromIndex:v20 + 1];
        v12[2](v12, v20);
        v12[2](v12, 1);
        if ([v28 hasPrefix:@"s"])
        {
          v12[2](v12, 1);
          if ((*v65 & 0xF0) != 0x20 || v65[1] != 8)
          {
            goto LABEL_75;
          }

          v29 = v28;
          v30 = v65[1];
          __memcpy_chk();
          v31 = [OSAParsedOsLogPart alloc];
          v32 = (*(self->_readCStringFromTarget + 2))();
          v33 = [(OSAParsedOsLogPart *)v31 initWithArgument:v32 argSpecifier:@"%s" isSafe:(*(self->_pointerPointsToSafeMemory + 2))()];
          [v5 addObject:v33];
        }

        else
        {
          if ([v28 hasPrefix:@"d"])
          {
            v12[2](v12, [@"d" length]);
            if (*v65 > 0xFu || v65[1] != 4)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v34 = v65[1];
            __memcpy_chk();
            v35 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
            v37 = [(OSAParsedOsLogPart *)v35 initWithArgument:v36 argSpecifier:@"%d" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"ld"])
          {
            v12[2](v12, [@"ld" length]);
            if (*v65 > 0xFu || v65[1] != 8)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v38 = v65[1];
            __memcpy_chk();
            v39 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 0];
            v37 = [(OSAParsedOsLogPart *)v39 initWithArgument:v36 argSpecifier:@"%ld" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"lld"])
          {
            v12[2](v12, [@"lld" length]);
            if (*v65 > 0xFu || v65[1] != 8)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v40 = v65[1];
            __memcpy_chk();
            v41 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", 0];
            v37 = [(OSAParsedOsLogPart *)v41 initWithArgument:v36 argSpecifier:@"%lld" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"u"])
          {
            v12[2](v12, [@"u" length]);
            if (*v65 > 0xFu || v65[1] != 4)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v42 = v65[1];
            __memcpy_chk();
            v43 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0];
            v37 = [(OSAParsedOsLogPart *)v43 initWithArgument:v36 argSpecifier:@"%u" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"lu"])
          {
            v12[2](v12, [@"lu" length]);
            if (*v65 > 0xFu || v65[1] != 8)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v44 = v65[1];
            __memcpy_chk();
            v45 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 0];
            v37 = [(OSAParsedOsLogPart *)v45 initWithArgument:v36 argSpecifier:@"%lu" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"llu"])
          {
            v12[2](v12, [@"llu" length]);
            if (*v65 > 0xFu || v65[1] != 8)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v46 = v65[1];
            __memcpy_chk();
            v47 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", 0];
            v37 = [(OSAParsedOsLogPart *)v47 initWithArgument:v36 argSpecifier:@"%llu" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"x"])
          {
            v12[2](v12, [@"x" length]);
            if (*v65 > 0xFu || v65[1] != 4)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v48 = v65[1];
            __memcpy_chk();
            v49 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x", 0];
            v37 = [(OSAParsedOsLogPart *)v49 initWithArgument:v36 argSpecifier:@"%x" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"lx"])
          {
            v12[2](v12, [@"lx" length]);
            if (*v65 > 0xFu || v65[1] != 8)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v50 = v65[1];
            __memcpy_chk();
            v51 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", 0];
            v37 = [(OSAParsedOsLogPart *)v51 initWithArgument:v36 argSpecifier:@"%lx" isSafe:1];
            [v5 addObject:v37];
          }

          else if ([v28 hasPrefix:@"llx"])
          {
            v12[2](v12, [@"llx" length]);
            if (*v65 > 0xFu || v65[1] != 8)
            {
              goto LABEL_75;
            }

            v29 = v28;
            v52 = v65[1];
            __memcpy_chk();
            v53 = [OSAParsedOsLogPart alloc];
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llx", 0];
            v37 = [(OSAParsedOsLogPart *)v53 initWithArgument:v36 argSpecifier:@"%llx" isSafe:1];
            [v5 addObject:v37];
          }

          else
          {
            v29 = v28;
            if ([v28 hasPrefix:@"hhu"])
            {
              v12[2](v12, [@"hhu" length]);
              if (*v65 > 0xFu || v65[1] != 4)
              {
                goto LABEL_75;
              }

              v54 = v65[1];
              __memcpy_chk();
              v55 = [OSAParsedOsLogPart alloc];
              v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 0];
              v37 = [(OSAParsedOsLogPart *)v55 initWithArgument:v36 argSpecifier:@"%hhu" isSafe:1];
              [v5 addObject:v37];
            }

            else if ([v28 hasPrefix:@"hhd"])
            {
              v12[2](v12, [@"hhd" length]);
              if (*v65 > 0xFu || v65[1] != 4)
              {
                goto LABEL_75;
              }

              v56 = v65[1];
              __memcpy_chk();
              v57 = [OSAParsedOsLogPart alloc];
              v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhd", 0];
              v37 = [(OSAParsedOsLogPart *)v57 initWithArgument:v36 argSpecifier:@"%hhd" isSafe:1];
              [v5 addObject:v37];
            }

            else
            {
              if ([v28 hasPrefix:@"p"])
              {
                v12[2](v12, [@"p" length]);
                if (*v65 > 0xFu || v65[1] != 8)
                {
                  goto LABEL_75;
                }
              }

              else
              {
                if (![v28 hasPrefix:@"@"])
                {
                  v60 = [[OSAParsedOsLogPart alloc] initWithLiteral:@"%" isSafe:self->_formatStringIsSafe];
                  [v5 addObject:v60];

LABEL_75:
                  break;
                }

                v12[2](v12, [@"p" length]);
                if ((*v65 & 0xF0) != 0x40 || v65[1] != 8)
                {
                  goto LABEL_75;
                }
              }

              v58 = v65[1];
              __memcpy_chk();
              v59 = [OSAParsedOsLogPart alloc];
              v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", 0];
              v37 = [(OSAParsedOsLogPart *)v59 initWithArgument:v36 argSpecifier:@"%p" isSafe:1];
              [v5 addObject:v37];
            }
          }
        }

        --v64;
        v65 += v63 + 2;
        ++v17;
      }
    }

    if ([v68[5] length])
    {
      v61 = [OSAParsedOsLogPart alloc];
      v62 = [(OSAParsedOsLogPart *)v61 initWithLiteral:v68[5] isSafe:self->_formatStringIsSafe];
      [v5 addObject:v62];
    }

    v10 = [v5 copy];
  }

  else
  {
    v10 = v5;
  }

  _Block_object_dispose(&v67, 8);

  return v10;
}

uint64_t __28__OSAOsLogPackParser_parse___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 32) + 8) + 40) substringFromIndex:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (id)filterOutSensitiveParts:(id)parts withFormats:(id)formats
{
  v34 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  formatsCopy = formats;
  v8 = objc_opt_new();
  if (self->_formatStringIsSafe)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = partsCopy;
    v9 = partsCopy;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = *v30;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        isSafe = [v14 isSafe];
        v16 = isSafe;
        if (formatsCopy)
        {
          argSpecifier = [v14 argSpecifier];

          if (argSpecifier)
          {
            if (v16)
            {
              argSpecifier2 = [v14 argSpecifier];
              v19 = [formatsCopy containsObject:argSpecifier2];

              if (v19)
              {
LABEL_13:
                [v8 addObject:v14];
                continue;
              }
            }
          }

          else if (v16)
          {
            goto LABEL_13;
          }
        }

        else if (isSafe)
        {
          goto LABEL_13;
        }

        v20 = [OSAParsedOsLogPart alloc];
        argSpecifier3 = [v14 argSpecifier];
        argSpecifier4 = [v14 argSpecifier];
        v23 = [(OSAParsedOsLogPart *)v20 initWithArgument:argSpecifier3 argSpecifier:argSpecifier4 isSafe:1];
        [v8 addObject:v23];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v11)
      {
LABEL_18:

        v24 = [v8 copy];
        partsCopy = v28;
        goto LABEL_20;
      }
    }
  }

  v25 = [[OSAParsedOsLogPart alloc] initWithLiteral:@"%s" isSafe:1];
  [v8 addObject:v25];

  v24 = v8;
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)compose:(id)compose
{
  v21 = *MEMORY[0x1E69E9840];
  composeCopy = compose;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = composeCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        stringValue = [v10 stringValue];

        if (stringValue)
        {
          stringValue2 = [v10 stringValue];
          [v4 appendString:stringValue2];
        }

        else
        {
          [v4 appendString:@"<null>"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)extractArguments:(id)arguments
{
  v21 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = argumentsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isArgument])
        {
          stringValue = [v10 stringValue];

          if (stringValue)
          {
            stringValue2 = [v10 stringValue];
            [v4 addObject:stringValue2];
          }

          else
          {
            [v4 addObject:@"<null>"];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end