@interface PathEntry
+ (id)bundlePathsWithinEntries:(id)a3 withExtension:(id)a4 andNames:(id)a5;
+ (id)entryWithPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPathEntry:(id)a3;
- (PathEntry)initWithPath:(id)a3 recursive:(BOOL)a4;
- (id)description;
@end

@implementation PathEntry

- (PathEntry)initWithPath:(id)a3 recursive:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PathEntry;
  v8 = [(PathEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, a3);
    v9->_recursive = a4;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PathEntry *)self path];
  v6 = [(PathEntry *)self recursive];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"%@ <path: %@, recursive: %@>", v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PathEntry *)self isEqualToPathEntry:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToPathEntry:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_4;
  }

  v5 = [(PathEntry *)self path];
  v6 = [(PathEntry *)v4 path];
  if (![v5 isEqualToString:v6])
  {

    goto LABEL_6;
  }

  v7 = [(PathEntry *)self recursive];
  v8 = [(PathEntry *)v4 recursive];

  if (v7 != v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

LABEL_4:
  v9 = 1;
LABEL_7:

  return v9;
}

+ (id)entryWithPath:(id)a3
{
  v3 = a3;
  v4 = [[PathEntry alloc] initWithPath:v3];

  return v4;
}

+ (id)bundlePathsWithinEntries:(id)a3 withExtension:(id)a4 andNames:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableArray array];
  if (v7 && [v7 count])
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v62 = v7;
    obj = v7;
    v67 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (!v67)
    {
      goto LABEL_71;
    }

    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    v69 = v12;
    v65 = v9;
    v66 = *v84;
    v70 = v8;
    v64 = v10;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v84 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v13;
        v14 = *(*(&v83 + 1) + 8 * v13);
        v15 = [v14 recursive];
        v16 = +[NSFileManager defaultManager];
        v17 = [v14 path];
        if (!v15)
        {
          v18 = [v16 contentsOfDirectoryAtPath:v17 error:0];

          if (v69)
          {
            if ([v8 length])
            {
              v33 = +[NSMutableArray array];
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              v34 = v9;
              v35 = [v34 countByEnumeratingWithState:&v79 objects:v89 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v80;
                do
                {
                  for (i = 0; i != v36; i = i + 1)
                  {
                    if (*v80 != v37)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = [NSString stringWithFormat:@"%@.%@", *(*(&v79 + 1) + 8 * i), v8];
                    v40 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", v39];
                    v41 = [v18 filteredArrayUsingPredicate:v40];
                    [v33 addObjectsFromArray:v41];

                    v8 = v70;
                  }

                  v36 = [v34 countByEnumeratingWithState:&v79 objects:v89 count:16];
                }

                while (v36);
                goto LABEL_53;
              }

              goto LABEL_54;
            }
          }

          else if (!v9)
          {
            if (v8 && [v8 length])
            {
              v34 = [NSString stringWithFormat:@".%@", v8];
              v58 = [NSPredicate predicateWithFormat:@"SELF ENDSWITH %@", v34];
              v33 = [v18 filteredArrayUsingPredicate:v58];
            }

            else
            {
              v34 = [NSPredicate predicateWithFormat:@"pathExtension.length > 0"];
              v33 = [v18 filteredArrayUsingPredicate:v34];
            }

            goto LABEL_54;
          }

          v33 = +[NSMutableArray array];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v34 = v9;
          v42 = [v34 countByEnumeratingWithState:&v75 objects:v88 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v76;
            do
            {
              for (j = 0; j != v43; j = j + 1)
              {
                if (*v76 != v44)
                {
                  objc_enumerationMutation(v34);
                }

                v46 = [NSString stringWithFormat:@"%@.", *(*(&v75 + 1) + 8 * j)];
                v47 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", v46];
                v48 = [v18 filteredArrayUsingPredicate:v47];
                [v33 addObjectsFromArray:v48];
              }

              v43 = [v34 countByEnumeratingWithState:&v75 objects:v88 count:16];
            }

            while (v43);
            v8 = v70;
LABEL_53:
            v10 = v64;
            v9 = v65;
          }

LABEL_54:

          if ([v33 count])
          {
            v49 = objc_alloc_init(NSMutableArray);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v50 = v33;
            v51 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v72;
              do
              {
                for (k = 0; k != v52; k = k + 1)
                {
                  if (*v72 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v55 = *(*(&v71 + 1) + 8 * k);
                  v56 = [v14 path];
                  v57 = [v56 stringByAppendingPathComponent:v55];
                  [v49 addObject:v57];
                }

                v52 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
              }

              while (v52);
            }

            v10 = v64;
            [v64 addObjectsFromArray:v49];

            v8 = v70;
            v9 = v65;
          }

          goto LABEL_64;
        }

        v18 = [v16 enumeratorAtPath:v17];

        v19 = [v18 nextObject];
        if (v19)
        {
          v20 = v19;
          while (!v69)
          {
            if (v9)
            {
              goto LABEL_23;
            }

            if (v8 && [v8 length])
            {
              v28 = [v20 pathExtension];
              v29 = [v28 isEqualToString:v8];

              if ((v29 & 1) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_30;
            }

            v30 = [v20 pathExtension];
            v31 = [v30 length];

            if (v31)
            {
              goto LABEL_30;
            }

LABEL_32:
            v32 = [v18 nextObject];

            v20 = v32;
            if (!v32)
            {
              goto LABEL_64;
            }
          }

          if ([v8 length])
          {
            v21 = [v20 lastPathComponent];
            v22 = [v21 stringByDeletingPathExtension];
            if ([v9 containsObject:v22])
            {
              v23 = [v20 pathExtension];
              v24 = [v23 isEqualToString:v8];

              if ((v24 & 1) == 0)
              {
                goto LABEL_32;
              }

LABEL_30:
              v21 = [v14 path];
              v22 = [v21 stringByAppendingPathComponent:v20];
              [v10 addObject:v22];
            }

            goto LABEL_32;
          }

LABEL_23:
          v25 = [v20 lastPathComponent];
          v26 = [v25 stringByDeletingPathExtension];
          v27 = [v9 containsObject:v26];

          if ((v27 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }

LABEL_64:

        v13 = v68 + 1;
      }

      while ((v68 + 1) != v67);
      v59 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
      v67 = v59;
      if (!v59)
      {
LABEL_71:

        v7 = v62;
        break;
      }
    }
  }

  v60 = [NSArray arrayWithArray:v10];

  return v60;
}

@end