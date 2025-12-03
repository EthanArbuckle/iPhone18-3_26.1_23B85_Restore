@interface PathEntry
+ (id)bundlePathsWithinEntries:(id)entries withExtension:(id)extension andNames:(id)names;
+ (id)entryWithPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPathEntry:(id)entry;
- (PathEntry)initWithPath:(id)path recursive:(BOOL)recursive;
- (id)description;
@end

@implementation PathEntry

- (PathEntry)initWithPath:(id)path recursive:(BOOL)recursive
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = PathEntry;
  v8 = [(PathEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    v9->_recursive = recursive;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  path = [(PathEntry *)self path];
  recursive = [(PathEntry *)self recursive];
  v7 = @"NO";
  if (recursive)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"%@ <path: %@, recursive: %@>", v4, path, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PathEntry *)self isEqualToPathEntry:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToPathEntry:(id)entry
{
  entryCopy = entry;
  if (self == entryCopy)
  {
    goto LABEL_4;
  }

  path = [(PathEntry *)self path];
  path2 = [(PathEntry *)entryCopy path];
  if (![path isEqualToString:path2])
  {

    goto LABEL_6;
  }

  recursive = [(PathEntry *)self recursive];
  recursive2 = [(PathEntry *)entryCopy recursive];

  if (recursive != recursive2)
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

+ (id)entryWithPath:(id)path
{
  pathCopy = path;
  v4 = [[PathEntry alloc] initWithPath:pathCopy];

  return v4;
}

+ (id)bundlePathsWithinEntries:(id)entries withExtension:(id)extension andNames:(id)names
{
  entriesCopy = entries;
  extensionCopy = extension;
  namesCopy = names;
  v10 = +[NSMutableArray array];
  if (entriesCopy && [entriesCopy count])
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v62 = entriesCopy;
    obj = entriesCopy;
    v67 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (!v67)
    {
      goto LABEL_71;
    }

    if (extensionCopy)
    {
      v11 = namesCopy == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    v69 = v12;
    v65 = namesCopy;
    v66 = *v84;
    v70 = extensionCopy;
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
        recursive = [v14 recursive];
        v16 = +[NSFileManager defaultManager];
        path = [v14 path];
        if (!recursive)
        {
          v18 = [v16 contentsOfDirectoryAtPath:path error:0];

          if (v69)
          {
            if ([extensionCopy length])
            {
              v33 = +[NSMutableArray array];
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              extensionCopy2 = namesCopy;
              v35 = [extensionCopy2 countByEnumeratingWithState:&v79 objects:v89 count:16];
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
                      objc_enumerationMutation(extensionCopy2);
                    }

                    extensionCopy = [NSString stringWithFormat:@"%@.%@", *(*(&v79 + 1) + 8 * i), extensionCopy];
                    v40 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", extensionCopy];
                    v41 = [v18 filteredArrayUsingPredicate:v40];
                    [v33 addObjectsFromArray:v41];

                    extensionCopy = v70;
                  }

                  v36 = [extensionCopy2 countByEnumeratingWithState:&v79 objects:v89 count:16];
                }

                while (v36);
                goto LABEL_53;
              }

              goto LABEL_54;
            }
          }

          else if (!namesCopy)
          {
            if (extensionCopy && [extensionCopy length])
            {
              extensionCopy2 = [NSString stringWithFormat:@".%@", extensionCopy];
              v58 = [NSPredicate predicateWithFormat:@"SELF ENDSWITH %@", extensionCopy2];
              v33 = [v18 filteredArrayUsingPredicate:v58];
            }

            else
            {
              extensionCopy2 = [NSPredicate predicateWithFormat:@"pathExtension.length > 0"];
              v33 = [v18 filteredArrayUsingPredicate:extensionCopy2];
            }

            goto LABEL_54;
          }

          v33 = +[NSMutableArray array];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          extensionCopy2 = namesCopy;
          v42 = [extensionCopy2 countByEnumeratingWithState:&v75 objects:v88 count:16];
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
                  objc_enumerationMutation(extensionCopy2);
                }

                v46 = [NSString stringWithFormat:@"%@.", *(*(&v75 + 1) + 8 * j)];
                v47 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", v46];
                v48 = [v18 filteredArrayUsingPredicate:v47];
                [v33 addObjectsFromArray:v48];
              }

              v43 = [extensionCopy2 countByEnumeratingWithState:&v75 objects:v88 count:16];
            }

            while (v43);
            extensionCopy = v70;
LABEL_53:
            v10 = v64;
            namesCopy = v65;
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
                  path2 = [v14 path];
                  v57 = [path2 stringByAppendingPathComponent:v55];
                  [v49 addObject:v57];
                }

                v52 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
              }

              while (v52);
            }

            v10 = v64;
            [v64 addObjectsFromArray:v49];

            extensionCopy = v70;
            namesCopy = v65;
          }

          goto LABEL_64;
        }

        v18 = [v16 enumeratorAtPath:path];

        nextObject = [v18 nextObject];
        if (nextObject)
        {
          v20 = nextObject;
          while (!v69)
          {
            if (namesCopy)
            {
              goto LABEL_23;
            }

            if (extensionCopy && [extensionCopy length])
            {
              pathExtension = [v20 pathExtension];
              v29 = [pathExtension isEqualToString:extensionCopy];

              if ((v29 & 1) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_30;
            }

            pathExtension2 = [v20 pathExtension];
            v31 = [pathExtension2 length];

            if (v31)
            {
              goto LABEL_30;
            }

LABEL_32:
            nextObject2 = [v18 nextObject];

            v20 = nextObject2;
            if (!nextObject2)
            {
              goto LABEL_64;
            }
          }

          if ([extensionCopy length])
          {
            lastPathComponent = [v20 lastPathComponent];
            stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
            if ([namesCopy containsObject:stringByDeletingPathExtension])
            {
              pathExtension3 = [v20 pathExtension];
              v24 = [pathExtension3 isEqualToString:extensionCopy];

              if ((v24 & 1) == 0)
              {
                goto LABEL_32;
              }

LABEL_30:
              lastPathComponent = [v14 path];
              stringByDeletingPathExtension = [lastPathComponent stringByAppendingPathComponent:v20];
              [v10 addObject:stringByDeletingPathExtension];
            }

            goto LABEL_32;
          }

LABEL_23:
          lastPathComponent2 = [v20 lastPathComponent];
          stringByDeletingPathExtension2 = [lastPathComponent2 stringByDeletingPathExtension];
          v27 = [namesCopy containsObject:stringByDeletingPathExtension2];

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

        entriesCopy = v62;
        break;
      }
    }
  }

  v60 = [NSArray arrayWithArray:v10];

  return v60;
}

@end