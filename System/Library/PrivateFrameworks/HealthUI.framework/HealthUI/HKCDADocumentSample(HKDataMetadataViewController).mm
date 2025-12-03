@interface HKCDADocumentSample(HKDataMetadataViewController)
- (HKCDADocumentShareItemSource)dataForSharingWithHealthStore:()HKDataMetadataViewController;
@end

@implementation HKCDADocumentSample(HKDataMetadataViewController)

- (HKCDADocumentShareItemSource)dataForSharingWithHealthStore:()HKDataMetadataViewController
{
  v4 = a3;
  v5 = [[HKCDADocumentShareItemSource alloc] initWithDocumentSample:self healthStore:v4];

  return v5;
}

@end