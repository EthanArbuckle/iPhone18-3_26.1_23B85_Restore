@interface DMFBook
- (BOOL)isEqual:(id)a3;
- (DMFBook)initWithCoder:(id)a3;
- (DMFBook)initWithPersistentID:(id)a3 iTunesStoreID:(id)a4 author:(id)a5 title:(id)a6 version:(id)a7 type:(unint64_t)a8 state:(unint64_t)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFBook

- (DMFBook)initWithPersistentID:(id)a3 iTunesStoreID:(id)a4 author:(id)a5 title:(id)a6 version:(id)a7 type:(unint64_t)a8 state:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v32.receiver = self;
  v32.super_class = DMFBook;
  v20 = [(DMFBook *)&v32 init];
  if (v20)
  {
    v21 = [v15 copy];
    persistentID = v20->_persistentID;
    v20->_persistentID = v21;

    v23 = [v16 copy];
    iTunesStoreID = v20->_iTunesStoreID;
    v20->_iTunesStoreID = v23;

    v25 = [v17 copy];
    author = v20->_author;
    v20->_author = v25;

    v27 = [v18 copy];
    title = v20->_title;
    v20->_title = v27;

    v29 = [v19 copy];
    version = v20->_version;
    v20->_version = v29;

    v20->_type = a8;
    v20->_state = a9;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFBook *)self persistentID];
  v6 = [(DMFBook *)self iTunesStoreID];
  v7 = [(DMFBook *)self author];
  v8 = [(DMFBook *)self title];
  v9 = [(DMFBook *)self version];
  v10 = [v4 initWithPersistentID:v5 iTunesStoreID:v6 author:v7 title:v8 version:v9 type:-[DMFBook type](self state:{"type"), -[DMFBook state](self, "state")}];

  return v10;
}

- (DMFBook)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = DMFBook;
  v5 = [(DMFBook *)&v24 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"author"];
    author = v5->_author;
    v5->_author = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"title"];
    title = v5->_title;
    v5->_title = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"version"];
    version = v5->_version;
    v5->_version = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v21 unsignedIntegerValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v22 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFBook *)self persistentID];
  [v4 encodeObject:v5 forKey:@"persistentID"];

  v6 = [(DMFBook *)self iTunesStoreID];
  [v4 encodeObject:v6 forKey:@"iTunesStoreID"];

  v7 = [(DMFBook *)self author];
  [v4 encodeObject:v7 forKey:@"author"];

  v8 = [(DMFBook *)self title];
  [v4 encodeObject:v8 forKey:@"title"];

  v9 = [(DMFBook *)self version];
  [v4 encodeObject:v9 forKey:@"version"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFBook type](self, "type")}];
  [v4 encodeObject:v10 forKey:@"type"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFBook state](self, "state")}];
  [v4 encodeObject:v11 forKey:@"state"];
}

- (unint64_t)hash
{
  v2 = [(DMFBook *)self iTunesStoreID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v33 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFBook *)self iTunesStoreID];
      v7 = [(DMFBook *)v5 iTunesStoreID];
      v8 = v6;
      v9 = v7;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v33 = 0;
      }

      else
      {
        v11 = [(DMFBook *)self persistentID];
        v12 = [(DMFBook *)v5 persistentID];
        v13 = v11;
        v14 = v12;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          v33 = 0;
        }

        else
        {
          v16 = [(DMFBook *)self author];
          v17 = [(DMFBook *)v5 author];
          v18 = v16;
          v19 = v17;
          if (v18 | v19 && (v20 = [v18 isEqual:v19], v19, v18, !v20))
          {
            v33 = 0;
          }

          else
          {
            v37 = v19;
            v21 = [(DMFBook *)self title];
            v22 = [(DMFBook *)v5 title];
            v23 = v21;
            v24 = v22;
            v38 = v23;
            if (v23 | v24 && (v25 = [v23 isEqual:v24], v24, v38, !v25))
            {
              v33 = 0;
            }

            else
            {
              v36 = v13;
              v26 = [(DMFBook *)self version];
              v27 = [(DMFBook *)v5 version];
              v28 = v26;
              v29 = v27;
              if ((!(v28 | v29) || (v30 = [v28 isEqual:v29], v29, v28, v30)) && (v31 = -[DMFBook type](self, "type"), v31 == -[DMFBook type](v5, "type")))
              {
                v32 = [(DMFBook *)self state];
                v33 = v32 == [(DMFBook *)v5 state];
              }

              else
              {
                v33 = 0;
              }

              v13 = v36;

              v18 = v35;
            }

            v19 = v37;
          }
        }
      }
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

- (id)description
{
  if (description_onceToken != -1)
  {
    [DMFBook description];
  }

  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(DMFBook *)self persistentID];
  [v3 appendFormat:@"\tPersistent ID   : %@\n", v4];

  v5 = [(DMFBook *)self iTunesStoreID];
  [v3 appendFormat:@"\tiTunes Store ID : %@\n", v5];

  v6 = [(DMFBook *)self author];
  [v3 appendFormat:@"\tAuthor          : %@\n", v6];

  v7 = [(DMFBook *)self title];
  [v3 appendFormat:@"\tTitle           : %@\n", v7];

  v8 = description_typeMap;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFBook type](self, "type")}];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v3 appendFormat:@"\tType            : %@\n", v10];

  v11 = description_stateMap;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFBook state](self, "state")}];
  v13 = [v11 objectForKeyedSubscript:v12];
  [v3 appendFormat:@"\tState           : %@\n", v13];

  v14 = [(DMFBook *)self version];
  [v3 appendFormat:@"\tVersion         : %@\n", v14];

  [v3 appendString:@"}>"];
  v15 = [v3 copy];

  return v15;
}

void __22__DMFBook_description__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F57B6C28;
  v7[1] = &unk_1F57B6C40;
  v8[0] = @"PDF";
  v8[1] = @"EPUB";
  v7[2] = &unk_1F57B6C58;
  v8[2] = @"iBooks";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v1 = description_typeMap;
  description_typeMap = v0;

  v5[0] = &unk_1F57B6C58;
  v5[1] = &unk_1F57B6C28;
  v6[0] = @"Unknown";
  v6[1] = @"Queued";
  v5[2] = &unk_1F57B6C40;
  v5[3] = &unk_1F57B6C70;
  v6[2] = @"Prompting for login";
  v6[3] = @"Updating";
  v5[4] = &unk_1F57B6C88;
  v5[5] = &unk_1F57B6CA0;
  v6[4] = @"Installing";
  v6[5] = @"Installed";
  v5[6] = &unk_1F57B6CB8;
  v5[7] = &unk_1F57B6CD0;
  v6[6] = @"Uninstalled";
  v6[7] = @"Managed";
  v5[8] = &unk_1F57B6CE8;
  v5[9] = &unk_1F57B6D00;
  v6[8] = @"Managed but uninstalled";
  v6[9] = @"Failed";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:10];
  v3 = description_stateMap;
  description_stateMap = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end