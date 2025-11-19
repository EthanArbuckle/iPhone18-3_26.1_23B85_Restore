@interface HKCDADocumentSample(HKDataMetadataViewController)
- (HKCDADocumentShareItemSource)dataForSharingWithHealthStore:()HKDataMetadataViewController;
@end

@implementation HKCDADocumentSample(HKDataMetadataViewController)

- (HKCDADocumentShareItemSource)dataForSharingWithHealthStore:()HKDataMetadataViewController
{
  v4 = a3;
  v5 = [[HKCDADocumentShareItemSource alloc] initWithDocumentSample:a1 healthStore:v4];

  return v5;
}

@end