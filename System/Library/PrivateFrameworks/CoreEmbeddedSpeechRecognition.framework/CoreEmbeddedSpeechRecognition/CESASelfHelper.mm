@interface CESASelfHelper
+ (void)logASRContextualEntityRetrievalEnd:(id)a3 retrievedEntityMetrics:(id)a4;
+ (void)logASRContextualEntityRetrievalStart:(id)a3 retrievalParameters:(id)a4;
+ (void)logContextualReplayBiomeRecordCreated:(id)a3;
+ (void)logContextualReplayBiomeRecordDeleted:(id)a3;
+ (void)logPersonalizationExperimentEndedWithAsrId:(id)a3 dodmlId:(id)a4 replayResults:(id)a5;
+ (void)logPersonalizationExperimentStartedWithAsrId:(id)a3 dodmlId:(id)a4;
@end

@implementation CESASelfHelper

+ (void)logASRContextualEntityRetrievalStart:(id)a3 retrievalParameters:(id)a4
{
  v7[1] = a1;
  v12 = a3;
  v13 = a4;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BE0](v13);
  v11 = sub_226098A78();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v4, v5, v6);
  v10 = v7 - v7[0];
  sub_226098A48();
  swift_getObjCClassMetadata();
  sub_22603E620(v10, v13);
  (*(v8 + 8))(v10, v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
}

+ (void)logASRContextualEntityRetrievalEnd:(id)a3 retrievedEntityMetrics:(id)a4
{
  v13 = a1;
  v14 = a3;
  v20 = a4;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](v14);
  MEMORY[0x277D82BE0](v20);
  v15 = sub_226098A78();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v4, v5, v6);
  v19 = &v7 - v18;
  sub_226098A48();
  if (v20)
  {
    v12 = v20;
    v9 = v20;
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
  MEMORY[0x277D82BD8](v14);
}

+ (void)logContextualReplayBiomeRecordCreated:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = sub_226099A08();
    v5 = v3;
    MEMORY[0x277D82BD8](a3);
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

+ (void)logContextualReplayBiomeRecordDeleted:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = sub_226099A08();
    v5 = v3;
    MEMORY[0x277D82BD8](a3);
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

+ (void)logPersonalizationExperimentStartedWithAsrId:(id)a3 dodmlId:(id)a4
{
  v27 = a4;
  v28 = a3;
  v25 = a1;
  v26 = a3;
  swift_getObjCClassMetadata();
  v4 = v28;
  v5 = v27;
  if (v28)
  {
    v24 = v26;
    v19 = v26;
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
  MEMORY[0x28223BE20](v27, &v11, v8, v9);
  v15 = &v11 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A48();
  swift_getObjCClassMetadata();
  sub_22603C3F4(v13, v18, v15);
  (*(v14 + 8))(v15, v16);
}

+ (void)logPersonalizationExperimentEndedWithAsrId:(id)a3 dodmlId:(id)a4 replayResults:(id)a5
{
  v31 = a5;
  v30 = a4;
  v32 = a3;
  v28 = a1;
  v29 = a3;
  swift_getObjCClassMetadata();
  v5 = v32;
  v6 = v30;
  v7 = v31;
  if (v32)
  {
    v27 = v29;
    v22 = v29;
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
  MEMORY[0x28223BE20](v30, &v13, v10, v11);
  v18 = &v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A48();
  v16 = sub_226099878();
  swift_getObjCClassMetadata();
  sub_22603C688(v15, v21, v18, v16);

  (*(v17 + 8))(v18, v19);
}

@end