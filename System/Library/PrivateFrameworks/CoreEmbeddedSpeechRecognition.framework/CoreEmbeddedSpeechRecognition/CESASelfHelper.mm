@interface CESASelfHelper
+ (void)logASRContextualEntityRetrievalEnd:(id)end retrievedEntityMetrics:(id)metrics;
+ (void)logASRContextualEntityRetrievalStart:(id)start retrievalParameters:(id)parameters;
+ (void)logContextualReplayBiomeRecordCreated:(id)created;
+ (void)logContextualReplayBiomeRecordDeleted:(id)deleted;
+ (void)logPersonalizationExperimentEndedWithAsrId:(id)id dodmlId:(id)dodmlId replayResults:(id)results;
+ (void)logPersonalizationExperimentStartedWithAsrId:(id)id dodmlId:(id)dodmlId;
@end

@implementation CESASelfHelper

+ (void)logASRContextualEntityRetrievalStart:(id)start retrievalParameters:(id)parameters
{
  v7[1] = self;
  startCopy = start;
  parametersCopy = parameters;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](startCopy);
  MEMORY[0x277D82BE0](parametersCopy);
  v11 = sub_226098A78();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](startCopy, v4, v5, v6);
  v10 = v7 - v7[0];
  sub_226098A48();
  swift_getObjCClassMetadata();
  sub_22603E620(v10, parametersCopy);
  (*(v8 + 8))(v10, v11);
  MEMORY[0x277D82BD8](startCopy);
  MEMORY[0x277D82BD8](parametersCopy);
}

+ (void)logASRContextualEntityRetrievalEnd:(id)end retrievedEntityMetrics:(id)metrics
{
  selfCopy = self;
  endCopy = end;
  metricsCopy = metrics;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](endCopy);
  MEMORY[0x277D82BE0](metricsCopy);
  v15 = sub_226098A78();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](endCopy, v4, v5, v6);
  v19 = &v7 - v18;
  sub_226098A48();
  if (metricsCopy)
  {
    v12 = metricsCopy;
    v9 = metricsCopy;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
    v10 = sub_226099C88();
    MEMORY[0x277D82BD8](v9);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v8 = v11;
  swift_getObjCClassMetadata();
  sub_22603F798(v19, v8);

  (*(v16 + 8))(v19, v15);
  MEMORY[0x277D82BD8](endCopy);
}

+ (void)logContextualReplayBiomeRecordCreated:(id)created
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](created);
  if (created)
  {
    v4 = sub_226099A08();
    v5 = v3;
    MEMORY[0x277D82BD8](created);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  sub_226040104(v6, v7);
}

+ (void)logContextualReplayBiomeRecordDeleted:(id)deleted
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](deleted);
  if (deleted)
  {
    v4 = sub_226099A08();
    v5 = v3;
    MEMORY[0x277D82BD8](deleted);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  sub_226044FA4(v6, v7);
}

+ (void)logPersonalizationExperimentStartedWithAsrId:(id)id dodmlId:(id)dodmlId
{
  dodmlIdCopy = dodmlId;
  idCopy = id;
  selfCopy = self;
  idCopy2 = id;
  swift_getObjCClassMetadata();
  v4 = idCopy;
  v5 = dodmlIdCopy;
  if (idCopy)
  {
    v24 = idCopy2;
    v19 = idCopy2;
    v20 = sub_226099A08();
    v21 = v6;

    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v18 = v23;
  v13 = v22;
  v16 = sub_226098A78();
  v12 = *(v16 - 8);
  v14 = v12;
  v7 = *(v12 + 64);
  v17 = &v11;
  MEMORY[0x28223BE20](dodmlIdCopy, &v11, v8, v9);
  v15 = &v11 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A48();
  swift_getObjCClassMetadata();
  sub_22603C3F4(v13, v18, v15);
  (*(v14 + 8))(v15, v16);
}

+ (void)logPersonalizationExperimentEndedWithAsrId:(id)id dodmlId:(id)dodmlId replayResults:(id)results
{
  resultsCopy = results;
  dodmlIdCopy = dodmlId;
  idCopy = id;
  selfCopy = self;
  idCopy2 = id;
  swift_getObjCClassMetadata();
  v5 = idCopy;
  v6 = dodmlIdCopy;
  v7 = resultsCopy;
  if (idCopy)
  {
    v27 = idCopy2;
    v22 = idCopy2;
    v23 = sub_226099A08();
    v24 = v8;

    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v21 = v26;
  v15 = v25;
  v19 = sub_226098A78();
  v14 = *(v19 - 8);
  v17 = v14;
  v9 = *(v14 + 64);
  v20 = &v13;
  MEMORY[0x28223BE20](dodmlIdCopy, &v13, v10, v11);
  v18 = &v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A48();
  v16 = sub_226099878();
  swift_getObjCClassMetadata();
  sub_22603C688(v15, v21, v18, v16);

  (*(v17 + 8))(v18, v19);
}

@end