@interface TimeseriesInternal
- (TimeseriesInternal)init;
- (id)runBinomialTestTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 pHypothesis:(id)a9 error:(id *)a10;
- (id)runChangeDetectionWithEvents:(id)a3 test:(id)a4 lastRun:(id)a5;
- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 error:(id *)a9;
@end

@implementation TimeseriesInternal

- (id)runChangeDetectionWithEvents:(id)a3 test:(id)a4 lastRun:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_25C7CD274();
  sub_25C7C0540(0, &qword_27FC159B8, 0x277D82BB8);
  v12 = sub_25C7CD204();
  if (a5)
  {
    sub_25C7CD1C4();
    v13 = sub_25C7CD1D4();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_25C7CD1D4();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = self;
  sub_25C7C06D8(v11, v12, v10);

  sub_25C7C528C(v10, &qword_27FC15920, &qword_25C7CE220);
  v16 = sub_25C7CD1F4();

  return v16;
}

- (id)runBinomialTestTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 pHypothesis:(id)a9 error:(id *)a10
{
  v34 = a8;
  v35 = self;
  v31 = a10;
  v33 = a9;
  v12 = sub_25C7CD1D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - v19;
  sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
  v21 = sub_25C7CD274();
  v22 = sub_25C7CD274();
  v23 = sub_25C7CD234();
  v25 = v24;
  if (a7)
  {
    sub_25C7CD1C4();
    (*(v13 + 32))(v20, v16, v12);
    (*(v13 + 56))(v20, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v20, 1, 1, v12);
  }

  v32 = a6;
  v26 = v34;
  v27 = v33;
  v28 = v35;
  sub_25C7C273C(v21, v22, v23, v25, a6, v20, v26, v27);
  sub_25C7C528C(v20, &qword_27FC15920, &qword_25C7CE220);

  sub_25C7C0540(0, &qword_27FC159F0, off_2799B94B0);
  v29 = sub_25C7CD264();

  return v29;
}

- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 error:(id *)a9
{
  v31 = self;
  v32 = a8;
  v30 = a9;
  v11 = sub_25C7CD1D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
  v20 = sub_25C7CD274();
  v21 = sub_25C7CD274();
  v22 = sub_25C7CD234();
  v24 = v23;
  if (a7)
  {
    sub_25C7CD1C4();
    (*(v12 + 32))(v19, v15, v11);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v19, 1, 1, v11);
  }

  v25 = a6;
  v26 = v32;
  v27 = v31;
  sub_25C7C3A20(v20, v21, v22, v24, a6, v19, v26);
  sub_25C7C528C(v19, &qword_27FC15920, &qword_25C7CE220);

  sub_25C7C0540(0, &qword_27FC159E8, &off_2799B94B8);
  v28 = sub_25C7CD264();

  return v28;
}

- (TimeseriesInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Timeseries();
  return [(TimeseriesInternal *)&v3 init];
}

@end