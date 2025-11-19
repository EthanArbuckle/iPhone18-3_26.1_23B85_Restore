void *sub_2486F39E0()
{
  v1 = v0;
  v2 = 0x5F73746E657665;
  v35 = MEMORY[0x277D84F90];
  sub_2486DA320(0, 2, 0);
  v3 = v35;
  v4 = dword_285B23600;
  v39 = sub_2487314E0();
  v41 = v5;
  sub_2486F4428();
  sub_248731370();
  v6 = 0xE700000000000000;
  MEMORY[0x24C1D70A0](v39, v41);

  v7 = 0x5F73746E657665;
  v8 = 0xE700000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2486F447C;
  *(v10 + 24) = v9;
  v12 = *(v35 + 16);
  v11 = *(v35 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    *(v3 + 16) = v13;
    v14 = v3 + 40 * v12;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = sub_2486F4488;
    *(v14 + 56) = v10;
    v8 = 5;
    *(v14 + 64) = 5;
    v15 = dword_285B23604;
    v40 = sub_2487314E0();
    v42 = v16;
    v13 = MEMORY[0x277D837D0];
    sub_248731370();
    v38 = v6;
    MEMORY[0x24C1D70A0](v40, v42);

    v6 = v2;
    v17 = swift_allocObject();
    v34 = v1;
    *(v17 + 16) = v1;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_2486F447C;
    *(v18 + 24) = v17;
    v35 = v3;
    v12 = *(v3 + 16);
    v19 = *(v3 + 24);
    if (v12 >= v19 >> 1)
    {
      v33 = v18;
      sub_2486DA320((v19 > 1), v12 + 1, 1);
      v18 = v33;
      v3 = v35;
    }

    *(v3 + 16) = v12 + 1;
    v20 = v3 + 40 * v12;
    *(v20 + 32) = v2;
    *(v20 + 40) = v38;
    *(v20 + 48) = sub_2486F4488;
    *(v20 + 56) = v18;
    *(v20 + 64) = 5;
    sub_2486C3A88(v3);
    v21 = sub_2487314D0();
    v22 = *(v21 + 16);
    if (!v22)
    {
      break;
    }

    v36 = MEMORY[0x277D84F90];
    v10 = sub_2486DA320(0, v22, 0);
    v2 = 0;
    v7 = v36;
    while (1)
    {
      v11 = *(v21 + 16);
      if (v2 >= v11)
      {
        break;
      }

      v23 = *(v21 + 4 * v2 + 32);
      sub_2487314C0();
      v35 = 0;
      sub_2486D8A18();
      sub_248731580();

      v24 = sub_248731050();
      v26 = v25;

      MEMORY[0x24C1D70A0](v24, v26);

      v6 = 0x5F73746E657665;
      v8 = 0xE700000000000000;
      v27 = swift_allocObject();
      *(v27 + 16) = v34;
      *(v27 + 24) = v23;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_2486F4490;
      *(v10 + 24) = v27;
      v37 = v7;
      v12 = *(v7 + 16);
      v28 = *(v7 + 24);
      v1 = v12 + 1;
      if (v12 >= v28 >> 1)
      {
        v30 = v10;
        sub_2486DA320((v28 > 1), v12 + 1, 1);
        v10 = v30;
        v7 = v37;
      }

      ++v2;
      *(v7 + 16) = v1;
      v29 = v7 + 40 * v12;
      *(v29 + 32) = 0x5F73746E657665;
      *(v29 + 40) = 0xE700000000000000;
      *(v29 + 48) = sub_2486F5068;
      *(v29 + 56) = v10;
      *(v29 + 64) = 5;
      if (v22 == v2)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    v32 = v10;
    sub_2486DA320((v11 > 1), v13, 1);
    v10 = v32;
    v3 = v35;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_12:
  sub_2486C3A88(v7);
  return &unk_285B23608;
}

uint64_t sub_2486F3F14(uint64_t a1)
{
  sub_2486C5B68(a1, v8);
  type metadata accessor for UnifiedSiriTurnBase();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v7 + 16);
  sub_248730B80();
  v2 = *(v7 + 16);
  sub_248730B60();
  v3 = *(v7 + 16);
  sub_248730BC0();
  v4 = sub_248731280();

  v5 = sub_2486F4ADC(v4);

  return v5;
}

uint64_t sub_2486F4018(void *a1, uint64_t (*a2)(uint64_t *))
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v8[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v4, v3);
  v6 = a2(v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_2486F40BC(uint64_t a1)
{
  sub_2486C5B68(a1, v8);
  type metadata accessor for UnifiedSiriTurnBase();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (sub_2487314B0())
  {
    v1 = *(v7 + 16);
    sub_248730B90();
    v2 = *(v7 + 16);
    sub_248730B60();
    v3 = *(v7 + 16);
    sub_248730BC0();
    v4 = sub_248731280();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v6 = sub_2486F4ADC(v4);

  return v6;
}

void (*sub_2486F41DC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2486F4790(v6, a2, a3);
  return sub_2486F4264;
}

void sub_2486F4264(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t UnifiedSiriTurnBase.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime;
  v3 = sub_248730970();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_2486E1660(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime);
  return v0;
}

uint64_t UnifiedSiriTurnBase.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime;
  v3 = sub_248730970();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_2486E1660(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_2486F4428()
{
  result = qword_27EEA63E8;
  if (!qword_27EEA63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA63E8);
  }

  return result;
}

uint64_t sub_2486F447C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2486F3F14(a1);
}

uint64_t sub_2486F4490(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2486F40BC(a1);
}

uint64_t type metadata accessor for UnifiedSiriTurnBase()
{
  result = qword_27EEA63F0;
  if (!qword_27EEA63F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2486F44F0()
{
  v0 = sub_248730970();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2486F4738();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2486F4738()
{
  if (!qword_27EEA6400)
  {
    sub_248730970();
    v0 = sub_248731550();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEA6400);
    }
  }
}

void (*sub_2486F4790(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2486F4AA8(v8);
  v8[9] = sub_2486F489C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2486F483C;
}

void sub_2486F483C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2486F489C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2486C94CC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2486E6E3C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2486E58E8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2486C94CC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2487318B0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_2486F49F4;
}

void sub_2486F49F4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_2486E877C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_2486F5014(*(v7 + 48) + 16 * v6);
    sub_2486EBF84(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_2486F4AA8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2486F4AD0;
}

uint64_t sub_2486F4ADC(unint64_t a1)
{
  v65[5] = *MEMORY[0x277D85DE8];
  v2 = sub_248731030();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v55[1] = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2486D3FC0(MEMORY[0x277D84F90]);
  v64 = v6;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248731790())
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = off_278F52000;
    v57 = i;
    v58 = a1;
    v56 = a1 & 0xC000000000000001;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v12 = MEMORY[0x24C1D7600](v8, a1);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_40;
        }

        v12 = *(a1 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = sub_248730AD0();
      if (!v15)
      {
        __break(1u);
      }

      v6 = v15;
      v16 = [v15 v11[438]];

      if (v16)
      {
        v6 = [v16 payload];

        if (v6)
        {
          v17 = sub_2487308C0();
          v19 = v18;

          v6 = v13;
          v20 = sub_248730AD0();
          if (v20)
          {
            v21 = v20;
            v65[4] = &unk_285B31078;
            v22 = swift_dynamicCastObjCProtocolConditional();
            if (v22)
            {
              v63 = v19;
              v23 = v22;
              swift_getObjectType();
              v24 = [swift_getObjCClassFromMetadata() getInnerTypeStringByTag_];
              v25 = sub_248730FF0();
              v27 = v26;

              v28 = v64;
              if (!v64[2])
              {
                goto LABEL_21;
              }

              sub_2486C94CC(v25, v27);
              if ((v29 & 1) == 0)
              {
                v28 = v64;
LABEL_21:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v65[0] = v28;
                sub_2486EC848(MEMORY[0x277D84F90], v25, v27, isUniquelyReferenced_nonNull_native);

                v64 = v65[0];
              }

              v61 = sub_2487308B0();
              v31 = v17;
              v33 = v32;
              v34 = sub_2486F41DC(v65, v25, v27);
              v6 = v34;
              v36 = *v35;
              if (*v35)
              {
                v37 = v35;
                v59 = v31;
                v60 = v34;
                v38 = swift_isUniquelyReferenced_nonNull_native();
                *v37 = v36;
                if ((v38 & 1) == 0)
                {
                  v36 = sub_2486C44B4(0, *(v36 + 2) + 1, 1, v36);
                  *v37 = v36;
                }

                v40 = *(v36 + 2);
                v39 = *(v36 + 3);
                v6 = (v40 + 1);
                if (v40 >= v39 >> 1)
                {
                  v36 = sub_2486C44B4((v39 > 1), v40 + 1, 1, v36);
                  *v37 = v36;
                }

                a1 = v58;
                *(v36 + 2) = v6;
                v41 = &v36[16 * v40];
                v42 = v60;
                *(v41 + 4) = v61;
                *(v41 + 5) = v33;
                (v42)(v65, 0);

                sub_2486CC7FC(v59, v63);
              }

              else
              {

                (v6)(v65, 0);

                sub_2486CC7FC(v31, v63);

                a1 = v58;
              }

              v9 = v56;
              i = v57;
LABEL_30:
              v10 = v62;
              v11 = off_278F52000;
              goto LABEL_5;
            }
          }

          else
          {
          }

          sub_2486CC7FC(v17, v19);
          goto LABEL_30;
        }
      }

LABEL_5:
      ++v8;
      if (v14 == i)
      {
        v6 = v64;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_33:
  if (!v6[2])
  {
    goto LABEL_37;
  }

  v43 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  v44 = sub_248730F00();
  v65[0] = 0;
  v45 = [v43 dataWithJSONObject:v44 options:0 error:v65];

  v46 = v65[0];
  if (!v45)
  {
    v51 = v46;
    v52 = sub_2487307E0();

    swift_willThrow();
LABEL_37:
    v50 = 0;
    goto LABEL_38;
  }

  v47 = sub_2487308C0();
  v49 = v48;

  sub_248731020();
  v50 = sub_248731010();
  sub_2486CC7FC(v47, v49);
LABEL_38:

  v53 = *MEMORY[0x277D85DE8];
  return v50;
}

id SiriExecutionFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriExecutionFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriExecutionFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486F5138(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 slotValue];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v40 = 0;
    }

    v38 = v9;
    v39 = v11;
    v41 = v12;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000017, 0x8000000248739D70);
    swift_endAccess();
    v13 = [v5 intentName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248730FF0();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v40 = 0;
    }

    v38 = v15;
    v39 = v17;
    v41 = v18;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000018, 0x8000000248739D50);
    swift_endAccess();
    v19 = [v5 statusReason];
    if (v19)
    {
      v20 = v19;
      v21 = sub_248730FF0();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v40 = 0;
    }

    v25 = MEMORY[0x277D837D0];
    v38 = v21;
    v39 = v23;
    v41 = v24;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD00000000000001ALL, 0x8000000248739D90);
    swift_endAccess();
    v26 = [v5 appBundleID];
    if (v26)
    {
      v27 = v26;
      v28 = sub_248730FF0();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v40 = 0;
    }

    v38 = v28;
    v39 = v30;
    v41 = v31;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000019, 0x8000000248739D30);
    swift_endAccess();
    v32 = [v5 taskStep];
    type metadata accessor for BMSiriExecutionTaskStep(0);
    v41 = v33;
    LODWORD(v38) = v32;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000016, 0x8000000248739DB0);
    swift_endAccess();
    [v5 taskStep];
    v34 = BMSiriExecutionTaskStepAsString();
    v35 = sub_248730FF0();
    v37 = v36;

    v41 = v25;
    v38 = v35;
    v39 = v37;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD00000000000001ELL, 0x8000000248739DD0);
    swift_endAccess();
  }
}

id SiriExecutionFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriExecutionFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeaturizedItemType.hashValue.getter()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t sub_2486F55D4()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t sub_2486F5648()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

unint64_t sub_2486F5690()
{
  result = qword_27EEA6470;
  if (!qword_27EEA6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6470);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeaturizedItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeaturizedItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2486F5864(char *a1)
{
  v2 = sub_2487309B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v70 - v19;
  v21 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
  swift_beginAccess();
  v22 = *&a1[v21];
  if (v22 >> 62)
  {
    v28 = sub_248731790();
    v75 = v7;
    if (!v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v7;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {

    v24 = MEMORY[0x24C1D7600](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v24 = *(v22 + 32);
  }

  v25 = [v24 eventMetadata];

  if (v25)
  {
    v26 = [v25 requestId];

    if (v26)
    {
      sub_248731390();

      v27 = 0;
      goto LABEL_11;
    }
  }

LABEL_10:
  v27 = 1;
LABEL_11:
  (*(v3 + 56))(v20, v27, 1, v2);
  sub_2486C7B38(v20, v17);
  v22 = *(v3 + 48);
  v29 = (v22)(v17, 1, v2);
  v76 = v3;
  if (v29 == 1)
  {
    sub_2486C992C(v17);
    if (qword_28150EE60 == -1)
    {
LABEL_13:
      v30 = sub_248730DF0();
      __swift_project_value_buffer(v30, qword_28150F088);
      v31 = a1;
      v32 = sub_248730DD0();
      v33 = sub_2487313C0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v72 = v34;
        v74 = swift_slowAlloc();
        *&v77 = v74;
        *v34 = 136315138;
        LODWORD(v73) = v33;
        v35 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
        swift_beginAccess();
        v36 = v20;
        v37 = v13;
        v38 = v76;
        v39 = &v31[v35];
        v40 = v75;
        (*(v76 + 16))(v75, v39, v2);
        v41 = v22;
        v42 = sub_248730980();
        v44 = v43;
        v45 = v38;
        v13 = v37;
        v20 = v36;
        (*(v45 + 8))(v40, v2);
        v46 = v42;
        v22 = v41;
        v47 = sub_2486D3010(v46, v44, &v77);

        v48 = v72;
        *(v72 + 1) = v47;
        v49 = v48;
        _os_log_impl(&dword_2486BF000, v32, v73, "Failed to extract request ID for turn: %s", v48, 0xCu);
        v50 = v74;
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x24C1D8100](v50, -1, -1);
        MEMORY[0x24C1D8100](v49, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_28:
    swift_once();
    goto LABEL_13;
  }

  v74 = v22;
  v72 = sub_248730980();
  v52 = v51;
  v73 = *(v3 + 8);
  v73(v17, v2);
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v53 = sub_248730DF0();
  __swift_project_value_buffer(v53, qword_28150F088);

  v54 = a1;
  v55 = sub_248730DD0();
  v56 = sub_2487313C0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v71 = v13;
    v58 = v57;
    v70 = swift_slowAlloc();
    *&v77 = v70;
    *v58 = 136315394;
    v59 = sub_2486D3010(v72, v52, &v77);

    *(v58 + 4) = v59;
    *(v58 + 12) = 2080;
    v60 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    v61 = v75;
    (*(v76 + 16))(v75, &v54[v60], v2);
    v62 = sub_248730980();
    v64 = v63;
    v73(v61, v2);
    v65 = sub_2486D3010(v62, v64, &v77);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_2486BF000, v55, v56, "Extracted %s for turn: %s", v58, 0x16u);
    v66 = v70;
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v66, -1, -1);
    v67 = v58;
    v13 = v71;
    MEMORY[0x24C1D8100](v67, -1, -1);
  }

  else
  {
  }

  v22 = v74;
LABEL_22:
  sub_2486C7B38(v20, v13);
  if ((v22)(v13, 1, v2) == 1)
  {
    sub_2486C992C(v13);
    v77 = 0u;
    v78 = 0u;
  }

  else
  {
    *(&v78 + 1) = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v77);
    (*(v76 + 32))(boxed_opaque_existential_0, v13, v2);
  }

  swift_beginAccess();
  sub_2486C6800(&v77, 0x7165722E4843524FLL, 0xEE00644974736575);
  swift_endAccess();
  return sub_2486C992C(v20);
}

id ORCHFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ORCHFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ORCHFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ORCHFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ORCHFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

DeepThoughtBiomeFoundation::SimilarityScoreError_optional __swiftcall SimilarityScoreError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248731820();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t SimilarityScoreError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000044;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2486F6144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000044;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v5 = &unk_2487366F0;
  }

  else
  {
    v5 = "Failed to embed turn utterances";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000044;
  }

  else
  {
    v7 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v8 = "Failed to embed turn utterances";
  }

  else
  {
    v8 = &unk_2487366F0;
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_248731880();
  }

  return v10 & 1;
}

uint64_t sub_2486F61F0()
{
  v1 = *v0;
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

uint64_t sub_2486F6270()
{
  *v0;
  sub_2487310D0();
}

uint64_t sub_2486F62DC()
{
  v1 = *v0;
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

uint64_t sub_2486F6358@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_248731820();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2486F63B8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000044;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "Failed to embed turn utterances";
  }

  else
  {
    v3 = &unk_2487366F0;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

double SemanticSimilarityScorer.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

double SemanticSimilarityScorer.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_2486F644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = swift_task_alloc();
  v4[16] = v5;
  *v5 = v4;
  v5[1] = sub_2486F64E8;

  return sub_2486F6BA4((v4 + 2));
}

uint64_t sub_2486F64E8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2486F65E4, 0, 0);
}

uint64_t sub_2486F65E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5C70, &qword_248734E10);
  v7 = swift_allocObject();
  v0[17] = v7;
  *(v7 + 16) = xmmword_248733790;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  v8 = *(v6 + 24);

  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_2486F677C;

  return v12(v7, v5, v6);
}

uint64_t sub_2486F677C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_2486F689C, 0, 0);
}

uint64_t sub_2486F689C()
{
  v1 = *(v0 + 152);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (v1[2] != 2)
  {
    v8 = *(v0 + 152);

LABEL_7:
    sub_2486F6D40();
    swift_allocError();
    *v9 = 0;
    goto LABEL_8;
  }

  v3 = v1[4];
  v2 = v1[5];

  *(v0 + 88) = 1065353216;
  __P = *(v3 + 16);
  if (__P == *(v2 + 16))
  {
    v5 = normalizeMatrix(_:rowCount:columnCount:)(v3, 1, *(v3 + 16));

    v6 = normalizeMatrix(_:rowCount:columnCount:)(v2, 1, __P);

    if (__P)
    {
      v7 = sub_248731290();
      *(v7 + 16) = __P;
      memset_pattern16((v7 + 32), &unk_2487332F0, 4 * __P);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    vDSP_mtrans((v6 + 32), 1, (v7 + 32), 1, __P, 1uLL);

    vDSP_mmul((v5 + 32), 1, (v7 + 32), 1, (v0 + 88), 1, 1uLL, 1uLL, __P);

    v17 = *(v0 + 88);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v18 = *(v0 + 8);

    return v18(*&v17, 0);
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v12 = sub_248730DF0();
  __swift_project_value_buffer(v12, qword_28150F088);
  v13 = sub_248730DD0();
  v14 = sub_2487313D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2486BF000, v13, v14, "Matrix 1 and Matrix 2 must have the same column count.", v15, 2u);
    MEMORY[0x24C1D8100](v15, -1, -1);
  }

  sub_2486F6D40();
  swift_allocError();
  *v16 = 1;
LABEL_8:
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2486F6BA4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_2486F6BC4, 0, 0);
}

uint64_t sub_2486F6BC4()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_2486F72A4(v1 + 16, v0 + 56);
  v2 = *(v0 + 120);
  v3 = (v0 + 56);
  if (*(v0 + 80))
  {
    sub_2486CD01C(v3, v0 + 16);
    sub_2486CD01C((v0 + 16), v2);
  }

  else
  {
    sub_2486F6DEC(v3);
    v4 = type metadata accessor for MADTextEmbedder();
    v2[3] = v4;
    v2[4] = &protocol witness table for MADTextEmbedder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
    sub_248730DE0();
    *(boxed_opaque_existential_0 + *(v4 + 20)) = [objc_opt_self() service];
    v6 = (boxed_opaque_existential_0 + *(v4 + 24));
    *v6 = 0;
    v6[1] = 0;
    *(v0 + 40) = v4;
    *(v0 + 48) = &protocol witness table for MADTextEmbedder;
    v7 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    sub_2486F7314(boxed_opaque_existential_0, v7);
    swift_beginAccess();
    sub_2486F7378(v0 + 16, v1 + 16);
    swift_endAccess();
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_2486F6D40()
{
  result = qword_27EEA6478;
  if (!qword_27EEA6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6478);
  }

  return result;
}

uint64_t SemanticSimilarityScorer.__deallocating_deinit()
{
  sub_2486F6DEC(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2486F6DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6480, &qword_248734E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2486F6E58()
{
  result = qword_27EEA6488;
  if (!qword_27EEA6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimilarityScoreError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SimilarityScoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of SemanticSimilarityScorer.compute(first:second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2486F7198;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_2486F7198(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_2486F72A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6480, &qword_248734E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2486F7314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MADTextEmbedder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2486F7378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6480, &qword_248734E18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id StreamsBookmark.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for StreamsBookmark();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v5;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v4);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2486F748C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2486FD060(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2486FC2A8(v5);
  *a1 = v2;
  return result;
}

uint64_t static StreamsBookmark.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EEA6490 = a1;
  return result;
}

uint64_t StreamsBookmark.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name);
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8);

  return v1;
}

id StreamsBookmark.__allocating_init(name:timeIntervals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = a3;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id StreamsBookmark.init(name:timeIntervals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = a3;
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v6.receiver = v3;
  v6.super_class = type metadata accessor for StreamsBookmark();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2486F77A0()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v0 + v3) = v2;

  v5 = sub_2486D3BA8(v1);
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *(v0 + v6) = v5;
}

uint64_t StreamsBookmark.__allocating_init(name:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(&unk_285B237D0 + v3 + 32);
    v7 = v6 == 1 ? "CONVERSATION_TURN_UKNOWN" : "22SiriUIFeatureExtractor";
    v8 = v6 ? 0xD000000000000018 : 0xD000000000000015;
    v9 = v6 ? v7 : "CONVERSATION_TURN_AIMLIS";
    v10 = v9 | 0x8000000000000000;
    sub_248730900();
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v4;
    v14 = sub_2486C94CC(v8, v10);
    v16 = v4[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v4[3] < v19)
    {
      sub_2486E5048(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_2486C94CC(v8, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_66;
      }

LABEL_18:
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v25 = v14;
    sub_2486E68F4();
    v14 = v25;
    if ((v20 & 1) == 0)
    {
LABEL_19:
      v4 = v54;
      v54[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v8;
      v22[1] = v10;
      *(v4[7] + 8 * v14) = v12;
      v23 = v4[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_64;
      }

      v4[2] = v24;
      goto LABEL_3;
    }

LABEL_2:
    v5 = v14;

    v4 = v54;
    *(v54[7] + 8 * v5) = v12;
LABEL_3:
    v3 += 8;
    if (v3 == 24)
    {
      v26 = 0x20u;
      while (1)
      {
        v28 = 0xE600000000000000;
        v29 = 0x495569726953;
        switch(*(&unk_285B236F0 + v26))
        {
          case 0:
            v28 = 0xEA00000000007375;
            v29 = 0x636F466E49707041;
            break;
          case 1:
            break;
          case 2:
            v29 = 0x776F4E616964654DLL;
            v28 = 0xEF676E6979616C50;
            break;
          case 3:
            v29 = 0xD000000000000015;
            v28 = 0x800000024873C1F0;
            break;
          case 4:
            v29 = 0xD000000000000012;
            v28 = 0x800000024873C210;
            break;
          case 5:
            v28 = 0xE700000000000000;
            v29 = 0x6E776F6E6B6E55;
            break;
          case 6:
            v29 = 0x6365784569726953;
            v28 = 0xED00006E6F697475;
            break;
          case 7:
            v29 = 0xD00000000000001FLL;
            v28 = 0x800000024873C1D0;
            break;
          case 8:
            v29 = 0xD000000000000010;
            v28 = 0x800000024873C1B0;
            break;
          case 9:
            v29 = 0xD000000000000010;
            v28 = 0x800000024873C190;
            break;
          case 0xALL:
            v29 = 0x736567617373654DLL;
            v28 = 0xEC00000064616552;
            break;
          case 0xBLL:
            v29 = 0xD000000000000011;
            v28 = 0x800000024873C170;
            break;
          case 0xCLL:
            v29 = 0xD000000000000010;
            v28 = 0x800000024873C150;
            break;
          case 0xDLL:
            v28 = 0xE900000000000074;
            v29 = 0x6E65746E49707041;
            break;
          case 0xELL:
            v29 = 0xD000000000000016;
            v28 = 0x800000024873C130;
            break;
          case 0xFLL:
            v29 = 0xD000000000000012;
            v28 = 0x800000024873C110;
            break;
          case 0x10:
            v29 = 0xD00000000000001ALL;
            v28 = 0x800000024873C0F0;
            break;
          case 0x11:
            v28 = 0xE700000000000000;
            v29 = 0x4B485469726953;
            break;
          case 0x12:
            v29 = 0xD000000000000011;
            v28 = 0x800000024873C0D0;
            break;
          case 0x13:
            v29 = 0xD000000000000017;
            v28 = 0x800000024873C0B0;
            break;
          case 0x14:
            v29 = 0xD000000000000016;
            v28 = 0x800000024873C090;
            break;
          case 0x15:
            v29 = 0xD00000000000001ELL;
            v28 = 0x800000024873C070;
            break;
          case 0x16:
            v29 = 0xD000000000000021;
            v28 = 0x800000024873C040;
            break;
          case 0x17:
            v29 = 0xD000000000000014;
            v28 = 0x800000024873C020;
            break;
          default:
            v29 = 0x6E756F4620746F4ELL;
            v28 = 0xE900000000000064;
            break;
        }

        sub_248730900();
        v31 = v30;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v54 = v4;
        v33 = sub_2486C94CC(v29, v28);
        v35 = v4[2];
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_63;
        }

        v38 = v34;
        if (v4[3] < v37)
        {
          break;
        }

        if (v32)
        {
          goto LABEL_56;
        }

        v43 = v33;
        sub_2486E68F4();
        v33 = v43;
        if ((v38 & 1) == 0)
        {
LABEL_57:
          v4 = v54;
          v54[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v4[6] + 16 * v33);
          *v40 = v29;
          v40[1] = v28;
          *(v4[7] + 8 * v33) = v31;
          v41 = v4[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_65;
          }

          v4[2] = v42;
          goto LABEL_25;
        }

LABEL_24:
        v27 = v33;

        v4 = v54;
        *(v54[7] + 8 * v27) = v31;
LABEL_25:
        v26 += 8;
        if (v26 == 224)
        {
          v44 = type metadata accessor for StreamsBookmark();
          v45 = objc_allocWithZone(v44);
          v46 = &v45[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
          *v46 = a1;
          *(v46 + 1) = a2;
          *&v45[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v4;
          *&v45[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
          v53.receiver = v45;
          v53.super_class = v44;
          v47 = objc_msgSendSuper2(&v53, sel_init);
          v48 = sub_248730970();
          (*(*(v48 - 8) + 8))(a3, v48);
          return v47;
        }
      }

      sub_2486E5048(v37, v32);
      v33 = sub_2486C94CC(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_66;
      }

LABEL_56:
      if ((v38 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_2487318B0();
  __break(1u);
  return result;
}

id StreamsBookmark.__allocating_init(name:endTimeInSecSinceReferenceDate:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v7 = *(&unk_285B23840 + v4 + 32);
    v8 = v7 == 1 ? "CONVERSATION_TURN_UKNOWN" : "22SiriUIFeatureExtractor";
    v9 = v7 ? 0xD000000000000018 : 0xD000000000000015;
    v10 = v7 ? v8 : "CONVERSATION_TURN_AIMLIS";
    v11 = v10 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v13 = sub_2486C94CC(v9, v11);
    v15 = v5[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v5[3] < v18)
    {
      sub_2486E5048(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_2486C94CC(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_66;
      }

LABEL_18:
      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v24 = v13;
    sub_2486E68F4();
    v13 = v24;
    if ((v19 & 1) == 0)
    {
LABEL_19:
      v5 = v48;
      v48[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (v5[6] + 16 * v13);
      *v21 = v9;
      v21[1] = v11;
      *(v5[7] + 8 * v13) = a3;
      v22 = v5[2];
      v17 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v17)
      {
        goto LABEL_64;
      }

      v5[2] = v23;
      goto LABEL_3;
    }

LABEL_2:
    v6 = v13;

    v5 = v48;
    *(v48[7] + 8 * v6) = a3;
LABEL_3:
    v4 += 8;
    if (v4 == 24)
    {
      v25 = 0x20u;
      while (1)
      {
        v27 = 0xE600000000000000;
        v28 = 0x495569726953;
        switch(*(&unk_285B236F0 + v25))
        {
          case 0:
            v27 = 0xEA00000000007375;
            v28 = 0x636F466E49707041;
            break;
          case 1:
            break;
          case 2:
            v28 = 0x776F4E616964654DLL;
            v27 = 0xEF676E6979616C50;
            break;
          case 3:
            v28 = 0xD000000000000015;
            v27 = 0x800000024873C1F0;
            break;
          case 4:
            v28 = 0xD000000000000012;
            v27 = 0x800000024873C210;
            break;
          case 5:
            v27 = 0xE700000000000000;
            v28 = 0x6E776F6E6B6E55;
            break;
          case 6:
            v28 = 0x6365784569726953;
            v27 = 0xED00006E6F697475;
            break;
          case 7:
            v28 = 0xD00000000000001FLL;
            v27 = 0x800000024873C1D0;
            break;
          case 8:
            v28 = 0xD000000000000010;
            v27 = 0x800000024873C1B0;
            break;
          case 9:
            v28 = 0xD000000000000010;
            v27 = 0x800000024873C190;
            break;
          case 0xALL:
            v28 = 0x736567617373654DLL;
            v27 = 0xEC00000064616552;
            break;
          case 0xBLL:
            v28 = 0xD000000000000011;
            v27 = 0x800000024873C170;
            break;
          case 0xCLL:
            v28 = 0xD000000000000010;
            v27 = 0x800000024873C150;
            break;
          case 0xDLL:
            v27 = 0xE900000000000074;
            v28 = 0x6E65746E49707041;
            break;
          case 0xELL:
            v28 = 0xD000000000000016;
            v27 = 0x800000024873C130;
            break;
          case 0xFLL:
            v28 = 0xD000000000000012;
            v27 = 0x800000024873C110;
            break;
          case 0x10:
            v28 = 0xD00000000000001ALL;
            v27 = 0x800000024873C0F0;
            break;
          case 0x11:
            v27 = 0xE700000000000000;
            v28 = 0x4B485469726953;
            break;
          case 0x12:
            v28 = 0xD000000000000011;
            v27 = 0x800000024873C0D0;
            break;
          case 0x13:
            v28 = 0xD000000000000017;
            v27 = 0x800000024873C0B0;
            break;
          case 0x14:
            v28 = 0xD000000000000016;
            v27 = 0x800000024873C090;
            break;
          case 0x15:
            v28 = 0xD00000000000001ELL;
            v27 = 0x800000024873C070;
            break;
          case 0x16:
            v28 = 0xD000000000000021;
            v27 = 0x800000024873C040;
            break;
          case 0x17:
            v28 = 0xD000000000000014;
            v27 = 0x800000024873C020;
            break;
          default:
            v28 = 0x6E756F4620746F4ELL;
            v27 = 0xE900000000000064;
            break;
        }

        v29 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v5;
        v30 = sub_2486C94CC(v28, v27);
        v32 = v5[2];
        v33 = (v31 & 1) == 0;
        v17 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v17)
        {
          goto LABEL_63;
        }

        v35 = v31;
        if (v5[3] < v34)
        {
          break;
        }

        if (v29)
        {
          goto LABEL_56;
        }

        v40 = v30;
        sub_2486E68F4();
        v30 = v40;
        if ((v35 & 1) == 0)
        {
LABEL_57:
          v5 = v48;
          v48[(v30 >> 6) + 8] |= 1 << v30;
          v37 = (v5[6] + 16 * v30);
          *v37 = v28;
          v37[1] = v27;
          *(v5[7] + 8 * v30) = a3;
          v38 = v5[2];
          v17 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v17)
          {
            goto LABEL_65;
          }

          v5[2] = v39;
          goto LABEL_25;
        }

LABEL_24:
        v26 = v30;

        v5 = v48;
        *(v48[7] + 8 * v26) = a3;
LABEL_25:
        v25 += 8;
        if (v25 == 224)
        {
          v41 = type metadata accessor for StreamsBookmark();
          v42 = objc_allocWithZone(v41);
          v43 = &v42[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
          *v43 = a1;
          *(v43 + 1) = a2;
          *&v42[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v5;
          *&v42[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
          v47.receiver = v42;
          v47.super_class = v41;
          return objc_msgSendSuper2(&v47, sel_init);
        }
      }

      sub_2486E5048(v34, v29);
      v30 = sub_2486C94CC(v28, v27);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_66;
      }

LABEL_56:
      if ((v35 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_2487318B0();
  __break(1u);
  return result;
}

uint64_t sub_2486F85E4(uint64_t a1)
{
  v2 = "CONVERSATION_TURN_AIMLIS";
  v3 = 0xD000000000000015;
  if (a1)
  {
    v3 = 0xD000000000000018;
    v2 = "22SiriUIFeatureExtractor";
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 1)
  {
    v2 = "CONVERSATION_TURN_UKNOWN";
  }

  v5 = v2 | 0x8000000000000000;
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_2486C94CC(v4, v5);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_2486F86E4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2486C94CC(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_2486F8794(uint64_t a1, uint64_t *a2)
{
  v4 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v6 = v5;
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (, v9 = sub_2486C94CC(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v9);

    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2486F8850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v89 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v86 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v78 - v11;
  v13 = sub_248730970();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v87 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v78 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v88 = &v78 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v78 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64B8, &qword_248734F98);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v78 - v32;
  v90 = sub_248730A70();
  v34 = *(v90 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v90, v36);
  v38 = &v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730A40();
  sub_248730A80();
  v39 = sub_248730A90();
  result = (*(*(v39 - 8) + 48))(v33, 1, v39);
  if (result != 1)
  {
    sub_248730A50();
    sub_2486FA4FC(v38, a2, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      (*(v34 + 8))(v38, v90);
      sub_2486C7940(v12, &qword_27EEA6240, &unk_248733390);
    }

    else
    {
      (*(v14 + 32))(v28, v12, v13);
      v41 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
      v43 = v42;
      v44 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
      swift_beginAccess();
      v45 = *(v3 + v44);
      if (*(v45 + 16) && (v85 = v3, , v46 = sub_2486C94CC(v41, v43), v48 = v47, , (v48 & 1) != 0))
      {
        v49 = *(*(v45 + 56) + 8 * v46);

        v50 = v88;
        sub_2487308F0();
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v51 = sub_248730DF0();
        __swift_project_value_buffer(v51, qword_28150F088);
        v52 = *(v14 + 16);
        v52(v22, v50, v13);
        v53 = v87;
        v84 = v52;
        v52(v87, v28, v13);
        v54 = sub_248730DD0();
        v55 = sub_2487313C0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v80 = v55;
          v57 = v56;
          v83 = v56;
          v81 = swift_slowAlloc();
          v91 = v81;
          *v57 = 136315394;
          v78 = sub_2486FD6A8();
          v79 = v54;
          v58 = sub_248731850();
          v60 = v59;
          v82 = v14 + 16;
          v61 = *(v14 + 8);
          v61(v22, v13);
          v62 = sub_2486D3010(v58, v60, &v91);

          v63 = v83;
          *(v83 + 4) = v62;
          *(v63 + 12) = 2080;
          v64 = v87;
          v65 = sub_248731850();
          v67 = v66;
          v87 = v61;
          v61(v64, v13);
          v68 = sub_2486D3010(v65, v67, &v91);

          v69 = v83;
          *(v83 + 14) = v68;
          v70 = v79;
          _os_log_impl(&dword_2486BF000, v79, v80, "bookmarkDate: %s, maxNumOfDaysAgoStartTime: %s", v69, 0x16u);
          v71 = v81;
          swift_arrayDestroy();
          MEMORY[0x24C1D8100](v71, -1, -1);
          v72 = v88;
          MEMORY[0x24C1D8100](v69, -1, -1);
        }

        else
        {

          v74 = *(v14 + 8);
          v74(v53, v13);
          v87 = v74;
          v74(v22, v13);
          v72 = v88;
        }

        if (sub_248730930())
        {
          v75 = v86;
          v84(v86, v28, v13);
          (*(v14 + 56))(v75, 0, 1, v13);
          v73 = sub_2486F96D8(v89, v75);
          sub_2486C7940(v75, &qword_27EEA6240, &unk_248733390);
          v76 = v87;
          (v87)(v72, v13);
          v76(v28, v13);
          (*(v34 + 8))(v38, v90);
          return v73;
        }

        v77 = v87;
        (v87)(v72, v13);
        v77(v28, v13);
      }

      else
      {

        (*(v14 + 8))(v28, v13);
      }

      (*(v34 + 8))(v38, v90);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486F8FDC(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v66 - v9;
  v11 = sub_248730970();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v74 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v66 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v75 = &v66 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64B8, &qword_248734F98);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v66 - v30;
  v77 = sub_248730A70();
  v32 = *(v77 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v77, v34);
  v36 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730A40();
  sub_248730A80();
  v37 = sub_248730A90();
  result = (*(*(v37 - 8) + 48))(v31, 1, v37);
  if (result != 1)
  {
    sub_248730A50();
    sub_2486FA4FC(v36, a2, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      (*(v32 + 8))(v36, v77);
      sub_2486C7940(v10, &qword_27EEA6240, &unk_248733390);
    }

    else
    {
      (*(v12 + 32))(v26, v10, v11);
      sub_2486F85E4(v76);
      if (v39)
      {
        (*(v12 + 8))(v26, v11);
      }

      else
      {
        v72 = v26;
        v40 = v75;
        sub_2487308F0();
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v41 = sub_248730DF0();
        __swift_project_value_buffer(v41, qword_28150F088);
        v42 = *(v12 + 16);
        v70 = v42;
        v42(v20, v40, v11);
        v43 = v74;
        v71 = v12 + 16;
        v42(v74, v72, v11);
        v44 = sub_248730DD0();
        v45 = sub_2487313C0();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v78 = v69;
          *v46 = 136315394;
          v66 = sub_2486FD6A8();
          v68 = v44;
          v47 = sub_248731850();
          v49 = v48;
          v67 = v45;
          v50 = *(v12 + 8);
          v50(v20, v11);
          v51 = sub_2486D3010(v47, v49, &v78);

          *(v46 + 4) = v51;
          *(v46 + 12) = 2080;
          v52 = v74;
          v53 = sub_248731850();
          v55 = v54;
          v74 = v50;
          v50(v52, v11);
          v56 = sub_2486D3010(v53, v55, &v78);

          *(v46 + 14) = v56;
          v57 = v68;
          _os_log_impl(&dword_2486BF000, v68, v67, "bookmarkDate: %s, maxNumOfDaysAgoStartTime: %s", v46, 0x16u);
          v58 = v69;
          swift_arrayDestroy();
          MEMORY[0x24C1D8100](v58, -1, -1);
          v59 = v46;
          v40 = v75;
          MEMORY[0x24C1D8100](v59, -1, -1);
        }

        else
        {

          v60 = *(v12 + 8);
          v60(v43, v11);
          v74 = v60;
          v60(v20, v11);
        }

        v61 = v72;
        if (sub_248730930())
        {
          v62 = v73;
          v70(v73, v61, v11);
          (*(v12 + 56))(v62, 0, 1, v11);
          v63 = sub_2486F9978(v76, v62);
          sub_2486C7940(v62, &qword_27EEA6240, &unk_248733390);
          v64 = v74;
          (v74)(v40, v11);
          v64(v61, v11);
          (*(v32 + 8))(v36, v77);
          return v63;
        }

        v65 = v74;
        (v74)(v40, v11);
        v65(v61, v11);
      }

      (*(v32 + 8))(v36, v77);
    }

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_2486F96D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v33 - v8;
  v10 = sub_248730970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v18 = v17;
  sub_2486C5C10(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_2486C7940(v9, &qword_27EEA6240, &unk_248733390);
    return 0;
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_248730900();
  v20 = v19;
  v21 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v22 = *(v3 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v3 + v21);
  *(v3 + v21) = 0x8000000000000000;
  sub_2486EC5A0(v16, v18, isUniquelyReferenced_nonNull_native, v20);
  v24 = v33;
  *(v3 + v21) = v33;
  swift_endAccess();
  if (*(v24 + 16))
  {

    v25 = sub_2486C94CC(v16, v18);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v25);

      v29 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v29 = 1;
  v28 = 0.0;
LABEL_9:
  sub_248730900();
  v31 = v30;
  (*(v11 + 8))(v15, v10);
  if (v29)
  {
    return 0;
  }

  return v28 == v31;
}

BOOL sub_2486F9978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v36 - v9;
  v11 = sub_248730970();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = "CONVERSATION_TURN_AIMLIS";
  v18 = 0xD000000000000015;
  if (a1)
  {
    v18 = 0xD000000000000018;
    v17 = "22SiriUIFeatureExtractor";
  }

  v19 = a1 == 1;
  if (a1 == 1)
  {
    v20 = 0xD000000000000018;
  }

  else
  {
    v20 = v18;
  }

  if (v19)
  {
    v21 = "CONVERSATION_TURN_UKNOWN";
  }

  else
  {
    v21 = v17;
  }

  sub_2486C5C10(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_2486C7940(v10, &qword_27EEA6240, &unk_248733390);
    return 0;
  }

  (*(v12 + 32))(v16, v10, v11);
  sub_248730900();
  v23 = v22;
  v24 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v25 = *(v3 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v3 + v24);
  *(v3 + v24) = 0x8000000000000000;
  sub_2486EC5A0(v20, v21 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, v23);
  v27 = v36;
  *(v3 + v24) = v36;
  swift_endAccess();
  if (*(v27 + 16))
  {

    v28 = sub_2486C94CC(v20, v21 | 0x8000000000000000);
    v30 = v29;

    if (v30)
    {
      v31 = *(*(v27 + 56) + 8 * v28);

      v32 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v32 = 1;
  v31 = 0.0;
LABEL_17:
  sub_248730900();
  v34 = v33;
  (*(v12 + 8))(v16, v11);
  if (v32)
  {
    return 0;
  }

  return v31 == v34;
}

BOOL sub_2486F9C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v42 - v8;
  v10 = sub_248730970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v18 = v17;
  sub_2486C5C10(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_2486C7940(v9, &qword_27EEA6240, &unk_248733390);
    return 0;
  }

  (*(v11 + 32))(v15, v9, v10);
  v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  if (*(*(v3 + v19) + 16))
  {
    v20 = *(v3 + v19);

    sub_2486C94CC(v16, v18);
    v22 = v21;

    if (v22)
    {
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v23 = sub_248730DF0();
      __swift_project_value_buffer(v23, qword_28150F088);

      v24 = sub_248730DD0();
      v25 = sub_2487313C0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44 = v27;
        *v26 = 136315138;
        v28 = sub_2486D3010(v16, v18, &v44);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_2486BF000, v24, v25, "There is already a staged bookmark for %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1D8100](v27, -1, -1);
        MEMORY[0x24C1D8100](v26, -1, -1);
      }

      else
      {
      }

      (*(v11 + 8))(v15, v10);
      return 1;
    }
  }

  sub_248730900();
  v30 = v29;
  swift_beginAccess();
  v31 = *(v3 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v3 + v19);
  *(v3 + v19) = 0x8000000000000000;
  sub_2486EC5A0(v16, v18, isUniquelyReferenced_nonNull_native, v30);
  v33 = v43;
  *(v3 + v19) = v43;
  swift_endAccess();
  if (!*(v33 + 16))
  {

LABEL_14:
    v38 = 1;
    v37 = 0.0;
    goto LABEL_15;
  }

  v34 = sub_2486C94CC(v16, v18);
  v36 = v35;

  if ((v36 & 1) == 0)
  {

    goto LABEL_14;
  }

  v37 = *(*(v33 + 56) + 8 * v34);

  v38 = 0;
LABEL_15:
  sub_248730900();
  v40 = v39;
  (*(v11 + 8))(v15, v10);
  if (v38)
  {
    return 0;
  }

  return v37 == v40;
}

uint64_t sub_2486FA084()
{
  v1 = v0;
  v2 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v4 = v3;
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  if (*(*(v0 + v5) + 16) && (, sub_2486C94CC(v2, v4), v7 = v6, , (v7 & 1) != 0))
  {
    v8 = *(v0 + v5);
    if (*(v8 + 16))
    {
      v9 = *(v1 + v5);

      v10 = sub_2486C94CC(v2, v4);
      if (v11)
      {
        v12 = *(*(v8 + 56) + 8 * v10);
      }

      else
      {
        v12 = 0;
      }

      v20 = v11 ^ 1;
    }

    else
    {
      v12 = 0;
      v20 = 1;
    }

    swift_beginAccess();

    sub_2486C68D0(v12, v20 & 1, v2, v4);
    swift_endAccess();
    swift_beginAccess();
    sub_2486EBBB8(v2, v4);
    swift_endAccess();

    return 1;
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v13 = sub_248730DF0();
    __swift_project_value_buffer(v13, qword_28150F088);

    v14 = sub_248730DD0();
    v15 = sub_2487313D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      v18 = sub_2486D3010(v2, v4, &v21);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_2486BF000, v14, v15, "No staged bookmarks for event type %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1D8100](v17, -1, -1);
      MEMORY[0x24C1D8100](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_2486FA310()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  v2 = *(v0 + v1);

  sub_2486FD448(v3, sub_2486FD700);

  v4 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v5 = *(v0 + v1);
  *(v0 + v1) = v4;

  return 1;
}

uint64_t sub_2486FA3BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v9 = *(a3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a3 + v8);
  *(a3 + v8) = 0x8000000000000000;
  sub_2486EC5A0(a1, a2, isUniquelyReferenced_nonNull_native, a4);
  *(a3 + v8) = v12;
  return swift_endAccess();
}

uint64_t sub_2486FA464()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

BOOL sub_2486FA4AC()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) == 0;
}

uint64_t sub_2486FA4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v80 = a2;
  v82 = a1;
  v3 = sub_248730A00();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v73 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_248730A10();
  v72 = *(v78 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v78, v8);
  v71 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2487309F0();
  v70 = *(v77 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v77, v11);
  v69 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_248730A60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v68 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = v66 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = v66 - v29;
  v31 = sub_248730970();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v35 = MEMORY[0x28223BE20](v31, v34);
  v76 = v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v83 = v66 - v38;
  if (qword_28150F058 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v19, qword_28150F1A8);
  sub_2486C5C10(v39, v30);
  v40 = v32[6];
  v41 = v40(v30, 1, v31);
  v81 = v32;
  if (v41 == 1)
  {
    sub_248730960();
    v42 = v31;
    if (v40(v30, 1, v31) != 1)
    {
      sub_2486C7940(v30, &qword_27EEA6240, &unk_248733390);
    }
  }

  else
  {
    v43 = v32[4];
    v42 = v31;
    v43(v83, v30, v31);
  }

  (*(v14 + 104))(v18, *MEMORY[0x277CC9968], v13);
  if (v80 == 0x8000000000000000)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  sub_248730A30();
  (*(v14 + 8))(v18, v13);
  v31 = v42;
  if (v40(v27, 1, v42) == 1)
  {
    v42 = v81;
  }

  else
  {
    v66[0] = v81[4];
    v66[1] = v81 + 4;
    (v66[0])(v76, v27, v42);
    v45 = v69;
    v44 = v70;
    (*(v70 + 104))(v69, *MEMORY[0x277CC9878], v77);
    v46 = *MEMORY[0x277CC9900];
    v47 = v72;
    v48 = *(v72 + 104);
    v67 = v40;
    v49 = v71;
    v48(v71, v46, v78);
    v50 = *MEMORY[0x277CC98E8];
    v52 = v74;
    v51 = v75;
    v53 = *(v74 + 104);
    v80 = v31;
    v54 = v73;
    v53(v73, v50, v75);
    v55 = v68;
    sub_248730A20();
    v56 = v54;
    v31 = v80;
    (*(v52 + 8))(v56, v51);
    (*(v47 + 8))(v49, v78);
    (*(v44 + 8))(v45, v77);
    v42 = v81;
    v57 = v81[1];
    v57(v76, v31);
    if (v67(v55, 1, v31) != 1)
    {
      v57(v83, v31);
      v64 = v79;
      (v66[0])(v79, v55, v31);
      v63 = v64;
      v62 = 0;
      return (*(v42 + 56))(v63, v62, 1, v31);
    }

    v27 = v55;
  }

  sub_2486C7940(v27, &qword_27EEA6240, &unk_248733390);
  if (qword_28150EE60 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v58 = sub_248730DF0();
  __swift_project_value_buffer(v58, qword_28150F088);
  v59 = sub_248730DD0();
  v60 = sub_2487313D0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_2486BF000, v59, v60, "Failed to get the start time of the date of maxNumOfDays before today.", v61, 2u);
    MEMORY[0x24C1D8100](v61, -1, -1);
  }

  (*(v42 + 8))(v83, v31);
  v62 = 1;
  v63 = v79;
  return (*(v42 + 56))(v63, v62, 1, v31);
}

uint64_t static CustomDate.current()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v14 - v6;
  if (qword_28150F058 != -1)
  {
    v13 = v5;
    swift_once();
    v5 = v13;
  }

  v8 = __swift_project_value_buffer(v5, qword_28150F1A8);
  sub_2486C5C10(v8, v7);
  v9 = sub_248730970();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_248730960();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2486C7940(v7, &qword_27EEA6240, &unk_248733390);
  }

  return result;
}

void sub_2486FAE3C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name);
  v4 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8);
  v5 = sub_248730FC0();
  v6 = sub_248730FC0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v8 = *(v1 + v7);

  v9 = sub_248730F00();

  v10 = sub_248730FC0();
  [a1 encodeObject:v9 forKey:v10];

  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  v12 = *(v1 + v11);

  v13 = sub_248730F00();

  v14 = sub_248730FC0();
  [a1 encodeObject:v13 forKey:v14];
}

uint64_t StreamsBookmark.init(coder:)(void *a1)
{
  sub_2486CF4C4(0, &qword_28150EF58, 0x277CCACA8);
  v2 = sub_248731510();
  if (v2)
  {
    v9 = 0;
    v10 = 0;
    v3 = v2;
    sub_248730FE0();
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v4 = sub_248730DF0();
  __swift_project_value_buffer(v4, qword_28150F088);
  v5 = sub_248730DD0();
  v6 = sub_2487313D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2486BF000, v5, v6, "StreamsBookmark cannot be decoded", v7, 2u);
    MEMORY[0x24C1D8100](v7, -1, -1);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_2486FB51C()
{
  v1 = v0;
  v2 = sub_248730970();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_248731650();

  v29 = 0xD000000000000017;
  v30 = 0x800000024873C250;
  MEMORY[0x24C1D70A0](*(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name), *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8));
  MEMORY[0x24C1D70A0](34, 0xE100000000000000);
  v8 = v30;
  v28 = v29;
  v32 = v29;
  v33 = v30;
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v25 = v3;
    v12 = sub_2486DD920(v11, 0);
    v13 = sub_2486FD074(&v29, v12 + 4, v11, v10);
    v26 = v31;
    v27 = v13;
    swift_bridgeObjectRetain_n();
    sub_2486CA188();
    if (v27 != v11)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v3 = v25;
  }

  else
  {
    v14 = *(v1 + v9);

    v12 = MEMORY[0x277D84F90];
  }

  v29 = v12;
  sub_2486F748C(&v29);

  v15 = *(v29 + 16);
  if (v15)
  {
    v16 = (v3 + 8);
    v28 = v29;
    v17 = (v29 + 48);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v17 += 3;

      sub_2487308F0();
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_248731650();

      v29 = 0x6D6165727473202CLL;
      v30 = 0xEB0000000022203ALL;
      MEMORY[0x24C1D70A0](v18, v19);

      MEMORY[0x24C1D70A0](2112034, 0xE300000000000000);
      v21 = sub_248730910();
      MEMORY[0x24C1D70A0](v21);

      MEMORY[0x24C1D70A0](v29, v30);

      (*v16)(v7, v2);
      --v15;
    }

    while (v15);

    v22 = v32;
    v8 = v33;
  }

  else
  {

    v22 = v28;
  }

  v29 = v22;
  v30 = v8;

  MEMORY[0x24C1D70A0](41, 0xE100000000000000);

  return v29;
}

uint64_t static StreamsBookmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name) == *(a2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name) && *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8) == *(a2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8);
  if (!v4 && (sub_248731880() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v8 = *(a2 + v7);

  v9 = sub_2486FB9A8(v6, v8);

  if (v9)
  {
    v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
    swift_beginAccess();
    v11 = *(a1 + v10);
    v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
    swift_beginAccess();
    v13 = *(a2 + v12);

    v14 = sub_2486FB9A8(v11, v13);
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_2486FB9A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_2486C94CC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id StreamsBookmark.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static StreamsBookmarkCollection.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EEA6491 = a1;
  return result;
}

id StreamsBookmarkCollection.__allocating_init(bookmarks:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id StreamsBookmarkCollection.init(bookmarks:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StreamsBookmarkCollection();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_2486FBE00(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks);
  type metadata accessor for StreamsBookmark();
  v4 = sub_248731230();
  v5 = sub_248730FC0();
  [a1 encodeObject:v4 forKey:v5];
}

id StreamsBookmarkCollection.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA64D0, &unk_248734FA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_248733790;
  *(v2 + 32) = sub_2486CF4C4(0, &qword_28150EF60, 0x277CBEA60);
  *(v2 + 40) = type metadata accessor for StreamsBookmark();
  sub_248731520();

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA64F8, qword_248734FB8);
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for StreamsBookmarkCollection();
      v4 = objc_allocWithZone(v3);
      *&v4[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = v8;
      v7.receiver = v4;
      v7.super_class = v3;
      v5 = objc_msgSendSuper2(&v7, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {

    sub_2486C7940(v9, &qword_27EEA64E0, &qword_248733800);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_2486FC1C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2486FC208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  __swift_allocate_value_buffer(v0, qword_28150F1A8);
  v1 = __swift_project_value_buffer(v0, qword_28150F1A8);
  v2 = sub_248730970();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_2486FC2A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248731840();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA6570, &unk_248735040);
        v5 = sub_248731290();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2486FC4EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2486FC3B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2486FC3B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 24 * a3 - 24;
    v7 = result - a3;
LABEL_5:
    v8 = (v5 + 24 * v4);
    v10 = *v8;
    v9 = *(v8 + 1);
    v11 = v8[2];
    v12 = v7;
    v20 = v6;
    while (1)
    {
      v13 = *(v6 + 16);
      v14 = *&v10 == *v6 && v9 == *(v6 + 8);
      if (v14 || (v15 = *v6, v16 = *(v6 + 8), result = sub_248731880(), (result & 1) != 0))
      {
        if (v11 >= v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = sub_248731880();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v5)
      {
        break;
      }

      v10 = *(v6 + 24);
      v9 = *(v6 + 32);
      v11 = *(v6 + 40);
      v17 = *(v6 + 16);
      *(v6 + 24) = *v6;
      *(v6 + 40) = v17;
      *v6 = v10;
      *(v6 + 8) = v9;
      *(v6 + 16) = v11;
      v6 -= 24;
      if (__CFADD__(v12++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v20 + 24;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2486FC4EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v111 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v5 = v6;
    v6 = *v111;
    if (!*v111)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_111:
      v104 = *(v9 + 2);
      if (v104 >= 2)
      {
        while (*a3)
        {
          v105 = *&v9[16 * v104];
          v106 = *&v9[16 * v104 + 24];
          sub_2486FCC4C((*a3 + 24 * v105), (*a3 + 24 * *&v9[16 * v104 + 16]), *a3 + 24 * v106, v6);
          if (v5)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2486FD038(v9);
          }

          if (v104 - 2 >= *(v9 + 2))
          {
            goto LABEL_136;
          }

          v107 = &v9[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          result = sub_2486FCFAC(v104 - 1);
          v104 = *(v9 + 2);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_2486FD038(v9);
    v9 = result;
    goto LABEL_111;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  v118 = v9;
  if (v8 < v7)
  {
    v114 = v7;
    v11 = *a3;
    v12 = *a3 + 24 * v8;
    v13 = v10;
    v14 = *v12;
    v5 = *(v12 + 8);
    v15 = *(v12 + 16);
    v112 = v13;
    v16 = *a3 + 24 * v13;
    v17 = *(v16 + 16);
    v18 = v14 == *v16 && v5 == *(v16 + 8);
    v109 = v6;
    if (v18 || (result = sub_248731880(), (result & 1) != 0))
    {
      v116 = v15 < v17;
    }

    else
    {
      result = sub_248731880();
      v116 = result;
    }

    v19 = 0;
    v20 = v112 + 2;
    v21 = (v11 + 24 * v112 + 64);
    v22 = v8;
    do
    {
      v23 = v20;
      v6 = v22;
      v24 = v19;
      if (v20 >= v114)
      {
        break;
      }

      v5 = *(v21 - 2);
      v25 = *v21;
      v26 = *(v21 - 3);
      v27 = v5 == *(v21 - 5) && *(v21 - 1) == *(v21 - 4);
      if (v27 || (v28 = *(v21 - 2), v29 = *(v21 - 1), v30 = *(v21 - 5), v31 = *(v21 - 4), (sub_248731880() & 1) != 0))
      {
        result = v25 < v26;
      }

      else
      {
        result = sub_248731880();
      }

      v9 = v118;
      v20 = v23 + 1;
      v21 += 3;
      v22 = (v6 + 1);
      v19 = v24 + 24;
    }

    while (((v116 ^ result) & 1) == 0);
    if (v116)
    {
      v10 = v112;
      if (v23 < v112)
      {
        goto LABEL_139;
      }

      if (v112 < v23)
      {
        v32 = 0;
        v33 = v112;
        do
        {
          if (v33 != v6)
          {
            if (!*a3)
            {
              goto LABEL_145;
            }

            v34 = *a3 + 24 * v112;
            v35 = (v34 + v32);
            v36 = v34 + v24;
            v37 = *v35;
            v38 = v35[1];
            v39 = v35[2];
            v40 = *(v36 + 40);
            *v35 = *(v36 + 24);
            v35[2] = v40;
            *(v36 + 24) = v37;
            *(v36 + 32) = v38;
            *(v36 + 40) = v39;
          }

          v33 = (v33 + 1);
          v24 -= 24;
          v32 += 24;
          v41 = v33 < v6;
          v6 = (v6 - 1);
        }

        while (v41);
      }

      v8 = v23;
      v6 = v109;
    }

    else
    {
      v8 = v23;
      v6 = v109;
      v10 = v112;
    }
  }

  v42 = a3[1];
  if (v8 >= v42)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_138;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_58;
  }

  v43 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_140;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v10)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v8 == v43)
  {
    goto LABEL_58;
  }

  v110 = v6;
  v44 = *a3;
  v45 = *a3 + 24 * v8 - 24;
  v113 = v10;
  v115 = v43;
  v46 = v10 - v8;
LABEL_44:
  v117 = v8;
  v47 = v44 + 24 * v8;
  v5 = *v47;
  v48 = *(v47 + 8);
  v49 = *(v47 + 16);
  v50 = v46;
  v51 = v45;
  while (1)
  {
    v52 = *(v51 + 16);
    v53 = v5 == *v51 && v48 == *(v51 + 8);
    if (v53 || (v54 = *v51, v55 = *(v51 + 8), result = sub_248731880(), (result & 1) != 0))
    {
      if (v49 >= v52)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = sub_248731880();
      if ((result & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (!v44)
    {
      break;
    }

    v5 = *(v51 + 24);
    v48 = *(v51 + 32);
    v49 = *(v51 + 40);
    v56 = *(v51 + 16);
    *(v51 + 24) = *v51;
    *(v51 + 40) = v56;
    *v51 = v5;
    *(v51 + 8) = v48;
    *(v51 + 16) = v49;
    v51 -= 24;
    if (__CFADD__(v50++, 1))
    {
LABEL_43:
      ++v8;
      v45 += 24;
      --v46;
      if (v117 + 1 != v115)
      {
        goto LABEL_44;
      }

      v8 = v115;
      v6 = v110;
      v9 = v118;
      v10 = v113;
LABEL_58:
      if (v8 < v10)
      {
        goto LABEL_137;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2486C45C0(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v59 = *(v9 + 2);
      v58 = *(v9 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        result = sub_2486C45C0((v58 > 1), v59 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v60;
      v61 = &v9[16 * v59];
      *(v61 + 4) = v10;
      *(v61 + 5) = v8;
      v62 = *v111;
      if (!*v111)
      {
        goto LABEL_147;
      }

      if (v59)
      {
        while (1)
        {
          v5 = v60 - 1;
          if (v60 >= 4)
          {
            break;
          }

          if (v60 == 3)
          {
            v63 = *(v9 + 4);
            v64 = *(v9 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_78:
            if (v66)
            {
              goto LABEL_126;
            }

            v79 = &v9[16 * v60];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_129;
            }

            v85 = &v9[16 * v5 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_132;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_133;
            }

            if (v83 + v88 >= v65)
            {
              if (v65 < v88)
              {
                v5 = v60 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v89 = &v9[16 * v60];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_92:
          if (v84)
          {
            goto LABEL_128;
          }

          v92 = &v9[16 * v5];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_131;
          }

          if (v95 < v83)
          {
            goto LABEL_3;
          }

LABEL_99:
          v100 = v5 - 1;
          if (v5 - 1 >= v60)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*a3)
          {
            goto LABEL_144;
          }

          v101 = *&v9[16 * v100 + 32];
          v102 = *&v9[16 * v5 + 40];
          sub_2486FCC4C((*a3 + 24 * v101), (*a3 + 24 * *&v9[16 * v5 + 32]), *a3 + 24 * v102, v62);
          if (v6)
          {
          }

          if (v102 < v101)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2486FD038(v9);
          }

          if (v100 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v9[16 * v100];
          *(v103 + 4) = v101;
          *(v103 + 5) = v102;
          result = sub_2486FCFAC(v5);
          v60 = *(v9 + 2);
          if (v60 <= 1)
          {
            goto LABEL_3;
          }
        }

        v67 = &v9[16 * v60 + 32];
        v68 = *(v67 - 64);
        v69 = *(v67 - 56);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_124;
        }

        v72 = *(v67 - 48);
        v71 = *(v67 - 40);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_125;
        }

        v74 = &v9[16 * v60];
        v76 = *v74;
        v75 = *(v74 + 1);
        v73 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v73)
        {
          goto LABEL_127;
        }

        v73 = __OFADD__(v65, v77);
        v78 = v65 + v77;
        if (v73)
        {
          goto LABEL_130;
        }

        if (v78 >= v70)
        {
          v96 = &v9[16 * v5 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v73 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v73)
          {
            goto LABEL_134;
          }

          if (v65 < v99)
          {
            v5 = v60 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_109;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_2486FCC4C(double *__src, double *__dst, unint64_t a3, double *a4)
{
  v49 = a3;
  v4 = __dst;
  v5 = __dst - __src;
  v6 = (__dst - __src) / 24;
  v7 = a3 - __dst;
  v8 = (a3 - __dst) / 24;
  if (v6 >= v8)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[3 * v8] <= a4)
    {
      memmove(a4, __dst, 24 * v8);
    }

    v12 = &v13[3 * v8];
    if (v7 < 24 || v4 <= __src)
    {
LABEL_45:
      v26 = v4;
      goto LABEL_46;
    }

    v48 = v13;
    while (1)
    {
      v27 = 0;
      v28 = v12;
      v46 = v4 - 3;
      while (1)
      {
        v29 = &v28[v27];
        v30 = &v28[v27 - 24];
        v31 = *&v28[v27 - 8];
        v32 = *(v4 - 1);
        if (*v30 != *(v4 - 3) || *&v28[v27 - 16] != *(v4 - 2))
        {
          v34 = *&v28[v27 - 24];
          v35 = *&v28[v27 - 16];
          v36 = *(v4 - 3);
          v37 = *(v4 - 2);
          v38 = v28;
          v39 = sub_248731880();
          v28 = v38;
          if ((v39 & 1) == 0)
          {
            break;
          }
        }

        if (v31 < v32)
        {
          goto LABEL_40;
        }

LABEL_38:
        if ((v49 + v27) != v29)
        {
          v41 = v49 + v27 - 24;
          v42 = *v30;
          *(v41 + 16) = *(v30 + 2);
          *v41 = v42;
        }

        v27 -= 24;
        v12 = &v28[v27];
        v13 = v48;
        if (&v28[v27] <= v48)
        {
          goto LABEL_45;
        }
      }

      v40 = sub_248731880();
      v28 = v38;
      if ((v40 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_40:
      v26 = (v4 - 3);
      if ((v49 + v27) != v4)
      {
        v43 = *v46;
        *(v49 + v27 - 8) = *(v4 - 1);
        *(v49 + v27 - 24) = v43;
      }

      v49 = v49 + v27 - 24;
      v12 = &v28[v27];
      v13 = v48;
      if (&v28[v27] > v48)
      {
        v4 -= 3;
        if (v46 > __src)
        {
          continue;
        }
      }

      v12 = &v28[v27];
      goto LABEL_46;
    }
  }

  v9 = __src;
  if (a4 != __src || &__src[3 * v6] <= a4)
  {
    v10 = a4;
    memmove(a4, __src, 24 * v6);
    v9 = __src;
    a4 = v10;
  }

  v12 = &a4[3 * v6];
  v13 = a4;
  if (v5 >= 24 && v4 < v49)
  {
    do
    {
      v14 = v4[2];
      v15 = v13[2];
      v16 = *v4 == *v13 && *(v4 + 1) == *(v13 + 1);
      if (v16 || (v17 = *v4, v18 = *(v4 + 1), v19 = *v13, v20 = *(v13 + 1), v21 = v9, v22 = sub_248731880(), v9 = v21, (v22 & 1) != 0))
      {
        if (v14 >= v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v24 = sub_248731880();
        v9 = v21;
        if ((v24 & 1) == 0)
        {
LABEL_17:
          v23 = v13;
          v16 = v9 == v13;
          v13 += 3;
          if (v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          v25 = *v23;
          v9[2] = v23[2];
          *v9 = v25;
          goto LABEL_19;
        }
      }

      v23 = v4;
      v16 = v9 == v4;
      v4 += 3;
      if (!v16)
      {
        goto LABEL_18;
      }

LABEL_19:
      v9 += 3;
    }

    while (v13 < v12 && v4 < v49);
  }

  v26 = v9;
LABEL_46:
  v44 = (v12 - v13) / 24;
  if (v26 != v13 || v26 >= &v13[3 * v44])
  {
    memmove(v26, v13, 24 * v44);
  }

  return 1;
}

uint64_t sub_2486FCFAC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2486FD038(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2486FD074(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2486FD1D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2486FD324(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2486FD448(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2486DA340(0, v2, 0);
  v3 = v28;
  v5 = -1 << *(a1 + 32);
  v26 = a1 + 64;
  result = sub_2487315C0();
  v7 = result;
  v8 = 0;
  v27 = *(a1 + 36);
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v26 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v7);

    a2(v13, v12, v14);

    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_2486DA340((v15 > 1), v16 + 1, 1);
    }

    *(v28 + 16) = v17;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v18 = *(v26 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 72 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_2486FDB94(v7, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_2486FDB94(v7, v27, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2486FD6A8()
{
  result = qword_27EEA64C0;
  if (!qword_27EEA64C0)
  {
    sub_248730970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA64C0);
  }

  return result;
}

uint64_t sub_2486FDB94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2486FDBF0()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t sub_2486FDC64()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

unint64_t sub_2486FDCA8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2486FE7F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL static EventUtils.isFeaturizedEventOfType(featurizedEvent:expectedEventType:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  return *(a1 + v4) == a2;
}

id EventUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_2486FDDD0()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2486FDE14()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2486FDE58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2486FDEB8()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_2486FDF0C()
{
  v1 = v0;
  sub_248731650();
  MEMORY[0x24C1D70A0](0x6D617473656D6954, 0xEB00000000203A70);
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
  swift_beginAccess();
  v3 = *(v1 + v2);
  sub_248731350();
  MEMORY[0x24C1D70A0](0x7420746E6576450ALL, 0xED0000203A657079);
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  MEMORY[0x24C1D70A0](v6);

  MEMORY[0x24C1D70A0](0x203A746E6576450ALL, 0xE800000000000000);
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v8 = [*(v1 + v7) debugDescription];
  v9 = sub_248730FF0();
  v11 = v10;

  MEMORY[0x24C1D70A0](v9, v11);

  return 0;
}

id sub_2486FE130(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2486FE180(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2486FE1DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s26DeepThoughtBiomeFoundation12EventFactoryC4from9timestamp03rawE0AA0E0CSgSd_So11BMEventBaseCtFZ_0(void *a1, double a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v4 = 3;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v4 = 4;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v4 = 6;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v4 = 7;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v4 = 8;
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v4 = 9;
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v4 = 10;
                    }

                    else
                    {
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v4 = 11;
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v4 = 12;
                        }

                        else
                        {
                          objc_opt_self();
                          if (swift_dynamicCastObjCClass())
                          {
                            v4 = 13;
                          }

                          else
                          {
                            objc_opt_self();
                            if (swift_dynamicCastObjCClass())
                            {
                              v4 = 14;
                            }

                            else
                            {
                              objc_opt_self();
                              if (swift_dynamicCastObjCClass())
                              {
                                v4 = 15;
                              }

                              else
                              {
                                objc_opt_self();
                                if (swift_dynamicCastObjCClass())
                                {
                                  v4 = 16;
                                }

                                else
                                {
                                  objc_opt_self();
                                  if (swift_dynamicCastObjCClass())
                                  {
                                    v4 = 18;
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    result = swift_dynamicCastObjCClass();
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v4 = 19;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v6 = type metadata accessor for Event();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp] = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType] = v4;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody] = a1;
  v9.receiver = v7;
  v9.super_class = v6;
  v8 = a1;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_2486FE7F0(unint64_t result)
{
  if (result > 0x17)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2486FE870()
{
  result = qword_27EEA65F8;
  if (!qword_27EEA65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA65F8);
  }

  return result;
}

unint64_t sub_2486FE8C8()
{
  result = qword_27EEA6600;
  if (!qword_27EEA6600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6608, &qword_2487350F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6600);
  }

  return result;
}

void sub_2486FEA30(void (*a1)(uint64_t, unint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = (&v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v113 = &v111 - v9;
  v10 = sub_2487309B0();
  v116 = *(v10 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v114 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents;
  swift_beginAccess();
  v119 = a1;
  v115 = v14;
  v15 = *(a1 + v14);
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_73;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v112 = v7;
  v117 = v10;

  v10 = MEMORY[0x277D84F90];
  if (v17)
  {
    v18 = 0;
    v7 = off_278F52000;
    do
    {
      v118 = v10;
      v10 = v18;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x24C1D7600](v10, v15);
        }

        else
        {
          if (v10 >= *(v16 + 16))
          {
            goto LABEL_70;
          }

          v19 = *(v15 + 8 * v10 + 32);
        }

        v20 = v19;
        v18 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v21 = [v19 requestReceivedTier1];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 textToSynthesize];

          if (v23)
          {
            break;
          }
        }

        ++v10;
        if (v18 == v17)
        {
          v10 = v118;
          goto LABEL_22;
        }
      }

      v24 = sub_248730FF0();
      v26 = v25;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v118 = sub_2486C44B4(0, *(v118 + 2) + 1, 1, v118);
      }

      v29 = *(v118 + 2);
      v28 = *(v118 + 3);
      if (v29 >= v28 >> 1)
      {
        v118 = sub_2486C44B4((v28 > 1), v29 + 1, 1, v118);
      }

      v30 = v118;
      *(v118 + 2) = v29 + 1;
      v31 = &v30[16 * v29];
      *(v31 + 4) = v24;
      *(v31 + 5) = v26;
      v10 = v30;
    }

    while (v18 != v17);
  }

LABEL_22:

  if (*(v10 + 16))
  {
    v32 = *(v10 + 32);
    v33 = *(v10 + 40);

    v123 = MEMORY[0x277D837D0];
    v121 = v32;
    v122 = v33;
    swift_beginAccess();

    sub_2486C6800(&v121, 0xD000000000000014, 0x8000000248739370);
    swift_endAccess();
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v34 = sub_248730DF0();
    __swift_project_value_buffer(v34, qword_28150F088);

    v10 = v119;
    v35 = sub_248730DD0();
    v36 = sub_2487313C0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v121 = v38;
      *v37 = 136315394;
      v39 = sub_2486D3010(v32, v33, &v121);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2080;
      v40 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v42 = v116;
      v41 = v117;
      v43 = v114;
      (*(v116 + 16))(v114, v10 + v40, v117);
      v44 = sub_248730980();
      v46 = v45;
      (*(v42 + 8))(v43, v41);
      v10 = sub_2486D3010(v44, v46, &v121);

      *(v37 + 14) = v10;
      _os_log_impl(&dword_2486BF000, v35, v36, "Extracted %s for turn: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v38, -1, -1);
      MEMORY[0x24C1D8100](v37, -1, -1);
    }

    else
    {
    }

    goto LABEL_33;
  }

  if (qword_28150EE60 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v47 = sub_248730DF0();
    __swift_project_value_buffer(v47, qword_28150F088);
    v48 = v119;
    v49 = sub_248730DD0();
    v50 = sub_2487313C0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v121 = v10;
      *v51 = 136315138;
      v52 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v54 = v116;
      v53 = v117;
      v55 = v114;
      (*(v116 + 16))(v114, &v48[v52], v117);
      v56 = sub_248730980();
      v58 = v57;
      (*(v54 + 8))(v55, v53);
      v59 = sub_2486D3010(v56, v58, &v121);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_2486BF000, v49, v50, "Failed to extract textToSynthesize for turn: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1D8100](v10, -1, -1);
      MEMORY[0x24C1D8100](v51, -1, -1);
    }

LABEL_33:
    v60 = *(v119 + v115);
    v121 = MEMORY[0x277D84F90];
    if (v60 >> 62)
    {
      v61 = sub_248731790();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v61)
    {
      v16 = 0;
      v7 = (v60 & 0xC000000000000001);
      v15 = MEMORY[0x277D84F90];
LABEL_37:
      v62 = v16;
      while (1)
      {
        if (v7)
        {
          v63 = MEMORY[0x24C1D7600](v62, v60);
        }

        else
        {
          if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v63 = *(v60 + 8 * v62 + 32);
        }

        v10 = v63;
        v16 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v64 = [v63 requestReceivedTier1];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 linkId];

          if (v66)
          {
            MEMORY[0x24C1D71A0]();
            if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v10 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_248731260();
            }

            sub_2487312A0();
            v15 = v121;
            if (v16 != v61)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }
        }

        else
        {
        }

        ++v62;
        if (v16 == v61)
        {
          goto LABEL_53;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      v17 = sub_248731790();
      goto LABEL_3;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_53:

    if (!(v15 >> 62))
    {
      v67 = v117;
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_55;
    }

    v99 = sub_248731790();
    v67 = v117;
    if (!v99)
    {
      break;
    }

LABEL_55:
    if ((v15 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x24C1D7600](0, v15);
      goto LABEL_58;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v68 = *(v15 + 32);
LABEL_58:
      v69 = v68;

      if (!v69)
      {
        goto LABEL_77;
      }

      v70 = [v69 toSafeNSUUID];
      v71 = v116;
      if (v70)
      {
        v72 = v112;
        v73 = v70;
        sub_248730990();

        v74 = 0;
      }

      else
      {
        v74 = 1;
        v72 = v112;
      }

      (*(v71 + 56))(v72, v74, 1, v67);
      v75 = v113;
      sub_2486C98BC(v72, v113);
      if ((*(v71 + 48))(v75, 1, v67) == 1)
      {
        sub_2486C992C(v75);
        goto LABEL_77;
      }

      v76 = sub_248730980();
      v78 = v77;
      v79 = *(v71 + 8);
      v79(v75, v67);
      v123 = MEMORY[0x277D837D0];
      v121 = v76;
      v122 = v78;
      swift_beginAccess();

      sub_2486C6800(&v121, 0x6B6E696C2E535454, 0xEA00000000006449);
      swift_endAccess();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v80 = sub_248730DF0();
      __swift_project_value_buffer(v80, qword_28150F088);
      v81 = v119;

      v82 = sub_248730DD0();
      v83 = sub_2487313C0();

      if (!os_log_type_enabled(v82, v83))
      {

        goto LABEL_82;
      }

      v84 = swift_slowAlloc();
      v119 = v79;
      v85 = v84;
      v86 = swift_slowAlloc();
      v87 = v76;
      v88 = v86;
      v120[0] = v86;
      *v85 = 136315394;
      v89 = sub_2486D3010(v87, v78, v120);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      v90 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v91 = v117;
      v92 = &v81[v90];
      v93 = v114;
      (*(v116 + 16))(v114, v92, v117);
      v94 = sub_248730980();
      v96 = v95;
      v119(v93, v91);
      v97 = sub_2486D3010(v94, v96, v120);

      *(v85 + 14) = v97;
      _os_log_impl(&dword_2486BF000, v82, v83, "Extracted %s for turn: %s", v85, 0x16u);
      swift_arrayDestroy();
      v98 = v88;
LABEL_81:
      MEMORY[0x24C1D8100](v98, -1, -1);
      MEMORY[0x24C1D8100](v85, -1, -1);
      goto LABEL_82;
    }

    __break(1u);
LABEL_85:
    swift_once();
  }

  v69 = 0;
LABEL_77:
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v100 = sub_248730DF0();
  __swift_project_value_buffer(v100, qword_28150F088);
  v101 = v119;
  v82 = sub_248730DD0();
  v102 = sub_2487313C0();

  if (os_log_type_enabled(v82, v102))
  {
    v85 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v120[0] = v103;
    *v85 = 136315138;
    v104 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    v105 = v116;
    v106 = v114;
    (*(v116 + 16))(v114, &v101[v104], v67);
    v107 = sub_248730980();
    v109 = v108;
    (*(v105 + 8))(v106, v67);
    v110 = sub_2486D3010(v107, v109, v120);

    *(v85 + 4) = v110;
    _os_log_impl(&dword_2486BF000, v82, v102, "Failed to extract linkId for turn: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    v98 = v103;
    goto LABEL_81;
  }

LABEL_82:
}

id TTSIntraTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSIntraTurnFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTSIntraTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MediaNowPlayingFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaNowPlayingFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaNowPlayingFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486FF95C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 album];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v55 = 0;
    }

    v53 = v9;
    v54 = v11;
    v56 = v12;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000015, 0x8000000248739B90);
    swift_endAccess();
    v13 = [v5 artist];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248730FF0();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v55 = 0;
    }

    v53 = v15;
    v54 = v17;
    v56 = v18;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000016, 0x8000000248739B70);
    swift_endAccess();
    v19 = [v5 title];
    if (v19)
    {
      v20 = v19;
      v21 = sub_248730FF0();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v55 = 0;
    }

    v53 = v21;
    v54 = v23;
    v56 = v24;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000015, 0x8000000248739BF0);
    swift_endAccess();
    v25 = [v5 genre];
    if (v25)
    {
      v26 = v25;
      v27 = sub_248730FF0();
      v29 = v28;

      v30 = MEMORY[0x277D837D0];
    }

    else
    {
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v55 = 0;
    }

    v53 = v27;
    v54 = v29;
    v56 = v30;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000015, 0x8000000248739B50);
    swift_endAccess();
    v31 = [v5 bundleID];
    if (v31)
    {
      v32 = v31;
      v33 = sub_248730FF0();
      v35 = v34;

      v36 = MEMORY[0x277D837D0];
    }

    else
    {
      v33 = 0;
      v35 = 0;
      v36 = 0;
      v55 = 0;
    }

    v37 = MEMORY[0x277D837D0];
    v53 = v33;
    v54 = v35;
    v56 = v36;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000018, 0x8000000248739BD0);
    swift_endAccess();
    v38 = [v5 mediaType];
    if (v38)
    {
      v39 = v38;
      v40 = sub_248730FF0();
      v42 = v41;

      v43 = MEMORY[0x277D837D0];
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v55 = 0;
    }

    v53 = v40;
    v54 = v42;
    v56 = v43;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000019, 0x8000000248739BB0);
    swift_endAccess();
    v44 = [v5 playbackState];
    type metadata accessor for BMMediaNowPlayingPlaybackState(0);
    v56 = v45;
    LODWORD(v53) = v44;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD00000000000001DLL, 0x8000000248739C50);
    swift_endAccess();
    [v5 playbackState];
    v46 = BMMediaNowPlayingPlaybackStateAsString();
    v47 = sub_248730FF0();
    v49 = v48;

    v56 = v37;
    v53 = v47;
    v54 = v49;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000025, 0x8000000248739C70);
    swift_endAccess();
    v50 = [v5 elapsed];
    v51 = MEMORY[0x277D84CC0];
    v56 = MEMORY[0x277D84CC0];
    LODWORD(v53) = v50;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000017, 0x8000000248739C10);
    swift_endAccess();
    v52 = [v5 duration];
    v56 = v51;
    LODWORD(v53) = v52;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000018, 0x8000000248739C30);
    swift_endAccess();
  }
}

id MediaNowPlayingFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaNowPlayingFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2486FFF34(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2487309B0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150EE60 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v10 = sub_248730DF0();
    v11 = __swift_project_value_buffer(v10, qword_28150F088);
    v12 = a1;
    v151 = v11;
    v13 = sub_248730DD0();
    v14 = sub_2487313B0();

    v15 = os_log_type_enabled(v13, v14);
    v155 = v12;
    v147 = v5;
    v146 = v9;
    v152 = v2;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v162 = v17;
      *v16 = 136315138;
      v18 = sub_24870FDD8();
      v20 = sub_2486D3010(v18, v19, &v162);

      *(v16 + 4) = v20;
      v12 = v155;
      _os_log_impl(&dword_2486BF000, v13, v14, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1D8100](v17, -1, -1);
      MEMORY[0x24C1D8100](v16, -1, -1);
    }

    v21 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents;
    swift_beginAccess();
    v154 = v21;
    v22 = *&v21[v12];
    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v142 = *&v21[v12];
      }

      v23 = sub_248731790();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = off_278F52000;
    v148 = v4;
    if (v23)
    {
      if (v23 < 1)
      {
        __break(1u);
        return;
      }

      v156 = 0;
      v24 = 0;
      v25 = 0.0;
      v159 = 1;
      v160 = 2;
      v157 = 1;
      v158 = 1;
      v26 = 0.0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x24C1D7600](v24, v22);
        }

        else
        {
          v27 = *(v22 + 8 * v24 + 32);
        }

        v28 = v27;
        v29 = [v27 endpointDetected];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 endpointFeaturesAtEndpoint];

          if (v31)
          {
            [v31 clientSilenceProbability];
            v26 = v32;

            v157 = 0;
          }
        }

        v33 = [v28 endpointDetected];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 endpointFeaturesAtEndpoint];

          if (v35)
          {
            [v35 endOfSentenceLikelihood];
            v25 = v36;

            v158 = 0;
          }
        }

        v37 = [v28 unintendedResponseSuppressionExecutionContext];
        if (v37)
        {
          v38 = v37;
          v39 = [v37 startedOrChanged];

          if (v39)
          {
            v40 = [v39 trailingSilenceDurationInNs];

            v159 = 0;
            v156 = v40 / 0xF4240;
          }
        }

        v41 = [v28 voiceTriggerContext];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 ended];

          if (v43)
          {
            v44 = [v43 voiceTriggerEventInfo];
            if (v44)
            {
              v45 = v44;
              v160 = [v44 satTriggered];
            }

            else
            {

              v160 = 2;
            }
          }
        }

        v46 = [v28 voiceTriggerContext];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 failed];

          if (v48)
          {
            v49 = [v48 voiceTriggerEventInfo];
            if (v49)
            {
              v50 = v49;
              v160 = [v49 satTriggered];
            }

            else
            {

              v160 = 2;
            }
          }
        }

        v51 = [v28 voiceTriggerContext];
        if (v51 && (v52 = v51, v53 = [v51 cancelled], v52, v53))
        {
          v54 = [v53 voiceTriggerEventInfo];
          if (v54)
          {
            v55 = v54;
            v160 = [v54 satTriggered];
          }

          else
          {

            v160 = 2;
          }
        }

        else
        {
        }

        ++v24;
      }

      while (v23 != v24);
    }

    else
    {
      v156 = 0;
      v25 = 0.0;
      v159 = 1;
      v160 = 2;
      v157 = 1;
      v158 = 1;
      v26 = 0.0;
    }

    v56 = *&v154[v155];
    v4 = v56 & 0xFFFFFFFFFFFFFF8;
    if (v56 >> 62)
    {
      if (v56 < 0)
      {
        v143 = *&v154[v155];
      }

      v9 = sub_248731790();
    }

    else
    {
      v9 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v57 = 0;
      v2 = v56 & 0xC000000000000001;
      v58 = MEMORY[0x277D84F90];
      do
      {
        v153 = v58;
        a1 = v57;
        while (1)
        {
          if (v2)
          {
            v59 = MEMORY[0x24C1D7600](a1, v56);
          }

          else
          {
            if (a1 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_159;
            }

            v59 = *(v56 + 8 * a1 + 32);
          }

          v60 = v59;
          v57 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v61 = [v59 unintendedResponseSuppressionExecutionContext];
          if (v61)
          {
            v62 = v61;
            v63 = [v61 ended];

            if (v63)
            {
              break;
            }
          }

          ++a1;
          if (v57 == v9)
          {
            v58 = v153;
            goto LABEL_62;
          }
        }

        [v63 score];
        v65 = v64;

        v66 = v153;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_2486C5DD4(0, *(v66 + 16) + 1, 1, v66);
        }

        v69 = *(v66 + 16);
        v68 = *(v66 + 24);
        v70 = v66;
        if (v69 >= v68 >> 1)
        {
          v70 = sub_2486C5DD4(v68 > 1, v69 + 1, 1, v66);
        }

        *(v70 + 16) = v69 + 1;
        v58 = v70;
        *(v70 + 4 * v69 + 32) = v65;
      }

      while (v57 != v9);
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
    }

LABEL_62:

    v150 = *(v58 + 16);
    if (v150)
    {
      v71 = *(v58 + 32);

      v72 = v71;
    }

    else
    {

      v71 = 0.0;
      v72 = -1.0;
    }

    v73 = *&v154[v155];
    v4 = v73 & 0xFFFFFFFFFFFFFF8;
    if (v73 >> 62)
    {
      if (v73 < 0)
      {
        v144 = *&v154[v155];
      }

      v9 = sub_248731790();
    }

    else
    {
      v9 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v74 = 0;
      v2 = v73 & 0xC000000000000001;
      v153 = MEMORY[0x277D84F90];
LABEL_69:
      a1 = v74;
      while (1)
      {
        if (v2)
        {
          v75 = MEMORY[0x24C1D7600](a1, v73);
        }

        else
        {
          if (a1 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_161;
          }

          v75 = *(v73 + 8 * a1 + 32);
        }

        v76 = v75;
        v74 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v77 = [v75 unintendedResponseSuppressionExecutionContext];
        if (v77)
        {
          v78 = v77;
          v79 = [v77 ended];

          if (v79)
          {
            [v79 threshold];
            v81 = v80;

            v82 = swift_isUniquelyReferenced_nonNull_native();
            if (v82)
            {
              v83 = v153;
            }

            else
            {
              v83 = sub_2486C5DD4(0, *(v153 + 16) + 1, 1, v153);
            }

            v85 = *(v83 + 16);
            v84 = *(v83 + 24);
            if (v85 >= v84 >> 1)
            {
              v83 = sub_2486C5DD4(v84 > 1, v85 + 1, 1, v83);
            }

            *(v83 + 16) = v85 + 1;
            v153 = v83;
            *(v83 + 4 * v85 + 32) = v81;
            if (v74 != v9)
            {
              goto LABEL_69;
            }

            goto LABEL_87;
          }
        }

        ++a1;
        if (v74 == v9)
        {
          goto LABEL_87;
        }
      }

LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v153 = MEMORY[0x277D84F90];
LABEL_87:

    v86 = *(v153 + 16);
    if (v86)
    {
      v87 = *(v153 + 32);

      v88 = v87;
    }

    else
    {

      v87 = 0.0;
      v88 = -1.0;
    }

    v89 = *&v154[v155];
    v4 = v89 & 0xFFFFFFFFFFFFFF8;
    if (v89 >> 62)
    {
      if (v89 < 0)
      {
        v145 = *&v154[v155];
      }

      v9 = sub_248731790();
    }

    else
    {
      v9 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v9)
    {
      break;
    }

    v90 = 0;
    v2 = v89 & 0xC000000000000001;
    v154 = MEMORY[0x277D84F90];
    v5 = off_278F52000;
    v149 = v86;
LABEL_94:
    a1 = v90;
    while (1)
    {
      if (v2)
      {
        v91 = MEMORY[0x24C1D7600](a1, v89);
      }

      else
      {
        if (a1 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_163;
        }

        v91 = *(v89 + 8 * a1 + 32);
      }

      v92 = v91;
      v90 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v93 = [v91 assistantDaemonAudioRecordingContext];
      if (v93)
      {
        v94 = v93;
        v95 = [v93 startedOrChanged];

        if (v95)
        {
          v96 = [v95 audioInputRoute];

          v97 = swift_isUniquelyReferenced_nonNull_native();
          if (v97)
          {
            v98 = v154;
          }

          else
          {
            v98 = sub_2486C4A20(0, *(v154 + 2) + 1, 1, v154);
          }

          v100 = *(v98 + 2);
          v99 = *(v98 + 3);
          if (v100 >= v99 >> 1)
          {
            v98 = sub_2486C4A20((v99 > 1), v100 + 1, 1, v98);
          }

          *(v98 + 2) = v100 + 1;
          v154 = v98;
          *&v98[4 * v100 + 32] = v96;
          v86 = v149;
          if (v90 != v9)
          {
            goto LABEL_94;
          }

          goto LABEL_113;
        }
      }

      ++a1;
      if (v90 == v9)
      {
        v86 = v149;
        goto LABEL_113;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

  v154 = MEMORY[0x277D84F90];
LABEL_113:

  v101 = *(v154 + 2);
  if (v101)
  {
    v102 = *(v154 + 8);

    v154 = sub_248731500();
    v104 = v103;
  }

  else
  {

    v154 = 0;
    v104 = 0;
    v102 = 0;
  }

  v105 = v150;
  if (v150)
  {
    *&v162 = v71;
    v105 = MEMORY[0x277D83A90];
  }

  else
  {
    v162 = 0;
    v163 = 0;
    v164 = 0;
  }

  v165 = v105;
  swift_beginAccess();
  sub_2486C6800(&v162, 0x2E534552552E484DLL, 0xED000065726F6373);
  if (v86)
  {
    *&v162 = v87;
    v106 = MEMORY[0x277D83A90];
  }

  else
  {
    v106 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
  }

  v165 = v106;
  sub_2486C6800(&v162, 0xD000000000000011, 0x8000000248739440);
  if (v157)
  {
    v107 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
  }

  else
  {
    *&v162 = v26;
    v107 = MEMORY[0x277D83A90];
  }

  v165 = v107;
  sub_2486C6800(&v162, 0xD00000000000001BLL, 0x8000000248739460);
  if (v158)
  {
    v108 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
  }

  else
  {
    *&v162 = v25;
    v108 = MEMORY[0x277D83A90];
  }

  v165 = v108;
  sub_2486C6800(&v162, 0xD00000000000001ALL, 0x8000000248739480);
  if (v159)
  {
    v109 = 0;
    v110 = 0;
    v163 = 0;
    v164 = 0;
  }

  else
  {
    v110 = MEMORY[0x277D84D38];
    v109 = v156;
  }

  v162 = v109;
  v165 = v110;
  sub_2486C6800(&v162, 0xD000000000000023, 0x8000000248739410);
  if (v160 == 2)
  {
    v111 = 0;
    v162 = 0;
    v163 = 0;
    v112 = 0xE300000000000000;
    v164 = 0;
  }

  else
  {
    LOBYTE(v162) = v160 & 1;
    v112 = 0xE100000000000000;
    v111 = MEMORY[0x277D839B0];
  }

  v113 = v160;
  v165 = v111;
  sub_2486C6800(&v162, 0x72547461732E484DLL, 0xEF64657265676769);
  v114 = 48;
  if (v113)
  {
    v114 = 49;
  }

  v153 = v114;
  v115 = 0;
  if (v101)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
    LODWORD(v162) = v102;
  }

  else
  {
    v162 = 0;
    v163 = 0;
    v164 = 0;
  }

  v165 = v115;
  sub_2486C6800(&v162, 0xD000000000000012, 0x80000002487394A0);
  if (v104)
  {
    v116 = MEMORY[0x277D837D0];
    v117 = v104;
    v118 = v104;
    v119 = v154;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v116 = 0;
    v164 = 0;
    v117 = 0xE300000000000000;
  }

  v162 = v119;
  v163 = v118;
  v165 = v116;

  sub_2486C6800(&v162, 0xD00000000000001ALL, 0x80000002487394C0);
  swift_endAccess();
  v120 = v155;

  v121 = sub_248730DD0();
  v122 = sub_2487313C0();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = v160;
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v161[0] = v125;
    *v124 = 134219778;
    *(v124 + 4) = v72;
    *(v124 + 12) = 2048;
    *(v124 + 14) = v88;
    *(v124 + 22) = 2048;
    v126 = v26;
    v127 = v158;
    if (v157)
    {
      v126 = -1.0;
    }

    *(v124 + 24) = v126;
    *(v124 + 32) = 2048;
    v128 = v25;
    if (v127)
    {
      v128 = -1.0;
    }

    *(v124 + 34) = v128;
    *(v124 + 42) = 2048;
    v129 = v156;
    if (v159)
    {
      v129 = 0;
    }

    *(v124 + 44) = v129;
    if (v123 == 2)
    {
      v130 = 4935253;
    }

    else
    {
      v130 = v153;
    }

    *(v124 + 52) = 2080;
    v131 = sub_2486D3010(v130, v112, v161);

    *(v124 + 54) = v131;
    *(v124 + 62) = 2080;
    if (v104)
    {
      v132 = v154;
    }

    else
    {
      v132 = 7104878;
    }

    v133 = sub_2486D3010(v132, v117, v161);

    *(v124 + 64) = v133;
    *(v124 + 72) = 2080;
    v134 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    v135 = v147;
    v136 = v146;
    v137 = v148;
    (v147[2])(v146, &v120[v134], v148);
    sub_24870111C();
    v138 = sub_248731850();
    v140 = v139;
    (v135[1])(v136, v137);
    v141 = sub_2486D3010(v138, v140, v161);

    *(v124 + 74) = v141;
    _os_log_impl(&dword_2486BF000, v121, v122, "Extracted MH Features: URES (score: %f, threshold: %f),\nclientSilenceProbability: %f, endOfSentenceLikelihood: %f,\ntrailingSilenceMs: %llu,\nisSatTriggeredStr: %s,\naudioInputRouteStr: %s for turn %s)", v124, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v125, -1, -1);
    MEMORY[0x24C1D8100](v124, -1, -1);
  }

  else
  {
  }
}

id MHFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MHFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MHFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MHFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MHFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2487010CC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2487010EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24870111C()
{
  result = qword_27EEA6610;
  if (!qword_27EEA6610)
  {
    sub_2487309B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6610);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall TimeBasedDictionary.getValue(key:)(Swift::Int key)
{
  (*(v1 + 16))();
  swift_getAssociatedTypeWitness();
  sub_2487312D0();
  sub_248730F60();

  v3 = v4;
  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

Swift::Bool __swiftcall TimeBasedDictionary.exists(key:)(Swift::Int key)
{
  (*(v1 + 16))();
  swift_getAssociatedTypeWitness();
  sub_2487312D0();
  sub_248730F60();

  if (v3)
  {
  }

  return v3 != 0;
}

DeepThoughtBiomeFoundation::FilterOption_optional __swiftcall FilterOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248731820();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FilterOption.rawValue.getter()
{
  v1 = 0x7265746661;
  if (*v0 != 1)
  {
    v1 = 0x6E4165726F666562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F666562;
  }
}

uint64_t sub_2487013D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7265746661;
  if (v2 != 1)
  {
    v4 = 0x6E4165726F666562;
    v3 = 0xEE00726574664164;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65726F666562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7265746661;
  if (*a2 != 1)
  {
    v8 = 0x6E4165726F666562;
    v7 = 0xEE00726574664164;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65726F666562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248731880();
  }

  return v11 & 1;
}

uint64_t sub_2487014E0()
{
  v1 = *v0;
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

uint64_t sub_248701588()
{
  *v0;
  *v0;
  sub_2487310D0();
}

uint64_t sub_24870161C()
{
  v1 = *v0;
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

void sub_2487016CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7265746661;
  if (v2 != 1)
  {
    v5 = 0x6E4165726F666562;
    v4 = 0xEE00726574664164;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65726F666562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TimeBasedDictionary.keys()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  swift_getAssociatedTypeWitness();
  sub_2487312D0();
  sub_248730F40();
  swift_getWitnessTable();
  return sub_2487312E0();
}

unint64_t sub_248701800()
{
  result = qword_27EEA6618;
  if (!qword_27EEA6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6618);
  }

  return result;
}

uint64_t sub_2487018F0@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v9, v12);
    a2(v9, v12);
    v5 = *(&v9[0] + 1);
    if (*(&v9[0] + 1) >> 60 == 15)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      result = sub_248702D3C(*&v9[0], v5);
      v7 = 0;
      v5 = 0;
      v8 = 0;
      a3[2] = 0;
    }

    else
    {
      v7 = *&v9[0];
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      v8 = MEMORY[0x277CC9318];
    }

    *a3 = v7;
    a3[1] = v5;
    a3[3] = v8;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = sub_2486C7940(v9, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_248701A08@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X2>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v24 - v15;
  sub_2486C5B68(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (!swift_dynamicCast())
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v20 = &unk_27EEA6628;
    v21 = &unk_248735400;
    v19 = v24;
    goto LABEL_5;
  }

  sub_2486CD01C(v24, v27);
  a2(v27);
  v17 = a5(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    v19 = v16;
    v20 = a3;
    v21 = a4;
LABEL_5:
    result = sub_2486C7940(v19, v20, v21);
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  *(a6 + 24) = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
  (*(v18 + 32))(boxed_opaque_existential_0, v16, v17);
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_248701BD8@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v9, v12);
    a2(v9, v12);
    v5 = *(&v9[0] + 1);
    if (*(&v9[0] + 1))
    {
      v6 = *&v9[0];
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      v8 = MEMORY[0x277D837D0];
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      v6 = 0;
      v8 = 0;
      a3[2] = 0;
    }

    *a3 = v6;
    a3[1] = v5;
    a3[3] = v8;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = sub_2486C7940(v9, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_248701CD8@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v8, v11);
    a2(v8, v11);
    if (BYTE8(v8[0]))
    {
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v6 = 0;
      a3[1] = 0;
      a3[2] = 0;
      v7 = 0;
    }

    else
    {
      v7 = *&v8[0];
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v6 = MEMORY[0x277D839F8];
    }

    *a3 = v7;
    a3[3] = v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    result = sub_2486C7940(v8, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_248701DE0@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v8, v11);
    a2(v8, v11);
    if (BYTE8(v8[0]))
    {
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v6 = 0;
      v7 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v6 = *&v8[0];
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v7 = MEMORY[0x277D83B88];
    }

    *a3 = v6;
    a3[3] = v7;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    result = sub_2486C7940(v8, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

id sub_248701EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17[3] = swift_getObjectType();
  v17[0] = a2;

  swift_unknownObjectRetain();
  v6(v15, v17, a3);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8, v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_248731870();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v17);

  return v13;
}

void _s26DeepThoughtBiomeFoundation12SchemaMapperO03getcE014dataModelClassSo11BMSQLSchemaCAA19UnifiedSiriTurnBaseCm_tFZ_0(uint64_t a1)
{
  v1 = a1;
  v2 = (*(a1 + 184))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v79 = v1;
    v89 = MEMORY[0x277D84F90];
    sub_2487316D0();
    v4 = 0;
    v5 = (v2 + 64);
    v81 = v2;
    v82 = v3;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v21 = *(v5 - 4);
      v20 = *(v5 - 3);
      v23 = *(v5 - 2);
      v22 = *(v5 - 1);
      v24 = *v5;
      if (v24 <= 2)
      {
        if (*v5)
        {
          if (v24 == 1)
          {
            v37 = swift_allocObject();
            *(v37 + 16) = v23;
            *(v37 + 24) = v22;
            v38 = swift_allocObject();
            *(v38 + 16) = sub_248702CE8;
            *(v38 + 24) = v37;
            v39 = objc_allocWithZone(MEMORY[0x277CF1A80]);
            sub_248702B60(v21, v20, v23, v22, 1u);

            v40 = sub_248730FC0();
            v87 = sub_248702CF0;
            v88 = v38;
            aBlock = MEMORY[0x277D85DD0];
            v84 = 1107296256;
            v85 = sub_248701EE4;
            v86 = &block_descriptor_48_0;
            v41 = _Block_copy(&aBlock);

            v42 = [v39 initWithName:v40 dataType:1 requestOnly:0 extractBlock:v41];
            v43 = v23;
            v44 = v42;
            _Block_release(v41);

            if (!v44)
            {
              goto LABEL_34;
            }

            v14 = v21;
            v15 = v20;
            v16 = v43;
            v17 = v22;
            v18 = 1;
          }

          else
          {
            v58 = swift_allocObject();
            *(v58 + 16) = v23;
            *(v58 + 24) = v22;
            v59 = swift_allocObject();
            *(v59 + 16) = sub_248702D80;
            *(v59 + 24) = v58;
            v60 = objc_allocWithZone(MEMORY[0x277CF1A80]);
            sub_248702B60(v21, v20, v23, v22, 2u);

            v61 = sub_248730FC0();
            v87 = sub_248702D84;
            v88 = v59;
            aBlock = MEMORY[0x277D85DD0];
            v84 = 1107296256;
            v85 = sub_248701EE4;
            v86 = &block_descriptor_39;
            v62 = _Block_copy(&aBlock);

            v63 = [v60 initWithName:v61 dataType:2 requestOnly:0 extractBlock:v62];
            v64 = v23;
            v65 = v63;
            _Block_release(v62);

            if (!v65)
            {
              goto LABEL_33;
            }

            v14 = v21;
            v15 = v20;
            v16 = v64;
            v17 = v22;
            v18 = 2;
          }
        }

        else
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v23;
          *(v52 + 24) = v22;
          v53 = v23;
          v54 = swift_allocObject();
          *(v54 + 16) = sub_248702CF8;
          *(v54 + 24) = v52;
          v80 = objc_allocWithZone(MEMORY[0x277CF1A80]);

          sub_248702B60(v21, v20, v53, v22, 0);
          v55 = sub_248730FC0();
          v87 = sub_248702D34;
          v88 = v54;
          aBlock = MEMORY[0x277D85DD0];
          v84 = 1107296256;
          v85 = sub_248701EE4;
          v86 = &block_descriptor_57;
          v56 = _Block_copy(&aBlock);

          v57 = [v80 initWithName:v55 dataType:0 requestOnly:0 extractBlock:v56];
          _Block_release(v56);

          if (!v57)
          {
            goto LABEL_35;
          }

          v14 = v21;
          v15 = v20;
          v16 = v53;
          v17 = v22;
          v18 = 0;
        }
      }

      else if (*v5 > 4u)
      {
        if (v24 != 5)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v23;
          *(v45 + 24) = v22;
          v46 = objc_allocWithZone(MEMORY[0x277CF1A80]);

          sub_248702B60(v21, v20, v23, v22, 6u);

          v47 = sub_248730FC0();
          v87 = sub_248702B20;
          v88 = v45;
          aBlock = MEMORY[0x277D85DD0];
          v84 = 1107296256;
          v85 = sub_248701EE4;
          v86 = &block_descriptor_0;
          v48 = _Block_copy(&aBlock);

          v49 = [v46 initWithName:v47 dataType:6 requestOnly:0 extractBlock:v48];
          v50 = v23;
          v51 = v49;
          _Block_release(v48);

          if (!v51)
          {
            goto LABEL_36;
          }

          v32 = v21;
          v33 = v20;
          v34 = v50;
          v35 = v22;
          v36 = 6;
LABEL_20:
          sub_248702BC4(v32, v33, v34, v35, v36);

          goto LABEL_6;
        }

        v6 = swift_allocObject();
        *(v6 + 16) = v23;
        *(v6 + 24) = v22;
        v7 = swift_allocObject();
        *(v7 + 16) = sub_248702C5C;
        *(v7 + 24) = v6;
        v8 = objc_allocWithZone(MEMORY[0x277CF1A80]);
        sub_248702B60(v21, v20, v23, v22, 5u);

        v9 = sub_248730FC0();
        v87 = sub_248702C64;
        v88 = v7;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_248701EE4;
        v86 = &block_descriptor_13;
        v10 = _Block_copy(&aBlock);

        v11 = [v8 initWithName:v9 dataType:5 requestOnly:0 extractBlock:v10];
        v12 = v23;
        v13 = v11;
        _Block_release(v10);

        if (!v13)
        {
          goto LABEL_37;
        }

        v14 = v21;
        v15 = v20;
        v16 = v12;
        v17 = v22;
        v18 = 5;
      }

      else
      {
        if (v24 == 3)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          *(v25 + 24) = v22;
          v26 = objc_allocWithZone(MEMORY[0x277CF1A80]);

          sub_248702B60(v21, v20, v23, v22, 3u);

          v27 = sub_248730FC0();
          v87 = sub_248702C7C;
          v88 = v25;
          aBlock = MEMORY[0x277D85DD0];
          v84 = 1107296256;
          v85 = sub_248701EE4;
          v86 = &block_descriptor_28;
          v28 = _Block_copy(&aBlock);

          v29 = [v26 initWithName:v27 dataType:3 requestOnly:0 extractBlock:v28];
          v30 = v23;
          v31 = v29;
          _Block_release(v28);

          if (!v31)
          {
            goto LABEL_32;
          }

          v32 = v21;
          v33 = v20;
          v34 = v30;
          v35 = v22;
          v36 = 3;
          goto LABEL_20;
        }

        v66 = swift_allocObject();
        *(v66 + 16) = v23;
        *(v66 + 24) = v22;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_248702C6C;
        *(v67 + 24) = v66;
        v68 = objc_allocWithZone(MEMORY[0x277CF1A80]);
        sub_248702B60(v21, v20, v23, v22, 4u);

        v69 = sub_248730FC0();
        v87 = sub_248702C74;
        v88 = v67;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_248701EE4;
        v86 = &block_descriptor_22;
        v70 = _Block_copy(&aBlock);

        v71 = [v68 initWithName:v69 dataType:4 requestOnly:0 extractBlock:v70];
        v72 = v23;
        v73 = v71;
        _Block_release(v70);

        if (!v73)
        {
          goto LABEL_38;
        }

        v14 = v21;
        v15 = v20;
        v16 = v72;
        v17 = v22;
        v18 = 4;
      }

      sub_248702BC4(v14, v15, v16, v17, v18);

      v2 = v81;
LABEL_6:
      ++v4;
      sub_2487316B0();
      v19 = *(v89 + 16);
      sub_2487316E0();
      sub_2487316F0();
      sub_2487316C0();
      v5 += 40;
      if (v82 == v4)
      {

        v1 = v79;
        goto LABEL_29;
      }
    }
  }

LABEL_29:
  (*(v1 + 176))(v74);
  v75 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  v76 = sub_248730FC0();

  sub_248702C10();
  v77 = sub_248731230();
  v78 = [v75 initWithTableName:v76 columns:v77];

  if (!v78)
  {
    goto LABEL_39;
  }
}

uint64_t sub_248702B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248702BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }

  return result;
}

unint64_t sub_248702C10()
{
  result = qword_27EEA6620;
  if (!qword_27EEA6620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA6620);
  }

  return result;
}

uint64_t sub_248702CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_248702D00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_248702D3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2486CC7FC(a1, a2);
  }

  return a1;
}

uint64_t sub_248702DD8(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0xEB00000000676E69;
      v2 = 0x6B636F6C426E6F4ELL;
    }

    else
    {
      sub_248731650();

      v3 = sub_248731470();
      MEMORY[0x24C1D70A0](v3);

      MEMORY[0x24C1D70A0](0x706D65747461202CLL, 0xEC000000203A7374);
      v4 = sub_248731850();
      MEMORY[0x24C1D70A0](v4);

      MEMORY[0x24C1D70A0](41, 0xE100000000000000);
      v2 = 0xD00000000000001BLL;
      v1 = 0x800000024873C6E0;
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x676E696B636F6C42;
  }

  MEMORY[0x24C1D70A0](v2, v1);

  MEMORY[0x24C1D70A0](93, 0xE100000000000000);
  return 0x6B636F4C656C6946;
}

uint64_t sub_248702F50()
{
  v0 = type metadata accessor for FileLockDarwinDefault();
  v10[3] = v0;
  v10[4] = &off_285B24F10;
  v10[0] = swift_allocObject();
  type metadata accessor for FileLock();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v2, v2);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v1[5] = v0;
  v1[6] = &off_285B24F10;
  v1[2] = v7;
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  qword_27EEA8158 = v1;
  return result;
}

void sub_248703068(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v5 = sub_248730850();
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v94[-v14];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v99 = &v94[-v18];
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v94[-v20];
  v22 = a1;
  sub_248730840();
  sub_248730E30();
  sub_248730E50();
  sub_248730E20();
  sub_248730E40();
  sub_248731070();

  v23 = sub_248730E00();

  if (v23 < 0)
  {
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v42 = sub_248730DF0();
    __swift_project_value_buffer(v42, qword_27EEA6630);
    v43 = v101;
    v44 = v102;
    (*(v102 + 16))(v11, a1, v101);
    v45 = sub_248730DD0();
    v46 = sub_2487313D0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v104[0] = v48;
      *v47 = 136315650;
      sub_248704EAC(&qword_27EEA6660, MEMORY[0x277CC9260]);
      v49 = sub_248731850();
      v51 = v50;
      (*(v44 + 8))(v11, v43);
      v52 = sub_2486D3010(v49, v51, v104);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v54 = MEMORY[0x24C1D6D90](v53);
      if (!strerror(v54))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v55 = sub_248731130();
      v57 = sub_2486D3010(v55, v56, v104);

      *(v47 + 14) = v57;
      *(v47 + 22) = 1024;
      *(v47 + 24) = MEMORY[0x24C1D6D90](v58);
      _os_log_impl(&dword_2486BF000, v45, v46, "Cannot open lock file %s: %s, %d", v47, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v48, -1, -1);
      MEMORY[0x24C1D8100](v47, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v11, v43);
    }

    v73 = v100;
    *(v100 + 32) = 0;
    *v73 = 0u;
    v73[1] = 0u;
    return;
  }

  if (a2)
  {
    v24 = 6;
  }

  else
  {
    v24 = 2;
  }

  if (flock(v23, v24))
  {
    v25 = v101;
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v26 = sub_248730DF0();
    __swift_project_value_buffer(v26, qword_27EEA6630);
    v27 = v102;
    (*(v102 + 16))(v15, a1, v25);
    v28 = sub_248730DD0();
    v29 = sub_2487313D0();
    if (!os_log_type_enabled(v28, v29))
    {

      (*(v27 + 8))(v15, v25);
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v104[0] = v31;
    *v30 = 136315650;
    v32 = sub_248730840();
    v34 = v33;
    (*(v27 + 8))(v15, v25);
    v35 = sub_2486D3010(v32, v34, v104);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v37 = MEMORY[0x24C1D6D90](v36);
    if (strerror(v37))
    {
      v38 = sub_248731130();
      v40 = sub_2486D3010(v38, v39, v104);

      *(v30 + 14) = v40;
      *(v30 + 22) = 1024;
      *(v30 + 24) = MEMORY[0x24C1D6D90](v41);
      _os_log_impl(&dword_2486BF000, v28, v29, "Failed to acquire lock file: %s, %s, %d", v30, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v31, -1, -1);
      MEMORY[0x24C1D8100](v30, -1, -1);

LABEL_21:
      v72 = v100;
      *(v100 + 32) = 0;
      *v72 = 0u;
      v72[1] = 0u;
      close(v23);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  v59 = v101;
  if (qword_27EEA59B8 != -1)
  {
    swift_once();
  }

  v60 = sub_248730DF0();
  __swift_project_value_buffer(v60, qword_27EEA6630);
  v61 = v102;
  v62 = *(v102 + 16);
  v62(v21, a1, v59);
  v63 = sub_248730DD0();
  v64 = sub_2487313C0();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v104[0] = v96;
    *v65 = 136315394;
    v95 = v64;
    v66 = sub_248730840();
    v97 = v22;
    v67 = v62;
    v69 = v68;
    (*(v61 + 8))(v21, v59);
    v70 = sub_2486D3010(v66, v69, v104);
    v62 = v67;
    v22 = v97;

    *(v65 + 4) = v70;
    *(v65 + 12) = 1024;
    *(v65 + 14) = v23;
    _os_log_impl(&dword_2486BF000, v63, v95, "Acquired a file lock for path %s, fd=%d", v65, 0x12u);
    v71 = v96;
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x24C1D8100](v71, -1, -1);
    MEMORY[0x24C1D8100](v65, -1, -1);
  }

  else
  {

    (*(v61 + 8))(v21, v59);
  }

  v74 = v99;
  v62(v99, v22, v59);
  sub_2486E8718((v98 + 16), v104);
  v75 = v105;
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v98 = v94;
  v77 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v76, v76);
  v79 = &v94[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v80 + 16))(v79);
  v81 = *v79;
  v82 = type metadata accessor for FileLockDarwinDefault();
  v103[3] = v82;
  v103[4] = &off_285B24F10;
  v103[0] = v81;
  v83 = type metadata accessor for FileLockContextExclusive();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v103, v82);
  v88 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v87, v87);
  v90 = &v94[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v91 + 16))(v90);
  v92 = *v90;
  *(v86 + 40) = v82;
  *(v86 + 48) = &off_285B24F10;
  *(v86 + 16) = v92;
  *(v86 + 60) = 0;
  *(v86 + 56) = v23;
  (*(v61 + 32))(v86 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundationP33_F4B432E80DB2346BBC23321592F0992C24FileLockContextExclusive_path, v74, v59);
  __swift_destroy_boxed_opaque_existential_0(v103);
  __swift_destroy_boxed_opaque_existential_0(v104);
  v93 = v100;
  *(v100 + 24) = v83;
  v93[4] = &off_285B24EF8;
  *v93 = v86;
}

void sub_2487039C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, unint64_t), void (*a6)(unint64_t, unint64_t))
{
  v133 = a6;
  v134 = a5;
  v130 = a4;
  v132 = a3;
  v122 = sub_248730E70();
  v121 = *(v122 - 8);
  v9 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v10);
  v119 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_248730EB0();
  v118 = *(v120 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x28223BE20](v120, v13);
  v117 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_248730E60();
  v125 = *(v123 - 8);
  v15 = v125[8];
  MEMORY[0x28223BE20](v123, v16);
  v124 = (&v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_248730ED0();
  v131 = *(v127 - 8);
  v18 = *(v131 + 64);
  v20 = MEMORY[0x28223BE20](v127, v19);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v107 - v24;
  v26 = sub_248730850();
  v129 = *(v26 - 8);
  v27 = *(v129 + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v107 - v31;
  sub_248703068(a1, a2, &v139);
  if (v140)
  {
    sub_2486CD01C(&v139, aBlock);
    v134(0, 0);
    v33 = *__swift_project_boxed_opaque_existential_1(aBlock, v136);
    v140 = type metadata accessor for FileLockContextExclusive();
    v141 = &off_285B24EF8;
    *&v139 = v33;
    v34 = *__swift_project_boxed_opaque_existential_1(&v139, v140);

    sub_24870485C();
    __swift_destroy_boxed_opaque_existential_0(&v139);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return;
  }

  v113 = v32;
  v109 = v27;
  v111 = v22;
  v128 = a2;
  v114 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v26;
  v126 = a1;
  v115 = v25;
  v110 = v6;
  sub_248704D50(&v139);
  if (qword_27EEA59B8 != -1)
  {
    swift_once();
  }

  v35 = sub_248730DF0();
  v36 = __swift_project_value_buffer(v35, qword_27EEA6630);
  v37 = v129;
  v38 = v113;
  v39 = v116;
  v108 = *(v129 + 16);
  v108(v113, v126, v116);
  v40 = v128;
  sub_248704DB8(v128);
  v112 = v36;
  v41 = sub_248730DD0();
  v42 = sub_2487313D0();
  sub_248704DC8(v40);
  v43 = os_log_type_enabled(v41, v42);
  v44 = v134;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 134218498;
    *(v45 + 4) = v130;
    *(v45 + 12) = 2080;
    v47 = sub_248702DD8(v128);
    v48 = v42;
    v50 = v39;
    v51 = sub_2486D3010(v47, v49, aBlock);

    *(v45 + 14) = v51;
    *(v45 + 22) = 2080;
    v52 = sub_248730840();
    v54 = v53;
    (*(v37 + 8))(v38, v50);
    v55 = sub_2486D3010(v52, v54, aBlock);

    *(v45 + 24) = v55;
    _os_log_impl(&dword_2486BF000, v41, v48, "Attempt %ld to acquire lock file (%s) failed: %s", v45, 0x20u);
    swift_arrayDestroy();
    v44 = v134;
    MEMORY[0x24C1D8100](v46, -1, -1);
    v40 = v128;
    MEMORY[0x24C1D8100](v45, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
  }

  v56 = v131;
  v57 = v114;
  v58 = swift_allocObject();
  v59 = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v60 = v40 >= 2;
  v61 = v40;
  v62 = v115;
  if (v60)
  {
    v70 = v61;
    v71 = v61;
    v72 = v130;
    if (v130 >= v132)
    {
      v100 = sub_2487045E0(v59);
      v102 = v101;
      v103 = sub_248730DD0();
      v104 = sub_2487313D0();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        aBlock[0] = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_2486D3010(v100, v102, aBlock);
        _os_log_impl(&dword_2486BF000, v103, v104, "%s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x24C1D8100](v106, -1, -1);
        MEMORY[0x24C1D8100](v105, -1, -1);
      }

      v44(v100, v102);

      sub_248704DC8(v70);
      goto LABEL_22;
    }

    v114 = v71;
    sub_248730EC0();
    v73 = exp2(v72);
    if (v73 == INFINITY)
    {
      __break(1u);
    }

    else
    {
      v74 = v123;
      v75 = v125;
      v76 = v124;
      if (v73 > -9.22337204e18)
      {
        v113 = v59;
        v77 = v111;
        if (v73 < 9.22337204e18)
        {
          v78 = v73;
          if (v73 >= 15)
          {
            v78 = 15;
          }

          *v124 = v78;
          v79 = v74;
          v80 = v75;
          (v75[13])(v76, *MEMORY[0x277D85188], v74);
          MEMORY[0x24C1D6E60](v77, v76);
          (v80[1])(v76, v79);
          v81 = *(v56 + 8);
          v131 = v56 + 8;
          v125 = v81;
          (v81)(v77, v127);
          v82 = v57;
          v83 = v57;
          v84 = v116;
          v108(v82, v126, v116);
          v85 = v129;
          v86 = (*(v129 + 80) + 24) & ~*(v129 + 80);
          v87 = v62;
          v88 = (v109 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
          v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
          v90 = swift_allocObject();
          *(v90 + 16) = v110;
          (*(v85 + 32))(v90 + v86, v83, v84);
          v91 = (v90 + v88);
          v92 = v128;
          v94 = v132;
          v93 = v133;
          *v91 = v128;
          v91[1] = v94;
          *(v90 + v89) = v130;
          v95 = (v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v95 = v134;
          v95[1] = v93;
          v137 = sub_248704DD8;
          v138 = v90;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_24872EB14;
          v136 = &block_descriptor_1;
          v96 = _Block_copy(aBlock);
          sub_248704DB8(v92);

          v97 = v117;
          sub_248730E90();
          *&v139 = MEMORY[0x277D84F90];
          sub_248704EAC(&qword_27EEA6670, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6678, &qword_248735528);
          sub_248704EF4();
          v98 = v119;
          v99 = v122;
          sub_2487315B0();
          MEMORY[0x24C1D73B0](v87, v97, v98, v96);
          _Block_release(v96);
          sub_248704DC8(v92);
          (*(v121 + 8))(v98, v99);
          (*(v118 + 8))(v97, v120);
          (v125)(v87, v127);

LABEL_22:

          return;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v63 = sub_2487045E0(v58);
  v65 = v64;
  v66 = sub_248730DD0();
  v67 = sub_2487313D0();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_2486D3010(v63, v65, aBlock);
    _os_log_impl(&dword_2486BF000, v66, v67, "%s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x24C1D8100](v69, -1, -1);
    MEMORY[0x24C1D8100](v68, -1, -1);
  }

  v44(v63, v65);
}

unint64_t sub_2487045E0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_248731650();

    sub_248730850();
    sub_248704EAC(&qword_27EEA6660, MEMORY[0x277CC9260]);
    v3 = sub_248731850();
    MEMORY[0x24C1D70A0](v3);

    v2 = 0xD000000000000022;
    swift_beginAccess();
    v4 = *(a1 + 24);
    *(a1 + 16) = 0xD000000000000022;
    *(a1 + 24) = 0x800000024873C700;
  }

  return v2;
}

uint64_t sub_248704704()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_248704760()
{
  v0 = sub_248730DF0();
  __swift_allocate_value_buffer(v0, qword_27EEA6630);
  v1 = __swift_project_value_buffer(v0, qword_27EEA6630);
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28150F088);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24870485C()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    *(v0 + 60) = 1;
    v1 = *(v0 + 56);
    if (flock(v1, 12))
    {
      if (qword_27EEA59B8 != -1)
      {
        swift_once();
      }

      v2 = sub_248730DF0();
      __swift_project_value_buffer(v2, qword_27EEA6630);

      v3 = sub_248730DD0();
      v4 = sub_2487313D0();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v24 = v6;
        *v5 = 136315650;
        v7 = sub_248730840();
        v9 = sub_2486D3010(v7, v8, &v24);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2080;
        v11 = MEMORY[0x24C1D6D90](v10);
        if (!strerror(v11))
        {
          __break(1u);
          return;
        }

        v12 = sub_248731130();
        v14 = sub_2486D3010(v12, v13, &v24);

        *(v5 + 14) = v14;
        *(v5 + 22) = 1024;
        *(v5 + 24) = MEMORY[0x24C1D6D90](v15);
        _os_log_impl(&dword_2486BF000, v3, v4, "Failed to unlock file: %s, %s, %d", v5, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1D8100](v6, -1, -1);
        MEMORY[0x24C1D8100](v5, -1, -1);
      }
    }

    close(v1);
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v16 = sub_248730DF0();
    __swift_project_value_buffer(v16, qword_27EEA6630);
    swift_retain_n();
    v17 = sub_248730DD0();
    v18 = sub_2487313C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315394;
      v21 = sub_248730840();
      v23 = sub_2486D3010(v21, v22, &v24);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;

      *(v19 + 14) = v1;

      _os_log_impl(&dword_2486BF000, v17, v18, "Released the file lock for path %s, fd=%d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1D8100](v20, -1, -1);
      MEMORY[0x24C1D8100](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_248704B98()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    sub_24870485C();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundationP33_F4B432E80DB2346BBC23321592F0992C24FileLockContextExclusive_path;
  v2 = sub_248730850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FileLockContextExclusive()
{
  result = qword_27EEA6650;
  if (!qword_27EEA6650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248704C9C()
{
  result = sub_248730850();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248704D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6668, &qword_248735520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_248704DB8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_248704DC8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_248704DD8()
{
  v1 = sub_248730850();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = (v0 + v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v0 + 16);
    return sub_2487039C8(v0 + v4, v9, v10, v7 + 1, *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248704EAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_248704EF4()
{
  result = qword_27EEA6680;
  if (!qword_27EEA6680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6678, &qword_248735528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6680);
  }

  return result;
}

void sub_248704F58(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_248730850();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36[-v10];
  v12 = [objc_opt_self() defaultManager];
  sub_248730820();
  v13 = sub_248730800();
  v14 = *(v3 + 8);
  v14(v11, v2);
  v40[0] = 0;
  v15 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v40];

  v16 = v40[0];
  if (v15)
  {
    v17 = *MEMORY[0x277D85DE8];

    v18 = v16;
  }

  else
  {
    v38 = v40[0];
    v19 = v40[0];
    v20 = sub_2487307E0();

    swift_willThrow();
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v21 = sub_248730DF0();
    __swift_project_value_buffer(v21, qword_27EEA6630);
    (*(v3 + 16))(v8, a1, v2);
    v22 = v20;
    v23 = sub_248730DD0();
    v24 = sub_2487313D0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v25 = 136315394;
      v37 = v24;
      sub_248730820();
      sub_248704EAC(&qword_27EEA6660, MEMORY[0x277CC9260]);
      v26 = sub_248731850();
      v28 = v27;
      v14(v11, v2);
      v14(v8, v2);
      v29 = sub_2486D3010(v26, v28, v40);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v39 = v20;
      v30 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
      v31 = sub_248731040();
      v33 = sub_2486D3010(v31, v32, v40);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_2486BF000, v23, v37, "Cannot create the file lock directory: %s, error=%s", v25, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v34, -1, -1);
      MEMORY[0x24C1D8100](v25, -1, -1);
    }

    else
    {

      v14(v8, v2);
    }

    v35 = *MEMORY[0x277D85DE8];
  }
}

id static ConversationStreamFactory.create(type:)(uint64_t a1)
{
  if (a1)
  {
    v1 = type metadata accessor for ConversationStreamAIMLIS();
  }

  else
  {
    v1 = type metadata accessor for ConversationStreamPLL();
  }

  v2 = objc_allocWithZone(v1);

  return [v2 init];
}

id ConversationStreamPLL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24870566C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_2487056D8, 0, 0);
}

uint64_t sub_2487056D8()
{
  v1 = *(v0 + 16);
  type metadata accessor for Conversation();
  v2 = sub_248731230();
  (v1)[2](v1, v2, 0);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2487057BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for StreamsBookmark();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v8 = 0x4C4C50706D6574;
  *(v8 + 1) = 0xE700000000000000;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v5;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v4);
  v17.receiver = v7;
  v17.super_class = v6;
  v9 = objc_msgSendSuper2(&v17, sel_init);
  if (a1)
  {
    v10 = a1;

    v9 = v10;
  }

  sub_248730CF0();
  sub_248730CE0();
  sub_248730CD0();

  v11 = v15;
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  AsyncBookmarkingSignalReader.conversationStreamsBookmarked(startBookmark:)(v9, v11, v12, a2);

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_2487058F0(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0) - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v5 = sub_2487309B0();
  v2[60] = v5;
  v6 = *(v5 - 8);
  v2[61] = v6;
  v7 = *(v6 + 64) + 15;
  v2[62] = swift_task_alloc();
  v8 = sub_248730C90();
  v2[63] = v8;
  v9 = *(v8 - 8);
  v2[64] = v9;
  v10 = *(v9 + 64) + 15;
  v2[65] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6690, &qword_248735578) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6698, &qword_248735580);
  v2[67] = v12;
  v13 = *(v12 - 8);
  v2[68] = v13;
  v14 = *(v13 + 64) + 15;
  v2[69] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66A0, &unk_248735588);
  v2[70] = v15;
  v16 = *(v15 - 8);
  v2[71] = v16;
  v17 = *(v16 + 64) + 15;
  v2[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248705B84, 0, 0);
}

uint64_t sub_248705B84()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[56];
  v6 = MEMORY[0x277D84F90];
  v0[50] = MEMORY[0x277D84F90];
  sub_2487057BC(v5, v2);
  sub_248730D00();
  (*(v3 + 8))(v2, v4);
  v0[74] = v6;
  v0[73] = v6;
  v7 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[75] = v9;
  *v9 = v0;
  v9[1] = sub_248705CC4;
  v10 = v0[72];
  v11 = v0[70];
  v12 = v0[66];

  return MEMORY[0x282200308](v12, v11, v7);
}

uint64_t sub_248705CC4()
{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_248706844;
  }

  else
  {
    v3 = sub_248705DD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248705DD8()
{
  v1 = *(v0 + 528);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B0, qword_248735598);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v11 = *(v0 + 520);
    v12 = *(v0 + 504);
    v13 = *(v0 + 512);

    (*(v13 + 32))(v11, v1, v12);
    v14 = MEMORY[0x277D84F90];
    *(v0 + 416) = MEMORY[0x277D84F90];
    sub_248730C80();
    sub_248731700();

    sub_2487317E0();
    v15 = *(v0 + 424);
    v16 = off_278F52000;
    if (v15)
    {
      v17 = sub_248730D50();
      while (1)
      {
        *(v0 + 40) = v17;
        *(v0 + 16) = v15;
        sub_2486C5B68(v0 + 16, v0 + 48);

        if (swift_dynamicCast())
        {
          break;
        }

        sub_2486C5B68(v0 + 16, v0 + 80);
        sub_248730C70();
        if (swift_dynamicCast())
        {
          v35 = *(v0 + 488);
          v105 = *(v0 + 496);
          v109 = *(v0 + 480);
          v36 = *(v0 + 440);
          v37 = type metadata accessor for ConversationTurnAIMLIS(0);
          v38 = objc_allocWithZone(v37);
          *&v38[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn] = v36;
          *(v0 + 368) = v38;
          *(v0 + 376) = v37;
          v39 = v16[335];
          v40 = v36;
          v41 = objc_msgSendSuper2((v0 + 368), v39);
          v102 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn;
          v104 = v41;
          v42 = *&v41[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn];
          v43 = v41;
          v44 = v42;
          sub_248730C60();

          v45 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
          swift_beginAccess();
          (*(v35 + 40))(&v43[v45], v105, v109);
          swift_endAccess();

          sub_2486CF4C4(0, &qword_27EEA5E68, 0x277D5A928);
          v110 = v40;
          v46 = sub_248730B70();
          if (v46)
          {
            v47 = v46;
            v48 = sub_248730AE0();
            if (!v48)
            {
              goto LABEL_68;
            }

            v51 = v48;
            v52 = *(v0 + 488);
            v106 = *(v0 + 480);
            v53 = *(v0 + 464);
            sub_248730B10();

            (*(v52 + 56))(v53, 0, 1, v106);
            v54 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
            swift_beginAccess();
            sub_24870CC00(v53, &v43[v54]);
            swift_endAccess();
          }

          v55 = *&v104[v102];
          v56 = v43;
          v57 = v55;
          sub_248730BD0();
          v59 = v58;

          v60 = &v56[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
          swift_beginAccess();
          *v60 = v59;
          v60[8] = 0;
          v61 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          *&v56[v61] = 1;

          sub_2487133FC();
          v62 = v110;
          goto LABEL_20;
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_10:
        sub_2487317E0();
        v15 = *(v0 + 424);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      v18 = *(v0 + 496);
      v107 = *(v0 + 488);
      v101 = *(v0 + 480);
      v103 = *(v0 + 472);
      v19 = *(v0 + 432);
      v20 = type metadata accessor for ConversationTurnPLL(0);
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v19;
      *(v0 + 384) = v21;
      *(v0 + 392) = v20;
      v22 = v16[335];

      v23 = objc_msgSendSuper2((v0 + 384), v22);
      v24 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn;
      v25 = *&v23[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn];
      v26 = v23;

      sub_248730D40();

      v27 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v28 = *(v107 + 40);
      v108 = v26;
      v28(&v26[v27], v18, v101);
      swift_endAccess();
      v29 = *&v23[v24];

      sub_248730D20();

      v30 = sub_248730970();
      v31 = *(v30 - 8);
      v32 = (*(v31 + 48))(v103, 1, v30);
      v33 = *(v0 + 472);
      if (v32 == 1)
      {
        sub_2486C7940(*(v0 + 472), &qword_27EEA6240, &unk_248733390);
        v34 = 0;
      }

      else
      {
        sub_248730900();
        v34 = v63;
        (*(v31 + 8))(v33, v30);
      }

      v64 = v32 == 1;
      v62 = v108;
      v65 = &v108[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
      swift_beginAccess();
      *v65 = v34;
      v65[8] = v64;
      v66 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
      swift_beginAccess();
      *&v108[v66] = 0;
      sub_24871082C();

      v56 = v108;
LABEL_20:

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v67 = v56;
      MEMORY[0x24C1D71A0]();
      v16 = off_278F52000;
      if (*((*(v0 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 416) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v68 = *((*(v0 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
        v16 = off_278F52000;
      }

      sub_2487312A0();

      v14 = *(v0 + 416);
      goto LABEL_10;
    }

LABEL_23:

    v69 = type metadata accessor for Conversation();
    v70 = objc_allocWithZone(v69);
    *&v70[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = v14;
    *(v0 + 352) = v70;
    *(v0 + 360) = v69;
    v71 = objc_msgSendSuper2((v0 + 352), v16[335]);
    v72 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns;
    v73 = *&v71[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns];
    if (v73 >> 62)
    {
LABEL_50:
      if (sub_248731790())
      {
LABEL_25:
        v49 = *&v71[v72];
        if (v49 >> 62)
        {
          if (v49 < 0)
          {
            v99 = *&v71[v72];
          }

          v48 = sub_248731790();
          v49 = *&v71[v72];
          if (v48 != 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v48 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48 != 1)
          {
            goto LABEL_32;
          }
        }

        if ((v49 & 0xC000000000000001) != 0)
        {
          goto LABEL_66;
        }

        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          for (i = *(v49 + 32); ; i = MEMORY[0x24C1D7600](0))
          {
            v75 = i;
            v76 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v77 = *&v75[v76];

            if (v77 != 2)
            {
              goto LABEL_51;
            }

            v49 = *&v71[v72];
LABEL_32:
            if ((v49 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v78 = *(v49 + 32);
              goto LABEL_35;
            }

            __break(1u);
LABEL_66:
            ;
          }

          v78 = MEMORY[0x24C1D7600](0);
LABEL_35:
          v79 = v78;
          v80 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          v81 = *&v79[v80];

          v82 = *&v71[v72];
          if (v82 >> 62)
          {
            if (v82 < 0)
            {
              v100 = *&v71[v72];
            }

            v72 = sub_248731790();
          }

          else
          {
            v72 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v83 = 0;
          while (v72 != v83)
          {
            if ((v82 & 0xC000000000000001) != 0)
            {
              v84 = MEMORY[0x24C1D7600](v83, v82);
            }

            else
            {
              if (v83 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_49;
              }

              v84 = *(v82 + 8 * v83 + 32);
            }

            v85 = v84;
            if (__OFADD__(v83, 1))
            {
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v86 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v87 = *&v85[v86];

            if (v87 != 2)
            {
              ++v83;
              if (v87 == v81)
              {
                continue;
              }
            }

            (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));

            v88 = *(v0 + 592);
            v89 = *(v0 + 584);
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        __break(1u);
LABEL_68:
        __break(1u);
        return MEMORY[0x282200308](v48, v49, v50);
      }
    }

    else if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_51:
    v90 = v71;
    MEMORY[0x24C1D71A0]();
    if (*((*(v0 + 400) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 400) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v98 = *((*(v0 + 400) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    v91 = *(v0 + 520);
    v92 = *(v0 + 504);
    v93 = *(v0 + 512);
    sub_2487312A0();

    (*(v93 + 8))(v91, v92);
    v89 = *(v0 + 400);
    v88 = v89;
LABEL_54:
    *(v0 + 592) = v88;
    *(v0 + 584) = v89;
    v94 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588);
    v95 = *(MEMORY[0x277D856D0] + 4);
    v96 = swift_task_alloc();
    *(v0 + 600) = v96;
    *v96 = v0;
    v96[1] = sub_248705CC4;
    v97 = *(v0 + 576);
    v49 = *(v0 + 560);
    v48 = *(v0 + 528);
    v50 = v94;

    return MEMORY[0x282200308](v48, v49, v50);
  }

  v3 = *(v0 + 552);
  v4 = *(v0 + 520);
  v5 = *(v0 + 496);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  (*(*(v0 + 568) + 8))(*(v0 + 576), *(v0 + 560));

  v8 = *(v0 + 8);
  v9 = *(v0 + 584);

  return v8(v9);
}

uint64_t sub_248706844()
{
  v1 = v0[74];
  v0[51] = v0[76];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2487068E0, 0, 0);
}

uint64_t sub_2487068E0()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[62];
  v6 = v0[58];
  v5 = v0[59];
  (*(v0[71] + 8))(v0[72], v0[70]);

  v7 = v0[1];
  v8 = v0[76];

  return v7();
}

uint64_t sub_248706B48(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_248706C08;

  return sub_2487058F0(a1);
}

uint64_t sub_248706C08()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_2487307D0();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for Conversation();
    v11 = sub_248731230();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_248706DB4(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0) - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v6 = sub_2487309B0();
  v3[82] = v6;
  v7 = *(v6 - 8);
  v3[83] = v7;
  v8 = *(v7 + 64) + 15;
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v9 = sub_248730C90();
  v3[86] = v9;
  v10 = *(v9 - 8);
  v3[87] = v10;
  v11 = *(v10 + 64) + 15;
  v3[88] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6690, &qword_248735578) - 8) + 64) + 15;
  v3[89] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6698, &qword_248735580);
  v3[90] = v13;
  v14 = *(v13 - 8);
  v3[91] = v14;
  v15 = *(v14 + 64) + 15;
  v3[92] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66A0, &unk_248735588);
  v3[93] = v16;
  v17 = *(v16 - 8);
  v3[94] = v17;
  v18 = *(v17 + 64) + 15;
  v3[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248707080, 0, 0);
}

uint64_t sub_248707080()
{
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[74];
  v6 = MEMORY[0x277D84F90];
  v0[73] = MEMORY[0x277D84F90];
  sub_2487057BC(v5, v2);
  sub_248730D00();
  (*(v3 + 8))(v2, v4);
  v0[97] = v6;
  v0[96] = v6;
  v7 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[98] = v9;
  *v9 = v0;
  v9[1] = sub_2487071C0;
  v10 = v0[95];
  v11 = v0[93];
  v12 = v0[89];

  return MEMORY[0x282200308](v12, v11, v7);
}

uint64_t sub_2487071C0()
{
  v2 = *(*v1 + 784);
  v5 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = sub_248708108;
  }

  else
  {
    v3 = sub_2487072D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2487072D4()
{
  v1 = *(v0 + 712);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B0, qword_248735598);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 736);
    v4 = *(v0 + 704);
    v5 = *(v0 + 680);
    v6 = *(v0 + 672);
    v7 = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = *(v0 + 632);
    v151 = *(v0 + 624);
    v153 = *(v0 + 616);
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));

    v10 = *(v0 + 8);
    v11 = *(v0 + 768);

    return v10(v11);
  }

  v13 = (v0 + 560);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);

  (*(v15 + 32))(v14, v1, v16);
  v17 = MEMORY[0x277D84F90];
  *(v0 + 568) = MEMORY[0x277D84F90];
  sub_248730C80();
  sub_248731700();

  sub_2487317E0();
  v18 = *(v0 + 560);
  if (!v18)
  {
LABEL_70:

    type metadata accessor for FeaturizedConversation();
    swift_allocObject();
    v122 = *(FeaturizedConversation.init(turns:)(v17) + 40);
    if (v122 >> 62)
    {
LABEL_81:
      if (sub_248731790())
      {
LABEL_72:

        MEMORY[0x24C1D71A0](v123);
        if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_87;
        }

        goto LABEL_73;
      }
    }

    else if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

    (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));

    v128 = *(v0 + 768);
    goto LABEL_83;
  }

  v150 = (v0 + 536);
  v19 = (v0 + 544);
  v136 = (v0 + 568);
  v20 = sub_248730D50();
  v138 = (v0 + 560);
  v137 = (v0 + 544);
  v135 = v20;
  v154 = v0;
  while (1)
  {
    while (1)
    {
      *(v0 + 248) = v20;
      *(v0 + 224) = v18;
      sub_2486C5B68(v0 + 224, v0 + 256);

      if (swift_dynamicCast())
      {
        break;
      }

      sub_2486C5B68(v0 + 224, v0 + 320);
      sub_248730C70();
      if (swift_dynamicCast())
      {
        v31 = *v19;
        v39 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
        v140 = sub_248713D24(v31);
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 224));
      sub_2487317E0();
      v18 = *v13;
      if (!*v13)
      {
        goto LABEL_70;
      }
    }

    v21 = *(v0 + 680);
    v22 = *(v0 + 664);
    v23 = *(v0 + 656);
    v24 = *(v0 + 648);
    v25 = *(v0 + 552);
    v26 = type metadata accessor for ConversationTurnPLL(0);
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v25;
    *(v0 + 520) = v27;
    *(v0 + 528) = v26;

    v28 = objc_msgSendSuper2((v0 + 520), sel_init);
    v29 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn;
    v30 = *&v28[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn];
    v31 = v28;

    sub_248730D40();

    v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v22 + 40))(&v31[v32], v21, v23);
    swift_endAccess();
    v33 = *&v28[v29];
    v0 = v154;

    sub_248730D20();

    v34 = sub_248730970();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 48))(v24, 1, v34);
    v37 = *(v154 + 648);
    if (v36 == 1)
    {
      sub_2486C7940(*(v154 + 648), &qword_27EEA6240, &unk_248733390);
      v38 = 0;
    }

    else
    {
      sub_248730900();
      v38 = v40;
      (*(v35 + 8))(v37, v34);
    }

    v41 = &v31[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    *v41 = v38;
    v41[8] = v36 == 1;
    v42 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    *&v31[v42] = 0;
    sub_24871082C();

    v140 = v31;
LABEL_16:

    v43 = *(v0 + 600);
    __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v152 = sub_2486D3554(MEMORY[0x277D84F90]);
    v44 = *(v0 + 600);
    if (!(v43 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        break;
      }

      goto LABEL_60;
    }

    if (v44 < 0)
    {
      v90 = *(v0 + 600);
    }

    v45 = sub_248731790();
    if (v45)
    {
      break;
    }

LABEL_60:
    v91 = *(v0 + 672);
    v92 = *(v0 + 664);
    v93 = *(v0 + 656);
    v94 = *(v0 + 640);
    v95 = &v140[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    v96 = *v95;
    v149 = *(v95 + 8);
    v97 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v92 + 16))(v91, &v140[v97], v93);
    v98 = *(v92 + 56);
    v98(v94, 1, 1, v93);
    if (v152[2] && (v99 = sub_2486C94CC(0x7165722E4843524FLL, 0xEE00644974736575), (v100 & 1) != 0))
    {
      v101 = *(v0 + 656);
      v102 = *(v0 + 632);
      sub_2486C5B68(v152[7] + 32 * v99, v0 + 192);
      v103 = swift_dynamicCast() ^ 1;
      v104 = v102;
      v105 = v101;
    }

    else
    {
      v105 = *(v0 + 656);
      v104 = *(v0 + 632);
      v103 = 1;
    }

    v98(v104, v103, 1, v105);
    v106 = *(v0 + 672);
    v107 = *(v154 + 664);
    v145 = *(v154 + 656);
    v108 = *(v154 + 640);
    v109 = *(v154 + 632);
    v147 = v109;
    v110 = *(v154 + 624);
    v111 = *(v154 + 616);
    v112 = sub_248730980();
    v143 = v113;
    sub_2486D8A6C(v109, v110, &qword_27EEA5D90, &qword_2487333C0);
    sub_2486D8A6C(v108, v111, &qword_27EEA5D90, &qword_2487333C0);
    v114 = type metadata accessor for FeaturizedConversationTurn();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    v117 = swift_allocObject();
    *(v117 + 16) = 1;
    v118 = sub_2486D3554(MEMORY[0x277D84F90]);
    sub_2486C7940(v108, &qword_27EEA5D90, &qword_2487333C0);
    (*(v107 + 8))(v106, v145);
    v0 = v154;
    *(v117 + 24) = v118;
    *(v117 + 40) = v112;
    *(v117 + 48) = v143;
    if (v149)
    {
      v119 = -1.0;
    }

    else
    {
      v119 = v96;
    }

    *(v117 + 32) = v119;
    sub_2486C98BC(v110, v117 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_requestID);
    sub_2486C98BC(v111, v117 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_clockId);
    swift_beginAccess();
    *(v117 + 24) = v152;

    sub_2486C7940(v147, &qword_27EEA5D90, &qword_2487333C0);

    MEMORY[0x24C1D71A0](v120);
    if (*((*(v154 + 568) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v154 + 568) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v121 = *((*(v154 + 568) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();

    v17 = *v136;
    v13 = v138;
    sub_2487317E0();
    v18 = *v138;
    v19 = v137;
    v20 = v135;
    if (!*v138)
    {
      goto LABEL_70;
    }
  }

  v46 = 0;
  v139 = v45;
  while (1)
  {
    v48 = *(v0 + 600);
    if ((v48 & 0xC000000000000001) == 0)
    {
      break;
    }

    v49 = MEMORY[0x24C1D7600](v46);
LABEL_25:
    v50 = v49;
    v51 = __OFADD__(v46, 1);
    v52 = v46 + 1;
    if (v51)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v144 = v52;
    (*((*MEMORY[0x277D85000] & *v49) + 0x70))(v140);
    v53 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25IntraTurnFeatureExtractor_features;
    swift_beginAccess();
    v141 = v53;
    v142 = v50;
    v54 = *&v50[v53];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v150 = v152;
    v56 = v54 + 64;
    v57 = -1 << *(v54 + 32);
    if (-v57 < 64)
    {
      v58 = ~(-1 << -v57);
    }

    else
    {
      v58 = -1;
    }

    v59 = v58 & *(v54 + 64);
    v60 = (63 - v57) >> 6;
    v146 = v54;

    v61 = 0;
    for (i = v60; ; v60 = i)
    {
      if (!v59)
      {
        if (v60 <= v61 + 1)
        {
          v64 = v61 + 1;
        }

        else
        {
          v64 = v60;
        }

        v65 = v64 - 1;
        while (1)
        {
          v63 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            break;
          }

          if (v63 >= v60)
          {
            v59 = 0;
            *(v0 + 128) = 0u;
            *(v0 + 144) = 0u;
            v61 = v65;
            *(v0 + 112) = 0u;
            goto LABEL_43;
          }

          v59 = *(v56 + 8 * v63);
          ++v61;
          if (v59)
          {
            v61 = v63;
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v63 = v61;
LABEL_42:
      v66 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v67 = v66 | (v63 << 6);
      v68 = (*(v146 + 48) + 16 * v67);
      v70 = *v68;
      v69 = v68[1];
      sub_2486C5B68(*(v146 + 56) + 32 * v67, v0 + 288);
      *(v0 + 112) = v70;
      *(v0 + 120) = v69;
      sub_2486C79A0((v0 + 288), (v0 + 128));

LABEL_43:
      v71 = *(v0 + 128);
      *(v0 + 64) = *(v0 + 112);
      *(v0 + 80) = v71;
      *(v0 + 96) = *(v0 + 144);
      v72 = *(v0 + 72);
      if (!v72)
      {
        break;
      }

      v73 = *(v0 + 64);
      sub_2486C5B68(v0 + 80, v0 + 32);
      *(v0 + 16) = v73;
      *(v0 + 24) = v72;

      sub_2486C7940(v0 + 64, &qword_27EEA6328, &qword_248734838);
      v74 = *(v0 + 24);
      if (!v74)
      {
        goto LABEL_20;
      }

      v75 = isUniquelyReferenced_nonNull_native;
      v76 = *(v0 + 16);
      sub_2486C79A0((v0 + 32), (v0 + 160));
      v78 = sub_2486C94CC(v76, v74);
      v79 = v152[2];
      v80 = (v77 & 1) == 0;
      v81 = v79 + v80;
      if (__OFADD__(v79, v80))
      {
        goto LABEL_78;
      }

      v82 = v77;
      if (v152[3] >= v81)
      {
        if (v75)
        {
          if (v77)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_2486E62F4();
          if (v82)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_2486E45C8(v81, v75 & 1);
        v83 = *v150;
        v84 = sub_2486C94CC(v76, v74);
        if ((v82 & 1) != (v85 & 1))
        {

          return sub_2487318B0();
        }

        v78 = v84;
        if (v82)
        {
LABEL_30:

          v152 = *v150;
          v62 = (*(*v150 + 56) + 32 * v78);
          __swift_destroy_boxed_opaque_existential_0(v62);
          sub_2486C79A0((v154 + 160), v62);
          goto LABEL_31;
        }
      }

      v86 = *v150;
      *(*v150 + 8 * (v78 >> 6) + 64) |= 1 << v78;
      v87 = (v86[6] + 16 * v78);
      *v87 = v76;
      v87[1] = v74;
      sub_2486C79A0((v154 + 160), (v86[7] + 32 * v78));
      v88 = v86[2];
      v51 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v51)
      {
        goto LABEL_79;
      }

      v152 = v86;
      v86[2] = v89;
LABEL_31:
      isUniquelyReferenced_nonNull_native = 1;
      v0 = v154;
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_20:

    v47 = *&v142[v141];
    *&v142[v141] = MEMORY[0x277D84F98];

    v46 = v144;
    if (v144 == v139)
    {
      goto LABEL_60;
    }
  }

  if (v46 < *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(v48 + 8 * v46 + 32);
    goto LABEL_25;
  }

  __break(1u);
LABEL_87:
  sub_248731260();
LABEL_73:
  v124 = *(v0 + 704);
  v125 = *(v0 + 696);
  v126 = *(v0 + 688);
  sub_2487312A0();

  (*(v125 + 8))(v124, v126);
  v127 = (v0 + 584);
  v128 = vld1q_dup_f64(v127);
LABEL_83:
  *(v0 + 768) = v128;
  v129 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588);
  v130 = *(MEMORY[0x277D856D0] + 4);
  v131 = swift_task_alloc();
  *(v0 + 784) = v131;
  *v131 = v0;
  v131[1] = sub_2487071C0;
  v132 = *(v0 + 760);
  v133 = *(v0 + 744);
  v134 = *(v0 + 712);

  return MEMORY[0x282200308](v134, v133, v129);
}