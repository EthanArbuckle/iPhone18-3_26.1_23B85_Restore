uint64_t sub_22BE2FC64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22BE2FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C270454();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E470, &unk_22C2AE480);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22BE2FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E438, &unk_22C2AE450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoEvent(0) + 44);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E438, &unk_22C2AE450);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload);
  sub_22C270884();
  return sub_22C0B08BC();
}

void TranscriptProtoEvent.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE18648();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_22BE1B448();
  if (!v5 || (sub_22BE25098(), sub_22C270844(), !v1))
  {
    v6 = sub_22BE17D60();
    sub_22BE2FE7C(v6, v7, v8, v9);
    if (!v1)
    {
      v10 = v2[4];
      v11 = v2[5];
      sub_22BE1B448();
      if (v12)
      {
        sub_22BE2910C();
        sub_22C270844();
      }

      v13 = v2[6];
      v14 = v2[7];
      sub_22BE1B448();
      if (v15)
      {
        sub_22BE2910C();
        sub_22C270844();
      }

      v16 = sub_22BE17D60();
      sub_22BE301F4(v16, v17, v18, v19);
      v20 = sub_22BE17D60();
      sub_22BE303C8(v20, v21, v22, v23);
      if (*(v2[10] + 16))
      {
        sub_22C270464();
        sub_22BE39FFC();
        sub_22C270484();
        sub_22C0B1658();
        sub_22C2707A4();
      }

      v24 = v2[8];
      v25 = v2[9];
      sub_22BE1B448();
      if (v26)
      {
        sub_22BE2910C();
        sub_22C270844();
      }

      sub_22C0B19A4();
      sub_22BE17D60();
      sub_22C02EB28();
      v27 = *v2;
      v28 = v2[1];
      sub_22BE1B448();
      if (v29)
      {
        sub_22BE2910C();
        sub_22C270844();
      }

      v30 = sub_22BE17D60();
      sub_22BE3EA24(v30);
      v31 = sub_22BE17D60();
      sub_22BE3B39C(v31, v32, v33, v34);
      v35 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BE301F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoParticipantID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoEvent(0) + 56);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E418, &unk_22C2AE460);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE303C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSpanID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoEvent(0) + 60);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E408, &unk_22C2CC840);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void TranscriptProtoSessionStart.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C259E88();
  v2 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = sub_22BE5CE4C(&qword_27D90E490, &qword_22C296EB8);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE3100C();
  v18 = sub_22C26ECA4();
  v19 = sub_22BE179D8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE38390();
  v24 = sub_22BE5CE4C(&qword_27D90E4B0, &unk_22C2CC8A0);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE2C64C();
  v28 = *(v21 + 16);
  v21 += 16;
  sub_22C25A254();
  v29();
  TranscriptProtoLocaleSettings.init(handwritten:)();
  v30 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  sub_22C2597F4();
  v35 = sub_22C18F17C(v31, v32, v33, v34);
  v36 = type metadata accessor for SessionStart(v35);
  sub_22C25AAAC(v36);
  sub_22C25A70C(v37);
  sub_22BE22814();
  sub_22BE3BBE0();
  v38 = *(v21 + 24);
  sub_22BE22814();
  sub_22C25A6DC();
  sub_22BE3B9E0();
  v39 = *(v1 + *(v21 + 28));
  v40 = sub_22BE38960();
  v43 = sub_22C18F17C(v40, v41, v42, v30);
  v44 = type metadata accessor for TranscriptProtoSessionStart(v43);
  v45 = sub_22C25AA2C(v44);
  type metadata accessor for TranscriptProtoDeviceDetails(v45);
  sub_22BE1A140();
  sub_22BE19DC4(v46, v47, v48, v49);
  v50 = v44[6];
  type metadata accessor for TranscriptProtoGenderSettings(0);
  v51 = sub_22C259DDC();
  sub_22BE19DC4(v51, v52, v53, v54);
  v55 = v44[7];
  v56 = v0 + v44[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE1B074();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *(v0 + v55) = v39;
  sub_22BE1AABC();
}

uint64_t sub_22BE308D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_22BE26164();
  result = sub_22C2739C4();
  v4 = *(a1 + 36);
  return result;
}

void TranscriptProtoLocaleSettings.init(handwritten:)()
{
  sub_22BE19460();
  v2 = v1;
  sub_22BE1A5E4();
  v3 = sub_22C26E244();
  v4 = sub_22C259488(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v10);
  sub_22BE32374();
  sub_22C26EC64();
  v11 = sub_22C26E1F4();
  v26 = v12;
  v27 = v11;
  v13 = *(v6 + 8);
  v14 = sub_22BE33BE8();
  v13(v14);
  sub_22C26EC44();
  v15 = sub_22C26E1F4();
  v17 = v16;
  v18 = sub_22BE392D4();
  v13(v18);
  sub_22C26EC74();
  v19 = sub_22C26E1F4();
  v21 = v20;
  v22 = sub_22BE1B5E0();
  v13(v22);
  v23 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  sub_22C25AAB8(v23);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v24 = sub_22C26ECA4();
  sub_22BE18524(v24);
  (*(v25 + 8))(v2);
  *v0 = v27;
  v0[1] = v26;
  v0[2] = v15;
  v0[3] = v17;
  v0[4] = v19;
  v0[5] = v21;
  sub_22BE1AABC();
}

uint64_t sub_22BE30AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E4A0, &unk_22C2AE490);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE30CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4B0, &unk_22C2CC8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E4B0, &unk_22C2CC8A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE30EF0()
{
  v2 = *(v0 - 256);

  return sub_22C273EB4();
}

unint64_t sub_22BE30F2C(uint64_t a1)
{
  v6[7] = v3;
  v6[8] = v5;
  v6[5] = v4;
  v6[6] = a1;
  v6[3] = v1;
  v6[4] = v2;
  v6[2] = 0;
  result = 0xD000000000000016;
  v8 = v6[9];
  return result;
}

uint64_t sub_22BE30FA8(uint64_t a1)
{
  sub_22BE19DC4(v1 + v3, 1, 1, a1);
  v4 = v1 + *(v2 + 24);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

void sub_22BE310E8()
{
  sub_22BE1B214();
  v2 = v1;
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v4 = v2(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BE31190()
{

  return Lexer.next()(v0 - 144);
}

void sub_22BE311B8()
{

  JUMPOUT(0x2318AD180);
}

void sub_22BE311D4(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

uint64_t Timepoint.bootSessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Timepoint() + 28);
  v4 = sub_22C26E1D4();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

_BYTE *storeEnumTagSinglePayload for Timepoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x22BE3140CLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_22BE314BC(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x73736553746F6F62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22BE31554()
{
  result = qword_28107C8D0;
  if (!qword_28107C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8D0);
  }

  return result;
}

unint64_t sub_22BE315A8()
{
  result = qword_28106F248[0];
  if (!qword_28106F248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106F248);
  }

  return result;
}

__n128 sub_22BE31610(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22BE3161C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  result = ParticipantID.description.getter(*v1);
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_22BE31698()
{
  result = qword_28107C8B8;
  if (!qword_28107C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8B8);
  }

  return result;
}

unint64_t sub_22BE316EC()
{
  sub_22BEA7680(v0);

  return sub_22BEA7680(v1);
}

uint64_t sub_22BE31750()
{

  return sub_22C108634();
}

uint64_t Session.Event.clientApplicationId.getter()
{
  v0 = type metadata accessor for Session.Event(0);
  sub_22BE36160(*(v0 + 40));
  return sub_22BE19454();
}

uint64_t Session.Event.clientGroupId.getter()
{
  v0 = type metadata accessor for Session.Event(0);
  sub_22BE36160(*(v0 + 44));
  return sub_22BE19454();
}

uint64_t Session.Event.Payload.eventTypeString.getter()
{
  v0 = type metadata accessor for Session.Event.Payload(0);
  v1 = sub_22BE18000(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE2379C();
  sub_22BE1C058();
  v4 = sub_22BE19454();
  sub_22BE1A964(v4, v5);
  sub_22BE18040();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0x10u:
      sub_22C171FFC();
      goto LABEL_17;
    case 7u:
    case 0x14u:
      sub_22BE1B30C();
      sub_22BE1A7E0();
      sub_22C171FFC();
      goto LABEL_18;
    case 0xAu:
    case 0x23u:
      sub_22C18FA54();
      sub_22BE1B30C();
      sub_22BE1A7E0();
      sub_22C171FFC();
      return sub_22BE1B5EC();
    case 0xDu:
    case 0x15u:
    case 0x20u:
    case 0x22u:
    case 0x28u:
      sub_22BE1B30C();
      sub_22BE1A7E0();
      sub_22C171FFC();
      sub_22C18EF64();
      return sub_22BE1B5EC();
    case 0xEu:
    case 0x18u:
      sub_22C171FFC();
      sub_22BE1B30C();
      sub_22C18EF64();
      return sub_22BE1B5EC();
    case 0xFu:
      goto LABEL_7;
    case 0x11u:
    case 0x26u:
      sub_22C18FA54();
      sub_22BE1A7E0();
      sub_22C171FFC();
      goto LABEL_13;
    case 0x13u:
      sub_22C171FFC();
LABEL_7:
      sub_22BE1B30C();
      sub_22C18EF64();
      return sub_22BE1B5EC();
    case 0x16u:
    case 0x17u:
    case 0x1Du:
    case 0x29u:
      sub_22BE1B30C();
      sub_22BE1A7E0();
      sub_22C171FFC();
      goto LABEL_18;
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
    case 0x27u:
      sub_22BE1B30C();
      sub_22BE1A7E0();
      sub_22C171FFC();
      sub_22C18F694();
      return sub_22BE1B5EC();
    case 0x1Fu:
      sub_22C18FA54();
LABEL_13:
      sub_22BE1B30C();
      return sub_22BE1B5EC();
    case 0x24u:
      sub_22C171FFC();
      sub_22BE1B30C();
      goto LABEL_18;
    case 0x25u:
LABEL_17:
      sub_22BE1B30C();
LABEL_18:
      sub_22C18EF64();
      break;
    case 0x2Au:
    case 0x2Bu:
      return sub_22BE1B5EC();
    default:
      sub_22C171FFC();
      break;
  }

  return sub_22BE1B5EC();
}

uint64_t sub_22BE320C4()
{
  v4 = sub_22BE3E7BC();
  v6 = v5(v4);
  v7 = sub_22BE341A4(v6);
  v8 = v0(v7);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 16);

  return v11(v2, v1 + v3, v9);
}

uint64_t sub_22BE32198()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v1 + 24));
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE28648();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE32284()
{
  sub_22C190048();
  if (!sub_22BE267CC(v3))
  {
    sub_22BEC0548();
    sub_22BE7431C(&qword_27D912C50, &qword_22C2B7DF0);
    v2();
    v1();
    sub_22BE336E8();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_22C190034();
}

unint64_t sub_22BE322FC()
{
  result = qword_28106F238;
  if (!qword_28106F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F238);
  }

  return result;
}

void *sub_22BE32360@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  v4[1] = v2;
  result = v4;
  v6 = *(v3 - 160);
  return result;
}

void sub_22BE32494()
{
  v1 = *(v0 - 376);
  *(v0 - 72) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t sub_22BE32514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_22BE61C88(v8, v7, va);
}

uint64_t sub_22BE3258C(char a1)
{
  if (!a1)
  {
    return 0x746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x7470697263736564;
}

uint64_t Timepoint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22BE5CE4C(&qword_27D90B1A0, &qword_22C28C170);
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE33758();
  sub_22C274234();
  v23[15] = 0;
  sub_22C26E164();
  sub_22BE1BEF0();
  sub_22BE337AC(v14, v15);
  sub_22BE230B8();
  sub_22C273FA4();
  if (!v2)
  {
    v16 = type metadata accessor for Timepoint();
    v17 = *(v3 + v16[5]);
    v23[14] = 1;
    sub_22BE230B8();
    sub_22C273FB4();
    v18 = *(v3 + v16[6]);
    v23[13] = 2;
    sub_22BE230B8();
    sub_22C273FB4();
    v19 = v16[7];
    v23[12] = 3;
    sub_22C26E1D4();
    sub_22BE189C0();
    sub_22BE337AC(v20, v21);
    sub_22BE230B8();
    sub_22C273FA4();
  }

  return (*(v8 + 8))(v12, v5);
}

void SessionStart.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D912DF8, &qword_22C2B7ED8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BE362C4();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26ECA4();
  sub_22BE43270();
  sub_22BE20458(v7);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for SessionStart(0);
    sub_22BE335C0(v8);
    sub_22C26EA84();
    sub_22BE41F14();
    sub_22BE20458(v9);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v10 = *(v2 + 24);
    sub_22BE200EC();
    sub_22C26EC34();
    sub_22C18E214();
    sub_22BE20458(v11);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v12 = *(v1 + *(v2 + 28));
    sub_22C18E900();
    sub_22C18E17C();
    sub_22C273F64();
  }

  v13 = sub_22BE37A10();
  v14(v13);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

uint64_t sub_22BE32AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for SessionError()
{
  result = qword_28107CD48;
  if (!qword_28107CD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BE32B90()
{
  result = qword_28106E908;
  if (!qword_28106E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E908);
  }

  return result;
}

uint64_t sub_22BE32C30()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 104);
  return *(v1 - 96);
}

uint64_t sub_22BE32C48()
{
  v2 = *(v0 - 72);

  return sub_22C274214();
}

uint64_t sub_22BE32CB0()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BE32D40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);

  return sub_22C273FA4();
}

void sub_22BE32D9C()
{
  v2 = *(v0 - 144);

  JUMPOUT(0x2318AB6A0);
}

unint64_t sub_22BE32DD8()
{
  result = qword_28106E920;
  if (!qword_28106E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E920);
  }

  return result;
}

void sub_22BE32E44()
{
  *(v1 - 136) = v0;
  v2 = *(v1 - 120);
  *(v1 - 65) = 0;
}

uint64_t sub_22BE32E64()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE32EB4()
{
  v2 = *(*(v1 - 256) + 8);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

unint64_t sub_22BE32EF0(char a1)
{
  result = 0x536E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6E72755472657375;
      break;
    case 2:
    case 7:
    case 18:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74736575716572;
      break;
    case 4:
      result = 0x616572436E616C70;
      break;
    case 5:
      result = 0x72436E6F69746361;
      break;
    case 6:
      result = 0x61436E6F69746361;
      break;
    case 8:
      result = 0x4373656972657571;
      break;
    case 9:
      result = 0x656C626169726176;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6C61636974697263;
      break;
    case 12:
      result = 0x616C50664F646E65;
      break;
    case 13:
      result = 0x74616E696D726574;
      break;
    case 14:
      result = 0x4573656972657571;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000020;
      break;
    case 17:
    case 21:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x746552736C6F6F74;
      break;
    case 22:
    case 39:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 24:
    case 25:
    case 31:
    case 38:
    case 43:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000023;
      break;
    case 27:
      result = 0x6F7365526C6F6F74;
      break;
    case 28:
      result = 0x6F6465526F646E75;
      break;
    case 29:
    case 30:
    case 32:
      v3 = 5;
      goto LABEL_34;
    case 33:
      result = 0xD000000000000010;
      break;
    case 34:
      result = 0xD00000000000001FLL;
      break;
    case 35:
      result = 0x7461745370696B73;
      break;
    case 36:
      result = 0xD000000000000025;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0xD000000000000010;
      break;
    case 41:
      v3 = 10;
LABEL_34:
      result = v3 | 0xD000000000000010;
      break;
    case 42:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Session.Event.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD4)
  {
    v6 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
        JUMPOUT(0x22BE3352CLL);
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
          *result = a2 + 43;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BE33584(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_22BE335C0(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(v1 - 66) = 1;
  return 0;
}

uint64_t getEnumTagSinglePayload for SessionEventPayloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD5)
  {
    if (a2 + 43 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 43) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 44;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v5 = v6 - 44;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22BE3369C()
{

  return sub_22C273074();
}

unint64_t sub_22BE33758()
{
  result = qword_28106E050[0];
  if (!qword_28106E050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106E050);
  }

  return result;
}

uint64_t sub_22BE337AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE337F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE3385C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22C2708C4();
  v6 = sub_22BE199F4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Session.Event.payload.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for Session.Event(v0) + 28);
  sub_22BE1C058();
  v3 = sub_22BE25438(v2);
  return sub_22BE1A964(v3, v4);
}

uint64_t sub_22BE33928(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BE5CE4C(a2, a3);
  sub_22BE18000(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22BE33980()
{

  return sub_22C273C44();
}

void sub_22BE339A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22BE339DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 112);
  v5 = *(v1 - 104);

  return sub_22C273EE4();
}

void sub_22BE33A18()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 208);
  v3 = *(v0 - 304);
}

uint64_t sub_22BE33A2C()
{

  return sub_22C274214();
}

uint64_t sub_22BE33B10()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE33B6C(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BE33B8C()
{

  return sub_22C274234();
}

uint64_t sub_22BE33BD0()
{
  v2 = *(v1 - 216);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_22BE33C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void Session.Transcript.formingQuerylessEvent(id:clientRequestId:_:)()
{
  sub_22BE19460();
  sub_22C18F9F4(v5, v6, v7);
  v8 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE3E508();
  v12 = sub_22C26E1D4();
  sub_22BE187D0(v12);
  v14 = *(v13 + 16);
  v48 = v0;
  sub_22C18F300();
  v14();
  v15 = type metadata accessor for Session.Event(0);
  sub_22C18E864(v15);
  sub_22C18F9C4();
  v47 = v14;
  v14();
  sub_22BE3AE2C();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = v2[7];
  sub_22BE1C058();
  sub_22BE1A964(v3, v1 + v21);
  v22 = sub_22C18FAA8();
  v24 = (v4 + v23);
  v25 = *v24;
  v26 = v24[1];
  v28 = *(v4 + v27 + 8);
  v45 = *(v4 + v27);
  v29 = (v4 + *(v22 + 28));
  v30 = v29[1];
  v44 = *v29;
  v31 = (v1 + v2[12]);

  sub_22C18FE2C();

  v46 = v28;

  sub_22C26E134();
  v32 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v33 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  v34 = sub_22BE199F4(v12, qword_28108A1E0);
  v35 = type metadata accessor for Timepoint();
  (v47)(v31 + v35[7], v34, v12);
  *(v31 + v35[5]) = v32;
  *(v31 + v35[6]) = v33;
  sub_22BE340C8();
  v36 = sub_22C272E84();
  v37 = v2[6];
  sub_22BE3AE2C();
  sub_22BE19DC4(v38, v39, v40, v41);
  sub_22C18FEE8();
  sub_22BE2343C();
  sub_22BE40678();
  sub_22C18FE38(v42);
  v43 = (v1 + v2[10]);
  *v43 = v45;
  v43[1] = v46;
  *v31 = v44;
  v31[1] = v30;
  *(v1 + v34) = xmmword_22C2B7780;
  sub_22C18E7C8();
  sub_22C1900FC();
  v36(v48, v12);
  sub_22BE1AABC();
}

uint64_t sub_22BE33F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 112) = a5;
  v7 = *(v5 - 96);

  return sub_22C273EB4();
}

uint64_t sub_22BE34004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_22BE5CE4C(a4, a5);
}

void sub_22BE34024()
{
  v3 = *(v2 - 72);
  *(v2 - 96) = v1;
  *(v2 - 112) = v0;
}

uint64_t sub_22BE34098()
{

  return sub_22C273EB4();
}

unint64_t sub_22BE340C8()
{
  result = qword_28107C8C8;
  if (!qword_28107C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8C8);
  }

  return result;
}

uint64_t sub_22BE34140()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE34210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_22BE34278(uint64_t a1)
{
  v2 = type metadata accessor for Session.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE34640(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE346D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908380, &qword_22C27AB58);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v22 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE3E508();
  v26 = sub_22C271D24();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v34 = v33 - v32;
  sub_22C271D14();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  sub_22C26E1D4();
  sub_22BE187DC();
  sub_22BE19DC4(v35, v36, v37, v38);
  sub_22C271D04();
  v39 = sub_22C271E24();
  sub_22BE18000(v39);
  (*(v40 + 16))(v21, a1, v39);
  sub_22BE187DC();
  sub_22BE19DC4(v41, v42, v43, v39);
  sub_22C271CF4();
  sub_22C271D64();
  sub_22BE2B9D0(a2, v15, &qword_27D9082E8, &unk_22C27A3C0);
  sub_22C271CD4();
  (*(v29 + 16))(v9, v34, v26);
  sub_22BE187DC();
  sub_22BE19DC4(v44, v45, v46, v26);
  sub_22C271D34();
  return (*(v29 + 8))(v34, v26);
}

void sub_22BE34990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v191 = v24;
  v26 = v25;
  v187 = v27;
  v194 = v28;
  v29 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  v192 = v33;
  v34 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v190 = v38;
  v39 = sub_22BE5CE4C(&qword_27D908358, &unk_22C27AB08);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v189 = v43;
  sub_22BE183BC();
  v44 = sub_22C271CC4();
  v45 = sub_22BE179D8(v44);
  v184[9] = v46;
  v184[10] = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  v184[7] = v49;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  v184[6] = v51;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  v184[5] = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE19E94();
  v184[4] = v55;
  v56 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  v57 = sub_22BE19448(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v184[3] = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22BE19490();
  v184[2] = v62;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v63);
  sub_22BE19490();
  v184[1] = v64;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v65);
  sub_22BE19490();
  v184[0] = v66;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v67);
  v68 = sub_22BE5CE4C(&qword_27D908360, &unk_22C27AB18);
  sub_22BE19448(v68);
  v70 = *(v69 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1AEF0();
  v72 = sub_22C271D74();
  v73 = sub_22BE179D8(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE179EC();
  v184[8] = v79 - v78;
  sub_22BE183BC();
  v188 = sub_22C271EC4();
  v80 = sub_22BE179D8(v188);
  v193 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BE183AC();
  v86 = v84 - v85;
  MEMORY[0x28223BE20](v87);
  v89 = v184 - v88;
  v90 = sub_22C271F54();
  v91 = sub_22BE179D8(v90);
  v185 = v92;
  v186 = v91;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BE179EC();
  sub_22BE2BB64();
  v95 = *v26;
  v96 = v26[1];
  v97 = v26[2];
  (*(v75 + 16))(v194, v187, v72);
  sub_22C271F44();
  v187 = v89;
  sub_22C271EB4();
  switch(v95 >> 61)
  {
    case 2uLL:
      v108 = sub_22BE3D3EC();
      sub_22BE35210(v108, v109, v110);
      v111 = sub_22BE9535C();
      v112(v111);
      v113 = sub_22BE357E4();
      v114(v113);
      goto LABEL_14;
    case 3uLL:
      v195[0] = v96;
      v195[1] = v97;
      sub_22BE941E0(v195);
      v115 = v193;
      v116 = v187;
      v117 = v188;
      (*(v193 + 8))(v187, v188);
      (*(v115 + 32))(v116, v86, v117);
      type metadata accessor for TelemetryStream();
      v118 = v96;
      v119 = v116;
      sub_22BE95898(v118, v20);
      sub_22C271E94();
      v120 = sub_22BE3D3EC();
      sub_22BE93F64(v120, v121, v122);
      v123 = sub_22BE9535C();
      v124(v123);
      v125 = sub_22BE357E4();
      v126(v125);
      goto LABEL_15;
    case 4uLL:
      sub_22BE1B318();
      sub_22BE1C27C();
      v104 = sub_22BE23C3C();
      v105(v104);
      v106 = *(v89 + 4);
      v107 = &a17;
      goto LABEL_10;
    case 5uLL:
      sub_22BE1B318();
      sub_22BE1C27C();
      v132 = sub_22BE23C3C();
      v133(v132);
      v134 = *(v89 + 4);
      v107 = &a18;
LABEL_10:
      v135 = *(v107 - 32);
      goto LABEL_12;
    case 6uLL:
      sub_22BE1B318();
      sub_22BE1C27C();
      v136 = sub_22BE23C3C();
      v137(v136);
      v138 = *(v89 + 4);
      goto LABEL_12;
    case 7uLL:
      sub_22BE1B318();
      v127 = MEMORY[0x277D1F6E8];
      if ((v95 & 1) == 0)
      {
        v127 = MEMORY[0x277D1F6E0];
      }

      v128 = *v127;
      v129 = sub_22BE23C3C();
      v130(v129);
      v131 = *(v89 + 4);
LABEL_12:
      v139 = sub_22BE22BD8();
      v140(v139);
      v141 = sub_22BE19198();
      sub_22BE3D114(v141, v142, v143, v97);
      break;
    default:
      v98 = *MEMORY[0x277D1F668];
      v99 = sub_22BE28988();
      v100(v99);
      sub_22BE187DC();
      sub_22BE19DC4(v101, v102, v103, v97);
      break;
  }

  sub_22C271CE4();
LABEL_14:
  v119 = v187;
  v117 = v188;
LABEL_15:
  v144 = v193;
  (*(v193 + 16))(v189, v119, v117);
  v145 = *MEMORY[0x277D20480];
  v146 = sub_22C271F14();
  sub_22BE18000(v146);
  v148 = *(v147 + 104);
  sub_22BE354D0();
  v157(v149, v150, v151, v152, v153, v154, v155, v156);
  v158 = sub_22BE19198();
  sub_22BE3D114(v158, v159, v160, v146);
  sub_22C271F34();
  v161 = sub_22C26E1D4();
  sub_22BE18000(v161);
  (*(v162 + 16))(v190, v191, v161);
  sub_22BE187DC();
  sub_22BE19DC4(v163, v164, v165, v161);
  sub_22C271F24();
  v167 = v185;
  v166 = v186;
  (*(v185 + 16))(v192, v21, v186);
  v168 = *MEMORY[0x277D1F718];
  v169 = sub_22C271D44();
  sub_22BE18000(v169);
  v171 = *(v170 + 104);
  sub_22BE354D0();
  v180(v172, v173, v174, v175, v176, v177, v178, v179);
  v181 = sub_22BE19198();
  sub_22BE3D114(v181, v182, v183, v169);
  sub_22C271D54();
  (*(v144 + 8))(v119, v117);
  (*(v167 + 8))(v21, v166);
  sub_22BE1AABC();
}

uint64_t sub_22BE35210@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1AEF0();
  v11 = *a2;
  v12 = sub_22C271D74();
  sub_22BE18000(v12);
  (*(v13 + 16))(a3, a1);
  switch(v11)
  {
    case 0:
      v14 = MEMORY[0x277D1F678];
      break;
    case 1:
      v14 = MEMORY[0x277D1F660];
      break;
    case 2:
      v14 = MEMORY[0x277D1F688];
      break;
    case 3:
      v14 = MEMORY[0x277D1F6C8];
      break;
    case 4:
      v14 = MEMORY[0x277D1F6A0];
      break;
    case 6:
      v14 = MEMORY[0x277D1F6B0];
      break;
    default:
      if (qword_27D906348 != -1)
      {
        sub_22BE17B78();
      }

      v15 = sub_22C2720A4();
      sub_22BE199F4(v15, qword_27D9082F8);
      v16 = sub_22C272084();
      v17 = sub_22C2737A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32 = v19;
        *v18 = 136315138;
        v20 = sub_22C273094();
        v22 = sub_22BE61C88(v20, v21, &v32);

        *(v18 + 4) = v22;
        sub_22BE339A0(&dword_22BE15000, v23, v24, "Warning! Telemetry for %s should be added!");
        sub_22BE26B64(v19);
        sub_22BE183C8();
        sub_22BE183C8();
      }

      *v3 = 0;
      v14 = MEMORY[0x277D1F6F0];
      break;
  }

  v25 = *v14;
  v26 = sub_22C271CC4();
  sub_22BE18000(v26);
  (*(v27 + 104))(v3, v25, v26);
  sub_22BE187DC();
  sub_22BE19DC4(v28, v29, v30, v26);
  return sub_22C271CE4();
}

uint64_t sub_22BE354E8()
{
  v2 = ((*(*(v0 - 136) + 80) + 32) & ~*(*(v0 - 136) + 80)) + *(*(v0 - 136) + 72);

  return swift_allocObject();
}

void *sub_22BE35514@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *v3 = a1;
  result = v3;
  v5 = *(v2 - 160);
  return result;
}

unint64_t sub_22BE35528()
{

  return sub_22BE60508(v0, 0, 0, 2u);
}

uint64_t static TelemetryStream.insert(_:)()
{
  if (qword_28107BCE8 != -1)
  {
    result = swift_once();
  }

  if (qword_28107BD08)
  {
    result = sub_22BE26B00(&xmmword_28107BCF0, &v1);
  }

  else
  {
    v1 = xmmword_28107BCF0;
    v2 = unk_28107BD00;
    v3 = qword_28107BD10;
  }

  if (*(&v2 + 1))
  {
    sub_22BE1BD3C(&v1, *(&v2 + 1));
    sub_22C271FA4();
    return sub_22BE26B64(&v1);
  }

  return result;
}

uint64_t sub_22BE3570C(uint64_t a1, void *a2)
{
  result = ToolkitCache.__allocating_init(parameters:)(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t ToolkitCache.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_22BE5CE4C(&qword_27D90B938, &qword_22C28FF30);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_22C271BB4();
  v7 = sub_22C271B74();
  sub_22BE18524(v7);
  (*(v8 + 8))(a1);
  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_22BE357F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22BF0D574(a1, a2, a3);

  return static Lexer.Token.== infix(_:_:)(v3 - 144, v3 - 112);
}

uint64_t sub_22BE35824()
{
  result = *(v0 - 328);
  v2 = *(v0 - 160);
  return result;
}

uint64_t sub_22BE35920(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

_BYTE *_s30IntelligenceFlowPlannerSupport11PersonQueryV6HandleV4KindOwst_0_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22BE35A30);
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BE35A5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 3);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 3);
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

  return sub_22BE39E30(v8);
}

uint64_t sub_22BE35B1C()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE35B3C()
{

  return sub_22BF0DED8(8);
}

uint64_t sub_22BE35B58()
{

  return sub_22C274214();
}

void sub_22BE35B7C(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t sub_22BE35BE0()
{

  return sub_22C108634();
}

uint64_t sub_22BE35C64(uint64_t result)
{
  *(v2 - 80) = *(v1 + *(result + 20));
  *(v2 - 81) = 1;
  return result;
}

uint64_t sub_22BE35CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22BE5CE4C(a5, a6);
}

void sub_22BE35CC8()
{
  v3 = *(v2 - 72);
  *(v2 - 104) = v0;
  *(v2 - 120) = v1;
}

uint64_t sub_22BE35CEC()
{
  v2 = *(v1 - 88);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t sub_22BE35D54()
{
  v1 = v0[35];
  result = v0[23];
  v3 = v0[20];
  v4 = v0[21] + 8;
  return result;
}

uint64_t sub_22BE35D68()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

void sub_22BE35D84()
{
  *(v1 - 72) = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t sub_22BE35DCC()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE35E38()
{

  return sub_22BE22868();
}

uint64_t sub_22BE35EA0(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(*(v1 - 112) + 48);
  return result;
}

uint64_t sub_22BE35EB4()
{
  v2 = *(*v0 + 40);

  return sub_22C274154();
}

uint64_t sub_22BE35EF8()
{
  v2 = *(v0 - 128);

  return sub_22BE22868();
}

uint64_t sub_22BE35F10()
{
  v2 = *(v0 - 96);

  return sub_22C273DE4();
}

uint64_t sub_22BE35F38()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL sub_22BE35F8C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22BE35FB8()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3602C()
{

  return swift_task_alloc();
}

uint64_t sub_22BE3605C()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE36160@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_22BE361C0()
{
  v1 = *(v0 - 232) + *(*(v0 - 216) + 48);
  v2 = **(v0 - 264);
  return *(v0 - 232);
}

uint64_t sub_22BE361E4()
{
  result = v1;
  *(v2 - 224) = *v0;
  return result;
}

uint64_t sub_22BE36258()
{

  return sub_22C272FD4();
}

unint64_t sub_22BE362C4()
{
  result = qword_28107CCA8[0];
  if (!qword_28107CCA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107CCA8);
  }

  return result;
}

uint64_t sub_22BE36330(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = *result == *a2;
  return result;
}

uint64_t sub_22BE3636C(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_22C2704B4();
}

uint64_t sub_22BE3639C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE363C4(uint64_t result)
{
  v4 = *(result + 48);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_22BE363D4()
{

  return sub_22C270494();
}

uint64_t sub_22BE36404@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C1CEAFC();
}

uint64_t sub_22BE3641C()
{

  return sub_22BE1AE58();
}

unint64_t sub_22BE36450(char a1)
{
  result = 0x65537265646E6567;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000028;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

void sub_22BE36530()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
}

uint64_t sub_22BE36540()
{

  return sub_22BE22868();
}

uint64_t sub_22BE36558()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE365C4()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE36664()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_22BE36698()
{

  return sub_22C171FFC();
}

uint64_t sub_22BE36718()
{
  v1 = *(v0 - 248);
  v2 = *(v0 - 240);
  v3 = *(v0 - 232);
  result = sub_22BF0D530(*(v0 - 120), *(v0 - 112), *(v0 - 104));
  *(v0 - 120) = v1;
  *(v0 - 112) = v2;
  *(v0 - 104) = v3;
  return result;
}

unint64_t sub_22BE36768(float a1)
{
  *(v2 + *(v1 + 20)) = a1;
  *(v3 - 68) = 2;

  return sub_22BF40F04();
}

void ExternalAgentRequest.init(client:context:)()
{
  sub_22BE19130();
  v4 = v3;
  v74 = v5;
  v72 = v6;
  v7 = sub_22C26F1C4();
  v8 = sub_22BE179D8(v7);
  v70 = v9;
  v71 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v69 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE181E4();
  v14 = sub_22BE5CE4C(&off_27D9120B8, &unk_22C2B5F08);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE18928();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  v73 = v19;
  v20 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE23930();
  v24 = sub_22C26EDD4();
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  sub_22BE35AE8();
  v28 = type metadata accessor for RequestContent(0);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  sub_22BE1AB80();
  v33 = v4[3];
  v32 = v4[4];
  v34 = sub_22BE41FB4();
  sub_22BE1BD3C(v34, v35);
  (*(v32 + 32))(v33, v32);
  sub_22C26EEE4();
  sub_22BE26B00(v4, &v75);
  RequestContent.init(client:context:)();
  if (v0)
  {
    v36 = sub_22BE1B664();
    sub_22BE1BD3C(v36, v37);
    v38 = *(v1 + 24);
    v39 = sub_22BE2590C();
    v40(v39);
    v41 = sub_22C26EEF4();
    sub_22BE18524(v41);
    (*(v42 + 8))(v74);
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22C26EEB4();
    sub_22C26EEC4();
    sub_22BE196A8();
    sub_22BE22814();
    if (sub_22BE1AEA8(v2, 1, v71) == 1)
    {
      sub_22BE233E8(v73, &off_27D9120B8, &unk_22C2B5F08);
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    else
    {
      sub_22BE27C14();
      v68 = v1;
      v46(v1, v2, v71);
      sub_22C116380();
      v47(v69, v1, v71);
      v48 = sub_22C26F1A4();
      v67 = v49;
      v50 = MEMORY[0x2318A78B0]();
      v51 = *(v70 + 8);
      v43 = v48;
      v51(v69, v71);
      v51(v68, v71);
      v45 = v50;
      v44 = v67;
      sub_22BE233E8(v73, &off_27D9120B8, &unk_22C2B5F08);
    }

    v52 = type metadata accessor for ExternalAgentRequest(0);
    v53 = *(v52 + 20);
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v54, v55, v56, v57);
    v58 = (v72 + *(v52 + 24));
    *v58 = 0;
    v58[1] = 0;
    v58[2] = 0;
    sub_22BE3BF50();
    sub_22BE3911C();
    sub_22BE37A38();
    sub_22BE2343C();
    v59 = v58[2];
    sub_22BE37808(*v58, v58[1]);
    *v58 = v43;
    v58[1] = v44;
    v58[2] = v45;
    v60 = sub_22BE1B664();
    sub_22BE1BD3C(v60, v61);
    v62 = v58[3];
    v63 = sub_22BE2590C();
    v64(v63);
    v65 = sub_22C26EEF4();
    sub_22BE18524(v65);
    (*(v66 + 8))(v74);
    sub_22BE26B64(v4);
  }

  sub_22BE18478();
}

void RequestContent.init(client:context:)()
{
  sub_22BE19130();
  v79 = v2;
  v83 = v3;
  v5 = v4;
  v6 = sub_22C26FFA4();
  v7 = sub_22BE179D8(v6);
  v73 = v8;
  v75 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v70 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  v71 = v13;
  sub_22BE183BC();
  v14 = sub_22C26EDC4();
  v15 = sub_22BE179D8(v14);
  v69 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v19);
  sub_22BE25A90();
  v78 = sub_22C26ED74();
  v20 = sub_22BE179D8(v78);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  v77 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE181E4();
  v27 = sub_22C26EDD4();
  v28 = sub_22BE179D8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  sub_22BE1B1C4();
  (*(v30 + 16))(v1, v5, v27);
  v33 = (*(v30 + 88))(v1, v27);
  if (v33 == *MEMORY[0x277D1C6B0])
  {
    v34 = *(v30 + 8);
    v34(v5, v27);
    v34(v1, v27);
    sub_22BE26B64(v83);
    type metadata accessor for RequestContent(0);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_22BE18478();
    return;
  }

  if (v33 == *MEMORY[0x277D1C6B8])
  {
    v35 = sub_22BE235F8();
    v36(v35);
    sub_22BE27C14();
    v37(v0, v1, v78);
    sub_22C116380();
    v38();
    sub_22BE26B00(v83, v80);
    v39 = sub_22C26ED64();
    v74 = v40;
    v76 = v39;
    v42 = v81;
    v41 = v82;
    sub_22BE1BD3C(v80, v81);
    v72 = *(v41 + 16);
    v43 = v79 + *(type metadata accessor for RequestContent.TextContent(0) + 20);
    v72(v42, v41);
    sub_22BE26B64(v83);
    v44 = *(v30 + 8);
    v45 = sub_22BE2BACC();
    v46(v45);
    v47 = *(v22 + 8);
    v47(v77, v78);
    v47(v0, v78);
    *v79 = v76;
    v79[1] = v74;
    sub_22BE26B64(v80);
    type metadata accessor for RequestContent(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  if (v33 == *MEMORY[0x277D1C6C0])
  {
    v48 = sub_22BE235F8();
    v49(v48);
    v50 = *(v69 + 32);
    v51 = sub_22BE3911C();
    v52(v51);
    sub_22C11634C();
    v53 = sub_22BE1A8C4();
    v54(v53);
    sub_22BE26B00(v83, v80);
    RequestContent.SpeechContent.init(client:context:)();
    sub_22BE26B64(v83);
    v55 = *(v30 + 8);
    v56 = sub_22BE2BACC();
    v57(v56);
    v58 = *(v69 + 8);
    v59 = sub_22BE1AB74();
    v60(v59);
    type metadata accessor for RequestContent(0);
    goto LABEL_9;
  }

  if (v33 == *MEMORY[0x277D1C6A8])
  {
    v61 = sub_22BE235F8();
    v62(v61);
    sub_22BE27C14();
    v63 = sub_22BE191C0();
    v64(v63);
    sub_22C116380();
    v65(v70, v71, v75);
    sub_22BE26B00(v83, v80);
    RequestContent.SystemPromptResolution.init(client:context:)();
    sub_22BE26B64(v83);
    v66 = *(v30 + 8);
    v67 = sub_22BE1B73C();
    v68(v67);
    (*(v73 + 8))(v71, v75);
    type metadata accessor for RequestContent(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t sub_22BE372A8()
{

  return sub_22BE62188();
}

uint64_t sub_22BE372FC()
{
  v2 = *(v1 - 160);
  v3 = *(*(v1 - 168) + 8);
  return v0;
}

uint64_t sub_22BE3732C()
{
  v3 = *(v0 - 160);
  v2 = *(v0 - 152);

  return sub_22C273EE4();
}

uint64_t sub_22BE37350()
{
  sub_22BF06EE8();

  return sub_22C2702D4();
}

uint64_t sub_22BE3744C(uint64_t a1)
{

  return sub_22BE1AEA8(a1, 1, v1);
}

uint64_t sub_22BE3749C()
{
  v2 = *(v0 - 104);

  return sub_22C273FA4();
}

void *sub_22BE374BC()
{
  *v0 = v1;
  v3 = *(v2 + 104);
  return v0;
}

uint64_t sub_22BE37540()
{
  v2 = *(v0 - 256);

  return sub_22C273EB4();
}

void sub_22BE37570()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 264);
}

uint64_t sub_22BE3759C()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
}

uint64_t sub_22BE376B4()
{

  return sub_22C272FB4();
}

uint64_t sub_22BE376D8()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE37730()
{

  return sub_22C0C1AC4();
}

void sub_22BE37784(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_22BE377D8()
{
  v2 = *(v0 - 120);

  return sub_22C273EB4();
}

uint64_t sub_22BE37808(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BE3784C()
{
  v2 = *(v1 - 168);
  v3 = (*(v2 + 48) + 16 * v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v1 - 88);
  v7 = *(v2 + 56) + *(v6 + 72) * v0;
  v8 = *(v6 + 16);
  result = *(v1 - 96);
  v10 = *(v1 - 120);
  return result;
}

uint64_t sub_22BE378C0(uint64_t a1)
{
  *(a1 + 8) = sub_22BF8140C;
  result = v1[13];
  v3 = v1[14];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[5];
  return result;
}

uint64_t sub_22BE379F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
}

uint64_t sub_22BE37A38()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE1834C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BE37B84()
{
  v3 = *(v2 - 88);
  v4 = *(v0 + 56) + *(v3 + 72) * v1;
  v5 = *(v3 + 16);
  result = *(v2 - 96);
  v7 = *(v2 - 120);
  return result;
}

uint64_t sub_22BE37BB8()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22BE37BC4(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 144);

  return sub_22BE61C88(v5, v2, (v3 - 96));
}

uint64_t sub_22BE37C38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_22BE37C44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(*(a1 + 8) + 8) + 8);

  return sub_22C273AC4();
}

uint64_t Session.Event.postingSpan.getter()
{
  v1 = (v0 + *(type metadata accessor for Session.Event(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void Session.Event.postingSpan.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for Session.Event(v0);
  sub_22BE1AC84(*(v1 + 56));
}

uint64_t sub_22BE37CF8(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22BE37D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C108634();
}

uint64_t sub_22BE37D44()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_22BE37D50()
{

  return sub_22BE1AE58();
}

uint64_t Session.Event.sender.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 52));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22BE37DB4()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE37DE0()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 1;
  return v0 - 96;
}

uint64_t sub_22BE37E08()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 24);
  return sub_22BFBFC6C();
}

uint64_t Session.Event.clientRequestId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 32));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22BE37EC0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(v4 - 104) = a1;

  return swift_willThrow();
}

uint64_t sub_22BE37EF0()
{
  sub_22BE393A8();
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BE37F38()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22BE37EF0();
}

Swift::Void __swiftcall Session.Event.Payload.streamRedact()()
{
  v1 = type metadata accessor for Session.Event.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE3814C(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0xFu:
    case 0x1Fu:
    case 0x25u:
    case 0x2Au:
    case 0x2Bu:
      return;
    case 0x11u:
      sub_22BE381B0(v0);
      v5 = *v4;
      v6 = v4[1];

      *v0 = MEMORY[0x277D84F90];
      v0[1] = v6;
      goto LABEL_6;
    case 0x1Eu:
      sub_22BE381B0(v0);
      sub_22C1AE5C4(v4, v0);
      v7 = *(type metadata accessor for QueryDecorationResult(0) + 28);
      v8 = *(v0 + v7);

      *(v0 + v7) = MEMORY[0x277D84F90];
LABEL_6:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      sub_22BE381B0(v4);
      break;
  }
}

uint64_t sub_22BE3814C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.Event.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE381B0(uint64_t a1)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE3820C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BE38250()
{

  return sub_22BE33928(v2 - 192, v0, v1);
}

uint64_t sub_22BE38288()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_22BE3835C()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

uint64_t sub_22BE383DC()
{
  v2 = *(v0 - 96);

  return sub_22BE41F44(v2, type metadata accessor for RequestContent);
}

uint64_t sub_22BE3846C()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_22C2738F4();
}

uint64_t sub_22BE3848C()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

void TranscriptProtoExternalAgentRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE308C4();
  v5 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25CD0();
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19668();
  v13 = type metadata accessor for RequestContent(0);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE294E0();
  v17 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE234F4();
  sub_22BE35EE0();
  v21 = sub_22BE354DC();
  sub_22BE1AA68(v21, v22);
  sub_22C25A338();
  TranscriptProtoRequestContent.init(handwritten:)();
  if (v2)
  {
    sub_22BE46560();
    sub_22BE1AE58();
  }

  else
  {
    type metadata accessor for TranscriptProtoRequestContent(0);
    v23 = sub_22C25974C();
    v26 = sub_22BE3FEC8(v23, v24, v25);
    v27 = type metadata accessor for ExternalAgentRequest(v26);
    sub_22C25A694(v27);
    sub_22BE22814();
    v28 = sub_22C26E1D4();
    v29 = sub_22BE1B010();
    sub_22BE1AB5C(v29, v30, v28);
    if (v31)
    {
      sub_22BE233E8(v1, &qword_27D9082F0, &qword_22C27AB00);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v57 = sub_22C26E184();
      v58 = v32;
      sub_22BE1BC24(v28);
      v34 = *(v33 + 8);
      v35 = sub_22BE3E8FC();
      v36(v35);
    }

    v37 = (v3 + *(v4 + 24));
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    v41 = sub_22BE3E8FC();
    sub_22BE3820C(v41, v42);
    v43 = sub_22BE3E8FC();
    sub_22BE3943C(v43, v44, v40, v45);
    v46 = sub_22BE38960();
    v49 = sub_22BE3FEC8(v46, v47, v48);
    v50 = type metadata accessor for TranscriptProtoExternalAgentRequest(v49);
    v51 = *(v50 + 24);
    v52 = (v0 + *(v50 + 20));
    type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
    v53 = sub_22C259DDC();
    sub_22C25AE64(v53, v54, v55, v56);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE46560();
    sub_22BE1AE58();
    sub_22BE39EAC();
    sub_22BE2343C();
    *v52 = v57;
    v52[1] = v58;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22BE38A78()
{
  v2 = *(v0 - 224);

  return sub_22C273574();
}

void TranscriptProtoRequestContent.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A93C(v7);
  v8 = sub_22BE1A5E4();
  v9 = type metadata accessor for RequestContent.SystemPromptResolution(v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE28A70(v13, v91);
  v15 = MEMORY[0x28223BE20](v14);
  v23 = sub_22BE4202C(v15, v16, v17, v18, v19, v20, v21, v22, v92);
  v24 = type metadata accessor for RequestContent.SpeechContent(v23);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  v93 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  v95 = v30;
  sub_22BE183BC();
  v31 = sub_22C26E684();
  v32 = sub_22BE179D8(v31);
  v97 = v33;
  v98 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE2379C();
  v36 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  v40 = sub_22BE25334();
  v41 = type metadata accessor for RequestContent.TextContent(v40);
  v42 = sub_22BE18000(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v45);
  v46 = sub_22C2595B4();
  v47 = type metadata accessor for RequestContent(v46);
  v48 = sub_22BE18000(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17CBC();
  v51 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  v55 = sub_22BE1AB08();
  type metadata accessor for TranscriptProtoRequestContentEnum(v55);
  v56 = sub_22BE38960();
  v60 = sub_22C18F17C(v56, v57, v58, v59);
  v61 = type metadata accessor for TranscriptProtoRequestContent(v60);
  sub_22BE417E0(v61);
  sub_22BE35EE0();
  v62 = sub_22BE260B8();
  sub_22BE1AA68(v62, v63);
  sub_22BE426E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v70 = sub_22BE385E4();
      sub_22BE3B620(v70, v6);
      v71 = sub_22C259E7C();
      sub_22BE1AA68(v71, v3);
      v72 = *(v3 + 1);
      v99 = *v3;
      (*(v97 + 16))(v1, &v3[*(v41 + 20)], v98);

      v96 = sub_22C26E674();
      v94 = sub_22C26E654();
      v73 = sub_22C25A77C();
      v74 = type metadata accessor for TranscriptProtoStatementID(v73);
      sub_22C25A3A8(v74);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v75 = *(v97 + 8);
      v76 = sub_22BE1A8C4();
      v77(v76);
      *v5 = v96;
      *(v5 + 8) = v94;
      *(v5 + 16) = v72;
      sub_22BE25FFC();
      v82 = sub_22C18F17C(v78, v79, v80, v81);
      v83 = type metadata accessor for TranscriptProtoRequestContentTextContent(v82);
      sub_22C25ACC0(v83);
      sub_22BE32EE0();
      sub_22BE3A034(v84, v85, v86, v87);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE2511C();
      sub_22BE1AE58();
      v0 = type metadata accessor for RequestContent.TextContent;
      sub_22BE1AE58();
      sub_22BE3C968();
      sub_22BE1AE58();
      *v4 = v99;
      v4[1] = v72;
      sub_22BE2343C();
      goto LABEL_8;
    case 2u:
      v64 = sub_22BE385E4();
      sub_22BE3B620(v64, v95);
      v65 = sub_22BE385E4();
      sub_22BE1AA68(v65, v93);
      sub_22C25A7A0();
      TranscriptProtoRequestContentSpeechContent.init(handwritten:)();
      sub_22BE2511C();
      sub_22BE1AE58();
      sub_22C259A90();
      sub_22BE1AE58();
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    case 3u:
      sub_22BE385E4();
      sub_22C0E9A68();
      sub_22BE3B620(v66, v67);
      sub_22BE385E4();
      sub_22C25AC2C();
      sub_22BE1AA68(v68, v69);
      sub_22C25A7A0();
      TranscriptProtoSystemPromptResolution.init(handwritten:)();
      sub_22BE2511C();
      sub_22BE1AE58();
      sub_22BE3CC1C();
      sub_22BE1AE58();
      if (!v2)
      {
        goto LABEL_8;
      }

LABEL_6:
      sub_22BE29048();
      sub_22BE1AE58();
      break;
    default:
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE2511C();
      sub_22BE1AE58();
LABEL_8:
      sub_22C25A724();
      swift_storeEnumTagMultiPayload();
      v88 = sub_22BE22B8C();
      sub_22BE19DC4(v88, v89, v90, v0);
      sub_22BE2343C();
      break;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t sub_22BE38FBC()
{
  v4 = *(v2 - 216);
  *v4 = v1;
  v4[1] = v0;

  return type metadata accessor for Session.Event.Payload(0);
}

void sub_22BE38FE4()
{
  v2 = *(v1 + 48);
  v4 = *v0;
  v3 = v0[1];
}

uint64_t sub_22BE39004@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v2 + 72) * v1;
  v5 = *(v2 + 32);
  v6 = *(v3 - 88);
  v7 = *(v3 - 112);
  return result;
}

void sub_22BE39064()
{

  os_unfair_lock_lock(v0 + 4);
}

void sub_22BE39084()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE390A0()
{

  return sub_22BE22868();
}

uint64_t sub_22BE390BC()
{

  return sub_22BE2343C();
}

uint64_t sub_22BE39168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22BE5CE4C(a3, a4);
}

void *sub_22BE391B4()
{
  result = v1;
  *v1 = v0;
  *(v3 - 72) = v2;
  v5 = *(v2 + 24);
  v6 = *(v2 + 16) + 1;
  return result;
}

uint64_t sub_22BE391F4()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3926C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 240);

  return sub_22C273FA4();
}

void sub_22BE392EC()
{
}

uint64_t sub_22BE39304()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE39380()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE393B4()
{
  v2 = *(*(v1 - 184) + 96);
  result = v0;
  v4 = *(v1 - 304);
  return result;
}

uint64_t sub_22BE3943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v14 = (v13 - v12);
  if (a2)
  {
    v15 = *(v8 + 24);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v16 = sub_22BE18240();
    sub_22BE37808(v16, v17);
    *v14 = a1;
    v14[1] = a2;
    v14[2] = a3;
    sub_22C1086E4(v14, a4, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    v18 = sub_22BE3661C();
  }

  else
  {
    v18 = sub_22BE2BA98();
  }

  return sub_22BE3ACE4(v18, v19);
}

void ExternalAgentRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D913220, &qword_22C2B80E8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BE39770();
  sub_22BE25524();
  type metadata accessor for RequestContent(0);
  sub_22BE35880();
  sub_22BE20458(v6);
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = type metadata accessor for ExternalAgentRequest(0);
    sub_22C18E1EC(v7);
    sub_22C18F8E0(v8);
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v9);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v14 = sub_22C18F320(*(v1 + 24));
    v15 = v11;
    v16 = *(v10 + 16);
    sub_22BE3820C(v14, v11);
    sub_22BE48A04();
    sub_22C18E17C();
    sub_22C273F34();
    sub_22BE37808(v14, v15);
  }

  v12 = sub_22BE37A10();
  v13(v12);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

uint64_t sub_22BE396FC()
{

  return sub_22C26E684();
}

void sub_22BE3973C()
{
  v1 = *(v0 - 72);
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);
}

unint64_t sub_22BE39770()
{
  result = qword_28107ACF0[0];
  if (!qword_28107ACF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107ACF0);
  }

  return result;
}

void RequestContent.encode(to:)()
{
  sub_22BE19130();
  v70 = v1;
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D912F88, &qword_22C2B7F78);
  sub_22BE179D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE181D0(v10, v63);
  v68 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  v11 = sub_22BE18000(v68);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE3FF7C(v14);
  v15 = sub_22BE5CE4C(&qword_27D912F90, &qword_22C2B7F80);
  sub_22BE179D8(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE33FF0(v19, v64);
  v66 = type metadata accessor for RequestContent.SpeechContent(0);
  v20 = sub_22BE18000(v66);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v67 = v23;
  v24 = sub_22BE5CE4C(&qword_27D912F98, &qword_22C2B7F88);
  sub_22BE179D8(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  v28 = sub_22BE183BC();
  v65 = type metadata accessor for RequestContent.TextContent(v28);
  v29 = sub_22BE18000(v65);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE188B0();
  v32 = sub_22BE5CE4C(&qword_27D912FA0, &qword_22C2B7F90);
  sub_22BE1BF18(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE234F4();
  v36 = type metadata accessor for RequestContent(0);
  v37 = sub_22BE18000(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE18DFC();
  v40 = sub_22BE5CE4C(&qword_27D912FA8, &qword_22C2B7F98);
  v71 = sub_22BE179D8(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1B01C();
  v44 = *(v5 + 24);
  v45 = *(v5 + 32);
  v46 = sub_22BE1A8C4();
  sub_22BE26950(v46, v47);
  sub_22BE39F14();
  sub_22BE232E4();
  sub_22C274234();
  sub_22BE19368();
  sub_22BE1A964(v70, v2);
  sub_22BE36658();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C171FA8(v2, v3);
      sub_22BE38948();
      sub_22BE39F98();
      v53 = v71;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE3F4B0();
      sub_22BE20458(v60);
      sub_22C18FDE4();
      sub_22C273FA4();
      v61 = sub_22BE38A68();
      v62(v61);
      sub_22BE355E4();
      goto LABEL_7;
    case 2u:
      sub_22C171FA8(v2, v67);
      sub_22C18F59C();
      sub_22C174C0C();
      v53 = v71;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE3CAF4();
      sub_22BE20458(v54);
      sub_22BE35E54();
      sub_22C273FA4();
      v55 = sub_22BE38A68();
      v56(v55);
      goto LABEL_7;
    case 3u:
      sub_22C171FA8(v2, v69);
      sub_22BEE9478();
      sub_22C174BB8();
      v53 = v71;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE34158();
      sub_22BE20458(v57);
      sub_22BE35E54();
      sub_22C18FB28();
      v58 = sub_22BE38A68();
      v59(v58);
LABEL_7:
      sub_22C171FFC();
      v50 = sub_22BE39058();
      v52 = v53;
      break;
    default:
      sub_22C174C60();
      sub_22BE27168();
      sub_22C273EE4();
      sub_22C174CB4();
      sub_22C18F71C();
      v48 = sub_22BE28D70();
      v49(v48, v0);
      v50 = sub_22BE39058();
      v52 = v71;
      break;
  }

  v51(v50, v52);
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22BE39E38()
{

  sub_22BF5BCAC();
}

uint64_t sub_22BE39E58()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE39EB8()
{

  return sub_22C272FD4();
}

void sub_22BE39ED8()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 88);
  v3 = *(v0 - 152);
}

unint64_t sub_22BE39F14()
{
  result = qword_28107C500[0];
  if (!qword_28107C500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C500);
  }

  return result;
}

uint64_t sub_22BE39F80()
{
  v2 = *(v0 - 128);

  return sub_22C0C1B18();
}

unint64_t sub_22BE39F98()
{
  result = qword_28107C4D8;
  if (!qword_28107C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4D8);
  }

  return result;
}

uint64_t sub_22BE3A014()
{

  return sub_22C274234();
}

uint64_t sub_22BE3A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22BE19DC4(a1, a2, a3, a4);
  v6 = *(v4 + 24);
  return result;
}

uint64_t sub_22BE3A04C()
{

  return sub_22BE1AE58();
}

unint64_t sub_22BE3A07C(char a1)
{
  result = 1886352499;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x686365657073;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_22BE3A104(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22BE3A1C0);
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BE3A218()
{

  return sub_22C270584();
}

void RequestContent.TextContent.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D913038, &qword_22C2B7FD0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22BE3A3F8();
  sub_22BE33B8C();
  v6 = *v1;
  v7 = v1[1];
  sub_22C18E9AC();
  sub_22BE26108();
  sub_22C273F54();
  if (!v0)
  {
    v8 = *(type metadata accessor for RequestContent.TextContent(0) + 20);
    sub_22BE323A4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v9);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v10 = sub_22BE37508();
  v11(v10);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

unint64_t sub_22BE3A3F8()
{
  result = qword_28107C648[0];
  if (!qword_28107C648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C648);
  }

  return result;
}

uint64_t sub_22BE3A47C(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 1954047348;
  }
}

void sub_22BE3A4B4()
{
  v2 = *(v0 + 16) + 1;

  sub_22BE66BFC(0, v2, 1, v0);
}

uint64_t sub_22BE3A4EC()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v7 = v0[8];
  return v0[6];
}

uint64_t sub_22BE3A508@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_22BE3A518()
{

  return sub_22BE22868();
}

_BYTE *sub_22BE3A56C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22BE3A628);
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t ContextRetrievalServiceInput.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907CD8, &qword_22C277760);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE3A7D4();
  sub_22C274234();
  v19 = 0;
  v15 = v17;
  sub_22C273F54();
  if (!v15)
  {
    v18 = 1;
    sub_22C273F74();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_22BE3A7D4()
{
  result = qword_281077008[0];
  if (!qword_281077008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281077008);
  }

  return result;
}

uint64_t sub_22BE3A830(char a1)
{
  if (a1)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x7972657571;
  }
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalServiceInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22BE3A930);
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

uint64_t Session.Event.initiatedSpans.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 60);
  return sub_22BE18504();
}

uint64_t Session.Transcript.append(event:)()
{
  v2 = v0;
  v3 = sub_22BE2021C();
  v4 = *(type metadata accessor for Session.Transcript(v3) + 32);
  sub_22BE78B38();
  v5 = *(*(v0 + v4) + 16);
  sub_22BE78C24(v5);
  v6 = *(v0 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = type metadata accessor for Session.Event(0);
  sub_22BE17A18(v7);
  result = sub_22BE1A964(v1, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v5);
  *(v2 + v4) = v6;
  return result;
}

void sub_22BE3AA70()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE3AC94()
{
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];

  return swift_unknownObjectRelease();
}

uint64_t sub_22BE3ACB0()
{

  return sub_22C270424();
}

uint64_t sub_22BE3ACE4(uint64_t a1, uint64_t a2)
{

  return sub_22BE19DC4(a1, a2, 1, v2);
}

void *sub_22BE3AD08()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v1[4];
  return sub_22BE1BD3C(v1, v1[3]);
}

uint64_t sub_22BE3AD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE3ADD8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_22C26E684();
}

void sub_22BE3AE3C()
{
  v2 = *(v0 - 168);

  JUMPOUT(0x2318ABA30);
}

uint64_t sub_22BE3AEA4()
{
}

uint64_t sub_22BE3AEBC()
{
  v2 = *(v0 - 88);

  return sub_22BE22868();
}

uint64_t sub_22BE3AEF8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22BE3AF34()
{
  v2 = *(v0 - 104);

  return sub_22C273EE4();
}

uint64_t sub_22BE3AF54()
{
  v2 = *(v0 - 104);

  return sub_22C273EE4();
}

void sub_22BE3AF78()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t sub_22BE3AFA0()
{

  return sub_22C274014();
}

uint64_t sub_22BE3AFB8()
{

  return sub_22BF0D574(v0, v2, v1);
}

uint64_t sub_22BE3AFFC(uint64_t a1, unint64_t a2)
{
  sub_22BF158B4(a1, a2);
  sub_22BF158B4(v5, v4);
  sub_22BF158B4(v3, v2);
  return v6;
}

void sub_22BE3B050()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE3B06C()
{
  v2 = v0[30];
  result = v0[31];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[14];
  return result;
}

uint64_t sub_22BE3B0B4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_22BFC390C(v3, v4 + a3, a1, a2);
}

uint64_t sub_22BE3B180@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 136);
  v6 = *(v2 - 120);
  return result;
}

uint64_t sub_22BE3B198()
{
  v1 = *(*(v0 - 112) + 8);
  result = *(v0 - 88);
  v3 = *(v0 - 72);
  return result;
}

void sub_22BE3B1D8()
{
  sub_22BE18660();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_22BE20388();
    v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE36CC4();
    }

    v7 = sub_22BE3B0A4(v6);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t TranscriptProtoSpanID.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*v0 || (sub_22BE1BAB8(), result = sub_22C270864(), !v1))
  {
    v3 = type metadata accessor for TranscriptProtoSpanID(0);
    return sub_22BE294F8(v3);
  }

  return result;
}

uint64_t sub_22BE3B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoEvent(0) + 52);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E428, &qword_22C296E90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t TranscriptProtoTimepoint.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22BE2FC70(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      sub_22BE1BAB8();
      sub_22C270864();
    }

    if (v1[1])
    {
      sub_22BE1BAB8();
      sub_22C270864();
    }

    v7 = v1[2];
    v8 = v1[3];
    sub_22BE1B448();
    if (v9)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v10 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 32);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22BE3B620(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE1834C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

void sub_22BE3B68C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C2740B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_22BE3B674(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BE5CE4C(&qword_27D915CC8, &qword_22C2D1AD8);
      sub_22C273C54();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_22C24FB38(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_22BE3B674(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001BLL, 0x800000022C2DC010);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](39, 0xE100000000000000);
  sub_22C273C94();
  __break(1u);
}

uint64_t sub_22BE3B960(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22BE7259C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE3B980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_22BE3B9E0()
{
  sub_22BE19130();
  sub_22C108B60();
  v2 = sub_22BE3E79C();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1AB08();
  v8 = sub_22C26EC34();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v14);
  sub_22BE2EDB8();
  sub_22BE3E844();
  sub_22BE1972C(v1);
  if (v15)
  {
    v16 = sub_22BE2590C();
    sub_22BE33928(v16, v17, &qword_22C2B5060);
    v18 = sub_22BE26154();
    sub_22BE33928(v18, v19, v20);
  }

  else
  {
    v21 = sub_22BE28CD8();
    v22(v21);
    v23 = sub_22BE42004();
    v24(v23);
    sub_22C108D60();
    TranscriptProtoGenderSettings.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D911C20, &qword_22C2B5060);
    v25 = *(v11 + 8);
    v26 = sub_22BE33560();
    v27(v26);
  }

  v28 = type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_22BE3C074(v28);
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22BE3BB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE1834C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return v4;
}

void sub_22BE3BBE0()
{
  sub_22BE19130();
  sub_22C108B60();
  v2 = sub_22BE3E79C();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1AB08();
  v8 = sub_22C26EA84();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v14);
  sub_22BE2EDB8();
  sub_22BE3E844();
  sub_22BE1972C(v1);
  if (v15)
  {
    v16 = sub_22BE2590C();
    sub_22BE33928(v16, v17, &unk_22C2B5CD0);
    v18 = sub_22BE26154();
    sub_22BE33928(v18, v19, v20);
  }

  else
  {
    v21 = sub_22BE28CD8();
    v22(v21);
    v23 = sub_22BE42004();
    v24(v23);
    sub_22C108D60();
    TranscriptProtoDeviceDetails.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D911F60, &unk_22C2B5CD0);
    v25 = *(v11 + 8);
    v26 = sub_22BE33560();
    v27(v26);
  }

  v28 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE3C074(v28);
  sub_22BE3C298();
  sub_22BE18478();
}

unint64_t sub_22BE3BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22C274014() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t type metadata accessor for Session.InstrumentableEvent()
{
  result = qword_28106EB10;
  if (!qword_28106EB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BE3BE7C()
{
  result = qword_28107F348;
  if (!qword_28107F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F348);
  }

  return result;
}

uint64_t sub_22BE3BEF8()
{
  v2 = *(*(v1 - 264) + 8);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t sub_22BE3BFD4()
{
  v2 = *(v0 - 112);

  return sub_22C273734();
}

uint64_t sub_22BE3C00C()
{
  v1 = *(v0 - 72);
  result = *(v0 - 160);
  v3 = *(v0 - 152);
  v5 = *(v0 - 128);
  v4 = *(v0 - 120);
  v6 = *(v0 - 144);
  v7 = *(v0 - 136);
  return result;
}

uint64_t sub_22BE3C028()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3C074(uint64_t a1)
{

  return sub_22BE19DC4(v1, v2, 1, a1);
}

uint64_t sub_22BE3C094@<X0>(unsigned int *a1@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 104);
  return v1;
}

uint64_t sub_22BE3C0C4(uint64_t result)
{
  v3 = result & ~(-1 << *(v2 + 32));
  v4 = (-1 << v3) & ~*(v1 + 8 * (v3 >> 6));
  return result;
}

void *sub_22BE3C128()
{
  v3 = *(v2 - 536);
  *v3 = v1;
  v3[1] = v0;
  return v3;
}

BOOL sub_22BE3C13C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BE3C1A8()
{

  return sub_22BE1AE58();
}

void sub_22BE3C218()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
}

uint64_t sub_22BE3C224()
{

  return sub_22C272FD4();
}

void sub_22BE3C2E0()
{
  sub_22BE18378();
  if (v2 == 252)
  {
    *v1 = v0 + 3;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

void sub_22BE3C37C(unint64_t *a1@<X8>)
{

  sub_22BF0DED8(0, a1);
}

uint64_t sub_22BE3C394@<X0>(uint64_t a1@<X8>)
{

  return sub_22BF1F294(a1 + v1, v2);
}

uint64_t sub_22BE3C3E4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 88) = a1;
  return 0;
}

void sub_22BE3C49C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[27];
}

uint64_t sub_22BE3C4B0()
{

  return sub_22C272FD4();
}

void sub_22BE3C564(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v10, 0xCu);
}

void sub_22BE3C5F0()
{
  *(v1 - 120) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22BE3C604()
{
  result = v0;
  v3 = *(v1 - 484);
  v4 = *(v1 - 432);
  return result;
}

uint64_t sub_22BE3C620()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3C694()
{

  return sub_22C171FFC();
}

uint64_t sub_22BE3C714()
{
  result = *(v1 + 24);
  v3 = *(v0 + 24);
  return result;
}

uint64_t sub_22BE3C74C(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void sub_22BE3C79C(uint64_t a1@<X8>)
{
  v3 = v1[54];
  v2 = v1[55];
  v5 = v1[52];
  v4 = v1[53];
  v7 = v1[47];
  v6 = v1[48];
  v9 = v1[45];
  v8 = v1[46];
  v10 = *(a1 + 8);
}

void sub_22BE3C824()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
}

uint64_t sub_22BE3C8EC()
{

  return sub_22C274014();
}

uint64_t sub_22BE3C904(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void sub_22BE3C9A0()
{
  v1 = *(v0 - 96);
  *(v0 - 72) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

char *sub_22BE3C9B8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v3 + 16);
  result = a1 + v2;
  v7 = *(v4 - 120);
  return result;
}

void sub_22BE3CA94()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
}

void sub_22BE3CB24()
{

  sub_22BE66A04();
}

uint64_t sub_22BE3CB48()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 192);

  return sub_22BEBFC80();
}

uint64_t sub_22BE3CB78()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE3CBD0(uint64_t a1, uint64_t a2)
{

  return sub_22BE19DC4(v2, a2, 1, v3);
}

uint64_t sub_22BE3CC40()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t sub_22BE3CC50()
{
  v2 = *(v0 - 120);

  return sub_22BE22868();
}

uint64_t sub_22BE3CC7C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE3CCE0()
{
  v2 = *(v0 - 456);
}

void sub_22BE3CCF8()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
}

uint64_t sub_22BE3CD40()
{

  return swift_getWitnessTable();
}

void sub_22BE3CD98()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
  *(v0 - 160) = v1 + 8;
}

uint64_t sub_22BE3CDB8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_22BE3CDC8()
{
  result = *(v1 - 256);
  *(v3 - 504) = v2;
  *(v3 - 512) = v0;
  return result;
}

uint64_t sub_22BE3CE24()
{
  v4 = *(v2 - 88);

  return sub_22C1086E4(v1, v4, v0);
}

uint64_t sub_22BE3CE7C()
{
  v3 = *(v0 + 56);
  v4 = *(v2 - 96);
  v5 = v3 + *(v4 + 72) * v1;
  v6 = *(v4 + 16);
  result = *(v2 - 112);
  v8 = *(v2 - 136);
  return result;
}

uint64_t sub_22BE3CED8()
{
  v2 = *(*(v0 - 112) + 20);

  return sub_22C2704B4();
}

uint64_t sub_22BE3CF58()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3CF70()
{

  return sub_22BE22868();
}

uint64_t sub_22BE3CF9C()
{

  return sub_22C273074();
}

uint64_t sub_22BE3CFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 + a2 + *(v3 + 72) * v2;
  v6 = *(v3 + 16);
  v7 = *(v4 - 136);
  return *(v4 - 128);
}

uint64_t sub_22BE3D088()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 16));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE41590();

  return sub_22BE1AEA8(v3, v4, v5);
}

uint64_t sub_22BE3D170()
{
  v0 = *(type metadata accessor for ToolboxVersion(0) + 20);

  return sub_22C26FDF4();
}

uint64_t sub_22BE3D1A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void sub_22BE3D258()
{
  sub_22BE22984();
  if (v2)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE3D300()
{
  v0 = sub_22BE1A5E4();
  v2 = v1(v0);
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();

  return v6(v5);
}

uint64_t sub_22BE3D360()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 24);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t sub_22BE3D3EC()
{
  *(v1 - 104) = v0;
  v2 = *(v1 - 208);
  return *(v1 - 112);
}

uint64_t sub_22BE3D41C()
{

  return swift_beginAccess();
}

uint64_t sub_22BE3D4A4()
{
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];
}

uint64_t sub_22BE3D570()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE3D598()
{

  return sub_22BE2343C();
}

uint64_t Session.Event.timepoint.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Session.Event(v0);
  v2 = sub_22BE25438(*(v1 + 48));
  return sub_22BE1A964(v2, v3);
}

uint64_t Timepoint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C26E164();
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t sub_22BE3D6E0()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 232);

  return sub_22C273994();
}

uint64_t Session.Event.clientSessionId.getter()
{
  v0 = type metadata accessor for Session.Event(0);
  sub_22BE36160(*(v0 + 36));
  return sub_22BE19454();
}

uint64_t Session.Event.clientRequestId.getter()
{
  v0 = type metadata accessor for Session.Event(0);
  sub_22BE36160(*(v0 + 32));
  return sub_22BE19454();
}

uint64_t TranscriptProtoStatementID.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*v0 || (sub_22BE1BAB8(), result = sub_22C270854(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22BE3D7F4(v3);
    if (!v1)
    {
      v4 = type metadata accessor for TranscriptProtoStatementID(0);
      return sub_22BE25FB0(v4);
    }
  }

  return result;
}

uint64_t sub_22BE3D7F4(uint64_t result)
{
  if (*(result + 16))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 8);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE3D82C(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = *(result + 8);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE3D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22BE3DA3C()
{
  sub_22BE2BB34();
  sub_22BE44820();
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    v2(v4);
    if (!v0)
    {
      v5 = v1(0);
      sub_22BE25FB0(v5);
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22BE3DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void TranscriptProtoRequestContent.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = sub_22BE17D78();
      sub_22BFE4828(v21, v22, v23, v24);
      break;
    case 2u:
      v13 = sub_22BE17D78();
      sub_22BFE4A30(v13, v14, v15, v16);
      break;
    case 3u:
      v17 = sub_22BE17D78();
      sub_22BFE4C38(v17, v18, v19, v20);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22BE3DAB0(v9, v10, v11, v12);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    v25 = type metadata accessor for TranscriptProtoRequestContent(0);
    sub_22BE235A8(v25);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BE3DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E568, &unk_22C2CC8B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE3DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void sub_22BE3E400()
{

  JUMPOUT(0x2318AB8D0);
}

void *sub_22BE3E428()
{
  *v0 = v1;
  v3 = *(v2 + 104);
  return v0;
}

uint64_t sub_22BE3E440(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 20);
  v4 = *(v1 + 48);
  return result;
}

uint64_t sub_22BE3E450()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

void sub_22BE3E47C()
{
  v3 = *(v2 - 72);
  *(v2 - 120) = v0;
  *(v2 - 136) = v1;
}

uint64_t sub_22BE3E4A8()
{
  *(v1 + 120) = *(v2 + 16);
  *(v1 + 128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

uint64_t sub_22BE3E574()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  return result;
}

uint64_t sub_22BE3E58C()
{

  return sub_22C26DEA4();
}

uint64_t sub_22BE3E5CC()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3E600()
{

  return sub_22C270844();
}

uint64_t sub_22BE3E620@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_22BE2B984(v4 + a3, v3, a1, a2);
}

uint64_t sub_22BE3E72C()
{

  return sub_22C272FD4();
}

void sub_22BE3E7A8()
{
  v1 = *(v0 - 96);
  v2 = *(*(v0 - 104) + 24);
  v3 = *(*(v0 - 128) + 48);
}

uint64_t sub_22BE3E7D0()
{
  v2 = *(v1 - 176);
  v3 = *(*(v1 - 224) + 48) + *(v2 + 72) * v0;
  v4 = *(v2 + 16);
  result = *(v1 - 184);
  v6 = *(v1 - 104);
  v7 = *(v1 - 232);
  return result;
}

uint64_t sub_22BE3E81C()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t sub_22BE3E844()
{

  return sub_22BE2B984(v0, v1, v2, v3);
}

uint64_t sub_22BE3E878()
{
}

uint64_t sub_22BE3E8B0()
{

  return sub_22BEC3264();
}

uint64_t sub_22BE3E8E8()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  return v0[37];
}

uint64_t sub_22BE3E908(uint64_t a1)
{
  *(a1 + 8) = sub_22BF71918;
  result = *(v1 + 296);
  v3 = *(v1 + 304);
  v4 = *(v1 + 232);
  v5 = *(v1 + 344);
  return result;
}

uint64_t sub_22BE3E970()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE3EA10()
{
  v1 = *(*(v0 - 160) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 144);
  return result;
}

uint64_t sub_22BE3EA24(uint64_t result)
{
  if (*(result + 96))
  {
    v1 = *(result + 88);
    return sub_22C270844();
  }

  return result;
}

void sub_22BE3EA60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22BE3EA8C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = __clz(__rbit64(a2)) | (v3 << 6);
  v6 = (*(a1 + 48) + 16 * v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(a1 + 56) + *(v4 + 72) * v5;
  v10 = *(v4 + 16);
  return v2;
}

uint64_t sub_22BE3EAC8@<X0>(unsigned int *a1@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 104);
  return v1;
}

uint64_t sub_22BE3EAE0@<X0>(uint64_t a1@<X8>)
{

  return sub_22C117424(v1, v2 + a1);
}

uint64_t sub_22BE3EB50(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE3EBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_22C270884();
  return sub_22C0B08BC();
}

void Session.SessionState.latestSessionStart()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v90 = v21;
  v83[1] = v24;
  v25 = sub_22C2720A4();
  v26 = sub_22BE179D8(v25);
  v87 = v27;
  v88 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v86 = v30;
  v31 = sub_22BE183BC();
  v32 = type metadata accessor for Session.Event.Payload(v31);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  v85 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  v39 = v83 - v38;
  v40 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A174();
  v89 = v44;
  v45 = sub_22BE183BC();
  v46 = type metadata accessor for Session.Event(v45);
  v47 = sub_22BE179D8(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE183AC();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  sub_22BE19E94();
  v84 = v56;
  v57 = sub_22BE183BC();
  v58 = type metadata accessor for Session.Transcript(v57);
  v59 = *(v20 + *(v58 + 32));
  a10 = v59;
  v60 = *(v59 + 16);
  while (1)
  {
    if (!v60)
    {
LABEL_5:
      MEMORY[0x28223BE20](v58);
      v83[-2] = &a10;
      v67 = v89;
      sub_22C1ADC94(sub_22BE3F22C, v60, v68, type metadata accessor for Session.Event, v89);
      sub_22BE1A940();
      if (sub_22BE1AEA8(v69, v70, v71) == 1)
      {
        sub_22BE33928(v67, &qword_27D908310, &qword_22C27A410);
      }

      else
      {
        v72 = v84;
        sub_22BE3F300();
        v73 = *(v46 + 28);
        sub_22BE1C08C();
        v74 = v85;
        sub_22BE1AA10();
        sub_22BE18F8C();
        sub_22BE1AE00(v72, v75);
        sub_22BE27A44();
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_22C1AE2BC();
          sub_22BE3F300();
LABEL_12:
          sub_22BE18478();
          return;
        }

        sub_22BE1AE00(v74, type metadata accessor for Session.Event.Payload);
      }

      v76 = v86;
      sub_22C271B24();
      v77 = sub_22C272084();
      sub_22C2737A4();
      v78 = sub_22BE31268();
      if (os_log_type_enabled(v78, v79))
      {
        sub_22BE36138();
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_22BE15000, v77, v76, "Error! lastSessionStart() called on non-SessionStart event", v80, 2u);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      v81 = sub_22BE1B5F8();
      v82(v81);
      sub_22C1ADEB0();
      swift_allocError();
      swift_willThrow();
      goto LABEL_12;
    }

    if (v60 > *(v59 + 16))
    {
      break;
    }

    --v60;
    v61 = *(v49 + 80);
    sub_22BE19E14();
    v62 = *(v49 + 72);
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v63 = *(v46 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v54, v64);
    sub_22BE194F8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_22BE17E60();
    v58 = sub_22BE1AE00(v39, v66);
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_22BE3F24C()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE1834C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BE3F2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE3F300()
{
  v2 = sub_22BE1B2D4();
  v4 = v3(v2);
  sub_22BE18000(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_22BE3F38C()
{

  return sub_22C272724();
}

uint64_t sub_22BE3F3C8(uint64_t a1)
{

  return sub_22BE2B984(a1, v3, v1, v2);
}

uint64_t sub_22BE3F414@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 168);

  return sub_22C273DE4();
}

uint64_t sub_22BE3F474()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3F4E0()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE3F54C()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 20);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t sub_22BE3F5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void static PlatformPnRTelemetry.started(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19668();
  v10 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  v14 = sub_22C26E1D4();
  v15 = sub_22BE179D8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  LOBYTE(v5) = *v5;
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v20 = type metadata accessor for Session.Transcript(0);
  sub_22BE26400(*(v3 + *(v20 + 32)), v0);
  v21 = type metadata accessor for Session.Event(0);
  sub_22BE25A50(v21);
  if (v22)
  {
    sub_22BE33928(v0, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    Session.Event.formingTraceIds()();
    sub_22BE34278(v0);
  }

  v23 = sub_22C271E24();
  sub_22BE2B7A4(v23);
  static PlatformPnRTelemetry.started(_:_:_:)();
  sub_22BE33928(v1, &qword_27D908318, &unk_22C27A418);
  v24 = *(v17 + 8);
  v25 = sub_22BE1AB1C();
  v26(v25);
  sub_22BE1AABC();
}

uint64_t static IntelligenceFlowIdentifiers.combinedIdentifier(sessionId:spanId:)(uint64_t a1)
{
  v2 = sub_22C26E1D4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22C271E24();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v19 = v18 - v17;
  sub_22C271E14();
  sub_22C271DE4();
  (*(v5 + 16))(v10, a1, v2);
  sub_22C271E04();
  IntelligenceFlowIdentifiers.sessionSpanId.getter();
  return (*(v14 + 8))(v19, v11);
}

uint64_t sub_22BE3F9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static PlatformPnRTelemetry.started(_:_:_:)()
{
  sub_22BE19460();
  v54 = v1;
  v56 = v3;
  v57 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = sub_22C271D74();
  v16 = sub_22BE179D8(v15);
  v55 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v21 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  v25 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  v29 = sub_22C271E24();
  v30 = sub_22BE179D8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  sub_22BE2BB64();
  v35 = *v8;
  sub_22BE34640(v6, v0);
  if (sub_22BE1AEA8(v0, 1, v29) == 1)
  {
    v36 = v56;
    sub_22BE33928(v0, &qword_27D908318, &unk_22C27A418);
    if (qword_27D906348 != -1)
    {
      sub_22BE17B78();
    }

    v37 = sub_22C2720A4();
    sub_22BE199F4(v37, qword_27D9082F8);
    v38 = sub_22C272084();
    v39 = sub_22C2737A4();
    if (sub_22BE251A8(v39))
    {
      *swift_slowAlloc() = 0;
      sub_22BE19E74(&dword_22BE15000, v40, v41, "Nil traceIds (likely due to no Transcript Events), skipping Telemetry Biome stream insertion");
      sub_22BE183C8();
    }
  }

  else
  {
    (*(v32 + 32))(v2, v0, v29);
    v53 = type metadata accessor for TelemetryStream();
    sub_22C271F74();
    sub_22C271F84();
    sub_22BE187DC();
    sub_22BE19DC4(v42, v43, v44, v45);
    sub_22BE346D4(v2, v14);
    sub_22BE33928(v14, &qword_27D9082E8, &unk_22C27A3C0);
    v58 = v35;
    v46 = v21;
    v36 = v56;
    sub_22BE42774();
    v47 = v55;
    v48 = *(v55 + 8);
    v49 = sub_22BE1AB1C();
    v48(v49);
    (*(v47 + 32))(v24, v46, v15);
    static TelemetryStream.insert(_:)();
    v50 = sub_22BE1AB1C();
    v48(v50);
    (*(v32 + 8))(v2, v29);
  }

  v51 = sub_22C26E1D4();
  sub_22BE18000(v51);
  (*(v52 + 16))(v57, v36);
  sub_22BE1AABC();
}

void sub_22BE3FDC4()
{

  sub_22BE70138();
}

uint64_t sub_22BE3FE20()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE3FE48()
{

  return MEMORY[0x2821FC790](v0, v2, v1);
}

uint64_t sub_22BE3FE80()
{
  v2 = *(v0 - 88);

  return sub_22C272FD4();
}

uint64_t sub_22BE3FEA4()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE3FF30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_22C2704B4();
}

uint64_t sub_22BE3FF88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C0C2A68();
}

uint64_t sub_22BE3FFAC()
{

  return sub_22C274004();
}

uint64_t Session.Event.sender.getter()
{
  v0 = type metadata accessor for Session.Event(0);
  sub_22BE36160(*(v0 + 52));
  return sub_22BE19454();
}

uint64_t IntelligenceFlowIdentifiers.sessionSpanId.getter()
{
  v0 = sub_22C26E1D4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22BE179EC();
  sub_22C271DD4();
  if (v2)
  {

    return _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  }

  else
  {
    sub_22C271DF4();
    sub_22C273FD4();
    return sub_22C26E1A4();
  }
}

uint64_t Session.InstrumentableEvent.init(event:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22BE3F9A8(a1, a4);
  result = type metadata accessor for Session.InstrumentableEvent();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_22BE40624()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE40640()
{

  return swift_once();
}

uint64_t sub_22BE40678()
{
  v3 = (v0 + *(v1 + 32));
  result = *(v2 - 96);
  *v3 = *(v2 - 104);
  v3[1] = result;
  v5 = v0 + *(v1 + 36);
  return result;
}

uint64_t sub_22BE406DC()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE40714()
{

  return sub_22C108634();
}

uint64_t ToolExecutionSessionHolder.deinit()
{
  v1 = sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + 16);
  sub_22C273624();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;

  sub_22BF84B6C(0, 0, v4, &unk_22C2905F8, v10);

  v11 = *(v0 + 16);

  return v0;
}

uint64_t sub_22BE4083C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22BE4087C()
{
  sub_22BE183FC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_22BE23AE4(v6);
  *v7 = v8;
  v7[1] = sub_22BE40CC8;

  return sub_22BE409EC(v2, v3, v4, v5);
}

uint64_t sub_22BE40924()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

void sub_22BE40940(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22BE409B4(uint64_t a1)
{
  v4 = *(v2 + 16);
  result = a1 + v1;
  v6 = *(v3 - 120);
  return result;
}

uint64_t sub_22BE409EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(MEMORY[0x277D857C8] + 4);
  v7 = swift_task_alloc();
  *(v4 + 32) = v7;
  v8 = sub_22BE5CE4C(&qword_27D90BA00, &unk_22C290B78);
  v9 = sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  *v7 = v4;
  v7[1] = sub_22BE40AD0;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4 + 16, a4, v8, v9, v10);
}

uint64_t sub_22BE40AD0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void *sub_22BE40C08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[3] = 64;
  result[4] = a2;
  result[5] = 64;
  result[6] = a2;
  *v2 = result;
  return result;
}

void sub_22BE40C98()
{
  *(v2 - 144) = v0 + 16;
  *(v2 - 96) = v1;
  *(v2 - 88) = v0 + 8;
  v3 = *(v2 - 136);
}

uint64_t ToolExecutionSessionHolder.__deallocating_deinit()
{
  ToolExecutionSessionHolder.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BE40D0C()
{
  sub_22BE183F0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getObjectType();
  sub_22C2722E4();
  swift_unknownObjectRelease();
  sub_22BE1A26C();

  return v3();
}

uint64_t sub_22BE40D78()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE17A94();

  return v5();
}

uint64_t ExternalAgentRequest.content.getter()
{
  sub_22BE1B7A4();
  sub_22BE19368();
  return sub_22BE1A964(v0, v1);
}

void sub_22BE40F38()
{
  sub_22BE29120();
  v2 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    v4 = type metadata accessor for StatementResultPayload(0);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v1)
    {
      sub_22BE26204();
    }

    else
    {
      v6 = sub_22C26E684();
      sub_22BE187D0(v6);
      if (*(v7 + 84) != v1)
      {
        sub_22BE3858C(*(v0 + 36));
        return;
      }

      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  sub_22BE19DC4(v8, v9, v10, v11);
}

uint64_t sub_22BE41078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v6 + 4) = a1;
  *(v6 + 12) = 2080;

  return sub_22BE61C88(v4, v5, va);
}

uint64_t sub_22BE4115C()
{
  sub_22BE2BC0C();
  v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = type metadata accessor for StatementResultPayload(0);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      v10 = sub_22C26E684();
      sub_22BE187D0(v10);
      if (*(v11 + 84) != v0)
      {
        sub_22C18E1D4(*(v2 + 36));
        return sub_22C18F204(v13);
      }

      sub_22BE1C1E8();
    }

    v5 = v1 + v9;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE4129C()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_22C273EE4();
}

uint64_t sub_22BE412BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{

  return sub_22BF1C8E0(0, 2000000000000000000, 0, a4, a5, a6);
}

uint64_t sub_22BE41348()
{

  return sub_22C1CEAFC();
}

Swift::Int __swiftcall TailTranscriptProtocol.countClientSentEvents()()
{
  sub_22BE19460();
  sub_22BE29420(v0, v1);
  v3 = *(*(v2 + 8) + 8);
  sub_22BE46BB4();
  v4 = sub_22C273AC4();
  sub_22BE18000(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  sub_22BE46BB4();
  v8 = sub_22C273CB4();
  sub_22BE179D8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = sub_22BE2590C();
  MEMORY[0x2318ABA30](v14);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE272E4();
  sub_22C273D84();
  sub_22C1AE1F8();
  swift_getWitnessTable();
  sub_22C273724();
  v15 = *(v10 + 8);
  v16 = sub_22BE39EAC();
  v17(v16);
  sub_22BE1AABC();
  return result;
}

void sub_22BE414F8()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
}

uint64_t sub_22BE41554()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t sub_22BE415EC()
{

  return sub_22C273DE4();
}

void sub_22BE41634()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
}

uint64_t sub_22BE41658()
{
  v1 = **(v0 - 192);
  result = *(v0 - 144);
  v3 = *(v0 - 280);
  return result;
}

uint64_t sub_22BE416AC()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t sub_22BE416E4(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_22BE417C8()
{
}

uint64_t sub_22BE417E0(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 - 96) = v1;
  v5 = *(v2 - 72);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

void MessagePayload.ExternalAgentRequest.init(ifps:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v1 = sub_22BE5CE4C(&off_27D9120B8, &unk_22C2B5F08);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE28738();
  v5 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  v9 = type metadata accessor for RequestContent(0);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE23930();
  v13 = sub_22C26EDD4();
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE23D74();
  sub_22BE3F24C();
  MessagePayload.RequestContent.init(ifps:)();
  v17 = type metadata accessor for ExternalAgentRequest(0);
  v18 = *(v17 + 20);
  sub_22BE22814();
  v19 = (v0 + *(v17 + 24));
  v20 = v19[1];
  if (v20)
  {
    v21 = v19[2];
    v22 = *v19;
    v23 = v19[1];

    MEMORY[0x2318A7890](v22, v20, v21);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_22C26F1C4();
  v25 = sub_22BE335B4();
  sub_22BE19DC4(v25, v24, 1, v26);
  sub_22BE35F50();
  sub_22C26EED4();
  sub_22BE48744();
  sub_22BE267B8();
}

void MessagePayload.RequestContent.init(ifps:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = sub_22BE2054C(v4);
  v6 = type metadata accessor for RequestContent.SystemPromptResolution(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v52[1] = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  v13 = v52 - v12;
  v14 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v52[0] = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE26800();
  v20 = type metadata accessor for RequestContent.SpeechContent(0);
  v21 = sub_22BE18000(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE18928();
  MEMORY[0x28223BE20](v24);
  v25 = sub_22BE195C4();
  v26 = type metadata accessor for RequestContent.TextContent(v25);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE20558();
  v32 = type metadata accessor for RequestContent(v31);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE179EC();
  sub_22BE23D74();
  v52[2] = v3;
  sub_22BE3F24C();
  sub_22BE1A8C4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE20258();
      sub_22BE18944();
      sub_22BE37A38();
      sub_22BE33A98();
      sub_22BE41FB4();
      sub_22BE3F24C();
      v45 = *v1;
      v46 = v1[1];

      sub_22BE46B90();
      sub_22BE18040();
      sub_22C26ED04();
      sub_22BE383DC();
      sub_22BE41F44(v1, type metadata accessor for RequestContent.TextContent);
      v47 = sub_22BE19454();
      sub_22BE41F44(v47, v48);
      v36 = MEMORY[0x277D1C6B8];
      break;
    case 2u:
      sub_22C11631C();
      sub_22BE31038();
      sub_22BE37A38();
      sub_22BE203B0();
      sub_22BE196A8();
      sub_22BE3F24C();
      v37 = *v0;
      v38 = v0[1];
      v39 = *(v20 + 20);
      v32 = &unk_22C2CC910;
      sub_22BE22814();
      v40 = *(v20 + 28);
      sub_22BE37940();
      sub_22BE22814();

      sub_22BE46B90();
      sub_22BE19454();
      sub_22C26EDA4();
      sub_22BE383DC();
      sub_22BE2C714();
      sub_22BE41F44(v0, v41);
      v42 = sub_22BE33FCC();
      sub_22BE41F44(v42, v43);
      v36 = MEMORY[0x277D1C6C0];
      break;
    case 3u:
      sub_22BE18040();
      sub_22BE37A38();
      sub_22BE3F24C();
      sub_22BE46B90();
      SystemPromptResolution.init(ifps:)();
      sub_22BE383DC();
      sub_22BE18304();
      sub_22BE41F44(v13, v44);
      v36 = MEMORY[0x277D1C6A8];
      break;
    default:
      sub_22BE46B90();
      _s16IntelligenceFlow14MessagePayloadO14RequestContentO04StopF0V0aB14PlannerSupportE4ifpsAghDOAFV_tcfC_0();
      sub_22BE383DC();
      v36 = MEMORY[0x277D1C6B0];
      break;
  }

  v49 = *v36;
  v50 = sub_22C26EDD4();
  sub_22BE1834C(v50);
  (*(v51 + 104))(v32, v49);
  sub_22BE1AABC();
}

uint64_t sub_22BE41DB4()
{
  v2 = *(v0 - 256);

  return sub_22C273DE4();
}

uint64_t sub_22BE41E10()
{

  return sub_22C0C1AC4();
}

void sub_22BE41E4C()
{

  sub_22BE68D68(v0, v1, v2, v3);
}

uint64_t sub_22BE41EC0()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_22C273EE4();
}

uint64_t sub_22BE41F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18524(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE41F98()
{
  v2 = *(v0 - 192);

  return swift_getEnumCaseMultiPayload();
}

void SessionStart.init(config:)()
{
  sub_22BE19460();
  v5 = v4;
  v64 = v6;
  v7 = sub_22BE5CE4C(&qword_27D912DF0, &qword_22C2B7ED0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v63 = sub_22C26ECA4();
  v11 = sub_22BE179D8(v63);
  v66 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17CBC();
  v15 = sub_22C26EA84();
  v16 = sub_22BE179D8(v15);
  v62 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v20);
  sub_22BE2EDB8();
  v21 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v26);
  sub_22BE18094();
  MEMORY[0x28223BE20](v27);
  sub_22BE32374();
  sub_22C26FE04();
  v28 = 1;
  sub_22BE1AB5C(v0, 1, v15);
  v65 = v1;
  if (!v29)
  {
    v61 = v5;
    sub_22C18FD18();
    v31 = *(v30 + 16);
    v32 = sub_22BE200E0();
    v33(v32);
    sub_22C26EA74();
    sub_22BE41F14();
    sub_22BE20458(v34);
    sub_22BE3AF28();
    v35 = sub_22C272FD4();
    v36 = *(v1 + 8);
    v37 = sub_22BE29454();
    v36(v37);
    v38 = sub_22BE18240();
    v36(v38);
    if (v35)
    {
      (v36)(v0, v15);
      v28 = 1;
    }

    else
    {
      (*(v62 + 32))(v3, v0, v15);
      v28 = 0;
    }

    v5 = v61;
  }

  sub_22BE19DC4(v3, v28, 1, v15);
  sub_22BE191C0();
  sub_22BE424BC();
  sub_22C26FE14();
  v39 = sub_22BE406A0();
  sub_22BE1AB5C(v39, v40, v63);
  if (v29)
  {
    sub_22C26EC94();
    v41 = sub_22BE406A0();
    sub_22BE1AB5C(v41, v42, v63);
    if (!v29)
    {
      sub_22C18DC5C(v2, &qword_27D912DF0);
    }
  }

  else
  {
    v43 = *(v66 + 32);
    v44 = sub_22BE354DC();
    v45(v44);
  }

  sub_22BE22814();
  v46 = sub_22C26FE24();
  v47 = sub_22C26FE34();
  sub_22BE18000(v47);
  (*(v48 + 8))(v5);
  v49 = sub_22BE3C968();
  sub_22C18DC5C(v49, v50);
  v51 = type metadata accessor for SessionStart(0);
  v52 = v51[5];
  sub_22BE1A140();
  sub_22BE19DC4(v53, v54, v55, v15);
  v56 = v51[6];
  sub_22C26EC34();
  sub_22BE1A140();
  sub_22BE19DC4(v57, v58, v59, v60);
  (*(v66 + 32))(v64, v65, v63);
  sub_22BE2343C();
  *(v64 + v51[7]) = v46 & 1;
  sub_22BE1AABC();
}

uint64_t sub_22BE424BC()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE1834C(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BE19454();
  v7(v6);
  return v0;
}

void sub_22BE4258C()
{
  v2 = *(v0 - 168);

  JUMPOUT(0x2318AB6A0);
}

uint64_t sub_22BE425AC()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE425F8()
{
  v2 = **(v1 - 248);
  result = v0;
  v4 = *(v1 - 200);
  return result;
}

uint64_t sub_22BE42638(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_22C272024();
}

uint64_t sub_22BE42650(uint64_t a1)
{

  return sub_22BE19DC4(v1, 1, 1, a1);
}

uint64_t sub_22BE4270C()
{
  v2 = *(v0 - 96);

  return sub_22BE22868();
}

void sub_22BE42774()
{
  sub_22BE19460();
  v145 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v148 = v13;
  sub_22BE183BC();
  v14 = sub_22C271CC4();
  v15 = sub_22BE179D8(v14);
  v143 = v16;
  v144 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v138[8] = v19;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE19490();
  v138[7] = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19490();
  v138[6] = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  v138[5] = v25;
  v26 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  v138[4] = v30;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  v138[3] = v32;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  v138[2] = v34;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  v138[1] = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v139 = v38;
  sub_22BE183BC();
  v39 = sub_22C271D74();
  v40 = sub_22BE179D8(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v140 = v46 - v45;
  v47 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1B72C();
  v51 = sub_22BE5CE4C(&qword_27D908358, &unk_22C27AB08);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE19E64();
  v55 = sub_22C271F54();
  v56 = sub_22BE179D8(v55);
  v146 = v57;
  v147 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE183AC();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = v138 - v64;
  v66 = *v4;
  v141 = v42;
  v142 = v39;
  v67 = *(v42 + 16);
  v149 = v8;
  v67(v8, v6, v39);
  sub_22C271F44();
  sub_22C271F04();
  v68 = *MEMORY[0x277D20490];
  v69 = sub_22C271F14();
  sub_22BE18000(v69);
  v71 = *(v70 + 104);
  v71(v1, v68, v69);
  v72 = sub_22BE19198();
  sub_22BE3D114(v72, v73, v74, v69);
  sub_22C271F34();
  v75 = sub_22C26E1D4();
  sub_22BE18000(v75);
  (*(v76 + 16))(v0, v145, v75);
  sub_22BE187DC();
  sub_22BE19DC4(v77, v78, v79, v75);
  sub_22C271F24();
  switch(v66 >> 5)
  {
    case 2u:
      sub_22C271F44();
      sub_22C271F04();
      v71(v1, v68, v69);
      v89 = sub_22BE19198();
      sub_22BE3D114(v89, v90, v91, v69);
      sub_22C271F34();
      v150 = v66 & 0x1F;
      v92 = sub_22BE366E4();
      sub_22BE35210(v92, v93, v94);
      v95 = v146;
      v96 = v62;
      v97 = v147;
      (*(v146 + 8))(v96, v147);
      v98 = sub_22BE372FC();
      v99(v98);
      v100 = sub_22BE267D8();
      v101(v100);
      goto LABEL_14;
    case 3u:
      v151 = v66 & 0x1F;
      v102 = sub_22BE366E4();
      sub_22BE93F64(v102, v103, v104);
      v105 = sub_22BE372FC();
      v106(v105);
      v107 = sub_22BE267D8();
      v108(v107);
      goto LABEL_13;
    case 4u:
      v85 = v143;
      v84 = v144;
      sub_22BE3C7EC();
      sub_22BE1C27C();
      v86 = sub_22BE23C3C();
      v87(v86);
      v88 = *(v85 + 32);
      goto LABEL_11;
    case 5u:
      v115 = v143;
      v84 = v144;
      sub_22BE3C7EC();
      sub_22BE1C27C();
      v116 = sub_22BE23C3C();
      v117(v116);
      v118 = *(v115 + 32);
      goto LABEL_11;
    case 6u:
      v119 = v143;
      v84 = v144;
      sub_22BE3C7EC();
      sub_22BE1C27C();
      v120 = sub_22BE23C3C();
      v121(v120);
      v122 = *(v119 + 32);
      goto LABEL_11;
    case 7u:
      v109 = v143;
      v84 = v144;
      sub_22BE3C7EC();
      v110 = MEMORY[0x277D1F6E8];
      if ((v66 & 1) == 0)
      {
        v110 = MEMORY[0x277D1F6E0];
      }

      v111 = *v110;
      v112 = sub_22BE23C3C();
      v113(v112);
      v114 = *(v109 + 32);
LABEL_11:
      v123 = sub_22BE22BD8();
      v124(v123);
      v125 = sub_22BE19198();
      sub_22BE3D114(v125, v126, v127, v84);
      break;
    default:
      v80 = v144;
      (*(v143 + 104))(v139, *MEMORY[0x277D1F668], v144);
      sub_22BE187DC();
      sub_22BE19DC4(v81, v82, v83, v80);
      break;
  }

  sub_22C271CE4();
LABEL_13:
  v95 = v146;
  v97 = v147;
LABEL_14:
  v128 = v148;
  (*(v95 + 16))(v148, v65, v97);
  v129 = *MEMORY[0x277D1F718];
  v130 = sub_22C271D44();
  sub_22BE18000(v130);
  (*(v131 + 104))(v128, v129, v130);
  v132 = sub_22BE19198();
  sub_22BE3D114(v132, v133, v134, v130);
  sub_22C271D54();
  v135 = *(v95 + 8);
  v136 = sub_22BE1AB1C();
  v137(v136);
  sub_22BE1AABC();
}

uint64_t sub_22BE431D8()
{

  return sub_22BE22868();
}

uint64_t sub_22BE43258()
{

  return sub_22C273074();
}

void TranscriptProtoStatementOutcome.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v411 = v27;
  v412 = v21;
  v402 = v28;
  v29 = sub_22C26E854();
  v30 = sub_22BE18910(v29, &v389);
  v380 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  sub_22BE18950(v35);
  v36 = sub_22C26FD94();
  v37 = sub_22BE18910(v36, &v387);
  v378 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  sub_22BE18950(v42);
  v43 = sub_22C2701C4();
  v44 = sub_22BE18910(v43, &v399);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v47);
  sub_22BE19E94();
  sub_22BE18950(v48);
  v49 = sub_22C26FCD4();
  v50 = sub_22BE18910(v49, &v404);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  sub_22BE18950(v54);
  v55 = sub_22C26FFF4();
  v56 = sub_22BE18910(v55, &v407);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE19E94();
  sub_22BE18950(v60);
  v61 = sub_22C26FE94();
  v62 = sub_22BE18910(v61, &v412);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v65);
  sub_22BE19E94();
  sub_22BE18950(v66);
  v67 = sub_22C26FC54();
  v68 = sub_22BE18910(v67, &a12);
  v387 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE19E94();
  sub_22BE18950(v73);
  v407 = sub_22C272224();
  v74 = sub_22BE179D8(v407);
  v409 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v78);
  sub_22BE19E94();
  sub_22C259A68(v79);
  v405[0] = sub_22C272674();
  v80 = sub_22BE179D8(v405[0]);
  v408 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BE17B98();
  sub_22C259D70();
  v85 = MEMORY[0x28223BE20](v84);
  sub_22BE3173C(v85, v86, v87, v88, v89, v90, v91, v92, v370);
  v93 = sub_22C26FBC4();
  v94 = sub_22BE18910(v93, &a17);
  v392 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22BE17A44();
  sub_22BE18950(v98);
  v99 = sub_22C26F8A4();
  v100 = sub_22BE18910(v99, &v394);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v103);
  sub_22BE19E94();
  sub_22BE18950(v104);
  v105 = sub_22C26FB84();
  v106 = sub_22BE179D8(v105);
  v395 = v107;
  v396 = v106;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22BE17B98();
  sub_22BE181F4();
  v111 = MEMORY[0x28223BE20](v110);
  sub_22BE3CEC0(v111, v112, v113, v114, v115, v116, v117, v118, v371);
  v119 = sub_22C26EAC4();
  v120 = sub_22BE179D8(v119);
  v399 = v121;
  v400 = v120;
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  sub_22BE17B98();
  v397 = v124;
  sub_22BE1B99C();
  v126 = MEMORY[0x28223BE20](v125);
  sub_22C259824(v126, v127, v128, v129, v130, v131, v132, v133, v372);
  v403 = sub_22C26E9D4();
  v134 = sub_22BE179D8(v403);
  v136 = v135;
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v134);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v139);
  sub_22BE39EE8();
  v140 = sub_22C26F894();
  v141 = sub_22BE179D8(v140);
  v143 = v142;
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](v141);
  v146 = sub_22BE2F294();
  v410 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(v146);
  v147 = sub_22BE18000(v410);
  v149 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v150);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v151);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v152);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v153);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v154);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v155);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v156);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v157);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v158);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v159);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v160);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v161);
  sub_22BE19E94();
  v401 = v162;
  sub_22C116380();
  v163(v24, v411, v140);
  v164 = *(v143 + 88);
  v165 = sub_22BE3E79C();
  v167 = v166(v165);
  if (v167 == *MEMORY[0x277D1CBF0])
  {
    v168 = sub_22C259710();
    v169(v168);
    v170 = *(v136 + 32);
    v171 = sub_22BE33B3C();
    v172(v171);
    sub_22BE3C6EC();
    sub_22BE39E94();
    v173();
    v174 = sub_22C259EBC();
    v175 = v412;
    TranscriptProtoActionSuccess.init(handwritten:)(v174, v176, v177, v178, v179, v180, v181, v182, v373, v374);
    if (v175)
    {
      v183 = sub_22C259E2C();
      v184(v183);
      v185 = *(v136 + 8);
      v186 = sub_22BE33560();
      v187(v186);
LABEL_44:
      sub_22BE22978();
      sub_22BE18478();
      return;
    }

    v221 = *(v136 + 8);
    v222 = sub_22BE33560();
    v223(v222);
    v195 = v410;
    goto LABEL_11;
  }

  v389 = v140;
  v403 = v143;
  v188 = v412;
  if (v167 == *MEMORY[0x277D1CB98])
  {
    v189 = sub_22BE393B4();
    v190(v189);
    v191 = v399;
    sub_22C25A35C();
    v192();
    sub_22C1CF23C();
    v193 = sub_22BE29264();
    v194(v193);
    TranscriptProtoSnippetStream.init(handwritten:)();
    v195 = v410;
    if (v188)
    {
      v196 = sub_22C259E2C();
      v197(v196);
      v198 = v191[1];
      v199 = sub_22BE25EFC();
      v200(v199);
      goto LABEL_44;
    }

    v253 = v191[1];
    v254 = sub_22BE25EFC();
    v255(v254);
    sub_22BE3AF28();
    swift_storeEnumTagMultiPayload();
    v20 = v22;
LABEL_43:
    sub_22BE3B620(v20, v401);
    v327 = v402;
    v328 = sub_22BE38960();
    v331 = sub_22C18F17C(v328, v329, v330, v195);
    v332 = type metadata accessor for TranscriptProtoStatementOutcome(v331);
    sub_22BE48874(v332);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v333 = sub_22C259E2C();
    v334(v333);
    sub_22BE233E8(v327, &qword_27D90E980, &qword_22C2CC850);
    v335 = sub_22BE200D4();
    sub_22BE3B620(v335, v336);
    v337 = sub_22BE2500C();
    sub_22BE19DC4(v337, v338, v339, v195);
    goto LABEL_44;
  }

  v201 = v412;
  v195 = v410;
  if (v167 == *MEMORY[0x277D1CBA8])
  {
    v202 = sub_22BE393B4();
    v203(v202);
    v204 = v394;
    v205 = v395;
    sub_22C18F338();
    v206 = sub_22BE3911C();
    v207 = v396;
    v208(v206);
    sub_22BE29400();
    v209 = sub_22BE33BE8();
    v210(v209);
    v211 = sub_22BE44844();
    TranscriptProtoActionConfirmation.init(handwritten:)(v211, v212, v213, v214, v215, v216, v217, v218, v373, SHIDWORD(v373), v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384);
    if (v201)
    {
      v219 = sub_22C259E2C();
      v220(v219);
      (*(v205 + 8))(v204, v207);
      goto LABEL_44;
    }

    (*(v205 + 8))(v204, v207);
    sub_22BE196A8();
    swift_storeEnumTagMultiPayload();
    v20 = v23;
    goto LABEL_43;
  }

  if (v167 == *MEMORY[0x277D1CBB0])
  {
    v224 = sub_22C259710();
    v225(v224);
    v226 = *(v392 + 32);
    v227 = sub_22BE3E8FC();
    v228(v227);
    v394 = sub_22C26FBA4();
    v395 = v229;
    v230 = MEMORY[0x2318A82B0]();
    v231 = *(v230 + 16);
    if (!v231)
    {

      v237 = MEMORY[0x277D84F90];
LABEL_31:
      v287 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
      v20 = v390;
      v288 = v390 + *(v287 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE196EC();
      v289 = sub_22C25AA68();
      v290(v289);
      v291 = v395;
      v20[1] = v394;
      v20[2] = v291;
      *v20 = v237;
      sub_22BE1B62C();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    }

    sub_22BE3122C(MEMORY[0x277D84F90]);
    sub_22BE34198();
    sub_22BE70F04(v232, v233, v234);
    v235 = 0;
    sub_22BE25AD8();
    v237 = a10;
    v398 = v230 + v238;
    v396 = v231;
    v397 = v239 + 16;
    v399 = (v239 + 8);
    v400 = v230;
    v240 = (v408 + 32);
    while (v235 < *(v230 + 16))
    {
      v195 = a10;
      v241 = *(v409 + 16);
      v241(v405[2], v398 + *(v409 + 72) * v235, v407);
      v242 = sub_22BE392D4();
      (v241)(v242);
      sub_22C2721F4();
      if (v201)
      {

        (*(v403 + 8))(v411, v389);
        v282 = *v399;
        v283 = sub_22BE194C4();
        v282(v283);
        v284 = sub_22BE194F8();
        v282(v284);
        sub_22BE196EC();
        v285 = sub_22C25AA68();
        v286(v285);

        goto LABEL_44;
      }

      v412 = 0;
      v243 = *v399;
      v244 = sub_22BE194C4();
      v243(v244);
      v245 = sub_22BE194F8();
      v243(v245);
      v246 = *v240;
      v247 = sub_22BE29264();
      (v246)(v247);
      v249 = *(a10 + 16);
      v248 = *(a10 + 24);
      if (v249 >= v248 >> 1)
      {
        v252 = sub_22BE3D1E4(v248);
        sub_22BE70F04(v252, v249 + 1, 1);
      }

      ++v235;
      *(a10 + 16) = v249 + 1;
      sub_22BE25AD8();
      v251 = *(v250 + 72);
      sub_22BE354D0();
      v236 = v246();
      v201 = v412;
      v230 = v400;
      if (v396 == v235)
      {

        v195 = v410;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v167 == *MEMORY[0x277D1CBB8])
  {
    v256 = sub_22C259710();
    v257(v256);
    sub_22C259E1C(&a11);
    sub_22BE2BB54();
    sub_22C25AAF8();
    v258();
    sub_22BE29400();
    v259 = sub_22C259EC8();
    v260(v259);
    v261 = sub_22BE37DF4(&v413);
    TranscriptProtoParameterNeedsValue.init(handwritten:)(v261, v262, v263, v264, v265, v266, v267, v268, v373, v374);
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v167 == *MEMORY[0x277D1CBD0])
  {
    v269 = sub_22C259710();
    v270(v269);
    sub_22C259E1C(&v411);
    sub_22BE2BB54();
    sub_22C25AAF8();
    v271();
    sub_22BE29400();
    v272 = sub_22C259EC8();
    v273(v272);
    v274 = sub_22BE37DF4(&v408);
    TranscriptProtoParameterConfirmation.init(handwritten:)(v274, v275, v276, v277, v278, v279, v280, v281, v373, v374);
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v167 == *MEMORY[0x277D1CBD8])
  {
    v292 = sub_22C259710();
    v293(v292);
    sub_22C259E1C(&v406);
    sub_22BE2BB54();
    sub_22C25AAF8();
    v294();
    sub_22BE29400();
    v295 = sub_22C259EC8();
    v296(v295);
    sub_22BE37DF4(v405);
    TranscriptProtoParameterDisambiguation.init(handwritten:)();
    if (!v21)
    {
LABEL_41:
      v325 = sub_22C259F50();
      v326(v325);
      sub_22BF0AFB8();
      goto LABEL_42;
    }

LABEL_34:
    v297 = sub_22C259E2C();
    v298(v297);
    (*(v22 + 8))(v23, v136);
    goto LABEL_44;
  }

  if (v167 == *MEMORY[0x277D1CBC0])
  {
    v299 = sub_22C259710();
    v300(v299);
    sub_22C259E1C(&v403);
    sub_22BE2BB54();
    sub_22C25A5E0();
    v301();
    sub_22BE29400();
    v302 = sub_22C259EC8();
    v303(v302);
    v24 = v386;
    sub_22BE489C8();
    TranscriptProtoParameterNotAllowed.init(handwritten:)();
    if (!v188)
    {
      v304 = *(v22 + 8);
      v305 = sub_22BE33FCC();
      v306(v305);
      sub_22BF0AFB8();
LABEL_42:
      swift_storeEnumTagMultiPayload();
      v20 = v24;
      goto LABEL_43;
    }

LABEL_40:
    v320 = sub_22C259E2C();
    v321(v320);
    v322 = *(v22 + 8);
    v323 = sub_22BE33FCC();
    v324(v323);
    goto LABEL_44;
  }

  if (v167 == *MEMORY[0x277D1CBE0])
  {
    v307 = sub_22C259710();
    v308(v307);
    sub_22C259E1C(&v398);
    sub_22BE2BB54();
    sub_22C25A5E0();
    v309();
    sub_22BE29400();
    v310 = sub_22BE31038();
    v311(v310);
    v24 = v385;
    v312 = sub_22C259F64();
    TranscriptProtoParameterCandidatesNotFound.init(handwritten:)(v312, v313, v314, v315, v316, v317, v318, v319, v373, v374);
    if (!v188)
    {
      v356 = *(v22 + 8);
      v357 = sub_22BE33FCC();
      v358(v357);
      sub_22BF0AFB8();
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v167 == *MEMORY[0x277D1CBA0])
  {
    v340 = sub_22C259710();
    v341(v340);
    sub_22C259E1C(&v393);
    sub_22BE2BB54();
    sub_22C25AAF8();
    v342();
    sub_22BE29400();
    v343 = sub_22C259EC8();
    v344(v343);
    sub_22BE37DF4(&v391);
    TranscriptProtoActionRequirement.init(handwritten:)();
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v167 == *MEMORY[0x277D1CBC8])
  {
    v345 = sub_22C259710();
    v346(v345);
    v230 = v378;
    sub_22C25A35C();
    v240 = v379;
    v347();
    sub_22C1CF23C();
    v348 = sub_22BE3E8FC();
    v349(v348);
    v350 = sub_22C26FD84();
    sub_22C220C88(v350);
    if (v201)
    {
      v351 = sub_22C259E2C();
      v352(v351);
      v353 = *(v378 + 8);
      v354 = sub_22BE336E8();
      v353(v354);
      v355 = sub_22BF6AC14();
      v353(v355);
      goto LABEL_44;
    }

LABEL_56:
    v412 = v236;
    v24 = v373;
    v367 = v373 + *(type metadata accessor for TranscriptProtoValueDisambiguation(0) + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v368 = *(v230 + 8);
    v369 = sub_22BE336E8();
    v368(v369);
    (v368)(v382, v240);
    *v373 = v412;
    sub_22BF0AFB8();
    goto LABEL_42;
  }

  if (v167 == *MEMORY[0x277D1CBE8])
  {
    v359 = sub_22C259710();
    v360(v359);
    sub_22C259E1C(&v388);
    sub_22BE2BB54();
    sub_22C25A5E0();
    v361();
    sub_22BE29400();
    v362 = sub_22BE31038();
    v363(v362);
    v24 = v374;
    sub_22C259F64();
    TranscriptProtoActionFailure.init(handwritten:)();
    if (!v188)
    {
      v364 = *(v22 + 8);
      v365 = sub_22BE33FCC();
      v366(v365);
      sub_22BF0AFB8();
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t sub_22BE4475C()
{
  *(v0 - 65) = 0;

  return sub_22C26E684();
}

uint64_t sub_22BE44808()
{

  return sub_22BE22868();
}

void TranscriptProtoActionSuccess.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v106 = v12;
  v13 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE181D0(v17, v99);
  v18 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE29250(v22, v100);
  v23 = sub_22BE5CE4C(&qword_27D911E88, &unk_22C2B5B40);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE20168(v27, v101);
  v28 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE35C94(v32, v102);
  v33 = sub_22BE5CE4C(&qword_27D911E90, &unk_22C2CCA10);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1BCE8(v37, v103);
  v38 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1AB08();
  v42 = sub_22C272594();
  v43 = sub_22C259488(v42);
  v107 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE1AD20();
  v47 = sub_22C272874();
  v48 = sub_22C2594A0(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE197B8();
  v53 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE23E58();
  sub_22C26E984();
  sub_22C272854();
  if (a10)
  {
    v57 = sub_22C26E9D4();
    sub_22BE18524(v57);
    (*(v58 + 8))(v10);
    v59 = *(v50 + 8);
    v60 = sub_22BE1B62C();
    v61(v60);
  }

  else
  {
    v62 = *(v50 + 8);
    v63 = sub_22BE1B62C();
    v64(v63);
    v65 = *(v107 + 32);
    v66 = sub_22BE180C8();
    v67(v66);
    v68 = sub_22BE360A0();
    sub_22BE19DC4(v68, v69, v70, v11);
    sub_22C26E994();
    sub_22BE4618C();
    v71 = sub_22C26E964();
    sub_22C26E8F4();
    sub_22BE465E8();
    v110 = sub_22C26E904();
    v72 = sub_22C26E9A4();
    v108 = v73;
    v109 = v72;
    sub_22C26E9C4();
    sub_22BE46914();
    v104 = v10;
    v74 = type metadata accessor for TranscriptProtoActionSuccess(0);
    v105 = v71;
    v75 = v74[6];
    sub_22C259860();
    sub_22BE19DC4(v76, v77, v78, v79);
    v80 = v74[7];
    type metadata accessor for TranscriptProtoUndoContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v81, v82, v83, v84);
    v85 = v74[8];
    type metadata accessor for TranscriptProtoFollowUpAction(0);
    sub_22BE1A140();
    sub_22BE19DC4(v86, v87, v88, v89);
    v90 = v74[10];
    v91 = &v106[v74[9]];
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_22BE1A140();
    sub_22BE19DC4(v92, v93, v94, v95);
    v96 = &v106[v74[11]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v97 = sub_22C26E9D4();
    sub_22BE18524(v97);
    (*(v98 + 8))(v104);
    sub_22BE2343C();
    sub_22BE2343C();
    *v106 = v105 & 1;
    sub_22BE2343C();
    v106[1] = v110 & 1;
    *v91 = v109;
    v91[1] = v108;
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t ContextRetrievalInput.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907D18, &qword_22C277AB8);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE44FE4();
  sub_22C274234();
  v18[15] = 0;
  sub_22C270A04();
  sub_22BE17ADC();
  sub_22BE45038(v12, v13);
  sub_22BE1A550();
  sub_22C273FA4();
  if (!v1)
  {
    v14 = *(type metadata accessor for ContextRetrievalInput() + 20);
    v18[14] = 1;
    sub_22C270994();
    sub_22BE1BDD8();
    sub_22BE45038(v15, v16);
    sub_22BE1A550();
    sub_22C273F34();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_22BE44FE4()
{
  result = qword_28107A788[0];
  if (!qword_28107A788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107A788);
  }

  return result;
}

uint64_t sub_22BE45038(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ContextRetrievalInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22BE4514CLL);
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

uint64_t getEnumTagSinglePayload for ExecutorError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22BE45204(char a1)
{
  if (a1)
  {
    return 0x7954656372756F73;
  }

  else
  {
    return 0x54747865746E6F63;
  }
}

uint64_t type metadata accessor for ContextRetrievalInput()
{
  result = qword_28107A768;
  if (!qword_28107A768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntitySpanMatchService.init(maxMatchTasks:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BE5CE4C(&qword_27D907868, &unk_22C275A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v73 - v6;
  v8 = sub_22C270F94();
  v9 = sub_22BE179D8(v8);
  v83 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v84 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C2720A4();
  v15 = sub_22BE179D8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v81 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = (&v73 - v22);
  v23 = sub_22C270B14();
  v24 = sub_22BE179D8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v82 = v2;
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = a1;
  v31 = (v2 + 112);
  v32 = *MEMORY[0x277D1EC80];
  v33 = *(v26 + 104);
  v77 = (v26 + 104);
  v76 = v33;
  v33(v30, v32, v23);
  LOBYTE(a1) = sub_22C270B04();
  v34 = *(v26 + 8);
  v78 = v23;
  v75 = v34;
  v34(v30, v23);
  v35 = 0;
  if (a1)
  {
    sub_22BE5CE4C(&qword_27D9073B8, &unk_22C275A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C2759F0;
    *(inited + 32) = 504002438;
    v35 = sub_22BE78C84(inited);
  }

  type metadata accessor for SiriEntityMatcherShim();
  v37 = sub_22BE3D3E0();
  sub_22BE69C40(v37, 0, 1);
  v79 = v17;
  sub_22BE2692C();
  sub_22BE1BDA0();
  sub_22BE78B50(v38);
  v39 = v14;
  v40 = *(*v31 + 16);
  sub_22BE78C3C(v40, 0);
  v41 = v40;
  v42 = v39;
  v43 = v79;
  sub_22BE78F58(v41, v35, v31, type metadata accessor for SiriEntityMatcherShim, &qword_28107A500, type metadata accessor for SiriEntityMatcherShim);
  swift_endAccess();
  v44 = v78;
  v76(v30, *MEMORY[0x277D1EC08], v78);
  v45 = sub_22C270B04();
  v75(v30, v44);
  if (v45)
  {
    v46 = type metadata accessor for GlobalEntityMatcherShim();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    GlobalEntityMatcherShim.init(maxEntityCount:)(0, 1);
    sub_22BE2692C();
    sub_22BE1BDA0();
    sub_22BE78B50(v49);
    v50 = *(*v31 + 16);
    sub_22BE78C3C(v50, v44);
    sub_22BE78F58(v50, v45, v31, type metadata accessor for GlobalEntityMatcherShim, qword_281079580, type metadata accessor for GlobalEntityMatcherShim);
    swift_endAccess();
  }

  v51 = v81;
  sub_22C271AE4();
  v52 = v82;

  v53 = sub_22C272084();
  v54 = sub_22C273794();

  v80 = v53;
  if (os_log_type_enabled(v53, v54))
  {
    v55 = sub_22BE19E2C();
    v77 = sub_22BE25618();
    v86 = v77;
    v78 = v55;
    *v55 = 136315138;
    swift_beginAccess();
    v56 = *v31;
    v57 = *(*v31 + 16);
    if (v57)
    {
      LODWORD(v76) = v54;
      v74 = v42;
      v58 = v56 + 32;
      v59 = (v83 + 32);
      v75 = v56;

      v60 = MEMORY[0x277D84F90];
      do
      {
        sub_22BE26B00(v58, v85);
        sub_22BE1BD3C(v85, v85[3]);
        sub_22C271924();
        sub_22BE19DC4(v7, 0, 1, v8);
        sub_22BE26B64(v85);
        if (sub_22BE1AEA8(v7, 1, v8) == 1)
        {
          sub_22BE23388(v7, &qword_27D907868, &unk_22C275A10);
        }

        else
        {
          v61 = *v59;
          (*v59)(v84, v7, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE669C4(0, *(v60 + 16) + 1, 1, v60);
            v60 = v64;
          }

          v63 = *(v60 + 16);
          v62 = *(v60 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_22BE669C4(v62 > 1, v63 + 1, 1, v60);
            v60 = v65;
          }

          *(v60 + 16) = v63 + 1;
          v61((v60 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v63), v84, v8);
        }

        v58 += 40;
        --v57;
      }

      while (v57);

      v42 = v74;
      v51 = v81;
      LOBYTE(v54) = v76;
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    v66 = MEMORY[0x2318ABBB0](v60, v8);
    v68 = v67;

    v69 = sub_22BE61C88(v66, v68, &v86);

    v70 = v78;
    *(v78 + 1) = v69;
    v71 = v80;
    _os_log_impl(&dword_22BE15000, v80, v54, "[EntitySpanMatchService] Finished initializing with the following matchers: %s", v70, 0xCu);
    sub_22BE26B64(v77);
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v79 + 8))(v51, v42);
    return v82;
  }

  else
  {

    (*(v43 + 8))(v51, v42);
  }

  return v52;
}

uint64_t EntitySpanMatchService.__allocating_init(maxMatchTasks:)()
{
  swift_allocObject();
  v1 = sub_22BE3D3E0();
  EntitySpanMatchService.init(maxMatchTasks:)(v1);
  return v0;
}

uint64_t type metadata accessor for SiriEntityMatcherShim()
{
  result = qword_28107A4F0;
  if (!qword_28107A4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BE45BD4()
{
  result = qword_28106E720;
  if (!qword_28106E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E720);
  }

  return result;
}

id sub_22BE45C28(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C26E204();
  v14[0] = 0;
  v5 = [v2 initWithTokenizerLocale:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_22C26E244();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_22C26DE84();

    swift_willThrow();
    v11 = sub_22C26E244();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22BE45D84(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for GlobalEntityMatcherShim()
{
  result = qword_281079570;
  if (!qword_281079570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GlobalEntityMatcherShim.init(maxEntityCount:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_defaultMaxEntityCount) = 5;
  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_knosisAnswerLimit) = 1000;
  v3 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_intelligencePlatformBundleId);
  *v3 = 0xD00000000000001ELL;
  v3[1] = 0x800000022C2D2A50;
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = a1;
  }

  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_maxEntityCount) = v4;
  v5 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_matcherType;
  v6 = *MEMORY[0x277D1EE80];
  v7 = sub_22C270F94();
  sub_22BE18000(v7);
  (*(v8 + 104))(v2 + v5, v6);
  return v2;
}

uint64_t ToolkitCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Session.SessionState.statementIdCounter.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session.SessionState() + 20));
}

uint64_t ExternalAgentOutcome.init(statementId:statementOutcome:responseText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE3E864();
  v7 = sub_22C26E684();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE1C2A0();
  v11(v10);
  v12 = type metadata accessor for ExternalAgentOutcome(0);
  sub_22C18FE44(v12);
  v13 = sub_22C26F894();
  sub_22BE1834C(v13);
  result = (*(v14 + 32))(v4 + v5, v3);
  *(v4 + *(v12 + 24)) = a3;
  return result;
}

uint64_t sub_22BE45FE8()
{
  result = v0 + *(*(v1 - 168) + 24);
  v3 = *(v1 - 152);
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_22BE46030()
{
  v2 = *(v0 + 20);

  return sub_22C2704B4();
}

uint64_t sub_22BE46054()
{
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
}

void sub_22BE4618C()
{
  sub_22BE19130();
  v59 = v3;
  v5 = v4;
  v6 = sub_22C26E1D4();
  v7 = sub_22BE179D8(v6);
  v56 = v8;
  v57 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v13 = v12 - v11;
  v60 = type metadata accessor for TranscriptProtoUndoContext(0);
  v14 = sub_22BE18000(v60);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE1955C();
  v17 = sub_22BE5CE4C(&qword_27D911E90, &unk_22C2CCA10);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE19668();
  v21 = sub_22C26E954();
  v22 = sub_22BE179D8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v27);
  sub_22BE25A90();
  sub_22BE2B984(v5, v0, &qword_27D911E90, &unk_22C2CCA10);
  sub_22BE23B00(v0);
  if (v28)
  {
    sub_22BE36674();
    sub_22BE33928(v29, v30, v31);
    sub_22BE36674();
    sub_22BE33928(v32, v33, v34);
    v53 = 1;
  }

  else
  {
    v35 = v24[4];
    v36 = sub_22BE3C5E4();
    v37(v36);
    v38 = v24[2];
    v39 = sub_22BE260B8();
    v40(v39);
    sub_22C26E934();
    v41 = sub_22C26E184();
    v54 = v42;
    v55 = v41;
    (*(v56 + 8))(v13, v57);
    v43 = sub_22C26E914();
    v58 = v44;
    v45 = sub_22C26E924();
    v47 = v46;
    v48 = v2 + *(v60 + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33928(v5, &qword_27D911E90, &unk_22C2CCA10);
    v49 = v24[1];
    v50 = sub_22BE41FB4();
    v49(v50);
    (v49)(v1, v21);
    *v2 = v55;
    v2[1] = v54;
    v2[2] = v43;
    v2[3] = v58;
    v2[4] = v45;
    v2[5] = v47;
    v51 = sub_22C1088AC();
    sub_22C1086E4(v51, v59, v52);
    v53 = 0;
  }

  sub_22BE19DC4(v59, v53, 1, v60);
  sub_22BE18478();
}

uint64_t sub_22BE4650C()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v9 = v0[7];
}

unint64_t sub_22BE46594()
{
  result = qword_28106E8D0;
  if (!qword_28106E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8D0);
  }

  return result;
}

void sub_22BE465E8()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v37 = type metadata accessor for TranscriptProtoFollowUpAction(v3);
  v4 = sub_22BE18000(v37);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v7 = sub_22BE1A8C4();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE24FD8();
  v13 = sub_22C26E8E4();
  v14 = sub_22BE179D8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE23748();
  sub_22BE3F3C8(v18);
  sub_22BE26894();
  if (v19)
  {
    v20 = sub_22C108788();
    sub_22BE33928(v20, v21, v22);
    sub_22BE40960();
    sub_22BE33928(v23, v24, v25);
    sub_22C108820();
LABEL_7:
    v34 = sub_22BE46544();
    sub_22BE19DC4(v34, v35, v36, v37);
    goto LABEL_8;
  }

  v26 = sub_22BE3D4EC();
  v27(v26);
  v28 = sub_22BE1ACD4();
  v29(v28);
  sub_22C1087E0();
  TranscriptProtoFollowUpAction.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911E88, &unk_22C2B5B40);
    v32 = sub_22BE41624();
    v33(v32);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911E88, &unk_22C2B5B40);
  v30 = sub_22BE41624();
  v31(v30);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t sub_22BE467F0()
{

  return sub_22C108634();
}

uint64_t sub_22BE4688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE4658C);
}

void sub_22BE46914()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE41FB4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v11 = sub_22C26E684();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE25544();
  MEMORY[0x28223BE20](v17);
  sub_22BE2EDB8();
  v18 = sub_22BE36658();
  sub_22BE2B984(v18, v19, &qword_27D907240, &unk_22C2B5B80);
  v20 = sub_22BE406A0();
  sub_22BE1AB5C(v20, v21, v11);
  if (v22)
  {
    sub_22BE354D0();
    sub_22BE33928(v23, v24, v25);
    sub_22BE354D0();
    sub_22BE33928(v26, v27, v28);
    type metadata accessor for TranscriptProtoStatementID(0);
    v41 = sub_22BE2BA98();
  }

  else
  {
    v29 = *(v14 + 32);
    v30 = sub_22BE1AEE4();
    v31(v30);
    v32 = sub_22C108C94();
    v33(v32);
    v44 = sub_22C26E674();
    v34 = sub_22C26E654();
    v36 = v35;
    v37 = type metadata accessor for TranscriptProtoStatementID(0);
    v38 = v4 + *(v37 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33928(v2, &qword_27D907240, &unk_22C2B5B80);
    v39 = *(v14 + 8);
    v39(v0, v11);
    v40 = sub_22BE18240();
    (v39)(v40);
    *v4 = v44;
    *(v4 + 8) = v34;
    *(v4 + 16) = v36;
    v41 = sub_22BE3661C();
    v43 = v37;
  }

  sub_22BE19DC4(v41, v42, 1, v43);
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22BE46B10(uint64_t a1)
{
  *(a1 + 16) = *(v3 - 400);
  *(v3 - 656) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
  *(v3 - 528) = v1;
}

uint64_t sub_22BE46B80()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void sub_22BE46BC0()
{
  v2 = *(v0 + 16) + 1;

  sub_22BE66A04();
}

uint64_t sub_22BE46BE4()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE46C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE46C40);
}

uint64_t sub_22BE46D10()
{

  return sub_22BE2BE3C();
}

uint64_t sub_22BE46DA4(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  return 0;
}

uint64_t sub_22BE46E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t TranscriptProtoExternalAgentOutcome.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*(*v0 + 16) || (sub_22BE1BAB8(), result = sub_22C270824(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22BE470F0(v3, v4, v5, v6);
    if (!v1)
    {
      v7 = sub_22BE17D60();
      sub_22BE472C4(v7, v8, v9, v10);
      v11 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
      sub_22BE375E4(v11);
      return sub_22BE363D4();
    }
  }

  return result;
}

uint64_t sub_22BE470F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE472C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90CA68, &unk_22C296C50);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22C270884();
  return sub_22C0B08BC();
}

void TranscriptProtoActionSuccess.traverse<A>(visitor:)()
{
  sub_22BE3B090();
  sub_22C0B13D0();
  sub_22BE47B20();
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BE47EA8(v2, v3, v4, v5);
    sub_22C0B1C3C();
    if (v6)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v7 = sub_22BE17D60();
    sub_22BE4809C(v7, v8, v9, v10);
    if (*(v1 + 1) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v11 = sub_22BE17D60();
    sub_22BE483FC(v11);
    v12 = sub_22BE17D60();
    sub_22BE484A4(v12, v13, v14, v15);
    v16 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
    sub_22BE1AC30();
  }
}

void TranscriptProtoStatementOutcome.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v39 = sub_22BE17D78();
        sub_22C01EB00(v39, v40, v41, v42);
        goto LABEL_15;
      case 2:
        v27 = sub_22BE17D78();
        sub_22C01ED08(v27, v28, v29, v30);
        goto LABEL_15;
      case 3:
        v31 = sub_22BE17D78();
        sub_22C01EF10(v31, v32, v33, v34);
        goto LABEL_15;
      case 4:
        v19 = sub_22BE17D78();
        sub_22C01F118(v19, v20, v21, v22);
        goto LABEL_15;
      case 5:
        v43 = sub_22BE17D78();
        sub_22C01F320(v43, v44, v45, v46);
        goto LABEL_15;
      case 6:
        v47 = sub_22BE17D78();
        sub_22C01F528(v47, v48, v49, v50);
        goto LABEL_15;
      case 7:
        v35 = sub_22BE17D78();
        sub_22C01F730(v35, v36, v37, v38);
        goto LABEL_15;
      case 8:
        v55 = sub_22BE17D78();
        sub_22C01F938(v55, v56, v57, v58);
        goto LABEL_19;
      case 9:
        v23 = sub_22BE17D78();
        sub_22C01FB40(v23, v24, v25, v26);
        goto LABEL_19;
      case 10:
        v51 = sub_22BE17D78();
        sub_22C01FD48(v51, v52, v53, v54);
        goto LABEL_19;
      case 11:
        v15 = sub_22BE17D78();
        sub_22C01FF50(v15, v16, v17, v18);
LABEL_19:
        if (v0)
        {
          sub_22C0B1414();
          sub_22C0B08BC();
          goto LABEL_21;
        }

        sub_22C0B1414();
        sub_22C0B08BC();
        break;
      default:
        v11 = sub_22BE17D78();
        sub_22BE47784(v11, v12, v13, v14);
LABEL_15:
        sub_22C0B1414();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_21;
    }
  }

  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE235A8(v9);
LABEL_21:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BE47784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t Session.SessionEnded.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907F48, &qword_22C278CB0);
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE47CD0();
  sub_22C274234();
  sub_22C26E1D4();
  sub_22BE20414(&qword_28107F328);
  sub_22C273FA4();
  return (*(v5 + 8))(v9, v2);
}

void sub_22BE47B20()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE431C0();
  v5 = sub_22BE5CE4C(v3, v4);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23E58();
  v9 = sub_22C272594();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  v15 = *(v2(0) + 24);
  sub_22BE22868();
  v16 = sub_22BE3C598();
  sub_22BE1AB5C(v16, v17, v9);
  if (v18)
  {
    sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
  }

  else
  {
    v19 = *(v12 + 32);
    v20 = sub_22BE289D8();
    v21(v20);
    sub_22BE192C8();
    sub_22BE2C988(v22, v23);
    sub_22C270884();
    v24 = *(v12 + 8);
    v25 = sub_22BE196A8();
    v26(v25);
  }

  sub_22BE22978();
  sub_22BE18478();
}

unint64_t sub_22BE47CD0()
{
  result = qword_28106F178[0];
  if (!qword_28106F178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106F178);
  }

  return result;
}

_BYTE *_s12SessionEndedV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x22BE47DC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecutorError.OtherCodingKeys(unsigned int *a1, int a2)
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

  return *a1;
}

uint64_t sub_22BE47EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E908, &unk_22C2AE600);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE4809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E8F8, &qword_22C2B5B60);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22BE4827C()
{
  v3 = *(*(v2 - 88) + 28);
  v4 = *(v1 + v3 + 8);
  v5 = *(v0 + v3 + 8);
}

uint64_t sub_22BE482A4()
{

  return swift_getEnumCaseMultiPayload();
}

Swift::String __swiftcall Encodable.ifps_jsonPrettyPrinted()()
{
  v0 = sub_22C273064();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22BE179EC();
  if (qword_28107F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22C26DC04();
  v4 = v3;
  sub_22C273054();
  v5 = sub_22C273044();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_22BE29DD4(v2, v4);
  }

  else
  {
    sub_22BE29DD4(v2, v4);
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = v7;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_22BE483FC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE484A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 40);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE48678()
{
  sub_22BE48474(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22BE486D0()
{
  v2 = *(v0 - 88);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE48710()
{
  v1 = v0[44];
  result = v0[8];
  v3 = v0[6];
  v4 = *(v0[7] + 8);
  return result;
}

void sub_22BE48730()
{
  *(v1 - 104) = v0 + 32;
  v2 = *(v1 - 112);
  v3 = *(v1 - 160);
}

uint64_t sub_22BE48744()
{

  return sub_22BE41F44(v1, v0);
}

uint64_t sub_22BE48814(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t sub_22BE4885C()
{

  return sub_22BE22868();
}

uint64_t sub_22BE488A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 2);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 2);
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

  return sub_22BE39E30(v8);
}