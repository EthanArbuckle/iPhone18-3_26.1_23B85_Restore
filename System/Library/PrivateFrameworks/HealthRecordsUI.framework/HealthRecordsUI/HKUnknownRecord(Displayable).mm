@interface HKUnknownRecord(Displayable)
- (void)fetchDetailItemsWithHealthRecordsStore:()Displayable conceptStore:completion:;
@end

@implementation HKUnknownRecord(Displayable)

- (void)fetchDetailItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__HKUnknownRecord_Displayable__fetchDetailItemsWithHealthRecordsStore_conceptStore_completion___block_invoke;
  v9[3] = &unk_1E83DCEF0;
  v9[4] = a1;
  v10 = v7;
  v8 = v7;
  [a3 stringifyExtractionFailureReasonsForRecord:a1 completion:v9];
}

@end