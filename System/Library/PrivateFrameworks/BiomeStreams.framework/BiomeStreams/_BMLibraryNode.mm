@interface _BMLibraryNode
+ (id)allStreamIdentifiers;
+ (id)allStreams;
+ (id)allValidEventClasses;
+ (id)allValidKeyPaths;
+ (id)streamWithIdentifier:(id)identifier error:(id *)error;
+ (id)streams;
@end

@implementation _BMLibraryNode

+ (id)streams
{
  v28 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  streamNames = [self streamNames];
  v5 = [streamNames countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(streamNames);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [self streamWithName:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            identifier = [self identifier];
            *buf = 138412802;
            v22 = v9;
            v23 = 2112;
            v24 = identifier;
            v25 = 2112;
            v26 = 0;
            _os_log_fault_impl(&dword_1848EE000, v11, OS_LOG_TYPE_FAULT, "Failure to fetch stream for known name %@ in library node %@, %@", buf, 0x20u);
          }
        }
      }

      v6 = [streamNames countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];
  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)allStreams
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  v6 = v5;
  while ([v5 count])
  {
    lastObject = [v6 lastObject];
    [v6 removeLastObject];
    sublibraries = [lastObject sublibraries];
    [v6 addObjectsFromArray:sublibraries];

    streams = [lastObject streams];
    [v4 addObjectsFromArray:streams];

    v5 = v6;
  }

  v10 = [v4 copy];

  objc_autoreleasePoolPop(v3);

  return v10;
}

+ (id)allStreamIdentifiers
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  selfCopy = self;
  identifier = [selfCopy identifier];
  context = v3;
  if ([identifier isEqualToString:@"BMLibrary"])
  {
    v7 = &stru_1EF2B2408;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier2 = [selfCopy identifier];
    v7 = [v8 initWithFormat:@"%@.", identifier2];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  streamNames = [selfCopy streamNames];
  v11 = [streamNames countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(streamNames);
        }

        v15 = [(__CFString *)v7 stringByAppendingString:*(*(&v41 + 1) + 8 * i)];
        [v4 addObject:v15];
      }

      v12 = [streamNames countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = selfCopy;
  obj = [selfCopy sublibraries];
  v16 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * j);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        allStreamIdentifiers = [v20 allStreamIdentifiers];
        v22 = [allStreamIdentifiers countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(allStreamIdentifiers);
              }

              v26 = [(__CFString *)v7 stringByAppendingString:*(*(&v33 + 1) + 8 * k)];
              [v4 addObject:v26];
            }

            v23 = [allStreamIdentifiers countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v23);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v17);
  }

  v27 = [v4 copy];
  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)allValidKeyPaths
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  genericValidKeyPaths = [MEMORY[0x1E698E898] genericValidKeyPaths];
  [v4 unionSet:genericValidKeyPaths];

  v6 = +[BMEventBase validKeyPaths];
  [v4 addObjectsFromArray:v6];

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  v8 = v7;
  while ([v7 count])
  {
    firstObject = [v8 firstObject];
    [v8 removeObjectAtIndex:0];
    validKeyPaths = [firstObject validKeyPaths];
    allObjects = [validKeyPaths allObjects];
    [v4 addObjectsFromArray:allObjects];

    sublibraries = [firstObject sublibraries];
    [v8 addObjectsFromArray:sublibraries];

    v7 = v8;
  }

  v13 = [v4 copy];

  objc_autoreleasePoolPop(v3);

  return v13;
}

+ (id)allValidEventClasses
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  allStreams = [objc_opt_class() allStreams];
  v5 = [v3 initWithCapacity:{objc_msgSend(allStreams, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allStreams2 = [objc_opt_class() allStreams];
  v7 = [allStreams2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allStreams2);
        }

        configuration = [*(*(&v15 + 1) + 8 * i) configuration];
        [v5 addObject:{objc_msgSend(configuration, "eventClass")}];
      }

      v8 = [allStreams2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)streamWithIdentifier:(id)identifier error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45___BMLibraryNode_streamWithIdentifier_error___block_invoke;
  aBlock[3] = &unk_1E6E52958;
  aBlock[4] = &v57;
  aBlock[5] = error;
  v56 = _Block_copy(aBlock);
  context = objc_autoreleasePoolPush();
  if (identifierCopy)
  {
    v41 = [identifierCopy componentsSeparatedByString:@"."];
    if ([v41 count] == 1)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [self streamNames];
      v5 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
      if (v5)
      {
        v6 = *v52;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v52 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v51 + 1) + 8 * i);
            lowercaseString = [identifierCopy lowercaseString];
            lowercaseString2 = [v8 lowercaseString];
            v11 = [lowercaseString isEqualToString:lowercaseString2];

            if (v11)
            {
              v18 = [self streamWithName:v8];
              goto LABEL_29;
            }
          }

          v5 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v66 = *MEMORY[0x1E696A578];
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      identifier = [self identifier];
      v15 = [v13 initWithFormat:@"Stream %@ could not be found, it is not a member of %@", identifierCopy, identifier];
      v67 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v17 = [v12 initWithDomain:@"BMLibraryErrorDomain" code:1 userInfo:v16];

      v18 = 0;
      obja = v58[5];
      v58[5] = v17;
    }

    else
    {
      obj = [v41 firstObject];
      v42 = [v41 subarrayWithRange:{1, objc_msgSend(v41, "count") - 1}];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      sublibraries = [self sublibraries];
      v20 = [sublibraries countByEnumeratingWithState:&v47 objects:v65 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = *v48;
LABEL_15:
        v23 = 0;
        while (1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(sublibraries);
          }

          v24 = *(*(&v47 + 1) + 8 * v23);
          lowercaseString3 = [obj lowercaseString];
          identifier2 = [v24 identifier];
          lowercaseString4 = [identifier2 lowercaseString];
          v28 = [lowercaseString3 isEqualToString:lowercaseString4];

          if (v28)
          {
            v29 = [v42 componentsJoinedByString:@"."];
            v46 = v21;
            v18 = [v24 streamWithIdentifier:v29 error:&v46];
            v30 = v46;

            v21 = v30;
            if (v18)
            {
              break;
            }
          }

          if (v20 == ++v23)
          {
            v20 = [sublibraries countByEnumeratingWithState:&v47 objects:v65 count:16];
            if (v20)
            {
              goto LABEL_15;
            }

            if (v21)
            {
              v31 = v21;
              v30 = v31;
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }
      }

      else
      {

LABEL_26:
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E696A578];
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        identifier3 = [self identifier];
        v35 = [v33 initWithFormat:@"Library %@ could not be found, it is not a member of %@", obj, identifier3];
        v64 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v31 = [v32 initWithDomain:@"BMLibraryErrorDomain" code:1 userInfo:v36];

        v30 = 0;
LABEL_27:
        v18 = 0;
        sublibraries = v58[5];
        v58[5] = v31;
      }

LABEL_29:
    }
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(context);
  bm_invoke();

  _Block_object_dispose(&v57, 8);
  v37 = *MEMORY[0x1E69E9840];

  return v18;
}

@end