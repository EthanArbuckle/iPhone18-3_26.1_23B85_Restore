unint64_t sub_197A49CD0()
{
  result = qword_1ED87DD00;
  if (!qword_1ED87DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD00);
  }

  return result;
}

unint64_t sub_197A49D24()
{
  result = qword_1EAF4A590;
  if (!qword_1EAF4A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A590);
  }

  return result;
}

unint64_t sub_197A49D78()
{
  result = qword_1EAF4A598;
  if (!qword_1EAF4A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A598);
  }

  return result;
}

unint64_t sub_197A49DCC()
{
  result = qword_1ED87E8C0;
  if (!qword_1ED87E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E8C0);
  }

  return result;
}

unint64_t sub_197A49E20()
{
  result = qword_1ED87E9C0;
  if (!qword_1ED87E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E9C0);
  }

  return result;
}

unint64_t sub_197A49E74()
{
  result = qword_1ED87D6C8;
  if (!qword_1ED87D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6C8);
  }

  return result;
}

unint64_t sub_197A49EC8()
{
  result = qword_1EAF4A5A0;
  if (!qword_1EAF4A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A5A0);
  }

  return result;
}

unint64_t sub_197A49F1C()
{
  result = qword_1ED87FA50;
  if (!qword_1ED87FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA50);
  }

  return result;
}

uint64_t static IPCResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v55 = a6;
  v60 = a1;
  v61 = a2;
  OUTLINED_FUNCTION_34_0();
  v58 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v53 = v12;
  OUTLINED_FUNCTION_34_0();
  v57 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v52 = v17;
  v59 = v18;
  v19 = type metadata accessor for IPCResult();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_27();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v52 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2(TupleTypeMetadata2);
  v56 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_66_0();
  v37 = *(v36 + 48);
  v38 = *(v22 + 16);
  v38(v6, v60, v19);
  v38(v6 + v37, v61, v19);
  OUTLINED_FUNCTION_61();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v44 = OUTLINED_FUNCTION_102_3();
    (v38)(v44);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v45 = v57;
      v46 = v52;
      (*(v57 + 32))(v52, v6 + v37, a3);
      v42 = sub_197A87918();
      v47 = *(v45 + 8);
      v47(v46, a3);
      v47(v30, a3);
      goto LABEL_9;
    }

    (*(v57 + 8))(v30, a3);
    goto LABEL_7;
  }

  v38(v27, v6, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v58 + 8))(v27, v59);
LABEL_7:
    v42 = 0;
    v22 = v56;
    goto LABEL_9;
  }

  v40 = v58;
  v39 = v59;
  v41 = v53;
  (*(v58 + 32))(v53, v6 + v37, v59);
  v42 = sub_197A87918();
  v43 = *(v40 + 8);
  v43(v41, v39);
  v43(v27, v39);
LABEL_9:
  v48 = *(v22 + 8);
  v49 = OUTLINED_FUNCTION_61();
  v50(v49);
  return v42 & 1;
}

uint64_t ModelXPCRequest.CreateSessionRequest.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for Session.Metadata(v0);
  OUTLINED_FUNCTION_177(*(v1 + 36));
  return sub_197944528();
}

uint64_t sub_197A4A3A4(uint64_t a1)
{
  v2 = sub_197962B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A3E0(uint64_t a1)
{
  v2 = sub_197962B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000197AA4630 == a2)
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

uint64_t sub_197A4A508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4A438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4A530(uint64_t a1)
{
  v2 = sub_197954810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A56C(uint64_t a1)
{
  v2 = sub_197954810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A5AC(uint64_t a1)
{
  v2 = sub_19796D7E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A5E8(uint64_t a1)
{
  v2 = sub_19796D7E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A640(uint64_t a1)
{
  v2 = sub_197965700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A67C(uint64_t a1)
{
  v2 = sub_197965700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A6BC(uint64_t a1)
{
  v2 = sub_197971C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A6F8(uint64_t a1)
{
  v2 = sub_197971C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_197A4A820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4A750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4A848(uint64_t a1)
{
  v2 = sub_197964B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A884(uint64_t a1)
{
  v2 = sub_197964B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A8C4(uint64_t a1)
{
  v2 = sub_19796BE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A900(uint64_t a1)
{
  v2 = sub_19796BE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A958(uint64_t a1)
{
  v2 = sub_197966DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A994(uint64_t a1)
{
  v2 = sub_197966DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4AA3C(uint64_t a1)
{
  v2 = sub_19797BE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4AA78(uint64_t a1)
{
  v2 = sub_19797BE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4AAD0(uint64_t a1)
{
  v2 = sub_197A51C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4AB0C(uint64_t a1)
{
  v2 = sub_197A51C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ExecuteRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_143();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A738, &qword_197A98588);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  sub_197A51C68();
  OUTLINED_FUNCTION_125();
  v6 = *v1;
  OUTLINED_FUNCTION_129_2();
  sub_197A88108();
  if (!v0)
  {
    v7 = *(type metadata accessor for ModelXPCRequest.ExecuteRequest(0) + 20);
    OUTLINED_FUNCTION_112_4();
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v8);
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_129_2();
    sub_197A880E8();
  }

  v9 = OUTLINED_FUNCTION_142_0();
  v10(v9);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ExecuteRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v20 = OUTLINED_FUNCTION_175_0(v3);
  v4 = OUTLINED_FUNCTION_6(v20);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A740, &unk_197A98590);
  OUTLINED_FUNCTION_2(v21);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_28_0();
  v11 = type metadata accessor for ModelXPCRequest.ExecuteRequest(v10);
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v15 = v0[4];
  OUTLINED_FUNCTION_113_0(v0, v0[3]);
  sub_197A51C68();
  OUTLINED_FUNCTION_51_8();
  sub_197A883A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_108_4();
    *v2 = sub_197A87FF8();
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v16);
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_113_5();
    v18(v17);
    v19 = *(v11 + 20);
    OUTLINED_FUNCTION_37_10();
    sub_197A49444();
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4AEFC()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_177(*(v2 + 20));
  return sub_197953C7C();
}

uint64_t sub_197A4AF60()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v3 = v0 + *(v2(v1) + 20);
  v4 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_177(*(v4 + 28));
  return sub_197944528();
}

uint64_t sub_197A4AFFC()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v4 = (v1 + *(v3(v2) + 20));
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v4;
  sub_197A878A8();

  return sub_197A878A8();
}

double ModelXPCRequest.ExecuteInputStreamRequest.Response.init(result:lockedInferenceProvider:)(uint64_t a1, __n128 *a2)
{
  OUTLINED_FUNCTION_150_1(a1, a2);
  sub_19794B118();
  v2 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(0);
  *&result = OUTLINED_FUNCTION_133_4(v2, v3, v4, v5, v6, v7, v8, v9, v10).n128_u64[0];
  return result;
}

uint64_t sub_197A4B0B4()
{
  OUTLINED_FUNCTION_71();
  v3 = v1 == 0x746C75736572 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_79() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000017 && 0x8000000197AA4650 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_157_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_197A4B15C(uint64_t a1)
{
  v2 = sub_197A51CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4B198(uint64_t a1)
{
  v2 = sub_197A51CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ExecuteInputStreamRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A748, &qword_197A985A0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197A51CDC();
  OUTLINED_FUNCTION_125();
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_17_10();
  sub_197954374(v5);
  OUTLINED_FUNCTION_53_11();
  sub_197A88098();
  if (!v0)
  {
    v6 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(0);
    OUTLINED_FUNCTION_122_5(v6);
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
  }

  v7 = OUTLINED_FUNCTION_79_4();
  v8(v7);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ExecuteInputStreamRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_110_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A758, &qword_197A985A8);
  v24 = OUTLINED_FUNCTION_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_88_0();
  v12 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(v11);
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v19 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A51CDC();
  OUTLINED_FUNCTION_144_4();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    type metadata accessor for InferenceProviderRequestResult(0);
    LOBYTE(v25) = 0;
    OUTLINED_FUNCTION_17_10();
    sub_197954374(v20);
    OUTLINED_FUNCTION_137_3();
    sub_197A87F88();
    sub_19794B118();
    sub_19795F8C8();
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    v21 = OUTLINED_FUNCTION_167_0();
    v22(v21, v24);
    v23 = *(v12 + 20);
    OUTLINED_FUNCTION_151_3(v25);
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19795130C(v18, type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4B640()
{
  OUTLINED_FUNCTION_71();
  v2 = v1 == 0x6F6972506B736174 && v0 == 0xEC00000079746972;
  if (v2 || (OUTLINED_FUNCTION_79() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x617461646174656DLL && v0 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_157_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_197A4B6E8(uint64_t a1)
{
  v2 = sub_197A51D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4B724(uint64_t a1)
{
  v2 = sub_197A51D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ExecuteInputStreamRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_143();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A760, &qword_197A985B0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  sub_197A51D30();
  OUTLINED_FUNCTION_125();
  v6 = *v1;
  OUTLINED_FUNCTION_129_2();
  sub_197A88108();
  if (!v0)
  {
    v7 = *(type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(0) + 20);
    OUTLINED_FUNCTION_112_4();
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v8);
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_129_2();
    sub_197A880E8();
  }

  v9 = OUTLINED_FUNCTION_142_0();
  v10(v9);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ExecuteInputStreamRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v20 = OUTLINED_FUNCTION_175_0(v3);
  v4 = OUTLINED_FUNCTION_6(v20);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A770, &qword_197A985B8);
  OUTLINED_FUNCTION_2(v21);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_28_0();
  v11 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v10);
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v15 = v0[4];
  OUTLINED_FUNCTION_113_0(v0, v0[3]);
  sub_197A51D30();
  OUTLINED_FUNCTION_51_8();
  sub_197A883A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_108_4();
    *v2 = sub_197A87FF8();
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v16);
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_113_5();
    v18(v17);
    v19 = *(v11 + 20);
    OUTLINED_FUNCTION_37_10();
    sub_197A49444();
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.CancelRequest.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for ModelXPCRequest.CancelRequest(v0);
  OUTLINED_FUNCTION_177(*(v1 + 20));
  return sub_197944528();
}

uint64_t sub_197A4BB6C(uint64_t a1)
{
  v2 = sub_197A51D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4BBA8(uint64_t a1)
{
  v2 = sub_197A51D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4BC5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
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

uint64_t sub_197A4BD24(char a1)
{
  if (a1)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_197A4BD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4BC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4BD84(uint64_t a1)
{
  v2 = sub_197A51DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4BDC0(uint64_t a1)
{
  v2 = sub_197A51DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.CancelRequest.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_143();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A780, &qword_197A985C8);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  sub_197A51DD8();
  OUTLINED_FUNCTION_125();
  v5 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC98);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_129_2();
  sub_197A880E8();
  if (!v0)
  {
    v7 = *(type metadata accessor for ModelXPCRequest.CancelRequest(0) + 20);
    OUTLINED_FUNCTION_112_4();
    v8 = OUTLINED_FUNCTION_49();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_129_2();
    sub_197A880E8();
  }

  v10 = OUTLINED_FUNCTION_142_0();
  v11(v10);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.CancelRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v23);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6(v25);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A788, &qword_197A985D0);
  OUTLINED_FUNCTION_2(v26);
  v24 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_110_3();
  v14 = type metadata accessor for ModelXPCRequest.CancelRequest(0);
  v15 = OUTLINED_FUNCTION_6(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197A51DD8();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC90);
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_41_2();
    sub_197A87FD8();
    sub_19794B118();
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80);
    OUTLINED_FUNCTION_41_2();
    sub_197A87FD8();
    (*(v24 + 8))(v1, v26);
    v22 = *(v14 + 20);
    sub_19794B118();
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_19795130C(v20, type metadata accessor for ModelXPCRequest.CancelRequest);
  }

  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4C300(uint64_t a1)
{
  v2 = sub_197A51E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4C33C(uint64_t a1)
{
  v2 = sub_197A51E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4C3F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69747265737361 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_197A4C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4C3F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4C4BC(uint64_t a1)
{
  v2 = sub_197A51ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4C4F8(uint64_t a1)
{
  v2 = sub_197A51ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.AcquireRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A798, &qword_197A985E0);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A51ED4();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_86_5();
  sub_197954374(v4);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.AcquireRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v3);
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7A0, &unk_197A985E8);
  OUTLINED_FUNCTION_2(v8);
  v18 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_110_3();
  v13 = type metadata accessor for ModelXPCRequest.AcquireRequest(0);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_48_5();
  sub_197A51ED4();
  OUTLINED_FUNCTION_156_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_86_5();
    sub_197954374(v17);
    OUTLINED_FUNCTION_13_8();
    sub_197A87FD8();
    (*(v18 + 8))(v2, v8);
    sub_197A49444();
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4C888(uint64_t a1)
{
  v2 = sub_197A51F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4C8C4(uint64_t a1)
{
  v2 = sub_197A51F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4C978(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_197A4C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4C978(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4CA24(uint64_t a1)
{
  v2 = sub_197A51F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4CA60(uint64_t a1)
{
  v2 = sub_197A51F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ReleaseRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7B0, &qword_197A98600);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A51F7C();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_15(&qword_1ED87E8B0);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ReleaseRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7B8, &qword_197A98608);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_28_0();
  v13 = type metadata accessor for ModelXPCRequest.ReleaseRequest(v12);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197A51F7C();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1EAF48680);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_34_7();
    v18(v17);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4CD9C(uint64_t a1)
{
  v2 = sub_197A51FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4CDD8(uint64_t a1)
{
  v2 = sub_197A51FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchAssertionsRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_164_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7C0, &unk_197A98610);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  OUTLINED_FUNCTION_33_9(v1);
  sub_197A51FD0();
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49840, &qword_197A90F10);
  sub_1979C4B68();
  OUTLINED_FUNCTION_14_13();
  sub_197A880E8();
  OUTLINED_FUNCTION_180_0();
  v9 = OUTLINED_FUNCTION_58_10();
  v10(v9);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchAssertionsRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7D0, &qword_197A98620);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A51FD0();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49840, &qword_197A90F10);
    sub_1979C5118();
    OUTLINED_FUNCTION_8_12();
    sub_197A87FD8();
    v6 = OUTLINED_FUNCTION_30_12();
    v7(v6);
    OUTLINED_FUNCTION_135_4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.FetchAssertionsRequest.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4D078(uint64_t a1)
{
  v2 = sub_197A52024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4D0B4(uint64_t a1)
{
  v2 = sub_197A52024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4D168(uint64_t a1)
{
  v2 = sub_197A52078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4D1A4(uint64_t a1)
{
  v2 = sub_197A52078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.RestoreAssertionsRequest.codableEnumValue.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  OUTLINED_FUNCTION_27_11();
  swift_storeEnumTagMultiPayload();

  return sub_197A878A8();
}

uint64_t sub_197A4D284(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69747265737361 && a2 == 0xEA0000000000736ELL)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_147_3();
    OUTLINED_FUNCTION_157_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A4D2F4(uint64_t a1)
{
  v2 = sub_197A520CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4D330(uint64_t a1)
{
  v2 = sub_197A520CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.RestoreAssertionsRequest.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_164_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7F0, &qword_197A98638);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  OUTLINED_FUNCTION_33_9(v1);
  sub_197A520CC();
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7F8, &qword_197A98640);
  sub_197A52120();
  OUTLINED_FUNCTION_14_13();
  sub_197A880E8();
  OUTLINED_FUNCTION_180_0();
  v9 = OUTLINED_FUNCTION_58_10();
  v10(v9);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.RestoreAssertionsRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A800, &qword_197A98648);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A520CC();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7F8, &qword_197A98640);
    sub_197A521D4();
    OUTLINED_FUNCTION_8_12();
    sub_197A87FD8();
    v6 = OUTLINED_FUNCTION_30_12();
    v7(v6);
    OUTLINED_FUNCTION_135_4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4D5C8(uint64_t a1)
{
  v2 = sub_197A52288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4D604(uint64_t a1)
{
  v2 = sub_197A52288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchAssetsRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_164_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A808, &qword_197A98650);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  OUTLINED_FUNCTION_33_9(v1);
  sub_197A52288();
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A810, &qword_197A98658);
  sub_197A522DC();
  OUTLINED_FUNCTION_14_13();
  sub_197A880E8();
  OUTLINED_FUNCTION_180_0();
  v9 = OUTLINED_FUNCTION_58_10();
  v10(v9);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchAssetsRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A818, &qword_197A98660);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A52288();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A810, &qword_197A98658);
    sub_197A52390();
    OUTLINED_FUNCTION_8_12();
    sub_197A87FD8();
    v6 = OUTLINED_FUNCTION_30_12();
    v7(v6);
    OUTLINED_FUNCTION_135_4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.FetchAssetsRequest.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4D8A4(uint64_t a1)
{
  v2 = sub_197A52444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4D8E0(uint64_t a1)
{
  v2 = sub_197A52444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4D990(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x666E497465737361 && a2 == 0xE90000000000006FLL)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_147_3();
    OUTLINED_FUNCTION_157_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A4DA00(uint64_t a1)
{
  v2 = sub_197A52498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4DA3C(uint64_t a1)
{
  v2 = sub_197A52498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchDynamicAssetsRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_164_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A828, &qword_197A98670);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  OUTLINED_FUNCTION_33_9(v1);
  sub_197A52498();
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A810, &qword_197A98658);
  sub_197A522DC();
  OUTLINED_FUNCTION_14_13();
  sub_197A880E8();
  OUTLINED_FUNCTION_180_0();
  v9 = OUTLINED_FUNCTION_58_10();
  v10(v9);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchDynamicAssetsRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A838, &qword_197A98678);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A52498();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A810, &qword_197A98658);
    sub_197A52390();
    OUTLINED_FUNCTION_8_12();
    sub_197A87FD8();
    v6 = OUTLINED_FUNCTION_30_12();
    v7(v6);
    OUTLINED_FUNCTION_135_4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.FetchDynamicAssetsRequest.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4DCDC(uint64_t a1)
{
  v2 = sub_197A524EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4DD18(uint64_t a1)
{
  v2 = sub_197A524EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.FetchPolicyRequest.policyName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197A4DE04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000)
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

uint64_t sub_197A4DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4DE04(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4DEBC(uint64_t a1)
{
  v2 = sub_197A52540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4DEF8(uint64_t a1)
{
  v2 = sub_197A52540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchPolicyRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A850, &qword_197A98688);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A52540();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  memcpy(v7, v0, 0x51uLL);
  sub_1979C4C1C();
  OUTLINED_FUNCTION_125_4();
  sub_197A88098();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.FetchPolicyRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_77_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A860, &qword_197A98690);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_7_11();
  sub_197A52540();
  OUTLINED_FUNCTION_148_3();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (!v1)
  {
    sub_1979C51CC();
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_168_0();
    sub_197A87F88();
    v7 = OUTLINED_FUNCTION_176();
    v8(v7);
    memcpy(v2, v9, 0x51uLL);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.FetchPolicyRequest.codableEnumValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  OUTLINED_FUNCTION_27_11();
  swift_storeEnumTagMultiPayload();

  return sub_197A878A8();
}

uint64_t sub_197A4E1C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E7963696C6F70 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_197A4E268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4E1C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4E294(uint64_t a1)
{
  v2 = sub_197A52594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4E2D0(uint64_t a1)
{
  v2 = sub_197A52594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchPolicyRequest.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A868, &qword_197A98698);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_64_1();
  v7 = *v0;
  v8 = v0[1];
  v9 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A52594();
  OUTLINED_FUNCTION_158_2();
  OUTLINED_FUNCTION_152_3();
  sub_197A88068();
  v10 = OUTLINED_FUNCTION_162_1();
  v11(v10);
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchPolicyRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A878, &qword_197A986A0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A52594();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    v7 = sub_197A87F48();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_35_5();
    v11(v10);
    *v2 = v7;
    v2[1] = v9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4E530(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000197AA34F0 == a2)
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

uint64_t sub_197A4E5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4E530(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4E5FC(uint64_t a1)
{
  v2 = sub_197A525E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4E638(uint64_t a1)
{
  v2 = sub_197A525E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchDisabledUseCasesRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A880, &qword_197A986A8);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_104();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_33_9(v2);
  sub_197A525E8();
  sub_197A878A8();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A888, &qword_197A986B0);
  sub_197A52690(&unk_1EAF482A8);
  OUTLINED_FUNCTION_14_13();
  sub_197A880E8();

  v10 = OUTLINED_FUNCTION_58_10();
  v11(v10);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchDisabledUseCasesRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A890, &qword_197A986B8);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A525E8();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A888, &qword_197A986B0);
    sub_197A52690(&unk_1EAF482A0);
    OUTLINED_FUNCTION_8_12();
    sub_197A87FD8();
    v6 = OUTLINED_FUNCTION_30_12();
    v7(v6);
    OUTLINED_FUNCTION_135_4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.FetchDisabledUseCasesRequest.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4E94C(uint64_t a1)
{
  v2 = sub_197A52758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4E988(uint64_t a1)
{
  v2 = sub_197A52758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4EA50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000197AA4670 == a2)
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

uint64_t sub_197A4EAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4EA50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4EB1C(uint64_t a1)
{
  v2 = sub_197A527AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4EB58(uint64_t a1)
{
  v2 = sub_197A527AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchAvailabilityRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A8A0, &qword_197A986C8);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_64_1();
  v7 = *v0;
  v8 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A527AC();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  sub_197A52800();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v9 = OUTLINED_FUNCTION_20_0();
  v10(v9);
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchAvailabilityRequest.Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A8A8, &qword_197A986D0);
  OUTLINED_FUNCTION_2(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A527AC();
  OUTLINED_FUNCTION_38_10();
  if (!v12)
  {
    sub_197A52854();
    OUTLINED_FUNCTION_41_2();
    sub_197A87FD8();
    v18 = OUTLINED_FUNCTION_30_12();
    v19(v18);
    *v13 = a11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.FetchAvailabilityRequest.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4EE04(uint64_t a1)
{
  v2 = sub_197A528A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4EE40(uint64_t a1)
{
  v2 = sub_197A528A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.LoadAssetBundle.assetBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197A4EF28(uint64_t a1)
{
  v2 = sub_197A528FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4EF64(uint64_t a1)
{
  v2 = sub_197A528FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.LoadAssetBundle.codableEnumValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  OUTLINED_FUNCTION_27_11();
  swift_storeEnumTagMultiPayload();

  return sub_197A878A8();
}

uint64_t sub_197A4F054(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D63696D616E7964 && a2 == 0xEB0000000065646FLL)
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

uint64_t sub_197A4F128(char a1)
{
  if (a1)
  {
    return 0x4D63696D616E7964;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_197A4F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4F054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4F19C(uint64_t a1)
{
  v2 = sub_197A52950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4F1D8(uint64_t a1)
{
  v2 = sub_197A52950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.LoadAssetBundle.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A8C8, &qword_197A986E8);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66_0();
  v10 = *v0;
  v11 = v0[1];
  v16 = *(v0 + 16);
  v12 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197A52950();
  sub_197A883D8();
  sub_197A880B8();
  if (!v1)
  {
    OUTLINED_FUNCTION_112_4();
    sub_197A880C8();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_61();
  v15(v14);
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.LoadAssetBundle.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_77_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A8D8, &qword_197A986F0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_7_11();
  sub_197A52950();
  OUTLINED_FUNCTION_148_3();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    v7 = sub_197A87FA8();
    v9 = v8;
    OUTLINED_FUNCTION_112_4();
    v10 = sub_197A87FB8();
    v11 = OUTLINED_FUNCTION_107_3();
    v12(v11);
    *v2 = v7;
    *(v2 + 8) = v9;
    *(v2 + 16) = v10 & 1;
    sub_197A878A8();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.HoldAssetBundle.assetBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197A4F534(uint64_t a1)
{
  v2 = sub_197A529A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4F570(uint64_t a1)
{
  v2 = sub_197A529A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.HoldAssetBundle.codableEnumValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  OUTLINED_FUNCTION_27_11();
  swift_storeEnumTagMultiPayload();

  return sub_197A878A8();
}

uint64_t sub_197A4F650(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2)
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

uint64_t sub_197A4F6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4F650(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4F71C(uint64_t a1)
{
  v2 = sub_197A529F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4F758(uint64_t a1)
{
  v2 = sub_197A529F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.HoldAssetBundle.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A8F0, &qword_197A98700);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_64_1();
  v7 = *v0;
  v8 = v0[1];
  v9 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A529F8();
  OUTLINED_FUNCTION_158_2();
  OUTLINED_FUNCTION_152_3();
  sub_197A880B8();
  v10 = OUTLINED_FUNCTION_162_1();
  v11(v10);
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.HoldAssetBundle.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A900, &qword_197A98708);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A529F8();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    v7 = sub_197A87FA8();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_35_5();
    v11(v10);
    *v2 = v7;
    v2[1] = v9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4F9BC(uint64_t a1)
{
  v2 = sub_197A52A4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4F9F8(uint64_t a1)
{
  v2 = sub_197A52A4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.ForceAssetVersionSwitch.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4FAC8(uint64_t a1)
{
  v2 = sub_197A52AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4FB04(uint64_t a1)
{
  v2 = sub_197A52AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4FBC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D75446574617473 && a2 == 0xE900000000000070)
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

uint64_t sub_197A4FC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4FBC4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4FC90(uint64_t a1)
{
  v2 = sub_197A52AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4FCCC(uint64_t a1)
{
  v2 = sub_197A52AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.DumpState.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A918, &qword_197A98720);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104();
  memcpy(v15, v0, 0xC8uLL);
  v9 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_1979C56D4(v15, v14);
  sub_197A52AF4();
  OUTLINED_FUNCTION_158_2();
  memcpy(v14, v15, sizeof(v14));
  sub_1979C4AC0();
  OUTLINED_FUNCTION_129_2();
  sub_197A880E8();
  memcpy(v13, v14, sizeof(v13));
  sub_1979C570C(v13);
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_102_3();
  v12(v11);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.DumpState.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_77_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A920, &qword_197A98728);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_7_11();
  sub_197A52AF4();
  OUTLINED_FUNCTION_148_3();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (!v1)
  {
    sub_197A52B48();
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_168_0();
    sub_197A87FD8();
    v7 = OUTLINED_FUNCTION_176();
    v8(v7);
    memcpy(v2, v9, 0xC8uLL);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.DumpState.codableEnumValue.getter()
{
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A4FFDC(uint64_t a1)
{
  v2 = sub_197A52B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A50018(uint64_t a1)
{
  v2 = sub_197A52B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.FetchModelInstance.Response.modelInstance.getter()
{
  memcpy(__dst, v0, 0x41uLL);
  v1 = OUTLINED_FUNCTION_22();
  memcpy(v1, v2, 0x41uLL);
  return sub_197A29F84(__dst, &v4);
}

uint64_t sub_197A50154(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E496C65646F6DLL && a2 == 0xED000065636E6174)
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

uint64_t sub_197A501FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A50154(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A50228(uint64_t a1)
{
  v2 = sub_197A52BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A50264(uint64_t a1)
{
  v2 = sub_197A52BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchModelInstance.Response.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A940, &qword_197A98738);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_0();
  memcpy(v16, v0, 0x41uLL);
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_33_9(v2);
  sub_197A29F84(v16, v15);
  sub_197A52BF0();
  OUTLINED_FUNCTION_141();
  sub_197A883D8();
  memcpy(v15, v16, 0x41uLL);
  sub_197A52C44();
  sub_197A880E8();
  memcpy(v14, v15, 0x41uLL);
  sub_197A29FBC(v14);
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_61();
  v13(v12);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.FetchModelInstance.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_77_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A958, &qword_197A98740);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_7_11();
  sub_197A52BF0();
  OUTLINED_FUNCTION_148_3();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (!v1)
  {
    sub_197A52C98();
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_168_0();
    sub_197A87FD8();
    v7 = OUTLINED_FUNCTION_176();
    v8(v7);
    memcpy(v2, v9, 0x41uLL);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A5055C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_147_3();
    OUTLINED_FUNCTION_157_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A505CC(uint64_t a1)
{
  v2 = sub_197A52CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A50608(uint64_t a1)
{
  v2 = sub_197A52CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.FetchModelInstance.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A978, &qword_197A98750);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_28_0();
  ModelInstance = type metadata accessor for ModelXPCRequest.FetchModelInstance(v12);
  v14 = OUTLINED_FUNCTION_28(ModelInstance);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197A52CEC();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_34_7();
    v18(v17);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A5086C(uint64_t a1)
{
  v2 = sub_197A52D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A508A8(uint64_t a1)
{
  v2 = sub_197A52D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.SetAssetsHaveUpdated.codableEnumValue.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  OUTLINED_FUNCTION_27_11();
  swift_storeEnumTagMultiPayload();

  return sub_197A878A8();
}

uint64_t sub_197A50988(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
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

uint64_t sub_197A50A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A50988(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A50A54(uint64_t a1)
{
  v2 = sub_197A52D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A50A90(uint64_t a1)
{
  v2 = sub_197A52D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.SetAssetsHaveUpdated.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A990, &unk_197A98760);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_104();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_33_9(v2);
  sub_197A52D94();
  sub_197A878A8();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
  sub_197978AF8(&qword_1ED87F958);
  OUTLINED_FUNCTION_14_13();
  sub_197A88098();

  v10 = OUTLINED_FUNCTION_58_10();
  v11(v10);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.SetAssetsHaveUpdated.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_42_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A9A0, &qword_197A98770);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_7_11();
  sub_197A52D94();
  OUTLINED_FUNCTION_38_10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    sub_197978AF8(&qword_1ED87FE58);
    OUTLINED_FUNCTION_8_12();
    sub_197A87F88();
    v6 = OUTLINED_FUNCTION_30_12();
    v7(v6);
    OUTLINED_FUNCTION_135_4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A50D64(uint64_t a1)
{
  v2 = sub_197A52DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A50DA0(uint64_t a1)
{
  v2 = sub_197A52DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelXPCRequest.IgnoreAssetUpdates.codableEnumValue.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  OUTLINED_FUNCTION_27_11();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A50E78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65726F6E6769 && a2 == 0xE600000000000000)
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

uint64_t sub_197A50F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A50E78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A50F30(uint64_t a1)
{
  v2 = sub_197A52E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A50F6C(uint64_t a1)
{
  v2 = sub_197A52E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.IgnoreAssetUpdates.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A9B8, &qword_197A98780);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_64_1();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_33_9(v2);
  sub_197A52E3C();
  OUTLINED_FUNCTION_141();
  sub_197A883D8();
  OUTLINED_FUNCTION_125_4();
  sub_197A880C8();
  v10 = OUTLINED_FUNCTION_35_5();
  v11(v10);
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.IgnoreAssetUpdates.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_77_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A9C8, &qword_197A98788);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_7_11();
  sub_197A52E3C();
  OUTLINED_FUNCTION_148_3();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_168_0();
    v7 = sub_197A87FB8();
    v8 = OUTLINED_FUNCTION_176();
    v9(v8);
    *v2 = v7 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.StartMonitoringInferences.endpoint.getter()
{
  OUTLINED_FUNCTION_58_0();
  v0 = sub_197A876D8();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t sub_197A5122C(uint64_t a1)
{
  v2 = sub_197A52E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A51268(uint64_t a1)
{
  v2 = sub_197A52E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A5131C()
{
  sub_197953C7C();
  type metadata accessor for ModelXPCRequest(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A51374(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
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

uint64_t sub_197A51408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A51374(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A51434(uint64_t a1)
{
  v2 = sub_197A52EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A51470(uint64_t a1)
{
  v2 = sub_197A52EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.StartMonitoringInferences.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A9D8, &qword_197A98798);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A52EE4();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  sub_197A876D8();
  OUTLINED_FUNCTION_85_7();
  sub_197954374(v4);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.StartMonitoringInferences.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  v5 = sub_197A876D8();
  v6 = OUTLINED_FUNCTION_2(v5);
  v22 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v24 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A9E0, &qword_197A987A0);
  OUTLINED_FUNCTION_2(v11);
  v23 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_110_3();
  started = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(0);
  v17 = OUTLINED_FUNCTION_28(started);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  v20 = v4[4];
  OUTLINED_FUNCTION_113_0(v4, v4[3]);
  sub_197A52EE4();
  sub_197A883A8();
  if (!v0)
  {
    OUTLINED_FUNCTION_85_7();
    sub_197954374(v21);
    sub_197A87FD8();
    (*(v23 + 8))(v2, v11);
    (*(v22 + 32))(v1, v24, v5);
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

unint64_t sub_197A51824()
{
  result = qword_1EAF4A678;
  if (!qword_1EAF4A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A678);
  }

  return result;
}

unint64_t sub_197A51878()
{
  result = qword_1EAF4A680;
  if (!qword_1EAF4A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A680);
  }

  return result;
}

unint64_t sub_197A518CC()
{
  result = qword_1EAF48730;
  if (!qword_1EAF48730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48730);
  }

  return result;
}

unint64_t sub_197A51920()
{
  result = qword_1EAF487D0;
  if (!qword_1EAF487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487D0);
  }

  return result;
}

unint64_t sub_197A51974()
{
  result = qword_1EAF4A690;
  if (!qword_1EAF4A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A690);
  }

  return result;
}

unint64_t sub_197A519C8()
{
  result = qword_1EAF4A698;
  if (!qword_1EAF4A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A698);
  }

  return result;
}

unint64_t sub_197A51A1C()
{
  result = qword_1EAF487C8;
  if (!qword_1EAF487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487C8);
  }

  return result;
}

unint64_t sub_197A51A70()
{
  result = qword_1EAF48768;
  if (!qword_1EAF48768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48768);
  }

  return result;
}

unint64_t sub_197A51AC4()
{
  result = qword_1EAF4A6A0;
  if (!qword_1EAF4A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A6A0);
  }

  return result;
}

unint64_t sub_197A51B18()
{
  result = qword_1EAF4A6A8;
  if (!qword_1EAF4A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A6A8);
  }

  return result;
}

unint64_t sub_197A51B6C()
{
  result = qword_1EAF48858;
  if (!qword_1EAF48858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48858);
  }

  return result;
}

unint64_t sub_197A51BC0()
{
  result = qword_1EAF487A8;
  if (!qword_1EAF487A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487A8);
  }

  return result;
}

unint64_t sub_197A51C14()
{
  result = qword_1EAF4A6B0;
  if (!qword_1EAF4A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A6B0);
  }

  return result;
}

unint64_t sub_197A51C68()
{
  result = qword_1ED87FB38;
  if (!qword_1ED87FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FB38);
  }

  return result;
}

unint64_t sub_197A51CDC()
{
  result = qword_1EAF4A750;
  if (!qword_1EAF4A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A750);
  }

  return result;
}

unint64_t sub_197A51D30()
{
  result = qword_1EAF4A768;
  if (!qword_1EAF4A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A768);
  }

  return result;
}

unint64_t sub_197A51D84()
{
  result = qword_1EAF488E0;
  if (!qword_1EAF488E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488E0);
  }

  return result;
}

unint64_t sub_197A51DD8()
{
  result = qword_1ED87D728;
  if (!qword_1ED87D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D728);
  }

  return result;
}

uint64_t sub_197A51E2C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_165_1(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 8))(a1);
  return a1;
}

unint64_t sub_197A51E80()
{
  result = qword_1EAF488C0;
  if (!qword_1EAF488C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488C0);
  }

  return result;
}

unint64_t sub_197A51ED4()
{
  result = qword_1ED87E9F0;
  if (!qword_1ED87E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E9F0);
  }

  return result;
}

unint64_t sub_197A51F28()
{
  result = qword_1EAF48878;
  if (!qword_1EAF48878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48878);
  }

  return result;
}

unint64_t sub_197A51F7C()
{
  result = qword_1ED87E8F0;
  if (!qword_1ED87E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E8F0);
  }

  return result;
}

unint64_t sub_197A51FD0()
{
  result = qword_1EAF4A7C8;
  if (!qword_1EAF4A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A7C8);
  }

  return result;
}

unint64_t sub_197A52024()
{
  result = qword_1EAF4A7E0;
  if (!qword_1EAF4A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A7E0);
  }

  return result;
}

unint64_t sub_197A52078()
{
  result = qword_1EAF487C0;
  if (!qword_1EAF487C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487C0);
  }

  return result;
}

unint64_t sub_197A520CC()
{
  result = qword_1ED87DD28;
  if (!qword_1ED87DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD28);
  }

  return result;
}

unint64_t sub_197A52120()
{
  result = qword_1ED87D290;
  if (!qword_1ED87D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A7F8, &qword_197A98640);
    sub_197954374(&unk_1ED87E918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D290);
  }

  return result;
}

unint64_t sub_197A521D4()
{
  result = qword_1EAF48240;
  if (!qword_1EAF48240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A7F8, &qword_197A98640);
    sub_197954374(&unk_1EAF48540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48240);
  }

  return result;
}

unint64_t sub_197A52288()
{
  result = qword_1ED87D6E0;
  if (!qword_1ED87D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6E0);
  }

  return result;
}

unint64_t sub_197A522DC()
{
  result = qword_1EAF48290;
  if (!qword_1EAF48290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A810, &qword_197A98658);
    sub_197954374(&unk_1EAF48528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48290);
  }

  return result;
}

unint64_t sub_197A52390()
{
  result = qword_1ED87CB90;
  if (!qword_1ED87CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A810, &qword_197A98658);
    sub_197954374(&unk_1ED87CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CB90);
  }

  return result;
}

unint64_t sub_197A52444()
{
  result = qword_1ED87D6F8;
  if (!qword_1ED87D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6F8);
  }

  return result;
}

unint64_t sub_197A52498()
{
  result = qword_1EAF4A830;
  if (!qword_1EAF4A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A830);
  }

  return result;
}

unint64_t sub_197A524EC()
{
  result = qword_1EAF4A848;
  if (!qword_1EAF4A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A848);
  }

  return result;
}

unint64_t sub_197A52540()
{
  result = qword_1EAF4A858;
  if (!qword_1EAF4A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A858);
  }

  return result;
}

unint64_t sub_197A52594()
{
  result = qword_1EAF4A870;
  if (!qword_1EAF4A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A870);
  }

  return result;
}

unint64_t sub_197A525E8()
{
  result = qword_1ED87D1F0;
  if (!qword_1ED87D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1F0);
  }

  return result;
}

unint64_t sub_197A5263C()
{
  result = qword_1EAF48668;
  if (!qword_1EAF48668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48668);
  }

  return result;
}

unint64_t sub_197A52690(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A888, &qword_197A986B0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197A52704()
{
  result = qword_1EAF48660;
  if (!qword_1EAF48660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48660);
  }

  return result;
}

unint64_t sub_197A52758()
{
  result = qword_1EAF48780;
  if (!qword_1EAF48780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48780);
  }

  return result;
}

unint64_t sub_197A527AC()
{
  result = qword_1ED87D250;
  if (!qword_1ED87D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D250);
  }

  return result;
}

unint64_t sub_197A52800()
{
  result = qword_1EAF48658;
  if (!qword_1EAF48658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48658);
  }

  return result;
}

unint64_t sub_197A52854()
{
  result = qword_1EAF48648;
  if (!qword_1EAF48648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48648);
  }

  return result;
}

unint64_t sub_197A528A8()
{
  result = qword_1ED87D268;
  if (!qword_1ED87D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D268);
  }

  return result;
}

unint64_t sub_197A528FC()
{
  result = qword_1EAF4A8C0;
  if (!qword_1EAF4A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A8C0);
  }

  return result;
}

unint64_t sub_197A52950()
{
  result = qword_1EAF4A8D0;
  if (!qword_1EAF4A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A8D0);
  }

  return result;
}

unint64_t sub_197A529A4()
{
  result = qword_1EAF4A8E8;
  if (!qword_1EAF4A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A8E8);
  }

  return result;
}

unint64_t sub_197A529F8()
{
  result = qword_1EAF4A8F8;
  if (!qword_1EAF4A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A8F8);
  }

  return result;
}

unint64_t sub_197A52A4C()
{
  result = qword_1EAF487E8;
  if (!qword_1EAF487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487E8);
  }

  return result;
}

unint64_t sub_197A52AA0()
{
  result = qword_1EAF48800;
  if (!qword_1EAF48800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48800);
  }

  return result;
}

unint64_t sub_197A52AF4()
{
  result = qword_1EAF48760;
  if (!qword_1EAF48760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48760);
  }

  return result;
}

unint64_t sub_197A52B48()
{
  result = qword_1EAF4A928;
  if (!qword_1EAF4A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A928);
  }

  return result;
}

unint64_t sub_197A52B9C()
{
  result = qword_1EAF4A938;
  if (!qword_1EAF4A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A938);
  }

  return result;
}

unint64_t sub_197A52BF0()
{
  result = qword_1EAF4A948;
  if (!qword_1EAF4A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A948);
  }

  return result;
}

unint64_t sub_197A52C44()
{
  result = qword_1EAF4A950;
  if (!qword_1EAF4A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A950);
  }

  return result;
}

unint64_t sub_197A52C98()
{
  result = qword_1EAF4A960;
  if (!qword_1EAF4A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A960);
  }

  return result;
}

unint64_t sub_197A52CEC()
{
  result = qword_1EAF4A970;
  if (!qword_1EAF4A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A970);
  }

  return result;
}

unint64_t sub_197A52D40()
{
  result = qword_1EAF4A988;
  if (!qword_1EAF4A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A988);
  }

  return result;
}

unint64_t sub_197A52D94()
{
  result = qword_1EAF4A998;
  if (!qword_1EAF4A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A998);
  }

  return result;
}

unint64_t sub_197A52DE8()
{
  result = qword_1EAF4A9B0;
  if (!qword_1EAF4A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A9B0);
  }

  return result;
}

unint64_t sub_197A52E3C()
{
  result = qword_1EAF4A9C0;
  if (!qword_1EAF4A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A9C0);
  }

  return result;
}

unint64_t sub_197A52E90()
{
  result = qword_1EAF487A0;
  if (!qword_1EAF487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487A0);
  }

  return result;
}

unint64_t sub_197A52EE4()
{
  result = qword_1ED87D228;
  if (!qword_1ED87D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D228);
  }

  return result;
}

unint64_t sub_197A52FC8(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF48828);
  result = sub_197954374(&unk_1ED87FCA8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53054(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF48808);
  result = sub_197954374(&unk_1ED87FBD0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A530E0(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF48880);
  result = sub_197954374(&unk_1ED87F900);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A5316C(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF48830);
  result = sub_197954374(&unk_1ED87FA60);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53280(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF488A0);
  result = sub_197954374(&unk_1ED87FA90);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53394(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF4A6B8);
  result = sub_197954374(&unk_1EAF4A5A8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53420(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF488C8);
  result = sub_197954374(&unk_1ED87D700);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A534AC(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF488A8);
  result = sub_197954374(&unk_1ED87E9C8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53538(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF48860);
  result = sub_197954374(&unk_1ED87E8C8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53800(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF4A688);
  result = sub_197954374(&unk_1EAF4A548);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_197A538EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197A53930(uint64_t a1)
{
  *(a1 + 8) = sub_197954374(&unk_1EAF48788);
  result = sub_197954374(&unk_1ED87D200);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_197A539C8()
{
  result = type metadata accessor for ModelXPCRequest.ExecuteRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ModelXPCRequest.CancelRequest(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ModelXPCRequest.CreateSessionRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ModelXPCRequest.PrewarmSession(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ModelXPCRequest.CancelSessionRequest(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ModelXPCRequest.AcquireRequest(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ModelXPCRequest.ReleaseRequest(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ModelXPCRequest.FetchModelInstance(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(319);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        return 0;
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

  return result;
}

uint64_t sub_197A53B70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_197A53CA4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_197A53E78()
{
  type metadata accessor for Session.Metadata(319);
  if (v0 <= 0x3F)
  {
    sub_197A53EFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_197A53EFC()
{
  if (!qword_1ED880648)
  {
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED880648);
    }
  }
}

void sub_197A53F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_197A5457C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_118_5();
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_166_0();
  }
}

void sub_197A53FC8()
{
  sub_197A5457C(319, &qword_1ED880248, type metadata accessor for Session);
  if (v0 <= 0x3F)
  {
    sub_197A54070();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_197A54070()
{
  if (!qword_1ED8811E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B58, &qword_197A89650);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8811E0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_98Tm()
{
  OUTLINED_FUNCTION_71();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for RequestMetadata(0);

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_99Tm()
{
  OUTLINED_FUNCTION_71();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for RequestMetadata(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_197A54200()
{
  result = type metadata accessor for RequestMetadata(319);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_118_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_166_0();
  }

  return result;
}

uint64_t sub_197A542B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_118_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_166_0();
  }

  return result;
}

void sub_197A5431C()
{
  if (!qword_1EAF4A9F8)
  {
    type metadata accessor for InferenceProviderRequestResult(255);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF4A9F8);
    }
  }
}

void sub_197A5439C()
{
  sub_197A5457C(319, &qword_1ED87FE68, type metadata accessor for RequestMetadata);
  if (v0 <= 0x3F)
  {
    sub_197A5457C(319, &qword_1ED880248, type metadata accessor for Session);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_197A544B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_118_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_166_0();
  }

  return result;
}

void sub_197A5457C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for UUIDIdentifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_197A54670(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_197A546C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_197A5472C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[81])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197A54778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_197A54824(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_197A54864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_197A5495C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_197A549B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

_BYTE *storeEnumTagSinglePayload for ModelXPCRequest.IgnoreAssetUpdates(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s20ModelManagerServices15ModelXPCRequestO22FetchAssertionsRequestVwst_0_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_197A5508C()
{
  result = qword_1EAF4AA00;
  if (!qword_1EAF4AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA00);
  }

  return result;
}

unint64_t sub_197A550E4()
{
  result = qword_1EAF4AA08;
  if (!qword_1EAF4AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA08);
  }

  return result;
}

unint64_t sub_197A5513C()
{
  result = qword_1EAF4AA10;
  if (!qword_1EAF4AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA10);
  }

  return result;
}

unint64_t sub_197A55194()
{
  result = qword_1EAF4AA18;
  if (!qword_1EAF4AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA18);
  }

  return result;
}

unint64_t sub_197A551EC()
{
  result = qword_1EAF4AA20;
  if (!qword_1EAF4AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA20);
  }

  return result;
}

unint64_t sub_197A55244()
{
  result = qword_1EAF4AA28;
  if (!qword_1EAF4AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA28);
  }

  return result;
}

unint64_t sub_197A5529C()
{
  result = qword_1EAF4AA30;
  if (!qword_1EAF4AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA30);
  }

  return result;
}

unint64_t sub_197A552F4()
{
  result = qword_1EAF4AA38;
  if (!qword_1EAF4AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA38);
  }

  return result;
}

unint64_t sub_197A5534C()
{
  result = qword_1EAF4AA40;
  if (!qword_1EAF4AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA40);
  }

  return result;
}

unint64_t sub_197A553A4()
{
  result = qword_1EAF4AA48;
  if (!qword_1EAF4AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA48);
  }

  return result;
}

unint64_t sub_197A553FC()
{
  result = qword_1EAF4AA50;
  if (!qword_1EAF4AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA50);
  }

  return result;
}

unint64_t sub_197A55454()
{
  result = qword_1EAF4AA58;
  if (!qword_1EAF4AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA58);
  }

  return result;
}

unint64_t sub_197A554AC()
{
  result = qword_1EAF4AA60;
  if (!qword_1EAF4AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA60);
  }

  return result;
}

unint64_t sub_197A55504()
{
  result = qword_1EAF4AA68;
  if (!qword_1EAF4AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA68);
  }

  return result;
}

unint64_t sub_197A5555C()
{
  result = qword_1EAF4AA70;
  if (!qword_1EAF4AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA70);
  }

  return result;
}

unint64_t sub_197A555B4()
{
  result = qword_1EAF4AA78;
  if (!qword_1EAF4AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA78);
  }

  return result;
}

unint64_t sub_197A5560C()
{
  result = qword_1EAF4AA80;
  if (!qword_1EAF4AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA80);
  }

  return result;
}

unint64_t sub_197A55664()
{
  result = qword_1EAF4AA88;
  if (!qword_1EAF4AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA88);
  }

  return result;
}

unint64_t sub_197A556BC()
{
  result = qword_1EAF4AA90;
  if (!qword_1EAF4AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA90);
  }

  return result;
}

unint64_t sub_197A55714()
{
  result = qword_1EAF4AA98;
  if (!qword_1EAF4AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AA98);
  }

  return result;
}

unint64_t sub_197A5576C()
{
  result = qword_1EAF4AAA0;
  if (!qword_1EAF4AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAA0);
  }

  return result;
}

unint64_t sub_197A557C4()
{
  result = qword_1EAF4AAA8;
  if (!qword_1EAF4AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAA8);
  }

  return result;
}

unint64_t sub_197A5581C()
{
  result = qword_1EAF4AAB0;
  if (!qword_1EAF4AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAB0);
  }

  return result;
}

unint64_t sub_197A55874()
{
  result = qword_1EAF4AAB8;
  if (!qword_1EAF4AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAB8);
  }

  return result;
}

unint64_t sub_197A558CC()
{
  result = qword_1EAF4AAC0;
  if (!qword_1EAF4AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAC0);
  }

  return result;
}

unint64_t sub_197A55924()
{
  result = qword_1EAF4AAC8;
  if (!qword_1EAF4AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAC8);
  }

  return result;
}

unint64_t sub_197A5597C()
{
  result = qword_1EAF4AAD0;
  if (!qword_1EAF4AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAD0);
  }

  return result;
}

unint64_t sub_197A559D4()
{
  result = qword_1EAF4AAD8;
  if (!qword_1EAF4AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAD8);
  }

  return result;
}

unint64_t sub_197A55A2C()
{
  result = qword_1EAF4AAE0;
  if (!qword_1EAF4AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAE0);
  }

  return result;
}

unint64_t sub_197A55A84()
{
  result = qword_1EAF4AAE8;
  if (!qword_1EAF4AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAE8);
  }

  return result;
}

unint64_t sub_197A55ADC()
{
  result = qword_1EAF4AAF0;
  if (!qword_1EAF4AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAF0);
  }

  return result;
}

unint64_t sub_197A55B34()
{
  result = qword_1EAF4AAF8;
  if (!qword_1EAF4AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AAF8);
  }

  return result;
}

unint64_t sub_197A55B8C()
{
  result = qword_1EAF4AB00;
  if (!qword_1EAF4AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB00);
  }

  return result;
}

unint64_t sub_197A55BE4()
{
  result = qword_1EAF4AB08;
  if (!qword_1EAF4AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB08);
  }

  return result;
}

unint64_t sub_197A55C3C()
{
  result = qword_1EAF4AB10;
  if (!qword_1EAF4AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB10);
  }

  return result;
}

unint64_t sub_197A55C94()
{
  result = qword_1EAF4AB18;
  if (!qword_1EAF4AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB18);
  }

  return result;
}

unint64_t sub_197A55CEC()
{
  result = qword_1EAF4AB20;
  if (!qword_1EAF4AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB20);
  }

  return result;
}

unint64_t sub_197A55D44()
{
  result = qword_1EAF4AB28;
  if (!qword_1EAF4AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB28);
  }

  return result;
}

unint64_t sub_197A55D9C()
{
  result = qword_1EAF4AB30;
  if (!qword_1EAF4AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB30);
  }

  return result;
}

unint64_t sub_197A55DF4()
{
  result = qword_1EAF4AB38;
  if (!qword_1EAF4AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB38);
  }

  return result;
}

unint64_t sub_197A55E4C()
{
  result = qword_1EAF4AB40;
  if (!qword_1EAF4AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB40);
  }

  return result;
}

unint64_t sub_197A55EA4()
{
  result = qword_1EAF4AB48;
  if (!qword_1EAF4AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB48);
  }

  return result;
}

unint64_t sub_197A55EFC()
{
  result = qword_1EAF4AB50;
  if (!qword_1EAF4AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB50);
  }

  return result;
}

unint64_t sub_197A55F54()
{
  result = qword_1EAF4AB58;
  if (!qword_1EAF4AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB58);
  }

  return result;
}

unint64_t sub_197A55FAC()
{
  result = qword_1EAF4AB60;
  if (!qword_1EAF4AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB60);
  }

  return result;
}

unint64_t sub_197A56004()
{
  result = qword_1EAF4AB68;
  if (!qword_1EAF4AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB68);
  }

  return result;
}

unint64_t sub_197A5605C()
{
  result = qword_1EAF4AB70;
  if (!qword_1EAF4AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB70);
  }

  return result;
}

unint64_t sub_197A560B4()
{
  result = qword_1EAF4AB78;
  if (!qword_1EAF4AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB78);
  }

  return result;
}

unint64_t sub_197A5610C()
{
  result = qword_1EAF4AB80;
  if (!qword_1EAF4AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB80);
  }

  return result;
}

unint64_t sub_197A56164()
{
  result = qword_1EAF4AB88;
  if (!qword_1EAF4AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB88);
  }

  return result;
}

unint64_t sub_197A561BC()
{
  result = qword_1EAF4AB90;
  if (!qword_1EAF4AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB90);
  }

  return result;
}

unint64_t sub_197A56214()
{
  result = qword_1EAF4AB98;
  if (!qword_1EAF4AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AB98);
  }

  return result;
}

unint64_t sub_197A5626C()
{
  result = qword_1EAF4ABA0;
  if (!qword_1EAF4ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABA0);
  }

  return result;
}

unint64_t sub_197A562C4()
{
  result = qword_1ED87D218;
  if (!qword_1ED87D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D218);
  }

  return result;
}

unint64_t sub_197A5631C()
{
  result = qword_1ED87D220;
  if (!qword_1ED87D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D220);
  }

  return result;
}

unint64_t sub_197A56374()
{
  result = qword_1EAF48790;
  if (!qword_1EAF48790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48790);
  }

  return result;
}

unint64_t sub_197A563CC()
{
  result = qword_1EAF48798;
  if (!qword_1EAF48798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48798);
  }

  return result;
}

unint64_t sub_197A56424()
{
  result = qword_1EAF4ABA8;
  if (!qword_1EAF4ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABA8);
  }

  return result;
}

unint64_t sub_197A5647C()
{
  result = qword_1EAF4ABB0;
  if (!qword_1EAF4ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABB0);
  }

  return result;
}

unint64_t sub_197A564D4()
{
  result = qword_1EAF4ABB8;
  if (!qword_1EAF4ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABB8);
  }

  return result;
}

unint64_t sub_197A5652C()
{
  result = qword_1EAF4ABC0;
  if (!qword_1EAF4ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABC0);
  }

  return result;
}

unint64_t sub_197A56584()
{
  result = qword_1EAF4ABC8;
  if (!qword_1EAF4ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABC8);
  }

  return result;
}

unint64_t sub_197A565DC()
{
  result = qword_1EAF4ABD0;
  if (!qword_1EAF4ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABD0);
  }

  return result;
}

unint64_t sub_197A56634()
{
  result = qword_1EAF4ABD8;
  if (!qword_1EAF4ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABD8);
  }

  return result;
}

unint64_t sub_197A5668C()
{
  result = qword_1EAF4ABE0;
  if (!qword_1EAF4ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABE0);
  }

  return result;
}

unint64_t sub_197A566E4()
{
  result = qword_1EAF4ABE8;
  if (!qword_1EAF4ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABE8);
  }

  return result;
}

unint64_t sub_197A5673C()
{
  result = qword_1EAF4ABF0;
  if (!qword_1EAF4ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABF0);
  }

  return result;
}

unint64_t sub_197A56794()
{
  result = qword_1EAF4ABF8;
  if (!qword_1EAF4ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ABF8);
  }

  return result;
}

unint64_t sub_197A567EC()
{
  result = qword_1EAF4AC00;
  if (!qword_1EAF4AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC00);
  }

  return result;
}

unint64_t sub_197A56844()
{
  result = qword_1EAF4AC08;
  if (!qword_1EAF4AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC08);
  }

  return result;
}

unint64_t sub_197A5689C()
{
  result = qword_1EAF4AC10;
  if (!qword_1EAF4AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC10);
  }

  return result;
}

unint64_t sub_197A568F4()
{
  result = qword_1EAF48750;
  if (!qword_1EAF48750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48750);
  }

  return result;
}

unint64_t sub_197A5694C()
{
  result = qword_1EAF48758;
  if (!qword_1EAF48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48758);
  }

  return result;
}

unint64_t sub_197A569A4()
{
  result = qword_1EAF487F0;
  if (!qword_1EAF487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487F0);
  }

  return result;
}

unint64_t sub_197A569FC()
{
  result = qword_1EAF487F8;
  if (!qword_1EAF487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487F8);
  }

  return result;
}

unint64_t sub_197A56A54()
{
  result = qword_1EAF487D8;
  if (!qword_1EAF487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487D8);
  }

  return result;
}

unint64_t sub_197A56AAC()
{
  result = qword_1EAF487E0;
  if (!qword_1EAF487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487E0);
  }

  return result;
}

unint64_t sub_197A56B04()
{
  result = qword_1EAF4AC18;
  if (!qword_1EAF4AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC18);
  }

  return result;
}

unint64_t sub_197A56B5C()
{
  result = qword_1EAF4AC20;
  if (!qword_1EAF4AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC20);
  }

  return result;
}

unint64_t sub_197A56BB4()
{
  result = qword_1EAF4AC28;
  if (!qword_1EAF4AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC28);
  }

  return result;
}

unint64_t sub_197A56C0C()
{
  result = qword_1EAF4AC30;
  if (!qword_1EAF4AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC30);
  }

  return result;
}

unint64_t sub_197A56C64()
{
  result = qword_1EAF4AC38;
  if (!qword_1EAF4AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC38);
  }

  return result;
}

unint64_t sub_197A56CBC()
{
  result = qword_1EAF4AC40;
  if (!qword_1EAF4AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC40);
  }

  return result;
}

unint64_t sub_197A56D14()
{
  result = qword_1EAF4AC48;
  if (!qword_1EAF4AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC48);
  }

  return result;
}

unint64_t sub_197A56D6C()
{
  result = qword_1EAF4AC50;
  if (!qword_1EAF4AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC50);
  }

  return result;
}

unint64_t sub_197A56DC4()
{
  result = qword_1ED87D258;
  if (!qword_1ED87D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D258);
  }

  return result;
}

unint64_t sub_197A56E1C()
{
  result = qword_1ED87D260;
  if (!qword_1ED87D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D260);
  }

  return result;
}

unint64_t sub_197A56E74()
{
  result = qword_1ED87D6C0;
  if (!qword_1ED87D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6C0);
  }

  return result;
}

unint64_t sub_197A56ECC()
{
  result = qword_1ED87D248;
  if (!qword_1ED87D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D248);
  }

  return result;
}

unint64_t sub_197A56F24()
{
  result = qword_1EAF48770;
  if (!qword_1EAF48770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48770);
  }

  return result;
}

unint64_t sub_197A56F7C()
{
  result = qword_1EAF48778;
  if (!qword_1EAF48778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48778);
  }

  return result;
}

unint64_t sub_197A56FD4()
{
  result = qword_1ED87D1E0;
  if (!qword_1ED87D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1E0);
  }

  return result;
}

unint64_t sub_197A5702C()
{
  result = qword_1ED87D1E8;
  if (!qword_1ED87D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1E8);
  }

  return result;
}

unint64_t sub_197A57084()
{
  result = qword_1EAF4AC58;
  if (!qword_1EAF4AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC58);
  }

  return result;
}

unint64_t sub_197A570DC()
{
  result = qword_1EAF4AC60;
  if (!qword_1EAF4AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC60);
  }

  return result;
}

unint64_t sub_197A57134()
{
  result = qword_1EAF4AC68;
  if (!qword_1EAF4AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC68);
  }

  return result;
}

unint64_t sub_197A5718C()
{
  result = qword_1EAF4AC70;
  if (!qword_1EAF4AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC70);
  }

  return result;
}

unint64_t sub_197A571E4()
{
  result = qword_1EAF4AC78;
  if (!qword_1EAF4AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC78);
  }

  return result;
}

unint64_t sub_197A5723C()
{
  result = qword_1EAF4AC80;
  if (!qword_1EAF4AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC80);
  }

  return result;
}

unint64_t sub_197A57294()
{
  result = qword_1EAF4AC88;
  if (!qword_1EAF4AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC88);
  }

  return result;
}

unint64_t sub_197A572EC()
{
  result = qword_1EAF4AC90;
  if (!qword_1EAF4AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC90);
  }

  return result;
}

unint64_t sub_197A57344()
{
  result = qword_1ED87D6E8;
  if (!qword_1ED87D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6E8);
  }

  return result;
}

unint64_t sub_197A5739C()
{
  result = qword_1ED87D6F0;
  if (!qword_1ED87D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6F0);
  }

  return result;
}

unint64_t sub_197A573F4()
{
  result = qword_1ED87D6D0;
  if (!qword_1ED87D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6D0);
  }

  return result;
}

unint64_t sub_197A5744C()
{
  result = qword_1ED87D6D8;
  if (!qword_1ED87D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D6D8);
  }

  return result;
}

unint64_t sub_197A574A4()
{
  result = qword_1ED87DD18;
  if (!qword_1ED87DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD18);
  }

  return result;
}

unint64_t sub_197A574FC()
{
  result = qword_1ED87DD20;
  if (!qword_1ED87DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD20);
  }

  return result;
}

unint64_t sub_197A57554()
{
  result = qword_1EAF487B0;
  if (!qword_1EAF487B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487B0);
  }

  return result;
}

unint64_t sub_197A575AC()
{
  result = qword_1EAF487B8;
  if (!qword_1EAF487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF487B8);
  }

  return result;
}

unint64_t sub_197A57604()
{
  result = qword_1EAF4AC98;
  if (!qword_1EAF4AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AC98);
  }

  return result;
}

unint64_t sub_197A5765C()
{
  result = qword_1EAF4ACA0;
  if (!qword_1EAF4ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACA0);
  }

  return result;
}

unint64_t sub_197A576B4()
{
  result = qword_1EAF4ACA8;
  if (!qword_1EAF4ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACA8);
  }

  return result;
}

unint64_t sub_197A5770C()
{
  result = qword_1EAF4ACB0;
  if (!qword_1EAF4ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACB0);
  }

  return result;
}

unint64_t sub_197A57764()
{
  result = qword_1ED87E8E0;
  if (!qword_1ED87E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E8E0);
  }

  return result;
}

unint64_t sub_197A577BC()
{
  result = qword_1ED87E8E8;
  if (!qword_1ED87E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E8E8);
  }

  return result;
}

unint64_t sub_197A57814()
{
  result = qword_1EAF48868;
  if (!qword_1EAF48868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48868);
  }

  return result;
}

unint64_t sub_197A5786C()
{
  result = qword_1EAF48870;
  if (!qword_1EAF48870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48870);
  }

  return result;
}

unint64_t sub_197A578C4()
{
  result = qword_1ED87E9E0;
  if (!qword_1ED87E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E9E0);
  }

  return result;
}

unint64_t sub_197A5791C()
{
  result = qword_1ED87E9E8;
  if (!qword_1ED87E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E9E8);
  }

  return result;
}

unint64_t sub_197A57974()
{
  result = qword_1EAF488B0;
  if (!qword_1EAF488B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488B0);
  }

  return result;
}

unint64_t sub_197A579CC()
{
  result = qword_1EAF488B8;
  if (!qword_1EAF488B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488B8);
  }

  return result;
}

unint64_t sub_197A57A24()
{
  result = qword_1ED87D718;
  if (!qword_1ED87D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D718);
  }

  return result;
}

unint64_t sub_197A57A7C()
{
  result = qword_1ED87D720;
  if (!qword_1ED87D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D720);
  }

  return result;
}

unint64_t sub_197A57AD4()
{
  result = qword_1EAF488D0;
  if (!qword_1EAF488D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488D0);
  }

  return result;
}

unint64_t sub_197A57B2C()
{
  result = qword_1EAF488D8;
  if (!qword_1EAF488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488D8);
  }

  return result;
}

unint64_t sub_197A57B84()
{
  result = qword_1EAF4ACB8;
  if (!qword_1EAF4ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACB8);
  }

  return result;
}

unint64_t sub_197A57BDC()
{
  result = qword_1EAF4ACC0;
  if (!qword_1EAF4ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACC0);
  }

  return result;
}

unint64_t sub_197A57C34()
{
  result = qword_1EAF4ACC8;
  if (!qword_1EAF4ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACC8);
  }

  return result;
}

unint64_t sub_197A57C8C()
{
  result = qword_1EAF4ACD0;
  if (!qword_1EAF4ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ACD0);
  }

  return result;
}

unint64_t sub_197A57CE4()
{
  result = qword_1ED87FB28;
  if (!qword_1ED87FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FB28);
  }

  return result;
}

unint64_t sub_197A57D3C()
{
  result = qword_1ED87FB30;
  if (!qword_1ED87FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FB30);
  }

  return result;
}

unint64_t sub_197A57D94()
{
  result = qword_1ED87F940;
  if (!qword_1ED87F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F940);
  }

  return result;
}

unint64_t sub_197A57DEC()
{
  result = qword_1ED87F948;
  if (!qword_1ED87F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F948);
  }

  return result;
}

unint64_t sub_197A57E44()
{
  result = qword_1ED87FA78;
  if (!qword_1ED87FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA78);
  }

  return result;
}

unint64_t sub_197A57E9C()
{
  result = qword_1ED87FA80;
  if (!qword_1ED87FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA80);
  }

  return result;
}

unint64_t sub_197A57EF4()
{
  result = qword_1EAF48838;
  if (!qword_1EAF48838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48838);
  }

  return result;
}

unint64_t sub_197A57F4C()
{
  result = qword_1EAF48840;
  if (!qword_1EAF48840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48840);
  }

  return result;
}

unint64_t sub_197A57FA4()
{
  result = qword_1ED87F918;
  if (!qword_1ED87F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F918);
  }

  return result;
}

unint64_t sub_197A57FFC()
{
  result = qword_1ED87F920;
  if (!qword_1ED87F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F920);
  }

  return result;
}

unint64_t sub_197A58054()
{
  result = qword_1EAF48888;
  if (!qword_1EAF48888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48888);
  }

  return result;
}

unint64_t sub_197A580AC()
{
  result = qword_1EAF48890;
  if (!qword_1EAF48890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48890);
  }

  return result;
}

unint64_t sub_197A58104()
{
  result = qword_1ED87FBE8;
  if (!qword_1ED87FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FBE8);
  }

  return result;
}

unint64_t sub_197A5815C()
{
  result = qword_1ED87FBF0;
  if (!qword_1ED87FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FBF0);
  }

  return result;
}

unint64_t sub_197A581B4()
{
  result = qword_1EAF48810;
  if (!qword_1EAF48810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48810);
  }

  return result;
}

unint64_t sub_197A5820C()
{
  result = qword_1EAF48818;
  if (!qword_1EAF48818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48818);
  }

  return result;
}

unint64_t sub_197A58264()
{
  result = qword_1ED87FD68;
  if (!qword_1ED87FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD68);
  }

  return result;
}

unint64_t sub_197A582BC()
{
  result = qword_1ED87FD70;
  if (!qword_1ED87FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD70);
  }

  return result;
}

unint64_t sub_197A58314()
{
  result = qword_1ED87FD50;
  if (!qword_1ED87FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD50);
  }

  return result;
}

unint64_t sub_197A5836C()
{
  result = qword_1ED87FD58;
  if (!qword_1ED87FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD58);
  }

  return result;
}

unint64_t sub_197A583C4()
{
  result = qword_1ED8808B0;
  if (!qword_1ED8808B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808B0);
  }

  return result;
}

unint64_t sub_197A5841C()
{
  result = qword_1ED8808B8;
  if (!qword_1ED8808B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808B8);
  }

  return result;
}

unint64_t sub_197A58474()
{
  result = qword_1ED8803B8;
  if (!qword_1ED8803B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8803B8);
  }

  return result;
}

unint64_t sub_197A584CC()
{
  result = qword_1ED8803C0;
  if (!qword_1ED8803C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8803C0);
  }

  return result;
}

unint64_t sub_197A58524()
{
  result = qword_1ED8808F0;
  if (!qword_1ED8808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808F0);
  }

  return result;
}

unint64_t sub_197A5857C()
{
  result = qword_1ED8808F8;
  if (!qword_1ED8808F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808F8);
  }

  return result;
}

unint64_t sub_197A585D4()
{
  result = qword_1ED8808D0;
  if (!qword_1ED8808D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808D0);
  }

  return result;
}

unint64_t sub_197A5862C()
{
  result = qword_1ED8808D8;
  if (!qword_1ED8808D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808D8);
  }

  return result;
}

unint64_t sub_197A58684()
{
  result = qword_1ED8808C0;
  if (!qword_1ED8808C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808C0);
  }

  return result;
}

unint64_t sub_197A586DC()
{
  result = qword_1ED8808C8;
  if (!qword_1ED8808C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808C8);
  }

  return result;
}

unint64_t sub_197A58734()
{
  result = qword_1ED8808A0;
  if (!qword_1ED8808A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808A0);
  }

  return result;
}

unint64_t sub_197A5878C()
{
  result = qword_1ED8808A8;
  if (!qword_1ED8808A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808A8);
  }

  return result;
}

unint64_t sub_197A587E4()
{
  result = qword_1ED8808E0;
  if (!qword_1ED8808E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808E0);
  }

  return result;
}

unint64_t sub_197A5883C()
{
  result = qword_1ED8808E8;
  if (!qword_1ED8808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8808E8);
  }

  return result;
}

unint64_t sub_197A58894()
{
  result = qword_1ED8807D0;
  if (!qword_1ED8807D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807D0);
  }

  return result;
}

unint64_t sub_197A588EC()
{
  result = qword_1ED8807D8[0];
  if (!qword_1ED8807D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8807D8);
  }

  return result;
}

unint64_t sub_197A58944()
{
  result = qword_1ED8807C0;
  if (!qword_1ED8807C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807C0);
  }

  return result;
}

unint64_t sub_197A5899C()
{
  result = qword_1ED8807C8;
  if (!qword_1ED8807C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807C8);
  }

  return result;
}

unint64_t sub_197A589F4()
{
  result = qword_1ED880890;
  if (!qword_1ED880890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880890);
  }

  return result;
}

unint64_t sub_197A58A4C()
{
  result = qword_1ED880898;
  if (!qword_1ED880898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880898);
  }

  return result;
}

unint64_t sub_197A58AA4()
{
  result = qword_1ED8807B0;
  if (!qword_1ED8807B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807B0);
  }

  return result;
}

unint64_t sub_197A58AFC()
{
  result = qword_1ED8807B8;
  if (!qword_1ED8807B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807B8);
  }

  return result;
}

unint64_t sub_197A58B54()
{
  result = qword_1ED880910;
  if (!qword_1ED880910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880910);
  }

  return result;
}

unint64_t sub_197A58BAC()
{
  result = qword_1ED880918[0];
  if (!qword_1ED880918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED880918);
  }

  return result;
}

unint64_t sub_197A58C04()
{
  result = qword_1ED8807A0;
  if (!qword_1ED8807A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807A0);
  }

  return result;
}

unint64_t sub_197A58C5C()
{
  result = qword_1ED8807A8;
  if (!qword_1ED8807A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8807A8);
  }

  return result;
}

unint64_t sub_197A58CB4()
{
  result = qword_1ED880900;
  if (!qword_1ED880900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880900);
  }

  return result;
}

unint64_t sub_197A58D0C()
{
  result = qword_1ED880908;
  if (!qword_1ED880908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880908);
  }

  return result;
}

unint64_t sub_197A58D64()
{
  result = qword_1ED880770;
  if (!qword_1ED880770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880770);
  }

  return result;
}

unint64_t sub_197A58DBC()
{
  result = qword_1ED880778;
  if (!qword_1ED880778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880778);
  }

  return result;
}

unint64_t sub_197A58E14()
{
  result = qword_1ED8803C8;
  if (!qword_1ED8803C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8803C8);
  }

  return result;
}

unint64_t sub_197A58E6C()
{
  result = qword_1ED8803D0[0];
  if (!qword_1ED8803D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8803D0);
  }

  return result;
}

unint64_t sub_197A58EC4()
{
  result = qword_1ED880870;
  if (!qword_1ED880870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880870);
  }

  return result;
}

unint64_t sub_197A58F1C()
{
  result = qword_1ED880878;
  if (!qword_1ED880878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880878);
  }

  return result;
}

unint64_t sub_197A58F74()
{
  result = qword_1ED880880;
  if (!qword_1ED880880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880880);
  }

  return result;
}

unint64_t sub_197A58FCC()
{
  result = qword_1ED880888;
  if (!qword_1ED880888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880888);
  }

  return result;
}

unint64_t sub_197A59024()
{
  result = qword_1ED880760;
  if (!qword_1ED880760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880760);
  }

  return result;
}

unint64_t sub_197A5907C()
{
  result = qword_1ED880768;
  if (!qword_1ED880768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880768);
  }

  return result;
}

unint64_t sub_197A590D4()
{
  result = qword_1ED880AD0;
  if (!qword_1ED880AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880AD0);
  }

  return result;
}

unint64_t sub_197A5912C()
{
  result = qword_1ED880AD8[0];
  if (!qword_1ED880AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED880AD8);
  }

  return result;
}

unint64_t sub_197A59184()
{
  result = qword_1ED880E58;
  if (!qword_1ED880E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880E58);
  }

  return result;
}

unint64_t sub_197A591DC()
{
  result = qword_1ED880E60;
  if (!qword_1ED880E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880E60);
  }

  return result;
}

unint64_t sub_197A59234()
{
  result = qword_1ED880780;
  if (!qword_1ED880780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880780);
  }

  return result;
}

unint64_t sub_197A5928C()
{
  result = qword_1ED880788;
  if (!qword_1ED880788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880788);
  }

  return result;
}

unint64_t sub_197A592E4()
{
  result = qword_1ED880790;
  if (!qword_1ED880790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880790);
  }

  return result;
}

unint64_t sub_197A5933C()
{
  result = qword_1ED880798;
  if (!qword_1ED880798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880798);
  }

  return result;
}

unint64_t sub_197A59394()
{
  result = qword_1ED880750;
  if (!qword_1ED880750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880750);
  }

  return result;
}

unint64_t sub_197A593EC()
{
  result = qword_1ED880758;
  if (!qword_1ED880758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880758);
  }

  return result;
}

unint64_t sub_197A59444()
{
  result = qword_1ED880DB0;
  if (!qword_1ED880DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880DB0);
  }

  return result;
}

unint64_t sub_197A5949C()
{
  result = qword_1ED880DB8;
  if (!qword_1ED880DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880DB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_145_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_197A49444();
}

uint64_t OUTLINED_FUNCTION_175_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return type metadata accessor for RequestMetadata(0);
}

uint64_t OUTLINED_FUNCTION_179_1()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 120, v0);
}

uint64_t OUTLINED_FUNCTION_180_0()
{
}

uint64_t sub_197A597EC()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED880520);
  __swift_project_value_buffer(v0, qword_1ED880520);
  return sub_197A875F8();
}

uint64_t generalLogHandle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = sub_197A87608();
  v3 = __swift_project_value_buffer(v2, qword_1ED880520);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t XPCReceivedMessageWrapper.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_197A87818();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_197A599A0()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF482F0);
  v1 = __swift_project_value_buffer(v0, qword_1EAF482F0);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t InferenceMonitor.Event.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_197A59ABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000197AA4810 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000197AA4830 == a2)
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

unint64_t sub_197A59B90(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_197A59BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A59ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A59BF8(uint64_t a1)
{
  v2 = sub_197A59FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A59C34(uint64_t a1)
{
  v2 = sub_197A59FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A59C70(uint64_t a1)
{
  v2 = sub_197A5A034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A59CAC(uint64_t a1)
{
  v2 = sub_197A5A034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A59CE8(uint64_t a1)
{
  v2 = sub_197A5A088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A59D24(uint64_t a1)
{
  v2 = sub_197A5A088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceMonitor.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ACD8, &qword_197A9E6E0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ACE0, &qword_197A9E6E8);
  v11 = OUTLINED_FUNCTION_2(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ACE8, &qword_197A9E6F0);
  OUTLINED_FUNCTION_2(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A59FE0();
  sub_197A883D8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_197A5A034();
    v29 = v33;
    sub_197A88058();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_197A5A088();
    sub_197A88058();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_197A59FE0()
{
  result = qword_1ED87CE78;
  if (!qword_1ED87CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE78);
  }

  return result;
}

unint64_t sub_197A5A034()
{
  result = qword_1ED87CE48;
  if (!qword_1ED87CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE48);
  }

  return result;
}

unint64_t sub_197A5A088()
{
  result = qword_1ED87CE60;
  if (!qword_1ED87CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE60);
  }

  return result;
}

uint64_t InferenceMonitor.Event.hashValue.getter()
{
  v1 = *v0;
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v1);
  return sub_197A88358();
}

uint64_t InferenceMonitor.Event.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ACF0, &qword_197A9E6F8);
  OUTLINED_FUNCTION_2(v54);
  v51 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ACF8, &qword_197A9E700);
  OUTLINED_FUNCTION_2(v9);
  v50 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD00, &unk_197A9E708);
  OUTLINED_FUNCTION_2(v16);
  v53 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v47 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A59FE0();
  v24 = v55;
  sub_197A883A8();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v48 = v9;
  v49 = v15;
  v55 = a1;
  v25 = v54;
  v26 = sub_197A88028();
  result = sub_197953BF0(v26, 0);
  if (v29 == v30 >> 1)
  {
    v54 = result;
LABEL_9:
    v40 = sub_197A87E88();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820) + 48);
    *v42 = &type metadata for InferenceMonitor.Event;
    sub_197A87F38();
    sub_197A87E78();
    v44 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_36_0(v40);
    (*(v45 + 104))(v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v22, v16);
    a1 = v55;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v47[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_197953BF8(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v54 = v32;
      goto LABEL_9;
    }

    v56 = v31;
    if (v31)
    {
      v58 = 1;
      sub_197A5A034();
      v37 = v8;
      OUTLINED_FUNCTION_19_14();
      v38 = v52;
      v39 = v53;
      swift_unknownObjectRelease();
      (*(v51 + 8))(v37, v25);
    }

    else
    {
      v57 = 0;
      sub_197A5A088();
      v46 = v49;
      OUTLINED_FUNCTION_19_14();
      v38 = v52;
      v39 = v53;
      swift_unknownObjectRelease();
      (*(v50 + 8))(v46, v48);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v56;
    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  return result;
}

uint64_t InferenceMonitor.init()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ED8803B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InferenceMonitor.DaemonEventSource(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();

  result = sub_197A5CB74(v6, v5);
  a1[3] = v2;
  a1[4] = &off_1F0C168D0;
  *a1 = result;
  return result;
}

uint64_t InferenceMonitor.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD08, &qword_197A9E720);
  v1[4] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_23();
  v1[5] = v5;
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD10, &qword_197A9E728);
  v1[7] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_23();
  v1[8] = v10;
  v12 = *(v11 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A5A7CC, 0, 0);
}

uint64_t sub_197A5A7CC()
{
  OUTLINED_FUNCTION_9();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_43(v2);

  return sub_197A5B444();
}

uint64_t sub_197A5A864()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[9];
    v9 = v3[10];
    v11 = v3[6];

    OUTLINED_FUNCTION_13();

    return v12();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_197A5A9A4, 0, 0);
  }
}

uint64_t sub_197A5A9A4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  v7 = *(v4 + 16);
  v7(v2, *v6 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_stream, v3);
  v7(v1, v2, v3);
  sub_197A5CF0C(&qword_1EAF48278, &qword_1EAF4AD10, &qword_197A9E728);
  sub_197A87C98();
  OUTLINED_FUNCTION_9_8(&qword_1EAF48280, &qword_1EAF4AD08, &qword_197A9E720);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_6_13(v9);

  return MEMORY[0x1EEE6D8C8](v0 + 14);
}

uint64_t sub_197A5AAF8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
    v9 = sub_197A5AD90;
  }

  else
  {
    v9 = sub_197A5AC10;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_197A5AC10()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);
  if (v1 == 2 || (v3 = *(v2 + 56), v3 == 2) || ((v3 ^ v1) & 1) != 0)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = *(v0 + 16);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v9 + 8))(v7, v8);
    *(v2 + 56) = v1;
    *v10 = v1;

    OUTLINED_FUNCTION_13();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_9_8(&qword_1EAF48280, &qword_1EAF4AD08, &qword_197A9E720);
    v4 = *(MEMORY[0x1E69E85A8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_6_13();

    return MEMORY[0x1EEE6D8C8](v0 + 112);
  }
}

uint64_t sub_197A5AD90()
{
  OUTLINED_FUNCTION_18();
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t InferenceMonitor.AsyncIterator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

uint64_t sub_197A5AE78()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v3[1] = sub_197960E38;

  return InferenceMonitor.AsyncIterator.next()();
}

uint64_t sub_197A5AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_197A5AFD4;

  return (sub_19799E430)(a1, a2, a3);
}

uint64_t sub_197A5AFD4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
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

uint64_t InferenceMonitor.makeAsyncIterator()()
{
  sub_197961900(v0, v19);
  __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  OUTLINED_FUNCTION_17_11();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for InferenceMonitor.DaemonEventSource(0);
  v18[3] = v8;
  v18[4] = &off_1F0C168D0;
  v18[0] = v7;
  type metadata accessor for InferenceMonitor.AsyncIterator();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
  OUTLINED_FUNCTION_17_11();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  *(v9 + 40) = v8;
  *(v9 + 48) = &off_1F0C168D0;
  *(v9 + 16) = v16;
  *(v9 + 56) = 2;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v9;
}

uint64_t sub_197A5B270@<X0>(uint64_t *a1@<X8>)
{
  v3 = InferenceMonitor.makeAsyncIterator()();
  result = sub_197A5D804(v1);
  *a1 = v3;
  return result;
}

uint64_t sub_197A5B2AC()
{
  type metadata accessor for InferenceMonitor.DaemonEventSource.Handler(0);
  sub_197A5D93C(&qword_1EAF48618, 255, type metadata accessor for InferenceMonitor.DaemonEventSource.Handler);
  return sub_197A87718();
}

uint64_t sub_197A5B348()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_listener;
  v3 = *(v0 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_listener);

  sub_197A87728();

  v4 = OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_stream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD10, &qword_197A9E728);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 8))(v1 + v4);
  v7 = *(v1 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_handler);

  v8 = *(v1 + v2);

  return v1;
}

uint64_t sub_197A5B3EC()
{
  sub_197A5B348();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_197A5B464()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_handler);
  v3 = *(v1 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_listener);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_43(v4);

  return sub_197A5B7DC();
}

uint64_t sub_197A5B508()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150) - 8) + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_cancelHandle;
  v6 = *(v0 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_cancelHandle);
  if (v6)
  {
    v7 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;

    sub_19795CB2C();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v9 = OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD38, &qword_197A9ED10);
  OUTLINED_FUNCTION_0(v10);
  (*(v11 + 8))(v0 + v9);
  sub_19795B324(v0 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_endpoint, &qword_1EAF49CC8, &qword_197A92D58);
  v12 = *(v0 + v5);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_197A5B69C()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880250 != -1)
  {
    OUTLINED_FUNCTION_192();
  }

  v1 = qword_1ED881808;
  *(v0 + 48) = qword_1ED881808;

  return MEMORY[0x1EEE6DFA0](sub_197A5B720, v1, 0);
}

uint64_t sub_197A5B720()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = sub_197A40D50();
  swift_endAccess();
  sub_197956214(v3);
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A5B7B0()
{
  sub_197A5B508();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A5B7DC()
{
  OUTLINED_FUNCTION_9();
  v1[8] = v2;
  v1[9] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A5B874, v0, 0);
}

uint64_t sub_197A5B874()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[9];
  if (*(v1 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_registeredInvalidationCallback))
  {
    v2 = v0[10];

    OUTLINED_FUNCTION_13();

    return v3();
  }

  else
  {
    v5 = v0[10];
    v6 = v0[8];
    *(v1 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_registeredInvalidationCallback) = 1;
    sub_197A87738();
    v7 = sub_197A876D8();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    v8 = OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_endpoint;
    swift_beginAccess();
    sub_197A5D664(v5, v1 + v8);
    swift_endAccess();
    if (qword_1ED880250 != -1)
    {
      OUTLINED_FUNCTION_192();
    }

    v9 = v0[9];
    v10 = qword_1ED881808;
    v0[11] = qword_1ED881808;
    v0[12] = swift_allocObject();
    swift_weakInit();

    return MEMORY[0x1EEE6DFA0](sub_197A5B9F0, v10, 0);
  }
}

uint64_t sub_197A5B9F0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v4 = swift_allocObject();
  v0[13] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_197A5D6D4;
  *(v5 + 24) = v1;
  swift_beginAccess();

  v6 = *(v2 + 128);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 128);
  sub_197A25238(sub_19798E520, v5, v4);
  *(v2 + 128) = v8;

  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_197A5BB38, v3, 0);
}

uint64_t sub_197A5BB38()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[9];
  v2 = *(v1 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_cancelHandle);
  *(v1 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_cancelHandle) = v0[13];

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_197A5BBE0;
  v4 = v0[9];

  return sub_197A5C30C();
}

uint64_t sub_197A5BBE0()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v1 + 80);

  OUTLINED_FUNCTION_44_2();

  return v6();
}

void sub_197A5BCE4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  if (a1)
  {
    v6 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    sub_19795CB2C();
  }

  else
  {
    if (qword_1EAF482E8 != -1)
    {
      swift_once();
    }

    v9 = sub_197A87608();
    __swift_project_value_buffer(v9, qword_1EAF482F0);
    v13 = sub_197A875E8();
    v10 = sub_197A87D78();
    if (os_log_type_enabled(v13, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_197941000, v13, v10, "Can't retry modelmanagerd connection. Inference monitor cannot be restored.", v11, 2u);
      MEMORY[0x19A8EBE00](v11, -1, -1);
    }

    v12 = v13;
  }
}

uint64_t sub_197A5BF10()
{
  OUTLINED_FUNCTION_18();
  if (qword_1EAF482E8 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v1 = sub_197A87608();
  v0[6] = __swift_project_value_buffer(v1, qword_1EAF482F0);
  v2 = sub_197A875E8();
  v3 = sub_197A87D78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_197941000, v2, v3, "Restoring Inference Monitor", v4, 2u);
    OUTLINED_FUNCTION_44();
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_43(v7);

    return sub_197A5C30C();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_197A5C098()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A5C1BC, 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_197A5C1BC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  MEMORY[0x19A8EBBD0](v1);
  v4 = sub_197A875E8();
  v5 = sub_197A87D68();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x19A8EBBD0](v7);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_197941000, v4, v5, "Failed to restore inference monitor: %@", v8, 0xCu);
    sub_19795B324(v9, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t sub_197A5C30C()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 80) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58) - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A5C3A4, v0, 0);
}

uint64_t sub_197A5C3A4()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_197961900(v2 + 112, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_endpoint;
  swift_beginAccess();
  sub_197A5D5F4(v2 + v5, v1);
  v6 = sub_197A876D8();
  v0[12] = v6;
  result = __swift_getEnumTagSinglePayload(v1, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v4 + 96);
    OUTLINED_FUNCTION_23();
    v14 = (v9 + *v9);
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_197A5C53C;
    v13 = v0[11];

    return v14(v13, v3, v4);
  }

  return result;
}

uint64_t sub_197A5C53C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_197A5C6D8;
  }

  else
  {
    v11 = v3[11];
    v12 = v3[10];
    OUTLINED_FUNCTION_36_0(v3[12]);
    (*(v13 + 8))();
    v10 = sub_197A5C670;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A5C670()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A5C6D8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[11];
  OUTLINED_FUNCTION_36_0(v0[12]);
  (*(v2 + 8))(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_13();
  v4 = v0[14];

  return v3();
}

double sub_197A5C768@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD30, &unk_197A9ED00);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_197A5D5A0();
  sub_197A877F8();
  v12 = v25;
  if (qword_1EAF482E8 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v13 = sub_197A87608();
  __swift_project_value_buffer(v13, qword_1EAF482F0);
  v14 = sub_197A875E8();
  v15 = sub_197A87D78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v6;
    v25 = v17;
    v18 = v17;
    *v16 = 136315138;
    if (v12)
    {
      v19 = 0xD000000000000016;
    }

    else
    {
      v19 = 0xD000000000000012;
    }

    v23 = v2;
    if (v12)
    {
      v20 = "remoteAvailability";
    }

    else
    {
      v20 = "Inferences Not Running";
    }

    v21 = sub_197948834(v19, v20 | 0x8000000000000000, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_197941000, v14, v15, "InferenceMonitor received event: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v6 = v24;
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  LOBYTE(v25) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD38, &qword_197A9ED10);
  sub_197A87CC8();
  (*(v6 + 8))(v11, v4);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_197A5CB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for InferenceMonitor.DaemonEventSource.Handler(0);

  return MEMORY[0x1EEE6D780](a1, v5, a3);
}

uint64_t sub_197A5CB74(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v36 = a1;
  v2 = sub_197A87708();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD40, &qword_197A9ED38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD10, &qword_197A9E728);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD38, &qword_197A9ED10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  sub_197A87CB8();
  (*(v6 + 8))(v9, v5);
  v23 = v34;
  (*(v11 + 32))(v34 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_stream, v14, v10);
  (*(v16 + 16))(v20, v22, v15);
  v24 = type metadata accessor for InferenceMonitor.DaemonEventSource.Handler(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_handler) = sub_197A5D834(v36, v20, v27);
  swift_retain_n();
  sub_197A876F8();
  v28 = sub_197A87748();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_197A876E8();

  (*(v16 + 8))(v22, v15);
  result = v23;
  *(v23 + OBJC_IVAR____TtCV20ModelManagerServices16InferenceMonitor17DaemonEventSource_listener) = v31;
  return result;
}

uint64_t sub_197A5CF0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_197A5CF7C()
{
  result = qword_1EAF4AD18;
  if (!qword_1EAF4AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AD18);
  }

  return result;
}

void sub_197A5D048()
{
  sub_197A5D234(319, &qword_1ED87CB80, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_197A5D12C()
{
  sub_197A5D234(319, &qword_1ED87CB88, MEMORY[0x1E69E87A0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_197A5D2B0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_197A5D234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
    v7 = a3(a1, &type metadata for InferenceMonitor.Event, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_197A5D2B0()
{
  if (!qword_1ED880E68)
  {
    sub_197A876D8();
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED880E68);
    }
  }
}

unint64_t sub_197A5D33C()
{
  result = qword_1EAF4AD28;
  if (!qword_1EAF4AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AD28);
  }

  return result;
}

unint64_t sub_197A5D394()
{
  result = qword_1ED87CE50;
  if (!qword_1ED87CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE50);
  }

  return result;
}

unint64_t sub_197A5D3EC()
{
  result = qword_1ED87CE58;
  if (!qword_1ED87CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE58);
  }

  return result;
}

unint64_t sub_197A5D444()
{
  result = qword_1ED87CE38;
  if (!qword_1ED87CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE38);
  }

  return result;
}

unint64_t sub_197A5D49C()
{
  result = qword_1ED87CE40;
  if (!qword_1ED87CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE40);
  }

  return result;
}

unint64_t sub_197A5D4F4()
{
  result = qword_1ED87CE68;
  if (!qword_1ED87CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE68);
  }

  return result;
}

unint64_t sub_197A5D54C()
{
  result = qword_1ED87CE70;
  if (!qword_1ED87CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CE70);
  }

  return result;
}

unint64_t sub_197A5D5A0()
{
  result = qword_1EAF48610;
  if (!qword_1EAF48610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48610);
  }

  return result;
}

uint64_t sub_197A5D5F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A5D664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A5D6DC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14_14(v5);

  return sub_197A5BEF0(v7, v8, v9, v10);
}

uint64_t sub_197A5D770()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14_14(v5);

  return sub_197A5B67C(v7, v8, v9, v10);
}

uint64_t sub_197A5D834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = type metadata accessor for ModelServiceClient();
  v13 = &protocol witness table for ModelServiceClient;
  *&v11 = a1;
  swift_defaultActor_initialize();
  *(a3 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_registeredInvalidationCallback) = 0;
  v6 = OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_endpoint;
  v7 = sub_197A876D8();
  __swift_storeEnumTagSinglePayload(a3 + v6, 1, 1, v7);
  *(a3 + OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_cancelHandle) = 0;
  sub_197945EF8(&v11, a3 + 112);
  v8 = OBJC_IVAR____TtCCV20ModelManagerServices16InferenceMonitor17DaemonEventSource7Handler_continuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD38, &qword_197A9ED10);
  (*(*(v9 - 8) + 32))(a3 + v8, a2, v9);
  return a3;
}

uint64_t sub_197A5D93C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t CountedSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1;
  v5 = sub_197A87B38();
  WitnessTable = swift_getWitnessTable();
  result = CountedSet.init<A>(_:)(&v8, a2, v5, WitnessTable, &v9);
  *a3 = v9;
  return result;
}

uint64_t CountedSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v41 = a4;
  v42 = a5;
  v43 = a1;
  OUTLINED_FUNCTION_34_0();
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_197A87DB8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v37 - v16;
  OUTLINED_FUNCTION_34_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34_0();
  v38 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v37 - v31;
  swift_getTupleTypeMetadata2();
  sub_197A87B28();
  v44 = sub_197A87898();
  v40 = v19;
  (*(v19 + 16))(v25, v43, a3);
  sub_197A87A28();
  v41 = a3;
  swift_getAssociatedConformanceWitness();
  v33 = (v39 + 32);
  for (i = (v39 + 8); ; (*i)(v13, a2))
  {
    sub_197A87DC8();
    if (__swift_getEnumTagSinglePayload(v17, 1, a2) == 1)
    {
      break;
    }

    (*v33)(v13, v17, a2);
    v35 = type metadata accessor for CountedSet();
    CountedSet.add(_:)(v13, v35);
  }

  (*(v40 + 8))(v43, v41);
  result = (*(v38 + 8))(v32, AssociatedTypeWitness);
  *v42 = v44;
  return result;
}

uint64_t sub_197A5DDC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_197A5DE2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000197AA48A0 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000197AA48C0 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x8000000197AA48E0 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000197AA4900 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x8000000197AA4920 == a2)
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

unint64_t sub_197A5DFCC(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A5E05C(uint64_t a1)
{
  v2 = sub_197A5ECAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5E098(uint64_t a1)
{
  v2 = sub_197A5ECAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A5E0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A5DE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A5E104(uint64_t a1)
{
  v2 = sub_197A5EC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5E140(uint64_t a1)
{
  v2 = sub_197A5EC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A5E17C(uint64_t a1)
{
  v2 = sub_197A5EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5E1B8(uint64_t a1)
{
  v2 = sub_197A5EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A5E1F4(uint64_t a1)
{
  v2 = sub_197A5EE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5E230(uint64_t a1)
{
  v2 = sub_197A5EE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A5E26C(uint64_t a1)
{
  v2 = sub_197A5ED54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5E2A8(uint64_t a1)
{
  v2 = sub_197A5ED54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A5E2E4(uint64_t a1)
{
  v2 = sub_197A5EF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5E320(uint64_t a1)
{
  v2 = sub_197A5EF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RemoteIPCRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v24;
  a20 = v25;
  a10 = v20;
  v27 = v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD48, &qword_197A9EE30);
  OUTLINED_FUNCTION_2(v111);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v31);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD50, &qword_197A9EE38);
  OUTLINED_FUNCTION_2(v109);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v35);
  NextStreamingResult = type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult(0);
  v36 = OUTLINED_FUNCTION_6(NextStreamingResult);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_34(v40 - v39);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD58, &qword_197A9EE40);
  OUTLINED_FUNCTION_2(v106);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v44);
  v104 = type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest(0);
  v45 = OUTLINED_FUNCTION_6(v104);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_34(v49 - v48);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD60, &qword_197A9EE48);
  OUTLINED_FUNCTION_2(v103);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v53);
  v101 = type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest(0);
  v54 = OUTLINED_FUNCTION_6(v101);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1_0();
  v59 = v58 - v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD68, &qword_197A9EE50);
  OUTLINED_FUNCTION_2(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_65_0();
  v64 = type metadata accessor for RemoteIPCRequest(0);
  v65 = OUTLINED_FUNCTION_6(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AD70, &qword_197A9EE58);
  v69 = OUTLINED_FUNCTION_2(v68);
  v113 = v70;
  v114 = v69;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_14_15();
  v74 = v27[4];
  OUTLINED_FUNCTION_113_0(v27, v27[3]);
  sub_197A5EC58();
  OUTLINED_FUNCTION_75_8();
  sub_197A883D8();
  sub_197A63780();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_197A5EDA8();
      LOBYTE(v116) = 1;
      sub_197A5EEF4();
      sub_197A88058();
      OUTLINED_FUNCTION_23_12();
      sub_197A5EE54(v97, v98);
      sub_197A880E8();
      OUTLINED_FUNCTION_32(v117);
      v99(v102, v103);
      OUTLINED_FUNCTION_22_7();
      sub_197A5EE9C(v59, v100);
      v96 = *(v113 + 8);
      v94 = v23;
      v95 = v114;
      goto LABEL_8;
    case 2u:
      v84 = v105;
      sub_197A5EDA8();
      LOBYTE(v116) = 2;
      sub_197A5EE00();
      OUTLINED_FUNCTION_19_15(v118);
      OUTLINED_FUNCTION_26_7();
      sub_197A5EE54(v85, v86);
      sub_197A880E8();
      OUTLINED_FUNCTION_32(v118 + 8);
      v87 = OUTLINED_FUNCTION_73_7();
      v88(v87);
      v89 = type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest;
      goto LABEL_6;
    case 3u:
      v84 = v108;
      sub_197A5EDA8();
      LOBYTE(v116) = 3;
      sub_197A5ED54();
      OUTLINED_FUNCTION_19_15(&a10);
      OUTLINED_FUNCTION_25_10();
      sub_197A5EE54(v90, v91);
      sub_197A880E8();
      OUTLINED_FUNCTION_32(&a11);
      v92 = OUTLINED_FUNCTION_73_7();
      v93(v92);
      v89 = type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult;
LABEL_6:
      sub_197A5EE9C(v84, v89);
      v94 = OUTLINED_FUNCTION_40_7();
LABEL_8:
      v96(v94, v95);
      break;
    case 4u:
      LOBYTE(v116) = 4;
      sub_197A5ECAC();
      v110 = *v22;
      v112 = v22[1];
      OUTLINED_FUNCTION_19_15(&a12);
      v116 = v110;
      v117[0] = v112;
      sub_197A5ED00();
      sub_197A880E8();
      OUTLINED_FUNCTION_32(&a15);
      v80 = OUTLINED_FUNCTION_73_7();
      v81(v80);
      v82 = OUTLINED_FUNCTION_40_7();
      v83(v82);

      break;
    default:
      v75 = v22[1];
      v116 = *v22;
      v117[0] = v75;
      v76 = v22[3];
      v117[1] = v22[2];
      v118[0] = v76;
      sub_197A5EF48();
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      v115 = *(&v118[0] + 1);
      sub_197A5EF9C();
      sub_197A880E8();
      OUTLINED_FUNCTION_32(&v115);
      v77(v21, v60);
      v78 = OUTLINED_FUNCTION_40_7();
      v79(v78);
      sub_197A5EFF0(&v116);
      break;
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_197A5EC58()
{
  result = qword_1EAF4AD78;
  if (!qword_1EAF4AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AD78);
  }

  return result;
}

unint64_t sub_197A5ECAC()
{
  result = qword_1EAF4AD80;
  if (!qword_1EAF4AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AD80);
  }

  return result;
}

unint64_t sub_197A5ED00()
{
  result = qword_1EAF4AD88;
  if (!qword_1EAF4AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AD88);
  }

  return result;
}

unint64_t sub_197A5ED54()
{
  result = qword_1EAF4AD90;
  if (!qword_1EAF4AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4AD90);
  }

  return result;
}

uint64_t sub_197A5EDA8()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

unint64_t sub_197A5EE00()
{
  result = qword_1EAF4ADA0;
  if (!qword_1EAF4ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ADA0);
  }

  return result;
}

uint64_t sub_197A5EE54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197A5EE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_197A5EEF4()
{
  result = qword_1EAF4ADB0;
  if (!qword_1EAF4ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ADB0);
  }

  return result;
}

unint64_t sub_197A5EF48()
{
  result = qword_1EAF4ADC0;
  if (!qword_1EAF4ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ADC0);
  }

  return result;
}

unint64_t sub_197A5EF9C()
{
  result = qword_1EAF4ADC8;
  if (!qword_1EAF4ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4ADC8);
  }

  return result;
}

void RemoteIPCRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v146 = v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ADD0, &qword_197A9EE60);
  OUTLINED_FUNCTION_2(v142);
  v145 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  v150 = v31;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ADD8, &qword_197A9EE68);
  OUTLINED_FUNCTION_2(v144);
  v143 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  v148 = v36;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ADE0, &qword_197A9EE70);
  OUTLINED_FUNCTION_2(v139);
  v141 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_30();
  v154 = v41;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ADE8, &qword_197A9EE78);
  OUTLINED_FUNCTION_2(v140);
  v149 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_30();
  v153 = v46;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ADF0, &qword_197A9EE80);
  OUTLINED_FUNCTION_2(v138);
  v137 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_30();
  v147 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4ADF8, &unk_197A9EE88);
  v53 = OUTLINED_FUNCTION_2(v52);
  v151 = v54;
  v152 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_91_8();
  v155 = type metadata accessor for RemoteIPCRequest(0);
  v58 = OUTLINED_FUNCTION_6(v155);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v136 = (&v129 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v129 - v64;
  v66 = MEMORY[0x1EEE9AC00](v63);
  v68 = &v129 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v129 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v129 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v76 = v25[3];
  v75 = v25[4];
  v156 = v25;
  OUTLINED_FUNCTION_113_0(v25, v76);
  sub_197A5EC58();
  sub_197A883A8();
  if (v20)
  {
    goto LABEL_10;
  }

  v132 = v74;
  v133 = v71;
  v134 = v68;
  v135 = v65;
  v77 = v155;
  v78 = v152;
  v79 = sub_197A88028();
  sub_197953BF0(v79, 0);
  if (v81 == v82 >> 1)
  {
    v83 = v77;
LABEL_9:
    v93 = sub_197A87E88();
    swift_allocError();
    v95 = v94;
    v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820) + 48);
    *v95 = v83;
    sub_197A87F38();
    sub_197A87E78();
    (*(*(v93 - 8) + 104))(v95, *MEMORY[0x1E69E6AF8], v93);
    swift_willThrow();
    swift_unknownObjectRelease();
    v97 = OUTLINED_FUNCTION_12_11();
    v98(v97, v78);
LABEL_10:
    v99 = v156;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    OUTLINED_FUNCTION_93();
    return;
  }

  v131 = 0;
  if (v81 < (v82 >> 1))
  {
    v84 = v78;
    v130 = *(v80 + v81);
    sub_197953BF8(v81 + 1);
    v86 = v85;
    v88 = v87;
    swift_unknownObjectRelease();
    if (v86 == v88 >> 1)
    {
      switch(v130)
      {
        case 1:
          LOBYTE(v157) = 1;
          sub_197A5EEF4();
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_84_7();
          type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest(0);
          OUTLINED_FUNCTION_23_12();
          sub_197A5EE54(v107, v108);
          v109 = v140;
          sub_197A87FD8();
          swift_unknownObjectRelease();
          v125 = OUTLINED_FUNCTION_61_8();
          v126(v125, v109);
          v127 = OUTLINED_FUNCTION_12_11();
          v128(v127, v78);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_8_13();
          goto LABEL_17;
        case 2:
          LOBYTE(v157) = 2;
          sub_197A5EE00();
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_84_7();
          type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest(0);
          OUTLINED_FUNCTION_26_7();
          sub_197A5EE54(v101, v102);
          sub_197A87FD8();
          swift_unknownObjectRelease();
          v114 = OUTLINED_FUNCTION_41_9();
          v115(v114);
          v116 = OUTLINED_FUNCTION_12_11();
          v117(v116, v78);
          OUTLINED_FUNCTION_90_5();
          goto LABEL_16;
        case 3:
          LOBYTE(v157) = 3;
          sub_197A5ED54();
          v103 = v148;
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_84_7();
          type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult(0);
          OUTLINED_FUNCTION_25_10();
          sub_197A5EE54(v104, v105);
          v106 = v144;
          sub_197A87FD8();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_32(&a17);
          v118(v103, v106);
          v119 = OUTLINED_FUNCTION_12_11();
          v120(v119, v84);
          OUTLINED_FUNCTION_90_5();
          goto LABEL_16;
        case 4:
          LOBYTE(v157) = 4;
          sub_197A5ECAC();
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_84_7();
          sub_197A635F8();
          sub_197A87FD8();
          v100 = v151;
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_41_9();
          v111(v110);
          (*(v100 + 8))(v21, v78);
          v112 = v158;
          v113 = v136;
          *v136 = v157;
          v113[1] = v112;
          OUTLINED_FUNCTION_90_5();
          goto LABEL_16;
        default:
          LOBYTE(v157) = 0;
          sub_197A5EF48();
          v89 = v147;
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_84_7();
          sub_197A6364C();
          v90 = v138;
          OUTLINED_FUNCTION_47();
          sub_197A87FD8();
          v91 = (v137 + 8);
          v92 = (v151 + 8);
          swift_unknownObjectRelease();
          (*v91)(v89, v90);
          (*v92)(v21, v78);
          v121 = v158;
          v122 = v132;
          *v132 = v157;
          v122[1] = v121;
          v123 = v160;
          v122[2] = v159;
          v122[3] = v123;
          OUTLINED_FUNCTION_90_5();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_8_13();
LABEL_17:
          sub_197A5EDA8();
          v124 = v156;
          OUTLINED_FUNCTION_8_13();
          sub_197A5EDA8();
          v99 = v124;
          break;
      }

      goto LABEL_11;
    }

    v83 = v155;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t RemoteIPCRequest.IsVersionSupported.assetBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

double RemoteIPCRequest.IsVersionSupported.init(interface:version:assetBundleIdentifier:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 8);
  v6 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v6;
  result = *a2;
  *(a5 + 32) = *a2;
  *(a5 + 40) = v5;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

__n128 RemoteIPCRequest.IsVersionSupported.Response.init(interface:supported:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_197A5FC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6361667265746E69 && a2 == 0xE900000000000065;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064)
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

uint64_t sub_197A5FD04(char a1)
{
  if (a1)
  {
    return 0x6574726F70707573;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_197A5FD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A5FC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A5FD6C(uint64_t a1)
{
  v2 = sub_197A636A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A5FDA8(uint64_t a1)
{
  v2 = sub_197A636A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIPCRequest.IsVersionSupported.codableEnumValue.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  type metadata accessor for RemoteIPCRequest(0);
  swift_storeEnumTagMultiPayload();
  return sub_197A636F4(v7, &v6);
}

uint64_t sub_197A5FEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6361667265746E69 && a2 == 0xE900000000000065;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_197A60000(char a1)
{
  if (!a1)
  {
    return 0x6361667265746E69;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0xD000000000000015;
}

uint64_t sub_197A60068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A5FEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A60090(uint64_t a1)
{
  v2 = sub_197A6372C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A600CC(uint64_t a1)
{
  v2 = sub_197A6372C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIPCRequest.IsVersionSupported.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AE40, &qword_197A9EEA8);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66_0();
  v10 = *(v1 + 32);
  v18 = *(v1 + 40);
  v11 = *(v1 + 56);
  v17 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A6372C();
  OUTLINED_FUNCTION_93_7();
  sub_197A883D8();
  sub_1979C437C();
  OUTLINED_FUNCTION_63_6();
  sub_197A88098();

  if (!v2)
  {
    sub_1979552D0();
    OUTLINED_FUNCTION_63_6();
    sub_197A880E8();
    sub_197A880B8();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_61();
  return v15(v14);
}

void RemoteIPCRequest.IsVersionSupported.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AE50, &qword_197A9EEB0);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_65_0();
  v9 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A6372C();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1979C43D0();
    OUTLINED_FUNCTION_58_11();
    sub_197A87F88();
    v10 = *(&v26 + 1);
    v11 = v27;
    v21 = v26;
    v22 = *(&v27 + 1);
    sub_19795F5C4();
    OUTLINED_FUNCTION_58_11();
    sub_197A87FD8();
    v12 = sub_197A87FA8();
    v13 = OUTLINED_FUNCTION_61_8();
    v15 = v14;
    v16(v13, v5);
    v23[0] = v26;
    v20 = v26;
    v23[1] = v27;
    *&v24 = v26;
    v17 = DWORD2(v26);
    DWORD2(v24) = DWORD2(v26);
    *&v25 = v12;
    *(&v25 + 1) = v15;
    v18 = v27;
    *v4 = v26;
    v4[1] = v18;
    v19 = v25;
    v4[2] = v24;
    v4[3] = v19;
    sub_197A636F4(v23, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    *&v26 = v21;
    *(&v26 + 1) = v10;
    *&v27 = v11;
    *(&v27 + 1) = v22;
    v28 = v20;
    v29 = v17;
    v30 = v12;
    v31 = v15;
    sub_197A5EFF0(&v26);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t RemoteIPCRequest.ExecuteRemoteRequest.Response.result.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest.Response(v0) + 20);
  return OUTLINED_FUNCTION_30_13();
}

uint64_t RemoteIPCRequest.ExecuteRemoteRequest.Response.init(interface:result:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v3 = *(type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest.Response(0) + 20);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_87_9();
  return sub_197A5EDA8();
}

uint64_t sub_197A6060C(uint64_t a1)
{
  v2 = sub_197A637F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A60648(uint64_t a1)
{
  v2 = sub_197A637F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RemoteIPCRequest.ExecuteRemoteRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_143();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4AE58, &qword_197A9EEB8);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  sub_197A637F8();
  OUTLINED_FUNCTION_159();
  v6 = v0[1].n128_u64[1];
  OUTLINED_FUNCTION_57_8(v0[1].n128_i64[0], *v0);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_129_2();
  sub_197A88098();
  OUTLINED_FUNCTION_78_9();
  if (!v1)
  {
    v7 = type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest.Response(0);
    v8 = OUTLINED_FUNCTION_47_9(v7);
    type metadata accessor for ClientData(v8);
    OUTLINED_FUNCTION_0_23();
    sub_197A5EE54(v9, v10);
    OUTLINED_FUNCTION_7_12();
    sub_197A880E8();
  }

  v11 = OUTLINED_FUNCTION_142_0();
  v12(v11);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}