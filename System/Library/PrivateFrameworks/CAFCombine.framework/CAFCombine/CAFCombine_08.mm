void CAFTypeTestMulti.testArrayUInt64Bridged.setter()
{
  OUTLINED_FUNCTION_57_0();
  v4 = v3;
  if (v1)
  {
    v5 = v1;
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v2;
      v13 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v8 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) *v7];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v13 + 16);
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 += 8;
        --v6;
      }

      while (v6);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_23_0();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v0 *v4];
  OUTLINED_FUNCTION_30_0();
}

char *CAFTypeTestMulti.testArrayFloatBridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayFloat);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Array._getCount()(v1);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v14 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0A790](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 floatValue];
      v11 = v10;

      v13 = *(v14 + 16);
      v12 = *(v14 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v13 + 1;
      *(v14 + 4 * v13 + 32) = v11;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void CAFTypeTestMulti.testArrayFloatBridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v11 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        v5 = *(a1 + v4);
        v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v7) = v5;
        [v6 initWithFloat_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = *(v11 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 4;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayFloat_];
  }

  else
  {
    [v1 setTestArrayFloat_];
  }
}

uint64_t key path getter for CAFTypeTestMultiObservable.testBool : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testBool.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testBool.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v11 = OUTLINED_FUNCTION_42_0(v2, v3, v5, v6, v7, v8, v9, v10, v14);
  v12(v11);

  return v4;
}

uint64_t CAFTypeTestMultiObservable.testBool.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SbSgTt3g5(a1, v5, KeyPath, v4);
}

uint64_t CAFTypeTestMultiObservable.testBool.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFTypeTestMultiObservable.testBool.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SbSgTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testUInt8 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testUInt8.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt8.setter()
{
  return CAFTypeTestMultiObservable.testUInt8.setter();
}

{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestMultiObservable.testUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt8.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 89) << 8), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testUInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testUInt16.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt16.setter()
{
  return CAFTypeTestMultiObservable.testUInt16.setter();
}

{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestMultiObservable.testUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt16.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 90) << 16), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

unint64_t key path getter for CAFTypeTestMultiObservable.testUInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testUInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt32.setter()
{
  return CAFTypeTestMultiObservable.testUInt32.setter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestMultiObservable.testUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt32.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 92) << 32), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testUInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testUInt64.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt64.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestMultiObservable.testUInt64.setter(a1, a2, &unk_242304EF0, &unk_242304F18, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_s6UInt64VSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestMultiObservable.testUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testInt8 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testInt8.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt8.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testInt16.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt16.modify();
}

unint64_t key path getter for CAFTypeTestMultiObservable.testInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt32.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testInt64.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt64.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_42_0(v4, v5, v8, v9, v10, v11, v12, v13, v17);
  v15(v14);

  return v6;
}

void CAFTypeTestMultiObservable.testInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestMultiObservable.testUInt64.modify(uint64_t a1, uint64_t a2, void (*a3)(void, void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 56), *(*a1 + 64), *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));

  free(v3);
}

unint64_t key path getter for CAFTypeTestMultiObservable.testFloat : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testFloat.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestMultiObservable.testUInt32.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *(v5 + 4);
  v14 = OUTLINED_FUNCTION_42_0(v4, v5, v8, v9, v10, v11, v12, v13, v17);
  v15(v14);

  return v6 | (v7 << 32);
}

void CAFTypeTestMultiObservable.testFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt32.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testString : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testString.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testString : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFTypeTestMultiObservable.testString.setter(v2, v3, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t CAFTypeTestMultiObservable.testString.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = v3[1];

  v14 = OUTLINED_FUNCTION_42_0(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  v2(v14);

  OUTLINED_FUNCTION_36_0();

  return v4;
}

uint64_t CAFTypeTestMultiObservable.testString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestMultiObservable.testString.setter(a1, a2, &unk_2423050A0, &unk_2423050C8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SSSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestMultiObservable.testString.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v9;
  v1[8] = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testData : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testData.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testData : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  outlined copy of Data?(*a1, v3);
  return CAFTypeTestMultiObservable.testData.setter(v2, v3, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t CAFTypeTestMultiObservable.testData.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = outlined copy of Data?(*v3, *(v3 + 8));
  v13 = OUTLINED_FUNCTION_42_0(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v2(v13);

  OUTLINED_FUNCTION_36_0();

  return v4;
}

void CAFTypeTestMultiObservable.testData.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = v7[1];
  v1[7] = v8;
  v1[8] = v9;
  outlined copy of Data?(v8, v9);
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestMultiObservable.testRawData.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testRawData) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t key path getter for CAFTypeTestMultiObservable.testEnum : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testEnum.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt8.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  v10 = v2;

  v3 = v2;
  v4 = OUTLINED_FUNCTION_70_0();
  v6 = *v5;
  v7 = v5[1];
  v4(v9, 0);

  return v6 | (v7 << 8);
}

void CAFTypeTestMultiObservable.testEnum.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt8.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testDimensionUnitRawValue : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testDimensionUnitRawValue.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt16.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  v10 = v2;

  v3 = v2;
  v4 = OUTLINED_FUNCTION_70_0();
  v6 = *v5;
  v7 = *(v5 + 2);
  v4(v9, 0);

  return v6 | (v7 << 16);
}

void CAFTypeTestMultiObservable.testDimensionUnitRawValue.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testUInt16.modify();
}

id key path getter for CAFTypeTestMultiObservable.testComplexItem : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testComplexItem.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItem : CAFTypeTestMultiObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestMultiObservable.testComplexItem.setter();
}

void CAFTypeTestMultiObservable.testComplexItem.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testComplexItem.modify();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0(v4);
  if (v5)
  {
    v6 = v1;
    v7 = v3;
    v8 = OUTLINED_FUNCTION_26_2();
    v0(v8);
  }

  else
  {
    v9 = v3;
    v10 = OUTLINED_FUNCTION_26_2();
    v0(v10);
  }

  OUTLINED_FUNCTION_236();

  free(v11);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayBool : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayBool.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayBool : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayBool.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayBool.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0(v3);
  if (v4)
  {

    v5 = v2;
    v6 = OUTLINED_FUNCTION_26_2();
    v0(v6);
    v7 = *v1;
  }

  else
  {
    v8 = v2;
    v9 = OUTLINED_FUNCTION_26_2();
    v0(v9);
  }

  OUTLINED_FUNCTION_236();

  free(v10);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt8 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayUInt8.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayUInt8 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayUInt8.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayUInt16.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayUInt16 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayUInt16.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayUInt32.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayUInt32 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayUInt32.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayUInt64.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayUInt64 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayUInt64.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt8 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayInt8.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayInt8 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayInt8.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayInt16.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayInt16 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayInt16.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayInt32.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayInt32 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayInt32.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayInt64.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayInt64 : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayInt64.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayFloat : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayFloat.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayFloat : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayFloat.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayString : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayString.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayString : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayString.setter(v4);
}

void CAFTypeTestMultiObservable.testArrayString.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayData : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testArrayData.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testArrayData : CAFTypeTestMultiObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestMultiObservable.testArrayData.setter(v4);
}

uint64_t CAFTypeTestMultiObservable.testArrayBool.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;

  v15 = OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  v4(v15);

  OUTLINED_FUNCTION_36_0();

  return v6;
}

void CAFTypeTestMultiObservable.testArrayData.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testArrayBool.modify();
}

uint64_t CAFTypeTestMultiObservable.testArrayRawData.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayRawData) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

id key path getter for CAFTypeTestMultiObservable.testComplexItems : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testComplexItems.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItems : CAFTypeTestMultiObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestMultiObservable.testComplexItems.setter();
}

void CAFTypeTestMultiObservable.testComplexItems.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestMultiObservable.testComplexItem.modify();
}

id key path getter for CAFTypeTestMultiObservable.testComplexItemValue : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testComplexItemValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItemValue : CAFTypeTestMultiObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestMultiObservable.testComplexItemValue.setter();
}

void CAFTypeTestMultiObservable.testComplexItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestMultiObservable.testComplexItemList : CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMultiObservable.testComplexItemList.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItemList : CAFTypeTestMultiObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestMultiObservable.testComplexItemList.setter();
}

id CAFTypeTestMultiObservable.testComplexItem.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *v5;
  v15 = OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  v4(v15);

  OUTLINED_FUNCTION_36_0();

  return v6;
}

uint64_t CAFTypeTestMultiObservable.testComplexItem.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_89_0();
  v8 = v4;

  return a4(a1, v8, v5, v7);
}

void CAFTypeTestMultiObservable.testComplexItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestMultiObservable.$testBool.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFTypeTestMultiObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v3 = v5;
  OUTLINED_FUNCTION_232();

  return v6;
}

uint64_t CAFTypeTestMultiObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFTypeTestMultiObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  [v1 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    v3 = CAFTypeTestMultiObservable.userVisibleLabel.getter();
  }

  v177 = v3;
  v178 = v2;
  [v1 registeredForTestBool];
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    CAFTypeTestMultiObservable.testBool.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v6 = OUTLINED_FUNCTION_38_0();
  }

  v175 = v6;
  v176 = v5;
  v8 = [v1 registeredForTestUInt8];
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if (v8)
  {
    v11 = CAFTypeTestMultiObservable.testUInt8.getter();
    OUTLINED_FUNCTION_52_0(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v9 = OUTLINED_FUNCTION_38_0();
  }

  v174 = v10;
  [v1 registeredForTestUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v14)
  {
    v15 = CAFTypeTestMultiObservable.testUInt16.getter();
    OUTLINED_FUNCTION_50_0(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v13 = OUTLINED_FUNCTION_38_0();
  }

  v172 = v13;
  v173 = v12;
  [v1 registeredForTestUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v18)
  {
    v19 = CAFTypeTestMultiObservable.testUInt32.getter();
    OUTLINED_FUNCTION_49_0(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v17 = OUTLINED_FUNCTION_38_0();
  }

  v170 = v17;
  v171 = v16;
  [v1 registeredForTestUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v22)
  {
    CAFTypeTestMultiObservable.testUInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    v21 = OUTLINED_FUNCTION_38_0();
  }

  v168 = v21;
  v169 = v20;
  [v1 registeredForTestInt8];
  OUTLINED_FUNCTION_9_2();
  if (v25)
  {
    v26 = CAFTypeTestMultiObservable.testInt8.getter();
    OUTLINED_FUNCTION_52_0(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v24 = OUTLINED_FUNCTION_38_0();
  }

  v166 = v24;
  v167 = v23;
  [v1 registeredForTestInt16];
  OUTLINED_FUNCTION_9_2();
  if (v29)
  {
    v30 = CAFTypeTestMultiObservable.testInt16.getter();
    OUTLINED_FUNCTION_50_0(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v28 = OUTLINED_FUNCTION_38_0();
  }

  v164 = v28;
  v165 = v27;
  [v1 registeredForTestInt32];
  OUTLINED_FUNCTION_9_2();
  if (v33)
  {
    v34 = CAFTypeTestMultiObservable.testInt32.getter();
    OUTLINED_FUNCTION_49_0(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v32 = OUTLINED_FUNCTION_38_0();
  }

  v162 = v32;
  v163 = v31;
  [v1 registeredForTestInt64];
  OUTLINED_FUNCTION_9_2();
  if (v37)
  {
    CAFTypeTestMultiObservable.testInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
    v36 = OUTLINED_FUNCTION_38_0();
  }

  v160 = v36;
  v161 = v35;
  [v1 registeredForTestFloat];
  OUTLINED_FUNCTION_9_2();
  if (v40)
  {
    v41 = CAFTypeTestMultiObservable.testFloat.getter();
    OUTLINED_FUNCTION_49_0(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v39 = OUTLINED_FUNCTION_38_0();
  }

  v158 = v39;
  v159 = v38;
  [v1 registeredForTestString];
  OUTLINED_FUNCTION_9_2();
  if (v44)
  {
    CAFTypeTestMultiObservable.testString.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v43 = OUTLINED_FUNCTION_38_0();
  }

  v156 = v43;
  v157 = v42;
  [v1 registeredForTestData];
  OUTLINED_FUNCTION_9_2();
  if (v47)
  {
    CAFTypeTestMultiObservable.testData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v46 = OUTLINED_FUNCTION_38_0();
  }

  v154 = v46;
  v155 = v45;
  [v1 registeredForTestRawData];
  OUTLINED_FUNCTION_9_2();
  if (v50)
  {
    CAFTypeTestMultiObservable.testRawData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v49 = OUTLINED_FUNCTION_38_0();
  }

  v152 = v49;
  v153 = v48;
  [v1 registeredForTestEnum];
  OUTLINED_FUNCTION_9_2();
  if (v53)
  {
    v54 = CAFTypeTestMultiObservable.testEnum.getter();
    OUTLINED_FUNCTION_52_0(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v52 = OUTLINED_FUNCTION_38_0();
  }

  v150 = v52;
  v151 = v51;
  [v1 registeredForTestDimensionUnit];
  OUTLINED_FUNCTION_9_2();
  if (v57)
  {
    v58 = CAFTypeTestMultiObservable.testDimensionUnitRawValue.getter();
    OUTLINED_FUNCTION_50_0(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v56 = OUTLINED_FUNCTION_38_0();
  }

  v148 = v56;
  v149 = v55;
  [v1 registeredForTestComplexItem];
  OUTLINED_FUNCTION_9_2();
  if (v61)
  {
    CAFTypeTestMultiObservable.testComplexItem.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v60 = OUTLINED_FUNCTION_38_0();
  }

  v146 = v60;
  v147 = v59;
  [v1 registeredForTestArrayBool];
  OUTLINED_FUNCTION_9_2();
  if (v64)
  {
    CAFTypeTestMultiObservable.testArrayBool.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGSgMd, &_sSaySbGSgMR);
    v63 = OUTLINED_FUNCTION_38_0();
  }

  v144 = v63;
  v145 = v62;
  [v1 registeredForTestArrayUInt8];
  OUTLINED_FUNCTION_9_2();
  if (v67)
  {
    CAFTypeTestMultiObservable.testArrayUInt8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGSgMd, &_sSays5UInt8VGSgMR);
    v66 = OUTLINED_FUNCTION_38_0();
  }

  v142 = v66;
  v143 = v65;
  [v1 registeredForTestArrayUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v70)
  {
    CAFTypeTestMultiObservable.testArrayUInt16.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGSgMd, &_sSays6UInt16VGSgMR);
    v69 = OUTLINED_FUNCTION_38_0();
  }

  v140 = v69;
  v141 = v68;
  [v1 registeredForTestArrayUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v73)
  {
    CAFTypeTestMultiObservable.testArrayUInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGSgMd, &_sSays6UInt32VGSgMR);
    v72 = OUTLINED_FUNCTION_38_0();
  }

  v138 = v72;
  v139 = v71;
  [v1 registeredForTestArrayUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v76)
  {
    CAFTypeTestMultiObservable.testArrayUInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGSgMd, &_sSays6UInt64VGSgMR);
    v75 = OUTLINED_FUNCTION_38_0();
  }

  v136 = v75;
  v137 = v74;
  [v1 registeredForTestArrayInt8];
  OUTLINED_FUNCTION_9_2();
  if (v79)
  {
    CAFTypeTestMultiObservable.testArrayInt8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGSgMd, &_sSays4Int8VGSgMR);
    v78 = OUTLINED_FUNCTION_38_0();
  }

  v134 = v78;
  v135 = v77;
  [v1 registeredForTestArrayInt16];
  OUTLINED_FUNCTION_9_2();
  if (v82)
  {
    CAFTypeTestMultiObservable.testArrayInt16.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGSgMd, &_sSays5Int16VGSgMR);
    v81 = OUTLINED_FUNCTION_38_0();
  }

  v132 = v81;
  v133 = v80;
  [v1 registeredForTestArrayInt32];
  OUTLINED_FUNCTION_9_2();
  if (v85)
  {
    CAFTypeTestMultiObservable.testArrayInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGSgMd, &_sSays5Int32VGSgMR);
    v84 = OUTLINED_FUNCTION_38_0();
  }

  v130 = v84;
  v131 = v83;
  [v1 registeredForTestArrayInt64];
  OUTLINED_FUNCTION_9_2();
  if (v88)
  {
    CAFTypeTestMultiObservable.testArrayInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGSgMd, &_sSays5Int64VGSgMR);
    v87 = OUTLINED_FUNCTION_38_0();
  }

  v128 = v87;
  v129 = v86;
  [v1 registeredForTestArrayFloat];
  OUTLINED_FUNCTION_9_2();
  if (v91)
  {
    CAFTypeTestMultiObservable.testArrayFloat.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGSgMd, &_sSaySfGSgMR);
    v90 = OUTLINED_FUNCTION_38_0();
  }

  v126 = v90;
  v127 = v89;
  [v1 registeredForTestArrayString];
  OUTLINED_FUNCTION_9_2();
  if (v94)
  {
    CAFTypeTestMultiObservable.testArrayString.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v93 = OUTLINED_FUNCTION_38_0();
  }

  v124 = v93;
  v125 = v92;
  [v1 registeredForTestArrayData];
  OUTLINED_FUNCTION_9_2();
  if (v97)
  {
    CAFTypeTestMultiObservable.testArrayData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v96 = OUTLINED_FUNCTION_38_0();
  }

  v122 = v96;
  v123 = v95;
  v98 = [v1 registeredForTestArrayRawData];
  v99 = 0x73696765726E753CLL;
  v100 = 0xEE003E6465726574;
  if (v98)
  {
    CAFTypeTestMultiObservable.testArrayRawData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v99 = OUTLINED_FUNCTION_38_0();
    v100 = v101;
  }

  v121 = v99;
  v102 = [v1 registeredForTestComplexItems];
  v103 = 0x73696765726E753CLL;
  v104 = 0xEE003E6465726574;
  if (v102)
  {
    CAFTypeTestMultiObservable.testComplexItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v103 = OUTLINED_FUNCTION_38_0();
    v104 = v105;
  }

  v120 = v103;
  v106 = [v1 registeredForTestComplexItemValue];
  v107 = 0x73696765726E753CLL;
  v108 = 0xEE003E6465726574;
  if (v106)
  {
    CAFTypeTestMultiObservable.testComplexItemValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v107 = OUTLINED_FUNCTION_38_0();
    v108 = v109;
  }

  if ([v1 registeredForTestComplexItemList])
  {
    CAFTypeTestMultiObservable.testComplexItemList.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    OUTLINED_FUNCTION_38_0();
  }

  _StringGuts.grow(_:)(657);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242310E50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v177, v178);

  v110 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v110 & 0xFFFFFFFFFFFFLL | 0x6F42000000000000, 0xEC000000203A6C6FLL);
  MEMORY[0x245D0A530](v175, v176);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v9, v174);

  OUTLINED_FUNCTION_74_0();
  MEMORY[0x245D0A530](v172, v173);

  OUTLINED_FUNCTION_74_0();
  MEMORY[0x245D0A530](v170, v171);

  OUTLINED_FUNCTION_74_0();
  MEMORY[0x245D0A530](v168, v169);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xEC000000203A3874);
  MEMORY[0x245D0A530](v166, v167);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v164, v165);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v162, v163);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v160, v161);

  v111 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v111 & 0xFFFFFFFFFFFFLL | 0x6C46000000000000, 0xED0000203A74616FLL);
  MEMORY[0x245D0A530](v158, v159);

  v112 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v112 & 0xFFFFFFFFFFFFLL | 0x7453000000000000, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v156, v157);

  v113 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v113 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEC000000203A6174);
  MEMORY[0x245D0A530](v154, v155);

  v114 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v114 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF203A6174614477);
  MEMORY[0x245D0A530](v152, v153);

  v115 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v115 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000, v116 | 0xEC000000203A6174);
  MEMORY[0x245D0A530](v150, v151);

  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242310E70);
  MEMORY[0x245D0A530](v148, v149);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v146, v147);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310EB0);
  MEMORY[0x245D0A530](v144, v145);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v142, v143);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v140, v141);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v138, v139);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v136, v137);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310F50);
  MEMORY[0x245D0A530](v134, v135);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v132, v133);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v130, v131);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v128, v129);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v126, v127);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v124, v125);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311010);
  MEMORY[0x245D0A530](v122, v123);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311030);
  MEMORY[0x245D0A530](v121, v100);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311050);
  MEMORY[0x245D0A530](v120, v104);

  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311070);
  MEMORY[0x245D0A530](v119, v108);

  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311090);
  v117 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v117);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestMultiObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFTypeTestMultiObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFTypeTestMultiObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testBool;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v12);
  v13 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt8;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt16;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt16VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt16VSgGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt32;
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt32VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v20);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v19] = v21;
  v22 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt64;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt64VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt64VSgGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt8;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs4Int8VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs4Int8VSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v25] = v27;
  v28 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt16;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int16VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int16VSgGMR);
  OUTLINED_FUNCTION_225(v29);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v28] = v30;
  v31 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt32;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int32VSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v31] = v33;
  v34 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt64;
  swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int64VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int64VSgGMR);
  OUTLINED_FUNCTION_225(v35);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v34] = v36;
  v37 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testFloat;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSfSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSfSgGMR);
  OUTLINED_FUNCTION_225(v38);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v37] = v39;
  v40 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testString;
  swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v41);
  OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)();
  v42 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testData;
  swift_getKeyPath();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v43);
  OUTLINED_FUNCTION_0_7();
  *&v2[v42] = specialized SafePublished.init(observedValuekeypath:)();
  v44 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testRawData;
  swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v45);
  OUTLINED_FUNCTION_0_7();
  *&v2[v44] = specialized SafePublished.init(observedValuekeypath:)();
  v46 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testEnum;
  swift_getKeyPath();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo15CAFButtonActionVSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v47);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v46] = v48;
  v49 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testDimensionUnitRawValue;
  swift_getKeyPath();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo11CAFUnitTypeVSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo11CAFUnitTypeVSgGMR);
  OUTLINED_FUNCTION_225(v50);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v49] = v51;
  v52 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItem;
  swift_getKeyPath();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo18CAFTestComplexItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo18CAFTestComplexItemCSgGMR);
  OUTLINED_FUNCTION_225(v53);
  OUTLINED_FUNCTION_0_7();
  *&v2[v52] = specialized SafePublished.init(observedValuekeypath:)();
  v54 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayBool;
  swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySbGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySbGSgGMR);
  OUTLINED_FUNCTION_225(v55);
  OUTLINED_FUNCTION_0_7();
  *&v2[v54] = specialized SafePublished.init(observedValuekeypath:)();
  v56 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt8;
  swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5UInt8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5UInt8VGSgGMR);
  OUTLINED_FUNCTION_225(v57);
  OUTLINED_FUNCTION_0_7();
  *&v2[v56] = specialized SafePublished.init(observedValuekeypath:)();
  v58 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt16;
  swift_getKeyPath();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt16VGSgGMR);
  OUTLINED_FUNCTION_225(v59);
  OUTLINED_FUNCTION_0_7();
  *&v2[v58] = specialized SafePublished.init(observedValuekeypath:)();
  v60 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt32;
  swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt32VGSgGMR);
  OUTLINED_FUNCTION_225(v61);
  OUTLINED_FUNCTION_0_7();
  *&v2[v60] = specialized SafePublished.init(observedValuekeypath:)();
  v62 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt64;
  swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt64VGSgGMR);
  OUTLINED_FUNCTION_225(v63);
  OUTLINED_FUNCTION_0_7();
  *&v2[v62] = specialized SafePublished.init(observedValuekeypath:)();
  v64 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt8;
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays4Int8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays4Int8VGSgGMR);
  OUTLINED_FUNCTION_225(v65);
  OUTLINED_FUNCTION_0_7();
  *&v2[v64] = specialized SafePublished.init(observedValuekeypath:)();
  v66 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt16;
  swift_getKeyPath();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int16VGSgGMR);
  OUTLINED_FUNCTION_225(v67);
  OUTLINED_FUNCTION_0_7();
  *&v2[v66] = specialized SafePublished.init(observedValuekeypath:)();
  v68 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt32;
  swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int32VGSgGMR);
  OUTLINED_FUNCTION_225(v69);
  OUTLINED_FUNCTION_0_7();
  *&v2[v68] = specialized SafePublished.init(observedValuekeypath:)();
  v70 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt64;
  swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int64VGSgGMR);
  OUTLINED_FUNCTION_225(v71);
  OUTLINED_FUNCTION_0_7();
  *&v2[v70] = specialized SafePublished.init(observedValuekeypath:)();
  v72 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayFloat;
  swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySfGSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySfGSgGMR);
  OUTLINED_FUNCTION_225(v73);
  OUTLINED_FUNCTION_0_7();
  *&v2[v72] = specialized SafePublished.init(observedValuekeypath:)();
  v74 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayString;
  swift_getKeyPath();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySSGSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v75);
  OUTLINED_FUNCTION_0_7();
  *&v2[v74] = specialized SafePublished.init(observedValuekeypath:)();
  v76 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayData;
  swift_getKeyPath();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v77);
  OUTLINED_FUNCTION_0_7();
  *&v2[v76] = specialized SafePublished.init(observedValuekeypath:)();
  v78 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayRawData;
  swift_getKeyPath();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v79);
  OUTLINED_FUNCTION_0_7();
  *&v2[v78] = specialized SafePublished.init(observedValuekeypath:)();
  v80 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItems;
  swift_getKeyPath();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo19CAFTestComplexItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo19CAFTestComplexItemsCSgGMR);
  OUTLINED_FUNCTION_225(v81);
  OUTLINED_FUNCTION_0_7();
  *&v2[v80] = specialized SafePublished.init(observedValuekeypath:)();
  v82 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItemValue;
  swift_getKeyPath();
  v83 = *(v53 + 48);
  v84 = *(v53 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v82] = specialized SafePublished.init(observedValuekeypath:)();
  v85 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItemList;
  swift_getKeyPath();
  v86 = *(v81 + 48);
  v87 = *(v81 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v85] = specialized SafePublished.init(observedValuekeypath:)();
  v88 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__name;
  swift_getKeyPath();
  v89 = *(v8 + 48);
  v90 = *(v8 + 52);
  swift_allocObject();
  v91 = OUTLINED_FUNCTION_0_7();
  *&v2[v88] = specialized SafePublished.init(observedValuekeypath:)(v91);
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed] = a1;
  v95.receiver = v2;
  v95.super_class = type metadata accessor for CAFTypeTestMultiObservable();
  v92 = a1;
  v93 = objc_msgSendSuper2(&v95, sel_init);
  [v92 registerObserver_];

  return v93;
}

uint64_t CAFTypeTestMultiObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestMultiObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestMultiObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestMultiObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestMultiObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestMultiObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestMultiObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTypeTestMultiObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateUserVisibleLabel:)()
{
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateUserVisibleLabel:)();
}

{
  OUTLINED_FUNCTION_46_0();
  v2 = *(v0 + *v1);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestBool:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testBool;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt8:)()
{
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt8:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt16:)()
{
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt16:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt32:)()
{
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt32:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt64:)()
{
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt64:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v1, v2, v3);
  OUTLINED_FUNCTION_76_0();
  v4 = OUTLINED_FUNCTION_7_5();
  v0(v4);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestFloat:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testFloat;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestString:)()
{
  OUTLINED_FUNCTION_46_0();
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testString;
  OUTLINED_FUNCTION_15_4();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestData:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_76_0();
  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v0, v1);
  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestRawData:)()
{
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testRawData);

  v2 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v2, v3);
  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

void @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestData:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_0();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  outlined consume of Data?(v28, v30);

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItem:)()
{
  OUTLINED_FUNCTION_61_0();
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItem:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v4, v5, v6);
  v7 = *(v1 + v3);
  v8 = v2;

  v0(v2);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayBool:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayBool;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  v8 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8, v9, v10);
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v11 = OUTLINED_FUNCTION_75_0();
      }

      v12 = v11;
      [v11 BOOLValue];

      OUTLINED_FUNCTION_12_3();
      if (v14)
      {
        v16 = OUTLINED_FUNCTION_5_17(v13);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v17, v18);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v15);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt8:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt8;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 unsignedCharValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayBool:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt16:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt16;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 unsignedShortValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayInt8:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt8;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 charValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayInt16:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt16;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 shortValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt32:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v12 = *a3;
  OUTLINED_FUNCTION_18_3();
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()(a2)) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (a4)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        a4 = v26;
      }

      ++v7;
      *(a4 + 16) = v16;
      *(a4 + 4 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt64:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v12 = *a3;
  OUTLINED_FUNCTION_18_3();
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()(a2)) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (a4)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        a4 = v26;
      }

      ++v7;
      *(a4 + 16) = v16;
      *(a4 + 8 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayFloat:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayFloat;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);
  if (!a2 || (v6 = specialized Array._getCount()(a2)) == 0)
  {

LABEL_13:

    specialized SafePublished.value.setter();
  }

  v7 = v6;
  v20 = MEMORY[0x277D84F90];

  v8 = OUTLINED_FUNCTION_11_4();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8, v9, v10);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v20;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v14 = OUTLINED_FUNCTION_75_0();
      }

      v15 = v14;
      [v14 floatValue];
      v17 = v16;

      v20 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      ++v12;
      *(v13 + 16) = v19 + 1;
      *(v13 + 4 * v19 + 32) = v17;
    }

    while (v7 != v12);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayString:)()
{
  return CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayString:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v4, v5, v6);
  v7 = *(v1 + v3);

  v0(v2);
}

uint64_t @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a6();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayRawData:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayRawData);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFTypeTestMultiObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestMultiObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTypeTestMultiObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t keypath_get_22Tm(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_0(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testUInt8Bridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testUInt8Bridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testUInt16Bridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testUInt16Bridged.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t key path getter for CAFTypeTestMulti.testUInt32Bridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testUInt32Bridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testInt8Bridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testInt8Bridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testInt16Bridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testInt16Bridged.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t key path getter for CAFTypeTestMulti.testInt32Bridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testInt32Bridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t keypath_get_199Tm(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_0(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

unint64_t key path getter for CAFTypeTestMulti.testFloatBridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testFloatBridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void key path getter for CAFTypeTestMulti.testString : CAFTypeTestMulti(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 testString];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for CAFTypeTestMulti.testString : CAFTypeTestMulti(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x245D0A4C0](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTestString_];
}

void key path setter for CAFTypeTestMulti.testData : CAFTypeTestMulti(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  [v2 setTestData_];
}

void key path getter for CAFTypeTestMulti.testData : CAFTypeTestMulti(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_69_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *v4 = v7;
  v4[1] = v9;
}

uint64_t key path getter for CAFTypeTestMulti.testEnumBridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testEnumBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testDimensionUnitRawValueBridged : CAFTypeTestMulti@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestMulti.testDimensionUnitRawValueBridged.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

id key path getter for CAFTypeTestMulti.testComplexItem : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItem];
  *a2 = result;
  return result;
}

void key path setter for CAFTypeTestMulti.testArrayBoolBridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayBoolBridged.setter(v4);
}

void key path setter for CAFTypeTestMulti.testArrayUInt8Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayUInt8Bridged.setter(v4);
}

void key path setter for CAFTypeTestMulti.testArrayUInt16Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayUInt16Bridged.setter(v4);
}

void key path setter for CAFTypeTestMulti.testArrayUInt32Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayUInt32Bridged.setter();
}

void key path setter for CAFTypeTestMulti.testArrayUInt64Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayUInt64Bridged.setter();
}

void key path setter for CAFTypeTestMulti.testArrayInt8Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayInt8Bridged.setter(v4);
}

void key path setter for CAFTypeTestMulti.testArrayInt16Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayInt16Bridged.setter(v4);
}

void key path setter for CAFTypeTestMulti.testArrayInt32Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayUInt32Bridged.setter();
}

void key path setter for CAFTypeTestMulti.testArrayInt64Bridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayUInt64Bridged.setter();
}

void key path setter for CAFTypeTestMulti.testArrayFloatBridged : CAFTypeTestMulti(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFTypeTestMulti.testArrayFloatBridged.setter(v4);
}

void key path setter for CAFTypeTestMulti.testArrayString : CAFTypeTestMulti(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  isa = v8.super.isa;
  [v7 *a6];
}

void key path getter for CAFTypeTestMulti.testArrayString : CAFTypeTestMulti(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_69_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
}

id key path getter for CAFTypeTestMulti.testComplexItems : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItems];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTestMulti.testComplexItemValue : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItemValue];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTestMulti.testComplexItemList : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItemList];
  *a2 = result;
  return result;
}

void key path getter for CAFTypeTestMulti.userVisibleLabel : CAFTypeTestMulti(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_69_0(a1, a2, a3, a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
}

unint64_t lazy protocol witness table accessor for type CAFTypeTestMulti and conformance CAFTypeTestMulti()
{
  result = lazy protocol witness table cache variable for type CAFTypeTestMulti and conformance CAFTypeTestMulti;
  if (!lazy protocol witness table cache variable for type CAFTypeTestMulti and conformance CAFTypeTestMulti)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTypeTestMulti, 0x277CF8728);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTypeTestMulti and conformance CAFTypeTestMulti);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestMultiObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTypeTestMultiObservable and conformance CAFTypeTestMultiObservable(&lazy protocol witness table cache variable for type CAFTypeTestMultiObservable and conformance CAFTypeTestMultiObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestMultiObservable and conformance CAFTypeTestMultiObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTypeTestMultiObservable();
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of CAFTypeTestMultiObservable.testUInt32.setter(unint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x220);
  v3 = OUTLINED_FUNCTION_86_0(a1);
  return v4(v3);
}

uint64_t dispatch thunk of CAFTypeTestMultiObservable.testInt32.setter(unint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x2A0);
  v3 = OUTLINED_FUNCTION_86_0(a1);
  return v4(v3);
}

uint64_t dispatch thunk of CAFTypeTestMultiObservable.testFloat.setter(unint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x2E0);
  v3 = OUTLINED_FUNCTION_86_0(a1);
  return v4(v3);
}

uint64_t partial apply for closure #1 in CAFTypeTestMultiObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_2_36(uint64_t result)
{
  *v1 = result;
  *(result + 72) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return String.init<A>(describing:)();
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_41_0()
{
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t result)
{
  v1 = *(*result + 56);
  v3 = *(*result + 80);
  v2 = *(*result + 88);
  v4 = *(*result + 72);
  return result;
}

id OUTLINED_FUNCTION_48_0(const char **a1)
{
  v3 = *a1;

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 100) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 102) = BYTE2(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 103) = BYTE1(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t *a1)
{
  v2 = *a1;

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_69_0(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = *a1;
  v6 = *a4;

  return [v5 v6];
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return swift_readAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_71_0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SSSgTt3g5(v25, v26, a1, v27, v24, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void OUTLINED_FUNCTION_72_0()
{

  JUMPOUT(0x245D0A790);
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_10Foundation4DataVSgTt3g5(v24, v25, v27, v28, v26, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void OUTLINED_FUNCTION_74_0()
{

  JUMPOUT(0x245D0A530);
}

id OUTLINED_FUNCTION_75_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v3 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return swift_getKeyPath();
}

uint64_t key path getter for CAFTypeTestObservable.testBool : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testBool.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestObservable.testBool.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v11 = OUTLINED_FUNCTION_42_0(v2, v3, v5, v6, v7, v8, v9, v10, v14);
  v12(v11);

  return v4;
}

uint64_t CAFTypeTestObservable.testBool.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SbSgTt3g5(a1, v5, KeyPath, v4);
}

uint64_t CAFTypeTestObservable.testBool.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFTypeTestObservable.testBool.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SbSgTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t key path getter for CAFTypeTestObservable.testUInt8 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testUInt8.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt8.setter()
{
  return CAFTypeTestObservable.testUInt8.setter();
}

{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestObservable.testUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt8.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 89) << 8), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

uint64_t key path getter for CAFTypeTestObservable.testUInt16 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testUInt16.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt16.setter()
{
  return CAFTypeTestObservable.testUInt16.setter();
}

{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestObservable.testUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt16.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 90) << 16), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

unint64_t key path getter for CAFTypeTestObservable.testUInt32 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testUInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt32.setter()
{
  return CAFTypeTestObservable.testUInt32.setter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestObservable.testUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt32.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 92) << 32), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

uint64_t key path getter for CAFTypeTestObservable.testUInt64 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testUInt64.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt64.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestObservable.testUInt64.setter(a1, a2, &unk_242305FD0, &unk_242305FF8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_s6UInt64VSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestObservable.testUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testInt8 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testInt8.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestObservable.testInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt8.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testInt16 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testInt16.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestObservable.testInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt16.modify();
}

unint64_t key path getter for CAFTypeTestObservable.testInt32 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestObservable.testInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt32.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testInt64 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testInt64.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt64.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_42_0(v4, v5, v8, v9, v10, v11, v12, v13, v17);
  v15(v14);

  return v6;
}

void CAFTypeTestObservable.testInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestObservable.testUInt64.modify(uint64_t a1, uint64_t a2, void (*a3)(void, void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 56), *(*a1 + 64), *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));

  free(v3);
}

unint64_t key path getter for CAFTypeTestObservable.testFloat : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testFloat.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestObservable.testUInt32.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *(v5 + 4);
  v14 = OUTLINED_FUNCTION_42_0(v4, v5, v8, v9, v10, v11, v12, v13, v17);
  v15(v14);

  return v6 | (v7 << 32);
}

void CAFTypeTestObservable.testFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt32.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testString : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testString.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testString : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFTypeTestObservable.testString.setter(v2, v3, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t CAFTypeTestObservable.testString.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = v3[1];

  v14 = OUTLINED_FUNCTION_42_0(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  v2(v14);

  OUTLINED_FUNCTION_36_0();

  return v4;
}

uint64_t CAFTypeTestObservable.testString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestObservable.testString.setter(a1, a2, &unk_242306180, &unk_2423061A8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SSSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestObservable.testString.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v9;
  v1[8] = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testData : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testData.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testData : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  outlined copy of Data?(*a1, v3);
  return CAFTypeTestObservable.testData.setter(v2, v3, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t CAFTypeTestObservable.testData.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = outlined copy of Data?(*v3, *(v3 + 8));
  v13 = OUTLINED_FUNCTION_42_0(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v2(v13);

  OUTLINED_FUNCTION_36_0();

  return v4;
}

void CAFTypeTestObservable.testData.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = v7[1];
  v1[7] = v8;
  v1[8] = v9;
  outlined copy of Data?(v8, v9);
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestObservable.testRawData.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testRawData) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFTypeTestObservable.testEnum : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testEnum.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt8.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  v10 = v2;

  v3 = v2;
  v4 = OUTLINED_FUNCTION_70_0();
  v6 = *v5;
  v7 = v5[1];
  v4(v9, 0);

  return v6 | (v7 << 8);
}

void CAFTypeTestObservable.testEnum.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt8.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testDimensionUnitRawValue : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testDimensionUnitRawValue.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt16.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  v10 = v2;

  v3 = v2;
  v4 = OUTLINED_FUNCTION_70_0();
  v6 = *v5;
  v7 = *(v5 + 2);
  v4(v9, 0);

  return v6 | (v7 << 16);
}

void CAFTypeTestObservable.testDimensionUnitRawValue.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testUInt16.modify();
}

id key path getter for CAFTypeTestObservable.testComplexItem : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexItem.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItem : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestObservable.testComplexItem.setter();
}

void CAFTypeTestObservable.testComplexItem.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testComplexItem.modify();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0(v4);
  if (v5)
  {
    v6 = v1;
    v7 = v3;
    v8 = OUTLINED_FUNCTION_26_2();
    v0(v8);
  }

  else
  {
    v9 = v3;
    v10 = OUTLINED_FUNCTION_26_2();
    v0(v10);
  }

  OUTLINED_FUNCTION_236();

  free(v11);
}

uint64_t key path getter for CAFTypeTestObservable.testArrayBool : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayBool.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayBool : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayBool.setter(v4);
}

void CAFTypeTestObservable.testArrayBool.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0(v3);
  if (v4)
  {

    v5 = v2;
    v6 = OUTLINED_FUNCTION_26_2();
    v0(v6);
    v7 = *v1;
  }

  else
  {
    v8 = v2;
    v9 = OUTLINED_FUNCTION_26_2();
    v0(v9);
  }

  OUTLINED_FUNCTION_236();

  free(v10);
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt8 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayUInt8.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayUInt8 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayUInt8.setter(v4);
}

void CAFTypeTestObservable.testArrayUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt16 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayUInt16.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayUInt16 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayUInt16.setter(v4);
}

void CAFTypeTestObservable.testArrayUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt32 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayUInt32.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayUInt32 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayUInt32.setter(v4);
}

void CAFTypeTestObservable.testArrayUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt64 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayUInt64.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayUInt64 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayUInt64.setter(v4);
}

void CAFTypeTestObservable.testArrayUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt8 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayInt8.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayInt8 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayInt8.setter(v4);
}

void CAFTypeTestObservable.testArrayInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt16 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayInt16.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayInt16 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayInt16.setter(v4);
}

void CAFTypeTestObservable.testArrayInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt32 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayInt32.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayInt32 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayInt32.setter(v4);
}

void CAFTypeTestObservable.testArrayInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt64 : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayInt64.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayInt64 : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayInt64.setter(v4);
}

void CAFTypeTestObservable.testArrayInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayFloat : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayFloat.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayFloat : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayFloat.setter(v4);
}

void CAFTypeTestObservable.testArrayFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayString : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayString.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayString : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayString.setter(v4);
}

void CAFTypeTestObservable.testArrayString.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayData : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testArrayData.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testArrayData : CAFTypeTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestObservable.testArrayData.setter(v4);
}

uint64_t CAFTypeTestObservable.testArrayBool.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;

  v15 = OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  v4(v15);

  OUTLINED_FUNCTION_36_0();

  return v6;
}

void CAFTypeTestObservable.testArrayData.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);

  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testArrayBool.modify();
}

uint64_t CAFTypeTestObservable.testArrayRawData.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayRawData) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTypeTestObservable.$testRawData.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

id key path getter for CAFTypeTestObservable.testComplexItems : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexItems.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItems : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestObservable.testComplexItems.setter();
}

void CAFTypeTestObservable.testComplexItems.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testComplexItem.modify();
}

id key path getter for CAFTypeTestObservable.testComplexItemValue : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexItemValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItemValue : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestObservable.testComplexItemValue.setter();
}

void CAFTypeTestObservable.testComplexItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexItemList : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexItemList.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItemList : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestObservable.testComplexItemList.setter();
}

void CAFTypeTestObservable.testComplexItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexArrayItemValue : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexArrayItemValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexArrayItemValue : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return CAFTypeTestObservable.testComplexArrayItemValue.setter(v2);
}

void CAFTypeTestObservable.testComplexArrayItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testComplexItem.modify();
}

id key path getter for CAFTypeTestObservable.testComplexNestedItemValue : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexNestedItemValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexNestedItemValue : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return CAFTypeTestObservable.testComplexNestedItemValue.setter(v2);
}

void CAFTypeTestObservable.testComplexNestedItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testComplexItem.modify();
}

id key path getter for CAFTypeTestObservable.testComplexNestedItemList : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexNestedItemList.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexNestedItemList : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return CAFTypeTestObservable.testComplexNestedItemList.setter(v2);
}

void CAFTypeTestObservable.testComplexNestedItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testComplexItem.modify();
}

id key path getter for CAFTypeTestObservable.testComplexNestedListItemValue : CAFTypeTestObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestObservable.testComplexNestedListItemValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexNestedListItemValue : CAFTypeTestObservable(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return CAFTypeTestObservable.testComplexNestedListItemValue.setter(v2);
}

id CAFTypeTestObservable.testComplexItem.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *v5;
  v15 = OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  v4(v15);

  OUTLINED_FUNCTION_36_0();

  return v6;
}

uint64_t CAFTypeTestObservable.testComplexItem.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_89_0();
  v8 = v4;

  return a4(a1, v8, v5, v7);
}

void CAFTypeTestObservable.testComplexNestedListItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestObservable.testComplexItem.modify();
}

uint64_t CAFTypeTestObservable.$testBool.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFTypeTestObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  [v1 registeredForTestBool];
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    CAFTypeTestObservable.testBool.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v3 = OUTLINED_FUNCTION_38_0();
  }

  v190 = v3;
  v191 = v2;
  v5 = [v1 registeredForTestUInt8];
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if (v5)
  {
    v8 = CAFTypeTestObservable.testUInt8.getter();
    OUTLINED_FUNCTION_52_0(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v6 = OUTLINED_FUNCTION_38_0();
  }

  v189 = v7;
  [v1 registeredForTestUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    v12 = CAFTypeTestObservable.testUInt16.getter();
    OUTLINED_FUNCTION_50_0(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v10 = OUTLINED_FUNCTION_38_0();
  }

  v187 = v10;
  v188 = v9;
  [v1 registeredForTestUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v15)
  {
    v16 = CAFTypeTestObservable.testUInt32.getter();
    OUTLINED_FUNCTION_49_0(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v14 = OUTLINED_FUNCTION_38_0();
  }

  v185 = v14;
  v186 = v13;
  [v1 registeredForTestUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v19)
  {
    CAFTypeTestObservable.testUInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    v18 = OUTLINED_FUNCTION_38_0();
  }

  v183 = v18;
  v184 = v17;
  [v1 registeredForTestInt8];
  OUTLINED_FUNCTION_9_2();
  if (v22)
  {
    v23 = CAFTypeTestObservable.testInt8.getter();
    OUTLINED_FUNCTION_52_0(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v21 = OUTLINED_FUNCTION_38_0();
  }

  v181 = v21;
  v182 = v20;
  [v1 registeredForTestInt16];
  OUTLINED_FUNCTION_9_2();
  if (v26)
  {
    v27 = CAFTypeTestObservable.testInt16.getter();
    OUTLINED_FUNCTION_50_0(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v25 = OUTLINED_FUNCTION_38_0();
  }

  v179 = v25;
  v180 = v24;
  [v1 registeredForTestInt32];
  OUTLINED_FUNCTION_9_2();
  if (v30)
  {
    v31 = CAFTypeTestObservable.testInt32.getter();
    OUTLINED_FUNCTION_49_0(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v29 = OUTLINED_FUNCTION_38_0();
  }

  v177 = v29;
  v178 = v28;
  [v1 registeredForTestInt64];
  OUTLINED_FUNCTION_9_2();
  if (v34)
  {
    CAFTypeTestObservable.testInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
    v33 = OUTLINED_FUNCTION_38_0();
  }

  v175 = v33;
  v176 = v32;
  [v1 registeredForTestFloat];
  OUTLINED_FUNCTION_9_2();
  if (v37)
  {
    v38 = CAFTypeTestObservable.testFloat.getter();
    OUTLINED_FUNCTION_49_0(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v36 = OUTLINED_FUNCTION_38_0();
  }

  v173 = v36;
  v174 = v35;
  [v1 registeredForTestString];
  OUTLINED_FUNCTION_9_2();
  if (v41)
  {
    CAFTypeTestObservable.testString.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v40 = OUTLINED_FUNCTION_38_0();
  }

  v171 = v40;
  v172 = v39;
  [v1 registeredForTestData];
  OUTLINED_FUNCTION_9_2();
  if (v44)
  {
    CAFTypeTestObservable.testData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v43 = OUTLINED_FUNCTION_38_0();
  }

  v169 = v43;
  v170 = v42;
  [v1 registeredForTestRawData];
  OUTLINED_FUNCTION_9_2();
  if (v47)
  {
    CAFTypeTestObservable.testRawData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v46 = OUTLINED_FUNCTION_38_0();
  }

  v167 = v46;
  v168 = v45;
  [v1 registeredForTestEnum];
  OUTLINED_FUNCTION_9_2();
  if (v50)
  {
    v51 = CAFTypeTestObservable.testEnum.getter();
    OUTLINED_FUNCTION_52_0(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v49 = OUTLINED_FUNCTION_38_0();
  }

  v165 = v49;
  v166 = v48;
  [v1 registeredForTestDimensionUnit];
  OUTLINED_FUNCTION_9_2();
  if (v54)
  {
    v55 = CAFTypeTestObservable.testDimensionUnitRawValue.getter();
    OUTLINED_FUNCTION_50_0(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v53 = OUTLINED_FUNCTION_38_0();
  }

  v163 = v53;
  v164 = v52;
  [v1 registeredForTestComplexItem];
  OUTLINED_FUNCTION_9_2();
  if (v58)
  {
    CAFTypeTestObservable.testComplexItem.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v57 = OUTLINED_FUNCTION_38_0();
  }

  v161 = v57;
  v162 = v56;
  [v1 registeredForTestArrayBool];
  OUTLINED_FUNCTION_9_2();
  if (v61)
  {
    CAFTypeTestObservable.testArrayBool.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGSgMd, &_sSaySbGSgMR);
    v60 = OUTLINED_FUNCTION_38_0();
  }

  v159 = v60;
  v160 = v59;
  [v1 registeredForTestArrayUInt8];
  OUTLINED_FUNCTION_9_2();
  if (v64)
  {
    CAFTypeTestObservable.testArrayUInt8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGSgMd, &_sSays5UInt8VGSgMR);
    v63 = OUTLINED_FUNCTION_38_0();
  }

  v157 = v63;
  v158 = v62;
  [v1 registeredForTestArrayUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v67)
  {
    CAFTypeTestObservable.testArrayUInt16.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGSgMd, &_sSays6UInt16VGSgMR);
    v66 = OUTLINED_FUNCTION_38_0();
  }

  v155 = v66;
  v156 = v65;
  [v1 registeredForTestArrayUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v70)
  {
    CAFTypeTestObservable.testArrayUInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGSgMd, &_sSays6UInt32VGSgMR);
    v69 = OUTLINED_FUNCTION_38_0();
  }

  v153 = v69;
  v154 = v68;
  [v1 registeredForTestArrayUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v73)
  {
    CAFTypeTestObservable.testArrayUInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGSgMd, &_sSays6UInt64VGSgMR);
    v72 = OUTLINED_FUNCTION_38_0();
  }

  v151 = v72;
  v152 = v71;
  [v1 registeredForTestArrayInt8];
  OUTLINED_FUNCTION_9_2();
  if (v76)
  {
    CAFTypeTestObservable.testArrayInt8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGSgMd, &_sSays4Int8VGSgMR);
    v75 = OUTLINED_FUNCTION_38_0();
  }

  v149 = v75;
  v150 = v74;
  [v1 registeredForTestArrayInt16];
  OUTLINED_FUNCTION_9_2();
  if (v79)
  {
    CAFTypeTestObservable.testArrayInt16.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGSgMd, &_sSays5Int16VGSgMR);
    v78 = OUTLINED_FUNCTION_38_0();
  }

  v147 = v78;
  v148 = v77;
  [v1 registeredForTestArrayInt32];
  OUTLINED_FUNCTION_9_2();
  if (v82)
  {
    CAFTypeTestObservable.testArrayInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGSgMd, &_sSays5Int32VGSgMR);
    v81 = OUTLINED_FUNCTION_38_0();
  }

  v145 = v81;
  v146 = v80;
  [v1 registeredForTestArrayInt64];
  OUTLINED_FUNCTION_9_2();
  if (v85)
  {
    CAFTypeTestObservable.testArrayInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGSgMd, &_sSays5Int64VGSgMR);
    v84 = OUTLINED_FUNCTION_38_0();
  }

  v143 = v84;
  v144 = v83;
  [v1 registeredForTestArrayFloat];
  OUTLINED_FUNCTION_9_2();
  if (v88)
  {
    CAFTypeTestObservable.testArrayFloat.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGSgMd, &_sSaySfGSgMR);
    v87 = OUTLINED_FUNCTION_38_0();
  }

  v141 = v87;
  v142 = v86;
  [v1 registeredForTestArrayString];
  OUTLINED_FUNCTION_9_2();
  if (v91)
  {
    CAFTypeTestObservable.testArrayString.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v90 = OUTLINED_FUNCTION_38_0();
  }

  v139 = v90;
  v140 = v89;
  [v1 registeredForTestArrayData];
  OUTLINED_FUNCTION_9_2();
  if (v94)
  {
    CAFTypeTestObservable.testArrayData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v93 = OUTLINED_FUNCTION_38_0();
  }

  v137 = v93;
  v138 = v92;
  [v1 registeredForTestArrayRawData];
  OUTLINED_FUNCTION_9_2();
  if (v97)
  {
    CAFTypeTestObservable.testArrayRawData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v96 = OUTLINED_FUNCTION_38_0();
  }

  v135 = v96;
  v136 = v95;
  [v1 registeredForTestComplexItems];
  OUTLINED_FUNCTION_9_2();
  if (v100)
  {
    CAFTypeTestObservable.testComplexItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v99 = OUTLINED_FUNCTION_38_0();
  }

  v133 = v99;
  v134 = v98;
  [v1 registeredForTestComplexItemValue];
  OUTLINED_FUNCTION_9_2();
  if (v103)
  {
    CAFTypeTestObservable.testComplexItemValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v102 = OUTLINED_FUNCTION_38_0();
  }

  v131 = v102;
  v132 = v101;
  v104 = [v1 registeredForTestComplexItemList];
  v105 = 0x73696765726E753CLL;
  v106 = 0xEE003E6465726574;
  if (v104)
  {
    CAFTypeTestObservable.testComplexItemList.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v105 = OUTLINED_FUNCTION_38_0();
    v106 = v107;
  }

  v130 = v105;
  v108 = [v1 registeredForTestComplexArrayItemValue];
  v109 = 0x73696765726E753CLL;
  v110 = 0xEE003E6465726574;
  if (v108)
  {
    CAFTypeTestObservable.testComplexArrayItemValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CAFTestComplexArrayItemCSgMd, &_sSo23CAFTestComplexArrayItemCSgMR);
    v109 = OUTLINED_FUNCTION_38_0();
    v110 = v111;
  }

  v129 = v109;
  v112 = [v1 registeredForTestComplexNestedItemValue];
  v113 = 0x73696765726E753CLL;
  v114 = 0xEE003E6465726574;
  if (v112)
  {
    CAFTypeTestObservable.testComplexNestedItemValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24CAFTestComplexNestedItemCSgMd, &_sSo24CAFTestComplexNestedItemCSgMR);
    v113 = OUTLINED_FUNCTION_38_0();
    v114 = v115;
  }

  v128 = v113;
  v116 = [v1 registeredForTestComplexNestedItemList];
  v117 = 0x73696765726E753CLL;
  v118 = 0xEE003E6465726574;
  if (v116)
  {
    CAFTypeTestObservable.testComplexNestedItemList.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAFTestComplexNestedItemsCSgMd, &_sSo25CAFTestComplexNestedItemsCSgMR);
    v117 = OUTLINED_FUNCTION_38_0();
    v118 = v119;
  }

  v127 = v117;
  if ([v1 registeredForTestComplexNestedListItemValue])
  {
    CAFTypeTestObservable.testComplexNestedListItemValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28CAFTestComplexNestedListItemCSgMd, &_sSo28CAFTestComplexNestedListItemCSgMR);
    OUTLINED_FUNCTION_38_0();
  }

  _StringGuts.grow(_:)(760);
  MEMORY[0x245D0A530](0xD000000000000018, 0x80000002423111C0);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v190, v191);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x495574736574202CLL);
  MEMORY[0x245D0A530](v6, v189);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v187, v188);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v185, v186);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v183, v184);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xEC000000203A3874);
  MEMORY[0x245D0A530](v181, v182);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v179, v180);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v177, v178);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v175, v176);

  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v173, v174);

  v120 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v120 & 0xFFFFFFFFFFFFLL | 0x7453000000000000, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v171, v172);

  v121 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v121 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEC000000203A6174);
  MEMORY[0x245D0A530](v169, v170);

  v122 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v122 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF203A6174614477);
  MEMORY[0x245D0A530](v167, v168);

  v123 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v123 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000, v124 | 0xEC000000203A6174);
  MEMORY[0x245D0A530](v165, v166);

  OUTLINED_FUNCTION_65_1();
  MEMORY[0x245D0A530](v163, v164);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v161, v162);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310EB0);
  MEMORY[0x245D0A530](v159, v160);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v157, v158);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v155, v156);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v153, v154);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v151, v152);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310F50);
  MEMORY[0x245D0A530](v149, v150);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v147, v148);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v145, v146);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v143, v144);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v141, v142);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v139, v140);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311010);
  MEMORY[0x245D0A530](v137, v138);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311030);
  MEMORY[0x245D0A530](v135, v136);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311050);
  MEMORY[0x245D0A530](v133, v134);

  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311070);
  MEMORY[0x245D0A530](v131, v132);

  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311090);
  MEMORY[0x245D0A530](v130, v106);

  OUTLINED_FUNCTION_65_1();
  MEMORY[0x245D0A530](v129, v110);

  MEMORY[0x245D0A530](0xD00000000000001ELL, 0x8000000242311200);
  MEMORY[0x245D0A530](v128, v114);

  OUTLINED_FUNCTION_65_1();
  MEMORY[0x245D0A530](v127, v118);

  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242311240);
  v125 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v125);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFTypeTestObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

void CAFTypeTestObservable.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_90_0();
  a16 = v18;
  a17 = v19;
  v20 = v17;
  v22 = v21;
  v23 = &v17[OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v20[v24] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testBool;
  swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v27);
  v28 = OUTLINED_FUNCTION_0_7();
  *&v20[v26] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt8;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v29] = v31;
  v32 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt16;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt16VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt16VSgGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v32] = v34;
  v35 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt32;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt32VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v35] = v37;
  v38 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt64;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt64VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt64VSgGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v38] = v40;
  v41 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt8;
  swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs4Int8VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs4Int8VSgGMR);
  OUTLINED_FUNCTION_225(v42);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v41] = v43;
  v44 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt16;
  swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int16VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int16VSgGMR);
  OUTLINED_FUNCTION_225(v45);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v44] = v46;
  v47 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt32;
  swift_getKeyPath();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int32VSgGMR);
  OUTLINED_FUNCTION_225(v48);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v47] = v49;
  v50 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt64;
  swift_getKeyPath();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int64VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int64VSgGMR);
  OUTLINED_FUNCTION_225(v51);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v50] = v52;
  v53 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testFloat;
  swift_getKeyPath();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSfSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSfSgGMR);
  OUTLINED_FUNCTION_225(v54);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v53] = v55;
  v56 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testString;
  swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v57);
  OUTLINED_FUNCTION_0_7();
  *&v20[v56] = specialized SafePublished.init(observedValuekeypath:)();
  v58 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testData;
  swift_getKeyPath();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v59);
  OUTLINED_FUNCTION_0_7();
  *&v20[v58] = specialized SafePublished.init(observedValuekeypath:)();
  v60 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testRawData;
  swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v61);
  OUTLINED_FUNCTION_0_7();
  *&v20[v60] = specialized SafePublished.init(observedValuekeypath:)();
  v62 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testEnum;
  swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo15CAFButtonActionVSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v63);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v62] = v64;
  v65 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testDimensionUnitRawValue;
  swift_getKeyPath();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo11CAFUnitTypeVSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo11CAFUnitTypeVSgGMR);
  OUTLINED_FUNCTION_225(v66);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v65] = v67;
  v68 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItem;
  swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo18CAFTestComplexItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo18CAFTestComplexItemCSgGMR);
  OUTLINED_FUNCTION_225(v69);
  OUTLINED_FUNCTION_0_7();
  *&v20[v68] = specialized SafePublished.init(observedValuekeypath:)();
  v70 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayBool;
  swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySbGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySbGSgGMR);
  OUTLINED_FUNCTION_225(v71);
  OUTLINED_FUNCTION_0_7();
  *&v20[v70] = specialized SafePublished.init(observedValuekeypath:)();
  v72 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt8;
  swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5UInt8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5UInt8VGSgGMR);
  OUTLINED_FUNCTION_225(v73);
  OUTLINED_FUNCTION_0_7();
  *&v20[v72] = specialized SafePublished.init(observedValuekeypath:)();
  v74 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt16;
  swift_getKeyPath();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt16VGSgGMR);
  OUTLINED_FUNCTION_225(v75);
  OUTLINED_FUNCTION_0_7();
  *&v20[v74] = specialized SafePublished.init(observedValuekeypath:)();
  v76 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt32;
  swift_getKeyPath();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt32VGSgGMR);
  OUTLINED_FUNCTION_225(v77);
  OUTLINED_FUNCTION_0_7();
  *&v20[v76] = specialized SafePublished.init(observedValuekeypath:)();
  v78 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt64;
  swift_getKeyPath();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt64VGSgGMR);
  OUTLINED_FUNCTION_225(v79);
  OUTLINED_FUNCTION_0_7();
  *&v20[v78] = specialized SafePublished.init(observedValuekeypath:)();
  v80 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt8;
  swift_getKeyPath();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays4Int8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays4Int8VGSgGMR);
  OUTLINED_FUNCTION_225(v81);
  OUTLINED_FUNCTION_0_7();
  *&v20[v80] = specialized SafePublished.init(observedValuekeypath:)();
  v82 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt16;
  swift_getKeyPath();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int16VGSgGMR);
  OUTLINED_FUNCTION_225(v83);
  OUTLINED_FUNCTION_0_7();
  *&v20[v82] = specialized SafePublished.init(observedValuekeypath:)();
  v84 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt32;
  swift_getKeyPath();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int32VGSgGMR);
  OUTLINED_FUNCTION_225(v85);
  OUTLINED_FUNCTION_0_7();
  *&v20[v84] = specialized SafePublished.init(observedValuekeypath:)();
  v86 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt64;
  swift_getKeyPath();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int64VGSgGMR);
  OUTLINED_FUNCTION_225(v87);
  OUTLINED_FUNCTION_0_7();
  *&v20[v86] = specialized SafePublished.init(observedValuekeypath:)();
  v88 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayFloat;
  swift_getKeyPath();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySfGSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySfGSgGMR);
  OUTLINED_FUNCTION_225(v89);
  OUTLINED_FUNCTION_0_7();
  *&v20[v88] = specialized SafePublished.init(observedValuekeypath:)();
  v90 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayString;
  swift_getKeyPath();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySSGSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v91);
  OUTLINED_FUNCTION_0_7();
  *&v20[v90] = specialized SafePublished.init(observedValuekeypath:)();
  v92 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayData;
  swift_getKeyPath();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v93);
  OUTLINED_FUNCTION_0_7();
  *&v20[v92] = specialized SafePublished.init(observedValuekeypath:)();
  v94 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayRawData;
  swift_getKeyPath();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v95);
  OUTLINED_FUNCTION_0_7();
  *&v20[v94] = specialized SafePublished.init(observedValuekeypath:)();
  v96 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItems;
  swift_getKeyPath();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo19CAFTestComplexItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo19CAFTestComplexItemsCSgGMR);
  OUTLINED_FUNCTION_225(v97);
  OUTLINED_FUNCTION_0_7();
  *&v20[v96] = specialized SafePublished.init(observedValuekeypath:)();
  v98 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItemValue;
  swift_getKeyPath();
  v99 = *(v69 + 48);
  v100 = *(v69 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v98] = specialized SafePublished.init(observedValuekeypath:)();
  v101 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItemList;
  swift_getKeyPath();
  v102 = *(v97 + 48);
  v103 = *(v97 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v101] = specialized SafePublished.init(observedValuekeypath:)();
  v104 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexArrayItemValue;
  swift_getKeyPath();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo23CAFTestComplexArrayItemCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo23CAFTestComplexArrayItemCSgGMR);
  OUTLINED_FUNCTION_225(v105);
  OUTLINED_FUNCTION_0_7();
  *&v20[v104] = specialized SafePublished.init(observedValuekeypath:)();
  v106 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexNestedItemValue;
  swift_getKeyPath();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo24CAFTestComplexNestedItemCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo24CAFTestComplexNestedItemCSgGMR);
  OUTLINED_FUNCTION_225(v107);
  OUTLINED_FUNCTION_0_7();
  *&v20[v106] = specialized SafePublished.init(observedValuekeypath:)();
  v108 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexNestedItemList;
  swift_getKeyPath();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo25CAFTestComplexNestedItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo25CAFTestComplexNestedItemsCSgGMR);
  OUTLINED_FUNCTION_225(v109);
  OUTLINED_FUNCTION_0_7();
  *&v20[v108] = specialized SafePublished.init(observedValuekeypath:)();
  v110 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexNestedListItemValue;
  swift_getKeyPath();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo28CAFTestComplexNestedListItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo28CAFTestComplexNestedListItemCSgGMR);
  OUTLINED_FUNCTION_225(v111);
  OUTLINED_FUNCTION_0_7();
  *&v20[v110] = specialized SafePublished.init(observedValuekeypath:)();
  *&v20[OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed] = v22;
  v112 = type metadata accessor for CAFTypeTestObservable();
  a9.receiver = v20;
  a9.super_class = v112;
  v113 = v22;
  v114 = objc_msgSendSuper2(&a9, sel_init);
  [v113 registerObserver_];

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTypeTestObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestBool:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testBool;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt8:)()
{
  return CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt8:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt16:)()
{
  return CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt16:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt32:)()
{
  return CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt32:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt64:)()
{
  return CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt64:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v1, v2, v3);
  OUTLINED_FUNCTION_76_0();
  v4 = OUTLINED_FUNCTION_7_5();
  v0(v4);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestFloat:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testFloat;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestString:)()
{
  OUTLINED_FUNCTION_46_0();
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testString;
  OUTLINED_FUNCTION_15_4();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestData:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_76_0();
  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v0, v1);
  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestRawData:)()
{
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testRawData);

  v2 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v2, v3);
  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

void @objc CAFTypeTestObservable.typeTestService(_:didUpdateTestData:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_0();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  outlined consume of Data?(v28, v30);

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItem:)()
{
  OUTLINED_FUNCTION_64_1();
  return CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItem:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v4, v5, v6);
  v7 = *(v1 + v3);
  v8 = v2;

  v0(v2);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayBool:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayBool;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  v8 = OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8, v9, v10);
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v11 = OUTLINED_FUNCTION_75_0();
      }

      v12 = v11;
      [v11 BOOLValue];

      OUTLINED_FUNCTION_12_3();
      if (v14)
      {
        v16 = OUTLINED_FUNCTION_5_17(v13);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v17, v18);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v15);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt8:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt8;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 unsignedCharValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t @objc CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayBool:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt16:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt16;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 unsignedShortValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayInt8:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt8;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 charValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayInt16:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt16;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_75_0();
      }

      v9 = v8;
      [v8 shortValue];

      OUTLINED_FUNCTION_12_3();
      if (v11)
      {
        OUTLINED_FUNCTION_5_17(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v12);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt32:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v12 = *a3;
  OUTLINED_FUNCTION_18_3();
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()(a2)) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (a4)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        a4 = v26;
      }

      ++v7;
      *(a4 + 16) = v16;
      *(a4 + 4 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt64:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v12 = *a3;
  OUTLINED_FUNCTION_18_3();
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()(a2)) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (a4)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        a4 = v26;
      }

      ++v7;
      *(a4 + 16) = v16;
      *(a4 + 8 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayFloat:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayFloat;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);
  if (!a2 || (v6 = specialized Array._getCount()(a2)) == 0)
  {

LABEL_13:

    specialized SafePublished.value.setter();
  }

  v7 = v6;
  v20 = MEMORY[0x277D84F90];

  v8 = OUTLINED_FUNCTION_11_4();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8, v9, v10);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v20;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v14 = OUTLINED_FUNCTION_75_0();
      }

      v15 = v14;
      [v14 floatValue];
      v17 = v16;

      v20 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      ++v12;
      *(v13 + 16) = v19 + 1;
      *(v13 + 4 * v19 + 32) = v17;
    }

    while (v7 != v12);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayString:)()
{
  return CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayString:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v4, v5, v6);
  v7 = *(v1 + v3);

  v0(v2);
}

uint64_t @objc CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a6();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayRawData:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayRawData);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFTypeTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTypeTestObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t keypath_get_22Tm_0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_0(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t keypath_get_220Tm(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_15_0(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

void key path getter for CAFTypeTest.testData : CAFTypeTest(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path getter for CAFTypeTest.testArrayString : CAFTypeTest(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

id key path getter for CAFTypeTest.testComplexArrayItemValue : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexArrayItemValue];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTest.testComplexNestedItemValue : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexNestedItemValue];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTest.testComplexNestedItemList : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexNestedItemList];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTest.testComplexNestedListItemValue : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexNestedListItemValue];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFTypeTest and conformance CAFTypeTest()
{
  result = lazy protocol witness table cache variable for type CAFTypeTest and conformance CAFTypeTest;
  if (!lazy protocol witness table cache variable for type CAFTypeTest and conformance CAFTypeTest)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTypeTest, 0x277CF8710);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTypeTest and conformance CAFTypeTest);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTypeTestObservable and conformance CAFTypeTestObservable(&lazy protocol witness table cache variable for type CAFTypeTestObservable and conformance CAFTypeTestObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestObservable and conformance CAFTypeTestObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTypeTestObservable();
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of CAFTypeTestObservable.testUInt32.setter(unint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x220);
  v3 = OUTLINED_FUNCTION_86_0(a1);
  return v4(v3);
}

uint64_t dispatch thunk of CAFTypeTestObservable.testInt32.setter(unint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x2A0);
  v3 = OUTLINED_FUNCTION_86_0(a1);
  return v4(v3);
}

uint64_t dispatch thunk of CAFTypeTestObservable.testFloat.setter(unint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x2E0);
  v3 = OUTLINED_FUNCTION_86_0(a1);
  return v4(v3);
}

uint64_t partial apply for closure #1 in CAFTypeTestObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_37_0()
{

  JUMPOUT(0x245D0A530);
}

void OUTLINED_FUNCTION_65_1()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_68_1(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SSSgTt3g5(v25, v26, a1, v27, v24, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void OUTLINED_FUNCTION_71_1()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_10Foundation4DataVSgTt3g5(v24, v25, v27, v28, v26, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testBool : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testBool.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testBool.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v11 = OUTLINED_FUNCTION_42_0(v2, v3, v5, v6, v7, v8, v9, v10, v14);
  v12(v11);

  return v4;
}

uint64_t CAFTypeTestWithStatesObservable.testBool.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SbSgTt3g5(a1, v5, KeyPath, v4);
}

uint64_t CAFTypeTestWithStatesObservable.testBool.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFTypeTestWithStatesObservable.testBool.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SbSgTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt8 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testUInt8.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt8.setter()
{
  return CAFTypeTestWithStatesObservable.testUInt8.setter();
}

{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestWithStatesObservable.testUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt8.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 89) << 8), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testUInt16.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt16.setter()
{
  return CAFTypeTestWithStatesObservable.testUInt16.setter();
}

{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestWithStatesObservable.testUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt16.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 90) << 16), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

unint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testUInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt32.setter()
{
  return CAFTypeTestWithStatesObservable.testUInt32.setter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_89_0();
  v1 = v0;
  OUTLINED_FUNCTION_51_0();

  return v2();
}

void CAFTypeTestWithStatesObservable.testUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt32.modify();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0(v2);
  v0(*(v3 + 88) | (*(v1 + 92) << 32), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v4);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testUInt64.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt64.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestWithStatesObservable.testUInt64.setter(a1, a2, &unk_2423072A0, &unk_2423072C8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_s6UInt64VSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestWithStatesObservable.testUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testInt8 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testInt8.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt8.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testInt16.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt16.modify();
}

unint64_t key path getter for CAFTypeTestWithStatesObservable.testInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt32.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testInt64.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt64.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_42_0(v4, v5, v8, v9, v10, v11, v12, v13, v17);
  v15(v14);

  return v6;
}

void CAFTypeTestWithStatesObservable.testInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestWithStatesObservable.testUInt64.modify(uint64_t a1, uint64_t a2, void (*a3)(void, void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 56), *(*a1 + 64), *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));

  free(v3);
}

unint64_t key path getter for CAFTypeTestWithStatesObservable.testFloat : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testFloat.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestWithStatesObservable.testUInt32.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *(v5 + 4);
  v14 = OUTLINED_FUNCTION_42_0(v4, v5, v8, v9, v10, v11, v12, v13, v17);
  v15(v14);

  return v6 | (v7 << 32);
}

void CAFTypeTestWithStatesObservable.testFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt32.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testString : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testString.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testString : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFTypeTestWithStatesObservable.testString.setter(v2, v3, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t CAFTypeTestWithStatesObservable.testString.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = v3[1];

  v14 = OUTLINED_FUNCTION_42_0(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  v2(v14);

  OUTLINED_FUNCTION_36_0();

  return v4;
}

uint64_t CAFTypeTestWithStatesObservable.testString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestWithStatesObservable.testString.setter(a1, a2, &unk_242307450, &unk_242307478, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SSSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestWithStatesObservable.testString.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v9;
  v1[8] = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testData : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testData.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testData : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  outlined copy of Data?(*a1, v3);
  return CAFTypeTestWithStatesObservable.testData.setter(v2, v3, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t CAFTypeTestWithStatesObservable.testData.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = outlined copy of Data?(*v3, *(v3 + 8));
  v13 = OUTLINED_FUNCTION_42_0(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v2(v13);

  OUTLINED_FUNCTION_36_0();

  return v4;
}

void CAFTypeTestWithStatesObservable.testData.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = v7[1];
  v1[7] = v8;
  v1[8] = v9;
  outlined copy of Data?(v8, v9);
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestWithStatesObservable.testRawData.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testRawData) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testEnum : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testEnum.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt8.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  v10 = v2;

  v3 = v2;
  v4 = OUTLINED_FUNCTION_70_0();
  v6 = *v5;
  v7 = v5[1];
  v4(v9, 0);

  return v6 | (v7 << 8);
}

void CAFTypeTestWithStatesObservable.testEnum.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt8.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testDimensionUnitRawValue : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testDimensionUnitRawValue.getter();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt16.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  v10 = v2;

  v3 = v2;
  v4 = OUTLINED_FUNCTION_70_0();
  v6 = *v5;
  v7 = *(v5 + 2);
  v4(v9, 0);

  return v6 | (v7 << 16);
}

void CAFTypeTestWithStatesObservable.testDimensionUnitRawValue.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testUInt16.modify();
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItem : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testComplexItem.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItem : CAFTypeTestWithStatesObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItem.setter();
}

void CAFTypeTestWithStatesObservable.testComplexItem.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testComplexItem.modify();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0(v4);
  if (v5)
  {
    v6 = v1;
    v7 = v3;
    v8 = OUTLINED_FUNCTION_26_2();
    v0(v8);
  }

  else
  {
    v9 = v3;
    v10 = OUTLINED_FUNCTION_26_2();
    v0(v10);
  }

  OUTLINED_FUNCTION_236();

  free(v11);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayBool : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayBool.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayBool : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayBool.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayBool.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0(v3);
  if (v4)
  {

    v5 = v2;
    v6 = OUTLINED_FUNCTION_26_2();
    v0(v6);
    v7 = *v1;
  }

  else
  {
    v8 = v2;
    v9 = OUTLINED_FUNCTION_26_2();
    v0(v9);
  }

  OUTLINED_FUNCTION_236();

  free(v10);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt8 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayUInt8.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayUInt8 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayUInt8.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayUInt16.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayUInt16 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayUInt16.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayUInt32.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayUInt32 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayUInt32.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayUInt64.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayUInt64 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayUInt64.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt8 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayInt8.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayInt8 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayInt8.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayInt16.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayInt16 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayInt16.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayInt32.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayInt32 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayInt32.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayInt64.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayInt64 : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayInt64.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayFloat : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayFloat.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayFloat : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayFloat.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayString : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayString.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayString : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayString.setter(v4);
}

void CAFTypeTestWithStatesObservable.testArrayString.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayData : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testArrayData.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testArrayData : CAFTypeTestWithStatesObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFTypeTestWithStatesObservable.testArrayData.setter(v4);
}

uint64_t CAFTypeTestWithStatesObservable.testArrayBool.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;

  v15 = OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  v4(v15);

  OUTLINED_FUNCTION_36_0();

  return v6;
}

void CAFTypeTestWithStatesObservable.testArrayData.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testArrayBool.modify();
}

uint64_t CAFTypeTestWithStatesObservable.testArrayRawData.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayRawData) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTypeTestWithStatesObservable.$testRawData.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItems : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testComplexItems.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItems : CAFTypeTestWithStatesObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItems.setter();
}

void CAFTypeTestWithStatesObservable.testComplexItems.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  CAFTypeTestWithStatesObservable.testComplexItem.modify();
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItemValue : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testComplexItemValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItemValue : CAFTypeTestWithStatesObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItemValue.setter();
}

void CAFTypeTestWithStatesObservable.testComplexItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItemList : CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestWithStatesObservable.testComplexItemList.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItemList : CAFTypeTestWithStatesObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItemList.setter();
}

id CAFTypeTestWithStatesObservable.testComplexItem.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *v5;
  v15 = OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  v4(v15);

  OUTLINED_FUNCTION_36_0();

  return v6;
}

uint64_t CAFTypeTestWithStatesObservable.testComplexItem.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_89_0();
  v8 = v4;

  return a4(a1, v8, v5, v7);
}

void CAFTypeTestWithStatesObservable.testComplexItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2(v7, v8);
  v9 = v3;
  v10 = OUTLINED_FUNCTION_7_5();
  v0(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestWithStatesObservable.$testBool.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFTypeTestWithStatesObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  [v1 registeredForTestBool];
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    CAFTypeTestWithStatesObservable.testBool.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v3 = OUTLINED_FUNCTION_38_0();
  }

  v170 = v3;
  v171 = v2;
  v5 = [v1 registeredForTestUInt8];
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if (v5)
  {
    v8 = CAFTypeTestWithStatesObservable.testUInt8.getter();
    OUTLINED_FUNCTION_52_0(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v6 = OUTLINED_FUNCTION_38_0();
  }

  v169 = v7;
  [v1 registeredForTestUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    v12 = CAFTypeTestWithStatesObservable.testUInt16.getter();
    OUTLINED_FUNCTION_50_0(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v10 = OUTLINED_FUNCTION_38_0();
  }

  v167 = v10;
  v168 = v9;
  [v1 registeredForTestUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v15)
  {
    v16 = CAFTypeTestWithStatesObservable.testUInt32.getter();
    OUTLINED_FUNCTION_49_0(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v14 = OUTLINED_FUNCTION_38_0();
  }

  v165 = v14;
  v166 = v13;
  [v1 registeredForTestUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v19)
  {
    CAFTypeTestWithStatesObservable.testUInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    v18 = OUTLINED_FUNCTION_38_0();
  }

  v163 = v18;
  v164 = v17;
  [v1 registeredForTestInt8];
  OUTLINED_FUNCTION_9_2();
  if (v22)
  {
    v23 = CAFTypeTestWithStatesObservable.testInt8.getter();
    OUTLINED_FUNCTION_52_0(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v21 = OUTLINED_FUNCTION_38_0();
  }

  v161 = v21;
  v162 = v20;
  [v1 registeredForTestInt16];
  OUTLINED_FUNCTION_9_2();
  if (v26)
  {
    v27 = CAFTypeTestWithStatesObservable.testInt16.getter();
    OUTLINED_FUNCTION_50_0(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v25 = OUTLINED_FUNCTION_38_0();
  }

  v159 = v25;
  v160 = v24;
  [v1 registeredForTestInt32];
  OUTLINED_FUNCTION_9_2();
  if (v30)
  {
    v31 = CAFTypeTestWithStatesObservable.testInt32.getter();
    OUTLINED_FUNCTION_49_0(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v29 = OUTLINED_FUNCTION_38_0();
  }

  v157 = v29;
  v158 = v28;
  [v1 registeredForTestInt64];
  OUTLINED_FUNCTION_9_2();
  if (v34)
  {
    CAFTypeTestWithStatesObservable.testInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
    v33 = OUTLINED_FUNCTION_38_0();
  }

  v155 = v33;
  v156 = v32;
  [v1 registeredForTestFloat];
  OUTLINED_FUNCTION_9_2();
  if (v37)
  {
    v38 = CAFTypeTestWithStatesObservable.testFloat.getter();
    OUTLINED_FUNCTION_49_0(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v36 = OUTLINED_FUNCTION_38_0();
  }

  v153 = v36;
  v154 = v35;
  [v1 registeredForTestString];
  OUTLINED_FUNCTION_9_2();
  if (v41)
  {
    CAFTypeTestWithStatesObservable.testString.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v40 = OUTLINED_FUNCTION_38_0();
  }

  v151 = v40;
  v152 = v39;
  [v1 registeredForTestData];
  OUTLINED_FUNCTION_9_2();
  if (v44)
  {
    CAFTypeTestWithStatesObservable.testData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v43 = OUTLINED_FUNCTION_38_0();
  }

  v149 = v43;
  v150 = v42;
  [v1 registeredForTestRawData];
  OUTLINED_FUNCTION_9_2();
  if (v47)
  {
    CAFTypeTestWithStatesObservable.testRawData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v46 = OUTLINED_FUNCTION_38_0();
  }

  v147 = v46;
  v148 = v45;
  [v1 registeredForTestEnum];
  OUTLINED_FUNCTION_9_2();
  if (v50)
  {
    v51 = CAFTypeTestWithStatesObservable.testEnum.getter();
    OUTLINED_FUNCTION_52_0(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v49 = OUTLINED_FUNCTION_38_0();
  }

  v145 = v49;
  v146 = v48;
  [v1 registeredForTestDimensionUnit];
  OUTLINED_FUNCTION_9_2();
  if (v54)
  {
    v55 = CAFTypeTestWithStatesObservable.testDimensionUnitRawValue.getter();
    OUTLINED_FUNCTION_50_0(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v53 = OUTLINED_FUNCTION_38_0();
  }

  v143 = v53;
  v144 = v52;
  [v1 registeredForTestComplexItem];
  OUTLINED_FUNCTION_9_2();
  if (v58)
  {
    CAFTypeTestWithStatesObservable.testComplexItem.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v57 = OUTLINED_FUNCTION_38_0();
  }

  v141 = v57;
  v142 = v56;
  [v1 registeredForTestArrayBool];
  OUTLINED_FUNCTION_9_2();
  if (v61)
  {
    CAFTypeTestWithStatesObservable.testArrayBool.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGSgMd, &_sSaySbGSgMR);
    v60 = OUTLINED_FUNCTION_38_0();
  }

  v139 = v60;
  v140 = v59;
  [v1 registeredForTestArrayUInt8];
  OUTLINED_FUNCTION_9_2();
  if (v64)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGSgMd, &_sSays5UInt8VGSgMR);
    v63 = OUTLINED_FUNCTION_38_0();
  }

  v137 = v63;
  v138 = v62;
  [v1 registeredForTestArrayUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v67)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt16.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGSgMd, &_sSays6UInt16VGSgMR);
    v66 = OUTLINED_FUNCTION_38_0();
  }

  v135 = v66;
  v136 = v65;
  [v1 registeredForTestArrayUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v70)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGSgMd, &_sSays6UInt32VGSgMR);
    v69 = OUTLINED_FUNCTION_38_0();
  }

  v133 = v69;
  v134 = v68;
  [v1 registeredForTestArrayUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v73)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGSgMd, &_sSays6UInt64VGSgMR);
    v72 = OUTLINED_FUNCTION_38_0();
  }

  v131 = v72;
  v132 = v71;
  [v1 registeredForTestArrayInt8];
  OUTLINED_FUNCTION_9_2();
  if (v76)
  {
    CAFTypeTestWithStatesObservable.testArrayInt8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGSgMd, &_sSays4Int8VGSgMR);
    v75 = OUTLINED_FUNCTION_38_0();
  }

  v129 = v75;
  v130 = v74;
  [v1 registeredForTestArrayInt16];
  OUTLINED_FUNCTION_9_2();
  if (v79)
  {
    CAFTypeTestWithStatesObservable.testArrayInt16.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGSgMd, &_sSays5Int16VGSgMR);
    v78 = OUTLINED_FUNCTION_38_0();
  }

  v127 = v78;
  v128 = v77;
  [v1 registeredForTestArrayInt32];
  OUTLINED_FUNCTION_9_2();
  if (v82)
  {
    CAFTypeTestWithStatesObservable.testArrayInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGSgMd, &_sSays5Int32VGSgMR);
    v81 = OUTLINED_FUNCTION_38_0();
  }

  v125 = v81;
  v126 = v80;
  [v1 registeredForTestArrayInt64];
  OUTLINED_FUNCTION_9_2();
  if (v85)
  {
    CAFTypeTestWithStatesObservable.testArrayInt64.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGSgMd, &_sSays5Int64VGSgMR);
    v84 = OUTLINED_FUNCTION_38_0();
  }

  v123 = v84;
  v124 = v83;
  [v1 registeredForTestArrayFloat];
  OUTLINED_FUNCTION_9_2();
  if (v88)
  {
    CAFTypeTestWithStatesObservable.testArrayFloat.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGSgMd, &_sSaySfGSgMR);
    v87 = OUTLINED_FUNCTION_38_0();
  }

  v121 = v87;
  v122 = v86;
  [v1 registeredForTestArrayString];
  OUTLINED_FUNCTION_9_2();
  if (v91)
  {
    CAFTypeTestWithStatesObservable.testArrayString.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v90 = OUTLINED_FUNCTION_38_0();
  }

  v119 = v90;
  v120 = v89;
  v92 = [v1 registeredForTestArrayData];
  v93 = 0x73696765726E753CLL;
  v94 = 0xEE003E6465726574;
  if (v92)
  {
    CAFTypeTestWithStatesObservable.testArrayData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v93 = OUTLINED_FUNCTION_38_0();
    v94 = v95;
  }

  v118 = v93;
  v96 = [v1 registeredForTestArrayRawData];
  v97 = 0x73696765726E753CLL;
  v98 = 0xEE003E6465726574;
  if (v96)
  {
    CAFTypeTestWithStatesObservable.testArrayRawData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v97 = OUTLINED_FUNCTION_38_0();
    v98 = v99;
  }

  v117 = v97;
  v100 = [v1 registeredForTestComplexItems];
  v101 = 0x73696765726E753CLL;
  v102 = 0xEE003E6465726574;
  if (v100)
  {
    CAFTypeTestWithStatesObservable.testComplexItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v101 = OUTLINED_FUNCTION_38_0();
    v102 = v103;
  }

  v116 = v101;
  v104 = [v1 registeredForTestComplexItemValue];
  v105 = 0x73696765726E753CLL;
  v106 = 0xEE003E6465726574;
  if (v104)
  {
    CAFTypeTestWithStatesObservable.testComplexItemValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v105 = OUTLINED_FUNCTION_38_0();
    v106 = v107;
  }

  v115 = v105;
  if ([v1 registeredForTestComplexItemList])
  {
    CAFTypeTestWithStatesObservable.testComplexItemList.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    OUTLINED_FUNCTION_38_0();
  }

  _StringGuts.grow(_:)(640);
  MEMORY[0x245D0A530](0xD000000000000022, 0x80000002423112E0);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v170, v171);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x495574736574202CLL);
  MEMORY[0x245D0A530](v6, v169);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v167, v168);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v165, v166);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v163, v164);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xEC000000203A3874);
  MEMORY[0x245D0A530](v161, v162);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v159, v160);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v157, v158);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v155, v156);

  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v153, v154);

  v108 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v108 & 0xFFFFFFFFFFFFLL | 0x7453000000000000, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v151, v152);

  v109 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v109 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEC000000203A6174);
  MEMORY[0x245D0A530](v149, v150);

  v110 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v110 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF203A6174614477);
  MEMORY[0x245D0A530](v147, v148);

  v111 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v111 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000, v112 | 0xEC000000203A6174);
  MEMORY[0x245D0A530](v145, v146);

  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242310E70);
  MEMORY[0x245D0A530](v143, v144);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v141, v142);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310EB0);
  MEMORY[0x245D0A530](v139, v140);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v137, v138);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v135, v136);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v133, v134);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v131, v132);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310F50);
  MEMORY[0x245D0A530](v129, v130);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v127, v128);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v125, v126);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v123, v124);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v121, v122);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v119, v120);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311010);
  MEMORY[0x245D0A530](v118, v94);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311030);
  MEMORY[0x245D0A530](v117, v98);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311050);
  MEMORY[0x245D0A530](v116, v102);

  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311070);
  MEMORY[0x245D0A530](v115, v106);

  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311090);
  v113 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v113);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestWithStatesObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFTypeTestWithStatesObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

void CAFTypeTestWithStatesObservable.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_90_0();
  a16 = v18;
  a17 = v19;
  v20 = v17;
  v22 = v21;
  v23 = &v17[OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v20[v24] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testBool;
  swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v27);
  v28 = OUTLINED_FUNCTION_0_7();
  *&v20[v26] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt8;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v29] = v31;
  v32 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt16;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt16VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt16VSgGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v32] = v34;
  v35 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt32;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt32VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v35] = v37;
  v38 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt64;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt64VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt64VSgGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v38] = v40;
  v41 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt8;
  swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs4Int8VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs4Int8VSgGMR);
  OUTLINED_FUNCTION_225(v42);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v41] = v43;
  v44 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt16;
  swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int16VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int16VSgGMR);
  OUTLINED_FUNCTION_225(v45);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v44] = v46;
  v47 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt32;
  swift_getKeyPath();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int32VSgGMR);
  OUTLINED_FUNCTION_225(v48);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v47] = v49;
  v50 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt64;
  swift_getKeyPath();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int64VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int64VSgGMR);
  OUTLINED_FUNCTION_225(v51);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v50] = v52;
  v53 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testFloat;
  swift_getKeyPath();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSfSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSfSgGMR);
  OUTLINED_FUNCTION_225(v54);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v53] = v55;
  v56 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testString;
  swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v57);
  OUTLINED_FUNCTION_0_7();
  *&v20[v56] = specialized SafePublished.init(observedValuekeypath:)();
  v58 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testData;
  swift_getKeyPath();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v59);
  OUTLINED_FUNCTION_0_7();
  *&v20[v58] = specialized SafePublished.init(observedValuekeypath:)();
  v60 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testRawData;
  swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v61);
  OUTLINED_FUNCTION_0_7();
  *&v20[v60] = specialized SafePublished.init(observedValuekeypath:)();
  v62 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testEnum;
  swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo15CAFButtonActionVSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v63);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v62] = v64;
  v65 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testDimensionUnitRawValue;
  swift_getKeyPath();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo11CAFUnitTypeVSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo11CAFUnitTypeVSgGMR);
  OUTLINED_FUNCTION_225(v66);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v20[v65] = v67;
  v68 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItem;
  swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo18CAFTestComplexItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo18CAFTestComplexItemCSgGMR);
  OUTLINED_FUNCTION_225(v69);
  OUTLINED_FUNCTION_0_7();
  *&v20[v68] = specialized SafePublished.init(observedValuekeypath:)();
  v70 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayBool;
  swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySbGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySbGSgGMR);
  OUTLINED_FUNCTION_225(v71);
  OUTLINED_FUNCTION_0_7();
  *&v20[v70] = specialized SafePublished.init(observedValuekeypath:)();
  v72 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt8;
  swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5UInt8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5UInt8VGSgGMR);
  OUTLINED_FUNCTION_225(v73);
  OUTLINED_FUNCTION_0_7();
  *&v20[v72] = specialized SafePublished.init(observedValuekeypath:)();
  v74 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt16;
  swift_getKeyPath();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt16VGSgGMR);
  OUTLINED_FUNCTION_225(v75);
  OUTLINED_FUNCTION_0_7();
  *&v20[v74] = specialized SafePublished.init(observedValuekeypath:)();
  v76 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt32;
  swift_getKeyPath();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt32VGSgGMR);
  OUTLINED_FUNCTION_225(v77);
  OUTLINED_FUNCTION_0_7();
  *&v20[v76] = specialized SafePublished.init(observedValuekeypath:)();
  v78 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt64;
  swift_getKeyPath();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt64VGSgGMR);
  OUTLINED_FUNCTION_225(v79);
  OUTLINED_FUNCTION_0_7();
  *&v20[v78] = specialized SafePublished.init(observedValuekeypath:)();
  v80 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt8;
  swift_getKeyPath();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays4Int8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays4Int8VGSgGMR);
  OUTLINED_FUNCTION_225(v81);
  OUTLINED_FUNCTION_0_7();
  *&v20[v80] = specialized SafePublished.init(observedValuekeypath:)();
  v82 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt16;
  swift_getKeyPath();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int16VGSgGMR);
  OUTLINED_FUNCTION_225(v83);
  OUTLINED_FUNCTION_0_7();
  *&v20[v82] = specialized SafePublished.init(observedValuekeypath:)();
  v84 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt32;
  swift_getKeyPath();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int32VGSgGMR);
  OUTLINED_FUNCTION_225(v85);
  OUTLINED_FUNCTION_0_7();
  *&v20[v84] = specialized SafePublished.init(observedValuekeypath:)();
  v86 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt64;
  swift_getKeyPath();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int64VGSgGMR);
  OUTLINED_FUNCTION_225(v87);
  OUTLINED_FUNCTION_0_7();
  *&v20[v86] = specialized SafePublished.init(observedValuekeypath:)();
  v88 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayFloat;
  swift_getKeyPath();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySfGSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySfGSgGMR);
  OUTLINED_FUNCTION_225(v89);
  OUTLINED_FUNCTION_0_7();
  *&v20[v88] = specialized SafePublished.init(observedValuekeypath:)();
  v90 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayString;
  swift_getKeyPath();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySSGSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v91);
  OUTLINED_FUNCTION_0_7();
  *&v20[v90] = specialized SafePublished.init(observedValuekeypath:)();
  v92 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayData;
  swift_getKeyPath();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v93);
  OUTLINED_FUNCTION_0_7();
  *&v20[v92] = specialized SafePublished.init(observedValuekeypath:)();
  v94 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayRawData;
  swift_getKeyPath();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v95);
  OUTLINED_FUNCTION_0_7();
  *&v20[v94] = specialized SafePublished.init(observedValuekeypath:)();
  v96 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItems;
  swift_getKeyPath();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo19CAFTestComplexItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo19CAFTestComplexItemsCSgGMR);
  OUTLINED_FUNCTION_225(v97);
  OUTLINED_FUNCTION_0_7();
  *&v20[v96] = specialized SafePublished.init(observedValuekeypath:)();
  v98 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItemValue;
  swift_getKeyPath();
  v99 = *(v69 + 48);
  v100 = *(v69 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v98] = specialized SafePublished.init(observedValuekeypath:)();
  v101 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItemList;
  swift_getKeyPath();
  v102 = *(v97 + 48);
  v103 = *(v97 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v101] = specialized SafePublished.init(observedValuekeypath:)();
  *&v20[OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed] = v22;
  v104 = type metadata accessor for CAFTypeTestWithStatesObservable();
  a9.receiver = v20;
  a9.super_class = v104;
  v105 = v22;
  v106 = objc_msgSendSuper2(&a9, sel_init);
  [v105 registerObserver_];

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestWithStatesObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestWithStatesObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestWithStatesObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestWithStatesObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestWithStatesObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestWithStatesObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestWithStatesObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTypeTestWithStatesObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestBool:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testBool;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt8:)()
{
  return CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt8:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt16:)()
{
  return CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt16:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt32:)()
{
  return CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt32:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt64:)()
{
  return CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt64:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v1, v2, v3);
  OUTLINED_FUNCTION_76_0();
  v4 = OUTLINED_FUNCTION_7_5();
  v0(v4);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestFloat:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testFloat;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestString:)()
{
  OUTLINED_FUNCTION_46_0();
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testString;
  OUTLINED_FUNCTION_15_4();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestData:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_76_0();
  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v0, v1);
  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestRawData:)()
{
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testRawData);

  v2 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v2, v3);
  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

void @objc CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestData:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_0();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  outlined consume of Data?(v28, v30);

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItem:)()
{
  OUTLINED_FUNCTION_61_2();
  return CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItem:)();
}

{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v4, v5, v6);
  v7 = *(v1 + v3);
  v8 = v2;

  v0(v2);
}

void CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayBool:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayBool;
  OUTLINED_FUNCTION_32_3();
  v5 = *(v0 + v4);
  if (!v3 || (v6 = specialized Array._getCount()(v3)) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter();

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v7 = v6;
  OUTLINED_FUNCTION_41_0();
  v8 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8, v9, v10);
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v1)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v11 = OUTLINED_FUNCTION_75_0();
      }

      v12 = v11;
      [v11 BOOLValue];

      OUTLINED_FUNCTION_12_3();
      if (v14)
      {
        v16 = OUTLINED_FUNCTION_5_17(v13);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v17, v18);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v15);
    goto LABEL_14;
  }

  __break(1u);
}