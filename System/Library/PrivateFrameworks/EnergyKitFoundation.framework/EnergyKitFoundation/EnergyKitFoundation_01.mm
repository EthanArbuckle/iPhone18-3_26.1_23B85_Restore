uint64_t sub_1D1FE8B48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10 = [v9 homeID];
  if (v10)
  {
    v4 = sub_1D208C5CC();
    v5 = v2;
    MEMORY[0x1E69E5920](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1D1FE8C2C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2);
  if (v7)
  {
    v4 = sub_1D208C5BC();

    [v6 setHomeID_];
  }

  else
  {
    [v6 setHomeID_];
  }

  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1D1FE8D28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v13 = a1;
  v8 = sub_1D208BF1C();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v4 - v11;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v15 = &v4 - v14;
  v16 = *v2;
  MEMORY[0x1E69E5928](v16);
  v19 = v16;
  v17 = v16;
  v18 = [v16 lastCleanWindowStart];
  if (v18)
  {
    v6 = v18;
    v5 = v18;
    sub_1D208BECC();
    (*(v9 + 32))(v15, v12, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
  }

  sub_1D1FE29C4(v15, v7);
  return MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1D1FE8F4C(uint64_t a1, void **a2)
{
  v8 = a1;
  v10 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v4 - v9;
  sub_1D1FE94C4(v2, &v4 - v9);
  v11 = *v10;
  MEMORY[0x1E69E5928](v11);
  v17 = v11;
  v12 = v11;
  v14 = sub_1D208BF1C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1D208BE7C();
    (*(v15 + 8))(v13, v14);
    v7 = v6;
  }

  v5 = v7;
  [v12 setLastCleanWindowStart_];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1D1FE90FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v13 = a1;
  v8 = sub_1D208BF1C();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v4 - v11;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v15 = &v4 - v14;
  v16 = *v2;
  MEMORY[0x1E69E5928](v16);
  v19 = v16;
  v17 = v16;
  v18 = [v16 lastCleanWindowEnd];
  if (v18)
  {
    v6 = v18;
    v5 = v18;
    sub_1D208BECC();
    (*(v9 + 32))(v15, v12, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
  }

  sub_1D1FE29C4(v15, v7);
  return MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1D1FE9320(uint64_t a1, void **a2)
{
  v8 = a1;
  v10 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v4 - v9;
  sub_1D1FE94C4(v2, &v4 - v9);
  v11 = *v10;
  MEMORY[0x1E69E5928](v11);
  v17 = v11;
  v12 = v11;
  v14 = sub_1D208BF1C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1D208BE7C();
    (*(v15 + 8))(v13, v14);
    v7 = v6;
  }

  v5 = v7;
  [v12 setLastCleanWindowEnd_];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v12);
}

void *sub_1D1FE94C4(const void *a1, void *a2)
{
  v6 = sub_1D208BF1C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id static EnergyGuidanceCache.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for EnergyGuidanceCache();
  return sub_1D1FCF514();
}

uint64_t sub_1D1FE9678@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 energyGuidance];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D1FE9708(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setEnergyGuidance_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D1FE97B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF8C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 guidanceID];
  sub_1D208BF4C();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D1FE98DC(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF8C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BF3C();
  [v8 setGuidanceID_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D1FE9A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 insertTime];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D1FE9B5C(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setInsertTime_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D1FE9CAC@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = [v3 version];
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D1FE9D18(__int16 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setVersion_];
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D1FE9D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 validUntil];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D1FE9EB0(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setValidUntil_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

id LoadDailyDigest.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id LoadDailyDigest.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for LoadDailyDigest();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id LoadDailyDigest.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadDailyDigest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static NSCoding<>.unsecureUnarchived(from:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16 = a3;
  v14 = a1;
  v15 = a2;
  v13 = v3;
  sub_1D1FD0018(a1, a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v4 = sub_1D208C8FC();
  sub_1D1FEA670(sub_1D1FEA5A4, v9, v4, &v11, &v12);
  sub_1D1FD0094(a1, a2);
  if (v10)
  {
    return v6;
  }

  else
  {
    return v12;
  }
}

id sub_1D1FEA32C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  sub_1D1FEA79C();
  sub_1D1FD0018(a1, a2);
  result = sub_1D1FEA5E8(a1, a2);
  v14 = result;
  if (v13)
  {
    *a3 = v13;
  }

  else
  {
    [result setRequiresSecureCoding_];
    v6 = *MEMORY[0x1E696A508];
    MEMORY[0x1E69E5928](*MEMORY[0x1E696A508]);
    sub_1D208C5CC();
    v7 = sub_1D208C89C();

    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5928](v14);
    v8 = [v14 error];
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E69E5920](v14);
    if (v5)
    {
      swift_willThrow();
      MEMORY[0x1E69E5920](v7);
      result = MEMORY[0x1E69E5920](v14);
      *a3 = v5;
    }

    else
    {
      MEMORY[0x1E69E5928](v7);
      *a4 = v7;
      MEMORY[0x1E69E5920](v7);
      return MEMORY[0x1E69E5920](v14);
    }
  }

  return result;
}

id sub_1D1FEA5A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v3 = v2[5];
  return sub_1D1FEA32C(v2[3], v2[4], a1, a2);
}

id sub_1D1FEA5E8(uint64_t a1, unint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1D1FEA800(a1, a2);
  if (v6)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

void sub_1D1FEA670(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v13 = a5;
  v15 = a1;
  v8 = a2;
  v9 = a4;
  v20 = a2;
  v19 = a3;
  v10 = *(a2 - 8);
  v11 = a2 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v7 - v12;
  v5 = MEMORY[0x1D3894FB0]();
  v6 = v14;
  v17 = v5;
  v15(v16);
  v18 = v6;
  if (v6)
  {
    (*(v10 + 32))(v9, v16, v8);
  }

  objc_autoreleasePoolPop(v17);
}

unint64_t sub_1D1FEA79C()
{
  v2 = qword_1EC6BEB70;
  if (!qword_1EC6BEB70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BEB70);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1D1FEA800(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = sub_1D208BCFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB78, &qword_1D208E568);
  sub_1D1FEA9BC();
  sub_1D208CB5C();
  v9 = [v7 initForReadingFromData:v8 error:v10];
  MEMORY[0x1E69E5928](0);
  MEMORY[0x1E69E5920](0);
  if (v9)
  {
    MEMORY[0x1E69E5920](v8);
    sub_1D1FD0094(a1, a2);
    *MEMORY[0x1E69E9840];
    return v9;
  }

  else
  {
    sub_1D208BC7C();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    MEMORY[0x1E69E5920](v8);
    sub_1D1FD0094(a1, a2);
    v3 = __OFSUB__(*MEMORY[0x1E69E9840], v11);
    return v4;
  }
}

unint64_t sub_1D1FEA9BC()
{
  v2 = qword_1EC6BED80;
  if (!qword_1EC6BED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEB78, &qword_1D208E568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED80);
    return WitnessTable;
  }

  return v2;
}

uint64_t static EKDateUtilities.startOfDay(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  sub_1D208BFFC();
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.endOfDay(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.endOfDay(for:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.endOfDay(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[1] = a3;
  v12 = a1;
  v6[2] = "Fatal error";
  v6[3] = "Unexpectedly found nil while unwrapping an Optional value";
  v6[4] = "EnergyKitFoundation/EKDateUtilities.swift";
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v16 = sub_1D208C10C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v15 = v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v19 = v6 - v9;
  v20 = sub_1D208BB4C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v11 = v6 - v10;
  v23 = v6 - v10;
  v22 = v12;
  v21 = a2;
  (*(v13 + 104))(v4, *MEMORY[0x1E6969A48]);
  sub_1D208C00C();
  (*(v13 + 8))(v15, v16);
  if ((*(v17 + 48))(v19, 1, v20) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  (*(v17 + 32))(v11, v19, v20);
  sub_1D208BB0C();
  return (*(v17 + 8))(v11, v20);
}

uint64_t static EKDateUtilities.startOfHour(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.startOfHour(for:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.startOfHour(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[1] = a3;
  v12 = a1;
  v6[2] = "Fatal error";
  v6[3] = "Unexpectedly found nil while unwrapping an Optional value";
  v6[4] = "EnergyKitFoundation/EKDateUtilities.swift";
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v16 = sub_1D208C10C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v15 = v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v19 = v6 - v9;
  v20 = sub_1D208BB4C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v11 = v6 - v10;
  v23 = v6 - v10;
  v22 = v12;
  v21 = a2;
  (*(v13 + 104))(v4, *MEMORY[0x1E6969A58]);
  sub_1D208C00C();
  (*(v13 + 8))(v15, v16);
  if ((*(v17 + 48))(v19, 1, v20) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  (*(v17 + 32))(v11, v19, v20);
  sub_1D208BB2C();
  return (*(v17 + 8))(v11, v20);
}

uint64_t static EKDateUtilities.startOfWeek(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.startOfWeek(for:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.startOfWeek(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[0] = a3;
  v25 = a1;
  v26 = a2;
  v10[1] = "Fatal error";
  v10[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v10[3] = "EnergyKitFoundation/EKDateUtilities.swift";
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v11 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v30 = v10 - v11;
  v29 = 0;
  v12 = sub_1D208BC3C();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v28 = v10 - v15;
  v36 = v10 - v15;
  v35 = v5;
  v34 = a2;
  v23 = sub_1D208C10C();
  v22 = sub_1D208CB2C();
  v19 = v6;
  v7 = *MEMORY[0x1E6969AB8];
  v16 = *(v23 - 8);
  v17 = v23 - 8;
  v21 = *(v16 + 104);
  v20 = v16 + 104;
  v21();
  v18 = *(v16 + 72);
  (v21)(v19 + v18, *MEMORY[0x1E6969A38], v23);
  (v21)(v19 + 2 * v18, *MEMORY[0x1E6969A10], v23);
  v8 = v22;
  sub_1D1FCECE8();
  v24 = v8;
  sub_1D1FF1A1C();
  v27 = sub_1D208C7FC();
  sub_1D208C03C();

  sub_1D208C09C();
  v31 = sub_1D208BF1C();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  if ((*(v32 + 48))(v30, 1) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  (*(v32 + 32))(v10[0], v30, v31);
  return (*(v13 + 8))(v28, v12);
}

uint64_t static EKDateUtilities.startOfMondayForWeek(containing:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.startOfMondayForWeek(containing:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.startOfMondayForWeek(containing:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v117 = a1;
  v73 = a2;
  v74 = "Assertion failed";
  v75 = "EnergyKitFoundation/EKDateUtilities.swift";
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v104 = 0;
  v76 = sub_1D208BF1C();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v80 = v50 - v79;
  v137 = v50 - v79;
  v81 = sub_1D208C05C();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104);
  v85 = v50 - v84;
  v86 = sub_1D208C04C();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104);
  v90 = v50 - v89;
  v91 = sub_1D208C01C();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v95 = v50 - v94;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v96 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v97 = v50 - v96;
  v98 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50 - v96);
  v99 = v50 - v98;
  v136 = v50 - v98;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB88, &qword_1D208E5C8);
  v100 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v101 = v50 - v100;
  v102 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB90, &qword_1D208E5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104);
  v103 = v50 - v102;
  v105 = sub_1D208BC3C();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v111 = *(v106 + 64);
  v108 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v104);
  v109 = v50 - v108;
  v110 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v112 = v50 - v110;
  v135 = v50 - v110;
  v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v118 = v50 - v113;
  v134 = v50 - v113;
  v133 = v9;
  v132 = a2;
  v115 = sub_1D208C10C();
  v114 = sub_1D208CB2C();
  (*(*(v115 - 8) + 104))(v10, *MEMORY[0x1E6969AB0]);
  v11 = v114;
  sub_1D1FCECE8();
  v116 = v11;
  sub_1D1FF1A1C();
  v119 = sub_1D208C7FC();
  sub_1D208C03C();

  v120 = sub_1D208BC0C();
  v121 = v12;
  v128 = v120;
  v129 = v12 & 1;
  v130 = 2;
  v131 = 0;
  if (v12)
  {
    v71 = 0;
  }

  else
  {
    v122 = v120;
    v123 = v121 & 1;
    v71 = v120 == v130;
  }

  if (!v71)
  {
    v65 = 0;
    v13 = *(*(sub_1D208C12C() - 8) + 56);
    v70 = 1;
    v13(v103, 1);
    v14 = sub_1D208C17C();
    (*(*(v14 - 8) + 56))(v101, v70);
    v66 = &v28;
    v28 = 0;
    v67 = 1;
    v29 = 1;
    v30 = 0;
    v31 = 1;
    v32 = 0;
    v33 = 1;
    v34 = 0;
    v35 = 1;
    v36 = 0;
    v37 = 1;
    v38 = 0;
    v39 = 1;
    v40 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v48 = 0;
    LOBYTE(v49) = 1;
    sub_1D208BC2C();
    sub_1D208BC1C();
    (*(v106 + 16))(v109, v112, v105);
    (*(v92 + 104))(v95, *MEMORY[0x1E69698D0], v91);
    (*(v87 + 104))(v90, *MEMORY[0x1E69699A0], v86);
    sub_1D1FED2F0(v85);
    sub_1D208C0EC();
    (*(v82 + 8))(v85, v81);
    (*(v87 + 8))(v90, v86);
    (*(v92 + 8))(v95, v91);
    v68 = *(v106 + 8);
    v69 = v106 + 8;
    v68(v109, v105);
    sub_1D1FE94C4(v99, v97);
    if ((*(v77 + 48))(v97, v70, v76) != 1)
    {
      (*(v77 + 32))(v80, v97, v76);
      (*(v77 + 16))(v72, v80, v76);
      (*(v77 + 8))(v80, v76);
      sub_1D1FF1A9C(v99);
      v68(v112, v105);
      return (v68)(v118, v105);
    }

    sub_1D1FF1A9C(v97);
    v52 = 61;
    v16 = sub_1D208CB1C();
    v62 = &v126;
    v126 = v16;
    v127 = v17;
    v60 = "";
    v58 = 0;
    v59 = 1;
    v18 = sub_1D208C64C();
    v50[1] = v19;
    MEMORY[0x1D3894D80](v18);

    v20 = sub_1D208C64C();
    v51 = v125;
    v125[0] = v20;
    v125[1] = v21;
    v56 = MEMORY[0x1E69E6158];
    v54 = MEMORY[0x1E69E61C8];
    v55 = MEMORY[0x1E69E61C0];
    sub_1D208CAFC();
    sub_1D1FE023C(v51);
    v22 = sub_1D208C64C();
    v53 = v23;
    MEMORY[0x1D3894D80](v22);

    v24 = sub_1D208BEFC();
    v57 = v124;
    v124[0] = v24;
    v124[1] = v25;
    sub_1D208CAFC();
    sub_1D1FE023C(v57);
    v26 = sub_1D208C64C();
    v61 = v27;
    MEMORY[0x1D3894D80](v26);

    v64 = v126;
    v63 = v127;

    sub_1D1FE023C(v62);
    sub_1D208C62C();
    v48 = 163;
    v49 = 0;
    sub_1D208CA3C();
    __break(1u);
  }

  sub_1D208BFFC();
  return (*(v106 + 8))(v118, v105);
}

uint64_t sub_1D1FED2F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69699C8];
  v1 = sub_1D208C05C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t static EKDateUtilities.startOfMonth(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.startOfMonth(for:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.startOfMonth(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3;
  v12 = a1;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v16 = sub_1D208C10C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v15 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v6 - v9;
  v20 = sub_1D208BB4C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v11 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v12;
  v21 = a2;
  (*(v13 + 104))(v4, *MEMORY[0x1E6969A78]);
  sub_1D208C00C();
  (*(v13 + 8))(v15, v16);
  if ((*(v17 + 48))(v19, 1, v20) == 1)
  {
    sub_1D1FF1B44(v19);
    return sub_1D208BEAC();
  }

  else
  {
    (*(v17 + 32))(v11, v19, v20);
    sub_1D208BB2C();
    return (*(v17 + 8))(v11, v20);
  }
}

uint64_t static EKDateUtilities.endOfMonth(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.endOfMonth(for:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.endOfMonth(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[1] = a3;
  v12 = a1;
  v6[2] = "Fatal error";
  v6[3] = "Unexpectedly found nil while unwrapping an Optional value";
  v6[4] = "EnergyKitFoundation/EKDateUtilities.swift";
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v16 = sub_1D208C10C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v15 = v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v19 = v6 - v9;
  v20 = sub_1D208BB4C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v11 = v6 - v10;
  v23 = v6 - v10;
  v22 = v12;
  v21 = a2;
  (*(v13 + 104))(v4, *MEMORY[0x1E6969A78]);
  sub_1D208C00C();
  (*(v13 + 8))(v15, v16);
  if ((*(v17 + 48))(v19, 1, v20) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  (*(v17 + 32))(v11, v19, v20);
  sub_1D208BB0C();
  return (*(v17 + 8))(v11, v20);
}

uint64_t static EKDateUtilities.endOf6Month(for:in:ignoreDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v25 = a1;
  v20 = a2;
  v24 = a3;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v10 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v9 - v9;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v9 - v11;
  v30 = sub_1D208C12C();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v13 = *(v26 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v16);
  v28 = &v9 - v12;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v29 = &v9 - v6;
  v36 = &v9 - v6;
  v35 = v25;
  v34 = v7;
  v33 = v24 & 1;
  (*(v14 + 104))(v5, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v26 + 16))(v28, v29, v30);
  static EKDateUtilities.endOf6Month(for:with:ignoreDay:)(v25, v28, v24 & 1, v23);
  v32 = *(v26 + 8);
  v31 = v26 + 8;
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t static EKDateUtilities.endOf6Month(for:with:ignoreDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v12 = a1;
  v20 = a2;
  v21 = a3;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v10 = 0;
  v18 = sub_1D208C10C();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = &v10 - v11;
  v26 = sub_1D208BF1C();
  v22 = *(v26 - 8);
  v23 = v26 - 8;
  v13 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v12);
  v24 = &v10 - v13;
  v33 = &v10 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v25 = &v10 - v14;
  v32 = &v10 - v14;
  v31 = v6;
  v30 = v7;
  v29 = v8 & 1;
  static EKDateUtilities.startOf6Month(for:with:ignoreDay:)(v6, v7, v8 & 1, &v10 - v14);
  (*(v15 + 104))(v17, *MEMORY[0x1E6969A78], v18);
  static EKDateUtilities.advance(date:by:interval:with:)(v25, 7, v17, v20, v24);
  (*(v15 + 8))(v17, v18);
  static EKDateUtilities.startOf6Month(for:with:ignoreDay:)(v24, v20, v21 & 1, v19);
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t static EKDateUtilities.startOf6Month(for:with:ignoreDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v139 = a1;
  v80 = a2;
  v119 = a3;
  v81 = "Fatal error";
  v82 = "Unexpectedly found nil while unwrapping an Optional value";
  v83 = "EnergyKitFoundation/EKDateUtilities.swift";
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v116 = 0;
  v136 = sub_1D208C10C();
  v130 = *(v136 - 8);
  v131 = v136 - 8;
  v84 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v85 = &v53 - v84;
  v86 = sub_1D208C05C();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v116);
  v90 = &v53 - v89;
  v91 = sub_1D208C04C();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v116);
  v95 = &v53 - v94;
  v96 = sub_1D208C01C();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v53 - v99;
  v101 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v116);
  v102 = &v53 - v101;
  v103 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v53 - v103;
  v105 = sub_1D208BF1C();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v105);
  v109 = &v53 - v108;
  v158 = &v53 - v108;
  v110 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v111 = &v53 - v110;
  v157 = &v53 - v110;
  v112 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v53 - v112;
  v156 = &v53 - v112;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB88, &qword_1D208E5C8);
  v114 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v53 - v114;
  v117 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB90, &qword_1D208E5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v53 - v117;
  v120 = sub_1D208BC3C();
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v139);
  v124 = &v53 - v123;
  v125 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v126 = &v53 - v125;
  v127 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v53 - v127;
  v155 = &v53 - v127;
  v129 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v140 = &v53 - v129;
  v154 = &v53 - v129;
  v153 = v18;
  v152 = a2;
  v142 = 1;
  v151 = v19 & 1;
  v135 = sub_1D208CB2C();
  v132 = v20;
  v21 = *MEMORY[0x1E6969A68];
  v134 = *(v130 + 104);
  v133 = v130 + 104;
  v134();
  (v134)(v132 + *(v130 + 72), *MEMORY[0x1E6969A78], v136);
  v22 = v135;
  sub_1D1FCECE8();
  v137 = v22;
  v138 = sub_1D1FF1A1C();
  v141 = sub_1D208C7FC();
  sub_1D208C03C();

  v149 = sub_1D208BBBC();
  if (v23 & 1 & v142)
  {
    v78 = 1;
  }

  else
  {
    v78 = v149;
  }

  if (v78 > 6)
  {
    v77 = 0;
  }

  else
  {
    v76 = 0;
  }

  sub_1D208BBCC();
  sub_1D208BC1C();
  v68 = 0;
  v24 = *(*(sub_1D208C12C() - 8) + 56);
  v73 = 1;
  v24(v118, 1);
  v25 = sub_1D208C17C();
  (*(*(v25 - 8) + 56))(v115, v73);
  v69 = sub_1D208BBAC();
  v70 = v26;
  sub_1D208BBBC();
  v71 = &v31;
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v72 = 1;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  LOBYTE(v50) = 1;
  v51 = 0;
  v52 = 1;
  sub_1D208BC2C();
  sub_1D208C09C();
  v74 = *(v106 + 48);
  v75 = v106 + 48;
  if (v74(v104, v73, v105) == 1)
  {
    LOBYTE(v49) = 2;
    v50 = 307;
    LODWORD(v51) = 0;
    sub_1D208CA2C();
    __break(1u);
  }

  v60 = *(v106 + 32);
  v61 = v106 + 32;
  v60(v113, v104, v105);
  v62 = sub_1D208CB2C();
  (v134)(v27, *MEMORY[0x1E6969AB0], v136);
  sub_1D1FCECE8();
  v63 = sub_1D208C7FC();
  sub_1D208C03C();

  v66 = sub_1D208BC0C();
  v67 = v28;
  v64 = *(v121 + 8);
  v65 = v121 + 8;
  v64(v126, v120);
  v145 = v66;
  v146 = v67 & 1;
  v147 = 2;
  v148 = 0;
  if (v67)
  {
    v59 = 0;
  }

  else
  {
    v143 = v66;
    v144 = v67 & 1;
    v59 = v66 == v147;
  }

  if (v59)
  {
    (*(v106 + 16))(v79, v113, v105);
    (*(v106 + 8))(v113, v105);
    v64(v128, v120);
    return (v64)(v140, v120);
  }

  else
  {
    (*(v121 + 16))(v124, v140, v120);
    (*(v97 + 104))(v100, *MEMORY[0x1E69698D0], v96);
    (*(v92 + 104))(v95, *MEMORY[0x1E6969998], v91);
    sub_1D1FED2F0(v90);
    sub_1D208C0EC();
    (*(v87 + 8))(v90, v86);
    (*(v92 + 8))(v95, v91);
    (*(v97 + 8))(v100, v96);
    v64(v124, v120);
    if (v74(v102, 1, v105) == 1)
    {
      LOBYTE(v49) = 2;
      v50 = 321;
      LODWORD(v51) = 0;
      sub_1D208CA2C();
      __break(1u);
    }

    v60(v111, v102, v105);
    if (v119)
    {
      (*(v106 + 16))(v79, v111, v105);
      v58 = *(v106 + 8);
      v57 = v106 + 8;
      v58(v111, v105);
      v58(v113, v105);
      v64(v128, v120);
      return (v64)(v140, v120);
    }

    else
    {
      if (sub_1D208BE9C())
      {
        (v134)(v85, *MEMORY[0x1E6969A48], v136);
        static EKDateUtilities.advance(date:by:interval:with:)(v139, -7, v85, v80, v109);
        (*(v130 + 8))(v85, v136);
        v30 = sub_1D1FCD65C();
        static EKDateUtilities.startOf6Month(for:with:ignoreDay:)(v109, v80, v30 & 1);
        v56 = *(v106 + 8);
        v55 = v106 + 8;
        v56(v109, v105);
        v56(v111, v105);
        v56(v113, v105);
      }

      else
      {
        (*(v106 + 16))(v79, v111, v105);
        v54 = *(v106 + 8);
        v53 = v106 + 8;
        v54(v111, v105);
        v54(v113, v105);
      }

      v64(v128, v120);
      return (v64)(v140, v120);
    }
  }
}

uint64_t static EKDateUtilities.advance(date:by:interval:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a5;
  v21 = a1;
  v20 = a2;
  v18 = a3;
  v19 = a4;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while unwrapping an Optional value";
  v17 = "EnergyKitFoundation/EKDateUtilities.swift";
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v10 - v22;
  v27 = MEMORY[0x1EEE9AC00](v21);
  v26 = v5;
  v25 = v6;
  v24 = v7;
  if (v5)
  {
    sub_1D1FCD65C();
    HIDWORD(v10) = 1;
    sub_1D208C0AC();
    v11 = sub_1D208BF1C();
    v12 = *(v11 - 8);
    v13 = v11 - 8;
    if ((*(v12 + 48))(v23, HIDWORD(v10)) == 1)
    {
      sub_1D208CA2C();
      __break(1u);
    }

    return (*(v12 + 32))(v14, v23, v11);
  }

  else
  {
    v9 = sub_1D208BF1C();
    return (*(*(v9 - 8) + 16))(v14, v21);
  }
}

uint64_t static EKDateUtilities.startOf6Month(for:in:ignoreDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v25 = a1;
  v20 = a2;
  v24 = a3;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v10 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v9 - v9;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v9 - v11;
  v30 = sub_1D208C12C();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v13 = *(v26 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v16);
  v28 = &v9 - v12;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v29 = &v9 - v6;
  v36 = &v9 - v6;
  v35 = v25;
  v34 = v7;
  v33 = v24 & 1;
  (*(v14 + 104))(v5, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v26 + 16))(v28, v29, v30);
  static EKDateUtilities.startOf6Month(for:with:ignoreDay:)(v25, v28, v24 & 1, v23);
  v32 = *(v26 + 8);
  v31 = v26 + 8;
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t static EKDateUtilities.startOfYear(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v20 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v9 = 0;
  v21 = sub_1D208C17C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v7 - v8;
  v17 = sub_1D208BFDC();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v7 - v10;
  v29 = sub_1D208C12C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v12 = *(v25 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v13;
  v34 = &v7 - v13;
  v33 = v24;
  v32 = v5;
  (*(v14 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 16))(v22, v20, v21);
  sub_1D208C0FC();
  (*(v25 + 16))(v27, v28, v29);
  static EKDateUtilities.startOfYear(for:with:)(v24, v27, v23);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t static EKDateUtilities.startOfYear(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3;
  v12 = a1;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v16 = sub_1D208C10C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v15 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v6 - v9;
  v20 = sub_1D208BB4C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v11 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v12;
  v21 = a2;
  (*(v13 + 104))(v4, *MEMORY[0x1E6969A68]);
  sub_1D208C00C();
  (*(v13 + 8))(v15, v16);
  if ((*(v17 + 48))(v19, 1, v20) == 1)
  {
    sub_1D1FF1B44(v19);
    return sub_1D208BEAC();
  }

  else
  {
    (*(v17 + 32))(v11, v19, v20);
    sub_1D208BB2C();
    return (*(v17 + 8))(v11, v20);
  }
}

uint64_t static EKDateUtilities.advance(date:by:interval:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v30 = a1;
  v29 = a2;
  v27 = a3;
  v28 = a4;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v21 = 0;
  v16 = sub_1D208C17C();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v13 - v19;
  v22 = sub_1D208BFDC();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v13 - v25;
  v31 = sub_1D208C12C();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v13 - v34;
  v36 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v13 - v36;
  v42 = &v13 - v36;
  v41 = v7;
  v40 = v8;
  v39 = v9;
  v38 = v10;
  if (v8)
  {
    (*(v23 + 104))(v26, *MEMORY[0x1E6969868], v22);
    sub_1D208BFEC();
    (*(v23 + 8))(v26, v22);
    (*(v17 + 16))(v20, v28, v16);
    sub_1D208C0FC();
    (*(v32 + 16))(v35, v37, v31);
    static EKDateUtilities.advance(date:by:interval:with:)(v30, v29, v27, v35, v15);
    v14 = *(v32 + 8);
    v13 = v32 + 8;
    v14(v35, v31);
    return (v14)(v37, v31);
  }

  else
  {
    v12 = sub_1D208BF1C();
    return (*(*(v12 - 8) + 16))(v15, v30);
  }
}

uint64_t static EKDateUtilities.group<A>(_:by:interval:startingAt:with:dateFn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v90 = a1;
  v91 = a2;
  v92 = a3;
  v97 = a4;
  v84 = a6;
  v85 = a7;
  v102 = a8;
  v60 = 0;
  v106 = MEMORY[0x1E69699F8];
  v58 = MEMORY[0x1E69E6340];
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v130 = a8;
  v59 = 255;
  v98 = sub_1D208BF1C();
  v61 = sub_1D208C7AC();
  v110 = 0;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = &v32 - v62;
  v64 = *(v10 - 8);
  v65 = v10 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v32 - v66;
  v68 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v32 - v66);
  v69 = &v32 - v68;
  v129 = &v32 - v68;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v70 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v32 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB98, &qword_1D208E5D8);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v98);
  v107 = &v32 - v75;
  v128 = &v32 - v75;
  v95 = *(v13 - 8);
  v96 = v13 - 8;
  v76 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v32 - v76;
  v78 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](&v32 - v76);
  v79 = &v32 - v78;
  v127 = &v32 - v78;
  v80 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v81 = &v32 - v80;
  v126 = &v32 - v80;
  v82 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v32 - v82;
  v125 = &v32 - v82;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBA0, &qword_1D208E5E0);
  v83 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v32 - v83;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBA8, &qword_1D208E5E8);
  v103 = *(v108 - 8);
  v104 = v108 - 8;
  v88 = *(v103 + 64);
  v87 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v110);
  v93 = &v32 - v87;
  v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v32 - v89;
  v124 = &v32 - v89;
  v123 = v90;
  v122 = v21;
  v121 = v22;
  v120 = v23;
  v119 = a5;
  v117 = v24;
  v118 = v25;
  v116 = sub_1D208CB2C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBB0, &qword_1D208E5F0);
  (*(*(v26 - 8) + 56))(v94, 1);
  sub_1D1FCD65C();
  sub_1D208C0BC();
  v27 = v93;
  sub_1D1FF1BEC(v94);
  v115 = 0;
  v100 = *(v95 + 16);
  v101 = v95 + 16;
  v100(v99, v97, v98);
  v114 = sub_1D208C52C();
  (*(v103 + 16))(v27, v105, v108);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D208C6CC();
  for (i = v110; ; i = v46)
  {
    v57 = i;
    swift_getAssociatedConformanceWitness();
    sub_1D208C90C();
    if ((*(v95 + 48))(v71, 1, v98) == 1)
    {
      break;
    }

    v53 = *(v95 + 32);
    v54 = v95 + 32;
    v55 = (v95 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53(v81, v71, v98);
    for (j = v57; ; j = v40)
    {
      v50 = j;
      v28 = sub_1D208C78C();
      v51 = v53;
      v52 = v55;
      if (v50 >= v28)
      {
        v36 = v52;
        v37 = v51;
        v38 = v114;

        v113 = v38;
        swift_getWitnessTable();
        v39 = sub_1D208C82C();

        if ((v39 & 1) == 0)
        {
          v100(v77, v99, v98);
          v35 = v114;

          v34 = *(TupleTypeMetadata2 + 48);
          v37(v63, v77, v98);
          *&v63[v34] = v35;
          sub_1D208C7AC();
          sub_1D208C79C();
        }

        (*(v95 + 8))(v81, v98);
        goto LABEL_18;
      }

      sub_1D208C7DC();
      v84(v69);
      v29 = sub_1D208BE9C();
      v49 = v50;
      if ((v29 & 1) == 0)
      {
        break;
      }

      (*(v64 + 16))(v67, v69, v102);
      result = sub_1D208C79C();
      v40 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        return result;
      }

      v115 = v40;
      (*(v95 + 8))(v79, v98);
      (*(v64 + 8))(v69, v102);
    }

    v46 = v49;
    v47 = v114;

    v112 = v47;
    swift_getWitnessTable();
    v48 = sub_1D208C82C();

    if ((v48 & 1) == 0)
    {
      v100(v77, v99, v98);
      v44 = v114;

      v43 = *(TupleTypeMetadata2 + 48);
      v53(v63, v77, v98);
      *&v63[v43] = v44;
      v45 = 0;
      sub_1D208C7AC();
      sub_1D208C79C();
      v114 = sub_1D208CB2C();
    }

    v100(v77, v81, v98);
    (*(v95 + 40))(v99, v77, v98);
    v42 = *(v95 + 8);
    v41 = v95 + 8;
    v42(v79, v98);
    (*(v64 + 8))(v69, v102);
    v42(v81, v98);
  }

LABEL_18:
  (*(v73 + 8))(v107, v72);
  v32 = &v116;
  v33 = v116;

  sub_1D1FD3C38(&v114);
  (*(v95 + 8))(v99, v98);
  (*(v103 + 8))(v105, v108);
  sub_1D1FD3C38(v32);
  return v33;
}

uint64_t sub_1D1FF185C(double a1)
{
  sub_1D208C7EC();
  v4 = a1 / v1;
  if (((COERCE_UNSIGNED_INT64(a1 / v1) >> 52) & 0x7FF) == 0x7FF)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  if (v4 <= -9.22337204e18)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  if (v4 >= 9.22337204e18)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  return v4;
}

unint64_t sub_1D1FF1A1C()
{
  v2 = qword_1EE0829C0;
  if (!qword_1EE0829C0)
  {
    sub_1D208C10C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0829C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D1FF1A9C(uint64_t a1)
{
  v3 = sub_1D208BF1C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1D1FF1B44(uint64_t a1)
{
  v3 = sub_1D208BB4C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1D1FF1BEC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBB0, &qword_1D208E5F0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v2 = sub_1D208BF1C();
    v3 = *(*(v2 - 8) + 8);
    v3(a1);
    (v3)(a1 + *(v5 + 36), v2);
  }

  return a1;
}

uint64_t static EKDateUtilities.numDaysBetweenDates(_:_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a2;
  v21 = a3;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v11 = 0;
  v22 = sub_1D208C17C();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v9 - v10;
  v18 = sub_1D208BFDC();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v9 - v12;
  v30 = sub_1D208C12C();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v14 = *(v26 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v17);
  v28 = &v9 - v13;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v29 = &v9 - v5;
  v38 = &v9 - v5;
  v37 = v25;
  v36 = v6;
  v35 = v21;
  (*(v15 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v15 + 8))(v17, v18);
  (*(v19 + 16))(v23, v21, v22);
  sub_1D208C0FC();
  (*(v26 + 16))(v28, v29, v30);
  v34 = static EKDateUtilities.numDaysBetweenDates(_:_:with:)(v25, v24, v28);
  v33 = v7;
  v32 = *(v26 + 8);
  v31 = v26 + 8;
  v32(v28, v30);
  v32(v29, v30);
  return v34;
}

uint64_t static EKDateUtilities.numDaysBetweenDates(_:_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = a2;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v10 = 0;
  v21 = sub_1D208BC3C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v10 - v11;
  v27 = &v10 - v11;
  v26 = v4;
  v25 = v5;
  v24 = a3;
  v13 = sub_1D208C10C();
  v12 = sub_1D208CB2C();
  (*(*(v13 - 8) + 104))(v6, *MEMORY[0x1E6969A48]);
  v7 = v12;
  sub_1D1FCECE8();
  v14 = v7;
  sub_1D1FF1A1C();
  v17 = sub_1D208C7FC();
  sub_1D208C02C();

  v23 = sub_1D208BB6C();
  v22 = v8;
  (*(v18 + 8))(v20, v21);
  return v23;
}

uint64_t static EKDateUtilities.numHoursBetweenDates(_:_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a2;
  v21 = a3;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v11 = 0;
  v22 = sub_1D208C17C();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v9 - v10;
  v18 = sub_1D208BFDC();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v9 - v12;
  v30 = sub_1D208C12C();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v14 = *(v26 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v17);
  v28 = &v9 - v13;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v29 = &v9 - v5;
  v38 = &v9 - v5;
  v37 = v25;
  v36 = v6;
  v35 = v21;
  (*(v15 + 104))(v4, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v15 + 8))(v17, v18);
  (*(v19 + 16))(v23, v21, v22);
  sub_1D208C0FC();
  (*(v26 + 16))(v28, v29, v30);
  v34 = static EKDateUtilities.numHoursBetweenDates(_:_:with:)(v25, v24, v28);
  v33 = v7;
  v32 = *(v26 + 8);
  v31 = v26 + 8;
  v32(v28, v30);
  v32(v29, v30);
  return v34;
}

uint64_t static EKDateUtilities.numHoursBetweenDates(_:_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = a2;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v10 = 0;
  v21 = sub_1D208BC3C();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v10 - v11;
  v27 = &v10 - v11;
  v26 = v4;
  v25 = v5;
  v24 = a3;
  v13 = sub_1D208C10C();
  v12 = sub_1D208CB2C();
  (*(*(v13 - 8) + 104))(v6, *MEMORY[0x1E6969A58]);
  v7 = v12;
  sub_1D1FCECE8();
  v14 = v7;
  sub_1D1FF1A1C();
  v17 = sub_1D208C7FC();
  sub_1D208C02C();

  v23 = sub_1D208BB8C();
  v22 = v8;
  (*(v18 + 8))(v20, v21);
  return v23;
}

uint64_t static EKDateUtilities.hoursInDay(on:in:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v19 = a2;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v8 = 0;
  v20 = sub_1D208C17C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v7 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v6 - v7;
  v16 = sub_1D208BFDC();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v15 = &v6 - v9;
  v27 = sub_1D208C12C();
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v11 = *(v23 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v25 = &v6 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v26 = &v6 - v12;
  v33 = &v6 - v12;
  v32 = v22;
  v31 = v4;
  (*(v13 + 104))(v3, *MEMORY[0x1E6969868]);
  sub_1D208BFEC();
  (*(v13 + 8))(v15, v16);
  (*(v17 + 16))(v21, v19, v20);
  sub_1D208C0FC();
  (*(v23 + 16))(v25, v26, v27);
  v30 = static EKDateUtilities.hoursInDay(on:with:)(v22, v25);
  v29 = *(v23 + 8);
  v28 = v23 + 8;
  v29(v25, v27);
  v29(v26, v27);
  return v30;
}

uint64_t static EKDateUtilities.hoursInDay(on:with:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while unwrapping an Optional value";
  v12 = "EnergyKitFoundation/EKDateUtilities.swift";
  v13 = "Double value cannot be converted to Int because it is either infinite or NaN";
  v14 = "Swift/IntegerTypes.swift";
  v15 = "Double value cannot be converted to Int because the result would be less than Int.min";
  v16 = "Double value cannot be converted to Int because the result would be greater than Int.max";
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v27 = 0;
  v25 = sub_1D208C10C();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v17 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v7 - v17;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8) - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v7 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v26 = &v7 - v20;
  v34 = &v7 - v20;
  v33 = v21;
  v32 = a2;
  (*(v22 + 104))(v4, *MEMORY[0x1E6969A48]);
  sub_1D208C00C();
  (*(v22 + 8))(v24, v25);
  sub_1D1FF2E60(v26, v28);
  v29 = sub_1D208BB4C();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  if ((*(v30 + 48))(v28, 1) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  sub_1D208BB3C();
  v8 = v5;
  (*(v30 + 8))(v28, v29);
  v9 = v8 / 3600.0;
  if (((COERCE_UNSIGNED_INT64(v8 / 3600.0) >> 52) & 0x7FF) == 0x7FF)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  if (v9 <= -9.22337204e18)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  if (v9 >= 9.22337204e18)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  v7 = v9;
  sub_1D1FF1B44(v26);
  return v7;
}

void *sub_1D1FF2E60(const void *a1, void *a2)
{
  v6 = sub_1D208BB4C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB80, &qword_1D208E5B8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t static EKDateUtilities.getNoon(after:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v22 = a1;
  v20 = a2;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v12 = 0;
  v26 = sub_1D208C04C();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v9 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v9 - v9;
  v30 = sub_1D208C05C();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v10 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v9 - v10;
  v34 = sub_1D208C01C();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v11 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v9 - v11;
  v39 = sub_1D208BC3C();
  v35 = *(v39 - 8);
  v36 = v39 - 8;
  v14 = *(v35 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v12);
  v37 = &v9 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v9 - v15;
  v44 = &v9 - v15;
  v43 = v5;
  v42 = a2;
  v17 = sub_1D208C10C();
  v16 = sub_1D208CB2C();
  (*(*(v17 - 8) + 104))(v6, *MEMORY[0x1E6969A58]);
  v7 = v16;
  sub_1D1FCECE8();
  v18 = v7;
  sub_1D1FF1A1C();
  v19 = sub_1D208C7FC();
  sub_1D208C03C();

  sub_1D208BB9C();
  (*(v35 + 16))(v37, v38, v39);
  (*(v31 + 104))(v33, *MEMORY[0x1E69698D0], v34);
  sub_1D1FED2F0(v29);
  sub_1D1FF3418(v25);
  sub_1D208C0EC();
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  (*(v31 + 8))(v33, v34);
  v41 = *(v35 + 8);
  v40 = v35 + 8;
  v41(v37, v39);
  return (v41)(v38, v39);
}

uint64_t sub_1D1FF3418@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6969998];
  v1 = sub_1D208C04C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t static EKDateUtilities.nearestTenAM()@<X0>(void *a1@<X8>)
{
  v31 = a1;
  v38 = 0;
  v37 = 0;
  v14 = 0;
  v18 = sub_1D208C04C();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v3 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = &v3 - v3;
  v22 = sub_1D208C05C();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v4 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v21 = &v3 - v4;
  v26 = sub_1D208C01C();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v5 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v25 = &v3 - v5;
  v30 = sub_1D208BF1C();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v6 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v3 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v3 - v7;
  v38 = &v3 - v7;
  v13 = sub_1D208BFDC();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v12 = &v3 - v8;
  v35 = sub_1D208C12C();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v9 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v12);
  v36 = &v3 - v9;
  v37 = &v3 - v9;
  (*(v10 + 104))(v1, *MEMORY[0x1E6969830]);
  sub_1D208BFEC();
  (*(v10 + 8))(v12, v13);
  sub_1D208BEDC();
  sub_1D1FF3970(v25);
  sub_1D1FED2F0(v21);
  sub_1D1FF3418(v17);
  sub_1D208C08C();
  (*(v15 + 8))(v17, v18);
  (*(v19 + 8))(v21, v22);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  sub_1D1FE94C4(v32, v31);
  sub_1D1FF1A9C(v32);
  return (*(v33 + 8))(v36, v35);
}

uint64_t sub_1D1FF3970@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69698D0];
  v1 = sub_1D208C01C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t static EKDateUtilities.minuteFor(_:)(uint64_t a1)
{
  v6 = a1;
  v16 = 0;
  v3 = 0;
  v9 = sub_1D208C10C();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v3 - v4;
  v14 = sub_1D208C12C();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v5 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v3 - v5;
  v16 = v1;
  sub_1D208C0DC();
  (*(v7 + 104))(v10, *MEMORY[0x1E6969A88], v9);
  v15 = sub_1D208C11C();
  (*(v7 + 8))(v10, v9);
  (*(v11 + 8))(v13, v14);
  return v15;
}

uint64_t static EKDateUtilities.roundToNextHalfHour(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v75 = a1;
  v39 = "Fatal error";
  v40 = "Unexpectedly found nil while unwrapping an Optional value";
  v41 = "EnergyKitFoundation/EKDateUtilities.swift";
  v76 = 0;
  v72 = 0;
  v42 = sub_1D208C04C();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = v29 - v45;
  v47 = sub_1D208C05C();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v51 = v29 - v50;
  v52 = sub_1D208C01C();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v56 = v29 - v55;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB88, &qword_1D208E5C8);
  v57 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v74 = v29 - v57;
  v58 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB90, &qword_1D208E5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v70 = v29 - v58;
  v59 = sub_1D208BC3C();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v63 = v29 - v62;
  v71 = sub_1D208C12C();
  v68 = *(v71 - 8);
  v69 = v71 - 8;
  v64 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v65 = v29 - v64;
  v66 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v75);
  v67 = v29 - v66;
  v76 = v3;
  sub_1D208C0DC();
  v4 = *(v68 + 56);
  v73 = 1;
  v4(v70, 1, 1, v71);
  v5 = sub_1D208C17C();
  (*(*(v5 - 8) + 56))(v74, v73);
  if (static EKDateUtilities.minuteFor(_:)(v75) < 30)
  {
    v36 = 30;
  }

  else
  {
    v36 = 0;
  }

  v37 = 0;
  v29[1] = 1;
  v32 = 1;
  v30 = &v7;
  v31 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 0;
  v10 = 1;
  v11 = v36;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = 0;
  v24 = 1;
  v25 = 0;
  LOBYTE(v26) = 1;
  v27 = 0;
  v28 = 1;
  sub_1D208BC2C();
  (*(v53 + 104))(v56, *MEMORY[0x1E69698C0], v52);
  sub_1D1FED2F0(v51);
  sub_1D1FF3418(v46);
  sub_1D208C0EC();
  (*(v43 + 8))(v46, v42);
  (*(v48 + 8))(v51, v47);
  (*(v53 + 8))(v56, v52);
  (*(v60 + 8))(v63, v59);
  (*(v68 + 8))(v65, v71);
  v33 = sub_1D208BF1C();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  if ((*(v34 + 48))(v67, v32) == 1)
  {
    LOBYTE(v25) = 2;
    v26 = 558;
    LODWORD(v27) = 0;
    sub_1D208CA2C();
    __break(1u);
  }

  return (*(v34 + 32))(v38, v67, v33);
}

uint64_t static EKDateUtilities.nextMinuteFor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  v42 = a1;
  v29[1] = "Fatal error";
  v29[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v29[3] = "EnergyKitFoundation/EKDateUtilities.swift";
  v69 = 0;
  v63 = 0;
  v46 = sub_1D208C04C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v30 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v45 = v29 - v30;
  v50 = sub_1D208C05C();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v31 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v49 = v29 - v31;
  v54 = sub_1D208C01C();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v32 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v53 = v29 - v32;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB88, &qword_1D208E5C8);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v39 = v29 - v33;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB90, &qword_1D208E5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v38 = v29 - v34;
  v58 = sub_1D208BC3C();
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v35 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v57 = v29 - v35;
  v62 = sub_1D208C12C();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v36 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v61 = v29 - v36;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v42);
  v65 = v29 - v37;
  v69 = v3;
  sub_1D208C0DC();
  v4 = *(v59 + 56);
  v64 = 1;
  v4(v38, 1, 1, v62);
  v5 = sub_1D208C17C();
  (*(*(v5 - 8) + 56))(v39, v64);
  v40 = &v7;
  v7 = 0;
  v41 = 1;
  v8 = 1;
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = 0;
  v24 = 1;
  v25 = 0;
  LOBYTE(v26) = 1;
  v27 = 0;
  v28 = 1;
  sub_1D208BC2C();
  (*(v51 + 104))(v53, *MEMORY[0x1E69698C0], v54);
  sub_1D1FED2F0(v49);
  sub_1D1FF3418(v45);
  sub_1D208C0EC();
  (*(v43 + 8))(v45, v46);
  (*(v47 + 8))(v49, v50);
  (*(v51 + 8))(v53, v54);
  (*(v55 + 8))(v57, v58);
  (*(v59 + 8))(v61, v62);
  v66 = sub_1D208BF1C();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  if ((*(v67 + 48))(v65, v64) == 1)
  {
    LOBYTE(v25) = 2;
    v26 = 567;
    LODWORD(v27) = 0;
    sub_1D208CA2C();
    __break(1u);
  }

  return (*(v67 + 32))(v29[0], v65, v66);
}

EnergyKitFoundation::EKDateUtilities::IntervalBoundary_optional __swiftcall EKDateUtilities.IntervalBoundary.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 15:
      v3 = 0;
LABEL_10:
      *v1 = v3;
      return rawValue;
    case 30:
      v3 = 1;
      goto LABEL_10;
    case 60:
      v3 = 2;
      goto LABEL_10;
    case 720:
      v3 = 3;
      goto LABEL_10;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t EKDateUtilities.IntervalBoundary.rawValue.getter()
{
  v3 = *v0;
  if (!*v0)
  {
    return 15;
  }

  if (v3 == 1)
  {
    return 30;
  }

  if (v3 == 2)
  {
    return 60;
  }

  return 720;
}

unint64_t sub_1D1FF4C04()
{
  v2 = qword_1EC6BEBB8;
  if (!qword_1EC6BEBB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEBB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D1FF4D6C@<X0>(uint64_t *a1@<X8>)
{
  result = EKDateUtilities.IntervalBoundary.rawValue.getter();
  *a1 = result;
  return result;
}

void *static EKDateUtilities.roundUpToIntervalBoundary(_:in:intervalMinutes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v65 = a2;
  v90 = a1;
  v66 = a4;
  v69 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v102 = 0;
  v67 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v70 = sub_1D208BC3C();
  v71 = *(v70 - 8);
  v72 = v71;
  v76 = *(v71 + 64);
  v5 = MEMORY[0x1EEE9AC00](0);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v27 - v78;
  v120 = v27 - v78;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v74 = v27 - v78;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v75 = v27 - v78;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v77 = v27 - v78;
  v119 = v27 - v78;
  MEMORY[0x1EEE9AC00](v8);
  v91 = v27 - v78;
  v79 = v27 - v78;
  v118 = v27 - v78;
  v117 = v9;
  v116 = a2;
  v80 = *v10;
  v115 = v80;
  v88 = sub_1D208C10C();
  v87 = sub_1D208CB2C();
  v84 = v11;
  v12 = *MEMORY[0x1E6969A68];
  v13 = *(v88 - 8);
  v86 = *(v13 + 104);
  v85 = v13 + 104;
  v86();
  v82 = *(v85 - 32);
  (v86)(v84 + v82, *MEMORY[0x1E6969A78], v88);
  v81 = 2 * v82;
  (v86)(v84 + 2 * v82, *MEMORY[0x1E6969A48], v88);
  (v86)(v84 + v81 + v82, *MEMORY[0x1E6969A58], v88);
  v83 = 4 * v82;
  (v86)(v84 + 4 * v82, *MEMORY[0x1E6969A88], v88);
  (v86)(v84 + v83 + v82, *MEMORY[0x1E6969A98], v88);
  v14 = v87;
  sub_1D1FCECE8();
  v89 = v14;
  sub_1D1FF1A1C();
  v92 = sub_1D208C7FC();
  sub_1D208C03C();

  v93 = sub_1D208BBDC();
  if (v15 & 1) != 0 || (v64 = v93, v62 = v93, v114 = v93, v63 = sub_1D208BB8C(), (v16))
  {
    v26 = sub_1D208BF1C();
    (*(*(v26 - 8) + 56))(v66, 1);
    (*(v72 + 8))(v79, v70);
    return v67;
  }

  v61 = v63;
  v60 = v61;
  v113 = v61;
  if (!v80 || v80 == 1)
  {
    v23 = v67;
    v109 = 0;
    v108 = 60;
    v107 = v80;
    v106 = EKDateUtilities.IntervalBoundary.rawValue.getter();
    v36 = MEMORY[0x1E69E6530];
    sub_1D208CBCC();
    v103 = v110;
    v104 = v111;
    v105 = v112;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBC0, &qword_1D208E5F8);
    sub_1D1FF5BF0();
    v38 = sub_1D208C7CC();
    v102 = v38;
    v99 = v38;
    v39 = v27;
    MEMORY[0x1EEE9AC00](v27);
    v40 = &v27[-4];
    v27[-2] = v24;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBD0, &qword_1D208E600);
    sub_1D1FF5CCC();
    sub_1D208C6EC();
    v42 = v23;
    if (v23)
    {
      result = v39;
      __break(1u);
    }

    else
    {
      v97 = v100;
      v98 = v101;
      if (v101)
      {
        v35 = 60;
      }

      else
      {
        v35 = v97;
      }

      v34 = v35;
      v96 = v35;
      v30 = *(v72 + 16);
      v31 = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v30(v73, v79, v70);
      v32 = 0;
      v33 = 0;
      sub_1D208BBFC();
      sub_1D208BB5C();
      if (v34 <= 59)
      {
        sub_1D208BBEC();
LABEL_39:
        v30(v75, v73, v70);
        sub_1D208C09C();
        v28 = *(v72 + 8);
        v27[1] = v72 + 8;
        v28(v75, v70);
        v28(v73, v70);

        v28(v79, v70);
        return v42;
      }

      sub_1D208BBEC();
      result = (v60 + 1);
      v25 = __OFADD__(v60, 1);
      v29 = v60 + 1;
      if (!v25)
      {
        sub_1D208BB9C();
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v80 == 2)
  {
    v95 = v75;
    v45 = *(v72 + 16);
    v46 = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v75, v79, v70);
    v47 = 0;
    v48 = 0;
    sub_1D208BBEC();
    sub_1D208BBFC();
    sub_1D208BB5C();
    result = (v60 + 1);
    v21 = __OFADD__(v60, 1);
    v49 = v60 + 1;
    if (!v21)
    {
      v22 = v67;
      sub_1D208BB9C();
      v45(v74, v75, v70);
      sub_1D208C09C();
      v44 = *(v72 + 8);
      v43 = v72 + 8;
      v44(v74, v70);
      v44(v75, v70);
      v44(v79, v70);
      return v22;
    }

    goto LABEL_44;
  }

  v56 = *(v72 + 16);
  v57 = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v77, v79, v70);
  v58 = 0;
  v59 = 0;
  sub_1D208BBEC();
  sub_1D208BBFC();
  sub_1D208BB5C();
  if (v60 <= 11)
  {
    sub_1D208BB9C();
LABEL_21:
    v20 = v67;
    v56(v75, v77, v70);
    sub_1D208C09C();
    v51 = *(v72 + 8);
    v50 = v72 + 8;
    v51(v75, v70);
    v51(v77, v70);
    v51(v79, v70);
    return v20;
  }

  sub_1D208BB9C();
  v55 = sub_1D208BB6C();
  if (v17)
  {
    goto LABEL_21;
  }

  v54 = v55;
  v94 = v54;
  result = (v54 + 1);
  v19 = __OFADD__(v54, 1);
  v53 = v54 + 1;
  if (!v19)
  {
    sub_1D208BB7C();
    goto LABEL_21;
  }

LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_1D1FF5BF0()
{
  v2 = qword_1EC6BEBC8;
  if (!qword_1EC6BEBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEBC0, &qword_1D208E5F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEBC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D1FF5CCC()
{
  v2 = qword_1EC6BEBD8;
  if (!qword_1EC6BEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEBD0, &qword_1D208E600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEBD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static EKDateUtilities.previousHourFor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  v42 = a1;
  v29[1] = "Fatal error";
  v29[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v29[3] = "EnergyKitFoundation/EKDateUtilities.swift";
  v69 = 0;
  v63 = 0;
  v46 = sub_1D208C04C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v30 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v45 = v29 - v30;
  v50 = sub_1D208C05C();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v31 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v49 = v29 - v31;
  v54 = sub_1D208C01C();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v32 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v53 = v29 - v32;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB88, &qword_1D208E5C8);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v39 = v29 - v33;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB90, &qword_1D208E5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v38 = v29 - v34;
  v58 = sub_1D208BC3C();
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v35 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v57 = v29 - v35;
  v62 = sub_1D208C12C();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v36 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v61 = v29 - v36;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v42);
  v65 = v29 - v37;
  v69 = v3;
  sub_1D208C0DC();
  v4 = *(v59 + 56);
  v64 = 1;
  v4(v38, 1, 1, v62);
  v5 = sub_1D208C17C();
  (*(*(v5 - 8) + 56))(v39, v64);
  v40 = &v7;
  v7 = 0;
  v41 = 1;
  v8 = 1;
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = 0;
  v24 = 1;
  v25 = 0;
  LOBYTE(v26) = 1;
  v27 = 0;
  v28 = 1;
  sub_1D208BC2C();
  (*(v51 + 104))(v53, *MEMORY[0x1E69698D0], v54);
  sub_1D1FED2F0(v49);
  sub_1D1FF3418(v45);
  sub_1D208C0EC();
  (*(v43 + 8))(v45, v46);
  (*(v47 + 8))(v49, v50);
  (*(v51 + 8))(v53, v54);
  (*(v55 + 8))(v57, v58);
  (*(v59 + 8))(v61, v62);
  v66 = sub_1D208BF1C();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  if ((*(v67 + 48))(v65, v64) == 1)
  {
    LOBYTE(v25) = 2;
    v26 = 663;
    LODWORD(v27) = 0;
    sub_1D208CA2C();
    __break(1u);
  }

  sub_1D208BE6C();
  return (*(v67 + 8))(v65, v66);
}

uint64_t sub_1D1FF64A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6969A88];
  v1 = sub_1D208C10C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t static EKDateUtilities.datesAreEqual(_:_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v12 = sub_1D208C12C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v6 - v6;
  v17 = MEMORY[0x1EEE9AC00](v7);
  v16 = v3;
  v15 = v4;
  sub_1D208C0DC();
  v14 = sub_1D208C0CC();
  (*(v10 + 8))(v13, v12);
  return v14 & 1;
}

id sub_1D1FF6620()
{
  sub_1D1FF6654();
  result = sub_1D1FE2994();
  qword_1EC6C0D48 = result;
  return result;
}

unint64_t sub_1D1FF6654()
{
  v2 = qword_1EC6BEBE0;
  if (!qword_1EC6BEBE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BEBE0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1D1FF66B8()
{
  if (qword_1EC6C0D40 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0D48;
}

uint64_t static EKDateUtilities.ekISO8601DateFormatter.getter()
{
  v0 = sub_1D1FF66B8();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1D1FF6750()
{
  v2 = sub_1D208BDCC();
  __swift_allocate_value_buffer(v2, qword_1EC6C0D58);
  v0 = __swift_project_value_buffer(v2, qword_1EC6C0D58);
  return sub_1D1FF679C(v0);
}

uint64_t sub_1D1FF679C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v35 = 0;
  v15 = 0;
  v6 = (*(*(sub_1D208BC9C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v6 - v6;
  v7 = (*(*(sub_1D208C17C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v6 - v7;
  v8 = (*(*(sub_1D208C12C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v6 - v8;
  v26 = sub_1D208BFCC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v9 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v6 - v9;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEBF8, &qword_1D208E708);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v18 = &v6 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEC00, &unk_1D208E710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v6 - v11;
  v31 = sub_1D208BDCC();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v13 = *(v28 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v31);
  v27 = &v6 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v6 - v14;
  v35 = &v6 - v14;
  sub_1D208BD6C();
  v3 = *(*(sub_1D208BD9C() - 8) + 56);
  v16 = 0;
  v22 = 1;
  v3(v17);
  sub_1D208BD6C();
  v4 = sub_1D208BD7C();
  (*(*(v4 - 8) + 56))(v18, v16, v22);
  sub_1D1FF6C58();
  sub_1D1FF6C70();
  sub_1D1FF6C88();
  sub_1D1FF6CA0();
  sub_1D208BDAC();
  sub_1D208C64C();
  sub_1D208BF9C();
  sub_1D208BDBC();
  (*(v23 + 8))(v25, v26);
  v33 = *(v28 + 8);
  v32 = v28 + 8;
  v33(v27, v31);
  (*(v28 + 16))(v30, v34, v31);
  return (v33)(v34, v31);
}

uint64_t sub_1D1FF6CB8()
{
  if (qword_1EC6C0D50 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208BDCC();
  return __swift_project_value_buffer(v0, qword_1EC6C0D58);
}

uint64_t static EKDateUtilities.ekUSCurrentLocaleFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1FF6CB8();
  v1 = sub_1D208BDCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D1FF6D88()
{
  v17 = sub_1D208BE5C();
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v17);
  v13 = &v6 - v7;
  v8 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v0);
  v14 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v16 = &v6 - v9;
  v10 = qword_1EC6C0D78;
  __swift_allocate_value_buffer(v4, qword_1EC6C0D78);
  v15 = __swift_project_value_buffer(v17, v10);
  MEMORY[0x1D3893EE0]();
  sub_1D208BE2C();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v13, v17);
  sub_1D208BE3C();
  v19(v14, v17);
  sub_1D208BE0C();
  return (v19)(v16, v17);
}

uint64_t sub_1D1FF6F2C()
{
  if (qword_1EC6C0D70 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208BE5C();
  return __swift_project_value_buffer(v0, qword_1EC6C0D78);
}

uint64_t static EKDateUtilities.isoFormatNoTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1FF6F2C();
  v1 = sub_1D208BE5C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static EKDateUtilities.isoFormatNoTime(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v11 = a1;
  v20 = 0;
  v19 = 0;
  v6[1] = 0;
  v12 = sub_1D208C17C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v6 - v7;
  v18 = sub_1D208BE5C();
  v14 = *(v18 - 8);
  v15 = v18 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v3 = v6 - v8;
  v17 = v6 - v8;
  v20 = v6 - v8;
  v19 = v2;
  v4 = sub_1D1FF6F2C();
  (*(v14 + 16))(v3, v4, v18);
  (*(v9 + 16))(v13, v11, v12);
  sub_1D208BE4C();
  return (*(v14 + 32))(v16, v17, v18);
}

uint64_t sub_1D1FF71B4()
{
  v21 = sub_1D208BE5C();
  v14 = *(v21 - 8);
  v15 = v21 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v21);
  v16 = &v8 - v9;
  v10 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v0);
  v17 = &v8 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v18 = &v8 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v20 = &v8 - v12;
  v13 = qword_1EE082BD8;
  __swift_allocate_value_buffer(v6, qword_1EE082BD8);
  v19 = __swift_project_value_buffer(v21, v13);
  MEMORY[0x1D3893EE0]();
  sub_1D208BE2C();
  v23 = *(v14 + 8);
  v22 = v14 + 8;
  v23(v16, v21);
  sub_1D208BE3C();
  v23(v17, v21);
  sub_1D208BE0C();
  v23(v18, v21);
  sub_1D208BE1C();
  return (v23)(v20, v21);
}

uint64_t sub_1D1FF73BC()
{
  if (qword_1EE082BD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208BE5C();
  return __swift_project_value_buffer(v0, qword_1EE082BD8);
}

uint64_t static EKDateUtilities.isoFormatNoZ.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1FF73BC();
  v1 = sub_1D208BE5C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static EKDateUtilities.isoFormatNoZ(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v11 = a1;
  v20 = 0;
  v19 = 0;
  v6[1] = 0;
  v12 = sub_1D208C17C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v6 - v7;
  v18 = sub_1D208BE5C();
  v14 = *(v18 - 8);
  v15 = v18 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v3 = v6 - v8;
  v17 = v6 - v8;
  v20 = v6 - v8;
  v19 = v2;
  v4 = sub_1D1FF73BC();
  (*(v14 + 16))(v3, v4, v18);
  (*(v9 + 16))(v13, v11, v12);
  sub_1D208BE4C();
  return (*(v14 + 32))(v16, v17, v18);
}

uint64_t static EKDateUtilities.toString(from:)(uint64_t a1)
{
  v10 = 0;
  v8 = sub_1D208BDCC();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v4 - v4;
  v10 = a1;
  v2 = sub_1D1FF6CB8();
  (*(v5 + 16))(v7, v2, v8);
  sub_1D1FF7760();
  sub_1D208BF0C();
  (*(v5 + 8))(v7, v8);
  return v9;
}

unint64_t sub_1D1FF7760()
{
  v2 = qword_1EC6BEBE8;
  if (!qword_1EC6BEBE8)
  {
    sub_1D208BDCC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D1FF77F8()
{
  v2 = qword_1EC6BEBF0;
  if (!qword_1EC6BEBF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEBF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for EKDateUtilities.IntervalBoundary(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EKDateUtilities.IntervalBoundary(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

id static GuidanceIDTracker.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for GuidanceIDTracker();
  return sub_1D1FCF514();
}

uint64_t sub_1D1FF7C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF8C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 siteID];
  sub_1D208BF4C();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D1FF7DA4(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF8C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BF3C();
  [v8 setSiteID_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D1FF7F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF8C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 token];
  sub_1D208BF4C();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D1FF8024(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF8C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BF3C();
  [v8 setToken_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t IntervalBlockClientPayload.utilityID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t IntervalBlockClientPayload.utilityID.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t IntervalBlockClientPayload.subscriptionID.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t IntervalBlockClientPayload.subscriptionID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t IntervalBlockClientPayload.usagePointID.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t IntervalBlockClientPayload.usagePointID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t IntervalBlockClientPayload.meterID.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t IntervalBlockClientPayload.meterID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t IntervalBlockClientPayload.sourceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 56)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t type metadata accessor for IntervalBlockClientPayload()
{
  v1 = qword_1EC6C2240;
  if (!qword_1EC6C2240)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1D1FF8764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockClientPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D200714C(v2, &v4 - v7);
  IntervalBlockClientPayload.sourceTime.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D20075F8(v13);
}

uint64_t sub_1D1FF88A0(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockClientPayload.sourceTime.setter(v6);
}

uint64_t IntervalBlockClientPayload.sourceTime.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v7, (v1 + *(v2 + 56)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockClientPayload.sourceTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockClientPayload.sourceTime.getter(v8);
  return sub_1D1FF8BD8;
}

void sub_1D1FF8BD8(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockClientPayload.sourceTime.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockClientPayload.sourceTime.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockClientPayload.hasSourceTime.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 56)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockClientPayload.clearSourceTime()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 56)));
}

uint64_t IntervalBlockClientPayload.start.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 60)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

char *sub_1D1FF90B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockClientPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D200714C(v2, &v4 - v7);
  IntervalBlockClientPayload.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D20075F8(v13);
}

uint64_t sub_1D1FF91EC(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockClientPayload.start.setter(v6);
}

uint64_t IntervalBlockClientPayload.start.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v7, (v1 + *(v2 + 60)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockClientPayload.start.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockClientPayload.start.getter(v8);
  return sub_1D1FF9524;
}

void sub_1D1FF9524(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockClientPayload.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockClientPayload.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockClientPayload.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 60)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockClientPayload.clearStart()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 60)));
}

uint64_t IntervalBlockClientPayload.end.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 64)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

char *sub_1D1FF99FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockClientPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D200714C(v2, &v4 - v7);
  IntervalBlockClientPayload.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D20075F8(v13);
}

uint64_t sub_1D1FF9B38(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockClientPayload.end.setter(v6);
}

uint64_t IntervalBlockClientPayload.end.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v7, (v1 + *(v2 + 64)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockClientPayload.end.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockClientPayload.end.getter(v8);
  return sub_1D1FF9E70;
}

void sub_1D1FF9E70(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockClientPayload.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockClientPayload.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockClientPayload.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 64)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockClientPayload.clearEnd()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 64)));
}

void IntervalBlockClientPayload.unit.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockClientPayload.unit.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

void IntervalBlockClientPayload.commodity.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockClientPayload.commodity.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

void IntervalBlockClientPayload.flowDirection.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockClientPayload.flowDirection.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t type metadata accessor for IntervalBlockClientPayload.IntervalReading()
{
  v1 = qword_1EC6C2250;
  if (!qword_1EC6C2250)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t IntervalBlockClientPayload.readings.getter()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t IntervalBlockClientPayload.readings.setter(uint64_t a1)
{

  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t IntervalBlockClientPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlockClientPayload() + 52);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t IntervalBlockClientPayload.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for IntervalBlockClientPayload();
  (*(v9 + 40))(v1 + *(v3 + 52), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t IntervalBlockClientPayload.FlowDirection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockClientPayload.FlowDirection.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        v5 = 1;
        break;
      case 2:
        v4 = 2;
        v5 = 1;
        break;
      case 3:
        v4 = 3;
        v5 = 1;
        break;
      default:
        v4 = a1;
        v5 = 0;
        break;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockClientPayload.FlowDirection.rawValue.getter()
{
  v4 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  v1 = *v0;
  switch(v4)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1D1FFA9DC@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockClientPayload.FlowDirection.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D1FFAA48()
{
  v2 = qword_1EC6BEC08;
  if (!qword_1EC6BEC08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D1FFAAFC()
{
  v2 = qword_1EC6BEC10;
  if (!qword_1EC6BEC10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC10);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockClientPayload.Commodity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockClientPayload.Commodity.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockClientPayload.Commodity.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D1FFADEC@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockClientPayload.Commodity.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D1FFAE58()
{
  v2 = qword_1EC6BEC18;
  if (!qword_1EC6BEC18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D1FFAF0C()
{
  v2 = qword_1EC6BEC20;
  if (!qword_1EC6BEC20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockClientPayload.Unit.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockClientPayload.Unit.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockClientPayload.Unit.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D1FFB1FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockClientPayload.Unit.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D1FFB268()
{
  v2 = qword_1EC6BEC28;
  if (!qword_1EC6BEC28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D1FFB31C()
{
  v2 = qword_1EC6BEC30;
  if (!qword_1EC6BEC30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC30);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockClientPayload.IntervalReading.qualities.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t IntervalBlockClientPayload.IntervalReading.qualities.setter(uint64_t a1)
{

  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
}

uint64_t IntervalBlockClientPayload.IntervalReading.start.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v1 + *(v3 + 36)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D1FFB76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockClientPayload.IntervalReading() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D2006C80(v2, &v4 - v7);
  IntervalBlockClientPayload.IntervalReading.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D2006FA4(v13);
}

uint64_t sub_1D1FFB8A8(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockClientPayload.IntervalReading.start.setter(v6);
}

uint64_t IntervalBlockClientPayload.IntervalReading.start.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD6448(v7, (v1 + *(v2 + 36)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockClientPayload.IntervalReading.start.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockClientPayload.IntervalReading.start.getter(v8);
  return sub_1D1FFBBE0;
}

void sub_1D1FFBBE0(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockClientPayload.IntervalReading.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockClientPayload.IntervalReading.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockClientPayload.IntervalReading.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v0 + *(v2 + 36)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockClientPayload.IntervalReading.clearStart()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD6448(v5, (v0 + *(v3 + 36)));
}

uint64_t IntervalBlockClientPayload.IntervalReading.end.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v1 + *(v3 + 40)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D1FFC0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockClientPayload.IntervalReading() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D2006C80(v2, &v4 - v7);
  IntervalBlockClientPayload.IntervalReading.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D2006FA4(v13);
}

uint64_t sub_1D1FFC1F4(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockClientPayload.IntervalReading.end.setter(v6);
}

uint64_t IntervalBlockClientPayload.IntervalReading.end.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD6448(v7, (v1 + *(v2 + 40)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockClientPayload.IntervalReading.end.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockClientPayload.IntervalReading.end.getter(v8);
  return sub_1D1FFC52C;
}

void sub_1D1FFC52C(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockClientPayload.IntervalReading.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockClientPayload.IntervalReading.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockClientPayload.IntervalReading.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v0 + *(v2 + 40)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockClientPayload.IntervalReading.clearEnd()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD6448(v5, (v0 + *(v3 + 40)));
}

uint64_t IntervalBlockClientPayload.IntervalReading.tariffProfileID.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t IntervalBlockClientPayload.IntervalReading.tariffProfileID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t IntervalBlockClientPayload.IntervalReading.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlockClientPayload.IntervalReading() + 32);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t IntervalBlockClientPayload.IntervalReading.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  (*(v9 + 40))(v1 + *(v3 + 32), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t IntervalBlockClientPayload.IntervalReading.Quality.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockClientPayload.IntervalReading.Quality.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        v5 = 1;
        break;
      case 2:
        v4 = 2;
        v5 = 1;
        break;
      case 3:
        v4 = 3;
        v5 = 1;
        break;
      default:
        v4 = a1;
        v5 = 0;
        break;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockClientPayload.IntervalReading.Quality.rawValue.getter()
{
  v4 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  v1 = *v0;
  switch(v4)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1D1FFCE04@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockClientPayload.IntervalReading.Quality.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D1FFCE70()
{
  v2 = qword_1EC6BEC38;
  if (!qword_1EC6BEC38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D1FFCF24()
{
  v2 = qword_1EC6BEC40;
  if (!qword_1EC6BEC40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC40);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockClientPayload.IntervalReading.init()@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v20 = 0;
  v11 = 0;
  v13 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  v10 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = (&v9 - v10);
  v20 = &v9 - v10;
  *v18 = 0;
  v18[1] = sub_1D208CB2C();
  v1 = sub_1D208C51C();
  v2 = v18;
  v3 = v1;
  v4 = v13;
  v18[2] = v3;
  v2[3] = v5;
  *(v2 + 8) = -1;
  v6 = *(v4 + 32);
  sub_1D208C20C();
  v12 = *(v13 + 36);
  v15 = sub_1D208C1EC();
  v7 = *(v15 - 8);
  v17 = *(v7 + 56);
  v16 = v7 + 56;
  v14 = 1;
  v17(v18 + v12, 1);
  (v17)(v18 + *(v13 + 40), v14, v14, v15);
  return sub_1D1FFD1B0(v18, v19);
}

uint64_t sub_1D1FFD1B0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  v10 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  v8 = v10[8];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2 + v8, a1 + v8);
  v11 = v10[9];
  v13 = sub_1D208C1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a1 + v11, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v11), (a1 + v11), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  __dst = (a2 + v10[10]);
  __src = (a1 + v10[10]);
  if (v15())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1D1FFD4E4(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD6448(v6, (v1 + *(v2 + 36)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D1FFD5E8(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD6448(v6, (v1 + *(v2 + 40)));
  return sub_1D1FD6044(v7);
}

uint64_t IntervalBlockClientPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = 0;
  v20 = 0;
  v22 = type metadata accessor for IntervalBlockClientPayload();
  v19 = (*(*(v22 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v27 = (&v18 - v19);
  v29 = &v18 - v19;
  v1 = sub_1D208C51C();
  v2 = v27;
  *v27 = v1;
  v2[1] = v3;
  v4 = sub_1D208C51C();
  v5 = v27;
  v27[2] = v4;
  v5[3] = v6;
  v7 = sub_1D208C51C();
  v8 = v27;
  v27[4] = v7;
  v8[5] = v9;
  v10 = sub_1D208C51C();
  v11 = v27;
  v27[6] = v10;
  v11[7] = v12;
  v11[8] = 0;
  v23 = 1;
  *(v11 + 72) = 1;
  v11[10] = 0;
  *(v11 + 88) = 1;
  v11[12] = 0;
  *(v11 + 104) = 1;
  *(v11 + 105) = 0;
  type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  v13 = sub_1D208CB2C();
  v14 = v22;
  v27[14] = v13;
  v15 = v14[13];
  sub_1D208C20C();
  v21 = v22[14];
  v24 = sub_1D208C1EC();
  v16 = *(v24 - 8);
  v26 = *(v16 + 56);
  v25 = v16 + 56;
  v26(v27 + v21, v23);
  (v26)(v27 + v22[15], v23, v23, v24);
  (v26)(v27 + v22[16], v23, v23, v24);
  return sub_1D1FFD8AC(v27, v28);
}

uint64_t sub_1D1FFD8AC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 105) = *(a1 + 105);
  *(a2 + 112) = *(a1 + 112);
  v13 = type metadata accessor for IntervalBlockClientPayload();
  v11 = v13[13];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2 + v11, a1 + v11);
  v14 = v13[14];
  v16 = sub_1D208C1EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v14), (a1 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))();
    (*(v17 + 56))(a2 + v14, 0, 1, v16);
  }

  __dst = (a2 + v13[15]);
  __src = (a1 + v13[15]);
  if (v18())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(__dst, __src, v16);
    (*(v17 + 56))(__dst, 0, 1, v16);
  }

  v7 = (a2 + v13[16]);
  v8 = (a1 + v13[16]);
  if (v18())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(v7, v8, v16);
    (*(v17 + 56))(v7, 0, 1, v16);
  }

  return a2;
}

uint64_t sub_1D1FFDD18(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v6, (v1 + *(v2 + 56)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D1FFDE1C(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v6, (v1 + *(v2 + 60)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D1FFDF20(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD6448(v6, (v1 + *(v2 + 64)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D1FFDFE4()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  *(v1 + 48) = 3;
  *(v1 + 56) = 1;
  sub_1D1FCECE8();
  qword_1EC6C0F18 = result;
  return result;
}

uint64_t *sub_1D1FFE080()
{
  if (qword_1EC6C0F10 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0F18;
}

uint64_t static IntervalBlockClientPayload.FlowDirection.allCases.getter()
{
  v1 = sub_1D1FFE080();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockClientPayload.FlowDirection.allCases.setter(uint64_t a1)
{
  v3 = sub_1D1FFE080();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockClientPayload.FlowDirection.allCases.modify())()
{
  sub_1D1FFE080();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D1FFE210@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockClientPayload.FlowDirection.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D1FFE23C()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  sub_1D1FCECE8();
  qword_1EC6C0F28 = result;
  return result;
}

uint64_t *sub_1D1FFE2B0()
{
  if (qword_1EC6C0F20 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0F28;
}

uint64_t static IntervalBlockClientPayload.Commodity.allCases.getter()
{
  v1 = sub_1D1FFE2B0();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockClientPayload.Commodity.allCases.setter(uint64_t a1)
{
  v3 = sub_1D1FFE2B0();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockClientPayload.Commodity.allCases.modify())()
{
  sub_1D1FFE2B0();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D1FFE440@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockClientPayload.Commodity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D1FFE46C()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  sub_1D1FCECE8();
  qword_1EC6C0F38 = result;
  return result;
}

uint64_t *sub_1D1FFE4E0()
{
  if (qword_1EC6C0F30 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0F38;
}

uint64_t static IntervalBlockClientPayload.Unit.allCases.getter()
{
  v1 = sub_1D1FFE4E0();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockClientPayload.Unit.allCases.setter(uint64_t a1)
{
  v3 = sub_1D1FFE4E0();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockClientPayload.Unit.allCases.modify())()
{
  sub_1D1FFE4E0();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D1FFE670@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockClientPayload.Unit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D1FFE69C()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  *(v1 + 48) = 3;
  *(v1 + 56) = 1;
  sub_1D1FCECE8();
  qword_1EC6C0F48 = result;
  return result;
}

uint64_t *sub_1D1FFE738()
{
  if (qword_1EC6C0F40 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0F48;
}

uint64_t static IntervalBlockClientPayload.IntervalReading.Quality.allCases.getter()
{
  v1 = sub_1D1FFE738();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockClientPayload.IntervalReading.Quality.allCases.setter(uint64_t a1)
{
  v3 = sub_1D1FFE738();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockClientPayload.IntervalReading.Quality.allCases.modify())()
{
  sub_1D1FFE738();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D1FFE8C8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockClientPayload.IntervalReading.Quality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D1FFE8F4()
{
  result = sub_1D208C64C();
  qword_1EC6C0F58 = result;
  qword_1EC6C0F60 = v1;
  return result;
}

uint64_t *sub_1D1FFE938()
{
  if (qword_1EC6C0F50 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0F58;
}

uint64_t static IntervalBlockClientPayload.protoMessageName.getter()
{
  v0 = sub_1D1FFE938();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D1FFE9D4()
{
  v46 = sub_1D208C47C();
  __swift_allocate_value_buffer(v46, qword_1EC6C0F70);
  __swift_project_value_buffer(v46, qword_1EC6C0F70);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v50 = v0;
  v1 = *(v53 + 48);
  *v0 = 1;
  v48 = v0 + v1;
  *v48 = "utilityID";
  *(v48 + 1) = 9;
  v48[16] = 2;
  v51 = MEMORY[0x1E69AADC8];
  v47 = *MEMORY[0x1E69AADC8];
  v52 = *(*(sub_1D208C45C() - 8) + 104);
  (v52)(v48, v47);
  v49 = *(*(v53 - 8) + 72);
  v2 = *(v53 + 48);
  *(v50 + v49) = 2;
  v3 = v50 + v49 + v2;
  *v3 = "subscriptionID";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v4 = *v51;
  v52();
  v5 = *(v53 + 48);
  v6 = (v50 + 2 * v49);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "usagePointID";
  *(v7 + 1) = 12;
  v7[16] = 2;
  v8 = *v51;
  v52();
  v9 = *(v53 + 48);
  v10 = (v50 + 3 * v49);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "meterID";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v12 = *v51;
  v52();
  v13 = *(v53 + 48);
  v14 = (v50 + 4 * v49);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "sourceTime";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v16 = *v51;
  v52();
  v17 = *(v53 + 48);
  v18 = (v50 + 5 * v49);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "start";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v20 = *v51;
  v52();
  v21 = *(v53 + 48);
  v22 = (v50 + 6 * v49);
  *v22 = 7;
  v23 = v22 + v21;
  *v23 = "end";
  *(v23 + 1) = 3;
  v23[16] = 2;
  v24 = *v51;
  v52();
  v25 = *(v53 + 48);
  v26 = (v50 + 7 * v49);
  *v26 = 8;
  v27 = v26 + v25;
  *v27 = "unit";
  *(v27 + 1) = 4;
  v27[16] = 2;
  v28 = *v51;
  v52();
  v29 = *(v53 + 48);
  v30 = &v50[v49];
  *v30 = 9;
  v31 = v30 + v29;
  *v31 = "commodity";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v32 = *v51;
  v52();
  v33 = *(v53 + 48);
  v34 = (v50 + 9 * v49);
  *v34 = 10;
  v35 = v34 + v33;
  *v35 = "flowDirection";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v36 = *v51;
  v52();
  v37 = *(v53 + 48);
  v38 = (v50 + 10 * v49);
  *v38 = 11;
  v39 = v38 + v37;
  *v39 = "preprocessed";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v40 = *v51;
  v52();
  v41 = *(v53 + 48);
  v42 = (v50 + 11 * v49);
  *v42 = 12;
  v43 = v42 + v41;
  *v43 = "readings";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v44 = *v51;
  v52();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D1FFF020()
{
  if (qword_1EC6C0F68 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C0F70);
}

uint64_t static IntervalBlockClientPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1FFF020();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t IntervalBlockClientPayload.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D1FDAE60();
        break;
      case 3:
        sub_1D1FDAEE4();
        break;
      case 4:
        sub_1D1FFF628();
        break;
      case 5:
        sub_1D1FFF6AC();
        break;
      case 6:
        sub_1D1FFF774();
        break;
      case 7:
        sub_1D1FFF83C();
        break;
      case 8:
        sub_1D1FFF904();
        break;
      case 9:
        sub_1D1FFF9AC();
        break;
      case 10:
        sub_1D1FFFA54();
        break;
      case 11:
        sub_1D1FFFAFC();
        break;
      case 12:
        sub_1D1FFFB80();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D1FFF6AC()
{
  v1 = *(type metadata accessor for IntervalBlockClientPayload() + 56);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D1FFF774()
{
  v1 = *(type metadata accessor for IntervalBlockClientPayload() + 60);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D1FFF83C()
{
  v1 = *(type metadata accessor for IntervalBlockClientPayload() + 64);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D1FFFB80()
{
  type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D2001480();
  return sub_1D208C32C();
}

uint64_t IntervalBlockClientPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a1;
  v111 = a2;
  v112 = a3;
  v144 = 0;
  v143 = 0;
  v145 = a2;
  v116 = sub_1D208C21C();
  v117 = *(v116 - 8);
  v118 = v116 - 8;
  v119 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v120 = v31 - v119;
  v144 = MEMORY[0x1EEE9AC00](v115);
  v143 = v3;
  v121 = *v3;
  v122 = v3[1];

  v123 = sub_1D208C66C();

  if (v123)
  {
    v106 = v114;
  }

  else
  {
    v4 = v114;
    v107 = *v113;
    v108 = v113[1];

    sub_1D208C41C();
    v109 = v4;
    v110 = v4;
    if (v4)
    {
      v35 = v110;

      v36 = v35;
      return result;
    }

    v106 = v109;
  }

  v102 = v106;
  v103 = v113[2];
  v104 = v113[3];

  v105 = sub_1D208C66C();

  if (v105)
  {
    v97 = v102;
  }

  else
  {
    v5 = v102;
    v98 = v113[2];
    v99 = v113[3];

    sub_1D208C41C();
    v100 = v5;
    v101 = v5;
    if (v5)
    {
      v34 = v101;

      v36 = v34;
      return result;
    }

    v97 = v100;
  }

  v93 = v97;
  v94 = v113[4];
  v95 = v113[5];

  v96 = sub_1D208C66C();

  if (v96)
  {
    v88 = v93;
  }

  else
  {
    v6 = v93;
    v89 = v113[4];
    v90 = v113[5];

    sub_1D208C41C();
    v91 = v6;
    v92 = v6;
    if (v6)
    {
      v33 = v92;

      v36 = v33;
      return result;
    }

    v88 = v91;
  }

  v84 = v88;
  v85 = v113[6];
  v86 = v113[7];

  v87 = sub_1D208C66C();

  if (v87)
  {
    v79 = v84;
  }

  else
  {
    v7 = v84;
    v80 = v113[6];
    v81 = v113[7];

    sub_1D208C41C();
    v82 = v7;
    v83 = v7;
    if (v7)
    {
      v32 = v83;

      v36 = v32;
      return result;
    }

    v79 = v82;
  }

  v8 = v79;
  result = sub_1D2000ABC(v113, v115, v111, v112);
  v77 = v8;
  v78 = v8;
  if (v8)
  {
    v36 = v78;
    return result;
  }

  sub_1D2000D54(v113, v115, v111, v112);
  v75 = 0;
  v76 = 0;
  sub_1D2000FEC(v113, v115, v111, v112);
  v73 = 0;
  v74 = 0;
  v10 = v113[8];
  v11 = *(v113 + 72);
  v72 = &v141;
  v141 = v10;
  v142 = v11 & 1;
  v71 = &v139;
  v139 = 0;
  v140 = 1;
  sub_1D2001284();
  if (sub_1D208C59C())
  {
    v67 = v73;
  }

  else
  {
    v12 = v113[8];
    v13 = *(v113 + 72);
    v68 = &v124;
    v124 = v12;
    v125 = v13 & 1;
    sub_1D1FFB31C();
    v14 = v73;
    result = sub_1D208C3CC();
    v69 = v14;
    v70 = v14;
    if (v14)
    {
      v36 = v70;
      return result;
    }

    v67 = 0;
  }

  v64 = v67;
  v15 = v113[10];
  v16 = *(v113 + 88);
  v66 = &v137;
  v137 = v15;
  v138 = v16 & 1;
  v65 = &v135;
  v135 = 0;
  v136 = 1;
  sub_1D2001300();
  if (sub_1D208C59C())
  {
    v60 = v64;
  }

  else
  {
    v17 = v113[10];
    v18 = *(v113 + 88);
    v61 = &v126;
    v126 = v17;
    v127 = v18 & 1;
    sub_1D1FFAF0C();
    v19 = v64;
    result = sub_1D208C3CC();
    v62 = v19;
    v63 = v19;
    if (v19)
    {
      v36 = v63;
      return result;
    }

    v60 = 0;
  }

  v57 = v60;
  v20 = v113[12];
  v21 = *(v113 + 104);
  v59 = &v133;
  v133 = v20;
  v134 = v21 & 1;
  v58 = &v131;
  v131 = 0;
  v132 = 1;
  sub_1D200137C();
  if (sub_1D208C59C())
  {
    v53 = v57;
  }

  else
  {
    v22 = v113[12];
    v23 = *(v113 + 104);
    v54 = &v128;
    v128 = v22;
    v129 = v23 & 1;
    sub_1D1FFAAFC();
    v24 = v57;
    result = sub_1D208C3CC();
    v55 = v24;
    v56 = v24;
    if (v24)
    {
      v36 = v56;
      return result;
    }

    v53 = 0;
  }

  v52 = v53;
  if (*(v113 + 105))
  {
    v25 = v52;
    v26 = *(v113 + 105) & 1;
    result = sub_1D208C3BC();
    v50 = v25;
    v51 = v25;
    if (v25)
    {
      v36 = v51;
      return result;
    }

    v49 = 0;
  }

  else
  {
    v49 = v52;
  }

  v45 = v49;
  v47 = v113[14];

  v130 = v47;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEC60, &unk_1D208FB90);
  sub_1D20013F8();
  v48 = sub_1D208C82C();

  if (v48)
  {
    v40 = v45;
  }

  else
  {
    v42 = v113[14];

    v41 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    sub_1D2001480();
    v27 = v45;
    sub_1D208C43C();
    v43 = v27;
    v44 = v27;
    if (v27)
    {
      v31[2] = v44;
    }

    v40 = v43;
  }

  v28 = v120;
  v37 = v40;
  v29 = type metadata accessor for IntervalBlockClientPayload();
  (*(v117 + 16))(v28, v113 + *(v29 + 52), v116);
  v30 = v37;
  sub_1D208C1FC();
  v38 = v30;
  v39 = v30;
  if (v30)
  {
    v31[1] = v39;
  }

  return (*(v117 + 8))(v120, v116);
}

uint64_t sub_1D2000ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 56)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

uint64_t sub_1D2000D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 60)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

uint64_t sub_1D2000FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 64)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

unint64_t sub_1D2001284()
{
  v2 = qword_1EC6BEC48;
  if (!qword_1EC6BEC48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2001300()
{
  v2 = qword_1EC6BEC50;
  if (!qword_1EC6BEC50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D200137C()
{
  v2 = qword_1EC6BEC58;
  if (!qword_1EC6BEC58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20013F8()
{
  v2 = qword_1EC6BEC68;
  if (!qword_1EC6BEC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEC60, &unk_1D208FB90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2001480()
{
  v2 = qword_1EC6BEC70;
  if (!qword_1EC6BEC70)
  {
    type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC70);
    return WitnessTable;
  }

  return v2;
}

BOOL static IntervalBlockClientPayload.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v123 = a1;
  v145 = a2;
  v178 = 0;
  v177 = 0;
  v103 = 0;
  v104 = sub_1D208C21C();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (v105[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v108 = &v41 - v107;
  v109 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v110 = &v41 - v109;
  v111 = sub_1D208C1EC();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v41 - v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v117 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v116);
  v118 = &v41 - v117;
  v119 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v120 = &v41 - v119;
  v121 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v41 - v121;
  v124 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v123);
  v126 = &v41 - v125;
  v127 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v41 - v127;
  v129 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v130 = &v41 - v129;
  v131 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v132 = &v41 - v131;
  v133 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v134 = &v41 - v133;
  v135 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v41 - v135;
  v137 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v138 = &v41 - v137;
  v139 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v140 = &v41 - v139;
  v141 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v142 = &v41 - v141;
  v178 = v24;
  v177 = v25;
  v143 = *v24;
  v144 = v24[1];

  v149 = &v175;
  v175 = v143;
  v176 = v144;
  v146 = *v145;
  v147 = v145[1];

  v148 = v174;
  v174[0] = v146;
  v174[1] = v147;
  v150 = MEMORY[0x1D38948D0](v175, v176, v146, v147);
  sub_1D1FE023C(v148);
  sub_1D1FE023C(v149);
  if ((v150 & 1) == 0)
  {
    return 0;
  }

  v95 = *(v123 + 16);
  v96 = *(v123 + 24);

  v100 = &v172;
  v172 = v95;
  v173 = v96;
  v97 = v145[2];
  v98 = v145[3];

  v99 = v171;
  v171[0] = v97;
  v171[1] = v98;
  v101 = MEMORY[0x1D38948D0](v172, v173, v97, v98);
  sub_1D1FE023C(v99);
  sub_1D1FE023C(v100);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

  v88 = *(v123 + 32);
  v89 = *(v123 + 40);

  v93 = &v169;
  v169 = v88;
  v170 = v89;
  v90 = v145[4];
  v91 = v145[5];

  v92 = v168;
  v168[0] = v90;
  v168[1] = v91;
  v94 = MEMORY[0x1D38948D0](v169, v170, v90, v91);
  sub_1D1FE023C(v92);
  sub_1D1FE023C(v93);
  if ((v94 & 1) == 0)
  {
    return 0;
  }

  v81 = *(v123 + 48);
  v82 = *(v123 + 56);

  v86 = &v166;
  v166 = v81;
  v167 = v82;
  v83 = v145[6];
  v84 = v145[7];

  v85 = v165;
  v165[0] = v83;
  v165[1] = v84;
  v87 = MEMORY[0x1D38948D0](v166, v167, v83, v84);
  sub_1D1FE023C(v85);
  sub_1D1FE023C(v86);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  v77 = type metadata accessor for IntervalBlockClientPayload();
  sub_1D1FD5F1C((v123 + v77[14]), v142);
  sub_1D1FD5F1C(v145 + v77[14], v140);
  v78 = &v122[*(v116 + 48)];
  sub_1D1FD5F1C(v142, v122);
  sub_1D1FD5F1C(v140, v78);
  v79 = *(v112 + 48);
  v80 = v112 + 48;
  if (v79(v122, 1, v111) == 1)
  {
    if (v79(v78, 1, v111) == 1)
    {
      sub_1D1FD6044(v122);
      v76 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D1FD5F1C(v122, v138);
    if (v79(v78, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v78, v111);
      sub_1D1FE0494();
      v75 = sub_1D208C59C();
      v74 = *(v112 + 8);
      v73 = v112 + 8;
      v74(v115, v111);
      v74(v138, v111);
      sub_1D1FD6044(v122);
      v76 = v75;
      goto LABEL_15;
    }

    (*(v112 + 8))(v138, v111);
  }

  sub_1D1FE0268(v122);
  v76 = 0;
LABEL_15:
  v72 = v76;
  sub_1D1FD6044(v140);
  sub_1D1FD6044(v142);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v123 + v77[15]), v136);
  sub_1D1FD5F1C(v145 + v77[15], v134);
  v71 = &v120[*(v116 + 48)];
  sub_1D1FD5F1C(v136, v120);
  sub_1D1FD5F1C(v134, v71);
  if (v79(v120, 1, v111) == 1)
  {
    if (v79(v71, 1, v111) == 1)
    {
      sub_1D1FD6044(v120);
      v70 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D1FD5F1C(v120, v132);
    if (v79(v71, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v71, v111);
      sub_1D1FE0494();
      v69 = sub_1D208C59C();
      v68 = *(v112 + 8);
      v67 = v112 + 8;
      v68(v115, v111);
      v68(v132, v111);
      sub_1D1FD6044(v120);
      v70 = v69;
      goto LABEL_26;
    }

    (*(v112 + 8))(v132, v111);
  }

  sub_1D1FE0268(v120);
  v70 = 0;
LABEL_26:
  v66 = v70;
  sub_1D1FD6044(v134);
  sub_1D1FD6044(v136);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v123 + v77[16]), v130);
  sub_1D1FD5F1C(v145 + v77[16], v128);
  v65 = &v118[*(v116 + 48)];
  sub_1D1FD5F1C(v130, v118);
  sub_1D1FD5F1C(v128, v65);
  if (v79(v118, 1, v111) == 1)
  {
    if (v79(v65, 1, v111) == 1)
    {
      sub_1D1FD6044(v118);
      v64 = 1;
      goto LABEL_37;
    }
  }

  else
  {
    sub_1D1FD5F1C(v118, v126);
    if (v79(v65, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v65, v111);
      sub_1D1FE0494();
      v63 = sub_1D208C59C();
      v62 = *(v112 + 8);
      v61 = v112 + 8;
      v62(v115, v111);
      v62(v126, v111);
      sub_1D1FD6044(v118);
      v64 = v63;
      goto LABEL_37;
    }

    (*(v112 + 8))(v126, v111);
  }

  sub_1D1FE0268(v118);
  v64 = 0;
LABEL_37:
  v60 = v64;
  sub_1D1FD6044(v128);
  sub_1D1FD6044(v130);
  if (v60)
  {
    v26 = *(v123 + 64);
    v27 = *(v123 + 72);
    v59 = &v163;
    v163 = v26;
    v164 = v27 & 1;
    v28 = v145[8];
    v29 = *(v145 + 72);
    v58 = &v161;
    v161 = v28;
    v162 = v29 & 1;
    sub_1D2001284();
    v30 = sub_1D208C59C();
    if (v30)
    {
      v31 = *(v123 + 80);
      v32 = *(v123 + 88);
      v57 = &v159;
      v159 = v31;
      v160 = v32 & 1;
      v33 = v145[10];
      v34 = *(v145 + 88);
      v56 = &v157;
      v157 = v33;
      v158 = v34 & 1;
      sub_1D2001300();
      if (sub_1D208C59C())
      {
        v35 = *(v123 + 96);
        v36 = *(v123 + 104);
        v55 = &v155;
        v155 = v35;
        v156 = v36 & 1;
        v37 = v145[12];
        v38 = *(v145 + 104);
        v54 = &v153;
        v153 = v37;
        v154 = v38 & 1;
        sub_1D200137C();
        if (sub_1D208C59C())
        {
          if ((*(v123 + 105) & 1) == (*(v145 + 105) & 1))
          {
            v46 = *(v123 + 112);

            v52 = &v152;
            v152 = v46;
            v47 = v145[14];

            v51 = &v151;
            v151 = v47;
            v50 = v152;
            v48 = v47;
            v49 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
            sub_1D2005AE8();
            v53 = sub_1D208C7BC();
            sub_1D1FD3C38(v51);
            sub_1D1FD3C38(v52);
            if (v53)
            {
              v39 = v123 + v77[13];
              v42 = v105[2];
              v41 = v105 + 2;
              v42(v110, v39, v104);
              v42(v108, v145 + v77[13], v104);
              sub_1D1FE0414();
              v45 = sub_1D208C59C();
              v44 = v105[1];
              v43 = v105 + 1;
              v44(v108, v104);
              v44(v110, v104);
              return (v45 & 1) != 0;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t IntervalBlockClientPayload.hashValue.getter()
{
  type metadata accessor for IntervalBlockClientPayload();
  sub_1D2005B68();
  return sub_1D208C9DC();
}

void (*sub_1D200269C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntervalBlockClientPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D200288C()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C0F90);
  __swift_project_value_buffer(v14, qword_1EC6C0F90);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 0;
  v16 = v0 + v1;
  *v16 = "FLOW_DIRECTION_UNSPECIFIED";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 1;
  v3 = v18 + v17 + v2;
  *v3 = "DELIVERED";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 2;
  v7 = v6 + v5;
  *v7 = "REVERSE";
  *(v7 + 1) = 7;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 3;
  v11 = v10 + v9;
  *v11 = "NET";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2002B1C()
{
  if (qword_1EC6C0F88 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C0F90);
}

uint64_t static IntervalBlockClientPayload.FlowDirection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2002B1C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2002C04()
{
  v7 = sub_1D208C47C();
  __swift_allocate_value_buffer(v7, qword_1EC6C0FB0);
  __swift_project_value_buffer(v7, qword_1EC6C0FB0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v10 = v0;
  v1 = *(v13 + 48);
  *v0 = 0;
  v9 = v0 + v1;
  *v9 = "COMMODITY_UNSPECIFIED";
  *(v9 + 1) = 21;
  v9[16] = 2;
  v11 = MEMORY[0x1E69AADC8];
  v8 = *MEMORY[0x1E69AADC8];
  v12 = *(*(sub_1D208C45C() - 8) + 104);
  (v12)(v9, v8);
  v2 = *(v13 + 48);
  v3 = (v10 + *(*(v13 - 8) + 72));
  *v3 = 1;
  v4 = v3 + v2;
  *v4 = "ELECTRIC";
  *(v4 + 1) = 8;
  v4[16] = 2;
  v5 = *v11;
  v12();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2002DB8()
{
  if (qword_1EC6C0FA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C0FB0);
}

uint64_t static IntervalBlockClientPayload.Commodity._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2002DB8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2002EA0()
{
  v7 = sub_1D208C47C();
  __swift_allocate_value_buffer(v7, qword_1EC6C0FD0);
  __swift_project_value_buffer(v7, qword_1EC6C0FD0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v10 = v0;
  v1 = *(v13 + 48);
  *v0 = 0;
  v9 = v0 + v1;
  *v9 = "UNIT_UNSPECIFIED";
  *(v9 + 1) = 16;
  v9[16] = 2;
  v11 = MEMORY[0x1E69AADC8];
  v8 = *MEMORY[0x1E69AADC8];
  v12 = *(*(sub_1D208C45C() - 8) + 104);
  (v12)(v9, v8);
  v2 = *(v13 + 48);
  v3 = (v10 + *(*(v13 - 8) + 72));
  *v3 = 1;
  v4 = v3 + v2;
  *v4 = "KWH";
  *(v4 + 1) = 3;
  v4[16] = 2;
  v5 = *v11;
  v12();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2003054()
{
  if (qword_1EC6C0FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C0FD0);
}

uint64_t static IntervalBlockClientPayload.Unit._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2003054();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D200313C()
{
  v0 = sub_1D1FFE938();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C0FF0 = v6;
  qword_1EC6C0FF8 = v7;
  return result;
}

uint64_t *sub_1D20031DC()
{
  if (qword_1EC6C0FE8 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C0FF0;
}

uint64_t static IntervalBlockClientPayload.IntervalReading.protoMessageName.getter()
{
  v0 = sub_1D20031DC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2003278()
{
  v22 = sub_1D208C47C();
  __swift_allocate_value_buffer(v22, qword_1EC6C1008);
  __swift_project_value_buffer(v22, qword_1EC6C1008);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v26 = v0;
  v1 = *(v29 + 48);
  *v0 = 1;
  v24 = v0 + v1;
  *v24 = "value";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v27 = MEMORY[0x1E69AADC8];
  v23 = *MEMORY[0x1E69AADC8];
  v28 = *(*(sub_1D208C45C() - 8) + 104);
  (v28)(v24, v23);
  v25 = *(*(v29 - 8) + 72);
  v2 = *(v29 + 48);
  *(v26 + v25) = 2;
  v3 = v26 + v25 + v2;
  *v3 = "qualities";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v4 = *v27;
  v28();
  v5 = *(v29 + 48);
  v6 = (v26 + 2 * v25);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "start";
  *(v7 + 1) = 5;
  v7[16] = 2;
  v8 = *v27;
  v28();
  v9 = *(v29 + 48);
  v10 = (v26 + 3 * v25);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "end";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v12 = *v27;
  v28();
  v13 = *(v29 + 48);
  v14 = (v26 + 4 * v25);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "tariffProfileID";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v16 = *v27;
  v28();
  v17 = *(v29 + 48);
  v18 = (v26 + 5 * v25);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "rank";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v20 = *v27;
  v28();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2003608()
{
  if (qword_1EC6C1000 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C1008);
}

uint64_t static IntervalBlockClientPayload.IntervalReading._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2003608();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t IntervalBlockClientPayload.IntervalReading.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8();
        break;
      case 2:
        sub_1D2003A6C();
        break;
      case 3:
        sub_1D2003B14();
        break;
      case 4:
        sub_1D2003BDC();
        break;
      case 5:
        sub_1D1FDAE60();
        break;
      case 6:
        sub_1D2003CA4();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D2003B14()
{
  v1 = *(type metadata accessor for IntervalBlockClientPayload.IntervalReading() + 36);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2003BDC()
{
  v1 = *(type metadata accessor for IntervalBlockClientPayload.IntervalReading() + 40);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t IntervalBlockClientPayload.IntervalReading.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v48 = a2;
  v49 = a3;
  v60 = 0;
  v59 = 0;
  v61 = a2;
  v53 = sub_1D208C21C();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v15 - v56;
  v60 = MEMORY[0x1EEE9AC00](v52);
  v59 = v3;
  if (*v3 == 0.0)
  {
    v45 = v51;
  }

  else
  {
    v4 = v51;
    v5 = *v50;
    result = sub_1D208C40C();
    v46 = v4;
    v47 = v4;
    if (v4)
    {
      v17 = v47;
      return result;
    }

    v45 = 0;
  }

  v41 = v45;
  v43 = v50[1];

  v58 = v43;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEC98, &qword_1D208E758);
  sub_1D2005CE8();
  v44 = sub_1D208C82C();

  if (v44)
  {
    v37 = v41;
  }

  else
  {
    v38 = v50[1];

    sub_1D1FFCF24();
    v7 = v41;
    sub_1D208C3AC();
    v39 = v7;
    v40 = v7;
    if (v7)
    {
      v16 = v40;

      v17 = v16;
      return result;
    }

    v37 = v39;
  }

  v8 = v37;
  result = sub_1D20042CC(v50, v52, v48, v49);
  v35 = v8;
  v36 = v8;
  if (v8)
  {
    v17 = v36;
    return result;
  }

  sub_1D2004564(v50, v52, v48, v49);
  v33 = 0;
  v34 = 0;
  v30 = v50[2];
  v31 = v50[3];

  v32 = sub_1D208C66C();

  if (v32)
  {
    v25 = v33;
  }

  else
  {
    v9 = v33;
    v26 = v50[2];
    v27 = v50[3];

    sub_1D208C41C();
    v28 = v9;
    v29 = v9;
    if (v9)
    {
      v15[2] = v29;
    }

    v25 = v28;
  }

  v24 = v25;
  if (*(v50 + 8))
  {
    v10 = v24;
    v11 = *(v50 + 8);
    result = sub_1D208C3EC();
    v22 = v10;
    v23 = v10;
    if (v10)
    {
      return result;
    }

    v21 = 0;
  }

  else
  {
    v21 = v24;
  }

  v12 = v57;
  v18 = v21;
  v13 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  (*(v54 + 16))(v12, v50 + *(v13 + 32), v53);
  v14 = v18;
  sub_1D208C1FC();
  v19 = v14;
  v20 = v14;
  if (v14)
  {
    v15[1] = v20;
  }

  return (*(v54 + 8))(v57, v53);
}

uint64_t sub_1D20042CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v22 + *(v7 + 36)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

uint64_t sub_1D2004564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v22 + *(v7 + 40)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

BOOL static IntervalBlockClientPayload.IntervalReading.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v73 = a2;
  v93 = 0;
  v92 = 0;
  v55 = 0;
  v56 = sub_1D208C21C();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (v57[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v60 = v20 - v59;
  v61 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v62 = v20 - v61;
  v63 = sub_1D208C1EC();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v67 = v20 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v68);
  v70 = v20 - v69;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v72 = v20 - v71;
  v75 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v74);
  v76 = v20 - v75;
  v77 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = v20 - v77;
  v79 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = v20 - v79;
  v81 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v82 = v20 - v81;
  v83 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = v20 - v83;
  v85 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = v20 - v85;
  v93 = v16;
  v92 = v17;
  if (*v16 != *v17)
  {
    return 0;
  }

  v47 = *(v74 + 8);

  v52 = &v91;
  v91 = v47;
  v48 = *(v73 + 8);

  v51 = &v90;
  v90 = v48;
  v50 = v91;
  v49 = v48;
  sub_1D2005D70();
  v53 = sub_1D208C7BC();
  sub_1D1FD3C38(v51);
  sub_1D1FD3C38(v52);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

  v43 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D1FD5F1C((v74 + v43[9]), v86);
  sub_1D1FD5F1C((v73 + v43[9]), v84);
  v44 = &v72[*(v68 + 48)];
  sub_1D1FD5F1C(v86, v72);
  sub_1D1FD5F1C(v84, v44);
  v45 = *(v64 + 48);
  v46 = v64 + 48;
  if (v45(v72, 1, v63) == 1)
  {
    if (v45(v44, 1, v63) == 1)
    {
      sub_1D1FD6044(v72);
      v42 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1D1FD5F1C(v72, v82);
    if (v45(v44, 1, v63) != 1)
    {
      (*(v64 + 32))(v67, v44, v63);
      sub_1D1FE0494();
      v41 = sub_1D208C59C();
      v40 = *(v64 + 8);
      v39 = v64 + 8;
      v40(v67, v63);
      v40(v82, v63);
      sub_1D1FD6044(v72);
      v42 = v41;
      goto LABEL_11;
    }

    (*(v64 + 8))(v82, v63);
  }

  sub_1D1FE0268(v72);
  v42 = 0;
LABEL_11:
  v38 = v42;
  sub_1D1FD6044(v84);
  sub_1D1FD6044(v86);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v74 + v43[10]), v80);
  sub_1D1FD5F1C((v73 + v43[10]), v78);
  v37 = &v70[*(v68 + 48)];
  sub_1D1FD5F1C(v80, v70);
  sub_1D1FD5F1C(v78, v37);
  if (v45(v70, 1, v63) == 1)
  {
    if (v45(v37, 1, v63) == 1)
    {
      sub_1D1FD6044(v70);
      v36 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    sub_1D1FD5F1C(v70, v76);
    if (v45(v37, 1, v63) != 1)
    {
      (*(v64 + 32))(v67, v37, v63);
      sub_1D1FE0494();
      v35 = sub_1D208C59C();
      v34 = *(v64 + 8);
      v33 = v64 + 8;
      v34(v67, v63);
      v34(v76, v63);
      sub_1D1FD6044(v70);
      v36 = v35;
      goto LABEL_22;
    }

    (*(v64 + 8))(v76, v63);
  }

  sub_1D1FE0268(v70);
  v36 = 0;
LABEL_22:
  v32 = v36;
  sub_1D1FD6044(v78);
  sub_1D1FD6044(v80);
  if (v32)
  {
    v25 = *(v74 + 16);
    v26 = *(v74 + 24);

    v30 = &v88;
    v88 = v25;
    v89 = v26;
    v27 = *(v73 + 16);
    v28 = *(v73 + 24);

    v29 = v87;
    v87[0] = v27;
    v87[1] = v28;
    v31 = MEMORY[0x1D38948D0](v88, v89, v27, v28);
    sub_1D1FE023C(v29);
    sub_1D1FE023C(v30);
    if (v31)
    {
      if (*(v74 + 32) == *(v73 + 32))
      {
        v18 = v74 + v43[8];
        v21 = v57[2];
        v20[1] = v57 + 2;
        v21(v62, v18, v56);
        v21(v60, v73 + v43[8], v56);
        sub_1D1FE0414();
        v24 = sub_1D208C59C();
        v23 = v57[1];
        v22 = v57 + 1;
        v23(v60, v56);
        v23(v62, v56);
        return (v24 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t IntervalBlockClientPayload.IntervalReading.hashValue.getter()
{
  type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  sub_1D2005DEC();
  return sub_1D208C9DC();
}

void (*sub_1D200557C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntervalBlockClientPayload.IntervalReading.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D200576C()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C1028);
  __swift_project_value_buffer(v14, qword_1EC6C1028);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 0;
  v16 = v0 + v1;
  *v16 = "QUALITY_UNSPECIFIED";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 1;
  v3 = v18 + v17 + v2;
  *v3 = "ESTIMATED";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 2;
  v7 = v6 + v5;
  *v7 = "VALIDATED";
  *(v7 + 1) = 9;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 3;
  v11 = v10 + v9;
  *v11 = "RAW";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2005A00()
{
  if (qword_1EC6C1020 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C1028);
}

uint64_t static IntervalBlockClientPayload.IntervalReading.Quality._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2005A00();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1D2005AE8()
{
  v2 = qword_1EC6BEC78;
  if (!qword_1EC6BEC78)
  {
    type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005B68()
{
  v2 = qword_1EC6BEC80;
  if (!qword_1EC6BEC80)
  {
    type metadata accessor for IntervalBlockClientPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005BE8()
{
  v2 = qword_1EC6BEC88;
  if (!qword_1EC6BEC88)
  {
    type metadata accessor for IntervalBlockClientPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005C68()
{
  v2 = qword_1EC6BEC90;
  if (!qword_1EC6BEC90)
  {
    type metadata accessor for IntervalBlockClientPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005CE8()
{
  v2 = qword_1EC6BECA0;
  if (!qword_1EC6BECA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEC98, &qword_1D208E758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005D70()
{
  v2 = qword_1EC6BECA8;
  if (!qword_1EC6BECA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005DEC()
{
  v2 = qword_1EC6BECB0;
  if (!qword_1EC6BECB0)
  {
    type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005E6C()
{
  v2 = qword_1EC6BECB8;
  if (!qword_1EC6BECB8)
  {
    type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005F04()
{
  v2 = qword_1EC6BECC0;
  if (!qword_1EC6BECC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2005FC8()
{
  v2 = qword_1EC6BECC8;
  if (!qword_1EC6BECC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D200608C()
{
  v2 = qword_1EC6BECD0;
  if (!qword_1EC6BECD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2006150()
{
  v2 = qword_1EC6BECD8;
  if (!qword_1EC6BECD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2006214()
{
  v2 = qword_1EC6BECE0;
  if (!qword_1EC6BECE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BECE8, &qword_1D208EB00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20062B4()
{
  v2 = qword_1EC6BECF0;
  if (!qword_1EC6BECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BECF8, &qword_1D208EB40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BECF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2006354()
{
  v2 = qword_1EC6BED00;
  if (!qword_1EC6BED00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BED08, &qword_1D208EB80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D200640C()
{
  v2 = qword_1EC6BED10;
  if (!qword_1EC6BED10)
  {
    type metadata accessor for IntervalBlockClientPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20064D4()
{
  v2 = qword_1EC6BED18;
  if (!qword_1EC6BED18)
  {
    type metadata accessor for IntervalBlockClientPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D200656C()
{
  v2 = qword_1EC6BED20;
  if (!qword_1EC6BED20)
  {
    type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D20066AC()
{
  v4 = sub_1D2006848();
  if (v0 <= 0x3F)
  {
    v4 = sub_1D208C21C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1D1FE0FAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1D2006848()
{
  v4 = qword_1EC6BED28;
  if (!qword_1EC6BED28)
  {
    type metadata accessor for IntervalBlockClientPayload.IntervalReading();
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BED28);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D2006A00()
{
  v4 = sub_1D2006B40();
  if (v0 <= 0x3F)
  {
    v4 = sub_1D208C21C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1D1FE0FAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1D2006B40()
{
  v4 = qword_1EC6BED30;
  if (!qword_1EC6BED30)
  {
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BED30);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1D2006C04()
{
  v2 = qword_1EC6C22E0[0];
  if (!qword_1EC6C22E0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C22E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2006C80(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v8 = *(a1 + 8);

  *(a2 + 8) = v8;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(a1 + 24);

  *(a2 + 24) = v9;
  *(a2 + 32) = *(a1 + 32);
  v12 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  v10 = v12[8];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2 + v10, a1 + v10);
  v13 = v12[9];
  v15 = sub_1D208C1EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if ((v17)(a1 + v13, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v13), (a1 + v13), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))();
    (*(v16 + 56))(a2 + v13, 0, 1, v15);
  }

  __dst = (a2 + v12[10]);
  __src = (a1 + v12[10]);
  if (v17())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(__dst, __src, v15);
    (*(v16 + 56))(__dst, 0, 1, v15);
  }

  return a2;
}

uint64_t sub_1D2006FA4(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  v7 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  v6 = v7[8];
  v3 = sub_1D208C21C();
  (*(*(v3 - 8) + 8))(a1 + v6);
  v8 = v7[9];
  v10 = sub_1D208C1EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!(v12)(a1 + v8, 1))
  {
    (*(v11 + 8))(a1 + v8, v10);
  }

  v5 = a1 + v7[10];
  if (!v12())
  {
    (*(v11 + 8))(v5, v10);
  }

  return a1;
}

uint64_t sub_1D200714C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v11 = *(a1 + 8);

  *(a2 + 8) = v11;
  *(a2 + 16) = *(a1 + 16);
  v12 = *(a1 + 24);

  *(a2 + 24) = v12;
  *(a2 + 32) = *(a1 + 32);
  v13 = *(a1 + 40);

  *(a2 + 40) = v13;
  *(a2 + 48) = *(a1 + 48);
  v14 = *(a1 + 56);

  *(a2 + 56) = v14;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 105) = *(a1 + 105);
  v15 = *(a1 + 112);

  *(a2 + 112) = v15;
  v18 = type metadata accessor for IntervalBlockClientPayload();
  v16 = v18[13];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2 + v16, a1 + v16);
  v19 = v18[14];
  v21 = sub_1D208C1EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if ((v23)(a1 + v19, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v19), (a1 + v19), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))();
    (*(v22 + 56))(a2 + v19, 0, 1, v21);
  }

  __dst = (a2 + v18[15]);
  __src = (a1 + v18[15]);
  if (v23())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))(__dst, __src, v21);
    (*(v22 + 56))(__dst, 0, 1, v21);
  }

  v7 = (a2 + v18[16]);
  v8 = (a1 + v18[16]);
  if (v23())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))(v7, v8, v21);
    (*(v22 + 56))(v7, 0, 1, v21);
  }

  return a2;
}

char *sub_1D20075F8(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 7);

  v5 = *(a1 + 14);

  v11 = type metadata accessor for IntervalBlockClientPayload();
  v10 = v11[13];
  v6 = sub_1D208C21C();
  (*(*(v6 - 8) + 8))(&a1[v10]);
  v12 = v11[14];
  v14 = sub_1D208C1EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!(v16)(&a1[v12], 1))
  {
    (*(v15 + 8))(&a1[v12], v14);
  }

  v9 = &a1[v11[15]];
  if (!v16())
  {
    (*(v15 + 8))(v9, v14);
  }

  v8 = &a1[v11[16]];
  if (!v16())
  {
    (*(v15 + 8))(v8, v14);
  }

  return a1;
}

id static LoadDailyDigest.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for LoadDailyDigest();
  return sub_1D1FCF514();
}

uint64_t sub_1D20078B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF8C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 homeIdentifier];
  sub_1D208BF4C();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D20079D4(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF8C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BF3C();
  [v8 setHomeIdentifier_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D2007B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF8C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 siteIdentifier];
  sub_1D208BF4C();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D2007C48(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF8C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BF3C();
  [v8 setSiteIdentifier_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D2007D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 startDate];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D2007EBC(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setStartDate_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D200800C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 endDate];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D2008130(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setEndDate_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D2008280@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10 = [v9 digestConsumptionData];
  if (v10)
  {
    v4 = sub_1D208BD1C();
    v5 = v2;
    MEMORY[0x1E69E5920](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v7;
  return MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1D2008364(uint64_t *a1, void *a2)
{
  sub_1D20086C8(a1, v9);
  v6 = v9[0];
  v8 = v9[1];
  v7 = *a2;
  MEMORY[0x1E69E5928](*a2);
  if ((v8 & 0xF000000000000000) == 0xF000000000000000)
  {
    v4 = 0;
  }

  else
  {
    v3 = sub_1D208BCFC();
    sub_1D1FD0094(v6, v8);
    v4 = v3;
  }

  [v7 setDigestConsumptionData_];
  MEMORY[0x1E69E5920](v4);
  return MEMORY[0x1E69E5920](v7);
}

uint64_t sub_1D2008468@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10 = [v9 digestProductionData];
  if (v10)
  {
    v4 = sub_1D208BD1C();
    v5 = v2;
    MEMORY[0x1E69E5920](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v7;
  return MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1D200854C(uint64_t *a1, void *a2)
{
  sub_1D20086C8(a1, v9);
  v6 = v9[0];
  v8 = v9[1];
  v7 = *a2;
  MEMORY[0x1E69E5928](*a2);
  if ((v8 & 0xF000000000000000) == 0xF000000000000000)
  {
    v4 = 0;
  }

  else
  {
    v3 = sub_1D208BCFC();
    sub_1D1FD0094(v6, v8);
    v4 = v3;
  }

  [v7 setDigestProductionData_];
  MEMORY[0x1E69E5920](v4);
  return MEMORY[0x1E69E5920](v7);
}

uint64_t sub_1D2008650@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  type metadata accessor for LoadDailyDigest();
  result = sub_1D208C9FC();
  *a1 = result;
  return result;
}

uint64_t sub_1D20086C8(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    sub_1D1FD0018(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

id LoadSessionBlock.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id LoadSessionBlock.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for LoadSessionBlock();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id LoadSessionBlock.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadSessionBlock();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D20089B4()
{
  if (qword_1EC6C23F0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C23F8;
}

void *static MockDaemonOptions.mockEnabled.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D20089B4();
  *a1 = *result;
  return result;
}

void *sub_1D2008A70()
{
  if (qword_1EC6C2400 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2408;
}

void *static MockDaemonOptions.mockActivityHistoryUploadAndDownload.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008A70();
  *a1 = *result;
  return result;
}

void *sub_1D2008B2C()
{
  if (qword_1EC6C2410 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2418;
}

void *static MockDaemonOptions.mockForceProcessAllRawEvents.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008B2C();
  *a1 = *result;
  return result;
}

void *sub_1D2008BE8()
{
  if (qword_1EC6C2420 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2428;
}

void *static MockDaemonOptions.mockActivityHistoryDeletionError.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008BE8();
  *a1 = *result;
  return result;
}

void *sub_1D2008CA4()
{
  if (qword_1EC6C2430 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2438;
}

void *static MockDaemonOptions.mockHomeManagerSyncStateError.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008CA4();
  *a1 = *result;
  return result;
}

void *sub_1D2008D60()
{
  if (qword_1EC6C2440 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2448;
}

void *static MockDaemonOptions.mockHomeManagerRefreshTimeoutError.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008D60();
  *a1 = *result;
  return result;
}

void *sub_1D2008E1C()
{
  if (qword_1EC6C2450 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2458;
}

void *static MockDaemonOptions.mockActivityHistoryOldestDigestStartDateNil.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008E1C();
  *a1 = *result;
  return result;
}

void *sub_1D2008ED8()
{
  if (qword_1EC6C2460 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2468;
}

void *static MockDaemonOptions.mockActivityHistoryOldestDigestStartDateFutureDate.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008ED8();
  *a1 = *result;
  return result;
}

void *sub_1D2008F94()
{
  if (qword_1EC6C2470 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2478;
}

void *static MockDaemonOptions.mockActivityHistoryOldestDigestStartDatePastDate.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2008F94();
  *a1 = *result;
  return result;
}

void *sub_1D2009050()
{
  if (qword_1EC6C2480 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2488;
}

void *static MockDaemonOptions.mockActivityHistoryOldestDigestStartDateOwnerVsShared.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2009050();
  *a1 = *result;
  return result;
}

void *sub_1D200910C()
{
  if (qword_1EC6C2490 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C2498;
}

void *static MockDaemonOptions.mockDisableCleanupTask.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D200910C();
  *a1 = *result;
  return result;
}

void *sub_1D20091C8()
{
  if (qword_1EC6C24A0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C24A8;
}

void *static MockDaemonOptions.mockActivityHistoryOldestEventStartDateNil.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D20091C8();
  *a1 = *result;
  return result;
}

void *sub_1D2009284()
{
  if (qword_1EC6C24B0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C24B8;
}

void *static MockDaemonOptions.mockActivityHistoryOldestEventStartDateFutureDate.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2009284();
  *a1 = *result;
  return result;
}

void *sub_1D2009340()
{
  if (qword_1EC6C24C0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C24C8;
}

void *static MockDaemonOptions.mockActivityHistoryOldestEventStartDatePastDate.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2009340();
  *a1 = *result;
  return result;
}

void *sub_1D20093FC()
{
  if (qword_1EC6C24D0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C24D8;
}

void *static MockDaemonOptions.mockActivityHistoryOldestEventStartDateOwnerVsShared.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D20093FC();
  *a1 = *result;
  return result;
}

void *sub_1D20094B8()
{
  if (qword_1EC6C24E0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C24E8;
}

void *static MockDaemonOptions.mockNoHomes.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D20094B8();
  *a1 = *result;
  return result;
}

void *sub_1D2009574()
{
  if (qword_1EC6C24F0 != -1)
  {
    swift_once();
  }

  return &unk_1EC6C24F8;
}

void *static MockDaemonOptions.mockForceProcessAllRawEventsCLI.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D2009574();
  *a1 = *result;
  return result;
}

unint64_t sub_1D2009698()
{
  v2 = qword_1EC6BED38;
  if (!qword_1EC6BED38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2009854()
{
  sub_1D2009898();
  sub_1D2009914();
  return sub_1D208CCBC();
}

unint64_t sub_1D2009898()
{
  v2 = qword_1EC6BED40;
  if (!qword_1EC6BED40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2009914()
{
  v2 = qword_1EC6BED48;
  if (!qword_1EC6BED48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2009B4C()
{
  sub_1D2009898();
  sub_1D2009914();
  return sub_1D208CCAC();
}

uint64_t sub_1D2009B90()
{
  sub_1D2009898();
  sub_1D2009914();
  return sub_1D208CC8C();
}

uint64_t sub_1D2009BD4()
{
  sub_1D2009898();
  sub_1D2009914();
  return sub_1D208CC9C();
}

EnergyKitFoundation::MockDaemonOptions sub_1D2009CF4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MockDaemonOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D2009D3C@<X0>(uint64_t *a1@<X8>)
{
  result = MockDaemonOptions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D2009DF4()
{
  v2 = qword_1EC6BED50;
  if (!qword_1EC6BED50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2009EB8()
{
  v2 = qword_1EC6BED58;
  if (!qword_1EC6BED58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2009F4C()
{
  v2 = qword_1EC6BED60;
  if (!qword_1EC6BED60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MockDaemonOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MockDaemonOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t XPCValueContainer<>.init(_coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v5 = v4;
  v6 = v34;
  v35 = v5;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  v36 = 0;
  v52 = 0;
  v57 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = 0;
  v38 = sub_1D208C8FC();
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](0);
  v41 = &v16 - v39;
  v42 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v16 - v44;
  v46 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v16 - v46;
  v56 = &v16 - v46;
  v54 = v6;
  v48 = sub_1D200A888();
  v49 = sub_1D208C64C();
  v50 = v10;
  v51 = sub_1D208C89C();

  if (!v51)
  {
    goto LABEL_14;
  }

  v30 = v51;
  v11 = v36;
  v27 = v51;
  v53 = v51;
  sub_1D1FEA79C();
  MEMORY[0x1E69E5928](v27);
  v12 = sub_1D208BD1C();
  v28 = sub_1D1FEA5E8(v12, v13);
  v29 = v11;
  if (v11)
  {
    v16 = v29;
    MEMORY[0x1E69E5920](v27);

    v26 = 0;
  }

  else
  {
    v25 = v28;
    MEMORY[0x1E69E5920](v27);
    v26 = v25;
  }

  v24 = v26;
  if (!v26)
  {
    MEMORY[0x1E69E5920](v27);
LABEL_14:
    MEMORY[0x1E69E5920](v34);
    return 0;
  }

  v23 = v24;
  v19 = v24;
  v52 = v24;
  v22 = 1;
  v20 = sub_1D208C64C();
  v21 = v14;
  sub_1D208C87C();

  if ((*(v42 + 48))(v41, v22, AssociatedTypeWitness) == 1)
  {
    sub_1D200A920(v41, AssociatedTypeWitness);
    sub_1D200A8EC(v19);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v27);
    goto LABEL_14;
  }

  (*(v42 + 32))(v47, v41, AssociatedTypeWitness);
  (*(v42 + 16))(v45, v47, AssociatedTypeWitness);
  v18 = (*(v32 + 24))(v45, v31);
  if (!v18)
  {
    swift_unknownObjectRelease();
    (*(v42 + 8))(v47, AssociatedTypeWitness);
    sub_1D200A8EC(v19);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v27);
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  v55 = v18;
  (*(v42 + 8))(v47, AssociatedTypeWitness);
  sub_1D200A8EC(v19);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v34);
  swift_unknownObjectRelease();
  return v18;
}

unint64_t sub_1D200A888()
{
  v2 = qword_1EE0829F0;
  if (!qword_1EE0829F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1D200A920(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t XPCValueContainer<>.encode(_with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  v24 = a2;
  v23 = a3;
  v28 = a5;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v17 = "EnergyKitFoundation/XPCValueContainer.swift";
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v36 = a2;
  v19 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = AssociatedTypeWitness - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v29 = v10 - v22;
  v35 = v6;
  v34 = v5;
  sub_1D200AD20();
  v26 = 1;
  v25 = sub_1D200AD84(1);
  v33 = v25;
  (*(v23 + 16))(v24);
  v30 = sub_1D208C64C();
  v31 = v7;
  sub_1D208C86C();
  v32 = 0;

  (*(v20 + 8))(v29, AssociatedTypeWitness);
  [v25 finishEncoding];
  v14 = [v25 encodedData];
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    sub_1D208CA2C();
    __break(1u);
  }

  v12 = v13;
  sub_1D208C64C();
  v10[2] = v8;
  v11 = sub_1D208C5BC();

  [v18 encodeObject:v12 forKey:v11];
  MEMORY[0x1E69E5920](v11);
  swift_unknownObjectRelease();
  return MEMORY[0x1E69E5920](v25);
}

unint64_t sub_1D200AD20()
{
  v2 = qword_1EC6BED70;
  if (!qword_1EC6BED70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BED70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t EnergySitePayload.siteName.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  swift_endAccess();

  return v3;
}

uint64_t type metadata accessor for EnergySitePayload()
{
  v1 = qword_1EE082FF0;
  if (!qword_1EE082FF0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1D200AF48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.siteName.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.siteName.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  swift_beginAccess();
  v2 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  swift_endAccess();
}

uint64_t sub_1D200B0E8()
{
  v7 = type metadata accessor for EnergySitePayload();
  v8 = *(v7 + 20);
  type metadata accessor for EnergySitePayload._StorageClass();
  if ((sub_1D208CADC() & 1) == 0)
  {
    v5 = *(v6 + *(v7 + 20));

    v0 = sub_1D2018818(v5);
    v1 = *(v7 + 20);
    v2 = *(v6 + v1);
    *(v6 + v1) = v0;
  }

  v4 = *(v6 + *(v7 + 20));

  return v4;
}

uint64_t type metadata accessor for EnergySitePayload._StorageClass()
{
  v1 = qword_1EE083080;
  if (!qword_1EE083080)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t (*EnergySitePayload.siteName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.siteName.getter();
  a1[1] = v2;
  return sub_1D200B29C;
}

uint64_t sub_1D200B29C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.siteName.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.siteName.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

double EnergySitePayload.latitude.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 32);
  swift_endAccess();

  return v3;
}

uint64_t sub_1D200B398@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D2028364(v2, &v6 - v7);
  v3 = EnergySitePayload.latitude.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D2028400(v4);
}

uint64_t EnergySitePayload.latitude.setter(double a1)
{
  v3 = sub_1D200B0E8();
  swift_beginAccess();
  *(v3 + 32) = a1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.latitude.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = EnergySitePayload.latitude.getter();
  return sub_1D200B534;
}

double EnergySitePayload.longitude.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 40);
  swift_endAccess();

  return v3;
}

uint64_t sub_1D200B60C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D2028364(v2, &v6 - v7);
  v3 = EnergySitePayload.longitude.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D2028400(v4);
}

uint64_t EnergySitePayload.longitude.setter(double a1)
{
  v3 = sub_1D200B0E8();
  swift_beginAccess();
  *(v3 + 40) = a1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.longitude.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = EnergySitePayload.longitude.getter();
  return sub_1D200B7A8;
}

uint64_t EnergySitePayload.utilityID.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  swift_endAccess();

  return v3;
}

uint64_t sub_1D200B890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.utilityID.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.utilityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  swift_beginAccess();
  v2 = *(v5 + 56);
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.utilityID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.utilityID.getter();
  a1[1] = v2;
  return sub_1D200BA94;
}

uint64_t sub_1D200BA94(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.utilityID.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.utilityID.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.subscriptionID.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  swift_endAccess();

  return v3;
}

uint64_t sub_1D200BBA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.subscriptionID.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.subscriptionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  swift_beginAccess();
  v2 = *(v5 + 72);
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.subscriptionID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.subscriptionID.getter();
  a1[1] = v2;
  return sub_1D200BDA4;
}

uint64_t sub_1D200BDA4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.subscriptionID.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.subscriptionID.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.accessToken.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  swift_endAccess();

  return v3;
}

uint64_t sub_1D200BEB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.accessToken.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.accessToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  swift_beginAccess();
  v2 = *(v5 + 88);
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;

  swift_endAccess();
}