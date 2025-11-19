uint64_t BiomeLibrary()
{
  if (BiomeLibrary_onceToken != -1)
  {
    dispatch_once(&BiomeLibrary_onceToken, &__block_literal_global_18821);
  }

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

id sub_184E969BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1854FA970();

  return v3;
}

uint64_t OUTLINED_FUNCTION_17()
{
}

id sub_184EA0050(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8C4EE0, &qword_185542FF8);
  sub_1854FA9A0();
  OUTLINED_FUNCTION_17();

  return v3;
}

uint64_t sub_184EA00C8(uint64_t (*a1)(void))
{
  v2 = sub_184EA011C();
  OUTLINED_FUNCTION_26(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_185542970;
  *(v3 + 32) = a1();
  return v3;
}

uint64_t sub_184EA011C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8C4EE0, &qword_185542FF8);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_1EA8C4EF8;
    v2 = &unk_185543010;
  }

  else
  {
    v1 = &unk_1EA8C4EF0;
    v2 = &unk_185543008;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_25(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v2 + 32) = v3;
  *(v2 + 40) = a2;
  v4 = *(a1 + 24);
}

uint64_t static _BMIPBridgeGenerativeModelsGenerativeFunctionsLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v6 = OUTLINED_FUNCTION_10(v5);
  if (!(!v13 & v12))
  {
    v18 = OUTLINED_FUNCTION_5(v9, v10);
    v6 = OUTLINED_FUNCTION_7(v18);
  }

  *(v9 + 16) = v3;
  v14 = v9 + 16 * v4;
  *(v14 + 32) = 0x656D757274736E49;
  *(v14 + 40) = 0xEF6E6F697461746ELL;
  if (v11 < v4 + 2)
  {
    v6 = OUTLINED_FUNCTION_6(v9, v10);
    v9 = v6;
  }

  OUTLINED_FUNCTION_3(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_13(v15, v16);
}

id sub_184EA02AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1854FA9A0();
  OUTLINED_FUNCTION_17();

  return v3;
}

char *OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_184EA3BA0(0, 1, 1, a4);
}

char *OUTLINED_FUNCTION_6@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_184EA3BA0((a2 > 1), v2, 1, a1);
}

id sub_184EA0348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1854FA980();
  v6 = a4(v5);

  return v6;
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x1865F7E00);
}

uint64_t static _BMIPBridgeGenerativeModelsGenerativeFunctionsLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

char *sub_184EA3BA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8C4EE8, &qword_185543000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *OUTLINED_FUNCTION_20@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_184EA3BA0((a2 > 1), v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return MEMORY[0x1EEE14600](a9, a10);
}

void OUTLINED_FUNCTION_12(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  v4 = *(a1 + 24);
}

uint64_t OUTLINED_FUNCTION_26(uint64_t result)
{
  v1 = *(result + 52);
  v2 = (*(result + 48) + 7) & 0x1FFFFFFF8;
  return result;
}

char *OUTLINED_FUNCTION_5@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_184EA3BA0((a2 > 1), v2, 1, a1);
}

uint64_t static _BMIPBridgeIntelligenceFlowLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v5 = OUTLINED_FUNCTION_22(v4);
  if (!(!v11 & v10))
  {
    v64 = OUTLINED_FUNCTION_5(v8, v9);
    v5 = OUTLINED_FUNCTION_7(v64);
  }

  OUTLINED_FUNCTION_21(v5, v6, v7, v8);
  v17 = &v15[16 * v3];
  *(v17 + 4) = 0xD000000000000011;
  *(v17 + 5) = v18;
  if (v19 < v3 + 2)
  {
    v12 = OUTLINED_FUNCTION_6(v15, v16);
    v15 = v12;
  }

  OUTLINED_FUNCTION_18(v12, v13, v14, v15);
  OUTLINED_FUNCTION_12(v20, v21);
  if (v3 + 3 > (v23 >> 1))
  {
    OUTLINED_FUNCTION_20(v22, v23);
  }

  OUTLINED_FUNCTION_8();
  *(v24 + 16) = v3 + 3;
  v25 = v24 + 16 * (v3 + 2);
  *(v25 + 32) = 0xD000000000000012;
  *(v25 + 40) = v26;
  v27 = *(v24 + 24);
  if (v3 + 4 > (v27 >> 1))
  {
    OUTLINED_FUNCTION_5(v24, v27);
  }

  OUTLINED_FUNCTION_8();
  *(v28 + 16) = v3 + 4;
  OUTLINED_FUNCTION_25(v28, v29);
  if (v3 + 5 > (v34 >> 1))
  {
    v30 = OUTLINED_FUNCTION_6(v33, v34);
    v33 = v30;
  }

  OUTLINED_FUNCTION_3(v30, v31, v32, v33);
  *(v37 + 32) = 0xD000000000000017;
  *(v37 + 40) = v36;
  v38 = *(v35 + 24);
  if (v3 + 6 > (v38 >> 1))
  {
    OUTLINED_FUNCTION_20(v35, v38);
  }

  OUTLINED_FUNCTION_8();
  *(v39 + 16) = v3 + 6;
  v40 = v39 + 16 * (v3 + 5);
  *(v40 + 32) = 0xD000000000000017;
  *(v40 + 40) = v41;
  v42 = *(v39 + 24);
  if (v3 + 7 > (v42 >> 1))
  {
    OUTLINED_FUNCTION_5(v39, v42);
  }

  OUTLINED_FUNCTION_8();
  *(v43 + 16) = v3 + 7;
  OUTLINED_FUNCTION_25(v43, v44);
  if (v3 + 8 > (v49 >> 1))
  {
    v45 = OUTLINED_FUNCTION_6(v48, v49);
    v48 = v45;
  }

  OUTLINED_FUNCTION_3(v45, v46, v47, v48);
  *(v52 + 32) = 0xD000000000000012;
  *(v52 + 40) = v51;
  v53 = *(v50 + 24);
  if (v3 + 9 > (v53 >> 1))
  {
    OUTLINED_FUNCTION_5(v50, v53);
  }

  OUTLINED_FUNCTION_8();
  *(v54 + 16) = v3 + 9;
  OUTLINED_FUNCTION_25(v54, v55);
  if (v3 + 10 > (v60 >> 1))
  {
    v56 = OUTLINED_FUNCTION_6(v59, v60);
    v59 = v56;
  }

  OUTLINED_FUNCTION_18(v56, v57, v58, v59);
  *(v61 + 32) = 0x7274656D656C6554;
  *(v61 + 40) = 0xE900000000000079;
  return v62;
}

uint64_t OUTLINED_FUNCTION_22(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t static _BMIPBridgeIntelligenceFlowLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t __BiomeLibrary_block_invoke()
{
  v0 = objc_opt_class();

  return [_TtC12BiomeLibrary18_BMIPBridgeLibrary addToUnifiedLibraryWithBiomeLibraryNode:v0];
}

uint64_t static _BMIPBridgeLibrary.addToUnifiedLibrary(biomeLibraryNode:)(uint64_t a1)
{
  sub_1854FA960();
  sub_184EABD14();
  sub_1854FA920();
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  sub_1854FA930();

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_184ED9440;
  *(v3 + 24) = v2;
  swift_unknownObjectRetain();
  sub_1854FA940();
}

uint64_t sub_184EABCA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_184EABCD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_184EABD14()
{
  result = qword_1ED501E60;
  if (!qword_1ED501E60)
  {
    sub_1854FA960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED501E60);
  }

  return result;
}

__CFString *BMMediaRouteOutputDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E92438[a1];
  }

  return v2;
}

__CFString *BMMediaRouteOutputDeviceSubTypeAsString(uint64_t a1)
{
  if (a1 >= 0x16)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E92468[a1];
  }

  return v2;
}

__CFString *BMMediaRouteOutputDeviceClusterTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E92518[a1];
  }

  return v2;
}

__CFString *BMMediaRouteRouteTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E92538[a1];
  }

  return v2;
}

id sub_184ED93B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = 0;
  v4 = [v3 streamWithIdentifier:a1 error:&v8];
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1854FA910();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_184ED9440()
{
  v1 = [*(v0 + 16) allStreams];
  sub_184EDB758();
  v2 = sub_1854FA9B0();

  return v2;
}

unint64_t sub_184ED9498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8C4F00, &qword_185543018);
  result = sub_184EDB6AC();
  a2[4] = result;
  *a2 = v3;
  return result;
}

id _BMIPBridgeLibrary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _BMIPBridgeLibrary.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _BMIPBridgeLibrary();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t static _BMIPBridgeAdAttributionKitLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeAdAttributionKitAggregatedReportingLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v6 = OUTLINED_FUNCTION_23(v5);
  if (!(!v13 & v12))
  {
    v28 = OUTLINED_FUNCTION_5(v9, v10);
    v6 = OUTLINED_FUNCTION_7(v28);
  }

  *(v9 + 16) = v3;
  v14 = v9 + 16 * v4;
  *(v14 + 32) = 0x69737265766E6F43;
  *(v14 + 40) = 0xEA00000000006E6FLL;
  if (v11 < v4 + 2)
  {
    v6 = OUTLINED_FUNCTION_6(v9, v10);
    v9 = v6;
  }

  OUTLINED_FUNCTION_3(v6, v7, v8, v9);
  OUTLINED_FUNCTION_25(v15, v16);
  if (v4 + 3 > (v18 >> 1))
  {
    v17 = OUTLINED_FUNCTION_5(v17, v18);
  }

  *(v17 + 2) = v4 + 3;
  OUTLINED_FUNCTION_12(v17, &v17[16 * v4 + 32]);
  if (v4 + 4 > (v23 >> 1))
  {
    v19 = OUTLINED_FUNCTION_6(v22, v23);
    v22 = v19;
  }

  OUTLINED_FUNCTION_3(v19, v20, v21, v22);
  *(v25 + 32) = 0xD000000000000016;
  *(v25 + 40) = v24;
  return v26;
}

uint64_t static _BMIPBridgeAdAttributionKitAggregatedReportingLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeAppleIntelligenceLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeAppleIntelligenceReportingLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v5 = OUTLINED_FUNCTION_10(v4);
  if (!(!v11 & v10))
  {
    v23 = OUTLINED_FUNCTION_5(v8, v9);
    v5 = OUTLINED_FUNCTION_7(v23);
  }

  OUTLINED_FUNCTION_21(v5, v6, v7, v8);
  v17 = &v15[16 * v3];
  *(v17 + 4) = 0xD000000000000010;
  *(v17 + 5) = v18;
  if (v19 < v3 + 2)
  {
    v12 = OUTLINED_FUNCTION_6(v15, v16);
    v15 = v12;
  }

  OUTLINED_FUNCTION_18(v12, v13, v14, v15);
  *(v20 + 32) = 0x764F797465666153;
  *(v20 + 40) = 0xEF73656469727265;
  return v21;
}

uint64_t static _BMIPBridgeAppleIntelligenceReportingLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeAppleIntelligenceReportingAssetDeliveryLogLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v6 = OUTLINED_FUNCTION_23(v5);
  if (!(!v13 & v12))
  {
    v27 = OUTLINED_FUNCTION_5(v9, v10);
    v6 = OUTLINED_FUNCTION_7(v27);
  }

  *(v9 + 16) = v3;
  v14 = v9 + 16 * v4;
  strcpy((v14 + 32), "Availability");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  if (v11 < v4 + 2)
  {
    v6 = OUTLINED_FUNCTION_6(v9, v10);
    v9 = v6;
  }

  OUTLINED_FUNCTION_18(v6, v7, v8, v9);
  OUTLINED_FUNCTION_12(v15, v16);
  if (v4 + 3 > (v18 >> 1))
  {
    v17 = OUTLINED_FUNCTION_5(v17, v18);
  }

  *(v17 + 2) = v4 + 3;
  OUTLINED_FUNCTION_12(v17, &v17[16 * v4 + 32]);
  if (v4 + 4 > (v23 >> 1))
  {
    v19 = OUTLINED_FUNCTION_6(v22, v23);
    v22 = v19;
  }

  OUTLINED_FUNCTION_3(v19, v20, v21, v22);
  return OUTLINED_FUNCTION_13(v24, v25);
}

uint64_t static _BMIPBridgeAppleIntelligenceReportingAssetDeliveryLogLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeAppleIntelligenceReportingInvocationLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeGenerativeExperiencesLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeGenerativeModelsLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeLLMCacheLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_5(v3, v4);
  }

  OUTLINED_FUNCTION_8();
  *(v6 + 16) = v5 + 1;
  return OUTLINED_FUNCTION_13(v6, v7);
}

uint64_t static _BMIPBridgeModelCatalogSubscriptionsLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeOasisAnalyticsHandsLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeSensitiveContentAnalysisLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v5 = OUTLINED_FUNCTION_10(v4);
  if (!(!v11 & v10))
  {
    v24 = OUTLINED_FUNCTION_5(v8, v9);
    v5 = OUTLINED_FUNCTION_7(v24);
  }

  OUTLINED_FUNCTION_21(v5, v6, v7, v8);
  v17 = &v15[16 * v3];
  *(v17 + 4) = 0xD000000000000016;
  *(v17 + 5) = v18;
  if (v19 < v3 + 2)
  {
    v12 = OUTLINED_FUNCTION_6(v15, v16);
    v15 = v12;
  }

  OUTLINED_FUNCTION_3(v12, v13, v14, v15);
  *(v21 + 32) = 0xD000000000000014;
  *(v21 + 40) = v20;
  return v22;
}

uint64_t static _BMIPBridgeSensitiveContentAnalysisLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeShortcutsUseModelLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeTextUnderstandingLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t sub_184EDA9C8(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = sub_184EA011C();
  OUTLINED_FUNCTION_26(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_185542960;
  *(v5 + 32) = a1();
  *(v5 + 40) = a2();
  return v5;
}

uint64_t static _BMIPBridgeTextUnderstandingDeletionsLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t static _BMIPBridgeTextUnderstandingOutputLibraryNode.streamNames()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v6 = OUTLINED_FUNCTION_22(v5);
  if (!(!v13 & v12))
  {
    v39 = OUTLINED_FUNCTION_5(v9, v10);
    v6 = OUTLINED_FUNCTION_7(v39);
  }

  *(v9 + 16) = v3;
  v14 = v9 + 16 * v4;
  *(v14 + 32) = 0x746361746E6F43;
  *(v14 + 40) = 0xE700000000000000;
  if (v11 < v4 + 2)
  {
    v6 = OUTLINED_FUNCTION_6(v9, v10);
    v9 = v6;
  }

  OUTLINED_FUNCTION_18(v6, v7, v8, v9);
  OUTLINED_FUNCTION_12(v15, v16);
  v19 = v4 + 3;
  if (v4 + 3 > (v18 >> 1))
  {
    v17 = OUTLINED_FUNCTION_20(v17, v18);
  }

  *(v17 + 2) = v19;
  OUTLINED_FUNCTION_12(v17, &v17[16 * v4 + 32]);
  if (v4 + 4 > (v21 >> 1))
  {
    v20 = OUTLINED_FUNCTION_5(v20, v21);
  }

  *(v20 + 2) = v4 + 4;
  OUTLINED_FUNCTION_12(v20, &v20[16 * v19]);
  if (v4 + 5 > (v26 >> 1))
  {
    v22 = OUTLINED_FUNCTION_6(v25, v26);
    v25 = v22;
  }

  OUTLINED_FUNCTION_18(v22, v23, v24, v25);
  OUTLINED_FUNCTION_12(v27, v28);
  if (v4 + 6 > (v30 >> 1))
  {
    v29 = OUTLINED_FUNCTION_5(v29, v30);
  }

  *(v29 + 2) = v4 + 6;
  OUTLINED_FUNCTION_12(v29, &v29[16 * v4 + 80]);
  if (v4 + 7 > (v35 >> 1))
  {
    v31 = OUTLINED_FUNCTION_6(v34, v35);
    v34 = v31;
  }

  OUTLINED_FUNCTION_18(v31, v32, v33, v34);
  *(v36 + 32) = 0x6369706F54;
  *(v36 + 40) = 0xE500000000000000;
  return v37;
}

uint64_t static _BMIPBridgeTextUnderstandingOutputLibraryNode.stream(withName:)()
{
  OUTLINED_FUNCTION_0();
  sub_1854FA9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_17();
  return v0;
}

uint64_t *sub_184EDB004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  v4 = MEMORY[0x1865F7E00]();
  OUTLINED_FUNCTION_19(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_17();
  return &v13;
}

char *sub_184EDB11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_184EA3BA0((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = a1;
  *(v8 + 5) = a2;
  return v5;
}

uint64_t *sub_184EDB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1854FA9D0();

  v8 = MEMORY[0x1865F7E00](a1, a2);
  OUTLINED_FUNCTION_19(v8, v9, v10, v11, v12, v13, v14, v15, a3, a4);
  OUTLINED_FUNCTION_17();
  return &v17;
}

id sub_184EDB2F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

unint64_t sub_184EDB6AC()
{
  result = qword_1EA8C4F08;
  if (!qword_1EA8C4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8C4F00, &qword_185543018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8C4F08);
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

unint64_t sub_184EDB758()
{
  result = qword_1EA8C4F10;
  if (!qword_1EA8C4F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8C4F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = a2;
  return a1;
}

uint64_t OUTLINED_FUNCTION_23(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

_BYTE *BMAudioRouteChangeReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMAudioRouteChangeReasonFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_13);
  if (result)
  {
    return *(&BMAudioRouteChangeReasonFromString_sortedEnums + (((result - BMAudioRouteChangeReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAudioRouteTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAudioRouteTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_33);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMAudioRouteTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAudioRouteChangeReasonAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E866A0[a1];
  }

  return v2;
}

__CFString *BMAudioRouteTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E866E0[a1];
  }

  return v2;
}

uint64_t BMAudioRouteChangeReasonDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAudioRouteTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPortraitTopicAlgorithmFromString(const void *a1)
{
  result = bsearch_b(a1, BMPortraitTopicAlgorithmFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_113);
  if (result)
  {
    return *(&BMPortraitTopicAlgorithmFromString_sortedEnums + (((result - BMPortraitTopicAlgorithmFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPortraitTopicAlgorithmAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E86780[a1];
  }

  return v2;
}

uint64_t BMPortraitTopicAlgorithmDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAeroMLPhotosSearchInsightsUISurfaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAeroMLPhotosSearchInsightsUISurfaceTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_267);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMAeroMLPhotosSearchInsightsUISurfaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketFromString(const void *a1)
{
  result = bsearch_b(a1, BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_48);
  if (result)
  {
    return *(&BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString_sortedEnums + (((result - BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAeroMLPhotosSearchInsightsUISurfaceTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E86928[a1];
  }

  return v2;
}

__CFString *BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E86950[a1];
  }

  return v2;
}

uint64_t BMAeroMLPhotosSearchInsightsUISurfaceTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMIntelligencePlatformEmailMessageIdsSourceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligencePlatformEmailMessageIdsSourceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_500);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMIntelligencePlatformEmailMessageIdsSourceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligencePlatformEmailMessageIdsSourceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E869D8[a1];
  }

  return v2;
}

uint64_t BMIntelligencePlatformEmailMessageIdsSourceTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMomentsEventDataPhotoMomentInferenceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPhotoMomentInferenceTypeFromString_sortedStrings, 0x1FuLL, 8uLL, &__block_literal_global_828);
  if (result)
  {
    return *(&BMMomentsEventDataPhotoMomentInferenceTypeFromString_sortedEnums + (((result - BMMomentsEventDataPhotoMomentInferenceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEventDataPhotoMomentInferenceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x20)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88D48[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataActionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataActionTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_1083);
  if (result)
  {
    return *(&BMMomentsEventDataActionTypeFromString_sortedEnums + (((result - BMMomentsEventDataActionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEventDataActionTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88EC8[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataPRTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPRTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_1452);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsEventDataPRTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEventDataPRTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89248[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataEventProviderTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventProviderTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_356);
  if (result)
  {
    return *(&BMMomentsEventDataEventProviderTypeFromString_sortedEnums + (((result - BMMomentsEventDataEventProviderTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataEventCategoryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventCategoryTypeFromString_sortedStrings, 0x18uLL, 8uLL, &__block_literal_global_409);
  if (result)
  {
    return *(&BMMomentsEventDataEventCategoryTypeFromString_sortedEnums + (((result - BMMomentsEventDataEventCategoryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_458);
  if (result)
  {
    return *(&BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString_sortedEnums + (((result - BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataGeoPOICategoryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataGeoPOICategoryTypeFromString_sortedStrings, 0x4DuLL, 8uLL, &__block_literal_global_717);
  if (result)
  {
    return *(&BMMomentsEventDataGeoPOICategoryTypeFromString_sortedEnums + (((result - BMMomentsEventDataGeoPOICategoryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataPlaceDiscoveryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPlaceDiscoveryTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_725);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMomentsEventDataPlaceDiscoveryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataLocationModeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataLocationModeTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_733);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsEventDataLocationModeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataWorkoutActivityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataWorkoutActivityTypeFromString_sortedStrings, 0x54uLL, 8uLL, &__block_literal_global_1046);
  if (result)
  {
    return *(&BMMomentsEventDataWorkoutActivityTypeFromString_sortedEnums + (((result - BMMomentsEventDataWorkoutActivityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataGenreTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataGenreTypeFromString_sortedStrings, 0x1CuLL, 8uLL, &__block_literal_global_1270);
  if (result)
  {
    return *(&BMMomentsEventDataGenreTypeFromString_sortedEnums + (((result - BMMomentsEventDataGenreTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataMediaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataMediaTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_1287);
  if (result)
  {
    return *(&BMMomentsEventDataMediaTypeFromString_sortedEnums + (((result - BMMomentsEventDataMediaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataSourceAppTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataSourceAppTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_760);
  if (result)
  {
    return *(&BMMomentsEventDataSourceAppTypeFromString_sortedEnums + (((result - BMMomentsEventDataSourceAppTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataPhotoMomentSourceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPhotoMomentSourceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_741);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsEventDataPhotoMomentSourceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataSuggestedEventCategoryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataSuggestedEventCategoryTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_441);
  if (result)
  {
    return *(&BMMomentsEventDataSuggestedEventCategoryTypeFromString_sortedEnums + (((result - BMMomentsEventDataSuggestedEventCategoryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataTripModeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataTripModeTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_749);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsEventDataTripModeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataMapItemSourceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataMapItemSourceTypeFromString_sortedStrings, 0x11uLL, 8uLL, &__block_literal_global_1502);
  if (result)
  {
    return *(&BMMomentsEventDataMapItemSourceTypeFromString_sortedEnums + (((result - BMMomentsEventDataMapItemSourceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataVisitPlaceTypesFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataVisitPlaceTypesFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1510);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMomentsEventDataVisitPlaceTypesFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataPlaceInferenceGranularityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPlaceInferenceGranularityTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_1521);
  if (result)
  {
    return *(&BMMessagesSearchEventVisualComponentTypeFromString_sortedEnums + (((result - BMMomentsEventDataPlaceInferenceGranularityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMMomentsEventDataEventReadFrom(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  while (1)
  {
    v7 = [a2 position];
    if (v7 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v358) = 0;
      v11 = [a2 position] + 1;
      if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
      {
        v13 = [a2 data];
        [v13 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v10 |= (v358 & 0x7F) << v8;
      if ((v358 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_16;
      }
    }

    v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 288;
        goto LABEL_390;
      case 2u:
        *(a1 + 16) = 1;
        v358 = 0;
        v175 = [a2 position] + 8;
        if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 8, v176 <= objc_msgSend(a2, "length")))
        {
          v345 = [a2 data];
          [v345 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v358;
        continue;
      case 3u:
        *(a1 + 32) = 1;
        v358 = 0;
        v159 = [a2 position] + 8;
        if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 8, v160 <= objc_msgSend(a2, "length")))
        {
          v343 = [a2 data];
          [v343 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 40) = v358;
        continue;
      case 4u:
        *(a1 + 48) = 1;
        v358 = 0;
        v167 = [a2 position] + 8;
        if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 8, v168 <= objc_msgSend(a2, "length")))
        {
          v344 = [a2 data];
          [v344 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 56) = v358;
        continue;
      case 5u:
        *(a1 + 64) = 1;
        v358 = 0;
        v123 = [a2 position] + 8;
        if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
        {
          v342 = [a2 data];
          [v342 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 72) = v358;
        continue;
      case 6u:
        *(a1 + 80) = 1;
        v358 = 0;
        v211 = [a2 position] + 8;
        if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 8, v212 <= objc_msgSend(a2, "length")))
        {
          v346 = [a2 data];
          [v346 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 88) = v358;
        continue;
      case 7u:
        v215 = 0;
        v216 = 0;
        v217 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v218 = [a2 position] + 1;
          if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 1, v219 <= objc_msgSend(a2, "length")))
          {
            v220 = [a2 data];
            [v220 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v217 |= (v358 & 0x7F) << v215;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v89 = v216++ > 8;
          if (v89)
          {
            goto LABEL_555;
          }
        }

        if (([a2 hasError] & 1) != 0 || v217 > 0xB)
        {
LABEL_555:
          LODWORD(v217) = 0;
        }

        *(a1 + 140) = v217;
        continue;
      case 8u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v358 & 0x7F) << v169;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v89 = v170++ > 8;
          if (v89)
          {
            goto LABEL_533;
          }
        }

        if (([a2 hasError] & 1) != 0 || v171 > 0x18)
        {
LABEL_533:
          LODWORD(v171) = 0;
        }

        *(a1 + 144) = v171;
        continue;
      case 9u:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v358 & 0x7F) << v233;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v14 = v234++ >= 9;
          if (v14)
          {
            v239 = 0;
            goto LABEL_571;
          }
        }

        if ([a2 hasError])
        {
          v239 = 0;
        }

        else
        {
          v239 = v235;
        }

LABEL_571:
        *(a1 + 148) = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeDecode(v239);
        continue;
      case 0xAu:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v358 & 0x7F) << v139;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v89 = v140++ > 8;
          if (v89)
          {
            goto LABEL_517;
          }
        }

        if (([a2 hasError] & 1) != 0 || v141 > 0x4D)
        {
LABEL_517:
          LODWORD(v141) = 0;
        }

        *(a1 + 152) = v141;
        continue;
      case 0xBu:
        v227 = 0;
        v228 = 0;
        v229 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v230 = [a2 position] + 1;
          if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
          {
            v232 = [a2 data];
            [v232 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v229 |= (v358 & 0x7F) << v227;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v89 = v228++ > 8;
          if (v89)
          {
            goto LABEL_566;
          }
        }

        if (([a2 hasError] & 1) != 0 || v229 > 2)
        {
LABEL_566:
          LODWORD(v229) = 0;
        }

        *(a1 + 156) = v229;
        continue;
      case 0xCu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v358 & 0x7F) << v111;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v89 = v112++ > 8;
          if (v89)
          {
            goto LABEL_501;
          }
        }

        if (([a2 hasError] & 1) != 0 || v113 > 2)
        {
LABEL_501:
          LODWORD(v113) = 0;
        }

        *(a1 + 160) = v113;
        continue;
      case 0xDu:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v358 & 0x7F) << v132;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v14 = v133++ >= 9;
          if (v14)
          {
            v138 = 0;
            goto LABEL_514;
          }
        }

        if ([a2 hasError])
        {
          v138 = 0;
        }

        else
        {
          v138 = v134;
        }

LABEL_514:
        *(a1 + 164) = BMMomentsEventDataWorkoutActivityTypeDecode(v138);
        continue;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 296;
        goto LABEL_390;
      case 0xFu:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v358 & 0x7F) << v83;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v89 = v84++ > 8;
          if (v89)
          {
            goto LABEL_487;
          }
        }

        if (([a2 hasError] & 1) != 0 || v85 > 0x1C)
        {
LABEL_487:
          LODWORD(v85) = 0;
        }

        *(a1 + 168) = v85;
        continue;
      case 0x10u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v358 & 0x7F) << v161;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v89 = v162++ > 8;
          if (v89)
          {
            goto LABEL_529;
          }
        }

        if (([a2 hasError] & 1) != 0 || v163 > 8)
        {
LABEL_529:
          LODWORD(v163) = 0;
        }

        *(a1 + 172) = v163;
        continue;
      case 0x11u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 96) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v358 & 0x7F) << v69;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v14 = v70++ >= 9;
          if (v14)
          {
            v75 = 0;
            goto LABEL_480;
          }
        }

        if ([a2 hasError])
        {
          v75 = 0;
        }

        else
        {
          v75 = v71;
        }

LABEL_480:
        *(a1 + 176) = v75;
        continue;
      case 0x12u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 97) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v358 & 0x7F) << v184;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v14 = v185++ >= 9;
          if (v14)
          {
            v190 = 0;
            goto LABEL_540;
          }
        }

        if ([a2 hasError])
        {
          v190 = 0;
        }

        else
        {
          v190 = v186;
        }

LABEL_540:
        *(a1 + 180) = v190;
        continue;
      case 0x13u:
        v221 = 0;
        v222 = 0;
        v223 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v224 = [a2 position] + 1;
          if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
          {
            v226 = [a2 data];
            [v226 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v223 |= (v358 & 0x7F) << v221;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v89 = v222++ > 8;
          if (v89)
          {
            goto LABEL_562;
          }
        }

        if ([a2 hasError])
        {
          v337 = 0;
        }

        else
        {
          v337 = v223;
        }

        if (v337 <= 4)
        {
          v338 = dword_185543AE4[v337];
          goto LABEL_563;
        }

LABEL_562:
        v338 = 0;
LABEL_563:
        *(a1 + 184) = v338;
        continue;
      case 0x14u:
        v16 = PBReaderReadString();
        v17 = 304;
        goto LABEL_390;
      case 0x15u:
        v198 = 0;
        v199 = 0;
        v200 = 0;
        *(a1 + 98) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v201 = [a2 position] + 1;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
          {
            v203 = [a2 data];
            [v203 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v200 |= (v358 & 0x7F) << v198;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v198 += 7;
          v14 = v199++ >= 9;
          if (v14)
          {
            v204 = 0;
            goto LABEL_548;
          }
        }

        if ([a2 hasError])
        {
          v204 = 0;
        }

        else
        {
          v204 = v200;
        }

LABEL_548:
        *(a1 + 188) = v204;
        continue;
      case 0x16u:
        *(a1 + 99) = 1;
        v358 = 0;
        v213 = [a2 position] + 8;
        if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 8, v214 <= objc_msgSend(a2, "length")))
        {
          v347 = [a2 data];
          [v347 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 312) = v358;
        continue;
      case 0x17u:
        v261 = 0;
        v262 = 0;
        v263 = 0;
        *(a1 + 100) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v264 = [a2 position] + 1;
          if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
          {
            v266 = [a2 data];
            [v266 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v263 |= (v358 & 0x7F) << v261;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v261 += 7;
          v14 = v262++ >= 9;
          if (v14)
          {
            v267 = 0;
            goto LABEL_583;
          }
        }

        if ([a2 hasError])
        {
          v267 = 0;
        }

        else
        {
          v267 = v263;
        }

LABEL_583:
        *(a1 + 192) = v267;
        continue;
      case 0x18u:
        *(a1 + 101) = 1;
        v358 = 0;
        v285 = [a2 position] + 8;
        if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 8, v286 <= objc_msgSend(a2, "length")))
        {
          v348 = [a2 data];
          [v348 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 320) = v358;
        continue;
      case 0x19u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 102) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v358 & 0x7F) << v152;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v14 = v153++ >= 9;
          if (v14)
          {
            v158 = 0;
            goto LABEL_526;
          }
        }

        if ([a2 hasError])
        {
          v158 = 0;
        }

        else
        {
          v158 = v154;
        }

LABEL_526:
        *(a1 + 196) = v158;
        continue;
      case 0x1Au:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 103) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v358 & 0x7F) << v145;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v14 = v146++ >= 9;
          if (v14)
          {
            v151 = 0;
            goto LABEL_522;
          }
        }

        if ([a2 hasError])
        {
          v151 = 0;
        }

        else
        {
          v151 = v147;
        }

LABEL_522:
        *(a1 + 200) = v151;
        continue;
      case 0x1Bu:
        v296 = 0;
        v297 = 0;
        v298 = 0;
        *(a1 + 104) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v299 = [a2 position] + 1;
          if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
          {
            v301 = [a2 data];
            [v301 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v298 |= (v358 & 0x7F) << v296;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v296 += 7;
          v14 = v297++ >= 9;
          if (v14)
          {
            v302 = 0;
            goto LABEL_599;
          }
        }

        if ([a2 hasError])
        {
          v302 = 0;
        }

        else
        {
          v302 = v298;
        }

LABEL_599:
        *(a1 + 204) = v302;
        continue;
      case 0x1Cu:
        v59 = PBReaderReadString();
        if (!v59)
        {
          goto LABEL_642;
        }

        v60 = v59;
        v61 = v4;
        goto LABEL_162;
      case 0x1Du:
        v16 = PBReaderReadString();
        v17 = 336;
LABEL_390:
        v287 = *(a1 + v17);
        *(a1 + v17) = v16;

        continue;
      case 0x1Eu:
        *(a1 + 105) = 1;
        v358 = 0;
        v288 = [a2 position] + 8;
        if (v288 >= [a2 position] && (v289 = objc_msgSend(a2, "position") + 8, v289 <= objc_msgSend(a2, "length")))
        {
          v349 = [a2 data];
          [v349 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 344) = v358;
        continue;
      case 0x1Fu:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        *(a1 + 107) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            v245 = [a2 data];
            [v245 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (v358 & 0x7F) << v240;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v14 = v241++ >= 9;
          if (v14)
          {
            LOBYTE(v246) = 0;
            goto LABEL_573;
          }
        }

        v246 = (v242 != 0) & ~[a2 hasError];
LABEL_573:
        *(a1 + 106) = v246;
        continue;
      case 0x20u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 109) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v358 & 0x7F) << v177;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v14 = v178++ >= 9;
          if (v14)
          {
            LOBYTE(v183) = 0;
            goto LABEL_536;
          }
        }

        v183 = (v179 != 0) & ~[a2 hasError];
LABEL_536:
        *(a1 + 108) = v183;
        continue;
      case 0x21u:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        *(a1 + 110) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v358 & 0x7F) << v247;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v14 = v248++ >= 9;
          if (v14)
          {
            v253 = 0;
            goto LABEL_577;
          }
        }

        if ([a2 hasError])
        {
          v253 = 0;
        }

        else
        {
          v253 = v249;
        }

LABEL_577:
        *(a1 + 208) = v253;
        continue;
      case 0x22u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 111) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v358 & 0x7F) << v90;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v14 = v91++ >= 9;
          if (v14)
          {
            v96 = 0;
            goto LABEL_492;
          }
        }

        if ([a2 hasError])
        {
          v96 = 0;
        }

        else
        {
          v96 = v92;
        }

LABEL_492:
        *(a1 + 212) = v96;
        continue;
      case 0x23u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 112) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v358 & 0x7F) << v62;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v14 = v63++ >= 9;
          if (v14)
          {
            v68 = 0;
            goto LABEL_476;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v64;
        }

LABEL_476:
        *(a1 + 216) = v68;
        continue;
      case 0x24u:
        *(a1 + 113) = 1;
        v358 = 0;
        v55 = [a2 position] + 8;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
        {
          v340 = [a2 data];
          [v340 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 352) = v358;
        continue;
      case 0x25u:
        *(a1 + 114) = 1;
        v358 = 0;
        v57 = [a2 position] + 8;
        if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 8, v58 <= objc_msgSend(a2, "length")))
        {
          v341 = [a2 data];
          [v341 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 360) = v358;
        continue;
      case 0x26u:
        *(a1 + 115) = 1;
        v358 = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v339 = [a2 data];
          [v339 getBytes:&v358 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 368) = v358;
        continue;
      case 0x27u:
        v290 = 0;
        v291 = 0;
        v292 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v293 = [a2 position] + 1;
          if (v293 >= [a2 position] && (v294 = objc_msgSend(a2, "position") + 1, v294 <= objc_msgSend(a2, "length")))
          {
            v295 = [a2 data];
            [v295 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v292 |= (v358 & 0x7F) << v290;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v290 += 7;
          v89 = v291++ > 8;
          if (v89)
          {
            goto LABEL_594;
          }
        }

        if (([a2 hasError] & 1) != 0 || v292 > 2)
        {
LABEL_594:
          LODWORD(v292) = 0;
        }

        *(a1 + 264) = v292;
        continue;
      case 0x28u:
        v358 = 0;
        v359 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_642;
        }

        v268 = [[BMMomentsEventDataPhotoMomentInference alloc] initByReadFrom:a2];
        if (!v268)
        {
          goto LABEL_642;
        }

        v269 = v268;
        [v5 addObject:v268];
        PBReaderRecallMark();

        continue;
      case 0x29u:
        v125 = PBReaderReadString();
        if (!v125)
        {
          goto LABEL_642;
        }

        v60 = v125;
        v61 = v6;
LABEL_162:
        [v61 addObject:v60];

        continue;
      case 0x2Au:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 124) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            v196 = [a2 data];
            [v196 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v358 & 0x7F) << v191;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v14 = v192++ >= 9;
          if (v14)
          {
            v197 = 0;
            goto LABEL_544;
          }
        }

        if ([a2 hasError])
        {
          v197 = 0;
        }

        else
        {
          v197 = v193;
        }

LABEL_544:
        *(a1 + 268) = v197;
        continue;
      case 0x2Bu:
        v272 = 0;
        v273 = 0;
        v274 = 0;
        *(a1 + 125) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v275 = [a2 position] + 1;
          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
          {
            v277 = [a2 data];
            [v277 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v274 |= (v358 & 0x7F) << v272;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v272 += 7;
          v14 = v273++ >= 9;
          if (v14)
          {
            v278 = 0;
            goto LABEL_587;
          }
        }

        if ([a2 hasError])
        {
          v278 = 0;
        }

        else
        {
          v278 = v274;
        }

LABEL_587:
        *(a1 + 272) = v278;
        continue;
      case 0x2Cu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 126) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v358 & 0x7F) << v25;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v14 = v26++ >= 9;
          if (v14)
          {
            v31 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

LABEL_464:
        *(a1 + 276) = v31;
        continue;
      case 0x2Du:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 127) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v358 & 0x7F) << v76;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v14 = v77++ >= 9;
          if (v14)
          {
            v82 = 0;
            goto LABEL_484;
          }
        }

        if ([a2 hasError])
        {
          v82 = 0;
        }

        else
        {
          v82 = v78;
        }

LABEL_484:
        *(a1 + 280) = v82;
        continue;
      case 0x2Eu:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        *(a1 + 129) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v358 & 0x7F) << v254;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v14 = v255++ >= 9;
          if (v14)
          {
            LOBYTE(v260) = 0;
            goto LABEL_579;
          }
        }

        v260 = (v256 != 0) & ~[a2 hasError];
LABEL_579:
        *(a1 + 128) = v260;
        continue;
      case 0x2Fu:
        v323 = 0;
        v324 = 0;
        v325 = 0;
        *(a1 + 131) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v326 = [a2 position] + 1;
          if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v325 |= (v358 & 0x7F) << v323;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v323 += 7;
          v14 = v324++ >= 9;
          if (v14)
          {
            LOBYTE(v329) = 0;
            goto LABEL_613;
          }
        }

        v329 = (v325 != 0) & ~[a2 hasError];
LABEL_613:
        *(a1 + 130) = v329;
        continue;
      case 0x30u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 133) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v358 & 0x7F) << v41;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v14 = v42++ >= 9;
          if (v14)
          {
            LOBYTE(v47) = 0;
            goto LABEL_470;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_470:
        *(a1 + 132) = v47;
        continue;
      case 0x31u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 135) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v358 & 0x7F) << v97;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v14 = v98++ >= 9;
          if (v14)
          {
            LOBYTE(v103) = 0;
            goto LABEL_494;
          }
        }

        v103 = (v99 != 0) & ~[a2 hasError];
LABEL_494:
        *(a1 + 134) = v103;
        continue;
      case 0x32u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v358 & 0x7F) << v117;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v89 = v118++ > 8;
          if (v89)
          {
            goto LABEL_505;
          }
        }

        if (([a2 hasError] & 1) != 0 || v119 > 0xC)
        {
LABEL_505:
          LODWORD(v119) = 0;
        }

        *(a1 + 220) = v119;
        continue;
      case 0x33u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 116) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v358 & 0x7F) << v18;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v14 = v19++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_460;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_460:
        *(a1 + 224) = v24;
        continue;
      case 0x34u:
        v330 = 0;
        v331 = 0;
        v332 = 0;
        *(a1 + 117) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v333 = [a2 position] + 1;
          if (v333 >= [a2 position] && (v334 = objc_msgSend(a2, "position") + 1, v334 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v332 |= (v358 & 0x7F) << v330;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v330 += 7;
          v14 = v331++ >= 9;
          if (v14)
          {
            v336 = 0;
            goto LABEL_617;
          }
        }

        if ([a2 hasError])
        {
          v336 = 0;
        }

        else
        {
          v336 = v332;
        }

LABEL_617:
        *(a1 + 228) = v336;
        continue;
      case 0x35u:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v320 = [a2 position] + 1;
          if (v320 >= [a2 position] && (v321 = objc_msgSend(a2, "position") + 1, v321 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v319 |= (v358 & 0x7F) << v317;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v317 += 7;
          v89 = v318++ > 8;
          if (v89)
          {
            goto LABEL_610;
          }
        }

        if (([a2 hasError] & 1) != 0 || v319 > 2)
        {
LABEL_610:
          LODWORD(v319) = 0;
        }

        *(a1 + 232) = v319;
        continue;
      case 0x36u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 118) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v358 & 0x7F) << v34;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v14 = v35++ >= 9;
          if (v14)
          {
            v40 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v36;
        }

LABEL_468:
        *(a1 + 236) = v40;
        continue;
      case 0x37u:
        v303 = 0;
        v304 = 0;
        v305 = 0;
        *(a1 + 119) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v306 = [a2 position] + 1;
          if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
          {
            v308 = [a2 data];
            [v308 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v305 |= (v358 & 0x7F) << v303;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v303 += 7;
          v14 = v304++ >= 9;
          if (v14)
          {
            v309 = 0;
            goto LABEL_603;
          }
        }

        if ([a2 hasError])
        {
          v309 = 0;
        }

        else
        {
          v309 = v305;
        }

LABEL_603:
        *(a1 + 240) = v309;
        continue;
      case 0x38u:
        v310 = 0;
        v311 = 0;
        v312 = 0;
        *(a1 + 120) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v313 = [a2 position] + 1;
          if (v313 >= [a2 position] && (v314 = objc_msgSend(a2, "position") + 1, v314 <= objc_msgSend(a2, "length")))
          {
            v315 = [a2 data];
            [v315 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v312 |= (v358 & 0x7F) << v310;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v310 += 7;
          v14 = v311++ >= 9;
          if (v14)
          {
            v316 = 0;
            goto LABEL_607;
          }
        }

        if ([a2 hasError])
        {
          v316 = 0;
        }

        else
        {
          v316 = v312;
        }

LABEL_607:
        *(a1 + 244) = v316;
        continue;
      case 0x39u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 122) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v358 & 0x7F) << v48;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v14 = v49++ >= 9;
          if (v14)
          {
            LOBYTE(v54) = 0;
            goto LABEL_472;
          }
        }

        v54 = (v50 != 0) & ~[a2 hasError];
LABEL_472:
        *(a1 + 121) = v54;
        continue;
      case 0x3Au:
        v358 = 0;
        v359 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_642;
        }

        v270 = [[BMMomentsEventDataPR alloc] initByReadFrom:a2];
        if (!v270)
        {
          goto LABEL_642;
        }

        v271 = *(a1 + 376);
        *(a1 + 376) = v270;

        PBReaderRecallMark();
        continue;
      case 0x3Bu:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 123) = 1;
        while (1)
        {
          LOBYTE(v358) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v358 & 0x7F) << v104;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v14 = v105++ >= 9;
          if (v14)
          {
            v110 = 0;
            goto LABEL_498;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v106;
        }

LABEL_498:
        *(a1 + 248) = v110;
        continue;
      case 0x3Cu:
        v279 = 0;
        v280 = 0;
        v281 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v282 = [a2 position] + 1;
          if (v282 >= [a2 position] && (v283 = objc_msgSend(a2, "position") + 1, v283 <= objc_msgSend(a2, "length")))
          {
            v284 = [a2 data];
            [v284 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v281 |= (v358 & 0x7F) << v279;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v279 += 7;
          v89 = v280++ > 8;
          if (v89)
          {
            goto LABEL_590;
          }
        }

        if (([a2 hasError] & 1) != 0 || v281 > 0x11)
        {
LABEL_590:
          LODWORD(v281) = 0;
        }

        *(a1 + 252) = v281;
        continue;
      case 0x3Du:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        while (1)
        {
          LOBYTE(v358) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v358 & 0x7F) << v126;
          if ((v358 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v89 = v127++ > 8;
          if (v89)
          {
            goto LABEL_509;
          }
        }

        if (([a2 hasError] & 1) != 0 || v128 > 3)
        {
LABEL_509:
          LODWORD(v128) = 0;
        }

        *(a1 + 256) = v128;
        continue;
      case 0x3Eu:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_642:
        v356 = 0;
        goto LABEL_641;
    }

    while (1)
    {
      LOBYTE(v358) = 0;
      v208 = [a2 position] + 1;
      if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
      {
        v210 = [a2 data];
        [v210 getBytes:&v358 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v207 |= (v358 & 0x7F) << v205;
      if ((v358 & 0x80) == 0)
      {
        break;
      }

      v205 += 7;
      v89 = v206++ > 8;
      if (v89)
      {
        goto LABEL_551;
      }
    }

    if (([a2 hasError] & 1) != 0 || v207 > 5)
    {
LABEL_551:
      LODWORD(v207) = 0;
    }

    *(a1 + 260) = v207;
  }

  v350 = [v4 copy];
  v351 = *(a1 + 328);
  *(a1 + 328) = v350;

  v352 = [v5 copy];
  v353 = *(a1 + 384);
  *(a1 + 384) = v352;

  v354 = [v6 copy];
  v355 = *(a1 + 392);
  *(a1 + 392) = v354;

  v356 = [a2 hasError] ^ 1;
LABEL_641:

  return v356;
}

uint64_t BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeDecode(uint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 5)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataWorkoutActivityTypeDecode(uint64_t result)
{
  if (result == 3000)
  {
    v1 = 3000;
  }

  else
  {
    v1 = 0;
  }

  if ((result - 82) >= 3)
  {
    v2 = v1;
  }

  else
  {
    v2 = result;
  }

  if (result >= 0x51)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

__CFString *BMMomentsEventDataEventProviderTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E888C0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataEventCategoryTypeAsString(uint64_t a1)
{
  if (a1 >= 0x19)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88920[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeAsString(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v2 = @"School";

        break;
      case 4:
        v2 = @"Gym";

        break;
      case 0x64:
        v2 = @"OutingEligible";

        break;
      default:
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v2 = @"Work";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"Home";
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *BMMomentsEventDataGeoPOICategoryTypeAsString(uint64_t a1)
{
  if (a1 >= 0x4E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88A50[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataPlaceDiscoveryTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88CC0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataLocationModeTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88CD8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataWorkoutActivityTypeAsString(uint64_t a1)
{
  v3 = a1;
  v4 = @"Unknown";
  switch(v3)
  {
    case 0:
      goto LABEL_10;
    case 1:
      v4 = @"AmericanFootball";

      return v4;
    case 2:
      v4 = @"Archery";

      return v4;
    case 3:
      v4 = @"AustralianFootball";

      return v4;
    case 4:
      v4 = @"Badminton";

      return v4;
    case 5:
      v4 = @"Baseball";

      return v4;
    case 6:
      v4 = @"Basketball";

      return v4;
    case 7:
      v4 = @"Bowling";

      return v4;
    case 8:
      v4 = @"Boxing";

      return v4;
    case 9:
      v4 = @"Climbing";

      return v4;
    case 10:
      v4 = @"Cricket";

      return v4;
    case 11:
      v4 = @"CrossTraining";

      return v4;
    case 12:
      v4 = @"Curling";

      return v4;
    case 13:
      v4 = @"Cycling";

      return v4;
    case 14:
      v4 = @"Dance";

      return v4;
    case 15:
      v4 = @"DanceInspiredTraining";

      return v4;
    case 16:
      v4 = @"Elliptical";

      return v4;
    case 17:
      v4 = @"EquestrianSports";

      return v4;
    case 18:
      v4 = @"Fencing";

      return v4;
    case 19:
      v4 = @"Fishing";

      return v4;
    case 20:
      v4 = @"FunctionalStrengthTraining";

      return v4;
    case 21:
      v4 = @"Golf";

      return v4;
    case 22:
      v4 = @"Gymnastics";

      return v4;
    case 23:
      v4 = @"Handball";

      return v4;
    case 24:
      v4 = @"Hiking";

      return v4;
    case 25:
      v4 = @"Hockey";

      return v4;
    case 26:
      v4 = @"Hunting";

      return v4;
    case 27:
      v4 = @"Lacrosse";

      return v4;
    case 28:
      v4 = @"MartialArts";

      return v4;
    case 29:
      v4 = @"MindAndBody";

      return v4;
    case 30:
      v4 = @"MixedMetabolicCardioTraining";

      return v4;
    case 31:
      v4 = @"PaddleSports";

      return v4;
    case 32:
      v4 = @"Play";

      return v4;
    case 33:
      v4 = @"PreparationAndRecovery";

      return v4;
    case 34:
      v4 = @"Racquetball";

      return v4;
    case 35:
      v4 = @"Rowing";

      return v4;
    case 36:
      v4 = @"Rugby";

      return v4;
    case 37:
      v4 = @"Running";

      return v4;
    case 38:
      v4 = @"Sailing";

      return v4;
    case 39:
      v4 = @"SkatingSports";

      return v4;
    case 40:
      v4 = @"SnowSports";

      return v4;
    case 41:
      v4 = @"Soccer";

      return v4;
    case 42:
      v4 = @"Softball";

      return v4;
    case 43:
      v4 = @"Squash";

      return v4;
    case 44:
      v4 = @"StairClimbing";

      return v4;
    case 45:
      v4 = @"SurfingSports";

      return v4;
    case 46:
      v4 = @"Swimming";

      return v4;
    case 47:
      v4 = @"TableTennis";

      return v4;
    case 48:
      v4 = @"Tennis";

      return v4;
    case 49:
      v4 = @"TrackAndField";

      return v4;
    case 50:
      v4 = @"TraditionalStrengthTraining";

      return v4;
    case 51:
      v4 = @"Volleyball";

      return v4;
    case 52:
      v4 = @"Walking";

      return v4;
    case 53:
      v4 = @"WaterFitness";

      return v4;
    case 54:
      v4 = @"WaterPolo";

      return v4;
    case 55:
      v4 = @"WaterSports";

      return v4;
    case 56:
      v4 = @"Wrestling";

      return v4;
    case 57:
      v4 = @"Yoga";

      return v4;
    case 58:
      v4 = @"Barre";

      return v4;
    case 59:
      v4 = @"CoreTraining";

      return v4;
    case 60:
      v4 = @"CrossCountrySkiing";

      return v4;
    case 61:
      v4 = @"DownhillSkiing";

      return v4;
    case 62:
      v4 = @"Flexibility";

      return v4;
    case 63:
      v4 = @"HighIntensityIntervalTraining";

      return v4;
    case 64:
      v4 = @"JumpRope";

      return v4;
    case 65:
      v4 = @"Kickboxing";

      return v4;
    case 66:
      v4 = @"Pilates";

      return v4;
    case 67:
      v4 = @"Snowboarding";

      return v4;
    case 68:
      v4 = @"Stairs";

      return v4;
    case 69:
      v4 = @"StepTraining";

      return v4;
    case 70:
      v4 = @"WheelchairWalkPace";

      return v4;
    case 71:
      v4 = @"WheelchairRunPace";

      return v4;
    case 72:
      v4 = @"TaiChi";

      return v4;
    case 73:
      v4 = @"MixedCardio";

      return v4;
    case 74:
      v4 = @"HandCycling";

      return v4;
    case 75:
      v4 = @"DiscSports";

      return v4;
    case 76:
      v4 = @"FitnessGaming";

      return v4;
    case 77:
      v4 = @"CardioDance";

      return v4;
    case 78:
      v4 = @"SocialDance";

      return v4;
    case 79:
      v4 = @"Pickleball";

      return v4;
    case 80:
      v4 = @"Cooldown";

      return v4;
    case 81:
      goto LABEL_9;
    case 82:
      v4 = @"SwimBikeRun";

      return v4;
    case 83:
      v4 = @"Transition";

      return v4;
    case 84:
      v4 = @"UnderwaterDiving";

      return v4;
    default:
      if (a1 == 3000)
      {
        v4 = @"Other";
      }

      else
      {
LABEL_9:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
LABEL_10:
      }

      return v4;
  }
}

__CFString *BMMomentsEventDataGenreTypeAsString(uint64_t a1)
{
  if (a1 >= 0x1D)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88F30[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataMediaTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89018[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataSourceAppTypeAsString(uint64_t a1)
{
  if (a1 < 5 && ((0x1Bu >> a1) & 1) != 0)
  {
    v2 = off_1E6E88D20[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataPhotoMomentSourceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88CF0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataSuggestedEventCategoryTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E889E8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataTripModeTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88D08[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataMapItemSourceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89260[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataVisitPlaceTypesAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E892F0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataPlaceInferenceGranularityTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89310[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataEventBundleResourceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventBundleResourceTypeFromString_sortedStrings, 0x10uLL, 8uLL, &__block_literal_global_855);
  if (result)
  {
    return *(&BMMomentsEventDataEventBundleResourceTypeFromString_sortedEnums + (((result - BMMomentsEventDataEventBundleResourceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_63);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEventDataEventBundleResourceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x11)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E887A0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88828[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataPersonRelationshipTagFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPersonRelationshipTagFromString_sortedStrings, 0x1DuLL, 8uLL, &__block_literal_global_1869);
  if (result)
  {
    return *(&BMMomentsEventDataPersonRelationshipTagFromString_sortedEnums + (((result - BMMomentsEventDataPersonRelationshipTagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEventDataPersonRelationshipTagAsString(uint64_t a1)
{
  if (a1 >= 0x1E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89690[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataPlaceInferencePlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPlaceInferencePlaceTypeFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_487);
  if (result)
  {
    return *(&BMMomentsEventDataPlaceInferencePlaceTypeFromString_sortedEnums + (((result - BMMomentsEventDataPlaceInferencePlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMMomentsEventDataPlaceInferencePlaceTypeDecode(uint64_t result)
{
  if ((result - 100) >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

__CFString *BMMomentsEventDataPlaceInferencePlaceTypeAsString(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 99)
    {
      if (a1 == 5)
      {
        v2 = @"CoarseAddress";

        return v2;
      }

      if (a1 == 6)
      {
        v2 = @"Custom";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 'd':
          v2 = @"City";

          return v2;
        case 'e':
          v2 = @"State";

          return v2;
        case 'f':
          v2 = @"Country";

          return v2;
      }
    }

LABEL_43:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"AreaOfInterest";
    }

    else if (a1 == 3)
    {
      v2 = @"PointOfInterest";
    }

    else
    {
      v2 = @"Address";
    }

    return v2;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"NonClassified";

      return v2;
    }

    goto LABEL_43;
  }

  v2 = @"Unknown";

  return v2;
}

_BYTE *BMMomentsEventDataStateOfMindDomainFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataStateOfMindDomainFromString_sortedStrings, 0x12uLL, 8uLL, &__block_literal_global_1764);
  if (result)
  {
    return *(&BMMomentsEventDataStateOfMindDomainFromString_sortedEnums + (((result - BMMomentsEventDataStateOfMindDomainFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataStateOfMindLabelFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataStateOfMindLabelFromString_sortedStrings, 0x26uLL, 8uLL, &__block_literal_global_1720);
  if (result)
  {
    return *(&BMMomentsEventDataStateOfMindLabelFromString_sortedEnums + (((result - BMMomentsEventDataStateOfMindLabelFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataStateOfMindReflectiveIntervalFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataStateOfMindReflectiveIntervalFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_1792);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMomentsEventDataStateOfMindReflectiveIntervalFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataStateOfMindValenceClassificationFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataStateOfMindValenceClassificationFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_1784);
  if (result)
  {
    return *(&BMMomentsEventDataStateOfMindValenceClassificationFromString_sortedEnums + (((result - BMMomentsEventDataStateOfMindValenceClassificationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEventDataStateOfMindDomainAsString(uint64_t a1)
{
  if (a1 >= 0x13)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E895A0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataStateOfMindLabelAsString(uint64_t a1)
{
  if (a1 >= 0x27)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89468[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataStateOfMindReflectiveIntervalAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89678[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataStateOfMindValenceClassificationAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89638[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataBundleInterfaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataBundleInterfaceTypeFromString_sortedStrings, 0xFuLL, 8uLL, &__block_literal_global_1063);
  if (result)
  {
    return *(&BMMomentsEngagementBundleInterfaceTypeFromString_sortedEnums + (((result - BMMomentsEventDataBundleInterfaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataTimeTagTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataTimeTagTypeFromString_sortedStrings, 0x24uLL, 8uLL, &__block_literal_global_1190);
  if (result)
  {
    return *(&BMMomentsEventDataTimeTagTypeFromString_sortedEnums + (((result - BMMomentsEventDataTimeTagTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataBundleEngagementTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataBundleEngagementTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1326);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMMomentsEventDataBundleEngagementTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataSuggestionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataSuggestionTypeFromString_sortedStrings, 0x19uLL, 8uLL, &__block_literal_global_1403);
  if (result)
  {
    return *(&BMMomentsEventDataSuggestionTypeFromString_sortedEnums + (((result - BMMomentsEventDataSuggestionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataAppEntryEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataAppEntryEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_1405);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMMomentsEventDataAppEntryEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataClientActivityEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataClientActivityEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_1419);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMMomentsEventDataClientActivityEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataPhotoSourceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPhotoSourceTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_1433);
  if (result)
  {
    return *(&BMMomentsEventDataPhotoSourceTypeFromString_sortedEnums + (((result - BMMomentsEventDataPhotoSourceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataPhotoLibraryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataPhotoLibraryTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1444);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMomentsEventDataPhotoLibraryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataRankingTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataRankingTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1532);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMomentsEventDataRankingTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataLabelConfidenceScoreTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataLabelConfidenceScoreTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1543);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMomentsEventDataLabelConfidenceScoreTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataTimeCorrelationScoreTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataTimeCorrelationScoreTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1545);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMomentsEventDataTimeCorrelationScoreTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataCallDurationTypesFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataCallDurationTypesFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1564);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMomentsEventDataCallDurationTypesFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataInteractionCountTypesFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataInteractionCountTypesFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1569);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMMomentsEventDataInteractionCountTypesFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataBundleInteractionTypesFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataBundleInteractionTypesFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_1586);
  if (result)
  {
    return *(&BMMomentsEventDataBundleInteractionTypesFromString_sortedEnums + (((result - BMMomentsEventDataBundleInteractionTypesFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataCallPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataCallPlaceTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1588);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMMomentsEventDataCallPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataDistanceFromHomeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataDistanceFromHomeTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_1556);
  if (result)
  {
    return *(&BMAppDocumentInteractionTypeFromString_sortedEnums + (((result - BMMomentsEventDataDistanceFromHomeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataAvailabilityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataAvailabilityTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_1596);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsEventDataAvailabilityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataAnomalousTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataAnomalousTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_1604);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsEventDataAnomalousTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataEventBundleBundleSuperTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventBundleBundleSuperTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_89);
  if (result)
  {
    return *(&BMMomentsEventDataEventBundleBundleSuperTypeFromString_sortedEnums + (((result - BMMomentsEventDataEventBundleBundleSuperTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataEventBundleBundleSubTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventBundleBundleSubTypeFromString_sortedStrings, 0x4DuLL, 8uLL, &__block_literal_global_313);
  if (result)
  {
    return *(&BMMomentsEventDataEventBundleBundleSubTypeFromString_sortedEnums + (((result - BMMomentsEventDataEventBundleBundleSubTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataEventBundleSummarizationGranularityFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataEventBundleSummarizationGranularityFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_321);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMomentsEventDataEventBundleSummarizationGranularityFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMMomentsEventDataEventBundleReadFrom(uint64_t a1, void *a2)
{
  v426 = objc_opt_new();
  v4 = objc_opt_new();
  v423 = objc_opt_new();
  v425 = objc_opt_new();
  v424 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v422 = objc_opt_new();
  v7 = objc_opt_new();
  while (2)
  {
    v8 = [a2 position];
    if (v8 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      goto LABEL_816;
    }

    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      LOBYTE(v427) = 0;
      v15 = [a2 position] + 1;
      if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
      {
        v17 = [a2 data];
        [v17 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v14 |= (v427 & 0x7F) << v12;
      if ((v427 & 0x80) == 0)
      {
        break;
      }

      v12 += 7;
      v18 = v13++ >= 9;
      if (v18)
      {
        v19 = 0;
        goto LABEL_16;
      }
    }

    v19 = [a2 hasError] ? 0 : v14;
LABEL_16:
    v4 = v11;
    v5 = v10;
    v6 = v9;
    if (([a2 hasError] & 1) != 0 || (v19 & 7) == 4)
    {
LABEL_816:
      v394 = [v426 copy];
      v395 = *(a1 + 376);
      *(a1 + 376) = v394;

      v396 = [v4 copy];
      v397 = *(a1 + 392);
      *(a1 + 392) = v396;

      v398 = v423;
      v399 = [v423 copy];
      v400 = *(a1 + 464);
      *(a1 + 464) = v399;

      v401 = v425;
      v402 = [v425 copy];
      v403 = *(a1 + 472);
      *(a1 + 472) = v402;

      v404 = v424;
      v405 = [v424 copy];
      v406 = *(a1 + 480);
      *(a1 + 480) = v405;

      v407 = [v5 copy];
      v408 = *(a1 + 488);
      *(a1 + 488) = v407;

      v409 = [v6 copy];
      v410 = *(a1 + 496);
      *(a1 + 496) = v409;

      v411 = v7;
      v412 = v422;
      v413 = [v422 copy];
      v414 = *(a1 + 512);
      *(a1 + 512) = v413;

      v415 = [v411 copy];
      v416 = *(a1 + 520);
      *(a1 + 520) = v415;

      v417 = a2;
      v418 = v426;
      v419 = [v417 hasError] ^ 1;
      goto LABEL_817;
    }

    switch((v19 >> 3))
    {
      case 1u:
        v20 = PBReaderReadString();
        v21 = 360;
        goto LABEL_405;
      case 2u:
        *(a1 + 16) = 1;
        v427 = 0;
        v190 = [a2 position] + 8;
        if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 8, v191 <= objc_msgSend(a2, "length")))
        {
          v384 = [a2 data];
          [v384 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v427;
        continue;
      case 3u:
        *(a1 + 32) = 1;
        v427 = 0;
        v170 = [a2 position] + 8;
        if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 8, v171 <= objc_msgSend(a2, "length")))
        {
          v382 = [a2 data];
          [v382 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 40) = v427;
        continue;
      case 4u:
        *(a1 + 48) = 1;
        v427 = 0;
        v182 = [a2 position] + 8;
        if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 8, v183 <= objc_msgSend(a2, "length")))
        {
          v383 = [a2 data];
          [v383 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 56) = v427;
        continue;
      case 5u:
        *(a1 + 64) = 1;
        v427 = 0;
        v127 = [a2 position] + 8;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
        {
          v381 = [a2 data];
          [v381 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 72) = v427;
        continue;
      case 6u:
        v213 = 0;
        v214 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v213;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v213 += 7;
          v34 = v214++ > 8;
          if (v34)
          {
            goto LABEL_664;
          }
        }

        if ([a2 hasError])
        {
LABEL_664:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_665;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 0xF)
        {
          LODWORD(v30) = 0;
        }

LABEL_665:
        v368 = 232;
        goto LABEL_731;
      case 7u:
        v241 = 0;
        v242 = 0;
        v243 = 0;
        *(a1 + 177) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v244 = [a2 position] + 1;
          if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 1, v245 <= objc_msgSend(a2, "length")))
          {
            v246 = [a2 data];
            [v246 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v243 |= (v427 & 0x7F) << v241;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v241 += 7;
          v18 = v242++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_680;
          }
        }

        v85 = (v243 != 0) & ~[a2 hasError];
LABEL_680:
        v372 = 176;
        goto LABEL_714;
      case 8u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 179) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v427 & 0x7F) << v184;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v18 = v185++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_649;
          }
        }

        v85 = (v186 != 0) & ~[a2 hasError];
LABEL_649:
        v372 = 178;
        goto LABEL_714;
      case 9u:
        v248 = 0;
        v249 = 0;
        v250 = 0;
        *(a1 + 181) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v251 = [a2 position] + 1;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 1, v252 <= objc_msgSend(a2, "length")))
          {
            v253 = [a2 data];
            [v253 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v250 |= (v427 & 0x7F) << v248;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v248 += 7;
          v18 = v249++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_682;
          }
        }

        v85 = (v250 != 0) & ~[a2 hasError];
LABEL_682:
        v372 = 180;
        goto LABEL_714;
      case 0xAu:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 183) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v427 & 0x7F) << v152;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v18 = v153++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_637;
          }
        }

        v85 = (v154 != 0) & ~[a2 hasError];
LABEL_637:
        v372 = 182;
        goto LABEL_714;
      case 0xBu:
        v20 = PBReaderReadString();
        v21 = 368;
        goto LABEL_405;
      case 0xCu:
        v20 = PBReaderReadString();
        v21 = 592;
        goto LABEL_405;
      case 0xDu:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 214) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v427 & 0x7F) << v146;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v18 = v147++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_635;
          }
        }

        v43 = (v148 != 0) & ~[a2 hasError];
LABEL_635:
        v6 = v9;
        v369 = 213;
        goto LABEL_726;
      case 0xEu:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v237 = [a2 position] + 1;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 1, v238 <= objc_msgSend(a2, "length")))
          {
            v239 = [a2 data];
            [v239 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v236 |= (v427 & 0x7F) << v234;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v18 = v235++ >= 9;
          if (v18)
          {
            v240 = 0;
            goto LABEL_677;
          }
        }

        if ([a2 hasError])
        {
          v240 = 0;
        }

        else
        {
          v240 = v236;
        }

LABEL_677:
        v6 = v9;
        v373 = BMMomentsEventDataPlaceInferencePlaceTypeDecode(v240);
        v374 = 340;
        goto LABEL_678;
      case 0xFu:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v427 & 0x7F) << v101;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v18 = v102++ >= 9;
          if (v18)
          {
            v107 = 0;
            goto LABEL_616;
          }
        }

        if ([a2 hasError])
        {
          v107 = 0;
        }

        else
        {
          v107 = v103;
        }

LABEL_616:
        v6 = v9;
        v373 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeDecode(v107);
        v374 = 344;
LABEL_678:
        *(a1 + v374) = v373;
        goto LABEL_727;
      case 0x10u:
        v172 = 0;
        v173 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v172;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v34 = v173++ > 8;
          if (v34)
          {
            goto LABEL_643;
          }
        }

        if ([a2 hasError])
        {
LABEL_643:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_644;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 0x18)
        {
          LODWORD(v30) = 0;
        }

LABEL_644:
        v368 = 348;
        goto LABEL_731;
      case 0x11u:
        v93 = PBReaderReadString();
        if (!v93)
        {
          goto LABEL_818;
        }

        v72 = v93;
        v73 = v426;
        goto LABEL_308;
      case 0x12u:
        v427 = 0;
        v428 = 0;
        v22 = v426;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_819;
        }

        v23 = [[BMMomentsEventDataAction alloc] initByReadFrom:a2];
        if (!v23)
        {
          goto LABEL_819;
        }

        v24 = 384;
        goto LABEL_578;
      case 0x13u:
        v427 = 0;
        v428 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_818;
        }

        v247 = [[BMMomentsEventDataAction alloc] initByReadFrom:a2];
        if (!v247)
        {
          goto LABEL_818;
        }

        v26 = v247;
        v27 = v11;
        goto LABEL_565;
      case 0x14u:
        v272 = 0;
        v273 = 0;
        v274 = 0;
        *(a1 + 185) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v275 = [a2 position] + 1;
          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
          {
            v277 = [a2 data];
            [v277 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v274 |= (v427 & 0x7F) << v272;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v272 += 7;
          v18 = v273++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_689;
          }
        }

        v85 = (v274 != 0) & ~[a2 hasError];
LABEL_689:
        v372 = 184;
        goto LABEL_714;
      case 0x15u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            v206 = [a2 data];
            [v206 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (v427 & 0x7F) << v201;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v18 = v202++ >= 9;
          if (v18)
          {
            v207 = 0;
            goto LABEL_658;
          }
        }

        if ([a2 hasError])
        {
          v207 = 0;
        }

        else
        {
          v207 = v203;
        }

LABEL_658:
        v370 = BMMomentsEventDataTimeTagTypeDecode(v207);
        v371 = 236;
        goto LABEL_659;
      case 0x16u:
        v228 = 0;
        v229 = 0;
        v230 = 0;
        *(a1 + 216) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v231 = [a2 position] + 1;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
          {
            v233 = [a2 data];
            [v233 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v230 |= (v427 & 0x7F) << v228;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v228 += 7;
          v18 = v229++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_673;
          }
        }

        v43 = (v230 != 0) & ~[a2 hasError];
LABEL_673:
        v6 = v9;
        v369 = 215;
        goto LABEL_726;
      case 0x17u:
        v262 = 0;
        v263 = 0;
        v264 = 0;
        *(a1 + 218) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v265 = [a2 position] + 1;
          if (v265 >= [a2 position] && (v266 = objc_msgSend(a2, "position") + 1, v266 <= objc_msgSend(a2, "length")))
          {
            v267 = [a2 data];
            [v267 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v264 |= (v427 & 0x7F) << v262;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v262 += 7;
          v18 = v263++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_687;
          }
        }

        v43 = (v264 != 0) & ~[a2 hasError];
LABEL_687:
        v6 = v9;
        v369 = 217;
        goto LABEL_726;
      case 0x18u:
        v293 = 0;
        v294 = 0;
        v295 = 0;
        *(a1 + 220) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v296 = [a2 position] + 1;
          if (v296 >= [a2 position] && (v297 = objc_msgSend(a2, "position") + 1, v297 <= objc_msgSend(a2, "length")))
          {
            v298 = [a2 data];
            [v298 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v295 |= (v427 & 0x7F) << v293;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v293 += 7;
          v18 = v294++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_700;
          }
        }

        v43 = (v295 != 0) & ~[a2 hasError];
LABEL_700:
        v6 = v9;
        v369 = 219;
        goto LABEL_726;
      case 0x19u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 222) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v427 & 0x7F) << v164;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v18 = v165++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_641;
          }
        }

        v43 = (v166 != 0) & ~[a2 hasError];
LABEL_641:
        v6 = v9;
        v369 = 221;
        goto LABEL_726;
      case 0x1Au:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 224) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v427 & 0x7F) << v158;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v18 = v159++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_639;
          }
        }

        v85 = (v160 != 0) & ~[a2 hasError];
LABEL_639:
        v372 = 223;
        goto LABEL_714;
      case 0x1Bu:
        v305 = 0;
        v306 = 0;
        v307 = 0;
        *(a1 + 226) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v308 = [a2 position] + 1;
          if (v308 >= [a2 position] && (v309 = objc_msgSend(a2, "position") + 1, v309 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v307 |= (v427 & 0x7F) << v305;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v305 += 7;
          v18 = v306++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_702;
          }
        }

        v85 = (v307 != 0) & ~[a2 hasError];
LABEL_702:
        v372 = 225;
        goto LABEL_714;
      case 0x1Cu:
        v86 = 0;
        v87 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v86;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v34 = v87++ > 8;
          if (v34)
          {
            goto LABEL_608;
          }
        }

        if ([a2 hasError])
        {
LABEL_608:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_609;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_609:
        v368 = 352;
        goto LABEL_731;
      case 0x1Du:
        *(a1 + 186) = 1;
        v427 = 0;
        v299 = [a2 position] + 8;
        if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 8, v300 <= objc_msgSend(a2, "length")))
        {
          v389 = [a2 data];
          [v389 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 400) = v427;
        continue;
      case 0x1Eu:
        *(a1 + 187) = 1;
        v427 = 0;
        v301 = [a2 position] + 8;
        if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 8, v302 <= objc_msgSend(a2, "length")))
        {
          v390 = [a2 data];
          [v390 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 408) = v427;
        continue;
      case 0x1Fu:
        v254 = 0;
        v255 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v256 = [a2 position] + 1;
          if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
          {
            v258 = [a2 data];
            [v258 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v254;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v34 = v255++ > 8;
          if (v34)
          {
            goto LABEL_684;
          }
        }

        if ([a2 hasError])
        {
LABEL_684:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_685;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 0x19)
        {
          LODWORD(v30) = 0;
        }

LABEL_685:
        v368 = 240;
        goto LABEL_731;
      case 0x20u:
        *(a1 + 80) = 1;
        v427 = 0;
        v192 = [a2 position] + 8;
        if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 8, v193 <= objc_msgSend(a2, "length")))
        {
          v385 = [a2 data];
          [v385 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 88) = v427;
        continue;
      case 0x21u:
        v20 = PBReaderReadString();
        v21 = 416;
        goto LABEL_405;
      case 0x22u:
        v20 = PBReaderReadString();
        v21 = 424;
        goto LABEL_405;
      case 0x23u:
        *(a1 + 188) = 1;
        LODWORD(v427) = 0;
        v91 = [a2 position] + 4;
        if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 4, v92 <= objc_msgSend(a2, "length")))
        {
          v379 = [a2 data];
          [v379 getBytes:&v427 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 432) = *&v427;
        continue;
      case 0x24u:
        v74 = 0;
        v75 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v74;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v34 = v75++ > 8;
          if (v34)
          {
            goto LABEL_603;
          }
        }

        if ([a2 hasError])
        {
LABEL_603:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_604;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 4)
        {
          LODWORD(v30) = 0;
        }

LABEL_604:
        v368 = 244;
        goto LABEL_731;
      case 0x25u:
        v20 = PBReaderReadString();
        v21 = 440;
        goto LABEL_405;
      case 0x26u:
        *(a1 + 96) = 1;
        v427 = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v378 = [a2 data];
          [v378 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 104) = v427;
        continue;
      case 0x27u:
        *(a1 + 112) = 1;
        v427 = 0;
        v303 = [a2 position] + 8;
        if (v303 >= [a2 position] && (v304 = objc_msgSend(a2, "position") + 8, v304 <= objc_msgSend(a2, "length")))
        {
          v391 = [a2 data];
          [v391 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 120) = v427;
        continue;
      case 0x28u:
        *(a1 + 128) = 1;
        v427 = 0;
        v270 = [a2 position] + 8;
        if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 8, v271 <= objc_msgSend(a2, "length")))
        {
          v388 = [a2 data];
          [v388 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 136) = v427;
        continue;
      case 0x29u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 189) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v427 & 0x7F) << v129;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v18 = v130++ >= 9;
          if (v18)
          {
            v135 = 0;
            goto LABEL_627;
          }
        }

        if ([a2 hasError])
        {
          v135 = 0;
        }

        else
        {
          v135 = v131;
        }

LABEL_627:
        v6 = v9;
        v375 = 248;
        goto LABEL_654;
      case 0x2Au:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 190) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v427 & 0x7F) << v194;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v18 = v195++ >= 9;
          if (v18)
          {
            v135 = 0;
            goto LABEL_653;
          }
        }

        if ([a2 hasError])
        {
          v135 = 0;
        }

        else
        {
          v135 = v196;
        }

LABEL_653:
        v6 = v9;
        v375 = 252;
LABEL_654:
        *(a1 + v375) = v135;
        goto LABEL_727;
      case 0x2Bu:
        v283 = 0;
        v284 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v285 = [a2 position] + 1;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
          {
            v287 = [a2 data];
            [v287 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v283;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v283 += 7;
          v34 = v284++ > 8;
          if (v34)
          {
            goto LABEL_694;
          }
        }

        if ([a2 hasError])
        {
LABEL_694:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_695;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 4)
        {
          LODWORD(v30) = 0;
        }

LABEL_695:
        v368 = 256;
        goto LABEL_731;
      case 0x2Cu:
        v20 = PBReaderReadString();
        v21 = 448;
        goto LABEL_405;
      case 0x2Du:
        *(a1 + 144) = 1;
        v427 = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v380 = [a2 data];
          [v380 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 152) = v427;
        continue;
      case 0x2Eu:
        v20 = PBReaderReadString();
        v21 = 456;
LABEL_405:
        v259 = *(a1 + v21);
        *(a1 + v21) = v20;

        continue;
      case 0x2Fu:
        v335 = 0;
        v336 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v337 = [a2 position] + 1;
          if (v337 >= [a2 position] && (v338 = objc_msgSend(a2, "position") + 1, v338 <= objc_msgSend(a2, "length")))
          {
            v339 = [a2 data];
            [v339 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v335;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v335 += 7;
          v34 = v336++ > 8;
          if (v34)
          {
            goto LABEL_717;
          }
        }

        if ([a2 hasError])
        {
LABEL_717:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_718;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 5)
        {
          LODWORD(v30) = 0;
        }

LABEL_718:
        v368 = 260;
        goto LABEL_731;
      case 0x30u:
        v61 = 0;
        v62 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v61;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v34 = v62++ > 8;
          if (v34)
          {
            goto LABEL_597;
          }
        }

        if ([a2 hasError])
        {
LABEL_597:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_598;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_598:
        v368 = 264;
        goto LABEL_731;
      case 0x31u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 192) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v427 & 0x7F) << v108;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v18 = v109++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_618;
          }
        }

        v43 = (v110 != 0) & ~[a2 hasError];
LABEL_618:
        v6 = v9;
        v369 = 191;
        goto LABEL_726;
      case 0x32u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 194) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v427 & 0x7F) << v121;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v18 = v122++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_623;
          }
        }

        v43 = (v123 != 0) & ~[a2 hasError];
LABEL_623:
        v6 = v9;
        v369 = 193;
        goto LABEL_726;
      case 0x33u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 196) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v427 & 0x7F) << v37;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v18 = v38++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_588;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_588:
        v6 = v9;
        v369 = 195;
        goto LABEL_726;
      case 0x34u:
        v353 = 0;
        v354 = 0;
        v355 = 0;
        *(a1 + 198) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v356 = [a2 position] + 1;
          if (v356 >= [a2 position] && (v357 = objc_msgSend(a2, "position") + 1, v357 <= objc_msgSend(a2, "length")))
          {
            v358 = [a2 data];
            [v358 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v355 |= (v427 & 0x7F) << v353;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v353 += 7;
          v18 = v354++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_725;
          }
        }

        v43 = (v355 != 0) & ~[a2 hasError];
LABEL_725:
        v6 = v9;
        v369 = 197;
        goto LABEL_726;
      case 0x35u:
        v329 = 0;
        v330 = 0;
        v331 = 0;
        *(a1 + 200) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v332 = [a2 position] + 1;
          if (v332 >= [a2 position] && (v333 = objc_msgSend(a2, "position") + 1, v333 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v331 |= (v427 & 0x7F) << v329;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v329 += 7;
          v18 = v330++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_713;
          }
        }

        v85 = (v331 != 0) & ~[a2 hasError];
LABEL_713:
        v372 = 199;
        goto LABEL_714;
      case 0x36u:
        v427 = 0;
        v428 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          v419 = 0;
          v421 = v425;
          v418 = v426;
          v398 = v423;
          v404 = v424;
          v6 = v9;
          goto LABEL_820;
        }

        v60 = [[BMMomentsEventDataPR alloc] initByReadFrom:a2];
        if (!v60)
        {
          v419 = 0;
          v418 = v426;
          v404 = v424;
          v6 = v9;
          v401 = v425;
          v411 = v7;
          v412 = v422;
          v398 = v423;
          goto LABEL_817;
        }

        [v423 addObject:v60];
        PBReaderRecallMark();

        v6 = v9;
        continue;
      case 0x37u:
        v311 = 0;
        v312 = 0;
        v313 = 0;
        *(a1 + 201) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v314 = [a2 position] + 1;
          if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v313 |= (v427 & 0x7F) << v311;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v311 += 7;
          v18 = v312++ >= 9;
          if (v18)
          {
            v317 = 0;
            goto LABEL_706;
          }
        }

        if ([a2 hasError])
        {
          v317 = 0;
        }

        else
        {
          v317 = v313;
        }

LABEL_706:
        *(a1 + 268) = v317;
        goto LABEL_715;
      case 0x38u:
        v324 = 0;
        v325 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v326 = [a2 position] + 1;
          if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v324;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v34 = v325++ > 8;
          if (v34)
          {
            goto LABEL_710;
          }
        }

        if ([a2 hasError])
        {
LABEL_710:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_711;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_711:
        v368 = 272;
        goto LABEL_731;
      case 0x39u:
        v66 = 0;
        v67 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v66;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v34 = v67++ > 8;
          if (v34)
          {
            goto LABEL_600;
          }
        }

        if ([a2 hasError])
        {
LABEL_600:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_601;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_601:
        v368 = 276;
        goto LABEL_731;
      case 0x3Au:
        v278 = 0;
        v279 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v280 = [a2 position] + 1;
          if (v280 >= [a2 position] && (v281 = objc_msgSend(a2, "position") + 1, v281 <= objc_msgSend(a2, "length")))
          {
            v282 = [a2 data];
            [v282 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v278;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v278 += 7;
          v34 = v279++ > 8;
          if (v34)
          {
            goto LABEL_691;
          }
        }

        if ([a2 hasError])
        {
LABEL_691:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_692;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_692:
        v368 = 280;
        goto LABEL_731;
      case 0x3Bu:
        v114 = 0;
        v115 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v114;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v34 = v115++ > 8;
          if (v34)
          {
            goto LABEL_620;
          }
        }

        if ([a2 hasError])
        {
LABEL_620:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_621;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_621:
        v368 = 284;
        goto LABEL_731;
      case 0x3Cu:
        v288 = 0;
        v289 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v290 = [a2 position] + 1;
          if (v290 >= [a2 position] && (v291 = objc_msgSend(a2, "position") + 1, v291 <= objc_msgSend(a2, "length")))
          {
            v292 = [a2 data];
            [v292 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v288;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v288 += 7;
          v34 = v289++ > 8;
          if (v34)
          {
            goto LABEL_697;
          }
        }

        if ([a2 hasError])
        {
LABEL_697:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_698;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_698:
        v368 = 288;
        goto LABEL_731;
      case 0x3Du:
        v136 = 0;
        v137 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v136;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v34 = v137++ > 8;
          if (v34)
          {
            goto LABEL_629;
          }
        }

        if ([a2 hasError])
        {
LABEL_629:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_630;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 5)
        {
          LODWORD(v30) = 0;
        }

LABEL_630:
        v368 = 292;
        goto LABEL_731;
      case 0x3Eu:
        v208 = 0;
        v209 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v210 = [a2 position] + 1;
          if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 1, v211 <= objc_msgSend(a2, "length")))
          {
            v212 = [a2 data];
            [v212 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v208;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v208 += 7;
          v34 = v209++ > 8;
          if (v34)
          {
            goto LABEL_661;
          }
        }

        if ([a2 hasError])
        {
LABEL_661:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_662;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_662:
        v368 = 296;
        goto LABEL_731;
      case 0x3Fu:
        v223 = 0;
        v224 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            v227 = [a2 data];
            [v227 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v223;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v223 += 7;
          v34 = v224++ > 8;
          if (v34)
          {
            goto LABEL_670;
          }
        }

        if ([a2 hasError])
        {
LABEL_670:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_671;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 4)
        {
          LODWORD(v30) = 0;
        }

LABEL_671:
        v368 = 300;
        goto LABEL_731;
      case 0x40u:
        v177 = 0;
        v178 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v177;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v34 = v178++ > 8;
          if (v34)
          {
            goto LABEL_646;
          }
        }

        if ([a2 hasError])
        {
LABEL_646:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_647;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 2)
        {
          LODWORD(v30) = 0;
        }

LABEL_647:
        v368 = 304;
        goto LABEL_731;
      case 0x41u:
        v141 = 0;
        v142 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v141;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v34 = v142++ > 8;
          if (v34)
          {
            goto LABEL_632;
          }
        }

        if ([a2 hasError])
        {
LABEL_632:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_633;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 2)
        {
          LODWORD(v30) = 0;
        }

LABEL_633:
        v368 = 308;
        goto LABEL_731;
      case 0x42u:
        v218 = 0;
        v219 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v218;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v34 = v219++ > 8;
          if (v34)
          {
            goto LABEL_667;
          }
        }

        if ([a2 hasError])
        {
LABEL_667:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_668;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 0x11)
        {
          LODWORD(v30) = 0;
        }

LABEL_668:
        v368 = 312;
        goto LABEL_731;
      case 0x43u:
        v46 = 0;
        v47 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v46;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v34 = v47++ > 8;
          if (v34)
          {
            goto LABEL_590;
          }
        }

        if ([a2 hasError])
        {
LABEL_590:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_591;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 3)
        {
          LODWORD(v30) = 0;
        }

LABEL_591:
        v368 = 316;
        goto LABEL_731;
      case 0x44u:
        v94 = 0;
        v95 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v94;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v34 = v95++ > 8;
          if (v34)
          {
            goto LABEL_611;
          }
        }

        if ([a2 hasError])
        {
LABEL_611:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_612;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 5)
        {
          LODWORD(v30) = 0;
        }

LABEL_612:
        v368 = 320;
        goto LABEL_731;
      case 0x45u:
        v360 = 0;
        v361 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v362 = [a2 position] + 1;
          if (v362 >= [a2 position] && (v363 = objc_msgSend(a2, "position") + 1, v363 <= objc_msgSend(a2, "length")))
          {
            v364 = [a2 data];
            [v364 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v360;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v360 += 7;
          v34 = v361++ > 8;
          if (v34)
          {
            goto LABEL_729;
          }
        }

        if ([a2 hasError])
        {
LABEL_729:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_730;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 2)
        {
          LODWORD(v30) = 0;
        }

LABEL_730:
        v368 = 324;
        goto LABEL_731;
      case 0x46u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 203) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v427 & 0x7F) << v79;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v18 = v80++ >= 9;
          if (v18)
          {
            LOBYTE(v85) = 0;
            goto LABEL_606;
          }
        }

        v85 = (v81 != 0) & ~[a2 hasError];
LABEL_606:
        v372 = 202;
LABEL_714:
        *(a1 + v372) = v85;
        goto LABEL_715;
      case 0x47u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v28;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v34 = v29++ > 8;
          if (v34)
          {
            goto LABEL_585;
          }
        }

        if ([a2 hasError])
        {
LABEL_585:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_586;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 0xB)
        {
          LODWORD(v30) = 0;
        }

LABEL_586:
        v368 = 328;
        goto LABEL_731;
      case 0x48u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v427 & 0x7F) << v51;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v18 = v52++ >= 9;
          if (v18)
          {
            v57 = 0;
            goto LABEL_595;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_595:
        v370 = BMMomentsEventDataEventBundleBundleSubTypeDecode(v57);
        v371 = 332;
LABEL_659:
        *(a1 + v371) = v370;
LABEL_715:
        v4 = v11;
        v5 = v10;
        v6 = v9;
        continue;
      case 0x49u:
        v318 = 0;
        v319 = 0;
        v320 = 0;
        *(a1 + 205) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v321 = [a2 position] + 1;
          if (v321 >= [a2 position] && (v322 = objc_msgSend(a2, "position") + 1, v322 <= objc_msgSend(a2, "length")))
          {
            v323 = [a2 data];
            [v323 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v320 |= (v427 & 0x7F) << v318;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v318 += 7;
          v18 = v319++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_708;
          }
        }

        v43 = (v320 != 0) & ~[a2 hasError];
LABEL_708:
        v6 = v9;
        v369 = 204;
        goto LABEL_726;
      case 0x4Au:
        v340 = 0;
        v341 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v427) = 0;
          v342 = [a2 position] + 1;
          if (v342 >= [a2 position] && (v343 = objc_msgSend(a2, "position") + 1, v343 <= objc_msgSend(a2, "length")))
          {
            v344 = [a2 data];
            [v344 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v427 & 0x7F) << v340;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v340 += 7;
          v34 = v341++ > 8;
          if (v34)
          {
            goto LABEL_720;
          }
        }

        if ([a2 hasError])
        {
LABEL_720:
          LODWORD(v30) = 0;
          v4 = v11;
          v5 = v10;
          goto LABEL_721;
        }

        v4 = v11;
        v5 = v10;
        if (v30 > 2)
        {
          LODWORD(v30) = 0;
        }

LABEL_721:
        v368 = 336;
LABEL_731:
        *(a1 + v368) = v30;
        v6 = v9;
        continue;
      case 0x4Bu:
        v347 = 0;
        v348 = 0;
        v349 = 0;
        *(a1 + 207) = 1;
        while (1)
        {
          LOBYTE(v427) = 0;
          v350 = [a2 position] + 1;
          if (v350 >= [a2 position] && (v351 = objc_msgSend(a2, "position") + 1, v351 <= objc_msgSend(a2, "length")))
          {
            v352 = [a2 data];
            [v352 getBytes:&v427 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v349 |= (v427 & 0x7F) << v347;
          if ((v427 & 0x80) == 0)
          {
            break;
          }

          v347 += 7;
          v18 = v348++ >= 9;
          if (v18)
          {
            LOBYTE(v43) = 0;
            goto LABEL_723;
          }
        }

        v43 = (v349 != 0) & ~[a2 hasError];
LABEL_723:
        v6 = v9;
        v369 = 206;
LABEL_726:
        *(a1 + v369) = v43;
LABEL_727:
        v4 = v11;
        v5 = v10;
        continue;
      case 0x4Cu:
        v71 = PBReaderReadString();
        if (!v71)
        {
          goto LABEL_818;
        }

        v72 = v71;
        v73 = v425;
        goto LABEL_308;
      case 0x4Du:
        v200 = PBReaderReadString();
        if (!v200)
        {
          goto LABEL_818;
        }

        v72 = v200;
        v73 = v424;
        goto LABEL_308;
      case 0x4Eu:
        *(a1 + 160) = 1;
        v427 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v376 = [a2 data];
          [v376 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 168) = v427;
        continue;
      case 0x4Fu:
        v427 = 0;
        v428 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_818;
        }

        v359 = [[BMMomentsEventDataEventBundleResource alloc] initByReadFrom:a2];
        if (!v359)
        {
          goto LABEL_818;
        }

        v26 = v359;
        v27 = v10;
        goto LABEL_565;
      case 0x50u:
        v427 = 0;
        v428 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_818;
        }

        v25 = [[BMMomentsEventDataEventBundlePerson alloc] initByReadFrom:a2];
        if (!v25)
        {
          goto LABEL_818;
        }

        v26 = v25;
        v27 = v9;
        goto LABEL_565;
      case 0x51u:
        v427 = 0;
        v428 = 0;
        v22 = v426;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_819;
        }

        v23 = [[BMMomentsEventDataEventBundlePlace alloc] initByReadFrom:a2];
        if (!v23)
        {
          goto LABEL_819;
        }

        v24 = 504;
        goto LABEL_578;
      case 0x52u:
        v427 = 0;
        v428 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_818;
        }

        v120 = [[BMMomentsEventDataEventBundlePlace alloc] initByReadFrom:a2];
        if (!v120)
        {
          goto LABEL_818;
        }

        v26 = v120;
        v27 = v422;
LABEL_565:
        [v27 addObject:v26];
        PBReaderRecallMark();

        continue;
      case 0x53u:
        v119 = PBReaderReadString();
        if (!v119)
        {
          goto LABEL_818;
        }

        v72 = v119;
        v73 = v7;
LABEL_308:
        [v73 addObject:v72];

        continue;
      case 0x54u:
        v427 = 0;
        v428 = 0;
        v22 = v426;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_819;
        }

        v23 = [[BMMomentsEventDataEventBundleClusterMetadata alloc] initByReadFrom:a2];
        if (!v23)
        {
          goto LABEL_819;
        }

        v24 = 528;
        goto LABEL_578;
      case 0x55u:
        v427 = 0;
        v428 = 0;
        v22 = v426;
        if (PBReaderPlaceMark())
        {
          v23 = [[BMMomentsEventDataEventBundleOutlierMetadata alloc] initByReadFrom:a2];
          if (v23)
          {
            v24 = 536;
LABEL_578:
            v365 = *(a1 + v24);
            *(a1 + v24) = v23;

            PBReaderRecallMark();
            continue;
          }
        }

LABEL_819:
        v419 = 0;
        v398 = v423;
        v404 = v424;
        v421 = v425;
        v418 = v22;
LABEL_820:
        v401 = v421;
LABEL_821:
        v411 = v7;
        v412 = v422;
LABEL_817:

        return v419;
      case 0x56u:
        *(a1 + 208) = 1;
        v427 = 0;
        v260 = [a2 position] + 8;
        if (v260 >= [a2 position] && (v261 = objc_msgSend(a2, "position") + 8, v261 <= objc_msgSend(a2, "length")))
        {
          v386 = [a2 data];
          [v386 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 544) = v427;
        continue;
      case 0x57u:
        *(a1 + 209) = 1;
        v427 = 0;
        v268 = [a2 position] + 8;
        if (v268 >= [a2 position] && (v269 = objc_msgSend(a2, "position") + 8, v269 <= objc_msgSend(a2, "length")))
        {
          v387 = [a2 data];
          [v387 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 552) = v427;
        continue;
      case 0x58u:
        *(a1 + 210) = 1;
        v427 = 0;
        v345 = [a2 position] + 8;
        if (v345 >= [a2 position] && (v346 = objc_msgSend(a2, "position") + 8, v346 <= objc_msgSend(a2, "length")))
        {
          v392 = [a2 data];
          [v392 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 560) = v427;
        continue;
      case 0x59u:
        *(a1 + 211) = 1;
        v427 = 0;
        v44 = [a2 position] + 8;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
        {
          v377 = [a2 data];
          [v377 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 568) = v427;
        continue;
      case 0x5Au:
        *(a1 + 212) = 1;
        v427 = 0;
        v366 = [a2 position] + 8;
        if (v366 >= [a2 position] && (v367 = objc_msgSend(a2, "position") + 8, v367 <= objc_msgSend(a2, "length")))
        {
          v393 = [a2 data];
          [v393 getBytes:&v427 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 576) = v427;
        continue;
      case 0x5Bu:
        v427 = 0;
        v428 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_818;
        }

        v23 = [[BMMomentsEventDataEventBundleMetadataForRank alloc] initByReadFrom:a2];
        if (!v23)
        {
          goto LABEL_818;
        }

        v24 = 584;
        goto LABEL_578;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_818:
        v419 = 0;
        v401 = v425;
        v418 = v426;
        v398 = v423;
        v404 = v424;
        goto LABEL_821;
    }
  }
}

uint64_t BMMomentsEventDataTimeTagTypeDecode(uint64_t result)
{
  if ((result - 2000) >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if ((result - 100) >= 0xF)
  {
    v2 = v1;
  }

  else
  {
    v2 = result;
  }

  if (result >= 0x13)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataEventBundleBundleSubTypeDecode(uint64_t result)
{
  if (result <= 600)
  {
    if (result <= 300)
    {
      if ((result - 201) >= 7 && (result - 101) >= 6 && result)
      {
        return 0;
      }

      return result;
    }

    if ((result - 401) < 0xA || (result - 501) < 4)
    {
      return result;
    }

    v1 = result - 301;
  }

  else
  {
    if (result <= 900)
    {
      if ((result - 601) >= 0x11 && (result - 701) >= 9 && (result - 801) >= 2)
      {
        return 0;
      }

      return result;
    }

    if ((result - 901) < 0xA || (result - 1001) < 6)
    {
      return result;
    }

    v1 = result - 1101;
  }

  if (v1 >= 3)
  {
    return 0;
  }

  return result;
}

__CFString *BMMomentsEventDataBundleInterfaceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x10)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88E48[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataTimeTagTypeAsString(uint64_t a1)
{
  if (a1 > 99)
  {
    if (a1 > 1999)
    {
      switch(a1)
      {
        case 0x7D0:
          v3 = @"Breakfast";

          break;
        case 0x7D1:
          v3 = @"Lunch";

          break;
        case 0x7D2:
          v3 = @"Dinner";

          break;
        default:
LABEL_116:
          v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
LABEL_117:

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 'd':
          v3 = @"Today";

          break;
        case 'e':
          v3 = @"Yesterday";

          break;
        case 'f':
          v3 = @"Sunday";

          break;
        case 'g':
          v3 = @"Monday";

          break;
        case 'h':
          v3 = @"Tuesday";

          break;
        case 'i':
          v3 = @"Wednesday";

          break;
        case 'j':
          v3 = @"Thursday";

          break;
        case 'k':
          v3 = @"Friday";

          break;
        case 'l':
          v3 = @"Saturday";

          break;
        case 'm':
          v3 = @"ThisWeek";

          break;
        case 'n':
          v3 = @"LastWeek";

          break;
        case 'o':
          v3 = @"ThisMonth";

          break;
        case 'p':
          v3 = @"LastMonth";

          break;
        case 'q':
          v3 = @"ThisYear";

          break;
        case 'r':
          v3 = @"LastYear";

          break;
        default:
          goto LABEL_116;
      }
    }
  }

  else
  {
    v3 = @"Unknown";
    switch(a1)
    {
      case 0:
        goto LABEL_117;
      case 1:
        v3 = @"Custom";

        break;
      case 2:
        v3 = @"Morning";

        break;
      case 3:
        v3 = @"Afternoon";

        break;
      case 4:
        v3 = @"Evening";

        break;
      case 5:
        v3 = @"Night";

        break;
      case 6:
        v3 = @"MidNight";

        break;
      case 7:
        v3 = @"Day";

        break;
      case 8:
        v3 = @"Week";

        break;
      case 9:
        v3 = @"Month";

        break;
      case 10:
        v3 = @"Year";

        break;
      case 11:
        v3 = @"LongTerm";

        break;
      case 12:
        v3 = @"Weekday";

        break;
      case 13:
        v3 = @"Weekend";

        break;
      case 14:
        v3 = @"LongWeekend";

        break;
      case 15:
        v3 = @"Holiday";

        break;
      case 16:
        v3 = @"Vacation";

        break;
      case 17:
        v3 = @"Prenoon";

        break;
      case 18:
        v3 = @"Preevening";

        break;
      default:
        goto LABEL_116;
    }
  }

  return v3;
}

__CFString *BMMomentsEventDataBundleEngagementTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E890B8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataSuggestionTypeAsString(uint64_t a1)
{
  if (a1 >= 0x1A)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E890D8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataAppEntryEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E891A8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataClientActivityEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E891D0[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataPhotoSourceTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E891F8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataPhotoLibraryTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89228[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataRankingTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89340[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataLabelConfidenceScoreTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89360[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataTimeCorrelationScoreTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89360[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataCallDurationTypesAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E893A8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataInteractionCountTypesAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E893C8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataBundleInteractionTypesAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E893E8[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataCallPlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89418[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataDistanceFromHomeTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89380[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataAvailabilityTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89438[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataAnomalousTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89450[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataEventBundleBundleSuperTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E88848[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataEventBundleBundleSubTypeAsString(uint64_t a1)
{
  if (a1 <= 600)
  {
    if (a1 <= 301)
    {
      if (a1 <= 200)
      {
        if (a1 <= 102)
        {
          switch(a1)
          {
            case 0:
              v2 = @"Unknown";

              return v2;
            case 0x65:
              v2 = @"Visit";

              return v2;
            case 0x66:
              v2 = @"Flight";

              return v2;
          }
        }

        else
        {
          if (a1 <= 104)
          {
            if (a1 == 103)
            {
              v2 = @"Dining";
            }

            else
            {
              v2 = @"Shopping";
            }

            return v2;
          }

          if (a1 == 105)
          {
            v2 = @"Trip";

            return v2;
          }

          if (a1 == 106)
          {
            v2 = @"PreOnboardedVisit";

            return v2;
          }
        }
      }

      else
      {
        if (a1 <= 204)
        {
          if (a1 > 202)
          {
            if (a1 == 203)
            {
              v2 = @"WorkoutRoutine";
            }

            else
            {
              v2 = @"MotionActivityWalking";
            }
          }

          else if (a1 == 201)
          {
            v2 = @"Workout";
          }

          else
          {
            v2 = @"WorkoutWeeklySummary";
          }

          return v2;
        }

        if (a1 <= 206)
        {
          if (a1 == 205)
          {
            v2 = @"WorkoutTransit";
          }

          else
          {
            v2 = @"MotionActivityTransit";
          }

          return v2;
        }

        if (a1 == 207)
        {
          v2 = @"MotionActivityRunning";

          return v2;
        }

        if (a1 == 301)
        {
          v2 = @"Contact";

          return v2;
        }
      }
    }

    else if (a1 > 406)
    {
      if (a1 > 500)
      {
        if (a1 <= 502)
        {
          if (a1 == 501)
          {
            v2 = @"TimeAtHome";
          }

          else
          {
            v2 = @"PhotosAtHome";
          }

          return v2;
        }

        if (a1 == 503)
        {
          v2 = @"HostingAtHome";

          return v2;
        }

        if (a1 == 504)
        {
          v2 = @"EvergreenAtHome";

          return v2;
        }
      }

      else
      {
        if (a1 <= 408)
        {
          if (a1 == 407)
          {
            v2 = @"MediaOnRepeatThirdParty";
          }

          else
          {
            v2 = @"PlayedMediaThirdParty";
          }

          return v2;
        }

        if (a1 == 409)
        {
          v2 = @"MediaOnRepeatWeeklySummaryThirdParty";

          return v2;
        }

        if (a1 == 410)
        {
          v2 = @"PlayedMediaWeeklySummaryThirdParty";

          return v2;
        }
      }
    }

    else
    {
      if (a1 > 402)
      {
        if (a1 > 404)
        {
          if (a1 == 405)
          {
            v2 = @"PlayedMediaWeeklySummary";
          }

          else
          {
            v2 = @"MediaSuppressed";
          }
        }

        else if (a1 == 403)
        {
          v2 = @"PlayedPodCast";
        }

        else
        {
          v2 = @"MediaOnRepeatWeeklySummary";
        }

        return v2;
      }

      if (a1 > 400)
      {
        if (a1 == 401)
        {
          v2 = @"SongOnRepeat";
        }

        else
        {
          v2 = @"PlayedSong";
        }

        return v2;
      }

      if (a1 == 302)
      {
        v2 = @"ContactWeeklySummary";

        return v2;
      }

      if (a1 == 303)
      {
        v2 = @"ContactTrend";

        return v2;
      }
    }

LABEL_308:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 <= 706)
  {
    if (a1 > 700)
    {
      if (a1 > 703)
      {
        if (a1 == 704)
        {
          v2 = @"EvergreenCreativity";
        }

        else if (a1 == 705)
        {
          v2 = @"EvergreenKindness";
        }

        else
        {
          v2 = @"EvergreenPurpose";
        }
      }

      else if (a1 == 701)
      {
        v2 = @"EvergreenGratitude";
      }

      else if (a1 == 702)
      {
        v2 = @"EvergreenWisdom";
      }

      else
      {
        v2 = @"EvergreenResillience";
      }
    }

    else
    {
      switch(a1)
      {
        case 601:
          v2 = @"PhotoMemorySingleMoment";

          break;
        case 602:
          v2 = @"PhotoMemoryPerson";

          break;
        case 603:
          v2 = @"PhotoMemorySocialGroup";

          break;
        case 604:
          v2 = @"PhotoMemoryLastMonthAtHome";

          break;
        case 605:
          v2 = @"PhotoMemoryLookbacks";

          break;
        case 606:
          v2 = @"PhotoMemoryFoodie";

          break;
        case 607:
          v2 = @"PhotoMemoryPet";

          break;
        case 608:
          v2 = @"PhotoMemoryLocation";

          break;
        case 609:
          v2 = @"PhotoMemoryMeaningfulEvent";

          break;
        case 610:
          v2 = @"PhotoMemoryTrip";

          break;
        case 611:
          v2 = @"PhotoMemoryPastSuperSet";

          break;
        case 612:
          v2 = @"PhotoMemorySeason";

          break;
        case 613:
          v2 = @"PhotoMemoryRecentHighlights";

          break;
        case 614:
          v2 = @"PhotoMemoryFamily";

          break;
        case 615:
          v2 = @"PhotoMemoryExcitingMoments";

          break;
        case 616:
          v2 = @"PhotoMemoryTrends";

          break;
        case 617:
          v2 = @"PhotoMemoryOthers";

          break;
        default:
          goto LABEL_308;
      }
    }

    return v2;
  }

  if (a1 > 907)
  {
    if (a1 > 1003)
    {
      if (a1 > 1100)
      {
        switch(a1)
        {
          case 0x44D:
            v2 = @"PersonalizedReflectionOuting";

            return v2;
          case 0x44E:
            v2 = @"PersonalizedReflectionContact";

            return v2;
          case 0x44F:
            v2 = @"PersonalizedReflectionActivity";

            return v2;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x3EC:
            v2 = @"ThematicSummaryCommonPlace";

            return v2;
          case 0x3ED:
            v2 = @"ThematicSummaryPhotoSubject";

            return v2;
          case 0x3EE:
            v2 = @"ThematicSummaryStateOfMind";

            return v2;
        }
      }
    }

    else
    {
      if (a1 > 1000)
      {
        if (a1 == 1001)
        {
          v2 = @"ThematicSummaryHoliday";
        }

        else if (a1 == 1002)
        {
          v2 = @"ThematicSummarySocial";
        }

        else
        {
          v2 = @"ThematicSummaryCommonActivity";
        }

        return v2;
      }

      switch(a1)
      {
        case 0x38C:
          v2 = @"ClusteringThematicGrouping";

          return v2;
        case 0x38D:
          v2 = @"ClusteringTimeAtHomeGrouping";

          return v2;
        case 0x38E:
          v2 = @"ClusteringUnspecifiedGrouping";

          return v2;
      }
    }

    goto LABEL_308;
  }

  if (a1 > 901)
  {
    if (a1 > 904)
    {
      if (a1 == 905)
      {
        v2 = @"ClusteringLocationGrouping";
      }

      else if (a1 == 906)
      {
        v2 = @"ClusteringActivityGrouping";
      }

      else
      {
        v2 = @"ClusteringContactGrouping";
      }
    }

    else if (a1 == 902)
    {
      v2 = @"ClusteringActivityRoutine";
    }

    else if (a1 == 903)
    {
      v2 = @"ClusteringContactRoutine";
    }

    else
    {
      v2 = @"ClusteringTimeAtHomeRoutine";
    }

    return v2;
  }

  if (a1 > 800)
  {
    switch(a1)
    {
      case 0x321:
        v2 = @"DailyMood";

        return v2;
      case 0x322:
        v2 = @"MomentaryEmotion";

        return v2;
      case 0x385:
        v2 = @"ClusteringOutingRoutine";

        return v2;
    }

    goto LABEL_308;
  }

  switch(a1)
  {
    case 0x2C3:
      v2 = @"TimeAtHomeEvergreenGratitude";

      break;
    case 0x2C4:
      v2 = @"TimeAtHomeEvergreenResilience";

      break;
    case 0x2C5:
      v2 = @"TimeAtHomeEvergreenPurpose";

      return v2;
    default:
      goto LABEL_308;
  }

  return v2;
}

__CFString *BMMomentsEventDataEventBundleSummarizationGranularityAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E888A8[a1];
  }

  return v2;
}

_BYTE *BMMomentsEventDataAgeRangeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataAgeRangeTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_1307);
  if (result)
  {
    return *(&BMMomentsEventDataAgeRangeTypeFromString_sortedEnums + (((result - BMMomentsEventDataAgeRangeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataBiologicalSexTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataBiologicalSexTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1315);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMMomentsEventDataBiologicalSexTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEventDataOnboardingFlowCompletionFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEventDataOnboardingFlowCompletionFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_1883);
  if (result)
  {
    return *(&BMMomentsEventDataOnboardingFlowCompletionFromString_sortedEnums + (((result - BMMomentsEventDataOnboardingFlowCompletionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}