@interface CKTranscriptCollectionSupplementaryView
+ (id)supplementaryViewKindForGUID:(id)a3;
@end

@implementation CKTranscriptCollectionSupplementaryView

+ (id)supplementaryViewKindForGUID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 supplementaryViewKindPrefix];
  v7 = [v4 stringWithFormat:@"%@%@", v6, v5];

  return v7;
}

@end