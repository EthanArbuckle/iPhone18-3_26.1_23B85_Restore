@interface CAFTestComplexNestedListItems
+ (id)testComplexNestedListItemsWithArray:(id)array;
+ (id)testComplexNestedListItemsWithTestComplexNestedListItems:(id)items;
- (CAFTestComplexNestedListItems)initWithArray:(id)array;
- (CAFTestComplexNestedListItems)initWithTestComplexNestedListItems:(id)items;
- (NSArray)arrayRepresentation;
- (NSString)formattedValue;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation CAFTestComplexNestedListItems

+ (id)testComplexNestedListItemsWithArray:(id)array
{
  arrayCopy = array;
  v5 = [[self alloc] initWithArray:arrayCopy];

  return v5;
}

+ (id)testComplexNestedListItemsWithTestComplexNestedListItems:(id)items
{
  itemsCopy = items;
  v5 = [[self alloc] initWithTestComplexNestedListItems:itemsCopy];

  return v5;
}

- (CAFTestComplexNestedListItems)initWithTestComplexNestedListItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = CAFTestComplexNestedListItems;
  v6 = [(CAFTestComplexNestedListItems *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testComplexNestedListItems, items);
  }

  return v7;
}

- (CAFTestComplexNestedListItems)initWithArray:(id)array
{
  arrayCopy = array;
  v18.receiver = self;
  v18.super_class = CAFTestComplexNestedListItems;
  v5 = [(CAFTestComplexNestedListItems *)&v18 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __47__CAFTestComplexNestedListItems_initWithArray___block_invoke;
    v15 = &unk_27890DA70;
    v16 = array;
    v7 = v5;
    v17 = v7;
    v8 = array;
    [arrayCopy enumerateObjectsUsingBlock:&v12];
    v9 = [v8 copy];
    testComplexNestedListItems = v7->_testComplexNestedListItems;
    v7->_testComplexNestedListItems = v9;
  }

  return v5;
}

void __47__CAFTestComplexNestedListItems_initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[CAFTestComplexNestedListItem alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] CAF_elementParseFailedForDataSupportType:@"TestComplexNestedListItems"];
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    v8 = *(v7 + 16);
    *(v7 + 16) = v5;

    v4 = CAFGeneralLogging();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      __47__CAFTestComplexNestedListItems_initWithArray___block_invoke_cold_1(v6, v3, &v4->super);
    }
  }
}

- (NSString)formattedValue
{
  testComplexNestedListItems = [(CAFTestComplexNestedListItems *)self testComplexNestedListItems];
  if ([testComplexNestedListItems count])
  {
    v4 = MEMORY[0x277CCACA8];
    testComplexNestedListItems2 = [(CAFTestComplexNestedListItems *)self testComplexNestedListItems];
    v6 = [testComplexNestedListItems2 componentsJoinedByString:{@", "}];
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
  testComplexNestedListItems = [(CAFTestComplexNestedListItems *)self testComplexNestedListItems];
  v5 = [testComplexNestedListItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(testComplexNestedListItems);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [testComplexNestedListItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  testComplexNestedListItems = [(CAFTestComplexNestedListItems *)self testComplexNestedListItems];
  v5 = [testComplexNestedListItems objectAtIndexedSubscript:index];

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  testComplexNestedListItems = [(CAFTestComplexNestedListItems *)self testComplexNestedListItems];
  v9 = [testComplexNestedListItems countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

void __47__CAFTestComplexNestedListItems_initWithArray___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@: Error parsing dictionary from TestComplexNestedListItems array - %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end