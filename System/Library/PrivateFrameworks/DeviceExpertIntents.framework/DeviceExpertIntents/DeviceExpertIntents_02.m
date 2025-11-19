uint64_t sub_1DA30DDC8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA30DE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DA30DF00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA30DF48()
{
  result = type metadata accessor for AttributionListSnippetModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LearnMoreSnippetModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ListStyleAnswerSnippetModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SummarizedAnswerSnippetModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SupplementarySnippetModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TipSnippetModel(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TroubleshootingSnippetModel();
              if (v7 <= 0x3F)
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

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TellMeGeneratedSnippetModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA30E1E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA30E294()
{
  result = qword_1ECBA5E10;
  if (!qword_1ECBA5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E10);
  }

  return result;
}

unint64_t sub_1DA30E2EC()
{
  result = qword_1ECBA5E18;
  if (!qword_1ECBA5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E18);
  }

  return result;
}

unint64_t sub_1DA30E344()
{
  result = qword_1ECBA5E20;
  if (!qword_1ECBA5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E20);
  }

  return result;
}

unint64_t sub_1DA30E39C()
{
  result = qword_1ECBA5E28;
  if (!qword_1ECBA5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E28);
  }

  return result;
}

unint64_t sub_1DA30E3F4()
{
  result = qword_1ECBA5E30;
  if (!qword_1ECBA5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E30);
  }

  return result;
}

unint64_t sub_1DA30E44C()
{
  result = qword_1ECBA5E38;
  if (!qword_1ECBA5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E38);
  }

  return result;
}

unint64_t sub_1DA30E4A4()
{
  result = qword_1ECBA5E40;
  if (!qword_1ECBA5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E40);
  }

  return result;
}

unint64_t sub_1DA30E4FC()
{
  result = qword_1ECBA5E48;
  if (!qword_1ECBA5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E48);
  }

  return result;
}

unint64_t sub_1DA30E554()
{
  result = qword_1EE10A368;
  if (!qword_1EE10A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A368);
  }

  return result;
}

unint64_t sub_1DA30E5AC()
{
  result = qword_1EE10A370;
  if (!qword_1EE10A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A370);
  }

  return result;
}

unint64_t sub_1DA30E604()
{
  result = qword_1EE10A388;
  if (!qword_1EE10A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A388);
  }

  return result;
}

unint64_t sub_1DA30E65C()
{
  result = qword_1EE10A390;
  if (!qword_1EE10A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A390);
  }

  return result;
}

unint64_t sub_1DA30E6B4()
{
  result = qword_1EE10A350;
  if (!qword_1EE10A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A350);
  }

  return result;
}

unint64_t sub_1DA30E70C()
{
  result = qword_1EE10A358;
  if (!qword_1EE10A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A358);
  }

  return result;
}

unint64_t sub_1DA30E764()
{
  result = qword_1EE10A330;
  if (!qword_1EE10A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A330);
  }

  return result;
}

unint64_t sub_1DA30E7BC()
{
  result = qword_1EE10A338;
  if (!qword_1EE10A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A338);
  }

  return result;
}

unint64_t sub_1DA30E814()
{
  result = qword_1EE10A378;
  if (!qword_1EE10A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A378);
  }

  return result;
}

unint64_t sub_1DA30E86C()
{
  result = qword_1EE10A380;
  if (!qword_1EE10A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A380);
  }

  return result;
}

unint64_t sub_1DA30E8C4()
{
  result = qword_1EE10A398;
  if (!qword_1EE10A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A398);
  }

  return result;
}

unint64_t sub_1DA30E91C()
{
  result = qword_1EE10A3A0;
  if (!qword_1EE10A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A3A0);
  }

  return result;
}

unint64_t sub_1DA30E974()
{
  result = qword_1EE10A340;
  if (!qword_1EE10A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A340);
  }

  return result;
}

unint64_t sub_1DA30E9CC()
{
  result = qword_1EE10A348;
  if (!qword_1EE10A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A348);
  }

  return result;
}

unint64_t sub_1DA30EA24()
{
  result = qword_1EE10A3A8;
  if (!qword_1EE10A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A3A8);
  }

  return result;
}

unint64_t sub_1DA30EA7C()
{
  result = qword_1EE10A3B0;
  if (!qword_1EE10A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A3B0);
  }

  return result;
}

uint64_t sub_1DA30EAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_11()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 120);

  return sub_1DA34D0B0();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_27_2@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 96);

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_34_0@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA30CD4C(v2, v1 - a1);
}

uint64_t LinkUsedEvent.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LinkUsedEvent.sessionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LinkUsedEvent.clusterIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LinkUsedEvent.linkUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkUsedEvent(0) + 28);

  return sub_1DA30EF08(v3, a1);
}

uint64_t sub_1DA30EF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkUsedEvent.LinkType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 LinkUsedEvent.rewriteSummary.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkUsedEvent(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v3 + 48);
  return result;
}

void __swiftcall LinkUsedEvent.AppIntentConfiguration.init(bundleID:name:param:)(DeviceExpertIntents::LinkUsedEvent::AppIntentConfiguration *__return_ptr retstr, Swift::String bundleID, Swift::String name, Swift::String_optional param)
{
  retstr->bundleID = bundleID;
  retstr->name = name;
  retstr->param = param;
}

uint64_t sub_1DA30F008()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA350BE0;
  *(inited + 32) = 0x68746C616568;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x7373656E746966;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0x7065656C73;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x646F69726570;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x6C61636964656DLL;
  *(inited + 104) = 0xE700000000000000;
  sub_1DA2EEFDC();

  for (i = 0; i != 80; i += 16)
  {
    v6 = *(inited + i + 32);
    v7 = *(inited + i + 40);
    v2 = sub_1DA34CE70();
  }

  swift_setDeallocating();
  sub_1DA30F798();
  return v2;
}

__n128 LinkUsedEvent.init(sessionIdentifier:clusterIdentifier:linkUsed:rewriteSummary:highlight:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  *a8 = 0xD000000000000016;
  a8[1] = 0x80000001DA355290;
  a8[2] = a1;
  a8[3] = a2;
  a8[4] = a3;
  a8[5] = a4;
  v12 = type metadata accessor for LinkUsedEvent(0);
  sub_1DA30F22C(a5, a8 + v12[7]);
  v13 = a8 + v12[8];
  v14 = *(a6 + 16);
  *v13 = *a6;
  *(v13 + 1) = v14;
  result = *(a6 + 32);
  *(v13 + 2) = result;
  v13[48] = *(a6 + 48);
  *(a8 + v12[9]) = a7;
  return result;
}

uint64_t sub_1DA30F22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkUsedEvent.LinkType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LinkUsedEvent.dictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_1DA34B8C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LinkUsedEvent.LinkType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_1DA306F34();
  sub_1DA34CAC0();
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v13, 0x5F72657473756C63, 0xEA00000000006469);
  v14 = v47;
  v15 = type metadata accessor for LinkUsedEvent(0);
  sub_1DA30EF08(v0 + v15[7], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1DA34B880();
    v16 = sub_1DA34CB30();

    swift_isUniquelyReferenced_nonNull_native();
    v47 = v14;
    sub_1DA30F908(v16, 0xD000000000000010, 0x80000001DA3552B0);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v44 = v15;
    v17 = *v10;
    v18 = v10[1];
    v19 = v10[2];
    v20 = v10[3];
    v22 = v10[4];
    v21 = v10[5];
    v23 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v14;
    sub_1DA30F908(v23, 0xD000000000000010, 0x80000001DA3552D0);
    v24 = v47;
    v47 = v17;
    v48 = v18;
    v49 = v19;
    v50 = v20;
    v51 = v22;
    v52 = v21;
    sub_1DA30F008();
    v25 = sub_1DA34CB30();

    swift_isUniquelyReferenced_nonNull_native();
    v46 = v24;
    sub_1DA30F908(v25, 0x6E5F746E65746E69, 0xEB00000000656D61);
    v26 = v46;
    if (v21)
    {

      v27 = sub_1DA34CB30();
      swift_bridgeObjectRelease_n();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_14();
      sub_1DA30F908(v27, 0x705F746E65746E69, 0xEC0000006D617261);
    }

    else
    {

      v28 = sub_1DA30F7DC(0x705F746E65746E69, 0xEC0000006D617261);
      if (v29)
      {
        v30 = v28;
        swift_isUniquelyReferenced_nonNull_native();
        v47 = v26;
        v31 = *(v26 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
        sub_1DA34CFA0();
        v32 = v47;
        v33 = *(*(v47 + 48) + 16 * v30 + 8);

        v34 = *(*(v32 + 56) + 8 * v30);
        sub_1DA34CFB0();
      }
    }

    v15 = v44;
  }

  v35 = (v1 + v15[8]);
  v36 = *v35;
  v37 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v37, 0x5F65746972776572, 0xEF74706D65747461);
  v38 = v35[1];
  v39 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v39, 0x5F65746972776572, 0xED00006E776F6873);
  v40 = *(v1 + v15[9]);
  v41 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v41, 0x6867696C68676968, 0xE900000000000074);
  return v47;
}

uint64_t sub_1DA30F798()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1DA30F7DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DA34D210();
  sub_1DA34CBE0();
  v6 = sub_1DA34D230();

  return sub_1DA30F854(a1, a2, v6);
}

unint64_t sub_1DA30F854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DA34D160() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1DA30F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DA30F7DC(a2, a3);
  OUTLINED_FUNCTION_1_16(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
  if ((sub_1DA34CFA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1DA30F7DC(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_1DA34D180();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_1DA30FD80(v14, a2, a3, a1, v19);
  }
}

uint64_t sub_1DA30FA60()
{
  result = type metadata accessor for LinkUsedEvent.LinkType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA30FAFC()
{
  result = sub_1DA34B8C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DA30FB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DA30FBBC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DA30FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DA30F7DC(a2, a3);
  OUTLINED_FUNCTION_1_16(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E70, &qword_1DA350CB8);
  if ((sub_1DA34CFA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1DA30F7DC(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1DA34D180();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = sub_1DA34C930();
    v22 = *(v21 - 8);
    v23 = *(v22 + 40);
    v24 = v21;
    v25 = v20 + *(v22 + 72) * v14;

    return v23(v25, a1, v24);
  }

  else
  {
    sub_1DA30FDC8(v14, a2, a3, a1, v19);
  }
}

unint64_t sub_1DA30FD80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA30FDC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DA34C930();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t static PromptManager.shared.getter()
{
  type metadata accessor for PromptManager();

  return swift_initStaticObject();
}

uint64_t sub_1DA30FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DA34CA20();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_17();
  result = sub_1DA34CA30();
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57D0, &qword_1DA350CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA350CC0;
    *(inited + 32) = 0x70615F7472617473;
    *(inited + 40) = 0xE900000000000070;
    *(inited + 48) = sub_1DA310904(a5);
    *(inited + 56) = v20;
    strcpy((inited + 64), "settings_state");
    *(inited + 79) = -18;
    sub_1DA31066C(a6);
    *(inited + 80) = v21;
    *(inited + 88) = v22;
    *(inited + 96) = 0x6E6F697473657571;
    *(inited + 104) = 0xE800000000000000;
    *(inited + 112) = a1;
    *(inited + 120) = a2;
    *(inited + 128) = 0x726577736E61;
    *(inited + 136) = 0xE600000000000000;
    *(inited + 144) = a3;
    *(inited + 152) = a4;

    v23 = sub_1DA34CAC0();
    sub_1DA31041C(v23);

    sub_1DA310C3C(&qword_1EE109030, MEMORY[0x1E69C61F8]);
    sub_1DA34CA90();

    return (*(v15 + 8))(v7, v12);
  }

  return result;
}

uint64_t sub_1DA310150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = sub_1DA34C440();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1DA34C800();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA34CA20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34C420();
  result = sub_1DA34C430();
  if (!v2)
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);

    sub_1DA34C7F0();
    sub_1DA310C3C(qword_1EE109098, MEMORY[0x1E69A14E8]);
    sub_1DA34CA50();
    (*(v7 + 8))(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E80, &qword_1DA350D38);
    v19 = *(v12 + 72);
    v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DA34DC80;
    (*(v12 + 16))(v21 + v20, v15, v11);
    MEMORY[0x1DA74A4D0](v21);

    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

unint64_t sub_1DA31041C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E78, &unk_1DA350D28);
    v2 = sub_1DA34CFE0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];
    v28 = MEMORY[0x1E69E6158];
    v29 = MEMORY[0x1E69C6560];
    *&v27 = v16;
    *(&v27 + 1) = v17;
    sub_1DA2E5B48(&v27, v31);
    sub_1DA2E5B48(v31, v32);
    sub_1DA2E5B48(v32, &v30);

    result = sub_1DA30F7DC(v14, v13);
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      v21 = v20[1];
      *v20 = v14;
      v20[1] = v13;

      v22 = (v2[7] + 40 * v18);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = sub_1DA2E5B48(&v30, v22);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v2[6] + 16 * result);
      *v23 = v14;
      v23[1] = v13;
      result = sub_1DA2E5B48(&v30, v2[7] + 40 * result);
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1DA31066C(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_0_15();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_7:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(a1 + 56) + 16 * v14);
    v16 = v15[1];
    if (v16)
    {
      v25 = *(*(a1 + 48) + 16 * v14 + 8);
      v26 = *(*(a1 + 48) + 16 * v14);
      v27 = *v15;

      sub_1DA34CEC0();

      MEMORY[0x1DA74A690](v26, v25);
      MEMORY[0x1DA74A690](0x7461747327202C27, 0xED000027203A2765);
      MEMORY[0x1DA74A690](v27, v16);
      MEMORY[0x1DA74A690](32039, 0xE200000000000000);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA2FC190(0, *(v11 + 16) + 1, 1, v11);
        v11 = v20;
      }

      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DA2FC190(v17 > 1, v18 + 1, 1, v11);
        v11 = v21;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = 0x3A27656D616E277BLL;
      *(v19 + 40) = 0xEA00000000002720;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
      sub_1DA2F982C();
      v22 = sub_1DA34CAF0();
      v24 = v23;

      MEMORY[0x1DA74A690](v22, v24);

      MEMORY[0x1DA74A690](93, 0xE100000000000000);

      return;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DA310904(uint64_t a1)
{
  v25 = sub_1DA34B640();
  v3 = OUTLINED_FUNCTION_0(v25);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_17();
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_15();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v24 = (v13 + 8);

  for (i = 0; v10; result = )
  {
LABEL_6:
    v17 = (i << 10) | (16 * __clz(__rbit64(v10)));
    v18 = (*(a1 + 48) + v17);
    v19 = v18[1];
    v20 = (*(a1 + 56) + v17);
    v21 = v20[1];
    v22 = *v18;
    v23 = *v20;

    sub_1DA34B630();
    sub_1DA2EEFDC();
    sub_1DA34CE40();
    (*v24)(v1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    sub_1DA2F982C();
    sub_1DA34CAF0();

    sub_1DA34CBB0();

    if (sub_1DA312994() == 35)
    {
    }

    else if (v21)
    {
      MEMORY[0x1DA74A690](v22, v19);

      MEMORY[0x1DA74A690](8250, 0xE200000000000000);
      MEMORY[0x1DA74A690](v23, v21);

      MEMORY[0x1DA74A690](125, 0xE100000000000000);

      return 123;
    }

    v10 &= v10 - 1;
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return 32123;
    }

    v10 = *(a1 + 64 + 8 * v16);
    ++i;
    if (v10)
    {
      i = v16;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t PromptManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PromptManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA310C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA310CB8()
{
  type metadata accessor for TokenGeneratorActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EE10E038 = v0;
  return result;
}

uint64_t sub_1DA310CF4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA310DB8()
{
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA310E14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TokenGeneratorActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1DA310E4C()
{
  v40 = sub_1DA34C580();
  v0 = OUTLINED_FUNCTION_0(v40);
  v2 = v1;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v0);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v38 = sub_1DA34C5C0();
  v10 = OUTLINED_FUNCTION_0(v38);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v37 = sub_1DA34C5A0();
  v18 = OUTLINED_FUNCTION_0(v37);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v39 = sub_1DA34C5E0();
  v26 = OUTLINED_FUNCTION_0(v39);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  (*(v12 + 104))(v17, *MEMORY[0x1E69A12A0], v38);
  sub_1DA34C590();
  sub_1DA34C5D0();
  (*(v20 + 8))(v25, v37);
  sub_1DA34C5B0();
  v34 = v40;
  (*(v2 + 104))(v7, *MEMORY[0x1E69A11A0], v40);
  LOBYTE(v20) = sub_1DA34C570();
  v35 = *(v2 + 8);
  v35(v7, v34);
  v35(v9, v34);
  (*(v28 + 8))(v33, v39);
  return v20 & 1;
}

uint64_t sub_1DA311144()
{
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v0 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v0, qword_1EE109080);
  v1 = sub_1DA34C8C0();
  v2 = sub_1DA34CD90();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_11_2();
    *v3 = 0;
    _os_log_impl(&dword_1DA2E0000, v1, v2, "Prewarming token generator for contextual awareness.", v3, 2u);
    OUTLINED_FUNCTION_6();
  }

  result = sub_1DA311234();
  if (result)
  {
    sub_1DA34C4D0();
  }

  return result;
}

uint64_t sub_1DA311234()
{
  v0 = sub_1DA34C500();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  v2 = sub_1DA34C560();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E88, &qword_1DA350DF8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v42 - v15;
  v17 = sub_1DA34C520();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v26 = qword_1EE10E030;
  if (!qword_1EE10E030)
  {
    if (sub_1DA310E4C())
    {
      sub_1DA34C420();
      sub_1DA34C510();
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
      {
        (*(v20 + 32))(v25, v16, v17);
        v42[2] = "GeneratorActor";
        v42[3] = &unk_1DA350D30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E90, &qword_1DA350E00);
        v34 = *(v20 + 72);
        v35 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v36 = swift_allocObject();
        v42[1] = v36;
        *(v36 + 16) = xmmword_1DA34DC80;
        (*(v20 + 16))(v36 + v35, v25, v17);
        sub_1DA34C4F0();
        v37 = [objc_opt_self() processInfo];
        [v37 processIdentifier];

        sub_1DA34C550();
        (*(v5 + 16))(v10, v12, v2);
        v38 = sub_1DA34C4E0();
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_allocObject();
        v26 = sub_1DA34C4C0();
        qword_1EE10E030 = v26;

        (*(v5 + 8))(v12, v2);
        (*(v20 + 8))(v25, v17);
        return v26;
      }

      sub_1DA312610(v16);
      if (qword_1EE109078 != -1)
      {
        OUTLINED_FUNCTION_0_16();
      }

      v27 = sub_1DA34C8E0();
      OUTLINED_FUNCTION_12_4(v27, qword_1EE109080);
      v28 = sub_1DA34C8C0();
      v29 = sub_1DA34CDA0();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_14;
      }

      v30 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v30);
      v31 = "Failed to load model bundle resource for contextual awareness.";
    }

    else
    {
      if (qword_1EE109078 != -1)
      {
        OUTLINED_FUNCTION_0_16();
      }

      v32 = sub_1DA34C8E0();
      OUTLINED_FUNCTION_12_4(v32, qword_1EE109080);
      v28 = sub_1DA34C8C0();
      v29 = sub_1DA34CDA0();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_14;
      }

      v33 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v33);
      v31 = "GMS model for contextual awareness is not available.";
    }

    _os_log_impl(&dword_1DA2E0000, v28, v29, v31, v12, 2u);
    OUTLINED_FUNCTION_6_9();
LABEL_14:

    return 0;
  }

  return v26;
}

uint64_t sub_1DA3116F0()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EE109790 != -1)
  {
    OUTLINED_FUNCTION_5_10();
  }

  v0 = qword_1EE10E038;

  return MEMORY[0x1EEE6DFA0](sub_1DA311770, v0, 0);
}

uint64_t sub_1DA311770()
{
  OUTLINED_FUNCTION_59();
  if (qword_1EE10E030)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v1 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v1, qword_1EE109080);
    v2 = sub_1DA34C8C0();
    v3 = sub_1DA34CD90();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v4);
      OUTLINED_FUNCTION_17_4(&dword_1DA2E0000, v5, v6, "De-initializing token generator");
      OUTLINED_FUNCTION_6_9();
    }

    qword_1EE10E030 = 0;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA31185C()
{
  OUTLINED_FUNCTION_16();
  v0[8] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E98, &unk_1DA350E10);
  v0[9] = v2;
  v3 = *(v2 - 8);
  v0[10] = v3;
  v4 = *(v3 + 64) + 15;
  v0[11] = swift_task_alloc();
  v5 = sub_1DA34CA70();
  v0[12] = v5;
  v6 = *(v5 - 8);
  v0[13] = v6;
  v7 = *(v6 + 64) + 15;
  v0[14] = swift_task_alloc();
  if (qword_1EE109790 != -1)
  {
    OUTLINED_FUNCTION_5_10();
  }

  v8 = qword_1EE10E038;
  v0[15] = qword_1EE10E038;

  return MEMORY[0x1EEE6DFA0](sub_1DA3119A8, v8, 0);
}

uint64_t sub_1DA3119A8()
{
  OUTLINED_FUNCTION_59();
  v1 = qword_1EE10E030;
  if (qword_1EE10E030 || (qword_1EE10E030 = sub_1DA311234(), , (v1 = qword_1EE10E030) != 0))
  {
    v0[16] = v1;
    v0[5] = v1;
    v2 = *(MEMORY[0x1E69A0928] + 4);

    v3 = swift_task_alloc();
    v0[17] = v3;
    v4 = sub_1DA34C4E0();
    v0[18] = v4;
    OUTLINED_FUNCTION_4_12();
    v7 = sub_1DA312678(v5, 255, v6);
    *v3 = v0;
    v3[1] = sub_1DA311B84;
    v8 = v0[14];
    v9 = v0[8];

    return MEMORY[0x1EEE0A3E0](v8, v0 + 5, v4, v7);
  }

  else
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v10 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v10, qword_1EE109080);
    v11 = sub_1DA34C8C0();
    v12 = sub_1DA34CDA0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v13);
      OUTLINED_FUNCTION_17_4(&dword_1DA2E0000, v14, v15, "Unable to create token generator for contextual awareness.");
      OUTLINED_FUNCTION_6_9();
    }

    v16 = v0[14];
    v17 = v0[11];

    v18 = OUTLINED_FUNCTION_2_13();

    return v19(v18);
  }
}

uint64_t sub_1DA311B84()
{
  OUTLINED_FUNCTION_16();
  v3 = *(*v1 + 136);
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v2;
  *(v2 + 152) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1DA312190;
  }

  else
  {
    v6 = sub_1DA311C90;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DA311C90()
{
  v27 = v0;
  v2 = v0[14];
  v3 = sub_1DA34CA60();
  v5 = v4;
  v0[20] = v3;
  v0[21] = v4;
  if (static DeviceExpertPreferences.shouldLogContextualPrompt.getter())
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v6 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v6, qword_1EE109080);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CD90();

    if (os_log_type_enabled(v7, v8))
    {
      swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_25();
      v26 = v9;
      *v1 = 136642819;
      *(v1 + 4) = sub_1DA300D78(v3, v5, &v26);
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Prompt text: %{sensitive}s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v10 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v10, qword_1EE109080);
  v11 = sub_1DA34C8C0();
  v12 = sub_1DA34CD90();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_9_3(v13);
    _os_log_impl(&dword_1DA2E0000, v11, v12, "Generating answer with contextual awareness...", v3, 2u);
    OUTLINED_FUNCTION_6_9();
  }

  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[11];
  v17 = v0[8];

  v0[7] = v15;
  sub_1DA34CA20();
  sub_1DA312678(&qword_1EE109030, 255, MEMORY[0x1E69C61F8]);
  sub_1DA34CA80();
  v18 = *(MEMORY[0x1E69A0858] + 4);
  v19 = swift_task_alloc();
  v0[22] = v19;
  OUTLINED_FUNCTION_4_12();
  v22 = sub_1DA312678(v20, 255, v21);
  *v19 = v0;
  v19[1] = sub_1DA311F60;
  v23 = v0[11];
  v24 = v0[9];

  return MEMORY[0x1EEE0A390](v24, v22);
}

uint64_t sub_1DA311F60()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v5 = v4;
  v7 = *(*v1 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v6;
  v6[23] = v0;

  if (v0)
  {
    v9 = v6[21];
    v10 = v6[15];
    (*(v6[10] + 8))(v6[11], v6[9]);

    v11 = sub_1DA31231C;
    v12 = v10;
  }

  else
  {
    v13 = v6[15];
    v15 = v6[10];
    v14 = v6[11];
    v16 = v6[9];
    v6[24] = v3;
    v6[25] = v5;
    (*(v15 + 8))(v14, v16);
    v11 = sub_1DA3120C8;
    v12 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1DA3120C8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_1DA3124C0();

  v4 = v0[25];
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8(v4, v1, v5, v2);
}

uint64_t sub_1DA312190()
{
  v23 = v0;
  v2 = v0[19];
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v3 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v3, qword_1EE109080);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_25();
    v22 = v7;
    OUTLINED_FUNCTION_16_2(4.8149e-34);
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_1DA34D1C0();
    v13 = sub_1DA300D78(v11, v12, &v22);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_15_5(&dword_1DA2E0000, v14, v15, "Failed to generate answer with contextual awareness: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v16 = v0[16];
  sub_1DA3124C0();

  v17 = v0[14];
  v18 = v0[11];

  v19 = OUTLINED_FUNCTION_2_13();

  return v20(v19);
}

uint64_t sub_1DA31231C()
{
  v23 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = v0[23];
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v3 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v3, qword_1EE109080);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_25();
    v22 = v7;
    OUTLINED_FUNCTION_16_2(4.8149e-34);
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_1DA34D1C0();
    v13 = sub_1DA300D78(v11, v12, &v22);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_15_5(&dword_1DA2E0000, v14, v15, "Failed to generate answer with contextual awareness: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v16 = v0[16];
  sub_1DA3124C0();

  v17 = v0[14];
  v18 = v0[11];

  v19 = OUTLINED_FUNCTION_2_13();

  return v20(v19);
}

uint64_t sub_1DA3124C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_1DA34CD30();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE10E038;
  v7 = sub_1DA312678(&qword_1EE109788, v5, type metadata accessor for TokenGeneratorActor);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  sub_1DA302998(0, 0, v3, &unk_1DA350E20, v8);
}

uint64_t sub_1DA312610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E88, &qword_1DA350DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA312678(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DA3126C0()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA312768;

  return sub_1DA3116F0();
}

uint64_t sub_1DA312768()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_9()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_2(float a1)
{
  *v3 = a1;

  return MEMORY[0x1EEE6BEC0](v1, v2 + 48, v2 + 16);
}

void OUTLINED_FUNCTION_17_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_1DA312994()
{
  v0 = sub_1DA34D170();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t static ContextType.from(rawValue:)@<X0>(char *a1@<X8>)
{

  v2 = sub_1DA34CFF0();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

DeviceExpertIntents::ContextType_optional __swiftcall ContextType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result.value = OUTLINED_FUNCTION_5_11();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DA312B4C(void *a1@<X8>)
{
  ContextType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static SettingContextType.from(stringValue:)@<X0>(unsigned __int8 *a1@<X8>)
{
  v1 = 0;
  while (1)
  {
    v2 = byte_1F55DF588[v1++ + 32];
    v3 = sub_1DA34CBB0();
    v5 = v4;

    if (v3 == sub_1DA34CBB0() && v5 == v6)
    {
      break;
    }

    v8 = sub_1DA34D160();

    if (v8)
    {
      goto LABEL_10;
    }

    if (v1 == 22)
    {
      v2 = 22;
      goto LABEL_10;
    }
  }

LABEL_10:
  *a1 = v2;
  return result;
}

void SettingContextType.rawValue.getter()
{
  switch(*v0)
  {
    case 4:
    case 6:
    case 9:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
      OUTLINED_FUNCTION_4_13();
      break;
    case 5:
    case 0xA:
      OUTLINED_FUNCTION_2_14();
      break;
    default:
      return;
  }
}

DeviceExpertIntents::SettingContextType_optional __swiftcall SettingContextType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA34D170();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DA3134F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DA32F484();
}

void sub_1DA313520(void *a1@<X8>)
{
  SettingContextType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t BluetoothState.stringValue.getter()
{
  if (*v0)
  {
    result = 6710895;
  }

  else
  {
    result = 28271;
  }

  *v0;
  return result;
}

uint64_t WiFiState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x656E6E6F63736964;
  }

  else
  {
    result = 0x657463656E6E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1DA313640@<X0>(uint64_t *a1@<X8>)
{
  result = WiFiState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LowPowerModeState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6576697463616E69;
  }

  else
  {
    result = 0x657669746361;
  }

  *v0;
  return result;
}

uint64_t sub_1DA3136E0@<X0>(uint64_t *a1@<X8>)
{
  result = LowPowerModeState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppleAccountSignedInState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6F2064656E676973;
  }

  else
  {
    result = 0x692064656E676973;
  }

  *v0;
  return result;
}

uint64_t sub_1DA3137E0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleAccountSignedInState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FamilySharingMemberState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x656D206120746F6ELL;
  }

  else
  {
    result = 0x7265626D656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DA313888@<X0>(uint64_t *a1@<X8>)
{
  result = FamilySharingMemberState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t FamilyOrganizerState.stringValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x657A696E6167726FLL;
  }

  *v0;
  return result;
}

unint64_t sub_1DA313934@<X0>(unint64_t *a1@<X8>)
{
  result = FamilyOrganizerState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FindMyState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x64656C6261736964;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t ActionButtonState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x7A696D6F74737563;
  }

  else
  {
    result = 0x746E656C6973;
  }

  *v0;
  return result;
}

uint64_t sub_1DA313A44@<X0>(uint64_t *a1@<X8>)
{
  result = ActionButtonState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CameraControlState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x7A696D6F74737563;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_1DA313AEC@<X0>(uint64_t *a1@<X8>)
{
  result = CameraControlState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SetupState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x7574657320746F6ELL;
  }

  else
  {
    result = 0x7075746573;
  }

  *v0;
  return result;
}

uint64_t sub_1DA313B90@<X0>(uint64_t *a1@<X8>)
{
  result = SetupState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SilentModeState.stringValue.getter()
{
  if (*v0)
  {
    result = 0x656C697320746F6ELL;
  }

  else
  {
    result = 0x746E656C6973;
  }

  *v0;
  return result;
}

uint64_t sub_1DA313C1C()
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result = OUTLINED_FUNCTION_5_11();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1DA313C9C@<X0>(uint64_t *a1@<X8>)
{
  result = SilentModeState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ControlCenterModuleState.stringValue.getter()
{
  v1 = 0x6564646120746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646461;
  }
}

DeviceExpertIntents::ControlCenterModuleState_optional __swiftcall ControlCenterModuleState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result.value = OUTLINED_FUNCTION_5_11();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DA313D9C@<X0>(uint64_t *a1@<X8>)
{
  result = ControlCenterModuleState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppState.stringValue.getter()
{
  v1 = 0x656572635366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x676E697373696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65657263536E6FLL;
  }
}

DeviceExpertIntents::AppState_optional __swiftcall AppState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result.value = OUTLINED_FUNCTION_5_11();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1DA313E78()
{
  result = qword_1ECBA5EA0;
  if (!qword_1ECBA5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EA0);
  }

  return result;
}

unint64_t sub_1DA313F00()
{
  result = qword_1ECBA5EB8;
  if (!qword_1ECBA5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EB8);
  }

  return result;
}

uint64_t sub_1DA313F84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DA313FDC()
{
  result = qword_1ECBA5ED0;
  if (!qword_1ECBA5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5ED0);
  }

  return result;
}

unint64_t sub_1DA314034()
{
  result = qword_1ECBA5ED8;
  if (!qword_1ECBA5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5ED8);
  }

  return result;
}

unint64_t sub_1DA31408C()
{
  result = qword_1ECBA5EE0;
  if (!qword_1ECBA5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EE0);
  }

  return result;
}

unint64_t sub_1DA3140E4()
{
  result = qword_1ECBA5EE8;
  if (!qword_1ECBA5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EE8);
  }

  return result;
}

unint64_t sub_1DA31413C()
{
  result = qword_1ECBA5EF0;
  if (!qword_1ECBA5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EF0);
  }

  return result;
}

unint64_t sub_1DA314194()
{
  result = qword_1ECBA5EF8;
  if (!qword_1ECBA5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EF8);
  }

  return result;
}

unint64_t sub_1DA3141EC()
{
  result = qword_1ECBA5F00;
  if (!qword_1ECBA5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F00);
  }

  return result;
}

unint64_t sub_1DA314244()
{
  result = qword_1ECBA5F08;
  if (!qword_1ECBA5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F08);
  }

  return result;
}

unint64_t sub_1DA31429C()
{
  result = qword_1ECBA5F10;
  if (!qword_1ECBA5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F10);
  }

  return result;
}

unint64_t sub_1DA3142F4()
{
  result = qword_1ECBA5F18;
  if (!qword_1ECBA5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F18);
  }

  return result;
}

unint64_t sub_1DA31434C()
{
  result = qword_1ECBA5F20;
  if (!qword_1ECBA5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F20);
  }

  return result;
}

unint64_t sub_1DA3143A4()
{
  result = qword_1ECBA5F28;
  if (!qword_1ECBA5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F28);
  }

  return result;
}

unint64_t sub_1DA3143FC()
{
  result = qword_1ECBA5F30;
  if (!qword_1ECBA5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F30);
  }

  return result;
}

unint64_t sub_1DA314454()
{
  result = qword_1ECBA5F38;
  if (!qword_1ECBA5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F38);
  }

  return result;
}

unint64_t sub_1DA3144AC()
{
  result = qword_1ECBA5F40;
  if (!qword_1ECBA5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F40);
  }

  return result;
}

unint64_t sub_1DA314504()
{
  result = qword_1ECBA5F48;
  if (!qword_1ECBA5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F48);
  }

  return result;
}

unint64_t sub_1DA314568()
{
  result = qword_1ECBA5F50;
  if (!qword_1ECBA5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F50);
  }

  return result;
}

uint64_t sub_1DA3145E0@<X0>(uint64_t *a1@<X8>)
{
  result = AppState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingContextType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA314900(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_12(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3149E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_12(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_1DA314AB4(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
      return;
    default:
      OUTLINED_FUNCTION_2_14();
      break;
  }
}

uint64_t OUTLINED_FUNCTION_5_11()
{
}

uint64_t sub_1DA314E40()
{
  if (qword_1EE109938 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE109940;
  type metadata accessor for PromptManager();
  inited = swift_initStaticObject();
  type metadata accessor for AnswerGeneration();
  OUTLINED_FUNCTION_3_8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = inited;
  qword_1EE109A30 = v2;
}

uint64_t static AnswerGeneration.shared.getter()
{
  if (qword_1EE109A28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA314F34()
{
  OUTLINED_FUNCTION_16();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_1DA34BFB0();
  v1[9] = v4;
  OUTLINED_FUNCTION_0_12(v4);
  v1[10] = v5;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = sub_1DA34CA20();
  v1[13] = v8;
  OUTLINED_FUNCTION_0_12(v8);
  v1[14] = v9;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_1DA34BED0();
  v1[16] = v12;
  OUTLINED_FUNCTION_0_12(v12);
  v1[17] = v13;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DA3150A4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_1DA34BA80();
  v0[20] = sub_1DA3161CC(v3);

  v0[21] = sub_1DA34BA80();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1DA315174;
  v5 = v0[8];

  return sub_1DA316524();
}

uint64_t sub_1DA315174()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;
  v4 = *(v3 + 176);
  v5 = *(v3 + 168);
  v6 = *v0;
  OUTLINED_FUNCTION_4_14();
  *v7 = v6;
  *(v9 + 184) = v8;

  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA31527C()
{
  v56 = v0;
  v1 = v0[20];
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_18_3();
  while (v7)
  {
LABEL_6:
    OUTLINED_FUNCTION_16_3();
    v9 = *(v1 + 56);
    OUTLINED_FUNCTION_13_4();
    if (v10)
    {
      v11 = v0[23];
LABEL_14:
      v21 = v0[19];
      v22 = v0[17];
      v54 = v0[15];
      v23 = v0[7];
      v52 = v0[16];
      v53 = v0[8];
      type metadata accessor for AnswerFormatter();
      inited = swift_initStackObject();
      v0[24] = inited;
      v25 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = sub_1DA34CAC0();
      *(inited + 24) = v25;
      sub_1DA34BEE0();
      sub_1DA3170E0();
      v27 = v26;
      v29 = v28;
      v0[25] = v26;
      v0[26] = v28;
      v30 = *(v22 + 8);
      v0[27] = v30;
      v0[28] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v30(v21, v52);
      v31 = *(v53 + 24);
      v32 = sub_1DA34BF40();
      sub_1DA30FEEC(v32, v33, v27, v29, v1, v11);
      v48 = v0[23];
      v49 = v0[20];

      v50 = swift_task_alloc();
      v0[29] = v50;
      *v50 = v0;
      v50[1] = sub_1DA315724;
      v51 = v0[15];

      return sub_1DA31185C();
    }
  }

  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v8 >= v6)
    {
      break;
    }

    ++v5;
    if (*(v4 + 8 * v8))
    {
      goto LABEL_6;
    }
  }

  v11 = v0[23];
  v12 = *(v11 + 64);
  v13 = *(v11 + 32);
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_18_3();
  while (v17)
  {
LABEL_13:
    OUTLINED_FUNCTION_16_3();
    v19 = *(v11 + 56);
    OUTLINED_FUNCTION_13_4();
    if (v20)
    {
      goto LABEL_14;
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      if (qword_1EE109078 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    ++v15;
    if (*(v14 + 8 * v18))
    {
      goto LABEL_13;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0_16();
LABEL_16:
  v34 = sub_1DA34C8E0();
  __swift_project_value_buffer(v34, qword_1EE109080);
  v35 = sub_1DA34C8C0();
  v36 = sub_1DA34CD90();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1DA300D78(0xD000000000000014, 0x80000001DA356180, &v55);
    _os_log_impl(&dword_1DA2E0000, v35, v36, "%s: No matching app or settings context found; returning original result.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v39 = OUTLINED_FUNCTION_7_6();
  v40(v39);
  if (qword_1EE109430 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v41 = v0[6];
  v42 = v41 + *(type metadata accessor for ContextualRewriteResult() + 20);
  v43 = byte_1EE109468;
  v45 = xmmword_1EE109448;
  v44 = xmmword_1EE109458;
  *v42 = xmmword_1EE109438;
  *(v42 + 16) = v45;
  *(v42 + 32) = v44;
  *(v42 + 48) = v43;
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_15();

  return v46();
}

uint64_t sub_1DA315724()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v6 = *(v5 + 232);
  *v4 = *v1;
  v3[30] = v7;
  v3[31] = v8;
  v3[32] = v9;
  v3[33] = v10;
  v3[34] = v0;

  if (v0)
  {
    v11 = v3[26];

    v12 = sub_1DA315EC0;
  }

  else
  {
    v12 = sub_1DA315848;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1DA315848()
{
  v91 = v2;
  v4 = v2[31];
  if (!v4)
  {
    v27 = v2[26];

    v28 = OUTLINED_FUNCTION_7_6();
    v29(v28);
    if (qword_1EE109430 != -1)
    {
      OUTLINED_FUNCTION_0_18();
    }

    OUTLINED_FUNCTION_15_6();
    v81 = xmmword_1EE109438;
    v82 = xmmword_1EE109448;
    v83 = xmmword_1EE109458;
    v84 = byte_1EE109468;
    swift_setDeallocating();
    sub_1DA319EBC();
    OUTLINED_FUNCTION_3_8();
    swift_deallocClassInstance();
    MEMORY[8](v0, v1);
    v30 = v3 + *(type metadata accessor for ContextualRewriteResult() + 20);
    v31 = v82;
    *v30 = v81;
    *(v30 + 16) = v31;
    *(v30 + 32) = v83;
    *(v30 + 48) = v84;
    goto LABEL_22;
  }

  v5 = v2[33];
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v6 = sub_1DA34C8E0();
  __swift_project_value_buffer(v6, qword_1EE109080);

  v7 = sub_1DA34C8C0();
  v8 = sub_1DA34CD90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[30];
    v10 = swift_slowAlloc();
    *&v81 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1DA300D78(0xD000000000000014, 0x80000001DA356180, &v81);
    *(v10 + 12) = 2080;

    v11 = sub_1DA300D78(v9, v4, &v81);

    *(v10 + 14) = v11;
    _os_log_impl(&dword_1DA2E0000, v7, v8, "%s Rewritten Answer: %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v12 = v2[34];
  v13 = v2[25];
  v14 = v2[26];
  v15 = v2[24];
  v16 = v2[18];
  v17 = sub_1DA3169D8(v2[30], v4);
  v19 = v18;

  sub_1DA31795C(v17, v19, v16);
  if (v12)
  {
    v20 = v2[24];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v21 = v2[18];
    v22 = v2[19];
    v23 = v2[15];
    v25 = v2[11];
    v24 = v2[12];

    OUTLINED_FUNCTION_15();
    goto LABEL_23;
  }

  v77 = v2[31];
  v79 = v5;
  v32 = v2[19];
  v33 = v2[17];
  v65 = v2[16];
  v68 = v2[18];
  v34 = v2[11];
  v35 = v2[12];
  v71 = v34;
  v74 = v2[30];
  v36 = v2[9];
  v37 = *(v2[10] + 16);
  v37(v35, v2[7], v36);
  (*(v33 + 16))(v32, v68, v65);
  sub_1DA34BEF0();
  v37(v71, v35, v36);
  if (v17 == v74 && v77 == v19)
  {
  }

  else
  {
    v39 = v2[30];
    v40 = sub_1DA34D160();

    if ((v40 & 1) == 0)
    {

      if (qword_1EE109430 != -1)
      {
        OUTLINED_FUNCTION_0_18();
      }

      v80 = v2[28];
      v41 = v2[24];
      v63 = v2[16];
      v66 = v2[18];
      v72 = v2[27];
      v75 = v2[15];
      v42 = v2[14];
      v69 = v2[13];
      v43 = v2[10];
      v61 = v2[9];
      v62 = v2[12];
      v44 = xmmword_1EE109438;
      v45 = BYTE1(xmmword_1EE109438);
      v85 = *(&xmmword_1EE109438 + 2);
      v86 = WORD3(xmmword_1EE109438);
      v46 = *(&xmmword_1EE109438 + 1);
      v47 = xmmword_1EE109448;
      *(v87 + 3) = DWORD1(xmmword_1EE109448);
      v87[0] = *(&xmmword_1EE109448 + 1);
      v78 = *(&xmmword_1EE109448 + 1);
      v48 = xmmword_1EE109458;
      *(v88 + 3) = DWORD1(xmmword_1EE109458);
      v88[0] = *(&xmmword_1EE109458 + 1);
      v49 = *(&xmmword_1EE109458 + 1);
      v50 = byte_1EE109468;

      (*(v43 + 8))(v62, v61);
      v72(v66, v63);
      (*(v42 + 8))(v75, v69);
      goto LABEL_21;
    }
  }

  v51 = v2[30];
  v52 = v2[24];
  v64 = v2[18];
  v53 = v2[16];
  v73 = v2[15];
  v76 = v2[28];
  v54 = v2[14];
  v67 = v2[13];
  v70 = v2[27];
  v55 = v2[12];
  v56 = v2[9];
  v57 = v2[10];
  v78 = sub_1DA315FF4(v2[32], v79);
  v49 = sub_1DA315FF4(v51, v4);

  (*(v57 + 8))(v55, v56);
  v70(v64, v53);
  (*(v54 + 8))(v73, v67);
  v46 = 0;
  v48 = 0;
  v50 = 0;
  v44 = 1;
  v89 = 1;
  v90 = 0;
  LOBYTE(v81) = 0;
  v45 = 1;
  v47 = 1;
LABEL_21:
  v58 = v2[6];
  (*(v2[10] + 32))(v58, v2[11], v2[9]);
  v59 = v58 + *(type metadata accessor for ContextualRewriteResult() + 20);
  *v59 = v44;
  *(v59 + 1) = v45;
  *(v59 + 2) = v85;
  *(v59 + 6) = v86;
  *(v59 + 8) = v46;
  *(v59 + 16) = v47;
  *(v59 + 17) = v87[0];
  *(v59 + 20) = *(v87 + 3);
  *(v59 + 24) = v78;
  *(v59 + 32) = v48;
  *(v59 + 36) = *(v88 + 3);
  *(v59 + 33) = v88[0];
  *(v59 + 40) = v49;
  *(v59 + 48) = v50;
LABEL_22:
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_15();
LABEL_23:

  return v26();
}

uint64_t sub_1DA315EC0()
{
  v4 = OUTLINED_FUNCTION_7_6();
  v5(v4);
  if (qword_1EE109430 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  OUTLINED_FUNCTION_15_6();
  v9 = xmmword_1EE109438;
  v10 = xmmword_1EE109448;
  v11 = xmmword_1EE109458;
  v12 = byte_1EE109468;
  swift_setDeallocating();
  sub_1DA319EBC();
  OUTLINED_FUNCTION_3_8();
  swift_deallocClassInstance();
  (*(v2 + 8))(v0, v1);
  v6 = v3 + *(type metadata accessor for ContextualRewriteResult() + 20);
  *v6 = v9;
  *(v6 + 16) = v10;
  *(v6 + 32) = v11;
  *(v6 + 48) = v12;
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_15();

  return v7();
}

uint64_t sub_1DA315FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B640();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;
  v25[1] = a2;
  sub_1DA34B630();
  sub_1DA2EEFDC();
  v12 = sub_1DA34CE40();
  result = (*(v7 + 8))(v11, v4);
  v14 = 0;
  v15 = *(v12 + 16);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v17 = (v12 + 40 + 16 * v14);
  while (1)
  {
    if (v15 == v14)
    {

      v24 = *(v16 + 16);

      return v24;
    }

    if (v14 >= *(v12 + 16))
    {
      break;
    }

    ++v14;
    v19 = *(v17 - 1);
    v18 = *v17;
    v17 += 2;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v16;
      if ((result & 1) == 0)
      {
        result = sub_1DA348A4C(0, *(v16 + 16) + 1, 1);
        v16 = v25[0];
      }

      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1DA348A4C(v21 > 1, v22 + 1, 1);
        v16 = v25[0];
      }

      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3161CC(uint64_t a1)
{
  v2 = sub_1DA34BA70();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = (v5 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      goto LABEL_10;
    }

    (*(v5 + 16))(v10, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v2);
    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v17 = sub_1DA34CFF0();

    if (v17 <= 3 && (sub_1DA32FA24(v17, 2) & 1) != 0)
    {
      break;
    }

    (*v16)(v10, v2);
    ++v14;
  }

  v18 = *(v5 + 32);
  v19 = v35;
  v18(v35, v10, v2);
  v18(v36, v19, v2);
  v20 = sub_1DA34BA50();
  if (!v20[2])
  {
    v26 = *v16;
    v27 = OUTLINED_FUNCTION_12_5();
    v28(v27);

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
    return sub_1DA34CAC0();
  }

  v21 = v20[4];
  v22 = v20[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F58, &qword_1DA351F78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DC80;
  *(inited + 32) = v21;
  *(inited + 40) = v22;
  v24 = *(v34 + 16);

  sub_1DA321128(v21, v22, &v37);

  v25 = xmmword_1DA351EC0;
  switch(v37)
  {
    case 1:
      v25 = xmmword_1DA351EE0;
      goto LABEL_12;
    case 2:
      v25 = xmmword_1DA351ED0;
      goto LABEL_12;
    case 3:
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      goto LABEL_14;
    default:
LABEL_12:
      *(inited + 48) = v25;
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
      v29 = sub_1DA34CAC0();
      v30 = *v16;
      v31 = OUTLINED_FUNCTION_12_5();
      v32(v31);
      break;
  }

  return v29;
}

uint64_t sub_1DA316524()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DA34BA70();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3165E8()
{
  v1 = 0;
  v2 = v0[5];
  v3 = *(v0[2] + 16);
  while (v3 != v1)
  {
    (*(v2 + 16))(v0[6], v0[2] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, v0[4]);
    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v4 = sub_1DA34CFF0();

    if (v4 <= 3 && (sub_1DA32FA24(v4, 3) & 1) != 0)
    {
      v11 = v0[7];
      v12 = v0[8];
      v14 = v0[3];
      v13 = v0[4];
      v15 = *(v0[5] + 32);
      v15(v11, v0[6], v13);
      v15(v12, v11, v13);
      v16 = *(v14 + 16);
      v17 = sub_1DA34BA50();
      v0[9] = v17;
      v18 = swift_task_alloc();
      v0[10] = v18;
      *v18 = v0;
      v18[1] = sub_1DA316834;

      return sub_1DA31E0E4(v17);
    }

    (*(v2 + 8))(v0[6], v0[4]);
    ++v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  v5 = sub_1DA34CAC0();
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_1DA316834()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_4_14();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA31693C()
{
  (*(v0[5] + 8))(v0[8], v0[4]);
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1DA3169D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || sub_1DA34CBF0() <= 9)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v5 = sub_1DA34C8E0();
    __swift_project_value_buffer(v5, qword_1EE109080);

    v6 = sub_1DA34C8C0();
    v7 = sub_1DA34CD90();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_1DA300D78(0xD000000000000029, 0x80000001DA3561F0, &v13);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1DA300D78(a1, a2, &v13);
      *(v8 + 22) = 2080;
      v9 = OUTLINED_FUNCTION_12_5();
      *(v8 + 24) = sub_1DA300D78(v9, v10, v11);
      _os_log_impl(&dword_1DA2E0000, v6, v7, "%s: Validation failed for rewritten answer: %s, returning original answer: %s", v8, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  return OUTLINED_FUNCTION_12_5();
}

uint64_t AnswerGeneration.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AnswerGeneration.__deallocating_deinit()
{
  AnswerGeneration.deinit();
  OUTLINED_FUNCTION_3_8();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AnswerGeneration.generateAnswer(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DA316D78;

  return v10(a1, a2);
}

uint64_t sub_1DA316D78()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  v1 = v0[9];
  result = v0[6];
  v3 = v0[7];
  v4 = *(v0[10] + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
}

void OUTLINED_FUNCTION_15_6()
{
  v1 = v0[24];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[6];
}

uint64_t AnswerFormatterError.hashValue.getter()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

unint64_t sub_1DA316FD0()
{
  result = qword_1ECBA5F60;
  if (!qword_1ECBA5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerFormatterError(_BYTE *result, int a2, int a3)
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

void sub_1DA3170E0()
{
  OUTLINED_FUNCTION_33_1();
  v1 = v0;
  LODWORD(v3) = v2;
  v5 = v4;
  v198 = sub_1DA34B9B0();
  v6 = OUTLINED_FUNCTION_0(v198);
  v191 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v199 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F98, &qword_1DA3520B8);
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v185 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FA0, &qword_1DA3520C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_6_10();
  v197 = v19;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v185 - v21;
  i = sub_1DA34BF90();
  v23 = OUTLINED_FUNCTION_0(i);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_10();
  v195 = v28;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v29);
  v194 = &v185 - v30;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1DA34CAC0();
  swift_beginAccess();
  v33 = *(v0 + 16);
  *(v0 + 16) = v32;

  v34 = *(v0 + 24);
  *(v0 + 24) = v31;

  v35 = *(sub_1DA34B980() + 16);

  if (v35)
  {
    v201 = 8227;
    v202 = 0xE200000000000000;
    v36 = sub_1DA34B980();
    sub_1DA31821C(v36, v37, v38, v39, v40, v41, v42, v43, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, i);
    v45 = v44;
    v47 = v46;

    MEMORY[0x1DA74A690](v45, v47);

    v48 = v201;
    v49 = v202;
    sub_1DA2FC190(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v52 = *(v50 + 16);
    v51 = *(v50 + 24);
    v53 = v50;
    v54 = (v52 + 1);
    if (v52 >= v51 >> 1)
    {
LABEL_50:
      v154 = OUTLINED_FUNCTION_9_4(v51);
      sub_1DA2FC190(v154, v54, 1, v155);
      v53 = v156;
    }

    *(v53 + 16) = v54;
    v55 = v53 + 16 * v52;
    v31 = v53;
    *(v55 + 32) = v48;
    *(v55 + 40) = v49;
  }

  v56 = *(sub_1DA34BE10() + 16);

  if (v56)
  {
    v57 = sub_1DA34BE10();
    sub_1DA31821C(v57, v58, v59, v60, v61, v62, v63, v64, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, i);
    OUTLINED_FUNCTION_12_6();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = OUTLINED_FUNCTION_1_19();
      sub_1DA2FC190(v157, v158, v159, v160);
      v31 = v161;
    }

    OUTLINED_FUNCTION_30_3();
    if (v70)
    {
      v162 = OUTLINED_FUNCTION_9_4(v69);
      sub_1DA2FC190(v162, v31, 1, v163);
      v68 = v65;
    }

    OUTLINED_FUNCTION_29_3(v65, v66, v67, v68);
  }

  v71 = *(sub_1DA34BE80() + 16);

  if (v71)
  {
    v72 = sub_1DA34BE80();
    sub_1DA31821C(v72, v73, v74, v75, v76, v77, v78, v79, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, i);
    OUTLINED_FUNCTION_12_6();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v164 = OUTLINED_FUNCTION_1_19();
      sub_1DA2FC190(v164, v165, v166, v167);
      v31 = v168;
    }

    OUTLINED_FUNCTION_30_3();
    if (v70)
    {
      v169 = OUTLINED_FUNCTION_9_4(v84);
      sub_1DA2FC190(v169, v31, 1, v170);
      v83 = v80;
    }

    OUTLINED_FUNCTION_29_3(v80, v81, v82, v83);
  }

  v85 = *(sub_1DA34BA50() + 16);

  if (v85)
  {
    v188 = v31;
    HIDWORD(v187) = v3;
    v86 = v194;
    sub_1DA34BEA0();
    v88 = v195;
    v87 = i;
    (*(v25 + 104))(v195, *MEMORY[0x1E69BCDB8], i);
    OUTLINED_FUNCTION_10_8();
    sub_1DA31A19C(v89, v90);
    sub_1DA34CC40();
    sub_1DA34CC40();
    v91 = *(v25 + 8);
    v25 += 8;
    v91(v88, v87);
    v91(v86, v87);
    v194 = v200;
    v195 = v201;
    v186 = v5;
    v48 = v5;
    v92 = sub_1DA34BA50();
    v49 = 0;
    v93 = *(v92 + 16);
    v51 = v191;
    v189 = v191 + 16;
    v54 = (v191 + 32);
    v5 = (v191 + 8);
    v52 = MEMORY[0x1E69E7CC0];
    v192 = v93;
    v193 = v12;
    for (i = v92; ; v92 = i)
    {
      v3 = v197;
      if (v49 == v93)
      {
        v94 = 1;
        v49 = v93;
      }

      else
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v51 = *(v92 + 16);
        if (v49 >= v51)
        {
          goto LABEL_48;
        }

        v25 = v190;
        v95 = *(v191 + 80);
        OUTLINED_FUNCTION_25_1();
        v99 = v96 + v97 + *(v98 + 72) * v49;
        v100 = *(v12 + 48);
        *v25 = v49;
        (*(v98 + 16))(v25 + v100, v99, v198);
        sub_1DA31A250(v25, v3, &qword_1ECBA5F98, &qword_1DA3520B8);
        v94 = 0;
        ++v49;
      }

      __swift_storeEnumTagSinglePayload(v3, v94, 1, v12);
      sub_1DA31A250(v3, v22, &qword_1ECBA5FA0, &qword_1DA3520C0);
      if (__swift_getEnumTagSinglePayload(v22, 1, v12) == 1)
      {
        break;
      }

      v48 = *v22;
      (*v54)(v199, &v22[*(v12 + 48)], v198);
      if (v195 == v194)
      {
        v51 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_49;
        }

        v200 = v48 + 1;
        v201 = sub_1DA34D140();
        v202 = v101;
        MEMORY[0x1DA74A690](8238, 0xE200000000000000);
        v103 = v201;
        v102 = v202;
      }

      else
      {
        v102 = 0xE200000000000000;
        v103 = 8237;
      }

      v201 = v103;
      v202 = v102;
      v104 = sub_1DA34B980();
      v105 = v1;
      sub_1DA31821C(v104, v106, v107, v108, v109, v110, v111, v112, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, i);
      v114 = v113;
      v116 = v115;

      MEMORY[0x1DA74A690](v114, v116);

      v25 = v201;
      v117 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = OUTLINED_FUNCTION_1_19();
        sub_1DA2FC190(v120, v121, v122, v123);
        v52 = v124;
      }

      v119 = *(v52 + 16);
      v118 = *(v52 + 24);
      v48 = (v119 + 1);
      if (v119 >= v118 >> 1)
      {
        v125 = OUTLINED_FUNCTION_7_7(v118);
        sub_1DA2FC190(v125, v126, v127, v52);
        v52 = v128;
      }

      (*v5)(v199, v198);
      *(v52 + 16) = v48;
      v51 = v52 + 16 * v119;
      *(v51 + 32) = v25;
      *(v51 + 40) = v117;
      v1 = v105;
      v93 = v192;
      v12 = v193;
    }

    v201 = v52;
    v129 = OUTLINED_FUNCTION_40();
    __swift_instantiateConcreteTypeFromMangledNameV2(v129, v130);
    OUTLINED_FUNCTION_11_3(&qword_1EE109F60);
    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_12_6();

    v31 = v188;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v171 = OUTLINED_FUNCTION_1_19();
      sub_1DA2FC190(v171, v172, v173, v174);
      v31 = v175;
    }

    LOBYTE(v3) = BYTE4(v187);
    v132 = *(v31 + 16);
    v131 = *(v31 + 24);
    if (v132 >= v131 >> 1)
    {
      v176 = OUTLINED_FUNCTION_9_4(v131);
      sub_1DA2FC190(v176, v132 + 1, 1, v31);
      v31 = v177;
    }

    *(v31 + 16) = v132 + 1;
    v133 = v31 + 16 * v132;
    *(v133 + 32) = &qword_1ECBA5A78;
    *(v133 + 40) = qword_1DA34EA00;
  }

  v134 = *(_s19DeviceExpertIntents6ActionV22AppIntentConfigurationV10parametersSaySSGSgvg_0() + 16);

  if (v134)
  {
    v135 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV10parametersSaySSGSgvg_0();
    v143 = v135;
    if (v3)
    {
      v144 = *(v1 + 24);
      *(v1 + 24) = v143;
    }

    else
    {
      sub_1DA31821C(v135, v136, v137, v138, v139, v140, v141, v142, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, i);
      v146 = v145;
      v148 = v147;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = OUTLINED_FUNCTION_1_19();
        sub_1DA2FC190(v178, v179, v180, v181);
        v31 = v182;
      }

      v150 = *(v31 + 16);
      v149 = *(v31 + 24);
      if (v150 >= v149 >> 1)
      {
        v183 = OUTLINED_FUNCTION_9_4(v149);
        sub_1DA2FC190(v183, v150 + 1, 1, v31);
        v31 = v184;
      }

      *(v31 + 16) = v150 + 1;
      v151 = v31 + 16 * v150;
      *(v151 + 32) = v146;
      *(v151 + 40) = v148;
    }
  }

  v201 = v31;
  v152 = OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(v152, v153);
  OUTLINED_FUNCTION_11_3(&qword_1EE109F60);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_32_1();
}

uint64_t sub_1DA31795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = sub_1DA34B9B0();
  v6 = OUTLINED_FUNCTION_0(v113);
  v109 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_10();
  v112 = v10;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v11);
  v108 = v104 - v12;
  v105 = sub_1DA34BF90();
  v13 = OUTLINED_FUNCTION_0(v105);
  v110 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_10();
  v107 = v17;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v104 - v19;
  v21 = sub_1DA34B640();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v114 = a3;
  sub_1DA34BEC0();
  v115 = a1;
  v116 = a2;
  v121 = 2570;
  v122 = 0xE200000000000000;
  v119 = 10;
  v120 = 0xE100000000000000;
  sub_1DA2EEFDC();
  v115 = sub_1DA34CE70();
  v116 = v30;
  sub_1DA34B630();
  v31 = sub_1DA34CE60();
  v33 = v32;
  v34 = v29;
  v35 = v110;
  (*(v24 + 8))(v34, v21);

  v36 = sub_1DA31975C(v31, v33);
  v37 = (v35 + 104);
  v38 = MEMORY[0x1E69BCDC0];
  v106 = (v35 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  if (v36)
  {
    v39 = *v37;
    v40 = v105;
    (*v37)(v20, *MEMORY[0x1E69BCDB8], v105);
  }

  else
  {
    v40 = v105;
    v41 = sub_1DA319778(v31, v33);
    v39 = *v37;
    if (v41)
    {
      v42 = *MEMORY[0x1E69BCDC8];
    }

    else
    {
      v42 = *v38;
    }

    v39(v20, v42, v40);
  }

  sub_1DA34BEB0();
  sub_1DA34BEA0();
  v43 = *v38;
  v44 = v107;
  v105 = v39;
  v39(v107, v43, v40);
  OUTLINED_FUNCTION_10_8();
  v47 = sub_1DA31A19C(v45, v46);
  sub_1DA34CC40();
  v104[1] = v47;
  sub_1DA34CC40();
  v50 = *(v35 + 8);
  v49 = v35 + 8;
  v48 = v50;
  v51 = v44;
  v52 = v20;
  v50(v51, v40);
  v53 = v20;
  v54 = v40;
  v50(v53, v40);
  if (v115 == v121)
  {
    v55 = v111;
    v56 = v123;
    sub_1DA318990(v31, v33);
    if (v56)
    {
      v57 = sub_1DA34BED0();
      OUTLINED_FUNCTION_12(v57);
      (*(v58 + 8))(v114);
    }

    sub_1DA34BE90();
    goto LABEL_36;
  }

  v110 = v49;
  v115 = v31;
  v116 = v33;
  v121 = 10;
  v122 = 0xE100000000000000;
  v59 = sub_1DA34CE50();

  v60 = v59[2];
  v55 = v111;
  if (!v60)
  {
    goto LABEL_18;
  }

  v61 = v59[4];
  v62 = v59[5];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  v64 = v123;
  if (v63)
  {
    v65 = v59[5];

    sub_1DA318990(v61, v62);
    if (v64)
    {
      v66 = sub_1DA34BED0();
      OUTLINED_FUNCTION_12(v66);
      (*(v67 + 8))(v114);
    }

    sub_1DA34BE20();
    v69 = v59[2];
  }

  else
  {
    v69 = v59[2];
  }

  if (v69 < 2)
  {
LABEL_18:

LABEL_36:
    result = *(v55 + 24);
    if (*(result + 16))
    {

      return sub_1DA34BE40();
    }

    return result;
  }

  v123 = v64;
  v70 = sub_1DA31A1E4(1uLL, v60, v59);
  v72 = v71;
  v74 = v73;
  v76 = v75;

  v115 = v70;
  v116 = v72;
  v117 = v74;
  v118 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F90, &qword_1DA3520B0);
  sub_1DA2FFBE8(&qword_1EE108FE0, &qword_1ECBA5F90, &qword_1DA3520B0);
  sub_1DA34CAF0();
  swift_unknownObjectRelease();
  sub_1DA34BEA0();
  v77 = v107;
  v105(v107, *MEMORY[0x1E69BCDB8], v54);
  sub_1DA34CC40();
  sub_1DA34CC40();
  v48(v77, v54);
  v48(v52, v54);
  if (v115 == v121)
  {
    sub_1DA3198E4();
  }

  else
  {
    sub_1DA319BD0();
  }

  v79 = v78;
  v80 = v108;

  v81 = 0;
  v82 = (v109 + 16);
  v110 = *(v79 + 16);
  v106 = v109 + 32;
  v107 = (v109 + 8);
  for (i = (v79 + 40); ; i += 2)
  {
    if (v110 == v81)
    {

      v55 = v111;
      goto LABEL_36;
    }

    if (v81 >= *(v79 + 16))
    {
      break;
    }

    v84 = *(i - 1);
    v85 = *i;

    sub_1DA34B9A0();
    v86 = v123;
    sub_1DA318990(v84, v85);
    v123 = v86;
    if (v86)
    {

      (*v107)(v80, v113);
      v102 = sub_1DA34BED0();
      OUTLINED_FUNCTION_12(v102);
      return (*(v103 + 8))(v114);
    }

    sub_1DA34B990();
    (*v82)(v112, v80, v113);
    v87 = sub_1DA34BE50();
    v89 = v88;
    v90 = *v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v89 = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1DA2FC354();
      v90 = v100;
      *v89 = v100;
    }

    v93 = *(v90 + 16);
    v92 = *(v90 + 24);
    if (v93 >= v92 >> 1)
    {
      OUTLINED_FUNCTION_9_4(v92);
      sub_1DA2FC354();
      v90 = v101;
      *v89 = v101;
    }

    *(v90 + 16) = v93 + 1;
    v94 = v109;
    v95 = *(v109 + 80);
    OUTLINED_FUNCTION_25_1();
    v97 = v90 + v96 + *(v94 + 72) * v93;
    v98 = v113;
    (*(v94 + 32))(v97, v112, v113);
    v87(&v115, 0);
    v99 = *(v94 + 8);
    v80 = v108;
    result = v99(v108, v98);
    ++v81;
  }

  __break(1u);
  return result;
}

void sub_1DA31821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33_1();
  a19 = v21;
  a20 = v22;
  v126 = v20;
  v24 = v23;
  v25 = sub_1DA34BCC0();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18_4(v32 - v31);
  v119 = sub_1DA34BBF0();
  v33 = OUTLINED_FUNCTION_0(v119);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1_4();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  OUTLINED_FUNCTION_6_10();
  v130 = v43;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v118 - v45;
  v47 = sub_1DA34BA10();
  v48 = OUTLINED_FUNCTION_0(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1_4();
  v55 = v54 - v53;
  v139 = 0;
  v140 = 0xE000000000000000;
  v56 = *(v24 + 16);
  if (!v56)
  {
LABEL_23:
    OUTLINED_FUNCTION_32_1();
    return;
  }

  v122 = v25;
  v58 = *(v50 + 16);
  v57 = v50 + 16;
  v134 = v58;
  v59 = *(v57 + 64);
  OUTLINED_FUNCTION_25_1();
  v61 = v24 + v60;
  v132 = (v57 - 8);
  v118[2] = v28 + 32;
  v118[1] = v28 + 8;
  v133 = *(v57 + 56);
  v129 = *MEMORY[0x1E69BCC98];
  v125 = v35 + 32;
  v124 = v35 + 8;
  v123 = *MEMORY[0x1E69BCCA0];
  v62 = v119;
  v121 = v57;
  v131 = v47;
  while (1)
  {
    v63 = v40;
    v134(v55, v61, v47);
    sub_1DA34BA00();
    v64 = v47;
    v65 = sub_1DA34B9D0();
    if (__swift_getEnumTagSinglePayload(v46, 1, v65) == 1)
    {
      (*v132)(v55, v64);
      v47 = v64;
      goto LABEL_22;
    }

    v66 = v130;
    sub_1DA31A11C(v46, v130);
    v67 = *(v65 - 8);
    v68 = v67[11];
    v69 = OUTLINED_FUNCTION_28_2();
    v71 = v70(v69);
    if (v71 == v129)
    {
      v72 = v67[12];
      v73 = OUTLINED_FUNCTION_28_2();
      v74(v73);
      OUTLINED_FUNCTION_16_4(&a16);
      v75(v63, v66, v62);
      if (_s19DeviceExpertIntents7TextRunV0D13ConfigurationV11highlightedSbvg_0())
      {
        *&v137 = 10794;
        *(&v137 + 1) = 0xE200000000000000;
        v76 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        v40 = v63;
        MEMORY[0x1DA74A690](v76);

        MEMORY[0x1DA74A690](10794, 0xE200000000000000);
        v47 = *(&v137 + 1);
        v78 = *(&v137 + 1);
        v77 = v137;
      }

      else
      {
        v77 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        v40 = v63;
        v47 = v78;
      }

      MEMORY[0x1DA74A690](v77, v78);

      OUTLINED_FUNCTION_16_4(&a15);
      v99(v40, v62);
      v100 = OUTLINED_FUNCTION_31_1();
      v101(v100);
      goto LABEL_22;
    }

    if (v71 != v123)
    {
      v102 = v131;
      (*v132)(v55, v131);
      v103 = v67[1];
      v104 = OUTLINED_FUNCTION_28_2();
      v47 = v102;
      v105(v104);
      v40 = v63;
      goto LABEL_22;
    }

    v79 = v67[12];
    v80 = OUTLINED_FUNCTION_28_2();
    v81(v80);
    OUTLINED_FUNCTION_16_4(&a9);
    v82(v127, v66, v122);
    v83 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
    v85 = v84;
    v86 = v131;
    v138 = v131;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v137);
    v134(boxed_opaque_existential_0, v55, v86);
    v88 = v126;
    swift_beginAccess();
    sub_1DA31A18C(&v137, v136);
    v89 = *(v88 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v135 = *(v88 + 16);
    v90 = v135;
    *(v88 + 16) = 0x8000000000000000;
    v120 = v83;
    v128 = v85;
    v91 = sub_1DA30F7DC(v83, v85);
    if (__OFADD__(v90[2], (v92 & 1) == 0))
    {
      break;
    }

    v93 = v91;
    v94 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F88, &qword_1DA3520A8);
    if (sub_1DA34CFA0())
    {
      v95 = sub_1DA30F7DC(v120, v128);
      v97 = v122;
      v98 = v127;
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_26;
      }

      v93 = v95;
    }

    else
    {
      v97 = v122;
      v98 = v127;
    }

    v106 = v135;
    if (v94)
    {
      v107 = (v135[7] + 32 * v93);
      __swift_destroy_boxed_opaque_existential_1(v107);
      sub_1DA31A18C(v136, v107);
    }

    else
    {
      v135[(v93 >> 6) + 8] |= 1 << v93;
      v108 = (v106[6] + 16 * v93);
      v109 = v128;
      *v108 = v120;
      v108[1] = v109;
      sub_1DA31A18C(v136, (v106[7] + 32 * v93));
      v110 = v106[2];
      v111 = __OFADD__(v110, 1);
      v112 = v110 + 1;
      if (v111)
      {
        goto LABEL_25;
      }

      v106[2] = v112;
    }

    v113 = *(v126 + 16);
    *(v126 + 16) = v106;

    swift_endAccess();
    *&v137 = 91;
    *(&v137 + 1) = 0xE100000000000000;
    v114 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
    MEMORY[0x1DA74A690](v114);

    MEMORY[0x1DA74A690](93, 0xE100000000000000);
    v47 = *(&v137 + 1);
    MEMORY[0x1DA74A690](v137, *(&v137 + 1));

    OUTLINED_FUNCTION_16_4(&v141);
    v115(v98, v97);
    v116 = OUTLINED_FUNCTION_31_1();
    v117(v116);
    v62 = v119;
    v40 = v63;
LABEL_22:
    sub_1DA2EF188(v46, &qword_1ECBA5F80, &qword_1DA3520A0);
    v61 += v133;
    if (!--v56)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1DA34D180();
  __break(1u);
}

uint64_t sub_1DA318990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F70, &qword_1DA352098);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_18_4(&v127 - v6);
  v139 = sub_1DA34B640();
  v7 = OUTLINED_FUNCTION_0(v139);
  v151 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18_4(v12 - v11);
  v13 = sub_1DA34BA10();
  v14 = OUTLINED_FUNCTION_0(v13);
  v147 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v127 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v127 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v127 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v127 - v30;
  v150 = a1;
  v154 = a2;
  v32 = sub_1DA34CB30();
  v33 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v34 = v152;
  v35 = sub_1DA319F3C(0xD000000000000044, 0x80000001DA3562C0, 0);
  if (v34)
  {

    return v13;
  }

  v37 = v35;
  v135 = v31;
  v141 = v29;
  v142 = v26;
  v145 = v23;
  v134 = v13;
  v129 = v20;
  v149 = 0;
  v136 = v32;
  v38 = [v32 length];
  v39 = v154;
  v40 = sub_1DA319560(v150, v154, 0, v38);
  v41 = sub_1DA323DCC();
  v42 = v147;
  v144 = v41;
  if (v41)
  {
    v128 = v37;
    v146 = v40 & 0xC000000000000001;
    swift_beginAccess();
    v43 = 0;
    v44 = 0;
    v130 = v40 & 0xFFFFFFFFFFFFFF8;
    v148 = (v42 + 32);
    v133 = v151 + 8;
    v132 = v42 + 16;
    v131 = v42 + 8;
    v13 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_27_3();
    v143 = v40;
    while (1)
    {
      if (v146)
      {
        v45 = MEMORY[0x1DA74A960](v43, v40);
      }

      else
      {
        if (v43 >= *(v130 + 16))
        {
          goto LABEL_62;
        }

        v45 = *(v40 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v48 = [v45 range];
      v151 = v48;
      v152 = v49;
      if (v44 < v48)
      {
        if (__OFSUB__(v48, v44))
        {
          goto LABEL_61;
        }

        v50 = [v136 substringWithRange_];
        v51 = sub_1DA34CB40();
        v53 = v52;

        v55 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v55 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v55)
        {
          MEMORY[0x1EEE9AC00](v54);
          *(&v127 - 4) = v51;
          *(&v127 - 3) = v53;
          *(&v127 - 16) = 0;
          OUTLINED_FUNCTION_4_15();
          sub_1DA31A19C(&qword_1EE10ACC8, v56);
          OUTLINED_FUNCTION_21_2();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = 0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = *(v13 + 16);
            OUTLINED_FUNCTION_2_15();
            sub_1DA2FC27C();
            v13 = v108;
          }

          v58 = *(v13 + 24);
          v59 = v135;
          if (*(v13 + 16) >= v58 >> 1)
          {
            OUTLINED_FUNCTION_7_7(v58);
            sub_1DA2FC27C();
            v13 = v109;
          }

          v60 = OUTLINED_FUNCTION_13_5();
          v61(v60, v59, v42);
        }

        else
        {
        }
      }

      v62 = sub_1DA34CB30();
      [v46 rangeWithName_];

      sub_1DA34CD70();
      if ((v63 & 1) == 0)
      {
        v64 = sub_1DA34CC20();
        v65 = MEMORY[0x1DA74A660](v64);
        v67 = v66;

        v153[0] = v65;
        v153[1] = v67;
        v42 = v138;
        sub_1DA34B620();
        sub_1DA2EEFDC();
        v68 = sub_1DA34CE60();
        v70 = v69;
        OUTLINED_FUNCTION_16_4(&v156);
        v71(v42, v139);

        v72 = *(v140 + 16);
        if (!*(v72 + 16))
        {

          OUTLINED_FUNCTION_27_3();
LABEL_55:

          v77 = v137;
          __swift_storeEnumTagSinglePayload(v137, 1, 1, v42);
LABEL_57:
          v123 = v128;

          sub_1DA2EF188(v77, &qword_1ECBA5F70, &qword_1DA352098);
          sub_1DA31A0A8();
          swift_allocError();
          swift_willThrow();

          return v13;
        }

        v73 = *(v140 + 16);

        v74 = sub_1DA30F7DC(v68, v70);
        v76 = v75;

        OUTLINED_FUNCTION_27_3();
        if ((v76 & 1) == 0)
        {

          goto LABEL_55;
        }

        sub_1DA3013A4(*(v72 + 56) + 32 * v74, v153);

        v77 = v137;
        v78 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v77, v78 ^ 1u, 1, v42);
        if (__swift_getEnumTagSinglePayload(v77, 1, v42) == 1)
        {

          v13 = v143;
          goto LABEL_57;
        }

        v79 = *v148;
        v80 = v141;
        (*v148)(v141, v77, v42);
        OUTLINED_FUNCTION_16_4(&v155);
        v81(v142, v80, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = *(v13 + 16);
          OUTLINED_FUNCTION_2_15();
          sub_1DA2FC27C();
          v13 = v105;
        }

        v83 = *(v13 + 16);
        v82 = *(v13 + 24);
        if (v83 >= v82 >> 1)
        {
          OUTLINED_FUNCTION_7_7(v82);
          sub_1DA2FC27C();
          v13 = v106;
        }

        v84 = v147;
        (*(v147 + 8))(v141, v42);
        *(v13 + 16) = v83 + 1;
        v85 = *(v84 + 80);
        OUTLINED_FUNCTION_25_1();
        v79((v13 + v86 + *(v84 + 72) * v83), v142, v42);
      }

      v87 = sub_1DA34CB30();
      [v46 rangeWithName_];

      v39 = v154;
      sub_1DA34CD70();
      if (v88)
      {

        v89 = v151;
      }

      else
      {
        v90 = sub_1DA34CC20();
        v91 = MEMORY[0x1DA74A660](v90);
        v93 = v92;

        MEMORY[0x1EEE9AC00](v94);
        *(&v127 - 4) = v91;
        *(&v127 - 3) = v93;
        *(&v127 - 16) = 1;
        OUTLINED_FUNCTION_4_15();
        sub_1DA31A19C(&qword_1EE10ACC8, v95);
        OUTLINED_FUNCTION_21_2();

        v96 = swift_isUniquelyReferenced_nonNull_native();
        v149 = 0;
        if ((v96 & 1) == 0)
        {
          v101 = *(v13 + 16);
          OUTLINED_FUNCTION_2_15();
          sub_1DA2FC27C();
          v13 = v102;
        }

        v97 = *(v13 + 24);
        v39 = v154;
        v89 = v151;
        if (*(v13 + 16) >= v97 >> 1)
        {
          OUTLINED_FUNCTION_7_7(v97);
          sub_1DA2FC27C();
          v13 = v103;
        }

        v98 = OUTLINED_FUNCTION_13_5();
        v99(v98, v145, v42);
      }

      v44 = &v89[v152];
      if (__OFADD__(v89, v152))
      {
        goto LABEL_60;
      }

      ++v43;
      v100 = v47 == v144;
      v40 = v143;
      if (v100)
      {

        v37 = v128;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

    v44 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_27_3();
LABEL_43:
    v110 = v136;
    if (v44 >= [v136 length])
    {

      return v13;
    }

    v39 = v37;
    v111 = [v110 length];
    if (!__OFSUB__(v111, v44))
    {
      v112 = [v110 substringWithRange_];
      v113 = sub_1DA34CB40();
      v115 = v114;

      v117 = HIBYTE(v115) & 0xF;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v117 = v113 & 0xFFFFFFFFFFFFLL;
      }

      if (!v117)
      {

        return v13;
      }

      MEMORY[0x1EEE9AC00](v116);
      *(&v127 - 4) = v113;
      *(&v127 - 3) = v115;
      *(&v127 - 16) = 0;
      OUTLINED_FUNCTION_4_15();
      sub_1DA31A19C(v118, v119);
      OUTLINED_FUNCTION_21_2();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_64:
  v124 = *(v13 + 16);
  OUTLINED_FUNCTION_2_15();
  sub_1DA2FC27C();
  v13 = v125;
LABEL_49:
  v121 = *(v13 + 16);
  v120 = *(v13 + 24);
  v122 = v129;
  if (v121 >= v120 >> 1)
  {
    OUTLINED_FUNCTION_7_7(v120);
    sub_1DA2FC27C();
    v13 = v126;
  }

  *(v13 + 16) = v121 + 1;
  (*(v147 + 32))(v13 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v121, v122, v42);
  return v13;
}

uint64_t sub_1DA319560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DA34CB30();
  v8 = [v4 matchesInString:v7 options:0 range:{a3, a4}];

  sub_1DA31A044();
  v9 = sub_1DA34CC70();

  return v9;
}

uint64_t sub_1DA3195E4()
{
  v0 = sub_1DA34BBF0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1DA31A19C(&qword_1EE109F18, MEMORY[0x1E69BCD28]);
  sub_1DA34C7B0();
  return sub_1DA34B9F0();
}

uint64_t sub_1DA319700(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  result = sub_1DA34BBC0();
  if (a4)
  {
    return sub_1DA34BBA0();
  }

  return result;
}

uint64_t sub_1DA319790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DA319F3C(a3, a4, 16);
  if (result)
  {
    v10 = result;
    v11 = sub_1DA34CB30();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F68, ">X");
    OUTLINED_FUNCTION_3_13();
    sub_1DA2FFBE8(v12, &qword_1ECBA5F68, ">X");
    sub_1DA2EEFDC();
    v13 = sub_1DA34CE00();
    v15 = [v10 firstMatchInString:v11 options:0 range:{v13, v14, a1, a2, 15}];

    if (v15)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1DA3198E4()
{
  OUTLINED_FUNCTION_33_1();
  v3 = v2;
  v5 = v4;
  v38 = sub_1DA34B640();
  v6 = OUTLINED_FUNCTION_0(v38);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1DA319F3C(0xD000000000000023, 0x80000001DA356290, 24);
  if (v9)
  {
    v39 = v5;
    v40 = v3;
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F68, ">X");
    OUTLINED_FUNCTION_3_13();
    sub_1DA2FFBE8(v12, &qword_1ECBA5F68, ">X");
    sub_1DA2EEFDC();
    v13 = OUTLINED_FUNCTION_22_3();
    v11 = OUTLINED_FUNCTION_20_4(v13, v14);
  }

  else
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1DA323DCC(v11);
  v37 = v10;
  if (!v15)
  {
LABEL_20:

    OUTLINED_FUNCTION_32_1();
    return;
  }

  v16 = v15;
  if (v15 >= 1)
  {
    OUTLINED_FUNCTION_26_2();
    v17 = MEMORY[0x1E69E7CC0];
    v18 = 0x1E85C0000uLL;
    v19 = &selRef_rangeAtIndex_;
    do
    {
      if (v0)
      {
        v20 = MEMORY[0x1DA74A960](v1, v11);
      }

      else
      {
        v20 = *(v11 + 8 * v1 + 32);
      }

      v21 = v20;
      if ([v20 *(v18 + 4088)] < 3 || (objc_msgSend(v21, *v19, 2), OUTLINED_FUNCTION_25_3(), sub_1DA34CD70(), (v22 & 1) != 0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_25_3();
        v23 = sub_1DA34CC20();
        v24 = MEMORY[0x1DA74A660](v23);
        v26 = v25;

        v39 = v24;
        v40 = v26;
        sub_1DA34B630();
        sub_1DA2EEFDC();
        v19 = &v39;
        sub_1DA34CE60();
        v27 = OUTLINED_FUNCTION_17_5();
        v28(v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v17 + 16);
          v31 = OUTLINED_FUNCTION_2_15();
          sub_1DA2FC190(v31, v32, v33, v17);
          v17 = v34;
        }

        v18 = *(v17 + 16);
        v29 = *(v17 + 24);
        if (v18 >= v29 >> 1)
        {
          v35 = OUTLINED_FUNCTION_9_4(v29);
          sub_1DA2FC190(v35, v18 + 1, 1, v17);
          v17 = v36;
        }

        OUTLINED_FUNCTION_14_5();
      }

      ++v1;
    }

    while (v16 != v1);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1DA319BD0()
{
  OUTLINED_FUNCTION_33_1();
  v3 = v2;
  v5 = v4;
  v38 = sub_1DA34B640();
  v6 = OUTLINED_FUNCTION_0(v38);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1DA319F3C(0xD00000000000001CLL, 0x80000001DA356270, 24);
  if (v9)
  {
    v39 = v5;
    v40 = v3;
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F68, ">X");
    OUTLINED_FUNCTION_3_13();
    sub_1DA2FFBE8(v12, &qword_1ECBA5F68, ">X");
    sub_1DA2EEFDC();
    v13 = OUTLINED_FUNCTION_22_3();
    v11 = OUTLINED_FUNCTION_20_4(v13, v14);
  }

  else
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1DA323DCC(v11);
  v37 = v10;
  if (!v15)
  {
LABEL_20:

    OUTLINED_FUNCTION_32_1();
    return;
  }

  v16 = v15;
  if (v15 >= 1)
  {
    OUTLINED_FUNCTION_26_2();
    v17 = MEMORY[0x1E69E7CC0];
    v18 = 0x1E85C0000uLL;
    v19 = &selRef_rangeAtIndex_;
    do
    {
      if (v0)
      {
        v20 = MEMORY[0x1DA74A960](v1, v11);
      }

      else
      {
        v20 = *(v11 + 8 * v1 + 32);
      }

      v21 = v20;
      if ([v20 *(v18 + 4088)] < 2 || (objc_msgSend(v21, *v19, 1), OUTLINED_FUNCTION_25_3(), sub_1DA34CD70(), (v22 & 1) != 0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_25_3();
        v23 = sub_1DA34CC20();
        v24 = MEMORY[0x1DA74A660](v23);
        v26 = v25;

        v39 = v24;
        v40 = v26;
        sub_1DA34B630();
        sub_1DA2EEFDC();
        v19 = &v39;
        sub_1DA34CE60();
        v27 = OUTLINED_FUNCTION_17_5();
        v28(v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v17 + 16);
          v31 = OUTLINED_FUNCTION_2_15();
          sub_1DA2FC190(v31, v32, v33, v17);
          v17 = v34;
        }

        v18 = *(v17 + 16);
        v29 = *(v17 + 24);
        if (v18 >= v29 >> 1)
        {
          v35 = OUTLINED_FUNCTION_9_4(v29);
          sub_1DA2FC190(v35, v18 + 1, 1, v17);
          v17 = v36;
        }

        OUTLINED_FUNCTION_14_5();
      }

      ++v1;
    }

    while (v16 != v1);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1DA319EBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DA319EE4()
{
  sub_1DA319EBC();

  return swift_deallocClassInstance();
}

id sub_1DA319F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA34CB30();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DA34B7E0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_1DA31A018(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_1DA31A044()
{
  result = qword_1EE108FF0;
  if (!qword_1EE108FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE108FF0);
  }

  return result;
}

uint64_t sub_1DA31A088()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1DA3195E4();
}

unint64_t sub_1DA31A0A8()
{
  result = qword_1ECBA5F78;
  if (!qword_1ECBA5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F78);
  }

  return result;
}

uint64_t sub_1DA31A11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1DA31A18C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DA31A19C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA31A1E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DA31A250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_40();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_3(unint64_t *a1)
{

  return sub_1DA2FFBE8(a1, v1, v2);
}

unint64_t OUTLINED_FUNCTION_13_5()
{
  *(v2 + 16) = v0;
  v4 = *(v3 - 192);
  result = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1;
  v6 = *(v4 + 32);
  return result;
}

void OUTLINED_FUNCTION_14_5()
{
  *(v4 + 16) = v2;
  v6 = v4 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  v7 = *(v5 - 144);
  v8 = *(v5 - 120);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  v2 = **(v1 - 152);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2)
{

  return sub_1DA319560(v2, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  v2 = *(v0 - 176);

  return sub_1DA34C7B0();
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  v2 = *(v0 - 120);

  return sub_1DA34CE00();
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_1DA34CAF0();
}

void OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v7;
  v8 = a4 + 16 * v6;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
}

uint64_t OUTLINED_FUNCTION_31_1()
{
  v2 = *(v1 - 232);
  v3 = **(v1 - 224);
  return v0;
}

double sub_1DA31A55C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DA30F7DC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1DA3013A4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1DA31A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1DA30F7DC(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DA31A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DA30F7DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1DA31A664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B640();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a1;
  v12[1] = a2;
  sub_1DA34B630();
  sub_1DA2EEFDC();
  v9 = sub_1DA34CE40();
  (*(v5 + 8))(v8, v4);
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  sub_1DA34CAF0();

  v10 = sub_1DA34CBB0();

  return v10;
}

uint64_t sub_1DA31A7C4()
{
  type metadata accessor for ContextRetriever();
  OUTLINED_FUNCTION_61_0();
  v0 = swift_allocObject();
  v1 = sub_1DA34C9E0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_1DA34C9D0();
  *(v0 + 16) = result;
  qword_1EE109940 = v0;
  return result;
}

uint64_t static ContextRetriever.shared.getter()
{
  if (qword_1EE109938 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA31A8EC@<X0>(uint64_t (*a1)(void)@<X0>, BOOL *a2@<X8>)
{
  sub_1DA34C730();
  sub_1DA34C720();
  LOBYTE(a1) = a1();

  *a2 = (a1 & 1) == 0;
  return result;
}

uint64_t sub_1DA31A960()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_39_0();
  v5 = [objc_opt_self() defaultContainer];
  OUTLINED_FUNCTION_56_0(v5);
  v0[2] = v6;
  v0[7] = v4;
  v7 = OUTLINED_FUNCTION_68_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FA8, &unk_1DA3520E8);
  OUTLINED_FUNCTION_11_4(v8);
  v0[11] = 1107296256;
  v0[12] = sub_1DA323DDC;
  v0[13] = &block_descriptor;
  v0[14] = v7;
  [v2 accountStatusWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DA31AA64()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31AB60()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 144);

  if (v1 == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1 == 1)
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_26_3(v2);

  return v3();
}

uint64_t sub_1DA31ABD0()
{
  OUTLINED_FUNCTION_2_6();
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  swift_willThrow();

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v4 = *(v0 + 168);
  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109080);
  v6 = OUTLINED_FUNCTION_51_0();
  v7 = sub_1DA34C8C0();
  v8 = sub_1DA34CDA0();

  v9 = OUTLINED_FUNCTION_73();
  v10 = *(v0 + 168);
  if (v9)
  {
    OUTLINED_FUNCTION_37();
    v11 = OUTLINED_FUNCTION_67_0();
    *v1 = 138412290;
    v12 = v10;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_71(&dword_1DA2E0000, v14, v8, "Error retrieving Apple Account Sign In status: %@");
    sub_1DA2E7E4C(v11, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v15();
}

uint64_t sub_1DA31AD54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DA31ADF4()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_56_0([objc_allocWithZone(MEMORY[0x1E699C070]) init]);
  v0[2] = v5;
  v0[7] = v4;
  OUTLINED_FUNCTION_68_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB0, &unk_1DA352100);
  OUTLINED_FUNCTION_11_4(v6);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_35_0();
  [v2 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DA31AEE0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31AFDC()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = sub_1DA34CDD0();

  OUTLINED_FUNCTION_26_3(v3 & 1);

  return v4();
}

uint64_t sub_1DA31B050()
{
  v20 = v0;
  v1 = v0[21];
  swift_willThrow();
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v2 = v0[21];
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109080);
  v4 = OUTLINED_FUNCTION_51_0();
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_72();
    v19[0] = OUTLINED_FUNCTION_66_0();
    *v10 = 136315394;
    v11 = sub_1DA300D78(0xD00000000000001DLL, 0x80000001DA356360, v19);
    OUTLINED_FUNCTION_57_0(v11);
    v0[10] = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
    v13 = sub_1DA34CBA0();
    v15 = sub_1DA300D78(v13, v14, v19);

    *(v10 + 14) = v15;
    OUTLINED_FUNCTION_70(&dword_1DA2E0000, v16, v6, "%s unable to request family circle with error: %s");
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v17();
}

uint64_t *sub_1DA31B214(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1DA31AD54(v6, a3);
  }

  if (a2)
  {
    return sub_1DA31ADC0(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA31B294()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_56_0([objc_allocWithZone(MEMORY[0x1E699C070]) init]);
  v0[2] = v5;
  v0[7] = v4;
  OUTLINED_FUNCTION_68_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB0, &unk_1DA352100);
  OUTLINED_FUNCTION_11_4(v6);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_35_0();
  [v2 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DA31B380()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31B47C()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = sub_1DA34CDC0();

  OUTLINED_FUNCTION_26_3((v3 & 1) == 0);

  return v4();
}

uint64_t sub_1DA31B4F4()
{
  v20 = v0;
  v1 = v0[21];
  swift_willThrow();
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v2 = v0[21];
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109080);
  v4 = OUTLINED_FUNCTION_51_0();
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_72();
    v19[0] = OUTLINED_FUNCTION_66_0();
    *v10 = 136315394;
    v11 = sub_1DA300D78(0xD000000000000019, 0x80000001DA356380, v19);
    OUTLINED_FUNCTION_57_0(v11);
    v0[10] = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
    v13 = sub_1DA34CBA0();
    v15 = sub_1DA300D78(v13, v14, v19);

    *(v10 + 14) = v15;
    OUTLINED_FUNCTION_70(&dword_1DA2E0000, v16, v6, "%s unable to request family circle with error: %s");
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v17();
}

uint64_t sub_1DA31B6B8()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31B750()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v3 = OUTLINED_FUNCTION_14_6();
  v4 = OUTLINED_FUNCTION_62_0(v3);
  *(v4 + 16) = xmmword_1DA34DC80;
  v5 = OUTLINED_FUNCTION_6_11(v4, *MEMORY[0x1E69DA390]);
  v6(v5);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_5(v8);

  return sub_1DA320D04(v10);
}

uint64_t sub_1DA31B820()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 56);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  OUTLINED_FUNCTION_74(v8);

  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA31B918()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(v0 + 64))(v3, *(v0 + 96), v5);
  v7 = sub_1DA34C920();
  v9 = v8;
  (*(v4 + 8))(v3, v5);
  LOBYTE(v5) = sub_1DA31A5C0(v7, v9, v1);

  v10 = (v5 & 1) == 0;
  if (v5 == 2)
  {
    v10 = 2;
  }

  *v6 = v10;

  OUTLINED_FUNCTION_15();

  return v11();
}

uint64_t sub_1DA31BA10()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31BAA8()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v3 = OUTLINED_FUNCTION_14_6();
  v4 = OUTLINED_FUNCTION_62_0(v3);
  *(v4 + 16) = xmmword_1DA34DC80;
  v5 = OUTLINED_FUNCTION_6_11(v4, *MEMORY[0x1E69DA380]);
  v6(v5);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_5(v8);

  return sub_1DA320D04(v10);
}

uint64_t sub_1DA31BB78()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 56);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  OUTLINED_FUNCTION_74(v8);

  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA31BC70()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31BD08()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v3 = OUTLINED_FUNCTION_14_6();
  v4 = OUTLINED_FUNCTION_62_0(v3);
  *(v4 + 16) = xmmword_1DA34DC80;
  v5 = OUTLINED_FUNCTION_6_11(v4, *MEMORY[0x1E69DA370]);
  v6(v5);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_5(v8);

  return sub_1DA320D04(v10);
}

uint64_t sub_1DA31BDD8()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31BE70()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v3 = OUTLINED_FUNCTION_14_6();
  v4 = OUTLINED_FUNCTION_62_0(v3);
  *(v4 + 16) = xmmword_1DA34DC80;
  v5 = OUTLINED_FUNCTION_6_11(v4, *MEMORY[0x1E69DA388]);
  v6(v5);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_5(v8);

  return sub_1DA320D04(v10);
}

uint64_t sub_1DA31BF40()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31BFD8()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v3 = OUTLINED_FUNCTION_14_6();
  v4 = OUTLINED_FUNCTION_62_0(v3);
  *(v4 + 16) = xmmword_1DA34DC80;
  v5 = OUTLINED_FUNCTION_6_11(v4, *MEMORY[0x1E69DA378]);
  v6(v5);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_5(v8);

  return sub_1DA320D04(v10);
}

uint64_t sub_1DA31C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31C0CC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = qword_1F55DFE90;
  v4 = objc_allocWithZone(MEMORY[0x1E6997238]);

  v5 = sub_1DA322054(3, v2, v1, 0xD000000000000017, 0x80000001DA356580, v3);
  v0[22] = v5;
  v6 = [objc_opt_self() sharedInstance];
  v0[23] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA31C28C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6000, &qword_1DA352328);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA323DDC;
  v0[13] = &block_descriptor_85;
  v0[14] = v7;
  [v6 requestIconElementState:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA31C28C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31C388()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 144);

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109080);
  v3 = sub_1DA34C8C0();
  v4 = sub_1DA34CD90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_37();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1DA2E0000, v3, v4, "Result: %lu", v5, 0xCu);
    OUTLINED_FUNCTION_6_9();
  }

  OUTLINED_FUNCTION_26_3(v1 != 1);

  return v6();
}

uint64_t sub_1DA31C498()
{
  v2 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v4 = v0[24];
  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109080);
  v6 = OUTLINED_FUNCTION_51_0();
  v7 = sub_1DA34C8C0();
  v8 = sub_1DA34CD90();

  v9 = OUTLINED_FUNCTION_73();
  v10 = v0[24];
  v11 = v0[22];
  if (v9)
  {
    OUTLINED_FUNCTION_37();
    v12 = OUTLINED_FUNCTION_67_0();
    *v1 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_71(&dword_1DA2E0000, v15, v8, "Error: %@");
    sub_1DA2E7E4C(v12, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v16();
}

uint64_t sub_1DA31C608(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1DA31AD54(*v5, a3);
  }

  else
  {
    return sub_1DA31ADC0(*v5, a2);
  }
}

uint64_t sub_1DA31C668()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD00000000000002FLL, v4);
}

uint64_t sub_1DA31C700()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD000000000000036, v4);
}

uint64_t sub_1DA31C798()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD000000000000030, v4);
}

uint64_t sub_1DA31C830()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD000000000000034, v4);
}

uint64_t sub_1DA31C8C8()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD00000000000002ELL, v4);
}

uint64_t sub_1DA31C960(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 149) = *a2;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31C97C()
{
  OUTLINED_FUNCTION_16();
  v47 = v0;
  switch(*(v0 + 149))
  {
    case 1:
      sub_1DA31A88C(&v45);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for WiFiState;
      v8 = &protocol witness table for WiFiState;
      goto LABEL_23;
    case 2:
      sub_1DA31A8A4(&v44);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for LowPowerModeState;
      v8 = &protocol witness table for LowPowerModeState;
      goto LABEL_23;
    case 3:
      sub_1DA31A8BC(&v43);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for AirPlaneModeState;
      v8 = &protocol witness table for AirPlaneModeState;
      goto LABEL_23;
    case 4:
      sub_1DA31A8D4(&v42);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for LocationServicesState;
      v8 = &protocol witness table for LocationServicesState;
      goto LABEL_23;
    case 5:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 32) = v16;
      *v16 = v17;
      v16[1] = sub_1DA31CFFC;

      return sub_1DA31A94C(v0 + 148);
    case 6:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 40) = v18;
      *v18 = v19;
      v18[1] = sub_1DA31D124;

      return sub_1DA31ADE0(v0 + 147);
    case 7:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 48) = v11;
      *v11 = v12;
      v11[1] = sub_1DA31D24C;

      return sub_1DA31B280(v0 + 146);
    case 8:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 56) = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_37_0(v28);

      return sub_1DA31B6B8();
    case 9:
    case 0xA:
    case 0xD:
    case 0x10:
      v1 = *(v0 + 16);
      goto LABEL_3;
    case 0xB:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 64) = v9;
      *v9 = v10;
      OUTLINED_FUNCTION_37_0(v9);

      return sub_1DA31BA10();
    case 0xC:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 72) = v26;
      *v26 = v27;
      OUTLINED_FUNCTION_37_0(v26);

      return sub_1DA31BC70();
    case 0xE:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 80) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_37_0(v14);

      return sub_1DA31BDD8();
    case 0xF:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 88) = v2;
      *v2 = v3;
      OUTLINED_FUNCTION_37_0(v2);

      return sub_1DA31BF40();
    case 0x11:
      v20 = "retrieveFamilyOrganizer()";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 96) = v21;
      *v21 = v22;
      OUTLINED_FUNCTION_41_0(v21);
      v23 = v0 + 140;
      v25 = v24 | 1;
      goto LABEL_47;
    case 0x12:
      v20 = "kit.controlcenter.screencapture";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 104) = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_41_0(v36);
      v23 = v0 + 139;
      v25 = v38 + 8;
      goto LABEL_47;
    case 0x13:
      v20 = "enter.backgroundsounds";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 112) = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_41_0(v39);
      v23 = v0 + 138;
      v25 = v41 + 2;
      goto LABEL_47;
    case 0x14:
      v20 = "enter.livelisten";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 120) = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_41_0(v30);
      v23 = v0 + 137;
      v25 = v32 + 6;
LABEL_47:
      v35 = v20 | 0x8000000000000000;
      goto LABEL_48;
    case 0x15:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 128) = v33;
      *v33 = v34;
      v33[1] = sub_1DA31DDCC;
      v23 = v0 + 136;
      v35 = 0x80000001DA356490;
      v25 = 0xD00000000000002ELL;
LABEL_48:

      result = sub_1DA31C0B4(v23, v25, v35);
      break;
    default:
      sub_1DA31A874(&v46);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
LABEL_3:
        *(v1 + 32) = 0;
        *v1 = 0u;
        *(v1 + 16) = 0u;
      }

      else
      {
        v7 = &type metadata for BluetoothState;
        v8 = &protocol witness table for BluetoothState;
LABEL_23:
        *(v1 + 24) = v7;
        *(v1 + 32) = v8;
        *v1 = v5 & 1;
      }

      OUTLINED_FUNCTION_15();

      result = v13();
      break;
  }

  return result;
}

uint64_t sub_1DA31CFFC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D0E0()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for AppleAccountSignedInState;
    *(v2 + 32) = &protocol witness table for AppleAccountSignedInState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D124()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D208()
{
  v1 = *(v0 + 147);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for FamilySharingMemberState;
    *(v2 + 32) = &protocol witness table for FamilySharingMemberState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D24C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D330()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for FamilyOrganizerState;
    *(v2 + 32) = &protocol witness table for FamilyOrganizerState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D374()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D458()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for FindMyState;
    *(v2 + 32) = &protocol witness table for FindMyState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D49C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D580()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for SetupState;
    *(v2 + 32) = &protocol witness table for SetupState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D5C4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D6A8()
{
  v1 = *(v0 + 143);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for CloudServiceState;
    *(v2 + 32) = &protocol witness table for CloudServiceState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D6EC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D7D0()
{
  v1 = *(v0 + 142);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for SetupState;
    *(v2 + 32) = &protocol witness table for SetupState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D814()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31D8F8()
{
  v1 = *(v0 + 141);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for CloudServiceState;
    *(v2 + 32) = &protocol witness table for CloudServiceState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D93C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31DA20()
{
  v1 = *(v0 + 140);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DA60()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31DB44()
{
  v1 = *(v0 + 139);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DB84()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31DC68()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DCA8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31DD8C()
{
  v1 = *(v0 + 137);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DDCC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31DEB0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31DF08()
{
  OUTLINED_FUNCTION_59();
  v11 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  static SettingContextType.from(stringValue:)(&v10);
  if (v10 == 22)
  {
    v3 = *(v0 + 16);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    OUTLINED_FUNCTION_15();

    return v4();
  }

  else
  {
    *(v0 + 56) = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 48) = v6;
    *v6 = v7;
    v6[1] = sub_1DA31E004;
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);

    return sub_1DA31C960(v9, (v0 + 56));
  }
}

uint64_t sub_1DA31E004()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_1DA31E0E4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31E0F8()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_61_0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v40 = v2;
  v41 = v0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v42 = v0 + 2;
  v0[6] = v2;
  *(v2 + 16) = v3;
  v4 = v2 + 16;
  v45 = *(v1 + 16);
  if (v45)
  {
    OUTLINED_FUNCTION_64_0();
    v44 = v5;
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_64_0();
    v43 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = (v44 + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      v46 = v6 + 1;

      v10 = 0;
      while (1)
      {
        v11 = byte_1F55DF588[v10++ + 32];
        switch(v11)
        {
          case 2:
            OUTLINED_FUNCTION_79();
            break;
          case 3:
            OUTLINED_FUNCTION_78();
            break;
          case 4:
          case 6:
          case 9:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
            OUTLINED_FUNCTION_29_4();
            break;
          case 5:
          case 10:
            OUTLINED_FUNCTION_89();
            break;
          case 7:
            OUTLINED_FUNCTION_81();
            break;
          case 11:
            OUTLINED_FUNCTION_80();
            break;
          case 12:
          case 15:
            OUTLINED_FUNCTION_38_0();
            break;
          case 13:
            OUTLINED_FUNCTION_88();
            break;
          case 14:
            OUTLINED_FUNCTION_82();
            break;
          case 16:
            OUTLINED_FUNCTION_83();
            break;
          default:
            break;
        }

        v12 = sub_1DA34CBB0();
        v14 = v13;

        if (v12 == sub_1DA34CBB0() && v14 == v15)
        {
          break;
        }

        v17 = sub_1DA34D160();

        if (v17)
        {
          goto LABEL_25;
        }

        if (v10 == 22)
        {

          goto LABEL_30;
        }
      }

LABEL_25:
      if (v11 > 0xF || ((1 << v11) & 0xD900) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = OUTLINED_FUNCTION_13_6(isUniquelyReferenced_nonNull_native, v23, v24, v43);
          sub_1DA2FC190(v28, v29, v30, v31);
          v43 = v32;
        }

        v26 = *(v43 + 16);
        v25 = *(v43 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DA2FC190(v25 > 1, v26 + 1, 1, v43);
          v43 = v33;
        }

        *(v43 + 16) = v26 + 1;
        v27 = v43 + 16 * v26;
        *(v27 + 32) = v9;
        *(v27 + 40) = v8;
        *v42 = v43;
      }

      else
      {
        sub_1DA2FBE0C();
        v19 = *(*v4 + 16);
        sub_1DA2FBEB0(v19);
        v20 = *v4;
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v9;
        *(v21 + 40) = v8;
      }

LABEL_30:
      v6 = v46;
    }

    while (v46 != v45);
  }

  v34 = v41[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  v41[3] = sub_1DA34CAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
  v35 = swift_task_alloc();
  v41[7] = v35;
  v35[2] = v40;
  v35[3] = v34;
  v35[4] = v42;
  v35[5] = v41 + 3;
  v36 = *(MEMORY[0x1E69E87D8] + 4);
  v37 = swift_task_alloc();
  v41[8] = v37;
  *v37 = v41;
  v37[1] = sub_1DA31E668;
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DA31E668()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31E768()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];

  OUTLINED_FUNCTION_60_0();

  return v4(v3);
}

uint64_t sub_1DA31E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[58] = a5;
  v6[59] = a6;
  v6[56] = a3;
  v6[57] = a4;
  v6[55] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FE8, &unk_1DA3522C8);
  v6[60] = v7;
  v8 = *(v7 - 8);
  v6[61] = v8;
  v9 = *(v8 + 64) + 15;
  v6[62] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440) - 8) + 64) + 15;
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA31E8F4, 0, 0);
}

uint64_t sub_1DA31E8F4()
{
  v1 = v0[56];
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v2 = v0[65];
    v3 = v0[56];
    v4 = v0[57];
    v5 = v0[55];
    sub_1DA34CD30();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v4;
    v10[5] = v3;

    sub_1DA31F5B8(v2, &unk_1DA3522E0, v10);
    sub_1DA2E7E4C(v2, &qword_1ECBA5B98, &qword_1DA34F440);
  }

  v11 = v0[58];
  v12 = *v11;
  v13 = *(*v11 + 16);
  if (v13)
  {
    v44 = v0 + 32;
    v45 = *v0[55];
    v14 = sub_1DA34CD30();

    v15 = (v12 + 40);
    v16 = &qword_1ECBA5B98;
    do
    {
      v47 = v15;
      v48 = v13;
      v18 = v0[63];
      v17 = v0[64];
      v19 = v0[57];
      v20 = v0;
      v21 = v16;
      v23 = *(v15 - 1);
      v22 = *v15;
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
      v27 = swift_allocObject();
      v27[2] = 0;
      v46 = v27 + 2;
      v27[3] = 0;
      v27[4] = v19;
      v27[5] = v23;
      v27[6] = v22;
      v16 = v21;
      v0 = v20;
      sub_1DA3094C0(v17, v18, v16, &qword_1DA34F440);
      LODWORD(v18) = __swift_getEnumTagSinglePayload(v18, 1, v14);

      v28 = v20[63];
      if (v18 == 1)
      {
        sub_1DA2E7E4C(v20[63], v16, &qword_1DA34F440);
      }

      else
      {
        sub_1DA34CD20();
        (*(*(v14 - 8) + 8))(v28, v14);
      }

      if (*v46)
      {
        v29 = v27[3];
        v30 = *v46;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_1DA34CCF0();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = &unk_1DA3522F8;
      *(v34 + 24) = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
      v35 = (v33 | v31);
      if (v33 | v31)
      {
        v35 = v44;
        *v44 = 0;
        v44[1] = 0;
        v20[34] = v31;
        v20[35] = v33;
      }

      v36 = v20[64];
      v20[47] = 1;
      v20[48] = v35;
      v20[49] = v45;
      swift_task_create();
      OUTLINED_FUNCTION_51_0();

      sub_1DA2E7E4C(v36, v16, &qword_1DA34F440);
      v15 = v47 + 2;
      v13 = v48 - 1;
    }

    while (v48 != 1);
  }

  v37 = v0[62];
  v38 = *v0[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
  sub_1DA34CD00();
  v39 = *(MEMORY[0x1E69E8588] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[66] = v40;
  *v40 = v41;
  v42 = OUTLINED_FUNCTION_27_4(v40);

  return MEMORY[0x1EEE6D8A8](v42);
}

uint64_t sub_1DA31ECD0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 528);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31EDB4()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    v44 = *(v0 + 520);
    v46 = *(v0 + 504);
    v45 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 16);
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  v3 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 96) = v3;
  v4 = 0x80000001DA356530 == v1 && v2 == 0xD00000000000001BLL;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {
    sub_1DA3094C0(v0 + 64, v0 + 208, &qword_1ECBA5FC0, &qword_1DA3521A0);
    v5 = *(v0 + 216);

    v6 = *(v0 + 240);
    *(v0 + 320) = *(v0 + 224);
    *(v0 + 336) = v6;
    if (*(v0 + 344))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FF0, &qword_1DA352310);
      if (swift_dynamicCast())
      {
        v7 = 0;
        v8 = *(v0 + 424);
        v9 = *(v8 + 64);
        v83 = v8 + 64;
        v84 = v8;
        v10 = *(v8 + 32);
        OUTLINED_FUNCTION_53_0();
        v14 = v13 & v12;
        v16 = (63 - v15) >> 6;
        v82 = v16;
        if ((v13 & v12) != 0)
        {
          goto LABEL_14;
        }

        do
        {
LABEL_10:
          v17 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v17 >= v16)
          {

            goto LABEL_47;
          }

          v14 = *(v11 + 8 * v17);
          ++v7;
        }

        while (!v14);
        v7 = v17;
LABEL_14:
        while (1)
        {
          v18 = *(v0 + 472);
          v19 = (v7 << 10) | (16 * __clz(__rbit64(v14)));
          v20 = (*(v84 + 48) + v19);
          v22 = *v20;
          v21 = v20[1];
          v23 = (*(v84 + 56) + v19);
          v85 = *v23;
          v86 = v23[1];

          v24 = *v18;

          swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 432) = *v18;
          *v18 = 0x8000000000000000;
          sub_1DA30F7DC(v22, v21);
          OUTLINED_FUNCTION_55_0();
          if (__OFADD__(v27, v28))
          {
            break;
          }

          v29 = v25;
          v30 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
          if (sub_1DA34CFA0())
          {
            v31 = *(v0 + 432);
            v32 = sub_1DA30F7DC(v22, v21);
            if ((v30 & 1) != (v33 & 1))
            {
              goto LABEL_37;
            }

            v29 = v32;
          }

          if (v30)
          {

            v34 = *(v0 + 432);
            v35 = (*(v34 + 56) + 16 * v29);
            v36 = v35[1];
            *v35 = v85;
            v35[1] = v86;
          }

          else
          {
            v34 = *(v0 + 432);
            OUTLINED_FUNCTION_85(v34 + 8 * (v29 >> 6));
            v38 = (v37 + 16 * v29);
            *v38 = v22;
            v38[1] = v21;
            v39 = (*(v34 + 56) + 16 * v29);
            *v39 = v85;
            v39[1] = v86;
            OUTLINED_FUNCTION_46_0();
            if (v41)
            {
              goto LABEL_52;
            }

            *(v34 + 16) = v40;
          }

          v14 &= v14 - 1;
          v42 = *(v0 + 472);
          v43 = *v42;
          *v42 = v34;

          v16 = v82;
          v11 = v83;
          if (!v14)
          {
            goto LABEL_10;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_47:
      sub_1DA2E7E4C(v0 + 64, &qword_1ECBA5FC0, &qword_1DA3521A0);
      v78 = *(MEMORY[0x1E69E8588] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 528) = v79;
      *v79 = v80;
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_90();

      return MEMORY[0x1EEE6D8A8]();
    }

    v49 = v0 + 320;
LABEL_46:
    sub_1DA2E7E4C(v49, &qword_1ECBA5908, &qword_1DA34F200);
    goto LABEL_47;
  }

  sub_1DA3094C0(v0 + 64, v0 + 112, &qword_1ECBA5FC0, &qword_1DA3521A0);
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  sub_1DA3094C0(v0 + 64, v0 + 160, &qword_1ECBA5FC0, &qword_1DA3521A0);
  v52 = *(v0 + 168);

  v53 = *(v0 + 192);
  *(v0 + 288) = *(v0 + 176);
  *(v0 + 304) = v53;
  if (*(v0 + 312))
  {
    if (swift_dynamicCast())
    {
      v54 = *(v0 + 400);
      v55 = *(v0 + 408);
      goto LABEL_34;
    }
  }

  else
  {
    sub_1DA2E7E4C(v0 + 288, &qword_1ECBA5908, &qword_1DA34F200);
  }

  v54 = 0;
  v55 = 0;
LABEL_34:
  v56 = *(v0 + 472);
  v57 = *v56;
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 416) = *v56;
  *v56 = 0x8000000000000000;
  sub_1DA30F7DC(v51, v50);
  OUTLINED_FUNCTION_55_0();
  if (__OFADD__(v60, v61))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v62 = v58;
  v63 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
  if ((sub_1DA34CFA0() & 1) == 0)
  {
    goto LABEL_41;
  }

  v64 = *(v0 + 416);
  v65 = sub_1DA30F7DC(v51, v50);
  if ((v63 & 1) == (v66 & 1))
  {
    v62 = v65;
LABEL_41:
    if (v63)
    {

      v69 = *(v0 + 416);
      v70 = (*(v69 + 56) + 16 * v62);
      v71 = v70[1];
      *v70 = v54;
      v70[1] = v55;
    }

    else
    {
      v69 = *(v0 + 416);
      OUTLINED_FUNCTION_85(v69 + 8 * (v62 >> 6));
      v73 = (v72 + 16 * v62);
      *v73 = v51;
      v73[1] = v50;
      v74 = (*(v69 + 56) + 16 * v62);
      *v74 = v54;
      v74[1] = v55;
      OUTLINED_FUNCTION_46_0();
      if (v41)
      {
LABEL_54:
        __break(1u);
        return MEMORY[0x1EEE6D8A8]();
      }

      *(v69 + 16) = v75;
    }

    v76 = *(v0 + 472);
    v77 = *v76;
    *v76 = v69;

    v49 = v0 + 128;
    goto LABEL_46;
  }

LABEL_37:
  OUTLINED_FUNCTION_90();

  return sub_1DA34D180();
}

uint64_t sub_1DA31F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA31F374, 0, 0);
}

uint64_t sub_1DA31F374()
{
  OUTLINED_FUNCTION_59();
  v1 = v0[7];
  swift_beginAccess();
  v0[8] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DA31F438;
  v3 = v0[6];

  return sub_1DA31FAB8();
}

uint64_t sub_1DA31F438()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v10[10] = v8;
  v10[11] = v9;
  v10[12] = v11;

  v12 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA31F53C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  *v3 = v0[10];
  v3[1] = v1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FF0, &qword_1DA352310);
  v3[2] = v2;
  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_1DA31F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  sub_1DA3094C0(a1, v22 - v10, &qword_1ECBA5B98, &qword_1DA34F440);
  v12 = sub_1DA34CD30();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1DA2E7E4C(v11, &qword_1ECBA5B98, &qword_1DA34F440);
  }

  else
  {
    sub_1DA34CD20();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1DA34CCF0();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1DA31F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a1;
  v9 = swift_task_alloc();
  v6[15] = v9;
  *v9 = v6;
  v9[1] = sub_1DA31F878;

  return sub_1DA31DEF0((v6 + 2), a5, a6);
}

uint64_t sub_1DA31F878()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA31F95C()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[14];
  v2 = v0[12];
  *v2 = v0[13];
  v2[1] = v1;
  sub_1DA3094C0((v0 + 2), (v0 + 7), &qword_1ECBA5FF8, &qword_1DA352318);
  v3 = v0[10];
  v4 = v0[14];
  if (v3)
  {
    v5 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v6 = *(v5 + 8);

    v7 = v6(v3, v5);
    v9 = v8;
    sub_1DA2E7E4C((v0 + 2), &qword_1ECBA5FF8, &qword_1DA352318);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v10 = MEMORY[0x1E69E6158];
  }

  else
  {
    v11 = v0[12];
    v12 = v0[14];

    sub_1DA2E7E4C((v0 + 2), &qword_1ECBA5FF8, &qword_1DA352318);
    sub_1DA2E7E4C((v0 + 7), &qword_1ECBA5FF8, &qword_1DA352318);
    v7 = 0;
    v9 = 0;
    v10 = 0;
    *(v11 + 32) = 0;
  }

  v13 = v0[12];
  v13[2] = v7;
  v13[3] = v9;
  v13[5] = v10;
  OUTLINED_FUNCTION_15();

  return v14();
}

uint64_t sub_1DA31FAB8()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC8, &qword_1DA3522A0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = sub_1DA34C930();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA31FC04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v103 = sub_1DA34CAC0();
  v4 = *(v2 + 16);
  LODWORD(v88) = *MEMORY[0x1E69DA380];
  v5 = *MEMORY[0x1E69DA380];
  HIDWORD(v88) = *MEMORY[0x1E69DA390];
  *(v0 + 160) = *MEMORY[0x1E69DA390];
  *(v0 + 164) = v5;
  LODWORD(v87) = *MEMORY[0x1E69DA388];
  v6 = *MEMORY[0x1E69DA388];
  HIDWORD(v87) = *MEMORY[0x1E69DA370];
  *(v0 + 168) = *MEMORY[0x1E69DA370];
  *(v0 + 172) = v6;
  HIDWORD(v86) = *MEMORY[0x1E69DA378];
  *(v0 + 176) = *MEMORY[0x1E69DA378];
  v102 = v4;
  if (v4)
  {
    v7 = 0;
    v101 = *(v0 + 16) + 32;
    v8 = *(v0 + 56);
    v97 = 0x80000001DA354880;
    v98 = 0x80000001DA3548B0;
    OUTLINED_FUNCTION_64_0();
    v95 = v9;
    v96 = v10;
    OUTLINED_FUNCTION_54_0();
    v93 = v11;
    v94 = v12;
    v91 = 0x80000001DA354740;
    v92 = 0x80000001DA354770;
    OUTLINED_FUNCTION_64_0();
    v89 = v13;
    v90 = v14;
    v99 = v15 + 32;
    v100 = v15;
    v104 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = (v101 + 16 * v7);
      v18 = *v16;
      v17 = v16[1];
      ++v7;

      v19 = 0;
      while (1)
      {
        v20 = byte_1F55DF588[v19 + 32];
        v19 = (v19 + 1);
        switch(v20)
        {
          case 2:
            OUTLINED_FUNCTION_79();
            break;
          case 3:
            OUTLINED_FUNCTION_78();
            break;
          case 4:
          case 6:
          case 9:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
            OUTLINED_FUNCTION_29_4();
            break;
          case 5:
          case 10:
            OUTLINED_FUNCTION_89();
            break;
          case 7:
            OUTLINED_FUNCTION_81();
            break;
          case 11:
            OUTLINED_FUNCTION_80();
            break;
          case 12:
          case 15:
            OUTLINED_FUNCTION_38_0();
            break;
          case 13:
            OUTLINED_FUNCTION_88();
            break;
          case 14:
            OUTLINED_FUNCTION_82();
            break;
          case 16:
            OUTLINED_FUNCTION_83();
            break;
          default:
            break;
        }

        v21 = sub_1DA34CBB0();
        v23 = v22;

        if (v21 == sub_1DA34CBB0() && v23 == v24)
        {
          break;
        }

        v26 = sub_1DA34D160();

        if (v26)
        {
          goto LABEL_25;
        }

        if (v19 == 22)
        {
LABEL_23:

          goto LABEL_52;
        }
      }

LABEL_25:
      switch(v20)
      {
        case 8:
          v27 = *(v0 + 120);
          OUTLINED_FUNCTION_32_2(v0);
          v19();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v104;
          }

          else
          {
            OUTLINED_FUNCTION_13_6(isUniquelyReferenced_nonNull_native, v29, v30, v104);
            sub_1DA2FC42C();
            v31 = isUniquelyReferenced_nonNull_native;
          }

          OUTLINED_FUNCTION_31_2(isUniquelyReferenced_nonNull_native, v29, v30, v31);
          if (v33)
          {
            OUTLINED_FUNCTION_77();
            v32 = v77;
          }

          v35 = *(v0 + 112);
          v34 = *(v0 + 120);
          v36 = OUTLINED_FUNCTION_4_16(v32, v0, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
          v37(v36);
          v38 = v35;
          v39 = HIDWORD(v88);
          break;
        case 11:
          v49 = *(v0 + 104);
          OUTLINED_FUNCTION_32_2(v0);
          v19();
          v50 = swift_isUniquelyReferenced_nonNull_native();
          if (v50)
          {
            v53 = v104;
          }

          else
          {
            OUTLINED_FUNCTION_13_6(v50, v51, v52, v104);
            sub_1DA2FC42C();
            v53 = v50;
          }

          OUTLINED_FUNCTION_31_2(v50, v51, v52, v53);
          if (v33)
          {
            OUTLINED_FUNCTION_77();
            v54 = v78;
          }

          v55 = *(v0 + 104);
          v35 = *(v0 + 112);
          v56 = OUTLINED_FUNCTION_4_16(v54, v0, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
          v57(v56);
          v38 = v35;
          v39 = v88;
          break;
        case 12:
          v40 = *(v0 + 96);
          OUTLINED_FUNCTION_32_2(v0);
          v19();
          v41 = swift_isUniquelyReferenced_nonNull_native();
          if (v41)
          {
            v44 = v104;
          }

          else
          {
            OUTLINED_FUNCTION_13_6(v41, v42, v43, v104);
            sub_1DA2FC42C();
            v44 = v41;
          }

          OUTLINED_FUNCTION_31_2(v41, v42, v43, v44);
          if (v33)
          {
            OUTLINED_FUNCTION_77();
            v45 = v76;
          }

          v35 = *(v0 + 112);
          v46 = *(v0 + 96);
          v47 = OUTLINED_FUNCTION_4_16(v45, v0, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
          v48(v47);
          v38 = v35;
          v39 = HIDWORD(v87);
          break;
        case 14:
          v58 = *(v0 + 88);
          OUTLINED_FUNCTION_32_2(v0);
          v19();
          v59 = swift_isUniquelyReferenced_nonNull_native();
          if (v59)
          {
            v62 = v104;
          }

          else
          {
            OUTLINED_FUNCTION_13_6(v59, v60, v61, v104);
            sub_1DA2FC42C();
            v62 = v59;
          }

          OUTLINED_FUNCTION_31_2(v59, v60, v61, v62);
          if (v33)
          {
            OUTLINED_FUNCTION_77();
            v63 = v79;
          }

          v35 = *(v0 + 112);
          v64 = *(v0 + 88);
          v65 = OUTLINED_FUNCTION_4_16(v63, v0, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
          v66(v65);
          v38 = v35;
          v39 = v87;
          break;
        case 15:
          v67 = *(v0 + 80);
          OUTLINED_FUNCTION_32_2(v0);
          v19();
          v68 = swift_isUniquelyReferenced_nonNull_native();
          if (v68)
          {
            v71 = v104;
          }

          else
          {
            OUTLINED_FUNCTION_13_6(v68, v69, v70, v104);
            sub_1DA2FC42C();
            v71 = v68;
          }

          OUTLINED_FUNCTION_31_2(v68, v69, v70, v71);
          if (v33)
          {
            OUTLINED_FUNCTION_77();
            v72 = v80;
          }

          v35 = *(v0 + 112);
          v73 = *(v0 + 80);
          v74 = OUTLINED_FUNCTION_4_16(v72, v0, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
          v75(v74);
          v38 = v35;
          v39 = HIDWORD(v86);
          break;
        default:
          goto LABEL_23;
      }

      (v19)(v38, v39, v23);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1DA30FC18(v35, v18, v17);

LABEL_52:
      ;
    }

    while (v7 != v102);
  }

  else
  {
    v104 = v3;
  }

  *(v0 + 128) = v104;
  *(v0 + 136) = v103;
  v81 = swift_task_alloc();
  *(v0 + 144) = v81;
  *v81 = v0;
  v81[1] = sub_1DA320390;
  v82 = *(v0 + 24);
  v83 = OUTLINED_FUNCTION_40_0();

  return sub_1DA320D04(v83);
}

uint64_t sub_1DA320390()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 152) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA320478()
{
  v113 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);
  v111 = *(v0 + 40);
  v105 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  sub_1DA34CAC0();
  v5 = v2 + 64;
  v4 = *(v2 + 64);
  v6 = *(v2 + 32);
  OUTLINED_FUNCTION_53_0();
  v9 = v8 & v7;
  v102 = v11;
  v103 = (63 - v10) >> 6;
  v109 = (v3 + 16);
  v110 = (v3 + 8);
  v106 = v3;
  v107 = v2;
  v101 = (v3 + 88);
  v12 = (v3 + 32);

  v13 = 0;
  v104 = v2 + 64;
  v108 = v12;
  if (!v9)
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v103)
      {
        v34 = *(v0 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD0, &qword_1DA3522A8);
        OUTLINED_FUNCTION_21();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
        v115 = 0;
        goto LABEL_8;
      }

      v9 = *(v5 + 8 * v14);
      ++v13;
      if (v9)
      {
        v13 = v14;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_58_0();

    return sub_1DA34D180();
  }

  while (1)
  {
    v14 = v13;
LABEL_7:
    v15 = *(v0 + 112);
    v16 = *(v0 + 48);
    v1 = *(v0 + 32);
    v115 = (v9 - 1) & v9;
    v17 = __clz(__rbit64(v9)) | (v14 << 6);
    v18 = (*(v107 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    (*(v106 + 16))(v15, *(v107 + 56) + *(v106 + 72) * v17, v16);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD0, &qword_1DA3522A8);
    v22 = *(v21 + 48);
    *v1 = v19;
    *(v105 + 8) = v20;
    v12 = v108;
    (*(v106 + 32))(v1 + v22, v15, v16);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v21);

    v5 = v104;
LABEL_8:
    v23 = *(v0 + 40);
    sub_1DA323A6C(*(v0 + 32), v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD0, &qword_1DA3522A8);
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
    {
      v81 = *(v0 + 152);
      v82 = *(v0 + 128);
      v83 = *(v0 + 136);
      v85 = *(v0 + 112);
      v84 = *(v0 + 120);
      v87 = *(v0 + 96);
      v86 = *(v0 + 104);
      v89 = *(v0 + 80);
      v88 = *(v0 + 88);
      v90 = *(v0 + 72);
      v112 = *(v0 + 64);
      v114 = *(v0 + 40);
      v116 = *(v0 + 32);

      v91 = *(v0 + 8);
      OUTLINED_FUNCTION_58_0();

      __asm { BRAA            X4, X16 }
    }

    v25 = *(v0 + 72);
    v26 = *(v0 + 40);
    v27 = *v26;
    v28 = *(v111 + 8);
    (*v12)(v25, v26 + *(v24 + 48), *(v0 + 48));
    v29 = v25;
    v30 = sub_1DA34C920();
    if (*(v113 + 16))
    {
      break;
    }

LABEL_13:
    OUTLINED_FUNCTION_49_0();
LABEL_14:

    (*v110)(v29, v1);
LABEL_15:
    v9 = v115;
    if (!v115)
    {
      goto LABEL_3;
    }
  }

  v32 = *(v0 + 152);
  v29 = sub_1DA30F7DC(v30, v31);
  v1 = v33;

  if ((v1 & 1) == 0)
  {
    goto LABEL_13;
  }

  v39 = *(v0 + 160);
  v40 = *(v0 + 64);
  v1 = *(v0 + 48);
  v29 = *(*(v113 + 56) + v29);
  (*v109)(v40, *(v0 + 72), v1);
  v41 = (*v101)(v40, v1);
  if (v41 == v39)
  {
    if (v29)
    {
      v42 = 0x64656C62616E65;
    }

    else
    {
      v42 = 0x64656C6261736964;
    }

    v43 = 0xE800000000000000;
    if (v29)
    {
      v43 = 0xE700000000000000;
    }

    v100 = v43;
    v29 = v102;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_55_0();
    v1 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return MEMORY[0x1EEE6B1D8]();
    }

    LODWORD(v102) = v44;
    v99 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4())
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      v12 = v108;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v12 = v108;
    }

    OUTLINED_FUNCTION_49_0();
    if ((v53 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v58 = OUTLINED_FUNCTION_9_5(v57, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v59(v58);
      OUTLINED_FUNCTION_46_0();
      if (v50)
      {
        goto LABEL_88;
      }

LABEL_75:
      v102 = v29;
      *(v29 + 16) = v60;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_63_0();
    v56 = v99;
    v55 = v100;
    goto LABEL_73;
  }

  if (v41 == *(v0 + 164))
  {
    OUTLINED_FUNCTION_48_0();
    v48 = OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5(v48, v49);
    v12 = v108;
    if (v50)
    {
      goto LABEL_87;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4())
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v47)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v63 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v65 = OUTLINED_FUNCTION_9_5(v64, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v66(v65);
      OUTLINED_FUNCTION_46_0();
      if (v50)
      {
        goto LABEL_90;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

  v12 = v108;
  if (v41 == *(v0 + 168))
  {
    OUTLINED_FUNCTION_48_0();
    v51 = OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5(v51, v52);
    if (v50)
    {
      goto LABEL_89;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4())
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v47)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v69 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v71 = OUTLINED_FUNCTION_9_5(v70, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v72(v71);
      OUTLINED_FUNCTION_46_0();
      if (v50)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (v41 == *(v0 + 172))
  {
    OUTLINED_FUNCTION_48_0();
    v61 = OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5(v61, v62);
    if (v50)
    {
      goto LABEL_91;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4())
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v47)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v73 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v75 = OUTLINED_FUNCTION_9_5(v74, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v76(v75);
      OUTLINED_FUNCTION_46_0();
      if (v50)
      {
        goto LABEL_94;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (v41 == *(v0 + 176))
  {
    OUTLINED_FUNCTION_48_0();
    v67 = OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5(v67, v68);
    if (v50)
    {
      goto LABEL_93;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4())
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v47)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v77 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v79 = OUTLINED_FUNCTION_9_5(v78, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v80(v79);
      OUTLINED_FUNCTION_46_0();
      if (v50)
      {
        goto LABEL_95;
      }

      goto LABEL_75;
    }

LABEL_72:

    OUTLINED_FUNCTION_63_0();
    v55 = v99;
    v56 = v100;
LABEL_73:
    *v54 = v56;
    v54[1] = v55;
    goto LABEL_14;
  }

  v96 = *(v0 + 48);
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6B1D8]();
}

uint64_t sub_1DA320D04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA320D18()
{
  OUTLINED_FUNCTION_59();
  if (*(v0[2] + 16))
  {
    v1 = v0[3];
    v2 = objc_allocWithZone(sub_1DA34C950());

    v0[4] = sub_1DA34C940();
    v3 = *(v1 + 16);
    v4 = *(MEMORY[0x1E69DA3A8] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1DA320E3C;
    v6 = OUTLINED_FUNCTION_40_0();

    return MEMORY[0x1EEE49AF8](v6);
  }

  else
  {
    sub_1DA34CAC0();
    OUTLINED_FUNCTION_60_0();

    return v7();
  }
}

uint64_t sub_1DA320E3C()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA320F50()
{
  OUTLINED_FUNCTION_16();

  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_60_0();

  return v2();
}

uint64_t sub_1DA320FAC()
{
  OUTLINED_FUNCTION_2_6();

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v2 = *(v0 + 48);
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109080);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
    OUTLINED_FUNCTION_37();
    v8 = OUTLINED_FUNCTION_67_0();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_71(&dword_1DA2E0000, v11, v6, "Error retrieving device capabilities: %@");
    sub_1DA2E7E4C(v8, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6();
  }

  v12 = *(v0 + 48);

  sub_1DA34CAC0();
  OUTLINED_FUNCTION_60_0();

  return v13(v5);
}

void sub_1DA321128(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v42 = a3;
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109080);

  v6 = sub_1DA34C8C0();
  v7 = sub_1DA34CD90();

  v8 = &loc_1DA34D000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = OUTLINED_FUNCTION_72();
    v44 = OUTLINED_FUNCTION_66_0();
    *v9 = 136315394;
    v10 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v41, v42, v43);
    v11 = OUTLINED_FUNCTION_57_0(v10);
    *(v9 + 14) = OUTLINED_FUNCTION_52_0(v11, v12, v13);
    OUTLINED_FUNCTION_70(&dword_1DA2E0000, v14, v7, "%s Retrieving app state for app %s");
    v8 = &loc_1DA34D000;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_9();
  }

  sub_1DA31A664(a1, a2);
  v15 = sub_1DA312994();
  if (v15 == 35)
  {

    v16 = sub_1DA34C8C0();
    v17 = sub_1DA34CDA0();

    if (OUTLINED_FUNCTION_73())
    {
      v18 = OUTLINED_FUNCTION_72();
      v44 = OUTLINED_FUNCTION_66_0();
      *v18 = v8[402];
      v19 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v41, v42, v43);
      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      *(v18 + 14) = OUTLINED_FUNCTION_52_0(v19, v20, v21);
      v22 = "%s Failed to convert appName %s to AppBundleID";
LABEL_12:
      _os_log_impl(&dword_1DA2E0000, v16, v17, v22, v18, 0x16u);
      OUTLINED_FUNCTION_69_0();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_6();
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  sub_1DA314AB4(v15);
  if (!v24)
  {

    v16 = sub_1DA34C8C0();
    v17 = sub_1DA34CDA0();

    if (OUTLINED_FUNCTION_73())
    {
      v18 = OUTLINED_FUNCTION_72();
      v44 = OUTLINED_FUNCTION_66_0();
      *v18 = v8[402];
      v27 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v41, v42, v43);
      *(v18 + 4) = v27;
      *(v18 + 12) = 2080;
      *(v18 + 14) = OUTLINED_FUNCTION_52_0(v27, v28, v29);
      v22 = "%s Failed to retrieve bundleID for app %s";
      goto LABEL_12;
    }

LABEL_13:

    LOBYTE(v30) = 3;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = v24;
  sub_1DA3225B8();

  v31 = sub_1DA3217F0(v25, v26);
  if (v31)
  {
    v30 = 0;
  }

  else
  {
    v30 = 3;
  }

  v32 = sub_1DA34C8C0();
  v33 = sub_1DA34CD90();

  if (OUTLINED_FUNCTION_73())
  {
    v34 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v34 = 136315906;
    v35 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v41, v42, v43);
    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    *(v34 + 14) = OUTLINED_FUNCTION_52_0(v35, v36, v37);
    *(v34 + 22) = 2080;
    v38 = sub_1DA300D78(v25, v26, &v44);

    *(v34 + 24) = v38;
    *(v34 + 32) = 2080;
    v39 = 0xE800000000000000;
    v40 = 0x6E65657263536E6FLL;
    switch(v30)
    {
      case 1:
      case 3:
        v40 = 0x656572635366666FLL;
        v39 = 0xE90000000000006ELL;
        break;
      case 2:
        v39 = 0xE700000000000000;
        v40 = 0x676E697373696DLL;
        break;
      default:
        break;
    }

    sub_1DA300D78(v40, v39, &v44);
    OUTLINED_FUNCTION_40_0();

    *(v34 + 34) = a2;
    _os_log_impl(&dword_1DA2E0000, v32, v33, "%s Returning app state for app %s (%s): %s", v34, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

LABEL_24:
  *v42 = v30;
}

id sub_1DA321708(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DA34CB30();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1DA34B7E0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1DA3217F0(char **a1, uint64_t a2)
{
  v6 = sub_1DA321BC0(3);
  v7 = sub_1DA322474(v6);
  if (!v7)
  {
LABEL_41:

    goto LABEL_42;
  }

  v8 = v7;
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_56:
    v9 = MEMORY[0x1DA74A960](0, v6);
LABEL_5:
    v2 = v9;
    v10 = sub_1DA322620(v9);
    if (!v11)
    {
      goto LABEL_11;
    }

    v3 = 0x6C7070612E6D6F63;
    if (v10 == 0x6C7070612E6D6F63 && v11 == 0xEE00697269732E65)
    {
    }

    else
    {
      v13 = sub_1DA34D160();

      if ((v13 & 1) == 0)
      {
LABEL_11:

        if ([v2 starting])
        {
          v14 = sub_1DA322620(v2);
          if (v15)
          {
            if (v14 == a1 && v15 == a2)
            {

              v17 = 1;
            }

            else
            {
              v17 = sub_1DA34D160();
            }

            return v17 & 1;
          }
        }

LABEL_42:
        v17 = 0;
        return v17 & 1;
      }
    }

    if (qword_1EE109078 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v6 + 32);
    goto LABEL_5;
  }

  __break(1u);
LABEL_58:
  OUTLINED_FUNCTION_0_16();
LABEL_21:
  v18 = sub_1DA34C8E0();
  __swift_project_value_buffer(v18, qword_1EE109080);
  v19 = sub_1DA34C8C0();
  v20 = sub_1DA34CD90();
  v36 = a2;
  v35 = a1;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_72();
    a2 = OUTLINED_FUNCTION_66_0();
    v37 = a2;
    *v21 = 136315394;
    v22 = sub_1DA300D78(0xD000000000000013, 0x80000001DA3564E0, &v37);
    OUTLINED_FUNCTION_86(v22);
    *(v21 + 14) = sub_1DA300D78(v3, 0xEE00697269732E65, v23);
    _os_log_impl(&dword_1DA2E0000, v19, v20, "%s Skipping over %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_6();
  }

  v24 = 0;
  a1 = &selRef_rangeAtIndex_;
  while (1)
  {
    if (v8 == v24)
    {

      goto LABEL_41;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1DA74A960](v24, v6);
    }

    else
    {
      if (v24 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v25 = *(v6 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (![v25 starting])
    {
      goto LABEL_37;
    }

    v27 = sub_1DA322620(v26);
    if (!v28)
    {
      goto LABEL_44;
    }

    if (v27 != v3 || v28 != 0xEE00697269732E65)
    {
      break;
    }

LABEL_39:
    ++v24;
  }

  a2 = sub_1DA34D160();

  if (a2)
  {
LABEL_37:

    goto LABEL_39;
  }

LABEL_44:

  v31 = v26;
  v32 = sub_1DA322684(v31);
  if (!v33)
  {

    goto LABEL_42;
  }

  if (v32 == v35 && v33 == v36)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1DA34D160();
  }

  return v17 & 1;
}