@interface NSObject
@end

@implementation NSObject

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke(uint64_t a1, objc_class *a2, char a3)
{
  [*(a1 + 32) appendFormat:@"%@ ", a2];
  if ((*(a1 + 40) & 2) != 0)
  {
    if (objc_opt_class() != a2 || (*(a1 + 40) & 4) != 0)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_2;
      v13 = &unk_1E7981A00;
      v7 = v6;
      v14 = v7;
      _MSVEnumerateClassProtocols(a2, &v10);
      if ([v7 count])
      {
        v8 = *(a1 + 32);
        v9 = [v7 componentsJoinedByString:{@", "}];
        [v8 appendFormat:@"<%@> ", v9, v10, v11, v12, v13];
      }
    }

    else
    {
      [*(a1 + 32) appendString:{@"<NSObject, ...> "}];
    }
  }

  if ((a3 & 1) == 0)
  {
    [*(a1 + 32) appendString:@": "];
  }
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_3(uint64_t a1, objc_class *a2)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_4;
  v13 = &unk_1E7981A50;
  v3 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = a2;
  v4 = v3;
  v5 = v11;
  outCount = 0;
  v6 = class_copyIvarList(a2, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; v12(v5, v6[i++], Name, TypeEncoding, &v4[Offset]))
    {
      TypeEncoding = ivar_getTypeEncoding(v6[i]);
      Name = ivar_getName(v6[i]);
      Offset = ivar_getOffset(v6[i]);
    }
  }

  free(v6);
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_5(uint64_t a1, objc_class *a2)
{
  if (objc_opt_class() != a2 || (*(a1 + 57) & 4) != 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_6;
    v13 = &unk_1E7981AA0;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = a2;
    v4 = v11;
    outCount = 0;
    Name = class_getName(a2);
    MetaClass = objc_getMetaClass(Name);
    v7 = class_copyPropertyList(MetaClass, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v7);
    v9 = class_copyPropertyList(a2, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v9);
  }
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_7(uint64_t a1, objc_class *a2)
{
  if (objc_opt_class() != a2 || (*(a1 + 49) & 4) != 0)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_8;
    v28[3] = &unk_1E7981A00;
    v5 = v4;
    v29 = v5;
    _MSVEnumerateClassProtocols(a2, v28);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v21 = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_10;
    v22 = &unk_1E7981B18;
    v26 = *(a1 + 48);
    v23 = *(a1 + 32);
    v6 = v5;
    v24 = v6;
    v25 = *(a1 + 40);
    v27 = a2;
    v7 = v20;
    outCount = 0;
    Name = class_getName(a2);
    MetaClass = objc_getMetaClass(Name);
    v10 = class_copyMethodList(MetaClass, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v10);
    v12 = class_copyMethodList(a2, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v12);

    if ((*(a1 + 51) & 0x10) != 0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_11;
      v16[3] = &unk_1E7981B40;
      v18 = a2;
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = v14;
      v19 = v15;
      [v6 enumerateKeysAndObjectsUsingBlock:v16];
    }
  }
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_9;
  v31 = &unk_1E7981AF0;
  v5 = v4;
  v32 = v5;
  v6 = v3;
  v7 = &v28;
  outCount = 0;
  v8 = protocol_copyMethodDescriptionList(v6, 1, 0, &outCount);
  v9 = v8;
  if (outCount)
  {
    v10 = 0;
    p_types = &v8->types;
    do
    {
      (v30)(v7, *(p_types - 1), *p_types, 1, 1);
      ++v10;
      p_types += 2;
    }

    while (v10 < outCount);
  }

  free(v9);
  v12 = protocol_copyMethodDescriptionList(v6, 1, 1, &outCount);
  v13 = v12;
  if (outCount)
  {
    v14 = 0;
    v15 = &v12->types;
    do
    {
      (v30)(v7, *(v15 - 1), *v15, 0, 1);
      ++v14;
      v15 += 2;
    }

    while (v14 < outCount);
  }

  free(v13);
  v16 = protocol_copyMethodDescriptionList(v6, 0, 0, &outCount);
  v17 = v16;
  if (outCount)
  {
    v18 = 0;
    v19 = &v16->types;
    do
    {
      (v30)(v7, *(v19 - 1), *v19, 1, 0);
      ++v18;
      v19 += 2;
    }

    while (v18 < outCount);
  }

  free(v17);
  v20 = protocol_copyMethodDescriptionList(v6, 0, 1, &outCount);
  v21 = v20;
  if (outCount)
  {
    v22 = 0;
    v23 = &v20->types;
    do
    {
      (v30)(v7, *(v23 - 1), *v23, 1, 0);
      ++v22;
      v23 += 2;
    }

    while (v22 < outCount);
  }

  free(v21);

  v24 = *(a1 + 32);
  v25 = MEMORY[0x1E696AEC0];
  Name = protocol_getName(v6);
  v27 = [v25 stringWithUTF8String:{Name, v28, v29}];
  [v24 setObject:v5 forKeyedSubscript:v27];
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_10(uint64_t a1, Method m, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  Name = method_getName(m);
  v7 = NSStringFromSelector(Name);
  if ((![v7 isEqualToString:@".cxx_destruct"] || (*(a1 + 59) & 4) != 0) && (objc_msgSend(*(a1 + 32), "containsObject:", v7) & 1) == 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [*(a1 + 40) allValues];
    v25 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v9 = *v32;
      v23 = a3;
      v26 = v8;
      v24 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            while (2)
            {
              v16 = 0;
              do
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v27 + 1) + 8 * v16) second];
                v18 = [v17 isEqual:v7];

                if (v18)
                {

                  goto LABEL_23;
                }

                ++v16;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          ++v10;
          v8 = v26;
          v9 = v24;
        }

        while (v10 != v25);
        a3 = v23;
        v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }

    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    v21 = _MSVDescribeMethod(m, a3);
    [v19 appendFormat:@"/* %@ */ %@", v20, v21];

    if ((*(a1 + 59) & 8) != 0)
    {
      [*(a1 + 48) appendFormat:@"// IMP: %p", method_getImplementation(m)];
    }

    [*(a1 + 48) appendString:@"\n"];
  }

LABEL_23:

  v22 = *MEMORY[0x1E69E9840];
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 second];
        v12 = NSSelectorFromString(v11);

        v13 = [v10 first];
        v14 = [v13 BOOLValue];
        v15 = *(a1 + 40);
        if (v14)
        {
          ClassMethod = class_getClassMethod(v15, v12);
        }

        else
        {
          ClassMethod = class_getInstanceMethod(v15, v12);
        }

        v17 = ClassMethod;

        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
        v20 = [v10 first];
        v21 = _MSVDescribeMethod(v17, [v20 BOOLValue]);
        [v19 appendFormat:@"/* %@ <%@> */ %@", v18, v5, v21];

        if ((*(a1 + 51) & 8) != 0)
        {
          [*(a1 + 32) appendFormat:@"// IMP: %p", method_getImplementation(v17)];
        }

        [*(a1 + 32) appendString:@"\n"];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_9(uint64_t a1, SEL aSelector, uint64_t a3, uint64_t a4)
{
  v9 = NSStringFromSelector(aSelector);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v8 = [MSVPair pairWithFirst:v7 second:v9];
  [v6 addObject:v8];
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_6(void *a1, objc_property_t property, int a3)
{
  Name = property_getName(property);
  v7 = property_copyAttributeValue(property, "G");
  v8 = v7;
  if (!v7)
  {
    v7 = Name;
  }

  Uid = sel_getUid(v7);
  free(v8);
  if (Uid)
  {
    v10 = a1[4];
    v11 = NSStringFromSelector(Uid);
    [v10 addObject:v11];
  }

  v12 = property_copyAttributeValue(property, "R");
  if (!v12)
  {
    v13 = property_copyAttributeValue(property, "S");
    if (v13)
    {
      v14 = v13;
      v15 = sel_getUid(v13);
      free(v14);
      if (!v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v40 = [MEMORY[0x1E696AD60] stringWithUTF8String:property_getName(property)];
      v41 = [v40 substringToIndex:1];
      v42 = [v41 uppercaseString];
      [v40 replaceCharactersInRange:0 withString:{1, v42}];

      [v40 insertString:@"set" atIndex:0];
      [v40 appendString:@":"];
      v15 = sel_getUid([v40 UTF8String]);

      if (!v15)
      {
        goto LABEL_10;
      }
    }

    v16 = a1[4];
    v17 = NSStringFromSelector(v15);
    [v16 addObject:v17];

    goto LABEL_10;
  }

  free(v12);
LABEL_10:
  v18 = a1[5];
  v19 = a1[6];
  v20 = [MEMORY[0x1E696AD60] stringWithString:@"@property "];
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = v21;
  if (a3)
  {
    [v21 addObject:@"class"];
  }

  outCount = 0;
  v23 = property_copyAttributeList(property, &outCount);
  v24 = @" ";
  if (!outCount)
  {
    v28 = 0;
    v27 = 0;
    v26 = 0;
    goto LABEL_55;
  }

  v45 = v19;
  v46 = v18;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v47 = 0;
  v44 = v23;
  p_value = &v23->value;
  do
  {
    v30 = *(p_value - 1);
    v31 = *p_value;
    v32 = *v30;
    if (v32 > 0x51)
    {
      if (*v30 <= 0x53u)
      {
        if (v32 == 82)
        {
          if (v30[1])
          {
            goto LABEL_50;
          }

          v33 = v22;
          v34 = @"readonly";
          goto LABEL_39;
        }

        if (v32 == 83 && !v30[1])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"setter=%s", *p_value];
          v36 = LABEL_47:;
          [v22 addObject:v36];
        }
      }

      else if (v32 == 84)
      {
        if (!v30[1])
        {
          v35 = _MSVObjCTypeDescription(*p_value);

          v47 |= *v31 == 64;
          v28 = v35;
        }
      }

      else if (v32 == 86)
      {
        if (!v30[1])
        {
          v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*p_value];

          v27 = v37;
        }
      }

      else if (v32 == 87 && !v30[1])
      {
        v33 = v22;
        v34 = @"weak";
        goto LABEL_39;
      }
    }

    else if (*v30 <= 0x43u)
    {
      if (v32 == 38)
      {
        if (v30[1])
        {
          goto LABEL_50;
        }

        v33 = v22;
        v34 = @"retain";
        goto LABEL_39;
      }

      if (v32 == 67 && !v30[1])
      {
        v33 = v22;
        v34 = @"copy";
        goto LABEL_39;
      }
    }

    else if (v32 == 68)
    {
      if (!v30[1])
      {
        v26 = 1;
      }
    }

    else
    {
      if (v32 == 71)
      {
        if (v30[1])
        {
          goto LABEL_50;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"getter=%s", *p_value];
        goto LABEL_47;
      }

      if (v32 == 78 && !v30[1])
      {
        v33 = v22;
        v34 = @"nonatomic";
LABEL_39:
        [v33 addObject:v34];
      }
    }

LABEL_50:
    ++v25;
    p_value += 2;
  }

  while (v25 < outCount);
  v24 = @" ";
  if (v47)
  {
    v24 = &stru_1F214F018;
  }

  v19 = v45;
  v18 = v46;
  v23 = v44;
LABEL_55:
  free(v23);
  if ([v22 count])
  {
    [v22 sortUsingComparator:&__block_literal_global_391];
    v38 = [v22 componentsJoinedByString:{@", "}];
    [v20 appendFormat:@"(%@) ", v38];
  }

  [v20 appendFormat:@"%@%@%s;", v28, v24, property_getName(property)];
  if (v27)
  {
    [v20 appendFormat:@"  // @synthesize %s=%@;", property_getName(property), v27];
  }

  else if (v26)
  {
    [v20 appendFormat:@"  // @dynamic %s;", property_getName(property), v43];
  }

  v39 = v20;

  [v18 appendFormat:@"/* %@ */ %@\n", v19, v39];
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned int *a5)
{
  v10 = _MSVObjCTypeDescription(a4);
  v9 = _MSVDebugIvarValue(a5, a4, 0);
  [*(a1 + 32) appendFormat:@"\t/* %@ */ %s: (%@) = %@;\n", *(a1 + 40), a3, v10, v9];
}

void __56__NSObject_MSVDebugUtilities____msv_inspectWithOptions___block_invoke_2(uint64_t a1, Protocol *p)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", protocol_getName(p)];
  [v2 addObject:v3];
}

@end