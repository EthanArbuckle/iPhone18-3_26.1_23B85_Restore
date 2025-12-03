@interface NRTextFormattingUtilities
+ (id)dateFormatter:(id)formatter;
+ (id)nameCounter:(id)counter;
+ (id)prefixLinesWithString:(id)string withText:(id)text;
@end

@implementation NRTextFormattingUtilities

+ (id)prefixLinesWithString:(id)string withText:(id)text
{
  v35 = *MEMORY[0x1E69E9840];
  textCopy = text;
  stringCopy = string;
  v7 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v28 = textCopy;
  v8 = [textCopy componentsSeparatedByString:@"\n"];
  v9 = [stringCopy stringByAppendingString:@" "];

  v10 = [v9 length] >> 3;
  v29 = v9;
  if (([v9 length] & 7) != 0)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [&stru_1F5B7BE00 stringByPaddingToLength:v11 withString:@"\t" startingAtIndex:0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        if ([v19 length])
        {
          if (v17)
          {
            v21 = v29;
          }

          else
          {
            v21 = v12;
          }

          v22 = [v21 stringByAppendingString:v19];
          v23 = [v22 stringByAppendingString:@"\n"];

          [v7 appendString:v23];
          v17 = 0;
        }

        objc_autoreleasePoolPop(v20);
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  if ([v7 length])
  {
    v24 = [v7 substringFromIndex:{objc_msgSend(v7, "length") - 1}];
    if (([v24 isEqualToString:@"\n"] & 1) == 0)
    {
      [v7 appendString:@"\n"];
    }
  }

  else
  {
    [v7 appendString:@"\n"];
  }

  objc_autoreleasePoolPop(context);
  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)dateFormatter:(id)formatter
{
  formatterCopy = formatter;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  if (qword_1ED6F0B50 != -1)
  {
    dispatch_once(&qword_1ED6F0B50, &__block_literal_global_12);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __43__NRTextFormattingUtilities_dateFormatter___block_invoke_2;
  v10 = &unk_1E86DB8F0;
  v12 = &v13;
  v4 = formatterCopy;
  v11 = v4;
  v5 = v8;
  os_unfair_lock_lock_with_options();
  v9(v5);

  os_unfair_lock_unlock(&_MergedGlobals_14);
  v6 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v6;
}

uint64_t __43__NRTextFormattingUtilities_dateFormatter___block_invoke()
{
  _MergedGlobals_14 = 0;
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6F0B48;
  qword_1ED6F0B48 = v0;

  v2 = qword_1ED6F0B48;

  return [v2 setDateFormat:@"MM-dd-yyyy HH:mm:ss.SSS"];
}

uint64_t __43__NRTextFormattingUtilities_dateFormatter___block_invoke_2(uint64_t a1)
{
  v2 = [qword_1ED6F0B48 stringFromDate:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

+ (id)nameCounter:(id)counter
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  counterCopy = counter;
  v4 = [counterCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(counterCopy);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      v9 = [v8 componentsSeparatedByString:@" "];
      v10 = [v9 mutableCopy];

      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
      integerValue = [v11 integerValue];

      if (integerValue < 1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ 1", v8];
      }

      else
      {
        v13 = integerValue + 1;
        lastObject = [v10 lastObject];
        [v10 removeObject:lastObject];

        v15 = [v10 componentsJoinedByString:@" "];

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %ld", v15, v13, v20];
        v8 = v15;
      }

      v17 = [counterCopy containsObject:v16];
      if (!v17)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [counterCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v16 = @"unknown";
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

@end