uint64_t _IsValidUserUnitForQuantityType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (_IsValidUserUnitForQuantityType_onceToken != -1)
  {
    _IsValidUserUnitForQuantityType_cold_1();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [_IsValidUserUnitForQuantityType___validUnitStringsByQuantityType objectForKeyedSubscript:v5];
  v7 = [v3 unitString];
  v8 = [v6 containsObject:v7];

LABEL_6:
  return v8;
}

void sub_24B360DD4(void *a1)
{
  v64 = sub_24B3AB7E4();
  v61 = *(v64 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v64);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B3AB7D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24B3AB614();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = v1;
  *&v1[OBJC_IVAR___FIPauseRingsCoordinator_query] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals] = MEMORY[0x277D84F90];
  v11 = v10;
  *&v1[OBJC_IVAR___FIPauseRingsCoordinator_state] = 1;
  *&v1[OBJC_IVAR___FIPauseRingsCoordinator_healthStore] = a1;
  v12 = sub_24B361648(0, &qword_280B17E30, 0x277D85C78);
  v59 = "initialPauseStateLoaded";
  v60 = v12;
  v53 = a1;
  sub_24B3AB604();
  aBlock = v11;
  v13 = sub_24B361690(&qword_280B17E38, MEMORY[0x277D85230]);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52C8, &qword_24B3B01A0);
  v57 = sub_24B3616D8(&qword_280B17E50, &qword_27EFE52C8, &qword_24B3B01A0);
  v58 = v6;
  v56 = v13;
  sub_24B3AB854();
  v55 = *MEMORY[0x277D85260];
  v61 = *(v61 + 104);
  v54 = v5;
  v14 = v64;
  (v61)(v5);
  v15 = sub_24B3AB814();
  v16 = v63;
  *&v63[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue] = v15;
  v59 = "ingsCooridnator.InternalQueue";
  sub_24B3AB604();
  aBlock = MEMORY[0x277D84F90];
  sub_24B3AB854();
  v17 = v54;
  v18 = v55;
  v19 = v61;
  (v61)(v54, v55, v14);
  *&v16[OBJC_IVAR___FIPauseRingsCoordinator_syncQueue] = sub_24B3AB814();
  sub_24B3AB604();
  aBlock = MEMORY[0x277D84F90];
  sub_24B3AB854();
  v19(v17, v18, v64);
  v20 = sub_24B3AB814();
  v21 = v63;
  *&v63[OBJC_IVAR___FIPauseRingsCoordinator_metricQueue] = v20;
  v65.receiver = v21;
  v65.super_class = FIPauseRingsCoordinator;
  v22 = objc_msgSendSuper2(&v65, sel_init);
  sub_24B361648(0, &qword_280B17E48, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = v22;
  v25 = [ObjCClassFromMetadata pauseRingsScheduleType];
  if (!v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  v26 = v25;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = objc_allocWithZone(MEMORY[0x277CCD730]);
  v70 = sub_24B362FBC;
  v71 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_24B362EB0;
  v69 = &block_descriptor_1;
  v29 = _Block_copy(&aBlock);

  v30 = [v28 initWithSampleType:v26 predicate:0 updateHandler:v29];

  _Block_release(v29);

  v31 = *&v24[OBJC_IVAR___FIPauseRingsCoordinator_query];
  *&v24[OBJC_IVAR___FIPauseRingsCoordinator_query] = v30;
  v32 = v30;

  ObjectType = swift_getObjectType();
  v34 = [objc_opt_self() sharedBehavior];
  if (!v34)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = v34;
  v36 = [v34 features];

  if (!v36)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v37 = [v36 pauseRings];

  if (!v37)
  {
LABEL_7:

    return;
  }

  v38 = *MEMORY[0x277CCC650];
  sub_24B3AB6A4();
  v39 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v40 = sub_24B3AB694();

  v41 = [v39 initWithKey:v40 ascending:1];

  v42 = [ObjCClassFromMetadata pauseRingsScheduleType];
  if (v42)
  {
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5308, &unk_24B3B02F0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24B3B0180;
    *(v44 + 32) = v41;
    v45 = swift_allocObject();
    *(v45 + 16) = v24;
    *(v45 + 24) = ObjectType;
    v46 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    sub_24B361648(0, &qword_280B17E40, 0x277CCAC98);
    v47 = v41;
    v48 = v24;
    v49 = sub_24B3AB714();

    v70 = sub_24B36182C;
    v71 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_24B361774;
    v69 = &block_descriptor_162;
    v50 = _Block_copy(&aBlock);
    v51 = [v46 initWithSampleType:v43 predicate:0 limit:0 sortDescriptors:v49 resultsHandler:v50];

    _Block_release(v50);

    [*&v48[OBJC_IVAR___FIPauseRingsCoordinator_healthStore] executeQuery_];

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_24B3615D8()
{
  MEMORY[0x24C23F400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B361610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B361648(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24B361690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B3616D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B361774(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_24B361648(0, &qword_280B17E28, 0x277CCD8A8);
    v5 = sub_24B3AB724();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_24B361840(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v8 = sub_24B3AB5F4();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24B3AB614();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B3AB7C4();
  v17 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], v16))
  {
    v27 = a4;

    v18 = v17;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    if (a1)
    {
      if (a1 >> 62)
      {
        v20 = sub_24B3AB934();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v20 = 0;
    }

    *(v19 + 4) = v20;

    _os_log_impl(&dword_24B35E000, v18, v16, "[PauseRingsCoordinator] Received initial query results (%ld count)...", v19, 0xCu);
    MEMORY[0x24C23F390](v19, -1, -1);

    a4 = v27;
  }

  v21 = *&a3[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a4;
  aBlock[4] = sub_24B361F84;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B361F38;
  aBlock[3] = &block_descriptor_168;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a2;
  sub_24B3AB604();
  v30 = MEMORY[0x277D84F90];
  sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3AB854();
  MEMORY[0x24C23E640](0, v15, v11, v23);
  _Block_release(v23);
  (*(v29 + 8))(v11, v8);
  (*(v12 + 8))(v15, v28);
}

id sub_24B361C10(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B3AB5F4();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B3AB614();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B361F90(a2, a3);
  sub_24B361648(0, &qword_280B17E30, 0x277D85C78);
  v16 = sub_24B3AB7F4();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a4;
  aBlock[4] = sub_24B3A6EB0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B361F38;
  aBlock[3] = &block_descriptor_174;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_24B3AB604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3AB854();
  MEMORY[0x24C23E640](0, v15, v11, v18);
  _Block_release(v18);

  (*(v24 + 8))(v11, v8);
  result = (*(v22 + 8))(v15, v23);
  if (*&v19[OBJC_IVAR___FIPauseRingsCoordinator_query])
  {
    return [*&v19[OBJC_IVAR___FIPauseRingsCoordinator_healthStore] executeQuery_];
  }

  return result;
}

uint64_t sub_24B361F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_24B361F90(unint64_t a1, uint64_t a2)
{
  v5 = sub_24B3AB584();
  v82 = *(v5 - 8);
  v6 = *(v82 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B3AB4C4();
  v81 = *(v9 - 1);
  v10 = *(v81 + 64);
  (MEMORY[0x28223BE20])();
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8) - 8) + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  if (!a2)
  {
    if (a1)
    {
      v22 = sub_24B3629E8(a1);
      if (v22)
      {
        v23 = v22;
        v80 = v21;
        v24 = v22 & 0xFFFFFFFFFFFFFF8;
        v25 = v22 >> 62;
        if (v22 >> 62)
        {
          while (2)
          {
            v26 = sub_24B3AB934();
            if (v26)
            {
LABEL_6:
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v27)
              {
                __break(1u);
              }

              else
              {
                v83 = v23 & 0xC000000000000001;
                v78 = v2;
                v79 = v25;
                if ((v23 & 0xC000000000000001) == 0)
                {
                  if ((v28 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                    goto LABEL_87;
                  }

                  if (v28 >= *(v24 + 16))
                  {
                    __break(1u);
LABEL_89:
                    v8 = sub_24B3A4E70(0, *(v8 + 2) + 1, 1, v8, &qword_27EFE5320, &qword_24B3B0300);
                    goto LABEL_54;
                  }

                  v29 = *(v23 + 8 * v28 + 32);
LABEL_11:
                  v30 = v29;
                  v75 = [v29 endDateIndex];
                  v77 = v30;
                  v76 = [v30 startDateIndex];
                  sub_24B3AB4B4();
                  v31 = sub_24B3AB474();
                  (*(v81 + 8))(v12, v9);
                  v32 = [objc_opt_self() hk_gregorianCalendar];
                  sub_24B3AB524();

                  v33 = sub_24B3AB504();
                  (*(v82 + 8))(v8, v5);
                  v34 = _HKActivityCacheDateComponentsFromDate();

                  if (v34)
                  {
                    sub_24B3AB3B4();

                    v35 = 0;
                  }

                  else
                  {
                    v35 = 1;
                  }

                  v36 = sub_24B3AB404();
                  v5 = *(v36 - 8);
                  (*(v5 + 56))(v19, v35, 1, v36);
                  v37 = v80;
                  sub_24B364A44(v19, v80);
                  sub_24B364AB4(v37, v16);
                  v2 = 0;
                  if ((*(v5 + 48))(v16, 1, v36) != 1)
                  {
                    v2 = sub_24B3AB3A4();
                    v38 = *(v5 + 8);
                    v5 += 8;
                    v38(v16, v36);
                  }

                  v39 = _HKCacheIndexFromDateComponents();

                  v81 = v39;
                  if (!v79)
                  {
                    v16 = *(v24 + 16);
                    goto LABEL_18;
                  }

LABEL_87:
                  v16 = sub_24B3AB934();
LABEL_18:
                  v19 = 0;
                  v9 = 0;
                  v12 = 0;
                  v8 = MEMORY[0x277D84F90];
                  v82 = v23 + 32;
                  v25 = 1;
                  while (1)
                  {
                    if (v19 == v16)
                    {
                      if (v25)
                      {
                        v45 = v80;
                        v19 = v81;
                        v16 = v76;
                        goto LABEL_57;
                      }

                      goto LABEL_53;
                    }

                    if (v83)
                    {
                      v40 = MEMORY[0x24C23E6E0](v19, v23);
                    }

                    else
                    {
                      if (v19 >= *(v24 + 16))
                      {
                        goto LABEL_72;
                      }

                      v40 = *(v82 + 8 * v19);
                    }

                    v5 = v40;
                    v27 = __OFADD__(v19++, 1);
                    if (v27)
                    {
                      goto LABEL_71;
                    }

                    if (v25)
                    {
                      v9 = [v40 startDateIndex];
                      v12 = [v5 endDateIndex];

                      if (v12 < v9)
                      {
                        goto LABEL_75;
                      }

                      if (v19 == v16)
                      {
                        goto LABEL_53;
                      }

                      if (v83)
                      {
                        v41 = MEMORY[0x24C23E6E0](v19, v23);
                      }

                      else
                      {
                        if (v19 >= *(v24 + 16))
                        {
                          goto LABEL_72;
                        }

                        v41 = *(v82 + 8 * v19);
                      }

                      v5 = v41;
                      v27 = __OFADD__(v19++, 1);
                      if (v27)
                      {
LABEL_71:
                        __break(1u);
LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }
                    }

                    if (v12 >= [v5 startDateIndex])
                    {
                      break;
                    }

LABEL_43:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v8 = sub_24B3A4E70(0, *(v8 + 2) + 1, 1, v8, &qword_27EFE5320, &qword_24B3B0300);
                    }

                    v2 = *(v8 + 2);
                    v43 = *(v8 + 3);
                    if (v2 >= v43 >> 1)
                    {
                      v8 = sub_24B3A4E70((v43 > 1), v2 + 1, 1, v8, &qword_27EFE5320, &qword_24B3B0300);
                    }

                    *(v8 + 2) = v2 + 1;
                    v44 = &v8[16 * v2];
                    *(v44 + 4) = v9;
                    *(v44 + 5) = v12;
                    v9 = [v5 startDateIndex];
                    v12 = [v5 endDateIndex];

                    v25 = 0;
                    if (v12 < v9)
                    {
                      goto LABEL_74;
                    }
                  }

                  v12 = [v5 endDateIndex];

                  if (v12 < v9)
                  {
LABEL_73:
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
                    continue;
                  }

                  while (v16 != v19)
                  {
                    if (v83)
                    {
                      v42 = MEMORY[0x24C23E6E0](v19, v23);
                    }

                    else
                    {
                      if (v19 >= *(v24 + 16))
                      {
                        goto LABEL_72;
                      }

                      v42 = *(v23 + 8 * v19 + 32);
                    }

                    v5 = v42;
                    v2 = v19 + 1;
                    if (__OFADD__(v19, 1))
                    {
                      goto LABEL_71;
                    }

                    if (v12 < [v42 startDateIndex])
                    {
                      ++v19;
                      goto LABEL_43;
                    }

                    v12 = [v5 endDateIndex];

                    ++v19;
                    if (v12 < v9)
                    {
                      goto LABEL_73;
                    }
                  }

LABEL_53:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v16 = v76;
                  v19 = v81;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    goto LABEL_89;
                  }

LABEL_54:
                  v48 = *(v8 + 2);
                  v47 = *(v8 + 3);
                  if (v48 >= v47 >> 1)
                  {
                    v8 = sub_24B3A4E70((v47 > 1), v48 + 1, 1, v8, &qword_27EFE5320, &qword_24B3B0300);
                  }

                  *(v8 + 2) = v48 + 1;
                  v49 = &v8[16 * v48];
                  *(v49 + 4) = v9;
                  *(v49 + 5) = v12;
                  v45 = v80;
LABEL_57:

                  v50 = v78;
                  v51 = *(v78 + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals);
                  *(v78 + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals) = v8;

                  v52 = sub_24B3AB7C4();
                  v53 = v52;
                  v54 = *MEMORY[0x277CCC270];
                  if (v19 < v16 || v19 >= v75)
                  {
                    v63 = v54;
                    sub_24B3AB5B4();

                    v64 = *(v50 + OBJC_IVAR___FIPauseRingsCoordinator_state);
                    *(v50 + OBJC_IVAR___FIPauseRingsCoordinator_state) = 0;
                    v56 = v77;
                    if (v64)
                    {
                      sub_24B362B50();
                      v65 = v64;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    sub_24B362E44(v65);
                    goto LABEL_70;
                  }

                  v55 = os_log_type_enabled(*MEMORY[0x277CCC270], v52);
                  v56 = v77;
                  if (v55)
                  {
                    v57 = v54;
                    v58 = swift_slowAlloc();
                    v59 = swift_slowAlloc();
                    *v58 = 138412290;
                    *(v58 + 4) = v56;
                    *v59 = v56;
                    v60 = v56;
                    _os_log_impl(&dword_24B35E000, v57, v53, "[PauseRingsCoordinator] State = paused: %@", v58, 0xCu);
                    sub_24B364D34(v59, &qword_27EFE5140, &qword_24B3AF9C8);
                    MEMORY[0x24C23F390](v59, -1, -1);
                    MEMORY[0x24C23F390](v58, -1, -1);
                  }

                  v61 = *(v50 + OBJC_IVAR___FIPauseRingsCoordinator_state);
                  *(v50 + OBJC_IVAR___FIPauseRingsCoordinator_state) = v56;
                  if (v61 >= 2)
                  {
                    sub_24B361648(0, &qword_27EFE5318, 0x277CCD788);
                    v66 = v56;
                    sub_24B364D10(v61);
                    v67 = sub_24B3AB824();
                    v45 = v80;
                    v68 = v67;
                    sub_24B362E44(v61);
                    if (v68)
                    {
                      sub_24B362E44(v61);

LABEL_70:
                      sub_24B364D34(v45, &qword_27EFE52E8, &qword_24B3B01A8);
                      return;
                    }
                  }

                  else
                  {
                    v62 = v56;
                  }

                  sub_24B362B50();
                  sub_24B362E44(v61);

                  goto LABEL_70;
                }
              }

              v29 = MEMORY[0x24C23E6E0](v28, v23);
              goto LABEL_11;
            }

            break;
          }
        }

        else
        {
          v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  sub_24B3AB7C4();
  v69 = *MEMORY[0x277CCC270];
  v70 = MEMORY[0x277D84F90];
  sub_24B3AB5B4();

  v71 = *(v2 + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals);
  *(v2 + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals) = v70;

  v72 = *(v2 + OBJC_IVAR___FIPauseRingsCoordinator_state);
  *(v2 + OBJC_IVAR___FIPauseRingsCoordinator_state) = 0;
  if (v72)
  {
    sub_24B362B50();
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  sub_24B362E44(v73);
}

uint64_t sub_24B3629E8(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_24B3AB8E4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24B3AB934())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C23E6E0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_24B3AB8C4();
      v8 = *(v10 + 16);
      sub_24B3AB8F4();
      sub_24B3AB904();
      sub_24B3AB8D4();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_24B3AB934();
    sub_24B3AB8E4();
  }

  return v10;
}

uint64_t sub_24B362B50()
{
  ObjectType = swift_getObjectType();
  v1 = sub_24B3AB5F4();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B3AB614();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B361648(0, &qword_280B17E30, 0x277D85C78);
  v9 = sub_24B3AB7F4();
  v10 = swift_allocObject();
  *(v10 + 16) = ObjectType;
  aBlock[4] = sub_24B3A6BE4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B361F38;
  aBlock[3] = &block_descriptor_112;
  v11 = _Block_copy(aBlock);

  sub_24B3AB604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3AB854();
  MEMORY[0x24C23E640](0, v8, v4, v11);
  _Block_release(v11);

  (*(v14 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v13);
}

void sub_24B362E44(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t objectdestroy_102Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_24B362EB0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a4;
  v7(v11, sub_24B3A6F50, v9, a4);
}

uint64_t sub_24B362F84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24B362FBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24B36300C();
  }
}

void sub_24B36300C()
{
  sub_24B3AB7C4();
  v1 = *MEMORY[0x277CCC270];
  sub_24B3AB5B4();

  v2 = *MEMORY[0x277CCC650];
  sub_24B3AB6A4();
  v3 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v4 = sub_24B3AB694();

  v5 = [v3 initWithKey:v4 ascending:1];

  sub_24B361648(0, &qword_280B17E48, 0x277CCD8D8);
  v6 = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5308, &unk_24B3B02F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24B3B0180;
    *(v8 + 32) = v5;
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v10 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    sub_24B361648(0, &qword_280B17E40, 0x277CCAC98);
    v11 = v5;
    v12 = v0;
    v13 = sub_24B3AB714();

    v16[4] = sub_24B3632DC;
    v16[5] = v9;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_24B361774;
    v16[3] = &block_descriptor_100;
    v14 = _Block_copy(v16);
    v15 = [v10 initWithSampleType:v7 predicate:0 limit:0 sortDescriptors:v13 resultsHandler:v14];

    _Block_release(v14);

    [*&v12[OBJC_IVAR___FIPauseRingsCoordinator_healthStore] executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24B36329C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B3632F0(unint64_t a1, void *a2, char *a3)
{
  v6 = sub_24B3AB5F4();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24B3AB614();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B3AB7C4();
  v15 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], v14))
  {

    v16 = v15;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (a1)
    {
      if (a1 >> 62)
      {
        v18 = sub_24B3AB934();
      }

      else
      {
        v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v18 = 0;
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_24B35E000, v16, v14, "[PauseRingsCoordinator] Received refresh query results (%ld count)...", v17, 0xCu);
    MEMORY[0x24C23F390](v17, -1, -1);
  }

  v19 = *&a3[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_24B3636A0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B361F38;
  aBlock[3] = &block_descriptor_106;
  v21 = _Block_copy(aBlock);

  v22 = a3;
  v23 = a2;
  sub_24B3AB604();
  v28 = MEMORY[0x277D84F90];
  sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3AB854();
  MEMORY[0x24C23E640](0, v13, v9, v21);
  _Block_release(v21);
  (*(v27 + 8))(v9, v6);
  (*(v10 + 8))(v13, v26);
}

void sub_24B3636A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_24B361F90(v1, v2);
}

void sub_24B3636D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void sub_24B363770(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2)
    {
      [Strong pregnancyModelDidChangeWithModel_];
LABEL_7:

      return;
    }

    v10 = sub_24B3AB7B4();
    v11 = *MEMORY[0x277CCC270];
    if (!os_log_type_enabled(*MEMORY[0x277CCC270], v10))
    {
      goto LABEL_7;
    }

    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315394;
    v16 = sub_24B3ABA14();
    v18 = sub_24B363F6C(v16, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    if (a3)
    {
      v19 = a3;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v13 + 14) = v20;
    *v14 = v21;
    _os_log_impl(&dword_24B35E000, v12, v10, "%s Error when trying to get model from pregnancy state query: %@", v13, 0x16u);
    sub_24B39D1B8(v14);
    MEMORY[0x24C23F390](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C23F390](v15, -1, -1);
    MEMORY[0x24C23F390](v13, -1, -1);
  }
}

void sub_24B3639A4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_24B3AB7C4();
  v5 = MEMORY[0x277CCC270];
  v6 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], v4))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56 = v9;
    *v8 = 136315138;
    sub_24B3AB884();
    v10 = sub_24B3ABA14();
    v12 = v11;

    v57 = v10;
    v58 = v12;
    MEMORY[0x24C23E510](0xD00000000000001ELL, 0x800000024B3B7F10);
    v13 = [a1 description];
    v14 = sub_24B3AB6A4();
    v16 = v15;

    MEMORY[0x24C23E510](v14, v16);

    MEMORY[0x24C23E510](46, 0xE100000000000000);
    v17 = sub_24B3AB694();

    v18 = HKSensitiveLogItem();

    sub_24B3AB844();
    swift_unknownObjectRelease();
    v19 = sub_24B3AB6B4();
    v21 = sub_24B363F6C(v19, v20, &v56);

    *(v8 + 4) = v21;
    v5 = MEMORY[0x277CCC270];
    _os_log_impl(&dword_24B35E000, v7, v4, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23F390](v9, -1, -1);
    MEMORY[0x24C23F390](v8, -1, -1);
  }

  v22 = OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel;
  v23 = *&v2[OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel];
  if (v23)
  {
    v24 = [*&v2[OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel] state];
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 state];
  v26 = sub_24B3AB7C4();
  v27 = *v5;
  v28 = os_log_type_enabled(*v5, v26);
  if (v23)
  {
    v29 = v24 == v25;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    if (v28)
    {
      v47 = v27;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v56 = v49;
      v57 = 0;
      *v48 = 136315138;
      v58 = 0xE000000000000000;
      sub_24B3AB884();
      v50 = sub_24B3ABA14();
      MEMORY[0x24C23E510](v50);

      MEMORY[0x24C23E510](0xD000000000000034, 0x800000024B3B7F30);
      v51 = sub_24B3AB694();

      v52 = HKSensitiveLogItem();

      sub_24B3AB844();
      swift_unknownObjectRelease();
      v53 = sub_24B3AB6B4();
      v55 = sub_24B363F6C(v53, v54, &v56);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_24B35E000, v47, v26, "%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C23F390](v49, -1, -1);
      MEMORY[0x24C23F390](v48, -1, -1);
    }
  }

  else
  {
    if (v28)
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v32;
      v57 = 0;
      *v31 = 136315138;
      v58 = 0xE000000000000000;
      sub_24B3AB884();
      v33 = sub_24B3ABA14();
      v35 = v34;

      v57 = v33;
      v58 = v35;
      MEMORY[0x24C23E510](0xD00000000000001CLL, 0x800000024B3B7F70);
      v36 = [a1 description];
      v37 = sub_24B3AB6A4();
      v39 = v38;

      MEMORY[0x24C23E510](v37, v39);

      v40 = sub_24B3AB694();

      v41 = HKSensitiveLogItem();

      sub_24B3AB844();
      swift_unknownObjectRelease();
      v42 = sub_24B3AB6B4();
      v44 = sub_24B363F6C(v42, v43, &v56);

      *(v31 + 4) = v44;
      _os_log_impl(&dword_24B35E000, v30, v26, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C23F390](v32, -1, -1);
      MEMORY[0x24C23F390](v31, -1, -1);
    }

    v45 = *&v2[v22];
    *&v2[v22] = a1;
    v46 = a1;

    [v2 notifyObservers_];
  }
}

uint64_t sub_24B363F6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B364038(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24B364144(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24B364038(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24B39BC30(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24B3AB8B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24B364144(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t FIExperienceTypeWithHealthStore(void *a1)
{
  v8 = 0;
  v1 = [a1 dateOfBirthComponentsWithError:&v8];
  v2 = v8;
  if (v2)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24B35E000, v3, OS_LOG_TYPE_DEFAULT, "Unable to fetch date of birth, unable to determine fitness experience type", v7, 2u);
    }

    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v4 = FIExperienceTypeForBirthDateComponents(v1, v5);
  }

  return v4;
}

void sub_24B364324(void *a1)
{
  v44 = a1;
  v1 = sub_24B3AB584();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B3AB4C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v46 = &v44 - v19;
  v20 = [objc_opt_self() sharedBehavior];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = [v20 features];

  if (!v22)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v23 = [v22 pauseRings];

  if (!v23)
  {
    return;
  }

  sub_24B3AB4B4();
  v24 = sub_24B3AB474();
  (*(v7 + 8))(v10, v6);
  v25 = [objc_opt_self() hk_gregorianCalendar];
  sub_24B3AB524();

  v26 = sub_24B3AB504();
  (*(v2 + 8))(v5, v1);
  v27 = _HKActivityCacheDateComponentsFromDate();

  if (v27)
  {
    sub_24B3AB3B4();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v46;
  v30 = sub_24B3AB404();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v18, v28, 1, v30);
  sub_24B364A44(v18, v29);
  sub_24B364AB4(v29, v15);
  v32 = 0;
  if ((*(v31 + 48))(v15, 1, v30) != 1)
  {
    v32 = sub_24B3AB3A4();
    (*(v31 + 8))(v15, v30);
  }

  _HKCacheIndexFromDateComponents();

  v48 = 2;
  v33 = v45;
  v34 = *&v45[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
  v35 = swift_allocObject();
  *(v35 + 16) = &v48;
  *(v35 + 24) = v33;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_24B364CBC;
  *(v36 + 24) = v35;
  aBlock[4] = sub_24B364CC0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B364CE8;
  aBlock[3] = &block_descriptor_9;
  v37 = _Block_copy(aBlock);
  v38 = v33;

  dispatch_sync(v34, v37);
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v48;
  if (v48 >= 3)
  {
    v41 = v44;
    if (!v44)
    {
      sub_24B364D34(v29, &qword_27EFE52E8, &qword_24B3B01A8);
      sub_24B364D20(v48);

      return;
    }

    sub_24B3A4D8C(v48);
    v42 = v41;
    v43 = [v39 startDateIndex];
    if ([v39 endDateIndex] >= v43)
    {
      [v42 _activitySummaryIndex];
      [v42 _activitySummaryIndex];
      [v42 paused];

      sub_24B364D20(v39);
      sub_24B364D34(v46, &qword_27EFE52E8, &qword_24B3B01A8);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v44)
  {
    v40 = v44;
    if ([v40 paused])
    {
      [v40 _activitySummaryIndex];

      sub_24B364D34(v29, &qword_27EFE52E8, &qword_24B3B01A8);
LABEL_22:
      sub_24B364D20(v48);

      return;
    }

    sub_24B364D34(v29, &qword_27EFE52E8, &qword_24B3B01A8);
  }

  else
  {
    sub_24B364D34(v29, &qword_27EFE52E8, &qword_24B3B01A8);
  }

  sub_24B364D20(v48);
}

uint64_t sub_24B3649F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B364A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B364AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FIExperienceTypeForBirthDateComponents(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 date];
  v7 = FIAgeInYearsForDateOfBirthComponentsWithCurrentDateAndCalendar(v5, v6, v4);

  v8 = 2;
  if (v7 <= 9)
  {
    v8 = 3;
  }

  if (v7 > 12)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

void sub_24B364BB0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + OBJC_IVAR___FIPauseRingsCoordinator_state);
  v3 = *v1;
  *v1 = v2;
  sub_24B364D10(v2);

  sub_24B364D20(v3);
}

uint64_t FIAgeInYearsForDateOfBirthComponentsWithCurrentDateAndCalendar(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 hk_gregorianCalendar];
  v10 = [v9 dateFromComponents:v8];

  v11 = [v6 components:4 fromDate:v10 toDate:v7 options:0];

  v12 = [v11 year];
  return v12;
}

uint64_t sub_24B364CC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_24B364D10(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_24B364D20(id a1)
{
  if (a1 != 2)
  {
    sub_24B362E44(a1);
  }
}

uint64_t sub_24B364D34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FIActivityMoveModeUserDefault()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CCE4C8]];
  v2 = [v1 objectForKey:*MEMORY[0x277CCB788]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      FIActivityMoveModeUserDefault_cold_1(v5);
    }

    v4 = 1;
  }

  return v4;
}

id _NumberFormatterForDecimalPrecision(id a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 3)
  {
    if (a1 != 2)
    {
      if (a1 == 1)
      {
        a1 = _IntegerNumberFormatter(a2);
      }

      goto LABEL_20;
    }

    if (a3 == 2)
    {
      v8 = _SingleFractionTrimNumberFormatter___formatter;
      if (!_SingleFractionTrimNumberFormatter___formatter)
      {
        v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
        v10 = _SingleFractionTrimNumberFormatter___formatter;
        _SingleFractionTrimNumberFormatter___formatter = v9;

        [_SingleFractionTrimNumberFormatter___formatter setNumberStyle:1];
        [_SingleFractionTrimNumberFormatter___formatter setMinimumFractionDigits:0];
        [_SingleFractionTrimNumberFormatter___formatter setMaximumFractionDigits:1];
        v8 = _SingleFractionTrimNumberFormatter___formatter;
      }

      [v8 setRoundingMode:a2];
      v7 = _SingleFractionTrimNumberFormatter___formatter;
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_20;
      }

      v4 = _SingleFractionNumberFormatter___formatter;
      if (!_SingleFractionNumberFormatter___formatter)
      {
        v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
        v6 = _SingleFractionNumberFormatter___formatter;
        _SingleFractionNumberFormatter___formatter = v5;

        [_SingleFractionNumberFormatter___formatter setNumberStyle:1];
        [_SingleFractionNumberFormatter___formatter setMinimumFractionDigits:1];
        [_SingleFractionNumberFormatter___formatter setMaximumFractionDigits:1];
        v4 = _SingleFractionNumberFormatter___formatter;
      }

      [v4 setRoundingMode:a2];
      v7 = _SingleFractionNumberFormatter___formatter;
    }

LABEL_19:
    a1 = v7;
    goto LABEL_20;
  }

  if (a3 == 2)
  {
    v11 = _DoubleFractionTrimNumberFormatter___formatter;
    if (!_DoubleFractionTrimNumberFormatter___formatter)
    {
      v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v13 = _DoubleFractionTrimNumberFormatter___formatter;
      _DoubleFractionTrimNumberFormatter___formatter = v12;

      [_DoubleFractionTrimNumberFormatter___formatter setNumberStyle:1];
      [_DoubleFractionTrimNumberFormatter___formatter setMinimumFractionDigits:0];
      [_DoubleFractionTrimNumberFormatter___formatter setMaximumFractionDigits:2];
      v11 = _DoubleFractionTrimNumberFormatter___formatter;
    }

    [v11 setRoundingMode:a2];
    v7 = _DoubleFractionTrimNumberFormatter___formatter;
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    a1 = _DoubleFractionNumberFormatter(a2);
  }

LABEL_20:

  return a1;
}

uint64_t FIDistanceUnitForHKUnit(void *a1)
{
  v1 = a1;
  if (FIDistanceUnitForHKUnit_onceToken != -1)
  {
    FIDistanceUnitForHKUnit_cold_1();
  }

  v2 = [v1 unitString];
  v3 = [FIDistanceUnitForHKUnit___distanceUnitsByUnitString objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      FIDistanceUnitForHKUnit_cold_2();
    }

    v5 = 2;
  }

  return v5;
}

id FIRandomStringForPrefixWithTableName(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = FIRandomKeyForPrefixWithTableName(v5, v6, v7);
  v9 = v8;
  if (v8)
  {
    v10 = _FIStringWithExactKeyWithTableName(v8, v6, v7);
    if (![v10 isEqualToString:@"__key_not_found__"])
    {
      goto LABEL_7;
    }
  }

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_FAULT))
  {
    v14 = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_fault_impl(&dword_24B35E000, v11, OS_LOG_TYPE_FAULT, "Unable to find a random string for prefix %{public}@ in bundle %{public}@ with table name %{public}@", &v14, 0x20u);
  }

  v10 = 0;
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

id FIRandomKeyForPrefixWithTableName(void *a1, void *a2, void *a3)
{
  v16 = a1;
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x277CBEBF8];
    v8 = 1;
    while (1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v16, v8];
      v10 = [v5 localizedStringForKey:v9 value:@"__key_not_found__" table:v6];
      if ([v10 isEqualToString:@"__key_not_found__"])
      {
        break;
      }

      v8 = (v8 + 1);
      v11 = [v7 arrayByAddingObject:v9];

      v7 = v11;
    }

    if ([v7 count])
    {
      v12 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEBUG))
      {
        FIRandomKeyForPrefixWithTableName_cold_1(v16, v14);
      }

      v12 = v16;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id _FIStringWithExactKeyWithTableName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v6 localizedStringForKey:v5 value:@"__key_not_found__" table:v7];
    if ([v9 isEqualToString:@"__key_not_found__"])
    {
      if ([v7 isEqualToString:@"Localizable"])
      {
        v8 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v10 = _FIStringForKeyInDefaultLocalizableTable(v5, v6);
    }

    else
    {
      v10 = v9;
    }

    v8 = v10;
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

id _LengthFormatter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _LengthFormatter___formatter;
  if (!_LengthFormatter___formatter)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAAE0]);
    v10 = _LengthFormatter___formatter;
    _LengthFormatter___formatter = v9;

    v8 = _LengthFormatter___formatter;
  }

  v11 = _NumberFormatterForDecimalPrecision(a1, a3, a4);
  [v8 setNumberFormatter:v11];

  [_LengthFormatter___formatter setUnitStyle:a2];
  v12 = _LengthFormatter___formatter;

  return v12;
}

id _IntegerNumberFormatter(uint64_t a1)
{
  v2 = _IntegerNumberFormatter___formatter;
  if (!_IntegerNumberFormatter___formatter)
  {
    v3 = objc_alloc_init(FINumberFormatter);
    v4 = _IntegerNumberFormatter___formatter;
    _IntegerNumberFormatter___formatter = v3;

    [_IntegerNumberFormatter___formatter setNumberStyle:1];
    [_IntegerNumberFormatter___formatter setMaximumFractionDigits:0];
    v2 = _IntegerNumberFormatter___formatter;
  }

  [v2 setRoundingMode:a1];
  v5 = _IntegerNumberFormatter___formatter;

  return v5;
}

id FILocalizedActivityNameWithFormattingPrefixAndIsLocationAgnosticPlural(uint64_t a1, unint64_t a2, int a3, int a4, int a5, void *a6, int a7)
{
  v13 = a6;
  if ((a1 - 13) <= 0x3B)
  {
    if (((1 << (a1 - 13)) & 0xEB4508095401889) != 0)
    {
      goto LABEL_3;
    }

    if (a1 == 46)
    {
      if (a2 >= 3)
      {
        v16 = 0;
      }

      else
      {
        v16 = off_279004A30[a2];
      }

      goto LABEL_8;
    }
  }

  if ((a1 - 77) <= 7)
  {
    if (((1 << (a1 - 77)) & 0xA9) != 0)
    {
      goto LABEL_3;
    }

    if (a1 == 83)
    {
      v16 = @"ACTIVITY_TRANSITION";
      goto LABEL_8;
    }
  }

  if (a1 != 3000)
  {
    v14 = FILocalizedNameForIndoorAgnosticActivityType();
    if (a5)
    {
      if (v13)
      {
        v22 = [v13 stringByAppendingString:@"ACTIVITY_OTHER_FORMAT_%@"];
      }

      else
      {
        v22 = @"ACTIVITY_OTHER_FORMAT_%@";
      }

      v26 = MEMORY[0x277CCACA8];
      v27 = FIFitnessUIBundle();
      v28 = [v27 localizedStringForKey:v22 value:&stru_285E60370 table:@"Localizable"];
      v24 = [v26 stringWithFormat:v28, v14];

      v18 = @"ACTIVITY_OTHER_FORMAT_%@";
      goto LABEL_19;
    }

    v15 = _HKWorkoutActivityNameForActivityType();
    goto LABEL_7;
  }

LABEL_3:
  if (a3)
  {
    FILocalizationKeyForHKWorkoutActivityType(a1);
  }

  else
  {
    FILocalizationKeyForHKWorkoutActivityTypeAndIsIndoor(a1, a4);
  }
  v14 = ;
  v15 = [@"ACTIVITY_" stringByAppendingString:v14];
LABEL_7:
  v16 = v15;

LABEL_8:
  v17 = &stru_285E60370;
  if (v16)
  {
    v17 = v16;
  }

  v18 = v17;

  if (v13)
  {
    v19 = [v13 stringByAppendingString:v18];
  }

  else
  {
    v19 = v18;
  }

  v14 = v19;
  if (a7)
  {
    v20 = [(__CFString *)v19 stringByAppendingString:@"_PLURAL"];

    v14 = v20;
  }

  v21 = FIFitnessUIBundle();
  v22 = v21;
  if (a1 == 46)
  {
    v23 = @"Localizable-Ariel";
  }

  else
  {
    v23 = @"Localizable";
  }

  v24 = [(__CFString *)v21 localizedStringForKey:v14 value:&stru_285E60370 table:v23];
LABEL_19:

  return v24;
}

__CFString *FILocalizationKeyForHKWorkoutActivityTypeIsLocationAgnosticAndIsIndoor(uint64_t a1, char a2, int a3)
{
  if (a1 > 24)
  {
    v3 = a1 - 35;
    v4 = 0;
    switch(v3)
    {
      case 0:
        if (a2)
        {
          v4 = @"ROWING";
          goto LABEL_51;
        }

        v8 = @"OUTDOOR_ROWING";
        v9 = @"INDOOR_ROWING";
        break;
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
      case 23:
      case 25:
      case 26:
      case 27:
      case 29:
      case 32:
      case 34:
      case 38:
      case 39:
      case 40:
      case 41:
      case 43:
      case 44:
      case 46:
      case 48:
        goto LABEL_51;
      case 2:
        if (a2)
        {
          v4 = @"RUNNING";
          goto LABEL_51;
        }

        v8 = @"OUTDOOR_RUNNING";
        v9 = @"INDOOR_RUNNING";
        break;
      case 4:
        if (a2)
        {
          v4 = @"SKATING_SPORTS";
          goto LABEL_51;
        }

        v8 = @"OUTDOOR_SKATING_SPORTS";
        v9 = @"INDOOR_SKATING_SPORTS";
        break;
      case 6:
        if (a2)
        {
          v4 = @"SOCCER";
          goto LABEL_51;
        }

        v8 = @"OUTDOOR_SOCCER";
        v9 = @"INDOOR_SOCCER";
        break;
      case 9:
        v4 = @"STEPPER";
        goto LABEL_51;
      case 11:
        v4 = @"SWIMMING";
        goto LABEL_51;
      case 17:
        if (a2)
        {
          v4 = @"WALKING";
          goto LABEL_51;
        }

        v8 = @"OUTDOOR_WALKING";
        v9 = @"INDOOR_WALKING";
        break;
      case 22:
        v4 = @"YOGA";
        goto LABEL_51;
      case 24:
        v4 = @"CORE_TRAINING";
        goto LABEL_51;
      case 28:
        v4 = @"HIGH_INTENSITY_INTERVAL_TRAINING";
        goto LABEL_51;
      case 30:
        v4 = @"KICKBOXING";
        goto LABEL_51;
      case 31:
        v4 = @"PILATES";
        goto LABEL_51;
      case 33:
        v4 = @"STAIRS";
        goto LABEL_51;
      case 35:
        v4 = @"WHEELCHAIR_WALK_PACE";
        goto LABEL_51;
      case 36:
        v4 = @"WHEELCHAIR_RUN_PACE";
        goto LABEL_51;
      case 37:
        v4 = @"TAI_CHI";
        goto LABEL_51;
      case 42:
        v4 = @"CARDIO_DANCE";
        goto LABEL_51;
      case 45:
        v4 = @"COOLDOWN";
        goto LABEL_51;
      case 47:
        v4 = @"MULTISPORT";
        goto LABEL_51;
      case 49:
        v4 = @"UNDERWATER_DIVING";
        goto LABEL_51;
      default:
        v5 = 0;
        v6 = @"OTHER";
        goto LABEL_14;
    }

LABEL_48:
    if (a3)
    {
      v8 = v9;
    }

    v4 = v8;
    goto LABEL_51;
  }

  if (a1 > 19)
  {
    v7 = @"HIKING";
    if (a1 != 24)
    {
      v7 = 0;
    }

    if (a1 == 20)
    {
      v4 = @"FUNCTIONAL_STRENGTH_TRAINING";
    }

    else
    {
      v4 = v7;
    }
  }

  else
  {
    if (a1 == 13)
    {
      if (a2)
      {
        v4 = @"CYCLING";
        goto LABEL_51;
      }

      v8 = @"OUTDOOR_CYCLING";
      v9 = @"INDOOR_CYCLING";
      goto LABEL_48;
    }

    v5 = a1 == 16;
    v6 = @"ELLIPTICAL";
LABEL_14:
    if (v5)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_51:

  return v4;
}

id FIFitnessUIBundle()
{
  if (FIFitnessUIBundle_onceToken != -1)
  {
    FIFitnessUIBundle_cold_1();
  }

  v1 = FIFitnessUIBundle___bundle;

  return v1;
}

uint64_t _EnergyFormatter(void *a1)
{
  v1 = a1;
  if (!_EnergyFormatter___formatter)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA9A8]);
    v3 = _EnergyFormatter___formatter;
    _EnergyFormatter___formatter = v2;

    v4 = _EnergyFormatter___formatter;
    v5 = _IntegerNumberFormatter(2);
    [v4 setNumberFormatter:v5];
  }

  v6 = [MEMORY[0x277CCDAB0] largeCalorieUnit];
  v7 = [v1 isEqual:v6];

  [_EnergyFormatter___formatter setForFoodEnergyUse:v7];
  v8 = _EnergyFormatter___formatter;
  v9 = _EnergyFormatter___formatter;

  return v8;
}

uint64_t _FIBoolForStandardDomainAndKeyWithDefaultValue(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a2;
  v7 = a1;
  v8 = [v5 standardUserDefaults];
  v9 = [v8 persistentDomainForName:v7];

  v10 = [v9 objectForKey:v6];

  if (v10)
  {
    a3 = [v10 BOOLValue];
  }

  return a3;
}

uint64_t sub_24B3665AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B3AB4C4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B366618(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24B3AB4C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B366864()
{
  MEMORY[0x24C23F400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B36689C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B366A20()
{
  v1 = sub_24B3AB4C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
    v5 = *(v0 + 32);
  }

  v6 = (v3 + 40) & ~v3;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_24B366AF4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B366B40()
{

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

void FIActivityAnalyticsSubmission(void *a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  FIActivityAnalyticsSubmissionWithPayloadAndRequiresIHA(v8, v9, 1);
  v10 = *MEMORY[0x277D85DE8];
}

void FIActivityAnalyticsSubmissionWithPayloadAndRequiresIHA(void *a1, void *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (a3 && ([MEMORY[0x277D262A0] sharedConnection], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isHealthDataSubmissionAllowed"), v7, !v8))
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_24B35E000, v10, OS_LOG_TYPE_DEFAULT, "[#analytics] health data submission not allowed. Not sending analytics for event: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = v5;
    v12 = v6;
    AnalyticsSendEventLazy();
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __FIActivityAnalyticsSubmissionWithPayloadAndRequiresIHA_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_24B35E000, v2, OS_LOG_TYPE_DEFAULT, "[#analytics] submission for event: %@, payload: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id _CachedCurrentCalendar()
{
  if (_CachedCurrentCalendar_onceToken != -1)
  {
    _CachedCurrentCalendar_cold_1();
  }

  v1 = _CachedCurrentCalendar___calendar;

  return v1;
}

uint64_t _ValidateSample(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 fi_overlapsStartDate:v8 endDate:v9];
  if ((v10 & 1) == 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sample %@ does not overlap with startDate:%@ endDate: %@", v7, v8, v9];
    v12 = FIIntervalErrorWithDescription(v11);
    FISetOutErrorIfNotNull(a4, v12);
  }

  return v10;
}

void sub_24B369F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B36A530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_24B36AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24B36B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B36BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t activitySummaryIndexForReporting()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = activitySummaryIndexForReportingForDate(v0);

  return v1;
}

unint64_t activitySummaryIndexForReportingForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 hk_gregorianCalendarWithUTCTimeZone];
  v4 = [v3 startOfDayForDate:v2];

  v5 = [v3 dateByAddingUnit:16 value:-2 toDate:v4 options:0];
  [v5 timeIntervalSinceReferenceDate];
  v7 = llround(v6);

  return v7;
}

id FIActivitySummaryForSummaryIndex(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v6 = [objc_alloc(MEMORY[0x277D10588]) initWithProfile:v5];
  [v6 setShouldIncludePrivateProperties:0];
  v7 = HDActivityCacheEntityPredicateForCacheIndex();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __FIActivitySummaryForSummaryIndex_block_invoke;
  v10[3] = &unk_279004960;
  v10[4] = &v11;
  v10[5] = a2;
  [v6 enumerateActivitySummariesWithPredicate:v7 error:a3 handler:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_24B36E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FIActivitySummaryForSummaryIndex_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 _activitySummaryIndex] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

uint64_t FIActivitySummaryAnalyticsNumberOfRingsCompletedWithProfile(void *a1, uint64_t a2)
{
  v17 = 0;
  v2 = FIActivitySummaryForSummaryIndex(a1, a2, &v17);
  v3 = v17;
  v4 = v3;
  if (v2)
  {
    [v2 _standHoursCompletionPercentage];
    v6 = v5;
    [v2 _exerciseTimeCompletionPercentage];
    v8 = 2;
    if (v6 < 1.0)
    {
      v8 = 1;
    }

    if (v7 >= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 >= 1.0;
    }

    [v2 _activeEnergyCompletionPercentage];
    if (v10 >= 1.0 || ([v2 _moveMinutesCompletionPercentage], v11 >= 1.0))
    {
      ++v9;
    }
  }

  else
  {
    if (v3)
    {
      v12 = [v3 hk_isDatabaseAccessibilityError];
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC290];
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          FIActivitySummaryAnalyticsNumberOfRingsCompletedWithProfile_cold_2();
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        FIActivitySummaryAnalyticsNumberOfRingsCompletedWithProfile_cold_1();
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "No activity summary found for yesterday", v16, 2u);
      }
    }

    v9 = -1;
  }

  return v9;
}

id FIActivitySummaryAnalyticsPayloadForProfileAndSummaryCacheIndex(void *a1, uint64_t a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v38 = 0;
  v2 = FIActivitySummaryForSummaryIndex(a1, a2, &v38);
  v3 = v38;
  v4 = v3;
  if (v2)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v39[0] = @"isMoveRingClosed";
    v6 = MEMORY[0x277CCABB0];
    [v2 _activeEnergyCompletionPercentage];
    if (v7 >= 1.0)
    {
      v9 = 1;
    }

    else
    {
      [v2 _moveMinutesCompletionPercentage];
      v9 = v8 >= 1.0;
    }

    v12 = [v6 numberWithInt:v9];
    v39[1] = @"dailyGoalPaused";
    v40[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "isPaused")}];
    v40[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v15 = [v5 initWithDictionary:v14];

    v16 = [v2 standHoursGoal];

    if (v16)
    {
      v17 = MEMORY[0x277CCABB0];
      [v2 _standHoursCompletionPercentage];
      v19 = [v17 numberWithInt:v18 >= 1.0];
      [v15 setObject:v19 forKeyedSubscript:@"isStandRingClosed"];

      v20 = MEMORY[0x277CCABB0];
      v21 = [v2 standHoursGoal];
      v22 = [MEMORY[0x277CCDAB0] countUnit];
      [v21 doubleValueForUnit:v22];
      v24 = [v20 numberWithInt:v23 != 12.0];
      [v15 setObject:v24 forKeyedSubscript:@"customizedStand"];
    }

    v25 = [v2 exerciseTimeGoal];

    if (v25)
    {
      v26 = MEMORY[0x277CCABB0];
      [v2 _exerciseTimeCompletionPercentage];
      v28 = [v26 numberWithInt:v27 >= 1.0];
      [v15 setObject:v28 forKeyedSubscript:@"isExerciseRingClosed"];

      v29 = MEMORY[0x277CCABB0];
      v30 = [v2 exerciseTimeGoal];
      v31 = [MEMORY[0x277CCDAB0] minuteUnit];
      [v30 doubleValueForUnit:v31];
      v33 = [v29 numberWithInt:v32 != 30.0];
      [v15 setObject:v33 forKeyedSubscript:@"customizedExercise"];
    }
  }

  else
  {
    if (v3)
    {
      v10 = [v3 hk_isDatabaseAccessibilityError];
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC290];
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          FIActivitySummaryAnalyticsNumberOfRingsCompletedWithProfile_cold_2();
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        FIActivitySummaryAnalyticsNumberOfRingsCompletedWithProfile_cold_1();
      }
    }

    else
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&dword_24B35E000, v34, OS_LOG_TYPE_DEFAULT, "No activity summary found for yesterday", v37, 2u);
      }
    }

    v15 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t FIActivitySummaryAnalyticsHasCompletedWorkoutWithProfile(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v25 = _HKActivityCacheDateComponentsFromCacheIndex();
  v24 = [v2 dateFromComponents:?];
  v3 = [v2 startOfDayForDate:?];
  v4 = [v2 hk_dateByAddingDays:1 toDate:v3];
  v5 = MEMORY[0x277D10B70];
  v6 = MEMORY[0x277D10B18];
  v7 = *MEMORY[0x277D104A8];
  v8 = MEMORY[0x277CCABB0];
  [v3 timeIntervalSinceReferenceDate];
  v9 = [v8 numberWithDouble:?];
  v10 = [v6 predicateWithProperty:v7 greaterThanOrEqualToValue:v9];
  v11 = MEMORY[0x277D10B18];
  v12 = *MEMORY[0x277D104B0];
  v13 = MEMORY[0x277CCABB0];
  [v4 timeIntervalSinceReferenceDate];
  v14 = [v13 numberWithDouble:?];
  v15 = [v11 predicateWithProperty:v12 lessThanValue:v14];
  v16 = [v5 compoundPredicateWithPredicate:v10 otherPredicate:v15];

  v17 = [MEMORY[0x277D10980] entityEnumeratorWithProfile:v1];
  [v17 setPredicate:v16];
  [v17 setLimitCount:1];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26[4] = &v28;
  v27 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __FIActivitySummaryAnalyticsHasCompletedWorkoutWithProfile_block_invoke;
  v26[3] = &unk_279004988;
  v18 = [v17 enumerateWithError:&v27 handler:v26];
  v19 = v27;
  v20 = v19;
  if (v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    if ([v19 hk_isDatabaseAccessibilityError])
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEBUG))
      {
        FIActivitySummaryAnalyticsHasCompletedWorkoutWithProfile_cold_2();
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        FIActivitySummaryAnalyticsHasCompletedWorkoutWithProfile_cold_1();
      }
    }
  }

  v22 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return v22;
}

void sub_24B36E90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id FISampleQuantityInsideDateInterval(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCA970];
  v7 = a2;
  v8 = [v6 alloc];
  v9 = [v5 startDate];
  v10 = [v5 endDate];
  v11 = [v8 initWithStartDate:v9 endDate:v10];

  v12 = [v11 intersectionWithDateInterval:v7];

  v13 = 0.0;
  if (v12)
  {
    [v11 duration];
    if (v14 >= 2.22044605e-16)
    {
      if (a3)
      {
        v15 = v12;
        *a3 = v12;
      }

      [v12 duration];
      v17 = v16;
      [v11 duration];
      v19 = v17 / v18;
      v20 = [v5 quantity];
      v21 = [v5 quantity];
      v22 = [v21 _unit];
      [v20 doubleValueForUnit:v22];
      v13 = v19 * v23;
    }
  }

  v24 = MEMORY[0x277CCD7E8];
  v25 = [v5 quantity];
  v26 = [v25 _unit];
  v27 = [v24 quantityWithUnit:v26 doubleValue:v13];

  return v27;
}

id FIFilterPauseResumeEvents(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 type] - 1) <= 1)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id FISortEventsByDate(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2];

  [v3 sortUsingComparator:&__block_literal_global_1];
  v4 = [v3 copy];

  return v4;
}

uint64_t __FISortEventsByDate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

id FIFilterSamplesByType(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 quantityType];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id FISortSamplesByDate(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2];

  [v3 sortUsingComparator:&__block_literal_global_297];
  v4 = [v3 copy];

  return v4;
}

uint64_t __FISortSamplesByDate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

id FIThresholdDateInsideSample(void *a1, void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v9 quantity];
  v11 = [v10 _unit];

  v12 = [v9 quantity];
  [v12 doubleValueForUnit:v11];
  v14 = v13;

  [v8 doubleValueForUnit:v11];
  v16 = v15;

  [v7 doubleValueForUnit:v11];
  v18 = v17;

  v19 = (v14 - (v16 - v18)) / v14;
  v20 = [v9 endDate];
  v21 = [v9 startDate];
  [v20 timeIntervalSinceDate:v21];
  v23 = v22;

  v24 = v19 * v23;
  if (a4)
  {
    v25 = [v9 endDate];

    v26 = -v24;
    v27 = v25;
  }

  else
  {
    v25 = [v9 startDate];

    v27 = v25;
    v26 = v24;
  }

  v28 = [v27 dateByAddingTimeInterval:v26];

  return v28;
}

id FILocalizedNameForIndoorAgnosticActivityType()
{
  v0 = FIFitnessUIBundle();
  v1 = _HKWorkoutActivityNameForActivityType();
  v2 = [v0 localizedStringForKey:v1 value:&stru_285E60370 table:@"Localizable"];

  return v2;
}

id FILocalizedActivityNameWithWorkout(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 workoutActivityType];
  v5 = [v3 fi_swimmingLocationType];
  v6 = [v3 metadata];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v8 = [v7 BOOLValue];

  return FILocalizedActivityNameWithFormattingPrefixAndIsLocationAgnosticPlural(v4, v5, 0, v8, a2, &stru_285E60370, 0);
}

id FILocalizedNameForAdjectiveOmittedActivityType(unint64_t a1)
{
  if (a1 <= 0x3D)
  {
    if (((1 << a1) & 0xA) != 0)
    {
      v1 = FIFitnessUIBundle();
      v2 = v1;
      v3 = @"ACTIVITY_FOOTBALL";
      goto LABEL_10;
    }

    if (((1 << a1) & 0x4000000100000) != 0)
    {
      v1 = FIFitnessUIBundle();
      v2 = v1;
      v3 = @"ACTIVITY_STRENGTH_TRAINING";
      goto LABEL_10;
    }

    if (((1 << a1) & 0x3000000000000000) != 0)
    {
      v1 = FIFitnessUIBundle();
      v2 = v1;
      v3 = @"ACTIVITY_SKIING";
LABEL_10:
      v4 = [v1 localizedStringForKey:v3 value:&stru_285E60370 table:@"Localizable"];

      goto LABEL_11;
    }
  }

  if (a1 - 77 < 2)
  {
    v1 = FIFitnessUIBundle();
    v2 = v1;
    v3 = @"ACTIVITY_DANCE";
    goto LABEL_10;
  }

  v4 = FILocalizedNameForIndoorAgnosticActivityType();
LABEL_11:

  return v4;
}

id FILapsShortDescriptionWithLapCount(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"LAPS_SHORT_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v5 = [v2 localizedStringWithFormat:v4, a1];

  return v5;
}

id FIFlightsShortDescriptionWithFlightsCount(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"FLIGHTS_COUNT_SHORT_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v5 = [v2 localizedStringWithFormat:v4, a1];

  return v5;
}

id FIPowerShortDescriptionWithPower(double a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"POWER_SHORT_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v5 = [v2 localizedStringWithFormat:v4, *&a1];

  return v5;
}

__CFString *FILocalizedStrokeStyleName(unint64_t a1)
{
  if (a1 > 6)
  {
    v3 = @"STROKE_STYLE_NAME_UNIMPLEMENTED";
  }

  else
  {
    v1 = off_279004A48[a1];
    v2 = FIFitnessUIBundle();
    v3 = [v2 localizedStringForKey:v1 value:&stru_285E60370 table:@"Localizable-Ariel"];
  }

  return v3;
}

id FILocalizedActivityNameComponentsWithFormatting(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (a1 == 71)
  {
    v5 = FIFitnessUIBundle();
    v6 = [v5 localizedStringForKey:@"ACTIVITY_WHEELCHAIR_RUN_PACE_LINE1" value:&stru_285E60370 table:@"Localizable"];
    v20[0] = v6;
    v7 = FIFitnessUIBundle();
    v8 = [v7 localizedStringForKey:@"ACTIVITY_WHEELCHAIR_RUN_PACE_LINE2" value:&stru_285E60370 table:@"Localizable"];
    v20[1] = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = v20;
    goto LABEL_5;
  }

  if (a1 == 70)
  {
    v5 = FIFitnessUIBundle();
    v6 = [v5 localizedStringForKey:@"ACTIVITY_WHEELCHAIR_WALK_PACE_LINE1" value:&stru_285E60370 table:@"Localizable"];
    v21[0] = v6;
    v7 = FIFitnessUIBundle();
    v8 = [v7 localizedStringForKey:@"ACTIVITY_WHEELCHAIR_WALK_PACE_LINE2" value:&stru_285E60370 table:@"Localizable"];
    v21[1] = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = v21;
LABEL_5:
    v11 = [v9 arrayWithObjects:v10 count:2];

    goto LABEL_6;
  }

  if (a4)
  {
    v5 = FIFitnessUIBundle();
    v16 = [v5 localizedStringForKey:@"ACTIVITY_OTHER" value:&stru_285E60370 table:@"Localizable"];
    v19[0] = v16;
    v17 = FILocalizedActivityNameWithFormattingPrefixAndIsLocationAgnosticPlural(a1, a2, 0, a3, 0, &stru_285E60370, 0);
    v19[1] = v17;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  }

  else
  {
    v5 = FILocalizedActivityNameWithFormattingPrefixAndIsLocationAgnosticPlural(a1, a2, 0, a3, 0, &stru_285E60370, 0);
    v18 = v5;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

__CFString *FILocalizedMachineName(unint64_t a1)
{
  if (a1 > 6)
  {
    v3 = @"CONNECTED_GYM_MACHINE_UNIMPLEMENTED";
  }

  else
  {
    v1 = off_279004A80[a1];
    v2 = FIFitnessUIBundle();
    v3 = [v2 localizedStringForKey:v1 value:&stru_285E60370 table:@"Localizable"];
  }

  return v3;
}

void sub_24B372F04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24B373B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B374768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FICanonicalQuantityUnitForIntervalType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = [MEMORY[0x277CCDAB0] meterUnit];
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_9;
    }

    v1 = [MEMORY[0x277CCDAB0] secondUnit];
  }

  if (!v1)
  {
LABEL_9:
    FICanonicalQuantityUnitForIntervalType_cold_1();
  }

  return v1;
}

__CFString *FIWorkoutMetricTypeDescription(unint64_t a1)
{
  if (a1 < 0x37 && ((0x7FFFFCFFFFFFFFuLL >> a1) & 1) != 0)
  {
    v2 = off_279004C90[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", a1];
  }

  return v2;
}

id FIWorkoutMetricTypeAccessibilityLocalizedName(unint64_t a1, int a2)
{
  v2 = @"DISTANCE";
  switch(a1)
  {
    case 1uLL:
      goto LABEL_57;
    case 2uLL:
      v2 = @"ACITVE_ENERGY_BURNED";
      goto LABEL_57;
    case 3uLL:
      v2 = @"DURATION";
      goto LABEL_57;
    case 4uLL:
      v2 = @"CURRENT_PACE";
      goto LABEL_57;
    case 5uLL:
      v2 = @"HEART_RATE";
      goto LABEL_57;
    case 6uLL:
      v2 = @"CLOCK";
      goto LABEL_57;
    case 7uLL:
      v2 = @"TOTAL_ENERGY_BURNED";
      goto LABEL_57;
    case 8uLL:
      v2 = @"AVERAGE_PACE";
      goto LABEL_57;
    case 9uLL:
      v2 = @"LAPS";
      goto LABEL_57;
    case 0xAuLL:
      v2 = @"ELEVATION";
      goto LABEL_57;
    case 0xBuLL:
      v2 = @"CURRENT_POWER";
      goto LABEL_57;
    case 0xCuLL:
      v2 = @"AVERAGE_POWER";
      goto LABEL_57;
    case 0xDuLL:
      v2 = @"FLIGHTS_CLIMBED";
      goto LABEL_57;
    case 0xEuLL:
      v2 = @"ROLLING_PACE";
      goto LABEL_57;
    case 0xFuLL:
      v4 = @"CURRENT_CADENCE_CYCLING";
      v5 = @"CURRENT_CADENCE_PEDOMETER";
      goto LABEL_53;
    case 0x10uLL:
      v4 = @"AVERAGE_CADENCE_CYCLING";
      v5 = @"AVERAGE_CADENCE_PEDOMETER";
      goto LABEL_53;
    case 0x11uLL:
      v2 = @"GROUND_ELEVATION";
      goto LABEL_57;
    case 0x12uLL:
      v2 = @"REQUIRED_PACE";
      goto LABEL_57;
    case 0x13uLL:
      v2 = @"SECONDS_AHEAD_OF_PACER";
      goto LABEL_57;
    case 0x14uLL:
      v2 = @"RACE_POSITION";
      goto LABEL_57;
    case 0x15uLL:
      v2 = @"SEGMENT_DURATION";
      goto LABEL_57;
    case 0x16uLL:
      v2 = @"SEGMENT_DISTANCE";
      goto LABEL_57;
    case 0x17uLL:
      v2 = @"SEGMENT_PACE";
      goto LABEL_57;
    case 0x18uLL:
      v2 = @"SEGMENT_ACTIVE_ENERGY_BURNED";
      goto LABEL_57;
    case 0x19uLL:
      v2 = @"SEGMENT_TOTAL_ENERGY_BURNED";
      goto LABEL_57;
    case 0x1AuLL:
      v2 = @"CURRENT_STRIDE_LENGTH";
      goto LABEL_57;
    case 0x1BuLL:
      v2 = @"AVERAGE_STRIDE_LENGTH";
      goto LABEL_57;
    case 0x1CuLL:
      v2 = @"CURRENT_VERTICAL_OSCILLATION";
      goto LABEL_57;
    case 0x1DuLL:
      v2 = @"AVERAGE_VERTICAL_OSCILLATION";
      goto LABEL_57;
    case 0x1EuLL:
      v2 = @"CURRENT_GROUND_CONTACT_TIME";
      goto LABEL_57;
    case 0x1FuLL:
      v2 = @"AVERAGE_GROUND_CONTACT_TIME";
      goto LABEL_57;
    case 0x22uLL:
      v2 = @"SPLIT_DURATION";
      goto LABEL_57;
    case 0x23uLL:
      v2 = @"SPLIT_DISTANCE";
      goto LABEL_57;
    case 0x24uLL:
      v2 = @"SPLIT_PACE";
      goto LABEL_57;
    case 0x25uLL:
      v2 = @"HEART_RATE_MAXIMUM";
      goto LABEL_57;
    case 0x26uLL:
      v2 = @"HEART_RATE_ZONE";
      goto LABEL_57;
    case 0x27uLL:
      v2 = @"HEART_RATE_TIME_IN_ZONE";
      goto LABEL_57;
    case 0x28uLL:
      v2 = @"HEART_RATE_AVERAGE";
      goto LABEL_57;
    case 0x29uLL:
      v2 = @"INTERVAL_AVERAGE_PACE";
      goto LABEL_57;
    case 0x2AuLL:
      v2 = @"INTERVAL_DISTANCE";
      goto LABEL_57;
    case 0x2BuLL:
      v2 = @"POWER_TIME_IN_ZONE";
      goto LABEL_57;
    case 0x2CuLL:
      v2 = @"SEGMENT_AVERAGE_POWER";
      goto LABEL_57;
    case 0x2DuLL:
      v2 = @"SPLIT_AVERAGE_POWER";
      goto LABEL_57;
    case 0x2EuLL:
      v2 = @"INTERVAL_AVERAGE_POWER";
      goto LABEL_57;
    case 0x2FuLL:
      v2 = @"POWER_ZONE";
      goto LABEL_57;
    case 0x30uLL:
      v2 = @"FASTEST_PACE";
      goto LABEL_57;
    case 0x31uLL:
      v2 = @"THIRTY_SECOND_AVERAGE_POWER";
      goto LABEL_57;
    case 0x32uLL:
      v4 = @"INTERVAL_AVERAGE_CADENCE_CYCLING";
      v5 = @"INTERVAL_AVERAGE_CADENCE_PEDOMETER";
LABEL_53:
      if (a2)
      {
        v4 = v5;
      }

      v2 = v4;
      goto LABEL_57;
    case 0x33uLL:
      v2 = @"CURRENT_WATER_TEMPERATURE";
      goto LABEL_57;
    case 0x34uLL:
      v2 = @"AVERAGE_WATER_TEMPERATURE";
      goto LABEL_57;
    case 0x35uLL:
      v2 = @"DESCENT";
      goto LABEL_57;
    case 0x36uLL:
      v2 = @"DOWNHILL_RUN_COUNT";
LABEL_57:
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"AX_METRIC_TYPE_%@", v2];

      v3 = FILocalizedStringForKey(v6);

      break;
    default:
      v3 = FIWorkoutMetricTypeDescription(a1);
      break;
  }

  return v3;
}

void sub_24B37688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B376A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B376C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B376DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FILocalizeCount(double a1)
{
  if (FILocalizeCount_onceToken != -1)
  {
    FILocalizeCount_cold_1();
  }

  v2 = FILocalizeCount___formatter;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

uint64_t __FILocalizeCount_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = FILocalizeCount___formatter;
  FILocalizeCount___formatter = v0;

  [FILocalizeCount___formatter setRoundingMode:3];
  v2 = FILocalizeCount___formatter;

  return [v2 setMaximumFractionDigits:0];
}

id FILocalizePercentComplete(double a1)
{
  if (FILocalizePercentComplete_onceToken != -1)
  {
    FILocalizePercentComplete_cold_1();
  }

  v2 = FILocalizePercentComplete___formatter;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

uint64_t __FILocalizePercentComplete_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = FILocalizePercentComplete___formatter;
  FILocalizePercentComplete___formatter = v0;

  [FILocalizePercentComplete___formatter setNumberStyle:3];
  [FILocalizePercentComplete___formatter setMaximumFractionDigits:0];
  v2 = FILocalizePercentComplete___formatter;

  return [v2 setRoundingMode:2];
}

id FILocalizedDayName(void *a1)
{
  v1 = FILocalizedDayName_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    FILocalizedDayName_cold_1();
  }

  v3 = [FILocalizedDayName___formatter stringFromDate:v2];

  return v3;
}

uint64_t __FILocalizedDayName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = FILocalizedDayName___formatter;
  FILocalizedDayName___formatter = v0;

  [FILocalizedDayName___formatter setFormattingContext:1];
  v2 = FILocalizedDayName___formatter;

  return [v2 setLocalizedDateFormatFromTemplate:@"EEEE"];
}

id FILocalizedMonthName(void *a1)
{
  v1 = FILocalizedMonthName_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    FILocalizedMonthName_cold_1();
  }

  v3 = [FILocalizedMonthName___formatter stringFromDate:v2];

  return v3;
}

uint64_t __FILocalizedMonthName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = FILocalizedMonthName___formatter;
  FILocalizedMonthName___formatter = v0;

  v2 = FILocalizedMonthName___formatter;

  return [v2 setDateFormat:@"LLLL"];
}

id FIRandomStringWithKeyAndPossibleSuffixesWithTableName(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = v10;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "Working with possible suffixes: %@, key %@, and table name %@", buf, 0x20u);
  }

  if (![v10 count])
  {
    v24 = FIRandomStringForPrefixWithTableName(v9, v11, v12);
    if (v24)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v10 reverseObjectEnumerator];
  v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v32 = v10;
    v33 = v13;
    v17 = *v37;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [v9 stringByAppendingString:v19];
        v21 = FIRandomStringForPrefixWithTableName(v20, v11, v12);
        v22 = v21;
        if (v21 && ([v21 isEqualToString:@"__key_not_found__"] & 1) == 0)
        {
          if ([v19 containsString:@"NAME"])
          {
            v35 = 0;
            v24 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:&v35, v33];
            v25 = v35;
            v26 = v25;
            if (v24)
            {
              v27 = 1;
            }

            else
            {
              v27 = v25 == 0;
            }

            v10 = v32;
            if (!v27)
            {
              _HKInitializeLogging();
              v28 = *MEMORY[0x277CCC270];
              if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
              {
                FIRandomStringWithKeyAndPossibleSuffixesWithTableName_cold_1(v20, v26, v28);
              }
            }
          }

          else
          {
            v24 = v22;
            v10 = v32;
          }

          v13 = v33;

          goto LABEL_29;
        }

        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC270];
        if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v20;
          _os_log_impl(&dword_24B35E000, v23, OS_LOG_TYPE_DEFAULT, "Attempted to localize key %@", buf, 0xCu);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v24 = 0;
    v10 = v32;
    v13 = v33;
  }

  else
  {
    v24 = 0;
  }

LABEL_29:

  if (!v24)
  {
LABEL_30:
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v29, OS_LOG_TYPE_DEFAULT, "Result of localization is nil, returning original key", buf, 2u);
    }

    v24 = v9;
  }

LABEL_33:

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

id FIStringByReplacingDynamicPlaceholder(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = [v8 rangeOfString:v6];
  v21 = v8;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v9;
    v14 = v10;
    do
    {
      v15 = v8;
      v16 = [v8 stringByReplacingOccurrencesOfString:v6 withString:@"%@" options:0 range:{v13, v14}];
      v22 = 0;
      v8 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v22, v7];
      v17 = v22;

      if (v8)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17 == 0;
      }

      if (!v18)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC270];
        if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v24 = v6;
          v25 = 2112;
          v26 = v17;
          _os_log_error_impl(&dword_24B35E000, v19, OS_LOG_TYPE_ERROR, "Error formatting string with placeholder (%@): %@", buf, 0x16u);
        }
      }

      v13 = [v8 rangeOfString:v6];
      v14 = v20;
    }

    while (v13 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

id _FIStringForKeyInDefaultLocalizableTable(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v4 localizedStringForKey:v3 value:@"__key_not_found__" table:@"Localizable"];
    if ([v7 isEqualToString:@"__key_not_found__"])
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543874;
        v12 = v3;
        v13 = 2114;
        v14 = v5;
        v15 = 2114;
        v16 = @"Localizable";
        _os_log_impl(&dword_24B35E000, v8, OS_LOG_TYPE_DEFAULT, "Unable to find the string for key %{public}@ in bundle %{public}@ with table name %{public}@", &v11, 0x20u);
      }

      v6 = 0;
    }

    else
    {
      v6 = v7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

id FILocalizedStringForKey(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_285E60370 table:@"Localizable"];

  return v4;
}

uint64_t FIMindfulnessDayOffsetFromSunday(uint64_t a1)
{
  if ((a1 - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t FIMindfulnessWeekdaySelectionFromWeekday(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_24B3AF0E8[a1 - 1];
  }
}

uint64_t FIMindfulnessWeekdayForCalendarWeekday(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    return -2;
  }

  return result;
}

uint64_t FIMindfulnessWeekendDaySelectionForCalendar(void *a1)
{
  v1 = a1;
  v2 = [v1 hk_weekendDays];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __FIMindfulnessWeekendDaySelectionForCalendar_block_invoke;
  v5[3] = &unk_279004EB0;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_24B377F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FIMindfulnessWeekendDaySelectionForCalendar_block_invoke(uint64_t a1, void *a2)
{
  result = FIMindfulnessWeekdaySelectionFromWeekday([a2 unsignedIntegerValue]);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B379068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t FIDistanceTypeForActivityType(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  if (v2 <= 38)
  {
    if (v2 > 26)
    {
      if (v2 > 35)
      {
        if ((v2 - 36) >= 2)
        {
          goto LABEL_33;
        }
      }

      else if (v2 != 27)
      {
        if (v2 == 31)
        {
          v3 = 8;
          goto LABEL_30;
        }

        if (v2 == 35)
        {
          v3 = 9;
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else if (v2 > 15)
    {
      if ((v2 - 24) >= 2 && v2 != 16 && v2 != 21)
      {
        goto LABEL_33;
      }
    }

    else if (v2 != 1 && v2 != 3)
    {
      if (v2 == 13)
      {
        v3 = 2;
        goto LABEL_30;
      }

LABEL_33:
      v3 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v2 > 51)
  {
    v4 = v2 - 52;
    if ((v2 - 52) > 0x17)
    {
      goto LABEL_33;
    }

    if (((1 << v4) & 0x8C0001) == 0)
    {
      if (((1 << v4) & 0x8200) != 0)
      {
        v3 = 7;
        goto LABEL_30;
      }

      if (v2 == 60)
      {
        v3 = 6;
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_29:
    v3 = 1;
    goto LABEL_30;
  }

  if (v2 == 39)
  {
    v3 = 10;
    goto LABEL_30;
  }

  if (v2 == 41)
  {
    goto LABEL_29;
  }

  if (v2 != 46)
  {
    goto LABEL_33;
  }

  if ([v1 hasLocationTypePool])
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

LABEL_30:

  return v3;
}

id FIHKUnitForDistanceUnit(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = [MEMORY[0x277CCDAB0] meterUnit];
    }

    else if (a1 == 2)
    {
      v2 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = [MEMORY[0x277CCDAB0] mileUnit];
        break;
      case 4:
        v2 = [MEMORY[0x277CCDAB0] yardUnit];
        break;
      case 5:
        v2 = [MEMORY[0x277CCDAB0] footUnit];
        break;
    }
  }

  return v2;
}

id FIHKQuantityForDistanceUnitAndType(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) > 7)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_24B3AF120[a2 - 2];
  }

  v4 = FINumberOfUnitsInPaceForPaceFormat(v3);
  v5 = FIHKUnitForDistanceUnit(a1);
  v6 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:v4];

  return v6;
}

uint64_t FIPaceFormatForDistanceType(uint64_t a1)
{
  if ((a1 - 2) > 7)
  {
    return 1;
  }

  else
  {
    return qword_24B3AF120[a1 - 2];
  }
}

void __FIDistanceUnitForHKUnit_block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"km";
  v3[1] = @"m";
  v4[0] = &unk_285E6A068;
  v4[1] = &unk_285E6A080;
  v3[2] = @"mi";
  v3[3] = @"yd";
  v4[2] = &unk_285E6A098;
  v4[3] = &unk_285E6A0B0;
  v3[4] = @"ft";
  v4[4] = &unk_285E6A0C8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = FIDistanceUnitForHKUnit___distanceUnitsByUnitString;
  FIDistanceUnitForHKUnit___distanceUnitsByUnitString = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t FIPaceFormatForWorkoutActivityType(void *a1)
{
  v1 = FIDistanceTypeForActivityType(a1);
  if ((v1 - 2) > 7)
  {
    return 1;
  }

  else
  {
    return qword_24B3AF120[v1 - 2];
  }
}

double FISpeedForDurationOverDistance(void *a1, double a2)
{
  v3 = MEMORY[0x277CCDAB0];
  v4 = a1;
  v5 = [v3 meterUnit];
  [v4 doubleValueForUnit:v5];
  v7 = v6;

  return v7 / a2;
}

uint64_t FICurrentLocaleUsesMetricSystem()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE718]];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t FIHKUnitIsCalorieUnit(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  if ([v1 isEqual:v2])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CCDAB0] largeCalorieUnit];
    v3 = [v1 isEqual:v4];
  }

  return v3;
}

id FISplitsForMeasuringSystemIdentifier(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __FISplitsForMeasuringSystemIdentifier_block_invoke;
    v5[3] = &__block_descriptor_40_e24_B16__0__HKWorkoutEvent_8l;
    v5[4] = a2;
    v3 = [a1 fi_filteredArrayUsingBlock:v5];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

BOOL __FISplitsForMeasuringSystemIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 fi_isSplitEvent])
  {
    v4 = [v3 metadata];
    v5 = [v4 objectForKeyedSubscript:@"_HKPrivateMetadataSplitMeasuringSystem"];
    v6 = [v5 integerValue] == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id FICustomSplits(void *a1)
{
  if (a1)
  {
    v2 = [a1 fi_filteredArrayUsingBlock:&__block_literal_global_7];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

void sub_24B37BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _ValidateSample_0(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (a4)
  {
    v12 = FIIntervalErrorWithDescription(@"Cannot add sample - segment is finalized");
    FISetOutErrorIfNotNull(a5, v12);
LABEL_6:

    v13 = 0;
    goto LABEL_7;
  }

  if (([v9 fi_overlapsStartDate:v10 endDate:v11] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sample %@ does not overlap with startDate:%@ endDate: %@", v9, v10, v11];
    v14 = FIIntervalErrorWithDescription(v12);
    FISetOutErrorIfNotNull(a5, v14);

    goto LABEL_6;
  }

  v13 = 1;
LABEL_7:

  return v13;
}

void sub_24B37C3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

id _DoubleFractionNumberFormatter(uint64_t a1)
{
  v2 = _DoubleFractionNumberFormatter___formatter;
  if (!_DoubleFractionNumberFormatter___formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v4 = _DoubleFractionNumberFormatter___formatter;
    _DoubleFractionNumberFormatter___formatter = v3;

    [_DoubleFractionNumberFormatter___formatter setNumberStyle:1];
    [_DoubleFractionNumberFormatter___formatter setMinimumFractionDigits:2];
    [_DoubleFractionNumberFormatter___formatter setMaximumFractionDigits:2];
    v2 = _DoubleFractionNumberFormatter___formatter;
  }

  [v2 setRoundingMode:a1];
  v5 = _DoubleFractionNumberFormatter___formatter;

  return v5;
}

id _FILocalizationKeyForUnit(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 unitString];
  v5 = [v4 uppercaseString];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v3, v5];

  return v6;
}

id _ZeroPaddedIntegerNumberFormatter()
{
  v0 = _ZeroPaddedIntegerNumberFormatter___formatter;
  if (!_ZeroPaddedIntegerNumberFormatter___formatter)
  {
    v1 = objc_alloc_init(FINumberFormatter);
    v2 = _ZeroPaddedIntegerNumberFormatter___formatter;
    _ZeroPaddedIntegerNumberFormatter___formatter = v1;

    [_ZeroPaddedIntegerNumberFormatter___formatter setNumberStyle:1];
    [_ZeroPaddedIntegerNumberFormatter___formatter setPaddingPosition:0];
    v3 = _ZeroPaddedIntegerNumberFormatter___formatter;
    v4 = _IntegerNumberFormatter(2);
    v5 = [v4 stringFromNumber:&unk_285E6A0E0];
    [v3 setPaddingCharacter:v5];

    [_ZeroPaddedIntegerNumberFormatter___formatter setMinimumIntegerDigits:2];
    [_ZeroPaddedIntegerNumberFormatter___formatter setMaximumFractionDigits:0];
    v0 = _ZeroPaddedIntegerNumberFormatter___formatter;
  }

  [v0 setRoundingMode:2];
  v6 = _ZeroPaddedIntegerNumberFormatter___formatter;

  return v6;
}

uint64_t FINumberOfUnitsInPaceForPaceFormat(uint64_t a1)
{
  v1 = 100;
  if (a1 != 2)
  {
    v1 = 1;
  }

  if (a1 == 3)
  {
    return 500;
  }

  else
  {
    return v1;
  }
}

double FIPace(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if (a3 == 4)
  {
    FIPace_cold_1();
  }

  v9 = v8;
  [v7 doubleValueForUnit:v8];
  v11 = 100;
  if (a3 != 2)
  {
    v11 = 1;
  }

  if (a3 == 3)
  {
    v11 = 500;
  }

  v12 = v10 / v11;
  v13 = 0.0;
  if (v12 > 0.0)
  {
    v13 = round(a4 / v12);
  }

  if (v13 > 3600.0 || v12 < 2.22044605e-16)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v13;
  }

  return v15;
}

double FIPaceInMetersPerSecond(double a1, double a2)
{
  result = a1 / a2;
  if (a2 <= 2.22044605e-16)
  {
    return 0.0;
  }

  return result;
}

void _FIWriteBoolToStandardDomain(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a1;
  CFPreferencesSetAppValue(v7, [v5 numberWithBool:a2], v6);
  CFPreferencesAppSynchronize(v6);
  v9 = objc_opt_new();
  v8 = [MEMORY[0x277CBEB98] setWithObject:v7];

  [v9 synchronizeUserDefaultsDomain:v6 keys:v8];
}

id _FINumberForStandardDomainAndKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 standardUserDefaults];
  v7 = [v6 persistentDomainForName:v5];

  v8 = [v7 objectForKey:v4];

  return v8;
}

void _FIWriteIntegerToStandardDomain(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a1;
  CFPreferencesSetAppValue(v7, [v5 numberWithInteger:a2], v6);
  CFPreferencesAppSynchronize(v6);
  v9 = objc_opt_new();
  v8 = [MEMORY[0x277CBEB98] setWithObject:v7];

  [v9 synchronizeUserDefaultsDomain:v6 keys:v8];
}

uint64_t _FIBoolForPerGizmoDomainAndKeyWithDefaultValue(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [[FINPSDomainAccessorWrapper alloc] initWithDomain:v6];

  v8 = [(FINPSDomainAccessorWrapper *)v7 synchronize];
  v9 = [(FINPSDomainAccessorWrapper *)v7 objectForKey:v5];

  if (v9)
  {
    a3 = [v9 BOOLValue];
  }

  return a3;
}

void _FIWriteBoolToPerGizmoDomain(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v10 = [[FINPSDomainAccessorWrapper alloc] initWithDomain:v5];
  [(FINPSDomainAccessorWrapper *)v10 setBool:a2 forKey:v6];
  v7 = [(FINPSDomainAccessorWrapper *)v10 synchronize];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEB98] setWithObject:v6];

  [v8 synchronizeNanoDomain:v5 keys:v9];
}

void _FIWriteBoolsToPerGizmoDomain(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [[FINPSDomainAccessorWrapper alloc] initWithDomain:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v20}];
        v13 = v12;
        if (v12)
        {
          -[FINPSDomainAccessorWrapper setBool:forKey:](v5, "setBool:forKey:", [v12 BOOLValue], v11);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = [(FINPSDomainAccessorWrapper *)v5 synchronize];
  v15 = objc_opt_new();
  v16 = MEMORY[0x277CBEB98];
  v17 = [v6 allKeys];
  v18 = [v16 setWithArray:v17];
  [v15 synchronizeNanoDomain:v4 keys:v18];

  v19 = *MEMORY[0x277D85DE8];
}

id _FINumberForPerGizmoDomainAndKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[FINPSDomainAccessorWrapper alloc] initWithDomain:v4];

  v6 = [(FINPSDomainAccessorWrapper *)v5 synchronize];
  v7 = [(FINPSDomainAccessorWrapper *)v5 objectForKey:v3];

  return v7;
}

void _FIWriteIntegerToPerGizmoDomain(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v10 = [[FINPSDomainAccessorWrapper alloc] initWithDomain:v5];
  [(FINPSDomainAccessorWrapper *)v10 setInteger:a2 forKey:v6];
  v7 = [(FINPSDomainAccessorWrapper *)v10 synchronize];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEB98] setWithObject:v6];

  [v8 synchronizeNanoDomain:v5 keys:v9];
}

__CFString *FIWorkoutSplitMeasurementSystemDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", a1];
  }

  else
  {
    v2 = off_2790051C8[a1];
  }

  return v2;
}

id FIGeneralizedActivityTypeKey(uint64_t a1, int a2, uint64_t a3)
{
  if (a1 == 46)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu", 46, a3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a1, v8];
  }
  v4 = ;
  v5 = v4;
  if (a2)
  {
    v6 = [v4 stringByAppendingString:@".indoor"];

    v5 = v6;
  }

  return v5;
}

id FIQuantityForGoalTypeAndValue(uint64_t a1, double a2)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277CCD7E8];
      v4 = [MEMORY[0x277CCDAB0] meterUnit];
      goto LABEL_7;
    case 2:
      v3 = MEMORY[0x277CCD7E8];
      v4 = [MEMORY[0x277CCDAB0] secondUnit];
      goto LABEL_7;
    case 3:
      v3 = MEMORY[0x277CCD7E8];
      v4 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
LABEL_7:
      v5 = v4;
      v6 = [v3 quantityWithUnit:v4 doubleValue:a2];

      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

double FIDoubleValueForQuantityAndGoalType(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 == 1)
  {
    v5 = [MEMORY[0x277CCDAB0] meterUnit];
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v5 = [MEMORY[0x277CCDAB0] secondUnit];
    goto LABEL_7;
  }

  v4 = 0.0;
  if (a2 == 3)
  {
    v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
LABEL_7:
    v6 = v5;
    [v3 doubleValueForUnit:v5];
    v4 = v7;
  }

  return v4;
}

uint64_t FIActivityTypeIsSupported(uint64_t a1)
{
  result = 1;
  if (a1 <= 76)
  {
    v3 = a1 - 13;
    if (v3 <= 0x3B && ((1 << v3) & 0xE34508281400889) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 77 && a1 != 80 && a1 != 3000)
  {
    return 0;
  }

  return result;
}

uint64_t FIActivityTypeIsCalorimetryOptimized(uint64_t a1)
{
  result = 1;
  if ((a1 - 13) > 0x3B || ((1 << (a1 - 13)) & 0xE34D08281400889) == 0)
  {
    v3 = a1 - 77;
    if (v3 > 5 || ((1 << v3) & 0x29) == 0)
    {
      return 0;
    }
  }

  return result;
}

id FIOpenGoalUUIDForActivityType(void *a1)
{
  v1 = a1;
  v2 = [v1 effectiveTypeIdentifier];
  v3 = 0;
  if (v2 <= 51)
  {
    if (v2 <= 34)
    {
      if (v2 > 19)
      {
        if (v2 == 20)
        {
          if (([v1 isIndoor] & 1) == 0)
          {
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"D65AB2CF-D621-4FAA-BABB-28670DB18152";
            goto LABEL_72;
          }
        }

        else
        {
          if (v2 != 24)
          {
            goto LABEL_73;
          }

          if (([v1 isIndoor] & 1) == 0)
          {
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"329E0317-E58E-4237-8083-4F0BE76357F1";
            goto LABEL_72;
          }
        }
      }

      else
      {
        if (v2 == 13)
        {
          v7 = [v1 isIndoor];
          v4 = objc_alloc(MEMORY[0x277CCAD78]);
          if (v7)
          {
            v5 = @"E06981DB-4C2C-412A-A22F-7629BFD56505";
          }

          else
          {
            v5 = @"5256B1ED-936D-4419-8F97-4A5CB7A77BE3";
          }

          goto LABEL_72;
        }

        if (v2 != 16)
        {
          goto LABEL_73;
        }

        if (([v1 isIndoor] & 1) == 0)
        {
          v4 = objc_alloc(MEMORY[0x277CCAD78]);
          v5 = @"63200046-5236-4523-85D7-D5B8B85410E5";
          goto LABEL_72;
        }
      }
    }

    else if (v2 <= 43)
    {
      if (v2 != 35)
      {
        if (v2 != 37)
        {
          goto LABEL_73;
        }

        v6 = [v1 isIndoor];
        v4 = objc_alloc(MEMORY[0x277CCAD78]);
        if (v6)
        {
          v5 = @"2583F09E-8522-43F6-9E82-B0701414CF68";
        }

        else
        {
          v5 = @"3D1CE8DF-FB42-48EC-B0B9-28CA40BA65C9";
        }

        goto LABEL_72;
      }

      if (([v1 isIndoor] & 1) == 0)
      {
        v4 = objc_alloc(MEMORY[0x277CCAD78]);
        v5 = @"0A5FC9FB-CCFF-48D0-BCF3-9766C211FE2D";
        goto LABEL_72;
      }
    }

    else if (v2 == 44)
    {
      if (([v1 isIndoor] & 1) == 0)
      {
        v4 = objc_alloc(MEMORY[0x277CCAD78]);
        v5 = @"C5F93E17-7D72-4654-9C80-70B10EF900C6";
        goto LABEL_72;
      }
    }

    else
    {
      if (v2 == 46)
      {
        if ([v1 isIndoor])
        {
          goto LABEL_66;
        }

        v8 = [v1 swimmingLocationType];
        switch(v8)
        {
          case 0:
            goto LABEL_66;
          case 2:
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"C7D48B54-D31F-4172-B89C-B173A77AF8D9";
            goto LABEL_72;
          case 1:
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"8632810D-5AE8-49AE-8861-23719EAEDC43";
            goto LABEL_72;
        }
      }

      else if (v2 != 50)
      {
        goto LABEL_73;
      }

      if (([v1 isIndoor] & 1) == 0)
      {
        v4 = objc_alloc(MEMORY[0x277CCAD78]);
        v5 = @"73009EF0-58A6-40CE-9598-DBF394A80415";
        goto LABEL_72;
      }
    }

LABEL_66:
    v3 = 0;
    goto LABEL_73;
  }

  if (v2 > 69)
  {
    if (v2 <= 71)
    {
      if (v2 == 70)
      {
        if (([v1 isIndoor] & 1) == 0)
        {
          v4 = objc_alloc(MEMORY[0x277CCAD78]);
          v5 = @"76433BE8-3A5D-41BC-8C67-23C5B3F85081";
          goto LABEL_72;
        }
      }

      else if (([v1 isIndoor] & 1) == 0)
      {
        v4 = objc_alloc(MEMORY[0x277CCAD78]);
        v5 = @"AB8DDB22-313E-436D-954E-112553E197A5";
        goto LABEL_72;
      }
    }

    else
    {
      switch(v2)
      {
        case 'H':
          if (([v1 isIndoor] & 1) == 0)
          {
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"C36E60C0-9DF8-4C81-9EF8-994CB1B6E791";
            goto LABEL_72;
          }

          break;
        case 'M':
          if (([v1 isIndoor] & 1) == 0)
          {
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"3BE0D7FF-AFAE-4A9F-8E44-74A55D93A959";
            goto LABEL_72;
          }

          break;
        case 'P':
          if (([v1 isIndoor] & 1) == 0)
          {
            v4 = objc_alloc(MEMORY[0x277CCAD78]);
            v5 = @"A6A9C4DD-12C3-4F74-BCF1-85C84F7CB349";
            goto LABEL_72;
          }

          break;
        default:
          goto LABEL_73;
      }
    }

    goto LABEL_66;
  }

  if (v2 <= 58)
  {
    if (v2 == 52)
    {
      v9 = [v1 isIndoor];
      v4 = objc_alloc(MEMORY[0x277CCAD78]);
      if (v9)
      {
        v5 = @"51F97983-0223-467C-ADAE-1CFFE5383CBE";
      }

      else
      {
        v5 = @"9CD2ED1B-6C09-4D6B-911F-CFB9C8C418BE";
      }

      goto LABEL_72;
    }

    if (v2 != 57)
    {
      goto LABEL_73;
    }

    if (([v1 isIndoor] & 1) == 0)
    {
      v4 = objc_alloc(MEMORY[0x277CCAD78]);
      v5 = @"CB8860F7-2573-4E06-9526-2B9D29941567";
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  if (v2 == 59)
  {
    if (([v1 isIndoor] & 1) == 0)
    {
      v4 = objc_alloc(MEMORY[0x277CCAD78]);
      v5 = @"26AE82DC-AA7D-49B2-A309-91ED198DE5F4";
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  if (v2 == 63)
  {
    if (([v1 isIndoor] & 1) == 0)
    {
      v4 = objc_alloc(MEMORY[0x277CCAD78]);
      v5 = @"B13FD43F-7859-47C4-BD87-D2F6D8350DAC";
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  if (v2 != 66)
  {
    goto LABEL_73;
  }

  if ([v1 isIndoor])
  {
    goto LABEL_66;
  }

  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = @"62C3D3CF-8A23-4E48-A1B5-FE2098C15338";
LABEL_72:
  v3 = [v4 initWithUUIDString:v5];
LABEL_73:

  return v3;
}

id FIStandardFitnessDefaultActivityTypes(int a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __FIStandardFitnessDefaultActivityTypes_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a2;
  if (FIStandardFitnessDefaultActivityTypes_onceToken != -1)
  {
    dispatch_once(&FIStandardFitnessDefaultActivityTypes_onceToken, block);
  }

  v3 = &FIStandardFitnessDefaultActivityTypes_wheelchairActivityTypes;
  if (!a1)
  {
    v3 = &FIStandardFitnessDefaultActivityTypes_activityTypes;
  }

  v4 = *v3;

  return v4;
}

id FIFitnessJuniorDefaultActivityTypes()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0];
  v7[0] = v0;
  v1 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0];
  v7[1] = v1;
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:0];
  v7[2] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:24 isIndoor:0];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __FIStandardFitnessDefaultActivityTypes_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0];
  [v2 addObject:v3];

  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  [v2 addObject:v4];

  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0];
  [v2 addObject:v5];

  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  [v2 addObject:v6];

  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:0];
  [v2 addObject:v7];

  v8 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  [v2 addObject:v8];

  if (*(a1 + 32) == 1)
  {
    v9 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    [v2 addObjectsFromArray:v9];
  }

  v10 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:82 isIndoor:0];
  [v2 addObject:v10];

  v11 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:24 isIndoor:0];
  [v2 addObject:v11];

  v12 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:0];
  [v2 addObject:v12];

  v13 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:0];
  [v2 addObject:v13];

  v14 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  [v2 addObject:v14];

  v15 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:63 isIndoor:0];
  [v2 addObject:v15];

  v16 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:65 isIndoor:0];
  [v2 addObject:v16];

  v17 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:20 isIndoor:0];
  [v2 addObject:v17];

  v18 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:59 isIndoor:0];
  [v2 addObject:v18];

  v19 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:57 isIndoor:0];
  [v2 addObject:v19];

  v20 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:66 isIndoor:0];
  [v2 addObject:v20];

  v21 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:0];
  [v2 addObject:v21];

  v22 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:72 isIndoor:0];
  [v2 addObject:v22];

  v23 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:80 isIndoor:0];
  [v2 addObject:v23];

  v24 = FIStandardFitnessDefaultActivityTypes_activityTypes;
  FIStandardFitnessDefaultActivityTypes_activityTypes = v2;
  v25 = v2;

  v28 = +[FIWorkoutActivityType wheelchairActivityTypes];
  v26 = [v28 arrayByAddingObjectsFromArray:FIStandardFitnessDefaultActivityTypes_activityTypes];
  v27 = FIStandardFitnessDefaultActivityTypes_wheelchairActivityTypes;
  FIStandardFitnessDefaultActivityTypes_wheelchairActivityTypes = v26;
}

void FIActivityMoveModeAnalyticsSendActivityMoveModeSwitchedInSettings(uint64_t a1)
{
  v1 = @"Active Energy";
  if (a1 == 2)
  {
    v1 = @"Apple Move Time";
  }

  v2 = v1;
  v3 = [@"com.apple.Fitness.analytics.fitnessJr" stringByAppendingString:@".activityMoveModeSwitchedInSettings"];
  FIActivityAnalyticsSubmission(v3, @"newActivityMoveMode", v2);
}

void FIActivityMoveModeAnalyticsSendExperienceType(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_2790053C0[a1];
  }

  v2 = [@"com.apple.Fitness.analytics.fitnessJr" stringByAppendingString:@".ageBucket"];
  FIActivityAnalyticsSubmission(v2, @"ageBucket", v1);
}

uint64_t FIExperienceTypeForBirthDateComponentsWithCurrentDateAndCalendar(void *a1, void *a2, void *a3)
{
  v3 = FIAgeInYearsForDateOfBirthComponentsWithCurrentDateAndCalendar(a1, a3, a2);
  v4 = 2;
  if (v3 <= 9)
  {
    v4 = 3;
  }

  if (v3 > 12)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t FIExperienceTypeWithHealthStoreAndDefaultExperienceType(void *a1, uint64_t a2)
{
  result = FIExperienceTypeWithHealthStore(a1);
  if (!result)
  {
    return a2;
  }

  return result;
}

__CFString *FILocalizationTableForExperienceType(uint64_t a1)
{
  v1 = @"Localizable";
  if (a1 == 2)
  {
    v1 = @"Localizable-Modified-tinker";
  }

  if (a1 == 3)
  {
    return @"Localizable-Simplified-tinker";
  }

  else
  {
    return v1;
  }
}

id UnitForMoveGoal(void *a1)
{
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      a1 = [MEMORY[0x277CCDAB0] minuteUnit];
    }
  }

  else
  {
    a1 = _HKWorkoutCanonicalEnergyBurnedUnit();
  }

  return a1;
}

double MoveValueForActivitySummary(void *a1)
{
  v1 = a1;
  v2 = UnitForMoveGoal([v1 activityMoveMode]);
  if ([v1 activityMoveMode] == 2)
  {
    [v1 appleMoveMinutes];
  }

  else
  {
    [v1 activeEnergyBurned];
  }
  v3 = ;

  [v3 doubleValueForUnit:v2];
  v5 = v4;

  return v5;
}

double MoveGoalValueForActivitySummary(void *a1)
{
  v1 = a1;
  v2 = UnitForMoveGoal([v1 activityMoveMode]);
  if ([v1 activityMoveMode] == 2)
  {
    [v1 appleMoveMinutesGoal];
  }

  else
  {
    [v1 activeEnergyBurnedGoal];
  }
  v3 = ;

  [v3 doubleValueForUnit:v2];
  v5 = v4;

  return v5;
}

void sub_24B38990C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double MovePercentageForActivitySummary(void *a1)
{
  v1 = a1;
  if ([v1 activityMoveMode] == 2)
  {
    [v1 _moveMinutesCompletionPercentage];
  }

  else
  {
    [v1 _activeEnergyCompletionPercentage];
  }

  v3 = v2;

  return v3;
}

void sub_24B38A230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_24B38A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B38AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MoveStatisticsForActivitySummary(void *a1)
{
  v1 = a1;
  if ([v1 activityMoveMode] == 2)
  {
    [v1 _dailyMoveMinutesStatistics];
  }

  else
  {
    [v1 _dailyEnergyBurnedStatistics];
  }
  v2 = ;

  return v2;
}

void sub_24B38C988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCMCalorieUserInfoClass_block_invoke(uint64_t a1)
{
  CoreMotionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CMCalorieUserInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCMCalorieUserInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCMCalorieUserInfoClass_block_invoke_cold_1();
    CoreMotionLibrary();
  }
}

void CoreMotionLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreMotionLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279005568;
    v4 = 0;
    CoreMotionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreMotionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMotionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCMNatalimeterClass_block_invoke(uint64_t a1)
{
  CoreMotionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CMNatalimeter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCMNatalimeterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCMNatalimeterClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_2();
  }
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

__CFString *FIStringFromDailyGoalType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"FIDailyGoalTypeNone";
  }

  else
  {
    return off_2790056F0[a1 - 1];
  }
}

uint64_t FIDailyGoalTypeFromString(void *a1)
{
  v1 = a1;
  if (FIDailyGoalTypeNameMappings_onceToken != -1)
  {
    FIDailyGoalTypeFromString_cold_1();
  }

  v2 = [FIDailyGoalTypeNameMappings_typeNameMappings objectForKey:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *FISetOutErrorIfNotNull(void *result, id a2)
{
  if (result)
  {
    v3 = result;
    result = a2;
    *v3 = a2;
  }

  return result;
}

id FIIntervalErrorWithDescription(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a1;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"com.apple.fitness.intervals" code:0 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __FIDailyGoalTypeNameMappings_block_invoke()
{
  v0 = FIDailyGoalTypeNameMappings_typeNameMappings;
  FIDailyGoalTypeNameMappings_typeNameMappings = &unk_285E6B170;
}

uint64_t FICMotionConditionForWheelchairUse(uint64_t a1)
{
  if (a1 == 2)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t FIAgeInYearsForDateOfBirth(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  v3 = [v1 date];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = FIAgeInYearsForDateOfBirthWithCurrentDateAndCalendar(v2, v3, v4);

  return v5;
}

uint64_t FIAgeInYearsForDateOfBirthWithCurrentDateAndCalendar(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = [a3 components:4 fromDate:result toDate:a2 options:0];
    v4 = [v3 year];
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    return v5;
  }

  return result;
}

uint64_t FIAgeInYearsForDateOfBirthComponents(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  v3 = [v1 date];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = FIAgeInYearsForDateOfBirthComponentsWithCurrentDateAndCalendar(v2, v3, v4);

  return v5;
}

id FIStandardDistanceQuantity(void *a1)
{
  v1 = [a1 _isMetricDistance];
  v2 = MEMORY[0x277CCD7E8];
  if (v1)
  {
    [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  }

  else
  {
    [MEMORY[0x277CCDAB0] mileUnit];
  }
  v3 = ;
  v4 = [v2 quantityWithUnit:v3 doubleValue:1.0];

  return v4;
}

id FIGetActivePairedDevice()
{
  v0 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v1 = [getNRPairedDeviceRegistryClass() activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  return v3;
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_279005548;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24B38E990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FIIsActivePairedDeviceSatellitePaired()
{
  NRPairedDeviceRegistryClass = getNRPairedDeviceRegistryClass();
  if (objc_opt_respondsToSelector())
  {

    return [NRPairedDeviceRegistryClass isActiveDeviceAltAccount];
  }

  else
  {
    v2 = FIGetActivePairedDevice();
    v3 = FIIsDeviceSatellitePaired(v2);

    return v3;
  }
}

uint64_t FIIsDeviceSatellitePaired(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  v11 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  if (!getNRDevicePropertyIsAltAccountSymbolLoc_ptr)
  {
    v3 = NanoRegistryLibrary();
    v9[3] = dlsym(v3, "NRDevicePropertyIsAltAccount");
    getNRDevicePropertyIsAltAccountSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    v7 = FIIsDeviceSatellitePaired_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = [v1 valueForProperty:*v2];
  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t FIDeviceMeetsMinimumOSVersion(uint64_t a1)
{
  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v3 = [getNRPairedDeviceRegistryClass() activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  if (!v5)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
  v18 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
  if (!getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr)
  {
    v8 = NanoRegistryLibrary();
    v16[3] = dlsym(v8, "NRWatchOSVersionForRemoteDevice");
    getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = v16[3];
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
    FIIsDeviceSatellitePaired_cold_1();
    goto LABEL_12;
  }

  v9 = v7(v6);

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v10 = getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr;
  v18 = getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr;
  if (!getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr)
  {
    v11 = NanoRegistryLibrary();
    v16[3] = dlsym(v11, "NRVersionIsGreaterThanOrEqual");
    getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr = v16[3];
    v10 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v10)
  {
LABEL_12:
    v14 = FIIsDeviceSatellitePaired_cold_1();
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v14);
  }

  v12 = v10(v9, a1);
LABEL_10:

  return v12;
}

uint64_t FIIsTinkerVegaOrFitnessJunior()
{
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  if (([v0 isStandalonePhoneFitnessMode] & 1) != 0 || FIActivityMoveModeUserDefault() == 2)
  {
    active = 1;
  }

  else
  {
    active = FIIsActivePairedDeviceSatellitePaired();
  }

  return active;
}

uint64_t FIIsEndRemindersEnabled(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  v3 = [v2 synchronize];
  v4 = [v2 objectForKey:@"NLPredictedActivityEndEnableNotification"];
  v5 = [MEMORY[0x277CC1C98] isWorkoutEndReminderEnabledWhenDeviceIsInMoveTimeMode:a1 == 2 withCurrentSetting:v4];

  return v5;
}

uint64_t FIIsStartRemindersEnabled(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  v5 = [v4 synchronize];
  v6 = [v4 objectForKey:@"NLPredictedActivityStartEnableNotification"];
  v7 = [MEMORY[0x277CC1C98] isWorkoutStartReminderEnabledWhenDeviceIsSatellitePaired:a1 isInMoveTimeMode:a2 == 2 withCurrentSetting:v6];

  return v7;
}

uint64_t FIIsResumeRemindersEnabled(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  v4 = [v3 synchronize];
  v5 = [v3 objectForKey:@"NLPredictedActivityResumeEnableNotification"];
  v6 = [MEMORY[0x277CC1C98] isWorkoutResumeReminderEnabledWhenDeviceIsInMoveTimeMode:a2 == 2 withCurrentSetting:v5];

  return v6;
}

uint64_t FIIsPhoneFitnessTrackingEnabled()
{
  v0 = *MEMORY[0x277D6C1B0];
  TCCAccessGetOverride();
  return 1;
}

uint64_t FIAreFitnessAppsRestricted()
{
  v18[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.ActivityMonitorApp"];
  v1 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.SessionTrackerApp"];
  v2 = v1;
  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v18[0] = v0;
    v18[1] = v1;
    [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    v4 = v6;
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v13 + 1) + 8 * v8) appState];
          v10 = [v9 isRestricted];

          if (v10)
          {
            v4 = 1;
            goto LABEL_17;
          }

          ++v8;
        }

        while (v4 != v8);
        v4 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t FIAreGoalCompletionNotificationsEnabled()
{
  v0 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.ActivityMonitorApp"];
  v1 = [v0 appState];
  v2 = [v1 isInstalled];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.ActivityMonitorApp"];
    v4 = [v3 notificationSettings];

    v5 = [v4 authorizationStatus];
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE4C8]];
    v8 = [v7 objectForKey:@"EnableGoalCompletions"];

    if (v5 == 2)
    {
      if (v8)
      {
        v2 = [v8 BOOLValue];
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void FISetMirrorModeEnabled(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MirrorModeEnabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  _FIWriteBoolsToPerGizmoDomain(v2, @"com.apple.nanolifestyle.sessiontrackerapp");

  v3 = *MEMORY[0x277D85DE8];
}

void *FIWorkoutMirroringSetting()
{
  v0 = _FINumberForPerGizmoDomainAndKey(@"com.apple.nanolifestyle.sessiontrackerapp", @"WorkoutMirroringSetting");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_285E6A7A0;
  }

  v3 = v2;

  return v2;
}

void FISetAlertOnWatchWhenMirrored(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"AlertOnWatchWhenMirrored";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  _FIWriteBoolsToPerGizmoDomain(v2, @"com.apple.nanolifestyle.sessiontrackerapp");

  v3 = *MEMORY[0x277D85DE8];
}

void FISetShouldTrackTrainingLoad(uint64_t a1)
{
  v1 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"ShouldTrackTrainingLoad";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v12[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  _FIWriteBoolsToPerGizmoDomain(v3, @"com.apple.nanolifestyle.sessiontrackerapp");

  if (v1)
  {
    v4 = @"opt-in";
  }

  else
  {
    v4 = @"opt-out";
  }

  v9[0] = @"toggle";
  v9[1] = @"source";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  FIActivityAnalyticsSubmissionWithPayloadAndRequiresIHA(@"com.apple.postWorkoutPromptToggle", v7, 1);
  v8 = *MEMORY[0x277D85DE8];
}

void FISetShouldShowTrackTrainingLoadPrompt(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"ShouldShowTrackTrainingLoadPrompt";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  _FIWriteBoolsToPerGizmoDomain(v2, @"com.apple.nanolifestyle.sessiontrackerapp");

  v3 = *MEMORY[0x277D85DE8];
}

void FISetHasSeenTrainingLoadOnboarding(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"HasSeenTrainingLoadOnboarding";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  _FIWriteBoolsToPerGizmoDomain(v2, @"com.apple.nanolifestyle.sessiontrackerapp");

  v3 = *MEMORY[0x277D85DE8];
}

void FISetWorkoutVoiceIsEnabledForActivityType(void *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v3 = MEMORY[0x277CBEA60];
  v4 = a1;
  v5 = [v3 arrayWithObjects:v7 count:1];

  FISetWorkoutVoiceIsEnabledForActivityTypes(v5, a2);
  v6 = *MEMORY[0x277D85DE8];
}

void FISetWorkoutVoiceIsEnabledForActivityTypes(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 persistentDomainForName:@"com.apple.nanolifestyle"];

  v20 = v5;
  v6 = [v5 objectForKey:@"WorkoutVoiceEnablementPerActivityType"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
        v15 = [v13 uniqueIdentifier];
        [v7 setObject:v14 forKey:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.nanolifestyle"];
  [v16 setObject:v7 forKey:@"WorkoutVoiceEnablementPerActivityType"];

  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CBEB98] setWithObject:@"WorkoutVoiceEnablementPerActivityType"];
  [v17 synchronizeUserDefaultsDomain:@"com.apple.nanolifestyle" keys:v18];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t FIIsWorkoutVoiceEnabledForActivityType(void *a1)
{
  v1 = MEMORY[0x277CBEBD0];
  v2 = a1;
  v3 = [v1 standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.nanolifestyle"];

  v5 = [v4 objectForKey:@"WorkoutVoiceEnablementPerActivityType"];
  v6 = [v2 uniqueIdentifier];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

uint64_t FISystemRootDirectory()
{
  if (FISystemRootDirectory_onceToken != -1)
  {
    FISystemRootDirectory_cold_1();
  }

  return FISystemRootDirectory_systemRootDirectory;
}

id FIFitnessBundle()
{
  if (FIFitnessBundle_onceToken != -1)
  {
    FIFitnessBundle_cold_1();
  }

  v1 = FIFitnessBundle___bundle;

  return v1;
}

void __FIFitnessBundle_block_invoke()
{
  if (FISystemRootDirectory_onceToken != -1)
  {
    FISystemRootDirectory_cold_1();
  }

  v2 = [FISystemRootDirectory_systemRootDirectory stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/Fitness.framework"];
  v0 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v1 = FIFitnessBundle___bundle;
  FIFitnessBundle___bundle = v0;
}

void __FIFitnessUIBundle_block_invoke()
{
  if (FISystemRootDirectory_onceToken != -1)
  {
    FISystemRootDirectory_cold_1();
  }

  v2 = [FISystemRootDirectory_systemRootDirectory stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/FitnessUI.framework"];
  v0 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v1 = FIFitnessUIBundle___bundle;
  FIFitnessUIBundle___bundle = v0;
}

id FIFitnessUIAssetsBundle()
{
  if (FIFitnessUIAssetsBundle_onceToken != -1)
  {
    FIFitnessUIAssetsBundle_cold_1();
  }

  v1 = FIFitnessUIAssetsBundle___bundle;

  return v1;
}

void __FIFitnessUIAssetsBundle_block_invoke()
{
  if (FISystemRootDirectory_onceToken != -1)
  {
    FISystemRootDirectory_cold_1();
  }

  v2 = [FISystemRootDirectory_systemRootDirectory stringByAppendingPathComponent:@"/System/Library/Health/Assets/FitnessUIAssets.bundle"];
  v0 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v1 = FIFitnessUIAssetsBundle___bundle;
  FIFitnessUIAssetsBundle___bundle = v0;
}

uint64_t FIDeviceSupportsSwimming()
{
  if (_FIBoolForPerGizmoDomainAndKey(@"com.apple.nanolifestyle.sessiontrackerapp", @"ForceSwimmingSupport"))
  {
    return 1;
  }

  v1 = FIGetActivePairedDevice();
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"61415300-E200-4EDE-9853-BF83E3DE3A8A"];
  v3 = [v1 supportsCapability:v2];

  return v3;
}

__n128 FIEffectiveOperatingSystemVersion@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  if (FIEffectiveOperatingSystemVersion_onceToken != -1)
  {
    FIEffectiveOperatingSystemVersion_cold_1();
  }

  v7 = *a1;
  v8 = a1[1].n128_u64[0];
  v4 = HKNSOperatingSystemVersionsEqual();
  v5 = &FIEffectiveOperatingSystemVersion_moonstoneVersion;
  if (!v4)
  {
    v5 = a1;
  }

  result = *v5;
  *a2 = *v5;
  a2[1].n128_u64[0] = v5[1].n128_u64[0];
  return result;
}

double __FIEffectiveOperatingSystemVersion_block_invoke()
{
  HKNSOperatingSystemVersionFromString();
  FIEffectiveOperatingSystemVersion_moonstoneVersion = v1;
  qword_280B17FA0 = v2;
  HKNSOperatingSystemVersionFromString();
  result = *&v1;
  FIEffectiveOperatingSystemVersion_emptyVersion = v1;
  qword_280B17FB8 = v2;
  return result;
}

uint64_t FIIsWorkoutNFCAllDayEnabled()
{
  v0 = *MEMORY[0x277CCE2D8];
  v1 = _FIBoolForPerGizmoDomainAndKeyWithDefaultValue(*MEMORY[0x277CCE2D8], *MEMORY[0x277CCE2D0], 0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getNPKExpressGymKitAvailabilityManagerClass_softClass;
  v12 = getNPKExpressGymKitAvailabilityManagerClass_softClass;
  if (!getNPKExpressGymKitAvailabilityManagerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getNPKExpressGymKitAvailabilityManagerClass_block_invoke;
    v8[3] = &unk_279005548;
    v8[4] = &v9;
    __getNPKExpressGymKitAvailabilityManagerClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v5 = [v4 isExpressGymKitAllowed];
  v6 = _FIBoolForPerGizmoDomainAndKeyWithDefaultValue(v0, *MEMORY[0x277CCE2E0], v1);

  return v6 & v5;
}

void sub_24B3901C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FISetWorkoutNFCAllDayEnabled(uint64_t a1)
{
  _FIWriteBoolToPerGizmoDomain(*MEMORY[0x277CCE2E0], a1, *MEMORY[0x277CCE2D8]);
  v1 = *MEMORY[0x277CCE2C8];

  return notify_post(v1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
    return NanoRegistryLibrary();
  }

  return result;
}

uint64_t NanoRegistryLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2790057A8;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyIsAltAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRVersionIsGreaterThanOrEqual");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNPKExpressGymKitAvailabilityManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NanoPassKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NanoPassKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2790057C0;
    v7 = 0;
    NanoPassKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (NanoPassKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPKExpressGymKitAvailabilityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPKExpressGymKitAvailabilityManagerClass_block_invoke_cold_1();
  }

  getNPKExpressGymKitAvailabilityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoPassKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPassKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id FIDefaultExerciseGoalQuantityForActivityMoveMode(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [MEMORY[0x277CCDAB0] minuteUnit];
  v4 = MEMORY[0x277CCDF18];
  if (a1 != 2)
  {
    v4 = MEMORY[0x277CCDF08];
  }

  v5 = [v2 quantityWithUnit:v3 doubleValue:*v4];

  return v5;
}

id FIDefaultStandGoalQuantityForActivityMoveMode(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [MEMORY[0x277CCDAB0] countUnit];
  v4 = MEMORY[0x277CCDF10];
  if (a1 != 2)
  {
    v4 = MEMORY[0x277CCDF00];
  }

  v5 = [v2 quantityWithUnit:v3 doubleValue:*v4];

  return v5;
}

uint64_t FIActivityMoveModeWithHealthStore(void *a1)
{
  v6 = 0;
  v1 = [a1 _activityMoveModeWithError:&v6];
  v2 = v6;
  if (v2)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      FIActivityMoveModeWithHealthStore_cold_1(v2, v3);
      if (v1)
      {
        goto LABEL_4;
      }

LABEL_6:
      v4 = 1;
      goto LABEL_7;
    }
  }

  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = [v1 integerValue];
LABEL_7:

  return v4;
}

uint64_t FIDefaultActivityMoveModeWithAge(uint64_t a1)
{
  if (a1 >= 13)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id FIMoveQuantityForActivitySummary(void *a1)
{
  v1 = a1;
  if ([v1 activityMoveMode] == 2)
  {
    [v1 appleMoveMinutes];
  }

  else
  {
    [v1 activeEnergyBurned];
  }
  v2 = ;

  return v2;
}

id FIMoveGoalQuantityForActivitySummary(void *a1)
{
  v1 = a1;
  if ([v1 activityMoveMode] == 2)
  {
    [v1 appleMoveMinutesGoal];
  }

  else
  {
    [v1 activeEnergyBurnedGoal];
  }
  v2 = ;

  return v2;
}

uint64_t FIActivitySummaryHasNonZeroMoveGoal(void *a1)
{
  v1 = FIMoveGoalQuantityForActivitySummary(a1);
  v2 = [v1 _isZero];

  return v2 ^ 1u;
}

void FISaveGoalsForNewActivityMoveMode(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = MEMORY[0x277CBEB18];
  v27 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v26 = a2;
  v28 = [v13 array];
  if (a1 == 2)
  {
    [MEMORY[0x277CCD720] moveMinuteGoal];
  }

  else
  {
    [MEMORY[0x277CCD720] calorieGoal];
  }
  v18 = ;
  v19 = [MEMORY[0x277CCD800] quantitySampleWithType:v18 quantity:v17 startDate:v14 endDate:v14];

  [v28 addObject:v19];
  v20 = MEMORY[0x277CCD800];
  v21 = [MEMORY[0x277CCD720] exerciseGoal];
  v22 = [v20 quantitySampleWithType:v21 quantity:v16 startDate:v14 endDate:v14];

  [v28 addObject:v22];
  v23 = MEMORY[0x277CCD800];
  v24 = [MEMORY[0x277CCD720] standGoal];
  v25 = [v23 quantitySampleWithType:v24 quantity:v15 startDate:v14 endDate:v14];

  [v28 addObject:v25];
  [v26 saveObjects:v28 withCompletion:v27];
}

id FIActivityMoveModeChangeSampleForDateComponents(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD720];
  v4 = *MEMORY[0x277CCDEB8];
  v5 = a2;
  v6 = [v3 categoryTypeForIdentifier:v4];
  v7 = _HKCacheIndexFromDateComponents();

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = [MEMORY[0x277CCD0B0] categorySampleWithType:v6 value:a1 startDate:v8 endDate:v8];

  return v9;
}

__CFString *NLHKActivityMoveModeString(uint64_t a1)
{
  v1 = @"HKActivityMoveModeNotSet";
  if (a1 == 1)
  {
    v1 = @"HKActivityMoveModeActiveEnergy";
  }

  if (a1 == 2)
  {
    return @"HKActivityMoveModeAppleMoveTime";
  }

  else
  {
    return v1;
  }
}

id FIDistanceQuantityTypeIdentifierForActivityType(uint64_t a1)
{
  v1 = MEMORY[0x277CCCB38];
  v2 = MEMORY[0x277CCCB10];
  if (a1 != 13)
  {
    v2 = MEMORY[0x277CCCB40];
  }

  if (a1 != 46)
  {
    v1 = v2;
  }

  return *v1;
}

uint64_t FIQuantityTypeForActivityType(uint64_t a1)
{
  v1 = MEMORY[0x277CCCB38];
  v2 = MEMORY[0x277CCCB10];
  if (a1 != 13)
  {
    v2 = MEMORY[0x277CCCB40];
  }

  if (a1 != 46)
  {
    v1 = v2;
  }

  return [MEMORY[0x277CCD830] quantityTypeForIdentifier:*v1];
}

uint64_t PredictedWorkout.thirdPartyBundleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PredictedWorkout.workoutGoalValue.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

void __swiftcall PredictedWorkout.init(workout:)(Fitness::PredictedWorkout_optional *__return_ptr retstr, HKWorkout workout)
{
  v4 = sub_24B3AB5E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [(objc_class *)workout.super.super.super.isa workoutActivityType];
  v9 = sub_24B391744();
  HealthKitAppEnum.init(value:)(&v36, &type metadata for WorkoutActivityType, v9, &v37);
  v10 = v37;
  if (v37 == 80)
  {
    v11 = sub_24B3986B0();
    (*(v5 + 16))(v8, v11, v4);
    v12 = sub_24B3AB5C4();
    v13 = sub_24B3AB7B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24B35E000, v12, v13, "PredictedWorkout: Could not create predicted workout: missing activity type", v14, 2u);
      MEMORY[0x24C23F390](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    *&retstr->value.workoutActivityType = 0;
    retstr->value.thirdPartyBundleID.value._countAndFlagsBits = 0;
    *&retstr->value.thirdPartyBundleID.value._object = xmmword_24B3AF260;
    retstr->value.workoutGoalValue.is_nil = 0;
  }

  else
  {
    IsIndoor = _HKWorkoutIsIndoor(workout.super.super.super.isa);
    v36 = [(objc_class *)workout.super.super.super.isa _goalType];
    v16 = sub_24B391AF0();
    HealthKitAppEnum.init(value:)(&v36, &type metadata for WorkoutGoalType, v16, &v37);
    if (v37 == 4)
    {
      v17 = 0;
    }

    else
    {
      v17 = v37;
    }

    v18 = [(objc_class *)workout.super.super.super.isa _goal];
    v19 = v18;
    if (v18)
    {
      [v18 _value];
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    HKWorkout.swimmingLocation.getter(&v37);
    v22 = v37;
    v23 = [(objc_class *)workout.super.super.super.isa sourceRevision];
    v24 = [v23 source];

    if ([v24 _hasFirstPartyBundleID])
    {

      v25 = 0;
      v26 = 0;
    }

    else
    {
      v27 = [v24 bundleIdentifier];
      v35 = v10;
      v28 = v22;
      v29 = v17;
      v30 = IsIndoor;
      v31 = v27;
      v25 = sub_24B3AB6A4();
      v26 = v32;

      IsIndoor = v30;
      v17 = v29;
      v22 = v28;
      v10 = v35;
    }

    v33 = 256;
    if (!IsIndoor)
    {
      v33 = 0;
    }

    *&retstr->value.workoutActivityType = v33 | v10 | (v17 << 16) | (v22 << 24);
    retstr->value.thirdPartyBundleID.value._countAndFlagsBits = v25;
    retstr->value.thirdPartyBundleID.value._object = v26;
    retstr->value.workoutGoalValue.value = v21;
    retstr->value.workoutGoalValue.is_nil = v19 == 0;
  }
}

uint64_t HKWorkout.activityType.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = [v1 workoutActivityType];
  v3 = sub_24B391744();
  return HealthKitAppEnum.init(value:)(&v5, &type metadata for WorkoutActivityType, v3, a1);
}

uint64_t HKWorkout.workoutGoalType.getter@<X0>(_BYTE *a1@<X8>)
{
  v6 = [v1 _goalType];
  v3 = sub_24B391AF0();
  result = HealthKitAppEnum.init(value:)(&v6, &type metadata for WorkoutGoalType, v3, &v7);
  v5 = v7;
  if (v7 == 4)
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

id HKWorkout.workoutGoalValue.getter()
{
  result = [v0 _goal];
  v2 = result;
  if (result)
  {
    [result _value];
    v4 = v3;

    return v4;
  }

  return result;
}

void HKWorkout.swimmingLocation.getter(_BYTE *a1@<X8>)
{
  v3 = sub_24B3AB5E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 metadata];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = sub_24B3AB634();

  v11 = *MEMORY[0x277CCC510];
  v12 = sub_24B3AB6A4();
  if (!*(v10 + 16))
  {

    goto LABEL_9;
  }

  v14 = sub_24B391B44(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_24B364144(*(v10 + 56) + 32 * v14, v26);

  sub_24B391BBC();
  if (swift_dynamicCast())
  {
    v17 = v25;
    v26[0] = [v25 integerValue];
    v18 = sub_24B391C08();
    HealthKitAppEnum.init(value:)(v26, &type metadata for SwimmingLocation, v18, &v25);

    v19 = v25;
    if (v25 == 3)
    {
      v19 = 0;
    }

    *a1 = v19;
    return;
  }

LABEL_10:
  v20 = sub_24B3986B0();
  (*(v4 + 16))(v7, v20, v3);
  v21 = sub_24B3AB5C4();
  v22 = sub_24B3AB7B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24B35E000, v21, v22, "Could not determine swimming location", v23, 2u);
    MEMORY[0x24C23F390](v23, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  *a1 = 0;
}

uint64_t HKWorkout.thirdPartyBundleID.getter()
{
  v1 = [v0 sourceRevision];
  v2 = [v1 source];

  if ([v2 _hasFirstPartyBundleID])
  {

    return 0;
  }

  else
  {
    v4 = [v2 bundleIdentifier];
    v5 = sub_24B3AB6A4();

    return v5;
  }
}

unint64_t sub_24B391744()
{
  result = qword_27EFE4EC0;
  if (!qword_27EFE4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4EC0);
  }

  return result;
}

void __swiftcall PredictedWorkout.init(workout:thirdPartyBundleID:)(Fitness::PredictedWorkout_optional *__return_ptr retstr, HKWorkout workout, Swift::String_optional thirdPartyBundleID)
{
  object = thirdPartyBundleID.value._object;
  countAndFlagsBits = thirdPartyBundleID.value._countAndFlagsBits;
  v7 = sub_24B3AB5E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [(objc_class *)workout.super.super.super.isa workoutActivityType];
  v12 = sub_24B391744();
  HealthKitAppEnum.init(value:)(&v26, &type metadata for WorkoutActivityType, v12, &v27);
  v13 = v27;
  if (v27 == 80)
  {

    v14 = sub_24B3986B0();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_24B3AB5C4();
    v16 = sub_24B3AB7B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24B35E000, v15, v16, "PredictedWorkout: Could not create predicted workout: missing activity type", v17, 2u);
      MEMORY[0x24C23F390](v17, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    *&retstr->value.workoutActivityType = 0;
    retstr->value.thirdPartyBundleID.value._countAndFlagsBits = 0;
    *&retstr->value.thirdPartyBundleID.value._object = xmmword_24B3AF260;
    retstr->value.workoutGoalValue.is_nil = 0;
  }

  else
  {
    IsIndoor = _HKWorkoutIsIndoor(workout.super.super.super.isa);
    v26 = [(objc_class *)workout.super.super.super.isa _goalType];
    v19 = sub_24B391AF0();
    HealthKitAppEnum.init(value:)(&v26, &type metadata for WorkoutGoalType, v19, &v27);
    if (v27 == 4)
    {
      v20 = 0;
    }

    else
    {
      v20 = v27;
    }

    v21 = [(objc_class *)workout.super.super.super.isa _goal];
    v22 = v21;
    if (v21)
    {
      [v21 _value];
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    HKWorkout.swimmingLocation.getter(&v27);

    v25 = 256;
    if (!IsIndoor)
    {
      v25 = 0;
    }

    *&retstr->value.workoutActivityType = v25 | v13 | (v20 << 16) | (v27 << 24);
    retstr->value.thirdPartyBundleID.value._countAndFlagsBits = countAndFlagsBits;
    retstr->value.thirdPartyBundleID.value._object = object;
    retstr->value.workoutGoalValue.value = v24;
    retstr->value.workoutGoalValue.is_nil = v22 == 0;
  }
}

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

unint64_t sub_24B391AF0()
{
  result = qword_27EFE4EC8;
  if (!qword_27EFE4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4EC8);
  }

  return result;
}

unint64_t sub_24B391B44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24B3AB9E4();
  sub_24B3AB6C4();
  v6 = sub_24B3ABA04();

  return sub_24B391C5C(a1, a2, v6);
}

unint64_t sub_24B391BBC()
{
  result = qword_27EFE4ED0;
  if (!qword_27EFE4ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFE4ED0);
  }

  return result;
}

unint64_t sub_24B391C08()
{
  result = qword_27EFE4ED8;
  if (!qword_27EFE4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4ED8);
  }

  return result;
}

unint64_t sub_24B391C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24B3AB984())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s7Fitness16PredictedWorkoutV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 2);
  v11 = *(a2 + 1);
  v17 = *a1;
  v16 = *a2;
  sub_24B391FA4();
  sub_24B3AB6F4();
  sub_24B3AB6F4();
  v9 = 0;
  if (v15 == v14 && ((v2 ^ v5) & 1) == 0)
  {
    sub_24B391FF8();
    sub_24B3AB6F4();
    sub_24B3AB6F4();
    if (v15 == v14)
    {
      sub_24B39204C();
      sub_24B3AB6F4();
      sub_24B3AB6F4();
      v9 = (v13 | v8) == 0;
      if (v13 && v8)
      {
        if (v12 == v11 && v13 == v8)
        {
          v9 = 1;
        }

        else
        {
          v9 = sub_24B3AB984();
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B391EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B391F3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_24B391FA4()
{
  result = qword_27EFE4EE0;
  if (!qword_27EFE4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4EE0);
  }

  return result;
}

unint64_t sub_24B391FF8()
{
  result = qword_27EFE4EE8;
  if (!qword_27EFE4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4EE8);
  }

  return result;
}

unint64_t sub_24B39204C()
{
  result = qword_27EFE4EF0;
  if (!qword_27EFE4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4EF0);
  }

  return result;
}

Fitness::ActivityMonitorAppURLBuilder::Route_optional __swiftcall ActivityMonitorAppURLBuilder.Route.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24B3AB954();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ActivityMonitorAppURLBuilder.Route.rawValue.getter()
{
  result = 0x736E6F6973736573;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x7553796C6B656577;
      break;
    case 3:
      result = 0x676E6972616873;
      break;
    case 4:
      result = 0x676E696E69617274;
      break;
    case 5:
      result = 0x736472617761;
      break;
    case 6:
      result = 0x6F4765676E616863;
      break;
    case 7:
      result = 0x654D65676E616863;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x776569767265766FLL;
      break;
    case 0xA:
      result = 0x73676E6972;
      break;
    case 0xB:
      result = 0x676E695265766F6DLL;
      break;
    case 0xC:
      result = 0x6573696372657865;
      break;
    case 0xD:
      result = 0x6E6952646E617473;
      break;
    case 0xE:
      result = 0x7375615074696465;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B3922C0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ActivityMonitorAppURLBuilder.Route.rawValue.getter();
  v4 = v3;
  if (v2 == ActivityMonitorAppURLBuilder.Route.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24B3AB984();
  }

  return v7 & 1;
}

uint64_t sub_24B39235C()
{
  v1 = *v0;
  sub_24B3AB9E4();
  ActivityMonitorAppURLBuilder.Route.rawValue.getter();
  sub_24B3AB6C4();

  return sub_24B3ABA04();
}

uint64_t sub_24B3923C4()
{
  v2 = *v0;
  ActivityMonitorAppURLBuilder.Route.rawValue.getter();
  sub_24B3AB6C4();
}

uint64_t sub_24B392428()
{
  v1 = *v0;
  sub_24B3AB9E4();
  ActivityMonitorAppURLBuilder.Route.rawValue.getter();
  sub_24B3AB6C4();

  return sub_24B3ABA04();
}

unint64_t sub_24B392498@<X0>(unint64_t *a1@<X8>)
{
  result = ActivityMonitorAppURLBuilder.Route.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ActivityMonitorAppURLBuilder.url(route:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4EF8, &qword_24B3AF300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-v6];
  v8 = sub_24B3AB394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  sub_24B3AB384();
  sub_24B3AB374();
  v14 = 0xE000000000000000;
  v25 = 0;
  v26 = 0xE000000000000000;
  if (v13 == 15)
  {
    v15 = 0;
  }

  else
  {
    v24 = v13;
    v15 = ActivityMonitorAppURLBuilder.Route.rawValue.getter();
    v14 = v16;
  }

  MEMORY[0x24C23E510](v15, v14);

  MEMORY[0x24C23E1A0](v25, v26);
  sub_24B3AB354();
  v17 = sub_24B3AB464();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_24B3927E8(v7);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_24B3AB884();

    v25 = 0xD00000000000001FLL;
    v26 = 0x800000024B3B73E0;
    if (v13 == 15)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v24 = v13;
      v21 = ActivityMonitorAppURLBuilder.Route.rawValue.getter();
      v20 = v22;
    }

    MEMORY[0x24C23E510](v21, v20);

    result = sub_24B3AB914();
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return (*(v18 + 32))(a2, v7, v17);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B3927E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4EF8, &qword_24B3AF300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B392854()
{
  result = qword_27EFE4F00;
  if (!qword_27EFE4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4F00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityMonitorAppURLBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ActivityMonitorAppURLBuilder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityMonitorAppURLBuilder.Route(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityMonitorAppURLBuilder.Route(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B392AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F70, qword_24B3AF568);
  v0 = *(type metadata accessor for PauseRingsPeriod() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B3AF430;
  v4 = v3 + v2;
  v5 = sub_24B3AB4C4();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 3, v5);
  v6(v4 + v1, 2, 3, v5);
  v6(v4 + 2 * v1, 3, 3, v5);
  sub_24B3AB4B4();
  result = (v6)(v4 + 3 * v1, 0, 3, v5);
  qword_27EFE57B8 = v3;
  return result;
}

uint64_t *sub_24B392C70()
{
  if (qword_27EFE57B0 != -1)
  {
    swift_once();
  }

  return &qword_27EFE57B8;
}

uint64_t static PauseRingsPeriod.allCases.getter()
{
  if (qword_27EFE57B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PauseRingsPeriod.allCases.setter(uint64_t a1)
{
  if (qword_27EFE57B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EFE57B8 = a1;
}

uint64_t (*static PauseRingsPeriod.allCases.modify())()
{
  if (qword_27EFE57B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24B392E44@<X0>(void *a1@<X8>)
{
  if (qword_27EFE57B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27EFE57B8;
}

uint64_t sub_24B392EC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27EFE57B0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EFE57B8 = v1;
}

uint64_t PauseRingsPeriod.localizedTitleForCurrentDate.getter()
{
  v1 = sub_24B3AB5A4();
  v66 = *(v1 - 8);
  v67 = v1;
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v1);
  v63 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B3AB584();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B3AB404();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F08, &qword_24B3AF450);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - v15;
  v17 = sub_24B3AB4C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = &v57 - v23;
  v24 = type metadata accessor for PauseRingsPeriod();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B39384C(v0, v27);
  v28 = v18;
  v29 = *(v18 + 48);
  v30 = v29(v27, 3, v17);
  if (v30 <= 1)
  {
    if (v30)
    {
      v41 = sub_24B3AB694();
      v16 = FILocalizedStringForKey(v41);

      if (v16)
      {
        v32 = sub_24B3AB6A4();

        return v32;
      }
    }

    else
    {
      v31 = sub_24B3AB694();
      v16 = FILocalizedStringForKey(v31);

      if (v16)
      {
        v32 = sub_24B3AB6A4();

        sub_24B3938B0(v27);
        return v32;
      }

      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v30 != 2)
  {
    sub_24B3AB514();
    v42 = v63;
    sub_24B3AB594();
    sub_24B3AB4A4();
    v43 = v60;
    sub_24B3AB4D4();
    (*(v18 + 8))(v22, v17);
    (*(v66 + 8))(v42, v67);
    (*(v64 + 8))(v7, v65);
    v44 = sub_24B3AB3D4();
    if ((v45 & 1) == 0)
    {
      v46 = v44;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_24B3AB884();

      v69 = 0xD000000000000022;
      v70 = 0x800000024B3B7480;
      v68 = v46;
      v47 = sub_24B3AB974();
      MEMORY[0x24C23E510](v47);

      v48 = v69;
      v16 = v70;
      v49 = sub_24B3AB694();
      v50 = FILocalizedStringForKey(v49);

      if (!v50)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32 = sub_24B3AB6A4();
      v52 = v51;

      if (v48 == v32 && v16 == v52)
      {
      }

      else
      {
        v53 = sub_24B3AB984();

        if ((v53 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    v54 = sub_24B3AB694();
    v16 = FILocalizedStringForKey(v54);

    if (!v16)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v32 = sub_24B3AB6A4();

LABEL_21:
    (*(v61 + 8))(v43, v62);
    return v32;
  }

  PauseRingsPeriod.date()(v16);
  if (v29(v16, 1, v17) != 1)
  {
    v33 = v58;
    (*(v28 + 32))(v58, v16, v17);
    sub_24B3AB514();
    v34 = v63;
    sub_24B3AB594();
    v35 = v59;
    sub_24B3AB4D4();
    (*(v66 + 8))(v34, v67);
    (*(v64 + 8))(v7, v65);
    v36 = sub_24B3AB3E4();
    if (v37)
    {
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_24B3AB884();

      v69 = 0xD00000000000002BLL;
      v70 = 0x800000024B3B7500;
      sub_24B3954F4(&qword_27EFE4F10, MEMORY[0x277CC9578]);
      v56 = sub_24B3AB974();
      MEMORY[0x24C23E510](v56);

      goto LABEL_30;
    }

    v38 = v36;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_24B3AB884();

    v69 = 0xD000000000000025;
    v70 = 0x800000024B3B7530;
    v68 = v38;
    v39 = sub_24B3AB974();
    MEMORY[0x24C23E510](v39);

    v40 = sub_24B3AB694();

    v16 = FILocalizedStringForKey(v40);

    if (v16)
    {
      v32 = sub_24B3AB6A4();

      (*(v61 + 8))(v35, v62);
      (*(v28 + 8))(v33, v17);
      return v32;
    }

    goto LABEL_25;
  }

LABEL_28:
  sub_24B364D34(v16, &qword_27EFE4F08, &qword_24B3AF450);
LABEL_30:
  result = sub_24B3AB914();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PauseRingsPeriod()
{
  result = qword_27EFE5940;
  if (!qword_27EFE5940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B39384C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PauseRingsPeriod();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3938B0(uint64_t a1)
{
  v2 = type metadata accessor for PauseRingsPeriod();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PauseRingsPeriod.date()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v133 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F18, &qword_24B3AF458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v128 = &v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F20, &unk_24B3AF460);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = &v116 - v8;
  v9 = sub_24B3AB404();
  v131 = *(v9 - 8);
  v132 = v9;
  v10 = *(v131 + 8);
  MEMORY[0x28223BE20](v9);
  v129 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F08, &qword_24B3AF450);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v125 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v116 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v124 = &v116 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v116 - v21;
  v23 = sub_24B3AB574();
  v134 = *(v23 - 8);
  v135 = v23;
  v24 = *(v134 + 64);
  MEMORY[0x28223BE20](v23);
  v130 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PauseRingsPeriod();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24B3AB4C4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 8);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v122 = &v116 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v126 = &v116 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v121 = &v116 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v123 = &v116 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v116 - v44;
  v46 = sub_24B3AB584();
  v137 = *(v46 - 8);
  v138 = v46;
  v47 = *(v137 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v116 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B3AB564();
  v136 = v45;
  sub_24B3AB4B4();
  sub_24B39384C(v2, v29);
  v50 = *(v31 + 6);
  v51 = v50(v29, 3, v30);
  if (v51 <= 1)
  {
    if (v51)
    {
      v75 = v134;
      v74 = v135;
      v76 = v130;
      (*(v134 + 104))(v130, *MEMORY[0x277CC9968], v135);
      v77 = v136;
      sub_24B3AB554();
      (*(v75 + 8))(v76, v74);
      (*(v31 + 1))(v77, v30);
      return (*(v137 + 8))(v49, v138);
    }

    (*(v31 + 4))(v35, v29, v30);
    v53 = v134;
    v52 = v135;
    v54 = v130;
    (*(v134 + 104))(v130, *MEMORY[0x277CC9968], v135);
    sub_24B3AB554();
    (*(v53 + 8))(v54, v52);
    v55 = *(v31 + 1);
    v55(v35, v30);
    v56 = v136;
    v57 = v30;
LABEL_4:
    v55(v56, v57);
    return (*(v137 + 8))(v49, v138);
  }

  v119 = v30;
  v120 = v50;
  if (v51 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F28, &qword_24B3B01C0);
    v58 = v134;
    v59 = *(v134 + 72);
    v60 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_24B3AF440;
    v62 = v61 + v60;
    v63 = *(v58 + 104);
    v64 = v22;
    v65 = v135;
    (v63)(v62, *MEMORY[0x277CC9960], v135);
    v66 = *MEMORY[0x277CC9940];
    v125 = v63;
    v126 = (v58 + 104);
    (v63)(v62 + v59, v66, v65);
    sub_24B39505C(v61);
    swift_setDeallocating();
    v67 = v64;
    v68 = v119;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v69 = v129;
    v70 = v136;
    sub_24B3AB4F4();

    sub_24B3AB534();
    v72 = v131 + 8;
    v71 = *(v131 + 1);
    v71(v69, v132);
    v73 = v120;
    if (v120(v67, 1, v68) == 1)
    {
      (*(v31 + 1))(v70, v68);
LABEL_14:
      (*(v137 + 8))(v49, v138);
      sub_24B364D34(v67, &qword_27EFE4F08, &qword_24B3AF450);
      return (*(v31 + 7))(v133, 1, 1, v68);
    }

    v131 = v72;
    v96 = *(v31 + 4);
    v97 = v123;
    v122 = v31 + 32;
    v118 = v96;
    v96(v123, v67, v68);
    (*(v137 + 56))(v127, 1, 1, v138);
    v98 = sub_24B3AB5A4();
    (*(*(v98 - 8) + 56))(v128, 1, 1, v98);
    v99 = v97;
    v100 = v71;
    v101 = v129;
    sub_24B3AB3F4();
    v67 = v124;
    sub_24B3AB544();
    v100(v101, v132);
    if (v73(v67, 1, v68) == 1)
    {
      v102 = *(v31 + 1);
      v102(v99, v68);
      v102(v136, v68);
      goto LABEL_14;
    }

    v108 = v137;
    v109 = v121;
    v118(v121, v67, v68);
    v110 = v130;
    v111 = v135;
    (v125)(v130, *MEMORY[0x277CC9968], v135);
    sub_24B3AB554();
    (*(v134 + 8))(v110, v111);
    v112 = *(v31 + 1);
    v112(v109, v68);
    v112(v99, v68);
    v112(v136, v68);
    return (*(v108 + 8))(v49, v138);
  }

  else
  {
    v123 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F28, &qword_24B3B01C0);
    v79 = v134;
    v80 = *(v134 + 72);
    v81 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_24B3AF440;
    v83 = v82 + v81;
    v84 = v49;
    v85 = *(v79 + 104);
    v86 = v129;
    v87 = v135;
    v85(v83, *MEMORY[0x277CC9988], v135);
    v88 = *MEMORY[0x277CC9998];
    v121 = (v79 + 104);
    v118 = v85;
    v85((v83 + v80), v88, v87);
    sub_24B39505C(v82);
    swift_setDeallocating();
    v89 = v86;
    v90 = v119;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v91 = v136;
    sub_24B3AB4F4();

    v124 = v84;
    sub_24B3AB534();
    v92 = *(v131 + 1);
    v92(v89, v132);
    v93 = v120;
    if (v120(v18, 1, v90) == 1)
    {
      v95 = v123;
      v94 = v124;
      (*(v123 + 1))(v91, v90);
    }

    else
    {
      v95 = v123;
      v103 = *(v123 + 4);
      v131 = v123 + 32;
      v117 = v103;
      v103(v126, v18, v90);
      (*(v137 + 56))(v127, 1, 1, v138);
      v104 = sub_24B3AB5A4();
      (*(*(v104 - 8) + 56))(v128, 1, 1, v104);
      v105 = v126;
      sub_24B3AB3F4();
      v106 = v125;
      sub_24B3AB544();
      v92(v89, v132);
      if (v93(v106, 1, v90) != 1)
      {
        v113 = v122;
        v117(v122, v106, v90);
        v114 = v130;
        v115 = v135;
        v118(v130, *MEMORY[0x277CC9968], v135);
        v49 = v124;
        sub_24B3AB554();
        (*(v134 + 8))(v114, v115);
        v55 = *(v95 + 1);
        v55(v113, v90);
        v55(v105, v90);
        v56 = v136;
        v57 = v90;
        goto LABEL_4;
      }

      v94 = v124;
      v107 = *(v95 + 1);
      v107(v105, v90);
      v107(v136, v90);
      v18 = v106;
    }

    (*(v137 + 8))(v94, v138);
    sub_24B364D34(v18, &qword_27EFE4F08, &qword_24B3AF450);
    return (*(v95 + 7))(v133, 1, 1, v90);
  }
}

uint64_t PauseRingsPeriod.hash(into:)()
{
  v1 = sub_24B3AB4C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PauseRingsPeriod();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B39384C(v0, v9);
  v10 = (*(v2 + 48))(v9, 3, v1);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x24C23E830](3);
      sub_24B3954F4(&qword_27EFE4F30, MEMORY[0x277CC9578]);
      sub_24B3AB664();
      return (*(v2 + 8))(v5, v1);
    }

    v12 = 0;
  }

  return MEMORY[0x24C23E830](v12);
}

uint64_t PauseRingsPeriod.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B3AB4C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PauseRingsPeriod();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B3AB9E4();
  sub_24B39384C(v1, v10);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 0;
LABEL_8:
    MEMORY[0x24C23E830](v12);
    return sub_24B3ABA04();
  }

  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x24C23E830](3);
  sub_24B3954F4(&qword_27EFE4F30, MEMORY[0x277CC9578]);
  sub_24B3AB664();
  (*(v3 + 8))(v6, v2);
  return sub_24B3ABA04();
}

uint64_t sub_24B394B80(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_24B3AB4C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B3AB9E4();
  sub_24B39384C(v4, v13);
  v14 = (*(v6 + 48))(v13, 3, v5);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_8;
  }

  if (v14)
  {
    v15 = 0;
LABEL_8:
    MEMORY[0x24C23E830](v15);
    return sub_24B3ABA04();
  }

  (*(v6 + 32))(v10, v13, v5);
  MEMORY[0x24C23E830](3);
  sub_24B3954F4(&qword_27EFE4F30, MEMORY[0x277CC9578]);
  sub_24B3AB664();
  (*(v6 + 8))(v10, v5);
  return sub_24B3ABA04();
}

uint64_t _s7Fitness16PauseRingsPeriodO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B3AB4C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PauseRingsPeriod();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F50, &qword_24B3AF558);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_24B39384C(a1, &v24 - v16);
  sub_24B39384C(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v17[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v17[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_24B364D34(v17, &qword_27EFE4F50, &qword_24B3AF558);
    v21 = 0;
    return v21 & 1;
  }

  if (!v20)
  {
    sub_24B39384C(v17, v12);
    if (!v19(&v17[v18], 3, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_24B3AB484();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_24B3938B0(v17);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v19(&v17[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_24B3938B0(v17);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_24B39505C(uint64_t a1)
{
  v2 = sub_24B3AB574();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F58, &qword_24B3AF560);
    v10 = sub_24B3AB864();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_24B3954F4(&qword_27EFE4F60, MEMORY[0x277CC99D0]);
      v18 = sub_24B3AB654();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_24B3954F4(&qword_27EFE4F68, MEMORY[0x277CC99D0]);
          v25 = sub_24B3AB674();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_24B395380()
{
  result = qword_27EFE4F38;
  if (!qword_27EFE4F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4F40, &qword_24B3AF470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4F38);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B39549C()
{
  v0 = sub_24B3AB4C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B3954F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HealthKitAppEnum.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24B3AB834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  (*(a3 + 24))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24B3AB644();

  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  v14 = *(a2 - 8);
  if ((*(v14 + 48))(v12, 1, a2) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a4, v12, a2);
    v15 = 0;
  }

  return (*(v14 + 56))(a4, v15, 1, a2);
}

uint64_t HealthKitAppEnum<>.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24B3AB834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = a1;
    HealthKitAppEnum.init(value:)(&v17, a2, a3, &v16 - v12);
    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v13, 1, a2))
    {
      (*(v9 + 8))(v13, v8);
      v15 = 1;
    }

    else
    {
      (*(v14 + 32))(a4, v13, a2);
      v15 = 0;
    }

    return (*(v14 + 56))(a4, v15, 1, a2);
  }

  return result;
}

{
  v8 = sub_24B3AB834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v17 = a1;
  HealthKitAppEnum.init(value:)(&v17, a2, a3, &v16 - v11);
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v12, 1, a2))
  {
    (*(v9 + 8))(v12, v8);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(a4, v12, a2);
    v14 = 0;
  }

  return (*(v13 + 56))(a4, v14, 1, a2);
}

uint64_t sub_24B395AA0()
{
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](23);
  return sub_24B3ABA04();
}

uint64_t sub_24B395B0C()
{
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](23);
  return sub_24B3ABA04();
}

uint64_t sub_24B395BB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_24B3AB1B4();
  *a2 = v5;
  return result;
}

uint64_t sub_24B395BF4(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_24B3AB1C4();
}

uint64_t PredictedWorkoutIntent.workoutActivityType.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_24B3AB1C4();
}

uint64_t (*PredictedWorkoutIntent.workoutActivityType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_24B3AB1A4();
  return sub_24B39C624;
}

uint64_t sub_24B395D50()
{
  v22 = sub_24B3AB2E4();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F78, &qword_24B3AF5C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_24B3AB434();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F88, &qword_24B3AF5D0);
  sub_24B3AB424();
  (*(v16 + 56))(v14, 1, 1, v15);
  v23 = 33;
  v18 = sub_24B3AB194();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v22);
  sub_24B396070();
  sub_24B3AB894();
  sub_24B3960C4();
  return sub_24B3AB1E4();
}

unint64_t sub_24B396070()
{
  result = qword_27EFE4F90;
  if (!qword_27EFE4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4F90);
  }

  return result;
}

unint64_t sub_24B3960C4()
{
  result = qword_27EFE4F98;
  if (!qword_27EFE4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4F98);
  }

  return result;
}

uint64_t PredictedWorkoutIntent.workoutActivityIsIndoor.getter()
{
  v1 = *(v0 + 8);
  sub_24B3AB1B4();
  return v3;
}

uint64_t sub_24B396170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_24B3AB1B4();
  *a2 = v5;
  return result;
}

uint64_t sub_24B3961AC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_24B3AB1C4();
}

uint64_t (*PredictedWorkoutIntent.workoutActivityIsIndoor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_24B3AB1A4();
  return sub_24B39C624;
}

uint64_t sub_24B396304()
{
  v0 = sub_24B3AB2E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F78, &qword_24B3AF5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FA0, &qword_24B3AF5D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23[-v15];
  v17 = sub_24B3AB434();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FA8, &qword_24B3AF5E0);
  sub_24B3AB424();
  (*(v18 + 56))(v16, 1, 1, v17);
  v23[15] = 0;
  v20 = sub_24B3AB764();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = sub_24B3AB194();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  return sub_24B3AB204();
}

uint64_t sub_24B396684@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_24B3AB1B4();
  *a2 = v5;
  return result;
}

uint64_t sub_24B3966C0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_24B3AB1C4();
}

uint64_t PredictedWorkoutIntent.workoutGoalType.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_24B3AB1C4();
}

uint64_t (*PredictedWorkoutIntent.workoutGoalType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_24B3AB1A4();
  return sub_24B39681C;
}

uint64_t sub_24B396820()
{
  v22 = sub_24B3AB2E4();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F78, &qword_24B3AF5C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_24B3AB434();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FB0, &qword_24B3AF5E8);
  sub_24B3AB424();
  (*(v16 + 56))(v14, 1, 1, v15);
  v23 = 0;
  v18 = sub_24B3AB194();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v22);
  sub_24B396B3C();
  sub_24B3AB894();
  sub_24B396B90();
  return sub_24B3AB1E4();
}

unint64_t sub_24B396B3C()
{
  result = qword_27EFE4FB8;
  if (!qword_27EFE4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4FB8);
  }

  return result;
}

unint64_t sub_24B396B90()
{
  result = qword_27EFE4FC0;
  if (!qword_27EFE4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4FC0);
  }

  return result;
}

double PredictedWorkoutIntent.workoutGoalValue.getter()
{
  v1 = *(v0 + 24);
  sub_24B3AB1B4();
  return v3;
}

double sub_24B396C3C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_24B3AB1B4();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24B396C78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_24B3AB1C4();
}

uint64_t (*PredictedWorkoutIntent.workoutGoalValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_24B3AB1A4();
  return sub_24B39C624;
}

uint64_t sub_24B396DD0()
{
  v22 = sub_24B3AB2E4();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FC8, &qword_24B3AF5F0);
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F78, &qword_24B3AF5C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_24B3AB434();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FD0, &qword_24B3AF5F8);
  sub_24B3AB424();
  (*(v17 + 56))(v15, 1, 1, v16);
  v23 = 0;
  v24 = 0;
  v19 = sub_24B3AB194();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  (*(v4 + 104))(v7, *MEMORY[0x277CB9ED0], v21);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v22);
  return sub_24B3AB214();
}

uint64_t sub_24B39717C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_24B3AB1B4();
  *a2 = v5;
  return result;
}

uint64_t sub_24B3971B8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_24B3AB1C4();
}

uint64_t PredictedWorkoutIntent.swimmingLocation.setter(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return sub_24B3AB1C4();
}

uint64_t (*PredictedWorkoutIntent.swimmingLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_24B3AB1A4();
  return sub_24B39C624;
}

uint64_t sub_24B397314()
{
  v22 = sub_24B3AB2E4();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F78, &qword_24B3AF5C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_24B3AB434();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FD8, &qword_24B3AF600);
  sub_24B3AB424();
  (*(v16 + 56))(v14, 1, 1, v15);
  v23 = 0;
  v18 = sub_24B3AB194();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v22);
  sub_24B397630();
  sub_24B3AB894();
  sub_24B397684();
  return sub_24B3AB1E4();
}

unint64_t sub_24B397630()
{
  result = qword_27EFE4FE0;
  if (!qword_27EFE4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4FE0);
  }

  return result;
}

unint64_t sub_24B397684()
{
  result = qword_27EFE4FE8;
  if (!qword_27EFE4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE4FE8);
  }

  return result;
}