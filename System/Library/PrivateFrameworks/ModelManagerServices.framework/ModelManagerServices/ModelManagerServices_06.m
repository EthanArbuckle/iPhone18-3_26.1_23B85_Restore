_BYTE *storeEnumTagSinglePayload for StateDump.InferenceProviderState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StateDump.InferenceProviderState.ActiveRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StateDump.ExecutionGroupState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StateDump.RequestState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StateDump.RequestState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1979C68A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StateDump.SessionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StateDump.AssetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StateDump.AssetState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1979C6BC4()
{
  result = qword_1EAF49910;
  if (!qword_1EAF49910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49910);
  }

  return result;
}

unint64_t sub_1979C6C1C()
{
  result = qword_1EAF49918;
  if (!qword_1EAF49918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49918);
  }

  return result;
}

unint64_t sub_1979C6C74()
{
  result = qword_1EAF49920;
  if (!qword_1EAF49920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49920);
  }

  return result;
}

unint64_t sub_1979C6CCC()
{
  result = qword_1EAF49928;
  if (!qword_1EAF49928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49928);
  }

  return result;
}

unint64_t sub_1979C6D24()
{
  result = qword_1EAF49930;
  if (!qword_1EAF49930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49930);
  }

  return result;
}

unint64_t sub_1979C6D7C()
{
  result = qword_1EAF49938;
  if (!qword_1EAF49938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49938);
  }

  return result;
}

unint64_t sub_1979C6DD4()
{
  result = qword_1EAF49940;
  if (!qword_1EAF49940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49940);
  }

  return result;
}

unint64_t sub_1979C6E2C()
{
  result = qword_1EAF49948;
  if (!qword_1EAF49948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49948);
  }

  return result;
}

unint64_t sub_1979C6E84()
{
  result = qword_1EAF49950;
  if (!qword_1EAF49950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49950);
  }

  return result;
}

unint64_t sub_1979C6EDC()
{
  result = qword_1EAF483B8;
  if (!qword_1EAF483B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF483B8);
  }

  return result;
}

unint64_t sub_1979C6F34()
{
  result = qword_1EAF483C0;
  if (!qword_1EAF483C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF483C0);
  }

  return result;
}

unint64_t sub_1979C6F8C()
{
  result = qword_1EAF48490;
  if (!qword_1EAF48490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48490);
  }

  return result;
}

unint64_t sub_1979C6FE4()
{
  result = qword_1EAF48498;
  if (!qword_1EAF48498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48498);
  }

  return result;
}

unint64_t sub_1979C703C()
{
  result = qword_1EAF49958;
  if (!qword_1EAF49958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49958);
  }

  return result;
}

unint64_t sub_1979C7094()
{
  result = qword_1EAF49960;
  if (!qword_1EAF49960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49960);
  }

  return result;
}

unint64_t sub_1979C70EC()
{
  result = qword_1EAF49968;
  if (!qword_1EAF49968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49968);
  }

  return result;
}

unint64_t sub_1979C7144()
{
  result = qword_1EAF49970;
  if (!qword_1EAF49970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49970);
  }

  return result;
}

unint64_t sub_1979C719C()
{
  result = qword_1EAF484B0;
  if (!qword_1EAF484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF484B0);
  }

  return result;
}

unint64_t sub_1979C71F4()
{
  result = qword_1EAF484B8;
  if (!qword_1EAF484B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF484B8);
  }

  return result;
}

unint64_t sub_1979C724C()
{
  result = qword_1EAF49978;
  if (!qword_1EAF49978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49978);
  }

  return result;
}

unint64_t sub_1979C72A4()
{
  result = qword_1EAF49980;
  if (!qword_1EAF49980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49980);
  }

  return result;
}

unint64_t sub_1979C72FC()
{
  result = qword_1EAF49988;
  if (!qword_1EAF49988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49988);
  }

  return result;
}

unint64_t sub_1979C7354()
{
  result = qword_1EAF49990;
  if (!qword_1EAF49990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49990);
  }

  return result;
}

unint64_t sub_1979C73AC()
{
  result = qword_1EAF483F0;
  if (!qword_1EAF483F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF483F0);
  }

  return result;
}

unint64_t sub_1979C7404()
{
  result = qword_1EAF483F8;
  if (!qword_1EAF483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF483F8);
  }

  return result;
}

unint64_t sub_1979C745C()
{
  result = qword_1EAF48448;
  if (!qword_1EAF48448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48448);
  }

  return result;
}

unint64_t sub_1979C74B4()
{
  result = qword_1EAF48450;
  if (!qword_1EAF48450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48450);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  v2 = *(v0 - 168);

  return sub_197A87FD8();
}

uint64_t sub_1979C7540()
{
  v0 = type metadata accessor for RunningBoardProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_197985568();
  qword_1ED8817D8 = result;
  return result;
}

void Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:)()
{
  OUTLINED_FUNCTION_67();
  v131 = v0;
  v2 = v1;
  v139 = v3;
  v5 = v4;
  v136 = v6;
  v8 = v7;
  v138 = v9;
  v135 = v10;
  v12 = v11;
  v13 = type metadata accessor for ModelManagerError();
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v22);
  v23 = sub_197A87118();
  v24 = OUTLINED_FUNCTION_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_5(v29);
  v133 = sub_197A87298();
  v30 = OUTLINED_FUNCTION_2(v133);
  v134 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v120 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v38 = OUTLINED_FUNCTION_10_7(v37, &v148);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v120 - v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v47 = OUTLINED_FUNCTION_28(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_35();
  v52 = v51;
  v54 = MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_14_6(v54, v55, v56, v57, v58, v59, v60, v61, v120);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
  v62 = OUTLINED_FUNCTION_74_4();
  v122 = xmmword_197A88E50;
  *(v62 + 16) = xmmword_197A88E50;
  *(v62 + 32) = sub_197A870F8();
  *(v62 + 40) = v63;
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v137 = v8;
    if (v8 <= 0x7FFFFFFF)
    {
      v142 = v44;
      v125 = v26;
      v126 = v23;
      v128 = v12;
      v127 = v2;
      sub_1979444C8(v2, v143, &qword_1EAF499A8, &qword_197A92B00);
      if (qword_1ED8803B0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_3_0();
LABEL_4:
  v64 = qword_1ED880258;
  v149[10] = &type metadata for VoucherProvider;
  v149[11] = &off_1F0C11F50;

  v65 = v141;
  v66 = v5;
  v67 = v139;
  sub_197945194();

  sub_1979444C8(v65, v142, &qword_1EAF499A0, &qword_197A920D8);
  v68 = OUTLINED_FUNCTION_58_4();
  v69 = v52;
  sub_1979444C8(v68, v52, v70, v71);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v149[0] = &type metadata for VoucherProvider;
  v149[1] = &off_1F0C11F50;
  v72 = OUTLINED_FUNCTION_37_2(v149);
  __swift_mutable_project_boxed_opaque_existential_1(&v147, &type metadata for VoucherProvider);
  v146[0] = type metadata accessor for ModelServiceClient();
  v146[1] = &protocol witness table for ModelServiceClient;
  v144[4] = &off_1F0C11F50;
  v145[0] = v64;
  v144[3] = &type metadata for VoucherProvider;
  sub_197947C44(v145, v72 + 16);
  v73 = (v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v74 = v138;
  *v73 = v135;
  v73[1] = v74;
  *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v136;
  v75 = (v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  v131 = v66;
  *v75 = v66;
  v75[1] = v67;
  sub_197A878A8();
  sub_197A878A8();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v76 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v77 = v134;
  v78 = *(v134 + 32);
  OUTLINED_FUNCTION_83_2();
  v78();
  OUTLINED_FUNCTION_40_3(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v79 = v137;
  v80 = v129;
  if (v137 == -1)
  {
    v81 = OUTLINED_FUNCTION_24_5();
    v121 = v76;
    if (v77)
    {
      v79 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v82 = sub_197A87608();
      v83 = OUTLINED_FUNCTION_80_2(v82, qword_1ED87D2E8);
      v84 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v84))
      {
        v36 = OUTLINED_FUNCTION_65_2();
        *v36 = 67109120;
        *(v36 + 1) = v79;
        _os_log_impl(&dword_197941000, v83, v84, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d", v36, 8u);
        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_44();
      }
    }

    else
    {
      v79 = v81;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v85 = sub_197A87608();
      v83 = OUTLINED_FUNCTION_80_2(v85, qword_1ED87D2E8);
      v86 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v86))
      {
        v87 = OUTLINED_FUNCTION_65_2();
        *v87 = 67109120;
        *(v87 + 4) = v79;
        _os_log_impl(&dword_197941000, v83, v86, "No onBehalfOfPID specified, using originator PID: %d", v87, 8u);
        OUTLINED_FUNCTION_44();
      }
    }

    v77 = v134;
    v76 = v121;
  }

  *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v79;
  sub_1979444C8(v69, v80, &qword_1EAF499A8, &qword_197A92B00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v36);
  v89 = v130;
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v80, &qword_1EAF499A8, &qword_197A92B00);
    (*(v77 + 16))(v140, v76 + v72, v36);
  }

  else
  {
    v90 = OUTLINED_FUNCTION_104_0();
    (v78)(v90, v80, v36);
  }

  v91 = v126;
  v92 = v125;
  v93 = v142;
  sub_1979444C8(v142, v89, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    OUTLINED_FUNCTION_12_4();
    v94 = v91;
    v95 = v124;
    sub_19794B170(v89, v124, v96);
    sub_197947A40(v69, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v93, &qword_1EAF499A0, &qword_197A920D8);
    (*(v77 + 8))(v140, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    v97 = v95;
    v91 = v94;
    sub_19794B170(v97, v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v98 = *(v92 + 32);
    v137 = v79;
    v134 = v69;
    v99 = v132;
    v98();
    v100 = v76;
    v101 = OUTLINED_FUNCTION_74_4();
    *(v101 + 16) = v122;
    v102 = sub_197A870F8();
    *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v101;
    *(v101 + 32) = v102;
    *(v101 + 40) = v103;
    v104 = v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    (*(v92 + 16))(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v99, v91);
    v105 = type metadata accessor for Session.Metadata(0);
    v106 = *(v77 + 16);
    v106(v104 + v105[9], &v100[v72], v36);
    v107 = v140;
    v106(v104 + v105[10], v140, v36);
    OUTLINED_FUNCTION_34_2((v104 + v105[5]));
    *(v104 + v105[6]) = v137;
    OUTLINED_FUNCTION_46_3(v105[7]);
    OUTLINED_FUNCTION_34_2(v108);
    OUTLINED_FUNCTION_40_3(v104 + v105[11]);
    *(v104 + v105[12]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_93_1();
    sub_197A87C08();
    v109 = OUTLINED_FUNCTION_101_0(v145);
    OUTLINED_FUNCTION_21_3(v109, v110, v111, v112);
    OUTLINED_FUNCTION_53_3();
    v113 = swift_allocObject();
    OUTLINED_FUNCTION_61_5(v113);
    *(v104 + 72) = v72;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v134, &qword_1EAF499A8, &qword_197A92B00);
    v114 = OUTLINED_FUNCTION_71_3();
    sub_197947A40(v114, v115, v116);
    (*(v92 + 8))(v132, v91);
    (*(v77 + 8))(v107, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  OUTLINED_FUNCTION_48_3(v146);
  (*(v92 + 8))(v128, v91);
  v117 = OUTLINED_FUNCTION_72_3();
  sub_197947A40(v117, v118, v119);
  OUTLINED_FUNCTION_48_3(&v150);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:)()
{
  OUTLINED_FUNCTION_67();
  v122 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_84_1(v5, v6, v7, v144);
  v9 = v8;
  v133 = v10;
  v13 = OUTLINED_FUNCTION_109_0(v11, v12, &v143);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_29_1();
  v22 = sub_197A87118();
  v23 = OUTLINED_FUNCTION_2(v22);
  v117 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v29 = v28 - v27;
  v30 = sub_197A87298();
  v31 = OUTLINED_FUNCTION_2(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v39 = OUTLINED_FUNCTION_10_7(v38, &v142);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v113 - v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v48 = OUTLINED_FUNCTION_28(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_26_4();
  if (v9 < v53)
  {
    __break(1u);
  }

  else
  {
    v121 = v9;
    if (v9 <= 0x7FFFFFFF)
    {
      v136 = v45;
      v113 = v2;
      v114 = v29;
      v115 = v22;
      v54 = *(v33 + 16);
      v120 = v4;
      v119 = v33 + 16;
      v118 = v54;
      v54(v0, v4, v30);
      __swift_storeEnumTagSinglePayload(v0, 0, 1, v30);
      if (qword_1ED8803B0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_3_0();
LABEL_4:
  v55 = qword_1ED880258;
  v144[0] = &type metadata for VoucherProvider;
  v144[1] = &off_1F0C11F50;

  v56 = v135;
  v57 = v131;
  v58 = v134;
  sub_197945194();

  sub_1979444C8(v56, v136, &qword_1EAF499A0, &qword_197A920D8);
  v123 = v0;
  v59 = v132;
  sub_1979444C8(v0, v132, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v141[2] = &type metadata for VoucherProvider;
  v141[3] = &off_1F0C11F50;
  v60 = OUTLINED_FUNCTION_37_2(v141);
  __swift_mutable_project_boxed_opaque_existential_1(&v140, &type metadata for VoucherProvider);
  v139[3] = type metadata accessor for ModelServiceClient();
  v139[4] = &protocol witness table for ModelServiceClient;
  v138[2] = &off_1F0C11F50;
  v139[0] = v55;
  v61 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v61, v60 + 16);
  v62 = (v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v63 = v133;
  *v62 = v129;
  v62[1] = v63;
  *(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v130;
  v64 = (v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v64 = v57;
  v64[1] = v58;
  sub_197A878A8();
  sub_197A878A8();
  v65 = v124;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v66 = *(v33 + 32);
  v122 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v66(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v65, v30);
  OUTLINED_FUNCTION_40_3(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v67 = v121;
  v68 = v33;
  v69 = v127;
  v70 = v30;
  if (v121 == -1)
  {
    v71 = OUTLINED_FUNCTION_24_5();
    if (v30)
    {
      v124 = v66;
      v67 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v72 = sub_197A87608();
      v73 = OUTLINED_FUNCTION_80_2(v72, qword_1ED87D2E8);
      v74 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v74))
      {
        v75 = OUTLINED_FUNCTION_65_2();
        *v75 = 67109120;
        *(v75 + 4) = v67;
        _os_log_impl(&dword_197941000, v73, v74, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d", v75, 8u);
        v70 = v30;
        OUTLINED_FUNCTION_44();
      }

      v66 = v124;
    }

    else
    {
      v67 = v71;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v76 = sub_197A87608();
      v73 = OUTLINED_FUNCTION_80_2(v76, qword_1ED87D2E8);
      v77 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v77))
      {
        v78 = OUTLINED_FUNCTION_65_2();
        *v78 = 67109120;
        v78[1] = v67;
        OUTLINED_FUNCTION_38_2(&dword_197941000, v79, v80, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_44();
      }
    }

    v59 = v132;
  }

  *(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v67;
  v81 = v125;
  sub_1979444C8(v59, v125, &qword_1EAF499A8, &qword_197A92B00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v70);
  v83 = v126;
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v81, &qword_1EAF499A8, &qword_197A92B00);
    v118(v69, v60 + v122, v70);
  }

  else
  {
    v66(v69, v81, v70);
  }

  v84 = v136;
  v85 = v69;
  sub_1979444C8(v136, v83, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_12_4();
    v86 = v116;
    sub_19794B170(v83, v116, v87);
    sub_197947A40(v59, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v84, &qword_1EAF499A0, &qword_197A920D8);
    v88 = *(v68 + 8);
    v88(v85, v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v139);
    *(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    sub_19794B170(v86, v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v128 = v70;
    v125 = v68;
    v89 = v117;
    v90 = *(v117 + 32);
    v91 = v114;
    OUTLINED_FUNCTION_102();
    v92();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v93 = v67;
    v94 = OUTLINED_FUNCTION_74_4();
    *(v94 + 16) = xmmword_197A88E50;
    v95 = sub_197A870F8();
    *(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v94;
    *(v94 + 32) = v95;
    *(v94 + 40) = v96;
    v97 = v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    (*(v89 + 16))(v60 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v91, v70);
    v98 = type metadata accessor for Session.Metadata(0);
    v99 = v118;
    v118(v97 + v98[9], v60 + v122, v128);
    v99(v97 + v98[10], v85, v128);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_34_2(v100);
    *(v97 + v98[6]) = v93;
    OUTLINED_FUNCTION_46_3(v98[7]);
    OUTLINED_FUNCTION_34_2(v101);
    OUTLINED_FUNCTION_40_3(v97 + v98[11]);
    *(v97 + v98[12]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_93_1();
    sub_197A87C08();
    v102 = OUTLINED_FUNCTION_101_0(v138);
    OUTLINED_FUNCTION_21_3(v102, v103, v104, v105);
    OUTLINED_FUNCTION_53_3();
    v106 = swift_allocObject();
    OUTLINED_FUNCTION_61_5(v106);
    *(v97 + 72) = v60;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v132, &qword_1EAF499A8, &qword_197A92B00);
    v107 = OUTLINED_FUNCTION_58_4();
    sub_197947A40(v107, v108, v109);
    (*(v89 + 8))(v91, v70);
    v88 = *(v125 + 8);
    v88(v85, v128);
    v70 = v128;
    __swift_destroy_boxed_opaque_existential_1Tm(v139);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  v88(v120, v70);
  v110 = OUTLINED_FUNCTION_71_3();
  sub_197947A40(v110, v111, v112);
  sub_197947A40(v123, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:)()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_106_0(v3, v117);
  v108 = v4;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_109_0(v7, v8, v118);
  v10 = OUTLINED_FUNCTION_28(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = sub_197A87118();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v25 = OUTLINED_FUNCTION_91_1();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v32 = OUTLINED_FUNCTION_10_7(v31, &v116);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_6(v37, v38, v39, v40, v41, v42, v43, v44, v98);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v46 = OUTLINED_FUNCTION_28(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_26_4();
  if (v6 < v51)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    v101 = v6;
    OUTLINED_FUNCTION_27_4(&v114);
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_3_0();
LABEL_4:
  v52 = qword_1ED880258;
  v118[3] = &type metadata for VoucherProvider;
  v118[4] = &off_1F0C11F50;

  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_28_2();

  sub_1979444C8(v22, v107, &qword_1EAF499A0, &qword_197A920D8);
  sub_1979444C8(v0, v106, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v115[0] = &type metadata for VoucherProvider;
  v115[1] = &off_1F0C11F50;
  OUTLINED_FUNCTION_37_2(v117);
  OUTLINED_FUNCTION_88_1();
  v112[1] = type metadata accessor for ModelServiceClient();
  v112[2] = &protocol witness table for ModelServiceClient;
  v110[4] = &off_1F0C11F50;
  v111[0] = v52;
  v53 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v53, v2 + 16);
  OUTLINED_FUNCTION_44_5((v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID));
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v108;
  v54 = (v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v54 = v6;
  v54[1] = v1;
  sub_197A878A8();
  sub_197A878A8();
  OUTLINED_FUNCTION_110_0(v115);
  v55 = (v109 + 32);
  v105 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v102 = *(v109 + 32);
  v102(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v6, v25);
  OUTLINED_FUNCTION_40_3(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v56 = v101;
  if (v101 == -1)
  {
    v57 = OUTLINED_FUNCTION_24_5();
    if (v1)
    {
      v58 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v59 = sub_197A87608();
      v60 = OUTLINED_FUNCTION_80_2(v59, qword_1ED87D2E8);
      v61 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v61))
      {
        v62 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v62, 1.5047e-36);
        OUTLINED_FUNCTION_62_4(&dword_197941000, v63, v64, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d");
        OUTLINED_FUNCTION_49_4();
      }
    }

    else
    {
      v58 = v57;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v65 = sub_197A87608();
      v60 = OUTLINED_FUNCTION_80_2(v65, qword_1ED87D2E8);
      v66 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v66))
      {
        v67 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v67, 1.5047e-36);
        OUTLINED_FUNCTION_38_2(&dword_197941000, v68, v69, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_56_2(&v113);
      }
    }

    v56 = v58;
  }

  *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v56;
  sub_1979444C8(v106, v103, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_39_3();
  if (v70)
  {
    sub_197947A40(v103, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_97_0();
    v71 = OUTLINED_FUNCTION_50_4();
    v72(v71);
  }

  else
  {
    v73 = OUTLINED_FUNCTION_43_4();
    (v102)(v73);
  }

  sub_1979444C8(v107, v104, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_5_5();
    sub_19794B170(v104, v99, v74);
    sub_197947A40(v106, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v107, &qword_1EAF499A0, &qword_197A920D8);
    v75 = OUTLINED_FUNCTION_75_4();
    v76(v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_89_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    OUTLINED_FUNCTION_77_3(v112);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_102();
    v77();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v78 = OUTLINED_FUNCTION_74_4();
    v79 = OUTLINED_FUNCTION_87_1(v78, xmmword_197A88E50);
    *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v78;
    v78[2].n128_u64[0] = v79;
    v78[2].n128_u64[1] = v80;
    v81 = OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata);
    v82(v81);
    v83 = type metadata accessor for Session.Metadata(0);
    v84 = OUTLINED_FUNCTION_30_4(v83);
    v55(v84, v2 + v105, v25);
    v85 = OUTLINED_FUNCTION_45_3();
    (v55)(v85);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_17_5(v86);
    *(v56 + v87) = v108;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_13_5(v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2();
    v89 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v100, v90, v91, v89);
    OUTLINED_FUNCTION_53_3();
    v92 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v92);
    *(v56 + 72) = v2;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v106, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v107, &qword_1EAF499A0, &qword_197A920D8);
    (*(v25 + 8))();
    v93 = OUTLINED_FUNCTION_32_3();
    v94(v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  v95 = OUTLINED_FUNCTION_58_4();
  sub_197947A40(v95, v96, v97);
  sub_197947A40(v0, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:loggingIdentifier:)()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v9 = OUTLINED_FUNCTION_59_4(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_28(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = sub_197A87118();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v25 = OUTLINED_FUNCTION_91_1();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v32 = OUTLINED_FUNCTION_10_7(v31, &v118);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_6(v37, v38, v39, v40, v41, v42, v43, v44, v104);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v46 = OUTLINED_FUNCTION_28(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_26_4();
  if (v1 < v51)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_27_4(v116);
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  OUTLINED_FUNCTION_3_0();
LABEL_4:
  v52 = qword_1ED880258;
  v119[5] = &type metadata for VoucherProvider;
  v119[6] = &off_1F0C11F50;

  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_28_2();

  v55 = OUTLINED_FUNCTION_107_0(v53, v54, &qword_1EAF499A0, &qword_197A920D8);
  OUTLINED_FUNCTION_79_5(v55, v56, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v116[1] = &type metadata for VoucherProvider;
  v117 = &off_1F0C11F50;
  OUTLINED_FUNCTION_37_2(v119);
  OUTLINED_FUNCTION_88_1();
  v114[0] = type metadata accessor for ModelServiceClient();
  v114[1] = &protocol witness table for ModelServiceClient;
  v112[4] = &off_1F0C11F50;
  v113[0] = v52;
  v57 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v57, v3 + 16);
  OUTLINED_FUNCTION_44_5((v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID));
  *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = 0;
  OUTLINED_FUNCTION_108_0(OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  sub_197A878A8();
  OUTLINED_FUNCTION_110_0(&v117);
  v58 = OUTLINED_FUNCTION_36_2(OBJC_IVAR____TtC20ModelManagerServices7Session_uuid);
  v59(v58);
  OUTLINED_FUNCTION_40_3(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  OUTLINED_FUNCTION_99_0(OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_24_5();
    if (v5)
    {
      OUTLINED_FUNCTION_81_1();
      v2 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v62 = sub_197A87608();
      v63 = OUTLINED_FUNCTION_80_2(v62, qword_1ED87D2E8);
      v64 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v64))
      {
        v65 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v65, 1.5047e-36);
        OUTLINED_FUNCTION_62_4(&dword_197941000, v66, v67, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d");
        OUTLINED_FUNCTION_49_4();
      }
    }

    else
    {
      v2 = v61;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v68 = sub_197A87608();
      v63 = OUTLINED_FUNCTION_80_2(v68, qword_1ED87D2E8);
      v69 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v69))
      {
        OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_67_4(v70, 1.5047e-36);
        OUTLINED_FUNCTION_38_2(&dword_197941000, v71, v72, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_56_2(&v115);
      }
    }

    v1 = v2;
  }

  *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v1;
  OUTLINED_FUNCTION_83_2();
  sub_1979444C8(v73, v2, v74, v75);
  OUTLINED_FUNCTION_39_3();
  if (v60)
  {
    sub_197947A40(v2, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_97_0();
    v76 = OUTLINED_FUNCTION_50_4();
    v77(v76);
  }

  else
  {
    v78 = OUTLINED_FUNCTION_43_4();
    v108(v78);
  }

  sub_1979444C8(v22, v109, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_5_5();
    sub_19794B170(v109, v105, v79);
    sub_197947A40(v0, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v22, &qword_1EAF499A0, &qword_197A920D8);
    v80 = OUTLINED_FUNCTION_75_4();
    v81(v80);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_89_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    OUTLINED_FUNCTION_77_3(v114);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_102();
    v82();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v83 = OUTLINED_FUNCTION_74_4();
    v84 = OUTLINED_FUNCTION_87_1(v83, xmmword_197A88E50);
    *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v83;
    v83[2].n128_u64[0] = v84;
    v83[2].n128_u64[1] = v85;
    v86 = OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata);
    v87(v86);
    v88 = type metadata accessor for Session.Metadata(0);
    OUTLINED_FUNCTION_30_4(v88);
    OUTLINED_FUNCTION_73_3();
    (off_1F0C11F50)();
    v89 = OUTLINED_FUNCTION_45_3();
    (off_1F0C11F50)(v89);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_17_5(v90);
    *(v1 + v91) = 0;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_13_5(v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2();
    v93 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v106, v94, v95, v93);
    OUTLINED_FUNCTION_53_3();
    v96 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v96);
    *(v1 + 72) = v3;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v110, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v111, &qword_1EAF499A0, &qword_197A920D8);
    v97 = OUTLINED_FUNCTION_105_1();
    v98(v97);
    v99 = OUTLINED_FUNCTION_32_3();
    v100(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  v101 = OUTLINED_FUNCTION_58_4();
  sub_197947A40(v101, v102, v103);
  sub_197947A40(v107, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:containsSensitiveData:loggingIdentifier:)()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_106_0(v5, v119);
  v9 = OUTLINED_FUNCTION_59_4(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_28(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = sub_197A87118();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v25 = OUTLINED_FUNCTION_91_1();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v32 = OUTLINED_FUNCTION_10_7(v31, &v118);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_6(v37, v38, v39, v40, v41, v42, v43, v44, v104);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v46 = OUTLINED_FUNCTION_28(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_26_4();
  if (v1 < v51)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_27_4(v116);
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  OUTLINED_FUNCTION_3_0();
LABEL_4:
  v52 = qword_1ED880258;
  v119[5] = &type metadata for VoucherProvider;
  v119[6] = &off_1F0C11F50;

  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_28_2();

  v55 = OUTLINED_FUNCTION_107_0(v53, v54, &qword_1EAF499A0, &qword_197A920D8);
  OUTLINED_FUNCTION_79_5(v55, v56, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v116[1] = &type metadata for VoucherProvider;
  v117 = &off_1F0C11F50;
  OUTLINED_FUNCTION_37_2(v119);
  OUTLINED_FUNCTION_88_1();
  v114[0] = type metadata accessor for ModelServiceClient();
  v114[1] = &protocol witness table for ModelServiceClient;
  v112[4] = &off_1F0C11F50;
  v113[0] = v52;
  v57 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v57, v4 + 16);
  OUTLINED_FUNCTION_44_5((v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID));
  *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = 0;
  OUTLINED_FUNCTION_108_0(OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  sub_197A878A8();
  OUTLINED_FUNCTION_110_0(&v117);
  v58 = OUTLINED_FUNCTION_36_2(OBJC_IVAR____TtC20ModelManagerServices7Session_uuid);
  v59(v58);
  OUTLINED_FUNCTION_40_3(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  OUTLINED_FUNCTION_99_0(OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_24_5();
    if (v2)
    {
      OUTLINED_FUNCTION_81_1();
      v3 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v62 = sub_197A87608();
      v63 = OUTLINED_FUNCTION_80_2(v62, qword_1ED87D2E8);
      v64 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v64))
      {
        v65 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v65, 1.5047e-36);
        OUTLINED_FUNCTION_62_4(&dword_197941000, v66, v67, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d");
        OUTLINED_FUNCTION_49_4();
      }
    }

    else
    {
      v3 = v61;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v68 = sub_197A87608();
      v63 = OUTLINED_FUNCTION_80_2(v68, qword_1ED87D2E8);
      v69 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v69))
      {
        OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_67_4(v70, 1.5047e-36);
        OUTLINED_FUNCTION_38_2(&dword_197941000, v71, v72, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_56_2(&v115);
      }
    }

    v1 = v3;
  }

  *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v1;
  OUTLINED_FUNCTION_83_2();
  sub_1979444C8(v73, v3, v74, v75);
  OUTLINED_FUNCTION_39_3();
  if (v60)
  {
    sub_197947A40(v3, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_97_0();
    v76 = OUTLINED_FUNCTION_50_4();
    v77(v76);
  }

  else
  {
    v78 = OUTLINED_FUNCTION_43_4();
    v108(v78);
  }

  sub_1979444C8(v22, v109, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_5_5();
    sub_19794B170(v109, v105, v79);
    sub_197947A40(v0, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v22, &qword_1EAF499A0, &qword_197A920D8);
    v80 = OUTLINED_FUNCTION_75_4();
    v81(v80);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_89_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    OUTLINED_FUNCTION_77_3(v114);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_102();
    v82();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v83 = OUTLINED_FUNCTION_74_4();
    v84 = OUTLINED_FUNCTION_87_1(v83, xmmword_197A88E50);
    *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v83;
    v83[2].n128_u64[0] = v84;
    v83[2].n128_u64[1] = v85;
    v86 = OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata);
    v87(v86);
    v88 = type metadata accessor for Session.Metadata(0);
    OUTLINED_FUNCTION_30_4(v88);
    OUTLINED_FUNCTION_73_3();
    (off_1F0C11F50)();
    v89 = OUTLINED_FUNCTION_45_3();
    (off_1F0C11F50)(v89);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_17_5(v90);
    *(v1 + v91) = 0;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_13_5(v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2();
    v93 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v106, v94, v95, v93);
    OUTLINED_FUNCTION_53_3();
    v96 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v96);
    *(v1 + 72) = v4;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v110, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v111, &qword_1EAF499A0, &qword_197A920D8);
    v97 = OUTLINED_FUNCTION_105_1();
    v98(v97);
    v99 = OUTLINED_FUNCTION_32_3();
    v100(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  v101 = OUTLINED_FUNCTION_58_4();
  sub_197947A40(v101, v102, v103);
  sub_197947A40(v107, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void CustomAssetConfiguration.init(instanceID:templateID:assetData:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v61 = v2;
  v58 = v3;
  v5 = v4;
  v7 = v6;
  v62 = v8;
  v65 = type metadata accessor for CustomAssetConfiguration(0);
  v9 = OUTLINED_FUNCTION_6(v65);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v14 = (v13 - v12);
  v15 = sub_197A877A8();
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_5();
  v63 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v59 = v18;
  v60 = v1;
  v23 = *(v18 + 16);
  v64 = &v51 - v24;
  v57 = v23;
  v23();
  v25 = getpid();
  if (qword_1ED87DF08 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED8817D8;
  v76 = type metadata accessor for RunningBoardProvider();
  v77 = &off_1F0C0D3E0;
  v75[0] = v26;
  v27 = *__swift_project_boxed_opaque_existential_1(v75, v76);

  sub_1979859AC(v25, &v68);
  v28 = v70;
  if (v70 == 1)
  {
    goto LABEL_4;
  }

  v55 = v15;
  v52 = v25;
  v54 = v5;
  v34 = v68;
  v5 = v69;
  v35 = v71;
  v36 = v72;
  v37 = v73;
  v38 = v74;
  sub_197A878A8();
  sub_197A878A8();
  v53 = v35;
  v56 = v38;
  sub_1979CADF0(v34, v5, v28);
  if (v36)
  {
    v29 = v54;
    v68 = v7;
    v69 = v54;
    sub_197A878A8();
    OUTLINED_FUNCTION_94_0();
    v39 = OUTLINED_FUNCTION_76_3();
    v40 = v61;
    MEMORY[0x19A8EAC80](v39, v61);
    OUTLINED_FUNCTION_94_0();
    MEMORY[0x19A8EAC80](v53, v36);
    v31 = v40;

    v33 = v69;
    v56 = v68;
    v15 = v55;
    goto LABEL_8;
  }

  v5 = v54;
  LODWORD(v25) = v52;
  v15 = v55;
  if (!v56)
  {
LABEL_4:
    v68 = v7;
    v69 = v5;
    sub_197A878A8();
    OUTLINED_FUNCTION_94_0();
    v29 = v5;
    v30 = OUTLINED_FUNCTION_76_3();
    v31 = v61;
    MEMORY[0x19A8EAC80](v30, v61);
    OUTLINED_FUNCTION_94_0();
    LODWORD(v66) = v25;
    v32 = sub_197A88148();
    MEMORY[0x19A8EAC80](v32);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v68 = v7;
    v69 = v54;
    sub_197A878A8();
    v48 = v37;
    OUTLINED_FUNCTION_94_0();
    v29 = v5;
    v49 = OUTLINED_FUNCTION_76_3();
    v50 = v61;
    MEMORY[0x19A8EAC80](v49, v61);
    OUTLINED_FUNCTION_94_0();
    MEMORY[0x19A8EAC80](v48, v56);
    v31 = v50;
  }

  v33 = v69;
  v56 = v68;
LABEL_8:
  v41 = v63;
  v42 = v57;
  (v57)(v63, v64, v15);
  *v14 = v7;
  v14[1] = v29;
  v14[2] = v5;
  v14[3] = v31;
  (v42)(v14 + *(v65 + 24), v41, v15);
  v68 = v5;
  v69 = v31;
  v66 = 2037278052;
  v67 = 0xE400000000000000;
  sub_1979CAD9C();
  sub_197A878A8();
  if (OUTLINED_FUNCTION_90_1(&v66, MEMORY[0x1E69E6158]) & 1) != 0 || (v68 = v5, v69 = v31, v66 = 0x797465666173, v67 = 0xE600000000000000, (OUTLINED_FUNCTION_90_1(&v66, MEMORY[0x1E69E6158])))
  {

    v43 = *(v59 + 8);
    v43(v60, v15);
    v43(v63, v15);
    v43(v64, v15);
  }

  else
  {
    v68 = v5;
    v69 = v31;
    v66 = 0x656469727265766FLL;
    v67 = 0xE800000000000000;
    OUTLINED_FUNCTION_90_1(&v66, MEMORY[0x1E69E6158]);
    v44 = *(v59 + 8);
    v44(v60, v15);
    v44(v63, v15);
    v44(v64, v15);
  }

  v45 = v65;
  v46 = v14 + *(v65 + 28);
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  v47 = (v14 + *(v45 + 32));
  *v47 = v56;
  v47[1] = v33;
  sub_19794B170(v14, v62, type metadata accessor for CustomAssetConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979CAD10()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_19_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_7(v1);
  OUTLINED_FUNCTION_112();

  return sub_19794BAB4(v3, v4, v5, v6, v7);
}

unint64_t sub_1979CAD9C()
{
  result = qword_1EAF499C0;
  if (!qword_1EAF499C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF499C0);
  }

  return result;
}

uint64_t sub_1979CADF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v3;
  *(v5 - 368) = v2;

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
}

uint64_t OUTLINED_FUNCTION_108_0@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + a1);
  *(v4 - 496) = v1;
  *v6 = v1;
  v6[1] = v2;

  return sub_197A878A8();
}

uint64_t sub_1979CAE90()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87DD88);
  v1 = __swift_project_value_buffer(v0, qword_1ED87DD88);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1979CAF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1979CAFA0(v4);
}

uint64_t sub_1979CAFA0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_1979CB038()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  result = sub_1979CC05C(0, 0, v3, &unk_197A92398, v5);
  qword_1EAF499C8 = result;
  return result;
}

uint64_t sub_1979CB108(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for InferenceError.Context(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = sub_197A87508();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = sub_197A874C8();
  v1[26] = v8;
  v9 = *(v8 - 8);
  v1[27] = v9;
  v10 = *(v9 + 64) + 15;
  v1[28] = swift_task_alloc();
  v11 = sub_197A874A8();
  v1[29] = v11;
  v12 = *(v11 - 8);
  v1[30] = v12;
  v13 = *(v12 + 64) + 15;
  v1[31] = swift_task_alloc();
  v14 = sub_197A874E8();
  v1[32] = v14;
  v15 = *(v14 - 8);
  v1[33] = v15;
  v16 = *(v15 + 64) + 15;
  v1[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979CB3C8, 0, 0);
}

uint64_t sub_1979CB3C8()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  sub_197A87488();
  sub_197A874D8();
  sub_197A874B8();
  (*(v4 + 8))(v3, v5);
  v6 = *(MEMORY[0x1E6966C18] + 4);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1979CB4BC;
  v8 = v0[31];
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEDC09B8](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1979CB4BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 280);
  *v3 = *v1;
  *(v2 + 288) = v6;
  *(v2 + 296) = v0;

  if (v0)
  {
    v7 = sub_1979CBEE8;
  }

  else
  {
    v7 = sub_1979CB5C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1979CB5C0()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 168);
    v4 = *(v1 + 16);
    v5 = (v3 + 8);
    while (v4 != v2)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v6 = *(v3 + 16);
      v6(*(v0 + 184), v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, *(v0 + 160));
      v7 = sub_197A874F8();
      if (*(v7 + 16) && (v8 = sub_197A407F0(), (v9 & 1) != 0))
      {
        sub_197949604(*(v7 + 56) + 32 * v8, v0 + 16);
      }

      else
      {
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          if (*(v0 + 48) == 0xD000000000000031 && 0x8000000197AA3620 == *(v0 + 56))
          {
            v75 = *(v0 + 56);

LABEL_38:

            v91 = *(v0 + 256);
            v92 = *(v0 + 272);
            v88 = *(v0 + 248);
            v89 = *(v0 + 264);
            v76 = *(v0 + 240);
            v78 = *(v0 + 192);
            v77 = *(v0 + 200);
            v90 = *(v0 + 184);
            v86 = *(v0 + 176);
            v87 = *(v0 + 232);
            v79 = *(v0 + 160);
            v93 = *(v0 + 224);
            v94 = *(v0 + 152);
            v96 = *(v0 + 144);
            v98 = *(v0 + 136);
            v100 = *(v0 + 128);
            v102 = *(v0 + 120);
            v104 = *(v0 + 112);
            v106 = *(v0 + 104);
            v109 = *(v0 + 96);
            v111 = *(v0 + 88);
            v112 = *(v0 + 80);
            v85 = *(v0 + 64);
            v80 = *(*(v0 + 168) + 32);
            v80(v78);
            (v80)(v77, v78, v79);
            v6(v86, v77, v79);
            sub_197A87478();
            v81 = *v5;
            v82 = OUTLINED_FUNCTION_1();
            v83(v82);
            (*(v76 + 8))(v88, v87);
            (*(v89 + 8))(v92, v91);

            OUTLINED_FUNCTION_15();
            goto LABEL_39;
          }

          v11 = *(v0 + 56);
          v12 = sub_197A88218();

          if (v12)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_197947900(v0 + 16, &qword_1EAF49120);
      }

      (*v5)(*(v0 + 184), *(v0 + 160));
      ++v2;
    }

    if (qword_1ED87DD80 == -1)
    {
      goto LABEL_20;
    }

LABEL_43:
    OUTLINED_FUNCTION_3_6();
LABEL_20:
    v13 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v13, qword_1ED87DD88);
    v14 = sub_197A875E8();
    v15 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      OUTLINED_FUNCTION_65_3();
      _os_log_impl(v17, v18, v19, v20, v16, 2u);
      OUTLINED_FUNCTION_44();
    }

    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v23 = *(v0 + 128);
    v24 = *(v0 + 88);

    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_64_4();
    sub_197955EBC(v25, v26);
    OUTLINED_FUNCTION_82_3();
    v107 = v27;
    v28 = sub_197A87898();
    v29 = sub_197A87258();
    OUTLINED_FUNCTION_41_4();
    sub_197947900(v21, &qword_1EAF48B20);
    OUTLINED_FUNCTION_41_4();
    v30 = OUTLINED_FUNCTION_100_0();
    sub_1979671F8(v30, v31, &qword_1EAF48B20, &qword_197A89620);
    *v24 = 0xD000000000000034;
    *(v24 + 8) = 0x8000000197AA3660;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0xE000000000000000;
    *(v24 + 32) = 0;
    *(v24 + 40) = v28;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    v32 = OUTLINED_FUNCTION_1();
    sub_1979671F8(v32, v33, &qword_1EAF48B20, &qword_197A89620);
    LODWORD(v23) = OUTLINED_FUNCTION_123_0(v23);
    sub_197947900(v22, &qword_1EAF48B20);
    sub_197947900(v21, &qword_1EAF48B20);
    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_41_4();
      if (OUTLINED_FUNCTION_123_0(v35) != 1)
      {
        sub_197947900(*(v0 + 128), &qword_1EAF48B20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0(v29);
      v60 = *(v59 + 32);
      v61 = OUTLINED_FUNCTION_100_0();
      v62(v61);
      OUTLINED_FUNCTION_145_0();
    }

    v63 = *(v0 + 136);
    v64 = *(v0 + 88);
  }

  else
  {
    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v36 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v36, qword_1ED87DD88);
    v37 = sub_197A875E8();
    v38 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      OUTLINED_FUNCTION_65_3();
      _os_log_impl(v40, v41, v42, v43, v39, 2u);
      OUTLINED_FUNCTION_44();
    }

    v45 = *(v0 + 112);
    v44 = *(v0 + 120);
    v46 = *(v0 + 96);
    v47 = *(v0 + 80);

    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_64_4();
    sub_197955EBC(v48, v49);
    OUTLINED_FUNCTION_82_3();
    v107 = v50;
    v51 = sub_197A87898();
    v52 = sub_197A87258();
    OUTLINED_FUNCTION_41_4();
    sub_197947900(v44, &qword_1EAF48B20);
    OUTLINED_FUNCTION_41_4();
    v53 = OUTLINED_FUNCTION_100_0();
    sub_1979671F8(v53, v54, &qword_1EAF48B20, &qword_197A89620);
    *v47 = 0xD000000000000028;
    *(v47 + 8) = 0x8000000197AA35F0;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0xE000000000000000;
    *(v47 + 32) = 0;
    *(v47 + 40) = v51;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    v55 = OUTLINED_FUNCTION_1();
    sub_1979671F8(v55, v56, &qword_1EAF48B20, &qword_197A89620);
    LODWORD(v51) = OUTLINED_FUNCTION_123_0(v46);
    sub_197947900(v45, &qword_1EAF48B20);
    sub_197947900(v44, &qword_1EAF48B20);
    v58 = *(v0 + 96);
    v57 = *(v0 + 104);
    if (v51 == 1)
    {
      OUTLINED_FUNCTION_41_4();
      if (OUTLINED_FUNCTION_123_0(v58) != 1)
      {
        sub_197947900(*(v0 + 96), &qword_1EAF48B20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0(v52);
      v66 = *(v65 + 32);
      v67 = OUTLINED_FUNCTION_100_0();
      v68(v67);
      OUTLINED_FUNCTION_145_0();
    }

    v63 = *(v0 + 104);
    v64 = *(v0 + 80);
  }

  sub_19798F508(v63, v64 + *(*(v0 + 72) + 40));
  sub_19794B1D0(v64, v107, type metadata accessor for InferenceError.Context);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v70 = *(v0 + 264);
  v69 = *(v0 + 272);
  v72 = *(v0 + 248);
  v71 = *(v0 + 256);
  OUTLINED_FUNCTION_113_2();
  v95 = *(v0 + 136);
  v97 = *(v0 + 128);
  v99 = *(v0 + 120);
  v101 = *(v0 + 112);
  v103 = *(v0 + 104);
  v105 = *(v0 + 96);
  v108 = *(v0 + 88);
  v110 = *(v0 + 80);
  (*(v73 + 8))(v72);
  (*(v70 + 8))(v69, v71);

  OUTLINED_FUNCTION_13();
LABEL_39:

  return v74();
}

uint64_t sub_1979CBEE8()
{
  v19 = v0[37];
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  OUTLINED_FUNCTION_113_2();
  v11 = v0[17];
  v12 = v0[16];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  (*(v5 + 8))(v4);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_1979CC05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1979671F8(a3, v23 - v10, &qword_1EAF48AB0, &unk_197A89150);
  v12 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947900(v11, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_197A87B58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_197A879A8() + 32;
      sub_197A87468();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_197947900(a3, &qword_1EAF48AB0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_197947900(a3, &qword_1EAF48AB0);
  sub_197A87468();
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1979CC2F8()
{
  OUTLINED_FUNCTION_131_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_56_3();
  sub_1979671F8(v8, v9, &qword_1EAF48AB0, &unk_197A89150);
  v10 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947900(v1, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0(v10);
    (*(v12 + 8))(v1, v10);
  }

  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947900(v3, &qword_1EAF48AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
  v15 = swift_task_create();

  sub_197947900(v3, &qword_1EAF48AB0);

  return v15;
}

uint64_t sub_1979CC584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_56_3();
  sub_1979671F8(v17, v18, &qword_1EAF48AB0, &unk_197A89150);
  v19 = sub_197A87C08();
  OUTLINED_FUNCTION_123_0(v7);
  OUTLINED_FUNCTION_63_2();

  if (&qword_1EAF48AB0 == 1)
  {
    sub_197947900(v7, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0(v19);
    (*(v20 + 8))(v7, v19);
  }

  v21 = *(a5 + 16);
  v22 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947900(a3, &qword_1EAF48AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v23 = swift_task_create();

  sub_197947900(a3, &qword_1EAF48AB0);

  return v23;
}

uint64_t sub_1979CC804()
{
  OUTLINED_FUNCTION_131_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_56_3();
  sub_1979671F8(v8, v9, &qword_1EAF48AB0, &unk_197A89150);
  v10 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947900(v1, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0(v10);
    (*(v12 + 8))(v1, v10);
  }

  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947900(v3, &qword_1EAF48AB0);
    return OUTLINED_FUNCTION_151();
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();

  v15 = OUTLINED_FUNCTION_151();

  sub_197947900(v3, &qword_1EAF48AB0);

  return v15;
}

uint64_t static InferenceProviderXPCSender.builtInInferenceProviderExtensionIdentityCache.getter()
{
  if (qword_1EAF48938 != -1)
  {
    swift_once();
  }
}

uint64_t InferenceProviderXPCSender.__allocating_init(builtInProvider:session:)(uint64_t a1, uint64_t *a2)
{
  v3 = swift_allocObject();
  InferenceProviderXPCSender.init(builtInProvider:session:)(v3, a2);
  return v3;
}

uint64_t InferenceProviderXPCSender.init(builtInProvider:session:)(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  swift_defaultActor_initialize();
  sub_197947C44(a2, v17);
  v10 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_1979671F8(v17, v15, &qword_1EAF499D0, &qword_197A92130);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = v15[1];
  *(v11 + 32) = v15[0];
  *(v11 + 48) = v12;
  *(v11 + 64) = v16;
  v13 = sub_1979CC2F8();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  sub_197947900(v17, &qword_1EAF499D0);
  *(v2 + 112) = v13;
  return v2;
}

uint64_t sub_1979CCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a1;
  v4[11] = a4;
  v5 = type metadata accessor for ModelManagerError();
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v4[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = type metadata accessor for InferenceProviderXPCRequest(0);
  v4[18] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979CCD5C, 0, 0);
}

uint64_t sub_1979CCD5C()
{
  OUTLINED_FUNCTION_49_0();
  v25 = v0;
  sub_197947C44(v0[11], (v0 + 2));
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v2 = sub_197A87608();
  v0[20] = __swift_project_value_buffer(v2, qword_1ED87DD88);
  v3 = sub_197A875E8();
  v4 = sub_197A87D38();
  if (OUTLINED_FUNCTION_65(v4))
  {
    v5 = OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_93_0();
    v24 = v6;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_136_0();
    *(v5 + 4) = sub_197948834(v7, 0xE700000000000000, &v24);
    OUTLINED_FUNCTION_65_3();
    _os_log_impl(v8, v9, v10, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_44();
  }

  v13 = v0[18];
  v12 = v0[19];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_9_4();
  v14 = swift_task_alloc();
  v0[21] = v14;
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v15, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v14 = v16;
  v14[1] = sub_1979CCF3C;
  v18 = v0[18];
  v17 = v0[19];
  v19 = v0[17];
  v20 = v0[15];
  v26 = v21;
  OUTLINED_FUNCTION_117();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979CCF3C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  if (v0)
  {
    v9 = sub_1979CD450;
  }

  else
  {
    v9 = sub_1979CD038;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1979CD038()
{
  v58 = v0;
  v1 = v0[15];
  sub_1979671F8(v0[17], v0[16], &qword_1EAF499F8, &unk_197A92360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_135_0();
    v2 = v0[17];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];
    sub_19794B1D0(v0[16], v3, type metadata accessor for ModelManagerError);
    sub_197967254(v3, v4, type metadata accessor for ModelManagerError);
    OUTLINED_FUNCTION_1_8();
    v8 = sub_197955EBC(v6, v7);
    swift_willThrowTypedImpl();
    sub_19796F6D0(v3, type metadata accessor for ModelManagerError);
    OUTLINED_FUNCTION_1();
    v9 = OUTLINED_FUNCTION_88();
    sub_19794B1D0(v4, v10, type metadata accessor for ModelManagerError);
    sub_197947900(v2, &qword_1EAF499F8);
    v11 = v0[20];
    MEMORY[0x19A8EBBD0](v9);
    v12 = sub_197A875E8();
    sub_197A87D58();

    if (OUTLINED_FUNCTION_96_1())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_50_1();
      v13 = OUTLINED_FUNCTION_61_0();
      v57[0] = v13;
      *type metadata accessor for ModelManagerError = 136315394;
      v14 = OUTLINED_FUNCTION_138_0();
      v17 = sub_197948834(v14, v15, v16);
      OUTLINED_FUNCTION_148(v17);
      *(&loc_1979436F8 + 2) = _swift_stdlib_bridgeErrorToNSError();
      *v8 = *(&loc_1979436F8 + 2);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      sub_197947900(v8, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    v23 = v0[19];
    v25 = v0[16];
    v24 = v0[17];
    v55 = v0[14];
    v56 = v0[13];
    v26 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v27 = OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_128_0(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57[0], v57[1]);
    OUTLINED_FUNCTION_154();
    v35 = OUTLINED_FUNCTION_138_0();
    MEMORY[0x19A8EAC80](v35);
    OUTLINED_FUNCTION_91_2();
    v0[9] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    sub_197A87EA8();
    v36 = OUTLINED_FUNCTION_77_4();
    v37(v36);

    swift_willThrow();
    OUTLINED_FUNCTION_18_4();
    sub_19796F6D0(v23, v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_107_1();
  }

  else
  {
    v40 = v0[20];
    v41 = sub_197A875E8();
    v42 = sub_197A87D38();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[19];
    v45 = v0[17];
    if (v43)
    {
      v46 = OUTLINED_FUNCTION_56();
      v57[0] = OUTLINED_FUNCTION_93_0();
      *v46 = 136315138;
      v47 = OUTLINED_FUNCTION_136_0();
      *(v46 + 4) = sub_197948834(v47, 0xE700000000000000, v57);
      OUTLINED_FUNCTION_115_1(&dword_197941000, v41, v42, "Configure request for: %s returned");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    sub_197947900(v45, &qword_1EAF499F8);
    OUTLINED_FUNCTION_18_4();
    sub_19796F6D0(v44, v48);
    v49 = v0[19];
    v51 = v0[16];
    v50 = v0[17];
    v53 = v0[13];
    v52 = v0[14];
    sub_197947C44((v0 + 2), v0[10]);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_107_1();
  }

  return v39();
}

uint64_t sub_1979CD450()
{
  OUTLINED_FUNCTION_135_0();
  v3 = v0[22];
  v4 = v0[20];
  MEMORY[0x19A8EBBD0](v3);
  v5 = sub_197A875E8();
  sub_197A87D58();

  if (OUTLINED_FUNCTION_96_1())
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_50_1();
    v36 = OUTLINED_FUNCTION_61_0();
    *v1 = 136315394;
    v6 = OUTLINED_FUNCTION_138_0();
    v9 = sub_197948834(v6, v7, v8);
    OUTLINED_FUNCTION_148(v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v10;
    *v2 = v10;
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    sub_197947900(v2, &qword_1EAF48A90);
    OUTLINED_FUNCTION_36_3();
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v16 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  v34 = v0[14];
  v35 = v0[13];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v20 = OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_128_0(v20, v21, v22, v23, v24, v25, v26, v27, v34, v35, v36, v37);
  OUTLINED_FUNCTION_154();
  v28 = OUTLINED_FUNCTION_138_0();
  MEMORY[0x19A8EAC80](v28);
  OUTLINED_FUNCTION_91_2();
  v0[9] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  sub_197A87EA8();
  v29 = OUTLINED_FUNCTION_77_4();
  v30(v29);

  swift_willThrow();
  OUTLINED_FUNCTION_18_4();
  sub_19796F6D0(v16, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_107_1();

  return v32();
}

uint64_t sub_1979CD684()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[10];
  OUTLINED_FUNCTION_153_0();
  v0[11] = *(v1 + 112);
  v2 = *(MEMORY[0x1E69E86A8] + 4);

  v3 = swift_task_alloc();
  v0[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v3 = v0;
  v3[1] = sub_1979CD770;
  v4 = OUTLINED_FUNCTION_132_0();

  return MEMORY[0x1EEE6DA10](v4);
}

uint64_t sub_1979CD770()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    v11 = v3 + 80;
    v9 = *(v3 + 80);
    v10 = *(v11 + 8);

    v12 = sub_1979CD948;
    v13 = v9;
  }

  else
  {
    v13 = *(v3 + 80);
    v12 = sub_1979CD894;
  }

  return MEMORY[0x1EEE6DFA0](v12, v13, 0);
}

uint64_t sub_1979CD894()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[11];

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 16))(0x6164696C61766E49, 0xEB00000000646574, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1979CD968()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 112);
  return v2();
}

uint64_t sub_1979CD98C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v0;
  v3 = *v2;
  v4 = *(v2 + 2);
  OUTLINED_FUNCTION_17(dword_197A92158);
  v9 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = v6;
  *v6 = v7;
  v6[1] = sub_1979CDA40;

  return v9(v1 + 40, v3, v4);
}

uint64_t sub_1979CDA40()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 32) = v0;

  if (v0)
  {
    v10 = sub_1979CDB6C;
  }

  else
  {
    v10 = sub_1979CDB50;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, 0);
}

uint64_t sub_1979CDB88()
{
  OUTLINED_FUNCTION_9();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for InferenceProviderXPCRequest.ConvertData(0);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979CDC00()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  v2 = v0[4];
  OUTLINED_FUNCTION_69_3();
  sub_197967254(v3, v4, v5);
  OUTLINED_FUNCTION_17(dword_197A92168);
  v12 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[7] = v7;
  *v7 = v8;
  v7[1] = sub_1979CDCAC;
  v10 = v0[5];
  v9 = v0[6];

  return v12(v0 + 2, v9);
}

uint64_t sub_1979CDCAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 56);
  v6 = *(v1 + 48);
  *v4 = *v2;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 40);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979CDDE8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1979CDE54()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1979CDEB0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1979CDF0C()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.EndOfStreamNotification(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v0[5] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for RequestKey(0);
  v0[6] = v9;
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1979CDFFC()
{
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];
  v5 = sub_197A87608();
  v6 = __swift_project_value_buffer(v5, qword_1ED87DD88);
  v0[11] = v6;
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v4, v3, v7);
  v8 = OUTLINED_FUNCTION_100();
  sub_197967254(v8, v9, v1);
  v10 = v6;
  v11 = sub_197A875E8();
  v12 = sub_197A87D78();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[10];
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_149();
    v45 = OUTLINED_FUNCTION_93_0();
    *v15 = 136315394;
    v16 = OUTLINED_FUNCTION_140();
    sub_1979671F8(v16, v17, v18, v19);
    v20 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v22 = v21;
    sub_197947900(v10, &qword_1EAF49128);
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v14, v23);
    v24 = sub_197948834(v20, v22, &v45);

    OUTLINED_FUNCTION_92_1(v25, v26, v27, v28, v29, v30, v31, v32, v43, v44);
    *(v15 + 14) = v24;
    OUTLINED_FUNCTION_147_0(&dword_197941000, v33, v34, "Sending InferenceProvider EndOfStream message for %s, subrequest %u");
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    sub_19796F6D0(v0[9], type metadata accessor for RequestKey);

    v35 = OUTLINED_FUNCTION_140();
    sub_19796F6D0(v35, v36);
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v37, v38, v39);
  OUTLINED_FUNCTION_17(dword_197A921A0);
  v40 = swift_task_alloc();
  v0[12] = v40;
  *v40 = v0;
  OUTLINED_FUNCTION_112_1(v40);
  OUTLINED_FUNCTION_142();

  __asm { BR              X1 }
}

uint64_t sub_1979CE218()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 32);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[13] = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    v10 = v3[3];
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v16 = v3[9];
    v15 = v3[10];
    v18 = v3[7];
    v17 = v3[8];
    v21 = v3 + 4;
    v19 = v3[4];
    v20 = v21[1];

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_112();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1979CE39C()
{
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[2];
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v6, v7, v8);
  sub_197967254(v6, v5, v1);
  MEMORY[0x19A8EBBD0](v2);
  v9 = sub_197A875E8();
  v10 = sub_197A87D58();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[7];
  v14 = v0[8];
  if (v11)
  {
    OUTLINED_FUNCTION_150();
    v55 = OUTLINED_FUNCTION_50_1();
    v56 = OUTLINED_FUNCTION_93_0();
    *v6 = 136315650;
    v15 = OUTLINED_FUNCTION_134_1();
    sub_1979671F8(v15, v16, &qword_1EAF49128, &unk_197A8CE70);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v14, v17);
    v18 = OUTLINED_FUNCTION_100();
    v21 = sub_197948834(v18, v19, v20);

    OUTLINED_FUNCTION_90_2(v22, v23, v24, v25, v26, v27, v28, v29, v48, v50, v52, v54);
    OUTLINED_FUNCTION_118_0();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 20) = v30;
    *v55 = v30;
    OUTLINED_FUNCTION_116_1(&dword_197941000, v31, v32, "Error occurred while sending EndOfStream message for %s, subrequest %u: %@", v33, v34, v35, v36, v49, v51, v53);
    sub_197947900(v55, &qword_1EAF48A90);
    OUTLINED_FUNCTION_44();
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v13, v37);

    v38 = OUTLINED_FUNCTION_134_1();
    sub_19796F6D0(v38, v39);
  }

  v41 = v0[9];
  v40 = v0[10];
  v43 = v0[7];
  v42 = v0[8];
  v45 = v0[4];
  v44 = v0[5];

  OUTLINED_FUNCTION_13();

  return v46();
}

uint64_t sub_1979CE5BC()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.ClientTerminatedNotification(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v0[5] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for RequestKey(0);
  v0[6] = v9;
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1979CE6AC()
{
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];
  v5 = sub_197A87608();
  v6 = __swift_project_value_buffer(v5, qword_1ED87DD88);
  v0[11] = v6;
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v4, v3, v7);
  v8 = OUTLINED_FUNCTION_100();
  sub_197967254(v8, v9, v1);
  v10 = v6;
  v11 = sub_197A875E8();
  v12 = sub_197A87D78();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[10];
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_149();
    v45 = OUTLINED_FUNCTION_93_0();
    *v15 = 136315394;
    v16 = OUTLINED_FUNCTION_140();
    sub_1979671F8(v16, v17, v18, v19);
    v20 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v22 = v21;
    sub_197947900(v10, &qword_1EAF49128);
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v14, v23);
    v24 = sub_197948834(v20, v22, &v45);

    OUTLINED_FUNCTION_92_1(v25, v26, v27, v28, v29, v30, v31, v32, v43, v44);
    *(v15 + 14) = v24;
    OUTLINED_FUNCTION_147_0(&dword_197941000, v33, v34, "Sending InferenceProvider ClientTerminated message for%s, subrequest %u");
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    sub_19796F6D0(v0[9], type metadata accessor for RequestKey);

    v35 = OUTLINED_FUNCTION_140();
    sub_19796F6D0(v35, v36);
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v37, v38, v39);
  OUTLINED_FUNCTION_17(dword_197A921B8);
  v40 = swift_task_alloc();
  v0[12] = v40;
  *v40 = v0;
  OUTLINED_FUNCTION_112_1(v40);
  OUTLINED_FUNCTION_142();

  __asm { BR              X1 }
}

uint64_t sub_1979CE8C8()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 32);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[13] = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    v10 = v3[3];
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v16 = v3[9];
    v15 = v3[10];
    v18 = v3[7];
    v17 = v3[8];
    v21 = v3 + 4;
    v19 = v3[4];
    v20 = v21[1];

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_112();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1979CEA4C()
{
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[2];
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v6, v7, v8);
  sub_197967254(v6, v5, v1);
  MEMORY[0x19A8EBBD0](v2);
  v9 = sub_197A875E8();
  v10 = sub_197A87D58();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[7];
  v14 = v0[8];
  if (v11)
  {
    OUTLINED_FUNCTION_150();
    v55 = OUTLINED_FUNCTION_50_1();
    v56 = OUTLINED_FUNCTION_93_0();
    *v6 = 136315650;
    v15 = OUTLINED_FUNCTION_134_1();
    sub_1979671F8(v15, v16, &qword_1EAF49128, &unk_197A8CE70);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v14, v17);
    v18 = OUTLINED_FUNCTION_100();
    v21 = sub_197948834(v18, v19, v20);

    OUTLINED_FUNCTION_90_2(v22, v23, v24, v25, v26, v27, v28, v29, v48, v50, v52, v54);
    OUTLINED_FUNCTION_118_0();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 20) = v30;
    *v55 = v30;
    OUTLINED_FUNCTION_116_1(&dword_197941000, v31, v32, "Error occurred while sending ClientTerminated message for %s, subrequest %u: %@", v33, v34, v35, v36, v49, v51, v53);
    sub_197947900(v55, &qword_1EAF48A90);
    OUTLINED_FUNCTION_44();
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v13, v37);

    v38 = OUTLINED_FUNCTION_134_1();
    sub_19796F6D0(v38, v39);
  }

  v41 = v0[9];
  v40 = v0[10];
  v43 = v0[7];
  v42 = v0[8];
  v45 = v0[4];
  v44 = v0[5];

  OUTLINED_FUNCTION_13();

  return v46();
}

uint64_t sub_1979CEC6C()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979CECE8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[5];
  v2 = v0[3];
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v3, v4, v5);
  OUTLINED_FUNCTION_17(dword_197A921C8);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[6] = v6;
  *v6 = v7;
  v6[1] = sub_1979CED8C;
  v9 = v0[4];
  v8 = v0[5];
  v10 = OUTLINED_FUNCTION_104_1();

  return v11(v10);
}

uint64_t sub_1979CED8C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 48);
  *v4 = *v2;
  *(v3 + 56) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 32);
  sub_19796F6D0(*(v6 + 40), type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979CEECC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  if (sub_1979CF328())
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_137_1(v2);

    return sub_1979CDF0C();
  }

  else
  {
    v4 = v0[5];

    OUTLINED_FUNCTION_15();

    return v5();
  }
}

uint64_t sub_1979CEFA0()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v1 + 40);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1979CF0A8()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_137_1(v1);

  return sub_1979CDF0C();
}

uint64_t sub_1979CF12C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 72);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979CF224()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  type metadata accessor for ModelManagerError();
  OUTLINED_FUNCTION_1_8();
  sub_197955EBC(v3, v4);
  OUTLINED_FUNCTION_88();
  v6 = v5;
  MEMORY[0x19A8EBBD0](v1);
  ModelManagerError.init(wrapping:)(v1, v6);
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v7();
}

BOOL sub_1979CF328()
{
  OUTLINED_FUNCTION_114_0();
  v3 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  sub_1979671F8(v3, &v20 - v13, v2, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1 || (sub_1979671F8(v14, v12, v2, v0), v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348), v17 = *&v12[*(v16 + 48)], , LODWORD(v16) = v12[*(v16 + 64)], sub_19796F6D0(v12, type metadata accessor for ClientData), v16 == 1))
    {
      v18 = 1;
    }
  }

  sub_197947900(v14, v2);
  return v18;
}

uint64_t sub_1979CF470()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_78_0();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979CF4F4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 80);
  v6 = v2[5];
  OUTLINED_FUNCTION_69_3();
  sub_197967254(v8, &v1[v7], v9);
  v10 = v2[6];
  OUTLINED_FUNCTION_70_3();
  sub_197967254(v4, &v1[v11], v12);
  v13 = *(type metadata accessor for InferenceProviderRequestConfiguration(0) + 28);
  v14 = v2[7];
  v15 = sub_197A87298();
  OUTLINED_FUNCTION_6(v15);
  (*(v16 + 16))(&v1[v14], v4 + v13);
  *v1 = v5;
  OUTLINED_FUNCTION_17(dword_197A921D8);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 64) = v17;
  *v17 = v18;
  v17[1] = sub_19797B7D4;
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_112();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1979CF60C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1979CF668()
{
  OUTLINED_FUNCTION_9();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979CF6EC()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  sub_197967254(v0[4], &v1[v2[5]], type metadata accessor for RequestMetadata);
  v5 = v2[6];
  OUTLINED_FUNCTION_70_3();
  sub_197967254(v3, &v1[v6], v7);
  v8 = *(type metadata accessor for InferenceProviderRequestConfiguration(0) + 28);
  v9 = v2[7];
  v10 = sub_197A87298();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 16))(&v1[v9], v3 + v8);
  *v1 = v4;
  sub_197A878A8();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[9] = v12;
  *v12 = v13;
  v12[1] = sub_1979CF828;
  v14 = v0[8];
  v15 = v0[6];
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_112();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1979CF828()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *(v5 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[10] = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    v10 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1979CF97C, v10, 0);
  }

  else
  {
    v11 = v3[8];

    OUTLINED_FUNCTION_13();

    return v12();
  }
}

uint64_t sub_1979CF97C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1979CF9D8()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979CFA4C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_98_1();
  sub_1979671F8(v0, v1, &qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_17(dword_197A921F8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_139(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_38_3(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_1979CFAEC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 32);
  *v4 = *v2;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979CFC28()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979CFC9C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v0, v1, v2);
  OUTLINED_FUNCTION_17(dword_197A92208);
  v16 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_139(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_38_3(v5, v7, v8, v9, v10, v11, v12, v13, v16);

  return v14();
}

uint64_t sub_1979CFD30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 32);
  *v4 = *v2;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979CFE6C()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_87_2(v3);
  v5 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v4);
  v0[4] = v5;
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_78_0();
  v9 = *v2;
  v0[5] = v8;
  v0[6] = v9;
  v10 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979CFEEC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v5, v1, v6);
  *(v1 + *(v3 + 20)) = v2;
  sub_1979D559C(v2);
  OUTLINED_FUNCTION_17(dword_197A92218);
  v12 = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1979CFFB8;
  v9 = v0[5];
  v10 = v0[3];

  return v12();
}

uint64_t sub_1979CFFB8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 56);
  v6 = *(v1 + 40);
  *v4 = *v2;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979D00F4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_1979D014C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1979D01A8()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979D021C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v0, v1, v2);
  OUTLINED_FUNCTION_17(dword_197A92228);
  v16 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_139(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_38_3(v5, v7, v8, v9, v10, v11, v12, v13, v16);

  return v14();
}

uint64_t sub_1979D02B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  v3 = *(v0 + 40);
  v4 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 24);
  if (v1)
  {

    OUTLINED_FUNCTION_124_1();
    v8 = sub_1979D6DE8;
  }

  else
  {
    sub_19796F6D0(*(v6 + 32), type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest);
    v8 = sub_1979D0418;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1979D0418()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1979D0470(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 176) = a3;
  *(v4 + 64) = a1;
  v5 = type metadata accessor for ModelManagerError();
  *(v4 + 88) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v7 = type metadata accessor for InferenceProviderXPCRequest(0);
  *(v4 + 112) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
  *(v4 + 128) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v4 + 144) = v11;
  *v11 = v4;
  v11[1] = sub_1979D05B8;

  return sub_197967424(v4 + 16);
}

uint64_t sub_1979D05B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D06CC()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 176);
  v4 = *(v0 + 72);
  OUTLINED_FUNCTION_9_4();
  *v1 = v4;
  *(v1 + 8) = v3;
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v5);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v6, v2);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D6B88();
  OUTLINED_FUNCTION_57_2();
  *v1 = v7;
  OUTLINED_FUNCTION_2_9(v8);

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D07D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_1979D9AD4();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF49A30);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  sub_197955EBC(v18, v19);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v20, v21);
  sub_197947900(v17, &qword_1EAF49A30);
  OUTLINED_FUNCTION_81_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5())
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  v22 = *v17;
  v23 = v17[1];
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1979D0BFC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D0D40;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D0D40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D0E54()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D69DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D0F44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_1979D9BE8();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF49A10);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  sub_197955EBC(v18, v19);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v20, v21);
  sub_197947900(v17, &qword_1EAF49A10);
  OUTLINED_FUNCTION_81_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5())
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  v22 = *v17;
  v23 = v17[1];
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1979D136C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D14B0;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D14B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D15C4()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D676C();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D16B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D17F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_1979D9CFC();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF49A08);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  sub_197955EBC(v18, v19);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v20, v21);
  sub_197947900(v17, &qword_1EAF49A08);
  OUTLINED_FUNCTION_81_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5())
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  v22 = *v17;
  v23 = v17[1];
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1979D1ADC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D1C20;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D1C20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D1D34()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D6614();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D1E24(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D1F68;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D1F68()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D207C()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D6614();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D216C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D22AC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_97_1();

  OUTLINED_FUNCTION_13();

  return v3();
}

void sub_1979D232C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);
  *(v0 + 56) = v1;
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  MEMORY[0x19A8EBBD0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5())
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v6 = *v5;
      v7 = v5[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v8 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v8, qword_1ED87DD88);
      sub_197A878A8();
      v9 = sub_197A875E8();
      sub_197A87D78();

      if (OUTLINED_FUNCTION_110_1())
      {
        v10 = OUTLINED_FUNCTION_56();
        v11 = OUTLINED_FUNCTION_93_0();
        *(v10 + 4) = OUTLINED_FUNCTION_95_2(4.8149e-34, v11, v12, v13, v14, v15, v16, v17, v18, v11);
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_115_1(v19, v20, v21, v22);
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_37();
      }

      v23 = *(v0 + 88);
      OUTLINED_FUNCTION_1_8();
      sub_197955EBC(v24, v25);
      v26 = OUTLINED_FUNCTION_82_3();
      v28 = OUTLINED_FUNCTION_75_0(v26, v27);
      OUTLINED_FUNCTION_117_0(v28, v29);
      swift_willThrow();

      goto LABEL_14;
    }

    sub_19796F6D0(v5, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v30 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v30, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v1);
  v31 = sub_197A875E8();
  sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v32 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v33);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    sub_197947900(v32, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  swift_willThrow();
LABEL_14:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_117();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1979D25D4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D2718;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D2718()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D282C()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D291C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D2A60;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D2A60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D2B74()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D2C64(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D2DA8;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D2DA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D2EBC()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D2FAC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_1979D30F0;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D30F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D3204()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D32F4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = type metadata accessor for ModelManagerError();
  v1[17] = v6;
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v1[21] = v10;
  v12 = *(v11 + 64);
  v1[22] = OUTLINED_FUNCTION_78_0();
  v1[23] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_8();
  v1[24] = sub_197955EBC(v13, v14);
  v15 = type metadata accessor for IPCResult();
  v1[25] = v15;
  OUTLINED_FUNCTION_10(v15);
  v1[26] = v16;
  v18 = *(v17 + 64);
  v1[27] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[28] = v19;
  *v19 = v20;
  v19[1] = sub_1979D34E4;
  OUTLINED_FUNCTION_112();

  return sub_197967424(v21);
}

uint64_t sub_1979D34E4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 224);
  *v4 = *v2;
  *(v3 + 232) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 128);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D35F8()
{
  v19 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  v20 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v5 + 72))(v4, v5);
  v7 = swift_task_alloc();
  v0[30] = v7;
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
  OUTLINED_FUNCTION_71_4();
  v12 = sub_197955EBC(v11, type metadata accessor for ModelManagerError);
  v0[7] = AssociatedConformanceWitness;
  v0[8] = v9;
  v0[9] = v10;
  v0[10] = v12;
  swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1979D3814;
  v13 = v0[27];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[20];
  OUTLINED_FUNCTION_142();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D3814()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = v0[30];
  *v4 = *v2;
  *(v3 + 248) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = v0[21];
  v8 = v0[20];
  v9 = v0[16];
  (*(v7 + 8))(*(v6 + 176), v8);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1979D3974()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v1 + 248);
  v3 = *(v1 + 216);
  v4 = *(v1 + 200);
  v5 = *(v1 + 152);
  v6 = *(v1 + 96);
  _s20ModelManagerServices9IPCResultO3getxyq_YKF();
  v8 = *(v1 + 208);
  v7 = *(v1 + 216);
  v9 = *(v1 + 200);
  v10 = *(v1 + 152);
  if (!v2)
  {
    v42 = *(v1 + 176);
    v43 = *(v1 + 144);
    (*(v8 + 8))(*(v1 + 216), *(v1 + 200));
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  v11 = *(v1 + 192);
  v12 = *(v1 + 136);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v10, v13, v14);
  (*(v8 + 8))(v7, v9);
  v16 = *(v1 + 136);
  v15 = *(v1 + 144);
  *(v1 + 88) = v0;
  MEMORY[0x19A8EBBD0](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (swift_dynamicCast())
  {
    v17 = *(v1 + 136);
    v18 = *(v1 + 144);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v19 = *v18;
      v20 = v18[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v21 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v21, qword_1ED87DD88);
      sub_197A878A8();
      v22 = sub_197A875E8();
      sub_197A87D78();

      if (OUTLINED_FUNCTION_110_1())
      {
        v23 = OUTLINED_FUNCTION_56();
        v24 = OUTLINED_FUNCTION_93_0();
        *(v23 + 4) = OUTLINED_FUNCTION_95_2(4.8149e-34, v24, v25, v26, v27, v28, v29, v30, v31, v24);
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_115_1(v32, v33, v34, v35);
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_37();
      }

      v36 = *(v1 + 192);
      v37 = *(v1 + 136);
      v38 = OUTLINED_FUNCTION_82_3();
      v40 = OUTLINED_FUNCTION_75_0(v38, v39);
      OUTLINED_FUNCTION_117_0(v40, v41);
      swift_willThrow();

LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      v53 = *(v1 + 216);
      v54 = *(v1 + 176);
      v56 = *(v1 + 144);
      v55 = *(v1 + 152);

      OUTLINED_FUNCTION_22_1();
LABEL_17:
      OUTLINED_FUNCTION_117();

      __asm { BRAA            X1, X16 }
    }

    sub_19796F6D0(v18, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v44 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v44, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v0);
  v45 = sub_197A875E8();
  sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v46 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v47 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v47);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    sub_197947900(v46, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  swift_willThrow();
  goto LABEL_16;
}

uint64_t sub_1979D3CB4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];

  OUTLINED_FUNCTION_13();

  return v6();
}

void sub_1979D3D38()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 248);
  *(v0 + 88) = v1;
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  MEMORY[0x19A8EBBD0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5())
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v6 = *v5;
      v7 = v5[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v8 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v8, qword_1ED87DD88);
      sub_197A878A8();
      v9 = sub_197A875E8();
      sub_197A87D78();

      if (OUTLINED_FUNCTION_110_1())
      {
        v10 = OUTLINED_FUNCTION_56();
        v11 = OUTLINED_FUNCTION_93_0();
        *(v10 + 4) = OUTLINED_FUNCTION_95_2(4.8149e-34, v11, v12, v13, v14, v15, v16, v17, v18, v11);
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_115_1(v19, v20, v21, v22);
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_37();
      }

      v23 = *(v0 + 192);
      v24 = *(v0 + 136);
      v25 = OUTLINED_FUNCTION_82_3();
      v27 = OUTLINED_FUNCTION_75_0(v25, v26);
      OUTLINED_FUNCTION_117_0(v27, v28);
      swift_willThrow();

      goto LABEL_14;
    }

    sub_19796F6D0(v5, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v29 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v29, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v1);
  v30 = sub_197A875E8();
  sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v31 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v32);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_197947900(v31, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  swift_willThrow();
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v38 = *(v0 + 216);
  v39 = *(v0 + 176);
  v41 = *(v0 + 144);
  v40 = *(v0 + 152);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_117();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1979D3FD0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ModelManagerError();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v2[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_1979D40C8;

  return sub_197967424((v2 + 2));
}

uint64_t sub_1979D40C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D41DC()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[16] = v4;
  OUTLINED_FUNCTION_68_4();
  sub_197955EBC(v5, v2);
  OUTLINED_FUNCTION_72_4(&qword_1ED87E200);
  OUTLINED_FUNCTION_57_2();
  *v4 = v6;
  OUTLINED_FUNCTION_86_2();

  return IPCSession.sendWithTaskCancellation<A>(_:)();
}

uint64_t sub_1979D42DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 128);
  *v4 = *v2;
  *(v3 + 136) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 72);
  sub_19796F6D0(*(v6 + 104), type metadata accessor for InferenceProviderXPCRequest.Notification);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D441C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1979D4484()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_79_6();

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1979D44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  *(v12 + 56) = *(v12 + 136);
  v15 = *(v12 + 80);
  v14 = *(v12 + 88);
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5())
  {
    v16 = *(v12 + 80);
    v17 = *(v12 + 88);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v18 = *v17;
      v19 = v17[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v20 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v20, qword_1ED87DD88);
      sub_197A878A8();
      v21 = sub_197A875E8();
      v22 = sub_197A87D78();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        OUTLINED_FUNCTION_85_2(4.8149e-34);
        *(v13 + 4) = sub_197948834(v18, v19, v23);
        OUTLINED_FUNCTION_146(&dword_197941000, v24, v25, "XPC Connection error: %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v26 = *(v12 + 80);
      OUTLINED_FUNCTION_1_8();
      sub_197955EBC(v27, v28);
      v29 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_121_0(v29, v30);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
      goto LABEL_14;
    }

    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v31 = *(v12 + 136);
  v32 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v32, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v31);
  v33 = sub_197A875E8();
  v34 = sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    v35 = *(v12 + 136);
    v36 = OUTLINED_FUNCTION_56();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    MEMORY[0x19A8EBBD0](v35);
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v38;
    *v37 = v38;
    OUTLINED_FUNCTION_115_1(&dword_197941000, v33, v34, "Error from daemon, passing along: %@");
    sub_197947900(v37, &qword_1EAF48A90);
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37();
  }

  v39 = *(v12 + 136);

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
  v40 = *(v12 + 136);
LABEL_14:
  v41 = *(v12 + 104);
  v42 = *(v12 + 88);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1979D47C0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ModelManagerError();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v2[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_1979D48B8;

  return sub_197967424((v2 + 2));
}

uint64_t sub_1979D48B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D49CC()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[16] = v4;
  OUTLINED_FUNCTION_68_4();
  sub_197955EBC(v5, v2);
  OUTLINED_FUNCTION_72_4(&qword_1ED87E200);
  OUTLINED_FUNCTION_57_2();
  *v4 = v6;
  OUTLINED_FUNCTION_86_2();

  return IPCSession.sendWithTaskCancellation<A>(_:)();
}

uint64_t sub_1979D4ACC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 128);
  *v4 = *v2;
  *(v3 + 136) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 72);
  sub_19796F6D0(*(v6 + 104), type metadata accessor for InferenceProviderXPCRequest.Notification);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D4C0C()
{
  OUTLINED_FUNCTION_18();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = type metadata accessor for ModelManagerError();
  v1[12] = v5;
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_78_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[17] = v12;
  *v12 = v13;
  v12[1] = sub_1979D4D38;

  return sub_197967424((v1 + 2));
}

uint64_t sub_1979D4D38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979D4E4C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v3 + 72))(v4, v3);
  v7 = swift_task_alloc();
  v0[19] = v7;
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_144_0();
  *v7 = v0;
  v7[1] = sub_1979D4F80;
  v8 = v0[16];
  v9 = v0[14];

  return IPCSession.sendWithTaskCancellation<A>(_:)();
}

uint64_t sub_1979D4F80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = v0[19];
  *v4 = *v2;
  *(v3 + 160) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = v0[15];
  v8 = v0[14];
  v9 = v0[11];
  (*(v7 + 8))(*(v6 + 128), v8);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979D50E0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_79_6();

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1979D5144()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1979D51AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  *(v12 + 56) = *(v12 + 160);
  v15 = *(v12 + 96);
  v14 = *(v12 + 104);
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5())
  {
    v16 = *(v12 + 96);
    v17 = *(v12 + 104);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v18 = *v17;
      v19 = v17[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v20 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v20, qword_1ED87DD88);
      sub_197A878A8();
      v21 = sub_197A875E8();
      v22 = sub_197A87D78();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        OUTLINED_FUNCTION_85_2(4.8149e-34);
        *(v13 + 4) = sub_197948834(v18, v19, v23);
        OUTLINED_FUNCTION_146(&dword_197941000, v24, v25, "XPC Connection error: %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v26 = *(v12 + 96);
      OUTLINED_FUNCTION_1_8();
      sub_197955EBC(v27, v28);
      v29 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_121_0(v29, v30);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
      goto LABEL_14;
    }

    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v31 = *(v12 + 160);
  v32 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v32, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v31);
  v33 = sub_197A875E8();
  v34 = sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    v35 = *(v12 + 160);
    v36 = OUTLINED_FUNCTION_56();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    MEMORY[0x19A8EBBD0](v35);
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v38;
    *v37 = v38;
    OUTLINED_FUNCTION_115_1(&dword_197941000, v33, v34, "Error from daemon, passing along: %@");
    sub_197947900(v37, &qword_1EAF48A90);
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37();
  }

  v39 = *(v12 + 160);

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
  v40 = *(v12 + 160);
LABEL_14:
  v41 = *(v12 + 128);
  v42 = *(v12 + 104);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t InferenceProviderXPCSender.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InferenceProviderXPCSender.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1979D550C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_99_1(v4);

  return sub_1979CCC44(v6, v7, v8, v9);
}

unint64_t sub_1979D559C(unint64_t result)
{
  if (result >= 4)
  {
    return sub_197A878A8();
  }

  return result;
}

uint64_t dispatch thunk of InferenceProviderXPCSender.invalidate()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 136);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);

  return v7();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.isVersionSupported(version:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 152);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.convertData(clientData:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t sub_1979D5960()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_100();

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendEndOfStream(for:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 184);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendClientTerminated(for:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 192);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.fetchNextStreamResults(requestKey:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_7_2();
  v3 = *(v2 + 200);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;

  return v9(v1, v0);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.requestInference(asStream:clientData:configuration:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 208);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_106_1(v4);
  OUTLINED_FUNCTION_73_4();

  return v6();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.requestInputStreamInference(clientDataArray:metadata:configuration:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v1 = *(v0 + 216);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_106_1(v4);
  OUTLINED_FUNCTION_73_4();

  return v6();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.inputStreamEnded(requestID:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 224);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.directStreamHandshake(requestIdentifier:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 232);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.willCancelActiveRequest(id:dueTo:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 240);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);
  v6 = OUTLINED_FUNCTION_100();

  return v8(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.endOfStream(_:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 248);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendAsync<A>(_:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v7 = *(v0 + 256) + **(v0 + 256);
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_106_1(v3);
  OUTLINED_FUNCTION_73_4();

  return v5();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendOnewayAsync<A>(_:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  v12 = (*(v6 + 264) + **(v6 + 264));
  v7 = *(*(v6 + 264) + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);

  return v12(v5, v3, v1);
}

unint64_t sub_1979D6614()
{
  result = qword_1ED87D7C8;
  if (!qword_1ED87D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A00, &qword_197A92D00);
    sub_197955EBC(&qword_1ED87FC60, type metadata accessor for InferenceProviderRequestResult);
    sub_197955EBC(&qword_1ED87DE00, type metadata accessor for InferenceProviderRequestResult);
    sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D7C8);
  }

  return result;
}

unint64_t sub_1979D676C()
{
  result = qword_1ED87DDA8;
  if (!qword_1ED87DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A08, &qword_197A92370);
    sub_1979D68A8(&qword_1ED87E6A0);
    sub_1979D68A8(qword_1ED87E6A8);
    sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDA8);
  }

  return result;
}

uint64_t sub_1979D68A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499D8, &unk_197A92330);
    sub_197955EBC(&qword_1ED87FFB8, type metadata accessor for ClientData);
    sub_197955EBC(&qword_1ED87FDA0, type metadata accessor for ClientData);
    sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    OUTLINED_FUNCTION_71_4();
    sub_197955EBC(v3, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1979D69DC()
{
  result = qword_1EAF49A18;
  if (!qword_1EAF49A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A10, &qword_197A92378);
    sub_1979D6AE0();
    sub_1979D6B34();
    sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49A18);
  }

  return result;
}

unint64_t sub_1979D6AE0()
{
  result = qword_1EAF49A20;
  if (!qword_1EAF49A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49A20);
  }

  return result;
}

unint64_t sub_1979D6B34()
{
  result = qword_1EAF49A28;
  if (!qword_1EAF49A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49A28);
  }

  return result;
}

unint64_t sub_1979D6B88()
{
  result = qword_1ED87CB98;
  if (!qword_1ED87CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A30, &unk_197A92380);
    sub_1979D6C8C();
    sub_1979D6CE0();
    sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CB98);
  }

  return result;
}

unint64_t sub_1979D6C8C()
{
  result = qword_1ED87CCF0;
  if (!qword_1ED87CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CCF0);
  }

  return result;
}

unint64_t sub_1979D6CE0()
{
  result = qword_1ED87CCF8;
  if (!qword_1ED87CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CCF8);
  }

  return result;
}

uint64_t sub_1979D6D34()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;

  return sub_1979CB108(v2);
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_197947900(v0, v1);
}

void OUTLINED_FUNCTION_116_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_145_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_1979D6ED0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1979D6F54()
{
  result = qword_1ED87D098;
  if (!qword_1ED87D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D098);
  }

  return result;
}

unint64_t sub_1979D6FAC()
{
  result = qword_1EAF49A38;
  if (!qword_1EAF49A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49A38);
  }

  return result;
}

unint64_t sub_1979D70BC()
{
  result = qword_1EAF48650;
  if (!qword_1EAF48650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48650);
  }

  return result;
}

unint64_t sub_1979D7114()
{
  result = qword_1EAF48640;
  if (!qword_1EAF48640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48640);
  }

  return result;
}

BOOL sub_1979D71BC(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1979D71F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

uint64_t sub_1979D7220@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 4) = v4 == 0;
  return result;
}

uint64_t sub_1979D72EC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = RemoteDeviceSet.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1979D732C@<X0>(_DWORD *a1@<X8>)
{
  result = RemoteDeviceSet.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1979D7374(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_197A87C38();
}

uint64_t TaskCancellingIPCPeerHandler.__allocating_init(handler:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  TaskCancellingIPCPeerHandler.init(handler:)(a1);
  return v5;
}

char *TaskCancellingIPCPeerHandler.init(handler:)(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_7_2();
  v5 = *(v4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49190, &unk_197A925E0);
  v6 = sub_197A87898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49198, &qword_197A8D2D0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *&v1[v5] = v7;
  *(v7 + 16) = v6;
  OUTLINED_FUNCTION_7_2();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v8 + 104)], a1);
  return v1;
}

uint64_t sub_1979D74D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960E38;

  return sub_1979D84E4(a5);
}

uint64_t sub_1979D756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*a3 + 88);
  v6 = *(*a3 + 80);
  v4[11] = swift_getAssociatedTypeWitness();
  v4[12] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[13] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979D76C8, 0, 0);
}

uint64_t sub_1979D76C8()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_38_4();
  type metadata accessor for TaskCancellingXPCReceivedMessage();
  sub_197961900(v7, (v0 + 2));
  (*(v2 + 16))(v1, v6, v3);
  v0[16] = sub_1979623AC(v0 + 2, v1);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1979D7804;
  v10 = v0[9];
  v9 = v0[10];
  OUTLINED_FUNCTION_29_3();

  return sub_1979D7B14();
}

uint64_t sub_1979D7804()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D78E8()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1979D7948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960FB0;

  return sub_1979D84E4(a5);
}

uint64_t sub_1979D79E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_31_5(v5, v6, v7, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  OUTLINED_FUNCTION_16_4();
  sub_19795CB2C();
}

uint64_t sub_1979D7ABC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  sub_1979D7FAC();
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1979D7B14()
{
  OUTLINED_FUNCTION_49_0();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_14_7();
  v4 = *(v3 + 104);
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  v12 = (*(v6 + 40) + **(v6 + 40));
  v8 = *(*(v6 + 40) + 4);
  v9 = swift_task_alloc();
  v1[4] = v9;
  *v9 = v1;
  v9[1] = sub_1979D7C6C;
  v10 = OUTLINED_FUNCTION_29_3();

  return v12(v10, v7, v6);
}

uint64_t sub_1979D7C6C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979D7D64()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_19795B62C();
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1979D7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_7_2();
  v5[7] = v6;
  return OUTLINED_FUNCTION_32_0(sub_1979D7E14, v4);
}

uint64_t sub_1979D7E14()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_7_2();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_33_6();
  v8 = swift_allocObject();
  v0[8] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v1;
  v8[5] = v5;
  v11 = v2 + 80;
  v10 = *(v2 + 80);
  v9 = *(v11 + 8);
  v12 = *(v9 + 32);

  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_19797726C;
  v15 = v0[2];

  return (v17)(v15, &unk_197A92660, v8, v10, v9);
}

uint64_t sub_1979D7FAC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_31_5(v6, v7, v8, v6);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  type metadata accessor for TaskCancellingIPCPeerHandler();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = WitnessTable;
  v12[4] = v0;
  swift_retain_n();
  OUTLINED_FUNCTION_16_4();
  sub_19795CB2C();
}

uint64_t sub_1979D80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*a4 + 104);
  v6 = *(*a4 + 88);
  v7 = *(v6 + 48);
  v8 = *(*a4 + 80);
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_1979D8220;

  return v12(v8, v6);
}

uint64_t sub_1979D8220()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979D8318()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 112));
  os_unfair_lock_lock((v1 + 24));
  sub_1979D83C0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1979D83C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_197A878A8();
  for (i = 0; v5; result = __swift_destroy_boxed_opaque_existential_1Tm(v13))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_197961900(*(v1 + 56) + 40 * (v10 | (v9 << 6)), v13);
    v11 = v14;
    v12 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v12 + 8))(v11, v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1979D84E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_1979D8500, v1);
}

uint64_t sub_1979D8500()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  sub_197A87D48();
  v3 = OUTLINED_FUNCTION_18_5();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    OUTLINED_FUNCTION_10_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_6(v6, 3.852e-34);
    OUTLINED_FUNCTION_20_1(&dword_197941000, v7, v8, "Received task cancellation for message %llu.");
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  v11 = *(v10 + *(*v10 + 112));
  os_unfair_lock_lock((v11 + 24));
  sub_1979D8650((v11 + 16), v9);
  os_unfair_lock_unlock((v11 + 24));
  OUTLINED_FUNCTION_13();

  return v12();
}

void sub_1979D8650(uint64_t *a1, uint64_t a2)
{
  sub_197A8606C(*a1, &v27);
  if (v28)
  {
    sub_197945EF8(&v27, v29);
    v3 = v30;
    v4 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v4 + 8))(v3, v4);
    if (qword_1ED87E900 != -1)
    {
      OUTLINED_FUNCTION_0_13();
      swift_once();
    }

    v5 = sub_197A87608();
    __swift_project_value_buffer(v5, qword_1ED87DF90);
    v6 = sub_197A875E8();
    sub_197A87D48();
    v7 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_10_9();
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;
      OUTLINED_FUNCTION_16_5();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_19795B378(&v27, &qword_1EAF49A40, &qword_197A92768);
    if (qword_1ED87E900 != -1)
    {
      OUTLINED_FUNCTION_0_13();
      swift_once();
    }

    v16 = sub_197A87608();
    __swift_project_value_buffer(v16, qword_1ED87DF90);
    v17 = sub_197A875E8();
    sub_197A87D48();
    v18 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_10_9();
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a2;
      OUTLINED_FUNCTION_16_5();
      _os_log_impl(v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }
  }
}

uint64_t sub_1979D8840@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A50, &qword_197A979E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  sub_1979D9354(a1, v11 - v6);
  v8 = sub_197A87CE8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_19795B378(v7, &qword_1EAF49A50, &qword_197A979E0);
  }

  else
  {
    sub_197A87CD8();
    result = (*(*(v8 - 8) + 8))(v7, v8);
  }

  *a2 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t TaskCancellingIPCPeerHandler.deinit()
{
  OUTLINED_FUNCTION_14_7();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_36_0(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  OUTLINED_FUNCTION_7_2();
  v7 = *(v0 + *(v6 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskCancellingIPCPeerHandler.__deallocating_deinit()
{
  TaskCancellingIPCPeerHandler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1979D8A7C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_4();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_9(v4);

  return sub_1979D7948(v6, v7, v8, v2, v1);
}

uint64_t sub_1979D8B1C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  OUTLINED_FUNCTION_19_7(*(v3 + 64));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_23_5(v6);

  return sub_1979D756C(v8, v9, v10, v11);
}

uint64_t sub_1979D8C64()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_4();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_9(v4);

  return sub_1979D74D0(v6, v7, v8, v2, v1);
}

uint64_t sub_1979D8D04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_9(v3);

  return sub_1979D7A9C(v5, v6, v7, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.handleIncomingRequest(_:id:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  v5 = *(v4 + 144);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v8[1] = sub_197960FB0;

  return v11(v3, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.handleIncomingRequestWithReply(_:id:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  v7 = *(v6 + 152);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  *v10 = v11;
  v10[1] = sub_197960FB0;

  return v13(v5, v3, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.handleIncomingRequestWithReply(_:id:callback:)()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_7_2();
  v9 = *(v8 + 160);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_20(v11);
  *v12 = v13;
  v12[1] = sub_197960FB0;

  return v15(v7, v5, v3, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.cancel(id:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 176);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v4[1] = sub_197960FB0;
  v6 = OUTLINED_FUNCTION_29_3();

  return v8(v6);
}

uint64_t sub_1979D92C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_9(v3);

  return sub_1979D80BC(v5, v6, v7, v1);
}

uint64_t sub_1979D9354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A50, &qword_197A979E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ModelXPCSender.loadAssetBundle(_:dynamicMode:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  v5 = OUTLINED_FUNCTION_73();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D93F4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  sub_197A878A8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_139(v2);
  *v3 = v4;
  v3[1] = sub_1979D9490;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return sub_1979DAF60(v3, v8, v5, v7);
}

uint64_t sub_1979D9490()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979D95A4()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t ModelXPCSender.holdAssetBundle(_:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_43(v5);

  return sub_1979DB02C(v7, v3, v1);
}

uint64_t sub_1979D9660()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979D9758()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t ModelXPCSender.forceAssetVersionSwitch()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43(v1);

  return sub_1979DB1D0(v3);
}

uint64_t sub_1979D97FC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void *sub_1979D98F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[1] = a1;
  v3 = type metadata accessor for ModelManagerError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AE8, &qword_197A92B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return memcpy(a2, v10, 0xC8uLL);
  }

  sub_19796361C();
  sub_1979557E8();
  sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
  swift_willThrowTypedImpl();
  return sub_1979636E8(v6, type metadata accessor for ModelManagerError);
}

void sub_1979D9AD4()
{
  OUTLINED_FUNCTION_92();
  v4 = OUTLINED_FUNCTION_193(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_65_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v12, v13);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v14);
  }

  else
  {
    *v1 = *v2;
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void sub_1979D9BE8()
{
  OUTLINED_FUNCTION_92();
  v4 = OUTLINED_FUNCTION_193(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_65_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v12, v13);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v14);
  }

  else
  {
    *v1 = *v2;
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void sub_1979D9CFC()
{
  OUTLINED_FUNCTION_92();
  v2 = OUTLINED_FUNCTION_193(v1);
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_65_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v10, v11);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v12);
  }

  else
  {
    sub_19794B118();
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979D9E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for ModelManagerError();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_65_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_19796361C();
  }

  sub_19796361C();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v14, v15);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_1_10();
  return sub_1979636E8(v3, v16);
}

void sub_1979D9F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  a10 = v27;
  v29 = v28;
  v30 = type metadata accessor for ModelManagerError();
  v31 = OUTLINED_FUNCTION_6(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_65_4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v24);
  OUTLINED_FUNCTION_6(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&a9 - v38);
  sub_197944528();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v40, v41);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v20, v42);
  }

  else
  {
    *v29 = *v39;
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void *sub_1979DA0E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[1] = a1;
  v3 = type metadata accessor for ModelManagerError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B20, &qword_197A92BA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return memcpy(a2, v10, 0x51uLL);
  }

  sub_19796361C();
  sub_1979557E8();
  sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
  swift_willThrowTypedImpl();
  return sub_1979636E8(v6, type metadata accessor for ModelManagerError);
}

uint64_t sub_1979DA2C0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v12[1] = a1;
  v3 = type metadata accessor for ModelManagerError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B00, &qword_197A92B78);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v12 - v9);
  sub_197944528();
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_19796361C();
    sub_1979557E8();
    sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
    swift_willThrowTypedImpl();
    return sub_1979636E8(v6, type metadata accessor for ModelManagerError);
  }

  else
  {
    *a2 = *v10;
  }

  return result;
}

void *sub_1979DA498@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[1] = a1;
  v3 = type metadata accessor for ModelManagerError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AC0, &qword_197A92B48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return memcpy(a2, v10, 0x41uLL);
  }

  sub_19796361C();
  sub_1979557E8();
  sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
  swift_willThrowTypedImpl();
  return sub_1979636E8(v6, type metadata accessor for ModelManagerError);
}

uint64_t sub_1979DA678()
{
  if (qword_1ED880250 != -1)
  {
    OUTLINED_FUNCTION_192();
  }
}

uint64_t sub_1979DA6C4()
{
  v0 = type metadata accessor for ModelXPCSender();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = ModelXPCSender.init()();
  qword_1ED881820 = v3;
  return result;
}

uint64_t ModelXPCSender.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ModelXPCSender.init()();
  return v3;
}

void *sub_1979DA73C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000197AA1DE0;
  v1 = type metadata accessor for IPCCachedSession(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = IPCCachedSession.init(initSession:)(&unk_197A92CF0, v0);
  qword_1ED881808 = result;
  return result;
}

uint64_t ModelXPCSender.init()()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_logHandle;
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = sub_197A87608();
  v3 = __swift_project_value_buffer(v2, qword_1ED880520);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  if (qword_1ED880250 != -1)
  {
    OUTLINED_FUNCTION_192();
  }

  *(v0 + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session) = qword_1ED881808;

  return v0;
}

uint64_t ModelXPCSender.executeRequest(taskPriority:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_265(v1, v2, v3, v4);
  v6 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(v5);
  v0[6] = v6;
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
  v0[8] = v9;
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_78_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v12);
  v14 = *(v13 + 64);
  v0[10] = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for RequestMetadata(0);
  v0[11] = v15;
  OUTLINED_FUNCTION_28(v15);
  v17 = *(v16 + 64);
  v0[12] = OUTLINED_FUNCTION_78_0();
  v18 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1979DA998()
{
  OUTLINED_FUNCTION_80();
  v41 = v0;
  v1 = sub_197A87C68();
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 40);
    OUTLINED_FUNCTION_50_5();
    sub_1979557E8();
    v5 = sub_197A875E8();
    sub_197A87D78();
    OUTLINED_FUNCTION_148_0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 96);
    if (v7)
    {
      v9 = *(v0 + 80);
      v10 = *(v0 + 88);
      v11 = OUTLINED_FUNCTION_56();
      v40 = OUTLINED_FUNCTION_93_0();
      *v11 = 136315138;
      v12 = *(v10 + 24);
      v13 = sub_197A87298();
      OUTLINED_FUNCTION_6(v13);
      (*(v14 + 16))(v9, v8 + v12);
      v15 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v17 = v16;
      sub_197947900(v9, &qword_1EAF49128);
      OUTLINED_FUNCTION_66_6();
      v18 = sub_197948834(v15, v17, &v40);

      *(v11 + 4) = v18;
      OUTLINED_FUNCTION_31(&dword_197941000, v19, v20, "Task for execute request %s cancelled before sending");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      OUTLINED_FUNCTION_66_6();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v30, v31);
    OUTLINED_FUNCTION_133_0();
    v32 = OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_75_0(v32, v33);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v34 = *(v0 + 96);
    v36 = *(v0 + 72);
    v35 = *(v0 + 80);
    v37 = *(v0 + 56);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_254();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 72);
  v22 = *(v0 + 120);
  v23 = *(*(v0 + 64) + 20);
  OUTLINED_FUNCTION_50_5();
  sub_1979557E8();
  *v21 = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 104) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_258(v24);
  OUTLINED_FUNCTION_254();

  return sub_1979DB3E4(v26, v27);
}

uint64_t sub_1979DAC14()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_186();
  sub_1979636E8(v2, v3);
  OUTLINED_FUNCTION_271();

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1979DAC94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DACB8, 0, 0);
}

uint64_t sub_1979DACB8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C30);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DAD48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DAD6C, 0, 0);
}

uint64_t sub_1979DAD6C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C18);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DADFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DAE1C, 0, 0);
}

uint64_t sub_1979DAE1C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C00);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DAEAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DAED0, 0, 0);
}

uint64_t sub_1979DAED0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92BE8);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DAF60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1979DAF88, 0, 0);
}

uint64_t sub_1979DAF88()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  OUTLINED_FUNCTION_19(&unk_197A92D38);
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v2;
  *v2 = v3;
  v2[1] = sub_197A05F90;
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = OUTLINED_FUNCTION_185();

  return v9(v7);
}

uint64_t sub_1979DB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1979DB050, 0, 0);
}

uint64_t sub_1979DB050()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[5] + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  OUTLINED_FUNCTION_19(&unk_197A92D20);
  OUTLINED_FUNCTION_14();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_1979DB0F0;
  v4 = v0[3];
  v5 = v0[4];
  v6 = OUTLINED_FUNCTION_185();

  return v8(v6);
}

uint64_t sub_1979DB0F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_1979DB1D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB1F0, 0, 0);
}

uint64_t sub_1979DB1F0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92D08);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DB280(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB2A4, 0, 0);
}

uint64_t sub_1979DB2A4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92AF0);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DB334(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB354, 0, 0);
}

uint64_t sub_1979DB354()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92B58);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DB3E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB408, 0, 0);
}

uint64_t sub_1979DB408()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92CD8);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DB498(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB4BC, 0, 0);
}

uint64_t sub_1979DB4BC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92CC0);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DB54C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB570, 0, 0);
}

uint64_t sub_1979DB570()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92CA8);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DB600(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB620, 0, 0);
}

uint64_t sub_1979DB620()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92BD0);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DB6B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB6D0, 0, 0);
}

uint64_t sub_1979DB6D0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92BB8);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DB760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1979DB784, 0, 0);
}

uint64_t sub_1979DB784()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[5] + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  OUTLINED_FUNCTION_19(&unk_197A92BA0);
  OUTLINED_FUNCTION_14();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_197A05F90;
  v4 = v0[3];
  v5 = v0[4];
  v6 = OUTLINED_FUNCTION_185();

  return v8(v6);
}

uint64_t sub_1979DB824(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB844, 0, 0);
}

uint64_t sub_1979DB844()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92B88);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DB8D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB8F4, 0, 0);
}

uint64_t sub_1979DB8F4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92B70);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_87_3(v3);

  return v6(v5);
}

uint64_t sub_1979DB984(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB9A8, 0, 0);
}

uint64_t sub_1979DB9A8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92B40);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DBA38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DBA5C, 0, 0);
}

uint64_t sub_1979DBA5C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92B28);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979DBAEC(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1979DBB10, 0, 0);
}

uint64_t sub_1979DBB10()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92B10);
  v3 = OUTLINED_FUNCTION_104_2(v2);
  *v3 = v4;
  v3[1] = sub_197976F2C;
  v5 = *(v0 + 40);
  v6 = OUTLINED_FUNCTION_185();

  return v8(v6);
}

uint64_t ModelXPCSender.executeInputStreamRequest(taskPriority:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_265(v1, v2, v3, v4);
  v6 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(v5);
  v0[6] = v6;
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(0);
  v0[8] = v9;
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_78_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v12);
  v14 = *(v13 + 64);
  v0[10] = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for RequestMetadata(0);
  v0[11] = v15;
  OUTLINED_FUNCTION_28(v15);
  v17 = *(v16 + 64);
  v0[12] = OUTLINED_FUNCTION_78_0();
  v18 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1979DBC98()
{
  OUTLINED_FUNCTION_80();
  v41 = v0;
  v1 = sub_197A87C68();
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 40);
    OUTLINED_FUNCTION_50_5();
    sub_1979557E8();
    v5 = sub_197A875E8();
    sub_197A87D78();
    OUTLINED_FUNCTION_148_0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 96);
    if (v7)
    {
      v9 = *(v0 + 80);
      v10 = *(v0 + 88);
      v11 = OUTLINED_FUNCTION_56();
      v40 = OUTLINED_FUNCTION_93_0();
      *v11 = 136315138;
      v12 = *(v10 + 24);
      v13 = sub_197A87298();
      OUTLINED_FUNCTION_6(v13);
      (*(v14 + 16))(v9, v8 + v12);
      v15 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v17 = v16;
      sub_197947900(v9, &qword_1EAF49128);
      OUTLINED_FUNCTION_66_6();
      v18 = sub_197948834(v15, v17, &v40);

      *(v11 + 4) = v18;
      OUTLINED_FUNCTION_31(&dword_197941000, v19, v20, "Task for executeInputStreamRequest %s cancelled before sending");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      OUTLINED_FUNCTION_66_6();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v30, v31);
    OUTLINED_FUNCTION_133_0();
    v32 = OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_75_0(v32, v33);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v34 = *(v0 + 96);
    v36 = *(v0 + 72);
    v35 = *(v0 + 80);
    v37 = *(v0 + 56);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_254();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 72);
  v22 = *(v0 + 120);
  v23 = *(*(v0 + 64) + 20);
  OUTLINED_FUNCTION_50_5();
  sub_1979557E8();
  *v21 = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 104) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_258(v24);
  OUTLINED_FUNCTION_254();

  return sub_1979DB498(v26, v27);
}

uint64_t sub_1979DBF14()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979DC00C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_184();
  sub_1979636E8(v0, v1);
  OUTLINED_FUNCTION_100_0();
  sub_19794B118();
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_1979DC0B8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_184();
  sub_1979636E8(v2, v3);
  OUTLINED_FUNCTION_271();

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t ModelXPCSender.cancelRequest(id:sessionID:)()
{
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_250(v1, v2);
  v4 = type metadata accessor for ModelXPCRequest.CancelRequest(v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_78_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v7);
  v9 = *(v8 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979DC1F0()
{
  OUTLINED_FUNCTION_80();
  v26 = v0;
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];
  sub_197944528();
  v4 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_148_0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[7];
    v9 = OUTLINED_FUNCTION_56();
    v25 = OUTLINED_FUNCTION_93_0();
    *v9 = 136315138;
    sub_197944528();
    v10 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v12 = v11;
    sub_197947900(v8, &qword_1EAF49128);
    sub_197947900(v7, &qword_1EAF49128);
    v13 = sub_197948834(v10, v12, &v25);

    *(v9 + 4) = v13;
    OUTLINED_FUNCTION_31(&dword_197941000, v14, v15, "Sending CancelRequest for request %s");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    sub_197947900(v7, &qword_1EAF49128);
  }

  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[2];
  v19 = v0[3];
  sub_197944528();
  v20 = *(v17 + 20);
  sub_197944528();
  v21 = swift_task_alloc();
  v0[9] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_268(v21);
  OUTLINED_FUNCTION_253();

  return sub_1979DB54C(v22, v23);
}

uint64_t sub_1979DC3EC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 80) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979DC50C()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_1979DC578()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_13();
  v5 = v0[10];

  return v4();
}

uint64_t sub_1979DC5E8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[16];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t ModelXPCSender.acquireAssertion(assertion:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.AcquireRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979DC6E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_1979557E8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_1979DAC94(v3, v4);
}

uint64_t sub_1979DC77C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t ModelXPCSender.releaseAssertion(id:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.ReleaseRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979DC910()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_197944528();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_1979DAD48(v3, v4);
}

uint64_t sub_1979DC9A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t ModelXPCSender.fetchAllAssertions()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DADFC(v3);
}

uint64_t sub_1979DCB4C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t ModelXPCSender.restoreAssertions(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_1979DAEAC(v5, v1);
}

uint64_t ModelXPCSender.fetchAllAssetInfo()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DB600(v3);
}

uint64_t sub_1979DCD50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979DCE64()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t ModelXPCSender.fetchDynamicAssetInfo()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DB6B0(v3);
}

uint64_t ModelXPCSender.fetchEffectivePolicy()()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 104) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 112) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_128_1(v2);
  OUTLINED_FUNCTION_4_0();

  return sub_1979DB760(v4, v5, v6);
}

uint64_t sub_1979DCF98()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979DD090()
{
  if (*(v0 + 16) == 2)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_270(v2);
    OUTLINED_FUNCTION_15();

    return v3();
  }

  return result;
}

uint64_t sub_1979DD0FC()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 120);
  return v2();
}

uint64_t ModelXPCSender.fetchPolicy(_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v0[14] = v3;
  v0[15] = v1;
  v0[13] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[16] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_128_1(v6);

  return sub_1979DB760(v8, v4, v2);
}

uint64_t sub_1979DD1C4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979DD2BC()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  if (v0[2] == 2)
  {
    v2 = v0[14];
    v1 = v0[15];
    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v3, v4);
    OUTLINED_FUNCTION_88();
    *v5 = v2;
    v5[1] = v1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_197A878A8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_270(v0[2]);
    OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_261();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1979DD3A0()
{
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_13();
  return v2();
}

uint64_t ModelXPCSender.fetchDisabledUseCases()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DB824(v3);
}

uint64_t ModelXPCSender.fetchAvailability()()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1979DD4D8;

  return sub_1979DB8D4(v0 + 40);
}

uint64_t sub_1979DD4D8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979DD5D0()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_15();
  return v1();
}

uint64_t ModelXPCSender.dumpState()()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 216) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 224) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_128_1(v2);

  return sub_1979DB334(v4);
}

uint64_t sub_1979DD684()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1979DD77C()
{
  OUTLINED_FUNCTION_9();
  memcpy(*(v0 + 216), (v0 + 16), 0xC8uLL);
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1979DD7DC()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 232);
  return v2();
}

uint64_t ModelXPCSender.fetchModelInstance(session:)()
{
  OUTLINED_FUNCTION_9();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  ModelInstance = type metadata accessor for ModelXPCRequest.FetchModelInstance(0);
  OUTLINED_FUNCTION_28(ModelInstance);
  v6 = *(v5 + 64);
  v1[14] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DD87C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[14];
  v2 = v0[12];
  sub_197944528();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[15] = v3;
  *v3 = v4;
  v3[1] = sub_1979DD928;
  v6 = v0[13];
  v5 = v0[14];

  return sub_1979DB984((v0 + 2), v5);
}

uint64_t sub_1979DD928()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 120);
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_46_0();
  sub_1979636E8(*(v6 + 112), type metadata accessor for ModelXPCRequest.FetchModelInstance);
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DDA58()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 112);
  memcpy(*(v0 + 88), (v0 + 16), 0x41uLL);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_1979DDAC4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t ModelXPCSender.setAssetsHaveUpdated(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_1979DBA38(v5, v1);
}

uint64_t ModelXPCSender.ignoreAssetUpdates(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_1979DBAEC(v5, v1);
}

uint64_t ModelXPCSender.startMonitoringInferences(endpoint:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  started = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v2);
  OUTLINED_FUNCTION_28(started);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979DDCA4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_197A876D8();
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 16))(v1, v2);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_139(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_177_0(v6);

  return sub_1979DB280(v8, v9);
}

uint64_t sub_1979DDD60()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t ModelXPCSender.deinit()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_logHandle;
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);

  return v0;
}

uint64_t ModelXPCSender.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_logHandle;
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1979DDF8C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.executeRequest(taskPriority:metadata:)();
}

uint64_t sub_1979DE050()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.executeInputStreamRequest(taskPriority:metadata:)();
}