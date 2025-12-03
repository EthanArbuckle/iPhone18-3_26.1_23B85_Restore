@interface CKTranscriptCollectionSupplementaryView
+ (id)supplementaryViewKindForGUID:(id)d;
@end

@implementation CKTranscriptCollectionSupplementaryView

+ (id)supplementaryViewKindForGUID:(id)d
{
  v4 = MEMORY[0x1E696AEC0];
  dCopy = d;
  supplementaryViewKindPrefix = [self supplementaryViewKindPrefix];
  dCopy = [v4 stringWithFormat:@"%@%@", supplementaryViewKindPrefix, dCopy];

  return dCopy;
}

@end