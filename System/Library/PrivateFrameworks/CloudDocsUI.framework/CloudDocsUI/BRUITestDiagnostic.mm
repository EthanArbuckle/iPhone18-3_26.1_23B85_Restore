@interface BRUITestDiagnostic
- (BOOL)writeToDiskWithError:(id *)error;
- (BRUITestDiagnostic)initWithOutputDirectoryPath:(id)path;
- (void)addDiagnosticData:(id)data forFilename:(id)filename sectionName:(id)name;
@end

@implementation BRUITestDiagnostic

- (BRUITestDiagnostic)initWithOutputDirectoryPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = BRUITestDiagnostic;
  v6 = [(BRUITestDiagnostic *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDirectoryPath, path);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    diagnosticDataBySectionName = v7->_diagnosticDataBySectionName;
    v7->_diagnosticDataBySectionName = dictionary;
  }

  return v7;
}

- (void)addDiagnosticData:(id)data forFilename:(id)filename sectionName:(id)name
{
  dataCopy = data;
  filenameCopy = filename;
  nameCopy = name;
  if (nameCopy)
  {
    v10 = nameCopy;
  }

  else
  {
    v10 = @"_kBRUITestDiagnosticDefaultSectionName";
  }

  dictionary = [(NSMutableDictionary *)self->_diagnosticDataBySectionName objectForKeyedSubscript:v10];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_diagnosticDataBySectionName setObject:dictionary forKeyedSubscript:v10];
  }

  [dictionary setObject:dataCopy forKeyedSubscript:filenameCopy];
}

- (BOOL)writeToDiskWithError:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = self->_outputDirectoryPath;
  v50 = 0;
  v40 = defaultManager;
  v7 = [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v50];
  v8 = v50;
  v9 = v8;
  if (v7)
  {
    goto LABEL_2;
  }

  domain = [v8 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    if (error)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  code = [v9 code];

  if (code != 516)
  {
    if (error)
    {
LABEL_27:
      v31 = v9;
      v28 = 0;
      *error = v9;
      goto LABEL_33;
    }

LABEL_30:
    v28 = 0;
    goto LABEL_33;
  }

LABEL_2:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = self->_diagnosticDataBySectionName;
  v35 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v35)
  {
    v11 = *v47;
    errorCopy = error;
    v38 = v9;
    v39 = v6;
    v33 = *v47;
    selfCopy = self;
    v37 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v36 = v12;
        v13 = *(*(&v46 + 1) + 8 * v12);
        v14 = [v13 isEqualToString:@"_kBRUITestDiagnosticDefaultSectionName"];
        if (v14)
        {
          v15 = v6;
        }

        else
        {
          v15 = [(NSString *)v6 stringByAppendingPathComponent:v13];
        }

        v16 = v15;
        v17 = [(NSMutableDictionary *)self->_diagnosticDataBySectionName objectForKeyedSubscript:v13];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v43;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              if (((v14 | v21) & 1) == 0)
              {
                if (![v40 createDirectoryAtPath:v16 withIntermediateDirectories:0 attributes:0 error:error])
                {
                  goto LABEL_28;
                }

                v21 = 1;
                error = errorCopy;
              }

              v25 = [v18 objectForKeyedSubscript:v24];
              v26 = [(NSString *)v16 stringByAppendingPathComponent:v24];
              v27 = [v25 writeToFile:v26 options:1 error:error];

              if (!v27)
              {
LABEL_28:

                v28 = 0;
                v9 = v38;
                v6 = v39;
                v10 = v37;
                goto LABEL_32;
              }

              error = errorCopy;
            }

            v20 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v12 = v36 + 1;
        v9 = v38;
        v6 = v39;
        v11 = v33;
        self = selfCopy;
        v10 = v37;
      }

      while (v36 + 1 != v35);
      v28 = 1;
      v35 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v35);
  }

  else
  {
    v28 = 1;
  }

LABEL_32:

LABEL_33:
  return v28;
}

@end