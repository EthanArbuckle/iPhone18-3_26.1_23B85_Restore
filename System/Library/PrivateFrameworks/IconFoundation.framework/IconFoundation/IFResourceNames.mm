@interface IFResourceNames
- (IFResourceNames)initWithRootNames:(id)names variants:(id)variants;
- (id)extrapolateFullNamesForIOS;
- (id)extrapolateFullNamesForMacOS;
@end

@implementation IFResourceNames

- (IFResourceNames)initWithRootNames:(id)names variants:(id)variants
{
  namesCopy = names;
  variantsCopy = variants;
  v15.receiver = self;
  v15.super_class = IFResourceNames;
  v8 = [(IFResourceNames *)&v15 init];
  v9 = v8;
  if (namesCopy && v8)
  {
    v10 = [namesCopy copy];
    rootNames = v9->_rootNames;
    v9->_rootNames = v10;

    v12 = [variantsCopy copy];
    variants = v9->_variants;
    v9->_variants = v12;
  }

  return v9;
}

- (id)extrapolateFullNamesForIOS
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  selfCopy = self;
  obj = [(IFResourceNames *)self rootNames];
  v4 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0x1E696A000uLL;
    v7 = *v59;
    v36 = *v59;
    v37 = v3;
    do
    {
      v8 = 0;
      v39 = v5;
      do
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v58 + 1) + 8 * v8);
        pathExtension = [v9 pathExtension];
        v11 = [*(v6 + 2824) characterSetWithCharactersInString:@"0123456789"];
        invertedSet = [v11 invertedSet];

        if ([(__CFString *)pathExtension length]&& [(__CFString *)pathExtension rangeOfCharacterFromSet:invertedSet]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          stringByDeletingPathExtension = [v9 stringByDeletingPathExtension];
        }

        else
        {

          stringByDeletingPathExtension = v9;
          pathExtension = @"png";
        }

        if (stringByDeletingPathExtension)
        {
          v14 = pathExtension == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = objc_opt_new();
          [v15 addObject:stringByDeletingPathExtension];
          if (([stringByDeletingPathExtension hasSuffix:@"2x"] & 1) == 0)
          {
            v16 = [stringByDeletingPathExtension stringByAppendingString:@"@2x"];
            [v15 addObject:v16];
          }

          v41 = invertedSet;
          v42 = pathExtension;
          v43 = v8;
          if (([stringByDeletingPathExtension hasSuffix:@"3x"] & 1) == 0)
          {
            v17 = [stringByDeletingPathExtension stringByAppendingString:@"@3x"];
            [v15 addObject:v17];
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          variants = [(IFResourceNames *)selfCopy variants];
          v18 = [variants countByEnumeratingWithState:&v54 objects:v64 count:16];
          v44 = stringByDeletingPathExtension;
          if (v18)
          {
            v19 = v18;
            v20 = *v55;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v55 != v20)
                {
                  objc_enumerationMutation(variants);
                }

                v22 = *(*(&v54 + 1) + 8 * i);
                if (([stringByDeletingPathExtension hasSuffix:v22] & 1) == 0)
                {
                  v52 = 0u;
                  v53 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v23 = [v15 copy];
                  v24 = [v23 countByEnumeratingWithState:&v50 objects:v63 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v51;
                    do
                    {
                      for (j = 0; j != v25; ++j)
                      {
                        if (*v51 != v26)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v28 = [*(*(&v50 + 1) + 8 * j) stringByAppendingString:v22];
                        [v15 addObject:v28];
                      }

                      v25 = [v23 countByEnumeratingWithState:&v50 objects:v63 count:16];
                    }

                    while (v25);
                  }

                  stringByDeletingPathExtension = v44;
                }
              }

              v19 = [variants countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v19);
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v29 = v15;
          v30 = [v29 countByEnumeratingWithState:&v46 objects:v62 count:16];
          v3 = v37;
          v5 = v39;
          pathExtension = v42;
          v8 = v43;
          invertedSet = v41;
          if (v30)
          {
            v31 = v30;
            v32 = *v47;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v47 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = [*(*(&v46 + 1) + 8 * k) stringByAppendingPathExtension:v42];
                if (v34)
                {
                  [v37 addObject:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v46 objects:v62 count:16];
            }

            while (v31);
          }

          v6 = 0x1E696A000;
          v7 = v36;
          stringByDeletingPathExtension = v44;
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)extrapolateFullNamesForMacOS
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  rootNames = [(IFResourceNames *)self rootNames];
  v5 = [rootNames countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(rootNames);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        pathExtension = [v9 pathExtension];
        if ([(__CFString *)pathExtension length])
        {
          stringByDeletingPathExtension = [v9 stringByDeletingPathExtension];
        }

        else
        {

          stringByDeletingPathExtension = v9;
          pathExtension = @"icns";
        }

        if (pathExtension)
        {
          v12 = stringByDeletingPathExtension == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
          if (v13)
          {
            [v3 addObject:v13];
          }
        }
      }

      v6 = [rootNames countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

@end