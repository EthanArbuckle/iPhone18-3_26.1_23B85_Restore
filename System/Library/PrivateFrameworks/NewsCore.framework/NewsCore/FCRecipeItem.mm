@interface FCRecipeItem
+ (id)keysForRecipeRecordWithRecordSource:(id)source;
- (BOOL)isBundlePaid;
- (BOOL)isPaid;
- (FCRecipeItem)initWithData:(id)data error:(id *)error;
- (FCRecipeItem)initWithRecipeRecord:(id)record surfacedBy:(id)by error:(id *)error;
- (NSArray)articleIDs;
- (NSArray)topicIDs;
- (NSArray)topics;
- (NSData)data;
- (NSData)eventAggregationPersonalizationData;
- (NSData)personalizationData;
- (NSData)rapidUpdatePersonalizationData;
- (NSData)thumbnailPerceptualHash;
- (NSDate)lastModifiedDate;
- (NSDate)lastReferenceDate;
- (NSDate)publishDate;
- (NSString)identifier;
- (NSString)itemID;
- (NSString)publisherID;
- (NSString)surfacedBy;
- (id)recipeRecord;
@end

@implementation FCRecipeItem

+ (id)keysForRecipeRecordWithRecordSource:(id)source
{
  v23[11] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  localizedKeysByOriginalKey = [sourceCopy localizedKeysByOriginalKey];
  v5 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"topicFlags"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"topicFlags";
  }

  v23[7] = v7;
  localizedKeysByOriginalKey2 = [sourceCopy localizedKeysByOriginalKey];
  v9 = [localizedKeysByOriginalKey2 objectForKeyedSubscript:@"personalizationData"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"personalizationData";
  }

  v23[8] = v11;
  localizedKeysByOriginalKey3 = [sourceCopy localizedKeysByOriginalKey];
  v13 = [localizedKeysByOriginalKey3 objectForKeyedSubscript:@"rapidUpdatePersonalizationData"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"rapidUpdatePersonalizationData";
  }

  v23[9] = v15;
  localizedKeysByOriginalKey4 = [sourceCopy localizedKeysByOriginalKey];

  v17 = [localizedKeysByOriginalKey4 objectForKeyedSubscript:@"eventAggregationPersonalizationData"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"eventAggregationPersonalizationData";
  }

  v23[10] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:11];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (FCRecipeItem)initWithRecipeRecord:(id)record surfacedBy:(id)by error:(id *)error
{
  recordCopy = record;
  byCopy = by;
  base = [recordCopy base];
  identifier = [base identifier];

  if (identifier)
  {
    v17.receiver = self;
    v17.super_class = FCRecipeItem;
    v12 = [(FCRecipeItem *)&v17 init];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69B6F80]);
      pbRecipeItem = v12->_pbRecipeItem;
      v12->_pbRecipeItem = v13;

      [(NTPBRecipeItem *)v12->_pbRecipeItem setRecipeRecord:recordCopy];
      [(NTPBRecipeItem *)v12->_pbRecipeItem setSurfacedBy:byCopy];
    }

    self = v12;
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Can't create recipe item from a record without an identifier"];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCRecipeItem)initWithData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E69B6F80];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  if (v8)
  {
    v13.receiver = self;
    v13.super_class = FCRecipeItem;
    v9 = [(FCRecipeItem *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_pbRecipeItem, v8);
    }

    self = v10;
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to create recipe item from data"];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)surfacedBy
{
  pbRecipeItem = [(FCRecipeItem *)self pbRecipeItem];
  surfacedBy = [pbRecipeItem surfacedBy];

  return surfacedBy;
}

- (NSData)data
{
  pbRecipeItem = [(FCRecipeItem *)self pbRecipeItem];
  data = [pbRecipeItem data];

  return data;
}

- (NSString)identifier
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  base = [recipeRecord base];
  identifier = [base identifier];

  return identifier;
}

- (NSData)personalizationData
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  personalizationData = [recipeRecord personalizationData];

  return personalizationData;
}

- (NSData)rapidUpdatePersonalizationData
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  rapidUpdatePersonalizationData = [recipeRecord rapidUpdatePersonalizationData];

  return rapidUpdatePersonalizationData;
}

- (NSData)eventAggregationPersonalizationData
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  eventAggregationPersonalizationData = [recipeRecord eventAggregationPersonalizationData];

  return eventAggregationPersonalizationData;
}

- (NSDate)lastReferenceDate
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  lastReferenceDate = [recipeRecord lastReferenceDate];
  nsDate = [lastReferenceDate nsDate];

  return nsDate;
}

- (NSArray)articleIDs
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  articleIDs = [recipeRecord articleIDs];

  return articleIDs;
}

- (BOOL)isPaid
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  isPaid = [recipeRecord isPaid];

  return isPaid;
}

- (BOOL)isBundlePaid
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  isPaid = [recipeRecord isPaid];

  return isPaid;
}

- (NSString)itemID
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  base = [recipeRecord base];
  identifier = [base identifier];

  return identifier;
}

- (NSString)publisherID
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  sourceChannelTagID = [recipeRecord sourceChannelTagID];

  return sourceChannelTagID;
}

- (NSArray)topicIDs
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  topicTagIDs = [recipeRecord topicTagIDs];

  return topicTagIDs;
}

- (NSArray)topics
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  topics = [recipeRecord topics];

  return topics;
}

- (NSDate)publishDate
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  publishDate = [recipeRecord publishDate];
  nsDate = [publishDate nsDate];

  return nsDate;
}

- (NSDate)lastModifiedDate
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  base = [recipeRecord base];
  modificationDate = [base modificationDate];
  nsDate = [modificationDate nsDate];

  return nsDate;
}

- (NSData)thumbnailPerceptualHash
{
  recipeRecord = [(FCRecipeItem *)self recipeRecord];
  thumbnailPerceptualHash = [recipeRecord thumbnailPerceptualHash];

  return thumbnailPerceptualHash;
}

- (id)recipeRecord
{
  pbRecipeItem = [(FCRecipeItem *)self pbRecipeItem];
  recipeRecord = [pbRecipeItem recipeRecord];

  return recipeRecord;
}

@end