uint64_t SnippetHomeDeviceType.rawValue.getter()
{
  result = 0x6C7562746867696CLL;
  switch(*v0)
  {
    case 1:
      return 0x686374697773;
    case 2:
      return 0x74736F6D72656874;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 7233894;
    case 5:
      v3 = 1819571567;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 6:
      return 0x6B636F4C726F6F64;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x79726574746162;
    case 9:
      return 0xD000000000000013;
    case 0xA:
      return 0xD000000000000014;
    case 0xB:
      return 0x53746361746E6F63;
    case 0xC:
      return 1919905636;
    case 0xD:
      v5 = 0x6964696D7568;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
    case 0xE:
      return 0x736E65536B61656CLL;
    case 0xF:
      v4 = 0x53746867696CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 0x10:
      return 0x65536E6F69746F6DLL;
    case 0x11:
      return 0x636E61707563636FLL;
    case 0x12:
      v5 = 0x697275636573;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
    case 0x13:
      v4 = 0x53656B6F6D73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 0x14:
      return 0xD000000000000011;
    case 0x15:
      return 0x776F646E6977;
    case 0x16:
      return 0x736564616873;
    case 0x17:
      return 0x6172656D61437069;
    case 0x18:
      return 0x6F68706F7263696DLL;
    case 0x19:
      return 0x72656B61657073;
    case 0x1A:
    case 0x1B:
      return 0x657A69726F746F6DLL;
    case 0x1C:
      return 0x6F43726574616568;
    case 0x1D:
      return 0xD000000000000016;
    case 0x1E:
      return 1952541811;
    case 0x1F:
      return 0x656C6B6E69727073;
    case 0x20:
      return 0x65766C6176;
    case 0x21:
      v3 = 1668637030;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x22:
      v2 = 2003789939;
      goto LABEL_50;
    case 0x23:
      return 0x69736976656C6574;
    case 0x24:
      return 0x6C6C6542726F6F64;
    case 0x25:
      return 0x6669727550726961;
    case 0x26:
      v2 = 1953261926;
LABEL_50:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 0x27:
      result = 0x5654656C707061;
      break;
    case 0x28:
      result = 0x65526172656D6163;
      break;
    case 0x29:
      result = 1802398067;
      break;
    case 0x2A:
      result = 0x706F4D746F626F72;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2C:
      result = 0x74726F70726961;
      break;
    case 0x2D:
      result = 0x726F736E6573;
      break;
    case 0x2E:
      result = 0x6D6F74737563;
      break;
    case 0x2F:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F47DCC()
{
  result = qword_27F5769A8;
  if (!qword_27F5769A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769A8);
  }

  return result;
}

uint64_t sub_252F47E20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_252F4D94C();
}

unint64_t sub_252F47E30()
{
  result = qword_27F5769B0;
  if (!qword_27F5769B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769B0);
  }

  return result;
}

uint64_t sub_252F47EA8@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetHomeDeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetRenderingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SnippetHomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnippetHomeDeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F481C0()
{
  result = qword_27F5769B8;
  if (!qword_27F5769B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769B8);
  }

  return result;
}

unint64_t sub_252F48214()
{
  result = qword_27F5769C0;
  if (!qword_27F5769C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769C0);
  }

  return result;
}

uint64_t static Signpost.begin(logging:_:)(void *a1)
{
  v1 = a1;
  sub_252F5313C();
  sub_252F53ADC();

  return sub_252F5312C();
}

uint64_t static Signpost.generateSignpostID(for:)(void *a1)
{
  v1 = a1;

  return sub_252F5313C();
}

_BYTE *sub_252F48434(_BYTE *result, int a2, int a3)
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

uint64_t DisambiguationView.init(model:)()
{
  v2 = type metadata accessor for DisambiguationView(0);
  OUTLINED_FUNCTION_12_5(v2);
  OUTLINED_FUNCTION_1_4();
  sub_252F4C048(v3, v4);
  *v1 = sub_252F5326C();
  v1[1] = v5;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_3_1();
  sub_252F49A84();
  if (qword_27F575E18 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v6 = *(v0 + 24);
  v7 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v8 = sub_252F5316C();
  __swift_project_value_buffer(v8, qword_27F57B800);
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57C00);
  v9 = sub_252F3A05C();
  MEMORY[0x2530AF890](v9);

  OUTLINED_FUNCTION_14_3("biguation snippet. ", 0);

  return OUTLINED_FUNCTION_4_8();
}

uint64_t DisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DisambiguationSnippetModel(0);
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_11();
  sub_252F49A84();
  return DefaultDisambiguationView.init(model:)(a1);
}

uint64_t DefaultDisambiguationView.init(model:)@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_12_5(v4);
  OUTLINED_FUNCTION_1_4();
  sub_252F4C048(v5, v6);
  *v2 = sub_252F5326C();
  v2[1] = v7;
  v8 = a1 + *(v1 + 28);
  sub_252F5374C();
  *v8 = v14;
  *(v8 + 8) = v15;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_3_1();
  sub_252F49A84();
  if (qword_27F575E18 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v9 = *(v1 + 24);
  v10 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v11 = sub_252F5316C();
  __swift_project_value_buffer(v11, qword_27F57B800);
  sub_252F53B8C();

  v12 = sub_252F3A05C();
  MEMORY[0x2530AF890](v12);

  OUTLINED_FUNCTION_14_3("biguation snippet. ", 0xD00000000000002FLL);

  return OUTLINED_FUNCTION_4_8();
}

uint64_t DefaultDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for DefaultDisambiguationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_252F49A84();
  v4 = *(v2 + 80);
  swift_allocObject();
  sub_252F4C1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5769C8, "E");
  sub_252F25B24(&qword_27F5769D0, &qword_27F5769C8, "E");
  sub_252F5381C();
  sub_252F49A84();
  v5 = swift_allocObject();
  sub_252F4C1E0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5769D8, &qword_252F56790);
  v7 = (a1 + *(result + 36));
  *v7 = sub_252F4BC68;
  v7[1] = v5;
  v7[2] = 0;
  v7[3] = 0;
  return result;
}

uint64_t sub_252F48B3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v124 = a2;
  v116 = sub_252F5380C();
  v107 = *(v116 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x28223BE20](v116);
  v106 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v105 = *(v114 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576828, &qword_252F55DF0);
  v109 = *(v115 - 8);
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v115);
  v108 = &v96 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A28, &qword_252F56898);
  v9 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v113 = &v96 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A30, &unk_252F568A0);
  v11 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v97 = (&v96 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v117 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v96 - v17;
  v118 = type metadata accessor for DisambiguationOption(0);
  v101 = *(v118 - 8);
  v18 = *(v101 + 64);
  v19 = MEMORY[0x28223BE20](v118);
  v102 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v103 = &v96 - v22;
  v100 = v23;
  MEMORY[0x28223BE20](v21);
  v96 = (&v96 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A38, &qword_252F568B0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v123 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v125 = &v96 - v29;
  v30 = type metadata accessor for DefaultDisambiguationView(0);
  v31 = v30 - 8;
  v32 = *(v30 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_252F5389C();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A40, &qword_252F568B8);
  v121 = *(v37 - 8);
  v122 = v37;
  v38 = *(v121 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v120 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v96 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v43 = v129;
  v44 = v130;
  v132 = MEMORY[0x277CE0BD8];
  v133 = MEMORY[0x277D638E8];
  v45 = swift_allocObject();
  v129 = v45;
  *(v45 + 16) = v43;
  *(v45 + 24) = v44;
  v46 = MEMORY[0x277D84F90];
  *(v45 + 32) = 0;
  *(v45 + 40) = v46;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  sub_252F5388C();
  sub_252F49A84();
  v47 = *(v32 + 80);
  v48 = ((v47 + 16) & ~v47) + v33;
  v98 = v47 | 7;
  swift_allocObject();
  v99 = v34;
  sub_252F4C1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A48, &qword_252F568C0);
  sub_252F25B24(&qword_27F576A50, &qword_27F576A48, &qword_252F568C0);
  v119 = v42;
  v49 = a1;
  sub_252F5385C();
  v50 = a1 + *(v31 + 28);
  if (*v50)
  {
    v51 = *v50;
    sub_252F5391C();

    if ((sub_252F53B2C() & 1) == 0)
    {
      v52 = v51;
      sub_252F5391C();

      if ((sub_252F53AEC() & 1) == 0)
      {
        v53 = type metadata accessor for DisambiguationSnippetModel(0);
        v54 = v110;
        sub_252F39488(a1 + *(v53 + 24), v110, &qword_27F5766A0, &qword_252F55578);
        if (__swift_getEnumTagSinglePayload(v54, 1, v118) != 1)
        {
          v77 = v96;
          sub_252F4C1E0();
          v78 = sub_252F5332C();
          v79 = v97;
          *v97 = v78;
          *(v79 + 8) = 0;
          *(v79 + 16) = 1;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A70, &qword_252F568D8);
          sub_252F4B2A0(v77, a1, (v79 + *(v80 + 44)));
          sub_252F39488(v79, v113, &qword_27F576A30, &unk_252F568A0);
          swift_storeEnumTagMultiPayload();
          sub_252F25B24(&qword_27F576A68, &qword_27F576A30, &unk_252F568A0);
          v81 = sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60);
          v82 = sub_252F4C048(&qword_27F5767F0, MEMORY[0x277D63B78]);
          v129 = v114;
          v130 = v116;
          v131 = v81;
          v132 = v82;
          swift_getOpaqueTypeConformance2();
          v61 = v125;
          sub_252F533EC();
          sub_252F25CDC(v79, &qword_27F576A30, &unk_252F568A0);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A58, &qword_252F568C8);
          __swift_storeEnumTagSinglePayload(v61, 0, 1, v83);
          sub_252F4CBCC(v77, type metadata accessor for DisambiguationOption);
          goto LABEL_12;
        }

        sub_252F25CDC(v54, &qword_27F5766A0, &qword_252F55578);
      }
    }

    v55 = v51;
    sub_252F5391C();

    v56 = sub_252F53AEC();
    v57 = v125;
    if (v56)
    {
      v58 = type metadata accessor for DisambiguationSnippetModel(0);
      v59 = v117;
      sub_252F39488(v49 + *(v58 + 24), v117, &qword_27F5766A0, &qword_252F55578);
      if (__swift_getEnumTagSinglePayload(v59, 1, v118) != 1)
      {
        v62 = v103;
        sub_252F4C1E0();
        v63 = v62[1];
        v129 = *v62;
        v130 = v63;
        sub_252F49A84();
        sub_252F49A84();
        v64 = (v48 + *(v101 + 80)) & ~*(v101 + 80);
        swift_allocObject();
        sub_252F4C1E0();
        sub_252F4C1E0();
        sub_252F30A14();

        v65 = v104;
        sub_252F5379C();
        v66 = v106;
        sub_252F533FC();
        v67 = sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60);
        v68 = sub_252F4C048(&qword_27F5767F0, MEMORY[0x277D63B78]);
        v69 = v108;
        v70 = v114;
        v71 = v116;
        sub_252F5357C();
        (*(v107 + 8))(v66, v71);
        (*(v105 + 8))(v65, v70);
        v72 = v109;
        v73 = v115;
        (*(v109 + 16))(v113, v69, v115);
        swift_storeEnumTagMultiPayload();
        sub_252F25B24(&qword_27F576A68, &qword_27F576A30, &unk_252F568A0);
        v129 = v70;
        v130 = v71;
        v131 = v67;
        v132 = v68;
        swift_getOpaqueTypeConformance2();
        v74 = v125;
        sub_252F533EC();
        v75 = v73;
        v61 = v74;
        (*(v72 + 8))(v69, v75);
        sub_252F4CBCC(v62, type metadata accessor for DisambiguationOption);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A58, &qword_252F568C8);
        __swift_storeEnumTagSinglePayload(v74, 0, 1, v76);
        goto LABEL_12;
      }

      sub_252F25CDC(v59, &qword_27F5766A0, &qword_252F55578);
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A58, &qword_252F568C8);
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v60);
    v61 = v57;
LABEL_12:
    v85 = v120;
    v84 = v121;
    v86 = *(v121 + 16);
    v87 = v119;
    v88 = v122;
    v86(v120, v119, v122);
    v89 = v123;
    sub_252F39488(v61, v123, &qword_27F576A38, &qword_252F568B0);
    v90 = v61;
    v91 = v124;
    v86(v124, v85, v88);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A60, &qword_252F568D0);
    sub_252F39488(v89, &v91[*(v92 + 48)], &qword_27F576A38, &qword_252F568B0);
    sub_252F25CDC(v90, &qword_27F576A38, &qword_252F568B0);
    v93 = *(v84 + 8);
    v93(v87, v88);
    sub_252F25CDC(v89, &qword_27F576A38, &qword_252F568B0);
    return (v93)(v85, v88);
  }

  v95 = *(v50 + 8);
  sub_252F5394C();
  sub_252F4C048(&qword_27F575E48, MEMORY[0x277D63F60]);
  result = sub_252F5325C();
  __break(1u);
  return result;
}

uint64_t sub_252F49A84()
{
  v1 = OUTLINED_FUNCTION_7_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_3_1();
  v7(v6);
  return v0;
}

uint64_t sub_252F49AF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_252F5387C();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A80, &qword_252F568E8);
  v72 = *(v83 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v83);
  v70 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v61 - v10;
  v75 = type metadata accessor for DisambiguationOption(0);
  v66 = *(v75 - 8);
  v11 = *(v66 + 64);
  v12 = MEMORY[0x28223BE20](v75);
  v67 = v13;
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A88, &qword_252F568F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v82 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v61 - v19;
  v20 = type metadata accessor for DefaultDisambiguationView(0);
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A90, &qword_252F568F8);
  v79 = *(v24 - 8);
  v80 = v24;
  v25 = *(v79 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v78 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v61 - v28;
  v30 = type metadata accessor for DisambiguationSnippetModel(0);
  v109 = *(a1 + *(v30 + 20));
  sub_252F49A84();
  v31 = *(v22 + 80);
  v32 = (v31 + 16) & ~v31;
  v62 = v32 + v23;
  v63 = v31 | 7;
  swift_allocObject();
  v64 = v32;
  v65 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F4C1E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766B8, &qword_252F56900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A98, &qword_252F56908);
  sub_252F25B24(&qword_27F576AA0, &qword_27F5766B8, &qword_252F56900);
  sub_252F4CAD0();
  sub_252F4C048(&qword_27F576AB8, type metadata accessor for DisambiguationOption);
  v77 = v29;
  v33 = MEMORY[0x277D837D0];
  sub_252F537CC();
  v34 = a1 + *(v21 + 28);
  if (*v34)
  {
    v35 = *v34;
    sub_252F5391C();

    if (sub_252F53B2C())
    {
      v36 = a1 + *(v30 + 24);
      v37 = v76;
      sub_252F39488(v36, v76, &qword_27F5766A0, &qword_252F55578);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v75);
      v39 = v81;
      if (EnumTagSinglePayload == 1)
      {
        sub_252F25CDC(v37, &qword_27F5766A0, &qword_252F55578);
        v40 = 1;
        v41 = v83;
      }

      else
      {
        v42 = v69;
        sub_252F4C1E0();
        v44 = *v42;
        v43 = v42[1];
        v111 = v33;
        v112 = MEMORY[0x277D63F80];
        v109 = v44;
        v110 = v43;
        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        v105 = 0;
        v103 = 0u;
        v104 = 0u;
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        v99 = 0;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v94 = 0u;
        v95 = 0u;
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        v87 = 0;
        v85 = 0u;
        v86 = 0u;

        v45 = v71;
        sub_252F5386C();
        sub_252F49A84();
        sub_252F49A84();
        v46 = (v62 + *(v66 + 80)) & ~*(v66 + 80);
        swift_allocObject();
        sub_252F4C1E0();
        sub_252F4C1E0();
        sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08]);
        v47 = v70;
        v48 = v74;
        sub_252F5351C();

        (*(v73 + 8))(v45, v48);
        sub_252F4CBCC(v42, type metadata accessor for DisambiguationOption);
        v41 = v83;
        (*(v72 + 32))(v39, v47, v83);
        v40 = 0;
      }
    }

    else
    {
      v40 = 1;
      v41 = v83;
      v39 = v81;
    }

    __swift_storeEnumTagSinglePayload(v39, v40, 1, v41);
    v50 = v78;
    v49 = v79;
    v51 = *(v79 + 16);
    v52 = v77;
    v53 = v39;
    v54 = v80;
    v51(v78, v77, v80);
    v55 = v82;
    sub_252F39488(v53, v82, &qword_27F576A88, &qword_252F568F0);
    v56 = v84;
    v51(v84, v50, v54);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AC0, &unk_252F56910);
    sub_252F39488(v55, &v56[*(v57 + 48)], &qword_27F576A88, &qword_252F568F0);
    sub_252F25CDC(v53, &qword_27F576A88, &qword_252F568F0);
    v58 = *(v49 + 8);
    v58(v52, v54);
    sub_252F25CDC(v55, &qword_27F576A88, &qword_252F568F0);
    return (v58)(v50, v54);
  }

  else
  {
    v60 = *(v34 + 8);
    sub_252F5394C();
    sub_252F4C048(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F4A480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v89 = a3;
  v90 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AC8, &qword_252F56920);
  v3 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v67 - v4;
  v5 = type metadata accessor for DisambiguationOption(0);
  v6 = v5 - 8;
  v76 = *(v5 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = v8;
  v80 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DefaultDisambiguationView(0);
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = v11;
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252F5387C();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v12);
  v81 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A80, &qword_252F568E8);
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v15);
  v84 = &v67 - v17;
  v18 = sub_252F5373C();
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v71 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_252F5308C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_252F537EC();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AD0, &unk_252F56928);
  v27 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v29 = &v67 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v67 - v32;
  v34 = type metadata accessor for IconConfiguration();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F39488(v90 + *(v6 + 32), v33, &qword_27F576260, &qword_252F54AA0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_252F25CDC(v33, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    sub_252F4C1E0();
    v38 = *(v34 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v39 = v116;
    if (v116)
    {
      v67 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();

      sub_252F537FC();
      v41 = v71;
      v40 = v72;
      v42 = v73;
      (*(v72 + 104))(v71, *MEMORY[0x277CE1010], v73);
      sub_252F4C048(&qword_27F576020, MEMORY[0x277D63B20]);
      v43 = v69;
      sub_252F5352C();
      (*(v40 + 8))(v41, v42);
      (*(v68 + 8))(v26, v43);
      v44 = static ColorUtils.fromString(_:)(v67, v39);

      KeyPath = swift_getKeyPath();
      v46 = &v29[*(v70 + 36)];
      *v46 = KeyPath;
      v46[1] = v44;
      sub_252F4CC4C();
      v47 = sub_252F534EC();
      sub_252F25CDC(v29, &qword_27F576AD0, &unk_252F56928);
      v49 = *v90;
      v48 = v90[1];
      v117 = MEMORY[0x277D837D0];
      v118 = MEMORY[0x277D63F80];
      v115 = v49;
      v116 = v48;
      v114 = 0;
      v112 = 0u;
      v113 = 0u;
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0;
      v94 = 0u;
      v95 = 0u;
      *(&v92 + 1) = MEMORY[0x277CE11C8];
      v93 = MEMORY[0x277D63A60];
      *&v91 = v47;

      v50 = v81;
      sub_252F5386C();
      sub_252F49A84();
      sub_252F49A84();
      v51 = (v75 + *(v76 + 80) + ((*(v74 + 80) + 16) & ~*(v74 + 80))) & ~*(v76 + 80);
      swift_allocObject();
      sub_252F4C1E0();
      sub_252F4C1E0();
      v52 = sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08]);
      v54 = v83;
      v53 = v84;
      sub_252F5351C();

      (*(v82 + 8))(v50, v54);
      v56 = v85;
      v55 = v86;
      (*(v85 + 16))(v88, v53, v86);
      swift_storeEnumTagMultiPayload();
      v115 = v54;
      v116 = v52;
      swift_getOpaqueTypeConformance2();
      sub_252F533EC();

      (*(v56 + 8))(v53, v55);
      return sub_252F4CBCC(v37, type metadata accessor for IconConfiguration);
    }

    sub_252F4CBCC(v37, type metadata accessor for IconConfiguration);
  }

  v59 = *v90;
  v58 = v90[1];
  v117 = MEMORY[0x277D837D0];
  v118 = MEMORY[0x277D63F80];
  v115 = v59;
  v116 = v58;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;

  v60 = v81;
  sub_252F5386C();
  sub_252F49A84();
  sub_252F49A84();
  v61 = (v75 + *(v76 + 80) + ((*(v74 + 80) + 16) & ~*(v74 + 80))) & ~*(v76 + 80);
  swift_allocObject();
  sub_252F4C1E0();
  sub_252F4C1E0();
  v62 = sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08]);
  v64 = v83;
  v63 = v84;
  sub_252F5351C();

  (*(v82 + 8))(v60, v64);
  v66 = v85;
  v65 = v86;
  (*(v85 + 16))(v88, v63, v86);
  swift_storeEnumTagMultiPayload();
  v115 = v64;
  v116 = v62;
  swift_getOpaqueTypeConformance2();
  sub_252F533EC();
  return (*(v66 + 8))(v63, v65);
}

uint64_t Context.perform(directInvocation:isAwaitingResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5769E0, &qword_252F56798);
  MEMORY[0x2530AF650](&v9);
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v10 = a2;
    v11 = a3;
    v12 = a4 & 1;
    v9 = 1;
    sub_252F537BC();
    v7 = sub_252F5393C();
  }

  return v7 & 1;
}

uint64_t sub_252F4B16C(uint64_t a1)
{
  v2 = type metadata accessor for DefaultDisambiguationView(0);
  v3 = a1 + *(v2 + 20);
  v4 = *v3;
  if (*v3)
  {
    v5 = v2;
    v6 = *(type metadata accessor for DisambiguationOption(0) + 28);
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v8 = sub_252F5302C();
    v9 = (a1 + *(v5 + 28));
    v17 = *v9;
    v18 = *(v9 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
    sub_252F5377C();
    Context.perform(directInvocation:isAwaitingResponse:)(v8, v14, v15, v16);
  }

  else
  {
    v11 = *(v3 + 8);
    sub_252F5394C();
    OUTLINED_FUNCTION_1_4();
    sub_252F4C048(v12, v13);
    result = OUTLINED_FUNCTION_13_6();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F4B2A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25[1] = a2;
  v27 = a3;
  v4 = type metadata accessor for DisambiguationOption(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for DefaultDisambiguationView(0);
  v25[0] = *(v6 - 8);
  v7 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  sub_252F49A84();
  sub_252F49A84();
  v17 = (v7 + *(v26 + 80) + ((*(v25[0] + 80) + 16) & ~*(v25[0] + 80))) & ~*(v26 + 80);
  swift_allocObject();
  sub_252F4C1E0();
  sub_252F4C1E0();
  sub_252F30A14();

  sub_252F5379C();
  v18 = v9[2];
  v18(v13, v15, v8);
  v19 = v27;
  *v27 = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A78, &qword_252F568E0);
  v18(&v20[*(v21 + 48)], v13, v8);
  v22 = &v20[*(v21 + 64)];
  *v22 = 0;
  v22[8] = 1;
  v23 = v9[1];
  v23(v15, v8);
  return (v23)(v13, v8);
}

void sub_252F4B620()
{
  v1 = OUTLINED_FUNCTION_7_3();
  v2 = v0 + *(type metadata accessor for DefaultDisambiguationView(v1) + 20);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(type metadata accessor for DisambiguationOption(0) + 28);
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v9 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    v6 = *(v2 + 8);
    sub_252F5394C();
    OUTLINED_FUNCTION_1_4();
    sub_252F4C048(v7, v8);
    OUTLINED_FUNCTION_13_6();
    __break(1u);
  }
}

void sub_252F4B6F4()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for DefaultDisambiguationView(0) + 24);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F589D0;
  v3._countAndFlagsBits = 0xD00000000000006BLL;
  v3._object = 0x8000000252F57C40;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t objectdestroyTm_3()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_3_4(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v53 = *(v6 + 64);
  v7 = v0 + v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = type metadata accessor for DisambiguationSnippetModel(0);
  v12 = *(v7 + *(v11 + 20));

  v13 = v7 + *(v11 + 24);
  v14 = type metadata accessor for DisambiguationOption(0);
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    v48 = v7;
    v49 = v2;
    v50 = v4;
    v51 = (v4 + 16) & ~v4;
    v52 = v1;
    v15 = *(v13 + 8);

    v16 = *(v13 + 24);

    v17 = v13 + *(v14 + 24);
    v18 = type metadata accessor for IconConfiguration();
    if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
    {
      v10(v17, v8);
      v19 = v18[5];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
      OUTLINED_FUNCTION_1(v20);
      v22 = *(v21 + 8);
      v22(v17 + v19, v20);
      v23 = v18[6];
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      OUTLINED_FUNCTION_0_1(v24);
      (*(v25 + 8))(v17 + v23);
      v26 = v18[7];
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
      OUTLINED_FUNCTION_1(v27);
      v29 = *(v28 + 8);
      v29(v17 + v26, v27);
      v29(v17 + v18[8], v27);
      v30 = v18[9];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
      OUTLINED_FUNCTION_0_1(v31);
      (*(v32 + 8))(v17 + v30);
      v22(v17 + v18[10], v20);
      v33 = v18[11];
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
      OUTLINED_FUNCTION_0_1(v34);
      (*(v35 + 8))(v17 + v33);
      v22(v17 + v18[12], v20);
      v22(v17 + v18[13], v20);
      v36 = v18[14];
      v37 = type metadata accessor for DirectInvocationConfig();
      if (!__swift_getEnumTagSinglePayload(v17 + v36, 1, v37))
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
        OUTLINED_FUNCTION_0_1(v38);
        (*(v39 + 8))(v17 + v36);
      }
    }

    v40 = *(v14 + 28);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1(v41);
    (*(v42 + 8))(v13 + v40);
    v5 = v51;
    v1 = v52;
    v2 = v49;
    v4 = v50;
    v7 = v48;
  }

  v43 = v2[6];
  v44 = sub_252F5314C();
  OUTLINED_FUNCTION_0_1(v44);
  (*(v45 + 8))(v7 + v43);
  v46 = *(v7 + v2[7] + 8);

  return MEMORY[0x2821FE8E8](v1, v5 + v53, v4 | 7);
}

void sub_252F4BC68()
{
  v0 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 80);

  sub_252F4B6F4();
}

void sub_252F4BD28()
{
  type metadata accessor for DisambiguationSnippetModel(319);
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F5314C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisambiguationSnippetModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DisambiguationSnippetModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_252F4BF94()
{
  type metadata accessor for DisambiguationSnippetModel(319);
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F5314C();
      if (v2 <= 0x3F)
      {
        sub_252F2DCBC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_252F4C048(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252F4C090()
{
  result = qword_27F576A10;
  if (!qword_27F576A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5769D8, &qword_252F56790);
    sub_252F25B24(&qword_27F576A18, &qword_27F576A20, "NE");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576A10);
  }

  return result;
}

uint64_t sub_252F4C160(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_10(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_252F4C1E0()
{
  v1 = OUTLINED_FUNCTION_7_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_3_1();
  v7(v6);
  return v0;
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_3_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_3_4(v7);
  v86 = *(v8 + 80);
  v87 = (v4 + v6 + v86) & ~v86;
  v10 = *(v9 + 64);
  v88 = v0;
  v11 = v0 + v4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1(v12);
  v85 = *(v13 + 8);
  v85(v11, v12);
  v14 = type metadata accessor for DisambiguationSnippetModel(0);
  v15 = *(v11 + *(v14 + 20));

  v16 = v11 + *(v14 + 24);
  if (!__swift_getEnumTagSinglePayload(v16, 1, v7))
  {
    v81 = v10;
    v17 = *(v16 + 8);

    v18 = *(v16 + 24);

    v19 = v16 + *(v7 + 24);
    v20 = type metadata accessor for IconConfiguration();
    v21 = v7;
    if (!__swift_getEnumTagSinglePayload(v19, 1, v20))
    {
      v85(v19, v12);
      v22 = v20[5];
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
      OUTLINED_FUNCTION_1(v79);
      v80 = *(v23 + 8);
      v80(v19 + v22);
      v24 = v20[6];
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      OUTLINED_FUNCTION_0_1(v25);
      (*(v26 + 8))(v19 + v24);
      v77 = v20[7];
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
      v28 = *(*(v27 - 8) + 8);
      v82 = v21;
      v28(v19 + v77, v27);
      v28(v19 + v20[8], v27);
      v29 = v20[9];
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
      OUTLINED_FUNCTION_0_1(v30);
      (*(v31 + 8))(v19 + v29);
      (v80)(v19 + v20[10], v79);
      v78 = v20[11];
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
      OUTLINED_FUNCTION_0_1(v32);
      (*(v33 + 8))(v19 + v78);
      (v80)(v19 + v20[12], v79);
      (v80)(v19 + v20[13], v79);
      v21 = v82;
      v34 = v20[14];
      v35 = type metadata accessor for DirectInvocationConfig();
      if (!__swift_getEnumTagSinglePayload(v19 + v34, 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
        OUTLINED_FUNCTION_0_1(v36);
        (*(v37 + 8))(v19 + v34);
      }
    }

    v7 = v21;
    v38 = *(v21 + 28);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1(v39);
    (*(v40 + 8))(v16 + v38);
    v10 = v81;
  }

  v41 = v1[6];
  v42 = sub_252F5314C();
  OUTLINED_FUNCTION_0_1(v42);
  (*(v43 + 8))(v11 + v41);
  v44 = *(v11 + v1[7] + 8);

  v45 = *(v88 + v87 + 8);

  v46 = *(v88 + v87 + 24);

  v47 = v88 + v87 + *(v7 + 24);
  v48 = type metadata accessor for IconConfiguration();
  v49 = v7;
  if (!__swift_getEnumTagSinglePayload(v47, 1, v48))
  {
    v85(v47, v12);
    v83 = v7;
    v50 = v48[5];
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1(v51);
    v53 = *(v52 + 8);
    v53(v47 + v50, v51);
    v54 = v48[6];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_0_1(v55);
    (*(v56 + 8))(v47 + v54);
    v57 = v48[7];
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
    OUTLINED_FUNCTION_1(v58);
    v60 = *(v59 + 8);
    v84 = v3;
    v61 = v47 + v57;
    v49 = v83;
    v60(v61, v58);
    v60(v47 + v48[8], v58);
    v62 = v48[9];
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_0_1(v63);
    (*(v64 + 8))(v47 + v62);
    v53(v47 + v48[10], v51);
    v65 = v48[11];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_0_1(v66);
    v68 = v47 + v65;
    v3 = v84;
    (*(v67 + 8))(v68);
    v53(v47 + v48[12], v51);
    v53(v47 + v48[13], v51);
    v69 = v48[14];
    v70 = type metadata accessor for DirectInvocationConfig();
    if (!__swift_getEnumTagSinglePayload(v47 + v69, 1, v70))
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      OUTLINED_FUNCTION_0_1(v71);
      (*(v72 + 8))(v47 + v69);
    }
  }

  v73 = *(v49 + 28);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_0_1(v74);
  (*(v75 + 8))(v88 + v87 + v73);

  return MEMORY[0x2821FE8E8](v88, v87 + v10, v3 | v86 | 7);
}

uint64_t sub_252F4C990(uint64_t (*a1)(unint64_t, unint64_t))
{
  v3 = *(type metadata accessor for DefaultDisambiguationView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_10(v6);
  return a1(v1 + v4, v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80)));
}

uint64_t sub_252F4CA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_10(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_252F4A480(a1, v7, a2);
}

unint64_t sub_252F4CAD0()
{
  result = qword_27F576AA8;
  if (!qword_27F576AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576A98, &qword_252F56908);
    sub_252F5387C();
    sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576AA8);
  }

  return result;
}

uint64_t sub_252F4CBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_252F4CC20(uint64_t *a1)
{
  v1 = *a1;

  return sub_252F532DC();
}

unint64_t sub_252F4CC4C()
{
  result = qword_27F576AD8;
  if (!qword_27F576AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576AD0, &unk_252F56928);
    sub_252F537EC();
    sub_252F4C048(&qword_27F576020, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576AE0, &qword_27F576AE8, &qword_252F56968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576AD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_252F4CBCC(v0, type metadata accessor for DisambiguationSnippetModel);
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_252F5394C();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_252F5325C();
}

uint64_t sub_252F4CE24()
{
  OUTLINED_FUNCTION_0_7();
  v3 = 0x5479616C70736964;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x736E6F6974706FLL;
    }

    else
    {
      v5 = 0x4F746C7561666564;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00006E6F697470;
    }
  }

  else
  {
    v5 = 0x5479616C70736964;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x736E6F6974706FLL;
    }

    else
    {
      v3 = 0x4F746C7561666564;
    }

    if (v2 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xED00006E6F697470;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_8();
  }

  return v8 & 1;
}

uint64_t sub_252F4CF40(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000017;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = 0x6944646C756F6873;
    }

    if (v3 == 1)
    {
      v5 = 0x8000000252F57A10;
    }

    else
    {
      v5 = 0xED000079616C7073;
    }
  }

  else
  {
    v5 = 0x8000000252F579F0;
    v4 = 0xD000000000000017;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001CLL;
    }

    else
    {
      v2 = 0x6944646C756F6873;
    }

    if (a2 == 1)
    {
      v6 = 0x8000000252F57A10;
    }

    else
    {
      v6 = 0xED000079616C7073;
    }
  }

  else
  {
    v6 = 0x8000000252F579F0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252F53CAC();
  }

  return v8 & 1;
}

uint64_t sub_252F4D038(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  v5 = 0x74617265706D6574;
  v6 = 0xEB00000000657275;
  switch(v4)
  {
    case 1:
      v5 = 0x547972616D697270;
      v6 = 0xEB00000000747865;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_7_11();
      v6 = 0xED00000000657275;
      break;
    case 3:
      v5 = 0x6E69746165487369;
      v6 = 0xE900000000000067;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_9_7();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_0_7();
      break;
    case 2:
      v2 = 21625;
      OUTLINED_FUNCTION_2_13();
      break;
    case 3:
      v3 = 0x6E69746165487369;
      v2 = 0xE900000000000067;
      break;
    case 4:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_8();
  }

  return v8 & 1;
}

uint64_t sub_252F4D18C()
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_19_3();
  v4 = v3;
  v5 = "iconConfiguration";
  v6 = v2;
  v7 = v0;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_7_11();
      goto LABEL_7;
    case 2:
      v7 = 0x8000000252F57730;
      v6 = 0xD000000000000015;
      break;
    case 3:
      v6 = 0xD000000000000011;
      v7 = 0x8000000252F57600;
      break;
    case 4:
      v6 = 0x7365636375537369;
      v7 = 0xE900000000000073;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_9_7();
      break;
    case 6:
      v6 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
      break;
    case 7:
      v6 = 0x6E45656C67676F74;
      v7 = 0x64656C6261;
LABEL_7:
      v7 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x7261646E6F636573;
      v8 = 0x7478655479;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_4_9();
      v2 = v9 | 4;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v0 = (v5 - 32) | 0x8000000000000000;
      break;
    case 4:
      v2 = 0x7365636375537369;
      v0 = 0xE900000000000073;
      break;
    case 5:
      OUTLINED_FUNCTION_11_4();
      break;
    case 6:
      v2 = 0x6572676F72506E69;
      v0 = 0xEA00000000007373;
      break;
    case 7:
      v2 = 0x6E45656C67676F74;
      v8 = 0x64656C6261;
LABEL_16:
      v0 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_8();
  }

  return v11 & 1;
}

uint64_t sub_252F4D380(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006C616369;
  v3 = 0x6863726172656968;
  v4 = a1;
  v5 = 0x6863726172656968;
  v6 = 0xEC0000006C616369;
  switch(v4)
  {
    case 1:
      v5 = 0x6C6F6369746C756DLL;
      v6 = 0xEA0000000000726FLL;
      break;
    case 2:
      v5 = 0x6F7268636F6E6F6DLL;
      v6 = 0xEA0000000000656DLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x657474656C6170;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C6F6369746C756DLL;
      v2 = 0xEA0000000000726FLL;
      break;
    case 2:
      v3 = 0x6F7268636F6E6F6DLL;
      v2 = 0xEA0000000000656DLL;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x657474656C6170;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_8();
  }

  return v8 & 1;
}

uint64_t sub_252F4D4E0(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6562616CLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6C6562616CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x614C686365657073;
      v3 = 0xEB000000006C6562;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F69746361;
      break;
    case 3:
      v5 = 0x666E6F436E6F6369;
      v3 = 0xEA00000000006769;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x614C686365657073;
      v6 = 0xEB000000006C6562;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F69746361;
      break;
    case 3:
      v2 = 0x666E6F436E6F6369;
      v6 = 0xEA00000000006769;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_6();
  }

  return v8 & 1;
}

uint64_t sub_252F4D644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_8_6();
  }

  return v10 & 1;
}

uint64_t sub_252F4D6C8(char a1, char a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_18_3();
    if (v2)
    {
      v4 = 6710895;
    }

    else
    {
      v4 = 0x64656C696166;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v4 = 28271;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_18_3();
    if (v6)
    {
      v8 = 6710895;
    }

    else
    {
      v8 = 0x64656C696166;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 28271;
  }

  if (v4 == v8 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_6();
  }

  return v11 & 1;
}

uint64_t sub_252F4D78C(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065756C61;
  v3 = 0x5672656767697274;
  v4 = a1;
  v5 = 0x5672656767697274;
  v6 = 0xEC00000065756C61;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000252F574F0;
      v5 = 0xD000000000000015;
      break;
    case 2:
      v5 = 0x4972656767697274;
      v6 = 0xEB000000006E6F63;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v7 = "Icons";
      goto LABEL_7;
    case 4:
      v5 = 0x656C756465686373;
      v6 = 0xED00007478655464;
      break;
    case 5:
      v5 = 0xD000000000000011;
      v7 = "automationSubtext";
LABEL_7:
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_4_9();
      v3 = v8 | 4;
      break;
    case 2:
      v3 = 0x4972656767697274;
      v2 = 0xEB000000006E6F63;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v9 = "Icons";
      goto LABEL_14;
    case 4:
      v2 = 21604;
      OUTLINED_FUNCTION_2_13();
      break;
    case 5:
      v3 = 0xD000000000000011;
      v9 = "automationSubtext";
LABEL_14:
      v2 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_8();
  }

  return v11 & 1;
}

uint64_t sub_252F4D94C()
{
  v0 = SnippetHomeDeviceType.rawValue.getter();
  v2 = v1;
  if (v0 == SnippetHomeDeviceType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_8_6();
  }

  return v5 & 1;
}

uint64_t sub_252F4DA58()
{
  sub_252F53CCC();
  OUTLINED_FUNCTION_12_6();
  sub_252F539BC();
  return sub_252F53CEC();
}

uint64_t sub_252F4DAC4()
{
  OUTLINED_FUNCTION_21_2();
  v0(v1);
  OUTLINED_FUNCTION_5_9();

  return sub_252F53CEC();
}

uint64_t sub_252F4DB24()
{
  OUTLINED_FUNCTION_21_2();
  v0(v3, v1);
  return sub_252F53CEC();
}

uint64_t sub_252F4DB7C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_17_3();
  }

  sub_252F539BC();
}

uint64_t sub_252F4DC20()
{
  sub_252F539BC();
}

uint64_t sub_252F4DCC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15_2();
      break;
    case 2:
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_14_4();
      break;
    case 4:
      OUTLINED_FUNCTION_10_6();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4DD98()
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_15_2();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_14_4();
      break;
    case 2:
      OUTLINED_FUNCTION_4_9();
      break;
    case 5:
      OUTLINED_FUNCTION_10_6();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4DEA4()
{
  sub_252F539BC();
}

uint64_t sub_252F4DF70(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_12_6();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4E03C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_13_7();
}

uint64_t sub_252F4E080(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_18_3();
  }

  sub_252F539BC();
}

uint64_t sub_252F4E0F0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_4_9();
      break;
    case 4:
      OUTLINED_FUNCTION_2_13();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4E1EC()
{
  SnippetHomeDeviceType.rawValue.getter();
  OUTLINED_FUNCTION_13_7();
}

uint64_t sub_252F4E238()
{
  sub_252F53CCC();
  SnippetHomeDeviceType.rawValue.getter();
  OUTLINED_FUNCTION_5_9();

  return sub_252F53CEC();
}

uint64_t sub_252F4E2A0(uint64_t a1, char a2)
{
  sub_252F53CCC();
  if (a2)
  {
    OUTLINED_FUNCTION_18_3();
  }

  sub_252F539BC();

  return sub_252F53CEC();
}

uint64_t sub_252F4E36C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_252F53CCC();
  a3(v6, a2);
  return sub_252F53CEC();
}

uint64_t sub_252F4E3D0()
{
  sub_252F53CCC();
  OUTLINED_FUNCTION_12_6();
  sub_252F539BC();
  return sub_252F53CEC();
}

uint64_t sub_252F4E42C()
{
  sub_252F53CCC();
  sub_252F539BC();

  return sub_252F53CEC();
}

uint64_t sub_252F4E4FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_252F53CCC();
  a3(a2);
  OUTLINED_FUNCTION_5_9();

  return sub_252F53CEC();
}

uint64_t sub_252F4E550(uint64_t a1, char a2)
{
  sub_252F53CCC();
  if (!a2)
  {
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_17_3();
  }

  sub_252F539BC();

  return sub_252F53CEC();
}

unint64_t CallToActionSnippetModel.description.getter()
{
  v1 = v0;
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](0xD000000000000019, 0x8000000252F58A20);

  sub_252F53B8C();

  v2 = type metadata accessor for CallToActionSnippetModel();
  v3 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v4 = sub_252F5302C();
  v5 = [v4 description];
  v6 = sub_252F5397C();
  v8 = v7;

  MEMORY[0x2530AF890](v6, v8);

  MEMORY[0x2530AF890](0xD00000000000001ELL, 0x8000000252F58A40);

  sub_252F53B8C();

  if (*(v1 + *(v2 + 24)))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + *(v2 + 24)))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v9, v10);

  MEMORY[0x2530AF890](0x6944646C756F6873, 0xEF203A79616C7073);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t CallToActionSnippetModel.callToActionButtonLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.getter()
{
  v0 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t type metadata accessor for CallToActionSnippetModel()
{
  result = qword_27F576B18;
  if (!qword_27F576B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallToActionSnippetModel.init(callToActionButtonLabel:callToActionDirectInvocation:shouldDisplay:)@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CallToActionSnippetModel();
  *(a2 + *(v4 + 24)) = a1;
  sub_252F5309C();
  v5 = *(v4 + 20);
  sub_252F290F0();
  return sub_252F5300C();
}

uint64_t sub_252F4E990(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CallToActionSnippetModel.callToActionButtonLabel.setter();
}

uint64_t (*CallToActionSnippetModel.callToActionButtonLabel.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F1EBA8;
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.setter()
{
  v0 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t (*CallToActionSnippetModel.callToActionDirectInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v2[4] = sub_252F5301C();
  return sub_252F20BA0;
}

uint64_t CallToActionSnippetModel.shouldDisplay.setter(char a1)
{
  result = type metadata accessor for CallToActionSnippetModel();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_252F4EC54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F1CCC0();
  *a2 = result;
  return result;
}

uint64_t sub_252F4EC84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F1CD0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F4ECB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F1CCC0();
  *a1 = result;
  return result;
}

uint64_t sub_252F4ECE0(uint64_t a1)
{
  v2 = sub_252F4F144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F4ED1C(uint64_t a1)
{
  v2 = sub_252F4F144();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CallToActionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F58A60;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CallToActionSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16(v3);
  v33 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AF0, &qword_252F56970);
  OUTLINED_FUNCTION_16(v36);
  v34 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for CallToActionSnippetModel();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F4F144();
  v35 = v15;
  v21 = v39;
  sub_252F53CFC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v16;
  v22 = v19;
  v23 = v33;
  LOBYTE(v37) = 0;
  v37 = sub_252F53C0C();
  v38 = v24;
  sub_252F5309C();
  LOBYTE(v37) = 1;
  sub_252F2A098(&qword_27F576280);
  sub_252F53C2C();
  sub_252F5302C();
  (*(v23 + 8))(v9, v3);
  v25 = v39;
  v26 = *(v39 + 20);
  sub_252F290F0();
  sub_252F5300C();
  LOBYTE(v37) = 2;
  v27 = sub_252F53C1C();
  v28 = OUTLINED_FUNCTION_3_12();
  v29(v28);
  *(v22 + *(v25 + 24)) = v27 & 1;
  sub_252F4F198(v22, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_252F3F7A8(v22);
}

unint64_t sub_252F4F144()
{
  result = qword_27F576AF8;
  if (!qword_27F576AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576AF8);
  }

  return result;
}

uint64_t sub_252F4F198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallToActionSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CallToActionSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16(v4);
  v26 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B00, &qword_252F56978);
  OUTLINED_FUNCTION_16(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F4F144();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v27) = 0;
  v20 = v28;
  sub_252F53C5C();
  if (v20)
  {
    (*(v13 + 8))(v18, v11);
  }

  else
  {

    v22 = type metadata accessor for CallToActionSnippetModel();
    v23 = v2 + *(v22 + 20);
    sub_252F5302C();
    sub_252F290F0();
    sub_252F5300C();
    LOBYTE(v27) = 1;
    sub_252F2A098(&qword_27F576298);
    sub_252F53C7C();
    (*(v26 + 8))(v10, v4);
    v24 = *(v2 + *(v22 + 24));
    LOBYTE(v27) = 2;
    sub_252F53C6C();
    return (*(v13 + 8))(v18, v11);
  }
}

uint64_t sub_252F4F538(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallToActionSnippetModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_252F4F5D4()
{
  sub_252F27FBC();
  if (v0 <= 0x3F)
  {
    sub_252F3D700();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallToActionSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F4F740()
{
  result = qword_27F576B28;
  if (!qword_27F576B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B28);
  }

  return result;
}

unint64_t sub_252F4F798()
{
  result = qword_27F576B30;
  if (!qword_27F576B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B30);
  }

  return result;
}

unint64_t sub_252F4F7F0()
{
  result = qword_27F576B38;
  if (!qword_27F576B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  result = *(v0 - 112);
  v2 = *(*(v0 - 120) + 8);
  v3 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_252F539BC();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_252F53CAC();
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_252F53CAC();
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_252F539BC();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_252F53CCC();
}

uint64_t HomeAutomationSnippetModels.snippetHidden(for:idiom:)()
{
  v1 = sub_252F5310C();
  v2 = OUTLINED_FUNCTION_16(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for HomeAutomationSnippetModels();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  sub_252F4FBDC(v0, v15 - v14);
  if ((swift_getEnumCaseMultiPayload() | 2) == 2)
  {
    v17 = 0;
  }

  else
  {
    (*(v4 + 104))(v9, *MEMORY[0x277D61BE8], v1);
    v17 = sub_252F530FC();
    (*(v4 + 8))(v9, v1);
  }

  sub_252F4FFD0(v16, type metadata accessor for HomeAutomationSnippetModels);
  return v17 & 1;
}

uint64_t type metadata accessor for HomeAutomationSnippetModels()
{
  result = qword_27F576C00;
  if (!qword_27F576C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F4FBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAutomationSnippetModels();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeAutomationSnippetModels.description.getter()
{
  v2 = v0;
  v3 = type metadata accessor for TemperatureSnippetModel();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for CallToActionSnippetModel();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for AutomationSnippetModel();
  v18 = OUTLINED_FUNCTION_10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v23 = v22 - v21;
  v24 = type metadata accessor for CompletionSnippetModel();
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_0();
  v30 = v29 - v28;
  v31 = type metadata accessor for ConfirmationSnippetModel();
  v32 = OUTLINED_FUNCTION_10(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  v35 = OUTLINED_FUNCTION_21_3();
  v36 = type metadata accessor for DisambiguationSnippetModel(v35);
  v37 = OUTLINED_FUNCTION_10(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_0();
  v42 = v41 - v40;
  v43 = type metadata accessor for HomeAutomationSnippetModels();
  v44 = OUTLINED_FUNCTION_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  sub_252F4FBDC(v2, v48 - v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v59, v1, v60);
      ConfirmationSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v51 = type metadata accessor for ConfirmationSnippetModel;
      v52 = v1;
      break;
    case 2u:
      v55 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v55, v30, v56);
      CompletionSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v51 = type metadata accessor for CompletionSnippetModel;
      v52 = v30;
      break;
    case 3u:
      v57 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v57, v23, v58);
      AutomationSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v51 = type metadata accessor for AutomationSnippetModel;
      v52 = v23;
      break;
    case 4u:
      v53 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v53, v16, v54);
      CallToActionSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v51 = type metadata accessor for CallToActionSnippetModel;
      v52 = v16;
      break;
    case 5u:
      v61 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v61, v9, v62);
      TemperatureSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v51 = type metadata accessor for TemperatureSnippetModel;
      v52 = v9;
      break;
    default:
      v49 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v49, v42, v50);
      sub_252F3A05C();
      OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_3();
      v52 = v42;
      break;
  }

  sub_252F4FFD0(v52, v51);
  return v2;
}

uint64_t sub_252F4FFD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_252F50034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000252F58AD0 == a2;
  if (v3 || (sub_252F53CAC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000252F58AF0 == a2;
    if (v6 || (sub_252F53CAC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974656C706D6F63 && a2 == 0xEE00776569566E6FLL;
      if (v7 || (sub_252F53CAC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616D6F747561 && a2 == 0xEE00776569566E6FLL;
        if (v8 || (sub_252F53CAC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000252F58B10 == a2;
          if (v9 || (sub_252F53CAC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x74617265706D6574 && a2 == 0xEF77656956657275)
          {

            return 5;
          }

          else
          {
            v11 = sub_252F53CAC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_252F50274(unsigned __int8 a1)
{
  sub_252F53CCC();
  MEMORY[0x2530AFB80](a1);
  return sub_252F53CEC();
}

unint64_t sub_252F502BC(char a1)
{
  result = 0x6974656C706D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6974616D6F747561;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x74617265706D6574;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_252F5038C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_252F53CAC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252F503FC()
{
  sub_252F53CCC();
  MEMORY[0x2530AFB80](0);
  return sub_252F53CEC();
}

uint64_t sub_252F50444(uint64_t a1)
{
  v2 = sub_252F51358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50480(uint64_t a1)
{
  v2 = sub_252F51358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F504BC(uint64_t a1)
{
  v2 = sub_252F51304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F504F8(uint64_t a1)
{
  v2 = sub_252F51304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F50550()
{
  v1 = *v0;
  sub_252F53CCC();
  MEMORY[0x2530AFB80](v1);
  return sub_252F53CEC();
}

uint64_t sub_252F5059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F50034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F505C4(uint64_t a1)
{
  v2 = sub_252F5125C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50600(uint64_t a1)
{
  v2 = sub_252F5125C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F5063C(uint64_t a1)
{
  v2 = sub_252F513AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50678(uint64_t a1)
{
  v2 = sub_252F513AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F506B4(uint64_t a1)
{
  v2 = sub_252F51400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F506F0(uint64_t a1)
{
  v2 = sub_252F51400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F5072C(uint64_t a1)
{
  v2 = sub_252F51454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50768(uint64_t a1)
{
  v2 = sub_252F51454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F507A4()
{
  sub_252F53CCC();
  MEMORY[0x2530AFB80](0);
  return sub_252F53CEC();
}

uint64_t sub_252F507E4(uint64_t a1)
{
  v2 = sub_252F512B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50820(uint64_t a1)
{
  v2 = sub_252F512B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationSnippetModels.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B40, &qword_252F56B80);
  v4 = OUTLINED_FUNCTION_16(v3);
  v141 = v5;
  v142 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_3();
  v140 = v9;
  OUTLINED_FUNCTION_7();
  v138 = type metadata accessor for TemperatureSnippetModel();
  v10 = OUTLINED_FUNCTION_1(v138);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v139 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B48, &qword_252F56B88);
  v16 = OUTLINED_FUNCTION_16(v15);
  v136 = v17;
  v137 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11_3();
  v135 = v21;
  OUTLINED_FUNCTION_7();
  v133 = type metadata accessor for CallToActionSnippetModel();
  v22 = OUTLINED_FUNCTION_1(v133);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  v134 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B50, &qword_252F56B90);
  v28 = OUTLINED_FUNCTION_16(v27);
  v131 = v29;
  v132 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11_3();
  v130 = v33;
  OUTLINED_FUNCTION_7();
  v128 = type metadata accessor for AutomationSnippetModel();
  v34 = OUTLINED_FUNCTION_1(v128);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_0();
  v129 = v38 - v37;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B58, &qword_252F56B98);
  OUTLINED_FUNCTION_16(v127);
  v126 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_11_3();
  v125 = v43;
  OUTLINED_FUNCTION_7();
  v123 = type metadata accessor for CompletionSnippetModel();
  v44 = OUTLINED_FUNCTION_1(v123);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  v124 = v48 - v47;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B60, &qword_252F56BA0);
  OUTLINED_FUNCTION_16(v122);
  v121 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_11_3();
  v120 = v53;
  OUTLINED_FUNCTION_7();
  v118 = type metadata accessor for ConfirmationSnippetModel();
  v54 = OUTLINED_FUNCTION_1(v118);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_5_0();
  v119 = v58 - v57;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B68, &qword_252F56BA8);
  OUTLINED_FUNCTION_16(v117);
  v116 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v62);
  v63 = OUTLINED_FUNCTION_21_3();
  v64 = type metadata accessor for DisambiguationSnippetModel(v63);
  v65 = OUTLINED_FUNCTION_1(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_5_0();
  v70 = v69 - v68;
  v71 = type metadata accessor for HomeAutomationSnippetModels();
  v72 = OUTLINED_FUNCTION_1(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_5_0();
  v77 = v76 - v75;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B70, &qword_252F56BB0);
  v79 = OUTLINED_FUNCTION_16(v78);
  v144 = v80;
  v145 = v79;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v83);
  v85 = &v115 - v84;
  v86 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F5125C();
  v143 = v85;
  sub_252F53D0C();
  sub_252F4FBDC(v146, v77);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v92 = v119;
      sub_252F52264(v77, v119, type metadata accessor for ConfirmationSnippetModel);
      v148 = 1;
      sub_252F51400();
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_14_5();
      sub_252F52354(v106, v107);
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2();
      v108 = OUTLINED_FUNCTION_6_9();
      v109(v108);
      v97 = type metadata accessor for ConfirmationSnippetModel;
      goto LABEL_8;
    case 2u:
      v92 = v124;
      sub_252F52264(v77, v124, type metadata accessor for CompletionSnippetModel);
      v149 = 2;
      sub_252F513AC();
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_9_8();
      sub_252F52354(v98, v99);
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2();
      v100 = OUTLINED_FUNCTION_6_9();
      v101(v100);
      v97 = type metadata accessor for CompletionSnippetModel;
      goto LABEL_8;
    case 3u:
      v92 = v129;
      sub_252F52264(v77, v129, type metadata accessor for AutomationSnippetModel);
      v150 = 3;
      sub_252F51358();
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_8_7();
      sub_252F52354(v102, v103);
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2();
      v104 = OUTLINED_FUNCTION_6_9();
      v105(v104);
      v97 = type metadata accessor for AutomationSnippetModel;
      goto LABEL_8;
    case 4u:
      v92 = v134;
      sub_252F52264(v77, v134, type metadata accessor for CallToActionSnippetModel);
      v151 = 4;
      sub_252F51304();
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_10_7();
      sub_252F52354(v93, v94);
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2();
      v95 = OUTLINED_FUNCTION_6_9();
      v96(v95);
      v97 = type metadata accessor for CallToActionSnippetModel;
      goto LABEL_8;
    case 5u:
      v92 = v139;
      sub_252F52264(v77, v139, type metadata accessor for TemperatureSnippetModel);
      v152 = 5;
      sub_252F512B0();
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_12_7();
      sub_252F52354(v110, v111);
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2();
      v112 = OUTLINED_FUNCTION_6_9();
      v113(v112);
      v97 = type metadata accessor for TemperatureSnippetModel;
LABEL_8:
      v90 = v97;
      v91 = v92;
      break;
    default:
      sub_252F52264(v77, v70, type metadata accessor for DisambiguationSnippetModel);
      v147 = 0;
      sub_252F51454();
      v71 = v145;
      v85 = v143;
      sub_252F53C4C();
      OUTLINED_FUNCTION_13_8();
      sub_252F52354(v87, v88);
      v89 = v117;
      sub_252F53C7C();
      (*(v116 + 8))(v1, v89);
      OUTLINED_FUNCTION_15_3();
      v91 = v70;
      break;
  }

  sub_252F4FFD0(v91, v90);
  return (*(v144 + 8))(v85, v71);
}

unint64_t sub_252F5125C()
{
  result = qword_27F576B78;
  if (!qword_27F576B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B78);
  }

  return result;
}

unint64_t sub_252F512B0()
{
  result = qword_27F576B80;
  if (!qword_27F576B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B80);
  }

  return result;
}

unint64_t sub_252F51304()
{
  result = qword_27F576B88;
  if (!qword_27F576B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B88);
  }

  return result;
}

unint64_t sub_252F51358()
{
  result = qword_27F576B90;
  if (!qword_27F576B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B90);
  }

  return result;
}

unint64_t sub_252F513AC()
{
  result = qword_27F576B98;
  if (!qword_27F576B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B98);
  }

  return result;
}

unint64_t sub_252F51400()
{
  result = qword_27F576BA0;
  if (!qword_27F576BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576BA0);
  }

  return result;
}

unint64_t sub_252F51454()
{
  result = qword_27F576BA8;
  if (!qword_27F576BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576BA8);
  }

  return result;
}

uint64_t HomeAutomationSnippetModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BB0, &qword_252F56BB8);
  OUTLINED_FUNCTION_16(v139);
  v145 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_3();
  v153 = v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BB8, &qword_252F56BC0);
  OUTLINED_FUNCTION_16(v138);
  v144 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_3();
  v149 = v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BC0, &qword_252F56BC8);
  OUTLINED_FUNCTION_16(v137);
  v143 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_3();
  v148 = v18;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BC8, &qword_252F56BD0);
  OUTLINED_FUNCTION_16(v136);
  v142 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_3();
  v152 = v23;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BD0, &qword_252F56BD8);
  OUTLINED_FUNCTION_16(v135);
  v141 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11_3();
  v147 = v28;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BD8, &qword_252F56BE0);
  OUTLINED_FUNCTION_16(v134);
  v140 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11_3();
  v146 = v33;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BE0, &qword_252F56BE8);
  OUTLINED_FUNCTION_16(v155);
  v151 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_3();
  v154 = type metadata accessor for HomeAutomationSnippetModels();
  v38 = OUTLINED_FUNCTION_1(v154);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v133 = &v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v132 = &v125 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v125 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v125 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v125 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v125 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v125 - v57;
  v60 = a1[3];
  v59 = a1[4];
  v156 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v60);
  sub_252F5125C();
  v61 = v157;
  sub_252F53CFC();
  if (v61)
  {
    goto LABEL_10;
  }

  v130 = v53;
  v128 = v50;
  v129 = v47;
  v131 = v56;
  v62 = v152;
  v157 = v58;
  v63 = v155;
  v64 = sub_252F53C3C();
  result = sub_252F521A0(v64, 0);
  if (v67 == v68 >> 1)
  {
    v69 = v2;
    v70 = v151;
LABEL_9:
    OUTLINED_FUNCTION_27_2();
    v81 = sub_252F53BAC();
    swift_allocError();
    v83 = v82;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BE8, &qword_252F56BF0) + 48);
    *v83 = v62;
    sub_252F53BFC();
    sub_252F53B9C();
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x277D84160], v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v69, v63);
LABEL_10:
    v85 = v156;
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v127 = 0;
  if (v67 < (v68 >> 1))
  {
    v126 = *(v66 + v67);
    sub_252F521E8(v67 + 1, v68 >> 1, result, v66, v67, v68);
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    v75 = v157;
    if (v72 == v74 >> 1)
    {
      v76 = v150;
      switch(v126)
      {
        case 1:
          v159 = 1;
          sub_252F51400();
          v89 = v147;
          v90 = v155;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, &v159, v155);
          type metadata accessor for ConfirmationSnippetModel();
          OUTLINED_FUNCTION_14_5();
          sub_252F52354(v97, v98);
          OUTLINED_FUNCTION_25_2();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          (*(v141 + 8))(v89, v90);
          v118 = OUTLINED_FUNCTION_2_14();
          v119(v118);
          v120 = v130;
          swift_storeEnumTagMultiPayload();
          v117 = v120;
          v116 = v156;
          break;
        case 2:
          v160 = 2;
          sub_252F513AC();
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, &v160, v155);
          type metadata accessor for CompletionSnippetModel();
          OUTLINED_FUNCTION_9_8();
          sub_252F52354(v91, v92);
          v93 = v128;
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_22_0();
          v106(v105);
          v107 = OUTLINED_FUNCTION_2_14();
          v108(v107);
          swift_storeEnumTagMultiPayload();
          v117 = v93;
          goto LABEL_18;
        case 3:
          v161 = 3;
          sub_252F51358();
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, &v161, v155);
          OUTLINED_FUNCTION_27_2();
          type metadata accessor for AutomationSnippetModel();
          OUTLINED_FUNCTION_8_7();
          sub_252F52354(v94, v95);
          v96 = v129;
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v109 = OUTLINED_FUNCTION_28_2();
          v110(v109);
          v111 = OUTLINED_FUNCTION_2_14();
          v112(v111);
          swift_storeEnumTagMultiPayload();
          v117 = v96;
          v116 = v156;
          v75 = v157;
          break;
        case 4:
          v162 = 4;
          sub_252F51304();
          v86 = v155;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, &v162, v155);
          OUTLINED_FUNCTION_27_2();
          type metadata accessor for CallToActionSnippetModel();
          OUTLINED_FUNCTION_10_7();
          sub_252F52354(v87, v88);
          OUTLINED_FUNCTION_29_1(&v164);
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_22_0();
          v102(v101);
          v103 = OUTLINED_FUNCTION_2_14();
          v104(v103);
          goto LABEL_17;
        case 5:
          v163 = 5;
          sub_252F512B0();
          v86 = v155;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, &v163, v155);
          OUTLINED_FUNCTION_27_2();
          type metadata accessor for TemperatureSnippetModel();
          OUTLINED_FUNCTION_12_7();
          sub_252F52354(v99, v100);
          OUTLINED_FUNCTION_29_1(&v165);
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v121 = OUTLINED_FUNCTION_22_0();
          v122(v121);
          v123 = OUTLINED_FUNCTION_2_14();
          v124(v123);
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v117 = v86;
LABEL_18:
          v116 = v156;
          v76 = v150;
          break;
        default:
          v158 = 0;
          sub_252F51454();
          v77 = v146;
          v78 = v155;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.DisambiguationViewCodingKeys, &v158, v155);
          type metadata accessor for DisambiguationSnippetModel(0);
          OUTLINED_FUNCTION_13_8();
          sub_252F52354(v79, v80);
          OUTLINED_FUNCTION_25_2();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          (*(v140 + 8))(v77, v78);
          v113 = OUTLINED_FUNCTION_2_14();
          v114(v113);
          v115 = v131;
          swift_storeEnumTagMultiPayload();
          v116 = v156;
          v117 = v115;
          break;
      }

      sub_252F52264(v117, v75, type metadata accessor for HomeAutomationSnippetModels);
      sub_252F52264(v75, v76, type metadata accessor for HomeAutomationSnippetModels);
      v85 = v116;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v69 = v2;
    v70 = v151;
    v63 = v155;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_252F521A0(uint64_t result, uint64_t a2)
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

uint64_t sub_252F521E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_252F52264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_252F52354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F523A4()
{
  result = type metadata accessor for DisambiguationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConfirmationSnippetModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CompletionSnippetModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AutomationSnippetModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CallToActionSnippetModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TemperatureSnippetModel();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationSnippetModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_252F52594(_BYTE *result, int a2, int a3)
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

unint64_t sub_252F52644()
{
  result = qword_27F576C10;
  if (!qword_27F576C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C10);
  }

  return result;
}

unint64_t sub_252F5269C()
{
  result = qword_27F576C18;
  if (!qword_27F576C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C18);
  }

  return result;
}

unint64_t sub_252F526F4()
{
  result = qword_27F576C20;
  if (!qword_27F576C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C20);
  }

  return result;
}

unint64_t sub_252F5274C()
{
  result = qword_27F576C28;
  if (!qword_27F576C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C28);
  }

  return result;
}

unint64_t sub_252F527A4()
{
  result = qword_27F576C30;
  if (!qword_27F576C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C30);
  }

  return result;
}

unint64_t sub_252F527FC()
{
  result = qword_27F576C38;
  if (!qword_27F576C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C38);
  }

  return result;
}

unint64_t sub_252F52854()
{
  result = qword_27F576C40;
  if (!qword_27F576C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C40);
  }

  return result;
}

unint64_t sub_252F528AC()
{
  result = qword_27F576C48;
  if (!qword_27F576C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C48);
  }

  return result;
}

unint64_t sub_252F52904()
{
  result = qword_27F576C50;
  if (!qword_27F576C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C50);
  }

  return result;
}

unint64_t sub_252F5295C()
{
  result = qword_27F576C58;
  if (!qword_27F576C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C58);
  }

  return result;
}

unint64_t sub_252F529B4()
{
  result = qword_27F576C60;
  if (!qword_27F576C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C60);
  }

  return result;
}

unint64_t sub_252F52A0C()
{
  result = qword_27F576C68;
  if (!qword_27F576C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C68);
  }

  return result;
}

unint64_t sub_252F52A64()
{
  result = qword_27F576C70;
  if (!qword_27F576C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C70);
  }

  return result;
}

unint64_t sub_252F52ABC()
{
  result = qword_27F576C78;
  if (!qword_27F576C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C78);
  }

  return result;
}

unint64_t sub_252F52B14()
{
  result = qword_27F576C80;
  if (!qword_27F576C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C80);
  }

  return result;
}

unint64_t sub_252F52B6C()
{
  result = qword_27F576C88;
  if (!qword_27F576C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C88);
  }

  return result;
}

unint64_t sub_252F52BC4()
{
  result = qword_27F576C90;
  if (!qword_27F576C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C90);
  }

  return result;
}

unint64_t sub_252F52C1C()
{
  result = qword_27F576C98;
  if (!qword_27F576C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C98);
  }

  return result;
}

unint64_t sub_252F52C74()
{
  result = qword_27F576CA0;
  if (!qword_27F576CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576CA0);
  }

  return result;
}

unint64_t sub_252F52CCC()
{
  result = qword_27F576CA8;
  if (!qword_27F576CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576CA8);
  }

  return result;
}

unint64_t sub_252F52D24()
{
  result = qword_27F576CB0;
  if (!qword_27F576CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576CB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 128);

  return sub_252F53C4C();
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FD968](a1, a2, a3, a1);
}

uint64_t OUTLINED_FUNCTION_25_2()
{
  v2 = *(v0 - 256);

  return sub_252F53C2C();
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  v2 = *(v0 - 104);

  return sub_252F53C7C();
}