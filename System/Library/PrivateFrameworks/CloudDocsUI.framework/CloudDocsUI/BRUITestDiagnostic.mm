@interface BRUITestDiagnostic
- (BOOL)writeToDiskWithError:(id *)a3;
- (BRUITestDiagnostic)initWithOutputDirectoryPath:(id)a3;
- (void)addDiagnosticData:(id)a3 forFilename:(id)a4 sectionName:(id)a5;
@end

@implementation BRUITestDiagnostic

- (BRUITestDiagnostic)initWithOutputDirectoryPath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BRUITestDiagnostic;
  v6 = [(BRUITestDiagnostic *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDirectoryPath, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    diagnosticDataBySectionName = v7->_diagnosticDataBySectionName;
    v7->_diagnosticDataBySectionName = v8;
  }

  return v7;
}

- (void)addDiagnosticData:(id)a3 forFilename:(id)a4 sectionName:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"_kBRUITestDiagnosticDefaultSectionName";
  }

  v11 = [(NSMutableDictionary *)self->_diagnosticDataBySectionName objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_diagnosticDataBySectionName setObject:v11 forKeyedSubscript:v10];
  }

  [v11 setObject:v12 forKeyedSubscript:v8];
}

- (BOOL)writeToDiskWithError:(id *)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = self->_outputDirectoryPath;
  v50 = 0;
  v40 = v5;
  v7 = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v50];
  v8 = v50;
  v9 = v8;
  if (v7)
  {
    goto LABEL_2;
  }

  v29 = [v8 domain];
  if (([v29 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    if (a3)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v30 = [v9 code];

  if (v30 != 516)
  {
    if (a3)
    {
LABEL_27:
      v31 = v9;
      v28 = 0;
      *a3 = v9;
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
    v41 = a3;
    v38 = v9;
    v39 = v6;
    v33 = *v47;
    v34 = self;
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
                if (![v40 createDirectoryAtPath:v16 withIntermediateDirectories:0 attributes:0 error:a3])
                {
                  goto LABEL_28;
                }

                v21 = 1;
                a3 = v41;
              }

              v25 = [v18 objectForKeyedSubscript:v24];
              v26 = [(NSString *)v16 stringByAppendingPathComponent:v24];
              v27 = [v25 writeToFile:v26 options:1 error:a3];

              if (!v27)
              {
LABEL_28:

                v28 = 0;
                v9 = v38;
                v6 = v39;
                v10 = v37;
                goto LABEL_32;
              }

              a3 = v41;
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
        self = v34;
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