unint64_t sub_25431B440()
{
  result = qword_27F5E0CE8;
  if (!qword_27F5E0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CE8);
  }

  return result;
}

unint64_t sub_25431B498()
{
  result = qword_27F5E0CF0;
  if (!qword_27F5E0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CF0);
  }

  return result;
}

unint64_t sub_25431B4F0()
{
  result = qword_27F5E0CF8;
  if (!qword_27F5E0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CF8);
  }

  return result;
}

unint64_t sub_25431B548()
{
  result = qword_27F5E0D00;
  if (!qword_27F5E0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D00);
  }

  return result;
}

unint64_t sub_25431B5A0()
{
  result = qword_27F5E0D08;
  if (!qword_27F5E0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D08);
  }

  return result;
}

unint64_t sub_25431B5F8()
{
  result = qword_27F5E0D10;
  if (!qword_27F5E0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D10);
  }

  return result;
}

unint64_t sub_25431B650()
{
  result = qword_27F5E0D18;
  if (!qword_27F5E0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D18);
  }

  return result;
}

unint64_t sub_25431B6A8()
{
  result = qword_27F5E0D20;
  if (!qword_27F5E0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D20);
  }

  return result;
}

unint64_t sub_25431B700()
{
  result = qword_27F5E0D28;
  if (!qword_27F5E0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D28);
  }

  return result;
}

unint64_t sub_25431B758()
{
  result = qword_27F5E0D30;
  if (!qword_27F5E0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D30);
  }

  return result;
}

unint64_t sub_25431B7B0()
{
  result = qword_27F5E0D38;
  if (!qword_27F5E0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D38);
  }

  return result;
}

uint64_t sub_25431B804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_2543A3578();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_2543A3768();
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_2542D7D40(v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_2543A3038();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_2543A3368();
}

void Logging.ulog(_:_:extended:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = Logging.logExt.getter(a5, a6);
  }

  else
  {
    v7 = (*(a6 + 16))(a5, a6);
  }

  v8 = v7;
  OUTLINED_FUNCTION_2_12();
  v9 = sub_2543A2858();
  [v8 ulog:a1 message:v9];
}

id sub_25431BA24()
{
  sub_25431C504(&type metadata for SettingsObservationUpdate, &qword_27F5E0DB8, &unk_2543B4A50);
  v0 = objc_allocWithZone(MEMORY[0x277D02878]);
  return sub_25431CDB8();
}

id sub_25431BAA4()
{
  sub_25431C504(&type metadata for AlarmOperationRequest, &qword_27F5E0DC0, &qword_2543AC2D8);
  v0 = objc_allocWithZone(MEMORY[0x277D02878]);
  return sub_25431CDB8();
}

id sub_25431BB24(void (*a1)(void))
{
  sub_25431C5F4(a1);
  OUTLINED_FUNCTION_12_10();
  v1 = objc_allocWithZone(MEMORY[0x277D02878]);
  OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8();
}

id sub_25431BB78()
{
  sub_25431C504(&type metadata for AlarmOperationResponse, &qword_27F5E0DC8, &qword_2543B4A60);
  v0 = objc_allocWithZone(MEMORY[0x277D02878]);
  return sub_25431CDB8();
}

id sub_25431BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_25431C504(a3, a4, a5);
  OUTLINED_FUNCTION_12_10();
  v5 = objc_allocWithZone(MEMORY[0x277D02878]);
  OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8();
}

id Logging.log.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8();
}

uint64_t Logging.category.getter(uint64_t a1, uint64_t a2)
{
  v3 = static Logging.category.getter(a1, a2);
  v4 = *(a2 + 32);
  v5 = OUTLINED_FUNCTION_2_12();
  v7 = v6(v5);
  v9 = v8;
  sub_2543A2768();
  MEMORY[0x259C093D0](v7, v9);

  return v3;
}

uint64_t sub_25431C12C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_25431BF38();
}

void static Logging.ulog(_:_:extended:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = static Logging.logExt.getter(a5, a6);
  }

  else
  {
    v7 = static Logging.log.getter(a5, a6);
  }

  v8 = v7;
  OUTLINED_FUNCTION_2_12();
  v9 = sub_2543A2858();
  [v8 ulog:a1 message:v9];
}

id sub_25431C238()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_4_13();
  return sub_25431BB24(v2);
}

id sub_25431C2F4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25431BB78();
}

uint64_t sub_25431C2FC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25431BE70();
}

id sub_25431C304()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  return sub_25431BAA4();
}

uint64_t sub_25431C310()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  return sub_25431BDC8();
}

id sub_25431C31C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  return sub_25431BA24();
}

uint64_t sub_25431C334()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  return sub_25431BD5C();
}

id static Logging.log.getter(uint64_t a1, uint64_t a2)
{
  static Logging.category.getter(a1, a2);
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8();
}

uint64_t static Logging.category.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))())
  {
    return static Logging.classNameNoGenerics.getter();
  }

  else
  {
    return static Logging.className.getter();
  }
}

id static Logging.logExt.getter(uint64_t a1, uint64_t a2)
{
  static Logging.category.getter(a1, a2);
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = OUTLINED_FUNCTION_0_26();
  return sub_25431CE40(v3, v4, v5, v6, 0x10000000);
}

id Logging.logExt.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = OUTLINED_FUNCTION_0_26();
  return sub_25431CE40(v3, v4, v5, v6, 0x10000000);
}

uint64_t sub_25431C504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v3 = sub_2543A2888();
  OUTLINED_FUNCTION_8_8(v3, v4);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_60_0();
}

uint64_t sub_25431C5F4(void (*a1)(void))
{
  a1(0);
  v1 = OUTLINED_FUNCTION_60_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v3 = sub_2543A2888();
  OUTLINED_FUNCTION_8_8(v3, v4);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_60_0();
}

uint64_t static Logging.classNameNoGenerics.getter()
{
  v1 = static Logging.className.getter();
  OUTLINED_FUNCTION_8_8(v1, v2);
  if (v3)
  {
    return OUTLINED_FUNCTION_60_0();
  }

  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_12_10();

  return v0;
}

unint64_t sub_25431C6E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_2543A28E8())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_2543A2938() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_2543A3608();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

id sub_25431C800(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_5(a1);

  return Logging.log.getter(v3, a2);
}

uint64_t sub_25431C838(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_5(a1);

  return Logging.category.getter(v3, a2);
}

uint64_t sub_25431C890(void *a1)
{
  OUTLINED_FUNCTION_7_9(a1);
  type metadata accessor for ServicesRouter();
  return 1;
}

uint64_t sub_25431C8E0(void *a1)
{
  OUTLINED_FUNCTION_7_9(a1);
  type metadata accessor for ServicesRouter();
  return 0;
}

uint64_t sub_25431C91C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_12(a1);
  v2(v1);
  return 1;
}

id sub_25431C960(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_12(a1);
  v5 = v4(v3);
  return Logging.log.getter(v5, a2);
}

uint64_t sub_25431C9B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_12(a1);
  v5 = v4(v3);
  return Logging.category.getter(v5, a2);
}

uint64_t sub_25431CA08(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_12(a1);
  v2(v1);
  return 0;
}

uint64_t sub_25431CA38(void *a1)
{
  OUTLINED_FUNCTION_7_9(a1);
  type metadata accessor for RapportTransport();
  return 1;
}

id sub_25431CA70(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9(a1);
  v5 = v4(v3);

  return Logging.log.getter(v5, a2);
}

uint64_t sub_25431CACC(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9(a1);
  v5 = v4(v3);

  return Logging.category.getter(v5, a2);
}

uint64_t sub_25431CB10(void *a1)
{
  OUTLINED_FUNCTION_7_9(a1);
  type metadata accessor for RapportTransport();
  return 0;
}

uint64_t sub_25431CB6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_25431BF08();
}

id sub_25431CB78()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_2_20();
  return sub_25431BB24(v2);
}

id sub_25431CBD4()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_5_13();
  return sub_25431BB24(v2);
}

id sub_25431CCB0()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_3_14();
  return sub_25431BB24(v2);
}

id sub_25431CDB8()
{
  v1 = sub_2543A2858();

  v2 = sub_2543A2858();

  v3 = [v0 initWithSubsystem:v1 category:v2];

  return v3;
}

id sub_25431CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2543A2858();

  OUTLINED_FUNCTION_2_12();
  v8 = sub_2543A2858();

  v9 = [v5 initWithSubsystem:v7 category:v8 logFlags:a5];

  return v9;
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{
  v1 = *(a1 + 80);
  v3 = *(a1 + 96);
  v4 = *(a1 + 112);
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_9(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  return 0;
}

unint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, unint64_t a2)
{

  return sub_25431C6E0(60, 0xE100000000000000, a1, a2);
}

uint64_t OUTLINED_FUNCTION_10_10()
{
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_2543A2958();
}

void OUTLINED_FUNCTION_13_7()
{

  JUMPOUT(0x259C09390);
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return type metadata accessor for ObservationManager();
}

uint64_t sub_25431D0D8()
{
  v0 = swift_allocObject();
  sub_254327C6C();
  return v0;
}

uint64_t sub_25431D110(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_48_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x259C093D0](*v2, v2[1]);
  MEMORY[0x259C093D0](540945696, 0xE400000000000000);
  v12 = *(a1 + 36);
  OUTLINED_FUNCTION_4_7();
  swift_checkMetadataState();
  sub_2543A32A8();
  OUTLINED_FUNCTION_114_0();
  sub_2543A35C8();
  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_114_0();
  v15(v14);
  return 0;
}

uint64_t sub_25431D284(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58_0();
  v3 = *(type metadata accessor for ObservationManager.ObservationKey() + 36);
  OUTLINED_FUNCTION_41_2();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_2543A2848() & 1;
}

uint64_t sub_25431D35C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_2543A28C8();
  v6 = *(a2 + 36);
  v9 = a2 + 16;
  v7 = *(a2 + 16);
  v8 = *(v9 + 8);
  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62_1();
  return sub_2543A2808();
}

uint64_t sub_25431D3F8(uint64_t a1)
{
  sub_2543A36E8();
  sub_25431D35C(v3, a1);
  return sub_2543A3728();
}

uint64_t sub_25431D440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ObservationManager.ObservationKey() + 36);
  OUTLINED_FUNCTION_45_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_0(AssociatedTypeWitness);
  v9 = *(v8 + 32);

  return v9(&a4[v6], a3);
}

uint64_t sub_25431D4F4(uint64_t a1, uint64_t a2)
{
  sub_2543A36E8();
  sub_25431D35C(v4, a2);
  return sub_2543A3728();
}

uint64_t sub_25431D53C(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25431D284(a1, a2);
}

uint64_t sub_25431D598(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return OUTLINED_FUNCTION_17_6(sub_25431D5DC, v1);
}

uint64_t sub_25431D5DC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = v0[5];
  v2 = v0[3];
  v0[2] = v0[4];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for ObservationManager();
  v5 = sub_2542DF684();
  v6._object = 0xEF293A6874697728;
  v7 = v5 & 1;
  v6._countAndFlagsBits = 0x6574617669746361;
  Logging.ulog(_:extended:)(v6, v7);
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_25431D6A4()
{
  OUTLINED_FUNCTION_69_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v1[19] = *v0;
  v8 = *v0;
  v1[20] = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_145_0();
  v1[21] = v9;
  OUTLINED_FUNCTION_48_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_48_1();
  v11 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_48_1();
  v12 = swift_getAssociatedConformanceWitness();
  v1[22] = v12;
  v1[7] = v9;
  v1[8] = AssociatedConformanceWitness;
  v1[9] = v11;
  v1[10] = v12;
  type metadata accessor for ObservationUpdateScope();
  v1[23] = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v1[24] = TupleTypeMetadata2;
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_61_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_93_0();
  v1[25] = sub_2543A20C8();
  v1[26] = swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  v1[27] = sub_2543A1FE8();
  OUTLINED_FUNCTION_0_2();
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = OUTLINED_FUNCTION_146();
  v1[30] = swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  v1[31] = sub_2543A1FC8();
  OUTLINED_FUNCTION_0_2();
  v1[32] = v17;
  v19 = *(v18 + 64);
  v1[33] = OUTLINED_FUNCTION_146();
  v1[34] = swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  v20 = sub_2543A1FD8();
  v1[35] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[36] = v21;
  v23 = *(v22 + 64);
  v1[37] = OUTLINED_FUNCTION_146();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v24 = sub_2543A2CE8();
  v1[38] = v24;
  OUTLINED_FUNCTION_8(v24);
  v1[39] = v25;
  v27 = *(v26 + 64);
  v1[40] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v28 = sub_2543A30C8();
  v1[41] = v28;
  OUTLINED_FUNCTION_8(v28);
  v1[42] = v29;
  v31 = *(v30 + 64);
  v1[43] = OUTLINED_FUNCTION_146();
  v32 = *(*(TupleTypeMetadata2 - 8) + 64);
  v1[44] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_0_2();
  v1[45] = v33;
  v35 = *(v34 + 64);
  v1[46] = OUTLINED_FUNCTION_147_0();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v36 = sub_2543A2D08();
  v1[49] = v36;
  OUTLINED_FUNCTION_8(v36);
  v1[50] = v37;
  v39 = *(v38 + 64);
  v1[51] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v40 = sub_2543A2D38();
  v1[52] = v40;
  OUTLINED_FUNCTION_8(v40);
  v1[53] = v41;
  v1[54] = *(v42 + 64);
  v1[55] = OUTLINED_FUNCTION_147_0();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v43 = sub_2543A2D78();
  v1[58] = v43;
  OUTLINED_FUNCTION_8(v43);
  v1[59] = v44;
  v46 = *(v45 + 64);
  v1[60] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_69_1();
  v1[61] = *(v47 + 88);
  OUTLINED_FUNCTION_69_1();
  v1[62] = *(v48 + 80);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[63] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[64] = v50;
  v52 = *(v51 + 64);
  v1[65] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_22_1();
  v53 = type metadata accessor for ObservationManager.ObservationKey();
  v1[66] = v53;
  OUTLINED_FUNCTION_8(v53);
  v1[67] = v54;
  v1[68] = *(v55 + 64);
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_77_0();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

uint64_t sub_25431DD0C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[70];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[14];
  OUTLINED_FUNCTION_55_1(v0[16], *(v0[17] + 8));
  v8();
  (*(v4 + 16))(v2, v7, v3);
  OUTLINED_FUNCTION_111_0();
  sub_25431D440(v9, v10, v11, v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[71] = v13;
  *v13 = v14;
  v13[1] = sub_25431DE28;
  v15 = v0[70];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[16];
  v20 = v0[13];
  OUTLINED_FUNCTION_77_0();

  return sub_25431F7A8();
}

uint64_t sub_25431DE28()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 568);
  *v4 = *v2;
  *(v3 + 576) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 144);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_25431DF3C()
{
  v1 = v0;
  v3 = v0[20];
  v2 = v0 + 20;
  v86 = v2[37];
  v88 = v2[40];
  v5 = v2[30];
  v4 = v2[31];
  v6 = v2[25];
  v90 = v2[29];
  v92 = v2[24];
  v107 = v2[23];
  v110 = v2 - 18;
  v97 = v2[3];
  v99 = v2[28];
  v7 = v2[1];
  v95 = v2[4];
  v8 = *(v2 - 1);
  v101 = *(v2 - 3);
  v9 = *(v2 - 5);
  v63 = sub_25430E8B4(*(v2 - 7), v9, *(v2 - 4), v101);
  v104 = v10;
  v85 = sub_25431E968(v9);
  sub_2542FE93C(v4);
  sub_2543A2CD8();
  (*(v5 + 8))(v4, v90);
  v11 = *(v2 - 15);
  v12 = *(v2 - 14);
  __swift_project_boxed_opaque_existential_0(v2 - 18, v11);
  OUTLINED_FUNCTION_127_0(v12);
  v13(v11, v12);
  sub_2543A20A8();

  v14 = *(v95 + 48);
  v15 = *(v6 + 32);
  OUTLINED_FUNCTION_54_1();
  v15();
  OUTLINED_FUNCTION_19_0(v97);
  (*(v16 + 8))(v92 + v14);
  v17 = sub_25431E968(v9);
  (*(v101 + 168))(v99, v17);

  if (__swift_getEnumTagSinglePayload(v107, 1, v3) == 1)
  {
    v18 = v2 + 23;
    v19 = v1 + 42;
    v2 = v1 + 41;
  }

  else
  {
    v19 = v2 + 25;
    v105 = v1[52];
    v108 = v1[57];
    v18 = v1 + 47;
    v20 = v1[46];
    v21 = v1[45];
    v23 = v1[39];
    v22 = v1[40];
    v102 = v1[38];
    (v15)(v1[47], v1[43], v1[20]);
    v24 = *(v21 + 16);
    v25 = OUTLINED_FUNCTION_51_1();
    v26(v25);
    sub_2543A2D18();
    (*(v23 + 8))(v22, v102);
  }

  v27 = *v18;
  v28 = *v2;
  v69 = v1[69];
  v70 = v1[70];
  v71 = v1[68];
  v67 = v1[67];
  v68 = v1[66];
  v29 = v1[61];
  v30 = v1[62];
  v77 = v1[60];
  v78 = v1[65];
  v75 = v1[59];
  v76 = v1[58];
  v98 = v1[55];
  v94 = v1[56];
  v96 = v1[54];
  v89 = v1[53];
  v91 = v1[57];
  v109 = v1[52];
  v74 = v1[48];
  v79 = v1[51];
  v80 = v1[47];
  v81 = v1[46];
  v72 = v1[45];
  v82 = v1[44];
  v83 = v1[43];
  v84 = v1[40];
  v100 = v1[37];
  v61 = v1[35];
  v62 = v1[36];
  v58 = v1[34];
  v103 = v1[33];
  v59 = v1[32];
  v56 = v1[30];
  v57 = v1[31];
  v31 = v1[29];
  v54 = v1[27];
  v55 = v1[28];
  v52 = v1[26];
  v51 = v1[25];
  v93 = v1[20];
  v32 = v1[17];
  v33 = v1[16];
  v53 = v1[15];
  v34 = v1[13];
  v65 = v34;
  v66 = v1[18];
  v73 = v1[12];
  (*(*v19 + 8))(v27, v28);
  v35 = v1[5];
  v36 = v1[6];
  __swift_project_boxed_opaque_existential_0(v110, v35);
  OUTLINED_FUNCTION_127_0(v36);
  v1[11] = v37(v35, v36);
  v38 = swift_allocObject();
  v38[2] = v30;
  v38[3] = v33;
  v38[4] = v29;
  v38[5] = v32;
  v38[6] = v63;
  v38[7] = v104;

  sub_2543A2128();

  OUTLINED_FUNCTION_115_0();
  v39 = swift_allocObject();
  v87 = v30;
  v39[2] = v30;
  v39[3] = v33;
  v106 = v29;
  v39[4] = v29;
  v39[5] = v32;
  v39[6] = v53;
  sub_2543A2768();
  sub_2543A20F8();

  (*(v55 + 8))(v31, v54);
  swift_getAssociatedConformanceWitness();
  sub_2543A2138();
  (*(v59 + 8))(v103, v57);
  v64 = *(v89 + 16);
  v64(v94, v91, v109);
  v40 = (*(v89 + 80) + 48) & ~*(v89 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = v30;
  *(v41 + 3) = v33;
  *(v41 + 4) = v29;
  *(v41 + 5) = v32;
  v60 = *(v89 + 32);
  v60(&v41[v40], v94, v109);
  v64(v98, v91, v109);
  v42 = swift_allocObject();
  *(v42 + 2) = v30;
  *(v42 + 3) = v33;
  *(v42 + 4) = v29;
  *(v42 + 5) = v32;
  v60(&v42[v40], v98, v109);
  swift_getWitnessTable();
  v43 = sub_2543A2118();

  v44 = *(v62 + 8);
  v45 = OUTLINED_FUNCTION_114_0();
  v46(v45);
  (*(v67 + 16))(v69, v70, v68);
  v47 = (*(v67 + 80) + 72) & ~*(v67 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = v87;
  *(v48 + 3) = v33;
  *(v48 + 4) = v106;
  *(v48 + 5) = v32;
  *(v48 + 6) = v43;
  *(v48 + 7) = v66;
  *(v48 + 8) = v65;
  (*(v67 + 32))(&v48[v47], v69, v68);
  *&v48[(v71 + v47 + 7) & 0xFFFFFFFFFFFFFFF8] = v85;

  sub_2543A2CF8();

  (*(v72 + 8))(v74, v93);
  (*(v89 + 8))(v91, v109);
  (*(v67 + 8))(v70, v68);
  (*(v75 + 32))(v73, v77, v76);
  __swift_destroy_boxed_opaque_existential_0(v110);

  v49 = v1[1];

  return v49();
}

uint64_t sub_25431E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  v21 = v20[69];
  v22 = v20[65];
  v23 = v20[60];
  v24 = v20[56];
  v25 = v20[57];
  v26 = v20[55];
  v27 = v20[51];
  v28 = v20[48];
  v40 = v20[47];
  v41 = v20[46];
  v42 = v20[44];
  v43 = v20[43];
  v44 = v20[40];
  v45 = v20[37];
  v29 = v20[33];
  v46 = v29;
  v47 = v20[29];
  (*(v20[67] + 8))(v20[70], v20[66]);

  OUTLINED_FUNCTION_27();
  v30 = v20[72];
  OUTLINED_FUNCTION_85();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, v46, v47, a18, a19, a20);
}

uint64_t sub_25431E968(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      sub_25432B00C();
      v1 = v2;
    }

    else
    {

      v1 = MEMORY[0x277D84FA0];
    }
  }

  sub_2543A2768();
  return v1;
}

uint64_t sub_25431E9EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ObservationUpdateScope();
  sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25431EB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = sub_25431E968(a2);
  (*(a6 + 168))(a1, v10, a4, a6);
}

uint64_t sub_25431EC18(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = sub_2543A1FF8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  (*(v16 + 16))(&v23 - v14, a1);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    v24 = 0;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2D38();
    return sub_2543A2D28();
  }

  else
  {
    v23 = a2;
    v18 = v15;
    v19 = *(v5 + 32);
    v19(v11, v18, AssociatedTypeWitness);
    (*(v5 + 16))(v9, v11, AssociatedTypeWitness);
    v20 = sub_2543A35B8();
    if (v20)
    {
      v21 = v20;
      (*(v5 + 8))(v9, AssociatedTypeWitness);
    }

    else
    {
      v21 = swift_allocError();
      v19(v22, v9, AssociatedTypeWitness);
    }

    v24 = v21;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2D38();
    sub_2543A2D28();
    return (*(v5 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t sub_25431EF80(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v7 = sub_2543A2CE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_2543A2D38();
  sub_2543A2D18();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_25431F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v31 = a6;
  v28 = a7;
  v29 = a4;
  v9 = *(*a3 + 80);
  v10 = *(*a3 + 88);
  v11 = type metadata accessor for ObservationManager.ObservationKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  sub_2543A2028();
  v20 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, a5, v11);
  v22 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v28;
  *(v23 + 4) = v9;
  *(v23 + 5) = v24;
  v25 = v29;
  v26 = v30;
  *(v23 + 6) = v10;
  *(v23 + 7) = v26;
  *(v23 + 8) = v21;
  *(v23 + 9) = v25;
  (*(v12 + 32))(&v23[v22], v15, v11);
  *&v23[(v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v31;
  sub_2543A2768();
  sub_2542CCD54();
}

uint64_t sub_25431F39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v11;
  *(v8 + 136) = v10;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  return MEMORY[0x2822009F8](sub_25431F3D8, 0, 0);
}

uint64_t sub_25431F3D8()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[12];
  OUTLINED_FUNCTION_97();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_25431F4C4;
    v4 = v0[19];
    v5 = v0[17];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[13];

    return sub_2543268EC(v8, v6, v7, v5, v4);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_25431F4C4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 160);

    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_25431F5E0()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);

  OUTLINED_FUNCTION_97();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    *(v0 + 80) = Strong;
    sub_2543A3298();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x259C093D0](0xD000000000000025);
    OUTLINED_FUNCTION_64_1();
    type metadata accessor for ObservationManager.ObservationKey();
    OUTLINED_FUNCTION_3_15();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_122_0();
    sub_2543A35D8();
    v8 = OUTLINED_FUNCTION_65_1();
    MEMORY[0x259C093D0](v8, 0xE700000000000000);
    *(v0 + 88) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A3358();
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    OUTLINED_FUNCTION_64_1();
    v11 = type metadata accessor for ObservationManager();
    v12 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, v9, v10, v12 & 1, v11, &off_286648A78);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_25431F7A8()
{
  OUTLINED_FUNCTION_89();
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_2542D32CC;
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_181();

    return sub_25431F9D4();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_25431F8F4;
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_181();

    return sub_254322C00(v6, v7, v8, v9, v10);
  }
}

uint64_t sub_25431F8F4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_25431F9D4()
{
  OUTLINED_FUNCTION_28();
  v1[100] = v0;
  v1[99] = v2;
  v1[98] = v3;
  v1[97] = v4;
  v1[96] = v5;
  v1[95] = v6;
  v1[94] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[101] = *(v8 + 80);
  OUTLINED_FUNCTION_56_0();
  v1[102] = *(v9 + 88);
  v10 = type metadata accessor for ObservationManager.ObservationKey();
  v1[103] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[104] = v11;
  v1[105] = *(v12 + 64);
  v1[106] = OUTLINED_FUNCTION_146();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v13);
  v15 = *(v14 + 64);
  v1[107] = OUTLINED_FUNCTION_146();
  v16 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_25431FAEC()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 768);
  *(v0 + 744) = *(v0 + 800);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002DLL);
  v5 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v5, 0xE500000000000000);
  OUTLINED_FUNCTION_3_15();
  *(v0 + 864) = swift_getWitnessTable();
  sub_2543A35D8();
  OUTLINED_FUNCTION_4_7();
  *(v0 + 872) = type metadata accessor for ObservationManager();
  *(v0 + 145) = sub_2542DF684() & 1;
  v6._countAndFlagsBits = OUTLINED_FUNCTION_107_0();
  Logging.ulog(_:extended:)(v6, v7);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 880) = v8;
  *v8 = v9;
  v8[1] = sub_25431FC4C;
  v10 = *(v0 + 800);
  v11 = *(v0 + 768);

  return sub_254321150(v0 + 288, v11);
}

uint64_t sub_25431FC4C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 880);
  v3 = *(v1 + 800);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_25431FD44()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 824);
  if (!*(v0 + 312))
  {
    v40 = *(v0 + 800);
    v41 = *(v0 + 792);
    v42 = *(v0 + 784);
    v121 = *(v0 + 776);
    v43 = *(v0 + 768);
    sub_25432AFA4(v0 + 288);
    *(v0 + 696) = v40;
    OUTLINED_FUNCTION_63_1();
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000004FLL, 0x80000002543B8FF0);
    sub_2543A35D8();
    Logging.ulog(_:extended:)(v123, v1);

    OUTLINED_FUNCTION_91_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_122_0();
    swift_getAssociatedConformanceWitness();
    sub_254322B28();
    sub_25435FF58();
    *(v0 + 960) = v44;
    *(v0 + 146) = v45;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 968) = v46;
    *v46 = v47;
    v46[1] = sub_254320C10;
    v48 = *(v0 + 800);
    v49 = *(v0 + 792);
    v50 = *(v0 + 784);
    v51 = *(v0 + 776);
    v52 = *(v0 + 768);
    v53 = *(v0 + 760);
    OUTLINED_FUNCTION_101_0();

    sub_2543236EC();
    return;
  }

  v120 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v7 = *(v0 + 768);
  sub_2542DA8C0((v0 + 288), v0 + 248);
  sub_25432B3CC(v0 + 248, v0 + 488);
  *(v0 + 704) = v6;
  OUTLINED_FUNCTION_63_1();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000028, 0x80000002543B90B0);
  v8 = *(v0 + 520);
  __swift_project_boxed_opaque_existential_0((v0 + 488), *(v0 + 512));
  v9 = *(v8 + 8);
  sub_2543A35D8();
  MEMORY[0x259C093D0](0x3D79656B202ELL, 0xE600000000000000);
  sub_2543A35D8();
  Logging.ulog(_:extended:)(v123, v1);

  OUTLINED_FUNCTION_97();
  v10 = *(v6 + 112);
  v11 = type metadata accessor for ObservationManager.ObservationState();
  *(v0 + 888) = v11;
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_45_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65();
  sub_2543A27D8();

  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_38_1();
    v55 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v55);
    (*(v56 + 8))(v0 + 16);
    goto LABEL_13;
  }

  v12 = *(v0 + 792);
  v13 = *(v0 + 784);
  sub_25432B3CC(v0 + 64, v0 + 448);
  OUTLINED_FUNCTION_38_1();
  v14 = sub_2543A30C8();
  OUTLINED_FUNCTION_2_3(v14);
  (*(v15 + 8))(v0 + 16);
  OUTLINED_FUNCTION_41_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObserversCounter();
  if (!swift_dynamicCast())
  {
LABEL_13:
    v57 = *(v0 + 864);
    v58 = *(v0 + 824);
    v59 = *(v0 + 792);
    v60 = *(v0 + 784);
    v61 = *(v0 + 768);
    OUTLINED_FUNCTION_63_1();
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001DLL, 0x80000002543B9150);
    OUTLINED_FUNCTION_54_1();
    sub_2543A35D8();
    OUTLINED_FUNCTION_28_2();
    v62 = MEMORY[0x259C093D0](0xD000000000000010);
    OUTLINED_FUNCTION_55_1(v62, *(v59 + 8));
    v64 = v63(v60);
    MEMORY[0x259C093D0](v64);

LABEL_14:
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_101_0();
    return;
  }

  if (*(v0 + 688) != 1)
  {
    v65 = *(v0 + 816);
    v66 = *(v0 + 808);
    _s16ObservationErrorOMa();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    v67 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_95_0(v67, v68);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    __swift_destroy_boxed_opaque_existential_0((v0 + 488));
    v73 = *(v0 + 856);
    v74 = *(v0 + 848);

    OUTLINED_FUNCTION_27();
LABEL_18:
    OUTLINED_FUNCTION_101_0();

    __asm { BRAA            X1, X16 }
  }

  v18 = *(v0 + 680);
  v19 = *(v0 + 800);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 896) = Strong;
  if (!Strong)
  {
    v69 = *(v0 + 816);
    v70 = *(v0 + 808);
    sub_25432B39C(v18, 1);
    OUTLINED_FUNCTION_45_0();
    _s16ObservationErrorOMa();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    v71 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_95_0(v71, v72);
    goto LABEL_17;
  }

  v21 = Strong;
  v22 = *(v0 + 776);
  v23 = sub_2543A2768();
  sub_25432B39C(v18, 1);
  *(v0 + 712) = v23;
  OUTLINED_FUNCTION_38_1();
  sub_2543A2758();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  v24 = sub_2543A2EC8();
  sub_2543A2768();
  MEMORY[0x259C098C0](v22, v24, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_2543A2768();
  OUTLINED_FUNCTION_126_0();
  v25 = sub_2543A2DC8();
  *(v0 + 720) = v22;
  OUTLINED_FUNCTION_38_1();
  sub_2543A2EB8();
  sub_2543A2768();
  sub_2543A2768();
  swift_getWitnessTable();
  v26 = sub_2543A2E38();
  *(v0 + 904) = v26;
  OUTLINED_FUNCTION_126_0();
  v27 = sub_2543A2E18();

  if (v27)
  {
    v28 = *(v0 + 800);
    v29 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 768);
    v32 = *(v0 + 760);

    OUTLINED_FUNCTION_112_0();
    sub_254322888(v33, v34, v35);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    OUTLINED_FUNCTION_81_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    v36 = OUTLINED_FUNCTION_11_10();
    v37 = OUTLINED_FUNCTION_11_10();
    v38 = OUTLINED_FUNCTION_11_10();
    v39 = OUTLINED_FUNCTION_11_10();
    *(v0 + 608) = v36;
    *(v0 + 616) = v37;
    *(v0 + 624) = v38;
    *(v0 + 632) = v39;
    OUTLINED_FUNCTION_1_22();
    swift_getExtendedExistentialTypeMetadata_unique();
    if (OUTLINED_FUNCTION_58_1())
    {
      OUTLINED_FUNCTION_35_1();

      OUTLINED_FUNCTION_25();
      goto LABEL_18;
    }

    v91 = *(v0 + 792);
    v92 = *(v0 + 784);
    OUTLINED_FUNCTION_63_1();
    sub_2543A3298();

    v93 = OUTLINED_FUNCTION_6_13();
    v95 = v94(v93);
    MEMORY[0x259C093D0](v95);

    goto LABEL_14;
  }

  v77 = *(v0 + 856);
  v122 = v25;
  v78 = *(v0 + 848);
  v114 = *(v0 + 840);
  v79 = *(v0 + 832);
  v80 = *(v0 + 824);
  v113 = v80;
  v118 = *(v0 + 792);
  v119 = *(v0 + 816);
  v115 = *(v0 + 784);
  v116 = *(v0 + 808);
  v81 = *(v0 + 768);
  v117 = *(v0 + 760);

  v82 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v77, v83, v84, v82);
  (*(v79 + 16))(v78, v81, v80);
  sub_25432B3CC(v0 + 488, v0 + 528);
  v85 = (*(v79 + 80) + 80) & ~*(v79 + 80);
  v86 = (v114 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  *(v88 + 2) = 0;
  *(v88 + 3) = 0;
  *(v88 + 4) = v116;
  *(v88 + 5) = v115;
  *(v88 + 6) = v119;
  *(v88 + 7) = v118;
  *(v88 + 8) = v21;
  *(v88 + 9) = v117;
  (*(v79 + 32))(&v88[v85], v78, v113);
  *&v88[v86] = v26;
  *&v88[v87] = v122;
  sub_2542DA8C0((v0 + 528), &v88[(v87 + 15) & 0xFFFFFFFFFFFFFFF8]);
  swift_unknownObjectRetain();
  sub_2543A2768();
  OUTLINED_FUNCTION_60_1();
  sub_25434E1A4();
  v90 = v89;
  *(v0 + 912) = v89;
  sub_2543A2C88();
  v96 = *(v0 + 816);
  v97 = *(v0 + 808);
  v98 = *(v0 + 800);
  v99 = *(v0 + 792);
  v100 = *(v0 + 784);
  v101 = *(v0 + 768);
  v102 = swift_task_alloc();
  *v102 = v97;
  v102[1] = v100;
  v102[2] = v96;
  v102[3] = v99;
  swift_getKeyPath();

  *(v0 + 152) = v90;
  *(v0 + 192) = 0;

  OUTLINED_FUNCTION_48_1();
  sub_2543224C8(v103, v104, v105);

  OUTLINED_FUNCTION_19_0(v11);
  v107 = *(v106 + 8);
  *(v0 + 920) = v107;
  *(v0 + 928) = (v106 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v107(v0 + 152, v11);
  v108 = *(MEMORY[0x277D857C8] + 4);
  v109 = swift_task_alloc();
  *(v0 + 936) = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *(v0 + 944) = v110;
  *v109 = v111;
  v109[1] = sub_2543208A0;
  OUTLINED_FUNCTION_101_0();

  MEMORY[0x282200430]();
}

uint64_t sub_2543208A0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 936);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[119] = v0;

  if (v0)
  {
    v9 = v3[113];
    v10 = v3[100];

    v11 = sub_254320EA4;
  }

  else
  {
    v10 = v3[100];
    __swift_destroy_boxed_opaque_existential_0(v3 + 71);
    v11 = sub_2543209B4;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

void sub_2543209B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  v49 = *(v20 + 920);
  v50 = *(v20 + 928);
  v21 = *(v20 + 904);
  v51 = *(v20 + 912);
  v52 = *(v20 + 896);
  v48 = *(v20 + 888);
  v22 = *(v20 + 816);
  v23 = *(v20 + 808);
  v24 = *(v20 + 800);
  v25 = *(v20 + 792);
  v26 = *(v20 + 784);
  v27 = *(v20 + 768);
  v28 = *(v20 + 760);
  v29 = swift_task_alloc();
  *v29 = v23;
  v29[1] = v26;
  v29[2] = v22;
  v29[3] = v25;
  KeyPath = swift_getKeyPath();

  sub_25432B3CC(v20 + 488, v20 + 104);
  *(v20 + 144) = 1;
  sub_2543224C8(v27, KeyPath, v20 + 104);

  v49(v20 + 104, v48);
  sub_254322888(v28, v27, v21);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v20 + 248));
  OUTLINED_FUNCTION_81_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  v31 = OUTLINED_FUNCTION_11_10();
  v32 = OUTLINED_FUNCTION_11_10();
  v33 = OUTLINED_FUNCTION_11_10();
  v34 = OUTLINED_FUNCTION_11_10();
  *(v20 + 608) = v31;
  *(v20 + 616) = v32;
  *(v20 + 624) = v33;
  *(v20 + 632) = v34;
  OUTLINED_FUNCTION_1_22();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (OUTLINED_FUNCTION_58_1())
  {
    OUTLINED_FUNCTION_35_1();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_85();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v48, v49, v50, v51, v52, a16, a17, a18, a19, a20);
  }

  else
  {
    v43 = *(v20 + 792);
    v44 = *(v20 + 784);
    sub_2543A3298();

    OUTLINED_FUNCTION_14_5();
    v45 = OUTLINED_FUNCTION_6_13();
    v47 = v46(v45);
    MEMORY[0x259C093D0](v47);

    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_85();
  }
}

uint64_t sub_254320C10()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 968);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 976) = v0;

  if (v0)
  {
    v9 = *(v3 + 800);
    v10 = sub_2543210D8;
  }

  else
  {
    v11 = *(v3 + 800);
    sub_25432B39C(*(v3 + 960), *(v3 + 146) & 1);
    v10 = sub_254320D28;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

void sub_254320D28()
{
  OUTLINED_FUNCTION_46_0();
  sub_2542DA8C0((v0 + 328), v0 + 488);
  OUTLINED_FUNCTION_81_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  v1 = OUTLINED_FUNCTION_11_10();
  v2 = OUTLINED_FUNCTION_11_10();
  v3 = OUTLINED_FUNCTION_11_10();
  v4 = OUTLINED_FUNCTION_11_10();
  *(v0 + 608) = v1;
  *(v0 + 616) = v2;
  *(v0 + 624) = v3;
  *(v0 + 632) = v4;
  OUTLINED_FUNCTION_1_22();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (OUTLINED_FUNCTION_58_1())
  {
    OUTLINED_FUNCTION_35_1();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_139_0();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 792);
  v8 = *(v0 + 784);
  OUTLINED_FUNCTION_144_0();

  OUTLINED_FUNCTION_14_5();
  v9 = OUTLINED_FUNCTION_6_13();
  v11 = v10(v9);
  MEMORY[0x259C093D0](v11);

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_139_0();
}

void sub_254320EA4()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v25 = *(v0 + 920);
  v26 = *(v0 + 928);
  v27 = *(v0 + 912);
  v28 = *(v0 + 896);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 824);
  v23 = *(v0 + 816);
  v24 = *(v0 + 888);
  v21 = *(v0 + 808);
  v22 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 768);
  *(v0 + 728) = *(v0 + 800);
  sub_2543A3298();
  *(v0 + 664) = 0;
  *(v0 + 672) = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000026);
  sub_2543A35D8();
  v8 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v8, 0xE700000000000000);
  *(v0 + 736) = v1;
  sub_2543A3358();
  v9 = *(v0 + 664);
  v10 = *(v0 + 672);
  v11 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(90, v9, v10, v11 & 1, v3, &off_286648A78);

  v12 = swift_task_alloc();
  *v12 = v21;
  v12[1] = v6;
  v12[2] = v23;
  v12[3] = v22;
  swift_getKeyPath();

  sub_25432B3CC(v0 + 488, v0 + 200);
  *(v0 + 240) = 1;
  v13 = OUTLINED_FUNCTION_121_0();
  sub_2543224C8(v13, v14, v15);

  v25(v0 + 200, v24);
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  v16 = *(v0 + 952);
  v17 = *(v0 + 856);
  v18 = *(v0 + 848);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_127();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2543210D8()
{
  OUTLINED_FUNCTION_28();
  sub_25432B39C(*(v0 + 960), *(v0 + 146) & 1);
  v1 = *(v0 + 976);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254321150(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v3[47] = *v2;
  return MEMORY[0x2822009F8](sub_25432119C, v2, 0);
}

uint64_t sub_25432119C()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 368);
  OUTLINED_FUNCTION_97();
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(*(v0 + 368) + 112);
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_20_3();
  v7 = type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_38_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_87_0();

  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_45_0();
    v13 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v13);
    (*(v14 + 8))(v0 + 16);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  (*(v10 + 16))(v0 + 192, v0 + 16, v7);
  OUTLINED_FUNCTION_45_0();
  v11 = sub_2543A30C8();
  OUTLINED_FUNCTION_2_3(v11);
  (*(v12 + 8))(v0 + 16);
  if (*(v0 + 232) == 1)
  {
    (*(v9 + 8))(v0 + 192, v7);
    goto LABEL_7;
  }

  *(v0 + 384) = *(v0 + 192);
  if (sub_2543A2C78())
  {

LABEL_7:
    v15 = *(v0 + 360);
    v16 = *(*(v0 + 368) + 112);
    sub_2543A2768();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_87_0();

    if (*(v0 + 176))
    {
      OUTLINED_FUNCTION_0_2();
      v18 = v17;
      (*(v19 + 16))(v0 + 240, v0 + 104, v7);
      OUTLINED_FUNCTION_45_0();
      v20 = sub_2543A30C8();
      OUTLINED_FUNCTION_2_3(v20);
      (*(v21 + 8))(v0 + 104);
      if (*(v0 + 280))
      {
        sub_2542DA8C0((v0 + 240), *(v0 + 352));
        goto LABEL_13;
      }

      (*(v18 + 8))(v0 + 240, v7);
    }

    else
    {
      OUTLINED_FUNCTION_45_0();
      v22 = sub_2543A30C8();
      OUTLINED_FUNCTION_2_3(v22);
      (*(v23 + 8))(v0 + 104);
    }

    OUTLINED_FUNCTION_130_0();
LABEL_13:
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_195();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(MEMORY[0x277D857C8] + 4);
  v27 = swift_task_alloc();
  *(v0 + 392) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *v27 = v28;
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x282200430]();
}

uint64_t sub_254321534()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v2 + 368);
  if (v0)
  {

    v7 = sub_254321B60;
  }

  else
  {
    v7 = sub_254321660;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_254321660()
{
  OUTLINED_FUNCTION_28();
  sub_25432AFA4(v0 + 288);
  v1 = *(MEMORY[0x277D857F8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_39_2(v2);

  return MEMORY[0x282200490](v3);
}

uint64_t sub_2543216D8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 400);
  v3 = *(v1 + 368);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2543217D0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 384);

  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(*(v0 + 368) + 112);
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_20_3();
  v7 = type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_38_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_87_0();

  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_45_0();
    v13 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v13);
    (*(v14 + 8))(v0 + 16);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  (*(v10 + 16))(v0 + 192, v0 + 16, v7);
  OUTLINED_FUNCTION_45_0();
  v11 = sub_2543A30C8();
  OUTLINED_FUNCTION_2_3(v11);
  (*(v12 + 8))(v0 + 16);
  if (*(v0 + 232) == 1)
  {
    (*(v9 + 8))(v0 + 192, v7);
    goto LABEL_7;
  }

  *(v0 + 384) = *(v0 + 192);
  if (sub_2543A2C78())
  {

LABEL_7:
    v15 = *(v0 + 360);
    v16 = *(*(v0 + 368) + 112);
    sub_2543A2768();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_87_0();

    if (*(v0 + 176))
    {
      OUTLINED_FUNCTION_0_2();
      v18 = v17;
      (*(v19 + 16))(v0 + 240, v0 + 104, v7);
      OUTLINED_FUNCTION_45_0();
      v20 = sub_2543A30C8();
      OUTLINED_FUNCTION_2_3(v20);
      (*(v21 + 8))(v0 + 104);
      if (*(v0 + 280))
      {
        sub_2542DA8C0((v0 + 240), *(v0 + 352));
        goto LABEL_13;
      }

      (*(v18 + 8))(v0 + 240, v7);
    }

    else
    {
      OUTLINED_FUNCTION_45_0();
      v22 = sub_2543A30C8();
      OUTLINED_FUNCTION_2_3(v22);
      (*(v23 + 8))(v0 + 104);
    }

    OUTLINED_FUNCTION_130_0();
LABEL_13:
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_195();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(MEMORY[0x277D857C8] + 4);
  v27 = swift_task_alloc();
  *(v0 + 392) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *v27 = v28;
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x282200430]();
}

uint64_t sub_254321B60()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 320) = 0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_25432AFA4(v0 + 288);
  v1 = *(MEMORY[0x277D857F8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_39_2(v2);

  return MEMORY[0x282200490](v3);
}

uint64_t sub_254321BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[27] = v36;
  v9[28] = a9;
  v9[25] = a1;
  v9[26] = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[29] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v9[17] = AssociatedTypeWitness;
  v9[18] = AssociatedConformanceWitness;
  v9[19] = v13;
  v9[20] = v14;
  v9[30] = type metadata accessor for ObservationUpdateScope();
  v15 = sub_2543A30C8();
  v9[31] = v15;
  v16 = *(v15 - 8);
  v9[32] = v16;
  v17 = *(v16 + 64) + 15;
  v9[33] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v9[34] = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[35] = TupleTypeMetadata2;
  v20 = *(TupleTypeMetadata2 - 8);
  v9[36] = v20;
  v21 = *(v20 + 64) + 15;
  v9[37] = swift_task_alloc();
  v22 = *(v18 - 8);
  v9[38] = v22;
  v23 = *(v22 + 64) + 15;
  v9[39] = swift_task_alloc();
  v24 = swift_task_alloc();
  v9[40] = v24;
  v25 = *(type metadata accessor for ObservationManager.ObservationKey() + 36);
  v26 = *(v37 + 40);
  v30 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v9[41] = v28;
  *v28 = v9;
  v28[1] = sub_254321F64;

  return v30(v24, a5, a6 + v25, a7, a8, v36, a9);
}

uint64_t sub_254321F64()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = *(v2 + 328);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254322064()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  sub_25432B3CC(*(v0 + 208), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  OUTLINED_FUNCTION_20_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_3();
  v6 = swift_getAssociatedTypeWitness();
  *(v0 + 168) = v1;
  *(v0 + 176) = AssociatedTypeWitness;
  *(v0 + 184) = v3;
  *(v0 + 192) = v6;
  OUTLINED_FUNCTION_1_22();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    v44 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 288);
    v10 = *(v0 + 272);
    v35 = *(v0 + 312);
    v37 = *(v0 + 280);
    v38 = *(v0 + 264);
    v40 = *(v0 + 256);
    v41 = *(v0 + 248);
    v39 = *(v0 + 240);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v43 = *(v0 + 200);
    sub_2542DA8C0((v0 + 96), v0 + 16);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v13);
    OUTLINED_FUNCTION_127_0(v14);
    v15(v13, v14);
    sub_2543A20A8();

    v36 = *(v8 + 16);
    v36(v35, v7, v10);
    (*(v9 + 8))(v7, v37);
    (*(v11 + 160))(v35, v44, v12, v11);
    v16 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_127_0(v16);
    v17 = OUTLINED_FUNCTION_62_1();
    v18(v17);
    OUTLINED_FUNCTION_120_0(v38, v19, v20, v39);
    v21 = *(v37 + 48);
    v36(v7, v35, v10);
    (*(v40 + 32))(v7 + v21, v38, v41);
    sub_2543A20B8();

    v42 = *(v0 + 40);
    v22 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v22);
    *(v43 + 24) = v42;
    __swift_allocate_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_19_0(v22);
    (*(v23 + 16))();
    v24 = *(v8 + 8);
    v25 = OUTLINED_FUNCTION_61_0();
    v24(v25);
    v26 = OUTLINED_FUNCTION_62_1();
    v24(v26);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    OUTLINED_FUNCTION_25();

    return v27();
  }

  else
  {
    v31 = v0 + 216;
    v30 = *(v0 + 216);
    v29 = *(v31 + 8);
    sub_2543A3298();

    OUTLINED_FUNCTION_14_5();
    v32 = OUTLINED_FUNCTION_6_13();
    v34 = v33(v32);
    MEMORY[0x259C093D0](v34);

    return OUTLINED_FUNCTION_24_3();
  }
}

uint64_t sub_254322444()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[33];

  OUTLINED_FUNCTION_27();
  v6 = v0[42];

  return v5();
}

uint64_t sub_2543224C8(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v5 = *v3;
  v30 = *a2;
  v27 = *(v30 + *MEMORY[0x277D84308] + 8);
  v26 = *(v27 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](a1);
  v25 = &v25 - v7;
  v9 = *(v8 + 80);
  v10 = *(v8 + 88);
  v11 = type metadata accessor for ObservationManager.ObservationKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v31 = v3;
  v32 = 0;
  v33 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD000000000000025, 0x80000002543B8D90);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  swift_getWitnessTable();
  sub_2543A35D8();
  v16 = v32;
  v17 = v33;
  v18 = type metadata accessor for ObservationManager();
  v19 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(20, v16, v17, v19 & 1, v18, &off_286648A78);

  (*(v12 + 16))(v15, a1, v11);
  v20 = sub_25431D548();
  v21 = *(v30 + *MEMORY[0x277D84308]);
  swift_getWitnessTable();
  sub_2543A27B8();
  v22 = sub_2543A27C8();
  if (*(v23 + 72))
  {
    (*(v26 + 16))(v25, v28, v27);
    swift_setAtWritableKeyPath();
  }

  v22(&v31, 0);
  (*(v12 + 8))(v15, v11);
  (v20)(&v32, 0);
  return sub_254327D64();
}

uint64_t sub_254322888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000033, 0x80000002543B90E0);
  MEMORY[0x259C093D0](0x3D6570797420, 0xE600000000000000);
  v7 = sub_2543A37B8();
  MEMORY[0x259C093D0](v7);

  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for ObservationManager.ObservationKey();
  swift_getWitnessTable();
  sub_2543A35D8();
  MEMORY[0x259C093D0](0x5574656772617420, 0xEE003D6574616470);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2543A2EB8();
  swift_getWitnessTable();
  sub_2543A35D8();
  type metadata accessor for ObservationManager();
  v10 = sub_2542DF684() & 1;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v11, v10);

  sub_254328110(a1, a2, sub_25432864C, 0, a3);
}

uint64_t sub_254322B28()
{
  sub_2543A26D8();
  sub_2543A2EB8();
  sub_2543A27B8();
  swift_getWitnessTable();
  sub_2543A29B8();
  return v1;
}

uint64_t sub_254322C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  v6[45] = *v5;
  return OUTLINED_FUNCTION_17_6(sub_254322C4C, v5);
}

uint64_t sub_254322C4C()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  *(v0 + 288) = *(v0 + 352);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000025);
  v3 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v3, 0xE500000000000000);
  *(v0 + 368) = *(v1 + 80);
  *(v0 + 376) = *(v1 + 88);
  OUTLINED_FUNCTION_58_0();
  *(v0 + 384) = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_3_15();
  *(v0 + 392) = swift_getWitnessTable();
  OUTLINED_FUNCTION_107_0();
  sub_2543A35D8();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 400) = type metadata accessor for ObservationManager();
  *(v0 + 448) = sub_2542DF684() & 1;
  v4._countAndFlagsBits = OUTLINED_FUNCTION_107_0();
  Logging.ulog(_:extended:)(v4, v5);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 408) = v6;
  *v6 = v7;
  v6[1] = sub_254322DC0;
  v8 = *(v0 + 352);
  v9 = *(v0 + 328);

  return sub_254321150(v0 + 96, v9);
}

uint64_t sub_254322DC0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 408);
  v3 = *(v1 + 352);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_254322EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  if (*(v20 + 120))
  {
    v21 = *(v20 + 448);
    v22 = *(v20 + 392);
    v23 = *(v20 + 384);
    v78 = *(v20 + 400);
    v79 = *(v20 + 368);
    v25 = *(v20 + 344);
    v24 = *(v20 + 352);
    v27 = *(v20 + 328);
    v26 = *(v20 + 336);
    v80 = *(v20 + 320);
    v81 = *(v20 + 376);
    sub_2542DA8C0((v20 + 96), v20 + 56);
    *(v20 + 304) = v24;
    OUTLINED_FUNCTION_33_1();
    sub_2543A3298();
    OUTLINED_FUNCTION_124_0();
    MEMORY[0x259C093D0](0xD000000000000028, 0x80000002543B90B0);
    v28 = *(v20 + 88);
    __swift_project_boxed_opaque_existential_0((v20 + 56), *(v20 + 80));
    v29 = *(v28 + 8);
    sub_2543A35D8();
    MEMORY[0x259C093D0](0x3D79656B202ELL, 0xE600000000000000);
    OUTLINED_FUNCTION_112_0();
    sub_2543A35D8();
    v30._countAndFlagsBits = a15;
    v30._object = a16;
    Logging.ulog(_:extended:)(v30, v21);

    sub_25432B3CC(v20 + 56, v20 + 16);
    v31 = sub_254323664();
    sub_254322888(v80, v27, v31);

    __swift_destroy_boxed_opaque_existential_0((v20 + 56));
    v33 = *(v20 + 336);
    v32 = *(v20 + 344);
    sub_25432B3CC(v20 + 16, v20 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    v34 = OUTLINED_FUNCTION_11_10();
    v35 = OUTLINED_FUNCTION_11_10();
    v36 = OUTLINED_FUNCTION_11_10();
    v37 = OUTLINED_FUNCTION_11_10();
    *(v20 + 256) = v34;
    *(v20 + 264) = v35;
    *(v20 + 272) = v36;
    *(v20 + 280) = v37;
    OUTLINED_FUNCTION_1_22();
    swift_getExtendedExistentialTypeMetadata_unique();
    if (OUTLINED_FUNCTION_117_0())
    {
      v38 = *(v20 + 312);
      __swift_destroy_boxed_opaque_existential_0((v20 + 16));
      sub_2542DA8C0((v20 + 216), v38);
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_85();

      v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, v78, v79, v80, v81, a15, a16, a17, a18, a19, a20);
    }

    else
    {
      v56 = v20 + 336;
      v55 = *(v20 + 336);
      v54 = *(v56 + 8);
      OUTLINED_FUNCTION_33_1();
      sub_2543A3298();

      OUTLINED_FUNCTION_14_5();
      v57 = OUTLINED_FUNCTION_6_13();
      v59 = v58(v57);
      MEMORY[0x259C093D0](v59);

      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_85();
    }
  }

  else
  {
    v39 = *(v20 + 448);
    v41 = *(v20 + 392);
    v40 = *(v20 + 400);
    v42 = *(v20 + 384);
    v43 = *(v20 + 352);
    v44 = *(v20 + 328);
    sub_25432AFA4(v20 + 96);
    *(v20 + 296) = v43;
    OUTLINED_FUNCTION_33_1();
    sub_2543A3298();
    OUTLINED_FUNCTION_124_0();
    MEMORY[0x259C093D0](0xD00000000000004FLL, 0x80000002543B8FF0);
    OUTLINED_FUNCTION_48_1();
    sub_2543A35D8();
    v45._countAndFlagsBits = a15;
    v45._object = a16;
    Logging.ulog(_:extended:)(v45, v39);

    sub_2543A2C88();
    v61 = *(v20 + 336);
    v60 = *(v20 + 344);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_45_0();
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      v63 = *(v20 + 336);
      v62 = *(v20 + 344);
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_60_0();
      sub_25432B00C();
      v65 = v64;
    }

    else
    {

      v65 = MEMORY[0x277D84FA0];
    }

    *(v20 + 416) = v65;
    v67 = *(v20 + 336);
    v66 = *(v20 + 344);
    swift_getAssociatedConformanceWitness();
    sub_25435FF58();
    *(v20 + 424) = v68;
    *(v20 + 449) = v69;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v20 + 432) = v70;
    *v70 = v71;
    v70[1] = sub_254323348;
    v72 = *(v20 + 344);
    v73 = *(v20 + 352);
    v74 = *(v20 + 328);
    v75 = *(v20 + 336);
    v76 = *(v20 + 320);
    OUTLINED_FUNCTION_85();

    sub_2543236EC();
  }
}

uint64_t sub_254323348()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 440) = v0;

  if (v0)
  {
    v9 = *(v3 + 352);
    v10 = sub_2543235F8;
  }

  else
  {
    v11 = *(v3 + 416);
    v12 = *(v3 + 352);
    sub_25432B39C(*(v3 + 424), *(v3 + 449) & 1);

    v10 = sub_254323470;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

void sub_254323470()
{
  OUTLINED_FUNCTION_46_0();
  sub_2542DA8C0((v0 + 136), v0 + 16);
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  sub_25432B3CC(v0 + 16, v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  v3 = OUTLINED_FUNCTION_11_10();
  v4 = OUTLINED_FUNCTION_11_10();
  v5 = OUTLINED_FUNCTION_11_10();
  v6 = OUTLINED_FUNCTION_11_10();
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  *(v0 + 272) = v5;
  *(v0 + 280) = v6;
  OUTLINED_FUNCTION_1_22();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (OUTLINED_FUNCTION_117_0())
  {
    v7 = *(v0 + 312);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2542DA8C0((v0 + 216), v7);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_139_0();

    __asm { BRAA            X1, X16 }
  }

  v12 = v0 + 336;
  v11 = *(v0 + 336);
  v10 = *(v12 + 8);
  OUTLINED_FUNCTION_144_0();

  OUTLINED_FUNCTION_14_5();
  v13 = OUTLINED_FUNCTION_6_13();
  v15 = v14(v13);
  MEMORY[0x259C093D0](v15);

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_139_0();
}

uint64_t sub_2543235F8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 416);
  sub_25432B39C(*(v0 + 424), *(v0 + 449) & 1);

  v2 = *(v0 + 440);
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254323664()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_2543A26F8();
}

uint64_t sub_2543236EC()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 57) = v3;
  *(v1 + 232) = v4;
  *(v1 + 240) = v5;
  *(v1 + 216) = v6;
  *(v1 + 224) = v7;
  *(v1 + 200) = v8;
  *(v1 + 208) = v9;
  OUTLINED_FUNCTION_15_4();
  *(v1 + 264) = *(v10 + 80);
  OUTLINED_FUNCTION_56_0();
  *(v1 + 272) = *(v11 + 88);
  v12 = type metadata accessor for ObservationManager.ObservationKey();
  *(v1 + 280) = v12;
  OUTLINED_FUNCTION_8(v12);
  *(v1 + 288) = v13;
  *(v1 + 296) = *(v14 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_146();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v15);
  v17 = *(v16 + 64);
  *(v1 + 312) = OUTLINED_FUNCTION_146();
  v18 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2543237FC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v58 = *(v0 + 272);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  *(v0 + 168) = *(v0 + 256);
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000003ELL);
  v7 = OUTLINED_FUNCTION_34_2();
  v8 = MEMORY[0x259C093D0](v7, 0xE600000000000000);
  OUTLINED_FUNCTION_55_1(v8, *(v3 + 8));
  v10 = v9(v4);
  MEMORY[0x259C093D0](v10);

  v11 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v11, 0xE500000000000000);
  OUTLINED_FUNCTION_3_15();
  *(v0 + 320) = swift_getWitnessTable();
  sub_2543A35D8();
  v12 = OUTLINED_FUNCTION_78_0();
  MEMORY[0x259C093D0](v12);
  *(v0 + 176) = v5;
  OUTLINED_FUNCTION_93_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_45_0();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  OUTLINED_FUNCTION_64_1();
  *(v0 + 328) = type metadata accessor for ObservationManager();
  v13 = sub_2542DF684() & 1;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v14, v13);

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    v34 = *(v0 + 264);
    v35 = *(v0 + 272);
    _s16ObservationErrorOMa();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_80_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v37 = *(v0 + 304);
    v36 = *(v0 + 312);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_127();

    __asm { BRAA            X1, X16 }
  }

  v16 = Strong;
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v20 = *(v0 + 288);
  v19 = *(v0 + 296);
  v21 = *(v0 + 280);
  v59 = *(v0 + 272);
  v22 = *(v0 + 240);
  v56 = *(v0 + 264);
  v57 = *(v0 + 248);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v55 = *(v0 + 208);
  v25 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v17, v26, v27, v25);
  v28 = *(v20 + 16);
  OUTLINED_FUNCTION_112_0();
  v29();
  v30 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v56;
  *(v31 + 5) = v22;
  *(v31 + 6) = v59;
  *(v31 + 7) = v57;
  *(v31 + 8) = v16;
  *(v31 + 9) = v55;
  (*(v20 + 32))(&v31[v30], v18, v21);
  *&v31[(v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;
  swift_unknownObjectRetain();
  sub_2543A2768();
  OUTLINED_FUNCTION_60_1();
  sub_25434E1A4();
  v33 = v32;
  *(v0 + 344) = v32;
  sub_2543A2C88();
  v41 = *(v0 + 264);
  v40 = *(v0 + 272);
  v42 = *(v0 + 256);
  v43 = *(v0 + 232);
  v44 = *(v0 + 216);
  *(v0 + 16) = v33;
  *(v0 + 56) = 0;
  LOBYTE(v19) = *(v0 + 57);
  *(v0 + 136) = type metadata accessor for ObserversCounter();
  *(v0 + 144) = swift_getWitnessTable();
  *(v0 + 112) = v43;
  LOBYTE(v19) = v19 & 1;
  *(v0 + 120) = v19;

  sub_25432B54C(v43, v19);
  sub_254324594(v0 + 16, v0 + 112, v44);
  OUTLINED_FUNCTION_91_0();
  v45 = type metadata accessor for ObservationManager.ObservationState();
  *(v0 + 352) = v45;
  OUTLINED_FUNCTION_19_0(v45);
  v47 = *(v46 + 8);
  *(v0 + 360) = v47;
  *(v0 + 368) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v48 = *(MEMORY[0x277D857C8] + 4);
  v49 = swift_task_alloc();
  *(v0 + 376) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *(v0 + 384) = v50;
  *v49 = v51;
  v49[1] = sub_254323D0C;
  v52 = *(v0 + 200);
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_127();

  return MEMORY[0x282200430]();
}

uint64_t sub_254323D0C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 376);
  *v4 = *v2;
  *(v3 + 392) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 256);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254323E20()
{
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  v1 = *(v0 + 344);
  v15 = *(v0 + 336);
  v16 = *(v0 + 352);
  v17 = *(v0 + 312);
  v20 = *(v0 + 304);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = swift_task_alloc();
  *v9 = v3;
  v9[1] = v6;
  v9[2] = v2;
  v9[3] = v5;
  swift_getKeyPath();

  sub_25432B3CC(v8, v0 + 64);
  *(v0 + 104) = 1;
  v10 = OUTLINED_FUNCTION_121_0();
  sub_2543224C8(v10, v11, v12);

  swift_unknownObjectRelease();
  v18(v0 + 64, v16);

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_254323F50()
{
  v1 = v0[48];
  v2 = v0[49];
  v18 = v0[43];
  v19 = v0[42];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[35];
  v16 = v0[33];
  v17 = v0[34];
  v6 = v0[27];
  v0[23] = v0[32];
  sub_2543A3298();
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000026);
  sub_2543A35D8();
  v7 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v7, 0xE700000000000000);
  v0[24] = v2;
  sub_2543A3358();
  v8 = v0[19];
  v9 = v0[20];
  v10 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(90, v8, v9, v10 & 1, v4, &off_286648A78);

  sub_2543248E4(v6);
  _s16ObservationErrorOMa();
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_80_1();
  *v11 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  swift_unknownObjectRelease();
  v13 = v0[38];
  v12 = v0[39];

  OUTLINED_FUNCTION_27();

  return v14();
}

uint64_t sub_25432411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[3] = v25;
  v9[4] = a9;
  v9[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v9[6] = v15;
  v16 = *(v15 + 64) + 15;
  v9[7] = swift_task_alloc();
  v17 = swift_task_alloc();
  v9[8] = v17;
  v18 = *(type metadata accessor for ObservationManager.ObservationKey() + 36);
  v19 = *(v26 + 40);
  v23 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v9[9] = v21;
  *v21 = v9;
  v21[1] = sub_25432432C;

  return v23(v17, a5, a6 + v18, a7, a7, v25, a9, a8);
}

uint64_t sub_25432432C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_25432442C()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  (*(v3 + 16))(v0[7], v1, v2);
  OUTLINED_FUNCTION_48_1();
  v8 = sub_254365304(v7);
  OUTLINED_FUNCTION_48_1();
  v6[3] = type metadata accessor for TransportObservation();
  v6[4] = swift_getWitnessTable();
  *v6 = v8;
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_254324530()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_27();
  v4 = v0[10];

  return v3();
}

uint64_t sub_254324594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 88);
  v10 = type metadata accessor for ObservationManager.ObservationKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v23 = &v22 - v13;
  v14 = type metadata accessor for ObservationManager.ObservationState();
  (*(*(v14 - 8) + 16))(v27, a1, v14);
  sub_25432B3CC(a2, &v28);
  v24 = v4;
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B8FA0);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  swift_getWitnessTable();
  sub_2543A35D8();
  v15 = v25;
  v16 = v26;
  v17 = type metadata accessor for ObservationManager();
  v18 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(20, v15, v16, v18 & 1, v17, &off_286648A78);

  (*(v11 + 16))(v23, a3, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  (*(v20 + 16))(&v25, v27, TupleTypeMetadata2);
  swift_beginAccess();
  swift_getWitnessTable();
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  sub_254327D64();
  return (*(v20 + 8))(v27, TupleTypeMetadata2);
}

uint64_t sub_2543248E4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for ObservationManager.ObservationKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  swift_beginAccess();
  v10 = v1[14];
  type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_2543A27D8();

  v11 = *(&v22 + 1);
  v12 = sub_2543A30C8();
  (*(*(v12 - 8) + 8))(v21, v12);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    v23 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    swift_beginAccess();
    sub_2543A27B8();
    sub_2543A27E8();
    swift_endAccess();
    v20 = v1;
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001DLL, 0x80000002543B8D30);
    swift_getWitnessTable();
    sub_2543A35D8();
    v13 = v21[0];
    type metadata accessor for ObservationManager();
    v14 = sub_2542DF684() & 1;
    Logging.ulog(_:extended:)(v13, v14);
  }

  else
  {
    v20 = v1;
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000034, 0x80000002543B8CF0);
    swift_getWitnessTable();
    sub_2543A35D8();
    v15 = v21[0];
    v16 = type metadata accessor for ObservationManager();
    v17 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, v15, *(&v15 + 1), v17 & 1, v16, &off_286648A78);
  }
}

uint64_t sub_254324CA8()
{
  OUTLINED_FUNCTION_46_0();
  v1[85] = v0;
  v1[84] = v2;
  v1[83] = v3;
  v1[82] = v4;
  v1[81] = v5;
  v38 = *v0;
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[86] = AssociatedTypeWitness;
  v7 = OUTLINED_FUNCTION_29_2();
  v8 = OUTLINED_FUNCTION_29_2();
  v9 = OUTLINED_FUNCTION_29_2();
  v1[68] = AssociatedTypeWitness;
  v1[69] = v7;
  v1[70] = v8;
  v1[71] = v9;
  updated = type metadata accessor for ObservationUpdateScope();
  v1[87] = updated;
  OUTLINED_FUNCTION_8(updated);
  v1[88] = v11;
  v13 = *(v12 + 64);
  v1[89] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_111_0();
  v14 = swift_getAssociatedTypeWitness();
  v1[90] = v14;
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_111_0();
  v15 = swift_getAssociatedTypeWitness();
  v1[91] = v15;
  v16 = OUTLINED_FUNCTION_29_2();
  v17 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_1();
  v19 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_1();
  v20 = swift_getAssociatedConformanceWitness();
  v1[13] = v14;
  v1[14] = v15;
  v1[15] = v16;
  v1[16] = v17;
  v1[17] = AssociatedConformanceWitness;
  v1[18] = v19;
  v1[19] = v20;
  v21 = type metadata accessor for UpdateResult();
  v1[92] = v21;
  OUTLINED_FUNCTION_8(v21);
  v1[93] = v22;
  v24 = *(v23 + 64);
  v1[94] = OUTLINED_FUNCTION_146();
  v1[95] = *(v38 + 88);
  v1[96] = *(v38 + 80);
  OUTLINED_FUNCTION_38_1();
  v25 = swift_getAssociatedTypeWitness();
  v1[97] = v25;
  OUTLINED_FUNCTION_8(v25);
  v1[98] = v26;
  v28 = *(v27 + 64);
  v1[99] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_45_0();
  v29 = type metadata accessor for ObservationManager.ObservationKey();
  v1[100] = v29;
  OUTLINED_FUNCTION_8(v29);
  v1[101] = v30;
  v32 = *(v31 + 64);
  v1[102] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_254324FDC()
{
  v80 = *(v0 + 816);
  v82 = *(v0 + 800);
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 760);
  v72 = *(v0 + 768);
  v4 = *(v0 + 680);
  v75 = *(v0 + 672);
  v78 = *(v0 + 792);
  v5 = *(v0 + 664);
  v69 = *(v0 + 656);
  v6 = *(v0 + 648);
  *(v0 + 632) = v4;
  OUTLINED_FUNCTION_94_0();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000025, 0x80000002543B8ED0);
  MEMORY[0x259C093D0](0x3D65746164707520, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x3D7265626D656D20, 0xE800000000000000);
  OUTLINED_FUNCTION_62_1();
  sub_2543A35C8();
  OUTLINED_FUNCTION_64_1();
  *(v0 + 824) = type metadata accessor for ObservationManager();
  *(v0 + 201) = sub_2542DF684() & 1;
  v7._countAndFlagsBits = OUTLINED_FUNCTION_46();
  Logging.ulog(_:extended:)(v7, v8);

  v10 = *(v75 + 8);
  *(v0 + 832) = v10;
  OUTLINED_FUNCTION_55_1(v9, v10);
  *(v0 + 840) = v11;
  *(v0 + 848) = v12 & 0xFFFFFFFFFFFFLL | 0xDCA9000000000000;
  v11(v5);
  (*(v1 + 16))(v78, v69, v2);
  v13 = OUTLINED_FUNCTION_60_0();
  sub_25431D440(v13, v14, v78, v15);
  OUTLINED_FUNCTION_97();
  v16 = *(v4 + 112);
  v17 = type metadata accessor for ObservationManager.ObservationState();
  *(v0 + 856) = v17;
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_38_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61_1();
  sub_2543A27D8();

  if (!*(v0 + 88))
  {
    v38 = *(v0 + 816);
    v39 = *(v0 + 808);
    v40 = *(v0 + 800);
    v41 = *(v0 + 768);
    v42 = *(v0 + 760);
    OUTLINED_FUNCTION_4_7();
    v43 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v43);
    (*(v44 + 8))(v0 + 16);
    OUTLINED_FUNCTION_58_0();
    _s16ObservationErrorOMa();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_138_0();
    (*(v39 + 16))(v45, v38, v40);
    OUTLINED_FUNCTION_51_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v46 = *(v39 + 8);
    v47 = OUTLINED_FUNCTION_60_0();
    v48(v47);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_2();
  *(v0 + 864) = v19;
  v21 = *(v20 + 16);
  v21(v0 + 208, v0 + 16, v17);
  OUTLINED_FUNCTION_4_7();
  v22 = sub_2543A30C8();
  OUTLINED_FUNCTION_2_3(v22);
  (*(v23 + 8))(v0 + 16);
  v24 = *(v0 + 224);
  *(v0 + 160) = *(v0 + 208);
  *(v0 + 176) = v24;
  *(v0 + 185) = *(v0 + 233);
  v21(v0 + 256, v0 + 160, v17);
  if (*(v0 + 296))
  {
    sub_2542DA8C0((v0 + 256), v0 + 304);
    OUTLINED_FUNCTION_89_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    OUTLINED_FUNCTION_20_3();
    *(v0 + 576) = swift_getAssociatedTypeWitness();
    *(v0 + 584) = v82;
    *(v0 + 592) = v78;
    *(v0 + 600) = TupleTypeMetadata2;
    OUTLINED_FUNCTION_1_22();
    swift_getExtendedExistentialTypeMetadata_unique();
    v25 = OUTLINED_FUNCTION_116_0();
    v81 = *(v0 + 808);
    v83 = *(v0 + 816);
    v79 = *(v0 + 800);
    if (v25)
    {
      v71 = *(v0 + 864);
      v73 = *(v0 + 856);
      v26 = *(v0 + 201);
      v27 = *(v0 + 824);
      v76 = *(v0 + 792);
      v28 = *(v0 + 752);
      v68 = *(v0 + 744);
      v70 = *(v0 + 736);
      v29 = *(v0 + 712);
      v66 = *(v0 + 704);
      v67 = *(v0 + 696);
      v30 = *(v0 + 680);
      v31 = *(v0 + 672);
      v32 = *(v0 + 664);
      v33 = *(v0 + 648);
      sub_2542DA8C0((v0 + 424), v0 + 344);
      *(v0 + 640) = v30;
      OUTLINED_FUNCTION_94_0();
      sub_2543A3298();
      OUTLINED_FUNCTION_28_2();
      MEMORY[0x259C093D0](0xD000000000000022);
      sub_2543A35C8();
      Logging.ulog(_:extended:)(v84, v26);

      v34 = *(v0 + 368);
      v35 = *(v0 + 376);
      __swift_project_boxed_opaque_existential_0((v0 + 344), v34);
      (*(v31 + 136))(v32, v31);
      (*(v31 + 144))(v32, v31);
      v36 = OUTLINED_FUNCTION_62_1();
      sub_25430CDC0(v36, v37, v34, v35);
      (*(v66 + 8))(v29, v67);
      (*(v68 + 8))(v28, v70);
      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      (*(v71 + 8))(v0 + 160, v73);
      (*(v81 + 8))(v83, v79);
      __swift_destroy_boxed_opaque_existential_0((v0 + 344));

      OUTLINED_FUNCTION_25();
      goto LABEL_11;
    }

    v53 = *(v0 + 864);
    v74 = *(v0 + 848);
    v77 = *(v0 + 856);
    v54 = *(v0 + 840);
    v55 = *(v0 + 832);
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_138_0();
    v57 = v56;
    sub_25432B3CC(v0 + 304, v0 + 464);
    __swift_project_boxed_opaque_existential_0((v0 + 464), *(v0 + 488));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    v58 = sub_2543A37B8();
    v60 = v59;
    v61 = OUTLINED_FUNCTION_59_1();
    v62 = v54(v61, v55);
    MEMORY[0x259C093D0](v62);

    v57->_countAndFlagsBits = v58;
    v57->_object = v60;
    v57[1] = v84;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v53 + 8))(v0 + 160, v77);
    (*(v81 + 8))(v83, v79);
LABEL_10:
    OUTLINED_FUNCTION_142_0();

    OUTLINED_FUNCTION_27();
LABEL_11:
    OUTLINED_FUNCTION_130();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 872) = *(v0 + 256);
  v49 = *(MEMORY[0x277D857C8] + 4);
  v50 = swift_task_alloc();
  *(v0 + 880) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *v50 = v51;
  v50[1] = sub_2543257F0;
  OUTLINED_FUNCTION_130();

  return MEMORY[0x282200430]();
}

uint64_t sub_2543257F0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 880);
  *v4 = *v2;
  *(v3 + 888) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 680);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_254325904()
{
  v4 = *(v0 + 872);

  sub_2542DA8C0((v0 + 504), v0 + 304);
  OUTLINED_FUNCTION_89_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  OUTLINED_FUNCTION_20_3();
  *(v0 + 576) = swift_getAssociatedTypeWitness();
  *(v0 + 584) = v2;
  *(v0 + 592) = v3;
  *(v0 + 600) = v1;
  OUTLINED_FUNCTION_1_22();
  swift_getExtendedExistentialTypeMetadata_unique();
  v5 = OUTLINED_FUNCTION_116_0();
  v6 = *(v0 + 856);
  v40 = v6;
  v41 = *(v0 + 864);
  if (v5)
  {
    v7 = *(v0 + 201);
    v8 = *(v0 + 824);
    v34 = *(v0 + 800);
    v36 = *(v0 + 816);
    v38 = *(v0 + 792);
    v9 = *(v0 + 752);
    v32 = *(v0 + 736);
    v33 = *(v0 + 808);
    v10 = *(v0 + 712);
    v29 = *(v0 + 704);
    v30 = *(v0 + 696);
    v31 = *(v0 + 744);
    v11 = *(v0 + 680);
    v12 = *(v0 + 672);
    v13 = *(v0 + 664);
    v14 = *(v0 + 648);
    sub_2542DA8C0((v0 + 424), v0 + 344);
    *(v0 + 640) = v11;
    OUTLINED_FUNCTION_94_0();
    sub_2543A3298();
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x259C093D0](0xD000000000000022);
    sub_2543A35C8();
    Logging.ulog(_:extended:)(v42, v7);

    v15 = *(v0 + 368);
    v16 = *(v0 + 376);
    __swift_project_boxed_opaque_existential_0((v0 + 344), v15);
    (*(v12 + 136))(v13, v12);
    (*(v12 + 144))(v13, v12);
    sub_25430CDC0(v9, v10, v15, v16);
    (*(v29 + 8))(v10, v30);
    (*(v31 + 8))(v9, v32);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v41 + 8))(v0 + 160, v40);
    (*(v33 + 8))(v36, v34);
    __swift_destroy_boxed_opaque_existential_0((v0 + 344));

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v17 = *(v0 + 840);
    v18 = *(v0 + 832);
    v39 = *(v0 + 816);
    v19 = *(v0 + 808);
    v35 = *(v0 + 848);
    v37 = *(v0 + 800);
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_50_1();
    v21 = v20;
    sub_25432B3CC(v0 + 304, v0 + 464);
    __swift_project_boxed_opaque_existential_0((v0 + 464), *(v0 + 488));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    v22 = sub_2543A37B8();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_59_1();
    v26 = v17(v25, v18);
    MEMORY[0x259C093D0](v26);

    v21->_countAndFlagsBits = v22;
    v21->_object = v24;
    v21[1] = v42;
    OUTLINED_FUNCTION_121_0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v41 + 8))(v0 + 160, v40);
    (*(v19 + 8))(v39, v37);
    OUTLINED_FUNCTION_142_0();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_130();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_254325CDC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];

  (*(v2 + 8))(v0 + 20, v3);
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_46();
  v9(v8);
  v10 = v0[111];
  v11 = v0[102];
  v12 = v0[99];
  v13 = v0[94];
  v14 = v0[89];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

void sub_254325DAC()
{
  OUTLINED_FUNCTION_88();
  v40 = v1;
  OUTLINED_FUNCTION_15_4();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_56_0();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_58_0();
  v38 = v3;
  v39 = v5;
  v6 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  v37 = *(v9 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_2();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v45 = v0;
  v44[2] = 0;
  v44[3] = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001FLL);
  v22 = OUTLINED_FUNCTION_15_6();
  MEMORY[0x259C093D0](v22, 0xEA00000000003D44);
  OUTLINED_FUNCTION_57_0();
  swift_checkMetadataState();
  sub_2543A32A8();
  sub_2543A35C8();
  (*(v16 + 8))(v21, AssociatedTypeWitness);
  v24 = v38;
  v23 = v39;
  type metadata accessor for ObservationManager();
  sub_2542DF684();
  v25._countAndFlagsBits = OUTLINED_FUNCTION_62_1();
  Logging.ulog(_:extended:)(v25, v26);

  OUTLINED_FUNCTION_97();
  v27 = *(v0 + 112);
  type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_58_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_111_0();
  v28 = sub_2543A2768();

  v45 = v28;
  v41 = v24;
  v42 = v23;
  v43 = v40;
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_111_0();
  sub_2543A2758();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  v29 = sub_2543A29A8();
  v30 = sub_2543A2A48();
  v45 = v30;
  OUTLINED_FUNCTION_4_1();
  if (v30 == sub_2543A2AC8())
  {
LABEL_2:

    OUTLINED_FUNCTION_86();
    return;
  }

  while (1)
  {
    OUTLINED_FUNCTION_4_1();
    v31 = sub_2543A2AA8();
    sub_2543A2A68();
    if ((v31 & 1) == 0)
    {
      break;
    }

    (*(v8 + 16))(v12, v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v6);
LABEL_5:
    sub_2543A2B28();
    sub_2543262C4(v12);
    v32 = *(v8 + 8);
    v33 = OUTLINED_FUNCTION_114_0();
    v34(v33);
    OUTLINED_FUNCTION_4_1();
    v35 = sub_2543A2AC8();
    v30 = v45;
    if (v45 == v35)
    {
      goto LABEL_2;
    }
  }

  v36 = sub_2543A32B8();
  if (v37 == 8)
  {
    v44[0] = v36;
    (*(v8 + 16))(v12, v44, v6);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_254326208()
{
  swift_getAssociatedTypeWitness();
  v0 = *(type metadata accessor for ObservationManager.ObservationKey() + 36);
  v1 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_2543A2848() & 1;
}

uint64_t sub_2543262C4(uint64_t a1)
{
  v3 = *v1;
  v28[0]._countAndFlagsBits = 0;
  v28[0]._object = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000019);
  v4 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v4, 0xE500000000000000);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_3_15();
  swift_getWitnessTable();
  sub_2543A35D8();
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for ObservationManager();
  v27 = sub_2542DF684();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v7, v27 & 1);

  OUTLINED_FUNCTION_97();
  v8 = v1[14];
  v9 = type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_57_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_121_0();
  sub_2543A27D8();

  if (v30)
  {
    OUTLINED_FUNCTION_0_2();
    v11 = v10;
    v13 = *(v12 + 16);
    v13(&v31, v28, v9);
    OUTLINED_FUNCTION_38_1();
    v14 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v14);
    (*(v15 + 8))(v28);
    v33 = v31;
    v34[0] = *v32;
    *(v34 + 9) = *&v32[9];
    v13(&v28[0]._countAndFlagsBits, &v33, v9);
    if (v29)
    {
      sub_2542DA8C0(&v28[0]._countAndFlagsBits, &v31);
      sub_2543A3298();
      OUTLINED_FUNCTION_131_0();
      MEMORY[0x259C093D0](0xD00000000000001DLL, 0x80000002543B8E60);
      v16 = *&v32[16];
      __swift_project_boxed_opaque_existential_0(&v31, *&v32[8]);
      v17 = *(v16 + 8);
      sub_2543A35D8();
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      Logging.ulog(_:extended:)(v18, v27 & 1);

      v19 = *&v32[16];
      __swift_project_boxed_opaque_existential_0(&v31, *&v32[8]);
      OUTLINED_FUNCTION_54_1();
      sub_254326754(v20, v21, v22, v19);
      __swift_destroy_boxed_opaque_existential_0(&v31);
    }

    else
    {
      *&v31 = v1;
      v26._countAndFlagsBits = 0xD000000000000027;
      v26._object = 0x80000002543B8E80;
      Logging.ulog(_:extended:)(v26, v27 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
      sub_2543A2C58();
    }

    sub_2543248E4(a1);
    return (*(v11 + 8))(&v33, v9);
  }

  else
  {
    OUTLINED_FUNCTION_38_1();
    v23 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v23);
    (*(v24 + 8))(v28);
    *&v33 = v1;
    OUTLINED_FUNCTION_33_1();
    sub_2543A3298();
    OUTLINED_FUNCTION_124_0();
    MEMORY[0x259C093D0](0xD00000000000003ALL, 0x80000002543B8E20);
    sub_2543A35D8();
    Logging.ulog(_:extended:)(v28[0], v27 & 1);
  }
}

uint64_t sub_254326754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_2543A1FF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(a4 + 64))(a3, a4);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, AssociatedTypeWitness);
  sub_2543A2088();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2543268EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[40] = a5;
  v6[41] = v5;
  v6[38] = a3;
  v6[39] = a4;
  v6[36] = a1;
  v6[37] = a2;
  v6[42] = *v5;
  return OUTLINED_FUNCTION_17_6(sub_254326938, v5);
}

uint64_t sub_254326938()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  *(v0 + 248) = *(v0 + 328);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000035);
  v3 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v3, 0xE500000000000000);
  *(v0 + 344) = *(v1 + 80);
  *(v0 + 352) = *(v1 + 88);
  OUTLINED_FUNCTION_4_7();
  *(v0 + 360) = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_3_15();
  *(v0 + 368) = swift_getWitnessTable();
  sub_2543A35D8();
  OUTLINED_FUNCTION_4_7();
  *(v0 + 376) = type metadata accessor for ObservationManager();
  v4 = sub_2542DF684();
  *(v0 + 424) = v4 & 1;
  OUTLINED_FUNCTION_26_2(v4, v5);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 384) = v6;
  *v6 = v7;
  v6[1] = sub_254326AAC;
  v8 = *(v0 + 328);
  v9 = *(v0 + 296);

  return sub_254321150(v0 + 104, v9);
}

uint64_t sub_254326AAC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *(v4 + 328);
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  sub_25432AFA4(v2 + 104);

  return MEMORY[0x2822009F8](sub_254326BAC, v6, 0);
}

uint64_t sub_254326BAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, char *extended, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  sub_2543A2C88();
  v25 = *(v24 + 320);
  v26 = *(v24 + 328);
  v27 = *(v24 + 312);
  v28 = sub_2543272FC(*(v24 + 288), *(v24 + 296), *(v24 + 304));
  v30 = v29;
  *(v24 + 392) = v29;
  if ((v28 & 1) == 0)
  {
    v77 = *(v24 + 424);
    v78 = *(v24 + 376);
    v79 = *(v24 + 328);

    *(v24 + 256) = v79;
    v80._countAndFlagsBits = 0xD00000000000003ALL;
    v80._object = 0x80000002543B8C30;
    Logging.ulog(_:extended:)(v80, v77);
LABEL_11:
    OUTLINED_FUNCTION_25();
    goto LABEL_12;
  }

  v32 = *(v24 + 352);
  v31 = *(v24 + 360);
  v33 = *(v24 + 344);
  v34 = *(v24 + 328);
  v35 = *(v24 + 296);
  OUTLINED_FUNCTION_97();
  v36 = *(v34 + 112);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_58_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65();
  sub_2543A27D8();

  if (!*(v24 + 88))
  {

    OUTLINED_FUNCTION_58_0();
    v81 = sub_2543A30C8();
    OUTLINED_FUNCTION_2_3(v81);
    (*(v82 + 8))(v24 + 16);
    goto LABEL_11;
  }

  LODWORD(extended) = *(v24 + 424);
  v38 = *(v24 + 368);
  v37 = *(v24 + 376);
  v39 = *(v24 + 360);
  v41 = *(v24 + 320);
  v40 = *(v24 + 328);
  v42 = *(v24 + 312);
  v43 = *(v24 + 296);
  sub_25432B3CC(v24 + 64, v24 + 184);
  OUTLINED_FUNCTION_58_0();
  v44 = sub_2543A30C8();
  OUTLINED_FUNCTION_2_3(v44);
  (*(v45 + 8))(v24 + 16);
  sub_2542DA8C0((v24 + 184), v24 + 144);
  *(v24 + 264) = v40;
  a11 = 0;
  a12 = 0xE000000000000000;
  sub_2543A3298();
  a9 = "Won't stop any observation";
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x259C093D0](0xD00000000000001ALL);
  OUTLINED_FUNCTION_112_0();
  sub_2543A35D8();
  v46 = OUTLINED_FUNCTION_78_0();
  MEMORY[0x259C093D0](v46);
  *(v24 + 272) = v30;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_65();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_58_0();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x259C093D0]();
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v47, extended);

  v48 = *(v24 + 168);
  v49 = *(v24 + 176);
  __swift_project_boxed_opaque_existential_0((v24 + 144), v48);
  if (!sub_25435FF60(v48, v49))
  {
    v50 = *(v24 + 424);
    v52 = *(v24 + 368);
    v51 = *(v24 + 376);
    v53 = *(v24 + 360);
    v54 = *(v24 + 296);
    *(v24 + 280) = *(v24 + 328);
    a11 = 0;
    a12 = 0xE000000000000000;
    sub_2543A3298();
    OUTLINED_FUNCTION_133_0();
    MEMORY[0x259C093D0](0xD00000000000001ALL);
    OUTLINED_FUNCTION_112_0();
    sub_2543A35D8();
    OUTLINED_FUNCTION_133_0();
    MEMORY[0x259C093D0]();
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    Logging.ulog(_:extended:)(v55, v50);

    sub_2543248E4(v54);
  }

  v56 = *(v24 + 328);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v24 + 400) = Strong;
  if (Strong)
  {
    v58 = *(v24 + 296);
    v59 = *(*(v24 + 360) + 36);
    v95 = (*(v24 + 352) + 48);
    extendeda = *v95 + **v95;
    v60 = (*v95)[1];
    v61 = swift_task_alloc();
    *(v24 + 408) = v61;
    *v61 = v24;
    v61[1] = sub_2543270FC;
    v62 = *(v24 + 344);
    v63 = *(v24 + 352);
    v64 = *(v24 + 312);
    v65 = *(v24 + 320);
    v66 = *(v24 + 288);
    OUTLINED_FUNCTION_48();

    return v74(v67, v68, v69, v70, v71, v72, v73, v74, v95, extendeda, 0, 0xE000000000000000, a13, a14, a15, a16);
  }

  v92 = *(v24 + 344);
  v91 = *(v24 + 352);

  OUTLINED_FUNCTION_58_0();
  _s16ObservationErrorOMa();
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  v93 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_95_0(v93, v94);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v24 + 144));
  OUTLINED_FUNCTION_27();
LABEL_12:
  OUTLINED_FUNCTION_48();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, extended, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2543270FC()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  *(v3 + 416) = v0;

  v6 = v2[49];
  v7 = v2[41];

  if (v0)
  {
    v8 = sub_254327298;
  }

  else
  {
    v8 = sub_254327238;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_254327238()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 400);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_254327298()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[50];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v2 = v0[52];
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2543272FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000033, 0x80000002543B8D50);
  MEMORY[0x259C093D0](0x3D6570797420, 0xE600000000000000);
  v7 = sub_2543A37B8();
  MEMORY[0x259C093D0](v7);

  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for ObservationManager.ObservationKey();
  swift_getWitnessTable();
  sub_2543A35D8();
  MEMORY[0x259C093D0](0x5574656772617420, 0xEE003D6574616470);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2543A2EB8();
  swift_getWitnessTable();
  sub_2543A35D8();
  type metadata accessor for ObservationManager();
  v10 = sub_2542DF684() & 1;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v11, v10);

  return sub_254328110(a1, a2, sub_25432865C, 0, a3) & 1;
}

uint64_t sub_254327598()
{
  v1 = *(v0 + 112);

  MEMORY[0x259C0AE60](v0 + 120);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2543275C8()
{
  sub_254327598();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25432760C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254327668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2543276A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2543276F0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_254327730(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2543277C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_23;
  }

  v13 = ((v12 + 16) & ~v12) + *(*(AssociatedTypeWitness - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_23:
      if ((v10 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v12 + 16) & ~v12, v10, AssociatedTypeWitness);
      }

      else
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_23;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v11 + (v13 | v18) + 1;
}

void sub_2543279A0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = ((v13 + 16) & ~v13) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v14 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v14 < 4)
    {
      v18 = (v17 >> v15) + 1;
      if (v14)
      {
        v21 = v17 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v21;
          *(a1 + 2) = BYTE2(v21);
        }

        else if (v14 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v14) = v18;
        return;
      case 2:
        *(a1 + v14) = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v14) = v18;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x254327C10);
    case 4:
      *(a1 + v14) = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v11 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((a1 + v13 + 16) & ~v13, a2, v11, AssociatedTypeWitness);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t *sub_254327C6C()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_69_1();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_69_1();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_54_1();
  type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_54_1();
  type metadata accessor for ObservationManager.ObservationState();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_92_0();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  v0[14] = sub_2543A2748();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_254327D64()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[14];
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for ObservationManager.ObservationKey();
  type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_2543A27D8();

  if (v19[9])
  {
    memcpy(__dst, v19, 0x58uLL);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B8DE0);
    swift_getWitnessTable();
    sub_2543A35D8();
    MEMORY[0x259C093D0](0x3A65746174530A3ALL, 0xE900000000000020);
    sub_2543A35C8();
    MEMORY[0x259C093D0](0x203A746E756F430ALL, 0xE800000000000000);
    v7 = __dst[10];
    __swift_project_boxed_opaque_existential_0(&__dst[6], __dst[9]);
    v8 = *(v7 + 8);
    sub_2543A35D8();
    v9 = v19[0];
    v10 = v19[1];
    v19[0] = v1;
    type metadata accessor for ObservationManager();
    v11 = sub_2542DF684() & 1;
    v12._countAndFlagsBits = v9;
    v12._object = v10;
    Logging.ulog(_:extended:)(v12, v11);

    return (*(*(TupleTypeMetadata2 - 8) + 8))(__dst, TupleTypeMetadata2);
  }

  else
  {
    v14 = sub_2543A30C8();
    (*(*(v14 - 8) + 8))(v19, v14);
    v19[0] = v1;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000016, 0x80000002543B8DC0);
    swift_getWitnessTable();
    sub_2543A35D8();
    v15 = __dst[0];
    v16 = __dst[1];
    v17 = type metadata accessor for ObservationManager();
    v18 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, v15, v16, v18 & 1, v17, &off_286648A78);
  }
}

uint64_t sub_254328110(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  swift_beginAccess();
  v8 = v5[14];
  v9 = *(v7 + 80);
  v10 = *(v7 + 88);
  type metadata accessor for ObservationManager.ObservationKey();
  v11 = type metadata accessor for ObservationManager.ObservationState();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_2543A27D8();

  if (!__src[9])
  {
    v20 = sub_2543A30C8();
    (*(*(v20 - 8) + 8))(__src, v20);
    swift_getAssociatedTypeWitness();
    sub_2543A2A88();
    if (!sub_2543A2AC8())
    {

      return 0;
    }

    swift_getAssociatedConformanceWitness();
    sub_25432B00C();
    return 0;
  }

  v22 = a2;
  memcpy(__dst, __src, sizeof(__dst));
  v23 = *(TupleTypeMetadata2 - 8);
  (*(v23 + 16))(__src, __dst, TupleTypeMetadata2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ObserversCounter();
  if (!swift_dynamicCast())
  {
    (*(*(v11 - 8) + 8))(__src, v11);
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      sub_25432B00C();
      (*(v23 + 8))(__dst, TupleTypeMetadata2);
    }

    else
    {
      (*(v23 + 8))(__dst, TupleTypeMetadata2);
    }

    return 0;
  }

  (*(*(v11 - 8) + 8))(__src, v11);
  v14 = sub_2543600A0(a3, a4, a5, v27, v28);
  v16 = v15;
  v17 = (v15 >> 8) & 1;
  v18 = sub_25432B39C(v27, v28);
  MEMORY[0x28223BE20](v18);
  KeyPath = swift_getKeyPath();
  __src[3] = v13;
  __src[4] = swift_getWitnessTable();
  __src[0] = v14;
  LOBYTE(__src[1]) = v16 & 1;
  sub_2543224C8(v22, KeyPath, __src);

  (*(v23 + 8))(__dst, TupleTypeMetadata2);
  __swift_destroy_boxed_opaque_existential_0(__src);
  return v17;
}

uint64_t sub_25432864C(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25432865C(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25432866C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[9] = *(v7 + 88);
  OUTLINED_FUNCTION_56_0();
  v1[10] = *(v8 + 80);
  v1[11] = OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_41_2();
  v1[12] = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = OUTLINED_FUNCTION_146_0();
  v1[13] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_254328790()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v24 = v0[9];
  v25 = v0[10];
  OUTLINED_FUNCTION_25_3(v0[8]);
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001ELL);
  v6 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v6, 0xE600000000000000);
  v7 = sub_2543A37B8();
  MEMORY[0x259C093D0](v7);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_118_0();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_65();
  sub_2543A35C8();
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_65();
  v10(v9);
  OUTLINED_FUNCTION_103_0();
  v11 = sub_2542DF684();
  OUTLINED_FUNCTION_26_2(v11, v12);

  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_30_1(v13);
  *v14 = v15;
  v14[1] = sub_2543288F0;
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[3];
  v21 = v0[4];
  OUTLINED_FUNCTION_48();

  return sub_25431D6A4();
}

uint64_t sub_2543288F0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_2543289EC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[4] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[11] = *(v8 + 88);
  OUTLINED_FUNCTION_56_0();
  v1[12] = *(v9 + 80);
  v1[13] = OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_41_2();
  v1[14] = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = OUTLINED_FUNCTION_146_0();
  v1[15] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_254328B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  v21 = v20[16];
  v22 = v20[17];
  v24 = v20[14];
  v23 = v20[15];
  v25 = v20[13];
  v58 = v20[11];
  v59 = v20[12];
  v61 = v20[8];
  v62 = v20[9];
  v26 = v20[6];
  v60 = v20[7];
  v27 = v20[5];
  v20[2] = v20[10];
  OUTLINED_FUNCTION_33_1();
  sub_2543A3298();
  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000028);
  v28 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v28, 0xE600000000000000);
  v29 = sub_2543A37B8();
  MEMORY[0x259C093D0](v29);

  v30 = OUTLINED_FUNCTION_15_6();
  MEMORY[0x259C093D0](v30, 0xEA00000000003D44);
  OUTLINED_FUNCTION_57_0();
  swift_checkMetadataState();
  sub_2543A32A8();
  OUTLINED_FUNCTION_122_0();
  sub_2543A35C8();
  v31 = *(v21 + 8);
  v32 = OUTLINED_FUNCTION_122_0();
  v33(v32);
  type metadata accessor for ObservationManager();
  sub_2542DF684();
  v34._countAndFlagsBits = OUTLINED_FUNCTION_60_0();
  Logging.ulog(_:extended:)(v34, v35);

  v20[3] = v60;
  OUTLINED_FUNCTION_41_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_4_7();
  sub_2543A2EB8();
  swift_getWitnessTable();
  if (sub_254372EE4())
  {
    v36 = v20[7];
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v20[18] = v37;
    *v37 = v38;
    v37[1] = sub_254328DD8;
    v39 = v20[9];
    v40 = v20[10];
    v41 = v20[8];
    v42 = v20[5];
    v43 = v20[6];
    v44 = v20[4];
    OUTLINED_FUNCTION_85();

    return sub_25431D6A4();
  }

  else
  {
    v48 = v20[11];
    v47 = v20[12];
    _s16ObservationErrorOMa();
    OUTLINED_FUNCTION_0_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_80_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v49 = v20[17];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_85();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v58, v59, v60, v61, v62, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_254328DD8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  v2 = *(v0 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_167();
  v6 = *(v5 + 136);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_254328EDC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_146();
  v1[10] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58_0();
  v11 = sub_2543A2BF8();
  v1[11] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v15 = sub_2543A2C28();
  v1[14] = v15;
  OUTLINED_FUNCTION_8(v15);
  v1[15] = v16;
  v1[16] = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_147_0();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_58_0();
  v18 = sub_2543A2D78();
  v1[19] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[20] = v19;
  v1[21] = *(v20 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_69_1();
  v1[24] = *(v21 + 88);
  OUTLINED_FUNCTION_69_1();
  v1[25] = *(v22 + 80);
  OUTLINED_FUNCTION_54_1();
  v1[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_61_1();
  v1[27] = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = OUTLINED_FUNCTION_146_0();
  v1[28] = v23;
  OUTLINED_FUNCTION_8(v23);
  v1[29] = v24;
  v26 = *(v25 + 64);
  v1[30] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_254329198()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v23 = v0[24];
  v24 = v0[25];
  OUTLINED_FUNCTION_25_3(v0[8]);
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001ELL);
  v6 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v6, 0xE600000000000000);
  v7 = sub_2543A37B8();
  MEMORY[0x259C093D0](v7);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_118_0();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_65();
  sub_2543A35C8();
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_65();
  v10(v9);
  OUTLINED_FUNCTION_103_0();
  v11 = sub_2542DF684();
  OUTLINED_FUNCTION_26_2(v11, v12);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[31] = v13;
  *v13 = v14;
  v13[1] = sub_254329300;
  v15 = v0[23];
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];
  OUTLINED_FUNCTION_48();

  return sub_25432866C();
}

uint64_t sub_254329300()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 248);
  *v4 = *v2;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254329414()
{
  v108 = v0[30];
  v112 = v0[25];
  v110 = v0[24];
  v113 = v0[23];
  v1 = v0[20];
  v2 = v0[18];
  v76 = v0[19];
  v81 = v0[22];
  v86 = v0[17];
  v96 = v0[21];
  v99 = v0[16];
  v66 = v0[14];
  v71 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_84_0();
  (*(v3 + 8))(v4, v6);
  v10 = sub_2543A2BB8();
  v13 = OUTLINED_FUNCTION_120_0(v7, v11, v12, v10);
  v21 = OUTLINED_FUNCTION_74_0(v13, v14, v15, v16, v17, v18, v19, v20, v66, v71, v76, v81);
  v23 = v22(v21);
  v31 = OUTLINED_FUNCTION_76_1(v23, v24, v25, v26, v27, v28, v29, v30, v67, v72, v77, v82, v86);
  v33 = v32(v31);
  OUTLINED_FUNCTION_53_1(v33, v34, v35, v36, v37, v38, v39, v40, v68, v73, v78, v83, v87, v90, v7, v96);
  v41 = swift_allocObject();
  v49 = OUTLINED_FUNCTION_45_1(v41, v42, v43, v44, v45, v46, v47, v48, v69, v74, v79, v84, v88, v91, v94, v97, v99, v101, v103, v106, v108, v110);
  v50(v49);
  v51 = OUTLINED_FUNCTION_72_1();
  v52(v51);
  OUTLINED_FUNCTION_60_1();
  sub_25434DFA4();
  OUTLINED_FUNCTION_115_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_82_1(v53, v54, v55, v56, v57, v58, v59, v60, v70, v75, v80, v85, v89, v92, v95, v98, v100, v102, v104, v107, v109, v111);
  sub_2543A2BE8();
  (*(v7 + 8))(v105, v3 + 8);
  v61 = *(v93 + 8);
  v62 = OUTLINED_FUNCTION_46();
  v63(v62);

  OUTLINED_FUNCTION_25();

  return v64();
}

void sub_254329630()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[30];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[13];
  v7 = v0[9];

  OUTLINED_FUNCTION_27();
  v8 = v0[32];
  OUTLINED_FUNCTION_195();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2543296D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = sub_2543A2BF8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_254329750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[5] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_2543A2BD8();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = *(*(sub_2543A30C8() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v13 = sub_2543A2D68();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254329948, 0, 0);
}

uint64_t sub_254329948()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_128_0();
  sub_2543A2D78();
  sub_2543A2D48();
  v0 = *(MEMORY[0x277D858B8] + 4);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_9(v2);

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_2543299E8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254329AE4()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_150_0();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_73_1();
    v5(v4);
    OUTLINED_FUNCTION_64_1();
    sub_2543A2C28();
    sub_2543A2C18();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_181();

    __asm { BRAA            X1, X16 }
  }

  v8 = OUTLINED_FUNCTION_67_1();
  v9(v8);
  OUTLINED_FUNCTION_64_1();
  sub_2543A2C28();
  sub_2543A2C08();
  (*(v2 + 8))(v0, v1);
  v10 = *(MEMORY[0x277D858B8] + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_30_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8_9(v12);
  OUTLINED_FUNCTION_181();

  return MEMORY[0x2822005A8](v14);
}

uint64_t sub_254329C2C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  v8 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_146();
  v1[11] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58_0();
  v12 = sub_2543A2BF8();
  v1[12] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v16 = sub_2543A2C28();
  v1[15] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[16] = v17;
  v1[17] = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_147_0();
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_58_0();
  v19 = sub_2543A2D78();
  v1[20] = v19;
  OUTLINED_FUNCTION_8(v19);
  v1[21] = v20;
  v1[22] = *(v21 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_69_1();
  v1[25] = *(v22 + 88);
  OUTLINED_FUNCTION_69_1();
  v1[26] = *(v23 + 80);
  OUTLINED_FUNCTION_54_1();
  v1[27] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_61_1();
  v1[28] = *(swift_getAssociatedConformanceWitness() + 8);
  v24 = OUTLINED_FUNCTION_146_0();
  v1[29] = v24;
  OUTLINED_FUNCTION_8(v24);
  v1[30] = v25;
  v27 = *(v26 + 64);
  v1[31] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_254329EEC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v24 = v0[25];
  v25 = v0[26];
  OUTLINED_FUNCTION_25_3(v0[9]);
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000028);
  v6 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v6, 0xE600000000000000);
  v7 = sub_2543A37B8();
  MEMORY[0x259C093D0](v7);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_118_0();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_65();
  sub_2543A35C8();
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_65();
  v10(v9);
  OUTLINED_FUNCTION_103_0();
  v11 = sub_2542DF684();
  OUTLINED_FUNCTION_26_2(v11, v12);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[32] = v13;
  *v13 = v14;
  v13[1] = sub_25432A054;
  v15 = v0[24];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[4];
  v21 = v0[5];
  OUTLINED_FUNCTION_48();

  return sub_2543289EC();
}

uint64_t sub_25432A054()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 256);
  *v4 = *v2;
  *(v3 + 264) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_25432A168()
{
  v108 = v0[31];
  v112 = v0[26];
  v110 = v0[25];
  v113 = v0[24];
  v1 = v0[21];
  v2 = v0[19];
  v76 = v0[20];
  v81 = v0[23];
  v86 = v0[18];
  v96 = v0[22];
  v99 = v0[17];
  v66 = v0[15];
  v71 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_84_0();
  (*(v3 + 8))(v4, v6);
  v10 = sub_2543A2BB8();
  v13 = OUTLINED_FUNCTION_120_0(v7, v11, v12, v10);
  v21 = OUTLINED_FUNCTION_74_0(v13, v14, v15, v16, v17, v18, v19, v20, v66, v71, v76, v81);
  v23 = v22(v21);
  v31 = OUTLINED_FUNCTION_76_1(v23, v24, v25, v26, v27, v28, v29, v30, v67, v72, v77, v82, v86);
  v33 = v32(v31);
  OUTLINED_FUNCTION_53_1(v33, v34, v35, v36, v37, v38, v39, v40, v68, v73, v78, v83, v87, v90, v7, v96);
  v41 = swift_allocObject();
  v49 = OUTLINED_FUNCTION_45_1(v41, v42, v43, v44, v45, v46, v47, v48, v69, v74, v79, v84, v88, v91, v94, v97, v99, v101, v103, v106, v108, v110);
  v50(v49);
  v51 = OUTLINED_FUNCTION_72_1();
  v52(v51);
  OUTLINED_FUNCTION_60_1();
  sub_25434DFA4();
  OUTLINED_FUNCTION_115_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_82_1(v53, v54, v55, v56, v57, v58, v59, v60, v70, v75, v80, v85, v89, v92, v95, v98, v100, v102, v104, v107, v109, v111);
  sub_2543A2BE8();
  (*(v7 + 8))(v105, v3 + 8);
  v61 = *(v93 + 8);
  v62 = OUTLINED_FUNCTION_46();
  v63(v62);

  OUTLINED_FUNCTION_25();

  return v64();
}

void sub_25432A384()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[14];
  v7 = v0[10];

  OUTLINED_FUNCTION_27();
  v8 = v0[33];
  OUTLINED_FUNCTION_195();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_25432A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[5] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_2543A2BD8();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = *(*(sub_2543A30C8() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v13 = sub_2543A2D68();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25432A624, 0, 0);
}

uint64_t sub_25432A624()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_128_0();
  sub_2543A2D78();
  sub_2543A2D48();
  v0 = *(MEMORY[0x277D858B8] + 4);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_9(v2);

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_25432A6C4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_25432A7C0()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_150_0();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_73_1();
    v5(v4);
    OUTLINED_FUNCTION_64_1();
    sub_2543A2C28();
    sub_2543A2C18();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_181();

    __asm { BRAA            X1, X16 }
  }

  v8 = OUTLINED_FUNCTION_67_1();
  v9(v8);
  OUTLINED_FUNCTION_64_1();
  sub_2543A2C28();
  sub_2543A2C08();
  (*(v2 + 8))(v0, v1);
  v10 = *(MEMORY[0x277D858B8] + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_30_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8_9(v12);
  OUTLINED_FUNCTION_181();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_25432A908()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v4 = v0[2];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_25432A9AC()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_75_0();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_91_0();
  v1 = sub_2543A2D78();
  OUTLINED_FUNCTION_8(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_91_0();
  v6 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_123_0();
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_46_1(v9);
  OUTLINED_FUNCTION_77_0();

  return sub_25432A42C(v10, v11, v12, v13, v14);
}

uint64_t sub_25432AB0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);

  return sub_2543A2C58();
}

uint64_t sub_25432AB6C()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_88();
  v1 = *(v0 + 5);
  v2 = *(v0 + 7);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_45_0();
  v3 = sub_2543A2D78();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  v6 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A2C28();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  v12 = (v6 + v8 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v5 + 8))(&v0[v6], v3);
  (*(v11 + 8))(&v0[v12], v9);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_25432AD2C()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_75_0();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_91_0();
  v1 = sub_2543A2D78();
  OUTLINED_FUNCTION_8(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_91_0();
  v6 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_123_0();
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_46_1(v9);
  OUTLINED_FUNCTION_77_0();

  return sub_254329750(v10, v11, v12, v13, v14);
}

uint64_t sub_25432AEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 1;
  v8 = 0;
  sub_2543A27B8();
  return sub_2543A27E8();
}

uint64_t sub_25432AFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0F60, &qword_2543AC590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25432B00C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  if (sub_2543A2AC8())
  {
    OUTLINED_FUNCTION_92_0();
    sub_2543A3278();
    v17 = sub_2543A3268();
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v42 = sub_2543A2AC8();
  if (v42)
  {
    v39 = v9;
    v40 = v5;
    v18 = 0;
    v47 = (v7 + 16);
    v48 = v17 + 56;
    v44 = (v7 + 32);
    v46 = v7 + 8;
    v41 = v16;
    while (1)
    {
      v19 = sub_2543A2AA8();
      sub_2543A2A68();
      if (v19)
      {
        v20 = *(v7 + 16);
        v20(v16, (v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18), v3);
      }

      else
      {
        v45 = v18;
        OUTLINED_FUNCTION_107_0();
        v38 = sub_2543A32B8();
        if (v39 != 8)
        {
          goto LABEL_23;
        }

        v50 = v38;
        v20 = *v47;
        (*v47)(v16, &v50, v3);
        swift_unknownObjectRelease();
        v18 = v45;
      }

      v45 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v43 = *v44;
      v43(v49, v16, v3);
      v21 = *(v17 + 40);
      v22 = sub_2543A27F8();
      v23 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v24 = v22 & v23;
        v25 = (v22 & v23) >> 6;
        v26 = *(v48 + 8 * v25);
        v27 = 1 << (v22 & v23);
        if ((v27 & v26) == 0)
        {
          break;
        }

        v28 = v17;
        v20(v12, (*(v17 + 48) + *(v7 + 72) * v24), v3);
        v29 = v1;
        v30 = *(v1 + 8);
        v31 = sub_2543A2848();
        v32 = *(v7 + 8);
        v33 = OUTLINED_FUNCTION_114_0();
        v32(v33);
        if (v31)
        {
          (v32)(v49, v3);
          v1 = v29;
          v16 = v41;
          v17 = v28;
          v18 = v45;
          goto LABEL_16;
        }

        v22 = v24 + 1;
        v1 = v29;
        v17 = v28;
      }

      v34 = v49;
      *(v48 + 8 * v25) = v27 | v26;
      v43((*(v17 + 48) + *(v7 + 72) * v24), v34, v3);
      v35 = *(v17 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      v16 = v41;
      v18 = v45;
      if (v36)
      {
        goto LABEL_22;
      }

      *(v17 + 16) = v37;
LABEL_16:
      v5 = v40;
      if (v18 == v42)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_25432B39C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25432B3A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_254326208() & 1;
}

uint64_t sub_25432B3CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_19_0(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_25432B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_0();
  v11 = v10;
  v12 = v9[4];
  v13 = v9[6];
  v37 = v9[7];
  v38 = v9[5];
  OUTLINED_FUNCTION_45_0();
  v14 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_8(v14);
  v16 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  OUTLINED_FUNCTION_86_0(*(v17 + 64));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  OUTLINED_FUNCTION_37_1(v18, v19, v20, v21, v22, v23, v24, v25, v36, v37, v38);
  OUTLINED_FUNCTION_128();

  return sub_25432411C(v26, v27, v28, v29, v30, v31, v32, v33, a9);
}

uint64_t sub_25432B54C(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_2543A2768();
  }

  return result;
}

uint64_t sub_25432B558()
{
  OUTLINED_FUNCTION_88();
  v2 = v0[4];
  v3 = v0[6];
  OUTLINED_FUNCTION_22_1();
  v4 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_132_0(v4);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[2];
  swift_unknownObjectRelease();
  v11 = v0[8];
  swift_unknownObjectRelease();
  v12 = v0 + v6;
  v13 = *(v12 + 1);

  v14 = *(v1 + 44);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3(AssociatedTypeWitness);
  (*(v16 + 8))(&v12[v14]);
  v17 = *(v0 + v8);

  v18 = *(v0 + v9);

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v19, v20, v21);
}

uint64_t sub_25432B68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_94();
  v11 = v9[4];
  v12 = v9[6];
  v34 = v9[7];
  v35 = v9[5];
  OUTLINED_FUNCTION_22_1();
  v13 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_8(v13);
  v16 = (*(v15 + 64) + ((*(v14 + 80) + 80) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v9[2];
  v32 = v9[3];
  v17 = *(v9 + v16);
  v18 = v9[8];
  v19 = v9[9];
  v20 = *(v9 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_2542DB160;
  OUTLINED_FUNCTION_48();

  return sub_254321BE4(v22, v23, v24, v25, v26, v27, v28, v29, a9);
}

uint64_t sub_25432B81C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25432B854(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_25431E9EC(a1, *(v1 + 48));
}

uint64_t sub_25432B864()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_70Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_45_0();
  v3 = sub_2543A2D38();
  OUTLINED_FUNCTION_2_3(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_25432B99C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_64_1();
  v8 = sub_2543A2D38();
  OUTLINED_FUNCTION_110(v8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return a2(a1, v10, v4, v5, v6, v7);
}

uint64_t sub_25432BA90()
{
  v2 = v0[2];
  v3 = v0[4];
  OUTLINED_FUNCTION_22_1();
  v4 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_132_0(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 72) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[6];

  v11 = v0[7];

  v12 = v0 + v7;
  v13 = *(v12 + 1);

  v14 = *(v1 + 44);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3(AssociatedTypeWitness);
  (*(v16 + 8))(&v12[v14]);
  v17 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v6 | 7);
}

uint64_t sub_25432BBAC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_8(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v13 = v1[6];
  v14 = v1[7];
  v15 = v1[8];
  v16 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25431F14C(a1, v13, v14, v15, v1 + v12, v16, v4, v6);
}

uint64_t sub_25432BC60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_38Tm(void (*a1)(void))
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 6);
  OUTLINED_FUNCTION_58_0();
  v5 = (type metadata accessor for ObservationManager.ObservationKey() - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 80) & ~v6;
  v8 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 2);
  swift_unknownObjectRelease();
  a1(*(v1 + 8));
  v10 = *&v1[v7 + 8];

  v11 = v5[11];
  OUTLINED_FUNCTION_92_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3(AssociatedTypeWitness);
  (*(v13 + 8))(&v1[v7 + v11]);
  v14 = *&v1[v8];

  return MEMORY[0x2821FE8E8](v1, v8 + 8, v6 | 7);
}

uint64_t sub_25432BDE0()
{
  OUTLINED_FUNCTION_46_0();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[6];
  v28 = v0[7];
  v29 = v0[5];
  OUTLINED_FUNCTION_45_0();
  v5 = type metadata accessor for ObservationManager.ObservationKey();
  OUTLINED_FUNCTION_8(v5);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  OUTLINED_FUNCTION_86_0(*(v8 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  OUTLINED_FUNCTION_37_1(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29);
  OUTLINED_FUNCTION_128();

  return sub_25431F39C(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_25432BEE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25432BF24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25432BF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25432BFC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[15];
  v4 = v2[13];
  return v2[11];
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return sub_2543A33D8();
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v1[2] = a1;

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  sub_2542DA8C0((v0 + 408), v3);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  v13[3] = v12;
  v13[4] = a10;
  v13[2] = a11;
  return v13[5];
}

char *OUTLINED_FUNCTION_45_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a1[2] = 0;
  a1[3] = 0;
  v25 = *(v24 - 96);
  a1[4] = *(v24 - 88);
  a1[5] = v25;
  a1[6] = a22;
  a1[7] = a18;
  v26 = *(v22 + 32);
  return a1 + v23;
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  result = v2;
  v6 = *(v4 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_67_1()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v0[6] + 32);
  return v0[7];
}

uint64_t OUTLINED_FUNCTION_73_1()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
  v5 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 16);
  result = a12;
  v16 = *(v13 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_81_1()
{
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);

  return sub_25432B3CC(v0 + 488, v0 + 368);
}

void *OUTLINED_FUNCTION_82_1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v24 - 96);
  result[2] = *(v24 - 88);
  result[3] = v25;
  result[4] = a22;
  result[5] = v23;
  result[6] = v22;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return MEMORY[0x282200390](v2, v1, v0, v3, v0);
}

void OUTLINED_FUNCTION_86_0(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[8];
  v6 = v1[9];
  v7 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_87_0()
{

  return sub_2543A27D8();
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[86];
  v5 = v0[84];
  v6 = v0[83];

  return sub_25432B3CC((v0 + 38), (v0 + 48));
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  *(v3 - 96) = v0;
  v5 = *(v1 + 24);

  return sub_2543296D8(v2);
}

void OUTLINED_FUNCTION_105_0()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];
  *(v1 + 24) = v0[6];
}

uint64_t OUTLINED_FUNCTION_116_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_118_0()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return sub_2543A32A8();
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_128_0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[3];
}

double OUTLINED_FUNCTION_130_0()
{
  v1 = *(v0 + 352);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_142_0()
{
  v2 = v0[102];
  v3 = v0[99];
  v4 = v0[94];
  v5 = v0[89];
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[83];

  return _s16ObservationErrorOMa();
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_145_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return swift_task_alloc();
}

id sub_25432C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2543A2858();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_25432CA60()
{
  v0 = sub_2543A1FB8();
  __swift_allocate_value_buffer(v0, qword_27F5F8878);
  __swift_project_value_buffer(v0, qword_27F5F8878);
  return sub_2543A1FA8();
}

uint64_t ProfileController.__allocating_init(withTarget:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProfileController.init(withTarget:)(a1);
  return v2;
}

uint64_t ProfileController.init(withTarget:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84FA0];
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = a1;
  return v1;
}

id sub_25432CB68()
{
  v1 = v0;
  sub_2542E4024();
  v2 = sub_25432C9E4(0xD000000000000021, 0x80000002543B9240, 0);
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  v5 = [v3 interfaceWithProtocol_];
  [v2 setExportedInterface_];

  [v2 setExportedObject_];
  return v2;
}

uint64_t ProfileController.installedProfiles()()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_66(v2);

  return sub_25432D0F0();
}

uint64_t sub_25432CCF4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    v12 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_25432CE10()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0[2] + 144);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_66(v2);

    return sub_25432D45C();
  }

  else
  {
    sub_25432D408();
    v4 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_18_4(v4, v5);
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_25432CF00()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v7 = *(v4 + 40);
  *v6 = *v1;
  *(v5 + 48) = v0;

  v8 = *(v4 + 16);
  if (v0)
  {
    v9 = sub_25432D094;
  }

  else
  {
    *(v5 + 56) = v3;
    v9 = sub_25432D030;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_25432D030()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_25432D094()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25432D110()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  if (*(v1 + 144))
  {
    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    type metadata accessor for XPCConnectionManager();
    v4 = swift_allocObject();

    v6 = sub_254330124(v5, 0x4008000000000000, 15, 2, v4);
    v0[3] = v6;
    v7 = *(v1 + 144);
    *(v1 + 144) = v6;

    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_66(v8);

    return sub_254316F80();
  }
}

uint64_t sub_25432D230()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v2 + 32);
  *v4 = *v1;
  *(v3 + 40) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_25432D3AC;
  }

  else
  {
    v7 = sub_25432D350;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25432D350()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25432D3AC()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 40);

  return v2();
}

unint64_t sub_25432D408()
{
  result = qword_27F5E0FF0;
  if (!qword_27F5E0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0FF0);
  }

  return result;
}

uint64_t sub_25432D45C()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 152) = v0;
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_66(v2);

  return sub_25432F298();
}

uint64_t sub_25432D4E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  *(v3 + 168) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v8();
  }

  else
  {
    v10 = *(v3 + 152);
    v11 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_25432D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_31();
  v11 = v10[21];
  v10[2] = v10;
  v10[7] = v10 + 18;
  v10[3] = sub_25432D70C;
  v12 = swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1008, &unk_2543AC810);
  OUTLINED_FUNCTION_8_10(v13);
  v10[11] = 1107296256;
  v10[12] = sub_25432F86C;
  v10[13] = &block_descriptor_43;
  v10[14] = v12;
  [v11 installedProfilesWithCompletionHandler_];

  return MEMORY[0x282200938](v10 + 2, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_25432D70C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = sub_25432D880;
  }

  else
  {
    v6 = sub_25432D81C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25432D81C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[21];
  swift_unknownObjectRelease();
  v2 = v0[18];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_25432D880()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = *(v0 + 176);
  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t ProfileController.installProfile(withData:)()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432D0F0();
}

uint64_t sub_25432D978()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v9();
  }

  else
  {
    v11 = *(v3 + 32);
    v12 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_25432DA94()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0[4] + 144);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_15_7(v2);

    return sub_25432DD6C();
  }

  else
  {
    sub_25432D408();
    v4 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_18_4(v4, v5);
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_25432DB84()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = v4[7];
  *v5 = *v2;
  v4[8] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_25432DD10;
  }

  else
  {
    v4[9] = v0;
    v4[10] = v3;
    v8 = sub_25432DCAC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_25432DCAC()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];

  v2 = v0[1];
  v4 = v0[9];
  v3 = v0[10];

  return v2(v3, v4);
}

uint64_t sub_25432DD10()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25432DD6C()
{
  OUTLINED_FUNCTION_28();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = swift_task_alloc();
  v1[23] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432F298();
}

uint64_t sub_25432DDF8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  *(v3 + 192) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v8();
  }

  else
  {
    v10 = *(v3 + 176);
    v11 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_25432DF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40();
  v11 = v10[24];
  v12 = v10[20];
  v13 = v10[21];
  v14 = sub_2543A1EC8();
  v10[25] = v14;
  v10[2] = v10;
  v10[7] = v10 + 18;
  v10[3] = sub_25432E03C;
  v15 = swift_continuation_init();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1000, &qword_2543AC808);
  OUTLINED_FUNCTION_8_10(v16);
  v10[11] = 1107296256;
  v10[12] = sub_25432F534;
  v10[13] = &block_descriptor_38_0;
  v10[14] = v15;
  [v11 installProfileWithData:v14 completionHandler:v10 + 10];

  return MEMORY[0x282200938](v10 + 2, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_25432E03C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  v5 = *(v3 + 176);
  if (v4)
  {
    v6 = sub_25432E1C4;
  }

  else
  {
    v6 = sub_25432E14C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25432E14C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[24];
  v2 = v0[25];
  swift_unknownObjectRelease();
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5(v4, v3);
}

uint64_t sub_25432E1C4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[26];
  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t ProfileController.removeProfile(withIdentifier:)()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432D0F0();
}

uint64_t sub_25432E2C4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v9();
  }

  else
  {
    v11 = *(v3 + 32);
    v12 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_25432E3E0()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0[4] + 144);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_15_7(v2);

    return sub_25432E5CC();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_25432E4AC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[4];

    return MEMORY[0x2822009F8](sub_25432DD10, v9, 0);
  }

  else
  {
    v10 = v3[6];

    OUTLINED_FUNCTION_27();

    return v11();
  }
}

uint64_t sub_25432E5CC()
{
  OUTLINED_FUNCTION_28();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = swift_task_alloc();
  v1[21] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432F298();
}

uint64_t sub_25432E658()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  *(v3 + 176) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v8();
  }

  else
  {
    v10 = *(v3 + 160);
    v11 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_25432E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40();
  v11 = v10[22];
  v12 = v10[18];
  v13 = v10[19];
  v14 = sub_2543A2858();
  v10[23] = v14;
  v10[2] = v10;
  v10[3] = sub_25432E8AC;
  v15 = swift_continuation_init();
  v10[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v10[10] = MEMORY[0x277D85DD0];
  v10[11] = 1107296256;
  v10[12] = sub_2542C9210;
  v10[13] = &block_descriptor_3;
  v10[14] = v15;
  [v11 removeProfileWithIdentifier:v14 completionHandler:v10 + 10];

  return MEMORY[0x282200938](v10 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_25432E8AC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = sub_25432EA1C;
  }

  else
  {
    v6 = sub_25432E9BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25432E9BC()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25432EA1C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[24];
  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t ProfileController.setProfilesUpdatedHandler(handler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25432EAB4, v2, 0);
}

uint64_t sub_25432EAB4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = v3;
  *(v2 + 128) = v1;
  sub_2542DAA2C(v3);
  sub_2542D7A3C(v5);
  OUTLINED_FUNCTION_27();

  return v6();
}

Swift::Void __swiftcall ProfileController.profilesChangedForLocalDevice(profiles:)(Swift::OpaquePointer profiles)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2]._rawValue = 0;
  v10[3]._rawValue = 0;
  v10[4]._rawValue = profiles._rawValue;
  v10[5]._rawValue = v9;
  v10[6]._rawValue = v3;
  sub_2543A2768();
  sub_2542CCD54();
}

uint64_t sub_25432EC68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25432ECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_25432ECC0, 0, 0);
}

uint64_t sub_25432ECC0()
{
  if (qword_27F5DF080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2543A1FB8();
  __swift_project_value_buffer(v2, qword_27F5F8878);
  sub_2543A2768();
  v3 = sub_2543A1F98();
  v4 = sub_2543A3008();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315138;
    sub_2543A2728();
    v7 = sub_2542D5198();

    *(v6 + 4) = v7;
    _os_log_impl(&dword_2542B7000, v3, v4, "Received profile changes from the service. New list of profiles = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C0AD90](v12, -1, -1);
    MEMORY[0x259C0AD90](v6, -1, -1);
  }

  v8 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_25432EED4, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_25432EED4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[7];
  v2 = *(v1 + 120);
  v0[8] = v2;
  if (v2)
  {
    v0[9] = *(v1 + 128);

    v3 = sub_25432EFBC;
  }

  else
  {
    v3 = sub_25432EF64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25432EF64()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25432EFBC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];

  v1(v4);
  v5 = OUTLINED_FUNCTION_5_1();
  sub_2542D7A3C(v5);
  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_25432F038()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25432F080()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_39(v8);
  *v9 = v10;
  v9[1] = sub_2542D32CC;

  return sub_25432ECA0(v2, v3, v4, v5, v6);
}

void *ProfileController.deinit()
{
  v1 = v0[14];

  v2 = v0[16];
  sub_2542D7A3C(v0[15]);
  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ProfileController.__deallocating_deinit()
{
  ProfileController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25432F2B8()
{
  OUTLINED_FUNCTION_28();
  sub_2543A2B98();
  *(v0 + 96) = sub_2543A2B88();
  v2 = sub_2543A2B58();

  return MEMORY[0x2822009F8](sub_25432F348, v2, v1);
}

uint64_t sub_25432F348()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[11];
  v1 = v0[12];

  v3 = *(v2 + 152);
  v0[13] = v3;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_25432F3B8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[13];
  if (v1)
  {
    v2 = [v1 remoteObjectProxy];
    sub_2543A3158();
    swift_unknownObjectRelease();
    sub_2542D62F0((v0 + 2), (v0 + 6));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0FF8, &qword_2543AC800);
    v3 = swift_dynamicCast();
    v4 = v0[13];
    if (v3)
    {

      v5 = v0[10];
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v6 = v0[1];

      return v6(v5);
    }

    sub_2542DAE80();
    OUTLINED_FUNCTION_100();
    *v9 = 3;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    sub_2542DAE80();
    OUTLINED_FUNCTION_100();
    *v8 = 2;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_25432F534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_254372814(v4, v5);
  }

  else
  {
    v8 = sub_2543A2878();

    return sub_25436B708(v4, v8, v7);
  }
}

uint64_t sub_25432F5EC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a1;

  v6 = sub_2543A1EF8();
  v8 = v7;

  v3[4] = v6;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_25432F6C8;

  return sub_25432DD6C();
}

uint64_t sub_25432F6C8()
{
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = v2[6];
  v5 = v2[2];
  v6 = *v1;
  *v3 = *v1;

  sub_2542D7D40(v2[4], v2[5]);
  if (v0)
  {
    v7 = sub_2543A1E78();

    v8 = v7;
  }

  else
  {
    v9 = sub_2543A2858();

    v8 = v9;
  }

  v10 = OUTLINED_FUNCTION_12_11();
  v11(v10);

  _Block_release(v2);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_25432F86C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_254372814(v4, v5);
  }

  else
  {
    v7 = sub_2543A2718();

    return sub_25436B72C(v4, v7);
  }
}

uint64_t sub_25432F990(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_25432FA38;

  return sub_25432D45C();
}

uint64_t sub_25432FA38()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  OUTLINED_FUNCTION_41();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_2543A1E78();

    v12 = v11;
  }

  else
  {
    v13 = sub_2543A2708();

    v12 = v13;
  }

  v14 = OUTLINED_FUNCTION_12_11();
  v15(v14);

  _Block_release(v4);
  OUTLINED_FUNCTION_27();

  return v16();
}

uint64_t sub_25432FBC8(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  v9 = OUTLINED_FUNCTION_5_1();

  return sub_254366AA8(v9, v10);
}

uint64_t sub_25432FC4C(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_2543A2878();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_25432FD20;

  return sub_25432E5CC();
}

uint64_t sub_25432FD20()
{
  OUTLINED_FUNCTION_40();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = sub_2543A1E78();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[3], 0);
  }

  _Block_release(v4[3]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_25432FEBC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_39(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_11(v5);

  return v8(v7);
}

uint64_t sub_25432FF50()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25432FF90()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v4[1] = sub_2542DB160;
  v6 = OUTLINED_FUNCTION_5_1();

  return v7(v6);
}

uint64_t objectdestroy_18Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254330078()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_39(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_11(v5);

  return v8(v7);
}

uint64_t sub_254330124(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  *(a5 + 112) = a1;
  *(a5 + 120) = &off_286648D68;
  *(a5 + 128) = a2;
  *(a5 + 136) = a3;
  *(a5 + 144) = a4;
  return a5;
}

uint64_t OUTLINED_FUNCTION_3_16()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 8;

  return swift_willThrow();
}

uint64_t sub_254330264(uint64_t a1)
{
  v2 = sub_2543303F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543302A0(uint64_t a1)
{
  v2 = sub_2543303F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObservationUpdateAcknowlegement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1010, &qword_2543AC820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543303F0();
  sub_2543A3778();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2543303F0()
{
  result = qword_27F5E1018;
  if (!qword_27F5E1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1018);
  }

  return result;
}

unint64_t sub_25433046C(uint64_t a1)
{
  *(a1 + 8) = sub_25433049C();
  result = sub_2543304F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25433049C()
{
  result = qword_27F5E1020;
  if (!qword_27F5E1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1020);
  }

  return result;
}

unint64_t sub_2543304F0()
{
  result = qword_27F5E1028;
  if (!qword_27F5E1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObservationUpdateAcknowlegement(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254330610);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25433065C()
{
  result = qword_27F5E1030;
  if (!qword_27F5E1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1030);
  }

  return result;
}

unint64_t sub_2543306B4()
{
  result = qword_27F5E1038[0];
  if (!qword_27F5E1038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1038);
  }

  return result;
}

uint64_t sub_254330708(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542FE220;

  return v9(a1, a2);
}

uint64_t sub_254330820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2542DF754;

  return v11(a1, a2, a3);
}

void *ServicesRouter.__allocating_init(services:registerAllowedRequests:)()
{
  OUTLINED_FUNCTION_3_7();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v3[14] = v2;
  v3[15] = v1;
  v3[16] = v0;
  return v3;
}

void *ServicesRouter.init(services:registerAllowedRequests:)()
{
  OUTLINED_FUNCTION_3_7();
  swift_defaultActor_initialize();
  v1[14] = v3;
  v1[15] = v2;
  v1[16] = v0;
  return v1;
}

uint64_t sub_2543309C8()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_254330A0C, v0);
}

uint64_t sub_254330A0C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  *(v0 + 96) = v2;
  v3 = v1[10];
  *(v0 + 168) = v3;
  *(v0 + 176) = v1[11];
  *(v0 + 184) = v1[12];
  *(v0 + 192) = type metadata accessor for ServicesRouter();
  v4 = sub_2542DF684() & 1;
  *(v0 + 232) = v4;
  v5._object = 0x80000002543B9320;
  v5._countAndFlagsBits = 0xD000000000000012;
  Logging.ulog(_:extended:)(v5, v4);
  *(v0 + 104) = MEMORY[0x277D84FA0];
  *(v0 + 200) = *(v2 + 112);
  sub_2543A2768();
  *(v0 + 120) = v3;
  OUTLINED_FUNCTION_0_28();
  *(v0 + 208) = swift_getExtendedExistentialTypeMetadata();
  v6 = sub_2543A2A48();
  *(v0 + 112) = v6;
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  if (v6 == sub_2543A2AC8())
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 104);

    OUTLINED_FUNCTION_27();

    return v11();
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14();
    if (v2)
    {
      v15 = *(v0 + 208);
      sub_2543004CC(*(v0 + 200) + 40 * v6 + 32, v0 + 16);
      OUTLINED_FUNCTION_48_1();
      sub_2543A2B28();
      sub_2542DA8C0((v0 + 16), v0 + 56);
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      v18 = *(OUTLINED_FUNCTION_8_11((v0 + 56)) + 32);
      OUTLINED_FUNCTION_42();
      v25 = (v19 + *v19);
      v21 = *(v20 + 4);
      v22 = swift_task_alloc();
      *(v0 + 216) = v22;
      *v22 = v0;
      OUTLINED_FUNCTION_3_17(v22);

      return v25(v16, v17);
    }

    else
    {
      v23 = *(v0 + 200);
      v24 = *(v0 + 208);
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254330C90()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = v2[27];
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    v7 = v3[25];
    v8 = v3[19];
    v9 = v3[13];

    v10 = sub_2543312E0;
    v11 = v8;
  }

  else
  {
    v11 = v3[19];
    v10 = sub_254330DBC;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_254330DBC()
{
  *(v0 + 128) = *(v0 + 152);
  v1 = (v0 + 104);
  v2 = *(v0 + 192);
  v3._object = 0x80000002543B9340;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logging.ulog(_:extended:)(v3, *(v0 + 232));
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v52 = (v0 + 56);
  __swift_project_boxed_opaque_existential_0((v0 + 56), v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    *(v0 + 136) = MEMORY[0x277D84F90];
    sub_2542F1568();
    v8 = *(v0 + 136);
    v9 = v6 + 40;
    do
    {
      v10 = *(v9 - 8);
      v11 = (*(*v9 + 32))();
      v13 = v12;
      *(v0 + 136) = v8;
      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        sub_2542F1568();
        v8 = *(v0 + 136);
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v9 += 16;
      --v7;
    }

    while (v7);

    v1 = (v0 + 104);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_2542D1C8C(v8);
  v17 = *v1;
  sub_2543A2768();
  if (*(sub_254332458(v16, v17) + 16))
  {
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 176);
    v51 = *(v0 + 184);
    v21 = *(v0 + 168);
    v22 = *(v0 + 152);

    *(v0 + 144) = v22;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000003CLL, 0x80000002543B9360);
    v23 = sub_2543A2DB8();
    v25 = v24;

    MEMORY[0x259C093D0](v23, v25);

    Logging.ulog(_:_:extended:)(90, 0, 0xE000000000000000, 0, v19, &protocol witness table for ServicesRouter<A>);

    type metadata accessor for ServicesRouter.Error();
    OUTLINED_FUNCTION_5_14();
    swift_getWitnessTable();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    swift_willThrow();
    sub_2543320A8(v16);
    v27 = *(v0 + 104);

    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_27();
LABEL_12:

    return v28();
  }

  v29 = *(v0 + 152);

  v30 = *(v29 + 120);
  v31 = *(v29 + 128);
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0(v52, v32);
  (*(v33 + 24))(v32, v33);
  v30();

  sub_2543320A8(v16);
  __swift_destroy_boxed_opaque_existential_0(v52);
  v34 = *(v0 + 112);
  v35 = *(v0 + 200);
  v36 = *(v0 + 208);
  if (v34 == sub_2543A2AC8())
  {
    v37 = *(v0 + 200);
    v38 = *(v0 + 104);

    OUTLINED_FUNCTION_27();
    goto LABEL_12;
  }

  v41 = *(v0 + 200);
  v40 = *(v0 + 208);
  v42 = sub_2543A2AA8();
  sub_2543A2A68();
  v43 = *(v0 + 208);
  if (v42)
  {
    sub_2543004CC(*(v0 + 200) + 40 * v34 + 32, v0 + 16);
    OUTLINED_FUNCTION_48_1();
    sub_2543A2B28();
    sub_2542DA8C0((v0 + 16), v52);
    v44 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0(v52, *(v0 + 80));
    v45 = *(v44 + 32);
    OUTLINED_FUNCTION_42();
    v53 = (v46 + *v46);
    v48 = *(v47 + 4);
    v49 = swift_task_alloc();
    *(v0 + 216) = v49;
    *v49 = v0;
    OUTLINED_FUNCTION_3_17();
    v50 = OUTLINED_FUNCTION_76();

    return v53(v50);
  }

  else
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_2543A32B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2543312E0()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_254331354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v6[21] = *v5;
  return OUTLINED_FUNCTION_17_6(sub_2543313A0, v5);
}

uint64_t sub_2543313A0()
{
  *(v0 + 96) = *(v0 + 160);
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v31 = *(v0 + 152);
  v3 = *(v0 + 128);
  MEMORY[0x259C093D0](0xD00000000000001ALL, 0x80000002543B93A0);
  MEMORY[0x259C093D0](0x7473657571657220, 0xE90000000000003DLL);
  sub_2543A35C8();
  v4 = v1[11];
  v32 = v1[10];
  v29 = v1[12];
  type metadata accessor for ServicesRouter();
  v30 = sub_2542DF684();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v5, v30 & 1);

  sub_254331EB0();
  if (*(v0 + 80))
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    sub_2542DA8C0((v0 + 56), v0 + 16);
    *(v0 + 104) = v6;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000012, 0x80000002543B93C0);
    *(v0 + 112) = v32;
    OUTLINED_FUNCTION_0_28();
    swift_getExtendedExistentialTypeMetadata();
    sub_2543A35C8();
    MEMORY[0x259C093D0](0x20726F6620, 0xE500000000000000);
    sub_2543A35C8();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    Logging.ulog(_:extended:)(v9, v30 & 1);

    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v12 = *(OUTLINED_FUNCTION_8_11((v0 + 16)) + 40);
    OUTLINED_FUNCTION_42();
    v33 = (v13 + *v13);
    v15 = *(v14 + 4);
    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    *v16 = v0;
    v16[1] = sub_254331760;
    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    v19 = *(v0 + 128);
    v20 = *(v0 + 136);
    v21 = *(v0 + 120);

    return v33(v21, v19, v20, v17, v18, v10, v11);
  }

  else
  {
    v23 = *(v0 + 144);
    v24 = (*(*(v0 + 152) + 32))();
    v26 = v25;
    type metadata accessor for ServicesRouter.Error();
    OUTLINED_FUNCTION_5_14();
    swift_getWitnessTable();
    swift_allocError();
    *v27 = v24;
    v27[1] = v26;
    swift_willThrow();
    OUTLINED_FUNCTION_27();

    return v28();
  }
}

uint64_t sub_254331760()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_2543318E4;
  }

  else
  {
    v6 = sub_254331888;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_254331888()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_2543318E4()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_254331940(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  return OUTLINED_FUNCTION_17_6(sub_254331984, v1);
}

uint64_t sub_254331984()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[7] = v2;
  MEMORY[0x259C093D0](0xD000000000000014, 0x80000002543B93E0);
  MEMORY[0x259C093D0](0x3D7265626D656D20, 0xE800000000000000);
  v4 = v1[10];
  OUTLINED_FUNCTION_76();
  sub_2543A35C8();
  v5 = v1[11];
  v6 = v1[12];
  v7 = type metadata accessor for ServicesRouter();
  v8 = sub_2542DF684() & 1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v9, v8);

  v0[13] = *(v2 + 112);
  sub_2543A2768();
  v0[9] = v4;
  OUTLINED_FUNCTION_0_28();
  v0[14] = swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_76();
  v10 = sub_2543A2A48();
  v0[8] = v10;
  OUTLINED_FUNCTION_76();
  if (v10 == sub_2543A2AC8())
  {
    v11 = v0[13];

    OUTLINED_FUNCTION_27();

    return v12();
  }

  else
  {
    v15 = v0[13];
    v14 = v0[14];
    sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14();
    v16 = v0[14];
    if (v7)
    {
      sub_2543004CC(v0[13] + 40 * v10 + 32, (v0 + 2));
      OUTLINED_FUNCTION_11_11();
      sub_2543A2B28();
      v17 = v0[5];
      v18 = v0[6];
      v19 = *(OUTLINED_FUNCTION_8_11(v0 + 2) + 48);
      OUTLINED_FUNCTION_42();
      v26 = v20 + *v20;
      v22 = *(v21 + 4);
      v23 = swift_task_alloc();
      v0[15] = v23;
      *v23 = v0;
      v24 = OUTLINED_FUNCTION_2_23(v23);

      return v25(v24);
    }

    else
    {
      OUTLINED_FUNCTION_11_11();
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254331C0C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 120);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_254331D0C, v3, 0);
}

uint64_t sub_254331D0C()
{
  v2 = v0[13];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = sub_2543A2AC8();
  v5 = v0[8];
  if (v5 == v4)
  {
    v6 = v0[13];

    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14();
    v11 = v0[14];
    if (v1)
    {
      sub_2543004CC(v0[13] + 40 * v5 + 32, (v0 + 2));
      OUTLINED_FUNCTION_11_11();
      sub_2543A2B28();
      v12 = v0[5];
      v13 = v0[6];
      v14 = *(OUTLINED_FUNCTION_8_11(v0 + 2) + 48);
      OUTLINED_FUNCTION_42();
      v21 = v15 + *v15;
      v17 = *(v16 + 4);
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v19 = OUTLINED_FUNCTION_2_23();

      return v20(v19);
    }

    else
    {
      OUTLINED_FUNCTION_11_11();
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254331EB0()
{
  v4 = v0[14];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_2543A2768();
  OUTLINED_FUNCTION_0_28();
  swift_getExtendedExistentialTypeMetadata();
  sub_2543A2B38();
  swift_getWitnessTable();
  sub_2543A2998();
}

uint64_t sub_254331FB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  return TransportRequestHandlerService.canHandle<A>(request:)(a2, v10, a4, v11, a7) & 1;
}

uint64_t ServicesRouter.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ServicesRouter.__deallocating_deinit()
{
  ServicesRouter.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2543320A8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_2543A2768();
      sub_2542D8284(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_2543321AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_254332620(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25433223C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF550, &unk_2543A6CE0);
  result = sub_2543A3268();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2543A36E8();
    sub_2543A2768();
    sub_2543A28C8();
    result = sub_2543A3728();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254332458(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_25439F45C(0, v6, v8);
    v9 = sub_254332620(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2543321AC(v12, v6, a2, a1);

    MEMORY[0x259C0AD90](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_254332620(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_2543A36E8();
      sub_2543A2768();
      sub_2543A28C8();
      v42 = sub_2543A3728();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_2543A3608();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_25433223C(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_2543A36E8();
      sub_2543A2768();
      sub_2543A28C8();
      v19 = sub_2543A3728();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_2543A3608();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of ServicesRouter.activateServices()()
{
  OUTLINED_FUNCTION_31();
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542D32CC;

  return v6();
}

uint64_t dispatch thunk of ServicesRouter.pipeRequest<A>(_:fromMember:)()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542DB160;
  OUTLINED_FUNCTION_48_1();

  return v6();
}

uint64_t dispatch thunk of ServicesRouter.handleLostMember(_:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *(*v0 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2542D32CC;

  return v8(v3);
}

uint64_t sub_254332DE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254332E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254332E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254332EC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_2543A2A68();
}

uint64_t sub_254332FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15[-v8 - 8];
  v10 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v12 = *(a1 + 16);
  *(v11 + 48) = *a1;
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a1 + 32);
  *(v11 + 96) = *(a1 + 48);

  sub_25433E1CC(a1, v15);
  sub_2542CCD54();
}

uint64_t sub_2543330FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a6 + 32);
  *(v6 + 64) = *(a6 + 48);
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 72) = v9;
  *v9 = v6;
  v9[1] = sub_254333204;

  return v11(v6 + 16);
}

uint64_t sub_254333204()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2543332EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1150, &qword_2543ACBC0);
  v4 = OUTLINED_FUNCTION_110(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  v12 = qword_27F5E1140;
  OUTLINED_FUNCTION_97();
  sub_2542EDD5C(v1 + v12, v11, qword_27F5E1150, &qword_2543ACBC0);
  v13 = sub_2543A1FB8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    sub_2542EDDC0(v11, qword_27F5E1150, &qword_2543ACBC0);
    sub_2543A1FA8();
    OUTLINED_FUNCTION_19_0(v13);
    v15 = *(v14 + 16);
    v16 = OUTLINED_FUNCTION_5_10();
    v17(v16);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
    OUTLINED_FUNCTION_64_0();
    sub_25433DB90(v9, v1 + v12);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_19_0(v13);
    return (*(v19 + 32))(a1, v11, v13);
  }
}

uint64_t CarrySettings.NetworkingClient.updatePublisher.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v10 = *(v0 + qword_27F5F8890);
  OUTLINED_FUNCTION_27_0();
  v4 = *(v3 + 88);
  v7 = *((v6 & v5) + 0x50);
  swift_getAssociatedTypeWitness();
  v8 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  type metadata accessor for CarrySettings.MessageableDevice();
  sub_2543A2B38();
  sub_2543A2078();
  swift_getWitnessTable();
  return sub_2543A20E8();
}

id CarrySettings.NetworkingClient.__allocating_init(network:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return CarrySettings.NetworkingClient.init(network:)(a1);
}

id CarrySettings.NetworkingClient.init(network:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = *MEMORY[0x277D85000];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v8 = OUTLINED_FUNCTION_110(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  swift_defaultActor_initialize();
  v11 = *((v6 & v5) + 0x58);
  v12 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_4_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58_0();
  _s16NetworkingClientC15DeviceCacheItemVMa();
  OUTLINED_FUNCTION_51_1();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  *(v2 + 14) = sub_2543A26D8();
  sub_2543A1FB8();
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = qword_27F5F8890;
  v19 = *(v13 + 8);
  type metadata accessor for CarrySettings.MessageableDevice();
  sub_2543A2B38();
  sub_2543A2078();
  *&v2[v18] = sub_2543A2058();
  v20 = qword_27F5E1148;
  type metadata accessor for CarrySettings.BufferItem();
  *&v2[v20] = sub_2543A26E8();
  OUTLINED_FUNCTION_35_2();
  v22 = &v2[*(v21 + 144)];
  *v22 = 0;
  *(v22 + 1) = 0;
  OUTLINED_FUNCTION_35_2();
  *&v2[*(v23 + 152)] = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_35_2();
  v25 = *(v12 - 8);
  (*(v25 + 16))(&v2[*(v24 + 136)], a1, v12);
  v38.receiver = v2;
  v38.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v38, sel_init);
  sub_2543A2BB8();
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_67();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v12;
  v32[5] = v11;
  v32[6] = v31;
  v33 = v26;
  sub_2542CD000();

  v34 = *(v25 + 8);
  v35 = OUTLINED_FUNCTION_46();
  v36(v35);
  return v33;
}

uint64_t sub_254333970()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2543339A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2543339C4, 0, 0);
}

uint64_t sub_2543339C4()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_254333A64()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  sub_254333B88(v2);

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254333AE4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_68_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_70_1(v2);
  OUTLINED_FUNCTION_43_1();

  return sub_2543339A4(v4, v5, v6, v0);
}

uint64_t sub_254333B88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](a1);
  v66 = *((v4 & v3) + 0x88);
  v8 = v6[2];
  v64 = v6 + 2;
  v8(&v56 - v9, &v2[v66], v5);
  v57 = v8;
  v10 = *((v4 & v3) + 0x58);
  v11 = v10[3];
  v12 = OUTLINED_FUNCTION_42_1();
  v14 = v13(v12);
  v15 = v6[1];
  v63 = v6 + 1;
  v65 = v15;
  v16 = OUTLINED_FUNCTION_51_1();
  v17(v16);
  v67 = v14;
  OUTLINED_FUNCTION_67();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_81_2();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v10;
  v19[4] = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_2543A2008();

  OUTLINED_FUNCTION_30_2();
  v61 = v21;
  v59 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = OUTLINED_FUNCTION_94_1();
  sub_2542FE2DC(v22, v19, v20, v23);

  v62 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  OUTLINED_FUNCTION_105();
  sub_2543A2018();
  swift_endAccess();

  v24 = OUTLINED_FUNCTION_40_2();
  (v8)(v24);
  v25 = v10[4];
  v26 = OUTLINED_FUNCTION_42_1();
  v28 = v27(v26);
  v29 = OUTLINED_FUNCTION_51_1();
  v65(v29);
  v67 = v28;
  OUTLINED_FUNCTION_67();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_81_2();
  v31 = swift_allocObject();
  v31[2] = v5;
  v31[3] = v10;
  v31[4] = v30;

  v32 = OUTLINED_FUNCTION_94_1();
  sub_2542FE2DC(v32, v31, v59, WitnessTable);

  OUTLINED_FUNCTION_105();
  sub_2543A2018();
  swift_endAccess();

  v33 = OUTLINED_FUNCTION_40_2();
  v34 = v57;
  v57(v33);
  v35 = v10[5];
  v36 = OUTLINED_FUNCTION_42_1();
  v38 = v37(v36);
  v39 = OUTLINED_FUNCTION_51_1();
  v40 = v65;
  v65(v39);
  v67 = v38;
  OUTLINED_FUNCTION_67();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_81_2();
  v42 = swift_allocObject();
  v42[2] = v5;
  v42[3] = v10;
  v42[4] = v41;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DataModelUpdate();
  v43 = sub_2543A2008();
  swift_getWitnessTable();
  v44 = OUTLINED_FUNCTION_94_1();
  sub_2542FE2DC(v44, v42, v43, v45);

  OUTLINED_FUNCTION_105();
  sub_2543A2018();
  swift_endAccess();

  v46 = OUTLINED_FUNCTION_40_2();
  v34(v46);
  v47 = v10[6];
  v48 = OUTLINED_FUNCTION_42_1();
  v50 = v49(v48);
  v51 = OUTLINED_FUNCTION_51_1();
  v40(v51);
  OUTLINED_FUNCTION_67();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_81_2();
  v53 = swift_allocObject();
  v53[2] = v5;
  v53[3] = v10;
  v53[4] = v52;
  v67 = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = &unk_2543ACD68;
  *(v54 + 24) = v53;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBF8, &qword_2543ACD70);
  sub_25433DEA0(&qword_27F5DFC00, &qword_27F5DFBF8, &qword_2543ACD70);
  OUTLINED_FUNCTION_94_1();
  sub_2543A2148();

  OUTLINED_FUNCTION_105();
  sub_2543A2018();
  swift_endAccess();
}

Swift::Void __swiftcall CarrySettings.NetworkingClient.invalidate()()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v4 = *(v3 + 152);
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = MEMORY[0x277D84FA0];
}

uint64_t sub_2543341DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2543341FC, 0, 0);
}

uint64_t sub_2543341FC()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2542EEA14;
    OUTLINED_FUNCTION_29_0(v0[5]);

    return CarrySettings.NetworkingClient.found(target:)();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v5();
  }
}