@interface LNContentTypeMetadata
- (BOOL)isEqual:(id)equal;
- (LNContentTypeMetadata)initWithCoder:(id)coder;
- (LNContentTypeMetadata)initWithExportableTypes:(id)types importableTypes:(id)importableTypes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNContentTypeMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  exportableTypes = [(LNContentTypeMetadata *)self exportableTypes];
  [coderCopy encodeObject:exportableTypes forKey:@"exportableTypes"];

  importableTypes = [(LNContentTypeMetadata *)self importableTypes];
  [coderCopy encodeObject:importableTypes forKey:@"importableTypes"];
}

- (LNContentTypeMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"exportableTypes"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"importableTypes"];

  v13 = [(LNContentTypeMetadata *)self initWithExportableTypes:v8 importableTypes:v12];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        exportableTypes = [(LNContentTypeMetadata *)self exportableTypes];
        exportableTypes2 = [(LNContentTypeMetadata *)v6 exportableTypes];

        if (exportableTypes != exportableTypes2)
        {
          exportableTypes3 = [(LNContentTypeMetadata *)self exportableTypes];
          if (!exportableTypes3)
          {
            goto LABEL_16;
          }

          v10 = exportableTypes3;
          exportableTypes4 = [(LNContentTypeMetadata *)v6 exportableTypes];

          if (!exportableTypes4)
          {
            goto LABEL_16;
          }

          v12 = MEMORY[0x1E695DFD8];
          exportableTypes5 = [(LNContentTypeMetadata *)self exportableTypes];
          v14 = [v12 setWithArray:exportableTypes5];
          v15 = MEMORY[0x1E695DFD8];
          exportableTypes6 = [(LNContentTypeMetadata *)v6 exportableTypes];
          v17 = [v15 setWithArray:exportableTypes6];
          v18 = [v14 isEqualToSet:v17];

          if (!v18)
          {
            goto LABEL_16;
          }
        }

        importableTypes = [(LNContentTypeMetadata *)self importableTypes];
        importableTypes2 = [(LNContentTypeMetadata *)v6 importableTypes];

        if (importableTypes == importableTypes2)
        {
          v30 = 1;
          goto LABEL_18;
        }

        importableTypes3 = [(LNContentTypeMetadata *)self importableTypes];
        if (!importableTypes3 || (v22 = importableTypes3, [(LNContentTypeMetadata *)v6 importableTypes], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
        {
LABEL_16:
          v30 = 0;
          goto LABEL_18;
        }

        v24 = MEMORY[0x1E695DFD8];
        importableTypes4 = [(LNContentTypeMetadata *)self importableTypes];
        v26 = [v24 setWithArray:importableTypes4];
        v27 = MEMORY[0x1E695DFD8];
        importableTypes5 = [(LNContentTypeMetadata *)v6 importableTypes];
        v29 = [v27 setWithArray:importableTypes5];
        v30 = [v26 isEqualToSet:v29];
      }

      else
      {
        v30 = 0;
        importableTypes4 = v6;
        v6 = 0;
      }
    }

    else
    {
      importableTypes4 = 0;
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
  exportableTypes = [(LNContentTypeMetadata *)self exportableTypes];
  v4 = [exportableTypes hash];
  importableTypes = [(LNContentTypeMetadata *)self importableTypes];
  v6 = [importableTypes hash];

  return v6 ^ v4;
}

- (LNContentTypeMetadata)initWithExportableTypes:(id)types importableTypes:(id)importableTypes
{
  typesCopy = types;
  importableTypesCopy = importableTypes;
  v13.receiver = self;
  v13.super_class = LNContentTypeMetadata;
  v9 = [(LNContentTypeMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exportableTypes, types);
    objc_storeStrong(&v10->_importableTypes, importableTypes);
    v11 = v10;
  }

  return v10;
}

@end