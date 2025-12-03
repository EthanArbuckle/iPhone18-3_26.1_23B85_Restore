@interface FCRecipeItemFactory
- (FCRecipeItemFactory)initWithRecipeRecordSource:(id)source;
- (NSArray)requiredRecipeKeys;
- (id)recipeItemFromCKRecord:(id)record surfacedBy:(id)by error:(id *)error;
- (id)recipeItemFromPBRecord:(id)record surfacedBy:(id)by error:(id *)error;
@end

@implementation FCRecipeItemFactory

- (FCRecipeItemFactory)initWithRecipeRecordSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = FCRecipeItemFactory;
  v6 = [(FCRecipeItemFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipeRecordSource, source);
  }

  return v7;
}

- (NSArray)requiredRecipeKeys
{
  recipeRecordSource = [(FCRecipeItemFactory *)self recipeRecordSource];
  v3 = [FCRecipeItem keysForRecipeRecordWithRecordSource:recipeRecordSource];

  return v3;
}

- (id)recipeItemFromPBRecord:(id)record surfacedBy:(id)by error:(id *)error
{
  byCopy = by;
  recordCopy = record;
  v10 = +[FCCKProtocolTranslator sharedInstance];
  v11 = [(FCCKProtocolTranslator *)v10 recordFromPRecord:recordCopy];

  v12 = [(FCRecipeItemFactory *)self recipeItemFromCKRecord:v11 surfacedBy:byCopy error:error];

  return v12;
}

- (id)recipeItemFromCKRecord:(id)record surfacedBy:(id)by error:(id *)error
{
  recordCopy = record;
  byCopy = by;
  recordType = [recordCopy recordType];
  v11 = [recordType isEqualToString:@"Recipe"];

  if (v11)
  {
    recipeRecordSource = [(FCRecipeItemFactory *)self recipeRecordSource];
    recordType2 = [recipeRecordSource convertRecord:recordCopy];

    error = [[FCRecipeItem alloc] initWithRecipeRecord:recordType2 surfacedBy:byCopy error:error];
  }

  else
  {
    if (!error)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = MEMORY[0x1E696AEC0];
    recordType2 = [recordCopy recordType];
    v16 = [v15 stringWithFormat:@"Can't created a recipe item from record type %@", recordType2];
    *error = [v14 fc_errorWithCode:16 description:v16];

    error = 0;
  }

LABEL_6:

  return error;
}

@end