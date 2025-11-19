uint64_t sub_25DD556DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD57530(v5, v17, type metadata accessor for MultipartParser.StateMachine.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      if (a1)
      {
        return 4;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (result)
    {
      v19 = *v17;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
      v21 = *(v20 + 48);
      v24 = v19;
      sub_25DD55A38(v17 + v21, v13);
      if (a1)
      {
        swift_unknownObjectRetain();
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        swift_storeEnumTagMultiPayload();
        sub_25DD2EBA0(a1, a2, a3, a4);
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        v22 = *(v20 + 48);
        *v5 = v24;
        sub_25DD55A38(v13, v5 + v22);
        goto LABEL_11;
      }

      sub_25DD55A9C(v13, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    }

    else
    {
      v24 = *v17;
      if (a1)
      {
        swift_unknownObjectRetain();
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        swift_storeEnumTagMultiPayload();
        sub_25DD2EBA0(a1, a2, a3, a4);
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        *v5 = v24;
LABEL_11:
        swift_storeEnumTagMultiPayload();
        return 6;
      }
    }

    return 5;
  }

  return result;
}

unint64_t sub_25DD559E4()
{
  result = qword_27FCC2628;
  if (!qword_27FCC2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2628);
  }

  return result;
}

uint64_t sub_25DD55A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD55A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25DD55AFC(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 == 4)
  {
    v1 = 0xD000000000000026;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = v1;
  }

  v3 = 0xD00000000000002ALL;
  if (a1 == 1)
  {
    v3 = 0xD00000000000002CLL;
  }

  if (!a1)
  {
    v3 = 0xD000000000000019;
  }

  if (a1 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25DD55BA4()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000026;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD00000000000002ALL;
  if (v1 == 1)
  {
    v4 = 0xD00000000000002CLL;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25DD55C50()
{
  v1 = sub_25DD96814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD57530(v0, v9, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return MEMORY[0x25F8A3F90](1);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x25F8A3F90](0);
  sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25DD55E20()
{
  v1 = v0;
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD97964();
  sub_25DD57530(v1, v10, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x25F8A3F90](1);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x25F8A3F90](0);
    sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
    sub_25DD96AC4();
    (*(v3 + 8))(v6, v2);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD56010(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD57530(v2, v12, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x25F8A3F90](1);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x25F8A3F90](0);
  sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_25DD561DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_25DD96814();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD97964();
  sub_25DD57530(v4, v13, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x25F8A3F90](1);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x25F8A3F90](0);
    sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
    sub_25DD96AC4();
    (*(v6 + 8))(v10, v5);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD563D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD56430()
{
  v1 = sub_25DD96814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD57530(v0, v16, type metadata accessor for MultipartParser.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    return MEMORY[0x25F8A3F90](v23);
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = *v16;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
    sub_25DD55A38(v16 + *(v25 + 48), v12);
    MEMORY[0x25F8A3F90](1);
    MEMORY[0x25F8A3F90](*(v24 + 16));
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = (v24 + 32);
      do
      {
        v28 = *v27++;
        sub_25DD97984();
        --v26;
      }

      while (v26);
    }

    sub_25DD57530(v12, v10, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    if ((*(v2 + 48))(v10, 1, v1) == 1)
    {
      MEMORY[0x25F8A3F90](1);
    }

    else
    {
      (*(v2 + 32))(v5, v10, v1);
      MEMORY[0x25F8A3F90](0);
      sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
      sub_25DD96AC4();
      (*(v2 + 8))(v5, v1);
    }

    return sub_25DD55A9C(v12, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  }

  else
  {
    v18 = *v16;
    MEMORY[0x25F8A3F90](0);
    MEMORY[0x25F8A3F90](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = 32;
      do
      {
        v21 = *(v18 + v20);
        sub_25DD97984();
        ++v20;
        --v19;
      }

      while (v19);
    }
  }
}

uint64_t sub_25DD56848(unsigned __int8 a1)
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD56894()
{
  v1 = sub_25DD96814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextPartAction = type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
  v7 = *(*(NextPartAction - 8) + 64);
  MEMORY[0x28223BE20](NextPartAction);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD57530(v0, v9, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = 2;
    }

    else
    {
      v12 = 5;
    }

    return MEMORY[0x25F8A3F90](v12);
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *v9;
    MEMORY[0x25F8A3F90](1);
    v12 = v13;
    return MEMORY[0x25F8A3F90](v12);
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x25F8A3F90](3);
    sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
    sub_25DD96AC4();
    return (*(v2 + 8))(v5, v1);
  }

  v14 = *v9;
  v15 = v9[1];
  v17 = v9[2];
  v16 = v9[3];
  MEMORY[0x25F8A3F90](4);
  v18 = v16 >> 1;
  result = v18 - v17;
  if (__OFSUB__(v18, v17))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x25F8A3F90](result);
    v19 = __OFSUB__(v18, v17);
    v20 = v18 - v17;
    if (!v20)
    {
      return swift_unknownObjectRelease();
    }

    if (!((v20 < 0) ^ v19 | (v20 == 0)))
    {
      v21 = (v15 + v17);
      do
      {
        v22 = *v21++;
        sub_25DD97984();
        --v20;
      }

      while (v20);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD56B0C(void (*a1)(_BYTE *))
{
  sub_25DD97964();
  a1(v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD56B6C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_25DD97964();
  a3(v5);
  return sub_25DD979A4();
}

uint64_t sub_25DD56BD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_25DD97964();
  a4(v6);
  return sub_25DD979A4();
}

BOOL sub_25DD56C14(char a1, char a2)
{
  if (a1 == 7)
  {
    return a2 == 7;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if ((a2 & 0xFE) == 6)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_25DD56C6C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 6)
  {
    v2 = 0;
  }

  else if (a2 == 7)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
    v2 = a2;
  }

  return MEMORY[0x25F8A3F90](v2);
}

uint64_t sub_25DD56CC4(unsigned __int8 a1)
{
  sub_25DD97964();
  if (a1 == 6)
  {
    v2 = 0;
  }

  else if (a1 == 7)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
    v2 = a1;
  }

  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

uint64_t sub_25DD56D3C()
{
  v1 = *v0;
  sub_25DD97964();
  if (v1 == 6)
  {
    v1 = 0;
  }

  else if (v1 == 7)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD56DB0()
{
  v1 = *v0;
  if (v1 == 6)
  {
    v2 = 0;
  }

  else if (v1 == 7)
  {
    v2 = 1;
  }

  else
  {
    v3 = *v0;
    MEMORY[0x25F8A3F90](2);
    v2 = v3;
  }

  return MEMORY[0x25F8A3F90](v2);
}

uint64_t sub_25DD56E0C()
{
  v1 = *v0;
  sub_25DD97964();
  if (v1 == 6)
  {
    v1 = 0;
  }

  else if (v1 == 7)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

BOOL sub_25DD56E7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

void *sub_25DD56ED0(void *result)
{
  v1 = result[1];
  v2 = *result - v1;
  if (!__OFSUB__(*result, v1))
  {
    if (v2)
    {
      v3 = result;
      v4 = sub_25DD00E5C(*result - v1, 0);
      v5 = sub_25DD56F98(&v9, (v4 + 4), v2);
      sub_25DD59420(v3, v8);
      swift_unknownObjectRelease();
      if (v5 == v2)
      {
LABEL_6:
        v6 = v4[2];
        v7 = sub_25DD96B74();

        return v7;
      }

      __break(1u);
    }

    v4 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t *sub_25DD56F98(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  if (!a2)
  {
LABEL_21:
    a3 = 0;
LABEL_22:
    v11 = v5;
LABEL_23:
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v6;
    result[4] = v8;
    result[5] = v9;
    result[6] = v11;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      if (v4 - v5 == v10)
      {
        v11 = v4;
        a3 = v4 - v5;
        goto LABEL_23;
      }

      v11 = v5 + v10 + 1;
      if (__OFADD__(v5 + v10, 1))
      {
        break;
      }

      v12 = v5 + v10;
      if (v5 + v10 >= (v9 >> 1) || v4 < v11 || v5 >= v11 || v12 < v8)
      {
        goto LABEL_26;
      }

      *(a2 + v10) = *(v6 + v12);
      if (a3 - 1 == v10)
      {
        goto LABEL_23;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD57068(uint64_t result, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = ((v4 >> 1) - v3);
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_45;
  }

  v6 = *(result + 16);
  if (v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v7 = a2 + 1;
    v27 = result + 32;
    v8 = *(result + 32 + a2);
    v29 = v2;
    while (!__OFADD__(v5, 1))
    {
      v33 = sub_25DD30B6C(v5, v5 + 1, *v2, v2[1], v3, v4);
      v10 = sub_25DD30D20();
      sub_25DD30D3C(&v33, v5, 0, v10);

      v11 = v2[2];
      v4 = v2[3];
      v12 = (v4 >> 1) - v11;
      if (__OFSUB__(v4 >> 1, v11))
      {
        goto LABEL_39;
      }

      v28 = v4 >> 1;
      v31 = v2[1];
      v32 = v2[2];
      v30 = *v2;
      if (v4)
      {
        sub_25DD97744();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          v13 = MEMORY[0x277D84F90];
        }

        v14 = *(v13 + 16);
        v15 = v31;
        if (v31 + (v4 >> 1) == v13 + v14 + 32)
        {
          v17 = *(v13 + 24);

          v18 = (v17 >> 1) - v14;
          v16 = v12 + v18;
          if (__OFADD__(v12, v18))
          {
            goto LABEL_44;
          }
        }

        else
        {

          v16 = (v4 >> 1) - v11;
        }
      }

      else
      {
        v16 = (v4 >> 1) - v11;
        v15 = v2[1];
      }

      v19 = 0;
      if (v16 <= v5)
      {
        v20 = v5;
      }

      else
      {
        v20 = v16;
      }

      while (1)
      {
        v21 = v7 + v19;
        if (!(v5 + v19 - v20))
        {
          v7 += v19;
          v22 = v20 - v12;
          if (__OFSUB__(v20, v12))
          {
            goto LABEL_40;
          }

          goto LABEL_28;
        }

        *(v5 + v32 + v15 + v19) = v8;
        if (!(v7 - v6 + v19))
        {
          break;
        }

        if (v21 >= v6)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v8 = *(v27 + v7 + v19++);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_37;
        }
      }

      v8 = 0;
      v20 = v5 + v19 + 1;
      v7 = v6;
      v22 = v20 - v12;
      if (__OFSUB__(v20, v12))
      {
        goto LABEL_40;
      }

LABEL_28:
      if (v22)
      {
        sub_25DD97744();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = MEMORY[0x277D84F90];
        }

        v23 = *(result + 16);
        v24 = __OFADD__(v23, v22);
        v25 = v23 + v22;
        if (v24)
        {
          goto LABEL_41;
        }

        *(result + 16) = v25;

        v26 = v28 + v22;
        if (__OFADD__(v28, v22))
        {
          goto LABEL_42;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v4 = v4 & 1 | (2 * v26);
        v29[3] = v4;
      }

      v9 = v5 + v19;
      v5 = v20;
      v2 = v29;
      v3 = v32;
      if (v9 < v16)
      {
        return result;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_25DD57320(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  v8 = v1[1];
  sub_25DD97744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v3 + v4 != v9 + v10 + 32)
  {

LABEL_7:
    v11 = v4;
    goto LABEL_9;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v4, v13);
  v11 = v4 + v13;
  if (v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 < result)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 = 2 * v11;
    if (v15 > result)
    {
      result = v15;
    }
  }

  result = sub_25DD4639C(result);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_35;
  }

  v19 = (v1[1] + (v16 >> 1));
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v23 = v18;
    goto LABEL_22;
  }

  v20 = *v1;
  sub_25DD97744();
  swift_unknownObjectRetain();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);
  if (v19 != (v21 + v22 + 32))
  {

    goto LABEL_20;
  }

  v24 = *(v21 + 24);

  v25 = (v24 >> 1) - v22;
  v14 = __OFADD__(v18, v25);
  v23 = v18 + v25;
  if (v14)
  {
LABEL_41:
    __break(1u);
    return result;
  }

LABEL_22:
  v26 = v23 - v18;
  if (__OFSUB__(v23, v18))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  if (v26 < v6)
  {
    goto LABEL_37;
  }

  result = memcpy(v19, (v5 + 32), v6);
  if (v6 <= 0)
  {
    goto LABEL_28;
  }

  result = v18 + v6;
  if (__OFADD__(v18, v6))
  {
    goto LABEL_39;
  }

  result = sub_25DD462E4(result);
LABEL_28:
  if (v6 == v26)
  {

    return sub_25DD57068(v5, v6);
  }

  return result;
}

uint64_t sub_25DD57530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD57598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD575FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25DD57644(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26B8, "<J");
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_25DD57530(a1, &v23 - v16, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  sub_25DD57530(a2, &v17[v18], type metadata accessor for MultipartParser.StateMachine.State.PartState);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_25DD57530(v17, v12, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = MEMORY[0x25F8A2E10](v12, v8);
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_25DD55A9C(v17, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_25DD114CC(v17, &qword_27FCC26B8, "<J");
    v20 = 0;
    return v20 & 1;
  }

  sub_25DD55A9C(v17, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_25DD5792C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v32 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26B0, ":J");
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v32 - v21;
  v23 = (&v32 + *(v20 + 56) - v21);
  sub_25DD57530(a1, &v32 - v21, type metadata accessor for MultipartParser.StateMachine.State);
  sub_25DD57530(a2, v23, type metadata accessor for MultipartParser.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_16:
      sub_25DD114CC(v22, &qword_27FCC26B0, ":J");
      goto LABEL_17;
    }

    sub_25DD55A9C(v22, type metadata accessor for MultipartParser.StateMachine.State);
    v26 = 1;
    return v26 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_25DD57530(v22, v15, type metadata accessor for MultipartParser.StateMachine.State);
    v27 = *v15;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v23;
      sub_25DD55A38(v15 + v28, v10);
      sub_25DD55A38(v23 + v28, v8);
      v30 = sub_25DD563D4(v27, v29);

      if (v30)
      {
        v26 = sub_25DD57644(v10, v8);
        sub_25DD55A9C(v8, type metadata accessor for MultipartParser.StateMachine.State.PartState);
        sub_25DD55A9C(v10, type metadata accessor for MultipartParser.StateMachine.State.PartState);
        goto LABEL_11;
      }

      sub_25DD55A9C(v8, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v10, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v22, type metadata accessor for MultipartParser.StateMachine.State);
LABEL_17:
      v26 = 0;
      return v26 & 1;
    }

    sub_25DD55A9C(v15 + v28, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    goto LABEL_15;
  }

  sub_25DD57530(v22, v17, type metadata accessor for MultipartParser.StateMachine.State);
  v25 = *v17;
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_15:

    goto LABEL_16;
  }

  v26 = sub_25DD563D4(v25, *v23);

LABEL_11:
  sub_25DD55A9C(v22, type metadata accessor for MultipartParser.StateMachine.State);
  return v26 & 1;
}

uint64_t sub_25DD57D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextPartAction = type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
  v9 = *(*(NextPartAction - 8) + 64);
  v10 = MEMORY[0x28223BE20](NextPartAction);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26A8, "8J");
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v47 - v21;
  v23 = (&v47 + *(v20 + 56) - v21);
  sub_25DD57530(a1, &v47 - v21, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  sub_25DD57530(a2, v23, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_29;
        }

LABEL_32:
        sub_25DD114CC(v22, &qword_27FCC26A8, "8J");
LABEL_33:
        v28 = 0;
        return v28 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    sub_25DD55A9C(v22, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    v28 = 1;
    return v28 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25DD57530(v22, v17, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v17 == *v23;
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25DD57530(v22, v15, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v47;
      v26 = v23;
      v27 = v48;
      (*(v47 + 32))(v7, v26, v48);
      v28 = MEMORY[0x25F8A2E10](v15, v7);
      v29 = *(v25 + 8);
      v29(v7, v27);
      v29(v15, v27);
LABEL_12:
      sub_25DD55A9C(v22, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
      return v28 & 1;
    }

    (*(v47 + 8))(v15, v48);
    goto LABEL_32;
  }

  sub_25DD57530(v22, v12, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  v30 = *v12;
  v31 = v12[1];
  v32 = v12[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v34 = v12[3] >> 1;
  if (__OFSUB__(v34, v32))
  {
    __break(1u);
    goto LABEL_49;
  }

  v35 = v23[2];
  v36 = v23[3] >> 1;
  v37 = v36 - v35;
  if (__OFSUB__(v36, v35))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v38 = *v23;
  if (v34 - v32 != v37)
  {
    goto LABEL_47;
  }

  v39 = v31 + v32;
  v40 = v23[1] + v35;
  if (v34 == v32 || v39 == v40 || v32 == v34)
  {
LABEL_27:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  if (v32 < v34)
  {
    if (v35 != v36)
    {
      v43 = 0;
      if (v35 <= v36)
      {
        v44 = v23[3] >> 1;
      }

      else
      {
        v44 = v23[2];
      }

      v45 = v44 - v35;
      while (v45 != v43)
      {
        if (*(v39 + v43) != *(v40 + v43))
        {
          goto LABEL_47;
        }

        if (~v32 + v34 == v43)
        {
          goto LABEL_27;
        }

        v46 = v32 + v43 + 1;
        if (v46 < v32 || v46 >= v34)
        {
          goto LABEL_51;
        }

        if (v37 == ++v43)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_50;
    }

LABEL_47:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD55A9C(v22, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    goto LABEL_33;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_25DD582B8()
{
  result = qword_27FCC2678;
  if (!qword_27FCC2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2678);
  }

  return result;
}

unint64_t sub_25DD58358()
{
  result = qword_27FCC2688;
  if (!qword_27FCC2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2688);
  }

  return result;
}

uint64_t sub_25DD583AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD58424(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25DD58560(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_25DD58718(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for MultipartParser(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD587A0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_25DD96814() - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = v10 + ((v9 + 8) & ~v9);
  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v9 | 7;
  v15 = *(v6 + 64) + v14;
  if (v13 >= a2)
  {
    goto LABEL_32;
  }

  v16 = (v15 & ~v14) + (((((v12 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  if (v7 < 0x7FFFFFFF)
  {
    v26 = *((v12 + ((a1 + v15) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }
}

void sub_25DD589E4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_25DD96814() - 8);
  v11 = *(v10 + 80);
  if (*(v10 + 84))
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = *(v10 + 64) + 1;
  }

  v13 = v12 + ((v11 + 8) & ~v11);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v9;
  }

  v15 = v11 | 7;
  v16 = *(v8 + 64) + (v11 | 7);
  v17 = (v16 & ~v15) + (((((v13 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v16 & ~v15) + (((((v13 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == -32)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_22:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0x7FFFFFFF)
      {
        v25 = v13 + 1;
        v26 = ~v15;
        v27 = a1 + v16;
        v28 = (v27 & v26);
        if ((a2 & 0x80000000) != 0)
        {
          v29 = (((((v25 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8;
          if (v29 != -32)
          {
            bzero((v27 & v26), (v29 + 32));
            *v28 = a2 & 0x7FFFFFFF;
          }
        }

        else
        {
          *((v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
        }
      }

      else
      {
        v24 = *(v30 + 56);

        v24(a1, a2, v9, v7);
      }

      return;
    }
  }

  if ((v16 & ~v15) + (((((v13 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == -32)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if ((v16 & ~v15) + (((((v13 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != -32)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t sub_25DD58CBC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DD58D1C()
{
  result = type metadata accessor for MultipartParser.StateMachine(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25DD58DC8()
{
  type metadata accessor for MultipartParser.StateMachine.State(319);
  if (v0 <= 0x3F)
  {
    sub_25DD58F08(319, &qword_27FCC2690, MEMORY[0x277D83F98]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25DD58E78()
{
  sub_25DD58F08(319, &qword_27FCC2698, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25DD58F5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DD58F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84B78]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25DD58F5C()
{
  if (!qword_27FCC26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2500, &qword_25DD9CE70);
    type metadata accessor for MultipartParser.StateMachine.State.PartState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FCC26A0);
    }
  }
}

uint64_t sub_25DD59000()
{
  v0 = sub_25DD96814();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for URIEncodedNode.InsertionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for URIEncodedNode.InsertionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25DD591F8()
{
  sub_25DD96814();
  if (v0 <= 0x3F)
  {
    sub_25DD58F08(319, &qword_27FCC2690, MEMORY[0x277D83F98]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MultipartParser.StateMachine.ReceivedChunkAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultipartParser.StateMachine.ReceivedChunkAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25DD593EC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25DD59400(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_25DD59420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2660, qword_25DD9CE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD594A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for MultipartFramesToBytesSequence();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_25DD59548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v21 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_25DD96DF4();
  v17 = (v3 + *(a1 + 36));
  v18 = *v17;
  v19 = v17[1];
  swift_getAssociatedConformanceWitness();

  return sub_25DD596F0(v16, v18, v19, AssociatedTypeWitness, a2);
}

uint64_t sub_25DD596F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  (*(v10 + 16))(a5, a1, a4);
  v11 = sub_25DD3957C(a2, a3);

  v12 = (2 * *(v11 + 16)) | 1;
  (*(v10 + 8))(a1, a4);
  result = type metadata accessor for MultipartFramesToBytesSequence.Iterator();
  v14 = a5 + *(result + 52);
  *v14 = v11;
  *(v14 + 8) = v11 + 32;
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25DD59828@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_25DD3957C(a1, a2);

  v6 = (2 * *(v4 + 16)) | 1;
  *a3 = v4;
  *(a3 + 8) = v4 + 32;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0;
  *(a3 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25DD5988C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD598AC, 0, 0);
}

uint64_t sub_25DD598AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = *(v2 + 24);
  *(v3 + 40) = *(v2 + 40);
  *(v3 + 48) = v1;
  v4 = *(v2 + 52);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_25DD5998C;

  return sub_25DD59C30(&unk_25DD9D310, v3);
}

uint64_t sub_25DD5998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  v12 = *v5;
  *(*v5 + 48) = v4;

  if (v4)
  {

    return MEMORY[0x2822009F8](sub_25DD59B14, 0, 0);
  }

  else
  {
    v13 = *(v10 + 32);

    v14 = *(v12 + 8);

    return v14(a1, a2, a3, a4);
  }
}

uint64_t sub_25DD59B14()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_25DD59B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1BF14;

  return MEMORY[0x282200308](a1, a4, a6);
}

uint64_t sub_25DD59C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_25DD969E4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_25DD96A34();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_25DD96814();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v13 = type metadata accessor for MultipartSerializer.StateMachine.Event();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD59E4C, 0, 0);
}

uint64_t sub_25DD59E4C()
{
  v1 = v0[4];
  if (*(v1 + 32) > 2u)
  {
LABEL_4:
    v26 = (v0[2] + *v0[2]);
    v2 = *(v0[2] + 4);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_25DD5A068;
    v4 = v0[18];
    v5 = v0[3];

    return v26(v4);
  }

  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      goto LABEL_4;
    }

    v14 = 0;
    v16 = 0;
    v18 = 0;
  }

  else
  {
    *(v1 + 32) = 1;
    v7 = *sub_25DD0151C();

    sub_25DD5B050(v8);
    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    v13 = swift_unknownObjectRetain();
    sub_25DD2EBA0(v13, v10, v11, v12);
    v14 = sub_25DD5A9A8(v1);
    v16 = v15;
    v18 = v17;
  }

  v20 = v0[17];
  v19 = v0[18];
  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[10];
  v24 = v0[7];

  v25 = v0[1];

  return v25(v14, v16, 0, v18);
}

uint64_t sub_25DD5A068()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_25DD5A808;
  }

  else
  {
    v3 = sub_25DD5A17C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_25DD5A17C()
{
  v114 = v0;
  v1 = v0;
  v2 = v0[4] + 32;
  v3 = sub_25DD5AA5C(v0[18]);
  if (!v3)
  {
    sub_25DD114CC(v0[18], &qword_27FCC26C0, &qword_25DD9D320);
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_28:
    v91 = v1[17];
    v90 = v1[18];
    v93 = v1[13];
    v92 = v1[14];
    v94 = v1[10];
    v95 = v1[7];

    v96 = v1[1];

    v96(v13, v14, 0, v15);
    return;
  }

  v4 = v3;
  if (v3 == 1)
  {
    v5 = v1[18];
    sub_25DD5DB7C();
    swift_allocError();
    swift_willThrow();
    sub_25DD114CC(v5, &qword_27FCC26C0, &qword_25DD9D320);
    v7 = v1[17];
    v6 = v1[18];
    v9 = v1[13];
    v8 = v1[14];
    v10 = v1[10];
    v11 = v1[7];

    v12 = v1[1];

    v12();
    return;
  }

  v16 = *(v3 + 16);
  v112 = v1;
  if (!v16)
  {
LABEL_27:
    v86 = v112[18];
    v87 = v112[4];
    sub_25DD2D9AC(v4);
    v13 = sub_25DD5A9A8(v87);
    v14 = v88;
    v15 = v89;
    v1 = v112;
    sub_25DD114CC(v86, &qword_27FCC26C0, &qword_25DD9D320);
    goto LABEL_28;
  }

  v17 = 0;
  v18 = v1[16];
  v104 = v1[17];
  v19 = v1[12];
  v20 = v1[4];
  v106 = v3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v102 = (v19 + 16);
  v103 = (v19 + 32);
  v97 = v1[9];
  v99 = (v19 + 8);
  v21 = v1[20];
  v111 = v20;
  v98 = v3;
  v100 = v18;
  v101 = *(v3 + 16);
  v107 = (v1[6] + 8);
  while (1)
  {
    if (v17 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v29 = v1[15];
    sub_25DD5DBD0(v106 + *(v18 + 72) * v17, v1[17]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v31 = v1[4];
        v32 = *sub_25DD0151C();

        sub_25DD5B050(v33);
        v34 = *v31;
        v35 = *(v20 + 8);
        v36 = *(v111 + 16);
        v37 = *(v111 + 24);
        v38 = swift_unknownObjectRetain();
        v1 = v112;
        v39 = v36;
        v20 = v111;
        sub_25DD2EBA0(v38, v35, v39, v37);
      }

      else
      {
        v22 = *sub_25DD0151C();

        sub_25DD5B050(v23);
        v24 = sub_25DD01534();
        v25 = *v24;

        sub_25DD5B050(v26);
        v27 = *v24;

        sub_25DD5B050(v28);
      }

      goto LABEL_10;
    }

    v69 = v1[4];
    v70 = *sub_25DD01534();

    sub_25DD5B050(v71);
    v72 = *sub_25DD0151C();

    sub_25DD5B050(v73);
    v74 = *v69;
    v75 = *(v20 + 8);
    v76 = *(v111 + 16);
    v77 = *(v111 + 24);
    v78 = swift_unknownObjectRetain();
    v1 = v112;
    v79 = v75;
    v80 = v76;
    v20 = v111;
    v81 = v77;
LABEL_24:
    sub_25DD2EBA0(v78, v79, v80, v81);
LABEL_10:
    if (++v17 == v16)
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload)
  {
    v78 = *v1[17];
    v79 = v104[1];
    v80 = v104[2];
    v81 = v104[3];
    goto LABEL_24;
  }

  v105 = v17;
  v41 = v1[13];
  v40 = v1[14];
  v42 = v1[11];
  (*v103)(v40, v1[17], v42);
  v43 = sub_25DD01534();
  v44 = *v43;

  sub_25DD5B050(v45);
  (*v102)(v41, v40, v42);
  sub_25DD5E640(&qword_27FCC2538, MEMORY[0x277D0F9A8]);
  v113 = sub_25DD96CC4();
  sub_25DD5BE38(&v113);
  if (!v21)
  {
    v110 = v43;
    v46 = v113[2];
    if (v46)
    {
      v47 = v113 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
      v48 = *(v97 + 16);
      v108 = v48;
      v109 = *(v97 + 72);
      do
      {
        v49 = v1[10];
        v52 = v1 + 7;
        v51 = v1[7];
        v50 = v52[1];
        v53 = v112[5];
        v54 = v108(v49, v47, v50);
        v55 = MEMORY[0x25F8A3030](v54);
        v56 = MEMORY[0x25F8A2FB0](v55);
        v58 = v57;
        v59 = v51;
        v60 = v53;
        v20 = v111;
        v1 = v112;
        (*v107)(v59, v60);
        sub_25DD3BF7C(v56, v58);
        v61 = *sub_25DD0154C();

        v63 = sub_25DD5B050(v62);
        v64 = MEMORY[0x25F8A3040](v63);
        v66 = v65;
        (*(v97 + 8))(v49, v50);
        sub_25DD3BF7C(v64, v66);
        v67 = *v110;

        sub_25DD5B050(v68);
        v47 += v109;
        --v46;
      }

      while (v46);

      v4 = v98;
    }

    else
    {
    }

    v82 = v1[14];
    v83 = v1[11];
    v84 = *v110;

    sub_25DD5B050(v85);
    (*v99)(v82, v83);
    v21 = 0;
    v18 = v100;
    v16 = v101;
    v17 = v105;
    goto LABEL_10;
  }

  MEMORY[0x25F8A43F0](v21);
}

uint64_t sub_25DD5A808()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25DD5A8B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return sub_25DD5988C(a2);
}

uint64_t sub_25DD5A948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD59548(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD5A9A8(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_25DD5DFDC(0, *(v5 + 16));
  }

  else
  {
    *v2 = sub_25DD00E5C(0, *(v5 + 24) >> 1);
  }

  return v1;
}

uint64_t sub_25DD5AA28()
{
  if (*v0 > 2u)
  {
    return 2;
  }

  if (*v0)
  {
    if (*v0 == 1)
    {
      return 2;
    }

    return 0;
  }

  else
  {
    result = 1;
    *v0 = 1;
  }

  return result;
}

uint64_t sub_25DD5AA5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D0, &qword_25DD9D328);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = sub_25DD96814();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = *v1;
  if (v15 <= 2 && v15 != 1)
  {
    v1 = 0;
    if (v15 == 2)
    {
      return v1;
    }

    __break(1u);
  }

  v16 = &v6[*(v3 + 48)];
  *v6 = v15;
  sub_25DD5DC34(a1, v16);
  v17 = type metadata accessor for MultipartFrame();
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    *v1 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
    v18 = *(type metadata accessor for MultipartSerializer.StateMachine.Event() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v1 = swift_allocObject();
    *(v1 + 1) = xmmword_25DD999D0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    return v1;
  }

  if (v15 == 4 || v15 == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      *v1 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
      v23 = *(type metadata accessor for MultipartSerializer.StateMachine.Event() - 8);
      v24 = *(v23 + 72);
      v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_25DD98100;
      v26 = &v1[v25];
      *v26 = *v16;
      *(v26 + 2) = v22;
      *(v26 + 3) = v21;
    }

    else
    {
      v27 = *(v8 + 32);
      v27(v14, v16, v7);
      *v1 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
      v28 = *(type metadata accessor for MultipartSerializer.StateMachine.Event() - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_25DD999D0;
      swift_storeEnumTagMultiPayload();
      v27(&v1[v30 + v29], v14, v7);
    }

    swift_storeEnumTagMultiPayload();
    return v1;
  }

  if (v15 == 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25DD5ED80(v16, type metadata accessor for MultipartFrame);
      *v1 = 2;
      return 1;
    }

    else
    {
      (*(v8 + 32))(v12, v16, v7);
      *v1 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
      v31 = *(type metadata accessor for MultipartSerializer.StateMachine.Event() - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_25DD98100;
      (*(v8 + 16))(&v1[v33], v12, v7);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 8))(v12, v7);
    }

    return v1;
  }

  result = sub_25DD975C4();
  __break(1u);
  return result;
}

uint64_t sub_25DD5B050(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25DD2ECB4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25DD5B13C()
{
  v0 = sub_25DD969E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x25F8A3030](v6);
  v10 = MEMORY[0x25F8A2FB0](v9);
  v12 = v11;
  v13 = *(v1 + 8);
  v14 = v13(v8, v0);
  v15 = MEMORY[0x25F8A3030](v14);
  v16 = MEMORY[0x25F8A2FB0](v15);
  v18 = v17;
  v13(v5, v0);
  if (v10 == v16 && v12 == v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_25DD975D4();
  }

  return v20 & 1;
}

uint64_t sub_25DD5B2D8()
{
  v1 = sub_25DD96814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartSerializer.StateMachine.Event();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD5DBD0(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x25F8A3F90](0);
      sub_25DD5E640(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
      sub_25DD96AC4();
      return (*(v2 + 8))(v5, v1);
    }

    v13 = *v9;
    v14 = v9[1];
    v16 = v9[2];
    v15 = v9[3];
    MEMORY[0x25F8A3F90](1);
    v17 = v15 >> 1;
    result = v17 - v16;
    if (__OFSUB__(v17, v16))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x25F8A3F90](result);
      v18 = __OFSUB__(v17, v16);
      v19 = v17 - v16;
      if (!v19)
      {
        return swift_unknownObjectRelease();
      }

      if (!((v19 < 0) ^ v18 | (v19 == 0)))
      {
        v20 = (v14 + v16);
        do
        {
          v21 = *v20++;
          sub_25DD97984();
          --v19;
        }

        while (v19);
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = 2;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  return MEMORY[0x25F8A3F90](v11);
}

uint64_t sub_25DD5B508()
{
  sub_25DD97964();
  sub_25DD5B2D8();
  return sub_25DD979A4();
}

uint64_t sub_25DD5B54C()
{
  sub_25DD97964();
  sub_25DD5B2D8();
  return sub_25DD979A4();
}

uint64_t sub_25DD5B588(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_25DD5B5C4(a1, a2);
}

uint64_t sub_25DD5B5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2708, &qword_25DD9D818);
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v11 = &v52 - v10;
  v12 = type metadata accessor for MultipartSerializer.StateMachine.Event();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v23 = &v52 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v56 = v21;
  v57 = v20;
  v54 = v8;
  v25 = 0;
  v26 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v61 = a2 + v26;
  v52 = v4;
  v53 = (v5 + 32);
  v55 = (v5 + 8);
  v62 = *(v19 + 72);
  v63 = a1 + v26;
  v27 = v60;
  v59 = v12;
  while (1)
  {
    v28 = v62 * v25;
    result = sub_25DD5DBD0(v63 + v62 * v25, v23);
    if (v25 == v24)
    {
      __break(1u);
      goto LABEL_49;
    }

    sub_25DD5DBD0(v61 + v28, v18);
    v30 = &v11[*(v27 + 48)];
    sub_25DD5DBD0(v23, v11);
    sub_25DD5DBD0(v18, v30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_45;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_45;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_45;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    v32 = v4;
    v33 = v56;
    sub_25DD5DBD0(v11, v56);
    if (swift_getEnumCaseMultiPayload())
    {
      (*v55)(v33, v32);
      goto LABEL_45;
    }

    v34 = v54;
    (*v53)(v54, v30, v32);
    LODWORD(v58) = MEMORY[0x25F8A2E10](v33, v34);
    v35 = *v55;
    v36 = v34;
    v27 = v60;
    (*v55)(v36, v32);
    v37 = v33;
    v4 = v32;
    v35(v37, v32);
    sub_25DD5ED80(v11, type metadata accessor for MultipartSerializer.StateMachine.Event);
    if ((v58 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_7:
    ++v25;
    sub_25DD5ED80(v18, type metadata accessor for MultipartSerializer.StateMachine.Event);
    sub_25DD5ED80(v23, type metadata accessor for MultipartSerializer.StateMachine.Event);
    if (v25 == v24)
    {
      return 1;
    }
  }

  v38 = v57;
  sub_25DD5DBD0(v11, v57);
  v39 = v38[1];
  v58 = *v38;
  v40 = v38[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    swift_unknownObjectRelease();
LABEL_45:
    sub_25DD114CC(v11, &qword_27FCC2708, &qword_25DD9D818);
LABEL_46:
    sub_25DD5ED80(v18, type metadata accessor for MultipartSerializer.StateMachine.Event);
    sub_25DD5ED80(v23, type metadata accessor for MultipartSerializer.StateMachine.Event);
    return 0;
  }

  v41 = v38[3] >> 1;
  v42 = v41 - v40;
  if (__OFSUB__(v41, v40))
  {
    goto LABEL_51;
  }

  v43 = *(v30 + 2);
  v44 = *(v30 + 3) >> 1;
  v45 = v44 - v43;
  if (__OFSUB__(v44, v43))
  {
    goto LABEL_52;
  }

  v46 = *v30;
  if (v42 != v45)
  {
    goto LABEL_42;
  }

  if (!v42 || (v47 = *(v30 + 1) + v43, v39 + v40 == v47) || v40 == v41)
  {
LABEL_40:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v52;
    v27 = v60;
LABEL_6:
    sub_25DD5ED80(v11, type metadata accessor for MultipartSerializer.StateMachine.Event);
    goto LABEL_7;
  }

  if (v40 >= v41)
  {
    goto LABEL_53;
  }

  if (v43 == v44)
  {
LABEL_42:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD5ED80(v11, type metadata accessor for MultipartSerializer.StateMachine.Event);
    goto LABEL_46;
  }

  v48 = 0;
  if (v43 <= v44)
  {
    v49 = *(v30 + 3) >> 1;
  }

  else
  {
    v49 = *(v30 + 2);
  }

  v50 = v49 - v43;
  while (v50 != v48)
  {
    if (*(v39 + v40 + v48) != *(v47 + v48))
    {
      goto LABEL_42;
    }

    if (~v40 + v41 == v48)
    {
      goto LABEL_40;
    }

    v51 = v40 + v48 + 1;
    if (v51 < v40 || v51 >= v41)
    {
      goto LABEL_50;
    }

    if (v45 == ++v48)
    {
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_25DD5BB9C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  if (a2 == 1)
  {
    MEMORY[0x25F8A3F90](2);
    return MEMORY[0x25F8A3F90](0);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD5DCA4(a1, a2);
}

uint64_t sub_25DD5BC08(uint64_t a1)
{
  sub_25DD97964();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x25F8A3F90](1);
      sub_25DD5DCA4(v3, a1);
      return sub_25DD979A4();
    }

    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD5BC80()
{
  v1 = *v0;
  sub_25DD97964();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x25F8A3F90](1);
      sub_25DD5DCA4(v3, v1);
      return sub_25DD979A4();
    }

    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD5BCF8(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  if (v3 == 1)
  {
    MEMORY[0x25F8A3F90](2);
    return MEMORY[0x25F8A3F90](0);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD5DCA4(a1, v3);
}

uint64_t sub_25DD5BD84()
{
  v1 = *v0;
  sub_25DD97964();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x25F8A3F90](1);
      sub_25DD5DCA4(v3, v1);
      return sub_25DD979A4();
    }

    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD5BDF8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_25DD5B5C4(v2, v3);
}

uint64_t sub_25DD5BE38(void **a1)
{
  v2 = *(sub_25DD96A34() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25DD40E08(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25DD5BEE0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25DD5BEE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25DD96A34();
        v6 = sub_25DD96D64();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25DD96A34() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25DD5C454(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25DD5C00C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD5C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_25DD969E4();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v73);
  v72 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v54 - v12;
  v13 = sub_25DD96A34();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v54 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v54 - v20;
  v56 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v26 = *(v24 + 56);
    v66 = (v8 + 8);
    v67 = v25;
    v65 = (v24 - 8);
    v69 = v24;
    v27 = v23 + v26 * (a3 - 1);
    v61 = -v26;
    v62 = (v24 + 16);
    v28 = a1 - a3;
    v63 = v23;
    v55 = v26;
    v29 = v23 + v26 * a3;
    v70 = v13;
    v68 = &v54 - v20;
LABEL_6:
    v59 = v27;
    v60 = a3;
    v57 = v29;
    v58 = v28;
    v31 = v28;
    while (1)
    {
      v74 = v31;
      v32 = v67;
      v67(v22, v29, v13);
      v33 = v32(v77, v27, v13);
      v34 = v71;
      v35 = MEMORY[0x25F8A3030](v33);
      v36 = MEMORY[0x25F8A2FB0](v35);
      v75 = v37;
      v76 = v36;
      v38 = *v66;
      v39 = v73;
      v40 = (*v66)(v34, v73);
      v41 = v72;
      v42 = MEMORY[0x25F8A3030](v40);
      v43 = MEMORY[0x25F8A2FB0](v42);
      v45 = v44;
      v46 = v41;
      v47 = v75;
      v38(v46, v39);
      if (v76 == v43 && v47 == v45)
      {

        v30 = *v65;
        v13 = v70;
        (*v65)(v77, v70);
        v22 = v68;
        result = (v30)(v68, v13);
LABEL_5:
        a3 = v60 + 1;
        v27 = v59 + v55;
        v28 = v58 - 1;
        v29 = v57 + v55;
        if (v60 + 1 == v56)
        {
          return result;
        }

        goto LABEL_6;
      }

      v48 = sub_25DD975D4();

      v49 = *v65;
      v13 = v70;
      (*v65)(v77, v70);
      v22 = v68;
      result = (v49)(v68, v13);
      v50 = v74;
      if ((v48 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v63)
      {
        break;
      }

      v51 = *v62;
      v52 = v64;
      (*v62)(v64, v29, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = (v51)(v27, v52, v13);
      v27 += v61;
      v29 += v61;
      v53 = __CFADD__(v50, 1);
      v31 = v50 + 1;
      if (v53)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD5C454(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v188 = sub_25DD969E4();
  v8 = *(v188 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v188);
  v185 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v159 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v174 = &v159 - v15;
  MEMORY[0x28223BE20](v14);
  v173 = &v159 - v16;
  v191 = sub_25DD96A34();
  v175 = *(v191 - 8);
  v17 = v175[8];
  v18 = MEMORY[0x28223BE20](v191);
  v168 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v182 = &v159 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v195 = &v159 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v194 = &v159 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v178 = &v159 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v177 = &v159 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v161 = &v159 - v31;
  result = MEMORY[0x28223BE20](v30);
  v160 = &v159 - v33;
  v34 = *(a3 + 8);
  v169 = a3;
  if (v34 < 1)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v164;
    if (!*v164)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_105;
  }

  v35 = 0;
  v189 = v175 + 2;
  v190 = (v175 + 1);
  v186 = v175 + 4;
  v187 = (v8 + 8);
  v36 = MEMORY[0x277D84F90];
  v163 = a4;
LABEL_4:
  v176 = v36;
  v167 = v35;
  if (v35 + 1 >= v34)
  {
    v49 = v35 + 1;
  }

  else
  {
    v179 = v34;
    v37 = *a3;
    v38 = v175[9];
    v39 = *a3 + v38 * (v35 + 1);
    v40 = v175[2];
    v41 = v160;
    v193 = v39;
    v42 = v191;
    v40(v160);
    v192 = v37;
    v43 = v37 + v38 * v35;
    v44 = v161;
    v180 = v40;
    (v40)(v161, v43, v42);
    LODWORD(v181) = sub_25DD5B13C();
    if (v5)
    {
      v157 = v42;
      v158 = *v190;
      (*v190)(v44, v157);
      v158(v41, v157);
    }

    v162 = 0;
    v45 = *v190;
    (*v190)(v44, v42);
    v172 = v45;
    result = (v45)(v41, v42);
    v46 = v35 + 2;
    v47 = v193;
    v48 = v192 + v38 * (v35 + 2);
    v49 = v179;
    v50 = v38;
    v183 = v38;
    while (v49 != v46)
    {
      v53 = v180;
      (v180)(v177, v48, v42);
      v193 = v47;
      v54 = v53(v178, v47, v42);
      v55 = v173;
      v56 = MEMORY[0x25F8A3030](v54);
      v192 = MEMORY[0x25F8A2FB0](v56);
      v58 = v57;
      v59 = *v187;
      v60 = v55;
      v61 = v188;
      v62 = (*v187)(v60, v188);
      v63 = v174;
      v64 = MEMORY[0x25F8A3030](v62);
      v65 = MEMORY[0x25F8A2FB0](v64);
      v67 = v66;
      v59(v63, v61);
      if (v192 == v65 && v58 == v67)
      {
        v51 = 0;
      }

      else
      {
        v51 = sub_25DD975D4();
      }

      v42 = v191;
      v52 = v172;
      (v172)(v178, v191);
      result = v52(v177, v42);
      ++v46;
      v50 = v183;
      v48 += v183;
      v47 = &v183[v193];
      v36 = v176;
      v49 = v179;
      if ((v181 ^ v51))
      {
        v49 = v46 - 1;
        break;
      }
    }

    v5 = v162;
    a3 = v169;
    a4 = v163;
    if (v181)
    {
      if (v49 < v167)
      {
        goto LABEL_136;
      }

      if (v167 < v49)
      {
        v68 = v50 * (v49 - 1);
        v69 = v49 * v50;
        v179 = v49;
        v70 = v49;
        v71 = v167;
        v72 = v167 * v50;
        do
        {
          if (v71 != --v70)
          {
            v74 = v5;
            v75 = *v169;
            if (!*v169)
            {
              goto LABEL_140;
            }

            v193 = *v186;
            (v193)(v168, v75 + v72, v191);
            if (v72 < v68 || v75 + v72 >= (v75 + v69))
            {
              v73 = v191;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v73 = v191;
              if (v72 != v68)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v193)(v75 + v68, v168, v73);
            v5 = v74;
            v36 = v176;
            v50 = v183;
          }

          ++v71;
          v68 -= v50;
          v69 -= v50;
          v72 += v50;
        }

        while (v71 < v70);
        a3 = v169;
        a4 = v163;
        v49 = v179;
      }
    }
  }

  v76 = *(a3 + 8);
  if (v49 >= v76)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v49, v167))
  {
    goto LABEL_133;
  }

  if (v49 - v167 >= a4)
  {
LABEL_38:
    v35 = v49;
    goto LABEL_39;
  }

  if (__OFADD__(v167, a4))
  {
    goto LABEL_134;
  }

  if ((v167 + a4) >= v76)
  {
    v77 = *(a3 + 8);
  }

  else
  {
    v77 = v167 + a4;
  }

  a4 = v191;
  if (v77 < v167)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    result = sub_25DD06A4C(v36);
    v36 = result;
LABEL_105:
    v196 = v36;
    v153 = *(v36 + 2);
    if (v153 >= 2)
    {
      while (1)
      {
        v154 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        a3 = *&v36[16 * v153];
        v155 = *&v36[16 * v153 + 24];
        sub_25DD5D210(v154 + v175[9] * a3, v154 + v175[9] * *&v36[16 * v153 + 16], (v154 + v175[9] * v155), a4);
        if (v5)
        {
        }

        if (v155 < a3)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_25DD06A4C(v36);
        }

        if (v153 - 2 >= *(v36 + 2))
        {
          goto LABEL_131;
        }

        v156 = &v36[16 * v153];
        *v156 = a3;
        *(v156 + 1) = v155;
        v196 = v36;
        result = sub_25DD069C0(v153 - 1);
        v36 = v196;
        v153 = *(v196 + 2);
        a3 = v169;
        if (v153 <= 1)
        {
        }
      }
    }
  }

  if (v49 == v77)
  {
    goto LABEL_38;
  }

  v162 = v5;
  v123 = *a3;
  v124 = v175[9];
  v183 = v175[2];
  v125 = (v123 + v124 * (v49 - 1));
  v180 = -v124;
  v126 = v167 - v49;
  v181 = v123;
  v165 = v124;
  v127 = v123 + v49 * v124;
  v166 = v77;
LABEL_93:
  v179 = v49;
  v170 = v127;
  v171 = v126;
  v129 = v126;
  v172 = v125;
  while (1)
  {
    v192 = v129;
    v130 = v183;
    (v183)(v194, v127, a4);
    v131 = v130(v195, v125, a4);
    v132 = v184;
    v133 = MEMORY[0x25F8A3030](v131);
    v134 = MEMORY[0x25F8A2FB0](v133);
    v193 = v135;
    v136 = *v187;
    v137 = v132;
    v138 = v188;
    v139 = (*v187)(v137, v188);
    v140 = v185;
    v141 = MEMORY[0x25F8A3030](v139);
    v142 = MEMORY[0x25F8A2FB0](v141);
    v144 = v143;
    v145 = v138;
    v146 = v193;
    v136(v140, v145);
    if (v134 == v142 && v146 == v144)
    {

      a4 = v191;
      v128 = *v190;
      (*v190)(v195, v191);
      v128(v194, a4);
LABEL_92:
      v49 = v179 + 1;
      v125 = &v172[v165];
      v126 = v171 - 1;
      v127 = v170 + v165;
      v35 = v166;
      if (v179 + 1 != v166)
      {
        goto LABEL_93;
      }

      v5 = v162;
      a3 = v169;
      v36 = v176;
LABEL_39:
      if (v35 < v167)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25DD050F0(0, *(v36 + 2) + 1, 1, v36);
        v36 = result;
      }

      a4 = *(v36 + 2);
      v78 = *(v36 + 3);
      v79 = a4 + 1;
      if (a4 >= v78 >> 1)
      {
        result = sub_25DD050F0((v78 > 1), a4 + 1, 1, v36);
        v36 = result;
      }

      *(v36 + 2) = v79;
      v80 = &v36[16 * a4];
      *(v80 + 4) = v167;
      *(v80 + 5) = v35;
      if (!*v164)
      {
        goto LABEL_142;
      }

      if (a4)
      {
        v81 = *v164;
        while (1)
        {
          v82 = v79 - 1;
          if (v79 >= 4)
          {
            break;
          }

          if (v79 == 3)
          {
            v83 = *(v36 + 4);
            v84 = *(v36 + 5);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
LABEL_60:
            if (v86)
            {
              goto LABEL_121;
            }

            v99 = &v36[16 * v79];
            v101 = *v99;
            v100 = *(v99 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_124;
            }

            v105 = &v36[16 * v82 + 32];
            v107 = *v105;
            v106 = *(v105 + 1);
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_128;
            }

            if (v103 + v108 >= v85)
            {
              if (v85 < v108)
              {
                v82 = v79 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v109 = &v36[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_74:
          if (v104)
          {
            goto LABEL_123;
          }

          v112 = &v36[16 * v82];
          v114 = *(v112 + 4);
          v113 = *(v112 + 5);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_126;
          }

          if (v115 < v103)
          {
            goto LABEL_3;
          }

LABEL_81:
          a4 = v82 - 1;
          if (v82 - 1 >= v79)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v120 = *&v36[16 * a4 + 32];
          v121 = *&v36[16 * v82 + 40];
          sub_25DD5D210(*a3 + v175[9] * v120, *a3 + v175[9] * *&v36[16 * v82 + 32], (*a3 + v175[9] * v121), v81);
          if (v5)
          {
          }

          if (v121 < v120)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_25DD06A4C(v36);
          }

          if (a4 >= *(v36 + 2))
          {
            goto LABEL_118;
          }

          v122 = &v36[16 * a4];
          *(v122 + 4) = v120;
          *(v122 + 5) = v121;
          v196 = v36;
          result = sub_25DD069C0(v82);
          v36 = v196;
          v79 = *(v196 + 2);
          if (v79 <= 1)
          {
            goto LABEL_3;
          }
        }

        v87 = &v36[16 * v79 + 32];
        v88 = *(v87 - 64);
        v89 = *(v87 - 56);
        v93 = __OFSUB__(v89, v88);
        v90 = v89 - v88;
        if (v93)
        {
          goto LABEL_119;
        }

        v92 = *(v87 - 48);
        v91 = *(v87 - 40);
        v93 = __OFSUB__(v91, v92);
        v85 = v91 - v92;
        v86 = v93;
        if (v93)
        {
          goto LABEL_120;
        }

        v94 = &v36[16 * v79];
        v96 = *v94;
        v95 = *(v94 + 1);
        v93 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v93)
        {
          goto LABEL_122;
        }

        v93 = __OFADD__(v85, v97);
        v98 = v85 + v97;
        if (v93)
        {
          goto LABEL_125;
        }

        if (v98 >= v90)
        {
          v116 = &v36[16 * v82 + 32];
          v118 = *v116;
          v117 = *(v116 + 1);
          v93 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v93)
          {
            goto LABEL_129;
          }

          if (v85 < v119)
          {
            v82 = v79 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v34 = *(a3 + 8);
      a4 = v163;
      if (v35 >= v34)
      {
        goto LABEL_103;
      }

      goto LABEL_4;
    }

    v147 = sub_25DD975D4();

    a4 = v191;
    v148 = *v190;
    (*v190)(v195, v191);
    result = (v148)(v194, a4);
    if ((v147 & 1) == 0)
    {
      goto LABEL_92;
    }

    v149 = v192;
    if (!v181)
    {
      break;
    }

    v150 = *v186;
    v151 = v182;
    (*v186)(v182, v127, a4);
    swift_arrayInitWithTakeFrontToBack();
    v150(v125, v151, a4);
    v125 += v180;
    v127 += v180;
    v152 = __CFADD__(v149, 1);
    v129 = v149 + 1;
    if (v152)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_25DD5D210(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v92 = sub_25DD969E4();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v92);
  v84 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v80 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v87 = &v80 - v16;
  v17 = sub_25DD96A34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v90 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v80 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v80 - v25;
  result = MEMORY[0x28223BE20](v24);
  v93 = &v80 - v27;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_68;
  }

  v30 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_69;
  }

  v31 = (a2 - a1) / v29;
  v100 = a1;
  v99 = a4;
  v91 = v17;
  if (v31 >= v30 / v29)
  {
    v33 = v30 / v29 * v29;
    if (a4 < a2 || a2 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v33 < 1)
    {
      v58 = a4 + v33;
    }

    else
    {
      v56 = -v29;
      v85 = (v18 + 16);
      v81 = (v18 + 8);
      v82 = (v8 + 8);
      v57 = (a4 + v33);
      v58 = a4 + v33;
      v95 = a1;
      v96 = a4;
      v94 = v56;
      do
      {
        v80 = v58;
        v59 = a2;
        a2 += v56;
        v97 = a2;
        v87 = v59;
        while (1)
        {
          if (v59 <= a1)
          {
            v100 = v59;
            v98 = v80;
            goto LABEL_66;
          }

          v60 = a3;
          v86 = v58;
          v93 = v57;
          v61 = *v85;
          v88 = &v57[v56];
          v61(v89);
          v62 = (v61)(v90, a2, v17);
          v63 = v83;
          v64 = MEMORY[0x25F8A3030](v62);
          v65 = MEMORY[0x25F8A2FB0](v64);
          v67 = v66;
          v68 = *v82;
          v69 = v92;
          v70 = (*v82)(v63, v92);
          v71 = v84;
          v72 = MEMORY[0x25F8A3030](v70);
          v73 = MEMORY[0x25F8A2FB0](v72);
          v75 = v74;
          v68(v71, v69);
          if (v65 != v73)
          {
            goto LABEL_49;
          }

          if (v67 == v75)
          {
            v76 = 0;
          }

          else
          {
LABEL_49:
            v76 = sub_25DD975D4();
          }

          a3 = &v94[v60];
          v77 = *v81;
          v17 = v91;
          (*v81)(v90, v91);
          v77(v89, v17);
          v78 = v96;
          a2 = v97;
          a1 = v95;
          if (v76)
          {
            break;
          }

          v79 = v88;
          v58 = v88;
          if (v60 < v93 || a3 >= v93)
          {
            swift_arrayInitWithTakeFrontToBack();
            v56 = v94;
          }

          else
          {
            v56 = v94;
            if (v60 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v57 = v58;
          v59 = v87;
          if (v79 <= v78)
          {
            a2 = v87;
            goto LABEL_65;
          }
        }

        if (v60 < v87 || a3 >= v87)
        {
          swift_arrayInitWithTakeFrontToBack();
          v58 = v86;
          v56 = v94;
        }

        else
        {
          v58 = v86;
          v56 = v94;
          if (v60 != v87)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = v93;
      }

      while (v93 > v78);
    }

LABEL_65:
    v100 = a2;
    v98 = v58;
  }

  else
  {
    v32 = v31 * v29;
    if (a4 < a1 || a1 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v90 = (a4 + v32);
    v98 = a4 + v32;
    if (v32 >= 1 && a2 < a3)
    {
      v35 = *(v18 + 16);
      v83 = (v8 + 8);
      v84 = v35;
      v89 = (v18 + 16);
      v82 = (v18 + 8);
      v85 = v29;
      v86 = a3;
      do
      {
        v95 = a1;
        v97 = a2;
        v36 = v84;
        (v84)(v93, a2, v17);
        v96 = a4;
        v37 = v36(v94, a4, v17);
        v38 = v87;
        v39 = MEMORY[0x25F8A3030](v37);
        v40 = MEMORY[0x25F8A2FB0](v39);
        v42 = v41;
        v43 = *v83;
        v44 = v92;
        v45 = (*v83)(v38, v92);
        v46 = v88;
        v47 = MEMORY[0x25F8A3030](v45);
        v48 = MEMORY[0x25F8A2FB0](v47);
        v50 = v49;
        v43(v46, v44);
        if (v40 == v48 && v42 == v50)
        {

          v51 = *v82;
          v17 = v91;
          (*v82)(v94, v91);
          v51(v93, v17);
          v52 = v95;
        }

        else
        {
          v53 = sub_25DD975D4();

          v54 = *v82;
          v17 = v91;
          (*v82)(v94, v91);
          v54(v93, v17);
          v52 = v95;
          if (v53)
          {
            a4 = v96;
            v55 = v85;
            a2 = v85 + v97;
            if (v95 < v97 || v95 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v95 != v97)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        v55 = v85;
        a4 = v85 + v96;
        if (v52 < v96 || v52 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v97;
        }

        else
        {
          a2 = v97;
          if (v52 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v99 = a4;
LABEL_35:
        a1 = v55 + v52;
        v100 = a1;
      }

      while (a4 < v90 && a2 < v86);
    }
  }

LABEL_66:
  sub_25DD409D0(&v100, &v99, &v98);
  return 1;
}

uint64_t sub_25DD5DA7C(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[5];
  v5 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DD1BF14;

  return sub_25DD59B78(a1, v5, v7, v4, v8, v6);
}

uint64_t type metadata accessor for MultipartSerializer.StateMachine.Event()
{
  result = qword_27FCCA4F0;
  if (!qword_27FCCA4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25DD5DB7C()
{
  result = qword_27FCC26C8;
  if (!qword_27FCC26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26C8);
  }

  return result;
}

uint64_t sub_25DD5DBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartSerializer.StateMachine.Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD5DC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD5DCA4(uint64_t a1, uint64_t a2)
{
  v40 = sub_25DD96814();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartSerializer.StateMachine.Event();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = *(a2 + 16);
  result = MEMORY[0x25F8A3F90](v14);
  if (!v14)
  {
    return result;
  }

  v16 = 0;
  v17 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v18 = *(v7 + 72);
  v19 = v17;
  v37 = (v3 + 8);
  v38 = (v3 + 32);
  v35 = v17;
  v36 = v14;
  v41 = v18;
  while (1)
  {
    sub_25DD5DBD0(v19 + v18 * v16, v13);
    sub_25DD5DBD0(v13, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v20 = 2;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v20 = 3;
      }

      else
      {
        v20 = 4;
      }

      MEMORY[0x25F8A3F90](v20);
      goto LABEL_5;
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = v39;
      v23 = v40;
      (*v38)(v39, v11, v40);
      MEMORY[0x25F8A3F90](0);
      sub_25DD5E640(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
      sub_25DD96AC4();
      (*v37)(v22, v23);
      v18 = v41;
      goto LABEL_5;
    }

    v24 = v6;
    v26 = *v11;
    v25 = v11[1];
    v27 = v11[2];
    v28 = v11[3];
    MEMORY[0x25F8A3F90](1);
    v29 = v28 >> 1;
    result = v29 - v27;
    if (__OFSUB__(v29, v27))
    {
      break;
    }

    result = MEMORY[0x25F8A3F90](result);
    v30 = __OFSUB__(v29, v27);
    v31 = v29 - v27;
    if (v31)
    {
      if ((v31 < 0) ^ v30 | (v31 == 0))
      {
        goto LABEL_21;
      }

      v32 = (v25 + v27);
      do
      {
        v33 = *v32++;
        sub_25DD97984();
        --v31;
      }

      while (v31);
    }

    swift_unknownObjectRelease();
    v6 = v24;
    v19 = v35;
    v14 = v36;
    v18 = v41;
LABEL_5:
    result = sub_25DD5ED80(v13, type metadata accessor for MultipartSerializer.StateMachine.Event);
    if (++v16 == v14)
    {
      return result;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_25DD5DFDC(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_25DD2EDA8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25DD5E09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MultipartSerializer.StateMachine.Event();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2708, &qword_25DD9D818);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v42 - v19;
  v21 = (&v42 + *(v18 + 56) - v19);
  sub_25DD5DBD0(a1, &v42 - v19);
  sub_25DD5DBD0(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_28;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_28;
    }

LABEL_26:
    sub_25DD5ED80(v20, type metadata accessor for MultipartSerializer.StateMachine.Event);
    v36 = 1;
    return v36 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25DD5DBD0(v20, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v8, v21, v4);
      v36 = MEMORY[0x25F8A2E10](v15, v8);
      v37 = *(v5 + 8);
      v37(v8, v4);
      v37(v15, v4);
      sub_25DD5ED80(v20, type metadata accessor for MultipartSerializer.StateMachine.Event);
      return v36 & 1;
    }

    (*(v5 + 8))(v15, v4);
    goto LABEL_28;
  }

  sub_25DD5DBD0(v20, v13);
  v23 = *v13;
  v24 = v13[1];
  v25 = v13[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    swift_unknownObjectRelease();
LABEL_28:
    sub_25DD114CC(v20, &qword_27FCC2708, &qword_25DD9D818);
LABEL_29:
    v36 = 0;
    return v36 & 1;
  }

  v27 = v13[3] >> 1;
  if (__OFSUB__(v27, v25))
  {
    __break(1u);
    goto LABEL_46;
  }

  v28 = v21[2];
  v29 = v21[3] >> 1;
  v30 = v29 - v28;
  if (__OFSUB__(v29, v28))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v31 = *v21;
  if (v27 - v25 != v30)
  {
    goto LABEL_44;
  }

  v32 = v24 + v25;
  v33 = v21[1] + v28;
  if (v27 == v25 || v32 == v33 || v25 == v27)
  {
LABEL_25:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  if (v25 < v27)
  {
    if (v28 != v29)
    {
      v38 = 0;
      if (v28 <= v29)
      {
        v39 = v21[3] >> 1;
      }

      else
      {
        v39 = v21[2];
      }

      v40 = v39 - v28;
      while (v40 != v38)
      {
        if (*(v32 + v38) != *(v33 + v38))
        {
          goto LABEL_44;
        }

        if (~v25 + v27 == v38)
        {
          goto LABEL_25;
        }

        v41 = v25 + v38 + 1;
        if (v41 < v25 || v41 >= v27)
        {
          goto LABEL_48;
        }

        if (v30 == ++v38)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_47;
    }

LABEL_44:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD5ED80(v20, type metadata accessor for MultipartSerializer.StateMachine.Event);
    goto LABEL_29;
  }

LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_25DD5E4F4()
{
  result = qword_27FCC26E0;
  if (!qword_27FCC26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26E0);
  }

  return result;
}

unint64_t sub_25DD5E54C()
{
  result = qword_27FCC26E8;
  if (!qword_27FCC26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26E8);
  }

  return result;
}

unint64_t sub_25DD5E5A4()
{
  result = qword_27FCC26F0;
  if (!qword_27FCC26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26F0);
  }

  return result;
}

uint64_t sub_25DD5E640(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25DD5E68C()
{
  result = qword_27FCC2700;
  if (!qword_27FCC2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2700);
  }

  return result;
}

uint64_t sub_25DD5E6E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD5E758(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25DD5E894(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
      *(v18 + 40) = 0;
      *(v18 + 24) = 0u;
      *(v18 + 8) = 0u;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_25DD5EA58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD5EAA0(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD5EB20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t sub_25DD5EBB4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25DD5EC94()
{
  sub_25DD96814();
  if (v0 <= 0x3F)
  {
    sub_25DD5ED08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DD5ED08()
{
  if (!qword_27FCC2690)
  {
    v0 = sub_25DD97064();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC2690);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal19MultipartSerializerV12StateMachineV19ReceivedFrameActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD5ED80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD5EE08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25DD5EF3C(sub_25DD5EF30);
}

uint64_t sub_25DD5EE60(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_25DD96DF4();
}

uint64_t sub_25DD5EF3C(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_25DD621A0(a1);
}

uint64_t sub_25DD5F00C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_25DD5F064(void (*a1)(uint64_t))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_25DD621A0(a1);
  return v5;
}

uint64_t sub_25DD5F0B4(uint64_t a1)
{
  v2 = *(*a1 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25DD5F1C8;

  return v6();
}

uint64_t sub_25DD5F1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v5 + 16);
  v17 = *v5;

  v15 = *(v17 + 8);
  if (!v4)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a4;
  }

  return v15(v11, v12, v13, v14);
}

uint64_t sub_25DD5F2F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25DD47524;

  return sub_25DD5F0B4(v0);
}

uint64_t sub_25DD5F380(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD5F3A0, 0, 0);
}

uint64_t sub_25DD5F3A0()
{
  v1 = v0[3];
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(**v1 + 176);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_25DD3CAD4;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_25DD5F4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return sub_25DD5F380(a1);
}

uint64_t sub_25DD5F56C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25DD5EE08(a1);
  v7 = v6;
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  a2[1] = &unk_25DD9D848;
  a2[2] = v7;
  return result;
}

uint64_t sub_25DD5F5F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return v6();
}

uint64_t sub_25DD5F6E0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_25DD96814();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v38 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2718, qword_25DD9D860);
  v10 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v11;
  v12 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v46 = &v38 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v38 - v20;
  v22 = *(v19 + 48);
  v45 = v13;
  v23 = *(v13 + 16);
  v23(&v38 - v20, a1, v12);
  v23(&v21[v22], v47, v12);
  v24 = *(v7 + 48);
  v25 = v24(v21, 3, v6);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (v24(&v21[v22], 3, v6) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v24(&v21[v22], 3, v6) != 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v25)
    {
      v23(v46, v21, v12);
      if (v24(&v21[v22], 3, v6))
      {
        sub_25DD114CC(v46, &qword_27FCC2710, &qword_25DD9D858);
LABEL_12:
        v26 = 0;
        v12 = TupleTypeMetadata2;
        goto LABEL_13;
      }

      v28 = v42;
      v29 = *(v41 + 48);
      sub_25DD64520(v46, v42, &qword_27FCC2710, &qword_25DD9D858);
      sub_25DD64520(&v21[v22], v28 + v29, &qword_27FCC2710, &qword_25DD9D858);
      v31 = v43;
      v30 = v44;
      v32 = *(v43 + 48);
      if (v32(v28, 1, v44) == 1)
      {
        if (v32(v28 + v29, 1, v30) == 1)
        {
          sub_25DD114CC(v28, &qword_27FCC2710, &qword_25DD9D858);
          goto LABEL_11;
        }
      }

      else
      {
        v33 = v40;
        sub_25DD12B90(v28, v40, &qword_27FCC2710, &qword_25DD9D858);
        if (v32(v28 + v29, 1, v30) != 1)
        {
          v34 = v28 + v29;
          v35 = v39;
          (*(v31 + 32))(v39, v34, v30);
          sub_25DD623FC(&qword_27FCC2720);
          v36 = sub_25DD96B04();
          v37 = *(v31 + 8);
          v37(v35, v30);
          v37(v33, v30);
          sub_25DD114CC(v28, &qword_27FCC2710, &qword_25DD9D858);
          if (v36)
          {
            goto LABEL_11;
          }

LABEL_20:
          v26 = 0;
          v17 = v45;
          goto LABEL_13;
        }

        (*(v31 + 8))(v33, v30);
      }

      sub_25DD114CC(v28, &qword_27FCC2718, qword_25DD9D860);
      goto LABEL_20;
    }

    if (v24(&v21[v22], 3, v6) != 1)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v26 = 1;
  v17 = v45;
LABEL_13:
  (*(v17 + 8))(v21, v12);
  return v26;
}

uint64_t sub_25DD5FCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v2, a2);
  v21 = (*(v9 + 48))(v19, 3, v8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    return MEMORY[0x25F8A3F90](v23);
  }

  if (v21)
  {
    v23 = 0;
    return MEMORY[0x25F8A3F90](v23);
  }

  sub_25DD64520(v19, v16, &qword_27FCC2710, &qword_25DD9D858);
  MEMORY[0x25F8A3F90](1);
  sub_25DD12B90(v16, v13, &qword_27FCC2710, &qword_25DD9D858);
  v22 = v26;
  if ((*(v26 + 48))(v13, 1, v4) == 1)
  {
    sub_25DD97984();
  }

  else
  {
    (*(v22 + 32))(v7, v13, v4);
    sub_25DD97984();
    sub_25DD623FC(&qword_27FCC22E8);
    sub_25DD96AC4();
    (*(v22 + 8))(v7, v4);
  }

  return sub_25DD114CC(v16, &qword_27FCC2710, &qword_25DD9D858);
}

uint64_t sub_25DD60054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25DD5F6E0(a1, a2);
}

uint64_t sub_25DD60060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t sub_25DD600CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t sub_25DD6013C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 3, v2);
}

uint64_t sub_25DD601E8(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_25DD96814();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v30 - v18;
  v20 = *(v17 + 48);
  v34 = v7;
  v21 = *(v7 + 16);
  v21(&v30 - v18, a1, v6);
  v21(&v19[v20], v35, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    v23 = 1;
    v15 = v34;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    v21(v11, v19, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v31;
      v24 = v32;
      v26 = &v19[v20];
      v27 = v33;
      (*(v32 + 32))(v31, v26, v33);
      v23 = MEMORY[0x25F8A2E10](v11, v25);
      v28 = *(v24 + 8);
      v28(v25, v27);
      v28(v11, v27);
      v15 = v34;
      goto LABEL_14;
    }

    (*(v32 + 8))(v11, v33);
LABEL_13:
    v23 = 0;
    v6 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  v21(v13, v19, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_13;
  }

  v23 = *v13 == v19[v20];
  v15 = v34;
LABEL_14:
  (*(v15 + 8))(v19, v6);
  return v23 & 1;
}

uint64_t sub_25DD60580(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v16 = EnumCaseMultiPayload != 2;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v9, v12, v4);
      MEMORY[0x25F8A3F90](3);
      sub_25DD623FC(&qword_27FCC22E8);
      sub_25DD96AC4();
      return (*(v5 + 8))(v9, v4);
    }

    v15 = *v12;
    MEMORY[0x25F8A3F90](2);
    v16 = v15;
  }

  return MEMORY[0x25F8A3F90](v16);
}

uint64_t sub_25DD607E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25DD601E8(a1, a2);
}

uint64_t sub_25DD607EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = sub_25DD96814();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v21 = *(a1 + 24);
  v11 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  (*(v12 + 16))(&v21 - v14, v3, v11);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 3, v16);
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_6:
    (*(v12 + 8))(v3, v11);
    (*(v17 + 56))(v3, 3, 3, v16);
    *v22 = 0;
    type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction();
    return swift_storeEnumTagMultiPayload();
  }

  if (v18)
  {
    (*(v12 + 8))(v3, v11);
    (*(v6 + 56))(v3, 1, 1, v5);
    (*(v17 + 56))(v3, 0, 3, v16);
    type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction();
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  v19 = *(v6 + 32);
  v19(v9, v15, v5);
  (*(v12 + 8))(v3, v11);
  (*(v17 + 56))(v3, 2, 3, v16);
  v19(v22, v9, v5);
  type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD60B78(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_25DD96814();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v30 - v18;
  v20 = *(v17 + 48);
  v34 = v7;
  v21 = *(v7 + 16);
  v21(&v30 - v18, a1, v6);
  v21(&v19[v20], v35, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21(v13, v19, v6);
    if (!swift_getEnumCaseMultiPayload())
    {
      v27 = *v13 == v19[v20];
      v15 = v34;
      goto LABEL_11;
    }

LABEL_10:
    v27 = 0;
    v6 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = 1;
      v15 = v34;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21(v11, v19, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v32 + 8))(v11, v33);
    goto LABEL_10;
  }

  v24 = v31;
  v23 = v32;
  v25 = &v19[v20];
  v26 = v33;
  (*(v32 + 32))(v31, v25, v33);
  v27 = MEMORY[0x25F8A2E10](v11, v24);
  v28 = *(v23 + 8);
  v28(v24, v26);
  v28(v11, v26);
  v15 = v34;
LABEL_11:
  (*(v15 + 8))(v19, v6);
  return v27 & 1;
}

uint64_t sub_25DD60EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v9, v12, v4);
      MEMORY[0x25F8A3F90](2);
      sub_25DD623FC(&qword_27FCC22E8);
      sub_25DD96AC4();
      return (*(v5 + 8))(v9, v4);
    }

    v17 = 0;
  }

  else
  {
    v16 = *v12;
    MEMORY[0x25F8A3F90](1);
    v17 = v16;
  }

  return MEMORY[0x25F8A3F90](v17);
}

uint64_t sub_25DD610F8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_25DD97964();
  a2(v5, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD61198(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_25DD97964();
  a4(v7, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD611EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25DD60B78(a1, a2);
}

uint64_t sub_25DD611F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v45 = a1;
  v51 = a3;
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for MultipartFrame();
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = *(a2 + 24);
  v49 = *(a2 + 16);
  v50 = v22;
  v23 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = *(v24 + 16);
  v48 = v4;
  v28(&v42 - v26, v4, v23);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v27, 3, v29);
  if (result > 1)
  {
    if (result == 2)
    {
      v32 = v48;
      (*(v24 + 8))(v48, v23);
      (*(v30 + 56))(v32, 3, 3, v29);
      *v51 = 0;
    }

    goto LABEL_8;
  }

  v43 = v10;
  v33 = v46;
  if (result)
  {
    __break(1u);
  }

  else
  {
    if ((*(v47 + 48))(v27, 1, v46) == 1)
    {
      sub_25DD12B90(v45, v14, &qword_27FCC26C0, &qword_25DD9D320);
      if ((*(v44 + 48))(v14, 1, v15) == 1)
      {
        sub_25DD114CC(v14, &qword_27FCC26C0, &qword_25DD9D320);
        v34 = v48;
        (*(v24 + 8))(v48, v23);
        (*(v30 + 56))(v34, 3, 3, v29);
      }

      else
      {
        sub_25DD62470(v14, v21);
        sub_25DD62470(v21, v19);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v37 = *(v47 + 32);
          v38 = v43;
          v39 = v33;
          v37(v43, v19, v33);
          v40 = v37;
          v41 = v48;
          (*(v24 + 8))(v48, v23);
          (*(v30 + 56))(v41, 2, 3, v29);
          v40(v51, v38, v39);
          type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction();
          return swift_storeEnumTagMultiPayload();
        }

        sub_25DD624D4(v19);
        v36 = v48;
        (*(v24 + 8))(v48, v23);
        (*(v30 + 56))(v36, 3, 3, v29);
        *v51 = 2;
      }

LABEL_8:
      type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction();
      return swift_storeEnumTagMultiPayload();
    }

    v35 = v48;
    (*(v24 + 8))(v48, v23);
    (*(v30 + 56))(v35, 3, 3, v29);
    *v51 = 3;
    type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction();
    swift_storeEnumTagMultiPayload();
    return sub_25DD114CC(v27, &qword_27FCC2710, &qword_25DD9D858);
  }

  return result;
}

BOOL sub_25DD617A0(char a1, char a2)
{
  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  if ((a2 & 0xFE) == 4)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_25DD617F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 4)
  {
    v2 = 0;
  }

  else if (a2 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
    v2 = a2;
  }

  return MEMORY[0x25F8A3F90](v2);
}

uint64_t sub_25DD61850(unsigned __int8 a1)
{
  sub_25DD97964();
  sub_25DD617F8(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD618C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD61914(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, v1, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 3, v9);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }

  else if (v11)
  {
    (*(v5 + 8))(v1, v4);
    (*(v10 + 56))(v1, 3, 3, v9);
    return 1;
  }

  else
  {
    v12 = *(v5 + 8);
    v12(v1, v4);
    (*(v10 + 56))(v1, 3, 3, v9);
    v12(v8, v4);
    return 2;
  }
}

uint64_t sub_25DD61AF8(uint64_t result, int8x16_t *a2)
{
  if (*(result + 32))
  {
    if (*(result + 32) == 1)
    {
      if (a2[2].i8[0] == 1)
      {
        return *result == a2->u8[0];
      }

      return 0;
    }

    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    v14 = vorrq_s8(*a2, a2[1]);
    return !*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2[1].i64[0];
  v6 = a2[1].i64[1] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 != v7)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v8 = *(result + 8) + v2;
  v9 = a2->i64[1] + v5;
  result = 1;
  if (v8 != v9 && v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    if (v5 == v6)
    {
      return 0;
    }

    v10 = 0;
    if (v5 <= v6)
    {
      v11 = a2[1].i64[1] >> 1;
    }

    else
    {
      v11 = a2[1].u64[0];
    }

    v12 = v11 - v5;
    while (v12 != v10)
    {
      if (*(v8 + v10) != *(v9 + v10))
      {
        return 0;
      }

      if (~v2 + v3 == v10)
      {
        return 1;
      }

      v13 = v2 + v10 + 1;
      if (v13 < v2 || v13 >= v3)
      {
        goto LABEL_33;
      }

      result = 0;
      if (v7 == ++v10)
      {
        return result;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_25DD61C34()
{
  if (!v0[32])
  {
    v2 = *(v0 + 1);
    v3 = *(v0 + 2);
    v4 = *(v0 + 3);
    MEMORY[0x25F8A3F90](1);
    v5 = v4 >> 1;
    result = v5 - v3;
    if (__OFSUB__(v5, v3))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x25F8A3F90](result);
      v7 = __OFSUB__(v5, v3);
      v8 = v5 - v3;
      if (!v8)
      {
        return result;
      }

      if (!((v8 < 0) ^ v7 | (v8 == 0)))
      {
        v9 = (v2 + v3);
        do
        {
          v10 = *v9++;
          result = sub_25DD97984();
          --v8;
        }

        while (v8);
        return result;
      }
    }

    __break(1u);
    return result;
  }

  if (v0[32] == 1)
  {
    v1 = *v0;
    MEMORY[0x25F8A3F90](2);
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x25F8A3F90](v1);
}

uint64_t sub_25DD61CD8()
{
  sub_25DD97964();
  sub_25DD61C34();
  return sub_25DD979A4();
}

uint64_t sub_25DD61D20()
{
  sub_25DD97964();
  sub_25DD61C34();
  return sub_25DD979A4();
}

uint64_t sub_25DD61D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for MultipartFrame();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v25 = *(v21 + 16);
  v41 = v4;
  v25(&v39 - v23, v4, v20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v24, 3, v26);
  v29 = 0uLL;
  if (result > 1)
  {
    if (result == 2)
    {
      sub_25DD12B90(v40, v9, &qword_27FCC26C0, &qword_25DD9D320);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_25DD114CC(v9, &qword_27FCC26C0, &qword_25DD9D320);
        v30 = v41;
        (*(v21 + 8))(v41, v20);
        result = (*(v27 + 56))(v30, 3, 3, v26);
LABEL_11:
        v34 = 2;
        v33 = 0uLL;
        goto LABEL_12;
      }

      sub_25DD62470(v9, v17);
      sub_25DD62470(v17, v15);
      result = swift_getEnumCaseMultiPayload();
      if (result != 1)
      {
        v35 = v41;
        (*(v21 + 8))(v41, v20);
        v36 = sub_25DD96814();
        v37 = *(v36 - 8);
        (*(v37 + 32))(v35, v15, v36);
        (*(v37 + 56))(v35, 0, 1, v36);
        result = (*(v27 + 56))(v35, 0, 3, v26);
        goto LABEL_11;
      }

      v34 = 0;
      v33 = *v15;
      v29 = v15[1];
    }

    else
    {
      v34 = 2;
      v33 = 0uLL;
    }

LABEL_13:
    v38 = v42;
    *v42 = v33;
    v38[1] = v29;
    *(v38 + 32) = v34;
    return result;
  }

  if (!result)
  {
    v31 = *(v21 + 8);
    v32 = v41;
    v31(v41, v20);
    (*(v27 + 56))(v32, 3, 3, v26);
    result = (v31)(v24, v20);
    v33 = xmmword_25DD9D830;
    v34 = 1;
LABEL_12:
    v29 = 0uLL;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD621A0(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v19 - v14;
  v16 = swift_defaultActor_initialize();
  a1(v16);
  (*(v12 + 32))(v2 + *(*v2 + 104), v15, AssociatedTypeWitness);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  (*(*(v17 - 8) + 56))(v10, 1, 3, v17);
  (*(v7 + 32))(v2 + *(*v2 + 112), v10, v6);
  return v1;
}

uint64_t sub_25DD623FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25DD96814();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25DD62470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartFrame();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD624D4(uint64_t a1)
{
  v2 = type metadata accessor for MultipartFrame();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD62548(unsigned __int8 a1)
{
  v1 = 0xD000000000000053;
  if (a1 == 2)
  {
    v1 = 0xD00000000000004ELL;
  }

  v2 = 0xD000000000000060;
  if (!a1)
  {
    v2 = 0xD000000000000078;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25DD625C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *v3;
  v6 = sub_25DD96814();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = *(v5 + 80);
  v4[23] = *(v5 + 88);
  v9 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction();
  v4[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[26] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  v4[30] = v14;
  v15 = *(v14 - 8);
  v4[31] = v15;
  v16 = *(v15 + 64) + 15;
  v4[32] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v18 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction();
  v4[35] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD62880, v3, 0);
}

uint64_t sub_25DD62880()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 296) = *(**(v0 + 136) + 112);
  swift_beginAccess();
  v5 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine();
  *(v0 + 304) = v5;
  sub_25DD607EC(v5, v1);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = *(v0 + 176);
      v8 = *(v0 + 184);
      v9 = **(v0 + 288);
      type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError();
      swift_getWitnessTable();
      swift_allocError();
      *v10 = v9;
      swift_willThrow();
      v11 = *(v0 + 288);
      v13 = *(v0 + 264);
      v12 = *(v0 + 272);
      v14 = *(v0 + 256);
      v16 = *(v0 + 224);
      v15 = *(v0 + 232);
      v17 = *(v0 + 200);
      v19 = *(v0 + 160);
      v18 = *(v0 + 168);

      v20 = *(v0 + 8);
LABEL_8:

      return v20();
    }

    v23 = *(v0 + 160);
    v22 = *(v0 + 168);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v56 = *(v0 + 112);
    (*(v25 + 32))(v22, *(v0 + 288), v24);
    type metadata accessor for HTTPBody();
    v28 = *(v25 + 16);
    v28(v23, v22, v24);

    v29 = sub_25DD63F94(v23, v26, v27);

    v28(v23, v22, v24);
    MultipartRawPart.init(headerFields:body:)(v23, v29, v56);
    (*(v25 + 8))(v22, v24);
    v21 = 0;
LABEL_7:
    v30 = *(v0 + 288);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 256);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    v36 = *(v0 + 200);
    v55 = *(v0 + 168);
    v57 = *(v0 + 160);
    v37 = *(v0 + 112);
    v38 = type metadata accessor for MultipartRawPart();
    (*(*(v38 - 8) + 56))(v37, v21, 1, v38);

    v20 = *(v0 + 8);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = 1;
    goto LABEL_7;
  }

  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  v42 = *(v0 + 240);
  v44 = *(v0 + 176);
  v43 = *(v0 + 184);
  v45 = *(v0 + 136);
  v46 = *(*v45 + 104);
  *(v0 + 312) = v46;
  swift_beginAccess();
  (*(v41 + 16))(v40, v45 + v46, v42);
  type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 320) = AssociatedConformanceWitness;
  v49 = *(MEMORY[0x277D856D8] + 4);
  v50 = swift_task_alloc();
  *(v0 + 328) = v50;
  *v50 = v0;
  v50[1] = sub_25DD62CF8;
  v52 = *(v0 + 256);
  v51 = *(v0 + 264);
  v53 = *(v0 + 232);
  v54 = *(v0 + 240);

  return MEMORY[0x282200310](v51, v45, WitnessTable, v53, v54, AssociatedConformanceWitness);
}

uint64_t sub_25DD62CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_25DD63210;
  }

  else
  {
    v6 = sub_25DD62E24;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25DD62E24()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[25];
  v53 = v0[24];
  v9 = v0[17];
  sub_25DD64520(v0[33], v4, &qword_27FCC26C0, &qword_25DD9D320);
  swift_beginAccess();
  (*(v6 + 24))(v9 + v2, v5, v7);
  swift_endAccess();
  swift_beginAccess();
  sub_25DD611F8(v4, v1, v8);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[32];
  v14 = v0[30];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v50 = v0[30];
      v16 = v0[20];
      v15 = v0[21];
      v54 = v0[34];
      v18 = v0[18];
      v17 = v0[19];
      v19 = v0[16];
      v48 = v0[15];
      v49 = v0[14];
      (*(v17 + 32))(v15, v0[25], v18);
      type metadata accessor for HTTPBody();
      v51 = v13;
      v20 = *(v17 + 16);
      v20(v16, v15, v18);

      v21 = sub_25DD63F94(v16, v48, v19);

      v20(v16, v15, v18);
      v22 = v16;
      v14 = v50;
      v13 = v51;
      MultipartRawPart.init(headerFields:body:)(v22, v21, v49);
      (*(v17 + 8))(v15, v18);
      v11 = v54;
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v12 + 8))(v13, v14);
    sub_25DD114CC(v11, &qword_27FCC26C0, &qword_25DD9D320);
    v38 = v0[36];
    v40 = v0[33];
    v39 = v0[34];
    v41 = v0[32];
    v43 = v0[28];
    v42 = v0[29];
    v44 = v0[25];
    v52 = v0[21];
    v55 = v0[20];
    v45 = v0[14];
    v46 = type metadata accessor for MultipartRawPart();
    (*(*(v46 - 8) + 56))(v45, v23, 1, v46);

    v37 = v0[1];
  }

  else
  {
    v24 = v0[22];
    v25 = v0[23];
    v26 = *v0[25];
    type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError();
    swift_getWitnessTable();
    swift_allocError();
    *v27 = v26;
    swift_willThrow();
    (*(v12 + 8))(v13, v14);
    sub_25DD114CC(v11, &qword_27FCC26C0, &qword_25DD9D320);
    v28 = v0[36];
    v30 = v0[33];
    v29 = v0[34];
    v31 = v0[32];
    v33 = v0[28];
    v32 = v0[29];
    v34 = v0[25];
    v36 = v0[20];
    v35 = v0[21];

    v37 = v0[1];
  }

  return v37();
}

uint64_t sub_25DD63210()
{
  v1 = v0[40];
  v2 = v0[30];
  v3 = *(v0[27] + 32);
  v3(v0[28], v0[29], v0[26]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_25DD97574();
  v5 = v0[28];
  if (v4)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  else
  {
    v6 = v0[26];
    swift_allocError();
    v3(v7, v5, v6);
  }

  (*(v0[31] + 8))(v0[32], v0[30]);
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[25];
  v16 = v0[20];
  v15 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_25DD633B4()
{
  v1[19] = v0;
  v2 = *v0;
  v1[20] = *(*v0 + 88);
  v1[21] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[22] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = swift_getAssociatedTypeWitness();
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD63594, v0, 0);
}

uint64_t sub_25DD63594()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 248) = *(**(v0 + 152) + 112);
  swift_beginAccess();
  v3 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine();
  *(v0 + 256) = v3;
  v4 = sub_25DD61914(v3);
  swift_endAccess();
  if (v4 == 4)
  {
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);

    v25 = *(v0 + 8);

    return v25(0, 0, 0, 0);
  }

  else if (v4 == 5)
  {
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 208);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(*v10 + 104);
    *(v0 + 264) = v11;
    swift_beginAccess();
    (*(v6 + 16))(v5, v10 + v11, v7);
    type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator();
    WitnessTable = swift_getWitnessTable();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 272) = AssociatedConformanceWitness;
    v14 = *(MEMORY[0x277D856D8] + 4);
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_25DD638B4;
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);

    return MEMORY[0x282200310](v16, v10, WitnessTable, v18, v19, AssociatedConformanceWitness);
  }

  else
  {
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError();
    swift_getWitnessTable();
    swift_allocError();
    *v28 = v4;
    swift_willThrow();
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_25DD638B4()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_25DD63CBC;
  }

  else
  {
    v6 = sub_25DD639E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25DD639E0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 152);
  sub_25DD64520(*(v0 + 232), v3, &qword_27FCC26C0, &qword_25DD9D320);
  swift_beginAccess();
  (*(v6 + 24))(v7 + v2, v4, v5);
  swift_endAccess();
  swift_beginAccess();
  sub_25DD61D60(v3, v1, (v0 + 16));
  swift_endAccess();
  v8 = *(v0 + 16);
  v9 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v13 = *(v0 + 160);
      v14 = *(v0 + 168);
      v15 = *(v0 + 224);
      v16 = *(v0 + 208);
      type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError();
      swift_getWitnessTable();
      swift_allocError();
      *v17 = v8;
      swift_willThrow();
      (*(v11 + 8))(v15, v16);
      sub_25DD114CC(v9, &qword_27FCC26C0, &qword_25DD9D320);
      v19 = *(v0 + 232);
      v18 = *(v0 + 240);
      v20 = *(v0 + 224);
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);

      v23 = *(v0 + 8);

      return v23();
    }

    (*(v11 + 8))(v10, v12);
    sub_25DD114CC(v9, &qword_27FCC26C0, &qword_25DD9D320);
    v8 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
  }

  else
  {
    v26 = *(v0 + 32);
    v25 = *(v0 + 40);
    v27 = *(v0 + 24);
    (*(v11 + 8))(v10, v12);
    sub_25DD114CC(v9, &qword_27FCC26C0, &qword_25DD9D320);
  }

  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 224);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);

  v33 = *(v0 + 8);

  return v33(v8, v27, v26, v25);
}

uint64_t sub_25DD63CBC()
{
  v1 = v0[34];
  v2 = v0[26];
  v3 = *(v0[23] + 32);
  v3(v0[24], v0[25], v0[22]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_25DD97574();
  v5 = v0[24];
  if (v4)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  else
  {
    v6 = v0[22];
    swift_allocError();
    v3(v7, v5, v6);
  }

  (*(v0[27] + 8))(v0[28], v0[26]);
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];

  v13 = v0[1];

  return v13();
}

uint64_t sub_25DD63E2C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v5 = *(*v0 + 112);
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25DD63F40()
{
  sub_25DD63E2C();

  return MEMORY[0x282200960](v0);
}

unsigned __int8 *sub_25DD63F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2580, &qword_25DD9DF40);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v55);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v19 = a1;
  v20 = sub_25DD96E24();
  MEMORY[0x25F8A2FD0](v20);
  v21 = MEMORY[0x25F8A2E40](v10);
  v23 = v22;
  result = (*(v7 + 8))(v10, v6);
  if (!v23)
  {
    goto LABEL_64;
  }

  v25 = HIBYTE(v23) & 0xF;
  v26 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v27 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_64;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v29 = sub_25DD17A9C(v21, v23, 10);
    v50 = v49;

    if (v50)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_25DD971D4();
    }

    v28 = *result;
    if (v28 == 43)
    {
      if (v26 >= 1)
      {
        v25 = v26 - 1;
        if (v26 != 1)
        {
          v29 = 0;
          if (result)
          {
            v36 = result + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_62;
              }

              v38 = 10 * v29;
              if ((v29 * 10) >> 64 != (10 * v29) >> 63)
              {
                goto LABEL_62;
              }

              v29 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_62;
              }

              ++v36;
              if (!--v25)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v28 != 45)
    {
      if (v26)
      {
        v29 = 0;
        if (result)
        {
          while (1)
          {
            v42 = *result - 48;
            if (v42 > 9)
            {
              goto LABEL_62;
            }

            v43 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_62;
            }

            v29 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v26)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v29 = 0;
      LOBYTE(v25) = 1;
LABEL_63:
      v58 = v25;
      v47 = v25;

      if (v47)
      {
LABEL_64:
        v29 = 0;
        v48 = 1;
LABEL_68:
        v51 = v55;
        (*(v11 + 16))(v15, v17, v55);
        v56 = v29;
        LOBYTE(v57) = v48;
        v52 = HTTPBody.__allocating_init(_:length:)(v15, &v56);
        v53 = sub_25DD96814();
        (*(*(v53 - 8) + 8))(v19, v53);
        (*(v11 + 8))(v17, v51);
        return v52;
      }

LABEL_67:
      v48 = 0;
      goto LABEL_68;
    }

    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v30 = result + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_62;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_62;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_62;
            }

            ++v30;
            if (!--v25)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v25) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v56 = v21;
  v57 = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v25)
      {
        v29 = 0;
        v44 = &v56;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          v44 = (v44 + 1);
          if (!--v25)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v25)
    {
      if (--v25)
      {
        v29 = 0;
        v33 = &v56 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v25)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v25)
  {
    if (--v25)
    {
      v29 = 0;
      v39 = &v56 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          break;
        }

        v29 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v25)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_25DD64520(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25DD64680()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD646BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD64704(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25DD6475C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD647F4()
{
  sub_25DD64874();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_25DD64874()
{
  if (!qword_27FCC2728)
  {
    sub_25DD96814();
    v0 = sub_25DD96F04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC2728);
    }
  }
}

uint64_t sub_25DD648F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.ActionError();
  if (v4 <= 0x3F)
  {
    result = sub_25DD96814();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD64968(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD64A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25DD64AC0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25DD64AD4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_25DD64AFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal33MultipartFramesToRawPartsSequenceV12StateMachineV23BodyReceivedFrameActionOyx__G(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_25DD64B6C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25DD64C70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD64CAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25DD64D3C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25DD64DEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25DD1BF14;

  return sub_25DD5F5F4(a1, v5);
}

uint64_t sub_25DD64ECC()
{
  v1 = sub_25DD96814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartFrame();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD65528(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    MEMORY[0x25F8A3F90](1);
    v14 = v12 >> 1;
    result = v14 - v13;
    if (__OFSUB__(v14, v13))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x25F8A3F90](result);
      v16 = __OFSUB__(v14, v13);
      v17 = v14 - v13;
      if (!v17)
      {
        return swift_unknownObjectRelease();
      }

      if (!((v17 < 0) ^ v16 | (v17 == 0)))
      {
        v18 = (v11 + v13);
        do
        {
          v19 = *v18++;
          sub_25DD97984();
          --v17;
        }

        while (v17);
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x25F8A3F90](0);
    sub_25DD655D4(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
    sub_25DD96AC4();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_25DD650CC()
{
  sub_25DD97964();
  sub_25DD64ECC();
  return sub_25DD979A4();
}

uint64_t sub_25DD65110()
{
  sub_25DD97964();
  sub_25DD64ECC();
  return sub_25DD979A4();
}

uint64_t sub_25DD6514C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MultipartFrame();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2738, "L?");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v41 - v19;
  v21 = (&v41 + *(v18 + 56) - v19);
  sub_25DD65528(a1, &v41 - v19);
  sub_25DD65528(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD65528(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v8, v21, v4);
      v35 = MEMORY[0x25F8A2E10](v15, v8);
      v36 = *(v5 + 8);
      v36(v8, v4);
      v36(v15, v4);
      sub_25DD624D4(v20);
      return v35 & 1;
    }

    (*(v5 + 8))(v15, v4);
LABEL_18:
    sub_25DD6561C(v20);
LABEL_33:
    v35 = 0;
    return v35 & 1;
  }

  sub_25DD65528(v20, v13);
  v22 = *v13;
  v23 = v13[1];
  v24 = v13[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v26 = v13[3] >> 1;
  if (__OFSUB__(v26, v24))
  {
    __break(1u);
    goto LABEL_36;
  }

  v27 = v21[2];
  v28 = v21[3] >> 1;
  v29 = v28 - v27;
  if (__OFSUB__(v28, v27))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = *v21;
  if (v26 - v24 != v29)
  {
LABEL_32:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD624D4(v20);
    goto LABEL_33;
  }

  v31 = v23 + v24;
  v32 = v21[1] + v27;
  if (v26 == v24 || v31 == v32 || v24 == v26)
  {
LABEL_14:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD624D4(v20);
    v35 = 1;
    return v35 & 1;
  }

  if (v24 < v26)
  {
    if (v27 != v28)
    {
      v37 = 0;
      if (v27 <= v28)
      {
        v38 = v21[3] >> 1;
      }

      else
      {
        v38 = v21[2];
      }

      v39 = v38 - v27;
      while (v39 != v37)
      {
        if (*(v31 + v37) != *(v32 + v37))
        {
          goto LABEL_32;
        }

        if (~v24 + v26 == v37)
        {
          goto LABEL_14;
        }

        v40 = v24 + v37 + 1;
        if (v40 < v24 || v40 >= v26)
        {
          goto LABEL_38;
        }

        if (v29 == ++v37)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MultipartFrame()
{
  result = qword_27FCCB480;
  if (!qword_27FCCB480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DD65528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartFrame();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD655D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25DD6561C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2738, "L?");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultipartRawPart.headerFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96814();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultipartRawPart.headerFields.setter(uint64_t a1)
{
  v3 = sub_25DD96814();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MultipartRawPart.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipartRawPart() + 20));
}

uint64_t type metadata accessor for MultipartRawPart()
{
  result = qword_27FCCBA10;
  if (!qword_27FCCBA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultipartRawPart.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MultipartRawPart() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MultipartRawPart.init(headerFields:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25DD96814();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for MultipartRawPart();
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static MultipartRawPart.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x25F8A2E10]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HTTPBody();
  v4 = type metadata accessor for MultipartRawPart();
  return static HTTPBody.== infix(_:_:)(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)));
}

uint64_t MultipartRawPart.hash(into:)()
{
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v2 = *(v0 + *(type metadata accessor for MultipartRawPart() + 20));
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  return sub_25DD96AC4();
}

uint64_t MultipartRawPart.hashValue.getter()
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v2 = *(v0 + *(type metadata accessor for MultipartRawPart() + 20));
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  sub_25DD96AC4();
  return sub_25DD979A4();
}

uint64_t sub_25DD65B38(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v4 = *(v1 + *(a1 + 20));
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  sub_25DD96AC4();
  return sub_25DD979A4();
}

uint64_t sub_25DD65C2C(uint64_t a1, uint64_t a2)
{
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v5 = *(v2 + *(a2 + 20));
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  return sub_25DD96AC4();
}

uint64_t sub_25DD65D10(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v5 = *(v2 + *(a2 + 20));
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  sub_25DD96AC4();
  return sub_25DD979A4();
}

BOOL sub_25DD65E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x25F8A2E10]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HTTPBody();
  return static HTTPBody.== infix(_:_:)(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)));
}

uint64_t (*MultipartPart.filename.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t MultipartPart.init(payload:filename:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(type metadata accessor for MultipartPart() + 36));
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static MultipartPart.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if (sub_25DD96B04())
  {
    v7 = *(type metadata accessor for MultipartPart() + 36);
    v8 = (a1 + v7);
    v9 = *(a1 + v7 + 8);
    v10 = (a2 + v7);
    v11 = v10[1];
    if (v9)
    {
      if (v11)
      {
        v12 = *v8 == *v10 && v9 == v11;
        if (v12 || (sub_25DD975D4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MultipartPart.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_25DD96AC4();
  v6 = (v2 + *(a2 + 36));
  if (!v6[1])
  {
    return sub_25DD97984();
  }

  v7 = *v6;
  sub_25DD97984();

  return sub_25DD96B94();
}

uint64_t (*MultipartDynamicallyNamedPart.filename.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t MultipartDynamicallyNamedPart.name.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t MultipartDynamicallyNamedPart.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*MultipartDynamicallyNamedPart.name.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MultipartDynamicallyNamedPart.init(payload:filename:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for MultipartDynamicallyNamedPart();
  v15 = (a7 + *(v14 + 36));
  v16 = (a7 + *(v14 + 40));
  result = (*(*(a6 - 8) + 32))(a7, a1, a6);
  *v15 = a2;
  v15[1] = a3;
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t static MultipartDynamicallyNamedPart.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if ((sub_25DD96B04() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for MultipartDynamicallyNamedPart();
  v8 = *(v7 + 36);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v7;
      v15 = sub_25DD975D4();
      v7 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = *(v7 + 40);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20)
    {
      v21 = *v17 == *v19 && v18 == v20;
      if (v21 || (sub_25DD975D4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t MultipartDynamicallyNamedPart.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_25DD96AC4();
  v6 = (v2 + *(a2 + 36));
  if (v6[1])
  {
    v7 = *v6;
    sub_25DD97984();
    sub_25DD96B94();
  }

  else
  {
    sub_25DD97984();
  }

  v8 = (v2 + *(a2 + 40));
  if (!v8[1])
  {
    return sub_25DD97984();
  }

  v9 = *v8;
  sub_25DD97984();

  return sub_25DD96B94();
}

uint64_t sub_25DD66460(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_25DD97964();
  a2(v5, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD664D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_25DD97964();
  a4(v7, a2);
  return sub_25DD979A4();
}

id sub_25DD66544()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_25DD96B14();
  [v0 setName_];

  return v0;
}

uint64_t sub_25DD665B8()
{
  [*(v0 + 40) lock];
  v1 = *(v0 + 48);
  [*(v0 + 40) unlock];
  return v1;
}

uint64_t sub_25DD66618(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  sub_25DD66670(a1, a2, a3);
  return v6;
}

uint64_t sub_25DD66670(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = sub_25DD96B14();
  [v7 setName_];

  *(v3 + 32) = a2;
  *(v3 + 40) = v7;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 16) = v6;
  return v3;
}

uint64_t MultipartBody.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t MultipartBody.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t MultipartBody.hashValue.getter()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v0);
  return sub_25DD979A4();
}

uint64_t sub_25DD66864()
{
  sub_25DD97964();
  v1 = *v0;
  MultipartBody.hash(into:)();
  return sub_25DD979A4();
}

uint64_t MultipartBody.__allocating_init<A>(_:iterationBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  (*(v8 + 16))(v11, a1);
  v14 = sub_25DD3CC94(v11, *(v4 + 80), a3, a4);
  v16 = v15;
  v20 = v13;
  v17 = swift_allocObject();
  sub_25DD66670(v14, v16, &v20);
  (*(v8 + 8))(a1, a3);
  return v17;
}

uint64_t sub_25DD669D8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_25DD67140(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

uint64_t MultipartBody.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25DD672EC(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t MultipartBody.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v4 = sub_25DD96E34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  (*(v5 + 16))(&v15[-v7], a1, v4);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25DD3CC94(v8, v3, v4, WitnessTable);
  v12 = v11;
  v16 = 0;
  v13 = swift_allocObject();
  sub_25DD66670(v10, v12, &v16);
  (*(v5 + 8))(a1, v4);
  return v13;
}

{
  v3 = *(v1 + 80);
  v4 = sub_25DD96DE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  (*(v5 + 16))(&v15[-v7], a1, v4);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25DD3CC94(v8, v3, v4, WitnessTable);
  v12 = v11;
  v16 = 0;
  v13 = swift_allocObject();
  sub_25DD66670(v10, v12, &v16);
  (*(v5 + 8))(a1, v4);
  return v13;
}

uint64_t MultipartBody.__allocating_init(arrayLiteral:)(uint64_t a1)
{
  v1 = sub_25DD67324(a1);

  return v1;
}

uint64_t sub_25DD66D9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25DD67324(a1);

  *a2 = v3;
  return result;
}

void *MultipartBody.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  [v1[5] lock];
  LOBYTE(v13[0]) = *(v1 + 16);
  v14 = 0;
  if (static IterationBehavior.== infix(_:_:)(v13, &v14) && *(v1 + 48) == 1)
  {
    v4 = *(v3 + 80);
    type metadata accessor for MultipartBody.TooManyIterationsError();
    swift_getWitnessTable();
    v5 = swift_allocError();
    swift_willThrow();
    *(v1 + 48) = 1;
    [v1[5] unlock];
    if (v5)
    {
      result = swift_allocObject();
      result[2] = v4;
      result[3] = v5;
      *a1 = &unk_25DD9E400;
      a1[1] = result;
      return result;
    }
  }

  else
  {
    *(v1 + 48) = 1;
    [v1[5] unlock];
  }

  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v3 + 80);
  v13[0] = sub_25DD3CF4C(v7);
  v13[1] = v10;
  v11 = type metadata accessor for AnyIterator();
  WitnessTable = swift_getWitnessTable();
  return sub_25DD66F80(v13, v9, v11, WitnessTable, a1);
}

void *sub_25DD66F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v11, a1, a3);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v10;
  *a5 = &unk_25DD9E010;
  a5[1] = result;
  return result;
}

uint64_t sub_25DD67030@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  MultipartBody.makeAsyncIterator()(a1);
}

uint64_t MultipartBody.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD3C9E0, 0, 0);
}

uint64_t sub_25DD670A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return MultipartBody.Iterator.next()(a1);
}

uint64_t sub_25DD67140(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for WrappedSyncSequence();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22[-v13];
  LOBYTE(a2) = *a2;
  (*(v7 + 16))(v10, a1, a3);
  sub_25DD3D184(v10, a3, v14);
  v15 = *(v3 + 80);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_25DD3CC94(v14, v15, v11, WitnessTable);
  v19 = v18;
  v23 = a2;
  v20 = swift_allocObject();
  sub_25DD66670(v17, v19, &v23);
  return v20;
}

uint64_t sub_25DD672EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  v3 = *(a3 + 8);
  return sub_25DD67140(a1, &v5, a2);
}

uint64_t sub_25DD67324(uint64_t a1)
{
  v6 = a1;
  v2 = *(v1 + 80);
  v3 = sub_25DD96D84();
  v7 = 1;
  v4 = *(swift_getWitnessTable() + 8);
  return sub_25DD67140(&v6, &v7, v3);
}

uint64_t sub_25DD67394(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1C68C;

  return sub_25DD3C648(a1, v6, v7, v4, v5);
}