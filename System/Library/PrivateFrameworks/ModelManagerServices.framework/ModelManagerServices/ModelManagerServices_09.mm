uint64_t sub_197A07B4C(uint64_t a1)
{
  v2 = sub_197A0DBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.ConfigureBuiltInProviderRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49D70, &qword_197A92DB8);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104();
  v9 = a1[4];
  OUTLINED_FUNCTION_113_0(a1, a1[3]);
  sub_197A0DBCC();
  OUTLINED_FUNCTION_159_0();
  sub_197A883D8();
  sub_197A0DC20();
  sub_197A880E8();
  (*(v5 + 8))(v1, v3);
  OUTLINED_FUNCTION_113_3();
}

void InferenceProviderXPCRequest.ConfigureBuiltInProviderRequest.init(from:)()
{
  OUTLINED_FUNCTION_169();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49D88, &qword_197A92DC0);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_64_1();
  v10 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197A0DBCC();
  OUTLINED_FUNCTION_69_5();
  sub_197A883A8();
  if (!v0)
  {
    sub_197A0DC74();
    sub_197A87FD8();
    (*(v6 + 8))(v1, v4);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_168();
}

uint64_t sub_197A07E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A07EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A07E24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A07EF0(uint64_t a1)
{
  v2 = sub_197A0DCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A07F2C(uint64_t a1)
{
  v2 = sub_197A0DCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.IsVersionSupported.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49D98, &qword_197A92DC8);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_64_1();
  v10 = *v0;
  v11 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197A0DCC8();
  OUTLINED_FUNCTION_69_5();
  sub_197A883D8();
  sub_197A880C8();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_93();
}

void InferenceProviderXPCRequest.IsVersionSupported.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_151_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DA0, &qword_197A92DD0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_83_1();
  v7 = v0[3];
  v8 = v0[4];
  v9 = OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_113_0(v9, v10);
  sub_197A0DCC8();
  OUTLINED_FUNCTION_167();
  if (!v1)
  {
    v11 = sub_197A87FB8();
    v12 = OUTLINED_FUNCTION_176();
    v13(v12);
    *v2 = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t InferenceProviderXPCRequest.IsVersionSupported.codableEnumValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  type metadata accessor for InferenceProviderXPCRequest(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A081F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A08288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A081F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A082B4(uint64_t a1)
{
  v2 = sub_197A0DD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A082F0(uint64_t a1)
{
  v2 = sub_197A0DD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.IsVersionSupported.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_44_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DA8, &qword_197A92DD8);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_64_1();
  v5 = *(v0 + 2);
  OUTLINED_FUNCTION_13_1();
  sub_197A0DD1C();
  OUTLINED_FUNCTION_50_6();
  v8 = *v0;
  sub_1979552D0();
  sub_197A880E8();
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_93();
}

void InferenceProviderXPCRequest.IsVersionSupported.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_151_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DB0, &qword_197A92DE0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_83_1();
  v7 = v0[3];
  v8 = v0[4];
  v9 = OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_113_0(v9, v10);
  sub_197A0DD1C();
  OUTLINED_FUNCTION_167();
  if (!v1)
  {
    sub_19795F5C4();
    sub_197A87FD8();
    v11 = OUTLINED_FUNCTION_176();
    v12(v11);
    *v2 = v13;
    *(v2 + 8) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t InferenceProviderXPCRequest.ConvertData.Response.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_22();
  sub_197984D18(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t InferenceProviderXPCRequest.ConvertData.Response.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_197A085E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A08670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A085E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A0869C(uint64_t a1)
{
  v2 = sub_197A0DD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A086D8(uint64_t a1)
{
  v2 = sub_197A0DD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.ConvertData.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DB8, &qword_197A92DE8);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_104();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197984D18(v10, v11);
  sub_197A0DD70();
  OUTLINED_FUNCTION_159_0();
  sub_197A883D8();
  sub_1979747FC();
  sub_197A880E8();
  sub_197974AFC(v10, v11);
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_93();
}

void InferenceProviderXPCRequest.ConvertData.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DC8, &qword_197A92DF0);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_64_1();
  v12 = v3[3];
  v13 = v3[4];
  v14 = OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_113_0(v14, v15);
  sub_197A0DD70();
  OUTLINED_FUNCTION_69_5();
  sub_197A883A8();
  if (!v0)
  {
    sub_1979752CC();
    sub_197A87FD8();
    (*(v8 + 8))(v1, v6);
    *v5 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A089E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6144746E65696C63 && a2 == 0xEA00000000006174)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A08A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A089E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A08AB0(uint64_t a1)
{
  v2 = sub_197A0DDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A08AEC(uint64_t a1)
{
  v2 = sub_197A0DDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.ConvertData.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DD0, &qword_197A92DF8);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A0DDC4();
  OUTLINED_FUNCTION_50_6();
  type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_2_11();
  sub_19796A788(v4);
  OUTLINED_FUNCTION_24_7();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.ConvertData.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  v4 = type metadata accessor for ClientData(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DE0, &qword_197A92E00);
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_6();
  v14 = type metadata accessor for InferenceProviderXPCRequest.ConvertData(v13);
  v15 = OUTLINED_FUNCTION_28(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  sub_197A0DDC4();
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = OUTLINED_FUNCTION_19_9();
    v20(v19);
    OUTLINED_FUNCTION_14_9();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_31_7();
    v21 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A08E30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616D726F666E69 && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A08EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A08E30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A08ED8(uint64_t a1)
{
  v2 = sub_19796FBF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A08F14(uint64_t a1)
{
  v2 = sub_19796FBF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderXPCRequest.TransitionAsset.newState.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  result = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t InferenceProviderXPCRequest.TransitionAsset.oldState.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  result = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_197A0902C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000197AA37C0 == a2;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657461745377656ELL && a2 == 0xE800000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574617453646C6FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000197AA37E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_197A88218();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_197A09190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A0902C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A091B8(uint64_t a1)
{
  v2 = sub_197969A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A091F4(uint64_t a1)
{
  v2 = sub_197969A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.FetchNextStreamResultsRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_151_1();
  v4 = type metadata accessor for RequestKey(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  v12 = OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v15 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_197A88398();
  if (!v2)
  {
    OUTLINED_FUNCTION_113_0(v17, v17[3]);
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v16);
    sub_197A88238();
    OUTLINED_FUNCTION_1_11();
    sub_197958DA4(v10, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_32_5();
    sub_197958DA4(v3, v1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t InferenceProviderXPCRequest.FetchNextStreamResultsRequest.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_100_0();
  sub_197A883C8();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = OUTLINED_FUNCTION_54_4();
  type metadata accessor for RequestKey(v2);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v3);
  sub_197A88258();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_197A09564()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_177(*(v2 + 24));
  return sub_1979698F8(v3, v4);
}

uint64_t sub_197A095C8()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_177(*(v2 + 28));
  return sub_197944580(v3, v4, v5, v6);
}

uint64_t sub_197A09640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61657274537369 && a2 == 0xE800000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6144746E65696C63 && a2 == 0xEA00000000006174;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000197AA37E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_197A88218();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_197A097B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A09640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A097D8(uint64_t a1)
{
  v2 = sub_197977C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A09814(uint64_t a1)
{
  v2 = sub_197977C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.InferenceRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E08, &qword_197A92E28);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197977C50();
  OUTLINED_FUNCTION_125();
  v7 = *v1;
  OUTLINED_FUNCTION_58();
  sub_197A880C8();
  if (!v0)
  {
    v8 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
    OUTLINED_FUNCTION_149_1(v8);
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v9);
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_33_3();
    v10 = *(v2 + 24);
    OUTLINED_FUNCTION_173_0();
    type metadata accessor for InferenceProviderRequestConfiguration(0);
    OUTLINED_FUNCTION_11_5();
    sub_19796A788(v11);
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_33_3();
    v12 = *(v2 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_23_7(&qword_1ED87FC98);
    OUTLINED_FUNCTION_33_3();
  }

  v13 = OUTLINED_FUNCTION_79_4();
  v14(v13);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_197A09AD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144746E65696C63 && a2 == 0xEF79617272416174;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000197AA37E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_197A88218();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_197A09C44(char a1)
{
  result = 0x6144746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
      result = 0x72756769666E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A09CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A09AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A09D14(uint64_t a1)
{
  v2 = sub_197A0DE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A09D50(uint64_t a1)
{
  v2 = sub_197A0DE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.InputStreamInferenceRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E18, &qword_197A92E38);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197A0DE18();
  OUTLINED_FUNCTION_125();
  v15 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E28, &qword_197A92E40);
  OUTLINED_FUNCTION_77_6();
  sub_197A0DE6C(v7);
  OUTLINED_FUNCTION_33_3();
  if (!v0)
  {
    v8 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
    OUTLINED_FUNCTION_149_1(v8);
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_75_6();
    sub_19796A788(v9);
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_33_3();
    v10 = *(v2 + 24);
    type metadata accessor for InferenceProviderRequestConfiguration(0);
    OUTLINED_FUNCTION_11_5();
    sub_19796A788(v11);
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_33_3();
    v12 = *(v2 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_23_7(&qword_1ED87FC98);
    OUTLINED_FUNCTION_33_3();
  }

  v13 = OUTLINED_FUNCTION_79_4();
  v14(v13);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.InputStreamInferenceRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  v14 = v13;
  v51 = v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6(v53);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v52 = v19;
  v20 = OUTLINED_FUNCTION_74_5();
  v55 = type metadata accessor for InferenceProviderRequestConfiguration(v20);
  v21 = OUTLINED_FUNCTION_6(v55);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v54 = v24;
  v25 = OUTLINED_FUNCTION_74_5();
  v26 = type metadata accessor for RequestMetadata(v25);
  v27 = OUTLINED_FUNCTION_6(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E38, &qword_197A92E48);
  OUTLINED_FUNCTION_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_66_0();
  v34 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
  v35 = OUTLINED_FUNCTION_6(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_6();
  v38 = v14[3];
  v39 = v14[4];
  v40 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0(v40, v41);
  sub_197A0DE18();
  sub_197A883A8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E28, &qword_197A92E40);
    sub_197A0DE6C(&unk_1EAF49E40);
    OUTLINED_FUNCTION_171_0();
    *v12 = a10;
    OUTLINED_FUNCTION_75_6();
    sub_19796A788(v42);
    OUTLINED_FUNCTION_171_0();
    v43 = v34[5];
    OUTLINED_FUNCTION_70_5();
    sub_197958DA4(v11, v44);
    OUTLINED_FUNCTION_11_5();
    sub_19796A788(v45);
    sub_197A87FD8();
    v46 = v34[6];
    OUTLINED_FUNCTION_12_7();
    sub_197958DA4(v54, v12 + v47);
    OUTLINED_FUNCTION_22_3(&qword_1ED87FC90);
    sub_197A87FD8();
    v49 = OUTLINED_FUNCTION_115_2();
    v50(v49);
    sub_19794BDF8(v52, v12 + v34[7], &qword_1EAF49128, &unk_197A8CE70);
    sub_1979698F8(v12, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(0);
    OUTLINED_FUNCTION_28_6();
    sub_1979699A8(v12, v48);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A0A4E8(uint64_t a1)
{
  v2 = sub_197A0DEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A0A524(uint64_t a1)
{
  v2 = sub_197A0DEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.InputStreamEndedRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E48, &qword_197A92E50);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A0DEF4();
  OUTLINED_FUNCTION_50_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_23_7(&qword_1ED87FC98);
  OUTLINED_FUNCTION_24_7();
  v4 = OUTLINED_FUNCTION_20_0();
  v5(v4);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.InputStreamEndedRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v24 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v25 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E58, &qword_197A92E58);
  OUTLINED_FUNCTION_2(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_29_1();
  v16 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(0);
  v17 = OUTLINED_FUNCTION_28(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197A0DEF4();
  sub_197A883A8();
  if (!v0)
  {
    OUTLINED_FUNCTION_22_3(&qword_1ED87FC90);
    sub_197A87FD8();
    (*(v12 + 8))(v1, v10);
    sub_19794BDF8(v25, v22, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_29_5();
    sub_197958DA4(v22, v24);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A0A8CC(uint64_t a1)
{
  v2 = sub_197A0DF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A0A908(uint64_t a1)
{
  v2 = sub_197A0DF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.DirectStreamHandshake.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E60, &qword_197A92E60);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A0DF48();
  OUTLINED_FUNCTION_50_6();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v4);
  OUTLINED_FUNCTION_24_7();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.DirectStreamHandshake.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  v4 = type metadata accessor for RequestKey(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E68, &qword_197A92E68);
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_6();
  v14 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v13);
  v15 = OUTLINED_FUNCTION_28(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  sub_197A0DF48();
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = OUTLINED_FUNCTION_19_9();
    v20(v19);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_26_5();
    v21 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A0AC1C(uint64_t a1)
{
  v2 = sub_197A0DF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A0AC58(uint64_t a1)
{
  v2 = sub_197A0DF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.AwaitEndStreamRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E70, &qword_197A92E70);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A0DF9C();
  OUTLINED_FUNCTION_50_6();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v4);
  OUTLINED_FUNCTION_24_7();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.AwaitEndStreamRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  v4 = type metadata accessor for RequestKey(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E78, &qword_197A92E78);
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_6();
  v14 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v13);
  v15 = OUTLINED_FUNCTION_28(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  sub_197A0DF9C();
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = OUTLINED_FUNCTION_19_9();
    v20(v19);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_27_7();
    v21 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

unint64_t InferenceProviderXPCRequest.WillCancelNotification.reason.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = *(v1 + *(type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v2) + 20));
  *v0 = v3;

  return sub_1979D559C(v3);
}

uint64_t sub_197A0AFAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t sub_197A0B078(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x4974736575716572;
  }
}

uint64_t sub_197A0B0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A0AFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A0B0E0(uint64_t a1)
{
  v2 = sub_197A0DFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A0B11C(uint64_t a1)
{
  v2 = sub_197A0DFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.WillCancelNotification.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E80, &qword_197A92E80);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197A0DFF0();
  OUTLINED_FUNCTION_125();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v6);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_33_3();
  if (!v0)
  {
    v9 = *(v1 + *(type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(0) + 20));
    sub_1979D559C(v9);
    sub_197A0E044();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    sub_197A0E098(v9);
  }

  v7 = OUTLINED_FUNCTION_79_4();
  v8(v7);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.WillCancelNotification.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v30 = v3;
  v4 = type metadata accessor for RequestKey(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v33 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E88, &qword_197A92E88);
  v10 = OUTLINED_FUNCTION_2(v9);
  v31 = v11;
  v32 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(0);
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A0DFF0();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v25 = v31;
    v26 = v23;
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v27);
    OUTLINED_FUNCTION_140_2();
    v28 = v32;
    sub_197A87FD8();
    OUTLINED_FUNCTION_1_11();
    sub_197958DA4(v33, v26);
    sub_197A0E0A8();
    sub_197A87FD8();
    (*(v25 + 8))(v16, v28);
    *(v26 + *(v17 + 20)) = v34;
    sub_1979698F8(v26, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_1979699A8(v26, type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A0B598()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A0B6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[19];
  v18 = v16[3];
  OUTLINED_FUNCTION_10_11();
  sub_1979699A8(v19, v20);
  __swift_deallocate_boxed_opaque_existential_2(v18);
  v21 = v16[30];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0B784()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 248);
  *v4 = *v2;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A0B898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_116_2(*(v14 + 120));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0B95C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 264);
  *v4 = *v2;
  *(v3 + 272) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A0BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_121_1(*(v14 + 112));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0BB34()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 296);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A0BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v16 = v14[35];
  v15 = v14[36];
  v17 = v14[13];
  swift_storeEnumTagMultiPayload();
  sub_1979699A8(v17, type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0BD14()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 312) = v0;

  v9 = *(v3 + 32);
  if (v0)
  {
    v10 = sub_197A0CB94;
  }

  else
  {
    v10 = sub_197A0BE14;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A0BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0BED0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 320);
  *v4 = *v2;
  *(v3 + 328) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A0BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_120_0(*(v14 + 96));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0C0A8()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  sub_197A0E098(*(v1 + 16));

  return MEMORY[0x1EEE6DFA0](sub_197A0C1D0, v3, 0);
}

uint64_t sub_197A0C1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v16 = v14[44];
  v15 = v14[45];
  v17 = v14[10];
  swift_storeEnumTagMultiPayload();
  sub_1979699A8(v17, type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0C2B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 392);
  *v4 = *v2;
  *(v3 + 400) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A0C3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v15 = v14[47];
  v16 = v14[48];
  v17 = v14[8];
  OUTLINED_FUNCTION_109_2(v14[16]);
  OUTLINED_FUNCTION_63();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_6();
  sub_1979699A8(v17, v18);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[8];
  v18 = v16[3];
  OUTLINED_FUNCTION_28_6();
  sub_1979699A8(v19, v20);
  __swift_deallocate_boxed_opaque_existential_2(v18);
  v21 = v16[50];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0C588()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 424);
  *v4 = *v2;
  *(v3 + 432) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A0C69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v16 = v14[51];
  v15 = v14[52];
  v17 = v14[6];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_76_5();
  sub_1979699A8(v17, v18);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197A0C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[6];
  v18 = v16[3];
  OUTLINED_FUNCTION_76_5();
  sub_1979699A8(v19, v20);
  __swift_deallocate_boxed_opaque_existential_2(v18);
  v21 = v16[54];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0C84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  __swift_deallocate_boxed_opaque_existential_2(*(v16 + 24));
  v17 = *(v16 + 192);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[20];
  v18 = v16[3];
  OUTLINED_FUNCTION_33_7();
  sub_1979699A8(v19, v20);
  __swift_deallocate_boxed_opaque_existential_2(v18);
  v21 = v16[26];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0C9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[3];
  OUTLINED_FUNCTION_116_2(v16[15]);
  __swift_deallocate_boxed_opaque_existential_2(v17);
  v18 = v16[32];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0CAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[3];
  OUTLINED_FUNCTION_121_1(v16[14]);
  __swift_deallocate_boxed_opaque_existential_2(v17);
  v18 = v16[34];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0CB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  __swift_deallocate_boxed_opaque_existential_2(*(v16 + 24));
  v17 = *(v16 + 312);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0CC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[3];
  OUTLINED_FUNCTION_120_0(v16[12]);
  __swift_deallocate_boxed_opaque_existential_2(v17);
  v18 = v16[41];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = v16[3];
  OUTLINED_FUNCTION_119_2(v16[11]);
  __swift_deallocate_boxed_opaque_existential_2(v17);
  v18 = v16[43];
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_30_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A0CE04()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  v4 = type metadata accessor for InferenceProviderXPCRequest.ClientTerminatedNotification(0);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[4] = OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for InferenceProviderXPCRequest.EndOfStreamNotification(0);
  OUTLINED_FUNCTION_28(v7);
  v9 = *(v8 + 64);
  v1[5] = OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v1[6] = v10;
  OUTLINED_FUNCTION_28(v10);
  v12 = *(v11 + 64);
  v1[7] = OUTLINED_FUNCTION_78_0();

  return MEMORY[0x1EEE6DFA0](sub_197A0CECC, v3, 0);
}

uint64_t sub_197A0CECC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  OUTLINED_FUNCTION_99_3();
  sub_1979698F8(v4, v2);
  OUTLINED_FUNCTION_63();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0[4];
    OUTLINED_FUNCTION_96_3();
    sub_197958DA4(v8, v9);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_197A0D184;
    v11 = v0[4];
    v12 = v0[2];

    return sub_197A78E9C();
  }

  else
  {
    v14 = v0[5];
    OUTLINED_FUNCTION_92_3();
    sub_197958DA4(v15, v16);
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_197A0D014;
    v18 = v0[5];
    v19 = v0[2];

    return sub_197A79558();
  }
}

uint64_t sub_197A0D014()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 64);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A0D10C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[5];
  OUTLINED_FUNCTION_87_4();
  sub_1979699A8(v2, v3);
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A0D184()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 72);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A0D27C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  OUTLINED_FUNCTION_90_3();
  sub_1979699A8(v2, v3);
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A0D324(uint64_t a1)
{
  v2 = sub_197A0E0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A0D360(uint64_t a1)
{
  v2 = sub_197A0E0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.EndOfStreamNotification.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E90, &qword_197A92E90);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A0E0FC();
  OUTLINED_FUNCTION_50_6();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v4);
  OUTLINED_FUNCTION_24_7();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.EndOfStreamNotification.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  v4 = type metadata accessor for RequestKey(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E98, &qword_197A92E98);
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_6();
  v14 = type metadata accessor for InferenceProviderXPCRequest.EndOfStreamNotification(v13);
  v15 = OUTLINED_FUNCTION_28(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  sub_197A0E0FC();
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = OUTLINED_FUNCTION_19_9();
    v20(v19);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_92_3();
    v21 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A0D674@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  sub_1979698F8(v2, a2);
  a1(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A0D6DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4974736575716572 && a2 == 0xE900000000000044)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A0D75C(uint64_t a1)
{
  v2 = sub_197A0E150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A0D798(uint64_t a1)
{
  v2 = sub_197A0E150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderXPCRequest.ClientTerminatedNotification.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49EA0, &qword_197A92EA0);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A0E150();
  OUTLINED_FUNCTION_50_6();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v4);
  OUTLINED_FUNCTION_24_7();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void InferenceProviderXPCRequest.ClientTerminatedNotification.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  v4 = type metadata accessor for RequestKey(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49EB0, &qword_197A92EA8);
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_6();
  v14 = type metadata accessor for InferenceProviderXPCRequest.ClientTerminatedNotification(v13);
  v15 = OUTLINED_FUNCTION_28(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  sub_197A0E150();
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = OUTLINED_FUNCTION_19_9();
    v20(v19);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_96_3();
    v21 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

unint64_t sub_197A0DA7C()
{
  result = qword_1EAF485A0;
  if (!qword_1EAF485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF485A0);
  }

  return result;
}

unint64_t sub_197A0DAD0()
{
  result = qword_1EAF49D48;
  if (!qword_1EAF49D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49D48);
  }

  return result;
}

unint64_t sub_197A0DB24()
{
  result = qword_1EAF485A8;
  if (!qword_1EAF485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF485A8);
  }

  return result;
}

unint64_t sub_197A0DB78()
{
  result = qword_1EAF49D68;
  if (!qword_1EAF49D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49D68);
  }

  return result;
}

unint64_t sub_197A0DBCC()
{
  result = qword_1EAF49D78;
  if (!qword_1EAF49D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49D78);
  }

  return result;
}

unint64_t sub_197A0DC20()
{
  result = qword_1EAF49D80;
  if (!qword_1EAF49D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49D80);
  }

  return result;
}

unint64_t sub_197A0DC74()
{
  result = qword_1EAF49D90;
  if (!qword_1EAF49D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49D90);
  }

  return result;
}

unint64_t sub_197A0DCC8()
{
  result = qword_1ED87CD10;
  if (!qword_1ED87CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD10);
  }

  return result;
}

unint64_t sub_197A0DD1C()
{
  result = qword_1ED87CD28;
  if (!qword_1ED87CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD28);
  }

  return result;
}

unint64_t sub_197A0DD70()
{
  result = qword_1EAF49DC0;
  if (!qword_1EAF49DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49DC0);
  }

  return result;
}

unint64_t sub_197A0DDC4()
{
  result = qword_1EAF49DD8;
  if (!qword_1EAF49DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49DD8);
  }

  return result;
}

unint64_t sub_197A0DE18()
{
  result = qword_1EAF49E20;
  if (!qword_1EAF49E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49E20);
  }

  return result;
}

unint64_t sub_197A0DE6C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49E28, &qword_197A92E40);
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197A0DEF4()
{
  result = qword_1EAF49E50;
  if (!qword_1EAF49E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49E50);
  }

  return result;
}

unint64_t sub_197A0DF48()
{
  result = qword_1ED87E638;
  if (!qword_1ED87E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E638);
  }

  return result;
}

unint64_t sub_197A0DF9C()
{
  result = qword_1ED87D8E0;
  if (!qword_1ED87D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8E0);
  }

  return result;
}

unint64_t sub_197A0DFF0()
{
  result = qword_1ED87D8C0;
  if (!qword_1ED87D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8C0);
  }

  return result;
}

unint64_t sub_197A0E044()
{
  result = qword_1EAF485F0;
  if (!qword_1EAF485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF485F0);
  }

  return result;
}

unint64_t sub_197A0E098(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_197A0E0A8()
{
  result = qword_1ED87D4B8;
  if (!qword_1ED87D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D4B8);
  }

  return result;
}

unint64_t sub_197A0E0FC()
{
  result = qword_1ED87E620;
  if (!qword_1ED87E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E620);
  }

  return result;
}

unint64_t sub_197A0E150()
{
  result = qword_1EAF49EA8;
  if (!qword_1EAF49EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49EA8);
  }

  return result;
}

unint64_t sub_197A0E1A4(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87E600);
  result = sub_19796A788(&qword_1ED87E608);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E22C()
{
  result = qword_1EAF49EB8;
  if (!qword_1EAF49EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49EB8);
  }

  return result;
}

unint64_t sub_197A0E280(uint64_t a1)
{
  result = sub_197A0E2A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E2A8()
{
  result = qword_1EAF49EC0;
  if (!qword_1EAF49EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49EC0);
  }

  return result;
}

unint64_t sub_197A0E328(uint64_t a1)
{
  result = sub_197A0E350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E350()
{
  result = qword_1EAF49EC8;
  if (!qword_1EAF49EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49EC8);
  }

  return result;
}

uint64_t sub_197A0E3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E414(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49ED0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E474(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1EAF49D40);
  result = sub_19796A788(&unk_1EAF49D60);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E4F8(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49ED8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E550(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87E1F0);
  result = sub_19796A788(&unk_1EAF485B8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E5D4(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49EE0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E62C(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87E1E8);
  result = sub_19796A788(&unk_1EAF485B0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E6B0(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49EE8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E770(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499D8, &unk_197A92330);
    sub_19796A788(&unk_1ED87FFB8);
    OUTLINED_FUNCTION_77_6();
    sub_19796A788(v3);
    OUTLINED_FUNCTION_35_3();
    sub_19796A788(v4);
    OUTLINED_FUNCTION_42_5(&qword_1ED8813D0);
    result = OUTLINED_FUNCTION_135_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197A0E868(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87D498);
  result = sub_19796A788(&unk_1ED87D8A0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E8EC(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49EF0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0E944(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87E688);
  result = sub_19796A788(&unk_1EAF485C0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0E9C8(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49EF8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0EA20(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1EAF49D38);
  result = sub_19796A788(&unk_1EAF49D58);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0EAA4(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49F00);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0EAFC(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1EAF49D30);
  result = sub_19796A788(&unk_1EAF49D50);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0EB80(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49F08);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0EBD8(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87D4A8);
  result = sub_19796A788(&unk_1ED87D8C8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0EC5C(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49F10);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0ECB4(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87D4B0);
  result = sub_19796A788(&unk_1EAF48598);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0ED38(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49F18);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0ED90(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87DE10);
  result = sub_19796A788(&unk_1EAF48590);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0EE14(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49F20);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0EE84(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1ED87D4A0);
  result = sub_19796A788(&unk_1ED87D8A8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A0EF08(uint64_t a1)
{
  result = sub_19796A788(&unk_1EAF49F28);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197A0EF60(uint64_t a1)
{
  *(a1 + 8) = sub_19796A788(&unk_1EAF49D20);
  result = sub_19796A788(&unk_1EAF49D00);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceProviderXPCRequest.WireCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for InferenceProviderXPCRequest.IsVersionSupported.Response(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderXPCRequest.IsVersionSupported.Response(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_197A0F254(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_197A0F2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_197A0F34C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *sub_197A0F570(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_165_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s20ModelManagerServices27InferenceProviderXPCRequestO31ConfigureBuiltInProviderRequestVwet_0_0(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_82(a1);
}

_BYTE *_s20ModelManagerServices27InferenceProviderXPCRequestO31ConfigureBuiltInProviderRequestVwst_0_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_197A0F764()
{
  result = qword_1EAF49F30;
  if (!qword_1EAF49F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F30);
  }

  return result;
}

unint64_t sub_197A0F7BC()
{
  result = qword_1EAF49F38;
  if (!qword_1EAF49F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F38);
  }

  return result;
}

unint64_t sub_197A0F814()
{
  result = qword_1EAF49F40;
  if (!qword_1EAF49F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F40);
  }

  return result;
}

unint64_t sub_197A0F86C()
{
  result = qword_1EAF49F48;
  if (!qword_1EAF49F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F48);
  }

  return result;
}

unint64_t sub_197A0F8C4()
{
  result = qword_1EAF49F50;
  if (!qword_1EAF49F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F50);
  }

  return result;
}

unint64_t sub_197A0F91C()
{
  result = qword_1EAF49F58;
  if (!qword_1EAF49F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F58);
  }

  return result;
}

unint64_t sub_197A0F974()
{
  result = qword_1EAF49F60;
  if (!qword_1EAF49F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F60);
  }

  return result;
}

unint64_t sub_197A0F9CC()
{
  result = qword_1EAF49F68;
  if (!qword_1EAF49F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F68);
  }

  return result;
}

unint64_t sub_197A0FA24()
{
  result = qword_1EAF49F70;
  if (!qword_1EAF49F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F70);
  }

  return result;
}

unint64_t sub_197A0FA7C()
{
  result = qword_1EAF49F78;
  if (!qword_1EAF49F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F78);
  }

  return result;
}

unint64_t sub_197A0FAD4()
{
  result = qword_1EAF49F80;
  if (!qword_1EAF49F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F80);
  }

  return result;
}

unint64_t sub_197A0FB2C()
{
  result = qword_1EAF49F88;
  if (!qword_1EAF49F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F88);
  }

  return result;
}

unint64_t sub_197A0FB84()
{
  result = qword_1EAF49F90;
  if (!qword_1EAF49F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F90);
  }

  return result;
}

unint64_t sub_197A0FBDC()
{
  result = qword_1EAF49F98;
  if (!qword_1EAF49F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49F98);
  }

  return result;
}

unint64_t sub_197A0FC34()
{
  result = qword_1EAF49FA0;
  if (!qword_1EAF49FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FA0);
  }

  return result;
}

unint64_t sub_197A0FC8C()
{
  result = qword_1EAF49FA8;
  if (!qword_1EAF49FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FA8);
  }

  return result;
}

unint64_t sub_197A0FCE4()
{
  result = qword_1EAF49FB0;
  if (!qword_1EAF49FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FB0);
  }

  return result;
}

unint64_t sub_197A0FD3C()
{
  result = qword_1EAF49FB8;
  if (!qword_1EAF49FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FB8);
  }

  return result;
}

unint64_t sub_197A0FD94()
{
  result = qword_1EAF49FC0;
  if (!qword_1EAF49FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FC0);
  }

  return result;
}

unint64_t sub_197A0FDEC()
{
  result = qword_1EAF49FC8;
  if (!qword_1EAF49FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FC8);
  }

  return result;
}

unint64_t sub_197A0FE44()
{
  result = qword_1EAF49FD0;
  if (!qword_1EAF49FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FD0);
  }

  return result;
}

unint64_t sub_197A0FE9C()
{
  result = qword_1ED87E610;
  if (!qword_1ED87E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E610);
  }

  return result;
}

unint64_t sub_197A0FEF4()
{
  result = qword_1ED87E618;
  if (!qword_1ED87E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E618);
  }

  return result;
}

unint64_t sub_197A0FF4C()
{
  result = qword_1ED87D8B0;
  if (!qword_1ED87D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8B0);
  }

  return result;
}

unint64_t sub_197A0FFA4()
{
  result = qword_1ED87D8B8;
  if (!qword_1ED87D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8B8);
  }

  return result;
}

unint64_t sub_197A0FFFC()
{
  result = qword_1ED87D8D0;
  if (!qword_1ED87D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8D0);
  }

  return result;
}

unint64_t sub_197A10054()
{
  result = qword_1ED87D8D8;
  if (!qword_1ED87D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8D8);
  }

  return result;
}

unint64_t sub_197A100AC()
{
  result = qword_1ED87E628;
  if (!qword_1ED87E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E628);
  }

  return result;
}

unint64_t sub_197A10104()
{
  result = qword_1ED87E630;
  if (!qword_1ED87E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E630);
  }

  return result;
}

unint64_t sub_197A1015C()
{
  result = qword_1EAF49FD8;
  if (!qword_1EAF49FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FD8);
  }

  return result;
}

unint64_t sub_197A101B4()
{
  result = qword_1EAF49FE0;
  if (!qword_1EAF49FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FE0);
  }

  return result;
}

unint64_t sub_197A1020C()
{
  result = qword_1EAF49FE8;
  if (!qword_1EAF49FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FE8);
  }

  return result;
}

unint64_t sub_197A10264()
{
  result = qword_1EAF49FF0;
  if (!qword_1EAF49FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FF0);
  }

  return result;
}

unint64_t sub_197A102BC()
{
  result = qword_1ED87E208[0];
  if (!qword_1ED87E208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87E208);
  }

  return result;
}

unint64_t sub_197A10314()
{
  result = qword_1ED87DE48;
  if (!qword_1ED87DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE48);
  }

  return result;
}

unint64_t sub_197A1036C()
{
  result = qword_1EAF49FF8;
  if (!qword_1EAF49FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49FF8);
  }

  return result;
}

unint64_t sub_197A103C4()
{
  result = qword_1EAF4A000;
  if (!qword_1EAF4A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A000);
  }

  return result;
}

unint64_t sub_197A1041C()
{
  result = qword_1EAF4A008;
  if (!qword_1EAF4A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A008);
  }

  return result;
}

unint64_t sub_197A10474()
{
  result = qword_1EAF4A010;
  if (!qword_1EAF4A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A010);
  }

  return result;
}

unint64_t sub_197A104CC()
{
  result = qword_1ED87CD18;
  if (!qword_1ED87CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD18);
  }

  return result;
}

unint64_t sub_197A10524()
{
  result = qword_1ED87CD20;
  if (!qword_1ED87CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD20);
  }

  return result;
}

unint64_t sub_197A1057C()
{
  result = qword_1ED87CD00;
  if (!qword_1ED87CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD00);
  }

  return result;
}

unint64_t sub_197A105D4()
{
  result = qword_1ED87CD08;
  if (!qword_1ED87CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD08);
  }

  return result;
}

unint64_t sub_197A1062C()
{
  result = qword_1EAF4A018;
  if (!qword_1EAF4A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A018);
  }

  return result;
}

unint64_t sub_197A10684()
{
  result = qword_1EAF4A020;
  if (!qword_1EAF4A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A020);
  }

  return result;
}

unint64_t sub_197A106DC()
{
  result = qword_1ED87E648;
  if (!qword_1ED87E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E648);
  }

  return result;
}

unint64_t sub_197A10734()
{
  result = qword_1ED87E650;
  if (!qword_1ED87E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E650);
  }

  return result;
}

unint64_t sub_197A1078C()
{
  result = qword_1ED87E660;
  if (!qword_1ED87E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E660);
  }

  return result;
}

unint64_t sub_197A107E4()
{
  result = qword_1ED87E668;
  if (!qword_1ED87E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E668);
  }

  return result;
}

unint64_t sub_197A1083C()
{
  result = qword_1ED87E670;
  if (!qword_1ED87E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E670);
  }

  return result;
}

unint64_t sub_197A10894()
{
  result = qword_1ED87E678;
  if (!qword_1ED87E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E678);
  }

  return result;
}

unint64_t sub_197A108EC()
{
  result = qword_1ED87FD98;
  if (!qword_1ED87FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD98);
  }

  return result;
}

unint64_t sub_197A10944()
{
  result = qword_1ED87FC68;
  if (!qword_1ED87FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC68);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x19A8EBE00);
  }

  return result;
}

unint64_t sub_197A109E8()
{
  result = qword_1EAF4A028;
  if (!qword_1EAF4A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A10, &qword_197A92378);
    sub_1979D6AE0();
    sub_1979D6B34();
    sub_19796A788(&qword_1ED8813C8);
    sub_19796A788(&qword_1ED8813D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A028);
  }

  return result;
}

unint64_t sub_197A10AEC()
{
  result = qword_1EAF48508;
  if (!qword_1EAF48508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A30, &unk_197A92380);
    sub_1979D6C8C();
    sub_1979D6CE0();
    sub_19796A788(&qword_1ED8813C8);
    sub_19796A788(&qword_1ED8813D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48508);
  }

  return result;
}

unint64_t sub_197A10BF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A08, &qword_197A92370);
    sub_197A0E770(&unk_1ED87E6A0);
    sub_197A0E770(&unk_1ED87E6A8);
    OUTLINED_FUNCTION_35_3();
    sub_19796A788(v3);
    OUTLINED_FUNCTION_42_5(&qword_1ED8813D0);
    result = OUTLINED_FUNCTION_135_2();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t a1)
{

  return sub_1979699A8(a1, type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake);
}

uint64_t OUTLINED_FUNCTION_121_1(uint64_t a1)
{

  return sub_1979699A8(a1, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
}

uint64_t OUTLINED_FUNCTION_135_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_171_0()
{
  v2 = *(v0 - 104);

  return sub_197A87FD8();
}

_BYTE *storeEnumTagSinglePayload for GenerativeModels(_BYTE *result, int a2, int a3)
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

unint64_t sub_197A10EB4()
{
  result = qword_1EAF4A030;
  if (!qword_1EAF4A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A030);
  }

  return result;
}

uint64_t sub_197A10F50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF4A0A0, &unk_197A95340);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1ED8803A0 = result;
  return result;
}

uint64_t sub_197A10FA4()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF48318);
  __swift_project_value_buffer(v0, qword_1EAF48318);
  return sub_197A875F8();
}

uint64_t sub_197A1101C()
{
  v7 = *MEMORY[0x1E69E9840];
  if (voucher_get_current_persona_originator_info())
  {
    if (qword_1EAF48310 != -1)
    {
      swift_once();
    }

    v0 = sub_197A87608();
    __swift_project_value_buffer(v0, qword_1EAF48318);
    v1 = sub_197A875E8();
    v2 = sub_197A87D78();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_197941000, v1, v2, "voucher_get_current_persona_originator_info() failed", v3, 2u);
      MEMORY[0x19A8EBE00](v3, -1, -1);
    }

    type metadata accessor for ModelManagerError();
    sub_19795E388();
    swift_allocError();
    *v4 = 0xD000000000000034;
    v4[1] = 0x8000000197AA38E0;
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UUIDIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_197A87298();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t UUIDIdentifier.hashValue.getter()
{
  sub_197A882F8();
  UUIDIdentifier.hash(into:)();
  return sub_197A88358();
}

uint64_t ResponseSequence.init(throwing:expectSingleIterator:)()
{
  OUTLINED_FUNCTION_71();
  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = v4;
  v2[3] = nullsub_1;
  v2[4] = 0;
  type metadata accessor for CombinedResponseIterator();
  v5 = OUTLINED_FUNCTION_164();
  MEMORY[0x19A8EBBD0](v1);
  result = sub_197A125D8(v1, v0);
  v3[5] = v5;
  return result;
}

__n128 ResponseStream.init(wrappedSequence:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

uint64_t ClientData.init(data:xpcData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = 1;
  }

  else
  {
    sub_19797992C(a1, a2);
    v5 = OUTLINED_FUNCTION_147_2();
    sub_197979B74(v5, v6);
    v4 = 0;
  }

  v7 = sub_197A877A8();
  __swift_storeEnumTagSinglePayload(a3, v4, 1, v7);
  v8 = *(type metadata accessor for ClientData(0) + 20);
  return sub_19794B118();
}

uint64_t ClientData.xpcData.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for ClientData(v0);
  OUTLINED_FUNCTION_177(*(v1 + 20));
  return sub_197944528();
}

void static ClientData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  OUTLINED_FUNCTION_97();
  v3 = sub_197A877A8();
  v4 = OUTLINED_FUNCTION_2(v3);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v52 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  v11 = OUTLINED_FUNCTION_28(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27();
  v51 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0B0, &qword_197A954A8);
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_27();
  v25 = v23 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - v28;
  v30 = *(v27 + 48);
  v53 = v0;
  sub_197944528();
  v54 = v2;
  sub_197944528();
  OUTLINED_FUNCTION_30_9(v29);
  if (!v31)
  {
    OUTLINED_FUNCTION_129_1();
    sub_197944528();
    OUTLINED_FUNCTION_30_9(&v29[v30]);
    if (!v31)
    {
      v35 = v55;
      (*(v55 + 32))(v52, &v29[v30], v3);
      OUTLINED_FUNCTION_7_8();
      sub_197978008(v36, 255, v37);
      v38 = sub_197A87918();
      v39 = *(v35 + 8);
      v40 = OUTLINED_FUNCTION_22();
      v39(v40);
      (v39)(v18, v3);
      sub_197947A40(v29, &qword_1EAF49000, &qword_197A954A0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    v32 = OUTLINED_FUNCTION_118_3();
    v33(v32, v3);
LABEL_9:
    v34 = v29;
LABEL_20:
    sub_197947A40(v34, &qword_1EAF4A0B0, &qword_197A954A8);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_30_9(&v29[v30]);
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_197947A40(v29, &qword_1EAF49000, &qword_197A954A0);
LABEL_11:
  v41 = *(type metadata accessor for ClientData(0) + 20);
  v42 = *(v19 + 48);
  sub_197944528();
  sub_197944528();
  OUTLINED_FUNCTION_30_9(v25);
  if (!v31)
  {
    v43 = v51;
    sub_197944528();
    OUTLINED_FUNCTION_30_9(v25 + v42);
    if (!v44)
    {
      v45 = v55;
      (*(v55 + 32))(v52, v25 + v42, v3);
      OUTLINED_FUNCTION_7_8();
      sub_197978008(v46, 255, v47);
      sub_197A87918();
      v48 = *(v45 + 8);
      v49 = OUTLINED_FUNCTION_22();
      v48(v49);
      (v48)(v43, v3);
      sub_197947A40(v25, &qword_1EAF49000, &qword_197A954A0);
      goto LABEL_21;
    }

    (*(v55 + 8))(v43, v3);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_30_9(v25 + v42);
  if (!v31)
  {
LABEL_19:
    v34 = v25;
    goto LABEL_20;
  }

  sub_197947A40(v25, &qword_1EAF49000, &qword_197A954A0);
LABEL_21:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A11880(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6C616E7265746E69 && a2 == 0xEC00000061746144;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xEF61746144435058)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t sub_197A11954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A11880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A1197C(uint64_t a1)
{
  v2 = sub_197977F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A119B8(uint64_t a1)
{
  v2 = sub_197977F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseAsyncIterator.next()()
{
  OUTLINED_FUNCTION_9();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A11A80()
{
  OUTLINED_FUNCTION_18();
  v1 = OUTLINED_FUNCTION_87_5(v0[6]);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_197A11B28;
  v6 = v0[7];
  OUTLINED_FUNCTION_108_2();

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_197A11B28()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A11D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ResponseAsyncIterator.next()();
}

uint64_t sub_197A11DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_197A11EC0;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_197A11EC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t ResponseStream.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v6 = &type metadata for ResponseIterator;
  v7 = sub_197A13FAC();
  *&v5 = v3;
  sub_197945EF8(&v5, a1);
}

uint64_t sub_197A12014@<X0>(uint64_t a1@<X8>)
{
  ResponseStream.makeAsyncIterator()(a1);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  sub_197956214(v2);
}

uint64_t ResponseIterator.abort(error:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_43(v5);

  return sub_197A12668(v2);
}

uint64_t sub_197A12118()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *(v0 + 24) = *v1;
  return OUTLINED_FUNCTION_32_0(sub_197A12138, v2);
}

uint64_t sub_197A12138()
{
  *(*(v0 + 24) + 216) = 1;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t ResponseIterator.addIterator(responseIterator:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A12180, 0);
}

uint64_t sub_197A12180()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_75(v2);
  *v3 = v4;
  v3[1] = sub_19796D708;
  v5 = OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return sub_197A12704(v5);
}

uint64_t ResponseIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A1222C, 0);
}

uint64_t sub_197A1222C()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_197976F2C;
  v4 = *(v0 + 16);

  return sub_197A12964(v4);
}

uint64_t sub_197A122C0()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_1(v1);

  return ResponseIterator.next()(v3);
}

uint64_t sub_197A12344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_197A12410;

  return sub_19799E234(a1, a2, a3);
}

uint64_t sub_197A12410()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_44_2();

  return v9();
}

void sub_197A12550()
{
  OUTLINED_FUNCTION_166_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_defaultActor_initialize();
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  OUTLINED_FUNCTION_61_6();
  *(v0 + 112) = v14;
  *(v0 + 120) = v12;
  *(v0 + 128) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v0 + 176) = v10;
  *(v0 + 184) = v8;
  *(v0 + 129) = v6;
  *(v0 + 192) = v15;
  *(v0 + 200) = v4;
  *(v0 + 208) = v2;
  OUTLINED_FUNCTION_165();
}

uint64_t sub_197A125D8(uint64_t a1, char a2)
{
  swift_defaultActor_initialize();
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 200) = &unk_197A967A0;
  *(v2 + 208) = 0;
  OUTLINED_FUNCTION_61_6();
  *(v2 + 112) = a1;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 168) = 0;
  *(v2 + 176) = nullsub_1;
  *(v2 + 184) = 0;
  *(v2 + 192) = MEMORY[0x1E69E7CC0];
  *(v2 + 129) = a2;
  return v2;
}

uint64_t sub_197A12668(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A12684, v1);
}

uint64_t sub_197A12684()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  *(v1 + 112) = *(v0 + 16);
  *(v1 + 120) = 0;
  v4 = *(v1 + 128);
  *(v1 + 128) = 1;
  MEMORY[0x19A8EBBD0]();
  v5 = OUTLINED_FUNCTION_63();
  sub_197A21504(v5, v6, v4);
  OUTLINED_FUNCTION_15();

  return v7();
}

uint64_t sub_197A12704(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A12720, v1);
}

uint64_t sub_197A12720()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = v1[3];
  v3 = v1[4];
  v22 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v5 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_34_0();
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_78_0();
  (*(v13 + 16))(v16, v22, v4);
  sub_197A87C98();

  OUTLINED_FUNCTION_46();
  sub_197A1ECD8(sub_197A1EEBC);
  v17 = *(*(v2 + 192) + 16);
  sub_197A1ED64(v17, sub_197A1EEBC);
  v18 = swift_task_alloc();
  (*(v8 + 16))(v18, v11, AssociatedTypeWitness);
  OUTLINED_FUNCTION_68_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_197A1F750(v17, v18, (v2 + 192), AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v8 + 8))(v11, AssociatedTypeWitness);
  swift_endAccess();

  OUTLINED_FUNCTION_15();

  return v20();
}

uint64_t sub_197A12964(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A12980, v1);
}

uint64_t sub_197A12980()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v3 = *(v1 + 176);
  v0[4] = v2;
  *(v2 + 16) = v3;
  v5 = sub_197978008(&qword_1ED87D4C8, v4, type metadata accessor for CombinedResponseIterator);
  v6 = *(MEMORY[0x1E69E88F0] + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  *v7 = v0;
  v7[1] = sub_197A12ABC;
  v9 = v0[2];
  v10 = v0[3];

  return MEMORY[0x1EEE6DE18](v9, &unk_197A967C0, v10, sub_197A218E4, v2, v1, v5, v8);
}

uint64_t sub_197A12ABC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1979CDEB0, v9, 0);
  }

  else
  {
    v10 = v3[4];

    OUTLINED_FUNCTION_13();

    return v11();
  }
}

uint64_t sub_197A12BDC(uint64_t a1, uint64_t a2)
{
  v2[57] = a1;
  v2[58] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v5 = type metadata accessor for ClientData(0);
  v2[60] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A12CAC, a2, 0);
}

uint64_t sub_197A12CAC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 464);
  v2 = *(v1 + 112);
  *(v0 + 496) = v2;
  *(v0 + 504) = *(v1 + 120);
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {
      swift_willThrow();
      MEMORY[0x19A8EBBD0](v2);
      OUTLINED_FUNCTION_163_0();

      OUTLINED_FUNCTION_13();
LABEL_4:

      return v3();
    }

    OUTLINED_FUNCTION_95();
    v8 = *(v0 + 464);
    if (!*(*(v1 + 192) + 16))
    {
      OUTLINED_FUNCTION_95();
      if (*(v8 + 160))
      {
        sub_197961900(v8 + 136, v0 + 136);
      }

      else
      {
        v9 = *(v8 + 136);
        v10 = *(v8 + 152);
        *(v0 + 168) = *(v8 + 168);
        *(v0 + 152) = v10;
        *(v0 + 136) = v9;
      }

      if (*(v0 + 160))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v8 = *(v0 + 464);
      }

      else
      {
        v8 = *(v0 + 464);
        if (*(v8 + 216))
        {
          v11 = *(v0 + 480);
          v12 = *(v0 + 456);
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
          v17 = *(v0 + 488);
          v18 = *(v0 + 472);

          OUTLINED_FUNCTION_15();
          goto LABEL_4;
        }
      }
    }

    OUTLINED_FUNCTION_95();
    if (*(v8 + 160))
    {
      sub_197961900(v8 + 136, v0 + 16);
    }

    else
    {
      v19 = *(v8 + 136);
      v20 = *(v8 + 152);
      *(v0 + 48) = *(v8 + 168);
      *(v0 + 16) = v19;
      *(v0 + 32) = v20;
    }

    if (*(v0 + 40))
    {
      v21 = *(v0 + 464);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v22 = sub_197A12508();
      *(v0 + 544) = v22;
      if (*(v23 + 24))
      {
        v24 = *(v23 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v23, *(v23 + 24));
        v25 = *(v24 + 8);
        v26 = *(MEMORY[0x1E69E85A8] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_14();
        *(v0 + 552) = v27;
        *v27 = v28;
        v27[1] = sub_197A135B0;
        v29 = *(v0 + 472);
        OUTLINED_FUNCTION_108_2();

        return MEMORY[0x1EEE6D8C8](v30);
      }

      v33 = *(v0 + 472);
      v34 = *(v0 + 480);
      (v22)(v0 + 256, 0);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
      v8 = *(v0 + 464);
      sub_197947A40(*(v0 + 472), &qword_1EAF49110, &qword_197A92D60);
      OUTLINED_FUNCTION_46();
      if (*(v8 + 160))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((*(v0 + 464) + 136));
      }

      OUTLINED_FUNCTION_92_4();
      goto LABEL_36;
    }

    v31 = *(v1 + 192);
    if (!*(v31 + 16))
    {
LABEL_37:
      OUTLINED_FUNCTION_151_2();
      OUTLINED_FUNCTION_40_5();
      v44 = v40;
      v41 = *(v8 + 4);
      v42 = swift_task_alloc();
      *(v0 + 576) = v42;
      *v42 = v0;
      OUTLINED_FUNCTION_53_7(v42);

      return v44();
    }

    sub_197999C48(v31, v0 + 56);
    OUTLINED_FUNCTION_46();
    v32 = *(v0 + 80);
    if (*(v8 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v8 + 136));
      if (v32)
      {
LABEL_29:
        sub_197945EF8((v0 + 56), v8 + 136);
LABEL_35:
        swift_endAccess();
        OUTLINED_FUNCTION_46();
        v8 = v1 + 192;
        sub_197A26034(v0 + 96);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
LABEL_36:
        swift_endAccess();
        goto LABEL_37;
      }
    }

    else if (v32)
    {
      goto LABEL_29;
    }

    v38 = *(v0 + 56);
    v39 = *(v0 + 72);
    *(v8 + 168) = *(v0 + 88);
    *(v8 + 152) = v39;
    *(v8 + 136) = v38;
    goto LABEL_35;
  }

  v43 = (v2 + *v2);
  v5 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 512) = v6;
  *v6 = v7;
  v6[1] = sub_197A13124;

  return v43(v0 + 176);
}

uint64_t sub_197A13124()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 512);
  *v4 = *v2;
  *(v3 + 520) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 464);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A13238()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 464);
  v2 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  OUTLINED_FUNCTION_34_0();
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_78_0();
  v7 = *(v4 + 16);
  OUTLINED_FUNCTION_68_1();
  v8();
  v9 = *(v2 + 8);
  OUTLINED_FUNCTION_68_1();
  *(v0 + 240) = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63();
  *(v0 + 248) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_197A87C98();

  OUTLINED_FUNCTION_46();
  v10 = *(v0 + 240);
  if (*(v1 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));
    if (v10)
    {
LABEL_3:
      sub_197945EF8((v0 + 216), v1 + 136);
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_3;
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 232);
  *(v1 + 168) = *(v0 + 248);
  *(v1 + 152) = v12;
  *(v1 + 136) = v11;
LABEL_6:
  v13 = *(v0 + 464);
  swift_endAccess();
  if (*(v13 + 129) == 1)
  {
    *(*(v0 + 464) + 216) = 1;
  }

  v14 = *(v0 + 464);
  if (!*(v14 + 128))
  {
    v15 = *(v14 + 112);
    v16 = *(v14 + 120);
    *(v14 + 112) = 0;
    *(v14 + 120) = 0;
    *(v14 + 128) = 2;
    sub_197A21504(v15, v16, 0);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 528) = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_54_5(v17);

  return sub_197A12964(v19);
}

uint64_t sub_197A1342C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 528);
  *v4 = *v2;
  *(v3 + 536) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 464);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A13540()
{
  OUTLINED_FUNCTION_9();
  sub_197A21504(*(v0 + 496), *(v0 + 504), 0);
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_197A135B0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 552);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 560) = v0;

  if (v0)
  {
    v9 = *(v3 + 464);
    v10 = sub_197A13C1C;
  }

  else
  {
    v11 = *(v3 + 464);
    (*(v3 + 544))();
    v10 = sub_197A136D0;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A136D0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[59];
  v2 = v0[60];
  OUTLINED_FUNCTION_30_9(v1);
  if (v3)
  {
    v4 = v0[58];
    sub_197947A40(v1, &qword_1EAF49110, &qword_197A92D60);
    OUTLINED_FUNCTION_46();
    if (*(v4 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0[58] + 136));
    }

    OUTLINED_FUNCTION_92_4();
    swift_endAccess();
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_40_5();
    v17 = v5;
    v6 = *(v4 + 4);
    v7 = swift_task_alloc();
    v0[72] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_53_7(v7);

    return v17();
  }

  else
  {
    v9 = v0[61];
    v10 = v0[57];
    sub_197958DFC();
    sub_197958DFC();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
    v14 = v0[61];
    v15 = v0[59];

    OUTLINED_FUNCTION_15();

    return v16();
  }
}

uint64_t sub_197A13864()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 576);
  *v4 = *v2;
  *(v3 + 584) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 464);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A13978()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[71];

  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[74] = v2;
  *v2 = v3;
  v2[1] = sub_197A13A0C;
  v4 = v0[57];
  v5 = v0[58];

  return sub_197A12964(v4);
}

uint64_t sub_197A13A0C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  v2 = *(v0 + 592);
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_46_0();
  v6 = *(v5 + 488);
  v7 = *(v0 + 472);

  OUTLINED_FUNCTION_44_2();

  return v8();
}

uint64_t sub_197A13B24()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[58];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *(v1 + 112) = v0[65];
  *(v1 + 120) = 0;
  v4 = *(v1 + 128);
  *(v1 + 128) = 1;
  sub_197A21504(v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[66] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_54_5(v5);

  return sub_197A12964(v7);
}

uint64_t sub_197A13BB0()
{
  OUTLINED_FUNCTION_9();
  sub_197A21504(*(v0 + 496), *(v0 + 504), 0);
  v1 = *(v0 + 536);
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A13C1C()
{
  OUTLINED_FUNCTION_9();
  (*(v0 + 544))();
  v1 = *(v0 + 560);
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A13C94()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 568);

  v2 = *(v0 + 584);
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A13CFC()
{
  sub_197A21504(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  v1 = *(v0 + 184);

  v2 = *(v0 + 192);

  v3 = *(v0 + 208);

  v4 = *(v0 + 232);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_197A13D58()
{
  sub_197A13CFC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A13D84()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_1(v3);

  return sub_197A12964(v5);
}

uint64_t sub_197A13E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_197A2193C;

  return (sub_19799DB34)(a1, a2, a3);
}

void ResponseSequence.init(setup:onCancel:expectSingleIterator:refill:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for CombinedResponseIterator();
  v10 = OUTLINED_FUNCTION_164();

  OUTLINED_FUNCTION_61_3();
  sub_197A12550();
  *v9 = v7;
  v9[1] = v5;
  v9[2] = 0;
  v9[3] = v3;
  v9[4] = v1;
  v9[5] = v10;
  OUTLINED_FUNCTION_66();
}

unint64_t sub_197A13FAC()
{
  result = qword_1ED87CE30;
  if (!qword_1ED87CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE30);
  }

  return result;
}

uint64_t ResponseSequence.addStream(iterator:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A1401C, 0);
}

uint64_t sub_197A1401C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_75(v2);
  *v3 = v4;
  v3[1] = sub_197976F2C;
  v5 = OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return sub_197A12704(v5);
}

uint64_t sub_197A140AC@<X0>(void *a1@<X8>)
{
  ResponseSequence.makeAsyncIterator()(a1);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  sub_197956214(v2);
}

uint64_t RequestMetadata.clientData.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for RequestMetadata(v0) + 20);
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_177(v2);
  return sub_1979672B0();
}

uint64_t RequestMetadata.requiredAssetIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestMetadata(0) + 32));

  return sub_197A878A8();
}

uint64_t RequestMetadata.requestKey.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for RequestMetadata(v0);
  OUTLINED_FUNCTION_177(*(v1 + 56));
  return sub_1979672B0();
}

uint64_t RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char a5@<W6>, char a6@<W7>, char *a7@<X8>, char a8, int a9, char a10, uint64_t a11, uint64_t a12)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v15 = type metadata accessor for RequestMetadata(0);
  v16 = v15[5];
  OUTLINED_FUNCTION_1_12();
  sub_197958DFC();
  v17 = v15[6];
  v18 = sub_197A87298();
  OUTLINED_FUNCTION_70(v18);
  v20 = v19;
  (*(v19 + 32))(&a7[v17], a3, v18);
  v21 = v15[7];
  sub_19794B118();
  *&a7[v15[8]] = a4;
  a7[v15[9]] = a5;
  a7[v15[10]] = a6;
  a7[v15[11]] = a8;
  *&a7[v15[12]] = a9;
  a7[v15[13]] = a10;
  v22 = &a7[v15[14]];
  (*(v20 + 16))(v22, &a7[v17], v18);
  result = type metadata accessor for RequestKey(0);
  *&v22[*(result + 20)] = a9;
  v24 = &a7[v15[15]];
  *v24 = a11;
  *(v24 + 1) = a12;
  return result;
}

uint64_t static RequestMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RequestMetadata(0);
  v5 = v4[5];
  static ClientData.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v4[6];
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = v4[7];
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v9 = v4[8];
  v10 = *(v0 + v9);
  if (*(v1 + v9))
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(v0 + v9);
    sub_197A878A8();
    v12 = OUTLINED_FUNCTION_102_3();
    v14 = sub_19799F5B0(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_72_5(v4[9]);
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_72_5(v4[10]);
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_72_5(v4[11]);
  if (!v3)
  {
    return 0;
  }

  if (*(v1 + v4[12]) != *(v0 + v4[12]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_72_5(v4[13]);
  if (!v3)
  {
    return 0;
  }

  v15 = v4[14];
  v16 = v1 + v15;
  v17 = v0 + v15;
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for RequestKey(0);
  if (*(v16 + *(v18 + 20)) != *&v17[*(v18 + 20)])
  {
    return 0;
  }

  v19 = v4[15];
  v20 = *(v1 + v19);
  v21 = *(v1 + v19 + 8);
  v22 = (v0 + v19);
  if (v20 == *v22 && v21 == v22[1])
  {
    return 1;
  }

  return sub_197A88218();
}

uint64_t sub_197A1457C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000197AA3B30 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6144746E65696C63 && a2 == 0xEA00000000006174;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684632949 && a2 == 0xE400000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000197AA3340 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657265666E497369 && a2 == 0xEB0000000065636ELL;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D61657274537369 && a2 == 0xE800000000000000;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x537475706E497369 && a2 == 0xED00006D61657274;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6575716572627573 && a2 == 0xEC00000044497473;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000197AA3C00 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4B74736575716572 && a2 == 0xEA00000000007965;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_197A88218();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_197A14954(char a1)
{
  result = 0x6144746E65696C63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0x496E6F6973736573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x657265666E497369;
      break;
    case 6:
      result = 0x6D61657274537369;
      break;
    case 7:
      result = 0x537475706E497369;
      break;
    case 8:
      result = 0x6575716572627573;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x4B74736575716572;
      break;
    case 11:
      result = 0x4965736143657375;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_197A14AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A1457C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A14AEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A1494C();
  *a1 = result;
  return result;
}

uint64_t sub_197A14B14(uint64_t a1)
{
  v2 = sub_197A1EBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A14B50(uint64_t a1)
{
  v2 = sub_197A1EBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestMetadata.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0D8, &unk_197A95520);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A1EBF4();
  OUTLINED_FUNCTION_159();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_161_1();
  if (!v2)
  {
    v15 = type metadata accessor for RequestMetadata(0);
    v16 = v15[5];
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_67_7();
    sub_197978008(v17, 255, v18);
    OUTLINED_FUNCTION_27_8();
    v19 = v15[6];
    sub_197A87298();
    OUTLINED_FUNCTION_66_7();
    sub_197978008(v20, 255, v21);
    OUTLINED_FUNCTION_27_8();
    v22 = v15[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    sub_197954298(&qword_1ED87FC88);
    OUTLINED_FUNCTION_27_8();
    v35 = *(v4 + v15[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_34_1(&qword_1ED87F958);
    sub_197A88098();
    v23 = *(v4 + v15[9]);
    OUTLINED_FUNCTION_16_8(5);
    sub_197A880C8();
    v24 = *(v4 + v15[10]);
    OUTLINED_FUNCTION_16_8(6);
    sub_197A880C8();
    v25 = *(v4 + v15[11]);
    OUTLINED_FUNCTION_16_8(7);
    sub_197A880C8();
    v26 = *(v4 + v15[12]);
    OUTLINED_FUNCTION_16_8(8);
    sub_197A88118();
    v27 = *(v4 + v15[13]);
    OUTLINED_FUNCTION_16_8(9);
    sub_197A880C8();
    v28 = v15[14];
    type metadata accessor for RequestKey(0);
    OUTLINED_FUNCTION_65_5();
    sub_197978008(v29, 255, v30);
    OUTLINED_FUNCTION_27_8();
    v31 = (v4 + v15[15]);
    v32 = *v31;
    v33 = v31[1];
    OUTLINED_FUNCTION_161_1();
  }

  return (*(v8 + 8))(v3, v6);
}

void RequestMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  v78 = v10;
  v12 = v11;
  v70[1] = v13;
  v71 = type metadata accessor for RequestKey(0);
  v14 = OUTLINED_FUNCTION_6(v71);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  v72 = v18 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v73);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_28_0();
  v22 = sub_197A87298();
  v23 = OUTLINED_FUNCTION_2(v22);
  v76 = v24;
  v77 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v29 = v28 - v27;
  v30 = type metadata accessor for ClientData(0);
  v31 = OUTLINED_FUNCTION_6(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_0();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0E0, &qword_197A95530);
  OUTLINED_FUNCTION_2(v75);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v70 - v39;
  v81 = type metadata accessor for RequestMetadata(0);
  v41 = OUTLINED_FUNCTION_6(v81);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1_0();
  v79 = v12;
  v80 = (v45 - v44);
  v46 = v12[3];
  v47 = v12[4];
  v48 = OUTLINED_FUNCTION_63();
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_197A1EBF4();
  v74 = v40;
  v50 = v78;
  sub_197A883A8();
  if (v50)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
  }

  else
  {
    v78 = v35;
    v51 = sub_197A87FA8();
    v52 = v80;
    *v80 = v51;
    v52[1] = v53;
    OUTLINED_FUNCTION_67_7();
    sub_197978008(v54, 255, v55);
    OUTLINED_FUNCTION_86_0();
    sub_197A87FD8();
    v56 = v81[5];
    OUTLINED_FUNCTION_1_12();
    sub_197958DFC();
    OUTLINED_FUNCTION_66_7();
    sub_197978008(v57, 255, v58);
    OUTLINED_FUNCTION_86_0();
    v59 = v77;
    OUTLINED_FUNCTION_139_1();
    sub_197A87FD8();
    (*(v76 + 32))(v52 + v81[6], v29, v59);
    LOBYTE(a10) = 3;
    sub_197954298(&qword_1ED87FC80);
    OUTLINED_FUNCTION_86_0();
    sub_197A87FD8();
    v60 = v81[7];
    sub_19794B118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v82 = 4;
    OUTLINED_FUNCTION_33_2(&qword_1ED87FE58);
    OUTLINED_FUNCTION_139_1();
    sub_197A87F88();
    *(v52 + v81[8]) = a10;
    OUTLINED_FUNCTION_50_7(5);
    *(v52 + v81[9]) = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_50_7(6);
    *(v52 + v81[10]) = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_50_7(7);
    *(v52 + v81[11]) = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_50_7(8);
    *(v52 + v81[12]) = sub_197A88008();
    OUTLINED_FUNCTION_50_7(9);
    *(v80 + v81[13]) = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_65_5();
    sub_197978008(v61, 255, v62);
    OUTLINED_FUNCTION_86_0();
    sub_197A87FD8();
    v63 = v81[14];
    sub_197958DFC();
    v64 = sub_197A87FA8();
    v66 = v65;
    v67 = OUTLINED_FUNCTION_112_3();
    v68(v67);
    v69 = (v80 + v81[15]);
    *v69 = v64;
    v69[1] = v66;
    OUTLINED_FUNCTION_22_4();
    sub_1979672B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    OUTLINED_FUNCTION_6_9();
    sub_197978A98();
  }

  OUTLINED_FUNCTION_93();
}

void OneShotRequest.__allocating_init(session:loggingIdentifier:clientData:)()
{
  sub_197A16950();
}

{
  OUTLINED_FUNCTION_18_8();
  sub_197A16B6C();
}

uint64_t sub_197A15808(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A15824, 0);
}

uint64_t sub_197A15824()
{
  OUTLINED_FUNCTION_80();
  v3 = v2[3];
  v4 = *(v3 + 16);
  if (*(*(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16) == 1)
  {
    v5 = OUTLINED_FUNCTION_87_5(v3 + OBJC_IVAR____TtC20ModelManagerServices14OneShotRequest_serviceClient);
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v7 = OBJC_IVAR____TtC20ModelManagerServices14OneShotRequest_metadata;
    v8 = *(v1 + 48);
    OUTLINED_FUNCTION_23();
    v19 = (v9 + *v9);
    v11 = *(v10 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    v2[4] = v12;
    *v12 = v13;
    v12[1] = sub_19796D708;
    v14 = v2[2];

    return v19(v14, v4, v3 + v7, v0, v1);
  }

  else
  {
    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_21_7();
    sub_197978008(v16, 255, v17);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v18();
  }
}

uint64_t sub_197A15A34(void *a1)
{
  v1 = *(OUTLINED_FUNCTION_154_1(a1) + 24);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77();

  return v6(v5);
}

uint64_t sub_197A15B04()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A15B88()
{
  OUTLINED_FUNCTION_80();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_87_5(v3 + OBJC_IVAR____TtC20ModelManagerServices14OneShotRequest_serviceClient);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = v3 + OBJC_IVAR____TtC20ModelManagerServices14OneShotRequest_metadata;
  v7 = *(type metadata accessor for RequestMetadata(0) + 24);
  v8 = sub_197A87298();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 16))(v2, v6 + v7);
  v10 = *(v3 + 16);
  v11 = *(v0 + 56);
  OUTLINED_FUNCTION_23();
  v20 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_75(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_37_6(v16);
  OUTLINED_FUNCTION_113_1();

  return v18();
}

uint64_t sub_197A15D00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 40) = v0;

  sub_197947A40(v7, &qword_1EAF49128, &unk_197A8CE70);
  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 24);

    OUTLINED_FUNCTION_13();

    return v14();
  }
}

uint64_t sub_197A15E54()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 40);

  return v2();
}

void sub_197A15F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, char a22)
{
  OUTLINED_FUNCTION_67();
  v24 = v23;
  v58 = v25;
  v59 = v26;
  v56 = v27;
  v57 = v28;
  v30 = v29;
  v31 = sub_197A87298();
  v32 = OUTLINED_FUNCTION_2(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v37 = type metadata accessor for ClientData(0);
  v38 = OUTLINED_FUNCTION_28(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_129_1();
  sub_1979672B0();
  v55 = v22;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v41 = (v24)(0);
  v42 = OUTLINED_FUNCTION_119_3(v41);
  v43 = OUTLINED_FUNCTION_155_1(v42);
  OUTLINED_FUNCTION_104_3(v43, &protocol witness table for ModelServiceClient);
  OUTLINED_FUNCTION_0_16();
  sub_197978A98();
  *(v24 + 16) = v30;
  v44 = (v24 + *a21);
  v45 = type metadata accessor for RequestMetadata(0);
  v46 = *(v34 + 16);
  v46(&v44[v45[7]], v30 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v31);
  v47 = *(v30 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v48 = *(v30 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v54 = v47;
  *v44 = v56;
  *(v44 + 1) = v57;
  v49 = v45[5];
  OUTLINED_FUNCTION_1_12();
  sub_197958DFC();
  v50 = v45[6];
  (*(v34 + 32))(&v44[v50], v55, v31);
  *&v44[v45[8]] = v58;
  v44[v45[9]] = v59 & 1;
  v44[v45[10]] = a22;
  v44[v45[11]] = 0;
  *&v44[v45[12]] = 0;
  v44[v45[13]] = 0;
  v46(&v44[v45[14]], &v44[v50], v31);
  v51 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_73_6(v51);
  v53 = &v44[v52];
  *v53 = v54;
  *(v53 + 1) = v48;
  sub_197A878A8();
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_66();
}

void sub_197A161C0()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v36 = v8;
  v37 = v9;
  v11 = v10;
  v12 = sub_197A87298();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v16 = type metadata accessor for ClientData(0);
  v17 = OUTLINED_FUNCTION_28(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_129_1();
  sub_1979672B0();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v20 = v6(0);
  v21 = OUTLINED_FUNCTION_119_3(v20);
  v22 = OUTLINED_FUNCTION_155_1(v21);
  OUTLINED_FUNCTION_104_3(v22, &protocol witness table for ModelServiceClient);
  OUTLINED_FUNCTION_0_16();
  sub_197978A98();
  OUTLINED_FUNCTION_80_4();
  v24 = OUTLINED_FUNCTION_49_7(v23);
  v0(v24);
  v25 = *(v11 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v26 = *(v11 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v35 = v25;
  *v2 = v36;
  v2[1] = v37;
  v27 = *(v4 + 20);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_144_2();
  sub_197958DFC();
  v28 = OUTLINED_FUNCTION_115_3();
  v29(v28, v0, v12);
  *(v2 + *(v4 + 32)) = v38;
  OUTLINED_FUNCTION_141_1();
  v31 = OUTLINED_FUNCTION_19_10(v30);
  v0(v31);
  v32 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_73_6(v32);
  v34 = (v2 + v33);
  *v34 = v35;
  v34[1] = v26;
  sub_197A878A8();
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_66();
}

void sub_197A16400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_67();
  v74 = v22;
  v75 = v23;
  v81 = v24;
  v26 = v25;
  v28 = v27;
  v80 = v29;
  v79 = v30;
  v32 = v31;
  v33 = sub_197A87298();
  v77 = OUTLINED_FUNCTION_2(v33);
  v78 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_28_0();
  v45 = type metadata accessor for ClientData(v44);
  v46 = OUTLINED_FUNCTION_110_2(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1_0();
  v49 = OUTLINED_FUNCTION_133_2();
  v50 = OUTLINED_FUNCTION_51_6();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  v53 = v28;
  v54 = v28;
  v55 = v26;
  sub_19797992C(v54, v26);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v49);
  v59 = *(v21 + 28);
  sub_19794B118();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v60 = qword_1ED880258;
  v61 = v74(0);
  v62 = OUTLINED_FUNCTION_119_3(v61);
  v63 = (v62 + *v75);
  v63[3] = type metadata accessor for ModelServiceClient();
  v63[4] = &protocol witness table for ModelServiceClient;
  *v63 = v60;

  sub_197974AFC(v53, v55);
  *(v62 + 16) = v32;
  v64 = (v62 + *a21);
  v65 = type metadata accessor for RequestMetadata(0);
  v66 = *(v78 + 16);
  v66(&v64[v65[7]], v32 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v77);
  v67 = *(v32 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v68 = *(v32 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v76 = v67;
  *v64 = v79;
  *(v64 + 1) = v80;
  v69 = v65[5];
  OUTLINED_FUNCTION_1_12();
  sub_197958DFC();
  (*(v78 + 32))(&v64[v65[6]], v39, v77);
  *&v64[v65[8]] = v81;
  OUTLINED_FUNCTION_136_1();
  v71 = OUTLINED_FUNCTION_64_6(v70);
  (v66)(v71);
  v72 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_140_3(v72);
  *v73 = v76;
  v73[1] = v68;
  sub_197A878A8();
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_66();
}

void sub_197A1672C()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v34 = v8;
  v10 = v9;
  v35 = v11;
  v12 = sub_197A87298();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v16 = type metadata accessor for ClientData(0);
  v17 = OUTLINED_FUNCTION_28(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_129_1();
  sub_1979672B0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v20 = v6(0);
  OUTLINED_FUNCTION_119_3(v20);
  v21 = OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_104_3(v21, &protocol witness table for ModelServiceClient);
  OUTLINED_FUNCTION_0_16();
  sub_197978A98();
  OUTLINED_FUNCTION_80_4();
  v23 = OUTLINED_FUNCTION_49_7(v22);
  v0(v23);
  v24 = *(v10 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v25 = *(v10 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  *v2 = v33;
  v2[1] = v34;
  v26 = v4[5];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_144_2();
  sub_197958DFC();
  v27 = OUTLINED_FUNCTION_115_3();
  v28(v27, v32, v12);
  *(v2 + v4[8]) = 0;
  *(v2 + v4[9]) = v35 & 1;
  v29 = OUTLINED_FUNCTION_19_10(v4[10]);
  v0(v29);
  v30 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_73_6(v30);
  OUTLINED_FUNCTION_157_0(v31);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_66();
}

void StreamingRequest.__allocating_init(session:loggingIdentifier:clientData:)()
{
  sub_197A16950();
}

{
  OUTLINED_FUNCTION_20_8();
  sub_197A16B6C();
}

void sub_197A16950()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v34 = v8;
  v10 = v9;
  v11 = sub_197A87298();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v15 = type metadata accessor for ClientData(0);
  v16 = OUTLINED_FUNCTION_28(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_129_1();
  sub_1979672B0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v19 = v6(0);
  OUTLINED_FUNCTION_119_3(v19);
  v20 = OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_104_3(v20, &protocol witness table for ModelServiceClient);
  OUTLINED_FUNCTION_0_16();
  sub_197978A98();
  OUTLINED_FUNCTION_80_4();
  v22 = OUTLINED_FUNCTION_49_7(v21);
  v0(v22);
  v23 = *(v10 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v24 = *(v10 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  *v2 = v33;
  v2[1] = v34;
  v25 = *(v4 + 20);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_144_2();
  sub_197958DFC();
  v26 = OUTLINED_FUNCTION_115_3();
  v27(v26, v32, v11);
  *(v2 + *(v4 + 32)) = 0;
  OUTLINED_FUNCTION_141_1();
  v29 = OUTLINED_FUNCTION_19_10(v28);
  v0(v29);
  v30 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_73_6(v30);
  OUTLINED_FUNCTION_157_0(v31);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_66();
}

void sub_197A16B6C()
{
  OUTLINED_FUNCTION_67();
  v53 = v1;
  v54 = v2;
  v52 = v3;
  v5 = v4;
  v7 = v6;
  v56 = v8;
  v57 = v9;
  v11 = v10;
  v12 = sub_197A87298();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_28_0();
  v26 = type metadata accessor for ClientData(v25);
  v27 = OUTLINED_FUNCTION_110_2(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = OUTLINED_FUNCTION_133_2();
  v31 = OUTLINED_FUNCTION_51_6();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  sub_19797992C(v7, v5);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  v37 = *(v0 + 28);
  sub_19794B118();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v38 = qword_1ED880258;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v39 = v52(0);
  v40 = OUTLINED_FUNCTION_119_3(v39);
  v41 = (v40 + *v53);
  v41[3] = type metadata accessor for ModelServiceClient();
  v41[4] = &protocol witness table for ModelServiceClient;
  *v41 = v38;

  sub_197974AFC(v7, v5);
  *(v40 + 16) = v11;
  v42 = (v40 + *v54);
  v43 = type metadata accessor for RequestMetadata(0);
  v44 = *(v15 + 16);
  v44(&v42[v43[7]], v11 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v12);
  v45 = *(v11 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v46 = *(v11 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v55 = v45;
  *v42 = v56;
  *(v42 + 1) = v57;
  v47 = v43[5];
  OUTLINED_FUNCTION_1_12();
  sub_197958DFC();
  (*(v15 + 32))(&v42[v43[6]], v20, v12);
  *&v42[v43[8]] = 0;
  OUTLINED_FUNCTION_136_1();
  v49 = OUTLINED_FUNCTION_64_6(v48);
  (v44)(v49);
  v50 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_140_3(v50);
  *v51 = v55;
  v51[1] = v46;
  sub_197A878A8();
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A16E4C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(*(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16) == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_serviceClient + 24);
    v5 = *(v1 + OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_serviceClient + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_serviceClient), v4);
    return (*(v5 + 64))(v3, v1 + OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_metadata, v4, v5);
  }

  else
  {
    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_21_7();
    sub_197978008(v7, 255, v8);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_70_0();
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *a1 = 0;
    a1[1] = 0;
    a1[2] = v9;
    a1[3] = nullsub_1;
    a1[4] = 0;
    type metadata accessor for CombinedResponseIterator();
    v10 = OUTLINED_FUNCTION_164();
    MEMORY[0x19A8EBBD0](v9);
    v11 = OUTLINED_FUNCTION_122_3();
    result = sub_197A125D8(v11, v12);
    a1[5] = v10;
  }

  return result;
}

uint64_t sub_197A16FF0(void *a1)
{
  v1 = *(OUTLINED_FUNCTION_154_1(a1) + 20);
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_177(v2);
  return sub_1979672B0();
}

uint64_t sub_197A17020()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A170A4()
{
  OUTLINED_FUNCTION_80();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_87_5(v3 + OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_serviceClient);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = v3 + OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_metadata;
  v7 = *(type metadata accessor for RequestMetadata(0) + 24);
  v8 = sub_197A87298();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 16))(v2, v6 + v7);
  v10 = *(v3 + 16);
  v11 = *(v0 + 56);
  OUTLINED_FUNCTION_23();
  v20 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_75(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_37_6(v16);
  OUTLINED_FUNCTION_113_1();

  return v18();
}

uint64_t sub_197A1721C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 40) = v0;

  sub_197947A40(v7, &qword_1EAF49128, &unk_197A8CE70);
  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 24);

    OUTLINED_FUNCTION_13();

    return v14();
  }
}

uint64_t Request.init(session:loggingIdentifier:clientData:requiredAssetIDs:)()
{
  OUTLINED_FUNCTION_166_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_125_2();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v14 = qword_1ED880258;
  v13[3] = type metadata accessor for ModelServiceClient();
  v13[4] = &protocol witness table for ModelServiceClient;
  *v13 = v14;
  v13[5] = v11;
  v13[6] = v9;
  v13[7] = v7;
  v13[8] = v5;
  v13[9] = v3;
  v13[10] = v1;
  OUTLINED_FUNCTION_165();
}

uint64_t Request.init(session:loggingIdentifier:clientData:)()
{
  OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_94_3();
  OUTLINED_FUNCTION_125_2();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v0 = type metadata accessor for ModelServiceClient();
  OUTLINED_FUNCTION_93_4(v0, &protocol witness table for ModelServiceClient);
  OUTLINED_FUNCTION_165();
}

uint64_t Request.init(session:loggingIdentifier:clientData:requiredAssetTypes:)()
{
  OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_125_2();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v0 = type metadata accessor for ModelServiceClient();
  OUTLINED_FUNCTION_93_4(v0, &protocol witness table for ModelServiceClient);
  OUTLINED_FUNCTION_165();
}

uint64_t Request.loggingIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t Request.clientData.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_22();
  sub_197984D18(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t Request.uuid.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Request(v0) + 36);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77();

  return v6(v5);
}

void Request.executeStream()()
{
  OUTLINED_FUNCTION_67();
  v2 = v0;
  v52 = v3;
  v54 = sub_197A87298();
  v4 = OUTLINED_FUNCTION_2(v54);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v51 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_28_0();
  v16 = type metadata accessor for ClientData(v15);
  v17 = OUTLINED_FUNCTION_110_2(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  sub_197961900(v0, v59);
  v50 = *(v0 + 5);
  v53 = *(v0 + 6);
  v23 = *(v0 + 7);
  v24 = *(v0 + 8);
  v25 = *(v0 + 9);
  v26 = sub_197A877A8();
  v27 = OUTLINED_FUNCTION_51_6();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);

  sub_197A878A8();
  sub_197984D18(v24, v25);
  sub_19797992C(v24, v25);
  sub_197974AFC(v24, v25);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  v33 = *(v1 + 28);
  sub_19794B118();
  v34 = *(v2 + 10);
  OUTLINED_FUNCTION_125_2();
  (*(v6 + 16))(v51, &v2[v35], v54);
  v36 = type metadata accessor for StreamingRequest(0);
  v37 = OUTLINED_FUNCTION_119_3(v36);
  v38 = v60;
  v39 = v61;
  __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  OUTLINED_FUNCTION_34_0();
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1_0();
  v45 = v44 - v43;
  (*(v46 + 16))(v44 - v43);
  sub_197A1F7E8(v45, v50, v53, v23, v22, 1, v34, v51, v37, v38, v39, &OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_serviceClient, &OBJC_IVAR____TtC20ModelManagerServices16StreamingRequest_metadata, 1);
  sub_197A878A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  sub_197A16E4C(&v55);

  v47 = v56;
  v48 = v58;
  v49 = v57;
  *v52 = v55;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 40) = v48;
  OUTLINED_FUNCTION_66();
}

uint64_t Request.execute()()
{
  OUTLINED_FUNCTION_9();
  v1[7] = v0;
  v2 = sub_197A87298();
  v1[8] = v2;
  OUTLINED_FUNCTION_10(v2);
  v1[9] = v3;
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for ClientData(0);
  v1[12] = v9;
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_197A17A68()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v36 = v0[10];
  v4 = v0[7];
  v32 = v0[12];
  v33 = v0[8];
  sub_197961900(v4, (v0 + 2));
  v34 = *(v4 + 5);
  v35 = *(v4 + 6);
  v5 = *(v4 + 7);
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  v8 = sub_197A877A8();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);

  sub_197A878A8();
  sub_197984D18(v6, v7);
  sub_19797992C(v6, v7);
  sub_197974AFC(v6, v7);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  v15 = *(v32 + 20);
  sub_19794B118();
  v16 = *(v4 + 10);
  OUTLINED_FUNCTION_125_2();
  (*(v3 + 16))(v36, &v4[v17], v33);
  v18 = type metadata accessor for OneShotRequest(0);
  v19 = OUTLINED_FUNCTION_119_3(v18);
  v21 = v0[5];
  v20 = v0[6];
  v22 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v21);
  OUTLINED_FUNCTION_34_0();
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = OUTLINED_FUNCTION_78_0();
  (*(v24 + 16))(v27, v22, v21);
  v0[15] = sub_197A1F7E8(v27, v34, v35, v5, v1, 1, v16, v36, v19, v21, v20, &OBJC_IVAR____TtC20ModelManagerServices14OneShotRequest_serviceClient, &OBJC_IVAR____TtC20ModelManagerServices14OneShotRequest_metadata, 0);
  sub_197A878A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[16] = v28;
  *v28 = v29;
  v28[1] = sub_197A17CD8;
  v30 = v0[13];

  return sub_197A15808(v30);
}

uint64_t sub_197A17CD8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A17EA0()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  OUTLINED_FUNCTION_13();
  v7 = v0[17];

  return v6();
}

Swift::Void __swiftcall Request.cancel()()
{
  v0 = type metadata accessor for Request(0);
  v1 = OUTLINED_FUNCTION_10(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_104();
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_63();
  sub_1979672B0();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_197958DFC();
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_197A180A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A1813C, 0, 0);
}

uint64_t sub_197A1813C()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for Request(0) + 36);
  v4 = sub_197A87298();
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 16))(v1, v2 + v3);
  v6 = *(v2 + 40);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_75(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_37_6(v8);

  return ModelServiceClient.cancelRequest(id:session:)();
}

uint64_t Request.cancel_async()()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t InputStreamingRequest.loggingIdentifier.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t InputStreamingRequest.requestId.getter()
{
  v0 = sub_197A87298();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_77();

  return v4(v3);
}

uint64_t InputStreamingRequest.__allocating_init(session:loggingIdentifier:clientDataSequence:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_102_3();
  InputStreamingRequest.init(session:loggingIdentifier:clientDataSequence:)();
  return v3;
}

void InputStreamingRequest.init(session:loggingIdentifier:clientDataSequence:)()
{
  OUTLINED_FUNCTION_166_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  swift_defaultActor_initialize();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingInputTasks) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingResponseTasks) = v13;
  v14 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask;
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  OUTLINED_FUNCTION_16_4();
  *(v0 + v14) = sub_1979CC804();
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_queuedRefillTasks) = v13;
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished) = 0;
  v0[21] = v8;
  sub_197961900(v2, (v0 + 14));
  v0[19] = v6;
  v0[20] = v4;
  v20 = qword_1ED8803B0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v21 = qword_1ED880258;
  v23 = type metadata accessor for ModelServiceClient();
  v24 = &protocol witness table for ModelServiceClient;

  *&v22 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  sub_197945EF8(&v22, v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient);
  OUTLINED_FUNCTION_165();
}

uint64_t InputStreamingRequest.__allocating_init(client:session:loggingIdentifier:clientDataSequence:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  InputStreamingRequest.init(client:session:loggingIdentifier:clientDataSequence:)();
  return v3;
}

void InputStreamingRequest.init(client:session:loggingIdentifier:clientDataSequence:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  swift_defaultActor_initialize();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingInputTasks) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingResponseTasks) = v15;
  v16 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask;
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  OUTLINED_FUNCTION_16_4();
  *(v0 + v16) = sub_1979CC804();
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_queuedRefillTasks) = v15;
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished) = 0;
  v0[21] = v8;
  sub_197945EF8(v2, (v0 + 14));
  v0[19] = v6;
  v0[20] = v4;
  sub_197945EF8(v10, v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient);
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A1878C@<X0>(int a1@<W1>, char a2@<W2>, char *a3@<X8>)
{
  v6 = *(v3 + 19);
  v5 = *(v3 + 20);
  v7 = type metadata accessor for RequestMetadata(0);
  v8 = v7[5];
  OUTLINED_FUNCTION_2_12();
  sub_1979672B0();
  v9 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_requestId;
  v10 = v7[6];
  v11 = sub_197A87298();
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 16);
  v13(&a3[v10], &v3[v9], v11);
  v14 = *(v3 + 21);
  v13(&a3[v7[7]], (v14 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid), v11);
  v15 = *(v14 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v16 = *(v14 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v20 = v15;
  *a3 = v6;
  *(a3 + 1) = v5;
  *&a3[v7[8]] = 0;
  a3[v7[9]] = 1;
  a3[v7[10]] = 1;
  a3[v7[11]] = 1;
  *&a3[v7[12]] = a1;
  a3[v7[13]] = a2;
  v17 = &a3[v7[14]];
  v13(v17, &a3[v10], v11);
  *&v17[*(type metadata accessor for RequestKey(0) + 20)] = a1;
  v18 = &a3[v7[15]];
  *v18 = v20;
  *(v18 + 1) = v16;
  sub_197A878A8();

  return sub_197A878A8();
}

uint64_t sub_197A18920(char a1)
{
  if ((a1 & 1) == 0 || (v2 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingResponseTasks, OUTLINED_FUNCTION_95(), !*(*(v1 + v2) + 16)))
  {
    v3 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingInputTasks;
    OUTLINED_FUNCTION_95();
    if (!*(*(v1 + v3) + 16))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_46();
  v4 = sub_197A260B0();
  swift_endAccess();
  return v4;
}

uint64_t sub_197A189F0()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[8];
  v2 = sub_197A18920(1);
  v0[9] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86A8] + 4);
    v4 = swift_task_alloc();
    v0[10] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_121_2();
    *v4 = v5;
    v6 = sub_197A18C48;
  }

  else
  {
    v7 = v0[8];
    v8 = sub_197A18920(0);
    v0[12] = v8;
    if (v8)
    {
      v9 = *(MEMORY[0x1E69E86A8] + 4);
      v4 = swift_task_alloc();
      v0[13] = v4;
      v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
      *v4 = v0;
      v6 = sub_197A18DB4;
    }

    else
    {
      v10 = v0[8];
      v11 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_queuedRefillTasks;
      OUTLINED_FUNCTION_95();
      if (*(*(v10 + v11) + 16))
      {
        OUTLINED_FUNCTION_46();
        v0[19] = sub_197A260B0();
        swift_endAccess();
        v12 = *(MEMORY[0x1E69E86A8] + 4);
        v4 = swift_task_alloc();
        v0[20] = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
        OUTLINED_FUNCTION_121_2();
        *v4 = v13;
        v6 = sub_197A19134;
      }

      else
      {
        v0[22] = *(v0[8] + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask);
        v14 = *(MEMORY[0x1E69E86A8] + 4);

        v4 = swift_task_alloc();
        v0[23] = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
        OUTLINED_FUNCTION_121_2();
        *v4 = v15;
        v6 = sub_197A1929C;
      }
    }
  }

  v4[1] = v6;
  OUTLINED_FUNCTION_116_3();

  return MEMORY[0x1EEE6DA10](v16);
}

uint64_t sub_197A18C48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 80);
  *v4 = *v2;
  *(v3 + 88) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A18D5C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_197A18DB4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A18EC8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[8];
  v2 = sub_197A18920(1);
  v0[16] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86A8] + 4);
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_197A18FBC;
    v5 = v0[14];

    return MEMORY[0x1EEE6DA10](v4);
  }

  else
  {
    v6 = v0[12];

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A18FBC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A190D0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_197A19134()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[19];
    v10 = v3[8];

    v11 = sub_197A19524;
    v12 = v10;
  }

  else
  {
    v12 = v3[8];
    v11 = sub_197A19244;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_197A19244()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_197A1929C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[22];
    v10 = v3[8];

    v11 = sub_197A1952C;
    v12 = v10;
  }

  else
  {
    v12 = v3[8];
    v11 = sub_197A193AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_197A193AC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_197A19404()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A19460()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 96);

  v2 = *(v0 + 120);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A194BC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[18];
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t InputStreamingRequest.execute()()
{
  OUTLINED_FUNCTION_9();
  v1[8] = v2;
  v1[9] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for ClientData(0);
  v1[12] = v9;
  OUTLINED_FUNCTION_10(v9);
  v1[13] = v10;
  v1[14] = *(v11 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_197A1964C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[9];
  v2 = swift_allocObject();
  v0[17] = v2;
  v4 = v1[17];
  v3 = v1[18];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  OUTLINED_FUNCTION_34_0();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_78_0();
  (*(v7 + 16))(v10, v5, v4);
  v11 = *(v3 + 8);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_197A87C98();

  v12 = v2[6];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 2), v2[5]);
  v13 = *(v12 + 8);
  v14 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[18] = v15;
  *v15 = v16;
  v15[1] = sub_197A19804;
  v17 = v0[11];
  OUTLINED_FUNCTION_69_6();

  return MEMORY[0x1EEE6D8C8](v18);
}

uint64_t sub_197A19804()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A19918()
{
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[12]) == 1)
  {
    v2 = v0[17];
    sub_197947A40(v1, &qword_1EAF49110, &qword_197A92D60);
    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_21_7();
    sub_197978008(v3, 255, v4);
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6 = v0[15];
    v5 = v0[16];
    v8 = v0[10];
    v7 = v0[11];

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[9];
    v41 = v0[10];
    v42 = v0[16];
    v43 = v0[8];
    v44 = v0[17];
    sub_197958DFC();
    OUTLINED_FUNCTION_34_4();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_61_3();
    sub_1979672B0();
    v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    sub_197958DFC();
    type metadata accessor for CombinedResponseIterator();
    v17 = OUTLINED_FUNCTION_164();
    swift_retain_n();

    sub_197A12550();
    v14[2] = &unk_197A955E8;
    v14[3] = v16;
    v14[4] = 0;
    v14[5] = nullsub_1;
    v14[6] = 0;
    v14[7] = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = 1;
    v19 = sub_197A1C4DC(v44, v13, v14, v18);
    v20 = *(v13 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask);
    *(v13 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask) = v19;

    v21 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_queuedRefillTasks;
    OUTLINED_FUNCTION_46();
    sub_197A1ECD8(sub_197A1EFEC);
    v22 = *(*(v13 + v21) + 16);
    v23 = OUTLINED_FUNCTION_61_3();
    sub_197A1ED64(v23, v24);
    v25 = *(v13 + v21);
    *(v25 + 16) = v22 + 1;
    *(v25 + 8 * v22 + 32) = v19;
    *(v13 + v21) = v25;
    swift_endAccess();
    sub_197A87C08();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_63_4();
    v32 = sub_197978008(v30, 255, v31);
    OUTLINED_FUNCTION_34_4();
    v33 = swift_allocObject();
    v33[2] = v13;
    v33[3] = v32;
    v33[4] = v13;
    v33[5] = v14;
    v33[6] = v44;
    v33[7] = v18;
    swift_retain_n();

    OUTLINED_FUNCTION_16_4();
    sub_1979CC804();

    OUTLINED_FUNCTION_0_16();
    sub_197978A98();
    OUTLINED_FUNCTION_95();
    v34 = v14[2];
    v35 = v14[3];
    v36 = v14[4];
    v37 = v14[5];
    v38 = v14[6];
    v39 = v14[7];
    *v43 = v34;
    v43[1] = v35;
    v43[2] = v36;
    v43[3] = v37;
    v43[4] = v38;
    v43[5] = v39;
    sub_197948F1C(v34);
    MEMORY[0x19A8EBBD0](v36);

    OUTLINED_FUNCTION_15();
  }

  return v9();
}

uint64_t sub_197A19D84()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[10];
  v5 = v0[11];

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A19E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for RequestMetadata(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A19EA0, 0, 0);
}

uint64_t sub_197A19EA0()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  v2 = (v1 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient);
  v3 = *(v1 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient + 24);
  v0[6] = v3;
  v0[7] = v2[4];
  v0[8] = __swift_project_boxed_opaque_existential_1(v2, v3);
  v0[9] = *(v1 + 168);
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A19F24()
{
  OUTLINED_FUNCTION_18();
  v17 = *(v0 + 56);
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  sub_197A1878C(0, 0, *(v0 + 40));
  v3 = *(v17 + 72);
  OUTLINED_FUNCTION_23();
  v16 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 80) = v7;
  *v7 = v8;
  v7[1] = sub_197A1A048;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = *(v0 + 16);

  return v16(v14, v9, v13, v11, v12);
}

uint64_t sub_197A1A048()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 88) = v0;

  OUTLINED_FUNCTION_6_9();
  sub_197978A98();
  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 40);

    OUTLINED_FUNCTION_13();

    return v14();
  }
}

uint64_t sub_197A1A190()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_197A1A1EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_197A189D4();
}

uint64_t sub_197A1A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a3;
  v4[5] = a1;
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_197A1A320;

  return sub_197A1B920(a3, a4);
}

uint64_t sub_197A1A320()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A1A434()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_197A1A48C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_95();
  v0[10] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_197A1A538;
  v3 = OUTLINED_FUNCTION_32_1(v0[9]);

  return sub_197A12668(v3);
}

uint64_t sub_197A1A538()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = sub_197A1A6B4;
    v10 = 0;
  }

  else
  {
    v11 = v3[10];
    v12 = v3[5];

    v9 = sub_197A1A648;
    v10 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_197A1A648()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  swift_willThrow();
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A1A6B4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A1A714()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A1A778(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_197A1A864;

  return v8();
}

uint64_t sub_197A1A864()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    v9 = *(v3 + 40);

    return MEMORY[0x1EEE6DFA0](sub_197A1A97C, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_197A1A97C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_95();
  v0[9] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_197A1AA28;
  v3 = OUTLINED_FUNCTION_32_1(v0[8]);

  return sub_197A12668(v3);
}

uint64_t sub_197A1AA28()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = sub_197A1AB9C;
    v10 = 0;
  }

  else
  {
    v11 = v3[9];
    v12 = v3[5];

    v9 = sub_197A1AB38;
    v10 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_197A1AB38()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);
  swift_willThrow();
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A1AB9C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A1ABFC()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A1AC58(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2[5] = a1;
  v2[6] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for ClientData(0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RequestMetadata(0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_197A1AD80, a1, 0);
}

uint64_t sub_197A1AD80()
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = v2[9];
  v4 = v2[10];
  v6 = v2[7];
  v5 = v2[8];
  v7 = v2[5];
  v8 = OUTLINED_FUNCTION_87_5(v7 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v10 = *(v7 + 168);
  v11 = sub_197A877A8();
  v12 = OUTLINED_FUNCTION_51_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  *(v2 + 118) = 0;
  v2[14] = 0;
  xpc_data_create(v2 + 14, 0);
  sub_197A87798();
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  v18 = *(v5 + 20);
  OUTLINED_FUNCTION_144_2();
  sub_19794B118();
  sub_197A1878C(*(v7 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID), 1, v4);
  OUTLINED_FUNCTION_0_16();
  sub_197978A98();
  v19 = *(v1 + 80);
  OUTLINED_FUNCTION_23();
  v27 = (v20 + *v20);
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v2[11] = v23;
  *v23 = v2;
  v23[1] = sub_197A1AF88;
  v24 = v2[10];
  v25 = *MEMORY[0x1E69E9840];

  return v27(v10, v24, v0, v1);
}

uint64_t sub_197A1AF88()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = v2[11];
  *v4 = *v1;
  *(v3 + 96) = v0;

  v6 = v2[10];
  v7 = v2[5];
  sub_197978A98();
  if (v0)
  {
    v8 = sub_197A1B2E4;
  }

  else
  {
    v8 = sub_197A1B104;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A1B104()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_46();
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A1B198()
{
  OUTLINED_FUNCTION_9();
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(v0 + 48) + 56);
  *(v0 + 104) = v1;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_197A1B228, v1, 0);
}

uint64_t sub_197A1B228()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  *(v0[13] + 216) = 1;
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_197A1B2E4()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x1E69E9840];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_13();
  v5 = v0[12];
  v6 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_197A1B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = sub_197978008(&qword_1EAF4A0E8, 255, type metadata accessor for InputStreamingRequest);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a2;
  v12[5] = a1;
  v12[6] = a3;
  swift_retain_n();

  v13 = sub_1979CC804();
  v14 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingResponseTasks;
  swift_beginAccess();
  sub_197A1ECD8(sub_197A1EFEC);
  v15 = *(*(a1 + v14) + 16);
  sub_197A1ED64(v15, sub_197A1EFEC);
  v16 = *(a1 + v14);
  *(v16 + 16) = v15 + 1;
  *(v16 + 8 * v15 + 32) = v13;
  *(a1 + v14) = v16;
  return swift_endAccess();
}

uint64_t sub_197A1B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_197A1B570, a5, 0);
}

uint64_t sub_197A1B570()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[5];
  v1 = v0[6];

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_197A1B610;
  v4 = v0[5];
  v5 = v0[6];

  return sub_197A1A27C(v5, v4, v5, v2 + 16);
}

uint64_t sub_197A1B610()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_44_2();

    return v9();
  }

  else
  {
    v11 = *(v3 + 48);
    OUTLINED_FUNCTION_44_1();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_197A1B730()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[7];
  OUTLINED_FUNCTION_143_2();
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[6];
    *(v0[7] + 16) = v5;
    if (v5 == *(v6 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID) && *(v0[6] + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished) == 1)
    {
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_197A1B840;
      v8 = v0[5];
      v9 = OUTLINED_FUNCTION_32_1(v0[6]);

      return sub_197A1AC58(v9, v10);
    }

    else
    {
      OUTLINED_FUNCTION_15();

      return v11();
    }
  }

  return result;
}

uint64_t sub_197A1B840()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197A1B920(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x1EEE6DFA0](sub_197A1B944, a1, 0);
}

uint64_t sub_197A1B944()
{
  OUTLINED_FUNCTION_49_0();
  v2 = OUTLINED_FUNCTION_87_5(*(v1 + 120) + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = *(v0 + 88);
  OUTLINED_FUNCTION_23();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 136) = v8;
  *v8 = v9;
  v8[1] = sub_197A1BA78;
  OUTLINED_FUNCTION_113_1();

  return v10();
}

uint64_t sub_197A1BA78()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 120);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A1BB8C()
{
  OUTLINED_FUNCTION_9();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 128);
    sub_197945EF8((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_46();
    v2 = OUTLINED_FUNCTION_73();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return v5();
  }
}

uint64_t sub_197A1BC30()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 128) + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 152) = v2;
  *v2 = v3;
  v2[1] = sub_197A1BCC4;

  return sub_197A12704(v0 + 16);
}

uint64_t sub_197A1BCC4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    v9 = *(v3 + 120);
    v10 = sub_197A1BE2C;
  }

  else
  {
    v11 = *(v3 + 120);
    swift_endAccess();
    v10 = sub_197A1BDD4;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A1BDD4()
{
  OUTLINED_FUNCTION_9();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_197A1BE2C()
{
  OUTLINED_FUNCTION_9();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A1BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RequestMetadata(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  sub_1979672B0();
  v15 = sub_197978008(&qword_1EAF4A0E8, 255, type metadata accessor for InputStreamingRequest);
  v16 = (v9 + ((*(v8 + 80) + 48) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v15;
  v17[4] = a3;
  v17[5] = a2;
  sub_197958DFC();
  *(v17 + v16) = a4;
  swift_retain_n();

  v18 = sub_1979CC804();
  v19 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingInputTasks;
  swift_beginAccess();
  sub_197A1ECD8(sub_197A1EFEC);
  v20 = *(*(a2 + v19) + 16);
  sub_197A1ED64(v20, sub_197A1EFEC);
  v21 = *(a2 + v19);
  *(v21 + 16) = v20 + 1;
  *(v21 + 8 * v20 + 32) = v18;
  *(a2 + v19) = v21;
  return swift_endAccess();
}

uint64_t sub_197A1C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_197A1C15C, a5, 0);
}

uint64_t sub_197A1C15C()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *(v1 + 16) = *(v0 + 3);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_197A1C218;
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_32_1(v0[3]);

  return sub_197A1A778(v4, v5, v1, v6);
}

uint64_t sub_197A1C218()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[3];
    v10 = sub_1979CDE54;
  }

  else
  {
    v11 = v3[6];
    v12 = v3[3];

    v10 = sub_197A1C328;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A1C328()
{
  OUTLINED_FUNCTION_9();
  sub_197A1B388(v0[3], v0[2], v0[5]);
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_197A1C384(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_197A1C3A8, a1, 0);
}

uint64_t sub_197A1C3A8()
{
  OUTLINED_FUNCTION_33();
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_87_5(v3 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = *(v3 + 168);
  v7 = *(v1 + 80);
  OUTLINED_FUNCTION_23();
  v16 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_75(v11);
  *v12 = v13;
  v12[1] = sub_197976F2C;
  v14 = *(v2 + 24);

  return v16(v6, v14, v0, v1);
}

uint64_t sub_197A1C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = sub_197978008(&qword_1EAF4A0E8, 255, type metadata accessor for InputStreamingRequest);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  swift_retain_n();

  return sub_1979CC804();
}

uint64_t sub_197A1C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = *(*(type metadata accessor for RequestMetadata(0) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = type metadata accessor for ClientData(0);
  v7[11] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A1C738, a5, 0);
}

uint64_t sub_197A1C738()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_46();
  v2 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, *(v1 + 40));
  v3 = *(v2 + 8);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[13] = v5;
  *v5 = v6;
  v5[1] = sub_197A1C7F4;
  v7 = v0[10];
  OUTLINED_FUNCTION_108_2();

  return MEMORY[0x1EEE6D8C8](v8);
}

uint64_t sub_197A1C7F4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    v9 = *(v3 + 48);
    v10 = sub_197A1CA68;
  }

  else
  {
    v11 = *(v3 + 48);
    swift_endAccess();
    v10 = sub_197A1C904;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A1C904()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[10];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[11]) != 1)
  {
    v9 = v0[12];
    v10 = v0[6];
    OUTLINED_FUNCTION_1_12();
    result = sub_197958DFC();
    v11 = *(v10 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID);
    v12 = v11 + 1;
    if (v11 != -1)
    {
      v13 = v0[12];
      v15 = v0[8];
      v14 = v0[9];
      v16 = v0[6];
      v17 = v0[7];
      *(v10 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID) = v12;
      sub_197A1878C(v12, 0, v14);
      sub_197A1BE98(v14, v16, v17, v15);
      OUTLINED_FUNCTION_6_9();
      sub_197978A98();
      OUTLINED_FUNCTION_0_16();
      sub_197978A98();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_11;
  }

  v2 = v0[6];
  result = sub_197947A40(v1, &qword_1EAF49110, &qword_197A92D60);
  v4 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished;
  if ((*(v2 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished) & 1) == 0)
  {
    v5 = v0[6];
    v6 = *(v5 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      *(v5 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID) = v8;
      *(v2 + v4) = 1;
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];

  OUTLINED_FUNCTION_15();

  return v21();
}

uint64_t sub_197A1CA68()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v5 = v0[14];

  return v4();
}

uint64_t sub_197A1CAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A1CB9C, a4, 0);
}

uint64_t sub_197A1CB9C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished;
  v3 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask;
  v0[21] = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_inputFinished;
  v0[22] = v3;
  v0[23] = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_queuedRefillTasks;
  if (*(v1 + v2))
  {
    v4 = v0[18];
    OUTLINED_FUNCTION_95();
    if (*(v4 + 16) == *(v1 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID))
    {
      v5 = swift_task_alloc();
      v0[30] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_43_6(v5);

      return sub_197A1AC58(v6, v7);
    }

    else
    {
      v14 = v0[19];
      v13 = v0[20];

      OUTLINED_FUNCTION_15();

      return v15();
    }
  }

  else
  {
    v0[24] = *(v1 + v3);
    v9 = *(MEMORY[0x1E69E86A8] + 4);

    v10 = swift_task_alloc();
    v0[25] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_121_2();
    *v10 = v11;
    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_116_3();

    return MEMORY[0x1EEE6DA10](v12);
  }
}

uint64_t sub_197A1CD24()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[24];
    v10 = v3[15];

    v11 = sub_197A1D26C;
    v12 = v10;
  }

  else
  {
    v12 = v3[15];
    v11 = sub_197A1CE34;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_197A1CE34()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[15];

  v5 = *(v4 + v3);
  OUTLINED_FUNCTION_46();
  v6 = *(v4 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v2) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = v0[23];
    v51 = v0[15];
    v6 = sub_197A1EFEC(0, v6[2] + 1, 1, v6);
    *(v51 + v50) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_197A1EFEC((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = v0[23];
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[17];
  v52 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v6[2] = v9 + 1;
  v6[v9 + 4] = v5;
  *(v15 + v10) = v6;
  swift_endAccess();
  v16 = sub_197A87C08();
  v17 = OUTLINED_FUNCTION_51_6();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_63_4();
  v22 = sub_197978008(v20, 255, v21);
  OUTLINED_FUNCTION_34_4();
  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = v22;
  v23[4] = v13;
  v23[5] = v15;
  v23[6] = v14;
  v23[7] = v52;
  sub_197944528();
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v11, 1, v16);
  swift_retain_n();

  v24 = v0[19];
  if (v11 == 1)
  {
    sub_197947A40(v0[19], &qword_1EAF48AB0, &unk_197A89150);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0(v16);
    (*(v25 + 8))(v24, v16);
  }

  v27 = v23[2];
  v26 = v23[3];
  swift_unknownObjectRetain();

  if (v27)
  {
    swift_getObjectType();
    v28 = sub_197A87B58();
    v30 = v29;
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  sub_197947A40(v0[20], &qword_1EAF48AB0, &unk_197A89150);
  if (v30 | v28)
  {
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = v28;
    v0[5] = v30;
  }

  v31 = v0[22];
  v32 = v0[15];
  v33 = swift_task_create();
  v34 = *(v32 + v31);
  *(v32 + v31) = v33;

  v35 = v0[15];
  if (*(v35 + v0[21]) == 1)
  {
    v36 = v0[18];
    OUTLINED_FUNCTION_95();
    if (*(v36 + 16) != *(v35 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_nextSubrequestID))
    {
      v47 = v0[19];
      v46 = v0[20];

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_253();

      __asm { BRAA            X1, X16 }
    }

    v37 = swift_task_alloc();
    v0[30] = v37;
    *v37 = v0;
    OUTLINED_FUNCTION_43_6(v37);
    OUTLINED_FUNCTION_253();

    return sub_197A1AC58(v38, v39);
  }

  else
  {
    v0[24] = *(v35 + v0[22]);
    v42 = *(MEMORY[0x1E69E86A8] + 4);

    v43 = swift_task_alloc();
    v0[25] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_121_2();
    *v43 = v44;
    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_116_3();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x1EEE6DA10](v45);
  }
}

uint64_t sub_197A1D26C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[16];
  OUTLINED_FUNCTION_95();
  v0[27] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_197A1D31C;
  v3 = OUTLINED_FUNCTION_32_1(v0[26]);

  return sub_197A12668(v3);
}

uint64_t sub_197A1D31C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[29] = v0;

  if (v0)
  {
    v9 = sub_197A1D4A0;
    v10 = 0;
  }

  else
  {
    v11 = v3[27];
    v12 = v3[15];

    v9 = sub_197A1D42C;
    v10 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_197A1D42C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[26];
  swift_willThrow();
  v2 = v0[26];
  v4 = v0[19];
  v3 = v0[20];

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197A1D4A0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 216);
  v2 = *(v0 + 120);

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A1D500()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 232);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A1D56C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  v2 = *(v0 + 240);
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_46_0();
  v6 = *(v5 + 160);
  v7 = *(v0 + 152);

  OUTLINED_FUNCTION_44_2();

  return v8();
}

uint64_t *InputStreamingRequest.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[20];

  v2 = v0[21];

  v3 = OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_requestId;
  v4 = sub_197A87298();
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingInputTasks);

  v7 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_pendingResponseTasks);

  v8 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_currentRefillTask);

  v9 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_queuedRefillTasks);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC20ModelManagerServices21InputStreamingRequest_serviceClient));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t InputStreamingRequest.__deallocating_deinit()
{
  InputStreamingRequest.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t RequestCancellationReason.description.getter()
{
  v1 = *v0;
  v2 = 0x43207963696C6F50;
  if (*v0 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

uint64_t RequestCancellationReason.errorValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  if ((v2 - 1) < 2)
  {
    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_41();
LABEL_7:

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  if (!v2 || v2 == 3)
  {
    v7 = type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_22();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_56_0();
    v6 = v7;
    goto LABEL_7;
  }

  *a1 = v2;
  v9 = type metadata accessor for ModelManagerError();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);

  return sub_197A878A8();
}

uint64_t static RequestCancellationReason.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_12;
      }

      v2 = 0;
      goto LABEL_10;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_12;
      }

      v2 = 1;
LABEL_10:
      v4 = 1;
      break;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_12;
      }

      v4 = 1;
      v2 = 2;
      break;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      v4 = 1;
      v2 = 3;
      break;
    default:
      if (v3 >= 4)
      {
        sub_1979D559C(*a2);
        sub_1979D559C(v2);
        v6 = OUTLINED_FUNCTION_22();
        v4 = sub_19799F5B0(v6, v7);
      }

      else
      {
LABEL_12:
        sub_1979D559C(*a2);
        sub_1979D559C(v2);
        v4 = 0;
      }

      break;
  }

  sub_197A0E098(v2);
  sub_197A0E098(v3);
  return v4 & 1;
}

uint64_t sub_197A1DA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68437963696C6F70 && a2 == 0xEC00000065676E61;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000197AA3C20 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6944746E65696C63 && a2 == 0xEF6C61776F766173;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000197AA3C40 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x8000000197AA3C60 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_197A88218();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_197A1DBB8(char a1)
{
  result = 0x68437963696C6F70;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6944746E65696C63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A1DC70(uint64_t a1)
{
  v2 = sub_197A1FE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A1DCAC(uint64_t a1)
{
  v2 = sub_197A1FE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A1DCE8(uint64_t a1)
{
  v2 = sub_197A1FE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A1DD24(uint64_t a1)
{
  v2 = sub_197A1FE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A1DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A1DA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A1DD90(uint64_t a1)
{
  v2 = sub_197A1FD5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A1DDCC(uint64_t a1)
{
  v2 = sub_197A1FD5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A1DE08(uint64_t a1)
{
  v2 = sub_197A1FF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A1DE44(uint64_t a1)
{
  v2 = sub_197A1FF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A1DE80(uint64_t a1)
{
  v2 = sub_197A1FDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A1DEBC(uint64_t a1)
{
  v2 = sub_197A1FDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A1DEF8(uint64_t a1)
{
  v2 = sub_197A1FEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A1DF34(uint64_t a1)
{
  v2 = sub_197A1FEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RequestCancellationReason.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v69 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0F0, &qword_197A95610);
  v6 = OUTLINED_FUNCTION_2(v5);
  v65 = v7;
  v66 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0F8, &qword_197A95618);
  v13 = OUTLINED_FUNCTION_2(v12);
  v62 = v14;
  v63 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v61 = v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A100, &qword_197A95620);
  OUTLINED_FUNCTION_2(v59);
  v57 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_156();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A108, &qword_197A95628);
  OUTLINED_FUNCTION_2(v60);
  v58 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30();
  v56[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A110, &qword_197A95630);
  OUTLINED_FUNCTION_2(v28);
  v56[0] = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v56 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A118, &qword_197A95638);
  v36 = OUTLINED_FUNCTION_2(v35);
  v67 = v37;
  v68 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_104();
  v41 = *v1;
  v42 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_197A1FD5C();
  sub_197A883D8();
  switch(v41)
  {
    case 0:
      sub_197A1FF00();
      OUTLINED_FUNCTION_89_5();
      (*(v56[0] + 8))(v34, v28);
      goto LABEL_6;
    case 1:
      sub_197A1FE58();
      OUTLINED_FUNCTION_162_0();
      (*(v57 + 8))(v0, v59);
      v49 = *(v67 + 8);
      v46 = OUTLINED_FUNCTION_102_3();
      goto LABEL_8;
    case 2:
      sub_197A1FE04();
      v43 = v61;
      OUTLINED_FUNCTION_89_5();
      v45 = v62;
      v44 = v63;
      goto LABEL_5;
    case 3:
      sub_197A1FDB0();
      v43 = v64;
      OUTLINED_FUNCTION_89_5();
      v45 = v65;
      v44 = v66;
LABEL_5:
      (*(v45 + 8))(v43, v44);
LABEL_6:
      v46 = OUTLINED_FUNCTION_105_4();
      v48 = v0;
LABEL_8:
      v47(v46, v48);
      break;
    default:
      sub_197A1FEAC();
      OUTLINED_FUNCTION_162_0();
      v70 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
      OUTLINED_FUNCTION_34_1(&qword_1ED87F958);
      sub_197A880E8();
      v50 = *(v58 + 8);
      v51 = OUTLINED_FUNCTION_61_3();
      v52(v51);
      v53 = *(v67 + 8);
      v54 = OUTLINED_FUNCTION_102_3();
      v55(v54);
      break;
  }

  OUTLINED_FUNCTION_93();
}

void RequestCancellationReason.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v102 = v0;
  v3 = v2;
  v98 = v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A138, &qword_197A95640);
  OUTLINED_FUNCTION_2(v100);
  v94 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v97 = v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A140, &qword_197A95648);
  OUTLINED_FUNCTION_2(v99);
  v92 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v96 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A148, &qword_197A95650);
  v16 = OUTLINED_FUNCTION_2(v15);
  v89 = v17;
  v90 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v95 = v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A150, &qword_197A95658);
  OUTLINED_FUNCTION_2(v93);
  v91 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v84 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A158, &qword_197A95660);
  OUTLINED_FUNCTION_2(v28);
  v88 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_104();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A160, &unk_197A95668);
  OUTLINED_FUNCTION_2(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v84 - v39;
  v42 = v3[3];
  v41 = v3[4];
  v101 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v42);
  sub_197A1FD5C();
  v43 = v102;
  sub_197A883A8();
  if (v43)
  {
    goto LABEL_8;
  }

  v85 = v28;
  v86 = v1;
  v87 = v27;
  v44 = v99;
  v102 = v35;
  v45 = sub_197A88028();
  sub_197953BF0(v45, 0);
  if (v47 == v48 >> 1)
  {
LABEL_7:
    v60 = sub_197A87E88();
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820) + 48);
    *v62 = &type metadata for RequestCancellationReason;
    sub_197A87F38();
    sub_197A87E78();
    v64 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_36_0(v60);
    (*(v65 + 104))(v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    v66 = OUTLINED_FUNCTION_25_6();
    v67(v66);
LABEL_8:
    v68 = v101;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    OUTLINED_FUNCTION_93();
    return;
  }

  v84[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    sub_197953BF8(v47 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      v54 = v98;
      switch(v49)
      {
        case 1:
          sub_197A1FEAC();
          OUTLINED_FUNCTION_48_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
          OUTLINED_FUNCTION_33_2(&qword_1ED87FE58);
          sub_197A87FD8();
          v81 = v102;
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_126();
          v83(v82);
          (*(v81 + 8))(v40, v33);
          v59 = v103;
          break;
        case 2:
          sub_197A1FE58();
          OUTLINED_FUNCTION_48_6();
          swift_unknownObjectRelease();
          v73 = OUTLINED_FUNCTION_105_4();
          v74(v73);
          v75 = OUTLINED_FUNCTION_25_6();
          v76(v75);
          v59 = 1;
          break;
        case 3:
          sub_197A1FE04();
          OUTLINED_FUNCTION_48_6();
          swift_unknownObjectRelease();
          v77 = OUTLINED_FUNCTION_105_4();
          v78(v77, v44);
          v79 = OUTLINED_FUNCTION_25_6();
          v80(v79);
          v59 = 2;
          break;
        case 4:
          sub_197A1FDB0();
          OUTLINED_FUNCTION_48_6();
          swift_unknownObjectRelease();
          v69 = OUTLINED_FUNCTION_126();
          v70(v69);
          v71 = OUTLINED_FUNCTION_25_6();
          v72(v71);
          v59 = 3;
          break;
        default:
          sub_197A1FF00();
          OUTLINED_FUNCTION_48_6();
          swift_unknownObjectRelease();
          v55 = OUTLINED_FUNCTION_105_4();
          v56(v55, v85);
          v57 = OUTLINED_FUNCTION_25_6();
          v58(v57);
          v59 = 0;
          break;
      }

      v68 = v101;
      *v54 = v59;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_197A1EBF4()
{
  result = qword_1ED87FA38;
  if (!qword_1ED87FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA38);
  }

  return result;
}

uint64_t sub_197A1ECD8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_197A1ED64(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

size_t sub_197A1EDAC(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_197A1F32C(v9, a2, &qword_1EAF4A198, &unk_197A96710, type metadata accessor for ClientData);
  v11 = type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_70(v11);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_197A1F58C(a4 + v13, v9, v10 + v13, type metadata accessor for ClientData);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_152_1();
  }

  return v10;
}

void *sub_197A1EEBC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1B0, &qword_197A967C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_100_0();
      memmove(v13, v14, v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1B8, qword_197A967D0);
    OUTLINED_FUNCTION_100_0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_197A1EFEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1A0, &unk_197A96780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_100_0();
      memmove(v13, v14, v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1A8, &qword_197A981C0);
    OUTLINED_FUNCTION_100_0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_197A1F114(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_197A1F32C(v9, a2, &qword_1EAF4A190, &unk_197A98150, type metadata accessor for ModelServiceClient.PendingRequest);
  v11 = type metadata accessor for ModelServiceClient.PendingRequest(0);
  OUTLINED_FUNCTION_70(v11);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_197A1F58C(a4 + v13, v9, v10 + v13, type metadata accessor for ModelServiceClient.PendingRequest);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_152_1();
  }

  return v10;
}