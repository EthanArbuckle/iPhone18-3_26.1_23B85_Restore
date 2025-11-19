uint64_t sub_22C17C2A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0 && *(a1 + 40))
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

  return sub_22BE39E30(v2);
}

uint64_t sub_22C17C2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return sub_22C18E8A0(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return sub_22C18E8A0(result, a2);
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

void sub_22C17C404()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Expression(319);
    if (v1 <= 0x3F)
    {
      sub_22C17DA24(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C17DA24(319, &qword_28106DAD0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C17DA24(319, qword_28107B950, &type metadata for ProgramStatement.ExecutionSupportType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C17C54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C272874();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22C17C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C272874();

  return sub_22BE19DC4(a1, a2, a3, v6);
}

uint64_t sub_22C17C604()
{
  v1 = sub_22BE3CD70();
  v3 = v2(v1);
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(v0 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t sub_22C17C6AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22C17C6EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C17C768()
{
  v0 = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    sub_22C17DA24(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_22C17CAE4(319, &qword_28106DE50, type metadata accessor for Action.ParameterValue);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_22C17C90C()
{
  sub_22C17AD84(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C26E684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C17C9E8()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22C17CAE4(319, &qword_28106DE40, MEMORY[0x277D72A78]);
    if (v1 <= 0x3F)
    {
      sub_22C17DA24(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C17CB48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C17CAE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C272EC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C17CB48()
{
  if (!qword_28106DE38)
  {
    sub_22BE7431C(&qword_27D912510, &unk_22C2B7800);
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DE38);
    }
  }
}

uint64_t sub_22C17CBBC()
{
  result = sub_22C272874();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C17CC58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_22C17CCAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonQuery.Handle(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 4;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

void sub_22C17CDF8()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, qword_281079FC8, type metadata accessor for ActionParameterContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for QueryPayload(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C17CF3C()
{
  result = type metadata accessor for QueryPayload.StringQuery(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for QueryPayload.IdentifierQuery(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C17D004()
{
  result = sub_22C272984();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C17D0A0()
{
  v4 = sub_22BE367BC();
  v6 = v5(v4);
  result = sub_22BE187D0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = sub_22BE37694();

    return sub_22BE19DC4(v9, v10, v11, v12);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

void sub_22C17D168()
{
  sub_22C18F2A8();
  v0 = sub_22BE3CD70();
  v1(v0);
  if (v2 <= 0x3F)
  {
    sub_22C18F784();
    sub_22C18E8F4();
    sub_22C17DA24(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      sub_22C18E3E8();
      sub_22BEE94D4();
    }
  }
}

void sub_22C17D1E4()
{
  type metadata accessor for QueryPredicate(319);
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, &qword_27D9142B8, type metadata accessor for QueryPredicate, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C17D2B0()
{
  sub_22C17D37C();
  if (v0 <= 0x3F)
  {
    sub_22C272874();
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28107F300, MEMORY[0x277D1C308], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C17D37C()
{
  if (!qword_28106DEA8)
  {
    sub_22C26E684();
    sub_22C272874();
    sub_22BE20458(&qword_28107F2F0);
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DEA8);
    }
  }
}

uint64_t sub_22C17D43C()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  v3 = sub_22C18E6D0();
  v4(v3);
  sub_22BE1C1E8();
  v6 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v6, v7, v8);
}

void sub_22C17D4B8()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    v0(0);
    sub_22BE38994();
    v3 = sub_22BE3B0A4(v2);

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

uint64_t sub_22C17D540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    sub_22BE22E88();
    swift_cvw_initStructMetadataWithLayoutString();
    return sub_22BEE94D4();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryOperator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C17D6B8()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C17D740()
{
  sub_22C17AD84(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StatementResultPayload(319);
    if (v1 <= 0x3F)
    {
      sub_22C26E684();
      if (v2 <= 0x3F)
      {
        sub_22C17DA24(319, &qword_28107AC30, &type metadata for GlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C17D8C0()
{
  sub_22C18F2A8();
  v0 = sub_22BE3CD70();
  v1(v0);
  if (v2 <= 0x3F)
  {
    sub_22C18F784();
    sub_22C18E8F4();
    sub_22C17AD84(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      sub_22C18E3E8();
      sub_22BEE94D4();
    }
  }
}

void sub_22C17D964()
{
  sub_22C17DA24(319, &qword_28106DD88, &type metadata for QueryResults, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C26E684();
    if (v1 <= 0x3F)
    {
      sub_22C26E1D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C17DA24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22C17DAAC()
{
  sub_22C272874();
  if (v0 <= 0x3F)
  {
    sub_22C26E684();
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28107F300, MEMORY[0x277D1C308], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C17DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE17BC4();
  v8 = v7(v6);
  sub_22BE187D0(v8);
  if (*(v9 + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20)));
  }

  v10 = sub_22BE44750();

  return sub_22BE1AEA8(v10, a2, v11);
}

void sub_22C17DC70()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22C17DD54();
    if (v1 <= 0x3F)
    {
      sub_22C17DDC0();
      if (v2 <= 0x3F)
      {
        sub_22C17CAE4(319, &qword_27D90AD30, type metadata accessor for AST.FlatValue);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C17DD54()
{
  if (!qword_28106DEA0)
  {
    type metadata accessor for Candidate(255);
    sub_22BE5CF7C();
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DEA0);
    }
  }
}

void sub_22C17DDC0()
{
  if (!qword_28106DB80)
  {
    sub_22BE7431C(&qword_27D907580, &qword_22C2B85E0);
    sub_22BF3A92C();
    v0 = sub_22C273694();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DB80);
    }
  }
}

uint64_t sub_22C17DE30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22C17DE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C17DED4(uint64_t a1, unsigned int a2)
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

uint64_t sub_22C17DF28(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C17E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_22BE25FE8();
  v9 = v8(v7);
  sub_22BE187D0(v9);
  if (*(v10 + 84) == v5)
  {
    v11 = sub_22BE291BC();
  }

  else
  {
    a5(0);
    v11 = sub_22BE33728();
  }

  return sub_22BE1AEA8(v11, v5, v12);
}

uint64_t sub_22C17E0A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_22BE1B2D4();
  v10 = v9(v8);
  sub_22BE187D0(v10);
  if (*(v11 + 84) == a3)
  {
    sub_22BE238E8();
  }

  else
  {
    a6(0);
    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v12, v13, v14, v15);
}

uint64_t sub_22C17E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_22BE3CD70();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    v10 = sub_22C18F784();
    result = a5(v10);
    if (v11 <= 0x3F)
    {
      sub_22C18E3E8();
      return sub_22BEE94D4();
    }
  }

  return result;
}

uint64_t sub_22C17E21C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0 && *(a1 + 8))
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

  return sub_22BE39E30(v2);
}

uint64_t sub_22C17E268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return sub_22BE39E30(v2);
}

uint64_t sub_22C17E2A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return sub_22C18E8A0(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return sub_22C18E8A0(result, a2);
    }
  }

  return result;
}

void sub_22C17E320()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22C26F894();
    if (v1 <= 0x3F)
    {
      sub_22C17DA24(319, &qword_28106DBF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C17E3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return sub_22BE39E30(v2);
}

uint64_t sub_22C17E41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return sub_22C18E8A0(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_22C18E8A0(result, a2);
    }
  }

  return result;
}

uint64_t sub_22C17E4CC()
{
  result = sub_22C272874();
  if (v1 <= 0x3F)
  {
    result = sub_22C2728A4();
    if (v2 <= 0x3F)
    {
      result = sub_22C26E684();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C17E5A8()
{
  v0 = sub_22BE3CD70();
  result = v1(v0);
  if (v3 <= 0x3F)
  {
    result = sub_22C26E684();
    if (v4 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      return sub_22BEE94D4();
    }
  }

  return result;
}

void sub_22C17E648()
{
  sub_22C17AD84(319, &qword_28106DDB0, MEMORY[0x277D1EEB0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, &qword_28107F188, MEMORY[0x277D1F1D8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28106DC90, type metadata accessor for DynamicEnumerationEntityStatement, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22C17AD84(319, &qword_28106DD38, type metadata accessor for RetrievedContextStatement, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C17E7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE17BC4();
  v8 = v7(v6);
  sub_22BE187D0(v8);
  if (*(v9 + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20) + 8));
  }

  v10 = sub_22BE44750();

  return sub_22BE1AEA8(v10, a2, v11);
}

void sub_22C17E880()
{
  v2 = sub_22BE367BC();
  v4 = v3(v2);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v1)
  {
    v6 = sub_22BE37694();

    sub_22BE19DC4(v6, v7, v8, v9);
  }

  else
  {
    sub_22C18F7C4(*(v0 + 20));
  }
}

uint64_t sub_22C17E908()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C17E998(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C17E9D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_22C17EA6C()
{
  sub_22C17AD84(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C26E684();
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C17EBA8()
{
  sub_22C26E1D4();
  if (v0 <= 0x3F)
  {
    sub_22C26E684();
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C17ECF4()
{
  type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(319);
  if (v0 <= 0x3F)
  {
    sub_22C17CAE4(319, &qword_28106DE80, MEMORY[0x277D1C338]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C17EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_22BE3CD70();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return sub_22BEE94D4();
    }
  }

  return result;
}

void sub_22C17EEE4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    v0(0);
    sub_22BE3CEB0();
    sub_22BE38A34();

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22C17EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    sub_22C18E3E8();
    return sub_22BEE94D4();
  }

  return result;
}

uint64_t sub_22C17EFC0()
{
  result = type metadata accessor for AgentHandoffRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AgentPassRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C17F03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Request(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE5BCF0);
}

uint64_t sub_22C17F094()
{
  v3 = sub_22BE25FE8();
  v4 = type metadata accessor for RequestContent(v3);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = sub_22BE291BC();
  }

  else
  {
    v8 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      v11 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
      sub_22BE187D0(v11);
      if (*(v12 + 84) == v0)
      {
        sub_22BE22B34();
      }

      else
      {
        if (v0 == 2147483646)
        {
          sub_22C18E1D4(v2[8]);
          return sub_22C18F204(v14);
        }

        v15 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
        v16 = sub_22BE187D0(v15);
        if (*(v17 + 84) == v0)
        {
          v7 = v16;
          v10 = v2[9];
        }

        else
        {
          v7 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
          v10 = v2[11];
        }
      }
    }

    v6 = v1 + v10;
  }

  return sub_22BE1AEA8(v6, v0, v7);
}

uint64_t sub_22C17F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Request(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE5BCD4);
}

void sub_22C17F294()
{
  v2 = sub_22BE367BC();
  v3 = type metadata accessor for RequestContent(v2);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    v5 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
    sub_22BE187D0(v5);
    if (*(v6 + 84) == v1)
    {
      sub_22BE38994();
    }

    else
    {
      v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
      sub_22BE187D0(v7);
      if (*(v8 + 84) == v1)
      {
        sub_22BE272B4();
      }

      else
      {
        if (v1 == 2147483646)
        {
          sub_22BE3858C(v0[8]);
          return;
        }

        v13 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
        sub_22BE187D0(v13);
        if (*(v14 + 84) == v1)
        {
          v15 = v0[9];
        }

        else
        {
          sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
          v16 = v0[11];
        }
      }
    }
  }

  sub_22BE38A34();

  sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22C17F4C8()
{
  v0 = sub_22BE3CD70();
  result = v1(v0);
  if (v3 <= 0x3F)
  {
    sub_22BE22E88();
    swift_cvw_initStructMetadataWithLayoutString();
    return sub_22BEE94D4();
  }

  return result;
}

uint64_t sub_22C17F538(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return sub_22BE39E30(v2);
}

uint64_t sub_22C17F574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return sub_22C18E8A0(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_22C18E8A0(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionResolverRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22C17FE24(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          result = sub_22BE22BD0(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C180020(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          result = sub_22BE22BD0(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s30IntelligenceFlowPlannerSupport7SessionOwst_0_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C1805F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 5);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BE39E30(v8);
}

_BYTE *sub_22C18067C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          result = sub_22BE22BD0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C18074C()
{
  result = qword_27D9142E0;
  if (!qword_27D9142E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9142E0);
  }

  return result;
}

unint64_t sub_22C1807A4()
{
  result = qword_27D9142E8;
  if (!qword_27D9142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9142E8);
  }

  return result;
}

unint64_t sub_22C1807FC()
{
  result = qword_27D9142F0;
  if (!qword_27D9142F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9142F0);
  }

  return result;
}

unint64_t sub_22C180854()
{
  result = qword_27D9142F8;
  if (!qword_27D9142F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9142F8);
  }

  return result;
}

unint64_t sub_22C1808AC()
{
  result = qword_27D914300;
  if (!qword_27D914300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914300);
  }

  return result;
}

unint64_t sub_22C180904()
{
  result = qword_27D914308;
  if (!qword_27D914308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914308);
  }

  return result;
}

unint64_t sub_22C18095C()
{
  result = qword_27D914310;
  if (!qword_27D914310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914310);
  }

  return result;
}

unint64_t sub_22C1809B4()
{
  result = qword_27D914318;
  if (!qword_27D914318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914318);
  }

  return result;
}

unint64_t sub_22C180A0C()
{
  result = qword_27D914320;
  if (!qword_27D914320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914320);
  }

  return result;
}

unint64_t sub_22C180A64()
{
  result = qword_27D914328;
  if (!qword_27D914328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914328);
  }

  return result;
}

unint64_t sub_22C180ABC()
{
  result = qword_27D914330;
  if (!qword_27D914330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914330);
  }

  return result;
}

unint64_t sub_22C180B14()
{
  result = qword_27D914338;
  if (!qword_27D914338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914338);
  }

  return result;
}

unint64_t sub_22C180B6C()
{
  result = qword_27D914340;
  if (!qword_27D914340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914340);
  }

  return result;
}

unint64_t sub_22C180BC4()
{
  result = qword_27D914348;
  if (!qword_27D914348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914348);
  }

  return result;
}

unint64_t sub_22C180C1C()
{
  result = qword_27D914350;
  if (!qword_27D914350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914350);
  }

  return result;
}

unint64_t sub_22C180C74()
{
  result = qword_27D914358;
  if (!qword_27D914358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914358);
  }

  return result;
}

unint64_t sub_22C180CCC()
{
  result = qword_27D914360;
  if (!qword_27D914360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914360);
  }

  return result;
}

unint64_t sub_22C180D24()
{
  result = qword_27D914368;
  if (!qword_27D914368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914368);
  }

  return result;
}

unint64_t sub_22C180D7C()
{
  result = qword_27D914370;
  if (!qword_27D914370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914370);
  }

  return result;
}

unint64_t sub_22C180DD4()
{
  result = qword_27D914378;
  if (!qword_27D914378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914378);
  }

  return result;
}

unint64_t sub_22C180E2C()
{
  result = qword_27D914380;
  if (!qword_27D914380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914380);
  }

  return result;
}

unint64_t sub_22C180E84()
{
  result = qword_27D914388;
  if (!qword_27D914388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914388);
  }

  return result;
}

unint64_t sub_22C180EDC()
{
  result = qword_27D914390;
  if (!qword_27D914390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914390);
  }

  return result;
}

unint64_t sub_22C180F34()
{
  result = qword_27D914398;
  if (!qword_27D914398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914398);
  }

  return result;
}

unint64_t sub_22C180F8C()
{
  result = qword_27D9143A0;
  if (!qword_27D9143A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143A0);
  }

  return result;
}

unint64_t sub_22C180FE4()
{
  result = qword_27D9143A8;
  if (!qword_27D9143A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143A8);
  }

  return result;
}

unint64_t sub_22C18103C()
{
  result = qword_27D9143B0;
  if (!qword_27D9143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143B0);
  }

  return result;
}

unint64_t sub_22C181094()
{
  result = qword_27D9143B8;
  if (!qword_27D9143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143B8);
  }

  return result;
}

unint64_t sub_22C1810EC()
{
  result = qword_27D9143C0;
  if (!qword_27D9143C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143C0);
  }

  return result;
}

unint64_t sub_22C181144()
{
  result = qword_27D9143C8;
  if (!qword_27D9143C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143C8);
  }

  return result;
}

unint64_t sub_22C18119C()
{
  result = qword_27D9143D0;
  if (!qword_27D9143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143D0);
  }

  return result;
}

unint64_t sub_22C1811F4()
{
  result = qword_27D9143D8;
  if (!qword_27D9143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143D8);
  }

  return result;
}

unint64_t sub_22C18124C()
{
  result = qword_27D9143E0;
  if (!qword_27D9143E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143E0);
  }

  return result;
}

unint64_t sub_22C1812A4()
{
  result = qword_27D9143E8;
  if (!qword_27D9143E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143E8);
  }

  return result;
}

unint64_t sub_22C1812FC()
{
  result = qword_27D9143F0;
  if (!qword_27D9143F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143F0);
  }

  return result;
}

unint64_t sub_22C181354()
{
  result = qword_27D9143F8;
  if (!qword_27D9143F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9143F8);
  }

  return result;
}

unint64_t sub_22C1813AC()
{
  result = qword_27D914400;
  if (!qword_27D914400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914400);
  }

  return result;
}

unint64_t sub_22C181404()
{
  result = qword_27D914408;
  if (!qword_27D914408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914408);
  }

  return result;
}

unint64_t sub_22C18145C()
{
  result = qword_27D914410;
  if (!qword_27D914410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914410);
  }

  return result;
}

unint64_t sub_22C1814B4()
{
  result = qword_27D914418;
  if (!qword_27D914418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914418);
  }

  return result;
}

unint64_t sub_22C18150C()
{
  result = qword_27D914420;
  if (!qword_27D914420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914420);
  }

  return result;
}

unint64_t sub_22C181564()
{
  result = qword_27D914428;
  if (!qword_27D914428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914428);
  }

  return result;
}

unint64_t sub_22C1815BC()
{
  result = qword_27D914430;
  if (!qword_27D914430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914430);
  }

  return result;
}

unint64_t sub_22C181614()
{
  result = qword_27D914438;
  if (!qword_27D914438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914438);
  }

  return result;
}

unint64_t sub_22C18166C()
{
  result = qword_27D914440;
  if (!qword_27D914440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914440);
  }

  return result;
}

unint64_t sub_22C1816C4()
{
  result = qword_27D914448;
  if (!qword_27D914448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914448);
  }

  return result;
}

unint64_t sub_22C18171C()
{
  result = qword_27D914450;
  if (!qword_27D914450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914450);
  }

  return result;
}

unint64_t sub_22C181774()
{
  result = qword_27D914458;
  if (!qword_27D914458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914458);
  }

  return result;
}

unint64_t sub_22C1817CC()
{
  result = qword_27D914460;
  if (!qword_27D914460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914460);
  }

  return result;
}

unint64_t sub_22C181824()
{
  result = qword_27D914468;
  if (!qword_27D914468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914468);
  }

  return result;
}

unint64_t sub_22C18187C()
{
  result = qword_27D914470;
  if (!qword_27D914470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914470);
  }

  return result;
}

unint64_t sub_22C1818D4()
{
  result = qword_27D914478;
  if (!qword_27D914478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914478);
  }

  return result;
}

unint64_t sub_22C18192C()
{
  result = qword_27D914480;
  if (!qword_27D914480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914480);
  }

  return result;
}

unint64_t sub_22C181984()
{
  result = qword_27D914488;
  if (!qword_27D914488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914488);
  }

  return result;
}

unint64_t sub_22C1819DC()
{
  result = qword_27D914490;
  if (!qword_27D914490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914490);
  }

  return result;
}

unint64_t sub_22C181A34()
{
  result = qword_27D914498;
  if (!qword_27D914498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914498);
  }

  return result;
}

unint64_t sub_22C181A8C()
{
  result = qword_27D9144A0;
  if (!qword_27D9144A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144A0);
  }

  return result;
}

unint64_t sub_22C181AE4()
{
  result = qword_27D9144A8;
  if (!qword_27D9144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144A8);
  }

  return result;
}

unint64_t sub_22C181B3C()
{
  result = qword_27D9144B0;
  if (!qword_27D9144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144B0);
  }

  return result;
}

unint64_t sub_22C181B94()
{
  result = qword_27D9144B8;
  if (!qword_27D9144B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144B8);
  }

  return result;
}

unint64_t sub_22C181BEC()
{
  result = qword_27D9144C0;
  if (!qword_27D9144C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144C0);
  }

  return result;
}

unint64_t sub_22C181C44()
{
  result = qword_27D9144C8;
  if (!qword_27D9144C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144C8);
  }

  return result;
}

unint64_t sub_22C181C9C()
{
  result = qword_27D9144D0;
  if (!qword_27D9144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144D0);
  }

  return result;
}

unint64_t sub_22C181CF4()
{
  result = qword_27D9144D8;
  if (!qword_27D9144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144D8);
  }

  return result;
}

unint64_t sub_22C181D4C()
{
  result = qword_27D9144E0;
  if (!qword_27D9144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144E0);
  }

  return result;
}

unint64_t sub_22C181DA4()
{
  result = qword_27D9144E8;
  if (!qword_27D9144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144E8);
  }

  return result;
}

unint64_t sub_22C181DFC()
{
  result = qword_27D9144F0;
  if (!qword_27D9144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144F0);
  }

  return result;
}

unint64_t sub_22C181E54()
{
  result = qword_27D9144F8;
  if (!qword_27D9144F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9144F8);
  }

  return result;
}

unint64_t sub_22C181EAC()
{
  result = qword_27D914500;
  if (!qword_27D914500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914500);
  }

  return result;
}

unint64_t sub_22C181F04()
{
  result = qword_27D914508;
  if (!qword_27D914508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914508);
  }

  return result;
}

unint64_t sub_22C181F5C()
{
  result = qword_27D914510;
  if (!qword_27D914510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914510);
  }

  return result;
}

unint64_t sub_22C181FB4()
{
  result = qword_27D914518;
  if (!qword_27D914518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914518);
  }

  return result;
}

unint64_t sub_22C18200C()
{
  result = qword_27D914520;
  if (!qword_27D914520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914520);
  }

  return result;
}

unint64_t sub_22C182064()
{
  result = qword_27D914528;
  if (!qword_27D914528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914528);
  }

  return result;
}

unint64_t sub_22C1820BC()
{
  result = qword_27D914530;
  if (!qword_27D914530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914530);
  }

  return result;
}

unint64_t sub_22C182114()
{
  result = qword_27D914538;
  if (!qword_27D914538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914538);
  }

  return result;
}

unint64_t sub_22C18216C()
{
  result = qword_27D914540;
  if (!qword_27D914540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914540);
  }

  return result;
}

unint64_t sub_22C1821C4()
{
  result = qword_27D914548;
  if (!qword_27D914548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914548);
  }

  return result;
}

unint64_t sub_22C18221C()
{
  result = qword_27D914550;
  if (!qword_27D914550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914550);
  }

  return result;
}

unint64_t sub_22C182274()
{
  result = qword_27D914558;
  if (!qword_27D914558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914558);
  }

  return result;
}

unint64_t sub_22C1822CC()
{
  result = qword_27D914560;
  if (!qword_27D914560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914560);
  }

  return result;
}

unint64_t sub_22C182324()
{
  result = qword_27D914568;
  if (!qword_27D914568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914568);
  }

  return result;
}

unint64_t sub_22C18237C()
{
  result = qword_27D914570;
  if (!qword_27D914570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914570);
  }

  return result;
}

unint64_t sub_22C1823D4()
{
  result = qword_27D914578;
  if (!qword_27D914578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914578);
  }

  return result;
}

unint64_t sub_22C18242C()
{
  result = qword_27D914580;
  if (!qword_27D914580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914580);
  }

  return result;
}

unint64_t sub_22C182484()
{
  result = qword_27D914588;
  if (!qword_27D914588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914588);
  }

  return result;
}

unint64_t sub_22C1824DC()
{
  result = qword_27D914590;
  if (!qword_27D914590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914590);
  }

  return result;
}

unint64_t sub_22C182534()
{
  result = qword_27D914598;
  if (!qword_27D914598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914598);
  }

  return result;
}

unint64_t sub_22C18258C()
{
  result = qword_27D9145A0;
  if (!qword_27D9145A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145A0);
  }

  return result;
}

unint64_t sub_22C1825E4()
{
  result = qword_27D9145A8;
  if (!qword_27D9145A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145A8);
  }

  return result;
}

unint64_t sub_22C18263C()
{
  result = qword_27D9145B0;
  if (!qword_27D9145B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145B0);
  }

  return result;
}

unint64_t sub_22C182694()
{
  result = qword_27D9145B8;
  if (!qword_27D9145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145B8);
  }

  return result;
}

unint64_t sub_22C1826EC()
{
  result = qword_27D9145C0;
  if (!qword_27D9145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145C0);
  }

  return result;
}

unint64_t sub_22C182744()
{
  result = qword_27D9145C8;
  if (!qword_27D9145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145C8);
  }

  return result;
}

unint64_t sub_22C18279C()
{
  result = qword_27D9145D0;
  if (!qword_27D9145D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145D0);
  }

  return result;
}

unint64_t sub_22C1827F4()
{
  result = qword_27D9145D8;
  if (!qword_27D9145D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145D8);
  }

  return result;
}

unint64_t sub_22C18284C()
{
  result = qword_27D9145E0;
  if (!qword_27D9145E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145E0);
  }

  return result;
}

unint64_t sub_22C1828A4()
{
  result = qword_27D9145E8;
  if (!qword_27D9145E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145E8);
  }

  return result;
}

unint64_t sub_22C1828FC()
{
  result = qword_27D9145F0;
  if (!qword_27D9145F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145F0);
  }

  return result;
}

unint64_t sub_22C182954()
{
  result = qword_27D9145F8;
  if (!qword_27D9145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9145F8);
  }

  return result;
}

unint64_t sub_22C1829AC()
{
  result = qword_27D914600;
  if (!qword_27D914600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914600);
  }

  return result;
}

unint64_t sub_22C182A04()
{
  result = qword_27D914608;
  if (!qword_27D914608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914608);
  }

  return result;
}

unint64_t sub_22C182A5C()
{
  result = qword_27D914610;
  if (!qword_27D914610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914610);
  }

  return result;
}

unint64_t sub_22C182AB4()
{
  result = qword_27D914618;
  if (!qword_27D914618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914618);
  }

  return result;
}

unint64_t sub_22C182B0C()
{
  result = qword_27D914620;
  if (!qword_27D914620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914620);
  }

  return result;
}

unint64_t sub_22C182B64()
{
  result = qword_27D914628;
  if (!qword_27D914628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914628);
  }

  return result;
}

unint64_t sub_22C182BBC()
{
  result = qword_27D914630;
  if (!qword_27D914630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914630);
  }

  return result;
}

unint64_t sub_22C182C14()
{
  result = qword_27D914638;
  if (!qword_27D914638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914638);
  }

  return result;
}

unint64_t sub_22C182C6C()
{
  result = qword_27D914640;
  if (!qword_27D914640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914640);
  }

  return result;
}

unint64_t sub_22C182CC4()
{
  result = qword_27D914648;
  if (!qword_27D914648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914648);
  }

  return result;
}

unint64_t sub_22C182D1C()
{
  result = qword_27D914650;
  if (!qword_27D914650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914650);
  }

  return result;
}

unint64_t sub_22C182D74()
{
  result = qword_27D914658;
  if (!qword_27D914658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914658);
  }

  return result;
}

unint64_t sub_22C182DCC()
{
  result = qword_27D914660;
  if (!qword_27D914660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914660);
  }

  return result;
}

unint64_t sub_22C182E24()
{
  result = qword_27D914668;
  if (!qword_27D914668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914668);
  }

  return result;
}

unint64_t sub_22C182E7C()
{
  result = qword_27D914670;
  if (!qword_27D914670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914670);
  }

  return result;
}

unint64_t sub_22C182ED4()
{
  result = qword_27D914678;
  if (!qword_27D914678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914678);
  }

  return result;
}

unint64_t sub_22C182F2C()
{
  result = qword_27D914680;
  if (!qword_27D914680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914680);
  }

  return result;
}

unint64_t sub_22C182F84()
{
  result = qword_27D914688;
  if (!qword_27D914688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914688);
  }

  return result;
}

unint64_t sub_22C182FDC()
{
  result = qword_27D914690;
  if (!qword_27D914690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914690);
  }

  return result;
}

unint64_t sub_22C183034()
{
  result = qword_27D914698;
  if (!qword_27D914698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914698);
  }

  return result;
}

unint64_t sub_22C18308C()
{
  result = qword_27D9146A0;
  if (!qword_27D9146A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146A0);
  }

  return result;
}

unint64_t sub_22C1830E4()
{
  result = qword_27D9146A8;
  if (!qword_27D9146A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146A8);
  }

  return result;
}

unint64_t sub_22C18313C()
{
  result = qword_27D9146B0;
  if (!qword_27D9146B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146B0);
  }

  return result;
}

unint64_t sub_22C183194()
{
  result = qword_27D9146B8;
  if (!qword_27D9146B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146B8);
  }

  return result;
}

unint64_t sub_22C1831EC()
{
  result = qword_27D9146C0;
  if (!qword_27D9146C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146C0);
  }

  return result;
}

unint64_t sub_22C183244()
{
  result = qword_27D9146C8;
  if (!qword_27D9146C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146C8);
  }

  return result;
}

unint64_t sub_22C18329C()
{
  result = qword_27D9146D0;
  if (!qword_27D9146D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146D0);
  }

  return result;
}

unint64_t sub_22C1832F4()
{
  result = qword_27D9146D8;
  if (!qword_27D9146D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146D8);
  }

  return result;
}

unint64_t sub_22C18334C()
{
  result = qword_27D9146E0;
  if (!qword_27D9146E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146E0);
  }

  return result;
}

unint64_t sub_22C1833A4()
{
  result = qword_27D9146E8;
  if (!qword_27D9146E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146E8);
  }

  return result;
}

unint64_t sub_22C1833FC()
{
  result = qword_27D9146F0;
  if (!qword_27D9146F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146F0);
  }

  return result;
}

unint64_t sub_22C183454()
{
  result = qword_27D9146F8;
  if (!qword_27D9146F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9146F8);
  }

  return result;
}

unint64_t sub_22C1834AC()
{
  result = qword_27D914700;
  if (!qword_27D914700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914700);
  }

  return result;
}

unint64_t sub_22C183504()
{
  result = qword_27D914708;
  if (!qword_27D914708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914708);
  }

  return result;
}

unint64_t sub_22C18355C()
{
  result = qword_27D914710;
  if (!qword_27D914710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914710);
  }

  return result;
}

unint64_t sub_22C1835B4()
{
  result = qword_27D914718;
  if (!qword_27D914718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914718);
  }

  return result;
}

unint64_t sub_22C18360C()
{
  result = qword_27D914720;
  if (!qword_27D914720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914720);
  }

  return result;
}

unint64_t sub_22C183664()
{
  result = qword_27D914728;
  if (!qword_27D914728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914728);
  }

  return result;
}

unint64_t sub_22C1836BC()
{
  result = qword_27D914730;
  if (!qword_27D914730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914730);
  }

  return result;
}

unint64_t sub_22C183714()
{
  result = qword_27D914738;
  if (!qword_27D914738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914738);
  }

  return result;
}

unint64_t sub_22C18376C()
{
  result = qword_27D914740;
  if (!qword_27D914740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914740);
  }

  return result;
}

unint64_t sub_22C1837C4()
{
  result = qword_27D914748;
  if (!qword_27D914748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914748);
  }

  return result;
}

unint64_t sub_22C18381C()
{
  result = qword_27D914750;
  if (!qword_27D914750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914750);
  }

  return result;
}

unint64_t sub_22C183874()
{
  result = qword_27D914758;
  if (!qword_27D914758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914758);
  }

  return result;
}

unint64_t sub_22C1838CC()
{
  result = qword_27D914760;
  if (!qword_27D914760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914760);
  }

  return result;
}

unint64_t sub_22C183924()
{
  result = qword_27D914768;
  if (!qword_27D914768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914768);
  }

  return result;
}

unint64_t sub_22C18397C()
{
  result = qword_27D914770;
  if (!qword_27D914770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914770);
  }

  return result;
}

unint64_t sub_22C1839D4()
{
  result = qword_27D914778;
  if (!qword_27D914778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914778);
  }

  return result;
}

unint64_t sub_22C183A2C()
{
  result = qword_27D914780;
  if (!qword_27D914780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914780);
  }

  return result;
}

unint64_t sub_22C183A84()
{
  result = qword_27D914788;
  if (!qword_27D914788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914788);
  }

  return result;
}

unint64_t sub_22C183ADC()
{
  result = qword_27D914790;
  if (!qword_27D914790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914790);
  }

  return result;
}

unint64_t sub_22C183B34()
{
  result = qword_27D914798;
  if (!qword_27D914798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914798);
  }

  return result;
}

unint64_t sub_22C183B8C()
{
  result = qword_27D9147A0;
  if (!qword_27D9147A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147A0);
  }

  return result;
}

unint64_t sub_22C183BE4()
{
  result = qword_27D9147A8;
  if (!qword_27D9147A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147A8);
  }

  return result;
}

unint64_t sub_22C183C3C()
{
  result = qword_27D9147B0;
  if (!qword_27D9147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147B0);
  }

  return result;
}

unint64_t sub_22C183C94()
{
  result = qword_27D9147B8;
  if (!qword_27D9147B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147B8);
  }

  return result;
}

unint64_t sub_22C183CEC()
{
  result = qword_27D9147C0;
  if (!qword_27D9147C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147C0);
  }

  return result;
}

unint64_t sub_22C183D44()
{
  result = qword_27D9147C8;
  if (!qword_27D9147C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147C8);
  }

  return result;
}

unint64_t sub_22C183D9C()
{
  result = qword_27D9147D0;
  if (!qword_27D9147D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147D0);
  }

  return result;
}

unint64_t sub_22C183DF4()
{
  result = qword_27D9147D8;
  if (!qword_27D9147D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147D8);
  }

  return result;
}

unint64_t sub_22C183E4C()
{
  result = qword_27D9147E0;
  if (!qword_27D9147E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147E0);
  }

  return result;
}

unint64_t sub_22C183EA4()
{
  result = qword_27D9147E8;
  if (!qword_27D9147E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147E8);
  }

  return result;
}

unint64_t sub_22C183EFC()
{
  result = qword_27D9147F0;
  if (!qword_27D9147F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147F0);
  }

  return result;
}

unint64_t sub_22C183F54()
{
  result = qword_27D9147F8;
  if (!qword_27D9147F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9147F8);
  }

  return result;
}

unint64_t sub_22C183FAC()
{
  result = qword_27D914800;
  if (!qword_27D914800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914800);
  }

  return result;
}

unint64_t sub_22C184004()
{
  result = qword_27D914808;
  if (!qword_27D914808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914808);
  }

  return result;
}

unint64_t sub_22C18405C()
{
  result = qword_27D914810;
  if (!qword_27D914810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914810);
  }

  return result;
}

unint64_t sub_22C1840B4()
{
  result = qword_27D914818;
  if (!qword_27D914818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914818);
  }

  return result;
}

unint64_t sub_22C18410C()
{
  result = qword_27D914820;
  if (!qword_27D914820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914820);
  }

  return result;
}

unint64_t sub_22C184164()
{
  result = qword_27D914828;
  if (!qword_27D914828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914828);
  }

  return result;
}

unint64_t sub_22C1841BC()
{
  result = qword_27D914830;
  if (!qword_27D914830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914830);
  }

  return result;
}

unint64_t sub_22C184214()
{
  result = qword_27D914838;
  if (!qword_27D914838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914838);
  }

  return result;
}

unint64_t sub_22C18426C()
{
  result = qword_27D914840;
  if (!qword_27D914840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914840);
  }

  return result;
}

unint64_t sub_22C1842C4()
{
  result = qword_27D914848;
  if (!qword_27D914848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914848);
  }

  return result;
}

unint64_t sub_22C18431C()
{
  result = qword_27D914850;
  if (!qword_27D914850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914850);
  }

  return result;
}

unint64_t sub_22C184374()
{
  result = qword_27D914858;
  if (!qword_27D914858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914858);
  }

  return result;
}

unint64_t sub_22C1843CC()
{
  result = qword_27D914860;
  if (!qword_27D914860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914860);
  }

  return result;
}

unint64_t sub_22C184424()
{
  result = qword_27D914868;
  if (!qword_27D914868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914868);
  }

  return result;
}

unint64_t sub_22C18447C()
{
  result = qword_27D914870;
  if (!qword_27D914870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914870);
  }

  return result;
}

unint64_t sub_22C1844D4()
{
  result = qword_27D914878;
  if (!qword_27D914878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914878);
  }

  return result;
}

unint64_t sub_22C18452C()
{
  result = qword_27D914880;
  if (!qword_27D914880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914880);
  }

  return result;
}

unint64_t sub_22C184584()
{
  result = qword_27D914888;
  if (!qword_27D914888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914888);
  }

  return result;
}

unint64_t sub_22C1845DC()
{
  result = qword_27D914890;
  if (!qword_27D914890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914890);
  }

  return result;
}

unint64_t sub_22C184634()
{
  result = qword_27D914898;
  if (!qword_27D914898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914898);
  }

  return result;
}

unint64_t sub_22C18468C()
{
  result = qword_27D9148A0;
  if (!qword_27D9148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148A0);
  }

  return result;
}

unint64_t sub_22C1846E4()
{
  result = qword_27D9148A8;
  if (!qword_27D9148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148A8);
  }

  return result;
}

unint64_t sub_22C18473C()
{
  result = qword_27D9148B0;
  if (!qword_27D9148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148B0);
  }

  return result;
}

unint64_t sub_22C184794()
{
  result = qword_27D9148B8;
  if (!qword_27D9148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148B8);
  }

  return result;
}

unint64_t sub_22C1847EC()
{
  result = qword_27D9148C0;
  if (!qword_27D9148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148C0);
  }

  return result;
}

unint64_t sub_22C184844()
{
  result = qword_27D9148C8;
  if (!qword_27D9148C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148C8);
  }

  return result;
}

unint64_t sub_22C18489C()
{
  result = qword_27D9148D0;
  if (!qword_27D9148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148D0);
  }

  return result;
}

unint64_t sub_22C1848F4()
{
  result = qword_27D9148D8;
  if (!qword_27D9148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148D8);
  }

  return result;
}

unint64_t sub_22C18494C()
{
  result = qword_27D9148E0;
  if (!qword_27D9148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148E0);
  }

  return result;
}

unint64_t sub_22C1849A4()
{
  result = qword_27D9148E8;
  if (!qword_27D9148E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148E8);
  }

  return result;
}

unint64_t sub_22C1849FC()
{
  result = qword_27D9148F0;
  if (!qword_27D9148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148F0);
  }

  return result;
}

unint64_t sub_22C184A54()
{
  result = qword_27D9148F8;
  if (!qword_27D9148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9148F8);
  }

  return result;
}

unint64_t sub_22C184AAC()
{
  result = qword_27D914900;
  if (!qword_27D914900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914900);
  }

  return result;
}

unint64_t sub_22C184B04()
{
  result = qword_27D914908;
  if (!qword_27D914908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914908);
  }

  return result;
}

unint64_t sub_22C184B5C()
{
  result = qword_27D914910;
  if (!qword_27D914910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914910);
  }

  return result;
}

unint64_t sub_22C184BB4()
{
  result = qword_27D914918;
  if (!qword_27D914918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914918);
  }

  return result;
}

unint64_t sub_22C184C0C()
{
  result = qword_27D914920;
  if (!qword_27D914920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914920);
  }

  return result;
}

unint64_t sub_22C184C64()
{
  result = qword_27D914928;
  if (!qword_27D914928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914928);
  }

  return result;
}

unint64_t sub_22C184CBC()
{
  result = qword_27D914930;
  if (!qword_27D914930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914930);
  }

  return result;
}

unint64_t sub_22C184D14()
{
  result = qword_27D914938;
  if (!qword_27D914938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914938);
  }

  return result;
}

unint64_t sub_22C184D6C()
{
  result = qword_27D914940;
  if (!qword_27D914940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914940);
  }

  return result;
}

unint64_t sub_22C184DC4()
{
  result = qword_27D914948;
  if (!qword_27D914948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914948);
  }

  return result;
}

unint64_t sub_22C184E1C()
{
  result = qword_27D914950;
  if (!qword_27D914950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914950);
  }

  return result;
}

unint64_t sub_22C184E74()
{
  result = qword_27D914958;
  if (!qword_27D914958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914958);
  }

  return result;
}

unint64_t sub_22C184ECC()
{
  result = qword_27D914960;
  if (!qword_27D914960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914960);
  }

  return result;
}

unint64_t sub_22C184F24()
{
  result = qword_27D914968;
  if (!qword_27D914968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914968);
  }

  return result;
}

unint64_t sub_22C184F7C()
{
  result = qword_27D914970;
  if (!qword_27D914970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914970);
  }

  return result;
}

unint64_t sub_22C184FD4()
{
  result = qword_27D914978;
  if (!qword_27D914978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914978);
  }

  return result;
}

unint64_t sub_22C18502C()
{
  result = qword_27D914980;
  if (!qword_27D914980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914980);
  }

  return result;
}

unint64_t sub_22C185084()
{
  result = qword_27D914988;
  if (!qword_27D914988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914988);
  }

  return result;
}

unint64_t sub_22C1850DC()
{
  result = qword_27D914990;
  if (!qword_27D914990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914990);
  }

  return result;
}

unint64_t sub_22C185134()
{
  result = qword_27D914998;
  if (!qword_27D914998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914998);
  }

  return result;
}

unint64_t sub_22C18518C()
{
  result = qword_27D9149A0;
  if (!qword_27D9149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149A0);
  }

  return result;
}

unint64_t sub_22C1851E4()
{
  result = qword_27D9149A8;
  if (!qword_27D9149A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149A8);
  }

  return result;
}

unint64_t sub_22C18523C()
{
  result = qword_27D9149B0;
  if (!qword_27D9149B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149B0);
  }

  return result;
}

unint64_t sub_22C185294()
{
  result = qword_27D9149B8;
  if (!qword_27D9149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149B8);
  }

  return result;
}

unint64_t sub_22C1852EC()
{
  result = qword_27D9149C0;
  if (!qword_27D9149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149C0);
  }

  return result;
}

unint64_t sub_22C185344()
{
  result = qword_27D9149C8;
  if (!qword_27D9149C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149C8);
  }

  return result;
}

unint64_t sub_22C18539C()
{
  result = qword_27D9149D0;
  if (!qword_27D9149D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149D0);
  }

  return result;
}

unint64_t sub_22C1853F4()
{
  result = qword_27D9149D8;
  if (!qword_27D9149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149D8);
  }

  return result;
}

unint64_t sub_22C18544C()
{
  result = qword_27D9149E0;
  if (!qword_27D9149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149E0);
  }

  return result;
}

unint64_t sub_22C1854A4()
{
  result = qword_27D9149E8;
  if (!qword_27D9149E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149E8);
  }

  return result;
}

unint64_t sub_22C1854FC()
{
  result = qword_27D9149F0;
  if (!qword_27D9149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149F0);
  }

  return result;
}

unint64_t sub_22C185554()
{
  result = qword_27D9149F8;
  if (!qword_27D9149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9149F8);
  }

  return result;
}

unint64_t sub_22C1855AC()
{
  result = qword_27D914A00;
  if (!qword_27D914A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A00);
  }

  return result;
}

unint64_t sub_22C185604()
{
  result = qword_27D914A08;
  if (!qword_27D914A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A08);
  }

  return result;
}

unint64_t sub_22C18565C()
{
  result = qword_27D914A10;
  if (!qword_27D914A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A10);
  }

  return result;
}

unint64_t sub_22C1856B4()
{
  result = qword_27D914A18;
  if (!qword_27D914A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A18);
  }

  return result;
}

unint64_t sub_22C18570C()
{
  result = qword_27D914A20;
  if (!qword_27D914A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A20);
  }

  return result;
}

unint64_t sub_22C185764()
{
  result = qword_27D914A28;
  if (!qword_27D914A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A28);
  }

  return result;
}

unint64_t sub_22C1857BC()
{
  result = qword_27D914A30;
  if (!qword_27D914A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A30);
  }

  return result;
}

unint64_t sub_22C185814()
{
  result = qword_27D914A38;
  if (!qword_27D914A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A38);
  }

  return result;
}

unint64_t sub_22C18586C()
{
  result = qword_27D914A40;
  if (!qword_27D914A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A40);
  }

  return result;
}

unint64_t sub_22C1858C4()
{
  result = qword_27D914A48;
  if (!qword_27D914A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A48);
  }

  return result;
}

unint64_t sub_22C18591C()
{
  result = qword_27D914A50;
  if (!qword_27D914A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A50);
  }

  return result;
}

unint64_t sub_22C185974()
{
  result = qword_27D914A58;
  if (!qword_27D914A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A58);
  }

  return result;
}

unint64_t sub_22C1859CC()
{
  result = qword_27D914A60;
  if (!qword_27D914A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A60);
  }

  return result;
}

unint64_t sub_22C185A24()
{
  result = qword_27D914A68;
  if (!qword_27D914A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A68);
  }

  return result;
}

unint64_t sub_22C185A7C()
{
  result = qword_27D914A70;
  if (!qword_27D914A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A70);
  }

  return result;
}

unint64_t sub_22C185AD4()
{
  result = qword_27D914A78;
  if (!qword_27D914A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A78);
  }

  return result;
}

unint64_t sub_22C185B2C()
{
  result = qword_27D914A80;
  if (!qword_27D914A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A80);
  }

  return result;
}

unint64_t sub_22C185B84()
{
  result = qword_27D914A88;
  if (!qword_27D914A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A88);
  }

  return result;
}

unint64_t sub_22C185BDC()
{
  result = qword_27D914A90;
  if (!qword_27D914A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A90);
  }

  return result;
}

unint64_t sub_22C185C34()
{
  result = qword_27D914A98;
  if (!qword_27D914A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914A98);
  }

  return result;
}

unint64_t sub_22C185C8C()
{
  result = qword_27D914AA0;
  if (!qword_27D914AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AA0);
  }

  return result;
}

unint64_t sub_22C185CE4()
{
  result = qword_27D914AA8;
  if (!qword_27D914AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AA8);
  }

  return result;
}

unint64_t sub_22C185D3C()
{
  result = qword_27D914AB0;
  if (!qword_27D914AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AB0);
  }

  return result;
}

unint64_t sub_22C185D94()
{
  result = qword_27D914AB8;
  if (!qword_27D914AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AB8);
  }

  return result;
}

unint64_t sub_22C185DEC()
{
  result = qword_27D914AC0;
  if (!qword_27D914AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AC0);
  }

  return result;
}

unint64_t sub_22C185E44()
{
  result = qword_27D914AC8;
  if (!qword_27D914AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AC8);
  }

  return result;
}

unint64_t sub_22C185E9C()
{
  result = qword_27D914AD0;
  if (!qword_27D914AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AD0);
  }

  return result;
}

unint64_t sub_22C185EF4()
{
  result = qword_27D914AD8;
  if (!qword_27D914AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AD8);
  }

  return result;
}

unint64_t sub_22C185F4C()
{
  result = qword_27D914AE0;
  if (!qword_27D914AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AE0);
  }

  return result;
}

unint64_t sub_22C185FA4()
{
  result = qword_27D914AE8;
  if (!qword_27D914AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AE8);
  }

  return result;
}

unint64_t sub_22C185FFC()
{
  result = qword_27D914AF0;
  if (!qword_27D914AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AF0);
  }

  return result;
}

unint64_t sub_22C186054()
{
  result = qword_27D914AF8;
  if (!qword_27D914AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914AF8);
  }

  return result;
}

unint64_t sub_22C1860AC()
{
  result = qword_27D914B00;
  if (!qword_27D914B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B00);
  }

  return result;
}

unint64_t sub_22C186104()
{
  result = qword_27D914B08;
  if (!qword_27D914B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B08);
  }

  return result;
}

unint64_t sub_22C18615C()
{
  result = qword_27D914B10;
  if (!qword_27D914B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B10);
  }

  return result;
}

unint64_t sub_22C1861B4()
{
  result = qword_27D914B18;
  if (!qword_27D914B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B18);
  }

  return result;
}

unint64_t sub_22C18620C()
{
  result = qword_27D914B20;
  if (!qword_27D914B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B20);
  }

  return result;
}

unint64_t sub_22C186264()
{
  result = qword_28107AD98;
  if (!qword_28107AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107AD98);
  }

  return result;
}

unint64_t sub_22C1862BC()
{
  result = qword_28107ADA0;
  if (!qword_28107ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107ADA0);
  }

  return result;
}

unint64_t sub_22C186314()
{
  result = qword_27D914B28;
  if (!qword_27D914B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B28);
  }

  return result;
}

unint64_t sub_22C18636C()
{
  result = qword_27D914B30;
  if (!qword_27D914B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B30);
  }

  return result;
}

unint64_t sub_22C1863C4()
{
  result = qword_27D914B38;
  if (!qword_27D914B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B38);
  }

  return result;
}

unint64_t sub_22C18641C()
{
  result = qword_27D914B40;
  if (!qword_27D914B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B40);
  }

  return result;
}

unint64_t sub_22C186474()
{
  result = qword_27D914B48;
  if (!qword_27D914B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B48);
  }

  return result;
}

unint64_t sub_22C1864CC()
{
  result = qword_27D914B50;
  if (!qword_27D914B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B50);
  }

  return result;
}

unint64_t sub_22C186524()
{
  result = qword_27D914B58;
  if (!qword_27D914B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B58);
  }

  return result;
}

unint64_t sub_22C18657C()
{
  result = qword_27D914B60;
  if (!qword_27D914B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B60);
  }

  return result;
}

unint64_t sub_22C1865D4()
{
  result = qword_27D914B68;
  if (!qword_27D914B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B68);
  }

  return result;
}

unint64_t sub_22C18662C()
{
  result = qword_27D914B70;
  if (!qword_27D914B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B70);
  }

  return result;
}

unint64_t sub_22C186684()
{
  result = qword_27D914B78;
  if (!qword_27D914B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B78);
  }

  return result;
}

unint64_t sub_22C1866DC()
{
  result = qword_27D914B80;
  if (!qword_27D914B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B80);
  }

  return result;
}

unint64_t sub_22C186734()
{
  result = qword_27D914B88;
  if (!qword_27D914B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B88);
  }

  return result;
}

unint64_t sub_22C18678C()
{
  result = qword_27D914B90;
  if (!qword_27D914B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B90);
  }

  return result;
}

unint64_t sub_22C1867E4()
{
  result = qword_27D914B98;
  if (!qword_27D914B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914B98);
  }

  return result;
}

unint64_t sub_22C18683C()
{
  result = qword_27D914BA0;
  if (!qword_27D914BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BA0);
  }

  return result;
}

unint64_t sub_22C186894()
{
  result = qword_27D914BA8;
  if (!qword_27D914BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BA8);
  }

  return result;
}

unint64_t sub_22C1868EC()
{
  result = qword_27D914BB0;
  if (!qword_27D914BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BB0);
  }

  return result;
}

unint64_t sub_22C186944()
{
  result = qword_27D914BB8;
  if (!qword_27D914BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BB8);
  }

  return result;
}

unint64_t sub_22C18699C()
{
  result = qword_27D914BC0;
  if (!qword_27D914BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BC0);
  }

  return result;
}

unint64_t sub_22C1869F4()
{
  result = qword_27D914BC8;
  if (!qword_27D914BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BC8);
  }

  return result;
}

unint64_t sub_22C186A4C()
{
  result = qword_27D914BD0;
  if (!qword_27D914BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BD0);
  }

  return result;
}

unint64_t sub_22C186AA4()
{
  result = qword_27D914BD8;
  if (!qword_27D914BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BD8);
  }

  return result;
}

unint64_t sub_22C186AFC()
{
  result = qword_27D914BE0;
  if (!qword_27D914BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BE0);
  }

  return result;
}

unint64_t sub_22C186B54()
{
  result = qword_27D914BE8;
  if (!qword_27D914BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BE8);
  }

  return result;
}

unint64_t sub_22C186BAC()
{
  result = qword_27D914BF0;
  if (!qword_27D914BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BF0);
  }

  return result;
}

unint64_t sub_22C186C04()
{
  result = qword_27D914BF8;
  if (!qword_27D914BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914BF8);
  }

  return result;
}

unint64_t sub_22C186C5C()
{
  result = qword_27D914C00;
  if (!qword_27D914C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C00);
  }

  return result;
}

unint64_t sub_22C186CB4()
{
  result = qword_27D914C08;
  if (!qword_27D914C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C08);
  }

  return result;
}

unint64_t sub_22C186D0C()
{
  result = qword_27D914C10;
  if (!qword_27D914C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C10);
  }

  return result;
}

unint64_t sub_22C186D64()
{
  result = qword_27D914C18;
  if (!qword_27D914C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C18);
  }

  return result;
}

unint64_t sub_22C186DBC()
{
  result = qword_27D914C20;
  if (!qword_27D914C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C20);
  }

  return result;
}

unint64_t sub_22C186E14()
{
  result = qword_27D914C28;
  if (!qword_27D914C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C28);
  }

  return result;
}

unint64_t sub_22C186E6C()
{
  result = qword_27D914C30;
  if (!qword_27D914C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C30);
  }

  return result;
}

unint64_t sub_22C186EC4()
{
  result = qword_27D914C38;
  if (!qword_27D914C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C38);
  }

  return result;
}

unint64_t sub_22C186F1C()
{
  result = qword_27D914C40;
  if (!qword_27D914C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C40);
  }

  return result;
}

unint64_t sub_22C186F74()
{
  result = qword_27D914C48;
  if (!qword_27D914C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C48);
  }

  return result;
}

unint64_t sub_22C186FCC()
{
  result = qword_27D914C50;
  if (!qword_27D914C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C50);
  }

  return result;
}

unint64_t sub_22C187024()
{
  result = qword_27D914C58;
  if (!qword_27D914C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C58);
  }

  return result;
}

unint64_t sub_22C18707C()
{
  result = qword_27D914C60;
  if (!qword_27D914C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C60);
  }

  return result;
}

unint64_t sub_22C1870D4()
{
  result = qword_27D914C68;
  if (!qword_27D914C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C68);
  }

  return result;
}

unint64_t sub_22C18712C()
{
  result = qword_27D914C70;
  if (!qword_27D914C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C70);
  }

  return result;
}

unint64_t sub_22C187184()
{
  result = qword_27D914C78;
  if (!qword_27D914C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C78);
  }

  return result;
}

unint64_t sub_22C1871DC()
{
  result = qword_27D914C80;
  if (!qword_27D914C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C80);
  }

  return result;
}

unint64_t sub_22C187234()
{
  result = qword_27D914C88;
  if (!qword_27D914C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C88);
  }

  return result;
}

unint64_t sub_22C18728C()
{
  result = qword_27D914C90;
  if (!qword_27D914C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C90);
  }

  return result;
}

unint64_t sub_22C1872E4()
{
  result = qword_27D914C98;
  if (!qword_27D914C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914C98);
  }

  return result;
}

unint64_t sub_22C18733C()
{
  result = qword_27D914CA0;
  if (!qword_27D914CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CA0);
  }

  return result;
}

unint64_t sub_22C187394()
{
  result = qword_27D914CA8;
  if (!qword_27D914CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CA8);
  }

  return result;
}

unint64_t sub_22C1873EC()
{
  result = qword_27D914CB0;
  if (!qword_27D914CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CB0);
  }

  return result;
}

unint64_t sub_22C187444()
{
  result = qword_27D914CB8;
  if (!qword_27D914CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CB8);
  }

  return result;
}

unint64_t sub_22C18749C()
{
  result = qword_27D914CC0;
  if (!qword_27D914CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CC0);
  }

  return result;
}

unint64_t sub_22C1874F4()
{
  result = qword_27D914CC8;
  if (!qword_27D914CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CC8);
  }

  return result;
}

unint64_t sub_22C18754C()
{
  result = qword_27D914CD0;
  if (!qword_27D914CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CD0);
  }

  return result;
}

unint64_t sub_22C1875A4()
{
  result = qword_27D914CD8;
  if (!qword_27D914CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CD8);
  }

  return result;
}

unint64_t sub_22C1875FC()
{
  result = qword_27D914CE0;
  if (!qword_27D914CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CE0);
  }

  return result;
}

unint64_t sub_22C187654()
{
  result = qword_27D914CE8;
  if (!qword_27D914CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CE8);
  }

  return result;
}

unint64_t sub_22C1876AC()
{
  result = qword_27D914CF0;
  if (!qword_27D914CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CF0);
  }

  return result;
}

unint64_t sub_22C187704()
{
  result = qword_27D914CF8;
  if (!qword_27D914CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914CF8);
  }

  return result;
}

unint64_t sub_22C18775C()
{
  result = qword_27D914D00;
  if (!qword_27D914D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D00);
  }

  return result;
}

unint64_t sub_22C1877B4()
{
  result = qword_27D914D08;
  if (!qword_27D914D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D08);
  }

  return result;
}

unint64_t sub_22C18780C()
{
  result = qword_27D914D10;
  if (!qword_27D914D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D10);
  }

  return result;
}

unint64_t sub_22C187864()
{
  result = qword_27D914D18;
  if (!qword_27D914D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D18);
  }

  return result;
}

unint64_t sub_22C1878BC()
{
  result = qword_27D914D20;
  if (!qword_27D914D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D20);
  }

  return result;
}

unint64_t sub_22C187914()
{
  result = qword_27D914D28;
  if (!qword_27D914D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D28);
  }

  return result;
}

unint64_t sub_22C18796C()
{
  result = qword_27D914D30;
  if (!qword_27D914D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D30);
  }

  return result;
}

unint64_t sub_22C1879C4()
{
  result = qword_27D914D38;
  if (!qword_27D914D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D38);
  }

  return result;
}

unint64_t sub_22C187A1C()
{
  result = qword_27D914D40;
  if (!qword_27D914D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D40);
  }

  return result;
}

unint64_t sub_22C187A74()
{
  result = qword_27D914D48;
  if (!qword_27D914D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D48);
  }

  return result;
}

unint64_t sub_22C187ACC()
{
  result = qword_27D914D50;
  if (!qword_27D914D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D50);
  }

  return result;
}

unint64_t sub_22C187B24()
{
  result = qword_27D914D58;
  if (!qword_27D914D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D58);
  }

  return result;
}

unint64_t sub_22C187B7C()
{
  result = qword_27D914D60;
  if (!qword_27D914D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D60);
  }

  return result;
}

unint64_t sub_22C187BD4()
{
  result = qword_27D914D68;
  if (!qword_27D914D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D68);
  }

  return result;
}

unint64_t sub_22C187C2C()
{
  result = qword_27D914D70;
  if (!qword_27D914D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D70);
  }

  return result;
}

unint64_t sub_22C187C84()
{
  result = qword_27D914D78;
  if (!qword_27D914D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D78);
  }

  return result;
}

unint64_t sub_22C187CDC()
{
  result = qword_27D914D80;
  if (!qword_27D914D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D80);
  }

  return result;
}

unint64_t sub_22C187D34()
{
  result = qword_27D914D88;
  if (!qword_27D914D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D88);
  }

  return result;
}

unint64_t sub_22C187D8C()
{
  result = qword_27D914D90;
  if (!qword_27D914D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D90);
  }

  return result;
}

unint64_t sub_22C187DE4()
{
  result = qword_27D914D98;
  if (!qword_27D914D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914D98);
  }

  return result;
}

unint64_t sub_22C187E3C()
{
  result = qword_27D914DA0;
  if (!qword_27D914DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DA0);
  }

  return result;
}

unint64_t sub_22C187E94()
{
  result = qword_27D914DA8;
  if (!qword_27D914DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DA8);
  }

  return result;
}

unint64_t sub_22C187EEC()
{
  result = qword_27D914DB0;
  if (!qword_27D914DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DB0);
  }

  return result;
}

unint64_t sub_22C187F44()
{
  result = qword_27D914DB8;
  if (!qword_27D914DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DB8);
  }

  return result;
}

unint64_t sub_22C187F9C()
{
  result = qword_27D914DC0;
  if (!qword_27D914DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DC0);
  }

  return result;
}

unint64_t sub_22C187FF4()
{
  result = qword_27D914DC8;
  if (!qword_27D914DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DC8);
  }

  return result;
}

unint64_t sub_22C18804C()
{
  result = qword_27D914DD0;
  if (!qword_27D914DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DD0);
  }

  return result;
}

unint64_t sub_22C1880A4()
{
  result = qword_27D914DD8;
  if (!qword_27D914DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DD8);
  }

  return result;
}

unint64_t sub_22C1880FC()
{
  result = qword_27D914DE0;
  if (!qword_27D914DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DE0);
  }

  return result;
}

unint64_t sub_22C188154()
{
  result = qword_27D914DE8;
  if (!qword_27D914DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DE8);
  }

  return result;
}

unint64_t sub_22C1881AC()
{
  result = qword_27D914DF0;
  if (!qword_27D914DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DF0);
  }

  return result;
}

unint64_t sub_22C188204()
{
  result = qword_27D914DF8;
  if (!qword_27D914DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914DF8);
  }

  return result;
}

unint64_t sub_22C18825C()
{
  result = qword_27D914E00;
  if (!qword_27D914E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E00);
  }

  return result;
}

unint64_t sub_22C1882B4()
{
  result = qword_27D914E08;
  if (!qword_27D914E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E08);
  }

  return result;
}

unint64_t sub_22C18830C()
{
  result = qword_27D914E10;
  if (!qword_27D914E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E10);
  }

  return result;
}

unint64_t sub_22C188364()
{
  result = qword_27D914E18;
  if (!qword_27D914E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E18);
  }

  return result;
}

unint64_t sub_22C1883BC()
{
  result = qword_27D914E20;
  if (!qword_27D914E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E20);
  }

  return result;
}

unint64_t sub_22C188414()
{
  result = qword_27D914E28;
  if (!qword_27D914E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E28);
  }

  return result;
}

unint64_t sub_22C18846C()
{
  result = qword_27D914E30;
  if (!qword_27D914E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E30);
  }

  return result;
}

unint64_t sub_22C1884C4()
{
  result = qword_27D914E38;
  if (!qword_27D914E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E38);
  }

  return result;
}

unint64_t sub_22C18851C()
{
  result = qword_27D914E40;
  if (!qword_27D914E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E40);
  }

  return result;
}

unint64_t sub_22C188574()
{
  result = qword_27D914E48;
  if (!qword_27D914E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E48);
  }

  return result;
}

unint64_t sub_22C1885CC()
{
  result = qword_27D914E50;
  if (!qword_27D914E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E50);
  }

  return result;
}

unint64_t sub_22C188624()
{
  result = qword_27D914E58;
  if (!qword_27D914E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E58);
  }

  return result;
}

unint64_t sub_22C18867C()
{
  result = qword_27D914E60;
  if (!qword_27D914E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E60);
  }

  return result;
}

unint64_t sub_22C1886D4()
{
  result = qword_27D914E68;
  if (!qword_27D914E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E68);
  }

  return result;
}

unint64_t sub_22C18872C()
{
  result = qword_27D914E70;
  if (!qword_27D914E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E70);
  }

  return result;
}

unint64_t sub_22C188784()
{
  result = qword_27D914E78;
  if (!qword_27D914E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E78);
  }

  return result;
}

unint64_t sub_22C1887DC()
{
  result = qword_27D914E80;
  if (!qword_27D914E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E80);
  }

  return result;
}

unint64_t sub_22C188834()
{
  result = qword_27D914E88;
  if (!qword_27D914E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E88);
  }

  return result;
}

unint64_t sub_22C18888C()
{
  result = qword_27D914E90;
  if (!qword_27D914E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E90);
  }

  return result;
}

unint64_t sub_22C1888E4()
{
  result = qword_27D914E98;
  if (!qword_27D914E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914E98);
  }

  return result;
}

unint64_t sub_22C18893C()
{
  result = qword_27D914EA0;
  if (!qword_27D914EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EA0);
  }

  return result;
}

unint64_t sub_22C188994()
{
  result = qword_27D914EA8;
  if (!qword_27D914EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EA8);
  }

  return result;
}

unint64_t sub_22C1889EC()
{
  result = qword_27D914EB0;
  if (!qword_27D914EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EB0);
  }

  return result;
}

unint64_t sub_22C188A44()
{
  result = qword_27D914EB8;
  if (!qword_27D914EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EB8);
  }

  return result;
}

unint64_t sub_22C188A9C()
{
  result = qword_27D914EC0;
  if (!qword_27D914EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EC0);
  }

  return result;
}

unint64_t sub_22C188AF4()
{
  result = qword_27D914EC8;
  if (!qword_27D914EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EC8);
  }

  return result;
}

unint64_t sub_22C188B4C()
{
  result = qword_27D914ED0;
  if (!qword_27D914ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914ED0);
  }

  return result;
}

unint64_t sub_22C188BA4()
{
  result = qword_27D914ED8;
  if (!qword_27D914ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914ED8);
  }

  return result;
}

unint64_t sub_22C188BFC()
{
  result = qword_27D914EE0;
  if (!qword_27D914EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EE0);
  }

  return result;
}

unint64_t sub_22C188C54()
{
  result = qword_27D914EE8;
  if (!qword_27D914EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EE8);
  }

  return result;
}

unint64_t sub_22C188CAC()
{
  result = qword_27D914EF0;
  if (!qword_27D914EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EF0);
  }

  return result;
}

unint64_t sub_22C188D04()
{
  result = qword_27D914EF8;
  if (!qword_27D914EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914EF8);
  }

  return result;
}

unint64_t sub_22C188D5C()
{
  result = qword_27D914F00;
  if (!qword_27D914F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F00);
  }

  return result;
}

unint64_t sub_22C188DB4()
{
  result = qword_27D914F08;
  if (!qword_27D914F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F08);
  }

  return result;
}

unint64_t sub_22C188E0C()
{
  result = qword_27D914F10;
  if (!qword_27D914F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F10);
  }

  return result;
}

unint64_t sub_22C188E64()
{
  result = qword_27D914F18;
  if (!qword_27D914F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F18);
  }

  return result;
}

unint64_t sub_22C188EBC()
{
  result = qword_27D914F20;
  if (!qword_27D914F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F20);
  }

  return result;
}

unint64_t sub_22C188F14()
{
  result = qword_27D914F28;
  if (!qword_27D914F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F28);
  }

  return result;
}

unint64_t sub_22C188F6C()
{
  result = qword_27D914F30;
  if (!qword_27D914F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F30);
  }

  return result;
}

unint64_t sub_22C188FC4()
{
  result = qword_27D914F38;
  if (!qword_27D914F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F38);
  }

  return result;
}

unint64_t sub_22C18901C()
{
  result = qword_27D914F40;
  if (!qword_27D914F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F40);
  }

  return result;
}

unint64_t sub_22C189074()
{
  result = qword_27D914F48;
  if (!qword_27D914F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F48);
  }

  return result;
}

unint64_t sub_22C1890CC()
{
  result = qword_27D914F50;
  if (!qword_27D914F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F50);
  }

  return result;
}

unint64_t sub_22C189124()
{
  result = qword_27D914F58;
  if (!qword_27D914F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F58);
  }

  return result;
}

unint64_t sub_22C18917C()
{
  result = qword_27D914F60;
  if (!qword_27D914F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F60);
  }

  return result;
}

unint64_t sub_22C1891D4()
{
  result = qword_27D914F68;
  if (!qword_27D914F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F68);
  }

  return result;
}

unint64_t sub_22C18922C()
{
  result = qword_27D914F70;
  if (!qword_27D914F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F70);
  }

  return result;
}

unint64_t sub_22C189284()
{
  result = qword_27D914F78;
  if (!qword_27D914F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F78);
  }

  return result;
}

unint64_t sub_22C1892DC()
{
  result = qword_27D914F80;
  if (!qword_27D914F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F80);
  }

  return result;
}

unint64_t sub_22C189334()
{
  result = qword_27D914F88;
  if (!qword_27D914F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F88);
  }

  return result;
}

unint64_t sub_22C18938C()
{
  result = qword_27D914F90;
  if (!qword_27D914F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F90);
  }

  return result;
}

unint64_t sub_22C1893E4()
{
  result = qword_27D914F98;
  if (!qword_27D914F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914F98);
  }

  return result;
}

unint64_t sub_22C18943C()
{
  result = qword_27D914FA0;
  if (!qword_27D914FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FA0);
  }

  return result;
}

unint64_t sub_22C189494()
{
  result = qword_27D914FA8;
  if (!qword_27D914FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FA8);
  }

  return result;
}

unint64_t sub_22C1894EC()
{
  result = qword_27D914FB0;
  if (!qword_27D914FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FB0);
  }

  return result;
}

unint64_t sub_22C189544()
{
  result = qword_27D914FB8;
  if (!qword_27D914FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FB8);
  }

  return result;
}

unint64_t sub_22C18959C()
{
  result = qword_27D914FC0;
  if (!qword_27D914FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FC0);
  }

  return result;
}

unint64_t sub_22C1895F4()
{
  result = qword_27D914FC8;
  if (!qword_27D914FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FC8);
  }

  return result;
}

unint64_t sub_22C18964C()
{
  result = qword_27D914FD0;
  if (!qword_27D914FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FD0);
  }

  return result;
}

unint64_t sub_22C1896A4()
{
  result = qword_27D914FD8;
  if (!qword_27D914FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FD8);
  }

  return result;
}

unint64_t sub_22C1896FC()
{
  result = qword_27D914FE0;
  if (!qword_27D914FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FE0);
  }

  return result;
}

unint64_t sub_22C189754()
{
  result = qword_27D914FE8;
  if (!qword_27D914FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FE8);
  }

  return result;
}

unint64_t sub_22C1897AC()
{
  result = qword_27D914FF0;
  if (!qword_27D914FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FF0);
  }

  return result;
}

unint64_t sub_22C189804()
{
  result = qword_27D914FF8;
  if (!qword_27D914FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914FF8);
  }

  return result;
}

unint64_t sub_22C18985C()
{
  result = qword_27D915000;
  if (!qword_27D915000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915000);
  }

  return result;
}

unint64_t sub_22C1898B4()
{
  result = qword_28107ACE0;
  if (!qword_28107ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107ACE0);
  }

  return result;
}

unint64_t sub_22C18990C()
{
  result = qword_28107ACE8;
  if (!qword_28107ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107ACE8);
  }

  return result;
}

unint64_t sub_22C189964()
{
  result = qword_27D915008;
  if (!qword_27D915008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915008);
  }

  return result;
}

unint64_t sub_22C1899BC()
{
  result = qword_27D915010;
  if (!qword_27D915010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915010);
  }

  return result;
}

unint64_t sub_22C189A14()
{
  result = qword_27D915018;
  if (!qword_27D915018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915018);
  }

  return result;
}

unint64_t sub_22C189A6C()
{
  result = qword_27D915020;
  if (!qword_27D915020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915020);
  }

  return result;
}

unint64_t sub_22C189AC4()
{
  result = qword_27D915028;
  if (!qword_27D915028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915028);
  }

  return result;
}

unint64_t sub_22C189B1C()
{
  result = qword_27D915030;
  if (!qword_27D915030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915030);
  }

  return result;
}

unint64_t sub_22C189B74()
{
  result = qword_27D915038;
  if (!qword_27D915038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915038);
  }

  return result;
}

unint64_t sub_22C189BCC()
{
  result = qword_27D915040;
  if (!qword_27D915040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915040);
  }

  return result;
}

unint64_t sub_22C189C24()
{
  result = qword_27D915048;
  if (!qword_27D915048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915048);
  }

  return result;
}

unint64_t sub_22C189C7C()
{
  result = qword_27D915050;
  if (!qword_27D915050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915050);
  }

  return result;
}

unint64_t sub_22C189CD4()
{
  result = qword_27D915058;
  if (!qword_27D915058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915058);
  }

  return result;
}

unint64_t sub_22C189D2C()
{
  result = qword_27D915060;
  if (!qword_27D915060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915060);
  }

  return result;
}

unint64_t sub_22C189D84()
{
  result = qword_27D915068;
  if (!qword_27D915068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915068);
  }

  return result;
}

unint64_t sub_22C189DDC()
{
  result = qword_27D915070;
  if (!qword_27D915070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915070);
  }

  return result;
}

unint64_t sub_22C189E34()
{
  result = qword_27D915078;
  if (!qword_27D915078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915078);
  }

  return result;
}

unint64_t sub_22C189E8C()
{
  result = qword_27D915080;
  if (!qword_27D915080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915080);
  }

  return result;
}

unint64_t sub_22C189EE4()
{
  result = qword_27D915088;
  if (!qword_27D915088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915088);
  }

  return result;
}

unint64_t sub_22C189F3C()
{
  result = qword_27D915090;
  if (!qword_27D915090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915090);
  }

  return result;
}

unint64_t sub_22C189F94()
{
  result = qword_27D915098;
  if (!qword_27D915098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915098);
  }

  return result;
}

unint64_t sub_22C189FEC()
{
  result = qword_27D9150A0;
  if (!qword_27D9150A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150A0);
  }

  return result;
}

unint64_t sub_22C18A044()
{
  result = qword_27D9150A8;
  if (!qword_27D9150A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150A8);
  }

  return result;
}

unint64_t sub_22C18A09C()
{
  result = qword_27D9150B0;
  if (!qword_27D9150B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150B0);
  }

  return result;
}

unint64_t sub_22C18A0F4()
{
  result = qword_27D9150B8;
  if (!qword_27D9150B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150B8);
  }

  return result;
}

unint64_t sub_22C18A14C()
{
  result = qword_27D9150C0;
  if (!qword_27D9150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150C0);
  }

  return result;
}

unint64_t sub_22C18A1A4()
{
  result = qword_27D9150C8;
  if (!qword_27D9150C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150C8);
  }

  return result;
}

unint64_t sub_22C18A1FC()
{
  result = qword_27D9150D0;
  if (!qword_27D9150D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150D0);
  }

  return result;
}

unint64_t sub_22C18A254()
{
  result = qword_27D9150D8;
  if (!qword_27D9150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150D8);
  }

  return result;
}

unint64_t sub_22C18A2AC()
{
  result = qword_27D9150E0;
  if (!qword_27D9150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150E0);
  }

  return result;
}

unint64_t sub_22C18A304()
{
  result = qword_27D9150E8;
  if (!qword_27D9150E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150E8);
  }

  return result;
}

unint64_t sub_22C18A35C()
{
  result = qword_27D9150F0;
  if (!qword_27D9150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150F0);
  }

  return result;
}

unint64_t sub_22C18A3B4()
{
  result = qword_27D9150F8;
  if (!qword_27D9150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9150F8);
  }

  return result;
}

unint64_t sub_22C18A40C()
{
  result = qword_27D915100;
  if (!qword_27D915100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915100);
  }

  return result;
}

unint64_t sub_22C18A464()
{
  result = qword_28107C638;
  if (!qword_28107C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C638);
  }

  return result;
}

unint64_t sub_22C18A4BC()
{
  result = qword_28107C640;
  if (!qword_28107C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C640);
  }

  return result;
}

unint64_t sub_22C18A514()
{
  result = qword_27D915108;
  if (!qword_27D915108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915108);
  }

  return result;
}

unint64_t sub_22C18A56C()
{
  result = qword_27D915110;
  if (!qword_27D915110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915110);
  }

  return result;
}

unint64_t sub_22C18A5C4()
{
  result = qword_28107C4E0;
  if (!qword_28107C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4E0);
  }

  return result;
}

unint64_t sub_22C18A61C()
{
  result = qword_28107C4E8;
  if (!qword_28107C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4E8);
  }

  return result;
}

unint64_t sub_22C18A674()
{
  result = qword_28107C4C8;
  if (!qword_28107C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4C8);
  }

  return result;
}

unint64_t sub_22C18A6CC()
{
  result = qword_28107C4D0;
  if (!qword_28107C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4D0);
  }

  return result;
}

unint64_t sub_22C18A724()
{
  result = qword_28107C4B8;
  if (!qword_28107C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4B8);
  }

  return result;
}

unint64_t sub_22C18A77C()
{
  result = qword_28107C4C0;
  if (!qword_28107C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4C0);
  }

  return result;
}

unint64_t sub_22C18A7D4()
{
  result = qword_28107C2B8;
  if (!qword_28107C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C2B8);
  }

  return result;
}

unint64_t sub_22C18A82C()
{
  result = qword_28107C2C0[0];
  if (!qword_28107C2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C2C0);
  }

  return result;
}

unint64_t sub_22C18A884()
{
  result = qword_28107C4F0;
  if (!qword_28107C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4F0);
  }

  return result;
}

unint64_t sub_22C18A8DC()
{
  result = qword_28107C4F8;
  if (!qword_28107C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4F8);
  }

  return result;
}

unint64_t sub_22C18A934()
{
  result = qword_27D915118;
  if (!qword_27D915118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915118);
  }

  return result;
}

unint64_t sub_22C18A98C()
{
  result = qword_27D915120;
  if (!qword_27D915120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915120);
  }

  return result;
}

unint64_t sub_22C18A9E4()
{
  result = qword_27D915128;
  if (!qword_27D915128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915128);
  }

  return result;
}

unint64_t sub_22C18AA3C()
{
  result = qword_27D915130;
  if (!qword_27D915130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915130);
  }

  return result;
}

unint64_t sub_22C18AA94()
{
  result = qword_27D915138;
  if (!qword_27D915138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915138);
  }

  return result;
}

unint64_t sub_22C18AAEC()
{
  result = qword_27D915140;
  if (!qword_27D915140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915140);
  }

  return result;
}

unint64_t sub_22C18AB44()
{
  result = qword_27D915148;
  if (!qword_27D915148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915148);
  }

  return result;
}

unint64_t sub_22C18AB9C()
{
  result = qword_27D915150;
  if (!qword_27D915150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915150);
  }

  return result;
}

unint64_t sub_22C18ABF4()
{
  result = qword_27D915158;
  if (!qword_27D915158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915158);
  }

  return result;
}

unint64_t sub_22C18AC4C()
{
  result = qword_27D915160;
  if (!qword_27D915160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915160);
  }

  return result;
}

unint64_t sub_22C18ACA4()
{
  result = qword_27D915168;
  if (!qword_27D915168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915168);
  }

  return result;
}

unint64_t sub_22C18ACFC()
{
  result = qword_27D915170;
  if (!qword_27D915170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915170);
  }

  return result;
}

unint64_t sub_22C18AD54()
{
  result = qword_27D915178;
  if (!qword_27D915178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915178);
  }

  return result;
}

unint64_t sub_22C18ADAC()
{
  result = qword_27D915180;
  if (!qword_27D915180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915180);
  }

  return result;
}

unint64_t sub_22C18AE04()
{
  result = qword_27D915188;
  if (!qword_27D915188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915188);
  }

  return result;
}

unint64_t sub_22C18AE5C()
{
  result = qword_27D915190;
  if (!qword_27D915190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915190);
  }

  return result;
}

unint64_t sub_22C18AEB4()
{
  result = qword_28107CC98;
  if (!qword_28107CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CC98);
  }

  return result;
}

unint64_t sub_22C18AF0C()
{
  result = qword_28107CCA0;
  if (!qword_28107CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CCA0);
  }

  return result;
}

unint64_t sub_22C18AF64()
{
  result = qword_27D915198;
  if (!qword_27D915198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915198);
  }

  return result;
}

unint64_t sub_22C18AFBC()
{
  result = qword_27D9151A0;
  if (!qword_27D9151A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151A0);
  }

  return result;
}

unint64_t sub_22C18B014()
{
  result = qword_27D9151A8;
  if (!qword_27D9151A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151A8);
  }

  return result;
}

unint64_t sub_22C18B06C()
{
  result = qword_27D9151B0;
  if (!qword_27D9151B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151B0);
  }

  return result;
}

unint64_t sub_22C18B0C4()
{
  result = qword_27D9151B8;
  if (!qword_27D9151B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151B8);
  }

  return result;
}

unint64_t sub_22C18B11C()
{
  result = qword_27D9151C0;
  if (!qword_27D9151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151C0);
  }

  return result;
}

unint64_t sub_22C18B174()
{
  result = qword_27D9151C8;
  if (!qword_27D9151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151C8);
  }

  return result;
}

unint64_t sub_22C18B1CC()
{
  result = qword_27D9151D0;
  if (!qword_27D9151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151D0);
  }

  return result;
}

unint64_t sub_22C18B224()
{
  result = qword_27D9151D8;
  if (!qword_27D9151D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151D8);
  }

  return result;
}

unint64_t sub_22C18B27C()
{
  result = qword_27D9151E0;
  if (!qword_27D9151E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151E0);
  }

  return result;
}

unint64_t sub_22C18B2D4()
{
  result = qword_27D9151E8;
  if (!qword_27D9151E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151E8);
  }

  return result;
}

unint64_t sub_22C18B32C()
{
  result = qword_27D9151F0;
  if (!qword_27D9151F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151F0);
  }

  return result;
}

unint64_t sub_22C18B384()
{
  result = qword_27D9151F8;
  if (!qword_27D9151F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9151F8);
  }

  return result;
}

unint64_t sub_22C18B3DC()
{
  result = qword_27D915200;
  if (!qword_27D915200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915200);
  }

  return result;
}

unint64_t sub_22C18B434()
{
  result = qword_27D915208;
  if (!qword_27D915208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915208);
  }

  return result;
}

unint64_t sub_22C18B48C()
{
  result = qword_27D915210;
  if (!qword_27D915210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915210);
  }

  return result;
}

unint64_t sub_22C18B4E4()
{
  result = qword_27D915218;
  if (!qword_27D915218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915218);
  }

  return result;
}

unint64_t sub_22C18B53C()
{
  result = qword_27D915220;
  if (!qword_27D915220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915220);
  }

  return result;
}

unint64_t sub_22C18B594()
{
  result = qword_27D915228;
  if (!qword_27D915228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915228);
  }

  return result;
}

unint64_t sub_22C18B5EC()
{
  result = qword_27D915230;
  if (!qword_27D915230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915230);
  }

  return result;
}

unint64_t sub_22C18B644()
{
  result = qword_27D915238;
  if (!qword_27D915238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915238);
  }

  return result;
}

unint64_t sub_22C18B69C()
{
  result = qword_27D915240;
  if (!qword_27D915240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915240);
  }

  return result;
}

unint64_t sub_22C18B6F4()
{
  result = qword_27D915248;
  if (!qword_27D915248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915248);
  }

  return result;
}

unint64_t sub_22C18B74C()
{
  result = qword_27D915250;
  if (!qword_27D915250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915250);
  }

  return result;
}

unint64_t sub_22C18B7A4()
{
  result = qword_28106E940;
  if (!qword_28106E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E940);
  }

  return result;
}

unint64_t sub_22C18B7FC()
{
  result = qword_28106E948;
  if (!qword_28106E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E948);
  }

  return result;
}

unint64_t sub_22C18B854()
{
  result = qword_28106E910;
  if (!qword_28106E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E910);
  }

  return result;
}

unint64_t sub_22C18B8AC()
{
  result = qword_28106E918;
  if (!qword_28106E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E918);
  }

  return result;
}

unint64_t sub_22C18B904()
{
  result = qword_28106E800;
  if (!qword_28106E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E800);
  }

  return result;
}

unint64_t sub_22C18B95C()
{
  result = qword_28106E808;
  if (!qword_28106E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E808);
  }

  return result;
}

unint64_t sub_22C18B9B4()
{
  result = qword_28106E750;
  if (!qword_28106E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E750);
  }

  return result;
}

unint64_t sub_22C18BA0C()
{
  result = qword_28106E758;
  if (!qword_28106E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E758);
  }

  return result;
}

unint64_t sub_22C18BA64()
{
  result = qword_28106E8E8;
  if (!qword_28106E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8E8);
  }

  return result;
}

unint64_t sub_22C18BABC()
{
  result = qword_28106E8F0;
  if (!qword_28106E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8F0);
  }

  return result;
}

unint64_t sub_22C18BB14()
{
  result = qword_28106E8B0;
  if (!qword_28106E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8B0);
  }

  return result;
}

unint64_t sub_22C18BB6C()
{
  result = qword_28106E8B8;
  if (!qword_28106E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8B8);
  }

  return result;
}

unint64_t sub_22C18BBC4()
{
  result = qword_28106E890;
  if (!qword_28106E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E890);
  }

  return result;
}

unint64_t sub_22C18BC1C()
{
  result = qword_28106E898;
  if (!qword_28106E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E898);
  }

  return result;
}

unint64_t sub_22C18BC74()
{
  result = qword_28106E860;
  if (!qword_28106E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E860);
  }

  return result;
}

unint64_t sub_22C18BCCC()
{
  result = qword_28106E868;
  if (!qword_28106E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E868);
  }

  return result;
}

unint64_t sub_22C18BD24()
{
  result = qword_28106E770;
  if (!qword_28106E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E770);
  }

  return result;
}

unint64_t sub_22C18BD7C()
{
  result = qword_28106E778;
  if (!qword_28106E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E778);
  }

  return result;
}

unint64_t sub_22C18BDD4()
{
  result = qword_28106E850;
  if (!qword_28106E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E850);
  }

  return result;
}

unint64_t sub_22C18BE2C()
{
  result = qword_28106E858;
  if (!qword_28106E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E858);
  }

  return result;
}

unint64_t sub_22C18BE84()
{
  result = qword_28106E8A0;
  if (!qword_28106E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8A0);
  }

  return result;
}

unint64_t sub_22C18BEDC()
{
  result = qword_28106E8A8;
  if (!qword_28106E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8A8);
  }

  return result;
}

unint64_t sub_22C18BF34()
{
  result = qword_28106E7D0;
  if (!qword_28106E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7D0);
  }

  return result;
}

unint64_t sub_22C18BF8C()
{
  result = qword_28106E7D8;
  if (!qword_28106E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7D8);
  }

  return result;
}

unint64_t sub_22C18BFE4()
{
  result = qword_28106E880;
  if (!qword_28106E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E880);
  }

  return result;
}

unint64_t sub_22C18C03C()
{
  result = qword_28106E888;
  if (!qword_28106E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E888);
  }

  return result;
}

unint64_t sub_22C18C094()
{
  result = qword_28106E8D8;
  if (!qword_28106E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8D8);
  }

  return result;
}

unint64_t sub_22C18C0EC()
{
  result = qword_28106E8E0;
  if (!qword_28106E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8E0);
  }

  return result;
}

unint64_t sub_22C18C144()
{
  result = qword_28106E8C0;
  if (!qword_28106E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8C0);
  }

  return result;
}

unint64_t sub_22C18C19C()
{
  result = qword_28106E8C8;
  if (!qword_28106E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8C8);
  }

  return result;
}

unint64_t sub_22C18C1F4()
{
  result = qword_28106E820;
  if (!qword_28106E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E820);
  }

  return result;
}

unint64_t sub_22C18C24C()
{
  result = qword_28106E828;
  if (!qword_28106E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E828);
  }

  return result;
}

unint64_t sub_22C18C2A4()
{
  result = qword_28106E680;
  if (!qword_28106E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E680);
  }

  return result;
}

unint64_t sub_22C18C2FC()
{
  result = qword_28106E688;
  if (!qword_28106E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E688);
  }

  return result;
}

unint64_t sub_22C18C354()
{
  result = qword_28106E670;
  if (!qword_28106E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E670);
  }

  return result;
}

unint64_t sub_22C18C3AC()
{
  result = qword_28106E678;
  if (!qword_28106E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E678);
  }

  return result;
}

unint64_t sub_22C18C404()
{
  result = qword_28106E790;
  if (!qword_28106E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E790);
  }

  return result;
}

unint64_t sub_22C18C45C()
{
  result = qword_28106E798;
  if (!qword_28106E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E798);
  }

  return result;
}

unint64_t sub_22C18C4B4()
{
  result = qword_28106E760;
  if (!qword_28106E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E760);
  }

  return result;
}

unint64_t sub_22C18C50C()
{
  result = qword_28106E768;
  if (!qword_28106E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E768);
  }

  return result;
}

unint64_t sub_22C18C564()
{
  result = qword_28106E7F0;
  if (!qword_28106E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7F0);
  }

  return result;
}

unint64_t sub_22C18C5BC()
{
  result = qword_28106E7F8;
  if (!qword_28106E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7F8);
  }

  return result;
}

unint64_t sub_22C18C614()
{
  result = qword_28106E830;
  if (!qword_28106E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E830);
  }

  return result;
}

unint64_t sub_22C18C66C()
{
  result = qword_28106E838;
  if (!qword_28106E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E838);
  }

  return result;
}

unint64_t sub_22C18C6C4()
{
  result = qword_28106E7A0;
  if (!qword_28106E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7A0);
  }

  return result;
}

unint64_t sub_22C18C71C()
{
  result = qword_28106E7A8;
  if (!qword_28106E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7A8);
  }

  return result;
}

unint64_t sub_22C18C774()
{
  result = qword_28106E6A0;
  if (!qword_28106E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6A0);
  }

  return result;
}

unint64_t sub_22C18C7CC()
{
  result = qword_28106E6A8;
  if (!qword_28106E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6A8);
  }

  return result;
}

unint64_t sub_22C18C824()
{
  result = qword_28106E780;
  if (!qword_28106E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E780);
  }

  return result;
}

unint64_t sub_22C18C87C()
{
  result = qword_28106E788;
  if (!qword_28106E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E788);
  }

  return result;
}

unint64_t sub_22C18C8D4()
{
  result = qword_28106E710;
  if (!qword_28106E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E710);
  }

  return result;
}

unint64_t sub_22C18C92C()
{
  result = qword_28106E718;
  if (!qword_28106E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E718);
  }

  return result;
}

unint64_t sub_22C18C984()
{
  result = qword_28106E728;
  if (!qword_28106E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E728);
  }

  return result;
}

unint64_t sub_22C18C9DC()
{
  result = qword_28106E730;
  if (!qword_28106E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E730);
  }

  return result;
}

unint64_t sub_22C18CA34()
{
  result = qword_28106E650;
  if (!qword_28106E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E650);
  }

  return result;
}

unint64_t sub_22C18CA8C()
{
  result = qword_28106E658;
  if (!qword_28106E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E658);
  }

  return result;
}

unint64_t sub_22C18CAE4()
{
  result = qword_28106E840;
  if (!qword_28106E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E840);
  }

  return result;
}

unint64_t sub_22C18CB3C()
{
  result = qword_28106E848;
  if (!qword_28106E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E848);
  }

  return result;
}

unint64_t sub_22C18CB94()
{
  result = qword_28106E810;
  if (!qword_28106E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E810);
  }

  return result;
}

unint64_t sub_22C18CBEC()
{
  result = qword_28106E818;
  if (!qword_28106E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E818);
  }

  return result;
}

unint64_t sub_22C18CC44()
{
  result = qword_28106E6E0;
  if (!qword_28106E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6E0);
  }

  return result;
}

unint64_t sub_22C18CC9C()
{
  result = qword_28106E6E8;
  if (!qword_28106E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6E8);
  }

  return result;
}

unint64_t sub_22C18CCF4()
{
  result = qword_28106E6C0;
  if (!qword_28106E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6C0);
  }

  return result;
}

unint64_t sub_22C18CD4C()
{
  result = qword_28106E6C8;
  if (!qword_28106E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6C8);
  }

  return result;
}

unint64_t sub_22C18CDA4()
{
  result = qword_28106E6F0;
  if (!qword_28106E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6F0);
  }

  return result;
}

unint64_t sub_22C18CDFC()
{
  result = qword_28106E6F8;
  if (!qword_28106E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6F8);
  }

  return result;
}

unint64_t sub_22C18CE54()
{
  result = qword_28106E6D0;
  if (!qword_28106E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6D0);
  }

  return result;
}

unint64_t sub_22C18CEAC()
{
  result = qword_28106E6D8;
  if (!qword_28106E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6D8);
  }

  return result;
}

unint64_t sub_22C18CF04()
{
  result = qword_28106E7E0;
  if (!qword_28106E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7E0);
  }

  return result;
}

unint64_t sub_22C18CF5C()
{
  result = qword_28106E7E8;
  if (!qword_28106E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7E8);
  }

  return result;
}

unint64_t sub_22C18CFB4()
{
  result = qword_28106E928;
  if (!qword_28106E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E928);
  }

  return result;
}

unint64_t sub_22C18D00C()
{
  result = qword_28106E930;
  if (!qword_28106E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E930);
  }

  return result;
}

unint64_t sub_22C18D064()
{
  result = qword_28106E870;
  if (!qword_28106E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E870);
  }

  return result;
}

unint64_t sub_22C18D0BC()
{
  result = qword_28106E878;
  if (!qword_28106E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E878);
  }

  return result;
}

unint64_t sub_22C18D114()
{
  result = qword_28106E640;
  if (!qword_28106E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E640);
  }

  return result;
}

unint64_t sub_22C18D16C()
{
  result = qword_28106E648;
  if (!qword_28106E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E648);
  }

  return result;
}

unint64_t sub_22C18D1C4()
{
  result = qword_28106E7C0;
  if (!qword_28106E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7C0);
  }

  return result;
}

unint64_t sub_22C18D21C()
{
  result = qword_28106E7C8;
  if (!qword_28106E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7C8);
  }

  return result;
}

unint64_t sub_22C18D274()
{
  result = qword_28106E700;
  if (!qword_28106E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E700);
  }

  return result;
}

unint64_t sub_22C18D2CC()
{
  result = qword_28106E708;
  if (!qword_28106E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E708);
  }

  return result;
}

unint64_t sub_22C18D324()
{
  result = qword_28106E6B0;
  if (!qword_28106E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6B0);
  }

  return result;
}

unint64_t sub_22C18D37C()
{
  result = qword_28106E6B8;
  if (!qword_28106E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E6B8);
  }

  return result;
}

unint64_t sub_22C18D3D4()
{
  result = qword_28106E7B0;
  if (!qword_28106E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7B0);
  }

  return result;
}

unint64_t sub_22C18D42C()
{
  result = qword_28106E7B8;
  if (!qword_28106E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E7B8);
  }

  return result;
}

unint64_t sub_22C18D484()
{
  result = qword_28106E690;
  if (!qword_28106E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E690);
  }

  return result;
}

unint64_t sub_22C18D4DC()
{
  result = qword_28106E698;
  if (!qword_28106E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E698);
  }

  return result;
}

unint64_t sub_22C18D534()
{
  result = qword_28106E660;
  if (!qword_28106E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E660);
  }

  return result;
}

unint64_t sub_22C18D58C()
{
  result = qword_28106E668;
  if (!qword_28106E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E668);
  }

  return result;
}

unint64_t sub_22C18D5E4()
{
  result = qword_28106E740;
  if (!qword_28106E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E740);
  }

  return result;
}

unint64_t sub_22C18D63C()
{
  result = qword_28106E748;
  if (!qword_28106E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E748);
  }

  return result;
}

unint64_t sub_22C18D694()
{
  result = qword_28106E8F8;
  if (!qword_28106E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8F8);
  }

  return result;
}

unint64_t sub_22C18D6EC()
{
  result = qword_28106E900;
  if (!qword_28106E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E900);
  }

  return result;
}

unint64_t sub_22C18D744()
{
  result = qword_27D915258;
  if (!qword_27D915258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915258);
  }

  return result;
}

unint64_t sub_22C18D79C()
{
  result = qword_27D915260;
  if (!qword_27D915260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915260);
  }

  return result;
}

unint64_t sub_22C18D7F4()
{
  result = qword_27D915268;
  if (!qword_27D915268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915268);
  }

  return result;
}

unint64_t sub_22C18D84C()
{
  result = qword_27D915270;
  if (!qword_27D915270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915270);
  }

  return result;
}

unint64_t sub_22C18D8A4()
{
  result = qword_27D915278;
  if (!qword_27D915278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915278);
  }

  return result;
}

unint64_t sub_22C18D8FC()
{
  result = qword_27D915280;
  if (!qword_27D915280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915280);
  }

  return result;
}

unint64_t sub_22C18D954()
{
  result = qword_27D915288;
  if (!qword_27D915288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915288);
  }

  return result;
}

unint64_t sub_22C18D9AC()
{
  result = qword_27D915290;
  if (!qword_27D915290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915290);
  }

  return result;
}

unint64_t sub_22C18DA04()
{
  result = qword_27D915298;
  if (!qword_27D915298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915298);
  }

  return result;
}

unint64_t sub_22C18DA5C()
{
  result = qword_27D9152A0;
  if (!qword_27D9152A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152A0);
  }

  return result;
}

unint64_t sub_22C18DAB4()
{
  result = qword_27D9152A8;
  if (!qword_27D9152A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152A8);
  }

  return result;
}

unint64_t sub_22C18DB0C()
{
  result = qword_27D9152B0;
  if (!qword_27D9152B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152B0);
  }

  return result;
}

unint64_t sub_22C18DB60()
{
  result = qword_27D9152B8;
  if (!qword_27D9152B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152B8);
  }

  return result;
}

unint64_t sub_22C18DBB4()
{
  result = qword_27D9152C0;
  if (!qword_27D9152C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152C0);
  }

  return result;
}

unint64_t sub_22C18DC08()
{
  result = qword_27D9152C8;
  if (!qword_27D9152C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152C8);
  }

  return result;
}

uint64_t sub_22C18DC5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE34074(a1, a2);
  v5 = sub_22BE5CE4C(v3, v4);
  sub_22BE18000(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_22C18E018@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 184);

  return sub_22C273DE4();
}

uint64_t sub_22C18E100()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

unint64_t sub_22C18E158(uint64_t a1)
{

  return sub_22BE48F64(a1);
}

uint64_t sub_22C18E1A0@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_22C18E1B4()
{
  v2 = *(v0 - 184);

  return sub_22C273DE4();
}

uint64_t sub_22C18E3E8()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t sub_22C18E438()
{

  return sub_22C171FFC();
}

__n128 sub_22C18E524@<Q0>(uint64_t a1@<X8>)
{
  v5 = *(v3 - 256);
  *v5 = a1;
  *(v5 + 8) = v1;
  *(v5 + 16) = v2;
  result = *(v4 - 120);
  *(v5 + 24) = result;
  return result;
}

uint64_t sub_22C18E5EC()
{
  v2 = *(v0 - 160);

  return sub_22C273DE4();
}

uint64_t sub_22C18E624()
{
  v2 = *(v0 - 88);

  return sub_22C273EB4();
}

uint64_t sub_22C18E658()
{
  v2 = *(v0 + 616);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C18E674(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v1 = *(v2 - 96);

  return sub_22C273DF4();
}

uint64_t sub_22C18E6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 240);

  return sub_22C273FA4();
}

uint64_t sub_22C18E6E0()
{
  v3 = *(v1 + 32);
  result = v0;
  *(v2 - 160) = v0;
  v5 = *(v2 - 96);
  return result;
}

uint64_t sub_22C18E70C(uint64_t result)
{
  *(v2 - 66) = *(v1 + *(result + 20));
  *(v2 - 67) = 1;
  return result;
}

uint64_t sub_22C18E788()
{
  v2 = *(v0 - 152);

  return sub_22C273EB4();
}

uint64_t sub_22C18E850@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 112) = a1;
  return 0;
}

uint64_t sub_22C18E870()
{

  return sub_22C273DE4();
}

uint64_t sub_22C18E8AC@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  *v1 = v5;
  *(v1 + 8) = v6;
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = v4;
}

uint64_t sub_22C18E944()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_22C18E954()
{
  v3 = *(v2 - 240);
  *(v2 - 96) = v0;
  return v1;
}

uint64_t sub_22C18E9C8(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  return 0;
}

uint64_t sub_22C18E9E0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 96);
  return result;
}