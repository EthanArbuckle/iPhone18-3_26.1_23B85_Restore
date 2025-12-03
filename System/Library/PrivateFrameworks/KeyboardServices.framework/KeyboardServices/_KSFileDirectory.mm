@interface _KSFileDirectory
- (_KSFileDirectory)initWithCoder:(id)coder;
- (_KSFileDirectory)initWithDirectory:(id)directory captureContents:(BOOL)contents storeRoot:(BOOL)root;
- (_KSFileDirectory)initWithName:(id)name;
- (id)description;
- (id)findEntryWithComparison:(id)comparison recursively:(BOOL)recursively;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addEntry:(id)entry;
- (void)consistencyCheck;
- (void)encodeWithCoder:(id)coder;
- (void)performOnEverything:(id)everything;
- (void)restoreToPath:(id)path;
@end

@implementation _KSFileDirectory

- (_KSFileDirectory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _KSFileDirectory;
  v5 = [(_KSFileEntry *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contents"];
    v12 = [v11 mutableCopy];
    contents = v5->_contents;
    v5->_contents = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _KSFileDirectory;
  coderCopy = coder;
  [(_KSFileEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contents forKey:{@"contents", v5.receiver, v5.super_class}];
}

- (_KSFileDirectory)initWithName:(id)name
{
  v7.receiver = self;
  v7.super_class = _KSFileDirectory;
  v3 = [(_KSFileEntry *)&v7 initWithName:name];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contents = v3->_contents;
    v3->_contents = dictionary;
  }

  return v3;
}

- (_KSFileDirectory)initWithDirectory:(id)directory captureContents:(BOOL)contents storeRoot:(BOOL)root
{
  rootCopy = root;
  contentsCopy = contents;
  directoryCopy = directory;
  v9 = directoryCopy;
  if (rootCopy)
  {
    lastPathComponent = [directoryCopy lastPathComponent];
  }

  else
  {
    lastPathComponent = &stru_286796E30;
  }

  v24.receiver = self;
  v24.super_class = _KSFileDirectory;
  v11 = [(_KSFileEntry *)&v24 initWithName:lastPathComponent];
  if (rootCopy)
  {
  }

  if (v11)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contents = v11->_contents;
    v11->_contents = dictionary;

    [(_KSFileEntry *)v11 loadAttributesFromURL:v9];
    if (contentsCopy)
    {
      v14 = opendir([v9 fileSystemRepresentation]);
      if (v14)
      {
        v15 = v14;
        v16 = readdir(v14);
        if (v16)
        {
          v17 = v16;
          while (1)
          {
            if (v17->d_name[0] == 46 && (!v17->d_name[1] || v17->d_name[1] == 46 && !v17->d_name[2]))
            {
              goto LABEL_21;
            }

            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17->d_name];
            v19 = [v9 URLByAppendingPathComponent:v18];

            d_type = v17->d_type;
            if (d_type == 8)
            {
              break;
            }

            if (d_type == 4)
            {
              v21 = [[_KSFileDirectory alloc] initWithDirectory:v19 captureContents:1 storeRoot:1];
LABEL_19:
              v22 = v21;
              [(_KSFileDirectory *)v11 addEntry:v21];
            }

LABEL_21:
            v17 = readdir(v15);
            if (!v17)
            {
              goto LABEL_22;
            }
          }

          v21 = [[_KSFileFile alloc] initWithURL:v19];
          goto LABEL_19;
        }

LABEL_22:
        closedir(v15);
      }
    }
  }

  return v11;
}

- (void)addEntry:(id)entry
{
  contents = self->_contents;
  entryCopy = entry;
  name = [entryCopy name];
  [(NSMutableDictionary *)contents setObject:entryCopy forKey:name];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  allValues = [(NSMutableDictionary *)self->_contents allValues];
  v9 = [allValues countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)performOnEverything:(id)everything
{
  v17 = *MEMORY[0x277D85DE8];
  everythingCopy = everything;
  v15.receiver = self;
  v15.super_class = _KSFileDirectory;
  [(_KSFileEntry *)&v15 performOnEverything:everythingCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v6 = [(_KSFileDirectory *)selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v11 + 1) + 8 * v9++) performOnEverything:{everythingCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(_KSFileDirectory *)selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = _KSFileDirectory;
  v4 = [(_KSFileEntry *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ %@>", v4, self->_contents];;

  return v5;
}

- (void)consistencyCheck
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = _KSFileDirectory;
  [(_KSFileEntry *)&v13 consistencyCheck];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_contents allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7++) consistencyCheck];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)restoreToPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  name = [(_KSFileEntry *)self name];
  if (name && (v6 = name, -[_KSFileEntry name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:&stru_286796E30], v7, v6, !v8))
  {
    name2 = [(_KSFileEntry *)self name];
    v9 = [pathCopy URLByAppendingPathComponent:name2];

    if (([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      mkdir([v9 fileSystemRepresentation], 0x1EDu);
    }
  }

  else
  {
    v9 = pathCopy;
  }

  [(_KSFileEntry *)self saveAttributesToURL:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_contents allValues];
  v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v17 + 1) + 8 * v14++) restoreToPath:v9];
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)findEntryWithComparison:(id)comparison recursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v24 = *MEMORY[0x277D85DE8];
  comparisonCopy = comparison;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v8 = [(_KSFileDirectory *)selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        name = [v12 name];
        v14 = comparisonCopy[2](comparisonCopy, name);

        if (v14)
        {
          v15 = v12;
LABEL_14:
          v16 = v15;
          goto LABEL_15;
        }

        if (recursivelyCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v12 findEntryWithComparison:comparisonCopy recursively:1];
            if (v15)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v9 = [(_KSFileDirectory *)selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end