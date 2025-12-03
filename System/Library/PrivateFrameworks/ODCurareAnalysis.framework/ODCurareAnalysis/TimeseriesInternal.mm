@interface TimeseriesInternal
- (TimeseriesInternal)init;
- (id)runBinomialTestTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level pHypothesis:(id)hypothesis error:(id *)self0;
- (id)runChangeDetectionWithEvents:(id)events test:(id)test lastRun:(id)run;
- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level error:(id *)error;
@end

@implementation TimeseriesInternal

- (id)runChangeDetectionWithEvents:(id)events test:(id)test lastRun:(id)run
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_25C7CD274();
  sub_25C7C0540(0, &qword_27FC159B8, 0x277D82BB8);
  v12 = sub_25C7CD204();
  if (run)
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

  selfCopy = self;
  sub_25C7C06D8(v11, v12, v10);

  sub_25C7C528C(v10, &qword_27FC15920, &qword_25C7CE220);
  v16 = sub_25C7CD1F4();

  return v16;
}

- (id)runBinomialTestTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level pHypothesis:(id)hypothesis error:(id *)self0
{
  levelCopy = level;
  selfCopy = self;
  errorCopy = error;
  hypothesisCopy = hypothesis;
  v12 = sub_25C7CD1D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &errorCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &errorCopy - v19;
  sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
  v21 = sub_25C7CD274();
  v22 = sub_25C7CD274();
  v23 = sub_25C7CD234();
  v25 = v24;
  if (test)
  {
    sub_25C7CD1C4();
    (*(v13 + 32))(v20, v16, v12);
    (*(v13 + 56))(v20, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v20, 1, 1, v12);
  }

  sizeCopy = size;
  v26 = levelCopy;
  v27 = hypothesisCopy;
  v28 = selfCopy;
  sub_25C7C273C(v21, v22, v23, v25, size, v20, v26, v27);
  sub_25C7C528C(v20, &qword_27FC15920, &qword_25C7CE220);

  sub_25C7C0540(0, &qword_27FC159F0, off_2799B94B0);
  v29 = sub_25C7CD264();

  return v29;
}

- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level error:(id *)error
{
  selfCopy = self;
  levelCopy = level;
  errorCopy = error;
  v11 = sub_25C7CD1D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &errorCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &errorCopy - v18;
  sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
  v20 = sub_25C7CD274();
  v21 = sub_25C7CD274();
  v22 = sub_25C7CD234();
  v24 = v23;
  if (test)
  {
    sub_25C7CD1C4();
    (*(v12 + 32))(v19, v15, v11);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v19, 1, 1, v11);
  }

  sizeCopy = size;
  v26 = levelCopy;
  v27 = selfCopy;
  sub_25C7C3A20(v20, v21, v22, v24, size, v19, v26);
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