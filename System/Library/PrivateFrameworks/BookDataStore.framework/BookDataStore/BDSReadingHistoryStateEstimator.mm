@interface BDSReadingHistoryStateEstimator
- (id)estimateCurrentStateInfoWithExistingStateInfo:(id)info;
@end

@implementation BDSReadingHistoryStateEstimator

- (id)estimateCurrentStateInfoWithExistingStateInfo:(id)info
{
  v5 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  v15 = sub_1E4709CCC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  infoCopy = info;
  selfCopy = self;
  sub_1E4709CBC();
  sub_1E469FA98(v14, &v14[*(v6 + 56)], v20);
  sub_1E465E0B0(v14, v10, &unk_1ECF74C48, &qword_1E471D598);
  v23 = *(v6 + 56);
  v24 = sub_1E469FF74(v10, &v10[v23], infoCopy);

  sub_1E465E050(v14, &unk_1ECF74C48, &qword_1E471D598);
  v25 = *(v16 + 8);
  v25(v20, v15);
  v25(&v10[v23], v15);
  v25(v10, v15);

  return v24;
}

@end