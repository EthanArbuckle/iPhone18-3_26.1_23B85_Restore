@interface CSSearchableItem(SGMISpotlightUtility)
- (void)standardizeCSPersons;
@end

@implementation CSSearchableItem(SGMISpotlightUtility)

- (void)standardizeCSPersons
{
  attributeSet = [self attributeSet];
  authors = [attributeSet authors];

  if (!authors)
  {
    copyReconstructedAuthors = [self copyReconstructedAuthors];
    attributeSet2 = [self attributeSet];
    [attributeSet2 setAuthors:copyReconstructedAuthors];
  }

  attributeSet3 = [self attributeSet];
  primaryRecipients = [attributeSet3 primaryRecipients];

  if (!primaryRecipients)
  {
    copyReconstructedPrimaryRecipients = [self copyReconstructedPrimaryRecipients];
    attributeSet4 = [self attributeSet];
    [attributeSet4 setPrimaryRecipients:copyReconstructedPrimaryRecipients];
  }

  attributeSet5 = [self attributeSet];
  additionalRecipients = [attributeSet5 additionalRecipients];

  if (!additionalRecipients)
  {
    copyReconstructedAdditionalRecipients = [self copyReconstructedAdditionalRecipients];
    attributeSet6 = [self attributeSet];
    [attributeSet6 setAdditionalRecipients:copyReconstructedAdditionalRecipients];
  }
}

@end