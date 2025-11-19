@interface FCRecipeItem
+ (id)keysForRecipeRecordWithRecordSource:(id)a3;
- (BOOL)isBundlePaid;
- (BOOL)isPaid;
- (FCRecipeItem)initWithData:(id)a3 error:(id *)a4;
- (FCRecipeItem)initWithRecipeRecord:(id)a3 surfacedBy:(id)a4 error:(id *)a5;
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

+ (id)keysForRecipeRecordWithRecordSource:(id)a3
{
  v23[11] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 localizedKeysByOriginalKey];
  v5 = [v4 objectForKeyedSubscript:@"topicFlags"];
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
  v8 = [v3 localizedKeysByOriginalKey];
  v9 = [v8 objectForKeyedSubscript:@"personalizationData"];
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
  v12 = [v3 localizedKeysByOriginalKey];
  v13 = [v12 objectForKeyedSubscript:@"rapidUpdatePersonalizationData"];
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
  v16 = [v3 localizedKeysByOriginalKey];

  v17 = [v16 objectForKeyedSubscript:@"eventAggregationPersonalizationData"];
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

- (FCRecipeItem)initWithRecipeRecord:(id)a3 surfacedBy:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 base];
  v11 = [v10 identifier];

  if (v11)
  {
    v17.receiver = self;
    v17.super_class = FCRecipeItem;
    v12 = [(FCRecipeItem *)&v17 init];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69B6F80]);
      pbRecipeItem = v12->_pbRecipeItem;
      v12->_pbRecipeItem = v13;

      [(NTPBRecipeItem *)v12->_pbRecipeItem setRecipeRecord:v8];
      [(NTPBRecipeItem *)v12->_pbRecipeItem setSurfacedBy:v9];
    }

    self = v12;
    v15 = self;
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Can't create recipe item from a record without an identifier"];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (FCRecipeItem)initWithData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69B6F80];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

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
    v11 = self;
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to create recipe item from data"];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)surfacedBy
{
  v2 = [(FCRecipeItem *)self pbRecipeItem];
  v3 = [v2 surfacedBy];

  return v3;
}

- (NSData)data
{
  v2 = [(FCRecipeItem *)self pbRecipeItem];
  v3 = [v2 data];

  return v3;
}

- (NSString)identifier
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 base];
  v4 = [v3 identifier];

  return v4;
}

- (NSData)personalizationData
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 personalizationData];

  return v3;
}

- (NSData)rapidUpdatePersonalizationData
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 rapidUpdatePersonalizationData];

  return v3;
}

- (NSData)eventAggregationPersonalizationData
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 eventAggregationPersonalizationData];

  return v3;
}

- (NSDate)lastReferenceDate
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 lastReferenceDate];
  v4 = [v3 nsDate];

  return v4;
}

- (NSArray)articleIDs
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 articleIDs];

  return v3;
}

- (BOOL)isPaid
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 isPaid];

  return v3;
}

- (BOOL)isBundlePaid
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 isPaid];

  return v3;
}

- (NSString)itemID
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 base];
  v4 = [v3 identifier];

  return v4;
}

- (NSString)publisherID
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 sourceChannelTagID];

  return v3;
}

- (NSArray)topicIDs
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 topicTagIDs];

  return v3;
}

- (NSArray)topics
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 topics];

  return v3;
}

- (NSDate)publishDate
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 publishDate];
  v4 = [v3 nsDate];

  return v4;
}

- (NSDate)lastModifiedDate
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 base];
  v4 = [v3 modificationDate];
  v5 = [v4 nsDate];

  return v5;
}

- (NSData)thumbnailPerceptualHash
{
  v2 = [(FCRecipeItem *)self recipeRecord];
  v3 = [v2 thumbnailPerceptualHash];

  return v3;
}

- (id)recipeRecord
{
  v2 = [(FCRecipeItem *)self pbRecipeItem];
  v3 = [v2 recipeRecord];

  return v3;
}

@end