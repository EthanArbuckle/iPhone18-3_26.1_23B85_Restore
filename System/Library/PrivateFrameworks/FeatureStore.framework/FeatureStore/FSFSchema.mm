@interface FSFSchema
- (id)initSchemaForClass:(id)class inLanguage:(id)language withRepoUrl:(id)url pkgName:(id)name version:(id)version;
@end

@implementation FSFSchema

- (id)initSchemaForClass:(id)class inLanguage:(id)language withRepoUrl:(id)url pkgName:(id)name version:(id)version
{
  classCopy = class;
  languageCopy = language;
  urlCopy = url;
  nameCopy = name;
  versionCopy = version;
  v27.receiver = self;
  v27.super_class = FSFSchema;
  v17 = [(FSFSchema *)&v27 init];
  if (v17)
  {
    v25 = objc_alloc(MEMORY[0x277CBEAC0]);
    null = languageCopy;
    if (!languageCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    null2 = urlCopy;
    if (!urlCopy)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    null3 = classCopy;
    if (!classCopy)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    null4 = nameCopy;
    if (!nameCopy)
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    null5 = versionCopy;
    if (!versionCopy)
    {
      null5 = [MEMORY[0x277CBEB68] null];
    }

    v22 = [v25 initWithObjectsAndKeys:{null, @"language", null2, @"repo_url", null3, @"class_name", null4, @"pkg_name", null5, @"version", 0}];
    schemaData = v17->_schemaData;
    v17->_schemaData = v22;

    if (versionCopy)
    {
      if (nameCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {

      if (nameCopy)
      {
LABEL_14:
        if (classCopy)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    if (classCopy)
    {
LABEL_15:
      if (urlCopy)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:

    if (urlCopy)
    {
LABEL_16:
      if (languageCopy)
      {
        goto LABEL_17;
      }

LABEL_22:

      goto LABEL_17;
    }

LABEL_21:

    if (languageCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_17:

  return v17;
}

@end