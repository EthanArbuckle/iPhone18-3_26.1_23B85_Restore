void *storeEnumTagSinglePayload for TicketedShowEntity(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 15) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

      return OUTLINED_FUNCTION_209_1(result, a2);
    }

    *(result + 136) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_209_1(result, a2);
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_5_14(uint64_t a1)
{

  return lazy protocol witness table accessor for type String? and conformance <A> A?(a1);
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t OUTLINED_FUNCTION_17_12()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  outlined consume of Data?(v3, v2);

  return outlined consume of Data?(v1, v0);
}

void OUTLINED_FUNCTION_33_9(uint64_t a1)
{
  outlined copy of Data?(a1, v1);

  JUMPOUT(0x25F899380);
}

void OUTLINED_FUNCTION_45_7(uint64_t a1, void *a2)
{
  v3 = a2[5];
  *(v2 - 104) = a2[4];
  *(v2 - 120) = v3;
  v5 = a2[6];
  v4 = a2[7];
}

void *OUTLINED_FUNCTION_46_8(void *result)
{
  v2 = result[5];
  *(v1 - 96) = result[4];
  *(v1 - 112) = v2;
  v4 = result[6];
  v3 = result[7];
  return result;
}

unint64_t OUTLINED_FUNCTION_47_9(uint64_t a1)
{

  return lazy protocol witness table accessor for type String? and conformance <A> A?(a1);
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1)
{
  outlined copy of Data?(a1, v3);
  outlined consume of Data?(v2, v1);

  return outlined consume of Data?(v4, v3);
}

uint64_t OUTLINED_FUNCTION_67_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    return a9;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_81_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_82_6@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of ResourceBundle?(v4, &a2 - a1, v3, v2);
}

void *OUTLINED_FUNCTION_91_5(void *result)
{
  *(v2 - 128) = v1;
  v10 = result[8];
  v9 = result[9];
  v8 = result[10];
  v7 = result[11];
  v6 = result[12];
  v3 = result[14];
  v4 = result[13];
  v5 = result[15];
  return result;
}

void OUTLINED_FUNCTION_94_4(uint64_t a1, void *a2)
{
  *(v3 - 136) = v2;
  v11 = a2[8];
  v10 = a2[9];
  v9 = a2[10];
  v8 = a2[11];
  v7 = a2[12];
  v6 = a2[13];
  v4 = a2[14];
  v5 = a2[15];
}

void *OUTLINED_FUNCTION_109_4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 128) = v2;
  *(v3 - 144) = a2;
  v4 = result[9];
  *(v3 - 160) = result[8];
  *(v3 - 176) = v4;
  v5 = result[11];
  *(v3 - 192) = result[10];
  *(v3 - 208) = v5;
  v6 = result[13];
  *(v3 - 224) = result[12];
  return result;
}

uint64_t OUTLINED_FUNCTION_110_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{

  return outlined copy of Data?(a12, a15);
}

uint64_t OUTLINED_FUNCTION_113_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{

  return outlined init with copy of ResourceBundle?(&STACK[0x288], &a63, v63, v64);
}

void *OUTLINED_FUNCTION_115_2(void *result)
{
  v8 = result[8];
  v7 = result[9];
  v6 = result[10];
  v5 = result[11];
  v4 = result[12];
  v3 = result[13];
  v2 = result[14];
  v1 = result[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_124_4()
{
  v2 = *(v0 + 8);

  return EntityProperty.wrappedValue.setter();
}

void OUTLINED_FUNCTION_130_4(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 - 136) = v2;
  *(v3 - 152) = a2;
  v4 = a1[9];
  *(v3 - 168) = a1[8];
  *(v3 - 184) = v4;
  v5 = a1[11];
  *(v3 - 200) = a1[10];
  *(v3 - 216) = v5;
  v7 = a1[12];
  v6 = a1[13];
}

uint64_t OUTLINED_FUNCTION_140_1(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ResourceBundle?(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_156_2(uint64_t a1, void *a2)
{
  v5 = a2[8];
  v4 = a2[9];
  v3 = a2[10];
  v2 = a2[11];
}

uint64_t OUTLINED_FUNCTION_161_1()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_162_2()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_163_1()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_165_2()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_169_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{

  return outlined destroy of IntentApplication?(&a63, v63, v64);
}

void *OUTLINED_FUNCTION_171_1()
{

  return memcpy(&STACK[0x608], (v0 + 128), 0x80uLL);
}

void *OUTLINED_FUNCTION_172_2(void *a1)
{

  return memcpy(a1, &STACK[0x7B8], 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_175_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_177_2()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_178_2(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_180_2()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ResourceBundle?(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_182_2()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_183_1(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

void OUTLINED_FUNCTION_187_2(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 312) = *(v2 + 24);
  v3 = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_193_2()
{
  v2 = *(v0 + 56);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_194_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_195_2()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_196_2()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_211_1(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_212_1()
{
  v2 = *(v0 + 8);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_213_1(uint64_t a1)
{

  return outlined init with copy of ResourceBundle?(a1, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_214_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

void OUTLINED_FUNCTION_216_1()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_217_1(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ResourceBundle?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_219_1()
{
  v2 = *(v0 + 80);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_220_1()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_221_1()
{
  v2 = *(v0 + 16);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_222_0()
{
  v2 = *(v0 + 24);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_223_1()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_224_1()
{
  v2 = *(v0 + 88);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_225_1()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_226_0()
{
  v2 = *v0;

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_262_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{

  return outlined copy of Data?(a10, a14);
}

uint64_t OUTLINED_FUNCTION_263_0()
{

  return type metadata accessor for LocalizedStringResource();
}

uint64_t OUTLINED_FUNCTION_264_0()
{

  return type metadata accessor for LocalizedStringResource();
}

uint64_t OUTLINED_FUNCTION_265_0()
{

  return type metadata accessor for LocalizedStringResource();
}

void *OUTLINED_FUNCTION_266(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&STACK[0x7C0], &a9, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_268()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_269()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_270()
{
  v2 = *(v0 + 64);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_271()
{
  v2 = *(v0 + 40);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_272()
{
  v2 = *(v0 + 48);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_273()
{
  v2 = *(v0 + 32);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_274()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_275()
{
  v2 = *(v0 - 336);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_276(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return outlined init with copy of ResourceBundle?(&STACK[0x288], &a36, a3, a4);
}

void *OUTLINED_FUNCTION_277(void *a1)
{

  return memcpy(a1, v1, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_278()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_280()
{
  v2 = *(v0 - 328);

  return EntityProperty.wrappedValue.setter();
}

void specialized CardDisplayable.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_46_9(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_14(v7, v49);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_16();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27 = *v1;
  _StringGuts.grow(_:)(16);
  OUTLINED_FUNCTION_55_5(0);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_52_6();

  v28 = MEMORY[0x25F89F6C0](0x7469746E65646920, 0xEE00647261632079);
  OUTLINED_FUNCTION_31_14(v28);

  v29._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  OUTLINED_FUNCTION_47_10();
  v30 = v1[22];
  v31 = v1[23];
  v32 = type metadata accessor for SFCard();
  v33 = OUTLINED_FUNCTION_35_11();
  if (!SFCard.init(data:)(v33, v34))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v35 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v35);
  if (v41)
  {
    outlined destroy of ResourceBundle?(v0, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v42 = OUTLINED_FUNCTION_64_4();
    v43(v42);
    v44 = OUTLINED_FUNCTION_14_9(v50);
    OUTLINED_FUNCTION_7_14(v44);
    DisplayRepresentation.init(title:subtitle:image:)();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_129_4();
  v39(v38);
  OUTLINED_FUNCTION_34_13();
  if (!v41 & v40)
  {
    goto LABEL_7;
  }

  v47 = OUTLINED_FUNCTION_64_4();
  v48(v47);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_15_12();
LABEL_8:
  v45 = OUTLINED_FUNCTION_23_10();
  v46(v45);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_46_9(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_14(v8, v49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_16();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27 = *v2;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_52_6();

  v28 = MEMORY[0x25F89F6C0](0x6472616320, 0xE500000000000000);
  OUTLINED_FUNCTION_31_14(v28);

  v29._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  OUTLINED_FUNCTION_47_10();
  v30 = v2[10];
  v31 = v2[11];
  v32 = type metadata accessor for SFCard();
  v33 = OUTLINED_FUNCTION_35_11();
  if (!SFCard.init(data:)(v33, v34))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v35 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v35);
  if (v41)
  {
    outlined destroy of ResourceBundle?(v1, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v42 = OUTLINED_FUNCTION_64_4();
    v43(v42);
    v44 = OUTLINED_FUNCTION_14_9(v0);
    OUTLINED_FUNCTION_7_14(v44);
    OUTLINED_FUNCTION_45_8();
    DisplayRepresentation.init(title:subtitle:image:)();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_129_4();
  v39(v38);
  OUTLINED_FUNCTION_34_13();
  if (!v41 & v40)
  {
    goto LABEL_7;
  }

  v47 = OUTLINED_FUNCTION_64_4();
  v48(v47);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_15_12();
LABEL_8:
  v45 = OUTLINED_FUNCTION_23_10();
  v46(v45);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_46_9(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_14(v8, v49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_16();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27 = *v2;
  OUTLINED_FUNCTION_55_5(0x20746867696C46);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_52_6();

  OUTLINED_FUNCTION_31_14(v28);

  v29._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  OUTLINED_FUNCTION_47_10();
  v30 = v2[25];
  v31 = v2[26];
  v32 = type metadata accessor for SFCard();
  v33 = OUTLINED_FUNCTION_35_11();
  if (!SFCard.init(data:)(v33, v34))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v35 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v35);
  if (v41)
  {
    outlined destroy of ResourceBundle?(v1, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v42 = OUTLINED_FUNCTION_64_4();
    v43(v42);
    v44 = OUTLINED_FUNCTION_14_9(v0);
    OUTLINED_FUNCTION_7_14(v44);
    OUTLINED_FUNCTION_45_8();
    DisplayRepresentation.init(title:subtitle:image:)();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_129_4();
  v39(v38);
  OUTLINED_FUNCTION_34_13();
  if (!v41 & v40)
  {
    goto LABEL_7;
  }

  v47 = OUTLINED_FUNCTION_64_4();
  v48(v47);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_15_12();
LABEL_8:
  v45 = OUTLINED_FUNCTION_23_10();
  v46(v45);
  OUTLINED_FUNCTION_148();
}

{
  specialized CardDisplayable.displayRepresentation.getter();
}

{
  specialized CardDisplayable.displayRepresentation.getter();
}

{
  OUTLINED_FUNCTION_155();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_95_3();
  memcpy(v50, v0, sizeof(v50));
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  v29._countAndFlagsBits = v4();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);

  v30._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  OUTLINED_FUNCTION_47_10();
  v31 = v50[14];
  type metadata accessor for SFCard();
  if (!OUTLINED_FUNCTION_30_11())
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v32 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v32);
  if (v38)
  {
    outlined destroy of ResourceBundle?(v2, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v39 = OUTLINED_FUNCTION_2_20(v24);
    v40(v39);
    OUTLINED_FUNCTION_14_9(v1);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    OUTLINED_FUNCTION_51_7();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v34 = *(v33 + 8);
  v35 = OUTLINED_FUNCTION_129_4();
  v36(v35);
  OUTLINED_FUNCTION_34_13();
  if (!v38 & v37)
  {
    goto LABEL_7;
  }

  v48 = OUTLINED_FUNCTION_2_20(v24);
  v49(v48);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_26_7();
LABEL_8:
  v45 = *(v24 + 8);
  v46 = OUTLINED_FUNCTION_30_5();
  v47(v46);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_14(v7, v54);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v55 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_109();
  v56 = v27 - v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_16();
  v30._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v0[8];
  _StringGuts.grow(_:)(30);

  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F8A0](v57, MEMORY[0x277D837D0]);

  v32 = OUTLINED_FUNCTION_34_11();
  MEMORY[0x25F89F6C0](v32);

  OUTLINED_FUNCTION_31_14(v33);

  v34._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
  OUTLINED_FUNCTION_47_10();
  v35 = v0[12];
  v36 = v0[13];
  v37 = type metadata accessor for SFCard();
  v38 = OUTLINED_FUNCTION_35_11();
  if (!SFCard.init(data:)(v38, v39))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v40 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v40);
  if (v46)
  {
    outlined destroy of ResourceBundle?(v2, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    (*(v24 + 16))(v56, v1, v21);
    OUTLINED_FUNCTION_14_9(v55);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    DisplayRepresentation.init(title:subtitle:image:)();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v42 = *(v41 + 8);
  v43 = OUTLINED_FUNCTION_129_4();
  v44(v43);
  OUTLINED_FUNCTION_34_13();
  if (!v46 & v45)
  {
    goto LABEL_7;
  }

  (*(v24 + 16))(v56, v1, v21);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_33_10();
  DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
LABEL_8:
  v51 = *(v24 + 8);
  v52 = OUTLINED_FUNCTION_30_5();
  v53(v52);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_13();
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_40_10();
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_95_3();
  memcpy(v48, v0, sizeof(v48));
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27._countAndFlagsBits = VehicleReservationEntity.description.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v27);

  v28._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  LocalizedStringResource.init(stringInterpolation:)();
  v29 = v48[17];
  type metadata accessor for SFCard();
  if (!OUTLINED_FUNCTION_30_11())
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v30 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v30);
  if (v36)
  {
    outlined destroy of ResourceBundle?(v2, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v37 = OUTLINED_FUNCTION_2_20(v22);
    v38(v37);
    OUTLINED_FUNCTION_14_9(v1);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    OUTLINED_FUNCTION_51_7();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v32 = *(v31 + 8);
  v33 = OUTLINED_FUNCTION_129_4();
  v34(v33);
  OUTLINED_FUNCTION_34_13();
  if (!v36 & v35)
  {
    goto LABEL_7;
  }

  v46 = OUTLINED_FUNCTION_2_20(v22);
  v47(v46);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_26_7();
LABEL_8:
  v43 = *(v22 + 8);
  v44 = OUTLINED_FUNCTION_30_5();
  v45(v44);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_13();
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_40_10();
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_95_3();
  memcpy(v48, v0, sizeof(v48));
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27._countAndFlagsBits = TicketedShowEntity.description.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v27);

  v28._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  LocalizedStringResource.init(stringInterpolation:)();
  v29 = v48[15];
  type metadata accessor for SFCard();
  if (!OUTLINED_FUNCTION_30_11())
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v30 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v30);
  if (v36)
  {
    outlined destroy of ResourceBundle?(v2, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v37 = OUTLINED_FUNCTION_2_20(v22);
    v38(v37);
    OUTLINED_FUNCTION_14_9(v1);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    OUTLINED_FUNCTION_51_7();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v32 = *(v31 + 8);
  v33 = OUTLINED_FUNCTION_129_4();
  v34(v33);
  OUTLINED_FUNCTION_34_13();
  if (!v36 & v35)
  {
    goto LABEL_7;
  }

  v46 = OUTLINED_FUNCTION_2_20(v22);
  v47(v46);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_26_7();
LABEL_8:
  v43 = *(v22 + 8);
  v44 = OUTLINED_FUNCTION_30_5();
  v45(v44);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_46_9(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_14(v7, v49);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_16();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27 = *v1;
  _StringGuts.grow(_:)(17);

  OUTLINED_FUNCTION_55_5(0x676E697070696853);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_52_6();

  OUTLINED_FUNCTION_31_14(v28);

  v29._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  OUTLINED_FUNCTION_47_10();
  v30 = v1[28];
  v31 = v1[29];
  v32 = type metadata accessor for SFCard();
  v33 = OUTLINED_FUNCTION_35_11();
  if (!SFCard.init(data:)(v33, v34))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v35 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v35);
  if (v41)
  {
    outlined destroy of ResourceBundle?(v0, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v42 = OUTLINED_FUNCTION_64_4();
    v43(v42);
    v44 = OUTLINED_FUNCTION_14_9(v50);
    OUTLINED_FUNCTION_7_14(v44);
    DisplayRepresentation.init(title:subtitle:image:)();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_129_4();
  v39(v38);
  OUTLINED_FUNCTION_34_13();
  if (!v41 & v40)
  {
    goto LABEL_7;
  }

  v47 = OUTLINED_FUNCTION_64_4();
  v48(v47);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_15_12();
LABEL_8:
  v45 = OUTLINED_FUNCTION_23_10();
  v46(v45);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_46_9(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_14(v8, v49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_13();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_27_9();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_16();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v2[6];
  OUTLINED_FUNCTION_55_5(0x203A746E657645);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_52_6();

  OUTLINED_FUNCTION_31_14(v28);

  v29._countAndFlagsBits = OUTLINED_FUNCTION_24();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  OUTLINED_FUNCTION_47_10();
  v30 = v2[15];
  v31 = v2[16];
  v32 = type metadata accessor for SFCard();
  v33 = OUTLINED_FUNCTION_35_11();
  if (!SFCard.init(data:)(v33, v34))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_7();

  v35 = type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_5_15(v35);
  if (v41)
  {
    outlined destroy of ResourceBundle?(v1, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
LABEL_7:
    v42 = OUTLINED_FUNCTION_64_4();
    v43(v42);
    v44 = OUTLINED_FUNCTION_14_9(v0);
    OUTLINED_FUNCTION_7_14(v44);
    OUTLINED_FUNCTION_45_8();
    DisplayRepresentation.init(title:subtitle:image:)();
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_3_21();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_129_4();
  v39(v38);
  OUTLINED_FUNCTION_34_13();
  if (!v41 & v40)
  {
    goto LABEL_7;
  }

  v47 = OUTLINED_FUNCTION_64_4();
  v48(v47);
  static RGPluginModel.bundleName.getter();
  OUTLINED_FUNCTION_15_12();
LABEL_8:
  v45 = OUTLINED_FUNCTION_23_10();
  v46(v45);
  OUTLINED_FUNCTION_148();
}

uint64_t specialized CardDisplayable.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v36 - v22;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  v25._countAndFlagsBits = 0x525520616964654DLL;
  v25._object = 0xEE006D657469204CLL;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  LocalizedStringResource.init(stringInterpolation:)();
  type metadata accessor for SFCard();
  v28 = *(v1 + 32);
  v27 = *(v1 + 40);
  outlined copy of Data?(v28, v27);
  v29 = SFCard.init(data:)(v28, v27);
  if (v29)
  {
    v30 = v29;
    SFCard.snippetPluginModel.getter(v13);

    v31 = type metadata accessor for RGPluginModel();
    if (__swift_getEnumTagSinglePayload(v13, 1, v31) == 1)
    {
      outlined destroy of ResourceBundle?(v13, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    }

    else
    {
      lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
      SnippetPluginModel.data.getter();
      v33 = v32;
      (*(*(v31 - 8) + 8))(v13, v31);
      if (v33 >> 60 != 15)
      {
        (*(v17 + 16))(v21, v23, v16);
        static RGPluginModel.bundleName.getter();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        return (*(v17 + 8))(v23, v16);
      }
    }
  }

  (*(v17 + 16))(v21, v23, v16);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  v34 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v34);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v17 + 8))(v23, v16);
}

uint64_t MediaEntity.id.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path getter for MediaEntity.id : MediaEntity@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  result = MediaEntity.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MediaEntity.id : MediaEntity(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[4];
  v5 = a2[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];

  outlined copy of Data?(v4, v5);
  MediaEntity.id.setter();

  return outlined consume of Data?(v4, v5);
}

uint64_t (*MediaEntity.id.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t MediaEntity.experienceFile.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 8);
  OUTLINED_FUNCTION_39_9();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_50_6();
}

uint64_t (*MediaEntity.experienceFile.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void key path setter for MediaEntity.experienceFile : MediaEntity()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v9, v22 - v14, v5, v3);
  v16 = *v7;
  v17 = v7[1];
  v18 = v7[2];
  v19 = v7[3];
  v21 = v7[4];
  v20 = v7[5];
  v22[0] = v16;
  v22[1] = v17;
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v21;
  v22[5] = v20;

  outlined copy of Data?(v21, v20);
  v1(v15);

  outlined consume of Data?(v21, v20);
  OUTLINED_FUNCTION_148();
}

uint64_t MediaEntity.url.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_39_9();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_50_6();
}

uint64_t (*MediaEntity.url.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for MediaEntity.experienceFile : MediaEntity(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  return a4(a1, a2, a3, a4, a5, a6);
}

uint64_t MediaEntity.audioResults.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_39_9();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_50_6();
}

uint64_t (*MediaEntity.audioResults.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

void MediaEntity.init(id:url:experienceFile:audioResults:)()
{
  OUTLINED_FUNCTION_155();
  v41 = v1;
  v42 = v2;
  v39 = v3;
  v40 = v4;
  v38 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v36 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_109();
  v37 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_95_3();
  v24 = type metadata accessor for LocalizedStringResource();
  v25 = OUTLINED_FUNCTION_114(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *v7 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_38_10();
  LocalizedStringResource.init(stringLiteral:)();
  *(v7 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v7 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_35_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(v7 + 24) = EntityProperty<>.init(title:)();
  *(v7 + 32) = xmmword_25DBC9410;
  v43 = v38;
  v44 = v39;
  EntityProperty.wrappedValue.setter();
  v28 = v40;
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v40, v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_45_8();
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v29, v30, v31, &_s10Foundation3URLVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of ResourceBundle?(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = v41;
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v41, v16, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v33 = v36;
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v16, v36, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of ResourceBundle?(v16, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v34 = v42;
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v42, v16, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v16, v33, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of ResourceBundle?(v34, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  outlined destroy of ResourceBundle?(v32, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  outlined destroy of ResourceBundle?(v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResourceBundle?(v16, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t MediaEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_38_10();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_35_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 24) = EntityProperty<>.init(title:)();
  *(a1 + 32) = xmmword_25DBC9410;
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*static MediaEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static MediaEntity.typeDisplayRepresentation);
  OUTLINED_FUNCTION_57_5();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static MediaEntity.typeDisplayRepresentation : MediaEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = MediaEntity.typeDisplayRepresentation.unsafeMutableAddressor(&one-time initialization token for typeDisplayRepresentation, MEMORY[0x277CBA3A0], static MediaEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static MediaEntity.typeDisplayRepresentation : MediaEntity.Type(uint64_t a1)
{
  v2 = MediaEntity.typeDisplayRepresentation.unsafeMutableAddressor(&one-time initialization token for typeDisplayRepresentation, MEMORY[0x277CBA3A0], static MediaEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t MediaEntity.cardData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t MediaEntity.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance MediaEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance MediaEntity@<X0>(uint64_t *a1@<X8>)
{
  result = MediaEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation.getter in conformance MediaEntity@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return specialized CardDisplayable.displayRepresentation.getter(a1);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance MediaEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance MediaEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t one-time initialization function for searchToolExportedMedia()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.searchToolExportedMedia);
  __swift_project_value_buffer(v4, static UTType.searchToolExportedMedia);
  static UTType.data.getter();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t MediaEntity.typeDisplayRepresentation.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static MediaEntity.typeDisplayRepresentation.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  OUTLINED_FUNCTION_51(v7);
  return (*(v9 + 16))(a4, v8, v7);
}

uint64_t static MediaEntity.typeDisplayRepresentation.setter(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  v8 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static UTType.searchToolExportedMedia.modify())()
{
  if (one-time initialization token for searchToolExportedMedia != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  v0 = type metadata accessor for UTType();
  __swift_project_value_buffer(v0, static UTType.searchToolExportedMedia);
  OUTLINED_FUNCTION_57_5();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

void *MediaEntity.exportedData()()
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_10();
  v66 = type metadata accessor for URL();
  v7 = OUTLINED_FUNCTION_14(v66);
  v61 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v60 = v12 - v11;
  v13 = type metadata accessor for IntentFile();
  v14 = OUTLINED_FUNCTION_14(v13);
  v63 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v29 = *v0;
  v28 = v0[1];
  v30 = v0[3];
  v62 = v0[2];
  v64 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  EntityProperty.wrappedValue.getter();
  v32 = v69;
  v33 = v70;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v32;
  *(inited + 56) = v33;
  v34 = Dictionary.init(dictionaryLiteral:)();
  v35 = v13;
  EntityProperty.wrappedValue.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v13);
  v65 = v20;
  if (EnumTagSinglePayload)
  {
    outlined destroy of ResourceBundle?(v27, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v37 = v63;
  }

  else
  {
    v38 = v63;
    (*(v63 + 16))(v20, v27, v13);
    outlined destroy of ResourceBundle?(v27, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v39 = IntentFile.data.getter();
    v41 = v40;
    (*(v38 + 8))(v20, v13);
    v71 = MEMORY[0x277CC9318];
    v69 = v39;
    v70 = v41;
    v35 = v13;
    OUTLINED_FUNCTION_53_6();
    v67 = v34;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, 0x6E65697265707865, 0xEE00617461446563);
    v34 = v67;
    v37 = v38;
  }

  EntityProperty.wrappedValue.getter();
  v42 = v66;
  if (__swift_getEnumTagSinglePayload(v2, 1, v66) == 1)
  {
    outlined destroy of ResourceBundle?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v43 = v61;
    v44 = v60;
    (*(v61 + 32))(v60, v2, v42);
    v71 = v42;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v69);
    (*(v43 + 16))(boxed_opaque_existential_1Tm, v44, v42);
    OUTLINED_FUNCTION_53_6();
    v67 = v34;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, 7107189, 0xE300000000000000);
    v34 = v67;
    (*(v43 + 8))(v44, v42);
  }

  v46 = v65;
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v35))
  {
    outlined destroy of ResourceBundle?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  }

  else
  {
    (*(v37 + 16))(v46, v1, v35);
    outlined destroy of ResourceBundle?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v47 = IntentFile.data.getter();
    v48 = v35;
    v49 = v47;
    v51 = v50;
    (*(v37 + 8))(v46, v48);
    v71 = MEMORY[0x277CC9318];
    v69 = v49;
    v70 = v51;
    OUTLINED_FUNCTION_53_6();
    v67 = v34;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, 0x7365526F69647561, 0xEC00000073746C75);
  }

  v52 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = 0;
  v54 = [v52 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v69];

  v55 = v69;
  if (v54)
  {
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v56 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

uint64_t MediaEntity.exportedUrl()()
{
  v2 = type metadata accessor for URL();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_59_4();
  v15 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    outlined destroy of ResourceBundle?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    v17 = *(v5 + 16);
    v18 = OUTLINED_FUNCTION_34_11();
    v19(v18);
    outlined destroy of ResourceBundle?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v16 = URL.dataRepresentation.getter();
    (*(v5 + 8))(v10, v2);
  }

  return v16;
}

void *MediaEntity.intentFile.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59_4();
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  result = MediaEntity.exportedData()();
  if (!v2)
  {
    _StringGuts.grow(_:)(19);

    EntityProperty.wrappedValue.getter();
    MEMORY[0x25F89F6C0]();

    MEMORY[0x25F89F6C0](0x617461642ELL, 0xE500000000000000);
    if (one-time initialization token for searchToolExportedMedia != -1)
    {
      OUTLINED_FUNCTION_10_13();
      swift_once();
    }

    v10 = type metadata accessor for UTType();
    v11 = __swift_project_value_buffer(v10, static UTType.searchToolExportedMedia);
    swift_beginAccess();
    OUTLINED_FUNCTION_51(v10);
    (*(v12 + 16))(v3, v11, v10);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
    IntentFile.init(data:filename:type:)();
    v13 = type metadata accessor for IntentFile();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
  }

  return result;
}

void static MediaEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v45 = v0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch11MediaEntityVG_AA020_ConditionalTransferD0VyAGGtMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch11MediaEntityVG_AA020_ConditionalTransferD0VyAGGtMR);
  OUTLINED_FUNCTION_51(v44);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_49_3();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10OmniSearch11MediaEntityVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10OmniSearch11MediaEntityVGGMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  v42 = v8;
  v43 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for UTType();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch11MediaEntityVGMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch11MediaEntityVGMR);
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_109();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v41 - v33;
  if (one-time initialization token for searchToolExportedMedia != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  v35 = __swift_project_value_buffer(v14, static UTType.searchToolExportedMedia);
  swift_beginAccess();
  (*(v17 + 16))(v22, v35, v14);
  lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
  OUTLINED_FUNCTION_58_4();
  static UTType.url.getter();
  OUTLINED_FUNCTION_58_4();
  lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type DataRepresentation<MediaEntity> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10OmniSearch11MediaEntityVGMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch11MediaEntityVGMR);
  TransferRepresentation.exportingCondition(_:)();
  v36 = *(v26 + 8);
  v36(v31, v23);
  v37 = *(v44 + 48);
  (*(v26 + 16))(v5, v34, v23);
  v38 = v42;
  v39 = v5 + v37;
  v40 = v43;
  (*(v42 + 16))(v39, v13, v43);
  TupleTransferRepresentation.init(_:)();
  (*(v38 + 8))(v13, v40);
  v36(v34, v23);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in static MediaEntity.transferRepresentation.getter(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v1[3] = a1[2];
  return MEMORY[0x2822009F8](closure #1 in static MediaEntity.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static MediaEntity.transferRepresentation.getter()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v1 = MediaEntity.exportedData()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #2 in static MediaEntity.transferRepresentation.getter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *(a1 + 16);
  v1[5] = v7;
  v1[6] = v8;

  return MEMORY[0x2822009F8](closure #2 in static MediaEntity.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static MediaEntity.transferRepresentation.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  EntityProperty.wrappedValue.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[5];
  if (EnumTagSinglePayload)
  {
    outlined destroy of ResourceBundle?(v0[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = 0;
    v7 = 0xC000000000000000;
  }

  else
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    (*(v9 + 16))(v8, v0[5], v10);
    outlined destroy of ResourceBundle?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = URL.dataRepresentation.getter();
    v7 = v11;
    (*(v9 + 8))(v8, v10);
  }

  v13 = v0[4];
  v12 = v0[5];

  v14 = v0[1];

  return v14(v6, v7);
}

BOOL closure #3 in static MediaEntity.transferRepresentation.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(a1 + 16);
  EntityProperty.wrappedValue.getter();
  v7 = type metadata accessor for URL();
  v8 = __swift_getEnumTagSinglePayload(v5, 1, v7) != 1;
  outlined destroy of ResourceBundle?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v8;
}

unint64_t instantiation function for generic protocol witness table for MediaEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel()
{
  result = lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel;
  if (!lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel)
  {
    type metadata accessor for RGPluginModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(*(v2 - 128), 1, 1, a1);
  v3 = *(v2 - 120);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);

  return type metadata accessor for DisplayRepresentation.Image();
}

uint64_t OUTLINED_FUNCTION_15_12()
{
  v2 = *(v0 - 120);

  return DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_17_13()
{

  return type metadata accessor for String.LocalizationValue.StringInterpolation();
}

uint64_t OUTLINED_FUNCTION_22_10()
{
  if (*(v0 - 104))
  {
    return *(v0 - 112);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return SnippetPluginModel.data.getter();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return type metadata accessor for LocalizedStringResource();
}

id OUTLINED_FUNCTION_30_11()
{
  outlined copy of Data?(v0, v1);

  return SFCard.init(data:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_39_9()
{

  return _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return SFCard.snippetPluginModel.getter(v0);
}

uint64_t OUTLINED_FUNCTION_47_10()
{

  return LocalizedStringResource.init(stringInterpolation:)();
}

uint64_t OUTLINED_FUNCTION_50_6()
{

  return outlined destroy of ResourceBundle?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

void OUTLINED_FUNCTION_52_6()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_53_6()
{
  outlined init with take of Any((v0 - 208), (v0 - 240));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_4()
{

  return DataRepresentation.init(exportedContentType:exporting:)();
}

OmniSearch::SourceDocument __swiftcall SourceDocument.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t SourceDocument.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SourceDocument.typeDisplayRepresentation);
}

uint64_t static SourceDocument.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SourceDocument.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SourceDocument.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SourceDocument.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t (*static SourceDocument.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SourceDocument.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SourceDocument.typeDisplayRepresentation : SourceDocument.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SourceDocument.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SourceDocument.typeDisplayRepresentation : SourceDocument.Type(uint64_t a1)
{
  v2 = SourceDocument.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SourceDocument.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SourceDocument.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SourceDocument.documentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t SourceDocument.documentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

OmniSearch::SourceDocument __swiftcall SourceDocument.init(bundleId:documentId:)(Swift::String_optional bundleId, Swift::String_optional documentId)
{
  *v2 = bundleId;
  v2[1] = documentId;
  result.documentId = documentId;
  result.bundleId = bundleId;
  return result;
}

uint64_t static SourceDocument.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_94();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t SourceDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEA00000000006449)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t SourceDocument.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E656D75636F64;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SourceDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SourceDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SourceDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SourceDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SourceDocument.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch14SourceDocumentV10CodingKeys33_05E01F74D0886D7F15C2C8FCDF6F4ACFLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch14SourceDocumentV10CodingKeys33_05E01F74D0886D7F15C2C8FCDF6F4ACFLLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v18 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t lazy protocol witness table accessor for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys);
  }

  return result;
}

uint64_t SourceDocument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch14SourceDocumentV10CodingKeys33_05E01F74D0886D7F15C2C8FCDF6F4ACFLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch14SourceDocumentV10CodingKeys33_05E01F74D0886D7F15C2C8FCDF6F4ACFLLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SourceDocument.CodingKeys and conformance SourceDocument.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v19 = *(v7 + 8);
    v22 = v16;
    v20 = OUTLINED_FUNCTION_45_0();
    v21(v20);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v22;
    a2[3] = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type SourceDocument and conformance SourceDocument()
{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument;
  if (!lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocument and conformance SourceDocument);
  }

  return result;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SourceDocument(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SourceDocument and conformance SourceDocument();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SourceDocument()
{
  lazy protocol witness table accessor for type SourceDocument and conformance SourceDocument();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SourceDocument(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SourceDocument and conformance SourceDocument();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SourceDocument(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SourceDocument and conformance SourceDocument();

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SourceDocument(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SourceDocument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SourceDocument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t (*SearchAnswerEntity.answer.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.dialog.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAnswerEntity.dialog.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.requestedProperties.getter()
{
  v1 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAnswerEntity.requestedProperties.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.sources.getter()
{
  v1 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAnswerEntity.sources.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.documentSources.getter()
{
  v1 = *(v0 + 32);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAnswerEntity.documentSources.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.title.getter()
{
  v1 = *(v0 + 40);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAnswerEntity.title.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.experienceFile.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_90_0();
  v9 = *(v1 + 48);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentApplication?(a1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchAnswerEntity.experienceFile.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.experienceSourceType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D37060];
  v3 = type metadata accessor for SearchResultType();
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t key path setter for SearchAnswerEntity.experienceFile : SearchAnswerEntity(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_9();
  outlined init with copy of ResourceBundle?(a1, v5, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v14, a2, sizeof(v14));
  outlined init with copy of SearchAnswerEntity(v14, v15);
  a5(v5);
  memcpy(v15, a2, sizeof(v15));
  return outlined destroy of SearchAnswerEntity(v15);
}

uint64_t SearchAnswerEntity.pommesContextFile.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_90_0();
  v9 = *(v1 + 56);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentApplication?(a1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchAnswerEntity.pommesContextFile.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.globalSearchSummary.getter()
{
  v1 = *(v0 + 64);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAnswerEntity.globalSearchSummary.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchAnswerEntity.description.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAnswerEntity.dialog : SearchAnswerEntity(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_61_6(a1, a2, a3, a4, a5, a6, a7, a8, v19[0]);

  outlined init with copy of SearchAnswerEntity(v19, v20);
  v9 = OUTLINED_FUNCTION_34_11();
  v10 = v8(v9);
  OUTLINED_FUNCTION_59_6(v10, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v20[0]);
  return outlined destroy of SearchAnswerEntity(v20);
}

uint64_t (*SearchAnswerEntity.description.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.documentSource.getter()
{
  v1 = *(v0 + 80);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAnswerEntity.answer : SearchAnswerEntity(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_61_6(a1, a2, a3, a4, a5, a6, a7, a8, v19[0]);

  outlined init with copy of SearchAnswerEntity(v19, v20);
  v9 = OUTLINED_FUNCTION_34_11();
  v10 = v8(v9);
  OUTLINED_FUNCTION_59_6(v10, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v20[0]);
  return outlined destroy of SearchAnswerEntity(v20);
}

uint64_t (*SearchAnswerEntity.documentSource.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAnswerEntity.answer.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

void SearchAnswerEntity.sourceResults.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v8 = type metadata accessor for SearchResult(0);
  v9 = OUTLINED_FUNCTION_14(v8);
  v44 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v45 = v13;
  v14 = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for SearchEntity(v14);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  v21 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  v22 = *(v46 + 16);
  if (v22)
  {
    v23 = *(v15 + 84);
    v24 = *(v18 + 80);
    OUTLINED_FUNCTION_79();
    v43[1] = v25;
    v27 = v25 + v26;
    v28 = *(v18 + 72);
    v29 = MEMORY[0x277D84F90];
    v43[2] = v8;
    do
    {
      OUTLINED_FUNCTION_32_13();
      outlined init with copy of SearchEntity(v27, v1, v30);
      outlined init with copy of ResourceBundle?(v1 + v23, v7, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      OUTLINED_FUNCTION_4_18();
      outlined destroy of SearchEntity();
      OUTLINED_FUNCTION_10_2(v7);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_94();
        outlined destroy of IntentApplication?(v32, v33, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v7, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
          v29 = v41;
        }

        v36 = *(v29 + 16);
        v35 = *(v29 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v29);
          v29 = v42;
        }

        *(v29 + 16) = v36 + 1;
        v37 = *(v44 + 80);
        OUTLINED_FUNCTION_79();
        outlined init with take of SearchResult(v40, v29 + v38 + *(v39 + 72) * v36);
      }

      v27 += v28;
      --v22;
    }

    while (v22);
  }

  OUTLINED_FUNCTION_148();
}

id SearchAnswerEntity.card.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  type metadata accessor for SFCard();
  v3 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v3, v4);
  v5 = OUTLINED_FUNCTION_94();
  return SFCard.init(data:)(v5, v6);
}

uint64_t key path setter for SearchAnswerEntity.card : SearchAnswerEntity(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return SearchAnswerEntity.card.setter(v1);
}

uint64_t SearchAnswerEntity.card.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = SFCard.data.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  result = outlined consume of Data?(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = v4;
  *(v2 + 96) = v6;
  return result;
}

void (*SearchAnswerEntity.card.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  v4 = *(v1 + 88);
  v3 = *(v1 + 96);
  type metadata accessor for SFCard();
  outlined copy of Data?(v4, v3);
  *a1 = SFCard.init(data:)(v4, v3);
  return SearchAnswerEntity.card.modify;
}

void SearchAnswerEntity.card.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_6(a1);
  if (v3)
  {
    v14 = v2;
    if (v2)
    {
      v4 = v2;
      v5 = SFCard.data.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xF000000000000000;
    }

    v12 = *(v1 + 8);
    outlined consume of Data?(*(v12 + 88), *(v12 + 96));
    *(v12 + 88) = v5;
    *(v12 + 96) = v7;
  }

  else
  {
    if (v2)
    {
      v8 = v2;
      v9 = SFCard.data.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v13 = *(v1 + 8);
    outlined consume of Data?(*(v13 + 88), *(v13 + 96));
    *(v13 + 88) = v9;
    *(v13 + 96) = v11;
  }
}

void SearchAnswerEntity.init()()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for UUID();
  v2 = OUTLINED_FUNCTION_14(v1);
  v18 = v3;
  v19 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_79_5();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_79_5();
  *(v0 + 8) = OUTLINED_FUNCTION_65_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_11_14();
  lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(v13);
  *(v0 + 16) = OUTLINED_FUNCTION_78_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMR);
  OUTLINED_FUNCTION_23_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_14();
  lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(v14);
  *(v0 + 24) = OUTLINED_FUNCTION_78_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_49_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 40) = OUTLINED_FUNCTION_65_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_21_10();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_14();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_21_10();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_16_14();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  *(v0 + 88) = xmmword_25DBC9410;
  *(v0 + 104) = 0;
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 128) = EntityProperty<>.init(title:)();
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v18 + 8))(v8, v19);
  *(v0 + 112) = v15;
  *(v0 + 120) = v17;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchAnswerEntity.validateParameters()()
{
  memcpy(__dst, v0, 0x88uLL);
  EntityProperty.wrappedValue.getter();

  v1 = HIBYTE(v14[1]) & 0xFLL;
  if ((v14[1] & 0x2000000000000000) == 0)
  {
    v1 = v14[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logging.search);
    outlined init with copy of SearchAnswerEntity(__dst, v14);
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    outlined destroy of SearchAnswerEntity(__dst);
    if (!os_log_type_enabled(v5, v9))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    __dst[18] = v10;
    *v7 = 136315138;
    memcpy(v14, __dst, sizeof(v14));
    outlined init with copy of SearchAnswerEntity(__dst, v13);
    String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25D85C000, v5, v9, "SearchAnswerEntity missing required answer field: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8A1050](v10, -1, -1);
    goto LABEL_14;
  }

  EntityProperty.wrappedValue.getter();
  v2 = *(v14[0] + 16);

  if (!v2)
  {
    EntityProperty.wrappedValue.getter();
    v3 = *(v14[0] + 16);

    if (!v3)
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logging.search);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_51_5();
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25D85C000, v5, v6, "SearchAnswerEntity missing sources and has no requestedProperties", v7, 2u);
LABEL_14:
      MEMORY[0x25F8A1050](v7, -1, -1);
LABEL_15:

      lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
      swift_allocError();
      *v12 = xmmword_25DBC9A70;
      swift_willThrow();
    }
  }
}

void SearchAnswerEntity.init(_:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SearchAnswerEntity.Builder();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  *(v11 + 6) = 0;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *v11 = 0u;
  v12 = v5[10];
  v13 = type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = v5[11];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  *&v11[v5[12]] = MEMORY[0x277D84F90];
  *&v11[v5[13]] = 0;
  v21 = &v11[v5[14]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v11[v5[15]];
  *v22 = 0;
  v22[1] = 0;
  v11[v5[16]] = 0;
  v23 = &v11[v5[17]];
  *v23 = 0;
  v23[1] = 0;
  v1(v11);
  outlined init with copy of SearchEntity(v11, v9, type metadata accessor for SearchAnswerEntity.Builder);
  SearchAnswerEntity.init(builder:)();
  OUTLINED_FUNCTION_13_9();
  outlined destroy of SearchEntity();
  memcpy(v26, v25, sizeof(v26));
  v24 = _s10OmniSearch0B7ContextVSgWOg(v26);
  memcpy(v3, v25, 0x88uLL);
  if (v24 != 1)
  {
    _s10OmniSearch11GeoLocationVSgWOi_(v3);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t SearchAnswerEntity.Builder.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchAnswerEntity.Builder();
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v2 = v1[8];
  v3 = type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = v1[9];
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  *(v0 + v1[10]) = MEMORY[0x277D84F90];
  *(v0 + v1[11]) = 0;
  v12 = (v0 + v1[12]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + v1[13]);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + v1[14]) = 0;
  v14 = (v0 + v1[15]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

void SearchAnswerEntity.init(builder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v133 = &v109 - v8;
  v9 = OUTLINED_FUNCTION_78_0();
  v132 = type metadata accessor for SearchEntity(v9);
  v10 = OUTLINED_FUNCTION_14(v132);
  v118 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v134 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  v131 = v19;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v20);
  v22 = &v109 - v21;
  v23 = type metadata accessor for LocalizedStringResource();
  v24 = OUTLINED_FUNCTION_114(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_79_5();
  v127 = OUTLINED_FUNCTION_65_7();
  LOBYTE(v27) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_79_5();
  v126 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_11_14();
  lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(v28);
  v128 = OUTLINED_FUNCTION_78_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMR);
  OUTLINED_FUNCTION_23_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_14();
  lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(v29);
  v130 = OUTLINED_FUNCTION_78_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v123 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_49_11();
  LocalizedStringResource.init(stringLiteral:)();
  v120 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_21_10();
  v125 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_14();
  LocalizedStringResource.init(stringLiteral:)();
  v129 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v122 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_21_10();
  v121 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_16_14();
  LocalizedStringResource.init(stringLiteral:)();
  v124 = OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v30 = EntityProperty<>.init(title:)();
  v31 = v1[1];
  if (v31)
  {
    v27 = v1[3];
    if (v27)
    {
      v119 = v3;
      v117 = *v1;
      v32 = v1[2];
      v33 = MEMORY[0x277D84F90];
      if (v1[6])
      {
        v33 = v1[6];
      }

      v138[0] = v33;

      EntityProperty.wrappedValue.setter();
      v34 = type metadata accessor for SearchAnswerEntity.Builder();
      v35 = *(v1 + v34[10]);
      v138[0] = v35;

      EntityProperty.wrappedValue.setter();
      EntityProperty.wrappedValue.getter();
      v36 = *(v138[0] + 16);

      if (v36 || (EntityProperty.wrappedValue.getter(), v37 = *(v138[0] + 16), , v37))
      {
        v110 = v35;
        v112 = v30;
        v116 = v31;
        OUTLINED_FUNCTION_75_4(v34[8]);
        v38 = v32;
        v39 = v131;
        outlined init with copy of ResourceBundle?(v22, v131, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        EntityProperty.wrappedValue.setter();
        outlined destroy of IntentApplication?(v22, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        OUTLINED_FUNCTION_75_4(v34[9]);
        outlined init with copy of ResourceBundle?(v22, v39, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        EntityProperty.wrappedValue.setter();
        outlined destroy of IntentApplication?(v22, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        v138[0] = v38;
        v138[1] = v27;
        EntityProperty.wrappedValue.setter();
        v111 = v34;
        v40 = *(v1 + v34[11]);
        if (v40)
        {
          v41 = v40;
          v42 = SFCard.data.getter();
          v114 = v43;
          v115 = v42;
        }

        else
        {
          v114 = 0xF000000000000000;
          v115 = 0;
        }

        v53 = v110;
        outlined consume of Data?(0, 0xF000000000000000);
        v54 = *(v53 + 16);
        v55 = MEMORY[0x277D84F90];
        v113 = v1;
        if (v54)
        {
          v138[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
          v131 = type metadata accessor for LocalIndexClient();
          v55 = v138[0];
          v56 = *(v118 + 80);
          OUTLINED_FUNCTION_79();
          v58 = v53 + v57;
          v60 = *(v59 + 72);
          do
          {
            OUTLINED_FUNCTION_32_13();
            v61 = v134;
            outlined init with copy of SearchEntity(v58, v134, v62);
            v63 = v133;
            outlined init with copy of ResourceBundle?(v61 + *(v132 + 84), v133, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
            v64 = type metadata accessor for SearchResult(0);
            if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
            {
              outlined destroy of IntentApplication?(v63, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
              v65 = 0;
              v66 = 0;
            }

            else
            {
              v67 = *(v64 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
              v68 = CodableNSSecureCoding.wrappedValue.getter();
              OUTLINED_FUNCTION_0_30();
              outlined destroy of SearchEntity();
              v65 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v68);
              v66 = v69;
            }

            v70 = static LocalIndexClient.displayName(for:)(v65, v66);
            v72 = v71;

            if (v72)
            {
              v73 = v70;
            }

            else
            {
              v73 = 0;
            }

            if (!v72)
            {
              v72 = 0xE000000000000000;
            }

            outlined destroy of SearchEntity();
            v138[0] = v55;
            v75 = *(v55 + 16);
            v74 = *(v55 + 24);
            if (v75 >= v74 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1);
              v55 = v138[0];
            }

            *(v55 + 16) = v75 + 1;
            v76 = v55 + 16 * v75;
            *(v76 + 32) = v73;
            *(v76 + 40) = v72;
            v58 += v60;
            --v54;
          }

          while (v54);
          v1 = v113;
        }

        v138[0] = v55;
        v77 = v123;
        EntityProperty.wrappedValue.setter();
        v78 = v77;
        EntityProperty.wrappedValue.getter();
        v79 = v111;
        if (*(v138[0] + 16))
        {
          v81 = *(v138[0] + 32);
          v80 = *(v138[0] + 40);
        }

        else
        {
          v81 = 0;
          v80 = 0xE000000000000000;
        }

        v138[0] = v81;
        v138[1] = v80;
        EntityProperty.wrappedValue.setter();
        v82 = v1[5];
        v138[0] = v1[4];
        v138[1] = v82;

        v83 = v120;
        EntityProperty.wrappedValue.setter();
        v84 = (v1 + v79[12]);
        v85 = v84[1];
        v138[0] = *v84;
        v138[1] = v85;

        v86 = v122;
        EntityProperty.wrappedValue.setter();
        v87 = (v1 + v79[13]);
        v88 = v87[1];
        v138[0] = *v87;
        v138[1] = v88;

        v89 = v121;
        EntityProperty.wrappedValue.setter();
        v90 = v79[15];
        v91 = *(v1 + v79[14]);
        v92 = *(v1 + v90 + 8);
        v138[0] = *(v1 + v90);
        v138[1] = v92;

        v93 = v126;
        EntityProperty.wrappedValue.setter();
        v94 = v127;
        v138[0] = v127;
        v138[1] = v93;
        v138[2] = v128;
        v138[3] = v130;
        v138[4] = v78;
        v138[5] = v83;
        v95 = v83;
        v138[6] = v125;
        v96 = v125;
        v138[7] = v129;
        v138[8] = v86;
        v97 = v86;
        v138[9] = v89;
        v138[10] = v124;
        v138[11] = v115;
        v138[12] = v114;
        LOBYTE(v86) = v91;
        LOBYTE(v138[13]) = v91;
        *(&v138[13] + 1) = v139[0];
        HIDWORD(v138[13]) = *(v139 + 3);
        v138[14] = v117;
        v138[15] = v116;
        v98 = v128;
        v99 = v112;
        v138[16] = v112;
        SearchAnswerEntity.validTypeIdentifiers.getter();
        v137[0] = v100;
        EntityProperty.wrappedValue.setter();
        OUTLINED_FUNCTION_13_9();
        outlined destroy of SearchEntity();
        v136[0] = v94;
        v136[1] = v126;
        v136[2] = v98;
        v136[3] = v130;
        v136[4] = v78;
        v136[5] = v95;
        v136[6] = v96;
        v136[7] = v129;
        v101 = v121;
        v136[8] = v97;
        v136[9] = v121;
        v102 = v124;
        v103 = v114;
        v104 = v115;
        v136[10] = v124;
        v136[11] = v115;
        v136[12] = v114;
        LOBYTE(v136[13]) = v86;
        *(&v136[13] + 1) = v139[0];
        HIDWORD(v136[13]) = *(v139 + 3);
        v106 = v116;
        v105 = v117;
        v136[14] = v117;
        v136[15] = v116;
        v136[16] = v99;
        memcpy(v137, v136, sizeof(v137));
        _s10OmniSearch11GeoLocationVSgWOi_(v137);
        memcpy(v119, v137, 0x88uLL);
        v138[0] = v127;
        v138[1] = v126;
        v138[2] = v128;
        v138[3] = v130;
        v138[4] = v123;
        v138[5] = v95;
        v138[6] = v125;
        v138[7] = v129;
        v138[8] = v122;
        v138[9] = v101;
        v138[10] = v102;
        v138[11] = v104;
        v138[12] = v103;
        LOBYTE(v138[13]) = v86;
        *(&v138[13] + 1) = v139[0];
        HIDWORD(v138[13]) = *(v139 + 3);
        v138[14] = v105;
        v138[15] = v106;
        v138[16] = v99;
        outlined init with copy of SearchAnswerEntity(v136, &v135);
        outlined destroy of SearchAnswerEntity(v138);
        goto LABEL_41;
      }

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, static Logging.search);
      v45 = Logger.logObject.getter();
      v108 = static os_log_type_t.fault.getter();
      if (!OUTLINED_FUNCTION_4_11(v108))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_51_5();
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = "SearchAnswerEntity has empty sources and no requested properties";
    }

    else
    {
      v49 = one-time initialization token for search;
      v50 = v1[1];

      if (v49 != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logging.search);
      v45 = Logger.logObject.getter();
      v52 = static os_log_type_t.fault.getter();
      if (!OUTLINED_FUNCTION_4_11(v52))
      {
        goto LABEL_19;
      }

      v119 = v3;
      OUTLINED_FUNCTION_51_5();
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = "Attempting to create SearchAnswerEntity without answer";
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logging.search);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();
    if (!OUTLINED_FUNCTION_4_11(v46))
    {
      goto LABEL_19;
    }

    v119 = v3;
    OUTLINED_FUNCTION_51_5();
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Attempting to create SearchAnswerEntity without id";
  }

  _os_log_impl(&dword_25D85C000, v45, v27, v48, v47, 2u);
  MEMORY[0x25F8A1050](v47, -1, -1);
LABEL_18:
  v3 = v119;
LABEL_19:

  OUTLINED_FUNCTION_13_9();
  outlined destroy of SearchEntity();

  outlined consume of Data?(0, 0xF000000000000000);

  if (v31)
  {
  }

  _s10OmniSearch18GenericEventEntityVSgWOi0_(v138);
  memcpy(v3, v138, 0x88uLL);
LABEL_41:
  OUTLINED_FUNCTION_148();
}

void SearchAnswerEntity.validTypeIdentifiers.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = type metadata accessor for UTType();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_9();
  v15 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC9D00;
  EntityProperty.wrappedValue.getter();
  v17 = type metadata accessor for IntentFile();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v17);
  outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v19 = 0;
  v20 = 0;
  if (EnumTagSinglePayload != 1)
  {
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_38_11();
    }

    v21 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v5 + 16))(v10, v21, v2);
    v19 = UTType.identifier.getter();
    v20 = v22;
    (*(v5 + 8))(v10, v2);
  }

  *(inited + 40) = v20;
  *(inited + 32) = v19;
  static UTType.plainText.getter();
  v23 = UTType.identifier.getter();
  v25 = v24;
  (*(v5 + 8))(v10, v2);
  v26 = 0;
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  v27 = MEMORY[0x277D84F90];
LABEL_6:
  v28 = (inited + 40 + 16 * v26);
  while (++v26 != 3)
  {
    v29 = v28 + 2;
    v30 = *v28;
    v28 += 2;
    if (v30)
    {
      v31 = *(v29 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v27 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v27 = v35;
      }

      v32 = *(v27 + 16);
      if (v32 >= *(v27 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v27 = v36;
      }

      *(v27 + 16) = v32 + 1;
      v33 = v27 + 16 * v32;
      *(v33 + 32) = v31;
      *(v33 + 40) = v30;
      goto LABEL_6;
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_148();
}

uint64_t SearchAnswerEntity.Builder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAnswerEntity.Builder.id.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.answer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAnswerEntity.Builder.answer.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAnswerEntity.Builder.title.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.requestedProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t SearchAnswerEntity.Builder.experienceFile.getter()
{
  OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for SearchAnswerEntity.Builder();
  return outlined init with copy of ResourceBundle?(v1 + *(v2 + 32), v0, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t SearchAnswerEntity.Builder.experienceFile.setter()
{
  OUTLINED_FUNCTION_42_2();
  v2 = v1 + *(type metadata accessor for SearchAnswerEntity.Builder() + 32);

  return outlined assign with take of IntentFile?(v0, v2);
}

uint64_t SearchAnswerEntity.Builder.experienceFile.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 32);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.pommesContextFile.getter()
{
  OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for SearchAnswerEntity.Builder();
  return outlined init with copy of ResourceBundle?(v1 + *(v2 + 36), v0, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t SearchAnswerEntity.Builder.pommesContextFile.setter()
{
  OUTLINED_FUNCTION_42_2();
  v2 = v1 + *(type metadata accessor for SearchAnswerEntity.Builder() + 36);

  return outlined assign with take of IntentFile?(v0, v2);
}

uint64_t SearchAnswerEntity.Builder.pommesContextFile.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 36);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.sources.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchAnswerEntity.Builder() + 40));
}

uint64_t SearchAnswerEntity.Builder.sources.setter()
{
  OUTLINED_FUNCTION_42_2();
  v2 = *(type metadata accessor for SearchAnswerEntity.Builder() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.sources.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 40);
  return OUTLINED_FUNCTION_35_3();
}

void *SearchAnswerEntity.Builder.card.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchAnswerEntity.Builder() + 44));
  v2 = v1;
  return v1;
}

void SearchAnswerEntity.Builder.card.setter()
{
  OUTLINED_FUNCTION_42_2();
  v2 = *(type metadata accessor for SearchAnswerEntity.Builder() + 44);

  *(v1 + v2) = v0;
}

uint64_t SearchAnswerEntity.Builder.card.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 44);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.globalSearchSummary.getter()
{
  v0 = type metadata accessor for SearchAnswerEntity.Builder();
  OUTLINED_FUNCTION_60_5(*(v0 + 48));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAnswerEntity.Builder.globalSearchSummary.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchAnswerEntity.Builder() + 48));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.globalSearchSummary.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 48);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.description.getter()
{
  v0 = type metadata accessor for SearchAnswerEntity.Builder();
  OUTLINED_FUNCTION_60_5(*(v0 + 52));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAnswerEntity.Builder.description.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchAnswerEntity.Builder() + 52));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.description.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 52);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.lowConfidenceKnowledge.setter(char a1)
{
  result = type metadata accessor for SearchAnswerEntity.Builder();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t SearchAnswerEntity.Builder.lowConfidenceKnowledge.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 56);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.dialog.getter()
{
  v0 = type metadata accessor for SearchAnswerEntity.Builder();
  OUTLINED_FUNCTION_60_5(*(v0 + 60));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAnswerEntity.Builder.dialog.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchAnswerEntity.Builder() + 60));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchAnswerEntity.Builder.dialog.modify()
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for SearchAnswerEntity.Builder() + 60);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchAnswerEntity.Builder.init(id:answer:title:requestedProperties:experienceFile:pommesContextFile:sources:card:globalSearchSummary:description:lowConfidenceKnowledge:dialog:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v21 = type metadata accessor for SearchAnswerEntity.Builder();
  outlined init with take of IntentFile?(a8, a9 + v21[8]);
  result = outlined init with take of IntentFile?(a10, a9 + v21[9]);
  *(a9 + v21[10]) = a11;
  *(a9 + v21[11]) = a12;
  v23 = (a9 + v21[12]);
  *v23 = a13;
  v23[1] = a14;
  v24 = (a9 + v21[13]);
  *v24 = a15;
  v24[1] = a16;
  *(a9 + v21[14]) = a17;
  v25 = (a9 + v21[15]);
  *v25 = a18;
  v25[1] = a19;
  return result;
}

uint64_t SearchAnswerEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_15();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchAnswerEntity.typeDisplayRepresentation);
}

uint64_t static SearchAnswerEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_15();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchAnswerEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchAnswerEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_15();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchAnswerEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t (*static SearchAnswerEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_15();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchAnswerEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchAnswerEntity.typeDisplayRepresentation : SearchAnswerEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchAnswerEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchAnswerEntity.typeDisplayRepresentation : SearchAnswerEntity.Type(uint64_t a1)
{
  v2 = SearchAnswerEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

void SearchAnswerEntity.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = OUTLINED_FUNCTION_114(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74_2();
  v14 = *v0;
  v16 = v0[11];
  v15 = v0[12];
  type metadata accessor for SFCard();
  outlined copy of Data?(v16, v15);
  v17 = SFCard.init(data:)(v16, v15);
  if (v17)
  {
    v18 = v17;
    SFCard.snippetPluginModel.getter(v1);

    v19 = type metadata accessor for RGPluginModel();
    if (__swift_getEnumTagSinglePayload(v1, 1, v19) == 1)
    {
      outlined destroy of IntentApplication?(v1, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    }

    else
    {
      lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel);
      SnippetPluginModel.data.getter();
      v21 = v20;
      (*(*(v19 - 8) + 8))(v1, v19);
      if (v21 >> 60 != 15)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
        EntityProperty.wrappedValue.getter();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        LocalizedStringResource.init(stringInterpolation:)();
        static RGPluginModel.bundleName.getter();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        goto LABEL_6;
      }
    }
  }

  EntityProperty.wrappedValue.getter();
  DisplayRepresentation.init(stringLiteral:)();
LABEL_6:
  OUTLINED_FUNCTION_148();
}

uint64_t SearchAnswerEntity.id.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_94();
}

uint64_t protocol witness for EntityQuery.entities(for:) in conformance SearchAnswerEntity.Query()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for EntityQuery.entities(for:) in conformance SearchAnswerEntity.Query;

  return SearchAnswerEntity.Query.entities(for:)();
}

uint64_t protocol witness for EntityQuery.suggestedEntities() in conformance SearchAnswerEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for EntityQuery.suggestedEntities() in conformance SearchAnswerEntity.Query;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t protocol witness for EntityQuery.suggestedEntities() in conformance SearchAnswerEntity.Query()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance SearchAnswerEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance SearchAnswerEntity.Query;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance SearchAnswerEntity.Query(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance SearchAnswerEntity.Query(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = lazy protocol witness table accessor for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query();
  *v6 = v2;
  v6[1] = protocol witness for DynamicOptionsProvider.results() in conformance SearchAnswerEntity.Query;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance SearchAnswerEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for DynamicOptionsProvider.results() in conformance SearchAnswerEntity.Query;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t SearchAnswerEntity.supportedTypeIdentifiersForExport.getter()
{
  v1 = *(v0 + 128);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAnswerEntity.requestedProperties : SearchAnswerEntity(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  memcpy(v16, a2, sizeof(v16));

  outlined init with copy of SearchAnswerEntity(v16, v17);
  v7 = a5(v6);
  OUTLINED_FUNCTION_59_6(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v17[0]);
  return outlined destroy of SearchAnswerEntity(v17);
}

uint64_t (*SearchAnswerEntity.supportedTypeIdentifiersForExport.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 128);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void static SearchAnswerEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v35 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch0F12AnswerEntityVG_AA05ProxyD0VyAFSSGtMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch0F12AnswerEntityVG_AA05ProxyD0VyAFSSGtMR);
  OUTLINED_FUNCTION_17(v34);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F12AnswerEntityVSSGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F12AnswerEntityVSSGMR);
  OUTLINED_FUNCTION_14(v33);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_90_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for UTType();
  v20 = OUTLINED_FUNCTION_17(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch0F12AnswerEntityVGMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch0F12AnswerEntityVGMR);
  OUTLINED_FUNCTION_14(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_9();
  static UTType.data.getter();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  UTType.init(exportedAs:conformingTo:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  DataRepresentation.init(exportedContentType:exporting:)();
  lazy protocol witness table accessor for type String and conformance String();
  ProxyRepresentation.init(exporting:)();
  v29 = *(v34 + 48);
  (*(v25 + 16))(v7, v1, v23);
  v30 = &v7[v29];
  v31 = v33;
  (*(v9 + 16))(v30, v0, v33);
  TupleTransferRepresentation.init(_:)();
  (*(v9 + 8))(v0, v31);
  (*(v25 + 8))(v1, v23);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in static SearchAnswerEntity.transferRepresentation.getter(uint64_t a1)
{
  v3 = type metadata accessor for UTType();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for SearchResultType();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = type metadata accessor for SearchTransferabilityError.Code();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = type metadata accessor for IntentFile();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *(a1 + 48);
  v1[17] = v16;
  v1[18] = v17;

  return MEMORY[0x2822009F8](closure #1 in static SearchAnswerEntity.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static SearchAnswerEntity.transferRepresentation.getter()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  EntityProperty.wrappedValue.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[17];
  if (EnumTagSinglePayload)
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    outlined destroy of IntentApplication?(v0[17], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    (*(v7 + 104))(v6, *MEMORY[0x277D370A8], v8);
    (*(v11 + 104))(v9, *MEMORY[0x277D37060], v10);
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_38_11();
    }

    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[10];
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    v19 = __swift_project_value_buffer(v18, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v17 + 16))(v16, v19, v18);
    type metadata accessor for SearchTransferabilityError();
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError);
    swift_allocError();
    SearchTransferabilityError.init(code:sourceResultType:targetTransferType:)();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }

  else
  {
    v23 = v0[15];
    v22 = v0[16];
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[10];
    v27 = v0[7];
    v28 = *(v23 + 16);
    OUTLINED_FUNCTION_201_0();
    v29();
    outlined destroy of IntentApplication?(v5, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v30 = IntentFile.data.getter();
    v32 = v31;
    (*(v23 + 8))(v22, v24);

    v33 = v0[1];

    return v33(v30, v32);
  }
}

uint64_t specialized implicit closure #1 in static SearchAnswerEntity.transferRepresentation.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = EntityProperty.wrappedValue.getter();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t SearchAnswerEntity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000025DBEE1F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E656D75636F64 && a2 == 0xEF73656372756F53;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E65697265707865 && a2 == 0xEE00656C69466563;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x800000025DBF18F0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x800000025DBF1910 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x746E656D75636F64 && a2 == 0xEE00656372756F53;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6174614464726163 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000016 && 0x800000025DBF1930 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 25705 && a2 == 0xE200000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000021 && 0x800000025DBF1950 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t SearchAnswerEntity.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726577736E61;
  switch(a1)
  {
    case 1:
      result = 0x676F6C616964;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x73656372756F73;
      break;
    case 4:
    case 10:
      result = 0x746E656D75636F64;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x6E65697265707865;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7470697263736564;
      break;
    case 11:
      result = 0x6174614464726163;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 25705;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchAnswerEntity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchAnswerEntity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchAnswerEntity.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchAnswerEntity.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchAnswerEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchAnswerEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchAnswerEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E12AnswerEntityV10CodingKeys33_55BCA8C2728483DD7AE46A99F320F0E9LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E12AnswerEntityV10CodingKeys33_55BCA8C2728483DD7AE46A99F320F0E9LLOGMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v12 = *v1;
  v11 = *(v1 + 8);
  v13 = *(v1 + 24);
  v43 = *(v1 + 16);
  v44 = v11;
  v14 = *(v1 + 40);
  v41 = *(v1 + 32);
  v42 = v13;
  v15 = *(v1 + 56);
  v39 = *(v1 + 48);
  v40 = v14;
  v16 = *(v1 + 72);
  v37 = *(v1 + 64);
  v38 = v15;
  v17 = *(v1 + 88);
  v35 = *(v1 + 80);
  v36 = v16;
  v33 = *(v1 + 96);
  v34 = v17;
  v48 = *(v1 + 104);
  v18 = *(v1 + 112);
  v32[1] = *(v1 + 120);
  v32[2] = v18;
  v19 = *(v1 + 128);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v46 = v12;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_9_17();
  lazy protocol witness table accessor for type EntityProperty<String> and conformance <> EntityProperty<A>(v21);
  OUTLINED_FUNCTION_25_11();
  v22 = v3;
  v23 = v45;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v23)
  {

    return (*(v5 + 8))(v10, v3);
  }

  else
  {
    v25 = v43;
    v32[0] = v19;
    v45 = v5;

    v46 = v44;
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_9_17();
    lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>(v26);
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_73_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v25;
    v49 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
    lazy protocol witness table accessor for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_15_13();
    v44 = v10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v42;
    v49 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMR);
    lazy protocol witness table accessor for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v41;
    v49 = 4;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
    OUTLINED_FUNCTION_9_17();
    lazy protocol witness table accessor for type EntityProperty<[String]> and conformance <> EntityProperty<A>(v28);
    OUTLINED_FUNCTION_15_13();
    v42 = v29;
    v43 = v27;
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v40;
    v49 = 5;
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v39;
    v49 = 6;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
    lazy protocol witness table accessor for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_15_13();
    v40 = v31;
    v41 = v30;
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v38;
    v49 = 7;
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v37;
    v49 = 8;
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v36;
    v49 = 9;
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v35;
    v49 = 10;
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v34;
    v47 = v33;
    v49 = 11;
    outlined copy of Data?(v34, v33);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v46, v47);
    LOBYTE(v46) = 12;
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v46) = 13;
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode(_:forKey:)();
    v46 = v32[0];
    v49 = 14;
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_27_10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v45 + 8))(v30, v22);
  }
}

uint64_t SearchAnswerEntity.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E12AnswerEntityV10CodingKeys33_55BCA8C2728483DD7AE46A99F320F0E9LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E12AnswerEntityV10CodingKeys33_55BCA8C2728483DD7AE46A99F320F0E9LLOGMR);
  OUTLINED_FUNCTION_14(v44);
  v42 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v81 = v39 - v7;
  OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_53_7();
  LocalizedStringResource.init(stringLiteral:)();
  v54 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_52_7();
  LocalizedStringResource.init(stringLiteral:)();
  v58 = EntityProperty<>.init(title:)();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_11_14();
  lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(v14);
  v43 = v13;
  v56 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMR);
  OUTLINED_FUNCTION_23_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_14();
  lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(v15);
  v41 = v13;
  v57 = EntityProperty<>.init(title:)();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v55 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_49_11();
  LocalizedStringResource.init(stringLiteral:)();
  v53 = EntityProperty<>.init(title:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_14();
  LocalizedStringResource.init(stringLiteral:)();
  v47 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v51 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v50 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_16_14();
  LocalizedStringResource.init(stringLiteral:)();
  v49 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();
  v19 = a1[3];
  v18 = a1[4];
  v48 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys();
  v21 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    OUTLINED_FUNCTION_40_11();
    __swift_destroy_boxed_opaque_existential_1Tm(v48);

    outlined consume of Data?(v16, v17);

    if (v20)
    {
    }
  }

  else
  {
    v45 = v16;
    LOBYTE(v59[0]) = 0;
    OUTLINED_FUNCTION_12_15();
    v23 = lazy protocol witness table accessor for type EntityProperty<String> and conformance <> EntityProperty<A>(v22);
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_69_5();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39[1] = v23;
    v39[2] = v12;

    v24 = v60;
    LOBYTE(v59[0]) = 1;
    OUTLINED_FUNCTION_12_15();
    lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>(v25);
    OUTLINED_FUNCTION_29_8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v58 = v60;
    LOBYTE(v59[0]) = 2;
    lazy protocol witness table accessor for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v26 = v60;
    LOBYTE(v59[0]) = 3;
    lazy protocol witness table accessor for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v56 = v26;

    v57 = v60;
    LOBYTE(v59[0]) = 4;
    OUTLINED_FUNCTION_12_15();
    lazy protocol witness table accessor for type EntityProperty<[String]> and conformance <> EntityProperty<A>(v27);
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v55 = v60;
    LOBYTE(v59[0]) = 5;
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v24;

    v53 = v60;
    LOBYTE(v59[0]) = 6;
    lazy protocol witness table accessor for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v52 = v60;
    LOBYTE(v59[0]) = 7;
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v28 = v60;
    LOBYTE(v59[0]) = 8;
    OUTLINED_FUNCTION_19_10();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v51 = v60;
    LOBYTE(v59[0]) = 9;
    OUTLINED_FUNCTION_19_10();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v50 = v60;
    LOBYTE(v59[0]) = 10;
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v49 = v60;
    LOBYTE(v59[0]) = 11;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v60;
    v29 = v61;
    outlined consume of Data?(0, 0xF000000000000000);
    LOBYTE(v60) = 12;
    OUTLINED_FUNCTION_35_13();
    LOBYTE(v24) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v60) = 13;
    OUTLINED_FUNCTION_35_13();
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v31;
    v78 = 14;
    OUTLINED_FUNCTION_35_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v24 & 1;
    v33 = OUTLINED_FUNCTION_18_12();
    v34(v33);

    v81 = v79;
    v35 = v57;
    v59[0] = v54;
    v59[1] = v58;
    v36 = v56;
    v59[2] = v56;
    v59[3] = v57;
    v59[4] = v55;
    v59[5] = v53;
    v59[6] = v52;
    v59[7] = v28;
    v59[8] = v51;
    v59[9] = v50;
    v59[10] = v49;
    v59[11] = v30;
    v59[12] = v29;
    LOBYTE(v59[13]) = v32;
    *(&v59[13] + 1) = v80[0];
    HIDWORD(v59[13]) = *(v80 + 3);
    v37 = v47;
    v59[14] = v43;
    v59[15] = v47;
    v59[16] = v79;
    memcpy(v40, v59, 0x88uLL);
    outlined init with copy of SearchAnswerEntity(v59, &v60);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v60 = v54;
    v61 = v58;
    v62 = v36;
    v63 = v35;
    v64 = v55;
    v65 = v53;
    v66 = v52;
    v67 = v28;
    v68 = v51;
    v69 = v50;
    v70 = v49;
    v71 = v30;
    v72 = v29;
    v73 = v32;
    *v74 = v80[0];
    *&v74[3] = *(v80 + 3);
    v75 = v43;
    v76 = v37;
    v77 = v81;
    return outlined destroy of SearchAnswerEntity(&v60);
  }

  return result;
}

uint64_t static SearchAnswerEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[8];
  v5 = a1[10];
  v6 = *a2;
  v7 = a2[3];
  v8 = a2[8];
  v9 = a2[10];
  v10 = a1[14] == a2[14] && a1[15] == a2[15];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();

  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();

  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  v11 = (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C6EntityV_Tt1g5)();

  if (v11)
  {
    EntityProperty.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();
    if (v14)
    {

      v13 = 1;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchAnswerEntity@<X0>(uint64_t *a1@<X8>)
{
  result = SearchAnswerEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchAnswerEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance SearchAnswerEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for EntityQuery.suggestedEntities() in conformance SearchAnswerEntity.Query;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchAnswerEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

void SearchAnswerEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v166 = type metadata accessor for RestaurantReservation();
  v3 = OUTLINED_FUNCTION_14(v166);
  v165 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  v164 = v7;
  OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for HotelReservation();
  v9 = OUTLINED_FUNCTION_14(v8);
  v169 = v10;
  v170 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v168 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  v175 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_2();
  v176 = v20;
  v21 = OUTLINED_FUNCTION_78_0();
  v178 = type metadata accessor for SearchResultItem(v21);
  v22 = OUTLINED_FUNCTION_17(v178);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v167 = v25;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v26);
  v171 = &v164 - v27;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  v177 = v29;
  OUTLINED_FUNCTION_78_0();
  v30 = type metadata accessor for FlightReservation();
  v31 = OUTLINED_FUNCTION_14(v30);
  v173 = v32;
  v174 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  v172 = v35;
  v36 = OUTLINED_FUNCTION_78_0();
  v181 = type metadata accessor for SearchResult(v36);
  v37 = OUTLINED_FUNCTION_17(v181);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_3();
  v179 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  v183 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v182 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v49 = OUTLINED_FUNCTION_114(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  v184 = v52;
  OUTLINED_FUNCTION_174();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v164 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v164 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  v185 = v63;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v64);
  v180 = &v164 - v65;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v66);
  v68 = &v164 - v67;
  v69 = *v0;
  v70 = v0[3];
  v71 = v0[5];
  v72 = v0[8];
  v73 = v0[10];
  SearchNLGEntity.init()(v2);
  EntityProperty.wrappedValue.getter();
  v74 = v2[4];
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  v75 = v2[1];
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  v76 = *v2;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  v77 = v2[14];
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  specialized Collection.first.getter(v186, v58);

  v78 = type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_10_2(v58);
  if (v79)
  {
    outlined destroy of IntentApplication?(v58, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v80 = 0;
    v81 = v181;
  }

  else
  {
    outlined init with copy of ResourceBundle?(&v58[*(v78 + 84)], v68, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_4_18();
    outlined destroy of SearchEntity();
    v81 = v181;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v181);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(v68, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v80 = 0;
    }

    else
    {
      v83 = *(v81 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v84 = CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_0_30();
      outlined destroy of SearchEntity();
      v80 = CSSearchableItem.senderNames.getter();
    }
  }

  v85 = v2[2];
  v186 = v80;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  specialized Collection.first.getter(v186, v56);

  OUTLINED_FUNCTION_10_2(v56);
  if (v79)
  {
    v86 = &_s10OmniSearch0B6EntityVSgMd;
    v87 = &_s10OmniSearch0B6EntityVSgMR;
    v88 = v56;
LABEL_12:
    outlined destroy of IntentApplication?(v88, v86, v87);
    v91 = v182;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    goto LABEL_14;
  }

  v89 = v180;
  outlined init with copy of ResourceBundle?(&v56[*(v78 + 84)], v180, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_4_18();
  outlined destroy of SearchEntity();
  v90 = __swift_getEnumTagSinglePayload(v89, 1, v81);
  if (v90 == 1)
  {
    v86 = &_s10OmniSearch0B6ResultVSgMd;
    v87 = &_s10OmniSearch0B6ResultVSgMR;
    v88 = v89;
    goto LABEL_12;
  }

  v96 = *(v81 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v97 = CodableNSSecureCoding.wrappedValue.getter();
  OUTLINED_FUNCTION_0_30();
  outlined destroy of SearchEntity();
  v91 = v182;
  CSSearchableItem.contentCreationDate.getter(v182);

LABEL_14:
  v98 = v2[3];
  v99 = v183;
  outlined init with copy of ResourceBundle?(v91, v183, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v100, v101, v102);
  EntityProperty.wrappedValue.getter();
  v103 = v184;
  specialized Collection.first.getter(v186, v184);

  OUTLINED_FUNCTION_10_2(v103);
  if (!v79)
  {
    v107 = v185;
    outlined init with copy of ResourceBundle?(v103 + *(v78 + 84), v185, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_4_18();
    outlined destroy of SearchEntity();
    v108 = __swift_getEnumTagSinglePayload(v107, 1, v81);
    if (v108 == 1)
    {
      goto LABEL_18;
    }

    outlined init with take of SearchResult(v107, v179);
    v109 = OUTLINED_FUNCTION_3_22();
    v110 = v177;
    outlined init with copy of SearchEntity(v109, v177, v111);
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v112 = *(v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

      v114 = v172;
      v113 = v173;
      v115 = OUTLINED_FUNCTION_70_6();
      v116 = v174;
      v117(v115);
      v118 = ShippingOrder.eventType.getter();
      v119 = v2[5];
      OUTLINED_FUNCTION_56_7(v118, v120);
      v121 = FlightReservation.flightCarrier.getter();
      v122 = v2[9];
      OUTLINED_FUNCTION_56_7(v121, v123);
      OUTLINED_FUNCTION_54_7();
      FlightReservation.flightDepartureDateComponents.getter();
      v124 = type metadata accessor for DateComponents();
      __swift_storeEnumTagSinglePayload(v99, 0, 1, v124);
      v125 = v2[6];
      OUTLINED_FUNCTION_63_6(v99);
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_201_0();
      outlined destroy of IntentApplication?(v126, v127, v128);
      v129 = FlightReservation.flightArrivalAirportCode.getter();
      v130 = v2[8];
      OUTLINED_FUNCTION_56_7(v129, v131);
      v132 = FlightReservation.flightDepartureAirportCode.getter();
      v133 = v2[7];
      OUTLINED_FUNCTION_56_7(v132, v134);
    }

    else
    {
      outlined destroy of SearchEntity();
      v135 = OUTLINED_FUNCTION_3_22();
      outlined init with copy of SearchEntity(v135, v171, v136);
      OUTLINED_FUNCTION_94();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v114 = v168;
        v113 = v169;
        v137 = OUTLINED_FUNCTION_70_6();
        v116 = v170;
        v138(v137);
        v139 = HotelReservation.hotelReservationForName.getter();
        v140 = v2[10];
        OUTLINED_FUNCTION_56_7(v139, v141);
        v142 = HotelReservation.hotelReservationForAddress.getter();
        v143 = v2[11];
        OUTLINED_FUNCTION_56_7(v142, v144);
        OUTLINED_FUNCTION_54_7();
        HotelReservation.hotelCheckinDateComponents.getter();
        v145 = v2[12];
        OUTLINED_FUNCTION_63_6(v99);
        EntityProperty.wrappedValue.setter();
        OUTLINED_FUNCTION_201_0();
        outlined destroy of IntentApplication?(v146, v147, v148);
        HotelReservation.hotelCheckoutDateComponents.getter();
        v149 = v2[13];
        v150 = v99;
      }

      else
      {
        outlined destroy of SearchEntity();
        v151 = OUTLINED_FUNCTION_3_22();
        v152 = v167;
        outlined init with copy of SearchEntity(v151, v167, v153);
        OUTLINED_FUNCTION_94();
        if (swift_getEnumCaseMultiPayload() != 19)
        {
          outlined destroy of SearchEntity();
          OUTLINED_FUNCTION_34_14();
          goto LABEL_27;
        }

        v113 = v165;
        v114 = v164;
        v116 = v166;
        (*(v165 + 32))(v164, v152, v166);
        v154 = RestaurantReservation.restaurantReservationForName.getter();
        v155 = v2[10];
        OUTLINED_FUNCTION_56_7(v154, v156);
        v157 = RestaurantReservation.restaurantReservationForAddress.getter();
        v158 = v2[11];
        OUTLINED_FUNCTION_56_7(v157, v159);
        OUTLINED_FUNCTION_54_7();
        RestaurantReservation.restaurantStartDateComponents.getter();
        v160 = v2[12];
        v150 = v99;
      }

      OUTLINED_FUNCTION_63_6(v150);
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_201_0();
      outlined destroy of IntentApplication?(v161, v162, v163);
    }

    (*(v113 + 8))(v114, v116);
    OUTLINED_FUNCTION_0_30();
LABEL_27:
    outlined destroy of SearchEntity();
    goto LABEL_28;
  }

  outlined destroy of IntentApplication?(v103, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v107 = v185;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v81);
LABEL_18:
  outlined destroy of IntentApplication?(v107, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
LABEL_28:
  OUTLINED_FUNCTION_148();
}

void SearchAnswerEntity.asCATEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v78 = type metadata accessor for SearchResultItem(0);
  v3 = OUTLINED_FUNCTION_17(v78);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  v83 = v6;
  OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for FlightReservation();
  v8 = OUTLINED_FUNCTION_14(v7);
  v79 = v9;
  v80 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v85 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v82 = &v76 - v17;
  v18 = OUTLINED_FUNCTION_78_0();
  v81 = type metadata accessor for SearchResult(v18);
  v19 = OUTLINED_FUNCTION_14(v81);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v84 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = OUTLINED_FUNCTION_114(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  v87 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  v35 = &v76 - v34;
  v86 = *v0;
  v36 = *(v0 + 3);
  v102 = *(v0 + 1);
  v103 = v36;
  v37 = v0[5];
  v38 = *(v0 + 4);
  v100 = *(v0 + 3);
  v101 = v38;
  v88 = v0[10];
  v39 = *(v0 + 13);
  v97 = *(v0 + 11);
  v98 = v39;
  v99 = *(v0 + 15);
  SearchCATEntity.init()(v2);
  EntityProperty.wrappedValue.getter();
  v40 = v90[0];
  v41 = v90[1];
  v42 = type metadata accessor for SearchCATEntity();
  v43 = *(v2 + v42[5]);
  v90[0] = v40;
  v90[1] = v41;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  v44 = *(v2 + v42[6]);
  EntityProperty.wrappedValue.setter();
  v45 = v86;
  EntityProperty.wrappedValue.getter();
  v46 = *(v2 + v42[9]);
  EntityProperty.wrappedValue.setter();
  v47 = *(v2 + v42[17]);
  *v90 = xmmword_25DBD2470;
  EntityProperty.wrappedValue.setter();
  v48 = *(v2 + v42[8]);
  v90[0] = 0;
  EntityProperty.wrappedValue.setter();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v76 = v42;
  v77 = v2;
  v53 = *(v2 + v42[7]);
  outlined init with copy of ResourceBundle?(v35, v87, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *&v90[1] = v102;
  *&v90[3] = v103;
  v91 = v100;
  v92 = v101;
  v94 = v97;
  v95 = v98;
  v90[0] = v45;
  v90[5] = v37;
  v93 = v88;
  v96 = v99;
  SearchAnswerEntity.sourceResults.getter();
  v55 = v54;
  v56 = 0;
  v57 = *(v54 + 16);
  while (1)
  {
    if (v57 == v56)
    {

      v64 = 1;
      v66 = v84;
      v65 = v85;
      v68 = v82;
      v67 = v83;
      goto LABEL_13;
    }

    if (v56 >= *(v55 + 16))
    {
      __break(1u);
      return;
    }

    v58 = *(v21 + 80);
    OUTLINED_FUNCTION_79();
    outlined init with copy of SearchEntity(v55 + v59 + *(v21 + 72) * v56, v26, type metadata accessor for SearchResult);
    SearchResultItem.type.getter(&v89);
    SearchResultKey.rawValue.getter();
    if (v61 == 0xD000000000000011 && 0x800000025DBEDF90 == v60)
    {
      break;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v63)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_30();
    outlined destroy of SearchEntity();
    ++v56;
  }

LABEL_12:

  v68 = v82;
  outlined init with take of SearchResult(v26, v82);
  v64 = 0;
  v66 = v84;
  v65 = v85;
  v67 = v83;
LABEL_13:
  v69 = v81;
  __swift_storeEnumTagSinglePayload(v68, v64, 1, v81);
  if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
  {
    outlined destroy of IntentApplication?(v68, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  }

  else
  {
    outlined init with take of SearchResult(v68, v66);
    v70 = OUTLINED_FUNCTION_3_22();
    outlined init with copy of SearchEntity(v70, v67, v71);
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v72 = *(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

      (*(v79 + 32))(v65, v67, v80);
      v73 = FlightReservation.flightArrivalAirportLocality.getter();
      if (!v74)
      {
        v73 = FlightReservation.flightArrivalAirportRegion.getter();
        if (!v74)
        {
          v73 = FlightReservation.flightArrivalAirportName.getter();
          if (!v74)
          {
            v73 = FlightReservation.flightArrivalAirportCode.getter();
            if (!v74)
            {
              v73 = FlightReservation.flightArrivalAirportCountry.getter();
            }
          }
        }
      }

      v75 = *(v77 + v76[15]);
      v90[0] = v73;
      v90[1] = v74;
      EntityProperty.wrappedValue.setter();
      (*(v79 + 8))(v65, v80);
      OUTLINED_FUNCTION_0_30();
    }

    else
    {
      OUTLINED_FUNCTION_0_30();
      outlined destroy of SearchEntity();
      OUTLINED_FUNCTION_34_14();
    }

    outlined destroy of SearchEntity();
  }

  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchAnswerEntity()
{
  SearchAnswerEntity.asCATEntity.getter();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError()
{
  result = lazy protocol witness table cache variable for type SearchToolError and conformance SearchToolError;
  if (!lazy protocol witness table cache variable for type SearchToolError and conformance SearchToolError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolError and conformance SearchToolError);
  }

  return result;
}

uint64_t type metadata accessor for SearchAnswerEntity.Builder()
{
  result = type metadata singleton initialization cache for SearchAnswerEntity.Builder;
  if (!type metadata singleton initialization cache for SearchAnswerEntity.Builder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of IntentFile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of IntentFile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity()
{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity and conformance SearchAnswerEntity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.CodingKeys and conformance SearchAnswerEntity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
    lazy protocol witness table accessor for type [SearchPropertyResponse] and conformance <A> [A]();
    lazy protocol witness table accessor for type [SearchPropertyResponse] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
    lazy protocol witness table accessor for type [SearchPropertyResponse] and conformance <A> [A]();
    lazy protocol witness table accessor for type [SearchPropertyResponse] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<[SearchPropertyResponse]> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchPropertyResponse] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B16PropertyResponseVGMd, &_sSay10OmniSearch0B16PropertyResponseVGMR);
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B16PropertyResponseVGMd, &_sSay10OmniSearch0B16PropertyResponseVGMR);
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B16PropertyResponseVGMd, &_sSay10OmniSearch0B16PropertyResponseVGMR);
    _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse, type metadata accessor for SearchPropertyResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyResponse] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMR);
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fC0VGGMR);
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<[SearchEntity]> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t _sSaySSGSayxGSEsSERzlWlTm_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = OUTLINED_FUNCTION_77_6();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
    lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
    lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
    lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
    lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<String> and conformance <> EntityProperty<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    result = OUTLINED_FUNCTION_74_8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<[String]> and conformance <> EntityProperty<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
    _sSaySSGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    _sSaySSGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    result = OUTLINED_FUNCTION_74_8();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined destroy of SearchEntity()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t outlined init with copy of SearchEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query()
{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Query and conformance SearchAnswerEntity.Query);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchAnswerEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchAnswerEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchAnswerEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B12AnswerEntityVGMd, &_sSay10OmniSearch0B12AnswerEntityVGMR);
    lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchAnswerEntity] and conformance <A> [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchAnswerEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchAnswerEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for SearchAnswerEntity.Builder()
{
  type metadata accessor for String?();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for [SearchPropertyResponse]?();
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for IntentFile?(319, &lazy cache variable for type metadata for IntentFile?, MEMORY[0x277CB9C50], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for IntentFile?(319, &lazy cache variable for type metadata for [SearchEntity], type metadata accessor for SearchEntity, MEMORY[0x277D83940]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for IntentFile?(319, &lazy cache variable for type metadata for SFCard?, type metadata accessor for SFCard, MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void type metadata accessor for [SearchPropertyResponse]?()
{
  if (!lazy cache variable for type metadata for [SearchPropertyResponse]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B16PropertyResponseVGMd, &_sSay10OmniSearch0B16PropertyResponseVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SearchPropertyResponse]?);
    }
  }
}

void type metadata accessor for IntentFile?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SearchAnswerEntity.Query(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchAnswerEntity> and conformance EmptyResolverSpecification<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchAnswerEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchAnswerEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_12()
{
  v2 = *(*(v0 + 40) + 8);
  result = *(v1 - 72);
  v4 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10()
{
  result = v1;
  v3 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_10()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  return EntityProperty.wrappedValue.setter();
}

void *OUTLINED_FUNCTION_59_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char __dst)
{

  return memcpy(&__dst, v26, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_60_5@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

void *OUTLINED_FUNCTION_61_6(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  v11 = a1[1];

  return memcpy(&a9, a2, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_63_6(uint64_t a1)
{

  return outlined init with copy of ResourceBundle?(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_7()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  result = v1;
  v3 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_75_4@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of ResourceBundle?(v2 + a1, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_78_6()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_79_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t SearchAppEntity.id.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAppEntity.id : SearchAppEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchAppEntity.id.setter();
}

uint64_t (*SearchAppEntity.id.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAppEntity.bundleId.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAppEntity.bundleId : SearchAppEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchAppEntity.bundleId.setter();
}

uint64_t (*SearchAppEntity.bundleId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAppEntity.typeId.getter()
{
  v1 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAppEntity.typeId : SearchAppEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchAppEntity.typeId.setter();
}

uint64_t (*SearchAppEntity.typeId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAppEntity.protocolId.getter()
{
  v1 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchAppEntity.protocolId : SearchAppEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchAppEntity.protocolId.setter();
}

uint64_t (*SearchAppEntity.protocolId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchAppEntity.shouldOpen.getter()
{
  v1 = *(v0 + 32);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchAppEntity.shouldOpen.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchAppEntity.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAppEntity.title.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SearchAppEntity.sourceResult.setter()
{
  return SearchAppEntity.sourceResult.setter();
}

{
  v2 = OUTLINED_FUNCTION_42_2();
  v4 = v1 + *(v3(v2) + 40);

  return outlined assign with take of SearchResult?(v0, v4);
}

uint64_t (*SearchAppEntity.sourceResult.modify())(void)
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchAppEntity(v0) + 40);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

id SearchAppEntity.card.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v1 = OUTLINED_FUNCTION_42_2();
  v2 = (v0 + *(type metadata accessor for SearchAppEntity(v1) + 44));
  v3 = *v2;
  v4 = v2[1];
  outlined copy of Data?(*v2, v4);
  return SFCard.init(data:)(v3, v4);
}

uint64_t key path setter for SearchAppEntity.card : SearchAppEntity(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return SearchAppEntity.card.setter(v1);
}

uint64_t SearchAppEntity.card.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = SFCard.data.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = v2 + *(type metadata accessor for SearchAppEntity(0) + 44);
  result = outlined consume of Data?(*v7, *(v7 + 8));
  *v7 = v4;
  *(v7 + 8) = v6;
  return result;
}

void (*SearchAppEntity.card.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v3 = *(type metadata accessor for SearchAppEntity(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data?(*v4, v6);
  *a1 = SFCard.init(data:)(v5, v6);
  return SearchAppEntity.card.modify;
}

void SearchAppEntity.card.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_6(a1);
  if (v3)
  {
    v14 = v2;
    if (v2)
    {
      v4 = v2;
      v5 = SFCard.data.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xF000000000000000;
    }

    v12 = *(v1 + 8) + *(v1 + 16);
    outlined consume of Data?(*v12, *(v12 + 8));
    *v12 = v5;
    *(v12 + 8) = v7;
  }

  else
  {
    if (v2)
    {
      v8 = v2;
      v9 = SFCard.data.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v13 = *(v1 + 8) + *(v1 + 16);
    outlined consume of Data?(*v13, *(v13 + 8));
    *v13 = v9;
    *(v13 + 8) = v11;
  }
}

void SearchAppEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v21 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_14(v21);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_42_8();
  *v2 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_46_10();
  v2[1] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_12_16();
  LocalizedStringResource.init(stringLiteral:)();
  v2[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_4_19();
  LocalizedStringResource.init(stringLiteral:)();
  v2[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v2[4] = EntityProperty<>.init(title:)();
  v15 = OUTLINED_FUNCTION_44_10();
  v2[5] = 0;
  v2[6] = 0;
  v16 = *(v15 + 40);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v2 + *(v0 + 44)) = xmmword_25DBC9410;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v5 + 8))(v10, v21);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  v2[5] = 0;
  v2[6] = 0;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

void SearchAppEntity.init(result:card:updatedBundleId:)()
{
  OUTLINED_FUNCTION_155();
  v74 = v0;
  v68 = v1;
  v72 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v11 = type metadata accessor for SearchAppEntity(0);
  v12 = OUTLINED_FUNCTION_17(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v15);
  v17 = (&v67 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *v17 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_46_10();
  v17[1] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_12_16();
  LocalizedStringResource.init(stringLiteral:)();
  v17[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_4_19();
  LocalizedStringResource.init(stringLiteral:)();
  v17[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v18 = EntityProperty<>.init(title:)();
  v17[5] = 0;
  v17[6] = 0;
  v17[4] = v18;
  v19 = *(v11 + 40);
  v20 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v71 = (v17 + *(v11 + 44));
  *v71 = xmmword_25DBC9410;
  v24 = *(v20 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v73 = v4;
  v25 = CodableNSSecureCoding.wrappedValue.getter();
  v26 = CSSearchableItem.associatedAppEntityId.getter();
  if (!v27)
  {
    goto LABEL_6;
  }

  v28 = v26;
  v29 = v27;
  v69 = v11;
  v70 = v6;
  v30 = CSSearchableItem.associatedAppEntityTypeId.getter();
  if (!v31)
  {

    v11 = v69;
LABEL_6:

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logging.search);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_172();
      *v43 = 0;
      _os_log_impl(&dword_25D85C000, v41, v42, "Cannot create SearchAppEntity because result.item needs an associatedAppEntityId and associatedAppEntityTypeId", v43, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    OUTLINED_FUNCTION_1_32();
    _s10OmniSearch0B6ResultVWOhTm_3();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v11);
    goto LABEL_27;
  }

  v32 = v30;
  v33 = v31;
  SearchAppEntity.init()();
  v34 = OUTLINED_FUNCTION_72_2();
  outlined assign with take of SearchAppEntity(v34, v35);
  v36 = *v17;
  *&v79[0] = v28;
  *(&v79[0] + 1) = v29;

  EntityProperty.wrappedValue.setter();
  v37 = v17[2];
  *&v79[0] = v32;
  *(&v79[0] + 1) = v33;

  EntityProperty.wrappedValue.setter();
  v38 = v74;
  if (v74)
  {

    v39 = v68;
    goto LABEL_13;
  }

  v47 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v25);
  if (v48)
  {
    v39 = v47;
    v38 = v48;

LABEL_13:
    v49 = v17[1];
    *&v79[0] = v39;
    *(&v79[0] + 1) = v38;
    EntityProperty.wrappedValue.setter();
    v50 = v17[3];
    v79[0] = 0uLL;
    EntityProperty.wrappedValue.setter();
    v51 = [v25 attributeSet];
    v53 = v69;
    v52 = v70;
    v54 = v73;
    if (one-time initialization token for keyAttributeAppEntityTitle != -1)
    {
      swift_once();
    }

    v55 = MEMORY[0x25F89F4C0](static LocalIndexClient.keyAttributeAppEntityTitle, *algn_27FCAFD18);
    v56 = [v51 attributeForKey_];

    if (v56)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    v79[0] = v77;
    v79[1] = v78;
    if (*(&v78 + 1))
    {
      if (swift_dynamicCast())
      {
        v57 = v75;
        v58 = v76;
LABEL_23:
        v60 = v17[6];

        v17[5] = v57;
        v17[6] = v58;
        outlined destroy of IntentApplication?(v17 + v19, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        _s10OmniSearch0B6ResultVWOcTm_4(v54, v17 + v19, type metadata accessor for SearchResult);
        __swift_storeEnumTagSinglePayload(v17 + v19, 0, 1, v20);
        if (v72)
        {
          v61 = v72;
          v62 = SFCard.data.getter();
          v64 = v63;

          OUTLINED_FUNCTION_0_31();
          _s10OmniSearch0B6ResultVWOhTm_3();
        }

        else
        {
          OUTLINED_FUNCTION_0_31();
          _s10OmniSearch0B6ResultVWOhTm_3();

          v62 = 0;
          v64 = 0xF000000000000000;
        }

        v65 = v71;
        outlined consume of Data?(*v71, v71[1]);
        *v65 = v62;
        v65[1] = v64;
        OUTLINED_FUNCTION_3_23();
        _s10OmniSearch0B6ResultVWOcTm_4(v17, v52, v66);
        __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
        OUTLINED_FUNCTION_1_32();
        _s10OmniSearch0B6ResultVWOhTm_3();
LABEL_27:
        OUTLINED_FUNCTION_148();
        return;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
    }

    v57 = CSSearchableItem.title.getter();
    v58 = v59;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t SearchAppEntity.init(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36_2();
  v11 = type metadata accessor for SearchAppEntity.Builder(0);
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v29 - v20;
  *(v21 + 10) = 0;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  v22 = *(v19 + 48);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  a1(v21);
  _s10OmniSearch0B6ResultVWOcTm_4(v21, v17, type metadata accessor for SearchAppEntity.Builder);
  SearchAppEntity.init(builder:)();
  OUTLINED_FUNCTION_7_16();
  _s10OmniSearch0B6ResultVWOhTm_3();
  OUTLINED_FUNCTION_44_10();
  if (__swift_getEnumTagSinglePayload(v3, 1, a2))
  {
    outlined destroy of IntentApplication?(v3, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    v27 = 1;
  }

  else
  {
    outlined init with take of SearchAppEntity(v3, a3, type metadata accessor for SearchAppEntity);
    v27 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v27, 1, a2);
}

uint64_t SearchAppEntity.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchAppEntity.Builder(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v3 = *(v2 + 40);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void SearchAppEntity.init(builder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v45 = v2;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = type metadata accessor for SearchAppEntity(0);
  v8 = OUTLINED_FUNCTION_17(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v13 = (v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_42_8();
  *v13 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_46_10();
  v13[1] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_12_16();
  LocalizedStringResource.init(stringLiteral:)();
  v13[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_4_19();
  LocalizedStringResource.init(stringLiteral:)();
  v13[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v14 = EntityProperty<>.init(title:)();
  v13[5] = 0;
  v13[6] = 0;
  v13[4] = v14;
  v15 = *(v7 + 40);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = v13 + *(v7 + 44);
  *v20 = xmmword_25DBC9410;
  if (!v1[1])
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logging.search);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    v31 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_19;
    }

    v33 = OUTLINED_FUNCTION_172();
    *v33 = 0;
    v34 = "Attempting to create SearchAppEntity without id";
    goto LABEL_18;
  }

  v46 = *v1;

  EntityProperty.wrappedValue.setter();
  if (!v1[3])
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logging.search);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    v36 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_19;
    }

    v33 = OUTLINED_FUNCTION_172();
    *v33 = 0;
    v34 = "Attempting to create SearchAppEntity without bundleId";
    goto LABEL_18;
  }

  v47 = v1[2];

  EntityProperty.wrappedValue.setter();
  if (!v1[5])
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logging.search);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    v39 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_19;
    }

    v33 = OUTLINED_FUNCTION_172();
    *v33 = 0;
    v34 = "Attempting to create SearchAppEntity without typeId";
LABEL_18:
    _os_log_impl(&dword_25D85C000, v29, v30, v34, v33, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
LABEL_19:

    OUTLINED_FUNCTION_7_16();
    _s10OmniSearch0B6ResultVWOhTm_3();
    OUTLINED_FUNCTION_1_32();
    _s10OmniSearch0B6ResultVWOhTm_3();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v7);
    goto LABEL_22;
  }

  v48 = v1[4];

  EntityProperty.wrappedValue.setter();
  v21 = type metadata accessor for SearchAppEntity.Builder(0);
  outlined assign with copy of SearchResult?(v1 + *(v21 + 40), v13 + v15);
  v49 = v1[6];
  v50 = v1[7];

  EntityProperty.wrappedValue.setter();
  v22 = v1[10];
  v23 = v1[8];
  v13[5] = v1[9];
  v13[6] = v22;

  if (v23)
  {
    v24 = v23;
    v25 = SFCard.data.getter();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  outlined consume of Data?(*v20, *(v20 + 1));
  *v20 = v25;
  *(v20 + 1) = v27;
  OUTLINED_FUNCTION_7_16();
  _s10OmniSearch0B6ResultVWOhTm_3();
  OUTLINED_FUNCTION_3_23();
  _s10OmniSearch0B6ResultVWOcTm_4(v13, v45, v44);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v7);
  OUTLINED_FUNCTION_1_32();
  _s10OmniSearch0B6ResultVWOhTm_3();
LABEL_22:
  OUTLINED_FUNCTION_148();
}

void SearchAppEntity.convertToSystemIntentValue()()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_2();
  v9 = v0[1];
  EntityProperty.wrappedValue.getter();
  v10 = v2[2];
  EntityProperty.wrappedValue.getter();
  v11 = *v2;
  EntityProperty.wrappedValue.getter();
  v13 = v2[5];
  v12 = v2[6];
  v14 = OUTLINED_FUNCTION_44_10();
  outlined init with copy of ResourceBundle?(v2 + *(v14 + 40), v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v15 = (v2 + *(v11 + 44));
  v16 = *v15;
  v17 = v15[1];

  outlined copy of Data?(v16, v17);
  v18 = SFCard.init(data:)(v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = SFCard.data.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  *v4 = v25;
  v4[1] = v26;
  v4[2] = v25;
  v4[3] = v26;
  v4[4] = v25;
  v4[5] = v26;
  v4[6] = v13;
  v4[7] = v12;
  v23 = type metadata accessor for SearchSpotlightStandardRepresentation();
  outlined init with take of SearchResult?(v1, v4 + *(v23 + 32));
  v24 = (v4 + *(v23 + 36));
  *v24 = v20;
  v24[1] = v22;
  OUTLINED_FUNCTION_148();
}

void SearchAppEntity.init(_:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *v3 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_46_10();
  v3[1] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_12_16();
  LocalizedStringResource.init(stringLiteral:)();
  v3[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_4_19();
  LocalizedStringResource.init(stringLiteral:)();
  v3[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v3[4] = EntityProperty<>.init(title:)();
  v9 = OUTLINED_FUNCTION_44_10();
  v3[5] = 0;
  v3[6] = 0;
  v10 = *(v9 + 40);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = v3 + *(v8 + 44);
  *v15 = xmmword_25DBC9410;
  v24 = *v1;
  v27 = v1[1];

  EntityProperty.wrappedValue.setter();
  v25 = v1[2];
  v28 = v1[3];

  EntityProperty.wrappedValue.setter();
  v26 = v1[4];
  v29 = v1[5];

  EntityProperty.wrappedValue.setter();
  v16 = v1[7];
  v3[5] = v1[6];
  v3[6] = v16;
  v17 = type metadata accessor for SearchSpotlightStandardRepresentation();
  v18 = *(v17 + 32);

  outlined assign with copy of SearchResult?(v1 + v18, v3 + v10);
  v19 = (v1 + *(v17 + 36));
  v20 = *v19;
  v21 = v19[1];
  v22 = *v15;
  v23 = *(v15 + 1);
  outlined copy of Data?(*v19, v21);
  outlined consume of Data?(v22, v23);
  *v15 = v20;
  *(v15 + 1) = v21;
  EntityProperty.wrappedValue.setter();
  _s10OmniSearch0B6ResultVWOhTm_3();
  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchAppEntity.validateParameters()()
{
  v1 = v0;
  v2 = type metadata accessor for SearchAppEntity(0);
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_109();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = *v0;
  EntityProperty.wrappedValue.getter();

  OUTLINED_FUNCTION_23_12();
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = *(v1 + 8);
  EntityProperty.wrappedValue.getter();

  OUTLINED_FUNCTION_23_12();
  if (!v15 || (v16 = *(v1 + 16), EntityProperty.wrappedValue.getter(), , OUTLINED_FUNCTION_23_12(), !v17))
  {
LABEL_4:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logging.search);
    OUTLINED_FUNCTION_3_23();
    _s10OmniSearch0B6ResultVWOcTm_4(v1, v11, v19);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    v22 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      OUTLINED_FUNCTION_3_23();
      _s10OmniSearch0B6ResultVWOcTm_4(v11, v8, v26);
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_1_32();
      _s10OmniSearch0B6ResultVWOhTm_3();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v24 + 4) = v27;
      _os_log_impl(&dword_25D85C000, v20, v21, "AppEntity failed validation: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      OUTLINED_FUNCTION_1_32();
      _s10OmniSearch0B6ResultVWOhTm_3();
    }

    lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
    swift_allocError();
    *v28 = xmmword_25DBC9A70;
    swift_willThrow();
  }
}

void static SearchAppEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchResult(0);
  v6 = OUTLINED_FUNCTION_17(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSg_ADtMd, &_s10OmniSearch0B6ResultVSg_ADtMR);
  OUTLINED_FUNCTION_17(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36_2();
  v22 = *v4;
  EntityProperty.wrappedValue.getter();
  v24 = v47;
  v23 = v48;
  v25 = *v2;
  EntityProperty.wrappedValue.getter();
  if (v24 == v47 && v23 == v48)
  {
  }

  else
  {
    OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_43_8();

    if ((v24 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v27 = v4[1];
  EntityProperty.wrappedValue.getter();
  v29 = v47;
  v28 = v48;
  v30 = v2[1];
  EntityProperty.wrappedValue.getter();
  if (v29 == v47 && v28 == v48)
  {
  }

  else
  {
    OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_43_8();

    if ((v29 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v32 = v4[2];
  EntityProperty.wrappedValue.getter();
  v34 = v47;
  v33 = v48;
  v35 = v2[2];
  EntityProperty.wrappedValue.getter();
  if (v34 == v47 && v33 == v48)
  {
  }

  else
  {
    OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_43_8();

    if ((v34 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v37 = v4[3];
  EntityProperty.wrappedValue.getter();
  v39 = v47;
  v38 = v48;
  v40 = v2[3];
  EntityProperty.wrappedValue.getter();
  if (!v38)
  {
    if (!v48)
    {
      goto LABEL_34;
    }

LABEL_31:

    goto LABEL_49;
  }

  if (!v48)
  {
    goto LABEL_31;
  }

  if (v39 == v47 && v38 == v48)
  {
  }

  else
  {
    OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_43_8();

    if ((v39 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_34:
  v42 = v4[6];
  v43 = v2[6];
  if (!v42)
  {
    if (v43)
    {
      goto LABEL_49;
    }

LABEL_43:
    v45 = *(type metadata accessor for SearchAppEntity(0) + 40);
    v46 = *(v18 + 48);
    outlined init with copy of ResourceBundle?(v4 + v45, v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    outlined init with copy of ResourceBundle?(v2 + v45, v0 + v46, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (OUTLINED_FUNCTION_28_10(v0) == 1)
    {
      if (OUTLINED_FUNCTION_28_10(v0 + v46) == 1)
      {
        outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        goto LABEL_49;
      }
    }

    else
    {
      outlined init with copy of ResourceBundle?(v0, v17, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      if (OUTLINED_FUNCTION_28_10(v0 + v46) != 1)
      {
        outlined init with take of SearchAppEntity(v0 + v46, v11, type metadata accessor for SearchResult);
        static SearchResult.== infix(_:_:)();
        _s10OmniSearch0B6ResultVWOhTm_3();
        _s10OmniSearch0B6ResultVWOhTm_3();
        outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_0_31();
      _s10OmniSearch0B6ResultVWOhTm_3();
    }

    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSg_ADtMd, &_s10OmniSearch0B6ResultVSg_ADtMR);
    goto LABEL_49;
  }

  if (v43)
  {
    v44 = v4[5] == v2[5] && v42 == v43;
    if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  OUTLINED_FUNCTION_148();
}

uint64_t SearchAppEntity.Builder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAppEntity.Builder.id.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SearchAppEntity.Builder.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAppEntity.Builder.bundleId.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SearchAppEntity.Builder.typeId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAppEntity.Builder.typeId.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SearchAppEntity.Builder.protocolId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAppEntity.Builder.protocolId.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void *SearchAppEntity.Builder.card.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t SearchAppEntity.Builder.title.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchAppEntity.Builder.title.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t (*SearchAppEntity.Builder.sourceResult.modify())(void)
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchAppEntity.Builder(v0) + 40);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t SearchAppEntity.Builder.init(id:bundleId:typeId:protocolId:card:title:sourceResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  v12 = a9 + *(type metadata accessor for SearchAppEntity.Builder(0) + 40);

  return outlined init with take of SearchResult?(a12, v12);
}

uint64_t SearchAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchAppEntity.typeDisplayRepresentation);
}

uint64_t static SearchAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t (*static SearchAppEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchAppEntity.typeDisplayRepresentation : SearchAppEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchAppEntity.typeDisplayRepresentation : SearchAppEntity.Type(uint64_t a1)
{
  v2 = SearchAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

void SearchAppEntity.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v77 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v75[2] = v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v75[1] = v75 - v13;
  v14 = type metadata accessor for SearchAppEntity(0);
  v15 = OUTLINED_FUNCTION_17(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v75[0] = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36_2();
  v27 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v28 = OUTLINED_FUNCTION_114(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v31 = type metadata accessor for LocalizedStringResource();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_109();
  v76 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = v75 - v40;
  if (*(v0 + 48))
  {
    v42 = *(v0 + 40);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
    v44._countAndFlagsBits = OUTLINED_FUNCTION_72_2();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v44);
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
    LocalizedStringResource.init(stringInterpolation:)();
  }

  else
  {
    LocalizedStringResource.init(stringLiteral:)();
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v46 = (v0 + *(v14 + 44));
  v47 = *v46;
  v48 = v46[1];
  v49 = OUTLINED_FUNCTION_72_2();
  outlined copy of Data?(v49, v50);
  v51 = OUTLINED_FUNCTION_72_2();
  v53 = SFCard.init(data:)(v51, v52);
  if (v53)
  {
    v54 = v53;
    SFCard.snippetPluginModel.getter(v1);

    v55 = type metadata accessor for RGPluginModel();
    if (__swift_getEnumTagSinglePayload(v1, 1, v55) == 1)
    {
      outlined destroy of IntentApplication?(v1, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    }

    else
    {
      _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel);
      SnippetPluginModel.data.getter();
      v57 = v56;
      (*(*(v55 - 8) + 8))(v1, v55);
      if (v57 >> 60 != 15)
      {
        (*(v34 + 16))(v76, v41, v31);
        static RGPluginModel.bundleName.getter();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        goto LABEL_14;
      }
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logging.search);
  OUTLINED_FUNCTION_3_23();
  _s10OmniSearch0B6ResultVWOcTm_4(v2, v22, v59);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  v62 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v78 = v65;
    *v64 = 136315138;
    OUTLINED_FUNCTION_3_23();
    _s10OmniSearch0B6ResultVWOcTm_4(v22, v75[0], v66);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_1_32();
    _s10OmniSearch0B6ResultVWOhTm_3();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v64 + 4) = v67;
    _os_log_impl(&dword_25D85C000, v60, v61, "Unexpected fallback to use title only displayRepresentation for entity: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_1_32();
    _s10OmniSearch0B6ResultVWOhTm_3();
  }

  (*(v34 + 16))(v76, v41, v31);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v31);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  DisplayRepresentation.init(title:subtitle:image:)();
LABEL_14:
  (*(v34 + 8))(v41, v31);
  OUTLINED_FUNCTION_148();
}

uint64_t SearchAppEntity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6F636F746F7270 && a2 == 0xEA00000000006449;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x704F646C756F6873 && a2 == 0xEA00000000006E65;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t SearchAppEntity.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x644965707974;
      break;
    case 3:
      result = 0x6C6F636F746F7270;
      break;
    case 4:
      result = 0x704F646C756F6873;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x6552656372756F73;
      break;
    case 7:
      result = 0x6174614464726163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchAppEntity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchAppEntity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchAppEntity.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchAppEntity.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchAppEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchAppEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchAppEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E9AppEntityV10CodingKeys33_1C75C43BB922B7824D57A3AB68D2F1C3LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E9AppEntityV10CodingKeys33_1C75C43BB922B7824D57A3AB68D2F1C3LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys();
  OUTLINED_FUNCTION_40_12();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  lazy protocol witness table accessor for type EntityProperty<String> and conformance <> EntityProperty<A>();
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v22 = v3[1];
    v24 = 1;
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v3[2];
    v24 = 2;
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v3[3];
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v3[4];
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
    lazy protocol witness table accessor for type EntityProperty<Bool> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[5];
    v15 = v3[6];
    LOBYTE(v22) = 5;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = type metadata accessor for SearchAppEntity(0);
    v17 = *(v16 + 40);
    LOBYTE(v22) = 6;
    type metadata accessor for SearchResult(0);
    _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult);
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + *(v16 + 44));
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v24 = 7;
    outlined copy of Data?(v22, v19);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchAppEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance SearchAppEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity);

  return MEMORY[0x28210C5A0](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchAppEntity@<X0>(uint64_t *a1@<X8>)
{
  result = SearchAppEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchAppEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchAppEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void SearchAppEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  SearchNLGEntity.init()(v3);
  type metadata accessor for LocalIndexClient();
  v24 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  v25 = static LocalIndexClient.displayName(for:)(v44, v45);
  v27 = v26;

  v28 = *v3;
  v44 = v25;
  v45 = v27;
  EntityProperty.wrappedValue.setter();
  v29 = *(v1 + 48);
  v30 = v3[1];
  v44 = *(v1 + 40);
  v45 = v29;

  EntityProperty.wrappedValue.setter();
  v31 = *(type metadata accessor for SearchAppEntity(0) + 40);
  outlined init with copy of ResourceBundle?(v1 + v31, v23, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v32 = type metadata accessor for SearchResult(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v32) == 1)
  {
    outlined destroy of IntentApplication?(v23, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v33 = 0;
  }

  else
  {
    v34 = *(v32 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v35 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    v33 = CSSearchableItem.senderNames.getter();
  }

  v36 = v3[2];
  v44 = v33;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v1 + v31, v20, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v32) == 1)
  {
    outlined destroy of IntentApplication?(v20, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }

  else
  {
    v41 = *(v32 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v42 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    CSSearchableItem.contentCreationDate.getter(v13);
  }

  v43 = v3[3];
  outlined init with copy of ResourceBundle?(v13, v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t SearchAppEntity.asCATEntity.getter(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](SearchAppEntity.asCATEntity.getter, 0, 0);
}

uint64_t SearchAppEntity.asCATEntity.getter()
{
  v134 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  SearchCATEntity.init()(v2);
  type metadata accessor for LocalIndexClient();
  v4 = *(v3 + 8);
  EntityProperty.wrappedValue.getter();
  v5 = static LocalIndexClient.displayName(for:)(*(v0 + 16), *(v0 + 24));
  v7 = v6;

  v8 = type metadata accessor for SearchCATEntity();
  v9 = *(v2 + v8[5]);
  *(v0 + 32) = v5;
  *(v0 + 40) = v7;
  EntityProperty.wrappedValue.setter();
  v10 = *(type metadata accessor for SearchAppEntity(0) + 40);
  outlined init with copy of ResourceBundle?(v3 + v10, v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v11 = type metadata accessor for SearchResult(0);
  v12 = OUTLINED_FUNCTION_28_10(v1);
  v13 = *(v0 + 232);
  if (v12 == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 232), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    SearchResultItem.type.getter(&v133);
    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    SearchResultKey.rawValue.getter();
  }

  v16 = *(v0 + 224);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v18 + v8[17]);
  *(v0 + 48) = v14;
  *(v0 + 56) = v15;
  EntityProperty.wrappedValue.setter();
  v20 = *(v17 + 48);
  v21 = *(v18 + v8[6]);
  *(v0 + 64) = *(v17 + 40);
  *(v0 + 72) = v20;

  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v3 + v10, v16, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v22 = OUTLINED_FUNCTION_28_10(v16);
  v23 = *(v0 + 224);
  if (v22 == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 224), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v24 = 0;
  }

  else
  {
    v25 = *(v11 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v26 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    v24 = CSSearchableItem.senderNames.getter();
  }

  v27 = *(v0 + 216);
  v28 = *(*(v0 + 120) + v8[8]);
  *(v0 + 112) = v24;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v3 + v10, v27, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v29 = OUTLINED_FUNCTION_28_10(v27);
  v30 = *(v0 + 152);
  if (v29 == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 216), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    v35 = *(v11 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v36 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    CSSearchableItem.contentCreationDate.getter(v30);
  }

  v37 = *(v0 + 208);
  v38 = *(v0 + 152);
  v39 = *(*(v0 + 120) + v8[7]);
  outlined init with copy of ResourceBundle?(v38, *(v0 + 144), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v3 + v10, v37, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v40 = OUTLINED_FUNCTION_28_10(v37);
  v41 = *(v0 + 208);
  if (v40 == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 208), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_0_31();
  _s10OmniSearch0B6ResultVWOhTm_3();
  SearchResultItem.type.getter(&v132);
  OUTLINED_FUNCTION_20_7();
  if (v132 != 31 && (specialized == infix<A>(_:_:)(v132, 0) & 1) != 0)
  {
    outlined init with copy of ResourceBundle?(v3 + v10, *(v0 + 200), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v42 = OUTLINED_FUNCTION_22_11();
    v43 = *(v0 + 200);
    if (v42 == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 200), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      v62 = *(v11 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v63 = CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_0_31();
      _s10OmniSearch0B6ResultVWOhTm_3();
      v64 = CSSearchableItem.senderNames.getter();

      if (v64)
      {
        if (v64[2])
        {
          v65 = v64[4];
          v66 = v64[5];

          goto LABEL_35;
        }
      }
    }

    outlined init with copy of ResourceBundle?(v3 + v10, *(v0 + 192), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v72 = OUTLINED_FUNCTION_22_11();
    v73 = *(v0 + 192);
    if (v72 == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 192), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
LABEL_66:
      v65 = 0;
      v66 = 0;
      goto LABEL_67;
    }

    v74 = *(v11 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v75 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_31();
    _s10OmniSearch0B6ResultVWOhTm_3();
    v76 = [v75 attributeSet];

    v77 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v76, &selRef_authorEmailAddresses);
    if (!v77)
    {
      goto LABEL_66;
    }

    if (!v77[2])
    {

      goto LABEL_66;
    }

    v65 = v77[4];
    v66 = v77[5];

LABEL_35:

LABEL_67:
    v105 = *(*(v0 + 120) + v8[16]);
    *(v0 + 96) = v65;
    *(v0 + 104) = v66;
    EntityProperty.wrappedValue.setter();
    goto LABEL_68;
  }

LABEL_16:
  outlined init with copy of ResourceBundle?(v3 + v10, *(v0 + 184), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v44 = OUTLINED_FUNCTION_22_11();
  v45 = *(v0 + 184);
  if (v44 == 1)
  {
    v46 = *(v0 + 184);
LABEL_18:
    outlined destroy of IntentApplication?(v46, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_0_31();
  _s10OmniSearch0B6ResultVWOhTm_3();
  SearchResultItem.type.getter(&v131);
  OUTLINED_FUNCTION_20_7();
  if (v131 != 31)
  {
    v47 = specialized == infix<A>(_:_:)(v131, 1);
    if (v47)
    {
      v53 = *(v0 + 176);
      OUTLINED_FUNCTION_38_12(v47, v48, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, v49, v50, v51, v52, v118, v121, v0 + 32, v3);
      v54 = OUTLINED_FUNCTION_22_11();
      v55 = *(v0 + 176);
      if (v54 == 1)
      {
        v56 = outlined destroy of IntentApplication?(*(v0 + 176), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        v67 = *(v11 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v68 = CodableNSSecureCoding.wrappedValue.getter();
        OUTLINED_FUNCTION_0_31();
        _s10OmniSearch0B6ResultVWOhTm_3();
        v69 = [v68 attributeSet];

        v56 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(v69);
        if (v56)
        {
          if (v56[2])
          {
            v71 = v56[4];
            v70 = v56[5];

            goto LABEL_38;
          }
        }
      }

      v71 = 0;
      v70 = 0;
LABEL_38:
      v78 = *(v0 + 168);
      OUTLINED_FUNCTION_38_12(v56, v57, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, v58, v59, v60, v61, v119, v122, v125, v128);
      v79 = OUTLINED_FUNCTION_22_11();
      v80 = *(v0 + 168);
      if (v79 == 1)
      {
        v81 = outlined destroy of IntentApplication?(*(v0 + 168), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        v87 = *(v11 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v88 = CodableNSSecureCoding.wrappedValue.getter();
        OUTLINED_FUNCTION_0_31();
        _s10OmniSearch0B6ResultVWOhTm_3();
        v89 = [v88 attributeSet];

        v81 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v89, &selRef_authorAddresses);
        if (v81)
        {
          if (v81[2])
          {
            v91 = v81[4];
            v90 = v81[5];

            goto LABEL_45;
          }
        }
      }

      v91 = 0;
      v90 = 0;
LABEL_45:
      if (v70)
      {
        if (v90)
        {
          if (v71 == v91 && v70 == v90)
          {

LABEL_57:

            goto LABEL_58;
          }

          v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v93)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v90)
        {
LABEL_58:
          v95 = *(v0 + 160);
          OUTLINED_FUNCTION_38_12(v81, v82, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, v83, v84, v85, v86, v120, v123, v126, v129);
          v96 = OUTLINED_FUNCTION_22_11();
          v97 = *(v0 + 160);
          if (v96 == 1)
          {
            v46 = *(v0 + 160);
            goto LABEL_18;
          }

          v98 = *(v11 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v99 = CodableNSSecureCoding.wrappedValue.getter();
          OUTLINED_FUNCTION_0_31();
          _s10OmniSearch0B6ResultVWOhTm_3();
          v100 = [v99 attributeSet];

          if (v100)
          {
            v101 = [v100 isFromMe];
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
            v102.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
            if (v101)
            {
              v103 = static NSObject.== infix(_:_:)();
            }

            else
            {
              v103 = 0;
            }

            v104 = *(*(v0 + 120) + v8[14]);
            *(v0 + 240) = v103 & 1;
            EntityProperty.wrappedValue.setter();
          }

          goto LABEL_68;
        }
      }

      v94 = *(*(v0 + 120) + v8[16]);
      *(v0 + 80) = v71;
      *(v0 + 88) = v70;
      v81 = EntityProperty.wrappedValue.setter();
      goto LABEL_58;
    }
  }

LABEL_68:
  v107 = *(v0 + 224);
  v106 = *(v0 + 232);
  v109 = *(v0 + 208);
  v108 = *(v0 + 216);
  v111 = *(v0 + 192);
  v110 = *(v0 + 200);
  v113 = *(v0 + 176);
  v112 = *(v0 + 184);
  v115 = *(v0 + 160);
  v114 = *(v0 + 168);
  v124 = *(v0 + 152);
  v127 = *(v0 + 144);
  v130 = *(v0 + 136);

  v116 = *(v0 + 8);

  return v116();
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchAppEntity(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance PersonalCardEntity;

  return SearchAppEntity.asCATEntity.getter(a1);
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_3()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t outlined assign with take of SearchAppEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAppEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined assign with copy of SearchResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SearchResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SearchAppEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAppEntity.CodingKeys and conformance SearchAppEntity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<String> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<String> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<String> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<String> and conformance <> EntityProperty<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityProperty<String> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<String> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<String> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<String?> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<String?> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    _sSSSgxSgSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    _sSSSgxSgSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<String?> and conformance <> EntityProperty<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityProperty<String?> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<String?> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    _sSSSgxSgSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    _sSSSgxSgSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<String?> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t _sSSSgxSgSesSeRzlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<Bool> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<Bool> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<Bool> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<Bool> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void type metadata completion function for SearchAppEntity()
{
  type metadata accessor for EntityProperty<String>(319, &lazy cache variable for type metadata for EntityProperty<String>, lazy protocol witness table accessor for type String and conformance String);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntityProperty<String?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EntityProperty<String>(319, &lazy cache variable for type metadata for EntityProperty<Bool>, lazy protocol witness table accessor for type Bool and conformance Bool);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SearchResult?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}