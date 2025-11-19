uint64_t WorkoutRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutRecord.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutRecord() + 20);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutRecord.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutRecord() + 24);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutRecord.locationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutRecord();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WorkoutRecord.catalogWorkoutIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutRecord() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutRecord.fitnessPlusCatalogWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutRecord() + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);

  return sub_1B4A69FE8(v4, v5);
}

double WorkoutRecord.duration.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutRecord();
  v3 = v0 + *(v2 + 24);
  sub_1B4D176DC();
  v5 = v4;
  v6 = v1 + *(v2 + 20);
  sub_1B4D176DC();
  return v5 - v7;
}

BOOL _s19FitnessIntelligence13WorkoutRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutRecord();
  v5 = v4[5];
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((sub_1B4D1774C() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || (sub_1B4976C84(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v7 = v4[9];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11 || (*v8 != *v10 || v9 != v11) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = v4[10];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = *(a1 + v12 + 16);
  v16 = *(a1 + v12 + 24);
  v17 = a2 + v12;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  if (!v14)
  {
    sub_1B4A69FE8(v13, 0);
    if (!v19)
    {
      sub_1B4A69FE8(v18, 0);
      sub_1B4A6A02C(v13, 0);
      return 1;
    }

    sub_1B4A69FE8(v18, v19);
    goto LABEL_26;
  }

  if (!v19)
  {
    sub_1B4A69FE8(v13, v14);
    sub_1B4A69FE8(v18, 0);
    sub_1B4A69FE8(v13, v14);

LABEL_26:
    sub_1B4A6A02C(v13, v14);
    v27 = v18;
    v28 = v19;
    goto LABEL_27;
  }

  if ((v13 != v18 || v14 != v19) && (v22 = *v17, v23 = *(v17 + 8), (sub_1B4D18DCC() & 1) == 0) || (sub_1B4A0C158(v15, v20) & 1) == 0)
  {
    sub_1B4A69FE8(v13, v14);
    sub_1B4A69FE8(v18, v19);
    sub_1B4A69FE8(v13, v14);
    sub_1B4A6A02C(v18, v19);

    v27 = v13;
    v28 = v14;
LABEL_27:
    sub_1B4A6A02C(v27, v28);
    return 0;
  }

  v30 = FitnessPlusModalityKind.rawValue.getter();
  v25 = v24;
  if (v30 == FitnessPlusModalityKind.rawValue.getter() && v25 == v26)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_1B4D18DCC();
  }

  sub_1B4A69FE8(v13, v14);
  sub_1B4A69FE8(v18, v19);
  sub_1B4A69FE8(v13, v14);

  sub_1B4A6A02C(v18, v19);

  sub_1B4A6A02C(v13, v14);
  return (v31 & 1) != 0;
}

void sub_1B4C470D0()
{
  sub_1B4D177CC();
  if (v0 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKWorkoutActivityType(319);
      if (v2 <= 0x3F)
      {
        sub_1B49F03FC(319, &qword_1EDC3CEC0);
        if (v3 <= 0x3F)
        {
          sub_1B49F03FC(319, &qword_1EB8AD240);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t LocationCoordinate.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1B4D176CC();
  v5 = a1[1];
  v6 = type metadata accessor for LocationCoordinate();
  *(a2 + v6[5]) = v5;
  v7 = a1[3];
  *(a2 + v6[6]) = a1[2];
  sub_1B499221C();
  v8 = [swift_getObjCClassFromMetadata() baseUnit];
  v9 = a2 + v6[7];
  sub_1B4D1741C();
  return sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

uint64_t LocationCoordinate.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  return sub_1B4D17DAC();
}

int *LocationContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationCoordinate();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C47D98(a1 + v16[5], v6);
  v17 = *(v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v18 = &v11[*(v7 + 32)];
    sub_1B4D17BBC();
    if (v17(v6, 1, v7) != 1)
    {
      sub_1B4C47E08(v6);
    }
  }

  else
  {
    sub_1B4C47ED0(v6, v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  v19 = *v11;
  sub_1B4D176CC();
  v20 = *(v11 + 2);
  *&v15[v12[5]] = *(v11 + 1);
  *&v15[v12[6]] = v20;
  v21 = *(v11 + 3);
  sub_1B499221C();
  v22 = [swift_getObjCClassFromMetadata() baseUnit];
  v23 = &v15[v12[7]];
  sub_1B4D1741C();
  sub_1B4C47E70(v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v24 = (a1 + v16[6]);
  v26 = *v24;
  v25 = v24[1];
  if (v25)
  {
    v45 = *v24;
    v46 = v25;

    v26 = sub_1B4D1828C();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = (a1 + v16[8]);
  v31 = *v29;
  v30 = v29[1];
  if (v30)
  {
    v45 = *v29;
    v46 = v30;

    v31 = sub_1B4D1828C();
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = (a1 + v16[7]);
  v36 = *v34;
  v35 = v34[1];
  if (v35)
  {
    v45 = *v34;
    v46 = v35;

    v36 = sub_1B4D1828C();
    v38 = v37;
    sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  else
  {
    sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    v38 = 0;
  }

  v39 = v44;
  sub_1B4C47ED0(v15, v44, type metadata accessor for LocationCoordinate);
  result = type metadata accessor for LocationContext();
  v41 = (v39 + result[5]);
  *v41 = v26;
  v41[1] = v28;
  v42 = (v39 + result[6]);
  *v42 = v31;
  v42[1] = v33;
  v43 = (v39 + result[7]);
  *v43 = v36;
  v43[1] = v38;
  return result;
}

uint64_t LocationContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C48354(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C477C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = a2;
  sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17DAC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v10 = v9[5];
  sub_1B4C47E08(a1 + v10);
  sub_1B4C47ED0(v8, a1 + v10, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  (*(v5 + 56))(a1 + v10, 0, 1, v4);
  result = type metadata accessor for LocationContext();
  v12 = result;
  v13 = (a2 + *(result + 20));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v16 = (a1 + v9[6]);
    v17 = v16[1];

    *v16 = v15;
    v16[1] = v14;
  }

  v18 = (a2 + *(v12 + 24));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = (a1 + v9[8]);
    v22 = v21[1];

    *v21 = v20;
    v21[1] = v19;
  }

  v23 = (a2 + *(v12 + 28));
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v26 = (a1 + v9[7]);
    v27 = v26[1];

    *v26 = v25;
    v26[1] = v24;
  }

  return result;
}

uint64_t sub_1B4C479F8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4C48354(&qword_1EB8AD248, type metadata accessor for LocationContext);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4C48354(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    v1 = sub_1B4D17D6C();
    sub_1B4C47E70(v7, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  return v1;
}

uint64_t sub_1B4C47B78()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C48354(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C47C38(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  sub_1B4D176DC();
  *a1 = v9;
  v10 = type metadata accessor for LocationCoordinate();
  a1[1] = *(a2 + v10[5]);
  a1[2] = *(a2 + v10[6]);
  v11 = v10[7];
  sub_1B499221C();
  v12 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v14 = v13;
  result = (*(v5 + 8))(v8, v4);
  a1[3] = v14;
  return result;
}

uint64_t sub_1B4C47D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C47E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C47E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C47ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C47FE4(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4C48354(&qword_1EB8AA6E8, type metadata accessor for LocationCoordinate);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    v1 = sub_1B4D17D6C();
    sub_1B4C47E70(v7, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  return v1;
}

uint64_t sub_1B4C481F4()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C4829C@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_1B4D176CC();
  v7 = a1[2];
  v8 = a2[6];
  *(a3 + a2[5]) = a1[1];
  *(a3 + v8) = v7;
  v9 = a1[3];
  sub_1B499221C();
  v10 = [swift_getObjCClassFromMetadata() baseUnit];
  v11 = a3 + a2[7];
  sub_1B4D1741C();
  return sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

uint64_t sub_1B4C48354(unint64_t *a1, void (*a2)(uint64_t))
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

unsigned int *FIWorkoutActivityType.init(_:)(unsigned int *result)
{
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = *(v2 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD250, &unk_1B4D40410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    v6 = *MEMORY[0x1E699C9A0];
    *(inited + 32) = sub_1B4D1818C();
    *(inited + 40) = v7;
    v8 = *(v2 + 8);
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v8;
    sub_1B4C945C0(inited);
    swift_setDeallocating();
    sub_1B4C48620(inited + 32);
    v9 = sub_1B4D17FAC();

    v10 = [v3 initWithActivityTypeIdentifier:v1 isIndoor:v4 metadata:v9];

    sub_1B4C48688(v2);
    return v10;
  }

  return result;
}

uint64_t FIWorkoutActivityType.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  sub_1B4C486E4();
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C48584(uint64_t a1, id a2)
{
  result = [a2 identifier];
  if (result >> 31)
  {
    __break(1u);
    goto LABEL_6;
  }

  *a1 = result;
  *(a1 + 4) = [a2 isIndoor];
  result = [a2 location];
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result <= 0x7FFFFFFF)
  {
    *(a1 + 8) = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B4C48620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB120, &qword_1B4D32FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C48688(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4C486E4()
{
  result = qword_1EB8AB158;
  if (!qword_1EB8AB158)
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB158);
  }

  return result;
}

void sub_1B4C48788(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v5 = objc_allocWithZone(MEMORY[0x1E696B038]);
  v6 = sub_1B4D1817C();
  v7 = [v5 initWithSymbol:v6 converter:v4];

  *a3 = v7;
}

void static DeviceInferenceAvailabilityStore.readAvailability(device:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1B4D1817C();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = v6;
    sub_1B4D1896C();

    *&v15[0] = 0xD00000000000001CLL;
    *(&v15[0] + 1) = 0x80000001B4D63E60;
    if (v3)
    {
      v8 = 0x6863746177;
    }

    else
    {
      v8 = 0x656E6F6870;
    }

    MEMORY[0x1B8C7C620](v8, 0xE500000000000000);

    v9 = sub_1B4D1817C();

    v10 = [v7 dataForKey_];

    if (v10)
    {
      v11 = sub_1B4D176BC();
      v13 = v12;

      sub_1B498FC0C(v11, v13);
      sub_1B4B2A134(v11, v13, v15);

      sub_1B49DDD2C(v11, v13);
      v14 = v15[1];
      *a2 = v15[0];
      *(a2 + 16) = v14;
      return;
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

uint64_t static DeviceInferenceAvailabilityStore.writeAvailability(_:device:)(__int128 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a1[1];
  v31 = *a1;
  v32 = v10;
  v11 = sub_1B4C0B860();
  result = (*(v11 + 32))(&type metadata for DeviceInferenceAvailability, v11);
  if (!v2)
  {
    sub_1B4C491D4();
    v13 = sub_1B4D17D6C();
    v15 = v14;
    sub_1B4C4922C(v8);
    v33 = 0;
    v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v17 = sub_1B4D1817C();
    v18 = [v16 initWithSuiteName_];

    v30 = v13;
    if (v18)
    {
      v19 = v18;
      v20 = 0x656E6F6870;
      v21 = sub_1B4D176AC();
      *&v31 = 0;
      *(&v31 + 1) = 0xE000000000000000;
      sub_1B4D1896C();

      *&v31 = 0xD00000000000001CLL;
      *(&v31 + 1) = 0x80000001B4D63E60;
      if (v9)
      {
        v20 = 0x6863746177;
      }

      MEMORY[0x1B8C7C620](v20, 0xE500000000000000);

      v22 = sub_1B4D1817C();

      [v19 setValue:v21 forKey:v22];
    }

    else if (v9)
    {
      v20 = 0x6863746177;
    }

    else
    {
      v20 = 0x656E6F6870;
    }

    v23 = sub_1B4D1817C();
    CFPreferencesAppSynchronize(v23);

    v24 = [objc_allocWithZone(NPSManagerBridge) init];
    v25 = sub_1B4D1817C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_1B4D1896C();

    *&v31 = 0xD00000000000001CLL;
    *(&v31 + 1) = 0x80000001B4D63E60;
    MEMORY[0x1B8C7C620](v20, 0xE500000000000000);

    v27 = *(&v31 + 1);
    *(inited + 32) = v31;
    *(inited + 40) = v27;
    sub_1B49B554C(inited);
    swift_setDeallocating();
    sub_1B497CBA8(inited + 32);
    v28 = sub_1B4D185FC();

    [v24 synchronizeUserDefaultsDomain:v25 keys:v28];

    return sub_1B49DDD2C(v30, v15);
  }

  return result;
}

void static DeviceInferenceAvailabilityStore.deleteAvailability(device:)(unsigned __int8 *a1)
{
  v1 = 0x6863746177;
  v2 = *a1;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = sub_1B4D1817C();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = v5;
    sub_1B4D1896C();

    if (!v2)
    {
      v1 = 0x656E6F6870;
    }

    MEMORY[0x1B8C7C620](v1, 0xE500000000000000);

    v7 = sub_1B4D1817C();

    [v6 removeObjectForKey_];
  }

  else if (!v2)
  {
    v1 = 0x656E6F6870;
  }

  v8 = sub_1B4D1817C();
  CFPreferencesAppSynchronize(v8);

  v9 = [objc_allocWithZone(NPSManagerBridge) init];
  v10 = sub_1B4D1817C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  sub_1B4D1896C();

  MEMORY[0x1B8C7C620](v1, 0xE500000000000000);

  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000001B4D63E60;
  sub_1B49B554C(inited);
  swift_setDeallocating();
  sub_1B497CBA8(inited + 32);
  v12 = sub_1B4D185FC();

  [v9 synchronizeUserDefaultsDomain:v10 keys:v12];
}

unint64_t sub_1B4C491D4()
{
  result = qword_1EDC3B208[0];
  if (!qword_1EDC3B208[0])
  {
    type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3B208);
  }

  return result;
}

uint64_t sub_1B4C4922C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4C49298(void *a1)
{
  a1[1] = sub_1B4C492D0();
  a1[2] = sub_1B4B72150();
  result = sub_1B4B71F14();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4C492D0()
{
  result = qword_1EB8AD260;
  if (!qword_1EB8AD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD260);
  }

  return result;
}

uint64_t sub_1B4C49324()
{
  v6 = *v0;
  v7 = *(v0 + 1);
  v1 = sub_1B4D173DC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B4B71F14();
  v4 = sub_1B4D173BC();

  return v4;
}

uint64_t sub_1B4C493C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D173AC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4B72150();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    *(a3 + 8) = v12;
  }

  return result;
}

id sub_1B4C49488()
{
  result = [type metadata accessor for UnitCount() baseUnit];
  qword_1EDC36E78 = result;
  return result;
}

id static UnitCount.count.getter()
{
  if (qword_1EDC36E70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC36E78;

  return v1;
}

id sub_1B4C495CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v2 = objc_allocWithZone(v0);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSymbol:v3 converter:v1];

  return v4;
}

id UnitCount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnitCount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PropertyRecordCheckpoint.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];

  v6 = sub_1B4D18B1C();

  if (v6 >= 3)
  {
    sub_1B4A2A970();
    swift_allocError();
    swift_willThrow();
    return sub_1B4C4984C(a1);
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    result = sub_1B4C4984C(a1);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t PropertyRecordCheckpoint.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  sub_1B4C49BEC(qword_1EDC3B590);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C4984C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *PropertyRecordCheckpoint.init(startCacheIndex:endCacheIndex:snapshotPropertiesType:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  return result;
}

uint64_t sub_1B4C498EC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = 0x74756F6B726F77;
    }

    else
    {
      v5 = 0x507373656E746966;
    }

    if (a4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB0000000073756CLL;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x73676E6972;
  }

  v7 = a1[3];

  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1B4C4999C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  sub_1B4C49BEC(qword_1EDC3B590);
  return sub_1B4D17DAC();
}

uint64_t _s19FitnessIntelligence24PropertyRecordCheckpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = 0xE700000000000000;
    v6 = 0x74756F6B726F77;
    if (v4 != 1)
    {
      v6 = 0x507373656E746966;
      v5 = 0xEB0000000073756CLL;
    }

    if (*(a1 + 16))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x73676E6972;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = 0xE700000000000000;
    v10 = 0x74756F6B726F77;
    if (*(a2 + 16) != 1)
    {
      v10 = 0x507373656E746966;
      v9 = 0xEB0000000073756CLL;
    }

    if (*(a2 + 16))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x73676E6972;
    }

    if (*(a2 + 16))
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    if (v7 == v11 && v8 == v12)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1B4D18DCC();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1B4C49BEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PropertyRecordCheckpoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyRecordCheckpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1B4C49CDC()
{
  result = qword_1EB8AD268;
  if (!qword_1EB8AD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD268);
  }

  return result;
}

uint64_t sub_1B4C49D30(uint64_t a1)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  v3 = 0xE700000000000000;
  v4 = 0x74756F6B726F77;
  if (v2 != 1)
  {
    v4 = 0x507373656E746966;
    v3 = 0xEB0000000073756CLL;
  }

  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6972;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v8 = *(a1 + 24);

  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

FitnessIntelligence::InferenceFeedback::Sentiment_optional __swiftcall InferenceFeedback.Sentiment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InferenceFeedback.init(record:sentiment:userDescription:utteranceResult:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  sub_1B4C49EC4(a1, a6);
  v11 = type metadata accessor for InferenceFeedback();
  *(a6 + v11[5]) = v10;
  v12 = (a6 + v11[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = a6 + v11[7];

  return sub_1B498C368(a5, v13);
}

uint64_t sub_1B4C49EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InferenceFeedback()
{
  result = qword_1EB8AD288;
  if (!qword_1EB8AD288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceFeedback.Sentiment.id.getter()
{
  v1 = 0x657669746167656ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t sub_1B4C49FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x657669746167656ELL;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6576697469736F70;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x657669746167656ELL;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697469736F70;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4C4A0D0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4A170()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C4A1FC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4A2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InferenceFeedback.sentiment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InferenceFeedback();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t InferenceFeedback.userDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for InferenceFeedback() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InferenceFeedback.utteranceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceFeedback() + 28);

  return sub_1B4C4A3DC(v3, a1);
}

uint64_t sub_1B4C4A3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4C4A450()
{
  result = qword_1EB8AD270;
  if (!qword_1EB8AD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD270);
  }

  return result;
}

unint64_t sub_1B4C4A4A8()
{
  result = qword_1EB8AD278;
  if (!qword_1EB8AD278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD280, &qword_1B4D406E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD278);
  }

  return result;
}

void sub_1B4C4A534()
{
  type metadata accessor for InferenceRecord();
  if (v0 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v1 <= 0x3F)
    {
      sub_1B49F03A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t RingsBestMetricPropertyValue.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16[1] = *a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD298, &unk_1B4D40780);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v12 = sub_1B4C4A72C();
  v13 = sub_1B498D2F0(sub_1B4C4A6F4, v15, v10, a2, v11, v12, MEMORY[0x1E69E7288], v16);
  sub_1B4C4A790(a1);

  if (!v6)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t sub_1B4C4A6F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4C4A7EC(a1, v3[2], v3[3], v3[4], v3[5], a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

unint64_t sub_1B4C4A72C()
{
  result = qword_1EB8AD2A0;
  if (!qword_1EB8AD2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD298, &unk_1B4D40780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2A0);
  }

  return result;
}

uint64_t sub_1B4C4A790(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C4A7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a3;
  v32 = a5;
  v28[1] = a6;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v30 = *(AssociatedTypeWitness - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  v21 = v34;
  result = sub_1B4C4B0F4(a1, v33);
  if (!v21)
  {
    v23 = v29;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v24 = swift_dynamicCast();
    v25 = v30;
    v26 = *(v30 + 56);
    if (v24)
    {
      v26(v13, 0, 1, AssociatedTypeWitness);
      (*(v25 + 32))(v20, v13, AssociatedTypeWitness);
      (*(v25 + 16))(v17, v20, AssociatedTypeWitness);
      (*(v8 + 40))(v17, a2, v8);
      return (*(v25 + 8))(v20, AssociatedTypeWitness);
    }

    else
    {
      v26(v13, 1, 1, AssociatedTypeWitness);
      (*(v23 + 8))(v13, v10);
      sub_1B4C4B318();
      swift_allocError();
      *v27 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t RingsBestMetricPropertyValue.protobuf()(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  sub_1B4C4B2D0(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C4ABA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[2] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v8 = sub_1B4D184BC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(sub_1B4C4B288, v15, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v16);

  if (!v6)
  {
    v14 = *a1;

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B4C4AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  sub_1B4C4B2D0(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
  result = sub_1B4D17DAC();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1B4C4AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v14 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  result = (*(v12 + 32))(a3, v12, v18);
  if (!v5)
  {
    v22 = v28;
    v23 = v29;
    (*(v29 + 16))(v16, v20, AssociatedTypeWitness);
    if (swift_dynamicCast())
    {
      v24 = *(v23 + 8);
      v24(v20, AssociatedTypeWitness);
      sub_1B4C4B36C(v22);
      sub_1B4C4B3D4(v11, v22);
      v25 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      (*(*(v25 - 8) + 56))(v22, 0, 1, v25);
    }

    else
    {
      sub_1B4C4B318();
      swift_allocError();
      *v26 = 0;
      swift_willThrow();
      v24 = *(v23 + 8);
      v24(v20, AssociatedTypeWitness);
    }

    return (v24)(v16, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B4C4B0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1B4C4B438(a1, &v15 - v10);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_1B4C4B3D4(v11, v7);
    *(a2 + 24) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_1B4C4B3D4(v7, boxed_opaque_existential_1);
  }

  return result;
}

uint64_t sub_1B4C4B2D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4C4B318()
{
  result = qword_1EB8AD2A8;
  if (!qword_1EB8AD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2A8);
  }

  return result;
}

uint64_t sub_1B4C4B36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C4B3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C4B438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4C4B4BC()
{
  result = qword_1EB8AD2B0;
  if (!qword_1EB8AD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2B0);
  }

  return result;
}

uint64_t RingStateFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C4B590@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t static RingStateFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D0, &qword_1B4D2F400);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4D1A800;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 80))(v11, v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 96))(v13, v14);
  sub_1B4D1770C();
  (*(v3 + 8))(v6, v2);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v15 = sub_1B4C96394(v10);
  swift_setDeallocating();
  sub_1B4975024(v10 + v9, &qword_1EB8AA5D8, &qword_1B4D2F408);
  swift_deallocClassInstance();
  return v15;
}

uint64_t static RingStateFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C016C;

  return sub_1B4C4CFBC(a1);
}

uint64_t sub_1B4C4B8D8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v56 - v14;
  v65 = type metadata accessor for HKActivitySummaryRepresentable();
  v15 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for RingProgressType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v56 - v30;
  LOBYTE(a1) = *a1;
  v66 = a2;
  sub_1B4C4D9B8(a2, v17, type metadata accessor for HKActivitySummaryRepresentable);
  v68 = a1;
  sub_1B4B05EF8(v17, &v68, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1B4975024(v21, &qword_1EB8AA5C0, &unk_1B4D39040);
    v32 = type metadata accessor for RingStateFact();
    return (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
  }

  else
  {
    sub_1B4C4DA9C(v21, v31, type metadata accessor for RingProgressType);
    sub_1B4C4D9B8(v31, v28, type metadata accessor for RingProgressType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
        v36 = v61;
        v37 = v57;
        (*(v61 + 32))(v57, &v28[*(v35 + 64)], v10);
        v38 = [objc_opt_self() minutes];
        v39 = v58;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v41 = v40;
        v42 = *(v36 + 8);
        v42(v39, v10);
        v42(v37, v10);
        v43 = v41 <= 30.0 && v41 >= 10.0;
        v42(&v28[*(v35 + 48)], v10);
        v42(v28, v10);
      }

      else
      {
        sub_1B4C4DA3C(v28, type metadata accessor for RingProgressType);
        v43 = 0;
      }

      v47 = v67;
    }

    else
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v45 = v62;
      v44 = v63;
      v46 = v59;
      (*(v62 + 32))(v59, &v28[*(v61 + 64)], v63);
      v47 = v67;
      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v48 = v60;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v50 = v49;
      v51 = *(v45 + 8);
      v51(v48, v44);
      v51(v46, v44);
      v43 = v50 <= 100.0 && v50 >= 20.0;
      v51(&v28[*(v61 + 48)], v44);
      v51(v28, v44);
    }

    v53 = v65;
    v52 = v66;
    v54 = v64;
    sub_1B4C4DA9C(v31, v64, type metadata accessor for RingProgressType);
    LOBYTE(v52) = *(v52 + *(v53 + 76));
    sub_1B4C4DA9C(v54, v47, type metadata accessor for RingProgressType);
    v55 = type metadata accessor for RingStateFact();
    *(v47 + *(v55 + 20)) = v52 & 1;
    *(v47 + *(v55 + 24)) = v43;
    return (*(*(v55 - 8) + 56))(v47, 0, 1, v55);
  }
}

unint64_t RingStateFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v14 = *(v13 - 8);
  v69 = v13;
  v70 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = type metadata accessor for RingProgressType();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RingStateFact();
  v71 = sub_1B4B0793C(*(v1 + *(v25 + 20)));
  v72 = v26;
  sub_1B4C4D9B8(v1, v24, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v68 = *(v39 + 48);
      v40 = v69;
      v41 = v70;
      (*(v70 + 32))(v20, &v24[*(v39 + 64)], v69);
      v42 = [objc_opt_self() minutes];
      sub_1B4D1745C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
      v43 = *(sub_1B4D18F8C() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1B4D1B2D0;
      sub_1B4D18F4C();
      sub_1B4D18F5C();
      sub_1B4D18F6C();
      sub_1B4D18F7C();
      v47 = sub_1B4BCA7BC(v46);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v48 = sub_1B4D15F5C(v17, v47);
      v50 = v49;

      v51 = *(v41 + 8);
      v51(v17, v40);
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1B4D1896C();

      v73 = 0x20657661682049;
      v74 = 0xE700000000000000;
      MEMORY[0x1B8C7C620](v48, v50);

      MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D63F00);
      MEMORY[0x1B8C7C620](v71, v72);

      MEMORY[0x1B8C7C620](0x2E7961646F7420, 0xE700000000000000);
      v34 = v73;
      v51(v20, v40);
      v51(&v24[v68], v40);
      v51(v24, v40);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v29 = v28[12];
      v67 = v28[20];
      v68 = v29;
      v30 = v28[24];
      v65 = v28[32];
      v66 = v30;
      v31 = v28[36];
      v32 = v28[44];
      v33 = v28[48];
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1B4D1896C();

      v73 = 0xD000000000000019;
      v74 = 0x80000001B4D63F20;
      MEMORY[0x1B8C7C620](v71, v72);

      MEMORY[0x1B8C7C620](0x2E7961646F7420, 0xE700000000000000);
      v34 = v73;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v36 = *(*(v35 - 8) + 8);
      v36(&v24[v33], v35);
      v36(&v24[v32], v35);
      v37 = v69;
      v38 = *(v70 + 8);
      v38(&v24[v31], v69);
      v38(&v24[v65], v37);
      sub_1B4975024(&v24[v66], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v24[v67], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v24[v68], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v24, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }

    else
    {

      sub_1B4C4DA3C(v24, type metadata accessor for RingProgressType);
      return 0;
    }
  }

  else
  {
    v52 = v68;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v70 = *(v53 + 48);
    (*(v3 + 32))(v12, &v24[*(v53 + 64)], v2);
    v54 = v3;
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    v55 = *(v52 + 16);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v56);
    v58 = v57;
    sub_1B4D1745C();
    v59 = sub_1B4D12160();
    v60 = sub_1B4D12A28();
    v62 = v61;

    v63 = *(v54 + 8);
    v63(v6, v2);
    v63(v9, v2);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1B4D1896C();

    v73 = 0x20657661682049;
    v74 = 0xE700000000000000;
    MEMORY[0x1B8C7C620](v60, v62);

    MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D63F00);
    MEMORY[0x1B8C7C620](v71, v72);

    MEMORY[0x1B8C7C620](0x2E7961646F7420, 0xE700000000000000);
    v34 = v73;
    v63(v12, v2);
    v63(&v24[v70], v2);
    v63(v24, v2);
  }

  return v34;
}

unint64_t sub_1B4C4C854(void *a1)
{
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D0, &qword_1B4D2F400);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4D1A800;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 80))(v11, v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 96))(v13, v14);
  sub_1B4D1770C();
  (*(v3 + 8))(v6, v2);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v15 = sub_1B4C96394(v10);
  swift_setDeallocating();
  sub_1B4975024(v10 + v9, &qword_1EB8AA5D8, &qword_1B4D2F408);
  swift_deallocClassInstance();
  return v15;
}

uint64_t sub_1B4C4CA88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C0344;

  return sub_1B4C4CFBC(a1);
}

uint64_t sub_1B4C4CB4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RingProgressType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C4D9B8(a2, v6, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v17 = *(v45 + 48);
      v18 = *(v45 + 64);
      v19 = &qword_1EB8A6850;
      v20 = &unk_1B4D1BC10;
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      v19 = &qword_1EB8A6868;
      v20 = &unk_1B4D1AB80;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    v47 = *(*(v46 - 8) + 8);
    v47(&v6[v18], v46);
    v47(&v6[v17], v46);
    v47(v6, v46);
    v48 = COERCE_DOUBLE(sub_1B4A612D4()) >= 1.0;
    if (v49)
    {
      return 2;
    }

    else
    {
      return v48;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = COERCE_DOUBLE(sub_1B4A61B14()) >= 1.0;
      if (v22)
      {
        v10 = 2;
      }

      else
      {
        v10 = v21;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v12 = *(v23 + 48);
      v13 = *(v23 + 64);
      v14 = &qword_1EB8A6850;
      v15 = &unk_1B4D1BC10;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = COERCE_DOUBLE(sub_1B4A61EE8()) >= 1.0;
      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = v8;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      v14 = &qword_1EB8A6870;
      v15 = &unk_1B4D1C2C0;
LABEL_14:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v25 = *(*(v24 - 8) + 8);
      v25(&v6[v13], v24);
      v25(&v6[v12], v24);
      v25(v6, v24);
      return v10;
    }

    v26 = sub_1B4A612D4();
    if (v27 & 1) != 0 || (v28 = *&v26, v29 = sub_1B4A61B14(), (v30) || (v31 = *&v29, v32 = COERCE_DOUBLE(sub_1B4A61EE8()), (v33))
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
      if (v28 >= 1.0 && v31 >= 1.0)
      {
        v10 = v32 >= 1.0;
      }
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v35 = v34[12];
    v51 = v34[20];
    v52 = v35;
    v36 = v34[24];
    v37 = v34[32];
    v38 = v34[36];
    v39 = v34[44];
    v40 = v34[48];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v42 = *(*(v41 - 8) + 8);
    v42(&v6[v40], v41);
    v42(&v6[v39], v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v44 = *(*(v43 - 8) + 8);
    v44(&v6[v38], v43);
    v44(&v6[v37], v43);
    sub_1B4975024(&v6[v36], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v6[v51], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v6[v52], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v6, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  return v10;
}

uint64_t sub_1B4C4CFBC(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for RingStateFact();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for RingProgressType();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for HKActivitySummaryRepresentable();
  v1[13] = v10;
  v11 = *(v10 - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v14 = type metadata accessor for ActivitySummaryContext();
  v1[18] = v14;
  v15 = *(v14 - 8);
  v1[19] = v15;
  v16 = *(v15 + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C4D250, 0, 0);
}

uint64_t sub_1B4C4D250()
{
  v52 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for RingStateFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D8, &unk_1B4D1AAF0);
  v48 = sub_1B4D181CC();
  v50 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v48, v50, v1, v1, v5, v6);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[17], &qword_1EB8AA5C8, &qword_1B4D39050);
LABEL_7:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v8 = v0[20];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];
  sub_1B4C4DA9C(v0[17], v8, type metadata accessor for ActivitySummaryContext);
  sub_1B4BB7B50(v8, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[12];
    sub_1B4C4DA3C(v0[20], type metadata accessor for ActivitySummaryContext);
    sub_1B4975024(v12, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    goto LABEL_7;
  }

  v13 = v0[16];
  sub_1B4C4DA9C(v0[12], v13, type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v13 + 25))
  {
    v14 = v0[16];
    sub_1B4C4DA3C(v0[20], type metadata accessor for ActivitySummaryContext);
    sub_1B4C4DA3C(v14, type metadata accessor for HKActivitySummaryRepresentable);
    goto LABEL_7;
  }

  v27 = v0[15];
  v28 = v0[8];
  v29 = v0[9];
  v30 = v0[7];
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B4C4D9B8(v0[16], v27, type metadata accessor for HKActivitySummaryRepresentable);
  v51[0] = 3;
  sub_1B4B05EF8(v27, v51, v30);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    sub_1B4975024(v0[7], &qword_1EB8AA5C0, &unk_1B4D39040);
  }

  else
  {
    v31 = v0[16];
    v32 = v0[11];
    sub_1B4C4DA9C(v0[7], v32, type metadata accessor for RingProgressType);
    v33 = sub_1B4C4CB4C(v31, v32);
    if (v33 == 2 || (v33 & 1) == 0)
    {
      sub_1B4C4DA3C(v0[11], type metadata accessor for RingProgressType);
    }

    else
    {
      v34 = v0[16];
      v35 = v0[13];
      v36 = v0[10];
      v37 = v0[6];
      v38 = v0[4];
      sub_1B4C4D9B8(v0[11], v36, type metadata accessor for RingProgressType);
      LOBYTE(v34) = *(v34 + *(v35 + 76));
      sub_1B4C4DA9C(v36, v37, type metadata accessor for RingProgressType);
      *(v37 + *(v38 + 20)) = v34 & 1;
      *(v37 + *(v38 + 24)) = 0;
      v39 = sub_1B4A1DA48(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v41 = v39[2];
      v40 = v39[3];
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1B4A1DA48(v40 > 1, v41 + 1, 1, v39);
      }

      v43 = v0[5];
      v42 = v0[6];
      sub_1B4C4DA3C(v0[11], type metadata accessor for RingProgressType);
      v39[2] = v41 + 1;
      sub_1B4C4DA9C(v42, v39 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41, type metadata accessor for RingStateFact);
      v49 = v39;
    }
  }

  v44 = v0[20];
  v45 = v0[16];
  v46 = swift_task_alloc();
  *(v46 + 16) = v45;
  v47 = sub_1B4AE0B18(sub_1B4C4DA20, v46, &unk_1F2CBD1F0);

  sub_1B4997618(v47);
  sub_1B4C4DA3C(v44, type metadata accessor for ActivitySummaryContext);
  v15 = v49;
  sub_1B4C4DA3C(v45, type metadata accessor for HKActivitySummaryRepresentable);
LABEL_8:
  v16 = v0[20];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v24 = v0[6];
  v23 = v0[7];

  v25 = v0[1];

  return v25(v15);
}

unint64_t sub_1B4C4D7CC()
{
  result = qword_1EB8AD2B8;
  if (!qword_1EB8AD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2B8);
  }

  return result;
}

unint64_t sub_1B4C4D820(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C4D850();
  result = sub_1B4C4D8A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C4D850()
{
  result = qword_1EB8AD2C0;
  if (!qword_1EB8AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2C0);
  }

  return result;
}

unint64_t sub_1B4C4D8A4()
{
  result = qword_1EB8AD2C8;
  if (!qword_1EB8AD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2C8);
  }

  return result;
}

uint64_t sub_1B4C4D8FC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C4D964(&qword_1EB8AD2D0);
  result = sub_1B4C4D964(&qword_1EB8AD2D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4C4D964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RingStateFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C4D9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C4DA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C4DA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static WorkoutFastestByDistancePropertyGenerator.from(_:for:)@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v5 = sub_1B4D1777C();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v40 - v11);
  v13 = type metadata accessor for LocalizedDate();
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 56))(v18, v19);
  v21 = [v20 effectiveTypeIdentifier];

  v22 = *(a1 + 3);
  v23 = *(a1 + 4);
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v25 = sub_1B4C7AB18(v24, v22, v23);
  if (v17 || (v40 = v16, v41 = v13, v42 = v25, v28 = _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV7samples3for12activityTypeSaySo8HKSampleCGAA0C13Representable_p_So017HKWorkoutActivityL0VtFZ_0(a1, v21), v29 = sub_1B49E6974(v28), , !v29))
  {

LABEL_3:
    v27 = v45;
    *v45 = 0;
    v27[1] = 0;
    return result;
  }

  v31 = *(a1 + 3);
  v30 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v30 + 80))(v31, v30);
  static LocalizedDate.from(_:)(v8, v12);
  (*(v44 + 8))(v8, v5);
  if ((*(v43 + 48))(v12, 1, v41) == 1)
  {

    result = sub_1B4C4E7BC(v12);
    goto LABEL_3;
  }

  v32 = v40;
  sub_1B4AF497C(v12, v40);
  if (!v42[2])
  {
    goto LABEL_20;
  }

  if (v29 >> 62)
  {
    if (sub_1B4D18ABC())
    {
      goto LABEL_11;
    }

LABEL_20:

    result = sub_1B4AF49E0(v32);
    goto LABEL_3;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV12smoothFactor3for4withSiSo21HKWorkoutActivityTypeV_SaySo16HKQuantitySampleCGtFZ_0(v21, v29);
  v34 = _s19FitnessIntelligence14WorkoutInsightV12bestDuration3for7samples12smoothFactor5limitSDyAA17DistanceReferenceOSayAA0L20SampleIntervalRecordVGGSayAJG_SaySo010HKQuantityN0CGS2itFZ_0(v42, v29, v33, 5);

  if (v34[2])
  {
    MEMORY[0x1EEE9AC00](v35);
    *(&v40 - 2) = a1;
    *(&v40 - 1) = v32;
    v36 = sub_1B4C4E46C(v34, sub_1B4C4EA18);

    if (*(v36 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
      v37 = sub_1B4D18AEC();
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC8];
    }

    v46 = v37;
    sub_1B4C4E108(v36, 1, &v46);
    v39 = v45;
    *v45 = v46;
    v39[1] = 0;
  }

  else
  {

    v38 = v45;
    *v45 = 0;
    v38[1] = 0;
  }

  return sub_1B4AF49E0(v32);
}

void sub_1B4C4DF80(_BYTE *a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = MEMORY[0x1B8C7D560]();
  v14[2] = a5;
  v14[3] = a6;
  v13 = sub_1B49970B4(sub_1B4C4EAC0, v14, a4);
  objc_autoreleasePoolPop(v12);
  *a1 = v11;
  *a2 = v13;
}

void sub_1B4C4E018(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1B8C7D560]();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 24))(v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  sub_1B4C4EAE0(a3, a4 + *(v11 + 36), type metadata accessor for LocalizedDate);
  sub_1B4C4EAE0(a1, a4 + *(v11 + 40), type metadata accessor for DistanceSampleIntervalRecord);
  objc_autoreleasePoolPop(v8);
}

void sub_1B4C4E108(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1B49E9CA4(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984F00(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_1B49E9CA4(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_1B4988F88();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v7 = *v6;
      v8 = *(v6 - 8);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_1B49E9CA4(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B4984F00(v31, 1);
        v32 = *a3;
        v27 = sub_1B49E9CA4(v8);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v8;
      *(v34[7] + 8 * v27) = v7;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B4C4E46C(uint64_t a1, void (*a2)(char *, uint64_t *, char *, uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF59C(0, v3, 0);
    v30 = v35;
    v5 = a1 + 64;
    v6 = -1 << *(a1 + 32);
    result = sub_1B4D188DC();
    v7 = result;
    v8 = 0;
    v9 = *(a1 + 36);
    v26 = v3;
    v27 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v29 = v8;
      v12 = *(*(a1 + 56) + 8 * v7);
      v31[0] = *(*(a1 + 48) + v7);
      v32 = v12;

      a2(v33, &v34, v31, v12);

      v13 = v33[0];
      v14 = v34;
      v15 = v30;
      v35 = v30;
      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1B4BCF59C((v16 > 1), v17 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      v10 = 1 << *(a1 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v5 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v11);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v30 = v15;
      v9 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (a1 + 72 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B497CD6C(v7, v27, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v7, v27, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v10;
      if (v29 + 1 == v26)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV7samples3for12activityTypeSaySo8HKSampleCGAA0C13Representable_p_So017HKWorkoutActivityL0VtFZ_0(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 13:
      v2 = MEMORY[0x1E696BCC8];
      goto LABEL_7;
    case 37:
      v2 = MEMORY[0x1E696BCF8];
      goto LABEL_7;
    case 71:
      v2 = MEMORY[0x1E696BD00];
LABEL_7:
      v3 = a1[3];
      v4 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v3);
      sub_1B4C4EB48();
      v5 = MEMORY[0x1B8C7CB40](*v2);
      v6 = (*(v4 + 264))(v5, v3, v4);

      return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B4C4E7BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV12smoothFactor3for4withSiSo21HKWorkoutActivityTypeV_SaySo16HKQuantitySampleCGtFZ_0(uint64_t a1, unint64_t a2)
{
  v18 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4D18ABC())
  {
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8C7CD90](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 quantity];
      v10 = [objc_opt_self() meterUnit];
      [v9 doubleValueForUnit_];
      v12 = v11;

      v5 = v5 + v12;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v5 = 0.0;
LABEL_15:
  if (v18)
  {
    result = sub_1B4D18ABC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v5 / result;
  if (v14 <= 0.0)
  {
    return 0;
  }

  v15 = 50.0;
  if (a1 == 13)
  {
    v15 = 100.0;
  }

  v16 = v15 / v14;
  if (*&v16 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v16 <= 1)
  {
    return 1;
  }

  else
  {
    return v16;
  }
}

unint64_t sub_1B4C4EA20(uint64_t a1)
{
  result = sub_1B4A2E518();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C4EA4C()
{
  result = qword_1EDC38290;
  if (!qword_1EDC38290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7960, &qword_1B4D409B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38290);
  }

  return result;
}

uint64_t sub_1B4C4EAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4C4EB48()
{
  result = qword_1EDC36DE8;
  if (!qword_1EDC36DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC36DE8);
  }

  return result;
}

uint64_t WorkoutSplitFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutSplitFact.TemplateString.rawValue.getter()
{
  v1 = 0xD00000000000004ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000061;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000068;
  }

  *v0;
  return result;
}

uint64_t sub_1B4C4EC58(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000004ALL;
  v3 = *a1;
  v4 = "y split: <sub_templates>";
  if (v3 == 1)
  {
    v5 = 0xD00000000000004ALL;
  }

  else
  {
    v5 = 0xD000000000000061;
  }

  if (v3 == 1)
  {
    v6 = "y split: <sub_templates>";
  }

  else
  {
    v6 = "s workout: <sub_templates>";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000068;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ring_percentage>.";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000061;
    v4 = "s workout: <sub_templates>";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000068;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ring_percentage>.";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4C4ED30()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4EDCC()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C4EE54()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4EEEC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutSplitFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4C4EEF8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000004ALL;
  v3 = "y split: <sub_templates>";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000061;
    v3 = "s workout: <sub_templates>";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000068;
    v4 = "ring_percentage>.";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_1B4C4EF64()
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(*v0)
  {
    case 1:
    case 0xC:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A50;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:0];
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:71 isIndoor:0];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:0];
      *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:1];
      *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:1];
      *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:0];
      *(v1 + 88) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:70 isIndoor:0];
      *(v1 + 96) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:24 isIndoor:0];
      *(v1 + 104) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:1];
      v3 = 44;
      *(v1 + 112) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:44 isIndoor:1];
      *(v1 + 120) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:0];
      v2 = (v1 + 128);
      goto LABEL_3;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A40;
      v2 = (v1 + 32);
      v3 = 13;
      goto LABEL_3;
    case 7:
    case 0xD:
      return v1;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A10;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:1];
      v3 = 44;
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:44 isIndoor:1];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:0];
      v2 = (v1 + 64);
      goto LABEL_3;
    case 0xE:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A30;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:0];
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:70 isIndoor:0];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:24 isIndoor:0];
      *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:1];
      *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:1];
      v3 = 44;
      *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:44 isIndoor:1];
      *(v1 + 88) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:0];
      v2 = (v1 + 96);
      goto LABEL_3;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A20;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:0];
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:71 isIndoor:0];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:0];
      *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:1];
      *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:0];
      *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:70 isIndoor:0];
      v2 = (v1 + 88);
      v3 = 24;
LABEL_3:
      *v2 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v3 isIndoor:0];
      return v1;
  }
}

uint64_t WorkoutSplitFact.SubTemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutSplitFact.SubTemplateString.rawValue.getter()
{
  result = 0xD000000000000053;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000003DLL;
      break;
    case 3:
      result = 0xD00000000000003FLL;
      break;
    case 4:
    case 6:
      result = 0xD000000000000058;
      break;
    case 5:
      result = 0xD000000000000056;
      break;
    case 7:
      result = 0xD000000000000030;
      break;
    case 8:
      result = 0xD0000000000000B6;
      break;
    case 9:
      result = 0xD00000000000009ALL;
      break;
    case 0xA:
      result = 0xD00000000000007FLL;
      break;
    case 0xB:
      result = 0xD000000000000080;
      break;
    case 0xC:
      result = 0xD000000000000068;
      break;
    case 0xD:
      result = 0xD000000000000033;
      break;
    case 0xE:
      result = 0xD000000000000043;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4C4F668(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutSplitFact.SubTemplateString.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutSplitFact.SubTemplateString.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4C4F704()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutSplitFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4F76C()
{
  v2 = *v0;
  WorkoutSplitFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4C4F7D0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutSplitFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4F834@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutSplitFact.SubTemplateString.init(rawValue:)(a1);
}

unint64_t sub_1B4C4F840@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutSplitFact.SubTemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall WorkoutSplitFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t WorkoutSplitFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D40A60;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  *(v4 + 32) = 0x6F5F7265626D756ELL;
  *(v4 + 40) = 0xEF74696C70735F66;
  *(v4 + 48) = sub_1B4C5010C;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v7 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  *(v4 + 80) = 0xD000000000000012;
  *(v4 + 88) = 0x80000001B4D62340;
  *(v4 + 96) = sub_1B4C503F0;
  *(v4 + 104) = v7;
  *(v4 + 112) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v8 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  *(v4 + 128) = 0xD000000000000018;
  *(v4 + 136) = 0x80000001B4D63F40;
  *(v4 + 144) = sub_1B4C506CC;
  *(v4 + 152) = v8;
  *(v4 + 160) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v9 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  *(v4 + 176) = 0xD000000000000018;
  *(v4 + 184) = 0x80000001B4D63F60;
  *(v4 + 192) = sub_1B4C509D8;
  *(v4 + 200) = v9;
  *(v4 + 208) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v10 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5);
  *(v4 + 224) = 0xD000000000000012;
  *(v4 + 232) = 0x80000001B4D62360;
  *(v4 + 240) = sub_1B4C50BCC;
  *(v4 + 248) = v10;
  *(v4 + 256) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v11 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5);
  *(v4 + 272) = 0x657474616D726F66;
  *(v4 + 280) = 0xEF64656570735F64;
  *(v4 + 288) = sub_1B4C50F5C;
  *(v4 + 296) = v11;
  *(v4 + 304) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v12 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5);
  strcpy((v4 + 320), "formatted_pace");
  *(v4 + 335) = -18;
  *(v4 + 336) = sub_1B4C5114C;
  *(v4 + 344) = v12;
  *(v4 + 352) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v13 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5);
  *(v4 + 368) = 0xD000000000000018;
  *(v4 + 376) = 0x80000001B4D62380;
  *(v4 + 384) = sub_1B4C513C0;
  *(v4 + 392) = v13;
  *(v4 + 400) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v14 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5);
  *(v4 + 416) = 0xD00000000000001ALL;
  *(v4 + 424) = 0x80000001B4D63F80;
  *(v4 + 432) = sub_1B4C51640;
  *(v4 + 440) = v14;
  *(v4 + 448) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v15 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5);
  *(v4 + 464) = 0xD00000000000001CLL;
  *(v4 + 472) = 0x80000001B4D63FA0;
  *(v4 + 480) = sub_1B4C518C0;
  *(v4 + 488) = v15;
  *(v4 + 496) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v16 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v5);
  *(v4 + 512) = 0xD00000000000001DLL;
  *(v4 + 520) = 0x80000001B4D63FC0;
  *(v4 + 528) = sub_1B4C51B18;
  *(v4 + 536) = v16;
  *(v4 + 544) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v17 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v5);
  *(v4 + 560) = 0xD00000000000001ALL;
  *(v4 + 568) = 0x80000001B4D63FE0;
  *(v4 + 576) = sub_1B4C51B30;
  *(v4 + 584) = v17;
  *(v4 + 592) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v18 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v5);
  *(v4 + 608) = 0xD000000000000028;
  *(v4 + 616) = 0x80000001B4D64000;
  *(v4 + 624) = sub_1B4C51BF8;
  *(v4 + 632) = v18;
  *(v4 + 640) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v19 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v5);
  *(v4 + 656) = 0xD000000000000019;
  *(v4 + 664) = 0x80000001B4D64030;
  *(v4 + 672) = sub_1B4C51FD8;
  *(v4 + 680) = v19;
  *(v4 + 688) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v20 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v5);
  *(v4 + 704) = 0x657474616D726F66;
  *(v4 + 712) = 0xEF7265776F705F64;
  *(v4 + 720) = sub_1B4C522C8;
  *(v4 + 728) = v20;
  *(v4 + 736) = 0u;
  return v4;
}

uint64_t sub_1B4C50014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = sub_1B4D125A4();
  v4 = sub_1B4D1863C();
  v5 = [v3 stringFromNumber_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B4D1818C();

  return v6;
}

uint64_t sub_1B4C500A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSplitFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C50124(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 28), v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v14 = *(sub_1B4D18F8C() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v18 = sub_1B4BCA7BC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = sub_1B4D15F5C(v11, v18);

    (*(v8 + 8))(v11, v7);
    return v19;
  }
}

uint64_t sub_1B4C50408(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 32), v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v14 = *(sub_1B4D18F8C() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B4D1BE00;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    v18 = sub_1B49B5B70(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = sub_1B4D15F5C(v11, v18);

    (*(v8 + 8))(v11, v7);
    return v19;
  }
}

uint64_t sub_1B4C506E4(uint64_t a1, uint64_t *a2)
{
  v21[1] = a1;
  v3 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v16 + 40), v10, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_1B4C55414(a2 + *(v16 + 24), v6, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4C5547C(v6);
LABEL_7:
    v20 = sub_1B4D133E8(v15, *a2, 0, 1);
    (*(v12 + 8))(v15, v11);
    return v20;
  }

  v18 = v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48)];
  v19 = *(v12 + 8);
  v19(v6, v11);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = sub_1B4D133E8(v15, *a2, 2, 0);
  v19(v15, v11);
  return v20;
}

uint64_t sub_1B4C509F0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 36), v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1B4D133E8(v11, *a2, 2, 0);
    (*(v8 + 8))(v11, v7);
    return v14;
  }
}

uint64_t sub_1B4C50BE4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v19 + 44), v10, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    v21 = *(v12 + 8);
    v21(v15, v11);
    v22 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v23 = sub_1B4D13D94(v6, *a2, 1);
    (*(v24 + 8))(v6, v25);
    v21(v18, v11);
    return v23;
  }
}

uint64_t sub_1B4C50F74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 44), v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1B4D13AE8(v11, *a2, 2);
    (*(v8 + 8))(v11, v7);
    return v14;
  }
}

uint64_t sub_1B4C51164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v16 + 52), v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v18 = *(a1 + 16);
    FIUnitManager.userMeasurementUnitForElevation()(v19);
    v21 = v20;
    sub_1B4D1745C();
    v22 = sub_1B4D12160();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v23 = sub_1B4D1878C();

    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v15, v8);
    return v23;
  }
}

uint64_t sub_1B4C513D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v15 + 60), v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v17 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    v18 = sub_1B4D14174(v11);

    v19 = *(v8 + 8);
    v19(v11, v7);
    v19(v14, v7);
    return v18;
  }
}

uint64_t sub_1B4C51658(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v15 + 64), v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v17 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    v18 = sub_1B4D14174(v11);

    v19 = *(v8 + 8);
    v19(v11, v7);
    v19(v14, v7);
    return v18;
  }
}

uint64_t sub_1B4C518D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v16 + 56), v7, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v18 = *(a1 + 16);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v19);
    v21 = v20;
    sub_1B4D1745C();
    v22 = sub_1B4D12160();
    v23 = sub_1B4D12A28();

    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v15, v8);
    return v23;
  }
}

uint64_t sub_1B4C51B30()
{
  v1 = 0x74696C7073;
  v2 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v3 = *(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  if ([v3 effectiveTypeIdentifier] != 37 && objc_msgSend(v3, sel_effectiveTypeIdentifier) != 71)
  {
    return 0x73736572676F7270;
  }

  return v1;
}

uint64_t sub_1B4C51BF8()
{
  v1 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B4C51C5C();
}

uint64_t sub_1B4C51C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4C55414(v0 + *(v15 + 24), v14, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v14, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v16 = *(sub_1B4D18F8C() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v20 = sub_1B4BCA7BC(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = sub_1B4D15F5C(v5, v20);

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v21 = sub_1B4D133E8(v10, *v0, 2, 0);
    (*(v7 + 8))(v10, v6);
  }

  return v21;
}

uint64_t sub_1B4C51FD8()
{
  v1 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  if (FIPaceFormatForWorkoutActivityType() == 4)
  {
    return 0x6465657073;
  }

  else
  {
    return 1701011824;
  }
}

uint64_t sub_1B4C52054(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v15 + 48), v6, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v17 = sub_1B4D12160();
    v18 = [objc_opt_self() watts];
    sub_1B4D1745C();

    sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
    v19 = sub_1B4D1878C();

    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v14, v7);
    return v19;
  }
}

uint64_t sub_1B4C522E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

id WorkoutSplitFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WorkoutSplitFact(0) + 72));
  v4 = *v1;
  result = [*v1 effectiveTypeIdentifier];
  if (v3 == 1)
  {
    v6 = 2;
    if (result != 37)
    {
      result = [v4 effectiveTypeIdentifier];
      if (result == 71)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  else if (result == 37)
  {
    v6 = 0;
  }

  else
  {
    result = [v4 effectiveTypeIdentifier];
    v6 = result != 71;
  }

  *a1 = v6;
  return result;
}

uint64_t WorkoutSplitFact.selectSubTemplates(formatter:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutSplitFact(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1B4C500A8(v7, v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B4C5374C;
  *(v10 + 24) = v9;
  v50[5] = sub_1B4C53764;
  v51[0] = v10;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v11 = swift_allocObject();
  sub_1B4C500A8(v7, v11 + v8);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B4C53798;
  *(v12 + 24) = v11;
  v51[1] = sub_1B4C554D8;
  v51[2] = v12;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v13 = swift_allocObject();
  sub_1B4C500A8(v7, v13 + v8);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B4C537B0;
  *(v14 + 24) = v13;
  v51[3] = sub_1B4C554D8;
  v51[4] = v14;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v15 = swift_allocObject();
  sub_1B4C500A8(v7, v15 + v8);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B4C537C8;
  *(v16 + 24) = v15;
  v51[5] = sub_1B4C554D8;
  v51[6] = v16;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v17 = swift_allocObject();
  sub_1B4C500A8(v7, v17 + v8);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B4C537E0;
  *(v18 + 24) = v17;
  v51[7] = sub_1B4C554D8;
  v51[8] = v18;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v19 = swift_allocObject();
  sub_1B4C500A8(v7, v19 + v8);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B4C5386C;
  *(v20 + 24) = v19;
  v51[9] = sub_1B4C554D8;
  v51[10] = v20;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v21 = swift_allocObject();
  sub_1B4C500A8(v7, v21 + v8);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B4C538F8;
  *(v22 + 24) = v21;
  v51[11] = sub_1B4C554D8;
  v51[12] = v22;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v23 = swift_allocObject();
  sub_1B4C500A8(v7, v23 + v8);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B4C53994;
  *(v24 + 24) = v23;
  v51[13] = sub_1B4C554D8;
  v51[14] = v24;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v25 = swift_allocObject();
  sub_1B4C500A8(v7, v25 + v8);
  v26 = swift_allocObject();
  v27 = 0;
  *(v26 + 16) = sub_1B4C53EE8;
  *(v26 + 24) = v25;
  v51[15] = sub_1B4C554D8;
  v51[16] = v26;
  v28 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v29 = 9;
    if (v27 > 9)
    {
      v29 = v27;
    }

    v30 = -v29;
    v31 = &v51[2 * v27++];
    while (1)
    {
      if (v30 + v27 == 1)
      {
        __break(1u);
        goto LABEL_22;
      }

      v33 = *(v31 - 1);
      v32 = *v31;
      v52 = a1;

      v33(v50, &v52);
      v34 = *(v50[0] + 16);
      if (v34)
      {
        break;
      }

      ++v27;
      v31 += 2;
      if (v27 == 10)
      {
        v44 = v28;
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD2E0, &qword_1B4D40A78);
        v45 = swift_arrayDestroy();
        MEMORY[0x1EEE9AC00](v45);
        *(&v47 - 2) = v2;
        return sub_1B499E6D0(sub_1B4C53F64, (&v47 - 4), v44);
      }
    }

    v49 = v2;
    v35 = *(v28 + 2);
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v48 = v50[0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v38 = *(v28 + 3) >> 1, v44 = v28, v38 < v36))
    {
      if (v35 <= v36)
      {
        v39 = v35 + v34;
      }

      else
      {
        v39 = v35;
      }

      v44 = sub_1B4A1EC64(isUniquelyReferenced_nonNull_native, v39, 1, v28);
      v38 = *(v44 + 3) >> 1;
    }

    if (*(v48 + 16))
    {
      v40 = *(v44 + 2);
      v2 = v49;
      if (v38 - v40 >= v34)
      {
        memcpy(&v44[v40 + 32], (v48 + 32), v34);

        v41 = *(v44 + 2);
        v42 = __OFADD__(v41, v34);
        v43 = v41 + v34;
        if (!v42)
        {
          *(v44 + 2) = v43;

          v28 = v44;
          if (v27 != 9)
          {
            continue;
          }

          goto LABEL_20;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

void *sub_1B4C52ADC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 44), v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_1B4D1742C();
  if (v13 <= 0.0)
  {
    (*(v8 + 8))(v11, v7);
    return MEMORY[0x1E69E7CC0];
  }

  v14 = *a2;
  v15 = FIPaceFormatForWorkoutActivityType();
  (*(v8 + 8))(v11, v7);
  if (v15 == 4)
  {
    return &unk_1F2CBD418;
  }

  else
  {
    return &unk_1F2CBD440;
  }
}

void *sub_1B4C52CE4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 48), v6, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_1B4D1742C();
    v15 = v14;
    (*(v8 + 8))(v11, v7);
    if (v15 <= 0.0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      return &unk_1F2CBD468;
    }
  }
}

void *sub_1B4C52EC4(uint64_t a1, id *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v12 + 56), v6, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_1B4D1742C();
    if (v13 > 0.0)
    {
      if (v14 = *a2, [*a2 effectiveTypeIdentifier] != 52) && objc_msgSend(v14, sel_effectiveTypeIdentifier) != 24 || (sub_1B4C5317C())
      {
        (*(v8 + 8))(v11, v7);
        return &unk_1F2CBD4E0;
      }
    }

    (*(v8 + 8))(v11, v7);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B4C530EC(char *a1, uint64_t *a2)
{
  v9 = *a1;
  v3 = sub_1B4C4EF64();
  v4 = *a2;
  v7[2] = &v8;
  v8 = v4;
  v5 = sub_1B49B17F4(sub_1B4C542E0, v7, v3);

  return v5 & 1;
}

uint64_t sub_1B4C5317C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v0 + *(v20 + 28), v7, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    v22 = v7;
LABEL_5:
    sub_1B4975024(v22, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  v45 = v16;
  v23 = v19;
  v24 = *(v9 + 32);
  v46 = v23;
  v24();
  sub_1B4974FBC(v0 + *(v20 + 32), v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v21(v4, 1, v8) == 1)
  {
    (*(v9 + 8))(v46, v8);
    v22 = v4;
    goto LABEL_5;
  }

  (v24)(v45, v4, v8);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v26 = v47;
  sub_1B4D1744C();
  v27 = objc_opt_self();
  v28 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
  v29 = [v27 minutes];
  v30 = v48;
  sub_1B4D1745C();

  v33 = *(v9 + 8);
  v31 = v9 + 8;
  v32 = v33;
  v33(v26, v8);
  sub_1B4D1742C();
  v35 = v34;
  v36 = v34;
  v33(v30, v8);
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = [v27 minutes];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v38 = v37;
  v39 = v37;
  v32(v30, v8);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v35;
  v31 = v38;
  v29 = v38 / 40;
  v30 = v35 / 40;
  v27 = v30 < v29;
  if (qword_1EDC36EF8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v40 = sub_1B4D17F6C();
  __swift_project_value_buffer(v40, qword_1EDC36F00);
  v41 = sub_1B4D17F5C();
  v42 = sub_1B4D1873C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v30 < v29;
    v44 = swift_slowAlloc();
    *v44 = 67109888;
    *(v44 + 4) = v43;
    *(v44 + 8) = 2048;
    *(v44 + 10) = v28;
    *(v44 + 18) = 2048;
    *(v44 + 20) = v31;
    *(v44 + 28) = 2048;
    *(v44 + 30) = 40;
    _os_log_impl(&dword_1B4953000, v41, v42, "isTimeToSurfaceTotals %{BOOL}d, duration before %ld duration after %ld frequency %ld", v44, 0x26u);
    MEMORY[0x1B8C7DDA0](v44, -1, -1);
  }

  v32(v45, v8);
  v32(v46, v8);
  return v27;
}

uint64_t sub_1B4C53764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

void *sub_1B4C537E0()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 68));
  if (v3 == 2 || (v3 & 1) == 0 || *(v2 + *(v1 + 72)) == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2CBD490;
  }
}

void *sub_1B4C5386C()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 76));
  if (v3 == 2 || (v3 & 1) == 0 || *(v2 + *(v1 + 72)) == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2CBD4B8;
  }
}

uint64_t sub_1B4C53910(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v35 = (v2 + 16) & ~v2;
  v36 = v0;
  v3 = v0 + v35;

  v4 = v1[6];
  type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1EB8A6850;
    v6 = &unk_1B4D1BC10;
  }

  else
  {
    v5 = &qword_1EB8A6830;
    v6 = &unk_1B4D1AB40;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  (*(*(v7 - 8) + 8))(v3 + v4, v7);
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v12 = v1[8];
  if (!v11(v3 + v12, 1, v9))
  {
    (*(v10 + 8))(v3 + v12, v9);
  }

  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v3 + v13, v14);
  }

  v17 = v1[10];
  if (!v16(v3 + v17, 1, v14))
  {
    (*(v15 + 8))(v3 + v17, v14);
  }

  v18 = v1[11];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v3 + v18, 1, v19))
  {
    (*(v20 + 8))(v3 + v18, v19);
  }

  v21 = v1[12];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  v24 = v1[13];
  if (!v16(v3 + v24, 1, v14))
  {
    (*(v15 + 8))(v3 + v24, v14);
  }

  v25 = v1[14];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v3 + v25, 1, v26))
  {
    (*(v27 + 8))(v3 + v25, v26);
  }

  v28 = v1[15];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (!v31(v3 + v28, 1, v29))
  {
    (*(v30 + 8))(v3 + v28, v29);
  }

  v32 = v1[16];
  if (!v31(v3 + v32, 1, v29))
  {
    (*(v30 + 8))(v3 + v32, v29);
  }

  return MEMORY[0x1EEE6BDD0](v36, v35 + v34, v2 | 7);
}

unint64_t sub_1B4C53F88()
{
  result = qword_1EB8AD2E8;
  if (!qword_1EB8AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2E8);
  }

  return result;
}

unint64_t sub_1B4C54010()
{
  result = qword_1EB8AD300;
  if (!qword_1EB8AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD300);
  }

  return result;
}

unint64_t sub_1B4C54098()
{
  result = qword_1EB8AD318;
  if (!qword_1EB8AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD318);
  }

  return result;
}

unint64_t sub_1B4C540F0()
{
  result = qword_1EB8AD320;
  if (!qword_1EB8AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD320);
  }

  return result;
}

uint64_t sub_1B4C54144(uint64_t a1)
{
  result = sub_1B4C5427C(&qword_1EB8A7030);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C5418C()
{
  result = qword_1EB8AD328;
  if (!qword_1EB8AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD328);
  }

  return result;
}

unint64_t sub_1B4C541E4()
{
  result = qword_1EB8AD330;
  if (!qword_1EB8AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD330);
  }

  return result;
}

uint64_t sub_1B4C54238(uint64_t a1)
{
  result = sub_1B4C5427C(&qword_1EB8AD338);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C5427C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSplitFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C542E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1B498AFB8(0, &qword_1EDC36DC8, 0x1E699C9F0);
  return sub_1B4D187AC() & 1;
}

char *sub_1B4C54348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v0 + *(v10 + 28), v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B4975024(v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_1B4D1742C();
    if (v12 <= 0.0)
    {
      (*(v6 + 8))(v9, v5);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v11 = sub_1B4A1EC64(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_1B4A1EC64((v13 > 1), v14 + 1, 1, v11);
      }

      (*(v6 + 8))(v9, v5);
      *(v11 + 2) = v14 + 1;
      v11[v14 + 32] = 0;
    }
  }

  v15 = *v0;
  if ([*v0 effectiveTypeIdentifier] != 37 && objc_msgSend(v15, sel_effectiveTypeIdentifier) != 71 && (objc_msgSend(v15, sel_effectiveTypeIdentifier) != 13 || objc_msgSend(v15, sel_isIndoor)) && objc_msgSend(v15, sel_effectiveTypeIdentifier) != 52 && objc_msgSend(v15, sel_effectiveTypeIdentifier) != 24 || (sub_1B4C5317C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1B4A1EC64(0, *(v11 + 2) + 1, 1, v11);
    }

    v17 = *(v11 + 2);
    v16 = *(v11 + 3);
    if (v17 >= v16 >> 1)
    {
      v11 = sub_1B4A1EC64((v16 > 1), v17 + 1, 1, v11);
    }

    *(v11 + 2) = v17 + 1;
    v11[v17 + 32] = 1;
  }

  return v11;
}

char *sub_1B4C5468C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v1 + *(v17 + 36), v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_8:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  (*(v10 + 32))(v16, v8, v9);
  sub_1B4D1742C();
  if (v19 <= 0.0)
  {
    (*(v10 + 8))(v16, v9);
    goto LABEL_8;
  }

  v28 = v1;
  v20 = sub_1B4A1EC64(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v27 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1B4A1EC64((v21 > 1), v22 + 1, 1, v20);
  }

  (*(v10 + 8))(v16, v9);
  *(v20 + 2) = v27;
  v20[v22 + 32] = 2;
  v1 = v28;
LABEL_9:
  sub_1B4974FBC(v1 + *(v17 + 40), v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v18(v5, 1, v9) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  }

  else
  {
    (*(v10 + 32))(v13, v5, v9);
    sub_1B4D1742C();
    if (v23 <= 0.0)
    {
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B4A1EC64(0, *(v20 + 2) + 1, 1, v20);
      }

      v25 = *(v20 + 2);
      v24 = *(v20 + 3);
      if (v25 >= v24 >> 1)
      {
        v20 = sub_1B4A1EC64((v24 > 1), v25 + 1, 1, v20);
      }

      (*(v10 + 8))(v13, v9);
      *(v20 + 2) = v25 + 1;
      v20[v25 + 32] = 3;
    }
  }

  return v20;
}

void *sub_1B4C54A68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for WorkoutSplitFact(0);
  v20 = v1;
  sub_1B4974FBC(v1 + *(v19 + 52), v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return MEMORY[0x1E69E7CC0];
  }

  v48 = v12;
  v49 = v15;
  v22 = *(v9 + 32);
  v22(v18, v7, v8);
  v23 = v50;
  sub_1B4974FBC(v1 + *(v19 + 36), v50, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v21(v23, 1, v8) == 1)
  {
    (*(v9 + 8))(v18, v8);
    sub_1B4975024(v50, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return MEMORY[0x1E69E7CC0];
  }

  v24 = v9;
  v25 = v49;
  v22(v49, v50, v8);
  sub_1B4D1742C();
  v26 = v18;
  if (v27 <= 0.0)
  {
    v37 = *(v24 + 8);
    v37(v25, v8);
    v37(v18, v8);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B4D1742C();
  if (v28 <= 0.0)
  {
    v38 = *(v24 + 8);
    v38(v25, v8);
    v38(v26, v8);
    return MEMORY[0x1E69E7CC0];
  }

  v29 = [*v20 effectiveTypeIdentifier];
  v30 = [objc_opt_self() miles];
  v31 = v48;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v33 = v32;
  v34 = *(v24 + 8);
  v34(v31, v8);
  if (v29 == 13)
  {
    v35 = v33 / 5.0 * 300.0;
    v36 = v33 / 5.0 * 600.0;
  }

  else
  {
    v35 = v33 * 100.0;
    v36 = v33 * 150.0;
  }

  v40 = objc_opt_self();
  v41 = [v40 feet];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v43 = v42;
  v34(v31, v8);
  if (v36 <= v43)
  {
    v34(v25, v8);
    v34(v18, v8);
    return &unk_1F2CBD508;
  }

  else
  {
    v44 = [v40 feet];
    sub_1B4D1745C();

    sub_1B4D1742C();
    v46 = v45;
    v34(v31, v8);
    v34(v25, v8);
    v34(v18, v8);
    if (v35 <= v46)
    {
      return &unk_1F2CBD530;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }
}

char *sub_1B4C54FB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v1 + v17[15], v8, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_8:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  (*(v10 + 32))(v16, v8, v9);
  sub_1B4D1742C();
  if (v19 <= 0.0)
  {
    (*(v10 + 8))(v16, v9);
    goto LABEL_8;
  }

  v32 = v1;
  v20 = sub_1B4A1EC64(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v31 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1B4A1EC64((v21 > 1), v22 + 1, 1, v20);
  }

  (*(v10 + 8))(v16, v9);
  *(v20 + 2) = v31;
  v20[v22 + 32] = 12;
  v1 = v32;
LABEL_9:
  sub_1B4974FBC(v1 + v17[16], v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v18(v5, 1, v9) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
  }

  else
  {
    (*(v10 + 32))(v13, v5, v9);
    sub_1B4D1742C();
    if (v23 <= 0.0)
    {
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v24 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B4A1EC64(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v26 >= v25 >> 1)
      {
        v20 = sub_1B4A1EC64((v25 > 1), v26 + 1, 1, v20);
      }

      (*(v10 + 8))(v13, v9);
      *(v20 + 2) = v26 + 1;
      v20[v26 + 32] = 13;
      v1 = v24;
    }
  }

  v27 = *(v1 + v17[20]);
  if (v27 != 2 && (v27 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1B4A1EC64(0, *(v20 + 2) + 1, 1, v20);
    }

    v29 = *(v20 + 2);
    v28 = *(v20 + 3);
    if (v29 >= v28 >> 1)
    {
      v20 = sub_1B4A1EC64((v28 > 1), v29 + 1, 1, v20);
    }

    *(v20 + 2) = v29 + 1;
    v20[v29 + 32] = 9;
  }

  return v20;
}

uint64_t sub_1B4C55414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C5547C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall LegacyTimescale.localized()()
{
  v1 = *v0;
  v2 = 0xE800000000000000;
  v3 = 0x7961642073696874;
  v4 = 0xEA00000000006874;
  v5 = 0x6E6F6D2073696874;
  v6 = 0xE900000000000072;
  v7 = 0x6165792073696874;
  if (v1 != 3)
  {
    v7 = 1919252069;
    v6 = 0xE400000000000000;
  }

  if (v1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x6565772073696874;
    v2 = 0xE90000000000006BLL;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

FitnessIntelligence::LegacyTimescale_optional __swiftcall LegacyTimescale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LegacyTimescale.rawValue.getter()
{
  v1 = *v0;
  v2 = 7954788;
  v3 = 0x68746E6F6DLL;
  v4 = 1918985593;
  if (v1 != 3)
  {
    v4 = 1919252069;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1801807223;
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

unint64_t sub_1B4C55670()
{
  result = qword_1EB8AD340;
  if (!qword_1EB8AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD340);
  }

  return result;
}

uint64_t sub_1B4C556C4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C55784()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C55830()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C558F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7954788;
  v5 = 0xE500000000000000;
  v6 = 0x68746E6F6DLL;
  v7 = 1918985593;
  if (v2 != 3)
  {
    v7 = 1919252069;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1801807223;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1B4C55A28()
{
  result = qword_1EB8AD348;
  if (!qword_1EB8AD348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD350, &qword_1B4D40DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD348);
  }

  return result;
}

unint64_t sub_1B4C55AAC()
{
  result = qword_1EB8AD358;
  if (!qword_1EB8AD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD358);
  }

  return result;
}

uint64_t StepsDailyAverageComparisonFact.init(currentDailyAverage:previousDailyAverage:percentageIncrease:currentDateRange:previousDateRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for StepsDailyAverageComparisonFact();
  sub_1B4993450(a4, a6 + *(v9 + 28));
  v10 = a6 + *(v9 + 32);

  return sub_1B4993450(a5, v10);
}

uint64_t type metadata accessor for StepsDailyAverageComparisonFact()
{
  result = qword_1EB8AD360;
  if (!qword_1EB8AD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StepsDailyAverageComparisonFact.currentDateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StepsDailyAverageComparisonFact() + 28);

  return sub_1B4B94680(v3, a1);
}

uint64_t StepsDailyAverageComparisonFact.previousDateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StepsDailyAverageComparisonFact() + 32);

  return sub_1B4B94680(v3, a1);
}

uint64_t _s19FitnessIntelligence31StepsDailyAverageComparisonFactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = type metadata accessor for StepsDailyAverageComparisonFact();
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 28), a2 + *(v4 + 28)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 32);

  return _s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1B4C55D38()
{
  result = type metadata accessor for DateRangeDescriptor();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double AnnounceUtteranceRequest.init(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1B4D177CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v21 = (a1 + *(v20 + 20));
  v52[0] = v21[1];
  if (*&v52[0])
  {
    v47 = v5;
    v48 = v4;
    v49 = a2;
    *&v50 = v20;
    v46 = *v21;
    v22 = *(v20 + 24);
    sub_1B4C562AC(a1 + v22, v19);
    v23 = *(v9 + 48);
    v24 = a1;
    v25 = v23(v19, 1, v8);
    sub_1B4C5631C(v19);
    if (v25 == 1)
    {
      sub_1B4C561FC();
      swift_allocError();
      *v26 = 1;
      swift_willThrow();
      sub_1B4C56250(v24);
    }

    else
    {
      sub_1B4C562AC(v24 + v22, v16);
      v29 = v24;
      if (v23(v16, 1, v8) == 1)
      {
        *v12 = 0;
        v30 = *(v8 + 20);
        v31 = v52[0];

        sub_1B4D17BBC();
        v32 = *(v8 + 24);
        v33 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
        (*(*(v33 - 8) + 56))(v12 + v32, 1, 1, v33);
        if (v23(v16, 1, v8) != 1)
        {
          sub_1B4C5631C(v16);
        }
      }

      else
      {
        sub_1B4C56384(v16, v12);
        v31 = v52[0];
      }

      v34 = v55;
      AudioSynthesisSettings.init(_:)(v12, v53);
      if (v34)
      {
        sub_1B4C56250(v29);
      }

      else
      {
        LODWORD(v55) = v54;
        v35 = *(v29 + *(v50 + 36));
        v36 = *(v29 + *(v50 + 28)) & 1;
        v37 = v51;
        sub_1B4D177BC();
        v38 = v31;
        v39 = v29;
        v40 = sub_1B4D1779C();
        v42 = v41;
        v43 = *(v47 + 8);
        *v52 = v53[0];
        v50 = v53[1];
        v43(v37, v48);
        sub_1B4C56250(v39);
        v44 = v49;
        *v49 = v46;
        v44[1] = v38;
        v45 = v50;
        result = v52[0];
        *(v44 + 1) = *v52;
        *(v44 + 2) = v45;
        *(v44 + 48) = v55;
        *(v44 + 7) = v40;
        *(v44 + 8) = v42;
        *(v44 + 72) = v35 & 1;
        *(v44 + 73) = v36;
      }
    }
  }

  else
  {
    sub_1B4C561FC();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    sub_1B4C56250(a1);
  }

  return result;
}

unint64_t sub_1B4C561FC()
{
  result = qword_1EB8AD370;
  if (!qword_1EB8AD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD370);
  }

  return result;
}

uint64_t sub_1B4C56250(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C562AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C5631C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C56384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AnnounceUtteranceRequest.protobuf()()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[10] = *(v0 + 58);
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4C56A48(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C564A8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  v10 = a2[1];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v13 = (a1 + v12[5]);
  v14 = v13[1];

  *v13 = v11;
  v13[1] = v10;
  v15 = *(a2 + 2);
  v20[0] = *(a2 + 1);
  v20[1] = v15;
  v21 = *(a2 + 48);
  v19 = v20;
  sub_1B4C56A48(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v17 = v12[6];
    sub_1B4C5631C(a1 + v17);
    sub_1B4C56384(v9, a1 + v17);
    result = (*(v22 + 56))(a1 + v17, 0, 1, v6);
    *(a1 + v12[7]) = *(a2 + 73);
    *(a1 + v12[9]) = *(a2 + 72);
  }

  return result;
}

uint64_t sub_1B4C56694(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  v12[2] = v1[2];
  v13[0] = v8;
  *(v13 + 10) = *(v1 + 58);
  v9 = v1[1];
  v12[0] = *v1;
  v12[1] = v9;
  v10 = sub_1B4C569F4();
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_1B4C56A48(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
    v4 = sub_1B4D17D6C();
    sub_1B4C56250(v7);
  }

  return v4;
}

__n128 sub_1B4C567D8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B26E94(a1, a2, v7);
  if (!v3)
  {
    v6 = v8[0];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 58) = *(v8 + 10);
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1B4C568B4()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[10] = *(v0 + 58);
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4C56A48(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4C569A0()
{
  result = qword_1EB8AD378;
  if (!qword_1EB8AD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD378);
  }

  return result;
}

unint64_t sub_1B4C569F4()
{
  result = qword_1EB8AD380;
  if (!qword_1EB8AD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD380);
  }

  return result;
}

uint64_t sub_1B4C56A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Moment.make(of:with:context:promptFormatter:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 96) = *a2;
  *(v8 + 64) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1B4C56B04, 0, 0);
}

uint64_t sub_1B4C56B04()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1B4C56BF4;
  v7 = *(v0 + 24);

  return sub_1B49CFA30(&unk_1B4D40FF0, v4, v7);
}

void sub_1B4C56BF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = *(v4 + 72);
    *(v4 + 88) = a1;

    MEMORY[0x1EEE6DFA0](sub_1B4C56D38, 0, 0);
  }
}

uint64_t sub_1B4C56D38()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 96);
  *(v2 + 8) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1B4C56D60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v6[9] = a6;
  v6[10] = v10;
  v6[7] = a2;
  v12 = swift_task_alloc();
  v6[11] = v12;
  *v12 = v6;
  v12[1] = sub_1B4C56E38;

  return static FactGenerating.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(v6 + 7, a3, a4, a5, v10, v11);
}

uint64_t sub_1B4C56E38(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4C56F38, 0, 0);
}

uint64_t sub_1B4C56F38()
{
  v41 = v1;
  v2 = v1[12];
  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD3C8, &unk_1B4D411E0);
  v4 = sub_1B4D18A7C();

  v36 = *(v4 + 16);
  if (v36)
  {
    v5 = 0;
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v34 = v4;
    v35 = v1;
    while (v5 < *(v4 + 16))
    {
      v8 = v1[9];
      sub_1B497558C(v6, (v1 + 2));
      v9 = v1[5];
      v10 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
      FactGenerating.makeFact(promptFormatter:)(v9, v10, v37);
      v11 = v1;
      v12 = v37[0];
      v13 = v37[1];
      v14 = v38;
      v16 = v39;
      v15 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v11 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B4A1EC78(0, *(v7 + 2) + 1, 1, v7);
      }

      v0 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v0 >= v17 >> 1)
      {
        v7 = sub_1B4A1EC78((v17 > 1), v0 + 1, 1, v7);
      }

      ++v5;
      *(v7 + 2) = v0 + 1;
      v18 = &v7[40 * v0];
      *(v18 + 4) = v12;
      *(v18 + 5) = v13;
      v18[48] = v14;
      *(v18 + 7) = v16;
      *(v18 + 8) = v15;
      v6 += 40;
      v1 = v35;
      v4 = v34;
      if (v36 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v19 = sub_1B4D17F6C();
    __swift_project_value_buffer(v19, qword_1EDC36F00);
    v20 = v0;
    v21 = sub_1B4D17F5C();
    v22 = sub_1B4D1871C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v1[10];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v24 = 136315394;
      v1[8] = v23;
      swift_getMetatypeMetadata();
      v27 = sub_1B4D181AC();
      v29 = sub_1B49558AC(v27, v28, v37);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      v30 = v0;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&dword_1B4953000, v21, v22, "Error while analyzing %s: %@", v24, 0x16u);
      sub_1B49E5EC0(v25);
      MEMORY[0x1B8C7DDA0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B8C7DDA0](v26, -1, -1);
      MEMORY[0x1B8C7DDA0](v24, -1, -1);
    }

    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_11:
  }

  v32 = v1[1];

  return v32(v7);
}

uint64_t sub_1B4C572C0(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B49D9398;

  return sub_1B4C56D60(a1, v4, v5, v6, v7, v8);
}

uint64_t static Moment.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B4A09B98(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4C573A8()
{
  if (*v0)
  {
    result = 0x7374636166;
  }

  else
  {
    result = 0x7954746E656D6F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B4C573E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7954746E656D6F6DLL && a2 == 0xEA00000000006570;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7374636166 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B4C574C4(uint64_t a1)
{
  v2 = sub_1B4C57720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C57500(uint64_t a1)
{
  v2 = sub_1B4C57720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Moment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD388, &unk_1B4D40FF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C57720();
  sub_1B4D18EFC();
  v15 = v9;
  v14 = 0;
  sub_1B4C57774();
  sub_1B4D18D0C();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC108, &qword_1B4D3A480);
    sub_1B4C57A8C(&qword_1EB8AD398, sub_1B4C577C8);
    sub_1B4D18D0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B4C57720()
{
  result = qword_1EDC36ED0;
  if (!qword_1EDC36ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36ED0);
  }

  return result;
}

unint64_t sub_1B4C57774()
{
  result = qword_1EB8AD390;
  if (!qword_1EB8AD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD390);
  }

  return result;
}

unint64_t sub_1B4C577C8()
{
  result = qword_1EB8AD3A0;
  if (!qword_1EB8AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3A0);
  }

  return result;
}

uint64_t Moment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD3A8, &qword_1B4D41008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C57720();
  sub_1B4D18EEC();
  if (!v2)
  {
    v16 = 0;
    sub_1B4C57A38();
    sub_1B4D18C0C();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC108, &qword_1B4D3A480);
    v15 = 1;
    sub_1B4C57A8C(&qword_1EB8AD3B0, sub_1B4C57B04);
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B4C57A38()
{
  result = qword_1EDC37680[0];
  if (!qword_1EDC37680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37680);
  }

  return result;
}

uint64_t sub_1B4C57A8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC108, &qword_1B4D3A480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4C57B04()
{
  result = qword_1EB8AD3B8;
  if (!qword_1EB8AD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3B8);
  }

  return result;
}

uint64_t sub_1B4C57B88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B4A09B98(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t static Moment.makeRandom(of:with:promptFormatter:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4C57BD8, 0, 0);
}

uint64_t sub_1B4C57BD8()
{
  v25 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v19 + 32);
      v6 = *v3;
      v7 = *(v3 - 1);
      static FactGenerating.makeRandomFact(promptFormatter:)(&v20);
      v8 = v20;
      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = v24;
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B4A1EC78(0, *(v4 + 2) + 1, 1, v4);
        }

        v14 = *(v4 + 2);
        v13 = *(v4 + 3);
        if (v14 >= v13 >> 1)
        {
          v4 = sub_1B4A1EC78((v13 > 1), v14 + 1, 1, v4);
        }

        *(v4 + 2) = v14 + 1;
        v15 = &v4[40 * v14];
        *(v15 + 4) = v8;
        *(v15 + 5) = v9;
        v15[48] = v10;
        *(v15 + 7) = v11;
        *(v15 + 8) = v12;
      }

      else
      {
        sub_1B4C57D50(v20, 0, v22, v23, v24);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v19 + 16);
  *v16 = *(v19 + 40);
  *(v16 + 8) = v4;
  v17 = *(v19 + 8);

  return v17();
}

void sub_1B4C57D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_1B49DDD2C(a4, a5);
  }
}

unint64_t sub_1B4C57DC0()
{
  result = qword_1EB8AD3C0;
  if (!qword_1EB8AD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3C0);
  }

  return result;
}

unint64_t sub_1B4C57E18()
{
  result = qword_1EDC36EC0;
  if (!qword_1EDC36EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EC0);
  }

  return result;
}

unint64_t sub_1B4C57E70()
{
  result = qword_1EDC36EC8;
  if (!qword_1EDC36EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EC8);
  }

  return result;
}

uint64_t FitnessContextQueryRequest.init(identifier:query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for FitnessContextQueryRequest() + 20);

  return sub_1B4A22C1C(a3, v5);
}

uint64_t type metadata accessor for FitnessContextQueryRequest()
{
  result = qword_1EB8AD3D8;
  if (!qword_1EB8AD3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FitnessContextQueryRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FitnessContextQueryRequest.queryDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryRequest() + 20);

  return sub_1B49EEFF0(v3, a1);
}

uint64_t static FitnessContextQueryRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FitnessContextQueryRequest() + 20);

  return _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t FitnessContextQueryRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1B4D1820C();
  v5 = v1 + *(type metadata accessor for FitnessContextQueryRequest() + 20);
  return FitnessContextQueryDescriptor.hash(into:)(a1);
}

uint64_t FitnessContextQueryRequest.hashValue.getter()
{
  sub_1B4D18E8C();
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D1820C();
  v3 = v0 + *(type metadata accessor for FitnessContextQueryRequest() + 20);
  FitnessContextQueryDescriptor.hash(into:)(v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C580E8(uint64_t a1)
{
  sub_1B4D18E8C();
  v3 = *v1;
  v4 = v1[1];
  sub_1B4D1820C();
  v5 = v1 + *(a1 + 20);
  FitnessContextQueryDescriptor.hash(into:)(v7);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C58140(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  sub_1B4D1820C();
  v7 = v2 + *(a2 + 20);
  return FitnessContextQueryDescriptor.hash(into:)(a1);
}

uint64_t sub_1B4C58184(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  v4 = *v2;
  v5 = v2[1];
  sub_1B4D1820C();
  v6 = v2 + *(a2 + 20);
  FitnessContextQueryDescriptor.hash(into:)(v8);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C581D8(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

unint64_t sub_1B4C58260()
{
  result = qword_1EB8AD3D0;
  if (!qword_1EB8AD3D0)
  {
    type metadata accessor for FitnessContextQueryRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3D0);
  }

  return result;
}

uint64_t sub_1B4C582E0()
{
  result = type metadata accessor for FitnessContextQueryDescriptor();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void DatabasePropertyRecord.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v39 - v18;
  v20 = *a1;
  v21 = a1[1];
  if (v21 < *a1)
  {
    __break(1u);
  }

  else
  {
    v39 = v19;
    v40 = v17;
    v41 = v14;
    v42 = v16;
    v43 = v15;
    v44 = AssociatedTypeWitness;
    *a4 = v20;
    *(a4 + 1) = v21;
    v22 = a1[2];
    v23 = a1[3];
    v24 = type metadata accessor for DatabasePropertyRecord();
    v25 = &a4[v24[10]];
    *v25 = v22;
    *(v25 + 1) = v23;
    v27 = a1[4];
    v26 = a1[5];
    v28 = &a4[v24[11]];
    *v28 = v27;
    v28[1] = v26;
    v46 = v28;
    v29 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 40);
    v30 = *v29;
    v31 = v29[8] == 0;
    v32 = 5;
    if (v31)
    {
      v32 = v30;
    }

    *&a4[v24[12]] = v32;

    sub_1B498FC0C(v27, v26);
    sub_1B4C586E0(a1, a2, a3, v45);
    if (!v4)
    {
      v34 = v43;
      v33 = v44;
      if (swift_dynamicCast())
      {
        sub_1B4C59CF4(a1, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
        v35 = v33;
        v36 = v42;
        (*(v42 + 56))(v34, 0, 1, v35);
        v37 = *(v36 + 32);
        v38 = v39;
        v37(v39, v34, v35);
        v37(&a4[v24[9]], v38, v35);
        return;
      }

      (*(v42 + 56))(v34, 1, 1, v33);
      (*(v40 + 8))(v34, v41);
      _s7FailureOMa_18();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
    }

    sub_1B4C59CF4(a1, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);

    sub_1B49DDD2C(*v46, v46[1]);
  }
}

uint64_t sub_1B4C586E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v49 = a3;
  v48 = a2;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v45 - v31;
  v33 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4C59C1C(a1 + *(v33 + 32), v32);
  v34 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v34 - 8) + 48))(v32, 1, v34) != 1)
  {
    sub_1B4C59C1C(v32, v29);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B4C59BB4(v29, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        sub_1B4C59C8C(v25, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        v36 = v46;
        v37 = v47;
        *(v47 + 24) = &type metadata for RingsPropertyDimensions;
        RingsPropertyDimensions.init(_:)(v22, v37);
        sub_1B4C59CF4(v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        if (!v36)
        {
          return sub_1B4C59B4C(v32);
        }

        v38 = v37;
LABEL_11:
        __swift_deallocate_boxed_opaque_existential_1(v38);
        return sub_1B4C59B4C(v32);
      }

      sub_1B4C59BB4(v29, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4C59C8C(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v39 = v47;
      *(v47 + 24) = &type metadata for FitnessPlusPropertyDimensions;
      v42 = swift_allocObject();
      *v39 = v42;
      v43 = v46;
      FitnessPlusPropertyDimensions.init(_:)(v8, v42 + 16);
      sub_1B4C59CF4(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      if (!v43)
      {
        return sub_1B4C59B4C(v32);
      }
    }

    else
    {
      sub_1B4C59BB4(v29, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4C59C8C(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v39 = v47;
      *(v47 + 24) = &type metadata for WorkoutPropertyDimensions;
      v40 = swift_allocObject();
      *v39 = v40;
      v41 = v46;
      WorkoutPropertyDimensions.init(_:)(v15, v40 + 16);
      sub_1B4C59CF4(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      if (!v41)
      {
        return sub_1B4C59B4C(v32);
      }
    }

    v38 = v39;
    goto LABEL_11;
  }

  _s7FailureOMa_18();
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  return sub_1B4C59B4C(v32);
}

uint64_t DatabasePropertyRecord.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v3 = *(a1 + 16);
  sub_1B4C59A88(qword_1EDC3B9B8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C58C54(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v51 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v8 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v53 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v44 - v16;
  *a1 = *a2;
  v44[1] = a3;
  v44[2] = a4;
  v18 = type metadata accessor for DatabasePropertyRecord();
  v19 = (a2 + v18[10]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(a1 + 24);

  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  v23 = (a2 + v18[11]);
  v25 = *v23;
  v24 = v23[1];
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  sub_1B498FC0C(*v23, v24);
  sub_1B49DDD2C(v26, v27);
  *(a1 + 32) = v25;
  *(a1 + 40) = v24;
  v28 = *(a2 + v18[12]);
  v29 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v30 = a1 + *(v29 + 40);
  *v30 = v28;
  *(v30 + 8) = 0;
  v31 = v18[9];
  v32 = v53;
  v33 = *(v53 + 32);
  v34 = swift_checkMetadataState();
  v35 = v54;
  result = v33(v34, v32);
  if (!v35)
  {
    v37 = a1;
    v38 = v50;
    v39 = v46;
    v40 = v47;
    v41 = v45;
    v54 = 0;
    if (swift_dynamicCast())
    {
      v42 = *(v29 + 32);
      sub_1B4C59B4C(v37 + v42);
      sub_1B4C59BB4(v52, v37 + v42, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      v43 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    }

    else if (swift_dynamicCast())
    {
      v42 = *(v29 + 32);
      sub_1B4C59B4C(v37 + v42);
      sub_1B4C59BB4(v40, v37 + v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v43 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        _s7FailureOMa_18();
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        return (*(v41 + 8))(v17, v39);
      }

      v42 = *(v29 + 32);
      sub_1B4C59B4C(v37 + v42);
      sub_1B4C59BB4(v38, v37 + v42, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v43 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v43 - 8) + 56))(v37 + v42, 0, 1, v43);
    return (*(v41 + 8))(v17, v39);
  }

  return result;
}

uint64_t *DatabasePropertyBatch.init(_:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (result[1] < *result)
  {
    __break(1u);
  }

  else
  {
    v16 = result[1];
    v17 = a2;
    v18 = &v16;
    v19[2] = result[2];
    MEMORY[0x1EEE9AC00](result);
    v15[2] = v4;
    v15[3] = v5;
    v7 = v6;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8AD3E8, &qword_1B4D41290);
    v9 = type metadata accessor for DatabasePropertyRecord();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    v11 = sub_1B4C594D4();
    v12 = sub_1B498D2F0(sub_1B4C594B4, v15, v8, v9, v10, v11, MEMORY[0x1E69E7288], v19);
    sub_1B4C59CF4(v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch);

    if (!v2)
    {
      v14 = v16;
      v13 = v17;
      *v17 = v3;
      v13[1] = v14;
      v13[2] = v12;
    }
  }

  return result;
}

void sub_1B4C593DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B4C59C8C(a1, v14, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
  DatabasePropertyRecord.init(_:)(v14, a2, a3, a5);
  if (v5)
  {
    *a4 = v5;
  }
}

unint64_t sub_1B4C594D4()
{
  result = qword_1EDC36E38;
  if (!qword_1EDC36E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB8AD3E8, &qword_1B4D41290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36E38);
  }

  return result;
}

uint64_t DatabasePropertyBatch.protobuf()(uint64_t a1)
{
  v5 = *v1;
  v3 = *(v1 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch(0);
  v6 = *(a1 + 16);
  sub_1B4C59A88(qword_1EDC3BDB8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C59600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  v16[2] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  type metadata accessor for DatabasePropertyRecord();
  v8 = sub_1B4D184BC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(sub_1B4C59B24, v15, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v16);

  if (!v6)
  {
    v14 = a1[2];

    a1[2] = v12;
  }

  return result;
}

uint64_t sub_1B4C597E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = type metadata accessor for DatabasePropertyRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  *&v17 = a2;
  *(&v17 + 1) = a3;
  DatabasePropertyRecord.with(cacheIndexRange:)(&v17, v11, &v17 - v14);
  DatabasePropertyRecord.protobuf()(v11);
  result = (*(v12 + 8))(v15, v11);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_1B4C59A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1B4C59AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return DatabasePropertyBatch.init(_:)(a1, a3);
}

uint64_t sub_1B4C59B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C59BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C59C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C59C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C59CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static WorkoutLocation.placemark(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C016C;

  return sub_1B4C5A3A4(a1);
}

void sub_1B4C59DFC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD470, &qword_1B4D41428);
    sub_1B4D1851C();
  }

  else
  {
    sub_1B4C5A9B0();
    sub_1B4D183FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD470, &qword_1B4D41428);
    sub_1B4D1852C();
  }
}

uint64_t static WorkoutLocation.locationCountryName(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4C59F5C;

  return sub_1B4C5A3A4(a1);
}

uint64_t sub_1B4C59F5C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4C5A05C, 0, 0);
}

uint64_t sub_1B4C5A05C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) country];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B4D1818C();
      v6 = v5;

      v7 = v6;
      v8 = v4;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v7 = 0;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v8, v7);
}

uint64_t static WorkoutLocation.locationName(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4C5A1B8;

  return sub_1B4C5A3A4(a1);
}

uint64_t sub_1B4C5A1B8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4C5A2B8, 0, 0);
}

uint64_t sub_1B4C5A2B8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) locality];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B4D1818C();
      v6 = v5;

LABEL_6:
      v10 = v6;
      v11 = v4;
      goto LABEL_9;
    }

    v7 = [v1 name];
    if (v7)
    {
      v8 = v7;
      v4 = sub_1B4D1818C();
      v6 = v9;

      goto LABEL_6;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_9:
  v12 = *(v0 + 8);

  return v12(v11, v10);
}

uint64_t sub_1B4C5A3A4(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD470, &qword_1B4D41428);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C5A470, 0, 0);
}

uint64_t sub_1B4C5A470()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  v0[23] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 104))(v3, v4);
  v0[24] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[21];
    v8 = v0[22];
    v9 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1B4C5A6E8;
    swift_continuation_init();
    v0[17] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD478, &qword_1B4D41430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    sub_1B4D1850C();
    (*(v7 + 32))(boxed_opaque_existential_1, v8, v9);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1B4C59DFC;
    v0[13] = &block_descriptor_1;
    [v2 reverseGeocodeLocation:v6 completionHandler:?];
    (*(v7 + 8))(boxed_opaque_existential_1, v9);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v11 = v0[22];

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_1B4C5A6E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1B4C5A8F4;
  }

  else
  {
    v3 = sub_1B4C5A7F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4C5A7F8()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = *(v0 + 144);
    }

    result = sub_1B4D18ABC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = *(v0 + 192);

    v4 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C7CD90](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);

LABEL_11:
  v9 = *(v0 + 176);

  v10 = *(v0 + 8);

  return v10(v4);
}

uint64_t sub_1B4C5A8F4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[22];

  v5 = v0[1];

  return v5(0);
}

unint64_t sub_1B4C5A9B0()
{
  result = qword_1EB8AD480;
  if (!qword_1EB8AD480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8AD480);
  }

  return result;
}

uint64_t sub_1B4C5A9FC(void *a1)
{
  a1[1] = sub_1B4C5AA88(&qword_1EB8AD488);
  a1[2] = sub_1B4C5AA88(&qword_1EB8AD490);
  result = sub_1B4C5AA88(&qword_1EB8AD498);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4C5AA88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C5AACC()
{
  v0 = sub_1B4D173DC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B4C5AA88(&qword_1EB8AD498);
  v3 = sub_1B4D173BC();

  return v3;
}

uint64_t sub_1B4C5AB70(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4D173AC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4C5AA88(&qword_1EB8AD490);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t VitalsFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t VitalsFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000065;
  }

  else
  {
    result = 0xD000000000000044;
  }

  *v0;
  return result;
}

uint64_t sub_1B4C5ACE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000065;
  }

  else
  {
    v4 = 0xD000000000000044;
  }

  if (v3)
  {
    v5 = "";
  }

  else
  {
    v5 = "eir normal baseline.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000065;
  }

  else
  {
    v7 = 0xD000000000000044;
  }

  if (*a2)
  {
    v8 = "eir normal baseline.";
  }

  else
  {
    v8 = "";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4C5AD98()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5AE1C()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C5AE8C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5AF0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

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

void sub_1B4C5AF6C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000065;
  }

  else
  {
    v2 = 0xD000000000000044;
  }

  if (*v1)
  {
    v3 = "eir normal baseline.";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t VitalsFact.placeholders()()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1A800;
  v8 = *(v1 + 16);
  v3 = sub_1B4D18D5C();
  v5 = v4;
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000001B4D640A0;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v2 + 48) = sub_1B4993DFC;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  return v2;
}

uint64_t sub_1B4C5B0B0()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1A800;
  v8 = *(v1 + 16);
  v3 = sub_1B4D18D5C();
  v5 = v4;
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000001B4D640A0;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v2 + 48) = sub_1B4994004;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  return v2;
}

unint64_t sub_1B4C5B1A4()
{
  result = qword_1EB8AD4A0;
  if (!qword_1EB8AD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4A0);
  }

  return result;
}

unint64_t sub_1B4C5B1FC()
{
  result = qword_1EB8AD4A8;
  if (!qword_1EB8AD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD4B0, &qword_1B4D41528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4A8);
  }

  return result;
}

unint64_t sub_1B4C5B264()
{
  result = qword_1EB8AD4B8;
  if (!qword_1EB8AD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4B8);
  }

  return result;
}

unint64_t sub_1B4C5B2BC()
{
  result = qword_1EB8AD4C0;
  if (!qword_1EB8AD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4C0);
  }

  return result;
}

unint64_t sub_1B4C5B310(uint64_t a1)
{
  result = sub_1B4C5B338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C5B338()
{
  result = qword_1EB8AD4C8;
  if (!qword_1EB8AD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4C8);
  }

  return result;
}

uint64_t InferenceDevice.rawValue.getter()
{
  if (*v0)
  {
    return 0x6863746177;
  }

  else
  {
    return 0x656E6F6870;
  }
}

FitnessIntelligence::InferenceDevice_optional __swiftcall InferenceDevice.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

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

uint64_t sub_1B4C5B438(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6863746177;
  }

  else
  {
    v2 = 0x656E6F6870;
  }

  if (*a2)
  {
    v3 = 0x6863746177;
  }

  else
  {
    v3 = 0x656E6F6870;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B4D18DCC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1B4C5B4BC()
{
  result = qword_1EB8AD4D0;
  if (!qword_1EB8AD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4D0);
  }

  return result;
}

uint64_t sub_1B4C5B510()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5B580()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C5B5D4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5B640@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

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

void sub_1B4C5B6A0(uint64_t *a1@<X8>)
{
  v2 = 0x656E6F6870;
  if (*v1)
  {
    v2 = 0x6863746177;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

unint64_t sub_1B4C5B6D4()
{
  result = qword_1EB8AD4D8;
  if (!qword_1EB8AD4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD4E0, &qword_1B4D41640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4D8);
  }

  return result;
}

uint64_t sub_1B4C5B758(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1B4C5B7F8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for DistanceSampleIntervalRecord() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t static WorkoutInsight.bestDurationForKilometerCount(_:workout:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = sub_1B4D174EC();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B4D1777C();
  v10 = *(v57 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 56))(v16, v17);
  v19 = [v18 effectiveTypeIdentifier];

  v20 = vdupq_n_s64(v19);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CBD5F0, v20), vceqq_s64(unk_1F2CBD600, v20)))) & 1) != 0 || qword_1F2CBD610 == v19 || qword_1F2CBD618 == v19)
  {
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    (*(v22 + 216))(v21, v22);
    sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
    v23 = sub_1B4D183EC();

    v24 = FISplitsForMeasuringSystemIdentifier();

    v25 = sub_1B4D183FC();
    if (v25 >> 62)
    {
      goto LABEL_39;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v26 < a1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v30 = 0.0;
      v50 = (v26 + 1);
      v51 = a3;
      v54 = v26 + 1 - a1;
      v55 = v25;
      if (v26 + 1 == a1)
      {
        break;
      }

      v32 = 0;
      v58 = v55 & 0xFFFFFFFFFFFFFF8;
      v59 = v55 & 0xC000000000000001;
      v33 = (v6 + 8);
      ++v10;
      v52 = a1;
      v53 = v55 + 8 * a1 + 24;
      v6 = 1;
      while (1)
      {
        v42 = (a1 + v32);
        if (!(a1 + v32))
        {
          break;
        }

        if (((v42 - 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v59)
        {
          v43 = MEMORY[0x1B8C7CD90]();
        }

        else
        {
          if ((v42 - 1) >= *(v58 + 16))
          {
            goto LABEL_37;
          }

          v43 = *(v53 + 8 * v32);
        }

        v44 = v43;
        a3 = v32 + 0x8000000000000000;
        v45 = [v43 dateInterval];

        sub_1B4D174AC();
        v25 = v9;
        sub_1B4D174BC();
        a1 = *v33;
        (*v33)(v9, v60);
        if (v32 == 0x8000000000000000)
        {
          goto LABEL_36;
        }

        if (v59)
        {
          v34 = MEMORY[0x1B8C7CD90](v32, v55);
        }

        else
        {
          if (v32 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v34 = *(v55 + 8 * v32 + 32);
        }

        v35 = v34;
        v36 = [v34 dateInterval];

        sub_1B4D174AC();
        v37 = v56;
        sub_1B4D174DC();
        (a1)(v9, v60);
        sub_1B4D176FC();
        v39 = fabs(v38);
        v25 = *v10;
        v40 = v37;
        a3 = v57;
        (*v10)(v40, v57);
        (v25)(v15, a3);
        if (v6)
        {
          v41 = v39;
        }

        else
        {
          v41 = v30;
        }

        if (v39 >= v41)
        {
          v30 = v41;
        }

        else
        {
          v30 = v39;
        }

        ++v32;
        v6 = 0;
        a1 = v52;
        if (v54 == v32)
        {
          goto LABEL_12;
        }
      }

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
      v26 = sub_1B4D18ABC();
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }
    }

LABEL_12:

    if (v50 == a1)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      return (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
    }

    else
    {
      v46 = [objc_opt_self() seconds];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v47 = v51;
      sub_1B4D1741C();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    }
  }

  else
  {
LABEL_8:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v28 = *(*(v27 - 8) + 56);

    return v28(a3, 1, 1, v27);
  }
}

void sub_1B4C5BEBC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1B49E9CA4(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4987444(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_1B49E9CA4(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_1B498A26C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v7 = *v6;
      v8 = *(v6 - 8);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_1B49E9CA4(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B4987444(v31, 1);
        v32 = *a3;
        v27 = sub_1B49E9CA4(v8);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v8;
      *(v34[7] + 8 * v27) = v7;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B4C5C220(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DistanceSampleIntervalRecord() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1B4CDE540(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1B4C5C664(v10, a2, a3);
  *a1 = v7;
  return result;
}

void sub_1B4C5C308(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D40, &unk_1B4D20210);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1B4C5C4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1B4C5C664(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1B4D18D4C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DistanceSampleIntervalRecord();
        v10 = sub_1B4D1844C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for DistanceSampleIntervalRecord() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1B4C5C7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v110 = a4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v102 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v83[-v9];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v114 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v83[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v83[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v83[-v20];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v21 = *(v98 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v83[-v25];
  v115 = type metadata accessor for DistanceSampleIntervalRecord();
  v26 = *(v115 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v92 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v103 = &v83[-v32];
  v89 = a3;
  v85 = a2;
  if (a3 != a2)
  {
    v33 = v31;
    v34 = *v110;
    v35 = objc_opt_self();
    v109 = (v10 + 8);
    v110 = v35;
    v36 = *(v26 + 72);
    v94 = (v7 + 8);
    v108 = (v14 + 8);
    v93 = (v21 + 8);
    v37 = v34 + v36 * (v89 - 1);
    v90 = -v36;
    v38 = a1 - v89;
    v91 = v34;
    v84 = v36;
    v39 = v34 + v36 * v89;
    v96 = v13;
    v95 = v33;
LABEL_5:
    v86 = v39;
    v87 = v38;
    v88 = v37;
    v40 = v115;
    v41 = v103;
    while (1)
    {
      v106 = v38;
      v107 = v39;
      sub_1B4C63E94(v39, v41, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63E94(v37, v33, type metadata accessor for DistanceSampleIntervalRecord);
      v42 = *(v40 + 28);
      v43 = [v110 meters];
      v45 = v113;
      v44 = v114;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v47 = v46;
      v105 = *v109;
      v105(v45, v44);
      if (v47 > 0.0)
      {
        v48 = *(v40 + 32);
        v49 = [objc_opt_self() seconds];
        v51 = v101;
        v50 = v102;
        sub_1B4D1745C();

        sub_1B4D1742C();
        (*v94)(v51, v50);
      }

      v52 = v99;
      if (qword_1EDC36E80 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDC36E88;
      v54 = type metadata accessor for UnitPace();
      v55 = v53;
      v104 = v54;
      sub_1B4D1741C();
      if (qword_1EDC36E80 != -1)
      {
        swift_once();
      }

      v56 = v112;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v57 = *v108;
      (*v108)(v56, v13);
      v58 = [objc_opt_self() metersPerSecond];
      sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
      sub_1B4D1741C();
      v57(v52, v13);
      v59 = *(v115 + 28);
      v60 = [v110 meters];
      v61 = v95;
      v63 = v113;
      v62 = v114;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v65 = v64;
      v105(v63, v62);
      if (v65 > 0.0)
      {
        v66 = *(v115 + 32);
        v67 = [objc_opt_self() seconds];
        v68 = v101;
        v69 = v102;
        sub_1B4D1745C();

        sub_1B4D1742C();
        (*v94)(v68, v69);
      }

      v70 = v55;
      v71 = v100;
      sub_1B4D1741C();
      v72 = v112;
      v13 = v96;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v57(v72, v13);
      v73 = [objc_opt_self() metersPerSecond];
      v74 = v97;
      sub_1B4D1741C();
      v57(v71, v13);
      sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
      v75 = v111;
      v76 = v98;
      v77 = sub_1B4D180EC();
      v78 = *v93;
      (*v93)(v74, v76);
      v78(v75, v76);
      sub_1B4C63EFC(v61, type metadata accessor for DistanceSampleIntervalRecord);
      v41 = v103;
      sub_1B4C63EFC(v103, type metadata accessor for DistanceSampleIntervalRecord);
      v40 = v115;
      v33 = v61;
      v80 = v106;
      v79 = v107;
      if ((v77 & 1) == 0)
      {
LABEL_4:
        v37 = v88 + v84;
        v38 = v87 - 1;
        v39 = v86 + v84;
        if (++v89 == v85)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v91)
      {
        break;
      }

      v81 = v92;
      sub_1B4C63F5C(v107, v92, type metadata accessor for DistanceSampleIntervalRecord);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B4C63F5C(v81, v37, type metadata accessor for DistanceSampleIntervalRecord);
      v37 += v90;
      v39 = v79 + v90;
      v82 = __CFADD__(v80, 1);
      v38 = v80 + 1;
      if (v82)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4C5D1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for DistanceSampleIntervalRecord();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v30 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v18 = *(v8 + 72);
    v19 = v17 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v35 = v17;
    v29 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v21;
    v24 = v38;
    while (1)
    {
      sub_1B4C63E94(v22, v16, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63E94(v19, v13, type metadata accessor for DistanceSampleIntervalRecord);
      v25 = *(v24 + 32);
      sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      LOBYTE(v25) = sub_1B4D180FC();
      sub_1B4C63EFC(v13, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63EFC(v16, type metadata accessor for DistanceSampleIntervalRecord);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_1B4C63F5C(v22, v36, type metadata accessor for DistanceSampleIntervalRecord);
      v24 = v38;
      swift_arrayInitWithTakeFrontToBack();
      sub_1B4C63F5C(v26, v19, type metadata accessor for DistanceSampleIntervalRecord);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4C5D468(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v227 = a4;
  v228 = a1;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(v257 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v257);
  v256 = &v222 - v7;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v271 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v270 = &v222 - v10;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v11 = *(v269 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v252 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v251 = &v222 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v237 = &v222 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v268 = &v222 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v236 = &v222 - v21;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v22 = *(v259 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v250 = &v222 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v265 = &v222 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v235 = &v222 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v244 = &v222 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v224 = &v222 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v223 = &v222 - v34;
  v35 = type metadata accessor for DistanceSampleIntervalRecord();
  v240 = *(v35 - 8);
  v36 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v232 = &v222 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v249 = &v222 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v222 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v222 - v44;
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  v239 = &v222 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v226 = &v222 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v225 = &v222 - v53;
  v242 = a3;
  v54 = a3[1];
  if (v54 < 1)
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v114 = *v228;
    if (!*v228)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v273 = v56;
      v217 = *(v56 + 2);
      if (v217 >= 2)
      {
        while (*v242)
        {
          v218 = *&v56[16 * v217];
          v219 = *&v56[16 * v217 + 24];
          v220 = v246;
          sub_1B4C5F670(&(*v242)[*(v240 + 72) * v218], &(*v242)[*(v240 + 72) * *&v56[16 * v217 + 16]], &(*v242)[*(v240 + 72) * v219], v114);
          v246 = v220;
          if (v220)
          {
            goto LABEL_122;
          }

          if (v219 < v218)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1B4CDDE84(v56);
          }

          if (v217 - 2 >= *(v56 + 2))
          {
            goto LABEL_138;
          }

          v221 = &v56[16 * v217];
          *v221 = v218;
          *(v221 + 1) = v219;
          v273 = v56;
          sub_1B4CDDDF8(v217 - 1);
          v56 = v273;
          v217 = *(v273 + 2);
          if (v217 <= 1)
          {
            goto LABEL_122;
          }
        }

        goto LABEL_148;
      }

LABEL_122:

      return;
    }

LABEL_144:
    v56 = sub_1B4CDDE84(v56);
    goto LABEL_114;
  }

  v243 = v52;
  v258 = (v22 + 8);
  v267 = (v8 + 8);
  v55 = 0;
  v253 = (v5 + 8);
  v266 = (v11 + 8);
  v56 = MEMORY[0x1E69E7CC0];
  v272 = v35;
  v254 = v42;
  v255 = v45;
  while (1)
  {
    v57 = v55;
    v241 = v56;
    if (v55 + 1 >= v54)
    {
      v114 = v55 + 1;
      v113 = v227;
    }

    else
    {
      v245 = v54;
      v58 = *(v240 + 72);
      v59 = &(*v242)[v58 * (v55 + 1)];
      v263 = *v242;
      v264 = v59;
      v60 = v58;
      v260 = v58;
      v61 = v263;
      v229 = v57;
      sub_1B4C63E94(v59, v225, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63E94(v61 + v60 * v57, v226, type metadata accessor for DistanceSampleIntervalRecord);
      v62 = v223;
      DistanceSampleIntervalRecord.speed.getter();
      v63 = v224;
      DistanceSampleIntervalRecord.speed.getter();
      v64 = sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
      v65 = v259;
      v247 = v64;
      LODWORD(v248) = sub_1B4D180EC();
      v66 = *v258;
      (*v258)(v63, v65);
      v67 = v62;
      v68 = v264;
      v238 = v66;
      (v66)(v67, v65);
      sub_1B4C63EFC(v226, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63EFC(v225, type metadata accessor for DistanceSampleIntervalRecord);
      v69 = v229 + 2;
      v70 = &v263[v260 * (v229 + 2)];
      v71 = v239;
      while (v245 != v69)
      {
        v263 = v70;
        sub_1B4C63E94(v70, v71, type metadata accessor for DistanceSampleIntervalRecord);
        v264 = v68;
        sub_1B4C63E94(v68, v243, type metadata accessor for DistanceSampleIntervalRecord);
        v83 = *(v35 + 28);
        v84 = objc_opt_self();
        v85 = [v84 meters];
        v87 = v270;
        v86 = v271;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v89 = v88;
        v262 = *v267;
        v262(v87, v86);
        if (v89 > 0.0)
        {
          v90 = *(v35 + 32);
          v91 = [objc_opt_self() seconds];
          v93 = v256;
          v92 = v257;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v253)(v93, v92);
        }

        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v94 = qword_1EDC36E88;
        v95 = type metadata accessor for UnitPace();
        v96 = v94;
        v97 = v236;
        v261 = v95;
        sub_1B4D1741C();
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v99 = v268;
        v98 = v269;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v100 = *v266;
        (*v266)(v99, v98);
        v101 = [objc_opt_self() metersPerSecond];
        sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
        sub_1B4D1741C();
        v100(v97, v98);
        v102 = *(v272 + 28);
        v103 = [v84 meters];
        v104 = v243;
        v106 = v270;
        v105 = v271;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v108 = v107;
        v262(v106, v105);
        if (v108 > 0.0)
        {
          v109 = *(v272 + 32);
          v110 = [objc_opt_self() seconds];
          v111 = v256;
          v112 = v257;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v253)(v111, v112);
        }

        v72 = v96;
        v73 = v237;
        sub_1B4D1741C();
        v75 = v268;
        v74 = v269;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v100(v75, v74);
        v76 = [objc_opt_self() metersPerSecond];
        v77 = v235;
        sub_1B4D1741C();
        v100(v73, v74);
        v78 = v244;
        v79 = v259;
        v80 = sub_1B4D180EC() & 1;
        v81 = v77;
        v82 = v238;
        (v238)(v81, v79);
        v82(v78, v79);
        sub_1B4C63EFC(v104, type metadata accessor for DistanceSampleIntervalRecord);
        v71 = v239;
        sub_1B4C63EFC(v239, type metadata accessor for DistanceSampleIntervalRecord);
        ++v69;
        v70 = &v263[v260];
        v68 = &v264[v260];
        v56 = v241;
        v35 = v272;
        v42 = v254;
        if ((v248 & 1) != v80)
        {
          v114 = v69 - 1;
          goto LABEL_19;
        }
      }

      v114 = v245;
LABEL_19:
      v113 = v227;
      v45 = v255;
      v57 = v229;
      if (v248)
      {
        if (v114 < v229)
        {
          goto LABEL_141;
        }

        if (v229 < v114)
        {
          v115 = v114;
          v116 = v260 * (v114 - 1);
          v117 = v115 * v260;
          v245 = v115;
          v118 = v229;
          v119 = v229 * v260;
          do
          {
            if (v118 != --v115)
            {
              v120 = *v242;
              if (!*v242)
              {
                goto LABEL_147;
              }

              sub_1B4C63F5C(&v120[v119], v232, type metadata accessor for DistanceSampleIntervalRecord);
              if (v119 < v116 || &v120[v119] >= &v120[v117])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v119 != v116)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B4C63F5C(v232, &v120[v116], type metadata accessor for DistanceSampleIntervalRecord);
              v56 = v241;
            }

            ++v118;
            v116 -= v260;
            v117 -= v260;
            v119 += v260;
          }

          while (v118 < v115);
          v113 = v227;
          v45 = v255;
          v114 = v245;
          v57 = v229;
        }
      }
    }

    v121 = v242[1];
    if (v114 >= v121)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v114, v57))
    {
      goto LABEL_140;
    }

    if (v114 - v57 >= v113)
    {
LABEL_42:
      v55 = v114;
      if (v114 < v57)
      {
        goto LABEL_139;
      }

      goto LABEL_43;
    }

    if (__OFADD__(v57, v113))
    {
      goto LABEL_142;
    }

    if (v57 + v113 >= v121)
    {
      v122 = v242[1];
    }

    else
    {
      v122 = v57 + v113;
    }

    if (v122 < v57)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v114 == v122)
    {
      goto LABEL_42;
    }

    v169 = *v242;
    v264 = objc_opt_self();
    v170 = *(v240 + 72);
    v171 = &v169[v170 * (v114 - 1)];
    v247 = -v170;
    v229 = v57;
    v172 = v57 - v114;
    v248 = v169;
    v230 = v170;
    v173 = &v169[v114 * v170];
    v231 = v122;
LABEL_95:
    v245 = v114;
    v233 = v173;
    v234 = v172;
    v174 = v172;
    v238 = v171;
    v175 = v171;
LABEL_96:
    v260 = v174;
    sub_1B4C63E94(v173, v45, type metadata accessor for DistanceSampleIntervalRecord);
    sub_1B4C63E94(v175, v42, type metadata accessor for DistanceSampleIntervalRecord);
    v176 = *(v35 + 28);
    v177 = [v264 meters];
    v179 = v270;
    v178 = v271;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v181 = v180;
    v263 = *v267;
    (v263)(v179, v178);
    if (v181 > 0.0)
    {
      v182 = *(v35 + 32);
      v183 = [objc_opt_self() seconds];
      v185 = v256;
      v184 = v257;
      sub_1B4D1745C();

      sub_1B4D1742C();
      (*v253)(v185, v184);
    }

    v186 = v251;
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v187 = qword_1EDC36E88;
    v188 = type metadata accessor for UnitPace();
    v189 = v187;
    v262 = v188;
    sub_1B4D1741C();
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v191 = v268;
    v190 = v269;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v192 = *v266;
    (*v266)(v191, v190);
    v193 = [objc_opt_self() metersPerSecond];
    v261 = sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v192(v186, v190);
    v194 = *(v272 + 28);
    v195 = [v264 meters];
    v42 = v254;
    v196 = v270;
    v197 = v271;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v199 = v198;
    (v263)(v196, v197);
    if (v199 > 0.0)
    {
      v200 = *(v272 + 32);
      v201 = [objc_opt_self() seconds];
      v203 = v256;
      v202 = v257;
      sub_1B4D1745C();

      sub_1B4D1742C();
      (*v253)(v203, v202);
    }

    v204 = v189;
    v205 = v252;
    sub_1B4D1741C();
    v207 = v268;
    v206 = v269;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v192(v207, v206);
    v208 = [objc_opt_self() metersPerSecond];
    v209 = v250;
    sub_1B4D1741C();
    v192(v205, v206);
    sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
    v210 = v265;
    v211 = v259;
    v212 = sub_1B4D180EC();
    v213 = *v258;
    (*v258)(v209, v211);
    v213(v210, v211);
    sub_1B4C63EFC(v42, type metadata accessor for DistanceSampleIntervalRecord);
    v45 = v255;
    sub_1B4C63EFC(v255, type metadata accessor for DistanceSampleIntervalRecord);
    if (v212)
    {
      break;
    }

    v35 = v272;
LABEL_94:
    v114 = v245 + 1;
    v171 = &v238[v230];
    v172 = v234 - 1;
    v173 = v233 + v230;
    v55 = v231;
    if (v245 + 1 != v231)
    {
      goto LABEL_95;
    }

    v56 = v241;
    v57 = v229;
    if (v231 < v229)
    {
      goto LABEL_139;
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1B4A1D58C(0, *(v56 + 2) + 1, 1, v56);
    }

    v114 = *(v56 + 2);
    v123 = *(v56 + 3);
    v124 = v114 + 1;
    if (v114 >= v123 >> 1)
    {
      v56 = sub_1B4A1D58C((v123 > 1), v114 + 1, 1, v56);
    }

    *(v56 + 2) = v124;
    v125 = &v56[16 * v114];
    *(v125 + 4) = v57;
    *(v125 + 5) = v55;
    v126 = *v228;
    if (!*v228)
    {
      goto LABEL_149;
    }

    if (v114)
    {
      while (2)
      {
        v127 = v124 - 1;
        if (v124 >= 4)
        {
          v132 = &v56[16 * v124 + 32];
          v133 = *(v132 - 64);
          v134 = *(v132 - 56);
          v138 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          if (v138)
          {
            goto LABEL_126;
          }

          v137 = *(v132 - 48);
          v136 = *(v132 - 40);
          v138 = __OFSUB__(v136, v137);
          v130 = v136 - v137;
          v131 = v138;
          if (v138)
          {
            goto LABEL_127;
          }

          v139 = &v56[16 * v124];
          v141 = *v139;
          v140 = *(v139 + 1);
          v138 = __OFSUB__(v140, v141);
          v142 = v140 - v141;
          if (v138)
          {
            goto LABEL_129;
          }

          v138 = __OFADD__(v130, v142);
          v143 = v130 + v142;
          if (v138)
          {
            goto LABEL_132;
          }

          if (v143 >= v135)
          {
            v161 = &v56[16 * v127 + 32];
            v163 = *v161;
            v162 = *(v161 + 1);
            v138 = __OFSUB__(v162, v163);
            v164 = v162 - v163;
            if (v138)
            {
              goto LABEL_136;
            }

            if (v130 < v164)
            {
              v127 = v124 - 2;
            }
          }

          else
          {
LABEL_62:
            if (v131)
            {
              goto LABEL_128;
            }

            v144 = &v56[16 * v124];
            v146 = *v144;
            v145 = *(v144 + 1);
            v147 = __OFSUB__(v145, v146);
            v148 = v145 - v146;
            v149 = v147;
            if (v147)
            {
              goto LABEL_131;
            }

            v150 = &v56[16 * v127 + 32];
            v152 = *v150;
            v151 = *(v150 + 1);
            v138 = __OFSUB__(v151, v152);
            v153 = v151 - v152;
            if (v138)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v148, v153))
            {
              goto LABEL_135;
            }

            if (v148 + v153 < v130)
            {
              goto LABEL_76;
            }

            if (v130 < v153)
            {
              v127 = v124 - 2;
            }
          }
        }

        else
        {
          if (v124 == 3)
          {
            v128 = *(v56 + 4);
            v129 = *(v56 + 5);
            v138 = __OFSUB__(v129, v128);
            v130 = v129 - v128;
            v131 = v138;
            goto LABEL_62;
          }

          v154 = &v56[16 * v124];
          v156 = *v154;
          v155 = *(v154 + 1);
          v138 = __OFSUB__(v155, v156);
          v148 = v155 - v156;
          v149 = v138;
LABEL_76:
          if (v149)
          {
            goto LABEL_130;
          }

          v157 = &v56[16 * v127];
          v159 = *(v157 + 4);
          v158 = *(v157 + 5);
          v138 = __OFSUB__(v158, v159);
          v160 = v158 - v159;
          if (v138)
          {
            goto LABEL_133;
          }

          if (v160 < v148)
          {
            break;
          }
        }

        v114 = v127 - 1;
        if (v127 - 1 >= v124)
        {
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
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v242)
        {
          goto LABEL_146;
        }

        v165 = *&v56[16 * v114 + 32];
        v166 = *&v56[16 * v127 + 40];
        v167 = v246;
        sub_1B4C5F670(&(*v242)[*(v240 + 72) * v165], &(*v242)[*(v240 + 72) * *&v56[16 * v127 + 32]], &(*v242)[*(v240 + 72) * v166], v126);
        v246 = v167;
        if (v167)
        {
          goto LABEL_122;
        }

        if (v166 < v165)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1B4CDDE84(v56);
        }

        if (v114 >= *(v56 + 2))
        {
          goto LABEL_125;
        }

        v168 = &v56[16 * v114];
        *(v168 + 4) = v165;
        *(v168 + 5) = v166;
        v273 = v56;
        sub_1B4CDDDF8(v127);
        v56 = v273;
        v124 = *(v273 + 2);
        v45 = v255;
        if (v124 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v54 = v242[1];
    if (v55 >= v54)
    {
      goto LABEL_112;
    }
  }

  v35 = v272;
  v214 = v260;
  if (v248)
  {
    v215 = v249;
    sub_1B4C63F5C(v173, v249, type metadata accessor for DistanceSampleIntervalRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4C63F5C(v215, v175, type metadata accessor for DistanceSampleIntervalRecord);
    v175 += v247;
    v173 += v247;
    v216 = __CFADD__(v214, 1);
    v174 = v214 + 1;
    if (v216)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_1B4C5ECB8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v113 = a1;
  v8 = type metadata accessor for DistanceSampleIntervalRecord();
  v122 = *(v8 - 8);
  v9 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v109 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v20 = *v113;
    if (!*v113)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_99:
      v129 = v19;
      v105 = *(v19 + 2);
      if (v105 >= 2)
      {
        while (*a3)
        {
          v106 = *&v19[16 * v105];
          v107 = *&v19[16 * v105 + 24];
          sub_1B4C60920(*a3 + *(v122 + 72) * v106, *a3 + *(v122 + 72) * *&v19[16 * v105 + 16], *a3 + *(v122 + 72) * v107, v20);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v107 < v106)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1B4CDDE84(v19);
          }

          if (v105 - 2 >= *(v19 + 2))
          {
            goto LABEL_123;
          }

          v108 = &v19[16 * v105];
          *v108 = v106;
          *(v108 + 1) = v107;
          v129 = v19;
          sub_1B4CDDDF8(v105 - 1);
          v19 = v129;
          v105 = *(v129 + 2);
          if (v105 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v19 = sub_1B4CDDE84(v19);
    goto LABEL_99;
  }

  v111 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v128 = v8;
  v115 = a3;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v38 = v18 + 1;
    }

    else
    {
      v123 = v17;
      v112 = v5;
      v21 = *a3;
      v22 = v8;
      v23 = *(v122 + 72);
      v24 = v18;
      v114 = v18;
      v25 = v21 + v23 * (v18 + 1);
      v26 = v21;
      v119 = v21;
      v27 = v126;
      sub_1B4C63E94(v25, v126, type metadata accessor for DistanceSampleIntervalRecord);
      v28 = v127;
      sub_1B4C63E94(v26 + v23 * v24, v127, type metadata accessor for DistanceSampleIntervalRecord);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v29 = *(v22 + 32);
      v120 = sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      LODWORD(v121) = sub_1B4D180FC();
      sub_1B4C63EFC(v28, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63EFC(v27, type metadata accessor for DistanceSampleIntervalRecord);
      v30 = v114 + 2;
      v124 = v23;
      v31 = v119 + v23 * (v114 + 2);
      while (v123 != v30)
      {
        v32 = v126;
        sub_1B4C63E94(v31, v126, type metadata accessor for DistanceSampleIntervalRecord);
        v33 = v127;
        sub_1B4C63E94(v25, v127, type metadata accessor for DistanceSampleIntervalRecord);
        v34 = *(v128 + 32);
        v35 = v19;
        v36 = sub_1B4D180FC() & 1;
        sub_1B4C63EFC(v33, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63EFC(v32, type metadata accessor for DistanceSampleIntervalRecord);
        ++v30;
        v31 += v124;
        v25 += v124;
        v37 = (v121 & 1) == v36;
        v19 = v35;
        if (!v37)
        {
          v38 = v30 - 1;
          goto LABEL_11;
        }
      }

      v38 = v123;
LABEL_11:
      v5 = v112;
      v20 = v114;
      a3 = v115;
      if ((v121 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v38 < v114)
      {
        goto LABEL_126;
      }

      if (v114 < v38)
      {
        v110 = v19;
        v39 = v124 * (v38 - 1);
        v40 = v38 * v124;
        v41 = v38;
        v42 = v114;
        v43 = v114 * v124;
        do
        {
          if (v42 != --v38)
          {
            v44 = *a3;
            if (!v44)
            {
              goto LABEL_132;
            }

            sub_1B4C63F5C(v44 + v43, v118, type metadata accessor for DistanceSampleIntervalRecord);
            if (v43 < v39 || v44 + v43 >= (v44 + v40))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v43 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B4C63F5C(v118, v44 + v39, type metadata accessor for DistanceSampleIntervalRecord);
            a3 = v115;
          }

          ++v42;
          v39 -= v124;
          v40 -= v124;
          v43 += v124;
        }

        while (v42 < v38);
        v5 = v112;
        v19 = v110;
        v8 = v128;
        v20 = v114;
        v38 = v41;
      }

      else
      {
LABEL_24:
        v8 = v128;
      }
    }

    v45 = a3[1];
    if (v38 >= v45)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v38, v20))
    {
      goto LABEL_125;
    }

    if (v38 - v20 >= v111)
    {
LABEL_35:
      v18 = v38;
      if (v38 < v20)
      {
        goto LABEL_124;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v20, v111))
    {
      goto LABEL_127;
    }

    if (v20 + v111 >= v45)
    {
      v46 = a3[1];
    }

    else
    {
      v46 = v20 + v111;
    }

    if (v46 < v20)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v38 == v46)
    {
      goto LABEL_35;
    }

    v110 = v19;
    v112 = v5;
    v93 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v94 = *(v122 + 72);
    v95 = v93 + v94 * (v38 - 1);
    v96 = -v94;
    v114 = v20;
    v97 = v20 - v38;
    v124 = v93;
    v116 = v94;
    v117 = v46;
    v98 = v93 + v38 * v94;
LABEL_88:
    v123 = v38;
    v119 = v98;
    v120 = v97;
    v121 = v95;
    v99 = v95;
LABEL_89:
    v100 = v126;
    sub_1B4C63E94(v98, v126, type metadata accessor for DistanceSampleIntervalRecord);
    v101 = v127;
    sub_1B4C63E94(v99, v127, type metadata accessor for DistanceSampleIntervalRecord);
    v102 = *(v8 + 32);
    sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
    LOBYTE(v102) = sub_1B4D180FC();
    sub_1B4C63EFC(v101, type metadata accessor for DistanceSampleIntervalRecord);
    sub_1B4C63EFC(v100, type metadata accessor for DistanceSampleIntervalRecord);
    if (v102)
    {
      break;
    }

    v8 = v128;
LABEL_87:
    v38 = v123 + 1;
    v18 = v117;
    v95 = v121 + v116;
    v97 = v120 - 1;
    v98 = v119 + v116;
    if (v123 + 1 != v117)
    {
      goto LABEL_88;
    }

    v5 = v112;
    v20 = v114;
    a3 = v115;
    v19 = v110;
    if (v117 < v114)
    {
      goto LABEL_124;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B4A1D58C(0, *(v19 + 2) + 1, 1, v19);
    }

    v48 = *(v19 + 2);
    v47 = *(v19 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v19 = sub_1B4A1D58C((v47 > 1), v48 + 1, 1, v19);
    }

    *(v19 + 2) = v49;
    v50 = &v19[16 * v48];
    *(v50 + 4) = v20;
    *(v50 + 5) = v18;
    v51 = *v113;
    if (!*v113)
    {
      goto LABEL_134;
    }

    if (v48)
    {
      while (2)
      {
        v20 = v49 - 1;
        if (v49 >= 4)
        {
          v56 = &v19[16 * v49 + 32];
          v57 = *(v56 - 64);
          v58 = *(v56 - 56);
          v62 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          if (v62)
          {
            goto LABEL_111;
          }

          v61 = *(v56 - 48);
          v60 = *(v56 - 40);
          v62 = __OFSUB__(v60, v61);
          v54 = v60 - v61;
          v55 = v62;
          if (v62)
          {
            goto LABEL_112;
          }

          v63 = &v19[16 * v49];
          v65 = *v63;
          v64 = *(v63 + 1);
          v62 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v62)
          {
            goto LABEL_114;
          }

          v62 = __OFADD__(v54, v66);
          v67 = v54 + v66;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v67 >= v59)
          {
            v85 = &v19[16 * v20 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v62 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v62)
            {
              goto LABEL_121;
            }

            if (v54 < v88)
            {
              v20 = v49 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v55)
            {
              goto LABEL_113;
            }

            v68 = &v19[16 * v49];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_116;
            }

            v74 = &v19[16 * v20 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_120;
            }

            if (v72 + v77 < v54)
            {
              goto LABEL_69;
            }

            if (v54 < v77)
            {
              v20 = v49 - 2;
            }
          }
        }

        else
        {
          if (v49 == 3)
          {
            v52 = *(v19 + 4);
            v53 = *(v19 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
            goto LABEL_55;
          }

          v78 = &v19[16 * v49];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_69:
          if (v73)
          {
            goto LABEL_115;
          }

          v81 = &v19[16 * v20];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_118;
          }

          if (v84 < v72)
          {
            break;
          }
        }

        v89 = v20 - 1;
        if (v20 - 1 >= v49)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v90 = *&v19[16 * v89 + 32];
        v91 = *&v19[16 * v20 + 40];
        sub_1B4C60920(*a3 + *(v122 + 72) * v90, *a3 + *(v122 + 72) * *&v19[16 * v20 + 32], *a3 + *(v122 + 72) * v91, v51);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v91 < v90)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B4CDDE84(v19);
        }

        if (v89 >= *(v19 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v19[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v129 = v19;
        sub_1B4CDDDF8(v20);
        v19 = v129;
        v49 = *(v129 + 2);
        v8 = v128;
        if (v49 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_97;
    }
  }

  if (v124)
  {
    v103 = v125;
    sub_1B4C63F5C(v98, v125, type metadata accessor for DistanceSampleIntervalRecord);
    v8 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4C63F5C(v103, v99, type metadata accessor for DistanceSampleIntervalRecord);
    v99 += v96;
    v98 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

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
}