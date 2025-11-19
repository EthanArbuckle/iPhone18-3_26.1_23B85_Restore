id ULBiomeEventLocationSemantic.init(timestamp:starting:locationType:loiIdentifier:)(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp;
  v10 = sub_259212160();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a1, v10);
  v4[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting] = a2;
  *&v4[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType] = a3;
  sub_2591F56BC(a4, &v4[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier]);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ULBiomeEventLocationSemantic(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_2591F572C(a4);
  (*(v11 + 8))(a1, v10);
  return v12;
}

id ULBiomeEventLocationSemantic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2591F5524()
{
  v1 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp;
  v2 = sub_259212160();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier;

  return sub_2591F572C(v3);
}

unint64_t sub_2591F5634(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 == 4)
  {
    v1 = 0;
    v2 = 4;
    return v2 | (v1 << 32);
  }

  if (a1 == 3)
  {
    v1 = 0;
    v2 = 3;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

uint64_t sub_2591F56BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591F572C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2591F57B8()
{
  result = qword_27F99BB28;
  if (!qword_27F99BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BB28);
  }

  return result;
}

unint64_t sub_2591F5810()
{
  result = qword_27F99BB30;
  if (!qword_27F99BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BB30);
  }

  return result;
}

uint64_t sub_2591F586C()
{
  result = sub_259212160();
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

void sub_2591F5958()
{
  v0 = sub_259212160();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2591F5A68();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2591F5A68()
{
  if (!qword_281455B08)
  {
    sub_2592121D0();
    v0 = sub_259212A40();
    if (!v1)
    {
      atomic_store(v0, &qword_281455B08);
    }
  }
}

uint64_t sub_2591F5AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(ULHomeSlamModel *__hidden this), uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F90];
  aBlock = 0;
  v12 = [BiomeLibrary() streamWithIdentifier:a1 error:&aBlock];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = aBlock;
    v14 = [v12 publisherWithOptions_];
    v27 = ULHomeSlamModel::getTrajectoryPointCloud;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2591F5D48;
    v26 = a4;
    v15 = _Block_copy(&aBlock);
    v27 = a5;
    v28 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2591F5EB8;
    v26 = a6;
    v16 = _Block_copy(&aBlock);

    v17 = [v14 sinkWithCompletion:v15 receiveInput:v16];

    _Block_release(v16);
    _Block_release(v15);

    swift_beginAccess();
  }

  else
  {
    v18 = aBlock;
    v19 = sub_259212040();

    swift_willThrow();
  }

  v20 = *(v11 + 16);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2591F5D48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2591F5DB0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_beginAccess();
    v3 = swift_unknownObjectRetain();
    MEMORY[0x259CA1060](v3);
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2592128D0();
    }

    sub_2592128F0();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2591F5EB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_2591F5FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t, uint64_t, uint64_t), void (*a9)(void))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB58, &qword_2592264F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  if (a3)
  {
    sub_259212140();
    v22 = sub_259212160();
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v23 = sub_259212160();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  if (a4)
  {
    sub_259212140();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_259212160();
  (*(*(v25 - 8) + 56))(v18, v24, 1, v25);
  a8(v21, v18, a5, a6, a7);
  sub_2591DC520(v18, &qword_27F99BB58, &qword_2592264F8);
  sub_2591DC520(v21, &qword_27F99BB58, &qword_2592264F8);
  a9(0);
  v26 = sub_2592128B0();

  return v26;
}

id ULBiomeEventStreamLocationSemantic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2591F6278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2591F62C8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2591F6324(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2591F635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v53 = a3;
  v54 = a4;
  v8 = sub_259212160();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB58, &qword_2592264F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  sub_2591E90F4(a1, &v44 - v17, &qword_27F99BB58, &qword_2592264F8);
  sub_2591E90F4(a2, v15, &qword_27F99BB58, &qword_2592264F8);
  v19 = *(v9 + 48);
  v20 = 0;
  if (v19(v18, 1, v8) != 1)
  {
    v20 = sub_259212130();
    (*(v9 + 8))(v18, v8);
  }

  if (v19(v15, 1, v8) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_259212130();
    (*(v9 + 8))(v15, v8);
  }

  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v23 = [v22 initWithStartDate:v20 endDate:v21 maxEvents:v53 lastN:v54 reversed:a5 & 1];

  v24 = *MEMORY[0x277CF0E50];
  v45 = v23;
  v25 = sub_2591F5AEC(v24, v23, &unk_286A60088, &block_descriptor_16, sub_2591F6F70, &block_descriptor_19);
  v26 = v25;
  v56 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
LABEL_29:
    v53 = v26 & 0xFFFFFFFFFFFFFF8;
    v27 = sub_259212A80();
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_30:
    v46 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v53 = v25 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_30;
  }

LABEL_8:
  v50 = v8;
  v8 = 0;
  v52 = v26 & 0xC000000000000001;
  v48 = (v9 + 16);
  v46 = MEMORY[0x277D84F90];
  v47 = (v9 + 8);
  v49 = v27;
  do
  {
    v9 = v8;
    while (1)
    {
      if (v52)
      {
        v28 = MEMORY[0x259CA12D0](v9, v26);
      }

      else
      {
        if (v9 >= *(v53 + 16))
        {
          goto LABEL_28;
        }

        v28 = *(v26 + 8 * v9 + 32);
      }

      v29 = v28;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v30 = [v28 eventBody];
      if (v30)
      {
        break;
      }

LABEL_11:
      ++v9;
      if (v8 == v27)
      {
        goto LABEL_31;
      }
    }

    v31 = v30;
    [v29 timestamp];
    v32 = v51;
    sub_259212110();
    LODWORD(v54) = [v31 starting];
    v33 = [v31 reason];
    if (v33 == 2)
    {
      v34 = 2;
    }

    else
    {
      v34 = v33 == 1;
    }

    v35 = type metadata accessor for ULBiomeEventCarPlayConnected(0);
    v36 = objc_allocWithZone(v35);
    v37 = v26;
    v38 = v50;
    (*v48)(&v36[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp], v32, v50);
    v36[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting] = v54;
    *&v36[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason] = v34;
    v8 = v9 + 1;
    v55.receiver = v36;
    v55.super_class = v35;
    v39 = objc_msgSendSuper2(&v55, sel_init);

    v40 = v38;
    v26 = v37;
    v27 = v49;
    v41 = (*v47)(v32, v40);
    if (!v39)
    {
      goto LABEL_11;
    }

    MEMORY[0x259CA1060](v41);
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2592128D0();
    }

    sub_2592128F0();
    v46 = v56;
  }

  while (v8 != v27);
LABEL_31:

  return v46;
}

uint64_t sub_2591F6888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v63) = a5;
  v64 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v54 - v10;
  v11 = sub_259212160();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x28223BE20](v11);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB58, &qword_2592264F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  sub_2591E90F4(a1, &v54 - v20, &qword_27F99BB58, &qword_2592264F8);
  v22 = a2;
  v23 = v11;
  sub_2591E90F4(v22, v18, &qword_27F99BB58, &qword_2592264F8);
  v24 = *(v12 + 6);
  v25 = 0;
  if (v24(v21, 1, v11) != 1)
  {
    v25 = sub_259212130();
    (*(v12 + 1))(v21, v11);
  }

  if (v24(v18, 1, v11) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_259212130();
    (*(v12 + 1))(v18, v11);
  }

  v27 = v66;
  v28 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v29 = [v28 initWithStartDate:v25 endDate:v26 maxEvents:v64 lastN:a4 reversed:v63 & 1];

  v30 = *MEMORY[0x277CF0E70];
  v56 = v29;
  v31 = sub_2591F5AEC(v30, v29, &unk_286A60010, &block_descriptor_3, sub_2591F6FA8, &block_descriptor_10);
  v32 = v31;
  v68 = MEMORY[0x277D84F90];
  if (v31 >> 62)
  {
LABEL_33:
    v63 = v32 & 0xFFFFFFFFFFFFFF8;
    v33 = sub_259212A80();
    if (v33)
    {
      goto LABEL_8;
    }

LABEL_34:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v63 = v31 & 0xFFFFFFFFFFFFFF8;
  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_34;
  }

LABEL_8:
  v34 = 0;
  v61 = v23;
  v62 = v32 & 0xC000000000000001;
  v57 = (v12 + 8);
  v58 = (v12 + 16);
  v35 = MEMORY[0x277D84F90];
  v59 = v33;
  v60 = v32;
  do
  {
    v55 = v35;
    v36 = v34;
    while (1)
    {
      if (v62)
      {
        v37 = MEMORY[0x259CA12D0](v36, v32);
      }

      else
      {
        if (v36 >= *(v63 + 16))
        {
          goto LABEL_32;
        }

        v37 = *(v32 + 8 * v36 + 32);
      }

      v23 = v37;
      v34 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v38 = [v37 eventBody];
      if (v38)
      {
        break;
      }

LABEL_11:
      ++v36;
      if (v34 == v33)
      {
        v35 = v55;
        goto LABEL_35;
      }
    }

    v39 = v38;
    [v23 timestamp];
    sub_259212110();
    v40 = [v39 starting];
    v41 = [v39 userSpecificPlaceType];
    if (v41 - 1 >= 4)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v39 loiIdentifier];
    v64 = v36 + 1;
    if (v43)
    {
      v44 = v43;
      sub_259212190();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = sub_2592121D0();
    (*(*(v46 - 8) + 56))(v27, v45, 1, v46);
    v47 = type metadata accessor for ULBiomeEventLocationSemantic(0);
    v48 = objc_allocWithZone(v47);
    v49 = v65;
    v50 = v61;
    (*v58)(&v48[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp], v65, v61);
    v48[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting] = v40;
    *&v48[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType] = v42;
    sub_2591E90F4(v66, &v48[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier], &qword_27F99BB20, &qword_259226220);
    v67.receiver = v48;
    v67.super_class = v47;
    v27 = v66;
    v12 = objc_msgSendSuper2(&v67, sel_init);

    sub_2591DC520(v27, &qword_27F99BB20, &qword_259226220);
    v51 = (*v57)(v49, v50);
    v33 = v59;
    v32 = v60;
    v34 = v64;
    if (!v12)
    {
      goto LABEL_11;
    }

    MEMORY[0x259CA1060](v51);
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v52 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2592128D0();
      v27 = v66;
    }

    sub_2592128F0();
    v35 = v68;
  }

  while (v34 != v33);
LABEL_35:

  return v35;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static NSDate.date(fromMachContinuous:)(double a1)
{
  v2 = sub_259212160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212150();
  sub_259212120();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  return [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];
}

id sub_2591F70BC(double a1)
{
  v2 = sub_259212160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212150();
  sub_259212120();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];

  return v9;
}

__CVBuffer *static ULVisionUtilities.createPixelBuffer(from:size:format:)(uint64_t a1, OSType a2, double a3, double a4)
{
  v5 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(a2, a3, a4);
  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    [v6 render:a1 toCVPixelBuffer:v5];
    CVPixelBufferUnlockBaseAddress(v5, 1uLL);
  }

  return v5;
}

id static ULVisionUtilities.reduceFormat(to:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBF758]);

  return [v0 init];
}

id ULVisionUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisionUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULVisionUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ULVisionUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULVisionUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CVPixelBufferRef _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(OSType a1, double a2, double a3)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut[0] = 0;
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (a3 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  v4 = a2;
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB70, &qword_259226528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2592256B0;
  v7 = *MEMORY[0x277CC4DE8];
  *(inited + 32) = *MEMORY[0x277CC4DE8];
  v8 = v7;
  *(inited + 40) = sub_2591E8A00(MEMORY[0x277D84F90]);
  sub_2591E8B3C(inited);
  swift_setDeallocating();
  sub_2591F7FC0(inited + 32);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB80, &qword_259226538);
  sub_2591F8028(&qword_27F99B7D0, type metadata accessor for CFString);
  v9 = sub_259212800();

  CVPixelBufferCreate(0, v4, v5, a1, v9, pixelBufferOut);

  result = pixelBufferOut[0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

CVPixelBufferRef _s19MicroLocationDaemon17ULVisionUtilitiesC26createPixelBufferRotatedUp4from0K11OrientationSo11CVBufferRefaSgAH_So015CGImagePropertyL0VtFZ_0(__CVBuffer *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v5 = [v4 imageByApplyingCGOrientation_];
  [v5 extent];
  v7 = v6;
  v9 = v8;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v11 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(PixelFormatType, v7, v9);
  if (v11)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    [v12 render:v5 toCVPixelBuffer:v11];

    v4 = v5;
    v5 = v12;
  }

  return v11;
}

__CVBuffer *_s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4from6formatSo11CVBufferRefaSg10Foundation3URLV_s6UInt32VtFZ_0(uint64_t a1, OSType a2)
{
  v3 = sub_259212060();
  v4 = CGImageSourceCreateWithURL(v3, 0);

  if (!v4)
  {
    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
  if (ImageAtIndex)
  {
    v6 = ImageAtIndex;
    v7 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
    [(CGImageSource *)v7 extent];
    v9 = v8;
    [(CGImageSource *)v7 extent];
    v11 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(a2, v9, v10);
    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      CVPixelBufferLockBaseAddress(v11, 1uLL);
      [v12 render:v7 toCVPixelBuffer:v11];
      CVPixelBufferUnlockBaseAddress(v11, 1uLL);
    }
  }

  else
  {
    v11 = 0;
    v7 = v4;
  }

  return v11;
}

void sub_2591F7C54(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v3 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [(CGImage *)v2 extent];
  v4 = [v3 createCGImage:v2 fromRect:?];
  if (v4)
  {
    v5 = v4;
    v6 = sub_259212060();
    sub_2592124D0();
    v7 = sub_259212830();

    v8 = CGImageDestinationCreateWithURL(v6, v7, 1uLL, 0);

    if (v8)
    {
      CGImageDestinationAddImage(v8, v5, 0);
      if (CGImageDestinationFinalize(v8))
      {

        return;
      }

      sub_2591F7F6C();
      swift_allocError();
      *v13 = 0xD000000000000024;
      v13[1] = 0x800000025925F750;
      swift_willThrow();

      v2 = v5;
    }

    else
    {
      sub_259212B00();

      v10 = sub_259212090();
      MEMORY[0x259CA1040](v10);

      MEMORY[0x259CA1040](8236, 0xE200000000000000);
      sub_2592124F0();
      sub_2591F8028(&qword_27F99BB68, MEMORY[0x277D85578]);
      v11 = sub_259212BE0();
      MEMORY[0x259CA1040](v11);

      sub_2591F7F6C();
      swift_allocError();
      *v12 = 0xD00000000000002BLL;
      v12[1] = 0x800000025925F720;
      swift_willThrow();

      v2 = v3;
      v8 = v5;
    }
  }

  else
  {
    sub_2591F7F6C();
    swift_allocError();
    *v9 = 0xD00000000000002BLL;
    v9[1] = 0x800000025925F6F0;
    swift_willThrow();
    v8 = v3;
  }
}

unint64_t sub_2591F7F6C()
{
  result = qword_27F99BB60;
  if (!qword_27F99BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BB60);
  }

  return result;
}

uint64_t sub_2591F7FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB78, &qword_259226530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591F8028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2591F8070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2591F80B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for Anchor()
{
  result = qword_27F99BB88;
  if (!qword_27F99BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2591F8178()
{
  sub_2592121D0();
  if (v0 <= 0x3F)
  {
    sub_2591F81FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2591F81FC()
{
  if (!qword_27F99BB98)
  {
    type metadata accessor for simd_float4x4(255);
    v0 = sub_259212A40();
    if (!v1)
    {
      atomic_store(v0, &qword_27F99BB98);
    }
  }
}

id DatabaseUpdateRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseUpdateRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PoseEstimation.debugDescription.getter()
{
  v1 = v0;
  v37 = type metadata accessor for RelativePoseEstimate(0);
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualMappingFrame();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_relativePoses);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v33 = v0;
    v34 = v6;
    v43 = MEMORY[0x277D84F90];
    sub_2591E14E8(0, v10, 0);
    v11 = v43;
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v36 = "";
    v13 = *(v2 + 72);
    do
    {
      sub_2591F8AC4(v12, v5, type metadata accessor for RelativePoseEstimate);
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      sub_259212B00();
      v42 = v38;
      MEMORY[0x259CA1040](0xD000000000000010, v36 | 0x8000000000000000);
      sub_2592121D0();
      sub_2591F8A08();
      v14 = sub_259212BE0();
      MEMORY[0x259CA1040](v14);

      MEMORY[0x259CA1040](0x66736E617274202CLL, 0xED0000203A6D726FLL);
      v15 = &v5[*(v37 + 20)];
      v16 = *(v15 + 1);
      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v38 = *v15;
      v39 = v16;
      v40 = v17;
      v41 = v18;
      type metadata accessor for simd_float4x4(0);
      sub_259212B80();
      MEMORY[0x259CA1040](41, 0xE100000000000000);
      v19 = v42;
      sub_2591F8CB4(v5, type metadata accessor for RelativePoseEstimate);
      v43 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2591E14E8((v20 > 1), v21 + 1, 1);
        v11 = v43;
      }

      *(v11 + 16) = v21 + 1;
      *(v11 + 16 * v21 + 32) = v19;
      v12 += v13;
      --v10;
    }

    while (v10);
    v1 = v33;
    v6 = v34;
  }

  *&v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BBB8, &unk_2592265F0);
  sub_2591F8A60();
  v22 = sub_259212820();
  v24 = v23;

  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_259212B00();
  MEMORY[0x259CA1040](0xD000000000000017, 0x800000025925F820);
  v25 = v1 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_queryFrame;
  v26 = v35;
  sub_2591F8AC4(v25, v35, type metadata accessor for VisualMappingFrame);
  v27 = sub_2592121D0();
  sub_2591F8A08();
  v28 = sub_259212BE0();
  MEMORY[0x259CA1040](v28);

  (*(*(v27 - 8) + 8))(v26, v27);
  MEMORY[0x259CA1040](0xD00000000000001ELL, 0x800000025925F840);
  LODWORD(v42) = *(v25 + *(v6 + 20));
  v29 = sub_259212BE0();
  MEMORY[0x259CA1040](v29);

  MEMORY[0x259CA1040](0xD000000000000017, 0x800000025925F860);
  v30 = *(v25 + *(v6 + 24));
  sub_2592129A0();
  MEMORY[0x259CA1040](0xD000000000000010, 0x800000025925F880);
  MEMORY[0x259CA1040](v22, v24);

  return v38;
}

id PoseEstimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PoseEstimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2591F8A08()
{
  result = qword_27F99BBB0;
  if (!qword_27F99BBB0)
  {
    sub_2592121D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BBB0);
  }

  return result;
}

unint64_t sub_2591F8A60()
{
  result = qword_27F99BBC0;
  if (!qword_27F99BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F99BBB8, &unk_2592265F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BBC0);
  }

  return result;
}

uint64_t sub_2591F8AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2591F8B54()
{
  result = type metadata accessor for VisualMappingFrame();
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

void sub_2591F8C30()
{
  sub_2592121D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2591F8CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ULVisualMappingKitAnchor.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier;
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ULVisualMappingKitAnchor.__allocating_init(uniqueIdentifier:location:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier;
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ULVisualMappingKitAnchor.init(uniqueIdentifier:location:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier;
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ULVisualMappingKitAnchor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisualMappingKitAnchor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ULVisualMappingKitAnchor()
{
  result = qword_27F99BBE8;
  if (!qword_27F99BBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2591F9364()
{
  result = sub_2592121D0();
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

id ULVisualMappingKitLocation.__allocating_init(coordinates:)(__n128 a1)
{
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = a1;
  v5.receiver = v2;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ULVisualMappingKitLocation.init(coordinates:)(__n128 a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static ULVisualMappingKitLocation.locationNotAvailable()()
{
  v3 = *MEMORY[0x277D28830];
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = v3;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ULVisualMappingKitLocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisualMappingKitLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ULVisualMappingKitManager.__allocating_init(queue:delegate:exclaveManager:databaseService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2591FCD68(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

id ULVisualMappingKitManager.init(queue:delegate:exclaveManager:databaseService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2591FCD68(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

void ULVisualMappingKitManager.setup(for:)(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v61 - v8;
  v9 = sub_2592121D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_259212580();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x277D85200], v14, v17);
  v21 = v20;
  LOBYTE(v20) = sub_259212590();
  (*(v15 + 8))(v19, v14);
  if (v20)
  {
    v66 = v6;
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = sub_259212520();
  v23 = __swift_project_value_buffer(v22, qword_281456B60);
  v63 = *(v10 + 16);
  v63(v13, v70, v9);
  v64 = v23;
  v24 = sub_259212500();
  v25 = sub_259212A00();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v62 = v2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v65 = v10;
    v29 = v28;
    v69[0] = v28;
    *v27 = 136315138;
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0]);
    v30 = sub_259212BE0();
    v32 = v31;
    (*(v65 + 8))(v13, v9);
    v33 = sub_2591E0FD4(v30, v32, v69);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_258FE9000, v24, v25, "[VisualMappingKitManager]: setting up for location %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v34 = v29;
    v10 = v65;
    MEMORY[0x259CA2F70](v34, -1, -1);
    v35 = v27;
    v2 = v62;
    MEMORY[0x259CA2F70](v35, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v36 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  v37 = v67;
  sub_2591F56BC(v2 + v36, v67);
  v38 = (*(v10 + 48))(v37, 1, v9);
  sub_2591F572C(v37);
  if (v38 != 1)
  {
    sub_2591FD0D0();
    v55 = swift_allocError();
    *v56 = 0xD000000000000041;
    *(v56 + 8) = 0x800000025925FB50;
    *(v56 + 16) = 0;
    v68 = v55;
    swift_willThrow();
    return;
  }

  v39 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_databaseService);
  v40 = v10;
  v41 = v70;
  v42 = sub_259212170();
  v43 = [v39 fetchVMKModelFor_];

  v67 = sub_2592120F0();
  v45 = v44;

  v46 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager);
  v47 = sub_259212170();
  [v46 loadKeyFramesFor_];

  v48 = v66;
  v63(v66, v41, v9);
  (*(v40 + 56))(v48, 0, 1, v9);
  v49 = v67;
  swift_beginAccess();
  sub_2591FD060(v48, v2 + v36);
  swift_endAccess();
  sub_2591E55C8(v49, v45);
  v50 = sub_259212500();
  v51 = sub_259212A00();
  if (!os_log_type_enabled(v50, v51))
  {
    sub_2591DD3CC(v49, v45);
LABEL_21:
    sub_2591DD3CC(v49, v45);

    return;
  }

  v52 = swift_slowAlloc();
  *v52 = 134217984;
  v53 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v53 != 2)
    {
      v54 = 0;
      goto LABEL_20;
    }

    v58 = *(v49 + 16);
    v57 = *(v49 + 24);
    v59 = __OFSUB__(v57, v58);
    v54 = v57 - v58;
    if (!v59)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v53)
  {
    v54 = BYTE6(v45);
LABEL_20:
    *(v52 + 4) = v54;
    v60 = v52;
    sub_2591DD3CC(v49, v45);
    _os_log_impl(&dword_258FE9000, v50, v51, "[VisualMappingKitManager]: setup finished with model size: %ld", v60, 0xCu);
    MEMORY[0x259CA2F70](v60, -1, -1);
    goto LABEL_21;
  }

  LODWORD(v54) = HIDWORD(v49) - v49;
  if (!__OFSUB__(HIDWORD(v49), v49))
  {
    v54 = v54;
    goto LABEL_20;
  }

  __break(1u);
}

Swift::Void __swiftcall ULVisualMappingKitManager.teardown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21[-v4];
  v6 = sub_259212580();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_259212590();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_259212520();
  __swift_project_value_buffer(v14, qword_281456B60);
  v15 = sub_259212500();
  v16 = sub_259212A00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_258FE9000, v15, v16, "[VisualMappingKitManager]: tearing down", v17, 2u);
    MEMORY[0x259CA2F70](v17, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager) unloadKeyFrames];
  v18 = sub_2592121D0();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591FD060(v5, v1 + v19);
  swift_endAccess();
  v21[0] = 1;
  v20 = v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 1;
}

unint64_t ULVisualMappingKitManager.addAnchor(identifiedBy:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *&v58 = &v52 - v5;
  v6 = sub_2592121D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = sub_259212580();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59[0] = v1;
  v19 = *(*&v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x277D85200], v13, v16);
  v20 = v19;
  LOBYTE(v19) = sub_259212590();
  (*(v14 + 8))(v18, v13);
  if (v19)
  {
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v22 = *(v7 + 16);
  v57 = a1;
  v54 = v22;
  v55 = v7 + 16;
  v22(v12, a1, v6);
  v23 = sub_259212500();
  v24 = sub_2592129D0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v61[0] = v26;
    *v25 = 136315138;
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0]);
    v27 = sub_259212BE0();
    v28 = v7;
    v29 = v6;
    v31 = v30;
    v32 = v12;
    v33 = *(v28 + 8);
    v33(v32, v29);
    v34 = sub_2591E0FD4(v27, v31, v61);
    v6 = v29;
    v7 = v28;

    *(v25 + 4) = v34;
    _os_log_impl(&dword_258FE9000, v23, v24, "[VisualMappingKitManager]: adding anchor with identifier: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x259CA2F70](v26, -1, -1);
    MEMORY[0x259CA2F70](v25, -1, -1);
  }

  else
  {

    v35 = v12;
    v33 = *(v7 + 8);
    v33(v35, v6);
  }

  v36 = v59[0];
  v37 = 0xD000000000000018;
  v38 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  v39 = v58;
  sub_2591F56BC(*&v36 + v38, v58);
  LODWORD(v38) = (*(v7 + 48))(v39, 1, v6);
  sub_2591F572C(v39);
  if (v38 == 1)
  {
    v40 = "ll teardown first";
    v37 = 0xD00000000000001ELL;
  }

  else
  {
    v41 = (*&v36 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform);
    if ((*(*&v36 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform + 64) & 1) == 0)
    {
      *v59 = *v41;
      v58 = v41[1];
      v53 = v41[2];
      v52 = v41[3];
      v45 = v56;
      v46 = v54;
      v54(v56, v57, v6);
      v47 = objc_allocWithZone(type metadata accessor for ULVisualMappingKitLocation());
      v48 = [v47 initWithTransform_];
      v49 = type metadata accessor for ULVisualMappingKitAnchor();
      v50 = objc_allocWithZone(v49);
      v46(&v50[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier], v45, v6);
      *&v50[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = v48;
      v60.receiver = v50;
      v60.super_class = v49;
      v42 = objc_msgSendSuper2(&v60, sel_init);
      v33(v45, v6);
      return v42;
    }

    v40 = "add Anchor called before setup";
  }

  v42 = v40 | 0x8000000000000000;
  sub_2591FD0D0();
  v43 = swift_allocError();
  *v44 = v37;
  *(v44 + 8) = v42;
  *(v44 + 16) = 1;
  v61[4] = v43;
  swift_willThrow();
  return v42;
}

uint64_t ULVisualMappingKitManager.deleteAnchor(identifiedBy:)(uint64_t a1)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34 - v5;
  v6 = sub_2592121D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_259212580();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x277D85200], v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_259212590();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    v34 = v2;
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_259212520();
  __swift_project_value_buffer(v19, qword_281456B60);
  (*(v7 + 16))(v10, v35, v6);
  v20 = sub_259212500();
  v21 = sub_2592129D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315138;
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0]);
    v24 = sub_259212BE0();
    v26 = v25;
    (*(v7 + 8))(v10, v6);
    v27 = sub_2591E0FD4(v24, v26, &v37);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_258FE9000, v20, v21, "[VisualMappingKitManager]: deleting anchor with identifier: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x259CA2F70](v23, -1, -1);
    MEMORY[0x259CA2F70](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v28 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  v29 = v38;
  swift_beginAccess();
  v30 = v29 + v28;
  v31 = v36;
  sub_2591F56BC(v30, v36);
  LODWORD(v28) = (*(v7 + 48))(v31, 1, v6);
  result = sub_2591F572C(v31);
  if (v28 == 1)
  {
    sub_2591FD0D0();
    swift_allocError();
    *v33 = 0xD000000000000021;
    *(v33 + 8) = 0x800000025925FBE0;
    *(v33 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2591FAE14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  v12 = a1;
  a5(v11);
  (*(v8 + 8))(v11, v7);

  return 1;
}

uint64_t ULVisualMappingKitManager.getAnchors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_259212580();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_259212590();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_4:
    v16 = sub_259212520();
    __swift_project_value_buffer(v16, qword_281456B60);
    v17 = sub_259212500();
    v18 = sub_2592129F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "[VisualMappingKitManager]: get anchors called before setup";
LABEL_10:
      _os_log_impl(&dword_258FE9000, v17, v18, v20, v19, 2u);
      MEMORY[0x259CA2F70](v19, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v13 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591F56BC(v0 + v13, v4);
  v14 = sub_2592121D0();
  v15 = (*(*(v14 - 8) + 48))(v4, 1, v14);
  sub_2591F572C(v4);
  if (v15 == 1)
  {
    if (qword_281455650 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v17 = sub_259212500();
  v18 = sub_2592129D0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "[VisualMappingKitManager]: getting anchors";
    goto LABEL_10;
  }

LABEL_11:

  return MEMORY[0x277D84F90];
}

id ULVisualMappingKitManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisualMappingKitManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ULVisualMappingKitManager.processPoseEstimation(_:)(uint64_t *a1)
{
  v38 = a1;
  v2 = type metadata accessor for VisualMappingFrame();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2592121D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_259212580();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x277D85200], v14, v17);
  v21 = v20;
  LOBYTE(v20) = sub_259212590();
  (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v22 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591F56BC(v1 + v22, v13);
  v23 = (*(v6 + 48))(v13, 1, v5);
  sub_2591F572C(v13);
  if (v23 == 1)
  {
    sub_2591FD0D0();
    swift_allocError();
    *v24 = 0xD000000000000027;
    *(v24 + 8) = 0x800000025925FC40;
    *(v24 + 16) = 3;
    swift_willThrow();
    return;
  }

  if (qword_281455650 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v25 = sub_259212520();
  __swift_project_value_buffer(v25, qword_281456B60);
  v26 = v38;
  v27 = sub_259212500();
  v28 = sub_2592129D0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v29 = 136315394;
    v30 = v37;
    sub_2591FD45C(v26 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_queryFrame, v37, type metadata accessor for VisualMappingFrame);
    (*(v6 + 32))(v9, v30, v5);
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0]);
    v31 = sub_259212BE0();
    v33 = v32;
    (*(v6 + 8))(v9, v5);
    v34 = sub_2591E0FD4(v31, v33, &v39);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2048;
    v35 = *(*(v26 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_relativePoses) + 16);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_258FE9000, v27, v28, "[VisualMappingKitManager]: processPoseEstimation called for queryFrameIdentifier: %s, poses count: %ld", v29, 0x16u);
    v36 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x259CA2F70](v36, -1, -1);
    MEMORY[0x259CA2F70](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t ULVisualMappingKitManager.processOdometry(_:)(char *a1)
{
  v2 = v1;
  v102 = a1;
  v113[5] = *MEMORY[0x277D85DE8];
  v3 = sub_259212550();
  v101 = *(v3 - 8);
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_259212570();
  v98 = *(v100 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v93 - v10;
  v12 = sub_2592121D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v103 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_259212580();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x277D85200], v16, v19);
  v96 = v22;
  LOBYTE(v22) = sub_259212590();
  (*(v17 + 8))(v21, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_56:
    swift_once();
LABEL_5:
    v26 = sub_259212520();
    __swift_project_value_buffer(v26, qword_281456B60);
    v27 = v102;
    v28 = sub_259212500();
    v29 = sub_2592129E0();

    v30 = os_log_type_enabled(v28, v29);
    v95 = v3;
    v94 = v12;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v113[0] = v32;
      *v31 = 136315138;
      aBlock = *&v27[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_deltaPosition];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BC20, qword_2592266D0);
      sub_2591FD520(&qword_27F99BC28, &qword_27F99BC20, qword_2592266D0);
      v33 = sub_259212C10();
      v35 = sub_2591E0FD4(v33, v34, v113);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_258FE9000, v28, v29, "[VisualMappingKitManager]: processOdometry called with deltaPosition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v36 = v104;
      MEMORY[0x259CA2F70](v32, -1, -1);
      MEMORY[0x259CA2F70](v31, -1, -1);
    }

    else
    {

      v36 = v104;
    }

    updated = type metadata accessor for DatabaseUpdateRequest();
    v38 = objc_allocWithZone(updated);
    v39 = MEMORY[0x277D84F90];
    *&v38[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToAdd] = MEMORY[0x277D84F90];
    *&v38[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToDelete] = v39;
    v107.receiver = v38;
    v107.super_class = updated;
    v40 = objc_msgSendSuper2(&v107, sel_init);
    v41 = v40;
    v105 = 0;
    v42 = v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 0u;
    *v42 = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 64) = 0;
    if (!*(*&v40[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToAdd] + 16) && !*(*&v40[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToDelete] + 16))
    {
      goto LABEL_53;
    }

    [*(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager) updateWithDatabaseUpdateRequest_];
    v43 = sub_2591FD124(&unk_286A5F4A8);
    v45 = v44;
    sub_2591E55C8(v43, v44);
    v46 = sub_259212500();
    v47 = sub_2592129D0();
    if (!os_log_type_enabled(v46, v47))
    {
      sub_2591DD3CC(v43, v45);
      goto LABEL_23;
    }

    v48 = swift_slowAlloc();
    *v48 = 134217984;
    v49 = v45 >> 62;
    if ((v45 >> 62) > 1)
    {
      if (v49 != 2)
      {
        v50 = 0;
        goto LABEL_22;
      }

      v52 = *(v43 + 16);
      v51 = *(v43 + 24);
      v53 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (!v53)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v49)
    {
      v50 = BYTE6(v45);
LABEL_22:
      *(v48 + 4) = v50;
      v54 = v48;
      sub_2591DD3CC(v43, v45);
      _os_log_impl(&dword_258FE9000, v46, v47, "[VisualMappingKitManager]: updating VMK map in DB with model size: %ld", v54, 0xCu);
      MEMORY[0x259CA2F70](v54, -1, -1);
LABEL_23:

      v55 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_databaseService);
      v110 = MEMORY[0x277CC9318];
      v111 = MEMORY[0x277CC9300];
      *&aBlock = v43;
      *(&aBlock + 1) = v45;
      v56 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
      v57 = *v56;
      v58 = v56[1];
      v59 = v58 >> 62;
      v102 = v55;
      if ((v58 >> 62) > 1)
      {
        if (v59 != 2)
        {
          memset(v106, 0, 14);
          sub_2591E55C8(v43, v45);
          v60 = v106;
          goto LABEL_51;
        }

        v61 = *(v57 + 16);
        v62 = *(v57 + 24);
        sub_2591E55C8(v43, v45);
        v63 = sub_259211FA0();
        if (v63)
        {
          v64 = sub_259211FC0();
          if (__OFSUB__(v61, v64))
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
          }

          v63 += v61 - v64;
        }

        v53 = __OFSUB__(v62, v61);
        v65 = v62 - v61;
        if (!v53)
        {
          v66 = sub_259211FB0();
          if (v66 >= v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = v66;
          }

          v68 = (v67 + v63);
          if (v63)
          {
            v69 = v68;
          }

          else
          {
            v69 = 0;
          }

          v70 = v63;
          v71 = v104;
          goto LABEL_49;
        }
      }

      else
      {
        if (!v59)
        {
          v106[0] = v57;
          LOWORD(v106[1]) = v58;
          BYTE2(v106[1]) = BYTE2(v58);
          BYTE3(v106[1]) = BYTE3(v58);
          BYTE4(v106[1]) = BYTE4(v58);
          BYTE5(v106[1]) = BYTE5(v58);
          sub_2591E55C8(v43, v45);
          v60 = v106 + BYTE6(v58);
LABEL_51:
          sub_2591FCB1C(v106, v60, v113);
          v104 = v36;
          goto LABEL_52;
        }

        v72 = v57;
        v73 = v57 >> 32;
        v74 = v73 - v72;
        if (v73 >= v72)
        {
          sub_2591E55C8(v43, v45);
          v75 = sub_259211FA0();
          if (!v75)
          {
LABEL_42:
            v77 = v104;
            v78 = sub_259211FB0();
            if (v78 >= v74)
            {
              v79 = v74;
            }

            else
            {
              v79 = v78;
            }

            v80 = (v79 + v75);
            if (v75)
            {
              v69 = v80;
            }

            else
            {
              v69 = 0;
            }

            v70 = v75;
            v71 = v77;
LABEL_49:
            sub_2591FCB1C(v70, v69, v113);
            v104 = v71;
            v39 = MEMORY[0x277D84F90];
LABEL_52:
            v81 = v113[0];
            v82 = v113[1];
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v83 = sub_2592120E0();
            sub_2591DD3CC(v81, v82);
            v84 = sub_259212170();
            [v102 insertVMKModel:v83 for:v84];

            sub_2591DD3CC(v43, v45);
LABEL_53:
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v86 = swift_allocObject();
            *(v86 + 16) = v85;
            *(v86 + 32) = 0u;
            *(v86 + 48) = 0u;
            *(v86 + 64) = 0u;
            *(v86 + 80) = 0u;
            *(v86 + 96) = 0x7FF0000000000000;
            *(v86 + 104) = v39;
            *(v86 + 112) = v41;
            v111 = sub_2591FD200;
            v112 = v86;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v109 = sub_2591F37A8;
            v110 = &block_descriptor_4;
            v87 = _Block_copy(&aBlock);

            v102 = v41;
            v88 = v39;
            v89 = v97;
            sub_259212560();
            v113[0] = v88;
            sub_2591FD224(&qword_27F99BA60, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA68, &qword_259225F00);
            sub_2591FD520(&qword_27F99BA70, &qword_27F99BA68, &qword_259225F00);
            v90 = v99;
            v91 = v95;
            sub_259212A60();
            MEMORY[0x259CA11D0](0, v89, v90, v87);
            _Block_release(v87);

            (*(v101 + 8))(v90, v91);
            (*(v98 + 8))(v89, v100);
            (*(v93 + 8))(v103, v94);

            goto LABEL_54;
          }

          v76 = sub_259211FC0();
          if (!__OFSUB__(v72, v76))
          {
            v75 += v72 - v76;
            goto LABEL_42;
          }

          goto LABEL_60;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_59;
    }

    LODWORD(v50) = HIDWORD(v43) - v43;
    if (__OFSUB__(HIDWORD(v43), v43))
    {
      goto LABEL_61;
    }

    v50 = v50;
    goto LABEL_22;
  }

  v23 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591F56BC(v2 + v23, v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v93 = v13;
    (*(v13 + 32))(v103, v11, v12);
    if (qword_281455650 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  sub_2591F572C(v11);
  sub_2591FD0D0();
  swift_allocError();
  *v24 = 0xD000000000000024;
  *(v24 + 8) = 0x800000025925FC70;
  *(v24 + 16) = 4;
  result = swift_willThrow();
LABEL_54:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591FC56C(uint64_t a1, __int128 *a2)
{
  v3 = sub_2592121D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Anchor();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      v53 = v7;
      v15 = a2[3];
      v51 = a2[2];
      v52 = v15;
      v16 = a2[1];
      v49 = *a2;
      v50 = v16;
      v54 = type metadata accessor for ULVisualMappingKitLocation();
      v17 = objc_allocWithZone(v54);
      v18 = [v17 initWithTransform_];
      v19 = v18;
      v20 = *(a2 + 9);
      v21 = *(v20 + 16);
      if (v21)
      {
        *&v50 = v3;
        v42 = v18;
        v43 = v14;
        v59 = MEMORY[0x277D84F90];
        sub_259212B50();
        v22 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        *&v52 = *(v8 + 72);
        *&v49 = v4 + 16;
        *&v51 = v4 + 8;
        v23 = v11;
        v48 = v11;
        do
        {
          sub_2591FD45C(v22, v23, type metadata accessor for Anchor);
          v34 = v23 + *(v55 + 20);
          if (*(v34 + 64))
          {
            v24 = *v49;
            v25 = v53;
            v26 = v23;
            v27 = v50;
            (*v49)(v53, v26, v50);
            v47 = *MEMORY[0x277D28830];
            v28 = v54;
            v29 = objc_allocWithZone(v54);
            *&v29[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = v47;
            v58.receiver = v29;
            v58.super_class = v28;
            v30 = objc_msgSendSuper2(&v58, sel_init);
            v31 = type metadata accessor for ULVisualMappingKitAnchor();
            v32 = objc_allocWithZone(v31);
            v24(&v32[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier], v25, v27);
            *&v32[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = v30;
            v57.receiver = v32;
            v57.super_class = v31;
            objc_msgSendSuper2(&v57, sel_init);
          }

          else
          {
            v47 = *v34;
            v46 = *(v34 + 16);
            v45 = *(v34 + 32);
            v44 = *(v34 + 48);
            v35 = *v49;
            v25 = v53;
            v36 = v23;
            v27 = v50;
            (*v49)(v53, v36, v50);
            v37 = objc_allocWithZone(v54);
            v38 = [v37 initWithTransform_];
            v39 = type metadata accessor for ULVisualMappingKitAnchor();
            v40 = objc_allocWithZone(v39);
            v35(&v40[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier], v25, v27);
            *&v40[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = v38;
            v56.receiver = v40;
            v56.super_class = v39;
            objc_msgSendSuper2(&v56, sel_init);
          }

          (*v51)(v25, v27);
          v23 = v48;
          sub_2591FD4C4(v48);
          sub_259212B30();
          v33 = *(v59 + 16);
          sub_259212B60();
          sub_259212B70();
          sub_259212B40();
          v22 += v52;
          --v21;
        }

        while (v21);
        v14 = v43;
        v19 = v42;
      }

      type metadata accessor for ULVisualMappingKitAnchor();
      v41 = sub_2592128B0();

      [v14 didUpdateLocation:v19 anchors:v41];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2591FCA7C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

_BYTE *sub_2591FCB1C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2591FCBB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2591FCC68(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2591FCCE4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_2591FCBB0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2591FCC68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_259211FD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_259211F90();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2592120D0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2591FCCE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_259211FD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_259211F90();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_2591FCD68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  ObjectType = swift_getObjectType();
  v9 = sub_259212580();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  v15 = sub_2592121D0();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = &v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform];
  v30 = 1;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  v16[64] = 1;
  *v13 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v17 = a1;
  LOBYTE(v14) = sub_259212590();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    *&v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue] = v17;
    swift_unknownObjectWeakAssign();
    *&v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager] = a3;
    *&v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_databaseService] = a4;
    type metadata accessor for VMKSession();
    v18 = swift_allocObject();
    v19 = &v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_visualMappingService];
    *v19 = v18;
    v19[1] = &off_286A60278;
    v20 = qword_281455650;
    v21 = v17;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = sub_259212520();
  __swift_project_value_buffer(v22, qword_281456B60);
  v23 = sub_259212500();
  v24 = sub_259212A00();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_258FE9000, v23, v24, "[ULVisualMappingKitManager]: initialized", v25, 2u);
    MEMORY[0x259CA2F70](v25, -1, -1);
  }

  v29.receiver = v5;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init, v27);
}

uint64_t sub_2591FD060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2591FD0D0()
{
  result = qword_27F99BC18;
  if (!qword_27F99BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BC18);
  }

  return result;
}

uint64_t sub_2591FD124(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BC40, &qword_2592268A8);
  v10 = sub_2591FD520(&qword_27F99BC48, &qword_27F99BC40, &qword_2592268A8);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2591FCB1C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591FD224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ULVisualMappingKitManager()
{
  result = qword_2814556E8;
  if (!qword_2814556E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2591FD2C0()
{
  sub_2591F5A68();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2591FD3C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_2591FD408(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2591FD45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2591FD4C4(uint64_t a1)
{
  v2 = type metadata accessor for Anchor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591FD520(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for VisualMappingFrame()
{
  result = qword_27F99BC50;
  if (!qword_27F99BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2591FD5DC()
{
  result = sub_2592121D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2591FD660()
{
  sub_259212C90();
  sub_2592121D0();
  sub_2591FD95C(&qword_27F99BC68, MEMORY[0x277CC95F0]);
  sub_259212810();
  v1 = type metadata accessor for VisualMappingFrame();
  v2 = *(v0 + *(v1 + 20));
  sub_259212CB0();
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x259CA1480](*&v3);
  return sub_259212CD0();
}

uint64_t sub_2591FD734(uint64_t a1, uint64_t a2)
{
  sub_2592121D0();
  sub_2591FD95C(&qword_27F99BC68, MEMORY[0x277CC95F0]);
  sub_259212810();
  v4 = *(v2 + *(a2 + 20));
  sub_259212CB0();
  v5 = *(v2 + *(a2 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x259CA1480](*&v5);
}

uint64_t sub_2591FD7E8(uint64_t a1, uint64_t a2)
{
  sub_259212C90();
  sub_2592121D0();
  sub_2591FD95C(&qword_27F99BC68, MEMORY[0x277CC95F0]);
  sub_259212810();
  v4 = *(v2 + *(a2 + 20));
  sub_259212CB0();
  v5 = *(v2 + *(a2 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x259CA1480](*&v5);
  return sub_259212CD0();
}

uint64_t sub_2591FD95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VisualMappingOdometry.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BC70, &unk_259226940);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_timestamp);
  *(v1 + 16) = xmmword_259226930;
  v3 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_deltaPosition);
  v5 = MEMORY[0x277D83A90];
  v6 = MEMORY[0x277D83B08];
  *(v1 + 96) = MEMORY[0x277D83A90];
  *(v1 + 104) = v6;
  *(v1 + 72) = v4;
  *(v1 + 136) = v5;
  *(v1 + 144) = v6;
  *(v1 + 112) = DWORD1(v4);
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;
  *(v1 + 152) = DWORD2(v4);
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_attitudeQuaternion);
  *(v1 + 216) = v5;
  *(v1 + 224) = v6;
  *(v1 + 192) = v7;
  *(v1 + 256) = v5;
  *(v1 + 264) = v6;
  *(v1 + 232) = DWORD1(v7);
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  *(v1 + 272) = DWORD2(v7);
  *(v1 + 336) = v5;
  *(v1 + 344) = v6;
  *(v1 + 312) = HIDWORD(v7);

  return MEMORY[0x28211E920](0xD00000000000006FLL, 0x800000025925FE50, v1);
}

id sub_2591FDAB0(void *a1)
{
  v1 = a1;
  VisualMappingOdometry.description.getter();

  v2 = sub_259212830();

  return v2;
}

id VisualMappingOdometry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualMappingOdometry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2591FDC70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2591FDD90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2591FF58C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_258FF9254(v4);
}

uint64_t sub_2591FDE30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2591FF578;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_258FF9254(v3);
  return sub_2591EBD18(v8);
}

id sub_2591FDF70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2591FDC70;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2591FE050(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_258FF9254(v4);
  return v4;
}

uint64_t sub_2591FE174(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_2591EBD18(v7);
}

uint64_t sub_2591FE1D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2591FF54C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_258FF9254(v4);
}

uint64_t sub_2591FE270(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2591FF514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_258FF9254(v3);
  return sub_2591EBD18(v8);
}

id ULDeviceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULDeviceManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_thisDeviceClass] = 0;
  *&v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_activeDeviceClasses] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_trackedDeviceClass] = 0;
  swift_beginAccess();
  sub_2591FE854(&v5, 0);
  swift_endAccess();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ULDeviceManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2591FE4E8()
{
  v1 = OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_activeDeviceClasses;
  result = swift_beginAccess();
  v3 = 0;
  v4 = *(v0 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v4 + 48) + ((v9 << 9) | (8 * v10)));
    if (v11 != *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_thisDeviceClass))
    {
LABEL_13:
      *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_trackedDeviceClass) = v11;
      return result;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      v11 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_thisDeviceClass);
      goto LABEL_13;
    }

    v7 = *(v4 + 56 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id ULDeviceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULDeviceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2591FE854(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_259212C90();
  MEMORY[0x259CA1460](a2);
  v7 = sub_259212CD0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2591FED78(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2591FEB28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCB8, &qword_259226A08);
  result = sub_259212AD0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_259212C90();
      MEMORY[0x259CA1460](v18);
      result = sub_259212CD0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_2591FED78(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2591FEB28(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2591FEED4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2591FF014(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_259212C90();
  MEMORY[0x259CA1460](a1);
  v10 = sub_259212CD0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for ULDeviceClass(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_259212C20();
  __break(1u);
}

void *sub_2591FEED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCB8, &qword_259226A08);
  v2 = *v0;
  v3 = sub_259212AC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2591FF014(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCB8, &qword_259226A08);
  result = sub_259212AD0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_259212C90();
      MEMORY[0x259CA1460](v17);
      result = sub_259212CD0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2591FF234(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_259212C90();
  MEMORY[0x259CA1460](a1);
  v5 = sub_259212CD0();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2591FEED4();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_2591FF340(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_2591FF340(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_259212A70();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_259212C90();
        MEMORY[0x259CA1460](v12);
        v13 = sub_259212CD0() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591FF514(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2591FF54C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2591FF590(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2591E1488(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2591E1488((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

char *sub_2591FF704(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v17 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    result = sub_2591E14A8(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v16 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        result = (v17)(&v20, &v19, &v18);
        if (v4)
        {

          return v18;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          result = sub_2591E14A8((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 16 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_21;
        }

        if (v16 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_2591FF888(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v18 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v22 = MEMORY[0x277D84F90];
    result = sub_2591E14C8(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v22;
      v10 = v5 - a3;
      if (v5 < a3)
      {
        v10 = 0;
      }

      v16 = v7;
      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v20 = a3 + v9;
        result = (v18)(&v21, &v20, &v19);
        if (v4)
        {

          return v19;
        }

        v12 = v5;
        v13 = v21;
        v22 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_2591E14C8((v14 > 1), v15 + 1, 1);
          v8 = v22;
        }

        *(v8 + 16) = v15 + 1;
        *(v8 + 8 * v15 + 32) = v13;
        if (v12 < a3)
        {
          goto LABEL_21;
        }

        if (v17 == ++v9)
        {
          goto LABEL_22;
        }

        v5 = v12;
        if (v11 == v16)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2591FFA10(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2591E1508(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2591E1508((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2591FFB84(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2591E1528(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2591E1528((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 4 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

double sub_2591FFCF8@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_2591FFD44(v7);
  if (!v2)
  {
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_2591FFD44@<X0>(unint64_t *a1@<X8>)
{
  v40 = a1;
  v2 = sub_2592126F0();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_259212770();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_259212790();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = *(v1 + 16);
  v21 = v44;
  sub_2592127B0();
  if (v21)
  {
    v25 = v46;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v27 = v25;
  }

  else
  {
    v39 = v5;
    v44 = v2;
    v22 = v42;
    v23 = *(v43 + 32);
    v43 += 32;
    v24 = v23;
    v23(v16, v19, v42);
    sub_259212780();
    sub_259212750();
    sub_259212760();
    sub_2592127C0();
    v24(v16, v13, v22);
    v28 = v39;
    sub_2592126E0();
    sub_259202A84(&v46, &v47);
    v29 = v54;
    v30 = v44;
    v31 = v41;
    if (v54 < 0)
    {
      v37 = v47 & 1;
      v45 = v47 & 1;
      sub_259202A30();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v38 = v37;
      return (*(v31 + 8))(v28, v30);
    }

    else
    {
      v32 = v53;
      v33 = v52;
      v34 = v51;
      v35 = (v48 << 8) | ((v49 | (v50 << 16)) << 40) | v47;

      sub_259202C58(&v47);
      result = (*(v31 + 8))(v28, v30);
      v36 = v40;
      *v40 = v35;
      *(v36 + 2) = v34;
      v36[2] = v33;
      v36[3] = v32;
      *(v36 + 32) = v29 & 1;
    }
  }

  return result;
}

uint64_t sub_259200214()
{
  v1 = sub_2592126F0();
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_259212770();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_259212790();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = *(v0 + 16);
  v19 = v36;
  sub_2592127B0();
  if (v19)
  {
    v21 = v38;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v23 = v21;
  }

  else
  {
    v32 = v4;
    v36 = v1;
    v20 = *(v34 + 32);
    v20(v14, v17, v35);
    sub_259212780();
    sub_259212750();
    sub_259212760();
    sub_2592127C0();
    v20(v14, v11, v35);
    v24 = v32;
    sub_2592126E0();
    v25 = sub_2592126A0();
    if (v25)
    {
      v26 = v36;
      if (v25 == 1)
      {
        v27 = sub_259202920();
        v28 = v33;
        v29 = v27 & 1;
        v37 = v27 & 1;
        sub_259202A30();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v30 = v29;
        return (*(v28 + 8))(v24, v26);
      }

      else
      {
        result = sub_259212B90();
        __break(1u);
      }
    }

    else
    {
      return (*(v33 + 8))(v24, v36);
    }
  }

  return result;
}

uint64_t sub_2592006C4(uint64_t a1)
{
  v4 = sub_2592126F0();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_259212770();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = sub_259212790();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v62);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v14);
  v61 = &v54 - v15;
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v20 = 0;
  v21 = 0;
  v22 = *(a1 + 16);
  v23 = (a1 + 32);
  while (v22 != v20)
  {
    v24 = v23[v20++];
    v25 = *(v24 + 2);
    if (v25 >= 0x10)
    {
      v25 = 16;
    }

    v26 = __OFADD__(v21, v25);
    v21 += v25;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  v26 = __OFADD__(v21, 8);
  v27 = v21 + 8;
  if (v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v27, 8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v64 = 0;
    v65 = 0xE000000000000000;

    sub_259212B00();
    MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CA1040](0xD000000000000037, 0x80000002592601A0);
    v63 = *(v19 + 2);
    v53 = sub_259212BE0();
    MEMORY[0x259CA1040](v53);

    while (1)
    {
LABEL_23:
      sub_259212B90();
      __break(1u);
    }
  }

  v60 = v17;
  v28 = *(v1 + 16);
  sub_2592127B0();
  if (v2)
  {
    v46 = v66;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v48 = v46;
  }

  else
  {
    v55 = *(v9 + 32);
    v56 = v9 + 32;
    v55(v61, v19, v62);
    sub_259212780();
    sub_259212750();
    sub_259212750();
    if (v22)
    {
      do
      {
        v19 = *v23;
        if (*(*v23 + 2) != 16)
        {
          goto LABEL_22;
        }

        v29 = *v23;

        v30 = v19[32];
        sub_259212730();
        v31 = v19[33];
        sub_259212730();
        v32 = v19[34];
        sub_259212730();
        v33 = v19[35];
        sub_259212730();
        v34 = v19[36];
        sub_259212730();
        v35 = v19[37];
        sub_259212730();
        v36 = v19[38];
        sub_259212730();
        v37 = v19[39];
        sub_259212730();
        v38 = v19[40];
        sub_259212730();
        v39 = v19[41];
        sub_259212730();
        v40 = v19[42];
        sub_259212730();
        v41 = v19[43];
        sub_259212730();
        v42 = v19[44];
        sub_259212730();
        v43 = v19[45];
        sub_259212730();
        v44 = v19[46];
        sub_259212730();
        v45 = v19[47];
        sub_259212730();

        ++v23;
      }

      while (--v22);
    }

    sub_259212760();
    sub_2592127C0();
    v55(v61, v13, v62);
    v49 = v59;
    sub_2592126E0();
    v50 = sub_2592126A0();
    if (v50)
    {
      if (v50 != 1)
      {
        goto LABEL_23;
      }

      v51 = sub_259202920() & 1;
      LOBYTE(v64) = v51;
      sub_259202A30();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v52 = v51;
    }

    return (*(v57 + 8))(v49, v58);
  }

  return result;
}

uint64_t sub_259200D24(uint64_t a1)
{
  v4 = sub_2592126F0();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_259212770();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = sub_259212790();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v62);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v14);
  v61 = &v54 - v15;
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v20 = 0;
  v21 = 0;
  v22 = *(a1 + 16);
  v23 = (a1 + 32);
  while (v22 != v20)
  {
    v24 = v23[v20++];
    v25 = *(v24 + 2);
    if (v25 >= 0x10)
    {
      v25 = 16;
    }

    v26 = __OFADD__(v21, v25);
    v21 += v25;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  v26 = __OFADD__(v21, 8);
  v27 = v21 + 8;
  if (v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v27, 8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v64 = 0;
    v65 = 0xE000000000000000;

    sub_259212B00();
    MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CA1040](0xD000000000000037, 0x80000002592601A0);
    v63 = *(v19 + 2);
    v53 = sub_259212BE0();
    MEMORY[0x259CA1040](v53);

    while (1)
    {
LABEL_23:
      sub_259212B90();
      __break(1u);
    }
  }

  v60 = v17;
  v28 = *(v1 + 16);
  sub_2592127B0();
  if (v2)
  {
    v46 = v66;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v48 = v46;
  }

  else
  {
    v55 = *(v9 + 32);
    v56 = v9 + 32;
    v55(v61, v19, v62);
    sub_259212780();
    sub_259212750();
    sub_259212750();
    if (v22)
    {
      do
      {
        v19 = *v23;
        if (*(*v23 + 2) != 16)
        {
          goto LABEL_22;
        }

        v29 = *v23;

        v30 = v19[32];
        sub_259212730();
        v31 = v19[33];
        sub_259212730();
        v32 = v19[34];
        sub_259212730();
        v33 = v19[35];
        sub_259212730();
        v34 = v19[36];
        sub_259212730();
        v35 = v19[37];
        sub_259212730();
        v36 = v19[38];
        sub_259212730();
        v37 = v19[39];
        sub_259212730();
        v38 = v19[40];
        sub_259212730();
        v39 = v19[41];
        sub_259212730();
        v40 = v19[42];
        sub_259212730();
        v41 = v19[43];
        sub_259212730();
        v42 = v19[44];
        sub_259212730();
        v43 = v19[45];
        sub_259212730();
        v44 = v19[46];
        sub_259212730();
        v45 = v19[47];
        sub_259212730();

        ++v23;
      }

      while (--v22);
    }

    sub_259212760();
    sub_2592127C0();
    v55(v61, v13, v62);
    v49 = v59;
    sub_2592126E0();
    v50 = sub_2592126A0();
    if (v50)
    {
      if (v50 != 1)
      {
        goto LABEL_23;
      }

      v51 = sub_259202920() & 1;
      LOBYTE(v64) = v51;
      sub_259202A30();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v52 = v51;
    }

    return (*(v57 + 8))(v49, v58);
  }

  return result;
}

uint64_t sub_259201378(uint64_t a1)
{
  if (*(a1 + 16) == 16)
  {
    v2 = *(a1 + 32);
    sub_259212730();
    v3 = *(a1 + 33);
    sub_259212730();
    v4 = *(a1 + 34);
    sub_259212730();
    v5 = *(a1 + 35);
    sub_259212730();
    v6 = *(a1 + 36);
    sub_259212730();
    v7 = *(a1 + 37);
    sub_259212730();
    v8 = *(a1 + 38);
    sub_259212730();
    v9 = *(a1 + 39);
    sub_259212730();
    v10 = *(a1 + 40);
    sub_259212730();
    v11 = *(a1 + 41);
    sub_259212730();
    v12 = *(a1 + 42);
    sub_259212730();
    v13 = *(a1 + 43);
    sub_259212730();
    v14 = *(a1 + 44);
    sub_259212730();
    v15 = *(a1 + 45);
    sub_259212730();
    v16 = *(a1 + 46);
    sub_259212730();
    v17 = *(a1 + 47);
    return sub_259212730();
  }

  else
  {
    v19 = *(a1 + 16);
    sub_259212B00();
    MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CA1040](0xD000000000000037, 0x80000002592601A0);
    v20 = sub_259212BE0();
    MEMORY[0x259CA1040](v20);

    result = sub_259212B90();
    __break(1u);
  }

  return result;
}

uint64_t sub_259201504()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25920153C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2592127A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_2592127E0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2592127D0();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_25920166C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v5 = v3;
  v87 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCD8, &qword_259226B18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v83 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  v22 = sub_259212770();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v90 = v21;
  v92 = v22;
  v88 = v24;
  v24(v21, 1, 1);
  v91 = a1;
  v25 = sub_259202E7C();
  if (v25 <= 1)
  {
    if (!v25)
    {
      v26 = v91;
      v27 = sub_2592126C0();
      MEMORY[0x28223BE20](v27);
      v81 = v26;
      v29 = sub_2591FF888(sub_259202FDC, (&v83 - 4), 0, v28);
      if (v4)
      {
        v30 = v90;
        if ((*(v23 + 48))(v90, 1, v92) != 1)
        {
          sub_259203008(v30);
        }

        v31 = sub_2592126F0();
        result = (*(*(v31 - 8) + 8))(v26, v31);
        LODWORD(v33) = v29;
LABEL_39:
        *v89 = v33;
        return result;
      }

      v51 = v5[6];
      v52 = v5[7];
      __swift_project_boxed_opaque_existential_1(v5 + 3, v51);
      (*(v52 + 32))(v29, v51, v52);

      v68 = v90;
      v69 = v86;
      sub_2592126D0();
      v91 = 0;
      v70 = v92;
      (v88)(v69, 0, 1, v92);
      v54 = *(v23 + 48);
      if (v54(v68, 1, v70) != 1)
      {
        sub_259203008(v68);
      }

      sub_259203070(v69, v68);
      v53 = v92;
      if (v54(v68, 1, v92))
      {
        goto LABEL_47;
      }

LABEL_43:
      sub_259212730();
      goto LABEL_47;
    }

    v38 = v5[6];
    v39 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v38);
    (*(v39 + 8))(&v95, v38, v39);
    v40 = v23;
    if (v4)
    {
      v94 = v4;
      v41 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
      if (swift_dynamicCast())
      {

        v42 = v93;
        v43 = 0;
        v86 = 0;
        v44 = 0;
        v45 = 128;
        goto LABEL_27;
      }

      v82 = 0;
      v81 = 215;
LABEL_57:
      result = sub_259212B90();
      __break(1u);
      return result;
    }

    v83 = v23;
    v55 = v95;
    v56 = v96;
    v57 = v97;
    v58 = v98;
    v45 = v99;
    v106 = v95;
    v100 = v98;
    sub_259203168(&v106, &v94);
    sub_2592031B4(&v100, &v94);
    v59 = sub_259202D78(v55, v58);
    v85 = v55;
    v60 = v55;
    v84 = v56;
    v86 = v57;
    v43 = v58;
    sub_259203128(v60, v56, v57, v58, v45);
    if (!__OFADD__(v59, 1))
    {
      v44 = v84;
      v42 = v85;
      v40 = v83;
LABEL_27:
      sub_2592126D0();
      LODWORD(v85) = v45;
      v91 = 0;
      v63 = v92;
      (v88)(v18, 0, 1, v92);
      v64 = v90;
      v88 = *(v40 + 48);
      if (v88(v90, 1, v63) != 1)
      {
        sub_259203008(v64);
      }

      sub_259203070(v18, v64);
      v68 = v64;
      if (v88(v64, 1, v92))
      {
        v65 = v42;
        v66 = v44;
        v67 = v86;
      }

      else
      {
        v72 = v44;
        v73 = v86;
        v101 = v42;
        v74 = v72;
        v102 = v72;
        v103 = v86;
        v104 = v43;
        v105 = v85;
        sub_259212730();
        v75 = v91;
        v76 = sub_259202840(&v101);
        if (v75)
        {
          LODWORD(v33) = v76;
          sub_259203128(v42, v74, v73, v43, v85);
          result = (v88)(v64, 1, v92);
          if (result != 1)
          {
            result = sub_259203008(v64);
          }

          goto LABEL_39;
        }

        v91 = 0;
        v65 = v42;
        v66 = v74;
        v67 = v73;
      }

      sub_259203128(v65, v66, v67, v43, v85);
      v53 = v92;
      v54 = v88;
      goto LABEL_47;
    }

    __break(1u);
LABEL_55:

    v82 = 0;
    v81 = 228;
    goto LABEL_57;
  }

  if (v25 != 2)
  {
    v46 = v91;
    v47 = sub_2592126C0();
    MEMORY[0x28223BE20](v47);
    v81 = v46;
    v33 = sub_2591FF888(sub_259202FDC, (&v83 - 4), 0, v48);
    if (v4)
    {
      v49 = v90;
      if ((*(v23 + 48))(v90, 1, v92) != 1)
      {
        sub_259203008(v49);
      }

      v50 = sub_2592126F0();
      result = (*(*(v50 - 8) + 8))(v46, v50);
      goto LABEL_39;
    }

    v61 = v5[6];
    v62 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v61);
    (*(v62 + 24))(v33, v61, v62);
    v68 = v90;

    sub_2592126D0();
    v91 = 0;
    v53 = v92;
    (v88)(v12, 0, 1, v92);
    v71 = *(v23 + 48);
    if (v71(v68, 1, v53) != 1)
    {
      sub_259203008(v68);
    }

    sub_259203070(v12, v68);
    v54 = v71;
    if (v71(v68, 1, v53))
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v34 = v5[6];
  v35 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v34);
  (*(v35 + 16))(v34, v35);
  if (v4)
  {
    v94 = v4;
    v36 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
    if (!swift_dynamicCast())
    {
      goto LABEL_55;
    }

    v37 = v93;
  }

  else
  {
    v37 = 2;
  }

  v68 = v90;
  sub_2592126D0();
  v91 = 0;
  v53 = v92;
  (v88)(v15, 0, 1, v92);
  v54 = *(v23 + 48);
  if (v54(v68, 1, v53) != 1)
  {
    sub_259203008(v68);
  }

  sub_259203070(v15, v68);
  if (v54(v68, 1, v53))
  {
    goto LABEL_47;
  }

  if (v37 == 2)
  {
    goto LABEL_43;
  }

  sub_259212730();
  sub_259212750();
LABEL_47:
  v77 = (v54)(v68, 1, v53);
  v78 = v77;
  if (v77 == 1)
  {
    v79 = v87;
  }

  else
  {
    v79 = v87;
    if (v77)
    {
      sub_259203008(v68);
      v78 = 1;
    }

    else
    {
      sub_259212760();
      v78 = 0;
    }
  }

  v80 = sub_259212790();
  return (*(*(v80 - 8) + 56))(v79, v78, 1, v80);
}

uint64_t sub_259202354()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_259202394@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_25920166C(a1, &v8, a3);
  if (v4)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25920249C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2592024E4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v8 = a1;
  v4 = sub_2591FF590(sub_259203580, v7, 0, 16);
  v6[2] = a1;
  result = sub_2591FFA10(sub_259202CE4, v6, 0, 4);
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_259202570(uint64_t a1, void *a2)
{
  result = sub_259201378(a1);
  if (!v2)
  {
    if (a2[2] == 4)
    {
      v5 = a2[4];
      if (*(v5 + 16) == 4)
      {
        v6 = result;
        v7 = a2[4];

        v8 = *(v5 + 32);
        sub_259212720();
        v9 = *(v5 + 36);
        sub_259212720();
        v10 = *(v5 + 40);
        sub_259212720();
        v11 = *(v5 + 44);
        sub_259212720();

        v12 = a2[5];
        if (*(v12 + 16) == 4)
        {
          v13 = a2[5];

          v14 = *(v12 + 32);
          sub_259212720();
          v15 = *(v12 + 36);
          sub_259212720();
          v16 = *(v12 + 40);
          sub_259212720();
          v17 = *(v12 + 44);
          sub_259212720();

          v18 = a2[6];
          if (*(v18 + 16) == 4)
          {
            v19 = a2[6];

            v20 = *(v18 + 32);
            sub_259212720();
            v21 = *(v18 + 36);
            sub_259212720();
            v22 = *(v18 + 40);
            sub_259212720();
            v23 = *(v18 + 44);
            sub_259212720();

            v24 = a2[7];
            if (*(v24 + 16) == 4)
            {

              v25 = *(v24 + 32);
              sub_259212720();
              v26 = *(v24 + 36);
              sub_259212720();
              v27 = *(v24 + 40);
              sub_259212720();
              v28 = *(v24 + 44);
              sub_259212720();

              return v6;
            }
          }
        }
      }

      sub_259212B00();
      MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
      MEMORY[0x259CA1040](0xD000000000000036, 0x80000002592603E0);
      v29 = sub_259212BE0();
      MEMORY[0x259CA1040](v29);
    }

    else
    {
      sub_259212B00();
      MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
      MEMORY[0x259CA1040](0xD000000000000036, 0x80000002592603E0);
      v30 = sub_259212BE0();
      MEMORY[0x259CA1040](v30);
    }

    result = sub_259212B90();
    __break(1u);
  }

  return result;
}

uint64_t sub_259202840(uint64_t a1)
{
  result = sub_259201378(*a1);
  if (!v1)
  {
    v4 = *(a1 + 8);
    sub_259212740();
    v5 = *(a1 + 16);
    sub_259212710();
    v6 = *(a1 + 24);
    v7 = *(v6 + 16);
    sub_259212750();
    if (v7)
    {
      v8 = (v6 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        sub_259202570(v9, v10);

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    v11 = *(a1 + 32);
    return sub_259212700();
  }

  return result;
}

uint64_t sub_259202920()
{
  v0 = sub_2592126C0();
  if (v0 == 0x6FAA2922310B6F8DLL)
  {
    return 1;
  }

  if (v0 == 0xB42DFB433BE2CD9ELL)
  {
    return 0;
  }

  sub_259212B00();

  v2 = sub_259212BE0();
  MEMORY[0x259CA1040](v2);

  result = sub_259212B90();
  __break(1u);
  return result;
}

unint64_t sub_259202A30()
{
  result = qword_27F99BCD0;
  if (!qword_27F99BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BCD0);
  }

  return result;
}

uint64_t sub_259202A84@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2592126A0();
  if (v6 == 1)
  {
    result = sub_259202920();
    LODWORD(v8) = result;
    if (!v3)
    {
      v9 = 0;
      v10 = result & 1;
      v11 = 0x80;
      v12 = 0;
      v8 = 0;
LABEL_9:
      *a2 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v12;
      *(a2 + 24) = v8;
      *(a2 + 32) = v11;
      return result;
    }

    goto LABEL_7;
  }

  if (!v6)
  {
    MEMORY[0x28223BE20](v6);
    v18 = v2;
    v10 = sub_2591FF590(sub_259202C88, v17, 0, 16);
    v13 = sub_2592126B0();
    sub_259212680();
    v12 = v14;
    v15 = sub_2592126C0();
    MEMORY[0x28223BE20](v15);
    v18 = v2;
    v8 = sub_2591FF704(sub_259202CC4, v17, 0, v16);
    if (!v3)
    {
      result = sub_259212670();
      v9 = v13;
      v11 = result & 1;
      goto LABEL_9;
    }

LABEL_7:
    *a1 = v8;
    return result;
  }

  result = sub_259212B90();
  __break(1u);
  return result;
}

uint64_t sub_259202C88@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_2592126A0();
  *a1 = result;
  return result;
}

uint64_t sub_259202CE4@<X0>(uint64_t *a1@<X8>)
{
  v4[2] = *(v1 + 16);
  result = sub_2591FFB84(sub_259202D3C, v4, 0, 4);
  *a1 = result;
  return result;
}

uint64_t sub_259202D3C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_259212690();
  *a1 = v5;
  return result;
}

uint64_t sub_259202D78(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = v3 + 12;
  v5 = v3 >= 0x10;
  v6 = 28;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = (a2 + 40);
  v8 = *(a2 + 16) + 1;
  while (--v8)
  {
    v12 = *v7;
    v13 = *(*(v7 - 1) + 16);
    if (v13 >= 0x10)
    {
      v13 = 16;
    }

    v14 = v12[2];
    if (v14)
    {
      v15 = *(v12[4] + 16);
      if (v15 >= 4)
      {
        v9 = 16;
      }

      else
      {
        v9 = 4 * v15;
      }

      if (v14 != 1)
      {
        v16 = *(v12[5] + 16);
        result = 4 * v16;
        v17 = v16 >= 4 ? 16 : 4 * v16;
        v9 += v17;
        if (v14 != 2)
        {
          v18 = *(v12[6] + 16);
          result = 4 * v18;
          v19 = v18 >= 4 ? 16 : 4 * v18;
          v9 += v19;
          if (v14 != 3)
          {
            v20 = *(v12[7] + 16);
            if (v20 >= 4)
            {
              v21 = 16;
            }

            else
            {
              v21 = 4 * v20;
            }

            v9 += v21;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v7 += 2;
    v10 = v13 + v9;
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v11 = __OFADD__(v2, 8);
  v22 = v2 + 8;
  if (v11)
  {
    goto LABEL_31;
  }

  v11 = __OFADD__(v6, v22);
  v23 = v6 + v22;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_259202E7C()
{
  v0 = sub_2592126C0();
  if (v0 <= 0xDD6C75EEEEDBA98)
  {
    if (v0 == 0x9AF4893434D95D9FLL)
    {
      return 0;
    }

    if (v0 == 0x9631EEA464C9ABELL)
    {
      return 2;
    }

    goto LABEL_11;
  }

  if (v0 == 0x4ED3422D96FF530FLL)
  {
    return 3;
  }

  if (v0 != 0xDD6C75EEEEDBA99)
  {
LABEL_11:
    sub_259212B00();

    v2 = sub_259212BE0();
    MEMORY[0x259CA1040](v2);

    result = sub_259212B90();
    __break(1u);
    return result;
  }

  return 1;
}

uint64_t sub_259203008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCD8, &qword_259226B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_259203070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCD8, &qword_259226B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2592030E0@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t *a2@<X8>)
{
  v5[2] = *(v2 + 16);
  result = sub_2591FF590(a1, v5, 0, 16);
  *a2 = result;
  return result;
}

uint64_t sub_259203128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_2592031B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8F8, &qword_259225AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_259203244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_259203294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = -a2 << 32;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2592032F4(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 8) = *(result + 8);
  *(result + 32) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExclaveError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExclaveError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_259203490()
{
  result = qword_27F99BCE0;
  if (!qword_27F99BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BCE0);
  }

  return result;
}

uint64_t sub_2592034E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25920352C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ULHomeSlamLocalizationPipeline::generateBlueDot(NSObject **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "#HomeSlam, blue dot clustering didn't find any clusters!", "{msg%{public}.0s:#HomeSlam, blue dot clustering didn't find any clusters!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v19);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted()
{
  __assert_rtn("parametrizedPercentileSorted", "CLReducerFunction.h", 93, "(startIndex >= 0) && (startIndex <= static_cast<int>(container.size()) - 2)");
}

{
  __assert_rtn("parametrizedPercentileSorted", "CLReducerFunction.h", 81, "prctile >= 0.0 && prctile <= 1.0");
}

{
  __assert_rtn("parametrizedPercentileSorted", "CLReducerFunction.h", 80, "container.size()>0");
}

void ULHomeSlamLocalizationPipeline::resetParticles(NSObject **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "#HomeSlam, to reset particles there must be trajectories!", "{msg%{public}.0s:#HomeSlam, to reset particles there must be trajectories!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v19);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void boost::random::discrete_distribution<int,double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>()
{
  __assert_rtn("uniform_int_distribution", "uniform_int_distribution.hpp", 337, "min_arg <= max_arg");
}

{
  __assert_rtn("operator()", "discrete_distribution.hpp", 430, "!_impl._alias_table.empty()");
}

void ULEndpointClusteringAlgorithm::pruneClusters()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_15);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_15);
}

void ULEndpointClusteringAlgorithm::createDistanceFunction(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No min_base_rssi provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No min_base_rssi provided in dictionary", "{msg%{public}.0s:No min_base_rssi provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No min_base_rssi provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void boost::uuids::string_generator::get_value()
{
  {
    boost::uuids::string_generator::get_value(char)const::digits_end = &boost::uuids::string_generator::get_value(char)const::digits_begin[boost::uuids::string_generator::get_value(char)const::digits_len];
  }
}

void ULEndpointPlacementGenerator::placeEndpoints(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Expected a sorted vector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Expected a sorted vector", "{msg%{public}.0s:Expected a sorted vector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Expected a sorted vector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void _CLLogObjectForCategory_MicroLocation_Default()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_16);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_18);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_19);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_22);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_23);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_24);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_26);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_27);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_28);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_867);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_32);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_36);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_37);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_43);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_44);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_45);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_100);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_101);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_103);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_104);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_105);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_118);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_121);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_125);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_131);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_142);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_143);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_148);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_149);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_151);
}

void cva::MatrixData<float,0ul,0ul,false>::allocate()
{
  __assert_rtn("allocate", "matrixdata.h", 479, "(!m_data) || cva::detail::assertMessage(No matrix data must be allocated.)");
}

{
  __assert_rtn("allocate", "matrixdata.h", 490, "(m_data) || cva::detail::assertMessage(Matrix data must be allocated on exit.)");
}

void EndpointMinimizerFunc::operator()()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:#HomeSlam, minimizer input vector size not equal gradient vector size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "#HomeSlam, minimizer input vector size not equal gradient vector size!", "{msg%{public}.0s:#HomeSlam, minimizer input vector size not equal gradient vector size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:#HomeSlam, minimizer input vector size not equal gradient vector size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void LBFGSpp::BFGSMat<float,true>::add_correction()
{
  __assert_rtn("column", "matrixmixin.h", 1091, "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)");
}

{
  __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
}

{
  __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
}

void EndpointMinimizerFunc::targetFuncValue()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!", "{msg%{public}.0s:#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  v20 = abort_report_np();
  LBFGSpp::BFGSMat<float,true>::apply_Wtv(v20);
}

void LBFGSpp::BFGSMat<float,true>::apply_Wtv()
{
  __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
}

{
  __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
}

void ULHomeSlamMapper::filterRelevantFingerprintsFromSegments(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_0_0(v3, v4);
  *(v6 + 20) = v5;
  *(v6 + 30) = "assert";
  *(v6 + 38) = v7;
  *(v6 + 40) = "fingerprints.find(fingerprintUuidAtStart) != fingerprints.end()";
  _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Fingerprint at the start of a segment is not part of the fingerprints to be mapped, fingerprintUuidAtStart:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v9, 0x30u);
  operator delete(a1);
}

{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_0_0(v3, v4);
  *(v6 + 20) = v5;
  *(v6 + 30) = "assert";
  *(v6 + 38) = v7;
  *(v6 + 40) = "fingerprints.find(fingerprintUuidAtEnd) != fingerprints.end()";
  _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Fingerprint at the end of a segment is not part of the fingerprints to be mapped, fingerprintUuidAtEnd:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v9, 0x30u);
  operator delete(a1);
}

void ULRFGroupGenerator::placeRFClusters(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, mapper minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, mapper minimizer got mis-match between X size and expected size!", "{msg%{public}.0s:#HomeSlam, mapper minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, mapper minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ULSegmentGenerator::getNumberOfUpdatesInWindow()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, static window size must be more than 0 seconds!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, static window size must be more than 0 seconds!", "{msg%{public}.0s:#HomeSlam, static window size must be more than 0 seconds!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, static window size must be more than 0 seconds!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = abort_report_np();
  return ULWalkwayGenerator::createWalkways(v3);
}

void ULWalkwayGenerator::createWalkways()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_20);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_20);
}

void ULWalkwayGenerator::reducePoints(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, minimum cluster size must be larger than zero!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, minimum cluster size must be larger than zero!", "{msg%{public}.0s:#HomeSlam, minimum cluster size must be larger than zero!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, minimum cluster size must be larger than zero!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationLegacyClient::requestLocalizationIfPossible()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_21);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_21);
}

void std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void ULBinaryRoiNullSpaceLocalizationAlgorithm::localize()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "must have fingerprints distance function", "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_22);
}

uint64_t ULBinaryRoiNullSpaceLocalizationAlgorithm::getAdjustmentPowerForBinaryRoiDetectionThreshold()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Detection threshold must be: 0 < THR < 1.0!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Detection threshold must be: 0 < THR < 1.0!", "{msg%{public}.0s:Detection threshold must be: 0 < THR < 1.0!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Detection threshold must be: 0 < THR < 1.0!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap(v21);
}

uint64_t ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Missing key kSettingsNullSpaceNotRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v22, v23, v24, v25, v26);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Missing key kSettingsNullSpaceNotRoiPercentile", "{msg%{public}.0s:Missing key kSettingsNullSpaceNotRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v22, v23, v24, v25, v26);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Missing key kSettingsNullSpaceNotRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v22, v23, v24, v25, v26);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

{
  v27 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Missing key kSettingsNullSpaceRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v22, v23, v24, v25, v26);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Missing key kSettingsNullSpaceRoiPercentile", "{msg%{public}.0s:Missing key kSettingsNullSpaceRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v22, v23, v24, v25, v26);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Missing key kSettingsNullSpaceRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v22, v23, v24, v25, v26);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void ULBlueAtlasLocalizationAlgorithm::localize()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "must have fingerprints distance function", "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_23);
}

void ULBlueAtlasLocalizationAlgorithm::localize(char *a1, uint8_t *buf, os_log_t log)
{
  v4 = *a1;
  v5 = a1[23] < 0;
  *buf = 68289795;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = v6;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "model.modelType == CLMicroLocationProto::ModelType::BLUE_ATLAS";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Blue Atlas Localization, model type is not BLUE_ATLAS!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Look up table thresholds and scores vectors must be the same size", "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(v21);
}

{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "Look up table thresholds and scores vectors must be the same size", "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(v20);
}

{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "Look up table thresholds must be sorted", "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics(v20);
}

void CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v22, v23, v24, v25, v26);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "Look up table thresholds must be sorted", "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v22, v23, v24, v25, v26);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v22, v23, v24, v25, v26);
  }

  v21 = abort_report_np();
  ULCosineSimilarityLocalizationAlgorithm::localize(v21);
}

void ULCosineSimilarityLocalizationAlgorithm::localize()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_24);
}

void ULCosineSimilarityLocalizationAlgorithm::localize(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = v4;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "model.modelType == CLMicroLocationProto::ModelType::SIMILARITY_LIST";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CosineSimilarityLocalization, model type is not similarity list!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void ULAlgorithms::createReducerFunction<std::multiset<double>,double>()
{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 169, "false");
}

{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 159, "false");
}

{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 151, "false");
}

{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 127, "static_cast<uint32_t>(type) < static_cast<uint32_t>(ReducerFunctionType::kTypeCount)");
}

void CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted()
{
  __assert_rtn("parameterizedTruncatedMeanValueSorted", "CLReducerFunction.h", 65, "numElements>0");
}

{
  __assert_rtn("parameterizedTruncatedMeanValueSorted", "CLReducerFunction.h", 61, "minPercentile >= 0 && minPercentile <= 1 && maxPercentile >= minPercentile && maxPercentile <= 1");
}

{
  __assert_rtn("parameterizedTruncatedMeanValueSorted", "CLReducerFunction.h", 60, "container.size()>0");
}

void ULNullSpaceLocalizationAlgorithm::localize()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "must have fingerprints distance function", "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_26);
}

void ULHomeSlamLocalizer::localize()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "homeslam can't localize without a model!", "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void ULHomeSlamLocalizer::localize(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "homeslam can't localize without a model!", "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ULHomeSlamLocalizer::ioError()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:homeslam can't reset without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "homeslam can't reset without a model!", "{msg%{public}.0s:homeslam can't reset without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:homeslam can't reset without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  ULHomeSlamLocalizer::reset();
}

void ULHomeSlamLocalizer::reset()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:got homeslam reset state without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "got homeslam reset state without a model!", "{msg%{public}.0s:got homeslam reset state without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:got homeslam reset state without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  v20 = abort_report_np();
  ULLocalizationController::reset(v20);
}

void ULLocalizationController::reset()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Exactly one of miloModel or homeSlamModel must have a value", "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void ULLocalizationController::localizeAllModels(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_3_0(v5, v6, v7);
  *(v8 + 30) = "assert";
  *(v8 + 38) = 2081;
  *(v8 + 40) = "modelAndStates->states.count(deviceIdentifier) > 0";
  _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:There is no localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v10, 0x30u);
}

{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_3_0(v5, v6, v7);
  *(v8 + 30) = "assert";
  *(v8 + 38) = 2081;
  *(v8 + 40) = "modelAndStates->states.count(odometrySourceDeviceClass) > 0";
  _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Trying to use HomeSlam localizer without localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v10, 0x30u);
}

void ULLocalizationController::localizeAllModels(NSObject **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "Exactly one of miloModel or homeSlamModel must have a value", "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v19);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "Exactly one of miloModel or homeSlamModel must have a value", "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v19);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void ULRfClusterLocalizer::localize()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:there must be a milo model for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "there must be a milo model for localization!", "{msg%{public}.0s:there must be a milo model for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:there must be a milo model for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:there must be a milo model metadata for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "there must be a milo model metadata for localization!", "{msg%{public}.0s:there must be a milo model metadata for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:there must be a milo model metadata for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_29);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_29);
}

uint64_t ULLogicAdapterImpl::ULLogicAdapterImpl(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](a2, v6);
  }

  result = *a3;
  *a3 = 0;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

void CLHierarchicalClustering::getClusterLabels()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:minNumCluster must be greater than zero, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "minNumCluster must be greater than zero", "{msg%{public}.0s:minNumCluster must be greater than zero, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:minNumCluster must be greater than zero, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:distanceThresholdVector must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "distanceThresholdVector must not be empty", "{msg%{public}.0s:distanceThresholdVector must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:distanceThresholdVector must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void CLSqliteDatabase::init()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_37);
}

{
  v22 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v1, v2, "{msg%{public}.0s:database init failed: db filename is empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "database init failed: db filename is empty", "{msg%{public}.0s:database init failed: db filename is empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_4_0(v13))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v14, v15, "{msg%{public}.0s:database init failed: db filename is empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t CLSqliteDatabase::prepareStatementNoCache()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6(v1))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:mutex locked assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v9, v10, v11, "mutex locked assertion failed", "{msg%{public}.0s:mutex locked assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v15, v16, "{msg%{public}.0s:mutex locked assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return CLSqliteDatabaseManager::instance(v21);
}

void CLSqliteDatabaseManager::CLSqliteDatabaseManager()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_17);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_17);
}

void CLSqliteDatabaseManager::openDatabase()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:mutex assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "mutex assertion failed", "{msg%{public}.0s:mutex assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:mutex assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t ULLabelDO::verifyData()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:label's data doesn't match its context layer type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "label's data doesn't match its context layer type", "{msg%{public}.0s:label's data doesn't match its context layer type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:label's data doesn't match its context layer type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = abort_report_np();
  return ULMapLabelDO::create(v3);
}

void ULMapLabelDO::create(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ULMapLabelDO::Create - RSSI is missing for WiFi label, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ULMapLabelDO::Create - RSSI is missing for WiFi label", "{msg%{public}.0s:ULMapLabelDO::Create - RSSI is missing for WiFi label, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ULMapLabelDO::Create - RSSI is missing for WiFi label, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_1_1(v2, a1);
  }
}

void ULModelDO::setModelType()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:setModel: Invalid CLMicroLocationProto::ModelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setModel: Invalid CLMicroLocationProto::ModelType", "{msg%{public}.0s:setModel: Invalid CLMicroLocationProto::ModelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:setModel: Invalid CLMicroLocationProto::ModelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  _CLLogObjectForCategory_MicroLocation_Default();
}

void CLMicroLocationProto::UwbRange::MergeFrom()
{
  __assert_rtn("set_datatype", "microlocation.pb.h", 11163, "::CLMicroLocationProto::DataType_IsValid(value)");
}

{
  __assert_rtn("set_devicetype", "microlocation.pb.h", 11342, "::CLMicroLocationProto::UwbRange_DeviceType_IsValid(value)");
}

void CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom()
{
  __assert_rtn("set_datatype", "microlocation.pb.h", 11761, "::CLMicroLocationProto::DataType_IsValid(value)");
}

{
  __assert_rtn("set_devicetype", "microlocation.pb.h", 11898, "::CLMicroLocationProto::HomeKitBluetoothRssi_DeviceType_IsValid(value)");
}

{
  __assert_rtn("set_hapversion", "microlocation.pb.h", 11921, "::CLMicroLocationProto::HomeKitBluetoothRssi_HAPVersion_IsValid(value)");
}

void CLMicroLocationProto::AnchorMetadata::MergeFrom()
{
  __assert_rtn("set_anchorstatus", "microlocation.pb.h", 13000, "::CLMicroLocationProto::AnchorStatus_IsValid(value)");
}

{
  __assert_rtn("set_datatype", "microlocation.pb.h", 13067, "::CLMicroLocationProto::DataType_IsValid(value)");
}

void CLMicroLocationProto::Model::MergeFrom()
{
  __assert_rtn("set_generationalgorithm", "microlocation.pb.h", 13962, "::CLMicroLocationProto::Model_GenerationAlgorithm_IsValid(value)");
}

{
  __assert_rtn("set_modeltype", "microlocation.pb.h", 13985, "::CLMicroLocationProto::ModelType_IsValid(value)");
}

{
  __assert_rtn("set_qualityindicator", "microlocation.pb.h", 14186, "::CLMicroLocationProto::Model_ModelQualityLevel_IsValid(value)");
}

{
  __assert_rtn("set_candidatequalityindicator", "microlocation.pb.h", 14209, "::CLMicroLocationProto::Model_ModelQualityLevel_IsValid(value)");
}

void CLMicroLocationProto::ReceivedEventAction::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 15670, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_receivedeventactiontype", "microlocation.pb.h", 15693, "::CLMicroLocationProto::ReceivedEventActionType_IsValid(value)");
}

void CLMicroLocationProto::RecordingRequest::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 15930, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_recordingrequesttype", "microlocation.pb.h", 15953, "::CLMicroLocationProto::RecordingRequestType_IsValid(value)");
}

void CLMicroLocationProto::MotionEvent::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 20455, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_status", "microlocation.pb.h", 20548, "::CLMicroLocationProto::MotionEvent_Status_IsValid(value)");
}

{
  __assert_rtn("set_screenon", "microlocation.pb.h", 20641, "::CLMicroLocationProto::MotionEvent_ScreenStatus_IsValid(value)");
}

void CLMicroLocationProto::RetrievedLoi::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 20787, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_reason", "microlocation.pb.h", 21020, "::CLMicroLocationProto::ChangedLoiReason_IsValid(value)");
}

void CLMicroLocationProto::TriggerEvent::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 23219, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_requesttype", "microlocation.pb.h", 23588, "::CLMicroLocationProto::TriggerRequestType_IsValid(value)");
}

{
  __assert_rtn("set_requeststatus", "microlocation.pb.h", 23611, "::CLMicroLocationProto::TriggerRequestStatus_IsValid(value)");
}

{
  __assert_rtn("set_reason", "microlocation.pb.h", 23634, "::CLMicroLocationProto::TriggerReason_IsValid(value)");
}

{
  __assert_rtn("set_motionstate", "microlocation.pb.h", 23727, "::CLMicroLocationProto::MotionState_IsValid(value)");
}

void CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 23754, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_numberofobservationsstate", "microlocation.pb.h", 23777, "::CLMicroLocationProto::NumberOfObservationsStates_IsValid(value)");
}

void CLMicroLocationProto::RecordingEvent::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 22591, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_confidencelevel", "microlocation.pb.h", 23100, "::CLMicroLocationProto::ConfidenceLevel_IsValid(value)");
}

{
  __assert_rtn("set_motionstate", "microlocation.pb.h", 23192, "::CLMicroLocationProto::MotionState_IsValid(value)");
}

uint64_t ULProfileGenerator::generateSchedulingProfile()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Unsupported scheduling profile type, scheduling profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v8, v9, v10, "Unsupported scheduling profile type", "{msg%{public}.0s:Unsupported scheduling profile type, scheduling profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Unsupported scheduling profile type, scheduling profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t ULProfileGenerator::generateScanningProfile()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Unsupported scanning profile type, scanning profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v8, v9, v10, "Unsupported scanning profile type", "{msg%{public}.0s:Unsupported scanning profile type, scanning profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Unsupported scanning profile type, scanning profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t ULProfileGenerator::generateUwbTechnologyProfile()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Unsupported uwb technology profile type, uwb technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v8, v9, v10, "Unsupported uwb technology profile type", "{msg%{public}.0s:Unsupported uwb technology profile type, uwb technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Unsupported uwb technology profile type, uwb technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void ULScanningProfile::ULScanningProfile()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:technologyConfigs should be indexed by ULTechnologyType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "technologyConfigs should be indexed by ULTechnologyType", "{msg%{public}.0s:technologyConfigs should be indexed by ULTechnologyType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:technologyConfigs should be indexed by ULTechnologyType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  _CLLogObjectForCategory_MicroLocation_Default();
}

uint64_t scanProfileToScanType()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ERROR, Invalid scan profile for scan type, scanningProfileIndex:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_0_2();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ERROR, Invalid scan profile for scan type", "{msg%{public}.0s:ERROR, Invalid scan profile for scan type, scanningProfileIndex:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ERROR, Invalid scan profile for scan type, scanningProfileIndex:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t ULSchedulingProfileManager::suspendProfile()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v8, v9, v10, "Invalid input idex", "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t ULSchedulingProfileManager::resumeProfile()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v8, v9, v10, "Invalid input idex", "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t ULSchedulingProfileManager::isProfileSuspended()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21, v22, v23, v24, v25);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v8, v9, v10, "Invalid input idex", "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21, v22, v23, v24, v25);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21, v22, v23, v24, v25);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void ULSensorsDataHandler::State::setScanStartTS(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *a1;
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got new scan start indication without completion of current running scan, current Scan Activity startTS _s:%{public}.09f, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v4))
  {
    v5 = *a1;
    OUTLINED_FUNCTION_0_2();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got new scan start indication without completion of current running scan", "{msg%{public}.0s:Got new scan start indication without completion of current running scan, current Scan Activity startTS _s:%{public}.09f, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *a1;
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got new scan start indication without completion of current running scan, current Scan Activity startTS _s:%{public}.09f, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  abort_report_np();
  __break(1u);
}

void ULSensorsManager::onWiFiScanCompletion(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected scan still running after onWiFiScanCompletion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected scan still running after onWiFiScanCompletion", "{msg%{public}.0s:Unexpected scan still running after onWiFiScanCompletion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected scan still running after onWiFiScanCompletion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t *ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(uint64_t **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    v3 = OUTLINED_FUNCTION_7_1(result);
    return (*(v4 + 8))(v3);
  }

  return result;
}

void ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(uint64_t *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v5, v6, "{msg%{public}.0s:Invalid event type index, current event index:%{public}lu, MaxEvents:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, v8, v9, v10, v26, v27, v28, v29, v30);
  }

  v11 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v11))
  {
    v12 = *a1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v13, v14, v15, "Invalid event type index", "{msg%{public}.0s:Invalid event type index, current event index:%{public}lu, MaxEvents:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v26, v27, v28, v29, v30);
  }

  v18 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_11(v18))
  {
    v19 = *a1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v20, v21, "{msg%{public}.0s:Invalid event type index, current event index:%{public}lu, MaxEvents:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v22, v23, v24, v25, v26, v27, v28, v29, v30);
  }

  abort_report_np();
  __break(1u);
}

{
  v31 = *MEMORY[0x277D85DE8];
  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v5, v6, "{msg%{public}.0s:Invalid current state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, v8, v9, v10, v26, v27, v28, v29, v30);
  }

  v11 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v11))
  {
    v12 = *a1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v13, v14, v15, "Invalid current state index", "{msg%{public}.0s:Invalid current state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v26, v27, v28, v29, v30);
  }

  v18 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_11(v18))
  {
    v19 = *a1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v20, v21, "{msg%{public}.0s:Invalid current state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v22, v23, v24, v25, v26, v27, v28, v29, v30);
  }

  abort_report_np();
  __break(1u);
}

void ULTriggerEngine::onScanComplete()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:scan completed without scan initiating trigger, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "scan completed without scan initiating trigger, this shouldn't happen", "{msg%{public}.0s:scan completed without scan initiating trigger, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:scan completed without scan initiating trigger, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void ULTriggerEngine::startPeriodicTriggers()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:scheduling proflie's periodic trigger already initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "scheduling proflie's periodic trigger already initialized", "{msg%{public}.0s:scheduling proflie's periodic trigger already initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:scheduling proflie's periodic trigger already initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::enterState()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v1))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v9, v10, v11, "Invalid state index", "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_11(v14))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::exitState()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v1))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v9, v10, v11, "Invalid state index", "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_11(v14))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return ULTriggerEngineFSM::getTransitionTable(v21);
}

void ULTriggerEngineFSM::getTransitionTable()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    bzero(&qword_281456580, 0x1B0uLL);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void ULTriggerEngineFSM::handleNewTriggerInIdle()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_110);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_110);
}

void ULTriggerEngineFSM::handleNewTriggerInScan()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:handle new trigger in scan without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "handle new trigger in scan without scan session context, this shouldn't happen", "{msg%{public}.0s:handle new trigger in scan without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:handle new trigger in scan without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void ULTriggerEngineFSM::enterThrottleState()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:entering throttle state without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "entering throttle state without scan session context, this shouldn't happen", "{msg%{public}.0s:entering throttle state without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:entering throttle state without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  ULTriggerQueue::logQueueFullError();
}

void ULTriggerQueue::logQueueFullError()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_111);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_111);
}

void ULUWBBridge::startForegroundSession(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid update range, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid update range", "{msg%{public}.0s:invalid update range, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid update range, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ULWiFiAssociationBridge::createAndStartWifiInterface()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_119);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_119);
}

void ULWiFiRssiBridge::createAndStartWifiInterface()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_120);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_120);
}

uint64_t ULModelLoader::modelDomain(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported Service Type, ServiceType:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported Service Type", "{msg%{public}.0s:Unsupported Service Type, ServiceType:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = a1;
    v12 = 2082;
    v13 = "assert";
    v14 = 2081;
    v15 = "false";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported Service Type, ServiceType:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t ULService::uint64ToLocationTypesBitset()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Error converting uint to location types: Value does not fit into bitset, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error converting uint to location types: Value does not fit into bitset", "{msg%{public}.0s:Error converting uint to location types: Value does not fit into bitset, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Error converting uint to location types: Value does not fit into bitset, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = abort_report_np();
  return ULService::ingestLocalizationResults(v3);
}

void ULService::ingestLocalizationResults()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_123);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_123);
}

void ULServiceManager::runWithConfiguration()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
}

void ULServiceManager::migrateLegacyClientIdToClientIdIfNecessary()
{
  v5 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
  }

  v0 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_10();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
  }

  v1 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_10();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services", "{msg%{public}.0s:MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_10();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, 0x26u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t ULSettings::getFingerprintDistanceFunctionParamsForType()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported distance function type, type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_0_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported distance function type", "{msg%{public}.0s:Unsupported distance function type, type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported distance function type, type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void ULDiskUtils::removeAllTrackedTempFiles()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_126);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_126);
}

void CLMicroLocationAnalytics::analyzeAssociationState()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_129);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_129);
}

void CLMicroLocationFingerprint::removeExceedingMeasurements(NSObject **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "number of measurements still exceeds maximum", "{msg%{public}.0s:number of measurements still exceeds maximum, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v19);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received Unsupported tech type while parsing distance function settings, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received Unsupported tech type while parsing distance function settings", "{msg%{public}.0s:Received Unsupported tech type while parsing distance function settings, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received Unsupported tech type while parsing distance function settings, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationLearner::learnFromModelType(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Semi-Supervised model learning is disabled. This model type should not be used for learning, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Semi-Supervised model learning is disabled. This model type should not be used for learning", "{msg%{public}.0s:Semi-Supervised model learning is disabled. This model type should not be used for learning, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Semi-Supervised model learning is disabled. This model type should not be used for learning, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationLogic::CLMicroLocationLogic(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void CLMicroLocationLogic::onSendPredictionResultsToClient()
{
  dispatch_once(&onceToken_MicroLocationQE_Default, &__block_literal_global_703);
}

{
  dispatch_once(&onceToken_MicroLocationQE_Default, &__block_literal_global_703);
}

void CLMicroLocationLoiManager::VisitEntry()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_140);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_140);
}

void CLMicroLocationModel::isValid()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Overrride is only expected in unit tests platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "Overrride is only expected in unit tests platform", "{msg%{public}.0s:Overrride is only expected in unit tests platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Overrride is only expected in unit tests platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void CLMicroLocationModel::mapIdentifiers()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:mapped cluster identifer already exists, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "mapped cluster identifer already exists", "{msg%{public}.0s:mapped cluster identifer already exists, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:mapped cluster identifer already exists, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v1, v2, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "localization results vector cannot be empty", "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_4_0(v13))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v14, v15, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationPublishHelper::biomePublicEventsFromLocalizationResultMeasurement()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v1, v2, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "localization results vector cannot be empty", "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_4_0(v13))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v14, v15, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v1, v2, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v21);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "localization results vector cannot be empty", "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v21);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_4_0(v13))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v14, v15, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationRapportMonitor::deviceFound()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_145);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_145);
}

void CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(NSObject **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v8, v9, v10, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v19);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void ULAlgorithms::createLearner()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, 3u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v9, v10, v11, "Invalid algorithm chosen", "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, 3u);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, 3u);
  }

  abort_report_np();
  __break(1u);
}

void ULAlgorithms::createLocalizerAlgorithm()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, 3u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v9, v10, v11, "Invalid algorithm chosen", "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, 3u);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, 3u);
  }

  abort_report_np();
  __break(1u);
}

void ULAlgorithms::createKernelFunction(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2050;
  *(buf + 20) = a2;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "primitiveType.unsignedLongValue < static_cast<uint32_t>(KernelFunctionType::kTypeCount)";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

void ULAlgorithms::details::createFingerprintDistanceFunction(NSObject **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v3))
  {
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x2Cu);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_6_2();
    _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, 0x2Cu);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v16;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v17, v18, OS_LOG_TYPE_INFO, v19, v20, 0x2Cu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void ULAlgorithms::createLinkageFunction()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid type chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, 3u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v9, v10, v11, "Invalid type chosen", "{msg%{public}.0s:Invalid type chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, 3u);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v15, v16, "{msg%{public}.0s:Invalid type chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, 3u);
  }

  abort_report_np();
  __break(1u);
}

void ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSObject **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = _CLLogObjectForCategory_MicroLocation_Default();
  if (OUTLINED_FUNCTION_6_0(v3))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6_2();
    _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, 0x26u);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default();
  *a1 = v16;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v17, v18, OS_LOG_TYPE_INFO, v19, v20, 0x26u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void ULAlgorithms::details::createPerSourceWeights(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = a1;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "weightsDict";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Couldn't find key: , key:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

void CLExponentialKernelFunction::CLExponentialKernelFunction()
{
  __assert_rtn("CLExponentialKernelFunction", "CLKernelFunction.h", 78, "sigma > 0.0");
}

{
  __assert_rtn("CLExponentialKernelFunction", "CLKernelFunction.h", 77, "power > 0.0");
}

uint64_t ULCustomLoiRecordingMonitor::startMonitoring()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Error: Got Start Monitoring Request while already monitoring, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "Error: Got Start Monitoring Request while already monitoring", "{msg%{public}.0s:Error: Got Start Monitoring Request while already monitoring, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Error: Got Start Monitoring Request while already monitoring, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded(v20);
}

uint64_t ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:Error: Custom LOI recording session timer active although session monitor is Idle , event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "Error: Custom LOI recording session timer active although session monitor is Idle ", "{msg%{public}.0s:Error: Custom LOI recording session timer active although session monitor is Idle , event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:Error: Custom LOI recording session timer active although session monitor is Idle , event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return ULDendrogramAlgorithm::learn(v20);
}

void ULWiFiHistogramAnalyzer::analyzeWiFiChannels()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_153);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_153);
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::VecLib<float>::gemv()
{
    ;
  }
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  MEMORY[0x2821F74C0](this);
}

{
  MEMORY[0x2821F74C8](this);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x2821F78C0]();
}

{
  return MEMORY[0x2821F78C8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}