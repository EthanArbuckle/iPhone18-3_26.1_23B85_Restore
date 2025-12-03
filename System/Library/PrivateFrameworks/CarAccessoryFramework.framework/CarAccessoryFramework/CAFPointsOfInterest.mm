@interface CAFPointsOfInterest
+ (id)pointsOfInterestWithArray:(id)array;
+ (id)pointsOfInterestWithPointOfInterests:(id)interests;
- (CAFPointsOfInterest)initWithArray:(id)array;
- (CAFPointsOfInterest)initWithPointOfInterests:(id)interests;
- (NSArray)arrayRepresentation;
- (NSString)formattedValue;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation CAFPointsOfInterest

+ (id)pointsOfInterestWithArray:(id)array
{
  arrayCopy = array;
  v5 = [[self alloc] initWithArray:arrayCopy];

  return v5;
}

+ (id)pointsOfInterestWithPointOfInterests:(id)interests
{
  interestsCopy = interests;
  v5 = [[self alloc] initWithPointOfInterests:interestsCopy];

  return v5;
}

- (CAFPointsOfInterest)initWithPointOfInterests:(id)interests
{
  interestsCopy = interests;
  v9.receiver = self;
  v9.super_class = CAFPointsOfInterest;
  v6 = [(CAFPointsOfInterest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pointOfInterests, interests);
  }

  return v7;
}

- (CAFPointsOfInterest)initWithArray:(id)array
{
  arrayCopy = array;
  v18.receiver = self;
  v18.super_class = CAFPointsOfInterest;
  v5 = [(CAFPointsOfInterest *)&v18 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __37__CAFPointsOfInterest_initWithArray___block_invoke;
    v15 = &unk_27890DA70;
    v16 = array;
    v7 = v5;
    v17 = v7;
    v8 = array;
    [arrayCopy enumerateObjectsUsingBlock:&v12];
    v9 = [v8 copy];
    pointOfInterests = v7->_pointOfInterests;
    v7->_pointOfInterests = v9;
  }

  return v5;
}

void __37__CAFPointsOfInterest_initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[CAFPointOfInterest alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] CAF_elementParseFailedForDataSupportType:@"PointsOfInterest"];
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    v8 = *(v7 + 16);
    *(v7 + 16) = v5;

    v4 = CAFGeneralLogging();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      __37__CAFPointsOfInterest_initWithArray___block_invoke_cold_1(v6, v3, &v4->super);
    }
  }
}

- (NSString)formattedValue
{
  pointOfInterests = [(CAFPointsOfInterest *)self pointOfInterests];
  if ([pointOfInterests count])
  {
    v4 = MEMORY[0x277CCACA8];
    pointOfInterests2 = [(CAFPointsOfInterest *)self pointOfInterests];
    v6 = [pointOfInterests2 componentsJoinedByString:{@", "}];
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
  pointOfInterests = [(CAFPointsOfInterest *)self pointOfInterests];
  v5 = [pointOfInterests countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pointOfInterests);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [pointOfInterests countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  pointOfInterests = [(CAFPointsOfInterest *)self pointOfInterests];
  v5 = [pointOfInterests objectAtIndexedSubscript:index];

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  pointOfInterests = [(CAFPointsOfInterest *)self pointOfInterests];
  v9 = [pointOfInterests countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

void __37__CAFPointsOfInterest_initWithArray___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@: Error parsing dictionary from PointsOfInterest array - %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end