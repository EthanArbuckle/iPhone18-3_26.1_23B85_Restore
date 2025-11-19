@interface CAFProminenceInfo
+ (id)prominenceInfoWithArray:(id)a3;
+ (id)prominenceInfoWithProminenceInformations:(id)a3;
- (CAFProminenceInfo)initWithArray:(id)a3;
- (CAFProminenceInfo)initWithProminenceInformations:(id)a3;
- (NSArray)arrayRepresentation;
- (NSString)formattedValue;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation CAFProminenceInfo

+ (id)prominenceInfoWithArray:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithArray:v4];

  return v5;
}

+ (id)prominenceInfoWithProminenceInformations:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProminenceInformations:v4];

  return v5;
}

- (CAFProminenceInfo)initWithProminenceInformations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CAFProminenceInfo;
  v6 = [(CAFProminenceInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_prominenceInformations, a3);
  }

  return v7;
}

- (CAFProminenceInfo)initWithArray:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAFProminenceInfo;
  v5 = [(CAFProminenceInfo *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __35__CAFProminenceInfo_initWithArray___block_invoke;
    v15 = &unk_27890DA70;
    v16 = v6;
    v7 = v5;
    v17 = v7;
    v8 = v6;
    [v4 enumerateObjectsUsingBlock:&v12];
    v9 = [v8 copy];
    prominenceInformations = v7->_prominenceInformations;
    v7->_prominenceInformations = v9;
  }

  return v5;
}

void __35__CAFProminenceInfo_initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[CAFProminenceInformation alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] CAF_elementParseFailedForDataSupportType:@"ProminenceInfo"];
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    v8 = *(v7 + 16);
    *(v7 + 16) = v5;

    v4 = CAFGeneralLogging();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      __35__CAFProminenceInfo_initWithArray___block_invoke_cold_1(v6, v3, &v4->super);
    }
  }
}

- (NSString)formattedValue
{
  v3 = [(CAFProminenceInfo *)self prominenceInformations];
  if ([v3 count])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(CAFProminenceInfo *)self prominenceInformations];
    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [v4 stringWithFormat:@"[ %@ ]", v6];
  }

  else
  {
    v7 = @"(null)";
  }

  return v7;
}

- (NSArray)arrayRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CAFProminenceInfo *)self prominenceInformations];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(CAFProminenceInfo *)self prominenceInformations];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(CAFProminenceInfo *)self prominenceInformations];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

void __35__CAFProminenceInfo_initWithArray___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@: Error parsing dictionary from ProminenceInfo array - %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end