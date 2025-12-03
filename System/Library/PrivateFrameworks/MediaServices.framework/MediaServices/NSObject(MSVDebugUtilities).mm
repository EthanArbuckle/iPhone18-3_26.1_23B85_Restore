@interface NSObject(MSVDebugUtilities)
- (id)__msv_inspectWithOptions:()MSVDebugUtilities;
@end

@implementation NSObject(MSVDebugUtilities)

- (id)__msv_inspectWithOptions:()MSVDebugUtilities
{
  if (!MSVProcessIsDebugging())
  {
    v11 = 0;
    goto LABEL_11;
  }

  string = [MEMORY[0x1E696AD60] string];
  v6 = objc_opt_class();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke;
  v26[3] = &unk_1E7981A28;
  v7 = string;
  v27 = v7;
  v28 = a3;
  _MSVEnumerateClassHierarchy(v6, 1, v26);
  if ((a3 & 0x100) != 0)
  {
    [v7 appendString:@"{\n"];
    v12 = objc_opt_class();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_3;
    v24[3] = &unk_1E7981A78;
    v24[4] = self;
    v13 = v7;
    v25 = v13;
    _MSVEnumerateClassHierarchy(v12, 0, v24);
    [v13 appendString:@"}\n"];

    if ((a3 & 0x10000) != 0)
    {
LABEL_4:
      [v7 appendString:@"\n# Properties\n"];
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = objc_opt_class();
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_5;
      v20[3] = &unk_1E7981AC8;
      v23 = a3;
      v20[4] = self;
      v10 = v8;
      v21 = v10;
      v22 = v7;
      _MSVEnumerateClassHierarchy(v9, 0, v20);

      if ((a3 & 0x1000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    [v7 appendString:@"\n"];
    if ((a3 & 0x10000) != 0)
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
  if ((a3 & 0x1000000) != 0)
  {
LABEL_9:
    [v7 appendString:@"\n# Methods\n"];
    v14 = objc_opt_class();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_7;
    v16[3] = &unk_1E7981B68;
    v19 = a3;
    v17 = v10;
    v18 = v7;
    _MSVEnumerateClassHierarchy(v14, 0, v16);
  }

LABEL_10:
  v11 = v7;

LABEL_11:

  return v11;
}

@end