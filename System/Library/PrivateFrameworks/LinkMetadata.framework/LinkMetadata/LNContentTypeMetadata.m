@interface LNContentTypeMetadata
- (BOOL)isEqual:(id)a3;
- (LNContentTypeMetadata)initWithCoder:(id)a3;
- (LNContentTypeMetadata)initWithExportableTypes:(id)a3 importableTypes:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNContentTypeMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNContentTypeMetadata *)self exportableTypes];
  [v4 encodeObject:v5 forKey:@"exportableTypes"];

  v6 = [(LNContentTypeMetadata *)self importableTypes];
  [v4 encodeObject:v6 forKey:@"importableTypes"];
}

- (LNContentTypeMetadata)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"exportableTypes"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"importableTypes"];

  v13 = [(LNContentTypeMetadata *)self initWithExportableTypes:v8 importableTypes:v12];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNContentTypeMetadata *)self exportableTypes];
        v8 = [(LNContentTypeMetadata *)v6 exportableTypes];

        if (v7 != v8)
        {
          v9 = [(LNContentTypeMetadata *)self exportableTypes];
          if (!v9)
          {
            goto LABEL_16;
          }

          v10 = v9;
          v11 = [(LNContentTypeMetadata *)v6 exportableTypes];

          if (!v11)
          {
            goto LABEL_16;
          }

          v12 = MEMORY[0x1E695DFD8];
          v13 = [(LNContentTypeMetadata *)self exportableTypes];
          v14 = [v12 setWithArray:v13];
          v15 = MEMORY[0x1E695DFD8];
          v16 = [(LNContentTypeMetadata *)v6 exportableTypes];
          v17 = [v15 setWithArray:v16];
          v18 = [v14 isEqualToSet:v17];

          if (!v18)
          {
            goto LABEL_16;
          }
        }

        v19 = [(LNContentTypeMetadata *)self importableTypes];
        v20 = [(LNContentTypeMetadata *)v6 importableTypes];

        if (v19 == v20)
        {
          v30 = 1;
          goto LABEL_18;
        }

        v21 = [(LNContentTypeMetadata *)self importableTypes];
        if (!v21 || (v22 = v21, [(LNContentTypeMetadata *)v6 importableTypes], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
        {
LABEL_16:
          v30 = 0;
          goto LABEL_18;
        }

        v24 = MEMORY[0x1E695DFD8];
        v25 = [(LNContentTypeMetadata *)self importableTypes];
        v26 = [v24 setWithArray:v25];
        v27 = MEMORY[0x1E695DFD8];
        v28 = [(LNContentTypeMetadata *)v6 importableTypes];
        v29 = [v27 setWithArray:v28];
        v30 = [v26 isEqualToSet:v29];
      }

      else
      {
        v30 = 0;
        v25 = v6;
        v6 = 0;
      }
    }

    else
    {
      v25 = 0;
      v30 = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v30 = 1;
LABEL_19:

  return v30;
}

- (unint64_t)hash
{
  v3 = [(LNContentTypeMetadata *)self exportableTypes];
  v4 = [v3 hash];
  v5 = [(LNContentTypeMetadata *)self importableTypes];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (LNContentTypeMetadata)initWithExportableTypes:(id)a3 importableTypes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNContentTypeMetadata;
  v9 = [(LNContentTypeMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exportableTypes, a3);
    objc_storeStrong(&v10->_importableTypes, a4);
    v11 = v10;
  }

  return v10;
}

@end