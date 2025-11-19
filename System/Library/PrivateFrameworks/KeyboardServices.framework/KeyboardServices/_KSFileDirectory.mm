@interface _KSFileDirectory
- (_KSFileDirectory)initWithCoder:(id)a3;
- (_KSFileDirectory)initWithDirectory:(id)a3 captureContents:(BOOL)a4 storeRoot:(BOOL)a5;
- (_KSFileDirectory)initWithName:(id)a3;
- (id)description;
- (id)findEntryWithComparison:(id)a3 recursively:(BOOL)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addEntry:(id)a3;
- (void)consistencyCheck;
- (void)encodeWithCoder:(id)a3;
- (void)performOnEverything:(id)a3;
- (void)restoreToPath:(id)a3;
@end

@implementation _KSFileDirectory

- (_KSFileDirectory)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _KSFileDirectory;
  v5 = [(_KSFileEntry *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"contents"];
    v12 = [v11 mutableCopy];
    contents = v5->_contents;
    v5->_contents = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _KSFileDirectory;
  v4 = a3;
  [(_KSFileEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contents forKey:{@"contents", v5.receiver, v5.super_class}];
}

- (_KSFileDirectory)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = _KSFileDirectory;
  v3 = [(_KSFileEntry *)&v7 initWithName:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    contents = v3->_contents;
    v3->_contents = v4;
  }

  return v3;
}

- (_KSFileDirectory)initWithDirectory:(id)a3 captureContents:(BOOL)a4 storeRoot:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v5)
  {
    v10 = [v8 lastPathComponent];
  }

  else
  {
    v10 = &stru_286796E30;
  }

  v24.receiver = self;
  v24.super_class = _KSFileDirectory;
  v11 = [(_KSFileEntry *)&v24 initWithName:v10];
  if (v5)
  {
  }

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    contents = v11->_contents;
    v11->_contents = v12;

    [(_KSFileEntry *)v11 loadAttributesFromURL:v9];
    if (v6)
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

- (void)addEntry:(id)a3
{
  contents = self->_contents;
  v4 = a3;
  v5 = [v4 name];
  [(NSMutableDictionary *)contents setObject:v4 forKey:v5];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(NSMutableDictionary *)self->_contents allValues];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)performOnEverything:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _KSFileDirectory;
  [(_KSFileEntry *)&v15 performOnEverything:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self;
  v6 = [(_KSFileDirectory *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) performOnEverything:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(_KSFileDirectory *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
  v3 = [(NSMutableDictionary *)self->_contents allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) consistencyCheck];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)restoreToPath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSFileEntry *)self name];
  if (v5 && (v6 = v5, -[_KSFileEntry name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:&stru_286796E30], v7, v6, !v8))
  {
    v16 = [(_KSFileEntry *)self name];
    v9 = [v4 URLByAppendingPathComponent:v16];

    if (([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      mkdir([v9 fileSystemRepresentation], 0x1EDu);
    }
  }

  else
  {
    v9 = v4;
  }

  [(_KSFileEntry *)self saveAttributesToURL:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(NSMutableDictionary *)self->_contents allValues];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * v14++) restoreToPath:v9];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)findEntryWithComparison:(id)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self;
  v8 = [(_KSFileDirectory *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = v6[2](v6, v13);

        if (v14)
        {
          v15 = v12;
LABEL_14:
          v16 = v15;
          goto LABEL_15;
        }

        if (v4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v12 findEntryWithComparison:v6 recursively:1];
            if (v15)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v9 = [(_KSFileDirectory *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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