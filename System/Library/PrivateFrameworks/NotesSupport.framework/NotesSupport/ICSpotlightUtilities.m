@interface ICSpotlightUtilities
+ (id)queryFields;
+ (id)rankingQueryFieldsForGenericHighlighting;
+ (id)rankingQueryFieldsForSorting;
+ (id)rankingQueryFieldsForWordSpecificHighlighting;
+ (id)stringByEscapingSearchString:(id)a3;
@end

@implementation ICSpotlightUtilities

+ (id)queryFields
{
  if (queryFields_onceTokenForAllQueryFields != -1)
  {
    +[ICSpotlightUtilities queryFields];
  }

  v3 = queryFields_allQueryFields;

  return v3;
}

void __35__ICSpotlightUtilities_queryFields__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6963D18];
  v4[0] = @"_ICItemDisplayName";
  v4[1] = v0;
  v1 = *MEMORY[0x1E6964848];
  v4[2] = *MEMORY[0x1E6964BB0];
  v4[3] = v1;
  v4[4] = *MEMORY[0x1E6964858];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v3 = queryFields_allQueryFields;
  queryFields_allQueryFields = v2;
}

+ (id)rankingQueryFieldsForGenericHighlighting
{
  if (rankingQueryFieldsForGenericHighlighting_onceTokenForAllQueryFields != -1)
  {
    +[ICSpotlightUtilities rankingQueryFieldsForGenericHighlighting];
  }

  v3 = rankingQueryFieldsForGenericHighlighting_rankingQueryFields;

  return v3;
}

void __64__ICSpotlightUtilities_rankingQueryFieldsForGenericHighlighting__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6963D18];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = rankingQueryFieldsForGenericHighlighting_rankingQueryFields;
  rankingQueryFieldsForGenericHighlighting_rankingQueryFields = v1;
}

+ (id)rankingQueryFieldsForWordSpecificHighlighting
{
  if (rankingQueryFieldsForWordSpecificHighlighting_onceTokenForAllQueryFields != -1)
  {
    +[ICSpotlightUtilities rankingQueryFieldsForWordSpecificHighlighting];
  }

  v3 = rankingQueryFieldsForWordSpecificHighlighting_rankingQueryFields;

  return v3;
}

void __69__ICSpotlightUtilities_rankingQueryFieldsForWordSpecificHighlighting__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6964BB0];
  v4[0] = @"_ICItemDisplayName";
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = rankingQueryFieldsForWordSpecificHighlighting_rankingQueryFields;
  rankingQueryFieldsForWordSpecificHighlighting_rankingQueryFields = v2;
}

+ (id)rankingQueryFieldsForSorting
{
  if (rankingQueryFieldsForSorting_onceTokenForAllQueryFields != -1)
  {
    +[ICSpotlightUtilities rankingQueryFieldsForSorting];
  }

  v3 = rankingQueryFieldsForSorting_rankingQueryFields;

  return v3;
}

void __52__ICSpotlightUtilities_rankingQueryFieldsForSorting__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7 = @"_ICItemDisplayName";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v8[0] = v0;
  v6 = *MEMORY[0x1E6963D18];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[1] = v1;
  v5 = *MEMORY[0x1E6964BB0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v8[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = rankingQueryFieldsForSorting_rankingQueryFields;
  rankingQueryFieldsForSorting_rankingQueryFields = v3;
}

+ (id)stringByEscapingSearchString:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

@end