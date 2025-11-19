@interface CKMessagesQueryController
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)a3;
- (unint64_t)maxResultsForMode:(unint64_t)a3;
- (void)searchWithText:(id)a3;
@end

@implementation CKMessagesQueryController

- (id)fetchAttributes
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isSearchImprovementsEnabled];

  v4 = *MEMORY[0x1E6964B58];
  if (v3)
  {
    v15[0] = *MEMORY[0x1E6964BB0];
    v15[1] = v4;
    v5 = *MEMORY[0x1E6963D18];
    v15[2] = *MEMORY[0x1E6963E78];
    v15[3] = v5;
    v15[4] = *MEMORY[0x1E6963CE8];
    v15[5] = @"com_apple_mobilesms_mentionedAddresses";
    v6 = *MEMORY[0x1E69645D0];
    v15[6] = *MEMORY[0x1E69644B8];
    v15[7] = v6;
    v7 = *MEMORY[0x1E69645C8];
    v15[8] = *MEMORY[0x1E6964B18];
    v15[9] = v7;
    v8 = MEMORY[0x1E695DEC8];
    v9 = v15;
    v10 = 10;
  }

  else
  {
    v14[0] = *MEMORY[0x1E6964BB0];
    v14[1] = v4;
    v11 = *MEMORY[0x1E6964B18];
    v14[2] = *MEMORY[0x1E6963E78];
    v14[3] = v11;
    v8 = MEMORY[0x1E695DEC8];
    v9 = v14;
    v10 = 4;
  }

  v12 = [v8 arrayWithObjects:v9 count:v10];

  return v12;
}

- (id)queryAttributesForText:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6964B58];
  v6[0] = *MEMORY[0x1E6964BB0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)filterQueries
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = [(CKQueryController *)self useSemanticQuery];
  v3 = *MEMORY[0x1E69645D0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ != %@", *MEMORY[0x1E69645D0], @"tpbck"];
  v5 = v4;
  if (v2)
  {
    v12[0] = v4;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ != %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
    v12[1] = v6;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", v3, @"msg"];
    v12[2] = v7;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6964BB0], @"*"];
    v12[3] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  }

  else
  {
    v11 = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  }

  return v9;
}

- (void)searchWithText:(id)a3
{
  v4 = a3;
  if ([(CKQueryController *)self mode]== 1)
  {
    [(CKMessageTypeQueryController *)self searchEnded];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKMessagesQueryController;
    [(CKMessageTypeQueryController *)&v5 searchWithText:v4];
  }
}

- (unint64_t)maxResultsForMode:(unint64_t)a3
{
  if ([(CKQueryController *)self mode]< 2)
  {
    return 3;
  }

  v6.receiver = self;
  v6.super_class = CKMessagesQueryController;
  return [(CKMessageTypeQueryController *)&v6 maxResultsForMode:a3];
}

@end