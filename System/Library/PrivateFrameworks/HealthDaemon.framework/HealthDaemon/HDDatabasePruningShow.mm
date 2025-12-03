@interface HDDatabasePruningShow
+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error;
+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)error;
+ (id)deletedSampleDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only referenceDate:(id)date sampleUUID:(id)d error:(id *)error;
+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error;
+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)self0;
+ (id)showWithProfile:(id)profile deletedSamplesOnly:(BOOL)only referenceDate:(id)date error:(id *)error;
- (HDDatabasePruningShow)init;
@end

@implementation HDDatabasePruningShow

+ (id)showWithProfile:(id)profile deletedSamplesOnly:(BOOL)only referenceDate:(id)date error:(id *)error
{
  onlyCopy = only;
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  profileCopy = profile;
  v14 = sub_2289FF154(profileCopy, onlyCopy, v12);
  v16 = v15;
  (*(v9 + 8))(v12, v8);

  v17 = sub_22911B80C();
  sub_2289BCF3C(v14, v16);

  return v17;
}

+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error
{
  v10 = sub_22911B88C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  profileCopy = profile;
  v16 = sub_2289FFF34(profileCopy, v14, anchor, limit);
  v18 = v17;
  (*(v11 + 8))(v14, v10);

  v19 = sub_22911B80C();
  sub_2289BCF3C(v16, v18);

  return v19;
}

+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)error
{
  errorCopy = error;
  profileCopy = profile;
  limitCopy = limit;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &errorCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &errorCopy - v15;
  v17 = sub_22911B88C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &errorCopy - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &errorCopy - v23;
  sub_22911B86C();
  if (after)
  {
    sub_22911B86C();
    (*(v18 + 32))(v16, v22, v17);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v18 + 56);
  v27 = 1;
  v26(v16, v25, 1, v17);
  if (before)
  {
    sub_22911B86C();
    (*(v18 + 32))(v14, v22, v17);
    v27 = 0;
  }

  v26(v14, v27, 1, v17);
  v28 = profileCopy;
  v29 = sub_228A00458(v28, v24, v16, v14, limitCopy);
  v31 = v30;

  v32 = MEMORY[0x277CC9578];
  sub_228A03EB8(v14, &qword_27D862B48, MEMORY[0x277CC9578]);
  sub_228A03EB8(v16, &qword_27D862B48, v32);
  (*(v18 + 8))(v24, v17);
  v33 = sub_22911B80C();
  sub_2289BCF3C(v29, v31);

  return v33;
}

+ (id)deletedSampleDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only referenceDate:(id)date sampleUUID:(id)d error:(id *)error
{
  v25[0] = error;
  onlyCopy = only;
  v9 = sub_22911B8DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911B88C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  sub_22911B8CC();
  profileCopy = profile;
  v20 = sub_228A00A1C(profileCopy, onlyCopy, v18, v13);
  v22 = v21;

  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
  v23 = sub_22911B80C();
  sub_2289BCF3C(v20, v22);

  return v23;
}

+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error
{
  outcomesOnlyCopy = outcomesOnly;
  onlyCopy = only;
  v14 = sub_22911B88C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  profileCopy = profile;
  v20 = sub_228A01894(profileCopy, onlyCopy, outcomesOnlyCopy, v18, anchor, limit);
  v21 = v18;
  v23 = v22;
  (*(v15 + 8))(v21, v14);

  v24 = sub_22911B80C();
  sub_2289BCF3C(v20, v23);

  return v24;
}

+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)self0
{
  outcomesOnlyCopy = outcomesOnly;
  onlyCopy = only;
  errorCopy = error;
  profileCopy = profile;
  limitCopy = limit;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &errorCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &errorCopy - v17;
  v19 = sub_22911B88C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &errorCopy - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &errorCopy - v25;
  sub_22911B86C();
  if (after)
  {
    sub_22911B86C();
    (*(v20 + 32))(v18, v24, v19);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v20 + 56);
  v29 = 1;
  v28(v18, v27, 1, v19);
  if (before)
  {
    sub_22911B86C();
    (*(v20 + 32))(v16, v24, v19);
    v29 = 0;
  }

  v28(v16, v29, 1, v19);
  v30 = profileCopy;
  v31 = sub_228A02588(v30, onlyCopy, outcomesOnlyCopy, v26, v18, v16, limitCopy);
  v33 = v32;

  v34 = MEMORY[0x277CC9578];
  sub_228A03EB8(v16, &qword_27D862B48, MEMORY[0x277CC9578]);
  sub_228A03EB8(v18, &qword_27D862B48, v34);
  (*(v20 + 8))(v26, v19);
  v35 = sub_22911B80C();
  sub_2289BCF3C(v31, v33);

  return v35;
}

- (HDDatabasePruningShow)init
{
  v3.receiver = self;
  v3.super_class = HDDatabasePruningShow;
  return [(HDDatabasePruningShow *)&v3 init];
}

@end