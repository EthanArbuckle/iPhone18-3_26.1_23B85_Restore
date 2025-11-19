@interface _BMLibraryNode
+ (id)allStreamIdentifiers;
+ (id)allStreams;
+ (id)allValidEventClasses;
+ (id)allValidKeyPaths;
+ (id)streamWithIdentifier:(id)a3 error:(id *)a4;
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
  v4 = [a1 streamNames];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [a1 streamWithName:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v12 = [a1 identifier];
            *buf = 138412802;
            v22 = v9;
            v23 = 2112;
            v24 = v12;
            v25 = 2112;
            v26 = 0;
            _os_log_fault_impl(&dword_1848EE000, v11, OS_LOG_TYPE_FAULT, "Failure to fetch stream for known name %@ in library node %@, %@", buf, 0x20u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
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
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  v6 = v5;
  while ([v5 count])
  {
    v7 = [v6 lastObject];
    [v6 removeLastObject];
    v8 = [v7 sublibraries];
    [v6 addObjectsFromArray:v8];

    v9 = [v7 streams];
    [v4 addObjectsFromArray:v9];

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
  v5 = a1;
  v6 = [v5 identifier];
  context = v3;
  if ([v6 isEqualToString:@"BMLibrary"])
  {
    v7 = &stru_1EF2B2408;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v5 identifier];
    v7 = [v8 initWithFormat:@"%@.", v9];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [v5 streamNames];
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [(__CFString *)v7 stringByAppendingString:*(*(&v41 + 1) + 8 * i)];
        [v4 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = v5;
  obj = [v5 sublibraries];
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
        v21 = [v20 allStreamIdentifiers];
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
                objc_enumerationMutation(v21);
              }

              v26 = [(__CFString *)v7 stringByAppendingString:*(*(&v33 + 1) + 8 * k)];
              [v4 addObject:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
  v5 = [MEMORY[0x1E698E898] genericValidKeyPaths];
  [v4 unionSet:v5];

  v6 = +[BMEventBase validKeyPaths];
  [v4 addObjectsFromArray:v6];

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  v8 = v7;
  while ([v7 count])
  {
    v9 = [v8 firstObject];
    [v8 removeObjectAtIndex:0];
    v10 = [v9 validKeyPaths];
    v11 = [v10 allObjects];
    [v4 addObjectsFromArray:v11];

    v12 = [v9 sublibraries];
    [v8 addObjectsFromArray:v12];

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
  v4 = [objc_opt_class() allStreams];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [objc_opt_class() allStreams];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) configuration];
        [v5 addObject:{objc_msgSend(v11, "eventClass")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)streamWithIdentifier:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v43 = a3;
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
  aBlock[5] = a4;
  v56 = _Block_copy(aBlock);
  context = objc_autoreleasePoolPush();
  if (v43)
  {
    v41 = [v43 componentsSeparatedByString:@"."];
    if ([v41 count] == 1)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [a1 streamNames];
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
            v9 = [v43 lowercaseString];
            v10 = [v8 lowercaseString];
            v11 = [v9 isEqualToString:v10];

            if (v11)
            {
              v18 = [a1 streamWithName:v8];
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
      v14 = [a1 identifier];
      v15 = [v13 initWithFormat:@"Stream %@ could not be found, it is not a member of %@", v43, v14];
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
      v19 = [a1 sublibraries];
      v20 = [v19 countByEnumeratingWithState:&v47 objects:v65 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v47 + 1) + 8 * v23);
          v25 = [obj lowercaseString];
          v26 = [v24 identifier];
          v27 = [v26 lowercaseString];
          v28 = [v25 isEqualToString:v27];

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
            v20 = [v19 countByEnumeratingWithState:&v47 objects:v65 count:16];
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
        v34 = [a1 identifier];
        v35 = [v33 initWithFormat:@"Library %@ could not be found, it is not a member of %@", obj, v34];
        v64 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v31 = [v32 initWithDomain:@"BMLibraryErrorDomain" code:1 userInfo:v36];

        v30 = 0;
LABEL_27:
        v18 = 0;
        v19 = v58[5];
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