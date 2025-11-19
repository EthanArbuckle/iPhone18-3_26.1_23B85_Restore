@interface FSFSchema
- (id)initSchemaForClass:(id)a3 inLanguage:(id)a4 withRepoUrl:(id)a5 pkgName:(id)a6 version:(id)a7;
@end

@implementation FSFSchema

- (id)initSchemaForClass:(id)a3 inLanguage:(id)a4 withRepoUrl:(id)a5 pkgName:(id)a6 version:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = FSFSchema;
  v17 = [(FSFSchema *)&v27 init];
  if (v17)
  {
    v25 = objc_alloc(MEMORY[0x277CBEAC0]);
    v26 = v13;
    if (!v13)
    {
      v26 = [MEMORY[0x277CBEB68] null];
    }

    v18 = v14;
    if (!v14)
    {
      v18 = [MEMORY[0x277CBEB68] null];
    }

    v19 = v12;
    if (!v12)
    {
      v19 = [MEMORY[0x277CBEB68] null];
    }

    v20 = v15;
    if (!v15)
    {
      v20 = [MEMORY[0x277CBEB68] null];
    }

    v21 = v16;
    if (!v16)
    {
      v21 = [MEMORY[0x277CBEB68] null];
    }

    v22 = [v25 initWithObjectsAndKeys:{v26, @"language", v18, @"repo_url", v19, @"class_name", v20, @"pkg_name", v21, @"version", 0}];
    schemaData = v17->_schemaData;
    v17->_schemaData = v22;

    if (v16)
    {
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {

      if (v15)
      {
LABEL_14:
        if (v12)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    if (v12)
    {
LABEL_15:
      if (v14)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:

    if (v14)
    {
LABEL_16:
      if (v13)
      {
        goto LABEL_17;
      }

LABEL_22:

      goto LABEL_17;
    }

LABEL_21:

    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_17:

  return v17;
}

@end