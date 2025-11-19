void sub_2289BF1C0()
{
  if (!qword_27D862B88)
  {
    sub_22911C68C();
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B88);
    }
  }
}

unint64_t sub_2289BF2A4()
{
  sub_2289BF380();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  v2 = *(v0 + 80);
  v2(v10);
  v3 = v10[2];
  v4 = v10[3];

  *(inited + 32) = v3;
  *(inited + 40) = v4;
  (v2)(v9, v5);
  v6 = v9[4];

  *(inited + 48) = v6;
  v7 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v7;
}

void sub_2289BF380()
{
  if (!qword_27D862B68)
  {
    sub_2289BF3F4(255, &qword_27D862B70, sub_2289BF458);
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B68);
    }
  }
}

void sub_2289BF3F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2289BF458()
{
  result = qword_27D862AF8;
  if (!qword_27D862AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862AF8);
  }

  return result;
}

id HDHRMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2289BF76C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2289BF7B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2289BF80C()
{
  result = qword_27D862D98;
  if (!qword_27D862D98)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D862D98);
  }

  return result;
}

id HDHRIndicatorCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIndicatorCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIndicatorCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIndicatorCollectionEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIndicatorCollectionEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon29HDHRIndicatorCollectionEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v45 = 4 * v6;
  v8 = v6;
  v9 = swift_allocObject();
  v44 = v9;
  *(v9 + 16) = xmmword_229163F30;
  v10 = v9 + v7;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000021;
  *(v11 + 24) = 0x80000002291820F0;
  *v4 = v11;
  v12 = *(v1 + 104);
  v12(v4, *MEMORY[0x277D109D0], v0);
  v46 = v12;
  v40 = v10;
  sub_22911C67C();
  v13 = sub_22911C35C();
  v42 = v14;
  v43 = v13;
  sub_2289B5B9C();
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *(v16 + 48);
  *v18 = 0xD000000000000010;
  *(v18 + 1) = 0x8000000229182120;
  v21 = *MEMORY[0x277D109B8];
  v22 = sub_22911C64C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v4 = v17;
  v12(v4, *MEMORY[0x277D109C8], v0);
  v41 = v8;
  sub_22911C67C();
  v43 = "rCollectionEntity";
  v23 = sub_22911C65C();
  v24 = swift_allocBox();
  v25 = *MEMORY[0x277D109D8];
  v42 = *(*(v23 - 8) + 104);
  HIDWORD(v39) = v25;
  v42(v26, v25, v23);
  *v4 = v24;
  v27 = *MEMORY[0x277D109F8];
  v28 = v0;
  v29 = v0;
  v30 = v46;
  v46(v4, v27, v28);
  sub_22911C67C();
  v43 = (2 * v8 + v41);
  v31 = swift_allocBox();
  v33 = v32;
  v34 = v25;
  v35 = v42;
  v42(v33, v34, v23);
  *v4 = v31;
  v30(v4, v27, v29);
  sub_22911C67C();
  v36 = swift_allocBox();
  v35(v37, HIDWORD(v39), v23);
  *v4 = v36;
  v46(v4, v27, v29);
  sub_22911C67C();
  return v44;
}

id sub_2289C0080(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  sub_22911C5BC();

  v4 = sub_22911C44C();

  return v4;
}

uint64_t sub_2289C00EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22911C5BC();
  v6 = sub_22911C45C();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;
}

id sub_2289C0150(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___HDCloudSyncManagerRecordTask_recordsToCreate] = a4;
  *&v7[OBJC_IVAR___HDCloudSyncManagerRecordTask_recordsToDelete] = a5;
  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289C103C;
  aBlock[3] = &block_descriptor_4;
  v11 = _Block_copy(aBlock);

  v14.receiver = v7;
  v14.super_class = HDCloudSyncManagerRecordTask;
  v12 = objc_msgSendSuper2(&v14, sel_initWithManager_context_accessibilityAssertion_completion_, a1, a2, a3, v11);

  _Block_release(v11);
  return v12;
}

void sub_2289C026C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(v10, a3, a4);
}

void sub_2289C03E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_22911B7EC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

void __swiftcall HDCloudSyncManagerRecordTask.pipeline(for:)(HDCloudSyncPipeline *__return_ptr retstr, HDCloudSyncRepository *a2)
{
  v3 = v2;
  v5 = sub_22911B98C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 context];
  v11 = [v10 subContextByAddingOptions_];

  v12 = sub_2289B3D00(0, &qword_27D862DA0, off_27860DC10);
  v77 = v12;
  v76[0] = v11;
  v13 = [v3 accessibilityAssertion];
  v14 = [v3 manager];
  if (v14 && (v15 = v14, v16 = [v14 queue], v15, v16))
  {
    if (v12)
    {
LABEL_4:
      v17 = __swift_project_boxed_opaque_existential_1(v76, v12);
      v18 = *(v12 - 8);
      v19 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21);
      v22 = sub_22911CACC();
      (*(v18 + 8))(v21, v12);
      __swift_destroy_boxed_opaque_existential_0(v76);
      goto LABEL_7;
    }
  }

  else
  {
    sub_2289B3D00(0, &qword_27D862DA8, 0x277D85C78);
    (*(v6 + 104))(v9, *MEMORY[0x277D851C8], v5);
    v16 = sub_22911C63C();
    (*(v6 + 8))(v9, v5);
    v12 = v77;
    if (v77)
    {
      goto LABEL_4;
    }
  }

  v22 = 0;
LABEL_7:
  v23 = [objc_allocWithZone(HDCloudSyncPipeline) initForContext:v22 repository:a2 accessibilityAssertion:v13 queue:v16];
  swift_unknownObjectRelease();

  v24 = &selRef_nextObject;
  v25 = [v23 operationConfiguration];
  v26 = [v25 repository];

  v27 = [v26 primaryCKContainer];
  if (!v27)
  {
    return;
  }

  v68 = v27;
  v69 = [v23 operationConfiguration];
  v28 = [v3 recordsToCreate];
  v29 = sub_22911C5BC();
  v30 = sub_22911C45C();

  if (v30 >> 62)
  {
    v31 = sub_22911C78C();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  v70 = v23;
  if (v31)
  {
    v76[0] = MEMORY[0x277D84F90];
    sub_22911C8BC();
    if (v31 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v73 = v29;
    v74 = v3;
    v33 = objc_opt_self();
    v34 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x22AAC6410](v34, v30);
      }

      else
      {
        v37 = *(v30 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = [v37 recordID];
      if (!v39)
      {
        sub_22911C35C();
        v39 = sub_22911C34C();
      }

      v40 = [v38 zoneID];
      if (!v40)
      {
        sub_22911C35C();
        v40 = sub_22911C34C();
      }

      v41 = [v38 ownerID];
      if (!v41)
      {
        sub_22911C35C();
        v41 = sub_22911C34C();
      }

      ++v34;
      v35 = [v33 hkctl:v39 deviceContextRecordWithRecordID:v40 zoneID:v41 ownerID:?];

      sub_22911C88C();
      v36 = *(v76[0] + 16);
      sub_22911C8CC();
      sub_22911C8DC();
      sub_22911C89C();
    }

    while (v31 != v34);

    v42 = v76[0];
    v23 = v70;
    v24 = &selRef_nextObject;
    v3 = v74;
    v32 = MEMORY[0x277D84F90];
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v43 = [v3 recordsToDelete];
  v44 = sub_22911C45C();

  v67 = v42;
  if (v44 >> 62)
  {
    v45 = sub_22911C78C();
    if (v45)
    {
LABEL_27:
      v76[0] = v32;
      sub_22911C8BC();
      if ((v45 & 0x8000000000000000) == 0)
      {
        v73 = sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
        v46 = sub_2289B3D00(0, &qword_27D862DB0, 0x277CBC5F8);
        v47 = 0;
        v71 = v44 & 0xC000000000000001;
        v72 = v46;
        v74 = v44;
        do
        {
          if (v71)
          {
            v48 = MEMORY[0x22AAC6410](v47, v44);
          }

          else
          {
            v48 = *(v44 + 8 * v47 + 32);
          }

          v49 = v48;
          ++v47;
          v50 = [v48 recordID];
          sub_22911C35C();

          v51 = [v49 zoneID];
          sub_22911C35C();

          v52 = [v49 ownerID];
          sub_22911C35C();

          sub_22911C60C();
          sub_22911C5CC();

          sub_22911C88C();
          v53 = *(v76[0] + 16);
          sub_22911C8CC();
          sub_22911C8DC();
          sub_22911C89C();
          v44 = v74;
        }

        while (v45 != v47);

        v23 = v70;
        v24 = &selRef_nextObject;
        goto LABEL_37;
      }

LABEL_40:
      __break(1u);
      return;
    }
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_27;
    }
  }

LABEL_37:
  v54 = v68;
  v55 = objc_allocWithZone(HDCloudSyncModifyRecordsOperation);
  sub_2289B3D00(0, &qword_27D862DB8, 0x277CBC5A0);
  v56 = v54;
  v57 = sub_22911C44C();

  sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
  v58 = sub_22911C44C();

  v59 = v69;
  v60 = [v55 initWithConfiguration:v69 container:v56 recordsToSave:v57 recordIDsToDelete:v58];

  v61 = v60;
  v62 = [v23 v24[227]];
  v63 = type metadata accessor for HDCloudSyncManagerOperationPipelineStage();
  v64 = objc_allocWithZone(v63);
  *&v64[OBJC_IVAR____TtC12HealthDaemonP33_3C3AA33439CD1EDF39A06BA01B83D0D640HDCloudSyncManagerOperationPipelineStage_operation] = v61;
  v75.receiver = v64;
  v75.super_class = v63;
  v65 = v61;
  v66 = [(HDCloudSyncPipeline *)&v75 initWithConfiguration:v62 cloudState:0];

  [v23 addStage_];
}

id HDCloudSyncManagerRecordTask.init(manager:context:accessibilityAssertion:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2289C103C;
  v14[3] = &block_descriptor_1;
  v11 = _Block_copy(v14);
  v12 = [v10 initWithManager:a1 context:a2 accessibilityAssertion:a3 completion:v11];

  _Block_release(v11);

  return v12;
}

id sub_2289C0F98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__CFString *sub_2289C1044@<X0>(uint64_t *a1@<X8>)
{
  v157 = a1;
  v2 = sub_22911B8DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v159 = v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v158 = v153 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v153 - v9;
  sub_2289C1FA0(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v153 - v13;
  sub_2289C1CBC(0);
  v160 = v15;
  v16 = swift_allocBox();
  v18 = v17;
  *v17 = [v1 isActive];
  v161 = v1;
  v19 = [v1 systemBuildVersion];
  if (v19)
  {
    v20 = v19;
    v21 = sub_22911C35C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v18 + 1) = v21;
  *(v18 + 2) = v23;
  v24 = [v161 productType];
  if (v24)
  {
    v25 = v24;
    v26 = sub_22911C35C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v18 + 3) = v26;
  *(v18 + 4) = v28;
  v29 = [v161 deviceMode];
  if (v29 == 2)
  {
    v30 = @"Satellite";
    v32 = @"Satellite";
  }

  else if (v29 == 1)
  {
    v30 = @"Basic";
    v31 = @"Basic";
  }

  else
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v29];
  }

  result = v30;
  if (!result)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = sub_22911C35C();
  v37 = v36;

  *(v18 + 5) = v35;
  *(v18 + 6) = v37;
  v38 = [v161 record];
  v39 = [v38 modificationDate];

  if (v39)
  {
    sub_22911B86C();

    v40 = sub_22911B88C();
    (*(*(v40 - 8) + 56))(v14, 0, 1, v40);
  }

  else
  {
    v41 = sub_22911B88C();
    (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
  }

  v42 = v160[28];
  v43 = &v18[v160[32]];
  v44 = v160[36];
  sub_2289BE454(v14, &v18[v160[24]]);
  v45 = v161;
  v155 = [v161 storeIdentifier];
  sub_22911B8CC();
  (*(v3 + 32))(&v18[v42], v10, v2);
  v154 = [v45 ownerIdentifier];
  *v43 = sub_22911C35C();
  v43[1] = v46;
  v47 = [v45 syncIdentity];
  v156 = v16;
  if (v47)
  {
    v48 = v47;
    v49 = [v47 hardwareIdentifier];
    sub_22911B8CC();

    v50 = [v48 databaseIdentifier];
    sub_22911B8CC();

    v51 = [v48 instanceDiscriminator];
    sub_22911C35C();

    sub_22911BE6C();
    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = sub_22911BE7C();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v56 = v54 + 56;
  v55(&v18[v44], v52, 1, v53);
  v57 = v161;
  v58 = v160[40];
  v18[v58] = [v161 isChild];
  v59 = [v57 pendingOwner];
  if (v59)
  {
    v60 = v59;
    v61 = sub_22911C35C();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = v161;
  v65 = &v18[v160[44]];
  v66 = v160[48];
  *v65 = v61;
  v65[1] = v63;
  v67 = [v64 pendingSyncIdentity];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 hardwareIdentifier];
    v153[1] = v56;
    sub_22911B8CC();

    v70 = [v68 databaseIdentifier];
    sub_22911B8CC();

    v71 = [v68 instanceDiscriminator];
    sub_22911C35C();

    sub_22911BE6C();
    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  v55(&v18[v66], v72, 1, v53);
  v73 = v161;
  v74 = [v161 supportedProtocolVersion];
  if (v74 == 1)
  {
    v76 = @"Yukon";
    v78 = @"Yukon";
    v75 = v160;
  }

  else
  {
    v75 = v160;
    if (v74)
    {
      v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v74];
    }

    else
    {
      v76 = @"Tigris";
      v77 = @"Tigris";
    }
  }

  result = v76;
  if (!result)
  {
    goto LABEL_85;
  }

  v79 = result;
  v80 = &v18[v75[52]];
  v81 = sub_22911C35C();
  v83 = v82;

  *v80 = v81;
  v80[1] = v83;
  v84 = [v73 requiredProtocolVersion];
  if (v84 == 1)
  {
    v85 = @"Yukon";
    v87 = @"Yukon";
  }

  else if (v84)
  {
    v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v84];
  }

  else
  {
    v85 = @"Tigris";
    v86 = @"Tigris";
  }

  result = v85;
  if (!result)
  {
    goto LABEL_86;
  }

  v88 = result;

  v89 = &v18[v75[56]];
  v90 = v75[60];

  v91 = sub_22911C35C();
  v93 = v92;

  *v89 = v91;
  v89[1] = v93;
  v94 = [v73 shardPredicate];
  if (v94)
  {
    v95 = v94;
    sub_2289E52DC();

    v96 = 0;
  }

  else
  {
    v96 = 1;
  }

  v97 = sub_22911BF3C();
  (*(*(v97 - 8) + 56))(&v18[v90], v96, 1, v97);
  v98 = [v73 currentSequenceHeaderRecord];
  if (v98)
  {
    v99 = v98;
    v100 = [v98 slot];
    switch(v100)
    {
      case 3:
        v101 = @"Tombstone";
        v104 = @"Tombstone";
        break;
      case 2:
        v101 = @"B";
        v103 = @"B";
        break;
      case 1:
        v101 = @"A";
        v102 = @"A";
        break;
      default:
        v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v100];
        break;
    }

    v105 = v101;
    if (v105)
    {
      v106 = v105;
      v107 = sub_22911C35C();
      v109 = v108;

      goto LABEL_52;
    }
  }

  v107 = 0;
  v109 = 0;
LABEL_52:
  v110 = &v18[v75[64]];
  *v110 = v107;
  v110[1] = v109;
  v111 = [v73 oldSequenceHeaderRecord];
  if (v111)
  {
    v112 = v111;
    v113 = [v111 slot];
    switch(v113)
    {
      case 3:
        v114 = @"Tombstone";
        v117 = @"Tombstone";
        break;
      case 2:
        v114 = @"B";
        v116 = @"B";
        break;
      case 1:
        v114 = @"A";
        v115 = @"A";
        break;
      default:
        v114 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v113];
        break;
    }

    v118 = v114;
    if (v118)
    {
      v119 = v118;
      v120 = sub_22911C35C();
      v122 = v121;

      goto LABEL_64;
    }
  }

  v120 = 0;
  v122 = 0;
LABEL_64:
  v123 = &v18[v75[68]];
  *v123 = v120;
  v123[1] = v122;
  v124 = [v73 activeSequenceHeaderRecord];
  if (!v124)
  {
LABEL_75:
    v133 = 0;
    v135 = 0;
    goto LABEL_76;
  }

  v125 = v124;
  v126 = [v124 slot];
  switch(v126)
  {
    case 3:
      v127 = @"Tombstone";
      v130 = @"Tombstone";
      break;
    case 2:
      v127 = @"B";
      v129 = @"B";
      break;
    case 1:
      v127 = @"A";
      v128 = @"A";
      break;
    default:
      v127 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v126];
      break;
  }

  v131 = v127;
  if (!v131)
  {

    goto LABEL_75;
  }

  v132 = v131;
  v133 = sub_22911C35C();
  v135 = v134;

LABEL_76:
  v136 = &v18[v75[72]];
  v137 = v75[76];
  *v136 = v133;
  v136[1] = v135;
  v138 = [v73 slotASequenceHeaderRecord];
  if (v138)
  {
    v139 = v138;
    sub_2289BD4B0(&v18[v137]);

    v140 = 0;
  }

  else
  {
    v140 = 1;
  }

  v141 = sub_22911BF0C();
  v142 = *(v141 - 8);
  v143 = *(v142 + 56);
  v144 = 1;
  v143(&v18[v137], v140, 1, v141);
  v145 = v75[80];
  v146 = [v73 slotBSequenceHeaderRecord];
  if (v146)
  {
    v147 = v146;
    sub_2289BD4B0(&v18[v145]);

    v144 = 0;
  }

  v148 = 1;
  v143(&v18[v145], v144, 1, v141);
  v149 = v75[84];
  v150 = [v73 tombstoneSequenceRecord];
  if (v150)
  {
    v151 = v150;
    sub_2289BD4B0(&v18[v149]);

    v148 = 0;
  }

  v143(&v18[v149], v148, 1, v141);
  *v157 = v156;
  v152 = *MEMORY[0x277CCB4B0];
  return (*(v142 + 104))();
}

void sub_2289C1CBC(uint64_t a1)
{
  if (!qword_27D862DE0)
  {
    MEMORY[0x28223BE20](a1);
    sub_2289B44EC();
    sub_2289C1FA0(255, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_22911B8DC();
    sub_2289C1FA0(255, &qword_27D862D90, MEMORY[0x277CCB430]);
    sub_2289C1FA0(255, &qword_27D862DE8, MEMORY[0x277CCB4E8]);
    sub_2289C1FA0(255, &qword_27D862DF0, MEMORY[0x277CCB4E0]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862DE0);
    }
  }
}

void sub_2289C1FA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911C6CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289C1FF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 attachmentReference];
  sub_2289C21E4(0);
  v6 = v5[24];
  v7 = v5[28];
  v8 = v5[32];
  v9 = [v2 referenceIdentifier];
  v10 = sub_22911C35C();
  v12 = v11;

  *a1 = v10;
  a1[1] = v12;
  v13 = [v4 objectIdentifier];
  v14 = sub_22911C35C();
  v16 = v15;

  a1[2] = v14;
  a1[3] = v16;
  v17 = [v4 schemaIdentifier];
  v18 = sub_22911C35C();
  v20 = v19;

  a1[4] = v18;
  a1[5] = v20;
  a1[6] = [v4 schemaVersion];
  v21 = [v4 attachmentIdentifier];
  sub_22911B8CC();

  *(a1 + v7) = [v4 type];
  v22 = [v4 creationDate];
  sub_22911B86C();

  v23 = *MEMORY[0x277CCB480];
  v24 = sub_22911BF0C();
  v25 = *(*(v24 - 8) + 104);

  return v25(a1, v23, v24);
}

void sub_2289C21E4(uint64_t a1)
{
  if (!qword_27D862DF8)
  {
    MEMORY[0x28223BE20](a1);
    sub_22911B8DC();
    sub_22911B88C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862DF8);
    }
  }
}

id sub_2289C2338()
{
  v64[6] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
  swift_beginAccess();
  v55 = v0;
  v2 = *&v0[v1];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &selRef_initWithSeries_values_;
  v56 = v2;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v2 + 56) + 8 * v13);
        v64[0] = 0;

        v18 = v17;
        if ([v18 v9[281]])
        {
          v10 = v64[0];

          v8 = v11;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v58 = v18;
          v19 = v64[0];
          v20 = sub_22911B7FC();

          swift_willThrow();
          if (qword_27D862780 != -1)
          {
            swift_once();
          }

          v21 = sub_22911B95C();
          __swift_project_value_buffer(v21, qword_27D86A948);

          v22 = v20;
          v23 = sub_22911B94C();
          v24 = sub_22911C5EC();

          log = v23;
          if (os_log_type_enabled(v23, v24))
          {
            v57 = v24;
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v64[0] = v27;
            *v25 = 136315394;
            v28 = sub_2289B9170(v15, v16, v64);

            *(v25 + 4) = v28;
            *(v25 + 12) = 2112;
            v29 = v20;
            v30 = _swift_stdlib_bridgeErrorToNSError();
            *(v25 + 14) = v30;
            *v26 = v30;
            _os_log_impl(&dword_228986000, log, v57, "Failed to invalidate RBS assertions %s with error: %@", v25, 0x16u);
            sub_2289C4A08(v26);
            v31 = v26;
            v2 = v56;
            MEMORY[0x22AAC9830](v31, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x22AAC9830](v27, -1, -1);
            MEMORY[0x22AAC9830](v25, -1, -1);
          }

          else
          {
          }

          v8 = v11;
          v9 = &selRef_initWithSeries_values_;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v8;
      }
    }
  }

  [*&v55[OBJC_IVAR___HDWorkoutAssertionManager_assertionManager] invalidate];
  v32 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
  swift_beginAccess();
  v33 = *&v55[v32];
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v59 = v33;

  v39 = 0;
  while (v37)
  {
LABEL_28:
    v41 = __clz(__rbit64(v37)) | (v39 << 6);
    v42 = (*(v59 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    v45 = *(*(v59 + 56) + 8 * v41);
    v46 = qword_27D862780;

    loga = v45;
    if (v46 != -1)
    {
      swift_once();
    }

    v47 = sub_22911B95C();
    __swift_project_value_buffer(v47, qword_27D86A948);

    v48 = sub_22911B94C();
    v49 = sub_22911C5FC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v63 = v51;
      *v50 = 136315138;
      v52 = sub_2289B9170(v44, v43, &v63);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_228986000, v48, v49, "Invalidating SNA assertion with identifier %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAC9830](v51, -1, -1);
      MEMORY[0x22AAC9830](v50, -1, -1);
    }

    else
    {
    }

    v37 &= v37 - 1;
    [loga invalidate];
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_34;
    }

    if (v40 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v40);
    ++v39;
    if (v37)
    {
      v39 = v40;
      goto LABEL_28;
    }
  }

  v62.receiver = v55;
  v62.super_class = HDWorkoutAssertionManager;
  result = objc_msgSendSuper2(&v62, sel_dealloc);
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall HDWorkoutAssertionManager.takeRBSAssertion(ownerIdentifier:assertionIdentifier:pid:explanation:)(HDAssertion_optional *__return_ptr retstr, Swift::String ownerIdentifier, Swift::String assertionIdentifier, Swift::Int32 pid, Swift::String_optional explanation)
{
  v6 = v5;
  object = explanation.value._object;
  v7 = assertionIdentifier._object;
  countAndFlagsBits = assertionIdentifier._countAndFlagsBits;
  v81[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v9 = *&v5[OBJC_IVAR___HDWorkoutAssertionManager_lock];
  os_unfair_lock_lock(v9 + 4);
  strcpy(v81, "Runningboard-");
  HIWORD(v81[1]) = -4864;
  MEMORY[0x22AAC5FC0](countAndFlagsBits, v7);
  v10 = v81[1];
  v11 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
  swift_beginAccess();
  if (*(*&v5[v11] + 16) && (sub_2289AD318(v81[0], v81[1]), (v12 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v13 = sub_22911B95C();
    __swift_project_value_buffer(v13, qword_27D86A948);

    v14 = sub_22911B94C();
    v15 = sub_22911C5FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v81[0];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v81[0] = v18;
      *v17 = 136446466;
      v19 = sub_22911CBAC();
      v21 = sub_2289B9170(v19, v20, v81);

      *(v17 + 4) = v21;
      v22 = v9;
      *(v17 + 12) = 2080;
      v23 = sub_2289B9170(v16, v10, v81);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_228986000, v14, v15, "%{public}s RBS Assertion with identifier %s already taken.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v18, -1, -1);
      MEMORY[0x22AAC9830](v17, -1, -1);
    }

    else
    {

      v22 = v9;
    }
  }

  else
  {
    v79 = v9;
    swift_endAccess();
    v24 = objc_allocWithZone(MEMORY[0x277D10AB8]);
    v74 = v81[0];
    v25 = sub_22911C34C();
    v26 = sub_22911C34C();
    v27 = [v24 initWithAssertionIdentifier:v25 ownerIdentifier:v26];

    v28 = *&v6[OBJC_IVAR___HDWorkoutAssertionManager_assertionManager];
    if ([v28 takeAssertion_])
    {
      v73 = v28;
      v29 = sub_22911C34C();
      if (object)
      {
        v30 = sub_22911C34C();
      }

      else
      {
        v30 = 0;
      }

      v39 = [v6 makeRBSAssertionWithAssertionIdentifier:v29 pid:pid explanation:v30];

      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v40 = sub_22911B95C();
      __swift_project_value_buffer(v40, qword_27D86A948);

      v41 = sub_22911B94C();
      v42 = sub_22911C5FC();

      if (os_log_type_enabled(v41, v42))
      {
        v76 = v39;
        v43 = swift_slowAlloc();
        v78 = v27;
        v44 = swift_slowAlloc();
        v81[0] = v44;
        *v43 = 136446466;
        v45 = sub_22911CBAC();
        v47 = sub_2289B9170(v45, v46, v81);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        v48 = v74;
        *(v43 + 14) = sub_2289B9170(v74, v10, v81);
        _os_log_impl(&dword_228986000, v41, v42, "%{public}s Acquiring RBS Assertion with identifier %s", v43, 0x16u);
        swift_arrayDestroy();
        v49 = v44;
        v27 = v78;
        MEMORY[0x22AAC9830](v49, -1, -1);
        v50 = v43;
        v39 = v76;
        MEMORY[0x22AAC9830](v50, -1, -1);

        v22 = v79;
      }

      else
      {

        v22 = v9;
        v48 = v81[0];
      }

      v81[0] = 0;
      v51 = [v39 acquireWithError_];
      v52 = v81[0];
      if (v51)
      {
        swift_beginAccess();

        v53 = v52;
        v54 = v39;
        v55 = *&v6[v11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = *&v6[v11];
        *&v6[v11] = 0x8000000000000000;
        sub_2289B0074(v54, v48, v10, isUniquelyReferenced_nonNull_native);

        *&v6[v11] = v80;
        swift_endAccess();
        v57 = sub_22911C34C();

        [v73 addObserver:v6 forAssertionIdentifier:v57 queue:0];
      }

      else
      {
        v58 = v39;
        v59 = v81[0];

        v60 = sub_22911B7FC();

        swift_willThrow();
        v61 = v60;
        v62 = sub_22911B94C();
        v63 = sub_22911C5EC();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v81[0] = v66;
          *v64 = 136446466;
          v67 = sub_22911CBAC();
          v69 = sub_2289B9170(v67, v68, v81);
          v22 = v79;

          *(v64 + 4) = v69;
          *(v64 + 12) = 2112;
          v70 = v60;
          v71 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 14) = v71;
          *v65 = v71;
          _os_log_impl(&dword_228986000, v62, v63, "%{public}s Failed to acquire RBS assertion %@", v64, 0x16u);
          sub_2289C4A08(v65);
          MEMORY[0x22AAC9830](v65, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x22AAC9830](v66, -1, -1);
          MEMORY[0x22AAC9830](v64, -1, -1);
        }

        [v27 invalidate];
      }
    }

    else
    {

      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v31 = sub_22911B95C();
      __swift_project_value_buffer(v31, qword_27D86A948);
      v32 = sub_22911B94C();
      v33 = sub_22911C5EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v81[0] = v35;
        *v34 = 136446210;
        v36 = sub_22911CBAC();
        v38 = sub_2289B9170(v36, v37, v81);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_228986000, v32, v33, "%{public}s Failed to take HDAssertion", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AAC9830](v35, -1, -1);
        MEMORY[0x22AAC9830](v34, -1, -1);
      }

      v22 = v9;
    }
  }

  os_unfair_lock_unlock(v22 + 4);
  v72 = *MEMORY[0x277D85DE8];
}

id HDWorkoutAssertionManager.makeRBSAssertion(assertionIdentifier:pid:explanation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = [objc_opt_self() targetWithPid_];
  v6 = sub_22911C34C();
  v7 = sub_22911C34C();
  v8 = [objc_opt_self() attributeWithDomain:v6 name:v7];

  sub_2289C4ACC();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2291640E0;
  *(v9 + 32) = v8;
  v10 = objc_allocWithZone(MEMORY[0x277D46DB8]);

  v11 = v5;
  v12 = v8;
  v13 = sub_22911C34C();

  sub_2289B3D00(0, &qword_27D862E20, 0x277D46DD8);
  v14 = sub_22911C44C();

  v15 = [v10 initWithExplanation:v13 target:v11 attributes:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = ObjectType;
  v19[4] = sub_2289C4B20;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2289C57BC;
  v19[3] = &block_descriptor_2;
  v17 = _Block_copy(v19);

  [v15 setInvalidationHandler_];
  _Block_release(v17);

  return v15;
}

void sub_2289C3564(void *a1, void *a2)
{
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v4 = sub_22911B95C();
  __swift_project_value_buffer(v4, qword_27D86A948);
  v5 = a1;
  v6 = a2;
  oslog = sub_22911B94C();
  v7 = sub_22911C5FC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446722;
    v11 = sub_22911CBAC();
    v13 = sub_2289B9170(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    *(v8 + 22) = 2112;
    v14 = v5;
    if (a2)
    {
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v8 + 24) = v16;
    v9[1] = v17;
    _os_log_impl(&dword_228986000, oslog, v7, "%{public}s RBS assertion %@ was invalidated with error %@", v8, 0x20u);
    sub_2289C4A64();
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC9830](v10, -1, -1);
    MEMORY[0x22AAC9830](v8, -1, -1);
  }
}

void __swiftcall HDWorkoutAssertionManager.takeLiveActivityAssertion(ownerIdentifier:clientBundleIdentifier:explanation:)(HDAssertion_optional *__return_ptr retstr, Swift::String ownerIdentifier, Swift::String clientBundleIdentifier, Swift::String explanation)
{
  v5 = v4;
  object = clientBundleIdentifier._object;
  countAndFlagsBits = clientBundleIdentifier._countAndFlagsBits;
  v8 = ownerIdentifier._object;
  v64 = ownerIdentifier._countAndFlagsBits;
  swift_getObjectType();
  v9 = *(v4 + OBJC_IVAR___HDWorkoutAssertionManager_lock);
  os_unfair_lock_lock(v9 + 4);
  strcpy(&aBlock, "LiveActivity-");
  HIWORD(aBlock) = -4864;
  MEMORY[0x22AAC5FC0](countAndFlagsBits, object);
  v10 = *(&aBlock + 1);
  v11 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
  swift_beginAccess();
  if (*(*(v4 + v11) + 16) && (sub_2289AD318(aBlock, *(&aBlock + 1)), (v12 & 1) != 0))
  {
    v13 = aBlock;
    swift_endAccess();
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v14 = sub_22911B95C();
    __swift_project_value_buffer(v14, qword_27D86A948);

    v15 = sub_22911B94C();
    v16 = sub_22911C5FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&aBlock = v18;
      *v17 = 136446466;
      v19 = sub_22911CBAC();
      v21 = sub_2289B9170(v19, v20, &aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_2289B9170(v13, v10, &aBlock);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_228986000, v15, v16, "%{public}s Live Activity Assertion with identifier %s already taken.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v18, -1, -1);
      MEMORY[0x22AAC9830](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v63 = v9;
    swift_endAccess();
    v23 = objc_allocWithZone(MEMORY[0x277D10AB8]);
    v60 = aBlock;
    v24 = sub_22911C34C();
    v25 = sub_22911C34C();
    v26 = [v23 initWithAssertionIdentifier:v24 ownerIdentifier:v25];

    v27 = *(v5 + OBJC_IVAR___HDWorkoutAssertionManager_assertionManager);
    v62 = v26;
    if ([v27 takeAssertion_])
    {
      v65 = v27;
      v28 = objc_allocWithZone(MEMORY[0x277D4D500]);
      v29 = sub_22911C34C();
      v30 = [v28 initWithBundleIdentifier_];

      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = objc_allocWithZone(MEMORY[0x277D4D4F8]);
      v33 = v30;

      v34 = sub_22911C34C();
      v70 = sub_2289C4B40;
      v71 = v31;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v68 = sub_2289C57BC;
      v69 = &block_descriptor_6;
      v35 = _Block_copy(&aBlock);

      v36 = [v32 initWithExplanation:v34 target:v33 invalidationHandler:v35];
      _Block_release(v35);

      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v37 = sub_22911B95C();
      __swift_project_value_buffer(v37, qword_27D86A948);

      v38 = sub_22911B94C();
      v39 = sub_22911C5FC();

      if (os_log_type_enabled(v38, v39))
      {
        v61 = v36;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&aBlock = v41;
        *v40 = 136446466;
        v42 = sub_22911CBAC();
        v44 = sub_2289B9170(v42, v43, &aBlock);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = v60;
        *(v40 + 14) = sub_2289B9170(v60, v10, &aBlock);
        _os_log_impl(&dword_228986000, v38, v39, "%{public}s Acquiring Live Activity Assertion with identifier %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC9830](v41, -1, -1);
        v46 = v40;
        v36 = v61;
        MEMORY[0x22AAC9830](v46, -1, -1);

        v9 = v63;
      }

      else
      {

        v9 = v63;
        v45 = v60;
      }

      swift_beginAccess();

      v56 = v36;
      v57 = *(v5 + v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *(v5 + v11);
      *(v5 + v11) = 0x8000000000000000;
      sub_2289B0090(v56, v45, v10, isUniquelyReferenced_nonNull_native);

      *(v5 + v11) = v66;
      swift_endAccess();
      v59 = sub_22911C34C();

      [v65 addObserver:v5 forAssertionIdentifier:v59 queue:0];
    }

    else
    {
      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v47 = sub_22911B95C();
      __swift_project_value_buffer(v47, qword_27D86A948);

      v48 = sub_22911B94C();
      v49 = sub_22911C5EC();

      v9 = v63;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&aBlock = v51;
        *v50 = 136446722;
        v52 = sub_22911CBAC();
        v54 = sub_2289B9170(v52, v53, &aBlock);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_2289B9170(v64, v8, &aBlock);
        *(v50 + 22) = 2080;
        v55 = sub_2289B9170(v60, v10, &aBlock);

        *(v50 + 24) = v55;
        _os_log_impl(&dword_228986000, v48, v49, "%{public}s Failed to take HDAssertion with owner identifier %s and client identifier %s", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAC9830](v51, -1, -1);
        MEMORY[0x22AAC9830](v50, -1, -1);
      }

      else
      {
      }
    }
  }

  os_unfair_lock_unlock(v9 + 4);
}

void sub_2289C400C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      a2 = sub_22911B7EC();
    }

    [v5 handleDidInvalidateLiveActivityAssertion:a1 error:a2];
  }
}

void sub_2289C4164(void *a1, void *a2)
{
  swift_getObjectType();
  if ([a1 invalidationReason] != 3)
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v4 = sub_22911B95C();
    __swift_project_value_buffer(v4, qword_27D86A948);
    v5 = a1;
    v6 = a2;
    oslog = sub_22911B94C();
    v7 = sub_22911C5EC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v8 = 136446722;
      v11 = sub_22911CBAC();
      v13 = sub_2289B9170(v11, v12, &v19);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v5;
      *(v8 + 22) = 2112;
      v14 = v5;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v8 + 24) = v16;
      v9[1] = v17;
      _os_log_impl(&dword_228986000, oslog, v7, "%{public}s Live activity %@ invalidated with error %@", v8, 0x20u);
      sub_2289C4A64();
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAC9830](v10, -1, -1);
      MEMORY[0x22AAC9830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void __swiftcall HDWorkoutAssertionManager.init()(HDWorkoutAssertionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HDWorkoutAssertionManager.init()()
{
  v1 = OBJC_IVAR___HDWorkoutAssertionManager_assertionManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D10AC0]) init];
  v2 = OBJC_IVAR___HDWorkoutAssertionManager_lock;
  sub_2289C56E4();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
  v5 = MEMORY[0x277D84F90];
  *&v0[v4] = sub_2289B27C0(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
  *&v0[v6] = sub_2289B27DC(v5);
  v8.receiver = v0;
  v8.super_class = HDWorkoutAssertionManager;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_2289C45BC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

unint64_t sub_2289C4648@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22911C42C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_228A0FD0C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_228A0FD0C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22911C41C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22911C3EC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22911C3EC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22911C42C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_228A0FD0C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22911C42C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_228A0FD0C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_228A0FD0C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22911C3EC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2289C4A08(uint64_t a1)
{
  sub_2289C4A64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289C4A64()
{
  if (!qword_27D862BA0)
  {
    sub_2289B3D00(255, &qword_280D678B0, 0x277D82BB8);
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862BA0);
    }
  }
}

void sub_2289C4ACC()
{
  if (!qword_280D679C0)
  {
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D679C0);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289C4B48(uint64_t a1, unint64_t a2)
{
  v14[0] = 45;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;

  v5 = sub_2289C4648(0x7FFFFFFFFFFFFFFFLL, 1, sub_2289C575C, v13, a1, a2, v4);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    swift_bridgeObjectRetain_n();

    MEMORY[0x22AAC5F90](v6, v7, v8, v9);
    swift_bridgeObjectRelease_n();
    v10 = sub_22911CA9C();

    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

void sub_2289C4C60(void *a1)
{
  v2 = v1;
  v112[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR___HDWorkoutAssertionManager_lock);
  os_unfair_lock_lock(v4 + 4);
  v5 = [a1 assertionIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  v9 = sub_2289C4B48(v6, v8);

  if (v9 != 2)
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v25 = sub_22911B95C();
    __swift_project_value_buffer(v25, qword_27D86A948);
    v26 = a1;
    v27 = sub_22911B94C();
    v28 = sub_22911C5FC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v112[0] = v110;
      *v29 = 136446466;
      v30 = sub_22911CBAC();
      v111 = v4;
      v32 = sub_2289B9170(v30, v31, v112);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v33 = [v26 assertionIdentifier];
      v34 = sub_22911C35C();
      v35 = v26;
      v37 = v36;

      v38 = v34;
      v4 = v111;
      v39 = sub_2289B9170(v38, v37, v112);
      v26 = v35;

      *(v29 + 14) = v39;
      _os_log_impl(&dword_228986000, v27, v28, "%{public}s HDAssertion with identifier %s was invalidated. Invalidating underlying assertion.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v110, -1, -1);
      MEMORY[0x22AAC9830](v29, -1, -1);
    }

    v40 = [v26 assertionIdentifier];
    v41 = sub_22911C35C();
    v43 = v42;

    if (v9)
    {
      v44 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
      swift_beginAccess();
      v45 = *(v2 + v44);
      if (*(v45 + 16))
      {
        v46 = sub_2289AD318(v41, v43);
        v48 = v47;

        if (v48)
        {
          v49 = *(*(v45 + 56) + 8 * v46);
          swift_endAccess();
          v50 = v49;
          [v50 invalidate];
          v51 = [v26 assertionIdentifier];
          v52 = sub_22911C35C();
          v54 = v53;

          swift_beginAccess();
          v55 = sub_2289E7928(v52, v54);
          swift_endAccess();

          goto LABEL_28;
        }
      }

      else
      {
      }

      swift_endAccess();
      v69 = v26;
      v55 = sub_22911B94C();
      v70 = sub_22911C5EC();

      if (!os_log_type_enabled(v55, v70))
      {
        goto LABEL_28;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v112[0] = v72;
      *v71 = 136446466;
      v73 = sub_22911CBAC();
      v75 = sub_2289B9170(v73, v74, v112);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      v76 = [v69 assertionIdentifier];
      v77 = sub_22911C35C();
      v79 = v78;

      v80 = sub_2289B9170(v77, v79, v112);

      *(v71 + 14) = v80;
      v81 = "%{public}s Failed to find Live Activity assertion with identifier %s to invalidate";
    }

    else
    {
      v56 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
      swift_beginAccess();
      v57 = *(v2 + v56);
      if (*(v57 + 16))
      {
        v58 = sub_2289AD318(v41, v43);
        v60 = v59;

        if (v60)
        {
          v61 = *(*(v57 + 56) + 8 * v58);
          swift_endAccess();
          v112[0] = 0;
          v62 = v61;
          if ([v62 invalidateSyncWithError_])
          {
            v63 = v112[0];
            v64 = [v26 assertionIdentifier];
            v65 = sub_22911C35C();
            v67 = v66;

            swift_beginAccess();
            v68 = sub_2289E7910(v65, v67);
            swift_endAccess();

LABEL_29:
            os_unfair_lock_unlock(v4 + 4);
            v91 = *MEMORY[0x277D85DE8];
            return;
          }

          v92 = v112[0];
          v93 = sub_22911B7FC();

          swift_willThrow();
          v94 = v26;
          v95 = v93;
          v55 = sub_22911B94C();
          v96 = sub_22911C5EC();

          if (!os_log_type_enabled(v55, v96))
          {

            goto LABEL_29;
          }

          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v112[0] = v99;
          *v97 = 136446722;
          v100 = sub_22911CBAC();
          v102 = sub_2289B9170(v100, v101, v112);

          *(v97 + 4) = v102;
          *(v97 + 12) = 2080;
          v103 = [v94 assertionIdentifier];
          v104 = sub_22911C35C();
          v106 = v105;

          v107 = sub_2289B9170(v104, v106, v112);

          *(v97 + 14) = v107;
          *(v97 + 22) = 2112;
          v108 = v93;
          v109 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 24) = v109;
          *v98 = v109;
          _os_log_impl(&dword_228986000, v55, v96, "%{public}s Failed to invalidate RBS assertion with identifier %s %@", v97, 0x20u);
          sub_2289C4A08(v98);
          MEMORY[0x22AAC9830](v98, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x22AAC9830](v99, -1, -1);
          MEMORY[0x22AAC9830](v97, -1, -1);

LABEL_28:
          goto LABEL_29;
        }
      }

      else
      {
      }

      swift_endAccess();
      v82 = v26;
      v55 = sub_22911B94C();
      v70 = sub_22911C5EC();

      if (!os_log_type_enabled(v55, v70))
      {
        goto LABEL_28;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v112[0] = v72;
      *v71 = 136446466;
      v83 = sub_22911CBAC();
      v85 = sub_2289B9170(v83, v84, v112);

      *(v71 + 4) = v85;
      *(v71 + 12) = 2080;
      v86 = [v82 assertionIdentifier];
      v87 = sub_22911C35C();
      v89 = v88;

      v90 = sub_2289B9170(v87, v89, v112);

      *(v71 + 14) = v90;
      v81 = "%{public}s Failed to find RBS assertion with identifier %s to invalidate";
    }

    _os_log_impl(&dword_228986000, v55, v70, v81, v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v72, -1, -1);
    MEMORY[0x22AAC9830](v71, -1, -1);
    goto LABEL_28;
  }

  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v10 = sub_22911B95C();
  __swift_project_value_buffer(v10, qword_27D86A948);
  v11 = a1;
  v12 = sub_22911B94C();
  v13 = sub_22911C5EC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v112[0] = v15;
    *v14 = 136446466;
    v16 = sub_22911CBAC();
    v18 = sub_2289B9170(v16, v17, v112);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [v11 assertionIdentifier];
    v20 = sub_22911C35C();
    v22 = v21;

    v23 = sub_2289B9170(v20, v22, v112);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_228986000, v12, v13, "%{public}s Failed to find Assertion with identifier %s to invalidate", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v15, -1, -1);
    MEMORY[0x22AAC9830](v14, -1, -1);
  }

  v24 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(v4 + 4);
}

void sub_2289C56E4()
{
  if (!qword_280D678C0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22911C86C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D678C0);
    }
  }
}

uint64_t sub_2289C575C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22911CADC() & 1;
  }
}

unint64_t HDEntityError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_22911C83C();

      v4 = 0xD000000000000011;
LABEL_11:
      v14 = v4;
      MEMORY[0x22AAC5FC0](v1, v2);
      return v14;
    }

    sub_22911C83C();

    v14 = 0xD000000000000015;
    swift_getMetatypeMetadata();
    v5 = sub_22911C3AC();
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        sub_22911C83C();

        v4 = 0xD00000000000001DLL;
      }

      else
      {
        sub_22911C83C();

        v4 = 0xD000000000000015;
      }

      goto LABEL_11;
    }

    v15 = *v0;
    swift_getMetatypeMetadata();
    v7 = sub_22911C3AC();
    v9 = v8;
    swift_getMetatypeMetadata();
    v10 = sub_22911C3AC();
    v12 = v11;
    sub_22911C83C();

    v14 = 0xD00000000000001ALL;
    MEMORY[0x22AAC5FC0](v7, v9);

    MEMORY[0x22AAC5FC0](0x746365707865202CLL, 0xEB00000000206465);
    v5 = v10;
    v6 = v12;
  }

  MEMORY[0x22AAC5FC0](v5, v6);

  return v14;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2289C5A2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2289C5A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

Swift::Void __swiftcall HDCloudSyncDeleteOrphanedRecordsOperation.main()()
{
  v1 = sub_22911B95C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedBehavior];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 features];

  if (!v8)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = [v8 removeCKCascadeDelete];

  if (v9)
  {
    sub_22911B93C();
    v10 = v0;
    v11 = sub_22911B94C();
    v12 = sub_22911C5FC();

    v13 = &selRef_client;
    if (os_log_type_enabled(v11, v12))
    {
      v14 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v14 = 136315394;
      v15 = [v10 description];
      v16 = sub_22911C35C();
      v18 = v17;

      v19 = sub_2289B9170(v16, v18, aBlock);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      v20 = [v10 configuration];
      v21 = [v20 repository];

      v22 = [v21 description];
      v23 = sub_22911C35C();
      v25 = v24;

      v26 = sub_2289B9170(v23, v25, aBlock);

      *(v14 + 14) = v26;
      _os_log_impl(&dword_228986000, v11, v12, "%s Track and delete orphaned records for container %s", v14, 0x16u);
      v27 = v34;
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v27, -1, -1);
      v28 = v14;
      v13 = &selRef_client;
      MEMORY[0x22AAC9830](v28, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v29 = [objc_allocWithZone(MEMORY[0x277D10BB0]) init];
    [v29 beginTask];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2289C5FC0;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2289C5FC8;
    aBlock[3] = &block_descriptor_3;
    v31 = _Block_copy(aBlock);

    [v29 setDidFinish_];
    _Block_release(v31);
    v32 = [v10 v13[368]];
    sub_2289C6084(v29, v32);

    [v29 finishTask];
  }

  else
  {

    [v0 finishWithSuccess:1 error:0];
  }
}

void sub_2289C5F14(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(a3 + 16))
    {
      v7 = *(a3 + 32);
      v8 = v7;
      v9 = sub_22911B7EC();
    }

    else
    {
      v9 = 0;
    }

    [v6 finishWithSuccess:a2 & 1 error:v9];
  }
}

void sub_2289C5FC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_2289BCE8C();
  sub_22911C45C();

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289C6084(void *a1, void *a2)
{
  v22[7] = *MEMORY[0x277D85DE8];
  [a1 beginTask];
  v4 = [a2 repository];
  v5 = [a2 cachedCloudState];
  v22[0] = 0;
  v6 = [v5 zonesByIdentifierWithError_];

  v7 = v22[0];
  if (v6)
  {
    sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
    sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
    sub_2289C83EC();
    v8 = sub_22911C2CC();
    v9 = v7;

    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v8;
    v11 = swift_allocObject();
    v11[2] = sub_2289C8454;
    v11[3] = v10;
    v22[4] = sub_2289C84B8;
    v22[5] = v11;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_228A052DC;
    v22[3] = &block_descriptor_10;
    v12 = _Block_copy(v22);
    v13 = a1;
    v14 = a2;

    [v4 enumerateAllContainersWithBlock_];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    [v13 finishTask];
    v16 = sub_2289C8454;
  }

  else
  {
    v17 = v22[0];
    v18 = sub_22911B7FC();

    swift_willThrow();
    v19 = sub_22911B7EC();
    [a1 failTaskWithError_];

    v16 = 0;
  }

  result = sub_2289ACBE4(v16);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall HDCloudSyncDeleteOrphanedRecordsOperation.init(configuration:cloudState:)(HDCloudSyncDeleteOrphanedRecordsOperation *__return_ptr retstr, HDCloudSyncOperationConfiguration *configuration, HDCloudSyncCloudState_optional *cloudState)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:configuration cloudState:cloudState];
}

id HDCloudSyncDeleteOrphanedRecordsOperation.init(configuration:cloudState:)(void *a1, void *a2)
{
  v6.super_class = HDCloudSyncDeleteOrphanedRecordsOperation;
  v4 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_cloudState_, a1, a2);

  return v4;
}

void sub_2289C64B0(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  [a1 beginTask];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;

  v9 = a3;
  sub_2289C79E4(a4, sub_2289C87C0, v8, sub_2289C74FC);

  v10 = objc_allocWithZone(HDCloudSyncModifyRecordsOperation);
  sub_2289B3D00(0, &qword_27D862DB8, 0x277CBC5A0);
  v11 = sub_22911C44C();
  sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
  v12 = sub_22911C44C();

  v13 = [v10 initWithConfiguration:a2 container:v9 recordsToSave:v11 recordIDsToDelete:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v26 = sub_2289C87A8;
  v27 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6B18;
  v25 = &block_descriptor_36;
  v15 = _Block_copy(&aBlock);
  v16 = v13;
  v17 = a1;

  [v16 setOnSuccess_];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v17;
  v26 = sub_2289C8718;
  v27 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6E44;
  v25 = &block_descriptor_42;
  v19 = _Block_copy(&aBlock);
  v20 = v9;
  v21 = v17;

  [v16 setOnError_];
  _Block_release(v19);

  [v16 start];
}

void sub_2289C67E4(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  [a1 beginTask];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;

  v9 = a3;
  sub_2289C79E4(a4, sub_2289C84C0, v8, sub_2289C7014);

  v10 = objc_allocWithZone(HDCloudSyncModifyRecordsOperation);
  sub_2289B3D00(0, &qword_27D862DB8, 0x277CBC5A0);
  v11 = sub_22911C44C();
  sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
  v12 = sub_22911C44C();

  v13 = [v10 initWithConfiguration:a2 container:v9 recordsToSave:v11 recordIDsToDelete:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v26 = sub_2289C84C8;
  v27 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6B18;
  v25 = &block_descriptor_19;
  v15 = _Block_copy(&aBlock);
  v16 = v13;
  v17 = a1;

  [v16 setOnSuccess_];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v17;
  v26 = sub_2289C84D8;
  v27 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6E44;
  v25 = &block_descriptor_25;
  v19 = _Block_copy(&aBlock);
  v20 = v9;
  v21 = v17;

  [v16 setOnError_];
  _Block_release(v19);

  [v16 start];
}

void sub_2289C6B18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2289C6B80(uint64_t a1, void *a2, void *a3, void *a4, unint64_t *a5, uint64_t *a6)
{
  v34 = a6;
  v10 = sub_22911B95C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B93C();
  v15 = a3;
  v16 = a2;
  v17 = sub_22911B94C();
  v18 = sub_22911C5EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v10;
    v23 = v22;
    v35 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 2080;
    sub_2289B3D00(0, a5, v34);
    v24 = v15;
    v25 = sub_22911CBAC();
    v27 = sub_2289B9170(v25, v26, &v35);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2112;
    v28 = a2;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v29;
    v21[1] = v29;
    _os_log_impl(&dword_228986000, v17, v18, "%@ Failed to delete orphaned records of %s: %@", v20, 0x20u);
    sub_2289C862C(0, &qword_27D862BA0, &qword_280D678B0, 0x277D82BB8, MEMORY[0x277D83D88]);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAC9830](v23, -1, -1);
    v30 = v20;
    a4 = v33;
    MEMORY[0x22AAC9830](v30, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v31 = sub_22911B7EC();
  [a4 failTaskWithError_];
}

void sub_2289C6E44(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

BOOL sub_2289C6EC8(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 zoneIdentifier];
  v5 = [v4 containerIdentifier];

  v6 = sub_22911C35C();
  v8 = v7;

  v9 = [a2 containerIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    goto LABEL_10;
  }

  v15 = sub_22911CADC();

  result = 0;
  if (v15)
  {
LABEL_10:
    v17 = [v3 zoneIdentifier];
    v18 = [v17 scope];

    return v18 == 2;
  }

  return result;
}

unint64_t sub_2289C7014(void *a1)
{
  v3 = sub_22911B95C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v47 = MEMORY[0x277D84F90];
  v11 = objc_autoreleasePoolPush();
  sub_2289C7EA0(a1, &v47, sub_228A06B90, sub_228A06BEC);
  if (v1)
  {
    objc_autoreleasePoolPop(v11);

    sub_22911B93C();
    v12 = a1;
    v13 = v1;
    v14 = sub_22911B94C();
    v15 = sub_22911C5EC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2114;
      v18 = v12;
      v19 = v1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&dword_228986000, v14, v15, "Failed to fetch records for zone %@: %{public}@", v16, 0x16u);
      sub_2289C862C(0, &qword_27D862BA0, &qword_280D678B0, 0x277D82BB8, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v17, -1, -1);
      MEMORY[0x22AAC9830](v16, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    return MEMORY[0x277D84F90];
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    v21 = v47;
    if (v47 >> 62)
    {
      if (!sub_22911C78C())
      {
        return v21;
      }
    }

    else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v21;
    }

    sub_22911B93C();
    v22 = a1;
    v23 = sub_22911B94C();
    v24 = sub_22911C5FC();

    if (os_log_type_enabled(v23, v24))
    {
      v44 = v24;
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 134218754;
      v45 = v3;
      v46 = v26;
      if (v21 >> 62)
      {
        v27 = sub_22911C78C();
      }

      else
      {
        v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      sub_2289C8744(0, &qword_27D862EC0, &qword_27D862EA8, off_27860DB30);
      v28 = sub_22911CBAC();
      v30 = sub_2289B9170(v28, v29, &v46);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v22;
      v31 = v42;
      *v42 = v22;
      *(v25 + 32) = 2080;
      v32 = sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
      v33 = v22;

      v35 = MEMORY[0x22AAC6030](v34, v32);
      v37 = v36;

      v38 = sub_2289B9170(v35, v37, &v46);

      *(v25 + 34) = v38;
      _os_log_impl(&dword_228986000, v23, v44, "Found %ld orphaned %s records in %@: \n%s", v25, 0x2Au);
      sub_2289C4A08(v31);
      MEMORY[0x22AAC9830](v31, -1, -1);
      v39 = v43;
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v39, -1, -1);
      MEMORY[0x22AAC9830](v25, -1, -1);

      (*(v4 + 8))(v8, v45);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }
  }

  return v21;
}

unint64_t sub_2289C74FC(void *a1)
{
  v3 = sub_22911B95C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v47 = MEMORY[0x277D84F90];
  v11 = objc_autoreleasePoolPush();
  sub_2289C7EA0(a1, &v47, sub_228A06E08, sub_228A06B90);
  if (v1)
  {
    objc_autoreleasePoolPop(v11);

    sub_22911B93C();
    v12 = a1;
    v13 = v1;
    v14 = sub_22911B94C();
    v15 = sub_22911C5EC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2114;
      v18 = v12;
      v19 = v1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&dword_228986000, v14, v15, "Failed to fetch records for zone %@: %{public}@", v16, 0x16u);
      sub_2289C862C(0, &qword_27D862BA0, &qword_280D678B0, 0x277D82BB8, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v17, -1, -1);
      MEMORY[0x22AAC9830](v16, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    return MEMORY[0x277D84F90];
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    v21 = v47;
    if (v47 >> 62)
    {
      if (!sub_22911C78C())
      {
        return v21;
      }
    }

    else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v21;
    }

    sub_22911B93C();
    v22 = a1;
    v23 = sub_22911B94C();
    v24 = sub_22911C5FC();

    if (os_log_type_enabled(v23, v24))
    {
      v44 = v24;
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 134218754;
      v45 = v3;
      v46 = v26;
      if (v21 >> 62)
      {
        v27 = sub_22911C78C();
      }

      else
      {
        v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      sub_2289C8744(0, &qword_27D862ED0, &qword_27D862EC8, off_27860DFC8);
      v28 = sub_22911CBAC();
      v30 = sub_2289B9170(v28, v29, &v46);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v22;
      v31 = v42;
      *v42 = v22;
      *(v25 + 32) = 2080;
      v32 = sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
      v33 = v22;

      v35 = MEMORY[0x22AAC6030](v34, v32);
      v37 = v36;

      v38 = sub_2289B9170(v35, v37, &v46);

      *(v25 + 34) = v38;
      _os_log_impl(&dword_228986000, v23, v44, "Found %ld orphaned %s records in %@: \n%s", v25, 0x2Au);
      sub_2289C4A08(v31);
      MEMORY[0x22AAC9830](v31, -1, -1);
      v39 = v43;
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v39, -1, -1);
      MEMORY[0x22AAC9830](v25, -1, -1);

      (*(v4 + 8))(v8, v45);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }
  }

  return v21;
}

uint64_t sub_2289C79E4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(id))
{
  v5 = v4;
  v6 = a3;
  sub_2289C858C(a1, a2, a3, v51);
  v7 = v51[0];
  v8 = v51[1];
  v9 = v51[3];
  v10 = v51[4];
  v48 = v51[5];
  v11 = (v51[2] + 64) >> 6;

  v47 = MEMORY[0x277D84F90];
  v49 = v7;
  while (2)
  {
    v12 = v9;
    v13 = v10;
    if ((v7 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        if (!sub_22911C9FC())
        {
          goto LABEL_45;
        }

        swift_unknownObjectRelease();
        sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
        swift_dynamicCast();
        v6 = v52;
        v9 = v12;
        v10 = v13;
        if (!v52)
        {
          goto LABEL_45;
        }

LABEL_11:
        v50[0] = v6;
        if (v48(v50))
        {
          break;
        }

        v12 = v9;
        v13 = v10;
        v7 = v49;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_3;
        }
      }

      v16 = v5;
      v17 = a4(v6);
      if (v5)
      {
        goto LABEL_47;
      }

      v18 = v17;

      v19 = v18 >> 62;
      if (v18 >> 62)
      {
        v20 = sub_22911C78C();
      }

      else
      {
        v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v47;
      v22 = v47 >> 62;
      v46 = v18;
      if (v47 >> 62)
      {
        v41 = v20;
        result = sub_22911C78C();
        v20 = v41;
      }

      else
      {
        result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v20;
      v24 = result + v20;
      if (__OFADD__(result, v20))
      {
        __break(1u);
        goto LABEL_49;
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (result)
      {
        if (!v22)
        {
          v25 = v47 & 0xFFFFFFFFFFFFFF8;
          if (v24 <= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v26 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (!v19)
            {
LABEL_24:
              v28 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
              v47 = v21;
              if (v28)
              {
                if (((v26 >> 1) - v27) >= v43)
                {
                  v32 = v25 + 8 * v27 + 32;
                  v42 = v25;
                  if (v19)
                  {
                    if (v28 < 1)
                    {
LABEL_52:
                      __break(1u);
                      return result;
                    }

                    sub_2289C862C(0, &qword_27D862EB0, &qword_27D862A20, 0x277CBC5D0, MEMORY[0x277D83940]);
                    sub_2289C8694();
                    v33 = 0;
                    v34 = v46;
                    do
                    {
                      v35 = sub_2289C8504(v50, v33, v34);
                      v6 = v28;
                      v37 = *v36;
                      (v35)(v50, 0);
                      v34 = v46;
                      *(v32 + 8 * v33) = v37;
                      v28 = v6;
                      ++v33;
                    }

                    while (v6 != v33);
                  }

                  else
                  {
                    v6 = (v46 & 0xFFFFFFFFFFFFFF8);
                    sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
                    swift_arrayInitWithCopy();
                  }

                  v5 = v16;
                  v7 = v49;
                  if (v43 < 1)
                  {
                    continue;
                  }

                  v38 = *(v42 + 16);
                  v39 = __OFADD__(v38, v43);
                  v40 = v38 + v43;
                  if (!v39)
                  {
                    *(v42 + 16) = v40;
                    continue;
                  }

LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

              v6 = v43;

              v7 = v49;
              if (v43 <= 0)
              {
                continue;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_30:
            v45 = v19;
            v30 = v25;
            v31 = v26;
            result = sub_22911C78C();
            v26 = v31;
            v25 = v30;
            v19 = v45;
            v28 = result;
            goto LABEL_31;
          }

          goto LABEL_27;
        }
      }

      else if (!v22)
      {
        v25 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
        v29 = *(v25 + 16);
        goto LABEL_29;
      }

      sub_22911C78C();
LABEL_29:
      result = sub_22911C85C();
      v21 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (!v19)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    break;
  }

LABEL_3:
  v14 = v12;
  v15 = v13;
  v9 = v12;
  if (v13)
  {
LABEL_7:
    v10 = (v15 - 1) & v15;
    v6 = *(*(v7 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_45:
    sub_2289C8624();

    return v47;
  }

  else
  {
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v11)
      {
        goto LABEL_45;
      }

      v15 = *(v8 + 8 * v9);
      ++v14;
      if (v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_47:

    sub_2289C8624();

    return v47;
  }
}

void sub_2289C7EA0(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a3();
  if (!v5)
  {
    v9 = v8;
    if (v8 >> 62)
    {
      goto LABEL_15;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a2; v10; i = a2)
    {
      v63 = a4;
      v65 = MEMORY[0x277D84F90];
      v11 = sub_22911C8BC();
      if (v10 < 0)
      {
        goto LABEL_64;
      }

      a2 = 0;
      v4 = v9 & 0xC000000000000001;
      a4 = (v9 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v4)
        {
          v12 = MEMORY[0x22AAC6410](a2, v9);
          goto LABEL_7;
        }

        if ((a2 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (a2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * a2 + 32);
LABEL_7:
        v13 = v12;
        ++a2;
        v14 = [v12 recordID];

        sub_22911C88C();
        v15 = *(v65 + 16);
        sub_22911C8CC();
        sub_22911C8DC();
        sub_22911C89C();
        if (v10 == a2)
        {

          v16 = v65;
          a2 = i;
          a4 = v63;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v10 = sub_22911C78C();
    }

    v16 = MEMORY[0x277D84F90];
LABEL_17:
    v4 = sub_2289DD024(v16);

    v11 = a4(v17);
    if (v11 >> 62)
    {
      goto LABEL_66;
    }

    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
    v52 = v11;
    v53 = MEMORY[0x277D84F90];
    if (v18)
    {
      v19 = 0;
      v60 = v11 & 0xFFFFFFFFFFFFFF8;
      v61 = v11 & 0xC000000000000001;
      v58 = v11 + 32;
      v59 = v4 & 0xC000000000000001;
      v55 = 0;
      v56 = (MEMORY[0x277D84F90] + 32);
      v64 = v4 + 56;
      v62 = v4;
      v54 = v18;
      while (1)
      {
        while (1)
        {
          if (v61)
          {
            v11 = MEMORY[0x22AAC6410](v19, v52);
          }

          else
          {
            if ((v19 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              v51 = v11;
              v18 = sub_22911C78C();
              v11 = v51;
              goto LABEL_19;
            }

            if (v19 >= *(v60 + 16))
            {
              goto LABEL_62;
            }

            v11 = *(v58 + 8 * v19);
          }

          v20 = v11;
          v21 = __OFADD__(v19++, 1);
          if (v21)
          {
            goto LABEL_61;
          }

          v22 = [v11 parentRecordReference];
          v23 = [v22 recordID];
          v24 = v23;
          if (v59)
          {
            break;
          }

          if (*(v4 + 16))
          {
            sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
            v27 = *(v4 + 40);
            v28 = sub_22911C6AC();
            v29 = -1 << *(v4 + 32);
            v30 = v28 & ~v29;
            if ((*(v64 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
            {
              v31 = ~v29;
              while (1)
              {
                v32 = *(*(v4 + 48) + 8 * v30);
                v33 = sub_22911C6BC();

                if (v33)
                {
                  break;
                }

                v30 = (v30 + 1) & v31;
                v4 = v62;
                if (((*(v64 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              a2 = i;
              v4 = v62;
              v18 = v54;
              goto LABEL_22;
            }
          }

LABEL_36:

          a2 = i;
          v18 = v54;
LABEL_37:
          v34 = [v20 recordID];

          v35 = v55;
          if (!v55)
          {
            v36 = v53[3];
            if (((v36 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_65;
            }

            v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
            if (v37 <= 1)
            {
              v38 = 1;
            }

            else
            {
              v38 = v37;
            }

            sub_2289C4ACC();
            v39 = swift_allocObject();
            v40 = _swift_stdlib_malloc_size(v39);
            v41 = v40 - 32;
            if (v40 < 32)
            {
              v41 = v40 - 25;
            }

            v42 = v41 >> 3;
            v39[2] = v38;
            v39[3] = (2 * (v41 >> 3)) | 1;
            v43 = (v39 + 4);
            v44 = v53[3] >> 1;
            if (v53[2])
            {
              v45 = v53 + 4;
              if (v39 != v53 || v43 >= v45 + 8 * v44)
              {
                memmove(v39 + 4, v45, 8 * v44);
              }

              v53[2] = 0;
            }

            v56 = (v43 + 8 * v44);

            v35 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;
            v53 = v39;
            v4 = v62;
            v18 = v54;
          }

          v21 = __OFSUB__(v35, 1);
          v46 = v35 - 1;
          if (v21)
          {
            goto LABEL_63;
          }

          v55 = v46;
          *v56++ = v34;
          if (v19 == v18)
          {
            goto LABEL_55;
          }
        }

        v25 = v23;
        v26 = sub_22911C7CC();

        if ((v26 & 1) == 0)
        {
          goto LABEL_37;
        }

        v22 = v20;
LABEL_22:

        if (v19 == v18)
        {
          goto LABEL_55;
        }
      }
    }

    v55 = 0;
LABEL_55:
    v47 = v53[3];
    if (v47 >= 2)
    {
      v48 = v47 >> 1;
      v21 = __OFSUB__(v48, v55);
      v49 = v48 - v55;
      if (v21)
      {
        __break(1u);
        return;
      }

      v53[2] = v49;
    }

    v50 = *a2;
    *a2 = v53;
  }
}

unint64_t sub_2289C83EC()
{
  result = qword_27D862A58;
  if (!qword_27D862A58)
  {
    sub_2289B3D00(255, &qword_27D862A40, off_27860E1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862A58);
  }

  return result;
}

void sub_2289C8454(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_2289C64B0(v3, v4, a1, v5);

  sub_2289C67E4(v3, v4, a1, v5);
}

void (*sub_2289C8504(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC6410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2289C8584;
  }

  __break(1u);
  return result;
}

unint64_t sub_2289C858C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_22911C96C();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2289C862C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2289B3D00(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2289C8694()
{
  result = qword_27D862EB8;
  if (!qword_27D862EB8)
  {
    sub_2289C862C(255, &qword_27D862EB0, &qword_27D862A20, 0x277CBC5D0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862EB8);
  }

  return result;
}

uint64_t sub_2289C8744(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_2289B3D00(255, a3, a4);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2289C87DC()
{
  v1 = *v0;
  sub_22911CB7C();
  MEMORY[0x22AAC6750](v1);
  return sub_22911CB9C();
}

uint64_t sub_2289C8850()
{
  v1 = *v0;
  sub_22911CB7C();
  MEMORY[0x22AAC6750](v1);
  return sub_22911CB9C();
}

uint64_t sub_2289C88D8()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker;
  if (*(v0 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker);
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_2289C89B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker);
  *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2289C89CC(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2289C88D8();
  return sub_2289C8A14;
}

uint64_t sub_2289C8A14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker);
  *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker) = v2;
  return swift_unknownObjectRelease();
}

id sub_2289C8A2C()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector;
  v2 = *&v0[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector];
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = objc_allocWithZone(type metadata accessor for HDSwimmingDataCollector());
    v6 = v0;
    v7 = v0;
    v8 = sub_2289D83FC();

    v9 = *&v7[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *HDSwimTracker.init(profile:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker] = 0;
  v3 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers;
  v4 = HKLogWorkoutsCategory();
  v5 = objc_allocWithZone(MEMORY[0x277CCDA88]);
  v6 = sub_22911C34C();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  *&v1[v3] = v7;
  *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData] = 0;
  v8 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_startLock;
  sub_2289C8CC8(0, &qword_27D862EF8);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  *&v1[v8] = v9;
  v10 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_generalLock;
  sub_2289C8CC8(0, &qword_280D678C0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v1[v10] = v11;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector] = 0;
  swift_unknownObjectWeakAssign();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for HDSwimTracker();
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = sub_2289C8A2C();
  [*&v12[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers] registerObserver_];

  return v12;
}

void sub_2289C8CC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v3 = sub_22911C86C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_2289C8D74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC1D60]) init];
  v1 = type metadata accessor for HDCMSwimTracker();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_2289C8E94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_startLock);
  os_unfair_lock_lock((v3 + 20));
  if (*(v3 + 16))
  {
    os_unfair_lock_unlock((v3 + 20));
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v4 = sub_22911B95C();
    __swift_project_value_buffer(v4, qword_27D86A948);
    oslog = sub_22911B94C();
    v5 = sub_22911C5FC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136446210;
      v8 = sub_22911CBAC();
      v10 = sub_2289B9170(v8, v9, aBlock);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_228986000, oslog, v5, "%{public}s: Start called more than once. Ignoring...", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAC9830](v7, -1, -1);
      MEMORY[0x22AAC9830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v3 + 16) = 1;
    os_unfair_lock_unlock((v3 + 20));
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v11 = sub_22911B95C();
    __swift_project_value_buffer(v11, qword_27D86A948);
    v12 = sub_22911B94C();
    v13 = sub_22911C5FC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      v16 = sub_22911CBAC();
      v18 = sub_2289B9170(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_228986000, v12, v13, "%{public}s Starting monitoring for swim updates", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAC9830](v15, -1, -1);
      MEMORY[0x22AAC9830](v14, -1, -1);
    }

    v19 = objc_allocWithZone(MEMORY[0x277CC1D58]);
    v20 = sub_22911B8BC();
    v21 = [v19 initWithSessionId_];

    v22 = objc_allocWithZone(HDSafeCMSwimData);
    v23 = v21;
    v24 = [v22 initWithSwimData_];
    v25 = objc_allocWithZone(type metadata accessor for HDCMSwimData());
    v26 = sub_2289DEE2C(v23, v24);

    v27 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData;
    v28 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData);
    *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData) = v26;

    v29 = sub_2289C88D8();
    v30 = *(v1 + v27);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = ObjectType;
    aBlock[4] = sub_2289CAB40;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2289C9594;
    aBlock[3] = &block_descriptor_4;
    v33 = _Block_copy(aBlock);
    v34 = v30;

    [v29 startUpdatesFromRecord:v34 handler:v33];
    _Block_release(v33);

    swift_unknownObjectRelease();
  }
}

void sub_2289C9314(unint64_t a1, void *a2)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v6 = a1;
      v7 = sub_22911C78C();
      a1 = v6;
      if (v7 >= 1)
      {
LABEL_4:
        v3 = a1;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v5 = Strong;
          sub_2289C9A90(v3, 0, 0);
        }

        return;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }
  }

  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v8 = sub_22911B95C();
  __swift_project_value_buffer(v8, qword_27D86A948);
  v9 = a2;
  oslog = sub_22911B94C();
  v10 = sub_22911C5EC();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136446466;
    v14 = sub_22911CBAC();
    v16 = sub_2289B9170(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    if (a2)
    {
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v11 + 14) = v18;
    *v12 = v19;
    _os_log_impl(&dword_228986000, oslog, v10, "%{public}s Received nil or empty swim data from core motion with error %@", v11, 0x16u);
    sub_2289C4A08(v12);
    MEMORY[0x22AAC9830](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAC9830](v13, -1, -1);
    MEMORY[0x22AAC9830](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2289C9594(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for HDCMSwimData();
    v4 = sub_22911C45C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_2289C97C4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = sub_22911B94C();
  v4 = sub_22911C5FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_22911CBAC();
    v9 = sub_2289B9170(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_228986000, v3, v4, "%{public}s Stopping swim updates", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_generalLock);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v10 + 4);
  sub_2289CABA4();
  os_unfair_lock_unlock(v10 + 4);
  v13 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_startLock);
  os_unfair_lock_lock((v13 + 20));
  *(v13 + 16) = 0;
  os_unfair_lock_unlock((v13 + 20));
}

void sub_2289C9A90(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *(v3 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData);
  if (v8)
  {
    v9 = v8;
    v10 = sub_2289C88D8();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = v11;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = v9;
    v12[7] = ObjectType;
    v25[4] = sub_2289CAE0C;
    v25[5] = v12;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = sub_2289C9594;
    v25[3] = &block_descriptor_23;
    v13 = _Block_copy(v25);

    v14 = v9;
    sub_2289CAE1C(a2);

    [v10 querySwimUpdatesFromRecord:v14 handler:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v15 = sub_22911B95C();
    __swift_project_value_buffer(v15, qword_27D86A948);
    v16 = sub_22911B94C();
    v17 = sub_22911C5EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136446210;
      v20 = sub_22911CBAC();
      v22 = sub_2289B9170(v20, v21, v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_228986000, v16, v17, "%{public}s Reference is nil", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAC9830](v19, -1, -1);
      MEMORY[0x22AAC9830](v18, -1, -1);
    }

    if (a2)
    {
      sub_2289CADB8();
      v23 = swift_allocError();
      *v24 = 1;
      a2(0, v23);
    }
  }
}

void sub_2289C9D88(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *), uint64_t a6, char *a7)
{
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = *(Strong + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers);
      v14 = Strong;

      v15 = v13;

      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      v87 = sub_2289CAE54;
      v88 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      v85 = sub_2289CA710;
      v86 = &block_descriptor_38;
      v17 = _Block_copy(&aBlock);

      [v15 notifyObservers_];
      _Block_release(v17);
    }
  }

  if (!a1)
  {
    goto LABEL_40;
  }

  if (a1 >> 62)
  {
    if (sub_22911C78C() >= 1)
    {
      goto LABEL_7;
    }

LABEL_40:
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v62 = sub_22911B95C();
    __swift_project_value_buffer(v62, qword_27D86A948);
    v63 = a2;
    v64 = sub_22911B94C();
    v65 = sub_22911C5EC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock = v68;
      *v66 = 136446466;
      v69 = sub_22911CBAC();
      v71 = sub_2289B9170(v69, v70, &aBlock);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2112;
      if (a2)
      {
        v72 = a2;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        v74 = v73;
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      *(v66 + 14) = v73;
      *v67 = v74;
      _os_log_impl(&dword_228986000, v64, v65, "%{public}s Queried swim data is nil or empty with error %@", v66, 0x16u);
      sub_2289C4A08(v67);
      MEMORY[0x22AAC9830](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x22AAC9830](v68, -1, -1);
      MEMORY[0x22AAC9830](v66, -1, -1);
    }

    if (a5)
    {
      sub_2289CADB8();
      v75 = swift_allocError();
      *v76 = 0;
      a5(0, v75);
    }

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_40;
  }

LABEL_7:
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  v19 = (v18 + 16);
  v82 = v18;
  if (*&a7[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_recordId])
  {
LABEL_8:
    v20 = a7;
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    if (!sub_22911C78C())
    {
      goto LABEL_8;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v77 = a7;
    v46 = MEMORY[0x22AAC6410](0, a1);
    goto LABEL_31;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(a1 + 32);
    v45 = a7;
    v46 = v44;
LABEL_31:
    v47 = v46;
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v48 = sub_22911B95C();
    __swift_project_value_buffer(v48, qword_27D86A948);
    v49 = v47;
    v50 = sub_22911B94C();
    v51 = sub_22911C5FC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock = v79;
      *v52 = 136446466;
      v53 = sub_22911CBAC();
      v55 = sub_2289B9170(v53, v54, &aBlock);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v78 = v49;
      v56 = v49;
      _os_log_impl(&dword_228986000, v50, v51, "%{public}s Setting first swim reference to %@", v52, 0x16u);
      sub_2289C4A08(v78);
      MEMORY[0x22AAC9830](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x22AAC9830](v79, -1, -1);
      MEMORY[0x22AAC9830](v52, -1, -1);
    }

    v57 = *v19;
    *v19 = v49;
    v58 = v49;

    swift_beginAccess();
    v59 = swift_unknownObjectWeakLoadStrong();

    v18 = v82;
    if (v59)
    {
      v60 = *&v59[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData];
      *&v59[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData] = v58;
      v61 = v58;
    }

LABEL_9:
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *(v21 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers);

      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v18;
      v87 = sub_2289CAE2C;
      v88 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      v85 = sub_2289CA710;
      v86 = &block_descriptor_32;
      v25 = _Block_copy(&aBlock);

      [v23 notifyObservers_];
      _Block_release(v25);
    }

    v26 = sub_2289CA954(a1, v19);
    v27 = MEMORY[0x28223BE20](v26);
    if (v28)
    {
      v29 = 0;
      if (!a5)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v89 = v27;
    sub_2289CAE34(&v89, &aBlock);
    v29 = aBlock;
    if (aBlock)
    {
      v30 = qword_27D862780;
      v31 = aBlock;
      if (v30 != -1)
      {
        swift_once();
      }

      v32 = sub_22911B95C();
      __swift_project_value_buffer(v32, qword_27D86A948);
      v33 = v31;
      v34 = sub_22911B94C();
      v35 = sub_22911C5FC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v81 = v33;
        v37 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        aBlock = v80;
        *v36 = 136446466;
        v38 = sub_22911CBAC();
        v40 = sub_2289B9170(v38, v39, &aBlock);

        *(v36 + 4) = v40;
        v33 = v81;
        *(v36 + 12) = 2112;
        *(v36 + 14) = v81;
        *v37 = v29;
        v41 = v81;
        _os_log_impl(&dword_228986000, v34, v35, "%{public}s Setting swim reference to %@", v36, 0x16u);
        sub_2289C4A08(v37);
        MEMORY[0x22AAC9830](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x22AAC9830](v80, -1, -1);
        MEMORY[0x22AAC9830](v36, -1, -1);
      }

      swift_beginAccess();
      v42 = swift_unknownObjectWeakLoadStrong();
      if (!v42)
      {

        if (!a5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v43 = *&v42[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData];
      *&v42[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData] = v29;
    }

    if (!a5)
    {
LABEL_23:

      return;
    }

LABEL_22:
    a5(1, 0);
    goto LABEL_23;
  }

  __break(1u);
  __break(1u);
}

void sub_2289CA6A4(void *a1)
{
  type metadata accessor for HDCMSwimData();
  v2 = sub_22911C44C();
  [a1 onDemandSwimmingDataDidUpdate_];
}

uint64_t sub_2289CA710(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_2289CA770(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HDCMSwimData();
  v5 = sub_22911C44C();
  swift_beginAccess();
  [a1 historicalSwimmingDataDidUpdate:v5 reference:*(a3 + 16)];
}

id HDSwimTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSwimTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDSwimTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2289CA954(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v5 = sub_22911C78C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v6 = v3 & 0xC000000000000001;
  v13 = v3;
  v7 = v3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v6)
    {
      v9 = MEMORY[0x22AAC6410](v8 - 1, v13);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_20;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = *a2;
    if (*(*a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount) < *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount] || *(v10 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment) < *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment] || *(v10 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance) < *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance])
    {

      return v5;
    }

    v11 = *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount];
    v3 = *(v10 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  }

  while (v3 >= v11);
  return v5;
}

unint64_t sub_2289CAAD4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AAC6410](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_2289CAB40(unint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2289C9314(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289CAB60()
{
  v1 = *(v0 + 16);
  [sub_2289C88D8() stopUpdates];
  return swift_unknownObjectRelease();
}

uint64_t sub_2289CABA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2289CADB8()
{
  result = qword_27D862F18;
  if (!qword_27D862F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862F18);
  }

  return result;
}

uint64_t sub_2289CAE1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HDSwimTrackerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HDSwimTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2289CAFD0()
{
  result = qword_27D862F20;
  if (!qword_27D862F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862F20);
  }

  return result;
}

id sub_2289CB03C()
{
  v1 = OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue;
  v2 = *(v0 + OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue);
  }

  else
  {
    type metadata accessor for DatabaseAccessibilityAssertionStoreServer();
    v4 = [swift_getObjCClassFromMetadata() description];
    if (!v4)
    {
      sub_22911C35C();
      v4 = sub_22911C34C();
    }

    v5 = HKCreateSerialDispatchQueue();

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id DatabaseAccessibilityAssertionStoreServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseAccessibilityAssertionStoreServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DatabaseAccessibilityAssertionStoreServer.remote_invalidateDatabaseAccessibilityAssertion(_:)(void *a1)
{
  if (a1)
  {
    v7 = a1;
    v2 = [v1 client];
    v3 = [v2 assertionForHKDatabaseAccessibilityAssertion_];

    if (v3)
    {
      v4 = v3;
      [v4 invalidate];
      v5 = [v1 client];
      [v5 removeAssertionMappingForAssertion_];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

uint64_t DatabaseAccessibilityAssertionStoreServer.remote_requestDatabaseAccessibilityAssertion(forOwnerIdentifier:contextType:isRecovery:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v12 = sub_22911B97C();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22911B9AC();
  v16 = *(v28 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v28);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2289CB03C();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = v26;
  *(v20 + 64) = a6;
  aBlock[4] = sub_2289CB8D0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289CBBB0;
  aBlock[3] = &block_descriptor_5;
  v21 = _Block_copy(aBlock);
  v22 = v6;

  sub_22911B99C();
  v30 = MEMORY[0x277D84F90];
  sub_2289CBC64(&qword_280D678F0, MEMORY[0x277D85198]);
  sub_2289CBC0C();
  sub_2289CBC64(&unk_280D67900, sub_2289CBC0C);
  sub_22911C6EC();
  v23 = v27;
  MEMORY[0x22AAC61F0](0, v19, v15, v21);
  _Block_release(v21);

  (*(v29 + 8))(v15, v12);
  (*(v16 + 8))(v19, v28);
}

void sub_2289CB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(id, void))
{
  v7 = sub_2289CB8E4(a2, a3, a4, a5);
  a6(v7, 0);
}

id sub_2289CB8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v32[1] = *MEMORY[0x277D85DE8];
  v9 = sub_22911B8DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v6 profile];
  if (result)
  {
    v31[1] = v5;
    v15 = 3;
    if (a3 != 2)
    {
      v15 = 1;
    }

    if (a3 == 3)
    {
      v15 = 4;
    }

    if (a4)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = result;
    v18 = [result database];

    v19 = sub_22911C34C();
    v32[0] = 0;
    v20 = [v18 takeAccessibilityAssertionWithOwnerIdentifier:v19 contextType:v16 shouldPerformTransaction:0 error:v32];

    if (v20)
    {
      v21 = v32[0];
      v22 = v20;
      v23 = [v22 UUID];
      sub_22911B8CC();

      sub_22911B8AC();
      (*(v10 + 8))(v13, v9);
      v24 = objc_allocWithZone(MEMORY[0x277CCD2B8]);
      v25 = sub_22911C34C();
      v26 = sub_22911C34C();

      v27 = [v24 initWithOwnerIdentifier:v25 uuidString:v26];

      v28 = [v6 client];
      [v28 addAssertionMapping_];

      result = v27;
    }

    else
    {
      v29 = v32[0];
      sub_22911B7FC();

      result = swift_willThrow();
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2289CBBB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289CBC0C()
{
  if (!qword_280D678F8)
  {
    sub_22911B97C();
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D678F8);
    }
  }
}

uint64_t sub_2289CBC64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289CBD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22911B7EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2289CBE10@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 disabledOwnerIdentifiers];
  v4 = sub_22911C51C();

  *a1 = v4;
  v5 = *MEMORY[0x277CCB4C0];
  v6 = sub_22911BF0C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

id sub_2289CBEC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 changeIndex];
  [v3 protocolVersion];
  result = HKSyncProtocolVersionToString();
  if (result)
  {
    v6 = result;
    v7 = sub_22911C35C();
    v9 = v8;

    v10 = [v3 finalForSequence];
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v11 = *MEMORY[0x277CCB4B8];
    v12 = sub_22911BF0C();
    v13 = *(*(v12 - 8) + 104);

    return v13(a1, v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2289CBFB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 attachment];
  sub_2289CC18C(0);
  v6 = *(v5 + 112);
  v7 = [v2 attachmentIdentifier];
  v8 = sub_22911C35C();
  v10 = v9;

  *a1 = v8;
  a1[1] = v10;
  v11 = [v4 name];
  v12 = sub_22911C35C();
  v14 = v13;

  a1[2] = v12;
  a1[3] = v14;
  a1[4] = [v4 size];
  v15 = [v4 type];
  v16 = sub_22911C35C();
  v18 = v17;

  a1[5] = v16;
  a1[6] = v18;
  v19 = [v4 fileHash];
  v20 = sub_22911C35C();
  v22 = v21;

  a1[7] = v20;
  a1[8] = v22;
  v23 = [v4 creationDate];
  sub_22911B86C();

  v24 = *MEMORY[0x277CCB458];
  v25 = sub_22911BF0C();
  v26 = *(*(v25 - 8) + 104);

  return v26(a1, v24, v25);
}

void sub_2289CC18C(uint64_t a1)
{
  if (!qword_27D862FA0)
  {
    MEMORY[0x28223BE20](a1);
    sub_22911B88C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862FA0);
    }
  }
}

unint64_t HDBQuantitySampleEntity.Property.rawValue.getter()
{
  v1 = 0x65756C61765F61;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 3)
  {
    v3 = 0x6C616E696769726FLL;
  }

  if (v2 == 2)
  {
    v3 = 0x65756C61765F62;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

HealthDaemon::HDBQuantitySampleEntity::Property_optional __swiftcall HDBQuantitySampleEntity.Property.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22911CA9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2289CC3CC()
{
  v1 = *v0;
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

uint64_t sub_2289CC4B4()
{
  *v0;
  *v0;
  *v0;
  sub_22911C3DC();
}

uint64_t sub_2289CC588()
{
  v1 = *v0;
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

void sub_2289CC678(unint64_t *a1@<X8>)
{
  v2 = 0x65756C61765F61;
  v3 = *v1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0xD000000000000010;
  v7 = 0x8000000229181B80;
  if (v3 != 3)
  {
    v6 = 0x6C616E696769726FLL;
    v7 = 0xED000074696E755FLL;
  }

  if (v3 == 2)
  {
    v6 = 0x65756C61765F62;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000010;
    v4 = 0x8000000229181B60;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v6;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

id HDBQuantitySampleEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDBQuantitySampleEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDBQuantitySampleEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDBQuantitySampleEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDBQuantitySampleEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon23HDBQuantitySampleEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v59 = sub_22911C68C();
  v45 = *(v59 - 8);
  v1 = v45;
  v0 = v45;
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v59);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22911C66C();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v60);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v44 - v10);
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v58 = *(v0 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_229163C40;
  v14 = sub_22911C35C();
  v55 = v15;
  v56 = v14;
  sub_2289B5B9C();
  v17 = v16;
  v18 = swift_allocBox();
  v20 = v19;
  v54 = v17;
  v21 = *(v17 + 48);
  *v19 = 0xD000000000000013;
  v19[1] = 0x8000000229183140;
  v22 = *MEMORY[0x277D109B8];
  v23 = sub_22911C64C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  v53 = v22;
  v51 = v25;
  v52 = v23;
  v50 = v24 + 104;
  (v25)(v20 + v21, v22);
  *v11 = v18;
  v26 = *(v5 + 104);
  v49 = *MEMORY[0x277D109C8];
  v57 = v5 + 104;
  v27 = v26;
  (v26)(v11);
  v28 = v12;
  v46 = v13;
  sub_22911C67C();
  v61 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 5, 0);
  v29 = 0;
  v30 = v61;
  v48 = 0x8000000229181B80;
  LODWORD(v56) = *MEMORY[0x277D109E0];
  LODWORD(v55) = *MEMORY[0x277D10A08];
  v47 = 0x8000000229181B60;
  v31 = (v45 + 32);
  do
  {
    v32 = byte_283BE3790[v29 + 32];
    if (v32 >= 4)
    {
      v37 = v54;
      v38 = swift_allocBox();
      v39 = *(v37 + 48);
      *v40 = 0x52454745544E49;
      *(v40 + 1) = 0xE700000000000000;
      v51(&v40[v39], v53, v52);
      *v9 = v38;
      v36 = v49;
    }

    else
    {
      v33 = sub_22911C65C();
      v34 = swift_allocBox();
      (*(*(v33 - 8) + 104))(v35, v56, v33);
      *v9 = v34;
      v36 = v55;
    }

    v27(v9, v36, v60);
    sub_22911C67C();
    v61 = v30;
    v42 = *(v30 + 16);
    v41 = *(v30 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_2289FD438(v41 > 1, v42 + 1, 1);
      v30 = v61;
    }

    ++v29;
    *(v30 + 16) = v42 + 1;
    (*v31)(v30 + v28 + v42 * v58, v4, v59);
  }

  while (v29 != 5);
  v61 = v46;
  sub_228A1008C(v30);
  return v61;
}

unint64_t _s12HealthDaemon23HDBQuantitySampleEntityC11foreignKeysSDySSSo08HDSQLiteE10ForeignKeyCGyFZ_0()
{
  sub_2289B5B48(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C50;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v1;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  strcpy((inited + 56), "original_unit");
  *(inited + 70) = -4864;
  sub_2289B3D00(0, &unk_27D862FC0, off_27860F650);
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277D10B38]) initWithEntityClass:swift_getObjCClassFromMetadata() property:*MEMORY[0x277D10A40] deletionAction:0];
  v2 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A00();
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_2289CD154()
{
  result = qword_27D862FA8;
  if (!qword_27D862FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862FA8);
  }

  return result;
}

unint64_t sub_2289CD1AC()
{
  result = qword_27D862FB0;
  if (!qword_27D862FB0)
  {
    sub_2289CD204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862FB0);
  }

  return result;
}

void sub_2289CD204()
{
  if (!qword_27D862FB8)
  {
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862FB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HDBQuantitySampleEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HDBQuantitySampleEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2289CD4C8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277CC95F0];
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource____lazy_storage___workoutDataProcessorUUID;
  swift_beginAccess();
  sub_2289D092C(v1 + v11, v10, &qword_27D8630C0, v3);
  v12 = sub_22911B8DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_2289D0998(v10, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v14 = [v1 taskUUID];
  sub_22911B8CC();

  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_2289D0618(v8, v1 + v11);
  return swift_endAccess();
}

char *sub_2289CD8A0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink] = 0;
  v9 = OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource____lazy_storage___workoutDataProcessorUUID;
  v10 = sub_22911B8DC();
  v11 = *(v10 - 8);
  v23 = v10;
  (*(v11 + 56))(&v4[v9], 1, 1);
  if (a2)
  {
    sub_22911C28C();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  *&v4[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource_configuration] = v12;
  v14 = sub_22911B8BC();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for HDWorkoutMetricsDataSource();
  v15 = objc_msgSendSuper2(&v24, sel_initWithUUID_configuration_client_delegate_, v14, a2, a3, a4);

  v16 = v15;
  v17 = &unk_283CBA250;
  v18 = &unk_283CD7C50;
  v19 = HKLogWorkoutsCategory();
  v20 = [objc_allocWithZone(MEMORY[0x277CCD2B0]) initWithProcessor:v16 sourceProtocol:v17 destinationProtocol:v18 loggingCategory:v19];

  swift_unknownObjectRelease();
  (*(v11 + 8))(a1, v23);
  v21 = *&v16[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink];
  *&v16[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink] = v20;

  return v16;
}

void sub_2289CDCE8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = sub_22911B94C();
  v4 = sub_22911C5FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136446210;
    v7 = sub_22911CBAC();
    v9 = sub_2289B9170(v7, v8, &v32);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_228986000, v3, v4, "%{public}s Setting up metrics session", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource_configuration))
  {
    v10 = sub_22911C27C();
    v11 = [v10 activityType];

    if (sub_2289CE1D0(v11))
    {
      type metadata accessor for HDSwimmingDataCollector();
      if (swift_dynamicCastClass())
      {
        v12 = sub_22911B94C();
        v13 = sub_22911C5FC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v32 = v15;
          *v14 = 136446210;
          v16 = sub_22911CBAC();
          v18 = sub_2289B9170(v16, v17, &v32);

          *(v14 + 4) = v18;
          _os_log_impl(&dword_228986000, v12, v13, "%{public}s Registering for swimming updates", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x22AAC9830](v15, -1, -1);
          MEMORY[0x22AAC9830](v14, -1, -1);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          [*(Strong + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers) registerObserver_];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    oslog = sub_22911B94C();
    v21 = sub_22911C5EC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      v28 = sub_22911CBAC();
      v30 = sub_2289B9170(v28, v29, &v32);

      *(v22 + 4) = v30;
      v27 = "%{public}s Failed to find swimming data collector";
      goto LABEL_20;
    }
  }

  else
  {
    oslog = sub_22911B94C();
    v21 = sub_22911C5EC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      v24 = sub_22911CBAC();
      v26 = sub_2289B9170(v24, v25, &v32);

      *(v22 + 4) = v26;
      v27 = "%{public}s Failed to find activity type";
LABEL_20:
      _os_log_impl(&dword_228986000, oslog, v21, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAC9830](v23, -1, -1);
      MEMORY[0x22AAC9830](v22, -1, -1);

      return;
    }
  }
}

id sub_2289CE1D0(uint64_t a1)
{
  if (a1 != 82 && a1 != 46)
  {
    return 0;
  }

  result = [v1 profile];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result dataCollectionManager];

  if (!v4)
  {
    return 0;
  }

  sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
  v5 = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCB38]);
  v6 = [v4 aggregatorForType_];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 allCollectors];
  sub_2289B3D00(0, &qword_27D8630E0, off_27860E7B0);
  v8 = sub_22911C45C();

  if (v8 >> 62)
  {
    result = sub_22911C78C();
    if (result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_8:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAC6410](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_15:

  v11 = [v10 collector];

  return v11;
}

void sub_2289CE38C(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 client];
  v5 = [v4 connection];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = ObjectType;
    aBlock[4] = sub_2289D0594;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2289CE7AC;
    aBlock[3] = &block_descriptor_6;
    v7 = _Block_copy(aBlock);

    v8 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);

    sub_22911C6DC();
    swift_unknownObjectRelease();
    sub_2289D05B4();
    if (swift_dynamicCast())
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  v9 = sub_22911C78C();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else if ((a1 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(a1 + 8 * v11 + 32);
      if (v5)
      {
LABEL_12:
        swift_unknownObjectRetain();
        sub_2289CE878(v12);
        sub_22911C14C();
        v13 = sub_22911C44C();

        [v5 clientRemote:v13 didReceiveMetrics:?];

        swift_unknownObjectRelease_n();
        return;
      }

      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v12 = MEMORY[0x22AAC6410](v11, a1);
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_17:
}

void sub_2289CE5F0(void *a1)
{
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = a1;
  oslog = sub_22911B94C();
  v4 = sub_22911C5EC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136446466;
    v8 = sub_22911CBAC();
    v10 = sub_2289B9170(v8, v9, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_228986000, oslog, v4, "%{public}s Failed to notify client of swimming data update entry update %@", v5, 0x16u);
    sub_2289C4A08(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAC9830](v7, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }
}

void sub_2289CE7AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2289CE878(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22911C19C();
  v122 = *(v2 - 8);
  v123 = v2;
  v3 = *(v122 + 64);
  MEMORY[0x28223BE20](v2);
  v119 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22911B7DC();
  v120 = *(v5 - 8);
  v6 = *(v120 + 64);
  MEMORY[0x28223BE20](v5);
  v128 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v121 = &v107 - v10;
  v11 = sub_22911B8DC();
  v126 = *(v11 - 8);
  v127 = v11;
  v12 = *(v126 + 64);
  MEMORY[0x28223BE20](v11);
  v125 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CC9578];
  sub_2289CFD5C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v107 - v20;
  v22 = sub_22911B88C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v118 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v107 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v124 = &v107 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v107 - v32;
  v130 = a1;
  sub_2289D092C(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v21, &qword_27D862B48, v14);
  v34 = *(v23 + 48);
  if (v34(v21, 1, v22) == 1)
  {
    v35 = &qword_27D862B48;
    v36 = MEMORY[0x277CC9578];
    v37 = v21;
LABEL_7:
    sub_2289D0998(v37, v35, v36);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v45 = sub_22911B95C();
    __swift_project_value_buffer(v45, qword_27D86A948);
    v46 = sub_22911B94C();
    v47 = sub_22911C5EC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v131 = v49;
      *v48 = 136446210;
      v50 = sub_22911CBAC();
      v52 = sub_2289B9170(v50, v51, &v131);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_228986000, v46, v47, "%{public}s Unable to calculate metrics. start, end or sourceID is nil", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAC9830](v49, -1, -1);
      MEMORY[0x22AAC9830](v48, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v117 = v5;
  v38 = *(v23 + 32);
  v38(v33, v21, v22);
  sub_2289D092C(v130 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v19, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v34(v19, 1, v22) == 1)
  {
    (*(v23 + 8))(v33, v22);
    v35 = &qword_27D862B48;
    v36 = MEMORY[0x277CC9578];
    v37 = v19;
    goto LABEL_7;
  }

  v115 = v23;
  v116 = v33;
  v39 = v124;
  v38(v124, v19, v22);
  v40 = v121;
  sub_2289D092C(v130 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v121, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v41 = v22;
  v43 = v126;
  v42 = v127;
  if ((*(v126 + 48))(v40, 1, v127) == 1)
  {
    v44 = *(v115 + 8);
    v44(v39, v22);
    v44(v116, v22);
    v35 = &qword_27D8630C0;
    v36 = MEMORY[0x277CC95F0];
    v37 = v40;
    goto LABEL_7;
  }

  (*(v43 + 32))(v125, v40, v42);
  v131 = MEMORY[0x277D84F90];
  v54 = *(v115 + 16);
  v54(v29, v116, v41);
  v113 = v41;
  v54(v118, v39, v41);
  sub_22911B7CC();
  v121 = objc_opt_self();
  v55 = [v121 meterUnit];
  v56 = *(v130 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance);
  v57 = v130;
  v118 = objc_opt_self();
  v58 = [v118 quantityWithUnit:v55 doubleValue:v56];

  v59 = *MEMORY[0x277CCB5A8];
  v114 = *(v122 + 104);
  v122 += 104;
  v60 = v119;
  v114(v119, v59, v123);
  v61 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v62 = v58;
  v63 = sub_22911B8BC();
  v64 = sub_22911B7AC();
  [v61 initWithIdentifier:v63 dateInterval:v64 quantity:v62 resumeContext:0];
  v112 = v62;

  ObjectType = sub_22911C14C();
  v65 = objc_allocWithZone(ObjectType);
  v109 = sub_22911C13C();
  v66 = [v121 countUnit];
  v67 = v118;
  v68 = [v118 quantityWithUnit:v66 doubleValue:*(v57 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount)];

  v69 = v123;
  v70 = v114;
  v114(v60, *MEMORY[0x277CCB5B8], v123);
  v71 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v72 = v68;
  v73 = sub_22911B8BC();
  v74 = sub_22911B7AC();
  [v71 initWithIdentifier:v73 dateInterval:v74 quantity:v72 resumeContext:0];
  v111 = v72;

  v75 = objc_allocWithZone(ObjectType);
  v76 = v60;
  v108 = sub_22911C13C();
  v77 = v121;
  v78 = [v121 countUnit];
  v79 = [v67 quantityWithUnit:v78 doubleValue:*(v130 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount)];

  v70(v76, *MEMORY[0x277CCB5B0], v69);
  v80 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v81 = v79;
  v82 = sub_22911B8BC();
  v83 = sub_22911B7AC();
  [v80 initWithIdentifier:v82 dateInterval:v83 quantity:v81 resumeContext:0];
  v110 = v81;

  v84 = ObjectType;
  v85 = objc_allocWithZone(ObjectType);
  v107 = sub_22911C13C();
  v86 = [v77 countUnit];
  v87 = [v118 quantityWithUnit:v86 doubleValue:*(v130 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment)];

  v114(v76, *MEMORY[0x277CCB5C0], v123);
  v88 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v89 = v87;
  v90 = sub_22911B8BC();
  v91 = sub_22911B7AC();
  [v88 initWithIdentifier:v90 dateInterval:v91 quantity:v89 resumeContext:0];

  v92 = objc_allocWithZone(v84);
  v93 = sub_22911C13C();
  v94 = v109;
  MEMORY[0x22AAC6000]();
  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v103 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22911C47C();
  }

  sub_22911C4AC();
  v95 = v108;
  MEMORY[0x22AAC6000]();
  v96 = v120;
  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v104 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22911C47C();
  }

  sub_22911C4AC();
  v97 = v107;
  MEMORY[0x22AAC6000]();
  v98 = v115;
  v99 = v116;
  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v105 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22911C47C();
  }

  sub_22911C4AC();
  v100 = v93;
  MEMORY[0x22AAC6000]();
  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v106 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22911C47C();
  }

  sub_22911C4AC();

  (*(v96 + 8))(v128, v117);
  (*(v126 + 8))(v125, v127);
  v101 = *(v98 + 8);
  v102 = v113;
  v101(v124, v113);
  v101(v99, v102);
  return v131;
}

void sub_2289CF614(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5, SEL *a6)
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  sub_2289D0B64(v10, a5, a6);
  swift_unknownObjectRelease();
}

uint64_t sub_2289CFA3C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_22911B88C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = _Block_copy(a4);
  sub_22911B86C();
  sub_22911B86C();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v12(v10, v6);
  v11[2](v11, 1, 0);
  _Block_release(v11);

  v13 = *(v4 + 8);

  return v13();
}

id sub_2289CFBAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDWorkoutMetricsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HDWorkoutMetricsDataSource()
{
  result = qword_27D8630B0;
  if (!qword_27D8630B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2289CFCA4()
{
  sub_2289CFD5C(319, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2289CFD5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911C6CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289CFDB0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2289D0EDC;

  return v7();
}

uint64_t sub_2289CFE98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2289CFF80;

  return v8();
}

uint64_t sub_2289CFF80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2289D0074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_2289CFD5C(0, &qword_27D8630E8, MEMORY[0x277D85720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - v12;
  sub_2289D092C(a3, v26 - v12, &qword_27D8630E8, v9);
  v14 = sub_22911C4EC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2289D0998(v13, &qword_27D8630E8, MEMORY[0x277D85720]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22911C4DC();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_22911C4CC();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_22911C3BC() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_2289D0998(a3, &qword_27D8630E8, MEMORY[0x277D85720]);

    return v24;
  }

LABEL_8:
  sub_2289D0998(a3, &qword_27D8630E8, MEMORY[0x277D85720]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2289D03A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2289D049C;

  return v7(a1);
}

uint64_t sub_2289D049C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2289D05B4()
{
  result = qword_27D8630D0;
  if (!qword_27D8630D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8630D0);
  }

  return result;
}

uint64_t sub_2289D0618(uint64_t a1, uint64_t a2)
{
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2289D0698()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2289CFF80;

  return sub_2289CFA3C(v2, v3, v4, v5);
}

uint64_t sub_2289D0760()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2289D0EDC;

  return sub_2289CFDB0(v2, v3, v5);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2289D0860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2289D0EDC;

  return sub_2289CFE98(a1, v4, v5, v7);
}

uint64_t sub_2289D092C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2289CFD5C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289D0998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2289CFD5C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2289D09F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2289D0EDC;

  return sub_2289D03A4(a1, v5);
}

uint64_t sub_2289D0AAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2289CFF80;

  return sub_2289D03A4(a1, v5);
}

void sub_2289D0B64(void *a1, const char *a2, SEL *a3)
{
  v6 = v3;
  swift_getObjectType();
  v8 = [a1 workoutConfiguration];
  v9 = [v8 activityType];

  if (sub_2289CE1D0(v9))
  {
    type metadata accessor for HDSwimmingDataCollector();
    if (swift_dynamicCastClass())
    {
      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v10 = sub_22911B95C();
      __swift_project_value_buffer(v10, qword_27D86A948);
      v11 = sub_22911B94C();
      v12 = sub_22911C5FC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v30 = v14;
        *v13 = 136446210;
        v15 = sub_22911CBAC();
        v17 = a2;
        v18 = a3;
        v19 = sub_2289B9170(v15, v16, &v30);

        *(v13 + 4) = v19;
        a3 = v18;
        _os_log_impl(&dword_228986000, v11, v12, v17, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AAC9830](v14, -1, -1);
        MEMORY[0x22AAC9830](v13, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        [*(Strong + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers) *a3];
      }

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v22 = sub_22911B95C();
  __swift_project_value_buffer(v22, qword_27D86A948);
  oslog = sub_22911B94C();
  v23 = sub_22911C5EC();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136446210;
    v26 = sub_22911CBAC();
    v28 = sub_2289B9170(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_228986000, oslog, v23, "%{public}s Failed to find swimming data collector", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAC9830](v25, -1, -1);
    MEMORY[0x22AAC9830](v24, -1, -1);
  }
}

id HDHRIndicatorSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIndicatorSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIndicatorSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIndicatorSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIndicatorSnapshotEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIndicatorSnapshotEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon27HDHRIndicatorSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v38 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_229164690;
  v36 = v7;
  v37 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x80000002291833C0;
  *v4 = v8;
  v9 = *MEMORY[0x277D109D0];
  v10 = *(v1 + 104);
  v35 = v1 + 104;
  v10(v4, v9, v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  *v14 = 0xD000000000000010;
  *(v14 + 1) = 0x8000000229182120;
  v17 = *MEMORY[0x277D109B8];
  v18 = sub_22911C64C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  *v4 = v13;
  v19 = *MEMORY[0x277D109C8];
  v20 = v0;
  v32 = v10;
  v10(v4, v19, v0);
  v21 = v38;
  sub_22911C67C();
  v33 = 2 * v21;
  v34 = "collection_identifier";
  v22 = sub_22911C65C();
  v23 = swift_allocBox();
  v24 = *MEMORY[0x277D109D8];
  v25 = *(*(v22 - 8) + 104);
  v25(v26, v24, v22);
  *v4 = v23;
  v27 = *MEMORY[0x277D109F8];
  v10(v4, v27, v20);
  sub_22911C67C();
  v28 = swift_allocBox();
  v25(v29, v24, v22);
  *v4 = v28;
  v32(v4, v27, v20);
  sub_22911C67C();
  return v36;
}

void sub_2289D173C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289D17B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x65756C61765F61;
    }

    if (v2)
    {
      v4 = 0x8000000229181B60;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x65756C61765F62;
    v4 = 0xE700000000000000;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000229181B80;
  }

  else
  {
    v3 = 0x6C616E696769726FLL;
    v4 = 0xED000074696E755FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x65756C61765F61;
    }

    if (a2)
    {
      v5 = 0x8000000229181B60;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x65756C61765F62)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000229181B80;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED000074696E755FLL;
    if (v3 != 0x6C616E696769726FLL)
    {
LABEL_31:
      v7 = sub_22911CADC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2289D1960(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64615F736168;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C74665F736168;
    }

    else
    {
      v5 = 0x64615F736168;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6E696E6B5F736168;
    v4 = 0xE900000000000070;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x6473735F736168;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x73685F736168;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x6C74665F736168;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6E696E6B5F736168;
    v6 = 0xE900000000000070;
    v7 = 0xE700000000000000;
    v8 = 0x6473735F736168;
    if (a2 != 3)
    {
      v8 = 0x73685F736168;
      v7 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22911CADC();
  }

  return v12 & 1;
}

uint64_t HDOHSEntity.Property.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64615F736168;
  v3 = 0x6E696E6B5F736168;
  v4 = 0x6473735F736168;
  if (v1 != 3)
  {
    v4 = 0x73685F736168;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C74665F736168;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HealthDaemon::HDOHSEntity::Property_optional __swiftcall HDOHSEntity.Property.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22911CA9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2289D1BD8()
{
  v1 = *v0;
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

uint64_t sub_2289D1CB8()
{
  *v0;
  *v0;
  *v0;
  sub_22911C3DC();
}

uint64_t sub_2289D1D84()
{
  v1 = *v0;
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

void sub_2289D1E6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64615F736168;
  v5 = 0xE900000000000070;
  v6 = 0x6E696E6B5F736168;
  v7 = 0xE700000000000000;
  v8 = 0x6473735F736168;
  if (v2 != 3)
  {
    v8 = 0x73685F736168;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C74665F736168;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t static HDOHSEntity.foreignKeys()()
{
  sub_2289B5B48(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v1;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  v2 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v2;
}

id HDOHSEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDOHSEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDOHSEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDOHSEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDOHSEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon11HDOHSEntityC7columnsSaySo20HDSQLiteSchemaEntityC0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v47 = sub_22911C68C();
  v40 = *(v47 - 8);
  v1 = v40;
  v0 = v40;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22911C66C();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v48);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v38 - v10);
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v12 = *(v0 + 72);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v45 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_229163C40;
  v15 = sub_22911C35C();
  v41 = v16;
  v42 = v15;
  sub_2289B5B9C();
  v18 = v17;
  v19 = swift_allocBox();
  v21 = v20;
  v22 = *(v18 + 48);
  *v20 = 0xD000000000000013;
  *(v20 + 1) = 0x8000000229183140;
  v23 = *MEMORY[0x277D109B8];
  v24 = sub_22911C64C();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  *v11 = v19;
  v25 = *MEMORY[0x277D109C8];
  v26 = *(v5 + 104);
  v46 = v5 + 104;
  v43 = v26;
  v26(v11, v25, v48);
  v44 = v13;
  v39 = v14;
  sub_22911C67C();
  v49 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 5, 0);
  v27 = v49;
  LODWORD(v42) = *MEMORY[0x277D109D8];
  LODWORD(v41) = *MEMORY[0x277D10A18];
  v28 = (v40 + 32);
  v29 = sub_22911C65C();
  v30 = 0;
  v40 = v29 - 8;
  do
  {
    v31 = v4;
    v32 = byte_283BE38A0[v30 + 32];
    v33 = swift_allocBox();
    (*(*(v29 - 8) + 104))(v34, v42, v29);
    *v9 = v33;
    v43(v9, v41, v48);
    sub_22911C67C();
    v49 = v27;
    v36 = *(v27 + 16);
    v35 = *(v27 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_2289FD438(v35 > 1, v36 + 1, 1);
      v27 = v49;
    }

    ++v30;
    *(v27 + 16) = v36 + 1;
    (*v28)(v27 + v44 + v36 * v45, v31, v47);
    v4 = v31;
  }

  while (v30 != 5);
  v49 = v39;
  sub_228A1008C(v27);
  return v49;
}

unint64_t sub_2289D27F4()
{
  result = qword_27D863160;
  if (!qword_27D863160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863160);
  }

  return result;
}

unint64_t sub_2289D284C()
{
  result = qword_27D863168;
  if (!qword_27D863168)
  {
    sub_2289D28A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863168);
  }

  return result;
}

void sub_2289D28A4()
{
  if (!qword_27D863170)
  {
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863170);
    }
  }
}

uint64_t sub_2289D2928@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 name];
  v25 = sub_22911C35C();
  v6 = v5;

  v7 = [v1 package];
  v8 = sub_22911C35C();
  v10 = v9;

  v11 = [v1 version];
  v12 = sub_22911C35C();
  v14 = v13;

  v15 = [v1 compatibilityVersion];
  v16 = sub_22911C35C();
  v18 = v17;

  v19 = [v2 authorizationIdentifiers];
  v20 = sub_22911C45C();

  *a1 = v25;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v20;
  v21 = *MEMORY[0x277CCB468];
  v22 = sub_22911BF0C();
  v23 = *(*(v22 - 8) + 104);

  return v23(a1, v21, v22);
}

uint64_t sub_2289D2AE4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 UUID];
  sub_22911B8CC();

  v4 = *MEMORY[0x277CCB488];
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_2289D2B80@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 authorizationIdentifiers];
  v4 = sub_22911C45C();

  *a1 = v4;
  v5 = *MEMORY[0x277CCB4A0];
  v6 = sub_22911BF0C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

id HDHRIntroSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIntroSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIntroSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIntroSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIntroSnapshotEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIntroSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIntroSnapshotEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIntroSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon23HDHRIntroSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v20 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v21 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_229163C50;
  v19[1] = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x80000002291833C0;
  *v4 = v8;
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  v19[0] = sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v9(v4, *MEMORY[0x277D109C8], v20);
  sub_22911C67C();
  return v7;
}

unint64_t static HDHREntity.foreignKeys()()
{
  sub_2289D3CA4(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v1;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  v2 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v2;
}

id HDHREntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHREntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHREntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHREntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHREntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon10HDHREntityC18privateSubEntitiesSayyXlXpGyFZ_0()
{
  sub_2289D3CA4(0, &qword_27D863158, sub_2289BF80C);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_229164960;
  *(v0 + 32) = type metadata accessor for HDHRDemoEntity();
  *(v0 + 40) = type metadata accessor for HDHRIntroSnapshotEntity();
  *(v0 + 48) = type metadata accessor for HDHRDomainSnapshotEntity();
  *(v0 + 56) = type metadata accessor for HDHRIndicatorSnapshotEntity();
  *(v0 + 64) = type metadata accessor for HDHRConstellationSnapshotEntity();
  *(v0 + 72) = type metadata accessor for HDHRIndicatorCollectionEntity();
  *(v0 + 80) = type metadata accessor for HDHRCResultsEntity();
  *(v0 + 88) = type metadata accessor for HDHREResultsEntity();
  *(v0 + 96) = type metadata accessor for HDHRISnapshotCollectionEntity();
  *(v0 + 104) = type metadata accessor for HDHRPreviousContentEntity();
  *(v0 + 112) = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return v0;
}

uint64_t _s12HealthDaemon10HDHREntityC7columnsSaySo20HDSQLiteSchemaEntityC0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D3CA4(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v30 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = 2 * v30;
  v7 = swift_allocObject();
  v31 = v7;
  *(v7 + 16) = xmmword_229163C60;
  v29[2] = v7 + v6;
  sub_22911C35C();
  sub_2289B5B9C();
  v9 = v8;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 48);
  *v11 = 0xD000000000000013;
  *(v11 + 1) = 0x8000000229183140;
  v14 = *MEMORY[0x277D109B8];
  v15 = sub_22911C64C();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  *v4 = v10;
  v16 = *MEMORY[0x277D109C8];
  v17 = *(v1 + 104);
  v29[1] = v1 + 104;
  v17(v4, v16, v0);
  sub_22911C67C();
  v18 = swift_allocBox();
  v20 = v19;
  v21 = sub_22911C65C();
  v22 = swift_allocBox();
  v23 = *MEMORY[0x277D109D8];
  v24 = *(*(v21 - 8) + 104);
  v24(v25, v23, v21);
  *v20 = v22;
  v17(v20, *MEMORY[0x277D109E8], v0);
  *v4 = v18;
  v17(v4, *MEMORY[0x277D10A10], v0);
  sub_22911C67C();
  v26 = swift_allocBox();
  v24(v27, v23, v21);
  *v4 = v26;
  v17(v4, *MEMORY[0x277D10A18], v0);
  sub_22911C67C();
  return v31;
}

void sub_2289D3CA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289D3CF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v6 = sub_22911BE5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 entityIdentifier];
  v11 = [a1 schemaIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_22911C35C();
  }

  v13 = [a1 description];
  sub_22911C35C();

  sub_22911BE4C();
  swift_beginAccess();
  v14 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_2289B0254(v18, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v6);
  *(a4 + 16) = v19;
  return swift_endAccess();
}

id HDHRFAMeasureCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRFAMeasureCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRFAMeasureCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRFAMeasureCollectionEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRFAMeasureCollectionEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon29HDHRFAMeasureCollectionEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v38 = sub_22911C66C();
  v0 = *(v38 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v38);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v37 = &v27[-v5];
  v36 = sub_22911C68C();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 4, 0);
  v9 = 0;
  v10 = v39;
  v31 = 0x8000000229182750;
  v33 = *MEMORY[0x277D109D8];
  v32 = *MEMORY[0x277D109F8];
  v11 = (v0 + 104);
  v30 = *MEMORY[0x277D109E8];
  v29 = 0x80000002291820F0;
  v12 = (v0 + 32);
  v28 = *MEMORY[0x277D109D0];
  v34 = v6 + 32;
  do
  {
    if (byte_283BE38C8[v9 + 32] > 1u)
    {
      if (byte_283BE38C8[v9 + 32] == 2)
      {
        v16 = sub_22911C65C();
        v17 = swift_allocBox();
        (*(*(v16 - 8) + 104))(v18, v33, v16);
        *v4 = v17;
        v15 = v30;
        goto LABEL_8;
      }
    }

    else if (!byte_283BE38C8[v9 + 32])
    {
      v13 = swift_allocObject();
      v14 = v29;
      *(v13 + 16) = 0xD000000000000021;
      *(v13 + 24) = v14;
      *v4 = v13;
      v15 = v28;
      goto LABEL_8;
    }

    v19 = sub_22911C65C();
    v20 = swift_allocBox();
    (*(*(v19 - 8) + 104))(v21, v33, v19);
    *v4 = v20;
    v15 = v32;
LABEL_8:
    v22 = v38;
    (*v11)(v4, v15, v38);
    (*v12)(v37, v4, v22);
    v23 = v35;
    sub_22911C67C();
    v39 = v10;
    v25 = *(v10 + 16);
    v24 = *(v10 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2289FD438(v24 > 1, v25 + 1, 1);
      v10 = v39;
    }

    ++v9;
    *(v10 + 16) = v25 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v23, v36);
  }

  while (v9 != 4);
  return v10;
}

id HDHREResultsEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHREResultsEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHREResultsEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHREResultsEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHREResultsEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHREResultsEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHREResultsEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHREResultsEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon18HDHREResultsEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v39 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v36 = 4 * v39;
  v7 = swift_allocObject();
  v35 = v7;
  *(v7 + 16) = xmmword_229163F30;
  v38 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000021;
  *(v8 + 24) = 0x80000002291820F0;
  *v4 = v8;
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277D109D0], v0);
  v34 = v9;
  v37 = v1 + 104;
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v18 = *MEMORY[0x277D109C8];
  v33 = v0;
  v9(v4, v18, v0);
  sub_22911C67C();
  v19 = sub_22911C65C();
  v20 = swift_allocBox();
  v21 = *MEMORY[0x277D109D8];
  v22 = *(*(v19 - 8) + 104);
  v22(v23, v21, v19);
  *v4 = v20;
  v24 = *MEMORY[0x277D109F8];
  v25 = v34;
  v34(v4, v24, v0);
  sub_22911C67C();
  v26 = swift_allocBox();
  v22(v27, v21, v19);
  *v4 = v26;
  v28 = v33;
  v25(v4, v24, v33);
  sub_22911C67C();
  v29 = swift_allocBox();
  v22(v30, *MEMORY[0x277D109E0], v19);
  *v4 = v29;
  v25(v4, *MEMORY[0x277D109E8], v28);
  sub_22911C67C();
  return v35;
}

id HDHRCResultsEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRCResultsEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRCResultsEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRCResultsEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRCResultsEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRCResultsEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRCResultsEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRCResultsEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon18HDHRCResultsEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v84 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v73 = v7;
  *(v7 + 16) = xmmword_229164A80;
  v8 = v7 + v6;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000021;
  *(v9 + 24) = 0x80000002291820F0;
  *v4 = v9;
  v10 = *(v1 + 104);
  (v10)(v4, *MEMORY[0x277D109D0], v0);
  v80 = v1 + 104;
  sub_22911C67C();
  v83 = sub_22911C35C();
  sub_2289B5B9C();
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  *v14 = 0xD000000000000010;
  *(v14 + 1) = 0x8000000229182120;
  v17 = *MEMORY[0x277D109B8];
  v18 = sub_22911C64C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  *v4 = v13;
  v19 = *MEMORY[0x277D109C8];
  v79 = v0;
  (v10)(v4, v19, v0);
  v82 = v8;
  v20 = v84;
  sub_22911C67C();
  v76 = 2 * v20;
  v21 = sub_22911C65C();
  v22 = swift_allocBox();
  v77 = *MEMORY[0x277D109D8];
  v23 = *(v21 - 8);
  v24 = *(v23 + 104);
  v25 = v23 + 104;
  v24(v26);
  v78 = v25;
  v83 = v24;
  *v4 = v22;
  LODWORD(v75) = *MEMORY[0x277D109F8];
  v10(v4);
  v27 = v76;
  sub_22911C67C();
  v76 = v27 + v84;
  v28 = v84;
  v74 = "collection_identifier";
  v29 = swift_allocBox();
  v30 = v77;
  (v24)(v31, v77, v21);
  *v4 = v29;
  v32 = v75;
  v33 = v79;
  v81 = v10;
  (v10)(v4, v75, v79);
  sub_22911C67C();
  v76 = 4 * v28;
  v34 = swift_allocBox();
  v35 = v83;
  v83(v36, v30, v21);
  *v4 = v34;
  (v10)(v4, v32, v33);
  sub_22911C67C();
  v37 = swift_allocBox();
  v38 = *MEMORY[0x277D109E0];
  v35(v39, v38, v21);
  *v4 = v37;
  LODWORD(v76) = *MEMORY[0x277D10A08];
  v40 = v33;
  v41 = v81;
  v81(v4);
  sub_22911C67C();
  v42 = swift_allocBox();
  LODWORD(v74) = v38;
  v43 = v83;
  v83(v44, v38, v21);
  *v4 = v42;
  v41(v4, v75, v40);
  sub_22911C67C();
  v71 = 7 * v84;
  v72 = 8 * v84;
  v45 = swift_allocBox();
  v46 = v43;
  v43(v47, v38, v21);
  *v4 = v45;
  LODWORD(v75) = *MEMORY[0x277D109E8];
  v48 = v75;
  v49 = v79;
  v50 = v81;
  (v81)(v4, v75, v79);
  v51 = v82;
  sub_22911C67C();
  v52 = swift_allocBox();
  v46(v53, v74, v21);
  *v4 = v52;
  v50(v4, v48, v49);
  sub_22911C67C();
  v54 = v84;
  v55 = swift_allocBox();
  v56 = v74;
  v83(v57, v74, v21);
  *v4 = v55;
  v58 = v79;
  v50(v4, v76, v79);
  sub_22911C67C();
  v59 = v51;
  v71 = "on18HDHREResultsEntity";
  v72 = v51 + 10 * v54;
  v60 = swift_allocBox();
  v61 = v83;
  v83(v62, v56, v21);
  *v4 = v60;
  v63 = v81;
  (v81)(v4, v75, v58);
  sub_22911C67C();
  v75 = v59 + 11 * v54;
  v64 = swift_allocBox();
  v65 = v77;
  v61(v66, v77, v21);
  *v4 = v64;
  v67 = v76;
  v63(v4, v76, v58);
  sub_22911C67C();
  v68 = swift_allocBox();
  v61(v69, v65, v21);
  *v4 = v68;
  (v81)(v4, v67, v58);
  sub_22911C67C();
  return v73;
}

uint64_t sub_2289D595C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 sourceDeviceIdentifier];
  v4 = sub_22911C35C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  v7 = *MEMORY[0x277CCB498];
  v8 = sub_22911BF0C();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

uint64_t HDSwimmingDataCollector.__allocating_init(profile:tracker:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2289D83FC();

  return v6;
}

void sub_2289D5A5C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22911B7EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t HDSwimmingDataCollector.init(profile:tracker:)(void *a1, void *a2)
{
  v4 = sub_2289D83FC();

  return v4;
}

void sub_2289D5B10(uint64_t a1, void *a2)
{
  v7 = v2;
  swift_getObjectType();
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v40 = a1;
    }

    else
    {
      v40 = a1 & 0xF8;
    }

    if (sub_22911C78C() <= 0)
    {
      return;
    }

    v70 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    v69 = a2;
    v10 = sub_22911C78C();
    if (!v10)
    {
      v11 = a2;
      v40 = 1;
      v63 = MEMORY[0x277D84F90];
      v64 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    if (v10 < 1)
    {
      __break(1u);
      goto LABEL_53;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }

    v70 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    v69 = a2;
  }

  v65 = a1 & 0xC000000000000001;
  v67 = v10;
  v11 = a2;
  swift_beginAccess();
  v12 = 0;
  v13 = 0;
  v63 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v61 = a1;
  v62 = v7;
  do
  {
    if (v65)
    {
      v14 = MEMORY[0x22AAC6410](v13, a1);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:

      goto LABEL_10;
    }

    v14 = *(a1 + 8 * v13 + 32);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_10:
    v15 = qword_27D862780;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_22911B95C();
    __swift_project_value_buffer(v17, qword_27D86A948);
    v18 = sub_22911B94C();
    v19 = sub_22911C5FC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v68 = v22;
      *v20 = 136446722;
      v23 = sub_22911CBAC();
      v25 = sub_2289B9170(v23, v24, &v68);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v11;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v16;
      *v21 = v11;
      v21[1] = v16;
      v26 = v16;
      v27 = v11;
      _os_log_impl(&dword_228986000, v18, v19, "%{public}s Calculating difference for prior swim data %@ and current swim data %@", v20, 0x20u);
      sub_2289C4A64();
      swift_arrayDestroy();
      v28 = v21;
      a1 = v61;
      MEMORY[0x22AAC9830](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v29 = v22;
      v7 = v62;
      MEMORY[0x22AAC9830](v29, -1, -1);
      MEMORY[0x22AAC9830](v20, -1, -1);
    }

    v30 = v16;
    v31 = v11;
    v32 = sub_2289D62F8(v31, v30);

    if (v32)
    {
      v33 = v32;
      MEMORY[0x22AAC6000]();
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22911C47C();
      }

      sub_22911C4AC();

      v63 = v71;
    }

    v34 = v30;
    v35 = v31;
    v36 = sub_2289D70F0(v35, v34);

    if (v36)
    {
      v37 = v36;
      MEMORY[0x22AAC6000]();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22911C47C();
      }

      sub_22911C4AC();

      v64 = v70;
    }

    else
    {
    }

    ++v13;
    v69 = v34;
    v11 = v34;

    v12 = 1;
  }

  while (v67 != v13);
  v40 = 0;
LABEL_25:
  Strong = swift_unknownObjectWeakLoadStrong();
  v66 = v11;
  if (Strong && (v42 = Strong, v43 = [Strong dataCollectionManager], v42, v43))
  {
    sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
    v44 = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCC78]);
    v4 = [v43 aggregatorForType_];
  }

  else
  {
    v4 = 0;
  }

  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45 && (v46 = v45, v47 = [v45 dataCollectionManager], v46, v47))
  {
    sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
    v48 = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCB38]);
    v5 = [v47 aggregatorForType_];
  }

  else
  {
    v5 = 0;
  }

  v3 = 0x277CCD000uLL;
  v6 = &selRef_journalPath;
  a1 = &selRef_courseAccuracy;
  if (!v4)
  {

    v53 = v64;
    if (v5)
    {
      goto LABEL_37;
    }

LABEL_42:

    if (v40)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (!(v63 >> 62))
  {
    v49 = v4;

    sub_22911CAEC();
    sub_2289D86B4();
    goto LABEL_36;
  }

LABEL_53:
  sub_2289D86B4();
  v59 = v4;

  sub_22911CA3C();

LABEL_36:

  sub_2289D86B4();
  v50 = sub_22911C44C();

  v51 = *(v3 + 744);
  v52 = [objc_opt_self() v6[130]];
  [v4 *(a1 + 1360)];

  v53 = v64;
  if (!v5)
  {
    goto LABEL_42;
  }

LABEL_37:
  if (v53 >> 62)
  {
    sub_2289D86B4();
    v60 = v5;

    sub_22911CA3C();
  }

  else
  {
    v54 = v5;

    sub_22911CAEC();
    sub_2289D86B4();
  }

  sub_2289D86B4();
  v55 = sub_22911C44C();

  v56 = *(v3 + 744);
  v57 = [objc_opt_self() v6[130]];
  [v5 *(a1 + 1360)];

  if (v40)
  {
LABEL_40:
    v58 = v66;
    goto LABEL_44;
  }

LABEL_43:
  v58 = v66;

LABEL_44:
}

id sub_2289D62F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v131 = sub_22911B95C();
  v4 = *(v131 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v131);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = &v112 - v9;
  v10 = sub_22911B7DC();
  v122 = *(v10 - 8);
  v11 = *(v122 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v112 - v14;
  v15 = MEMORY[0x277D83D88];
  sub_2289D8B5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v126 = &v112 - v18;
  v19 = sub_22911B8DC();
  v127 = *(v19 - 8);
  v128 = v19;
  v20 = *(v127 + 64);
  MEMORY[0x28223BE20](v19);
  v124 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289D8B5C(0, &qword_27D862B48, MEMORY[0x277CC9578], v15);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  v130 = sub_22911B88C();
  v29 = *(v130 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v130);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v112 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v40 = &v112 - v39;
  v41 = *(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  v42 = *(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  v43 = __OFSUB__(v41, v42);
  v44 = v41 - v42;
  if (v43)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v44 < 1)
  {
    sub_22911B92C();
    v50 = sub_22911B94C();
    v51 = sub_22911C5FC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v132[0] = v53;
      *v52 = 136446210;
      v54 = sub_22911CBAC();
      v56 = sub_2289B9170(v54, v55, v132);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_228986000, v50, v51, "%{public}s Stroke difference between current and prior swim objects is not greater than zero.", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AAC9830](v53, -1, -1);
      MEMORY[0x22AAC9830](v52, -1, -1);
    }

    (*(v4 + 8))(v8, v131);
    return 0;
  }

  v118 = v38;
  v119 = v44;
  v120 = v37;
  v117 = v4;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v28, &qword_27D862B48, MEMORY[0x277CC9578]);
  v45 = *(v29 + 48);
  v46 = v130;
  if (v45(v28, 1, v130) == 1)
  {
    v47 = &qword_27D862B48;
    v48 = MEMORY[0x277CC9578];
    v49 = v28;
    goto LABEL_13;
  }

  v115 = v35;
  v116 = v10;
  v57 = *(v29 + 32);
  v57(v40, v28, v46);
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v26, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v45(v26, 1, v46) == 1)
  {
    (*(v29 + 8))(v40, v46);
    v47 = &qword_27D862B48;
    v48 = MEMORY[0x277CC9578];
    v49 = v26;
    goto LABEL_13;
  }

  v113 = v40;
  v114 = v29;
  v58 = v115;
  v57(v115, v26, v46);
  v112 = a2;
  v59 = v126;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v126, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v61 = v127;
  v60 = v128;
  if ((*(v127 + 48))(v59, 1, v128) == 1)
  {
    v62 = *(v114 + 8);
    v62(v58, v46);
    v62(v113, v46);
    v47 = &qword_27D8630C0;
    v48 = MEMORY[0x277CC95F0];
    v49 = v59;
LABEL_13:
    sub_2289D8C40(v49, v47, v48);
    v36 = v131;
    if (qword_27D862780 == -1)
    {
LABEL_14:
      __swift_project_value_buffer(v36, qword_27D86A948);
      v63 = sub_22911B94C();
      v64 = sub_22911C5EC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v132[0] = v66;
        *v65 = 136446210;
        v67 = sub_22911CBAC();
        v69 = sub_2289B9170(v67, v68, v132);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_228986000, v63, v64, "%{public}s Unable to calculate lap difference for prior swim data. start, end or sourceID is nil", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x22AAC9830](v66, -1, -1);
        MEMORY[0x22AAC9830](v65, -1, -1);
      }

      return 0;
    }

LABEL_23:
    v111 = v36;
    swift_once();
    v36 = v111;
    goto LABEL_14;
  }

  (*(v61 + 32))(v124, v59, v60);
  v71 = *(v114 + 16);
  v71(v118, v113, v46);
  v71(v120, v58, v46);
  v72 = v125;
  sub_22911B7CC();
  v73 = [objc_opt_self() countUnit];
  v74 = [objc_opt_self() quantityWithUnit:v73 doubleValue:v119];

  v75 = v123;
  sub_22911B92C();
  v76 = v122;
  v77 = v121;
  (*(v122 + 16))(v121, v72, v116);
  v78 = v74;
  v79 = sub_22911B94C();
  v80 = sub_22911C5FC();

  v81 = os_log_type_enabled(v79, v80);
  v82 = v131;
  if (v81)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v132[0] = v120;
    *v83 = 136446722;
    v85 = sub_22911CBAC();
    v87 = sub_2289B9170(v85, v86, v132);

    *(v83 + 4) = v87;
    *(v83 + 12) = 2080;
    sub_2289D8CB0();
    v88 = v116;
    v89 = sub_22911CAAC();
    v91 = v90;
    v92 = *(v76 + 8);
    v126 = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v92;
    v92(v77, v88);
    v93 = sub_2289B9170(v89, v91, v132);
    v61 = v127;

    *(v83 + 14) = v93;
    *(v83 + 22) = 2112;
    *(v83 + 24) = v78;
    *v84 = v78;
    v94 = v78;
    _os_log_impl(&dword_228986000, v79, v80, "%{public}s Creating stroke datum with date interval %s and quantity %@", v83, 0x20u);
    sub_2289D8D08(v84, sub_2289C4A64);
    v95 = v84;
    v60 = v128;
    MEMORY[0x22AAC9830](v95, -1, -1);
    v96 = v120;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v96, -1, -1);
    MEMORY[0x22AAC9830](v83, -1, -1);

    (*(v117 + 8))(v123, v131);
  }

  else
  {

    v97 = *(v76 + 8);
    v126 = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v97;
    v97(v77, v116);
    (*(v117 + 8))(v75, v82);
  }

  sub_2289D8B5C(0, &qword_27D863220, sub_2289B3BE4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  v99 = *MEMORY[0x277CCC518];
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v100;
  v101 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 72) = sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  *(inited + 48) = v101;
  sub_2289B26A8(inited);
  swift_setDeallocating();
  sub_2289D8D08(inited + 32, sub_2289B3BE4);
  v102 = objc_allocWithZone(HDQuantityDatum);
  v103 = v124;
  v104 = sub_22911B8BC();
  v105 = v125;
  v106 = sub_22911B7AC();
  v107 = sub_22911C2BC();

  v108 = [v102 initWithIdentifier:v104 dateInterval:v106 quantity:v78 metadata:v107 resumeContextProvider:0];

  ObjectType(v105, v116);
  (*(v61 + 8))(v103, v60);
  v109 = *(v114 + 8);
  v110 = v130;
  v109(v115, v130);
  v109(v113, v110);
  return v108;
}

id sub_2289D70F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22911B95C();
  v130 = *(v4 - 8);
  v5 = *(v130 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = v114 - v9;
  v10 = sub_22911B7DC();
  v122 = *(v10 - 8);
  v11 = *(v122 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = v114 - v14;
  v15 = MEMORY[0x277D83D88];
  sub_2289D8B5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = v114 - v18;
  v19 = sub_22911B8DC();
  v20 = *(v19 - 8);
  v127 = v19;
  v128 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v125 = v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289D8B5C(0, &qword_27D862B48, MEMORY[0x277CC9578], v15);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v114 - v28;
  v30 = sub_22911B88C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v114 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = v114 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v43 = *(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance) - *(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance);
  if (v43 <= 2.22044605e-16)
  {
    v46 = v4;
    sub_22911B92C();
    v47 = sub_22911B94C();
    v48 = sub_22911C5FC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v131[0] = v50;
      *v49 = 136446210;
      v51 = sub_22911CBAC();
      v53 = sub_2289B9170(v51, v52, v131);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_228986000, v47, v48, "%{public}s Distance difference between current and prior swim objects is too small", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAC9830](v50, -1, -1);
      MEMORY[0x22AAC9830](v49, -1, -1);
    }

    (*(v130 + 8))(v8, v46);
    return 0;
  }

  v118 = v42;
  v120 = v114 - v41;
  v119 = v10;
  v44 = v40;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v29, &qword_27D862B48, MEMORY[0x277CC9578]);
  v45 = *(v31 + 48);
  if (v45(v29, 1, v44) == 1)
  {
    sub_2289D8C40(v29, &qword_27D862B48, MEMORY[0x277CC9578]);
LABEL_12:
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27D86A948);
    v65 = sub_22911B94C();
    v66 = sub_22911C5EC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v131[0] = v68;
      *v67 = 136446210;
      v69 = sub_22911CBAC();
      v71 = sub_2289B9170(v69, v70, v131);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_228986000, v65, v66, "%{public}s Unable to calculate lap difference for prior swim data. start, end or sourceID is nil", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x22AAC9830](v68, -1, -1);
      MEMORY[0x22AAC9830](v67, -1, -1);
    }

    return 0;
  }

  v116 = v39;
  v117 = v4;
  v54 = v120;
  v55 = v29;
  v56 = *(v31 + 32);
  v56(v120, v55, v44);
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v27, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v45(v27, 1, v44) == 1)
  {
    (*(v31 + 8))(v54, v44);
    v57 = &qword_27D862B48;
    v58 = MEMORY[0x277CC9578];
    v59 = v27;
LABEL_11:
    sub_2289D8C40(v59, v57, v58);
    v4 = v117;
    goto LABEL_12;
  }

  v115 = v31;
  v60 = v116;
  v56(v116, v27, v44);
  v114[1] = a2;
  v61 = v124;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v124, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v63 = v127;
  v62 = v128;
  if ((*(v128 + 48))(v61, 1, v127) == 1)
  {
    v64 = *(v115 + 8);
    v64(v60, v44);
    v64(v120, v44);
    v57 = &qword_27D8630C0;
    v58 = MEMORY[0x277CC95F0];
    v59 = v61;
    goto LABEL_11;
  }

  (*(v62 + 32))(v125, v61, v63);
  v73 = *(v115 + 16);
  v73(v36, v120, v44);
  v124 = v44;
  v73(v118, v60, v44);
  v74 = v126;
  sub_22911B7CC();
  v75 = [objc_opt_self() meterUnit];
  v76 = [objc_opt_self() quantityWithUnit:v75 doubleValue:v43];

  v77 = v123;
  sub_22911B92C();
  v78 = v122;
  v79 = v121;
  v80 = v119;
  (*(v122 + 16))(v121, v74, v119);
  v81 = v76;
  v82 = sub_22911B94C();
  v83 = sub_22911C5FC();

  v84 = os_log_type_enabled(v82, v83);
  v85 = v117;
  if (v84)
  {
    v86 = swift_slowAlloc();
    v87 = v80;
    v88 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v131[0] = v118;
    *v86 = 136446722;
    v89 = sub_22911CBAC();
    v91 = sub_2289B9170(v89, v90, v131);

    *(v86 + 4) = v91;
    *(v86 + 12) = 2080;
    sub_2289D8CB0();
    v92 = sub_22911CAAC();
    v94 = v93;
    v95 = *(v78 + 8);
    v122 = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v95;
    v95(v79, v87);
    v96 = sub_2289B9170(v92, v94, v131);
    v63 = v127;

    *(v86 + 14) = v96;
    *(v86 + 22) = 2112;
    *(v86 + 24) = v81;
    *v88 = v81;
    v97 = v81;
    _os_log_impl(&dword_228986000, v82, v83, "%{public}s Creating distance datum with date interval %s and quantity %@", v86, 0x20u);
    sub_2289D8D08(v88, sub_2289C4A64);
    v98 = v88;
    v80 = v87;
    MEMORY[0x22AAC9830](v98, -1, -1);
    v99 = v118;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v99, -1, -1);
    MEMORY[0x22AAC9830](v86, -1, -1);

    (*(v130 + 8))(v123, v117);
  }

  else
  {

    v100 = *(v78 + 8);
    v122 = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v100;
    v100(v79, v80);
    (*(v130 + 8))(v77, v85);
  }

  sub_2289D8B5C(0, &qword_27D863220, sub_2289B3BE4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  v102 = *MEMORY[0x277CCC518];
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v103;
  v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 72) = sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  *(inited + 48) = v104;
  sub_2289B26A8(inited);
  swift_setDeallocating();
  sub_2289D8D08(inited + 32, sub_2289B3BE4);
  v105 = objc_allocWithZone(HDQuantityDatum);
  v106 = v125;
  v107 = sub_22911B8BC();
  v108 = v126;
  v109 = sub_22911B7AC();
  v110 = sub_22911C2BC();

  v111 = [v105 initWithIdentifier:v107 dateInterval:v109 quantity:v81 metadata:v110 resumeContextProvider:0];

  ObjectType(v108, v80);
  (*(v128 + 8))(v106, v63);
  v112 = *(v115 + 8);
  v113 = v124;
  v112(v116, v124);
  v112(v120, v113);
  return v111;
}

id sub_2289D8090()
{
  v0 = [objc_opt_self() _localDeviceSource];

  return v0;
}

uint64_t sub_2289D8114()
{
  v1 = [v0 description];
  v2 = sub_22911C35C();
  v4 = v3;

  MEMORY[0x22AAC5FC0](v2, v4);

  MEMORY[0x22AAC5FC0](45, 0xE100000000000000);
  sub_22911C94C();
  return 0;
}

id HDSwimmingDataCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSwimmingDataCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDSwimmingDataCollector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289D83FC()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_aggregators;
  *&v1[v2] = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  v3 = OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_quantityTypes;
  sub_2289C4ACC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_229164B30;
  sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
  *(v4 + 32) = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCB38]);
  *(v4 + 40) = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCC78]);
  *&v1[v3] = v4;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for HDSwimmingDataCollector();
  v5 = objc_msgSendSuper2(&v19, sel_init);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakAssign();
  v7 = *&v5[OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_quantityTypes];
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v18 = *&v5[OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_quantityTypes];
    }

    result = sub_22911C78C();
    v8 = result;
    if (!result)
    {
      return v5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return v5;
    }
  }

  if (v8 >= 1)
  {
    v9 = OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_aggregators;

    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAC6410](i, v7);
      }

      else
      {
        v11 = *(v7 + 8 * i + 32);
      }

      v12 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v14 = Strong, v15 = [Strong dataCollectionManager], v14, v15))
      {
        v16 = [v15 aggregatorForType_];
      }

      else
      {
        v16 = 0;
      }

      [*&v5[v9] setObject:v16 forKey:v12];
      v17 = [objc_allocWithZone(MEMORY[0x277CCD2A0]) init];
      if (v16)
      {
        [v16 registerDataCollector:v5 state:v17];
      }
    }

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_2289D86B4()
{
  result = qword_27D863188;
  if (!qword_27D863188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D863188);
  }

  return result;
}

void sub_2289D8718(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  swift_getObjectType();
  v5 = sub_22911B95C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_2289C9A90(0, a2, a3);
    v11 = v20;
  }

  else
  {
    sub_22911B92C();
    v12 = sub_22911B94C();
    v13 = sub_22911C5FC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = a3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v17 = sub_22911CBAC();
      v19 = sub_2289B9170(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_228986000, v12, v13, "%{public}s Requesting final data but the tracker is nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AAC9830](v16, -1, -1);
      MEMORY[0x22AAC9830](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    a2(1, 0);
  }
}

void sub_2289D8B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2289D8BC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289D8B5C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289D8C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289D8B5C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2289D8CB0()
{
  result = qword_27D862BA8;
  if (!qword_27D862BA8)
  {
    sub_22911B7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862BA8);
  }

  return result;
}

uint64_t sub_2289D8D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id HDHRConstellationSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRConstellationSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRConstellationSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRConstellationSnapshotEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRConstellationSnapshotEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon31HDHRConstellationSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v38 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_229164690;
  v35 = v7;
  v36 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x80000002291833C0;
  *v4 = v8;
  v9 = *MEMORY[0x277D109D0];
  v37 = *(v1 + 104);
  v37(v4, v9, v0);
  v34 = v1 + 104;
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v18 = v0;
  v19 = v37;
  v37(v4, *MEMORY[0x277D109C8], v0);
  v20 = v38;
  sub_22911C67C();
  v32 = 2 * v20;
  v33 = "ationSnapshotEntity";
  v21 = sub_22911C65C();
  v22 = swift_allocBox();
  v23 = *MEMORY[0x277D109D8];
  v24 = *(*(v21 - 8) + 104);
  v24(v25, v23, v21);
  *v4 = v22;
  v26 = *MEMORY[0x277D109F8];
  v19(v4, v26, v18);
  v27 = v32;
  sub_22911C67C();
  v38 += v27;
  v28 = swift_allocBox();
  v24(v29, v23, v21);
  *v4 = v28;
  v37(v4, v26, v18);
  sub_22911C67C();
  return v35;
}

uint64_t sub_2289D95FC@<X0>(uint64_t *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      v23 = sub_22911C66C();
      v24 = swift_allocBox();
      v26 = v33;
      v34 = sub_22911C65C();
      v35 = swift_allocBox();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D109D8], v34);
      *v26 = v35;
      v30 = MEMORY[0x277D10A00];
      goto LABEL_13;
    case 2:
    case 5:
    case 0xF:
    case 0x10:
      v3 = sub_22911C65C();
      v4 = swift_allocBox();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D109D8], v3);
      *a1 = v4;
      v6 = MEMORY[0x277D10A18];
      goto LABEL_16;
    case 3:
      v7 = sub_22911C65C();
      v8 = swift_allocBox();
      v10 = v41;
      v11 = MEMORY[0x277D109D8];
      goto LABEL_15;
    case 4:
    case 6:
      v12 = sub_22911C65C();
      v13 = swift_allocBox();
      v15 = v14;
      v16 = MEMORY[0x277D109D8];
      goto LABEL_7;
    case 7:
    case 8:
      v12 = sub_22911C65C();
      v13 = swift_allocBox();
      v15 = v22;
      v16 = MEMORY[0x277D109E0];
LABEL_7:
      (*(*(v12 - 8) + 104))(v15, *v16, v12);
      *a1 = v13;
      v6 = MEMORY[0x277D109F8];
      goto LABEL_16;
    case 9:
      v17 = sub_22911C65C();
      v18 = swift_allocBox();
      v20 = v31;
      v21 = MEMORY[0x277D109D8];
      goto LABEL_10;
    case 0xA:
    case 0xB:
      v17 = sub_22911C65C();
      v18 = swift_allocBox();
      v20 = v19;
      v21 = MEMORY[0x277D109E0];
LABEL_10:
      (*(*(v17 - 8) + 104))(v20, *v21, v17);
      *a1 = v18;
      v6 = MEMORY[0x277D109E8];
      goto LABEL_16;
    case 0xC:
    case 0xD:
      v7 = sub_22911C65C();
      v8 = swift_allocBox();
      v10 = v9;
      v11 = MEMORY[0x277D109E0];
LABEL_15:
      (*(*(v7 - 8) + 104))(v10, *v11, v7);
      *a1 = v8;
      v6 = MEMORY[0x277D109F0];
      goto LABEL_16;
    case 0xE:
      v23 = sub_22911C66C();
      v24 = swift_allocBox();
      v26 = v25;
      v27 = sub_22911C65C();
      v28 = swift_allocBox();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D109D8], v27);
      *v26 = v28;
      v30 = MEMORY[0x277D10A18];
LABEL_13:
      v45 = *(*(v23 - 8) + 104);
      v45(v26, *v30, v23);
      *a1 = v24;
      v37 = *MEMORY[0x277D10A10];
      v38 = a1;
      v39 = v23;
      v40 = v45;
      goto LABEL_17;
    default:
      v32 = swift_allocObject();
      *(v32 + 16) = 0xD000000000000013;
      *(v32 + 24) = 0x8000000229183140;
      *a1 = v32;
      v6 = MEMORY[0x277D109D0];
LABEL_16:
      v42 = *v6;
      v43 = sub_22911C66C();
      v40 = *(*(v43 - 8) + 104);
      v39 = v43;
      v38 = a1;
      v37 = v42;
LABEL_17:

      return v40(v38, v37, v39);
  }
}

unint64_t HDClinicalHealthLinkEntity.Property.rawValue.getter()
{
  result = 0x4449574F52;
  switch(*v0)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x5F746E756F636361;
      break;
    case 3:
      result = 0x6464615F65746164;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x646574656C6564;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x6C6562616CLL;
      break;
    case 8:
      result = 0x7367616C66;
      break;
    case 9:
      result = 7955819;
      break;
    case 0xA:
      result = 0x65646F6373736170;
      break;
    case 0xB:
      result = 0x74736566696E616DLL;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000021;
      break;
    case 0xE:
      result = 0x636E615F636E7973;
      break;
    case 0xF:
      result = 0x6564695F636E7973;
      break;
    case 0x10:
      result = 0x6F72705F636E7973;
      break;
    default:
      return result;
  }

  return result;
}