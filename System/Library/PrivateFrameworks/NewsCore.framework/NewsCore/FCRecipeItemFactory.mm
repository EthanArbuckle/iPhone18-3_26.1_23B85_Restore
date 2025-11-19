@interface FCRecipeItemFactory
- (FCRecipeItemFactory)initWithRecipeRecordSource:(id)a3;
- (NSArray)requiredRecipeKeys;
- (id)recipeItemFromCKRecord:(id)a3 surfacedBy:(id)a4 error:(id *)a5;
- (id)recipeItemFromPBRecord:(id)a3 surfacedBy:(id)a4 error:(id *)a5;
@end

@implementation FCRecipeItemFactory

- (FCRecipeItemFactory)initWithRecipeRecordSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCRecipeItemFactory;
  v6 = [(FCRecipeItemFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipeRecordSource, a3);
  }

  return v7;
}

- (NSArray)requiredRecipeKeys
{
  v2 = [(FCRecipeItemFactory *)self recipeRecordSource];
  v3 = [FCRecipeItem keysForRecipeRecordWithRecordSource:v2];

  return v3;
}

- (id)recipeItemFromPBRecord:(id)a3 surfacedBy:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[FCCKProtocolTranslator sharedInstance];
  v11 = [(FCCKProtocolTranslator *)v10 recordFromPRecord:v9];

  v12 = [(FCRecipeItemFactory *)self recipeItemFromCKRecord:v11 surfacedBy:v8 error:a5];

  return v12;
}

- (id)recipeItemFromCKRecord:(id)a3 surfacedBy:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 recordType];
  v11 = [v10 isEqualToString:@"Recipe"];

  if (v11)
  {
    v12 = [(FCRecipeItemFactory *)self recipeRecordSource];
    v13 = [v12 convertRecord:v8];

    a5 = [[FCRecipeItem alloc] initWithRecipeRecord:v13 surfacedBy:v9 error:a5];
  }

  else
  {
    if (!a5)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = MEMORY[0x1E696AEC0];
    v13 = [v8 recordType];
    v16 = [v15 stringWithFormat:@"Can't created a recipe item from record type %@", v13];
    *a5 = [v14 fc_errorWithCode:16 description:v16];

    a5 = 0;
  }

LABEL_6:

  return a5;
}

@end