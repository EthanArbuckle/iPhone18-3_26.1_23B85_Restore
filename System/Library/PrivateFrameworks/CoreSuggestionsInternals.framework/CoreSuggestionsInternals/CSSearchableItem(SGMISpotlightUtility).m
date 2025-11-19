@interface CSSearchableItem(SGMISpotlightUtility)
- (void)standardizeCSPersons;
@end

@implementation CSSearchableItem(SGMISpotlightUtility)

- (void)standardizeCSPersons
{
  v2 = [a1 attributeSet];
  v3 = [v2 authors];

  if (!v3)
  {
    v4 = [a1 copyReconstructedAuthors];
    v5 = [a1 attributeSet];
    [v5 setAuthors:v4];
  }

  v6 = [a1 attributeSet];
  v7 = [v6 primaryRecipients];

  if (!v7)
  {
    v8 = [a1 copyReconstructedPrimaryRecipients];
    v9 = [a1 attributeSet];
    [v9 setPrimaryRecipients:v8];
  }

  v10 = [a1 attributeSet];
  v11 = [v10 additionalRecipients];

  if (!v11)
  {
    v13 = [a1 copyReconstructedAdditionalRecipients];
    v12 = [a1 attributeSet];
    [v12 setAdditionalRecipients:v13];
  }
}

@end