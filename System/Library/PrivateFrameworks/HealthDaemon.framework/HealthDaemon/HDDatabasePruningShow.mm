@interface HDDatabasePruningShow
+ (id)classifiedDeletedSampleInfoWithProfile:(id)a3 referenceDate:(id)a4 anchor:(int64_t)a5 limit:(int64_t)a6 error:(id *)a7;
+ (id)classifiedDeletedSampleInfoWithProfile:(id)a3 referenceDate:(id)a4 createdOnOrAfter:(id)a5 createdBefore:(id)a6 limit:(int64_t)a7 error:(id *)a8;
+ (id)deletedSampleDetailWithProfile:(id)a3 matchingPredicatesOnly:(BOOL)a4 referenceDate:(id)a5 sampleUUID:(id)a6 error:(id *)a7;
+ (id)deletedSamplesDetailWithProfile:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 referenceDate:(id)a6 anchor:(int64_t)a7 limit:(int64_t)a8 error:(id *)a9;
+ (id)deletedSamplesDetailWithProfile:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 referenceDate:(id)a6 createdOnOrAfter:(id)a7 createdBefore:(id)a8 limit:(int64_t)a9 error:(id *)a10;
+ (id)showWithProfile:(id)a3 deletedSamplesOnly:(BOOL)a4 referenceDate:(id)a5 error:(id *)a6;
- (HDDatabasePruningShow)init;
@end

@implementation HDDatabasePruningShow

+ (id)showWithProfile:(id)a3 deletedSamplesOnly:(BOOL)a4 referenceDate:(id)a5 error:(id *)a6
{
  v6 = a4;
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  v13 = a3;
  v14 = sub_2289FF154(v13, v6, v12);
  v16 = v15;
  (*(v9 + 8))(v12, v8);

  v17 = sub_22911B80C();
  sub_2289BCF3C(v14, v16);

  return v17;
}

+ (id)classifiedDeletedSampleInfoWithProfile:(id)a3 referenceDate:(id)a4 anchor:(int64_t)a5 limit:(int64_t)a6 error:(id *)a7
{
  v10 = sub_22911B88C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  v15 = a3;
  v16 = sub_2289FFF34(v15, v14, a5, a6);
  v18 = v17;
  (*(v11 + 8))(v14, v10);

  v19 = sub_22911B80C();
  sub_2289BCF3C(v16, v18);

  return v19;
}

+ (id)classifiedDeletedSampleInfoWithProfile:(id)a3 referenceDate:(id)a4 createdOnOrAfter:(id)a5 createdBefore:(id)a6 limit:(int64_t)a7 error:(id *)a8
{
  v35 = a8;
  v36 = a3;
  v37 = a7;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = sub_22911B88C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  sub_22911B86C();
  if (a5)
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
  if (a6)
  {
    sub_22911B86C();
    (*(v18 + 32))(v14, v22, v17);
    v27 = 0;
  }

  v26(v14, v27, 1, v17);
  v28 = v36;
  v29 = sub_228A00458(v28, v24, v16, v14, v37);
  v31 = v30;

  v32 = MEMORY[0x277CC9578];
  sub_228A03EB8(v14, &qword_27D862B48, MEMORY[0x277CC9578]);
  sub_228A03EB8(v16, &qword_27D862B48, v32);
  (*(v18 + 8))(v24, v17);
  v33 = sub_22911B80C();
  sub_2289BCF3C(v29, v31);

  return v33;
}

+ (id)deletedSampleDetailWithProfile:(id)a3 matchingPredicatesOnly:(BOOL)a4 referenceDate:(id)a5 sampleUUID:(id)a6 error:(id *)a7
{
  v25[0] = a7;
  v7 = a4;
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
  v19 = a3;
  v20 = sub_228A00A1C(v19, v7, v18, v13);
  v22 = v21;

  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
  v23 = sub_22911B80C();
  sub_2289BCF3C(v20, v22);

  return v23;
}

+ (id)deletedSamplesDetailWithProfile:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 referenceDate:(id)a6 anchor:(int64_t)a7 limit:(int64_t)a8 error:(id *)a9
{
  v11 = a5;
  v12 = a4;
  v14 = sub_22911B88C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  v19 = a3;
  v20 = sub_228A01894(v19, v12, v11, v18, a7, a8);
  v21 = v18;
  v23 = v22;
  (*(v15 + 8))(v21, v14);

  v24 = sub_22911B80C();
  sub_2289BCF3C(v20, v23);

  return v24;
}

+ (id)deletedSamplesDetailWithProfile:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 referenceDate:(id)a6 createdOnOrAfter:(id)a7 createdBefore:(id)a8 limit:(int64_t)a9 error:(id *)a10
{
  v41 = a5;
  v39 = a4;
  v37 = a10;
  v38 = a3;
  v40 = a9;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = sub_22911B88C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  sub_22911B86C();
  if (a7)
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
  if (a8)
  {
    sub_22911B86C();
    (*(v20 + 32))(v16, v24, v19);
    v29 = 0;
  }

  v28(v16, v29, 1, v19);
  v30 = v38;
  v31 = sub_228A02588(v30, v39, v41, v26, v18, v16, v40);
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