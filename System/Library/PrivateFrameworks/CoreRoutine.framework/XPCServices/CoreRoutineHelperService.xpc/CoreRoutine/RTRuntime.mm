@interface RTRuntime
+ (double)footprint;
+ (id)classesFromImages:(id)images;
+ (id)objToDictionary:(id)dictionary filterProperties:(id)properties;
+ (id)objToString:(id)string filterProperties:(id)properties;
+ (id)routineClassStrings;
+ (id)routineClasses;
+ (id)routineSubclassesOfClass:(Class)class;
+ (id)subclassesOfClass:(Class)class images:(id)images includeParentClass:(BOOL)parentClass;
@end

@implementation RTRuntime

+ (id)subclassesOfClass:(Class)class images:(id)images includeParentClass:(BOOL)parentClass
{
  if (parentClass)
  {
    v6 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v7 = sub_100069614;
  }

  else
  {
    v6 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v7 = sub_100069620;
  }

  v6[2] = v7;
  v6[3] = &unk_1000A9150;
  v6[4] = class;
  imagesCopy = images;
  v9 = [NSPredicate predicateWithBlock:v6];
  v10 = [self classesFromImages:imagesCopy];

  v11 = [v10 filteredArrayUsingPredicate:v9];

  return v11;
}

+ (id)classesFromImages:(id)images
{
  imagesCopy = images;
  v4 = objc_opt_new();
  outCount = 0;
  v5 = objc_copyImageNames(&outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v7 = [NSString stringWithUTF8String:v5[i]];
      lastPathComponent = [v7 lastPathComponent];

      if ([imagesCopy containsObject:lastPathComponent])
      {
        v16 = 0;
        v9 = objc_copyClassNamesForImage(v5[i], &v16);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v11 = [NSString stringWithUTF8String:v9[j]];
            v12 = v11;
            if (v11)
            {
              v13 = NSClassFromString(v11);
              if (v13)
              {
                [v4 addObject:v13];
              }
            }
          }
        }

        free(v9);
      }
    }
  }

  free(v5);
  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)objToString:(id)string filterProperties:(id)properties
{
  stringCopy = string;
  propertiesCopy = properties;
  v7 = +[NSMutableDictionary dictionary];
  outCount = 0;
  v8 = objc_opt_class();
  v9 = class_copyPropertyList(v8, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v9[i]);
      if (Name)
      {
        v12 = [NSString stringWithUTF8String:Name];
        v13 = [stringCopy valueForKey:v12];
        [v7 setObject:v13 forKeyedSubscript:v12];
      }
    }
  }

  free(v9);
  v14 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [v7 allKeys];
  v16 = [allKeys sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        if (([propertiesCopy containsObject:v21] & 1) == 0)
        {
          [v14 addObject:v21];
          v22 = [v7 objectForKeyedSubscript:v21];
          [v14 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  v23 = [v14 componentsJoinedByString:{@", "}];

  return v23;
}

+ (id)objToDictionary:(id)dictionary filterProperties:(id)properties
{
  dictionaryCopy = dictionary;
  propertiesCopy = properties;
  v7 = +[NSMutableDictionary dictionary];
  outCount = 0;
  v8 = objc_opt_class();
  v9 = class_copyPropertyList(v8, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v9[i]);
      if (Name)
      {
        v12 = [NSString stringWithUTF8String:Name];
        v13 = [dictionaryCopy valueForKey:v12];
        [v7 setObject:v13 forKeyedSubscript:v12];
      }
    }
  }

  free(v9);
  v14 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [v7 allKeys];
  v16 = [allKeys sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * j);
        if (([propertiesCopy containsObject:v21] & 1) == 0)
        {
          v22 = [v7 objectForKeyedSubscript:v21];
          [v14 setObject:v22 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  return v14;
}

+ (id)routineClassStrings
{
  outCount = 0;
  v3 = objc_copyImageNames(&outCount);
  v4 = objc_opt_new();
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v6 = [NSString stringWithUTF8String:v3[i]];
      lastPathComponent = [v6 lastPathComponent];

      routineImageNames = [self routineImageNames];
      v9 = [routineImageNames containsObject:lastPathComponent];

      if (v9)
      {
        v15 = 0;
        v10 = objc_copyClassNamesForImage(v3[i], &v15);
        if (v15)
        {
          for (j = 0; j < v15; ++j)
          {
            v12 = [NSString stringWithUTF8String:v10[j]];
            if (v12)
            {
              [v4 addObject:v12];
            }
          }
        }

        free(v10);
      }
    }
  }

  free(v3);
  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)routineSubclassesOfClass:(Class)class
{
  routineImageNames = [self routineImageNames];
  v5 = [RTRuntime subclassesOfClass:class images:routineImageNames includeParentClass:1];

  return v5;
}

+ (id)routineClasses
{
  routineImageNames = [self routineImageNames];
  v3 = [RTRuntime classesFromImages:routineImageNames];

  return v3;
}

+ (double)footprint
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = getpid();
  v3 = proc_pid_rusage(v2, 4, v5);
  result = *(&v6 + 1) * 0.0009765625 * 0.0009765625;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

@end