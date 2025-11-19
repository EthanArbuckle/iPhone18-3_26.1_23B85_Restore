BOOL HomeAttributeTargetArea.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v22);
  if (v23)
  {
    type metadata accessor for HomeAttributeTargetArea();
    if (swift_dynamicCast())
    {
      v2 = [v21 name];
      if (v2)
      {
        v3 = v2;
        v4 = sub_252E36F34();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v1 name];
      if (v7)
      {
        v8 = v7;
        v9 = sub_252E36F34();
        v11 = v10;

        if (!v6)
        {
          if (!v11)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

        if (v11)
        {
          if (v4 == v9 && v6 == v11)
          {

            goto LABEL_18;
          }

          v12 = sub_252E37DB4();

          if (v12)
          {
LABEL_18:
            [v21 areaID];
            v14 = v13;
            [v1 areaID];
            if (v14 == v15)
            {
              [v21 mapID];
              v17 = v16;
              [v1 mapID];
              v19 = v18;

              return v17 == v19;
            }
          }

LABEL_20:

          return 0;
        }
      }

      else if (!v6)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_252982F10(v22);
  }

  return 0;
}

char *Array<A>.contains(_:)(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    result = sub_2529AA660(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v5 = v27;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 areaID];
      v11 = v10;

      v13 = *(v27 + 16);
      v12 = *(v27 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2529AA660((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      *(v27 + 16) = v13 + 1;
      *(v27 + 8 * v13 + 32) = v11;
    }

    while (v4 != v7);
  }

  v14 = sub_252C75AFC(v5);

  if (a1 >> 62)
  {
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_14:
      v15 = 0;
      v16 = v14 + 56;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2530ADF00](v15, a1);
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v4 = sub_252E378C4();
            goto LABEL_3;
          }

          v17 = *(a1 + 32 + 8 * v15);
        }

        v18 = v17;
        if (__OFADD__(v15++, 1))
        {
          goto LABEL_30;
        }

        [v17 areaID];
        if (!*(v14 + 16) || (v21 = v20, v22 = *(v14 + 40), v23 = sub_252E37EB4(), v24 = -1 << *(v14 + 32), v25 = v23 & ~v24, ((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
        {
LABEL_28:

          return 0;
        }

        v26 = ~v24;
        while (*(*(v14 + 48) + 8 * v25) != v21)
        {
          v25 = (v25 + 1) & v26;
          if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      while (v15 != v2);
    }
  }

  return 1;
}

uint64_t Array<A>.contains(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = a1;
    v31 = a2;
    v9 = 0;
    v7 = v32;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, a3);
      }

      else
      {
        v10 = *(a3 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 name];
      if (v12)
      {
        v13 = v12;
        v14 = sub_252E36F34();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA380((v17 > 1), v18 + 1, 1);
      }

      ++v9;
      *(v32 + 16) = v18 + 1;
      v19 = v32 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v9);
    a1 = v30;
    a2 = v31;
  }

  v20 = sub_252C75A1C(v7);

  if (*(v20 + 16) && (v21 = *(v20 + 40), sub_252E37EC4(), sub_252E37EE4(), sub_252E37044(), v22 = sub_252E37F14(), v23 = -1 << *(v20 + 32), v24 = v22 & ~v23, ((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
  {
    v25 = ~v23;
    v26 = *(v20 + 48);
    while (1)
    {
      v27 = (v26 + 16 * v24);
      v28 = v27[1];
      if (v28)
      {
        v29 = *v27 == a1 && v28 == a2;
        if (v29 || (sub_252E37DB4() & 1) != 0)
        {
          break;
        }
      }

      v24 = (v24 + 1) & v25;
      if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    return 1;
  }

  else
  {
LABEL_27:

    return 0;
  }
}

{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = sub_252E36F34();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return 1;
        }

        v17 = sub_252E37DB4();

        if (v17)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

uint64_t Array<A>.filter(_:)(uint64_t a1, unint64_t a2)
{
  v18 = a1;
  v20 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v17 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v5 = MEMORY[0x2530ADF00](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 name];
      if (v8)
      {
        v9 = v8;
        v10 = sub_252E36F34();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v19[0] = v10;
      v19[1] = v12;
      MEMORY[0x28223BE20](v8);
      v16[2] = v19;
      v13 = sub_2529ED970(sub_25296A69C, v16, v18);

      if (v13)
      {
        sub_252E37A94();
        v14 = *(v20 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

{
  v18 = a1;
  v20 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v17 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v5 = MEMORY[0x2530ADF00](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 name];
      if (v8)
      {
        v9 = v8;
        v10 = sub_252E36F34();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v19[0] = v10;
      v19[1] = v12;
      MEMORY[0x28223BE20](v8);
      v16[2] = v19;
      v13 = sub_2529ED970(sub_25296A69C, v16, v18);

      if (v13)
      {
        sub_252E37A94();
        v14 = *(v20 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C75848(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530AD880](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_252DA6CD0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_252C75A1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v4 = sub_252C76D0C();
  result = MEMORY[0x2530AD880](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_252DA7244(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_252C75AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530AD880](v2, MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252DA73E8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252C75BA4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for HomeAutomationEntityState(0);
  v5 = sub_252C76508(&qword_27F540E40, type metadata accessor for HomeAutomationEntityState);
  result = MEMORY[0x2530AD880](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_252DA7524(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_252E378C4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_252C75E50(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_252C76508(a3, a4);
    result = MEMORY[0x2530AD880](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_252E378C4();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_252E378C4();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_252C75FB8()
{
  result = qword_27F5447A0;
  if (!qword_27F5447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5447A0);
  }

  return result;
}

uint64_t sub_252C76054(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530AD880](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252DA87DC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252C760C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252B3AD80();
  result = MEMORY[0x2530AD880](v2, &type metadata for HueSemantic, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_252DA8BCC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_252C7613C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_252C762E8();
  result = MEMORY[0x2530AD880](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_252DA88E8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_252C762E8()
{
  result = qword_27F542C40;
  if (!qword_27F542C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A28, &qword_252E3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C40);
  }

  return result;
}

uint64_t sub_252C76380(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530AD880](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_252C76400()
{
  result = qword_27F5447A8;
  if (!qword_27F5447A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5447A8);
  }

  return result;
}

uint64_t sub_252C76488(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530AD880](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_252C76508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252C765E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252ABC210();
  result = MEMORY[0x2530AD880](v2, &type metadata for ReferencedEntityValue, v3);
  v14 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v15[6] = *(v5 + 96);
      v15[7] = v6;
      v15[8] = *(v5 + 128);
      v16 = *(v5 + 144);
      v7 = *(v5 + 48);
      v15[2] = *(v5 + 32);
      v15[3] = v7;
      v8 = *(v5 + 80);
      v15[4] = *(v5 + 64);
      v15[5] = v8;
      v9 = *(v5 + 16);
      v15[0] = *v5;
      v15[1] = v9;
      sub_25297DE08(v15, v12);
      sub_252DA8480(v10, v15);
      v12[6] = v10[6];
      v12[7] = v10[7];
      v12[8] = v10[8];
      v13 = v11;
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_2529AEC80(v12);
      v5 += 152;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

uint64_t sub_252C76730(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t *, uint64_t))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v18 = a2;
    v19 = sub_252E378C4();
    v20 = v18;
    v10 = v19;
    v11 = v20(0);
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = a2(0);
  }

  v12 = v11;
  v13 = sub_252C76508(a3, a4);
  result = MEMORY[0x2530AD880](v10, v12, v13);
  v22 = result;
  if (!v9)
  {
    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v16 = MEMORY[0x2530ADF00](v15, a1);
        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          return v22;
        }
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v16 = *(a1 + 8 * v15 + 32);

        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }
  }

  a4 = result;
  a3 = sub_252E378C4();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_252C768DC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25293F638(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C7692C()
{
  result = qword_27F5447B0;
  if (!qword_27F5447B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5447B0);
  }

  return result;
}

uint64_t sub_252C76980(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252C76A2C();
  result = MEMORY[0x2530AD880](v2, &type metadata for IconInfo, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_252C76A80(v11, v9);
      sub_252DA8F78(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_252C76ADC(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_252C76A2C()
{
  result = qword_27F5447B8;
  if (!qword_27F5447B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5447B8);
  }

  return result;
}

uint64_t sub_252C76B60(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v12 = sub_25293F638(0, a2, a3);
    v13 = sub_252C768DC(a4, a2, a3);
    result = MEMORY[0x2530AD880](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x2530ADF00](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_252E378C4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_252C76CB8()
{
  result = qword_27F5447F0;
  if (!qword_27F5447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5447F0);
  }

  return result;
}

unint64_t sub_252C76D0C()
{
  result = qword_27F5447F8;
  if (!qword_27F5447F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F541300, &qword_252E3C100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5447F8);
  }

  return result;
}

uint64_t sub_252C76D88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252C76E34();
  result = MEMORY[0x2530AD880](v2, &type metadata for HomeAutomationIntent, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      sub_2529353AC(__dst, v7);
      sub_252DA977C(v6, __dst);
      memcpy(v7, v6, sizeof(v7));
      sub_252935408(v7);
      v5 += 504;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_252C76E34()
{
  result = qword_27F544800;
  if (!qword_27F544800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544800);
  }

  return result;
}

void sub_252C76E8C(uint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v4 = v3;
    sub_252AD4414(a1);
    v8 = sub_252E37254();

    [v4 setTargetedEntityTypes_];

LABEL_5:

    return;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v5)
  {
    v8 = v5;
    sub_252AD4414(a1);
    v6 = sub_252E37254();

    [v8 setTargetedEntityTypes_];

    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000019, 0x8000000252E8E880, 398);
}

void sub_252C7704C(uint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setSmallestTargetedContainer_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setSmallestTargetedContainer_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001FLL, 0x8000000252E8E900, 414);
}

void sub_252C771A8(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v5 = [v2 homeAutomationRequestMetadata];
  if (v5)
  {
    v6 = v5;
    v10 = sub_252E36F04();
    [v6 setTargetAttribute_];

LABEL_6:

    return;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v7)
  {
    v10 = v7;
    sub_252AD41C0(a1, a2);
    v8 = sub_252E36F04();

    [v10 setTargetAttribute_];

    [v2 setHomeAutomationRequestMetadata_];
    goto LABEL_6;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000015, 0x8000000252E8E8E0, 434);
}

void sub_252C77358(unint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (!v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
    if (!v4)
    {
      if (qword_27F53F530 == -1)
      {
LABEL_13:
        v5 = sub_252E36AD4();
        __swift_project_value_buffer(v5, qword_27F544E38);
        sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000019, 0x8000000252E8E8C0, 366);
        return;
      }

LABEL_18:
      swift_once();
      goto LABEL_13;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a1))
      {
        v6 = v4;
        [v4 setTargetedEntityCount_];
        [v1 setHomeAutomationRequestMetadata_];
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v3;
  [v3 setTargetedEntityCount_];
LABEL_9:
}

void sub_252C774DC(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return;
  }

  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setConditionType_];
LABEL_6:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setConditionType_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_6;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000013, 0x8000000252E8E940, 454);
}

void sub_252C7763C(char a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setIsRecurring_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setIsRecurring_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000011, 0x8000000252E8E920, 470);
}

void sub_252C77798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v5 = [v3 homeAutomationRequests];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_252A01B88();
  v7 = sub_252E37264();

  v8 = [v3 commandDuration];
  if (v7 >> 62)
  {
    v19 = v8;
    v9 = sub_252E378C4();
    v8 = v19;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_21:

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_5:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = [v13 homeAutomationRequestMetadata];
      if (v15)
      {
        v12 = v15;
        [v15 setIsHomeAutomationRequestAsynchronous_];
      }

      else
      {
        v16 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
        if (!v16)
        {
          if (qword_27F53F530 != -1)
          {
            swift_once();
          }

          v18 = sub_252E36AD4();
          __swift_project_value_buffer(v18, qword_27F544E38);
          sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000029, 0x8000000252E8EAB0, 350);
          goto LABEL_9;
        }

        v17 = v16;
        [v16 setIsHomeAutomationRequestAsynchronous_];
        v12 = v17;
        [v14 setHomeAutomationRequestMetadata_];
      }

LABEL_9:
      ++v10;

      if (v9 == v10)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

void sub_252C77A20(unint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (!v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
    if (!v4)
    {
      if (qword_27F53F530 == -1)
      {
LABEL_13:
        v5 = sub_252E36AD4();
        __swift_project_value_buffer(v5, qword_27F544E38);
        sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001ALL, 0x8000000252E8E8A0, 382);
        return;
      }

LABEL_18:
      swift_once();
      goto LABEL_13;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a1))
      {
        v6 = v4;
        [v4 setFulfilledEntityCount_];
        [v1 setHomeAutomationRequestMetadata_];
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v3;
  [v3 setFulfilledEntityCount_];
LABEL_9:
}

uint64_t sub_252C77BA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252C4AE84(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_252C7898C(v7);
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v15 = sub_252E32E44();
  v16 = [v14 initWithNSUUID_];

  [v2 setCommandId_];
  return (*(v9 + 8))(v12, v8);
}

void sub_252C77D64(char a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setIsHomeAutomationRequestAsynchronous_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setIsHomeAutomationRequestAsynchronous_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000029, 0x8000000252E8EAB0, 350);
}

void sub_252C77EC4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v2 homeAutomationRequests];
    if (v4)
    {
      v5 = v4;
      sub_252A01B88();
      v6 = sub_252E37264();

      v7 = v3;
      MEMORY[0x2530AD700]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      v7 = v3;
      MEMORY[0x2530AD700]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      sub_252A01B88();
    }

    v8 = sub_252E37254();

    [v2 setHomeAutomationRequests_];
  }
}

uint64_t sub_252C78058(unint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = v5;
      [v6 setHomeCount_];

      return v3;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_13:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000010, 0x8000000252E8EA90, 26);
      goto LABEL_2;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 setHomeCount_];
  v10 = *(v3 + 16);
  *(v3 + 16) = v9;

LABEL_2:

  return v3;
}

uint64_t sub_252C781CC(unint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = v5;
      [v6 setHomePodCount_];

      return v3;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_13:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000013, 0x8000000252E8EA70, 48);
      goto LABEL_2;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 setHomePodCount_];
  v10 = *(v3 + 16);
  *(v3 + 16) = v9;

LABEL_2:

  return v3;
}

uint64_t sub_252C7833C(unint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = v5;
      [v6 setAppleTvCount_];

      return v3;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_13:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000013, 0x8000000252E8EA50, 70);
      goto LABEL_2;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 setAppleTvCount_];
  v10 = *(v3 + 16);
  *(v3 + 16) = v9;

LABEL_2:

  return v3;
}

uint64_t sub_252C784AC(char a1)
{
  v2 = v1;
  if (a1 != 2)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v4;
      [v5 setHasCurrentHome_];

      return v2;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
    if (v7)
    {
      v8 = a1 & 1;
      v9 = v7;
      [v7 setHasCurrentHome_];
      v10 = *(v2 + 16);
      *(v2 + 16) = v9;
    }

    else
    {
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000015, 0x8000000252E8EA30, 92);
    }
  }

  return v2;
}

void *sub_252C785FC()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544E38);
    sub_252CC4050(0xD000000000000042, 0x8000000252E8E980, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0x2928646C697562, 0xE700000000000000, 261);
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D57578]);
  v3 = v1;
  v4 = [v2 init];
  if (!v4)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252CC4050(0xD00000000000003BLL, 0x8000000252E8E9D0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0x2928646C697562, 0xE700000000000000, 266);

    return 0;
  }

  v5 = v4;
  if (*(v0 + 16))
  {
    [v4 setHomeContext_];
  }

  [v5 setHomeAutomationCommand_];

  return v5;
}

uint64_t sub_252C787CC()
{

  return swift_deallocClassInstance();
}

void sub_252C78830(char a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setIsIntentSelectionCacheHit_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setIsIntentSelectionCacheHit_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001FLL, 0x8000000252E8E960, 486);
}

uint64_t sub_252C7898C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252C789F4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_25292A398();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Service();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252C78D40(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t *a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = v2;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v29);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v3 >= *(v33 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v32 + 8 * v3);

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_42;
        }
      }

      v7 = *a2;

      v9 = sub_252D51310(v8);

      v10 = v9 >> 62;
      v11 = v9 >> 62 ? sub_252E378C4() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v4 >> 62;
      if (v4 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v11;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_20;
        }

        v14 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v14 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v37)
          {
            goto LABEL_45;
          }

          v20 = v14 + 8 * v16 + 32;
          v31 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_47;
            }

            sub_25292A398();
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v22 = sub_2529FBE00(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }
          }

          else
          {
            type metadata accessor for Service();
            swift_arrayInitWithCopy();
          }

          v2 = v30;
          if (v37 >= 1)
          {
            v25 = *(v31 + 16);
            v6 = __OFADD__(v25, v37);
            v26 = v25 + v37;
            if (v6)
            {
              goto LABEL_46;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v37 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C790CC()
{
  type metadata accessor for WaterSystemHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252C790FC(unint64_t a1)
{
  v1 = a1;
  v43 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      if (v7 >> 62)
      {
        if (v7 < 0)
        {
          v9 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
        }

        if (sub_252E378C4() > 1)
        {
LABEL_12:
          sub_252E37A94();
          v8 = *(v43 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_6;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
      {
        goto LABEL_12;
      }

LABEL_6:
      ++v4;
      if (v6 == v2)
      {
        v10 = v43;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_22:
  v11 = sub_252C789F4(v10);

  v43 = v3;
  if (v11 >> 62)
  {
    v1 = sub_252E378C4();
    if (v1)
    {
      goto LABEL_24;
    }

LABEL_47:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_47;
  }

LABEL_24:
  v12 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](v12, v11);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v13 = *(v11 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_43;
      }
    }

    v15 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v16 = sub_252E36F34();
    v18 = v17;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v19 = off_27F546230;
    if (!*(off_27F546230 + 2) || (v20 = sub_252A44A10(v16, v18), (v21 & 1) == 0))
    {

LABEL_26:

      goto LABEL_27;
    }

    v22 = *(v19[7] + 8 * v20);

    if (v22 != 33)
    {
      goto LABEL_26;
    }

    sub_252E37A94();
    v23 = *(v43 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_27:
    ++v12;
  }

  while (v14 != v1);
  v24 = v43;
LABEL_48:

  if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
LABEL_70:
    v25 = sub_252E378C4();
    if (!v25)
    {
      goto LABEL_71;
    }

LABEL_51:
    v26 = MEMORY[0x277D84F90];
    v27 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2530ADF00](v27, v24);
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          return result;
        }

        v31 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v30 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (v30)
        {
          goto LABEL_59;
        }

LABEL_56:
        v27 = v28;
        if (v28 == v25)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        if (v27 >= *(v24 + 16))
        {
          goto LABEL_69;
        }

        v28 = v27 + 1;
        v29 = (*(v24 + 32 + 8 * v27) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v30 = v29[1];
        if (!v30)
        {
          goto LABEL_56;
        }

        v31 = *v29;
        v32 = v29[1];

LABEL_59:
        v42 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
        }

        v34 = *(v26 + 2);
        v33 = *(v26 + 3);
        if (v34 >= v33 >> 1)
        {
          v26 = sub_2529F7A80((v33 > 1), v34 + 1, 1, v26);
        }

        *(v26 + 2) = v34 + 1;
        v35 = &v26[16 * v34];
        *(v35 + 4) = v42;
        *(v35 + 5) = v30;
        if (v28 == v25)
        {
          goto LABEL_72;
        }

        v27 = v28;
      }
    }
  }

  v25 = *(v24 + 16);
  if (v25)
  {
    goto LABEL_51;
  }

LABEL_71:
  v26 = MEMORY[0x277D84F90];
LABEL_72:

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v37.n128_f64[0] = HomeFilter.Builder.init()();
  v39 = (*(*v38 + 568))(v26, v37);

  v41 = (*(*v39 + 760))(v40);

  return v41;
}

uint64_t sub_252C7964C(unint64_t a1)
{
  v1 = a1;
  v2 = sub_252C789F4(a1);
  v3 = v2;
  v77 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_64;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  v74 = v1;
  if (v4)
  {
    v6 = 0;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v7 = *(v3 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v4 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546230;
      if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
      {
        v16 = *(v13[7] + 8 * v14);

        if (v16 == 34)
        {
          sub_252E37A94();
          v17 = *(v77 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_7;
        }
      }

      else
      {
      }

LABEL_7:
      ++v6;
      if (v8 == v4)
      {
        v18 = v77;
        v1 = v74;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_22:

  v78 = v5;
  if (v1 >> 62)
  {
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_24:
      v19 = 0;
      v20 = v1 & 0xC000000000000001;
      v21 = v1 & 0xFFFFFFFFFFFFFF8;
      v22 = &OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services;
      v1 += 32;
      v75 = v3;
      while (1)
      {
        while (1)
        {
          if (v20)
          {
            v23 = MEMORY[0x2530ADF00](v19, v74);
            v24 = __OFADD__(v19++, 1);
            if (v24)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v19 >= *(v21 + 16))
            {
              goto LABEL_63;
            }

            v23 = *(v1 + 8 * v19);

            v24 = __OFADD__(v19++, 1);
            if (v24)
            {
              goto LABEL_62;
            }
          }

          v25 = *(v23 + *v22);
          if (v25 >> 62)
          {
            if (v25 < 0)
            {
              v52 = *(v23 + *v22);
            }

            if (sub_252E378C4() != 1)
            {
              goto LABEL_25;
            }
          }

          else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
          {
            goto LABEL_25;
          }

          v26 = (*v23 + 256);
          v27 = *v26;
          if ((*v26)() != 33)
          {
            break;
          }

LABEL_50:
          sub_252E37A94();
          v51 = *(v78 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          if (v19 == v3)
          {
LABEL_59:
            v53 = v78;
            goto LABEL_67;
          }
        }

        v28 = (*(*v23 + 272))();
        if (*(v28 + 16))
        {
          v29 = *(v28 + 40);
          v30 = v1;
          v31 = v21;
          v32 = v20;
          v33 = v22;
          v34 = v28;
          sub_252E37EC4();
          MEMORY[0x2530AE390](33);
          v35 = sub_252E37F14();
          v36 = v34;
          v22 = v33;
          v20 = v32;
          v21 = v31;
          v1 = v30;
          v3 = v75;
          v37 = -1 << *(v36 + 32);
          v38 = v35 & ~v37;
          if ((*(v36 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            v39 = ~v37;
            while (*(*(v36 + 48) + 8 * v38) != 33)
            {
              v38 = (v38 + 1) & v39;
              if (((*(v36 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_49;
          }
        }

LABEL_37:

        v41 = (v27)(v40);
        if (v41 == 38)
        {
          v44 = &unk_2864A1B60;
        }

        else
        {
          v42 = v41;
          v43 = MEMORY[0x277D84FA0];
          if (v42 != 41)
          {
            goto LABEL_42;
          }

          v44 = &unk_2864A1B88;
        }

        v43 = sub_2529FC004(v44);
LABEL_42:
        if (*(v43 + 16))
        {
          v45 = *(v43 + 40);
          v46 = v43;
          sub_252E37EC4();
          MEMORY[0x2530AE390](33);
          v47 = sub_252E37F14();
          v48 = -1 << *(v46 + 32);
          v49 = v47 & ~v48;
          if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            v50 = ~v48;
            while (*(*(v46 + 48) + 8 * v49) != 33)
            {
              v49 = (v49 + 1) & v50;
              if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

LABEL_49:

            goto LABEL_50;
          }
        }

LABEL_47:

        if (sub_252D4FE78(33))
        {
          goto LABEL_50;
        }

LABEL_25:

        if (v19 == v3)
        {
          goto LABEL_59;
        }
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_67:
  v54 = sub_252C789F4(v53);

  sub_25297A6EC(v54);
  if (v18 >> 62)
  {
LABEL_88:
    v55 = sub_252E378C4();
    if (v55)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v55 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
LABEL_69:
      v56 = MEMORY[0x277D84F90];
      v57 = 0;
      while (1)
      {
        while ((v18 & 0xC000000000000001) == 0)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (v57 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v58 = v57 + 1;
          v59 = (*(v18 + 32 + 8 * v57) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          v60 = v59[1];
          if (!v60)
          {
            goto LABEL_74;
          }

          v76 = *v59;

LABEL_77:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_2529F7A80(0, *(v56 + 2) + 1, 1, v56);
          }

          v62 = *(v56 + 2);
          v61 = *(v56 + 3);
          v63 = v62 + 1;
          v64 = v76;
          if (v62 >= v61 >> 1)
          {
            v68 = sub_2529F7A80((v61 > 1), v62 + 1, 1, v56);
            v63 = v62 + 1;
            v64 = v76;
            v56 = v68;
          }

          *(v56 + 2) = v63;
          v65 = &v56[16 * v62];
          *(v65 + 4) = v64;
          *(v65 + 5) = v60;
          if (v58 == v55)
          {
            goto LABEL_90;
          }

          v57 = v58;
        }

        result = MEMORY[0x2530ADF00](v57, v18);
        v58 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
          return result;
        }

        v67 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v60 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (v60)
        {
          v76 = v67;
          goto LABEL_77;
        }

LABEL_74:
        v57 = v58;
        if (v58 == v55)
        {
          goto LABEL_90;
        }
      }
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_90:

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v69.n128_f64[0] = HomeFilter.Builder.init()();
  v71 = (*(*v70 + 568))(v56, v69);

  v73 = (*(*v71 + 760))(v72);

  return v73;
}

void sub_252C79DF8(void *a1, void *a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C130;
  *(v5 + 32) = a1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  v88 = type metadata accessor for HomeAttributeValue();
  v7 = objc_allocWithZone(v88);
  v8 = a1;
  v9 = sub_252E36F04();
  v10 = &off_279711000;
  v11 = [v7 initWithIdentifier:0 displayString:v9];

  v12 = v11;
  [v12 setBoolValue_];
  [v12 setType_];

  v90 = type metadata accessor for HomeUserTask();
  v13 = objc_allocWithZone(v90);
  v14 = sub_252E36F04();
  v15 = [v13 initWithIdentifier:0 displayString:v14];

  v18 = v15;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  *(inited + 32) = v18;
  v16 = sub_252B4CA9C(v5, inited, 0, 1);
  LOBYTE(v18) = v17;

  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  v20 = MEMORY[0x277D84F90];
  v21 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v21[2];
  v22 = v21[3];
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v21[2] = v24;
    v25 = &v21[2 * v23];
    v25[4] = v16;
    *(v25 + 40) = v18 & 1;
    v26 = v21;
    v27 = objc_allocWithZone(v90);
    v28 = sub_252E36F04();
    v29 = [v27 *(v10 + 1808)];

    v30 = v29;
    [v30 setTaskType_];
    [v30 setAttribute_];
    [v30 setValue_];

    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_252E3C130;
    *(v31 + 32) = a2;
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_252E3C130;
    *(v32 + 32) = v30;
    v10 = v30;
    v87 = a2;
    v33 = sub_252B4CA9C(v31, v32, 0, 1);
    v35 = v34;

    swift_setDeallocating();
    v36 = *(v32 + 16);
    swift_arrayDestroy();
    v92 = v35;
    v37 = v35 & 1;
    v91 = v33;
    sub_2529904E4(v33);
    v38 = v26;
    v16 = v26[2];
    v39 = v26[3];
    if (v16 >= v39 >> 1)
    {
      v38 = sub_2529F7BEC((v39 > 1), v16 + 1, 1, v26);
    }

    v38[2] = v16 + 1;
    v40 = &v38[2 * v16];
    v41 = v33;
    v40[4] = v33;
    *(v40 + 40) = v37;
    if (v92)
    {
      break;
    }

    v86 = v38;
    v45 = v33;
    v18 = &off_279711000;
    v46 = [v45 entityResponses];
    if (v46)
    {
      v47 = v46;
      type metadata accessor for HomeEntityResponse();
      v16 = sub_252E37264();

      if (v16 >> 62)
      {
        v84 = sub_252E378C4();
      }

      else
      {
        v84 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v84 = 0;
    }

    v48 = [v45 entityResponses];
    if (!v48)
    {
      goto LABEL_64;
    }

    v49 = v48;
    type metadata accessor for HomeEntityResponse();
    v24 = sub_252E37264();

    v100 = v20;
    v85 = v24;
    if (v24 >> 62)
    {
      a2 = sub_252E378C4();
      if (!a2)
      {
LABEL_56:
        v62 = MEMORY[0x277D84F90];
LABEL_57:

        if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
        {
          v63 = sub_252E378C4();
        }

        else
        {
          v63 = *(v62 + 2);
        }

        if (v63 == v84)
        {
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_252E3C130;
          *(v64 + 32) = v87;
          v65 = swift_initStackObject();
          *(v65 + 16) = xmmword_252E3C130;
          v66 = objc_allocWithZone(v88);
          v67 = v87;
          v68 = sub_252E36F04();
          v69 = [v66 initWithIdentifier:0 displayString:v68];

          v70 = v69;
          [v70 setBoolValue_];
          [v70 setType_];

          v71 = objc_allocWithZone(v90);
          v72 = sub_252E36F04();
          v73 = [v71 initWithIdentifier:0 displayString:v72];

          v74 = v73;
          [v74 setTaskType_];
          [v74 setAttribute_];
          [v74 setValue_];

          *(v65 + 32) = v74;
          v75 = sub_252B4CA9C(v64, v65, 0, 1);
          v77 = v76;

          swift_setDeallocating();
          v78 = *(v65 + 16);
          swift_arrayDestroy();
          v79 = v86;
          v81 = v86[2];
          v80 = v86[3];
          if (v81 >= v80 >> 1)
          {
            v79 = sub_2529F7BEC((v80 > 1), v81 + 1, 1, v86);
          }

          v79[2] = v81 + 1;
          v82 = &v79[2 * v81];
          v82[4] = v75;
          *(v82 + 40) = v77 & 1;
        }

        else
        {
LABEL_64:
          v79 = v86;
        }

        v83 = sub_252B4F134(v79);

        v44 = combineResults(results:)(v83);

        v41 = v91;
        goto LABEL_66;
      }
    }

    else
    {
      a2 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        goto LABEL_56;
      }
    }

    v23 = 0;
    v96 = v24 & 0xFFFFFFFFFFFFFF8;
    v97 = v24 & 0xC000000000000001;
    v95 = v24 + 32;
    v93 = a2;
    v94 = v10;
    while (1)
    {
      if (v97)
      {
        v50 = MEMORY[0x2530ADF00](v23, v85);
      }

      else
      {
        v22 = *(v96 + 16);
        if (v23 >= v22)
        {
          goto LABEL_52;
        }

        v50 = *(v95 + 8 * v23);
      }

      v51 = v50;
      if (__OFADD__(v23++, 1))
      {
        break;
      }

      v20 = [v10 attribute];
      v53 = [v51 taskResponses];
      if (v53)
      {
        v16 = v53;
        type metadata accessor for HomeUserTaskResponse();
        v24 = sub_252E37264();

        v98 = v51;
        v99 = v23;
        if (v24 >> 62)
        {
          v23 = sub_252E378C4();
          if (v23)
          {
LABEL_26:
            v10 = 0;
            a2 = (v24 & 0xC000000000000001);
            while (1)
            {
              if (a2)
              {
                v54 = MEMORY[0x2530ADF00](v10, v24);
              }

              else
              {
                v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v10 >= v22)
                {
                  goto LABEL_50;
                }

                v54 = *(v24 + 8 * v10 + 32);
              }

              v16 = v54;
              v55 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
                __break(1u);
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

              v56 = [v54 userTask];
              if (v56)
              {
                v18 = v56;
                v57 = [v56 attribute];

                if (v57 == v20)
                {
                  break;
                }
              }

              ++v10;
              if (v55 == v23)
              {
                goto LABEL_17;
              }
            }

            v20 = [v16 userTask];

            v10 = v94;
            v23 = v99;
            if (v20)
            {
              v24 = [v20 value];

              a2 = v93;
              v16 = v98;
              if (v24 && (v20 = [v24 BOOLValue], v24, (v20 & 1) == 0))
              {
                v20 = &v100;
                sub_252E37A94();
                v24 = *(v100 + 2);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
              }

              else
              {
              }
            }

            else
            {

              a2 = v93;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_26;
          }
        }

LABEL_17:

        a2 = v93;
        v10 = v94;
        v23 = v99;
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v58 = sub_252E36AD4();
        v24 = __swift_project_value_buffer(v58, qword_27F544D60);
        v101 = 0;
        v102 = 0xE000000000000000;
        sub_252E379F4();

        v101 = 0xD00000000000002DLL;
        v102 = 0x8000000252E6E870;
        v59 = [v51 description];
        v60 = sub_252E36F34();
        v18 = v61;

        MEMORY[0x2530AD570](v60, v18);

        v16 = v102;
        v20 = v24;
        sub_252CC3D90(v101, v102, 0xD00000000000008CLL, 0x8000000252E6E8A0);
      }

LABEL_18:
      if (v23 == a2)
      {
        v62 = v100;
        goto LABEL_57;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v21 = sub_2529F7BEC((v22 > 1), v24, 1, v21);
  }

  v42 = v33;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v43 = sub_252E36AD4();
  __swift_project_value_buffer(v43, qword_27F544C70);
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8ED30);
  sub_252CC4050(v101, v102, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD00000000000001BLL, 0x8000000252E8ED50, 280);

  v44 = parse(error:with:)(v33, 0);
LABEL_66:
  a3(v44);

  sub_252927D3C(v41);
  sub_252927D3C(v41);
}

void sub_252C7A9E8(void *a1, void *a2, void *a3, void (*a4)(char *))
{
  v96 = type metadata accessor for HomeUserTask();
  v5 = objc_allocWithZone(v96);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C130;
  *(v9 + 32) = a2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v8;
  v11 = v8;
  v94 = a2;
  v12 = sub_252B4CA9C(v9, inited, 0, 1);
  LOBYTE(v8) = v13;

  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  if (v8)
  {
    inited = v12;
    if (qword_27F53F498 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  v95 = v12;
  v17 = [v12 entityResponses];
  if (v17)
  {
    v18 = v17;
    type metadata accessor for HomeEntityResponse();
    v19 = sub_252E37264();

    if (v19 >> 62)
    {
      v91 = sub_252E378C4();
    }

    else
    {
      v91 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v91 = 0;
  }

  v20 = [v95 entityResponses];
  if (!v20)
  {
    goto LABEL_60;
  }

  v21 = v20;
  type metadata accessor for HomeEntityResponse();
  v22 = sub_252E37264();

  v106 = MEMORY[0x277D84F90];
  v92 = v22;
  if (v22 >> 62)
  {
    v23 = sub_252E378C4();
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_52:
    v48 = MEMORY[0x277D84F90];
LABEL_53:

    if (v48 < 0 || (v48 & 0x4000000000000000) != 0)
    {
      v49 = sub_252E378C4();
    }

    else
    {
      v49 = *(v48 + 16);
    }

    if (v49 == v91)
    {
      v50 = sub_252B4CD30(a1, 0, 1);
      v52 = v51;
      v53 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
      v55 = v53[2];
      v54 = v53[3];
      if (v55 >= v54 >> 1)
      {
        v53 = sub_2529F7BEC((v54 > 1), v55 + 1, 1, v53);
      }

      v53[2] = v55 + 1;
      v56 = &v53[2 * v55];
      v56[4] = v50;
      *(v56 + 40) = v52 & 1;
LABEL_63:
      v90 = sub_252B4F134(v53);

      v16 = combineResults(results:)(v90);

      inited = v95;
      a4(v16);
      goto LABEL_64;
    }

LABEL_60:
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_252E3C130;
    *(v57 + 32) = a3;
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_252E3C130;
    v59 = type metadata accessor for HomeAttributeValue();
    v60 = objc_allocWithZone(v59);
    v61 = a3;
    v62 = sub_252E36F04();
    v63 = [v60 initWithIdentifier:0 displayString:v62];

    v64 = v63;
    [v64 setBoolValue_];
    [v64 setType_];

    v65 = objc_allocWithZone(v96);
    v66 = sub_252E36F04();
    v67 = [v65 initWithIdentifier:0 displayString:v66];

    v68 = v67;
    [v68 setTaskType_];
    [v68 setAttribute_];
    [v68 setValue_];

    *(v58 + 32) = v68;
    v69 = sub_252B4CA9C(v57, v58, 0, 1);

    sub_252927D3C(v69);
    swift_setDeallocating();
    v70 = *(v58 + 16);
    swift_arrayDestroy();
    v71 = sub_252B4CD30(a1, 0, 1);
    v73 = v72;
    v53 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
    v75 = v53[2];
    v74 = v53[3];
    if (v75 >= v74 >> 1)
    {
      v53 = sub_2529F7BEC((v74 > 1), v75 + 1, 1, v53);
    }

    v53[2] = v75 + 1;
    v76 = &v53[2 * v75];
    v76[4] = v71;
    *(v76 + 40) = v73 & 1;
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_252E3C130;
    *(v77 + 32) = v94;
    v78 = swift_initStackObject();
    *(v78 + 16) = xmmword_252E3C130;
    v79 = objc_allocWithZone(v59);
    v80 = v94;
    v81 = sub_252E36F04();
    v82 = [v79 initWithIdentifier:0 displayString:v81];

    v83 = v82;
    [v83 setBoolValue_];
    [v83 setType_];

    v84 = objc_allocWithZone(v96);
    v85 = sub_252E36F04();
    v86 = [v84 initWithIdentifier:0 displayString:v85];

    v87 = v86;
    [v87 setTaskType_];
    [v87 setAttribute_];
    [v87 setValue_];

    *(v78 + 32) = v87;
    v88 = sub_252B4CA9C(v77, v78, 0, 1);

    sub_252927D3C(v88);
    swift_setDeallocating();
    v89 = *(v78 + 16);
    swift_arrayDestroy();
    goto LABEL_63;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_52;
  }

LABEL_12:
  v24 = 0;
  v102 = v22 & 0xFFFFFFFFFFFFFF8;
  v103 = v22 & 0xC000000000000001;
  v101 = v22 + 32;
  v99 = v23;
  v100 = v11;
  while (1)
  {
    if (v103)
    {
      v25 = MEMORY[0x2530ADF00](v24, v92);
    }

    else
    {
      if (v24 >= *(v102 + 16))
      {
        goto LABEL_48;
      }

      v25 = *(v101 + 8 * v24);
    }

    v26 = v25;
    if (__OFADD__(v24++, 1))
    {
      break;
    }

    v28 = [v11 attribute];
    v29 = [v26 taskResponses];
    if (v29)
    {
      v30 = v29;
      v104 = v26;
      v105 = v24;
      type metadata accessor for HomeUserTaskResponse();
      v31 = sub_252E37264();

      if (v31 >> 62)
      {
        v32 = sub_252E378C4();
        if (v32)
        {
LABEL_22:
          inited = 0;
          v11 = (v31 & 0xC000000000000001);
          while (1)
          {
            if (v11)
            {
              v33 = MEMORY[0x2530ADF00](inited, v31);
            }

            else
            {
              if (inited >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v33 = *(v31 + 8 * inited + 32);
            }

            v34 = v33;
            v35 = inited + 1;
            if (__OFADD__(inited, 1))
            {
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v36 = [v33 userTask];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 attribute];

              if (v38 == v28)
              {
                break;
              }
            }

            ++inited;
            if (v35 == v32)
            {
              goto LABEL_13;
            }
          }

          v44 = [v34 userTask];

          v24 = v105;
          if (v44)
          {
            v45 = [v44 value];

            v23 = v99;
            v11 = v100;
            inited = v104;
            if (v45 && (v46 = [v45 BOOLValue], v45, (v46 & 1) != 0))
            {
              sub_252E37A94();
              v47 = *(v106 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }
          }

          else
          {

            v23 = v99;
            v11 = v100;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
          goto LABEL_22;
        }
      }

LABEL_13:

      v23 = v99;
      v11 = v100;
      v24 = v105;
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      __swift_project_value_buffer(v39, qword_27F544D60);
      sub_252E379F4();

      v40 = [v26 description];
      v41 = sub_252E36F34();
      v43 = v42;

      MEMORY[0x2530AD570](v41, v43);

      inited = 0x8000000252E6E870;
      sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6E870, 0xD00000000000008CLL, 0x8000000252E6E8A0);
    }

LABEL_14:
    if (v24 == v23)
    {
      v48 = v106;
      goto LABEL_53;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_3:
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E8ED70);
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000017, 0x8000000252E8EDA0, 336);

  v16 = parse(error:with:)(inited, a1);
  a4(v16);
LABEL_64:

  sub_252927D3C(inited);
}

void sub_252C7B5C4(void *a1, void *a2, unint64_t a3, void (*a4)(char *))
{
  v5 = a1;
  v6 = sub_252B4CD30(a1, 0, 1);
  LOBYTE(v8) = v7;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v10[2];
  v11 = v10[3];
  inited = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v10[2] = inited;
    v14 = &v10[2 * v12];
    v14[4] = v6;
    *(v14 + 40) = v8 & 1;
    v64 = type metadata accessor for HomeUserTask();
    v15 = objc_allocWithZone(v64);
    v16 = sub_252E36F04();
    v17 = [v15 initWithIdentifier:0 displayString:v16];

    v18 = v17;
    [v18 setTaskType_];
    [v18 setAttribute_];
    [v18 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C130;
    *(v8 + 32) = a3;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v18;
    v12 = inited + 32;
    v19 = v18;
    v20 = a3;
    v21 = sub_252B4CA9C(v8, inited, 0, 1);
    LOBYTE(v18) = v22;

    swift_setDeallocating();
    v23 = *(inited + 16);
    swift_arrayDestroy();
    if (v18)
    {
      break;
    }

    v63 = v10;
    v6 = &off_279711000;
    v66 = v21;
    v27 = [v21 entityResponses];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for HomeEntityResponse();
      v29 = sub_252E37264();

      if (v29 >> 62)
      {
        v60 = sub_252E378C4();
      }

      else
      {
        v60 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v60 = 0;
    }

    v30 = [v66 entityResponses];
    if (!v30)
    {
      goto LABEL_60;
    }

    v31 = v30;
    type metadata accessor for HomeEntityResponse();
    v32 = sub_252E37264();

    v72 = v9;
    v62 = v32;
    if (v32 >> 62)
    {
      v5 = sub_252E378C4();
      if (!v5)
      {
LABEL_54:
        v44 = MEMORY[0x277D84F90];
LABEL_55:

        if ((v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
        {
          v45 = sub_252E378C4();
        }

        else
        {
          v45 = *(v44 + 2);
        }

        if (v45 == v61)
        {
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_252E3C130;
          *(v46 + 32) = a2;
          v47 = swift_initStackObject();
          *(v47 + 16) = xmmword_252E3C130;
          v48 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v49 = a2;
          v50 = sub_252E36F04();
          v51 = [v48 initWithIdentifier:0 displayString:v50];

          v52 = v51;
          [v52 setBoolValue_];
          [v52 setType_];

          v53 = objc_allocWithZone(v64);
          v54 = sub_252E36F04();
          v55 = [v53 initWithIdentifier:0 displayString:v54];

          v56 = v55;
          [v56 setTaskType_];
          [v56 setAttribute_];
          [v56 setValue_];

          *(v47 + 32) = v56;
          v57 = sub_252B4CA9C(v46, v47, 0, 1);

          sub_252927D3C(v57);
          swift_setDeallocating();
          v58 = *(v47 + 16);
          swift_arrayDestroy();
        }

LABEL_60:
        v59 = sub_252B4F134(v63);

        v26 = combineResults(results:)(v59);

        v24 = v66;
        goto LABEL_61;
      }
    }

    else
    {
      v5 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_54;
      }
    }

    a3 = 0;
    v69 = v19;
    v68 = v5;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x2530ADF00](a3, v62);
      }

      else
      {
        v11 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3 >= v11)
        {
          goto LABEL_50;
        }

        v33 = *(v62 + 32 + 8 * a3);
      }

      v10 = v33;
      if (__OFADD__(a3++, 1))
      {
        break;
      }

      v9 = [v19 attribute];
      v35 = [v10 taskResponses];
      if (v35)
      {
        v8 = v35;
        type metadata accessor for HomeUserTaskResponse();
        inited = sub_252E37264();

        v70 = v10;
        v71 = a3;
        if (inited >> 62)
        {
          v36 = sub_252E378C4();
          if (v36)
          {
LABEL_24:
            v8 = 0;
            v5 = (inited & 0xC000000000000001);
            v10 = (inited & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v5)
              {
                v37 = MEMORY[0x2530ADF00](v8, inited);
              }

              else
              {
                v11 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v11)
                {
                  goto LABEL_48;
                }

                v37 = *(inited + 8 * v8 + 32);
              }

              v38 = v37;
              a3 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              v39 = [v37 userTask];
              if (v39)
              {
                v12 = v39;
                v6 = [v39 attribute];

                if (v6 == v9)
                {
                  break;
                }
              }

              ++v8;
              if (a3 == v36)
              {
                goto LABEL_15;
              }
            }

            v9 = [v38 userTask];

            a3 = v71;
            if (v9)
            {
              v8 = [v9 value];

              v5 = v68;
              v19 = v69;
              inited = v70;
              if (v8 && (v9 = [v8 BOOLValue], v8, (v9 & 1) == 0))
              {
                v9 = &v72;
                sub_252E37A94();
                v6 = *(v72 + 2);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
              }

              else
              {
              }
            }

            else
            {

              v5 = v68;
              v19 = v69;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v36 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_24;
          }
        }

LABEL_15:

        v5 = v68;
        v19 = v69;
        a3 = v71;
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v40 = sub_252E36AD4();
        v8 = __swift_project_value_buffer(v40, qword_27F544D60);
        v73 = 0;
        v74 = 0xE000000000000000;
        sub_252E379F4();

        v6 = 0xD000000000000019;
        v73 = 0xD00000000000002DLL;
        v74 = 0x8000000252E6E870;
        v41 = [v10 description];
        v42 = sub_252E36F34();
        v12 = v43;

        MEMORY[0x2530AD570](v42, v12);

        inited = v74;
        v9 = v8;
        sub_252CC3D90(v73, v74, 0xD00000000000008CLL, 0x8000000252E6E8A0);
      }

LABEL_16:
      if (a3 == v5)
      {
        v44 = v72;
        goto LABEL_55;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v10 = sub_2529F7BEC((v11 > 1), inited, 1, v10);
  }

  v24 = v21;

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544C70);
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  v72 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8ED30);
  sub_252CC4050(v73, v74, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000019, 0x8000000252E8EDC0, 384);

  v26 = parse(error:with:)(v21, v5);
LABEL_61:
  a4(v26);

  sub_252927D3C(v24);
}

void sub_252C7BFA0(void *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = [a1 filters];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v110 = v9;
  v10 = [a1 userTask];
  if (!v10)
  {

LABEL_9:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000021, 0x8000000252E68B10, 33);
    v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v25 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v24[v25] = 5;
    [v24 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v26 = sub_252E37254();
    [v24 setEntityResponses_];

    a2(v24);
    goto LABEL_48;
  }

  v11 = v10;
  v104 = v8;
  type metadata accessor for HomeStore();
  v12 = static HomeStore.shared.getter();
  v13 = v12[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v13 != 2 && (v13 & 1) == 0 || (v14 = [a1 filters]) == 0)
  {

LABEL_47:
    v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v48 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v24[v48] = 102;
    [v24 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v49 = sub_252E37254();
    [v24 setEntityResponses_];

    a2(v24);

LABEL_48:
    return;
  }

  v15 = v14;
  v16 = sub_252E37264();

  v103 = a1;
  v17 = [a1 userTask];
  v18 = HomeStore.accessories(matching:supporting:)(v16, v17);
  v20 = v19;

  if (v20)
  {
    v21 = v18;
    v22 = 1;
LABEL_46:
    sub_252929F10(v21, v22);
    goto LABEL_47;
  }

  if (v18 >> 62)
  {
    goto LABEL_44;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    v21 = v18;
    v22 = 0;
    goto LABEL_46;
  }

LABEL_15:
  v101 = v11;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v98 = a3;
  v99 = a2;
  v27 = sub_252E36AD4();
  a2 = __swift_project_value_buffer(v27, qword_27F544C70);
  sub_252E379F4();

  v11 = type metadata accessor for Accessory();
  v28 = MEMORY[0x2530AD730](v18, v11);
  MEMORY[0x2530AD570](v28);

  sub_252CC3D90(0xD000000000000016, 0x8000000252E8EBA0, 0xD00000000000007FLL, 0x8000000252E8EB20);

  v29 = sub_252C78D40(v18, &v110);
  sub_252E379F4();

  v109[0] = 0xD000000000000013;
  v109[1] = 0x8000000252E8EBC0;
  v100 = v18;
  v30 = MEMORY[0x2530AD730](v18, v11);
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(0xD000000000000013, 0x8000000252E8EBC0, 0xD00000000000007FLL, 0x8000000252E8EB20);

  if (!(v29 >> 62))
  {
    a3 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v102 = v9;
    if (!a3)
    {
      goto LABEL_50;
    }

    goto LABEL_19;
  }

  a3 = sub_252E378C4();
  v102 = v9;
  if (a3)
  {
LABEL_19:
    v31 = 0;
    v105 = v29 & 0xFFFFFFFFFFFFFF8;
    v107 = v29 & 0xC000000000000001;
    do
    {
      if (v107)
      {
        v9 = v29;
        v33 = MEMORY[0x2530ADF00](v31, v29);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v31 >= *(v105 + 16))
        {
          goto LABEL_43;
        }

        v9 = v29;
        v33 = *(v29 + 8 * v31 + 32);

        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          if (!sub_252E378C4())
          {
            goto LABEL_45;
          }

          goto LABEL_15;
        }
      }

      v18 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v35 = [*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      a2 = sub_252E36F34();
      v37 = v36;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v38 = off_27F546230;
      if (*(off_27F546230 + 2) && (v39 = sub_252A44A10(a2, v37), (v40 & 1) != 0))
      {
        v41 = *(v38[7] + 8 * v39);

        if (v41 == 34)
        {

LABEL_41:
          v47 = 0;
          goto LABEL_51;
        }
      }

      else
      {
      }

      v42 = [*(v33 + v18) accessory];
      if (v42)
      {
        v43 = v42;
        v44 = *(v11 + 48);
        v45 = *(v11 + 52);
        swift_allocObject();
        v46 = *(sub_252D4CE7C(v43) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

        if (v46 >> 62)
        {
          a2 = sub_252E378C4();
        }

        else
        {
          a2 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a2 == 1)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      ++v31;
      v32 = v34 == a3;
      v29 = v9;
    }

    while (!v32);
  }

LABEL_50:
  v47 = 1;
LABEL_51:

  v50 = sub_252C790FC(v100);
  v51 = sub_252C7964C(v100);
  sub_252929F10(v100, 0);
  sub_252E379F4();

  strcpy(v109, "Valve filter: ");
  HIBYTE(v109[1]) = -18;
  v108 = v50;
  v52 = [v50 description];
  v53 = sub_252E36F34();
  v55 = v54;

  MEMORY[0x2530AD570](v53, v55);

  sub_252CC3D90(v109[0], v109[1], 0xD00000000000007FLL, 0x8000000252E8EB20);

  sub_252E379F4();

  v109[0] = 0xD000000000000015;
  v109[1] = 0x8000000252E8EBE0;
  v56 = [v51 description];
  v57 = sub_252E36F34();
  v59 = v58;

  MEMORY[0x2530AD570](v57, v59);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E8EBE0, 0xD00000000000007FLL, 0x8000000252E8EB20);

  v60 = [v103 userTask];
  v61 = v101;
  if (!v60)
  {
    v106 = v51;
    sub_252C515AC();
    v64 = v102;
    goto LABEL_60;
  }

  v62 = v60;
  v63 = [v60 taskType];

  v64 = v102;
  if (v63 != 1)
  {
    v106 = v51;
    goto LABEL_60;
  }

  v65 = 0xD00000000000007FLL;
  sub_252CC3D90(0xD000000000000025, 0x8000000252E8EC40, 0xD00000000000007FLL, 0x8000000252E8EB20);
  v66 = [v103 userTask];
  if (!v66 || (v67 = v66, v68 = [v66 value], v67, !v68) || (v69 = objc_msgSend(v68, sel_BOOLValue), v68, !v69))
  {
    if (v47)
    {
      sub_252CC3D90(0xD000000000000012, 0x8000000252E8EC70, 0xD00000000000007FLL, 0x8000000252E8EB20);
      v70 = v108;
      sub_252C7B5C4(v103, v51, v108, v99);
      goto LABEL_66;
    }

    sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E8EC90, 0xD00000000000007FLL, 0x8000000252E8EB20);
    v109[0] = MEMORY[0x277D84F90];
    if (v102 >> 62)
    {
      goto LABEL_91;
    }

    v78 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v106 = v51;
    if (v78)
    {
LABEL_69:
      v51 = 0;
      v65 = v64 & 0xC000000000000001;
      v79 = v64 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v65)
        {
          v80 = MEMORY[0x2530ADF00](v51, v64);
        }

        else
        {
          if (v51 >= *(v79 + 16))
          {
            goto LABEL_90;
          }

          v80 = *(v64 + 8 * v51 + 32);
        }

        v81 = v80;
        v64 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v78 = sub_252E378C4();
          v106 = v51;
          if (!v78)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }

        v82 = [v80 isExcludeFilter];
        sub_252956D08();
        v83 = sub_252E37674();
        v84 = v83;
        if (!v82)
        {
          break;
        }

        v85 = sub_252E37694();

        if ((v85 & 1) == 0)
        {
          goto LABEL_78;
        }

LABEL_82:
        MEMORY[0x2530AD700]();
        if (*((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v93 = *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v51;
        v32 = v64 == v78;
        v64 = v102;
        if (v32)
        {
          v94 = v109[0];
          v65 = 0xD00000000000007FLL;
          goto LABEL_93;
        }
      }

LABEL_78:
      v86 = [v81 homeEntityName];
      if (v86)
      {
      }

      else
      {
        v87 = [v81 outerDeviceName];
        if (v87)
        {

          type metadata accessor for MutableMatterHomeFilter();
          swift_initStackObject();
          v88 = v81;
          v89 = sub_2529D0A90(v88);

          v90 = v89[8];
          v91 = v89[4];
          v89[3] = v89[7];
          v89[4] = v90;

          v92 = v89[8];
          v89[7] = 0;
          v89[8] = 0;

          sub_2529D0538();
        }
      }

      goto LABEL_82;
    }

LABEL_92:
    v94 = MEMORY[0x277D84F90];
LABEL_93:

    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_252E379F4();

    v109[0] = v65 - 97;
    v109[1] = 0x8000000252E8ECD0;
    v95 = MEMORY[0x2530AD730](v94, v104);
    v97 = v96;

    MEMORY[0x2530AD570](v95, v97);

    sub_252CC3D90(v109[0], v109[1], 0xD00000000000007FLL, 0x8000000252E8EB20);

    v64 = v94;
    v61 = v101;
LABEL_60:
    sub_252CC3D90(0xD000000000000033, 0x8000000252E8EC00, 0xD00000000000007FLL, 0x8000000252E8EB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v61;
    v72 = v61;
    v73 = sub_252B4CA9C(v64, inited, 0, 1);
    v75 = v74;
    swift_setDeallocating();
    v76 = *(inited + 16);
    swift_arrayDestroy();
    if (v75)
    {
      v109[0] = 0;
      v109[1] = 0xE000000000000000;
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(v109[0], v109[1], 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000021, 0x8000000252E68B10, 93);

      v77 = parse(error:with:)(v73, v103);
      (v99)();
    }

    else
    {
      v99(v73);
    }

    sub_252927D3C(v73);

    return;
  }

  if (v47)
  {
    sub_252CC3D90(0xD000000000000010, 0x8000000252E8ECF0, 0xD00000000000007FLL, 0x8000000252E8EB20);
    v70 = v108;
    sub_252C7A9E8(v103, v51, v108, v99);
  }

  else
  {
    sub_252CC3D90(0xD000000000000017, 0x8000000252E8ED10, 0xD00000000000007FLL, 0x8000000252E8EB20);
    v70 = v108;
    sub_252C79DF8(v51, v108, v99);
  }

LABEL_66:
}

BOOL sub_252C7CEA4(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 27)
    {
      return sub_252C52230();
    }
  }

  else
  {
    sub_252C515AC();
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 46)
    {
      return sub_252C52230();
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252C7CF7C()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 288), (v0 + 2));

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 128))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((v4 & 1) != 0 || (v5 = *(v0[7] + 64), (sub_252C8055C() & 1) == 0))
  {
    v9 = *(v0[7] + 64);
    if (sub_252C8055C())
    {
      v10 = swift_task_alloc();
      v0[9] = v10;
      *v10 = v0;
      v10[1] = sub_252C7D24C;
      v11 = v0[7];

      return sub_252C7EA9C(v9);
    }

    else if (sub_252C80C64(v9))
    {
      v12 = swift_task_alloc();
      v0[10] = v12;
      *v12 = v0;
      v12[1] = sub_252C7D340;
      v13 = v0[7];

      return sub_252C7E540(v9);
    }

    else
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v14 = sub_252E36AD4();
      __swift_project_value_buffer(v14, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E8F040, 0xD00000000000007DLL, 0x8000000252E8EE40);
      v15 = v0[1];

      return v15();
    }
  }

  else
  {
    *(sub_252B680FC() + 50) = 1;

    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_252963EC4;
    v7 = v0[7];

    return sub_252C7D434(v5);
  }
}

uint64_t sub_252C7D24C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_252C7D340()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_252C7D434(uint64_t a1)
{
  v2[76] = v1;
  v2[75] = a1;
  v3 = sub_252E34014();
  v2[77] = v3;
  v4 = *(v3 - 8);
  v2[78] = v4;
  v5 = *(v4 + 64) + 15;
  v2[79] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C7D53C, 0, 0);
}

uint64_t sub_252C7D53C()
{
  v65 = v0;
  v63 = (v0 + 688);
  if (qword_27F53F500 != -1)
  {
LABEL_56:
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = *(v0 + 600);
  v3 = sub_252E36AD4();
  *(v0 + 656) = __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E8EFF0, 0xD00000000000007DLL, 0x8000000252E8EE40);
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  (v5)(v1, 1, 1, v4);
  *(v0 + 576) = 0u;
  *(v0 + 688) = 0;
  if (sub_252C4D664(5))
  {
    v6 = [*(v0 + 600) filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      if (v8 >> 62)
      {
LABEL_59:
        v9 = sub_252E378C4();
        if (v9)
        {
LABEL_6:
          v62 = v5;
          v10 = 0;
          v68 = v8 & 0xC000000000000001;
          while (1)
          {
            if (v68)
            {
              v11 = MEMORY[0x2530ADF00](v10, v8);
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v14 = [v11 isExcludeFilter];
            sub_252956D08();
            v15 = sub_252E37674();
            v16 = v15;
            if (!v14)
            {
              break;
            }

            v17 = sub_252E37694();

            if ((v17 & 1) == 0)
            {
              goto LABEL_48;
            }

            ++v10;
            if (v13 == v9)
            {
              v50 = 1;
LABEL_51:
              v5 = v62;
              goto LABEL_61;
            }
          }

LABEL_48:

          v48 = [v12 homeEntityName];

          if (v48)
          {
            v49 = *(v0 + 640);
            sub_252E36F34();

            sub_252E37024();
            v50 = 0;
            goto LABEL_51;
          }

          v50 = 1;
          v5 = v62;
          goto LABEL_62;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_6;
        }
      }

      v50 = 1;
LABEL_61:
    }

    else
    {
      v50 = 1;
    }

LABEL_62:
    v51 = *(v0 + 648);
    v52 = *(v0 + 640);
    (v5)(v52, v50, 1, v4);
    sub_252956C98(v52, v51);
    goto LABEL_66;
  }

  type metadata accessor for HomeStore();
  v18 = static HomeStore.shared.getter();
  v19 = v18[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v19 != 2 && (v19 & 1) == 0 || (v20 = [*(v0 + 600) filters]) == 0)
  {

    goto LABEL_66;
  }

  v21 = v20;
  v22 = *(v0 + 600);
  type metadata accessor for HomeFilter();
  v23 = sub_252E37264();

  v24 = [v22 userTask];
  v4 = HomeStore.services(matching:supporting:)(v23, v24);
  v26 = v25;

  if (v26)
  {
    v27 = v4;
    v28 = 1;
LABEL_65:
    sub_252929F10(v27, v28);
    goto LABEL_66;
  }

  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_64:
    v27 = v4;
    v28 = 0;
    goto LABEL_65;
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_64;
  }

LABEL_25:
  v29 = *(v0 + 600);
  type metadata accessor for HomeAutomationEntityResponses();

  *(v0 + 576) = sub_25299DDFC(v30);
  sub_25293DEE0(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v31 = v29;
  v5 = sub_252953488(v29, __dst, 0);

  v32 = 0;
  *(v0 + 584) = v5;
  v68 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v68)
    {
      v33 = MEMORY[0x2530ADF00](v32, v4);
      v34 = __OFADD__(v32++, 1);
      if (v34)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v32 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v33 = *(v4 + 32 + 8 * v32);

      v34 = __OFADD__(v32++, 1);
      if (v34)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v5 = qword_27F575A48;
    v35 = [*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v36 = sub_252E36F34();
    v38 = v37;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v39 = off_27F546230;
    if (*(off_27F546230 + 2) && (v40 = sub_252A44A10(v36, v38), (v41 & 1) != 0))
    {
      v42 = *(v39[7] + 8 * v40);
    }

    else
    {
      v42 = 0;
    }

    if (*(v5 + 16))
    {
      v43 = *(v5 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v42);
      v44 = sub_252E37F14();
      v45 = -1 << *(v5 + 32);
      v46 = v44 & ~v45;
      if ((*(v5 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
      {
        break;
      }
    }

LABEL_26:

    if (v32 == v8)
    {
      sub_252929F10(v4, 0);
      *v63 = 0;
      goto LABEL_66;
    }
  }

  v47 = ~v45;
  while (*(*(v5 + 48) + 8 * v46) != v42)
  {
    v46 = (v46 + 1) & v47;
    if (((*(v5 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_252929F10(v4, 0);

  *v63 = 1;
LABEL_66:
  v53 = *(v0 + 648);
  v54 = *(v0 + 632);
  v55 = *(v0 + 608);
  v56 = v55[6];
  v57 = v55[7];
  __swift_project_boxed_opaque_existential_1(v55 + 3, v56);
  v58 = swift_task_alloc();
  *(v0 + 664) = v58;
  v58[2] = v63;
  v58[3] = v53;
  v58[4] = v0 + 584;
  v58[5] = v0 + 576;
  sub_252AD7CC4();
  v59 = swift_task_alloc();
  *(v0 + 672) = v59;
  *v59 = v0;
  v59[1] = sub_252C7DCD0;
  v60 = *(v0 + 632);
  v67 = v57;

  return sub_252BDB88C(v0 + 520, &unk_252E58030, v58, v60, 0, 0, 0, v56);
}

uint64_t sub_252C7DCD0()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v4 = *(*v1 + 632);
  v5 = *(*v1 + 624);
  v6 = *(*v1 + 616);
  v10 = *v1;
  *(*v1 + 680) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C7DF0C;
  }

  else
  {
    v8 = *(v2 + 664);

    v7 = sub_252C7DE50;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C7DE50()
{
  sub_252C8082C((v0 + 65));
  __swift_destroy_boxed_opaque_existential_1(v0 + 65);
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[73];

  v5 = v0[72];

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252C7DF0C()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[82];

  sub_252E379F4();
  v0[70] = 0;
  v0[71] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  v0[74] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[70], v0[71], 0xD00000000000007DLL, 0x8000000252E8EE40, 0xD000000000000023, 0x8000000252E8F010, 100);

  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[73];

  v8 = v0[72];

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252C7E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for HomeAutomationRequestSentParameters(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C7E140, 0, 0);
}

uint64_t sub_252C7E140()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[8] = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v7 = *v6;
  v8 = *(v2 + 28);
  v9 = sub_252E36324();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v7;
  v10 = *(v2 + 32);
  *(v1 + v10) = 0;
  sub_252956BAC(v5, v1 + v8);
  *(v1 + 8) = *v4;
  *(v1 + v10) = *v3;

  v11 = sub_252C08158();
  v0[9] = v11;
  v12 = *(MEMORY[0x277D55BE8] + 4);
  v15 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_252C7E2D8;

  return v15(0xD00000000000001ALL, 0x8000000252E8EEC0, v11);
}

uint64_t sub_252C7E2D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v8 = sub_252C7E4B4;
  }

  else
  {
    *(v4 + 96) = a1;
    v8 = sub_252C7E424;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C7E424()
{
  v1 = v0[8];
  sub_252C80C04(v0[7], type metadata accessor for HomeAutomationRequestSentParameters);

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_252C7E4B4()
{
  v1 = v0[8];
  sub_252C80C04(v0[7], type metadata accessor for HomeAutomationRequestSentParameters);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_252C7E540(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_252C7E560, 0, 0);
}

uint64_t sub_252C7E560()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8EF60, 0xD00000000000007DLL, 0x8000000252E8EE40);
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;

  v7 = v2;
  sub_252943BD0(sub_252C80B50, v6, 0, v4, v5);

  sub_252C8082C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_252C7E7A4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9 - 8];
  v11 = *(a1 + 16);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v10, 1, 1, v12);
  sub_25293DEE0(v22);
  memcpy(v21, v22, sizeof(v21));
  v14 = a2;
  v15 = sub_252953488(a2, v21, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3EF80;
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = 0x8000000252E728F0;
  sub_252956C1C(v10, v8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
  }

  else
  {
    *(v16 + 72) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 48));
    (*(v13 + 32))(boxed_opaque_existential_0, v8, v12);
  }

  *(v16 + 80) = 0x6572756365537369;
  *(v16 + 88) = 0xEF74736575716552;
  v18 = MEMORY[0x277D839B0];
  *(v16 + 96) = 0;
  *(v16 + 120) = v18;
  *(v16 + 128) = 0xD000000000000010;
  *(v16 + 136) = 0x8000000252E72940;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0u;
  strcpy((v16 + 176), "intentContext");
  *(v16 + 190) = -4864;
  *(v16 + 216) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v16 + 192) = v15;

  sub_252E362B4();

  return sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
}

uint64_t sub_252C7EA9C(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  v3 = sub_252E34014();
  v2[78] = v3;
  v4 = *(v3 - 8);
  v2[79] = v4;
  v5 = *(v4 + 64) + 15;
  v2[80] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543448, &unk_252E4BAA8) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v7 = type metadata accessor for CompletionSnippetModel();
  v2[82] = v7;
  v8 = *(v7 - 8);
  v2[83] = v8;
  v9 = *(v8 + 64) + 15;
  v2[84] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C7EC44, 0, 0);
}

uint64_t sub_252C7EC44()
{
  v82 = v0;
  if (qword_27F53F500 != -1)
  {
LABEL_57:
    swift_once();
  }

  v1 = 0xD000000000000010;
  v2 = *(v0 + 696);
  v3 = *(v0 + 608);
  v4 = sub_252E36AD4();
  *(v0 + 704) = __swift_project_value_buffer(v4, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000015, 0x8000000252E8EE20, 0xD00000000000007DLL, 0x8000000252E8EE40);
  v5 = sub_252E36324();
  v79 = *(v5 - 8);
  v6 = *(v79 + 56);
  (v6)(v2, 1, 1, v5);
  if (sub_252C4D664(5))
  {
    v7 = [*(v0 + 608) filters];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for HomeFilter();
      v9 = sub_252E37264();

      v78 = v5;
      if (v9 >> 62)
      {
LABEL_60:
        v10 = sub_252E378C4();
        if (v10)
        {
LABEL_6:
          v73 = v6;
          v76 = v0;
          v11 = 0;
          v0 = v9 & 0xC000000000000001;
          while (1)
          {
            if (v0)
            {
              v12 = MEMORY[0x2530ADF00](v11, v9);
            }

            else
            {
              if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v12 = *(v9 + 8 * v11 + 32);
            }

            v13 = v12;
            v14 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v15 = [v12 isExcludeFilter];
            sub_252956D08();
            v16 = sub_252E37674();
            v17 = v16;
            if (!v15)
            {
              break;
            }

            v18 = sub_252E37694();

            if ((v18 & 1) == 0)
            {
              goto LABEL_49;
            }

            ++v11;
            if (v14 == v10)
            {
              v54 = 1;
              v0 = v76;
LABEL_52:
              v1 = 0xD000000000000010;
              v5 = v78;
              v6 = v73;
              goto LABEL_62;
            }
          }

LABEL_49:

          v52 = [v13 homeEntityName];

          if (v52)
          {
            v0 = v76;
            v53 = *(v76 + 688);
            sub_252E36F34();

            sub_252E37024();
            v54 = 0;
            goto LABEL_52;
          }

          v54 = 1;
          v0 = v76;
          v5 = v78;
          v1 = 0xD000000000000010;
          v6 = v73;
          goto LABEL_63;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_6;
        }
      }

      v54 = 1;
      v5 = v78;
LABEL_62:
    }

    else
    {
      v54 = 1;
    }

LABEL_63:
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    sub_25293847C(v55, &qword_27F540298, &unk_252E3C270);
    (v6)(v56, v54, 1, v5);
    sub_2529439A0(v56, v55);
    goto LABEL_67;
  }

  type metadata accessor for HomeStore();
  v19 = static HomeStore.shared.getter();
  v20 = v19;
  v21 = v19[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v21 != 2 && (v21 & 1) == 0)
  {

LABEL_67:
    v29 = 0;
    v30 = 0;
    v9 = 0;
    goto LABEL_68;
  }

  v9 = [*(v0 + 608) filters];
  if (!v9)
  {

    v29 = 0;
    v30 = 0;
    goto LABEL_68;
  }

  v22 = *(v0 + 608);
  type metadata accessor for HomeFilter();
  v23 = sub_252E37264();

  v24 = [v22 userTask];
  v25 = HomeStore.services(matching:supporting:)(v23, v24);
  LOBYTE(v22) = v26;

  if (v22)
  {
    v27 = v25;
    v28 = 1;
LABEL_66:
    sub_252929F10(v27, v28);
    goto LABEL_67;
  }

  v6 = v25 & 0xFFFFFFFFFFFFFF8;
  if (!(v25 >> 62))
  {
    v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_26;
    }

LABEL_65:
    v27 = v25;
    v28 = 0;
    goto LABEL_66;
  }

  v31 = sub_252E378C4();
  if (!v31)
  {
    goto LABEL_65;
  }

LABEL_26:
  v72 = v31;
  v32 = *(v0 + 608);
  type metadata accessor for HomeAutomationEntityResponses();

  v9 = sub_25299DDFC(v33);
  sub_25293DEE0(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v34 = v32;
  v30 = sub_252953488(v32, __dst, 0);

  v35 = 0;
  v71 = v25;
  v75 = v25 + 32;
  v77 = v25 & 0xC000000000000001;
  v74 = v25 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v77)
    {
      v1 = MEMORY[0x2530ADF00](v35, v71);
      v36 = __OFADD__(v35++, 1);
      if (v36)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v35 >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v1 = *(v75 + 8 * v35);

      v36 = __OFADD__(v35++, 1);
      if (v36)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v37 = v5;
    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v38 = qword_27F575A48;
    v39 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v40 = sub_252E36F34();
    v42 = v41;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v43 = off_27F546230;
    if (*(off_27F546230 + 2) && (v44 = sub_252A44A10(v40, v42), (v45 & 1) != 0))
    {
      v46 = *(v43[7] + 8 * v44);
    }

    else
    {
      v46 = 0;
    }

    if (*(v38 + 16))
    {
      v47 = *(v38 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v46);
      v48 = sub_252E37F14();
      v49 = -1 << *(v38 + 32);
      v50 = v48 & ~v49;
      if ((*(v38 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
      {
        break;
      }
    }

LABEL_27:

    v1 = 0xD000000000000010;
    v5 = v37;
    v6 = v74;
    if (v35 == v72)
    {
      sub_252929F10(v71, 0);
      v29 = 0;
      goto LABEL_68;
    }
  }

  v51 = ~v49;
  while (*(*(v38 + 48) + 8 * v50) != v46)
  {
    v50 = (v50 + 1) & v51;
    if (((*(v38 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_252929F10(v71, 0);

  v29 = 1;
  v1 = 0xD000000000000010;
  v5 = v37;
LABEL_68:
  *(v0 + 712) = v9;
  v57 = *(v0 + 696);
  v58 = *(v0 + 680);
  v59 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  *(v0 + 720) = *(v59 + 23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v60 = swift_allocObject();
  *(v0 + 728) = v60;
  *(v60 + 16) = xmmword_252E3EF80;
  *(v60 + 32) = v1 + 2;
  *(v60 + 40) = 0x8000000252E728F0;
  sub_252956C1C(v57, v58);
  v61 = (*(v79 + 48))(v58, 1, v5);
  v62 = *(v0 + 680);
  if (v61 == 1)
  {
    sub_25293847C(*(v0 + 680), &qword_27F540298, &unk_252E3C270);
    *(v60 + 48) = 0u;
    *(v60 + 64) = 0u;
  }

  else
  {
    *(v60 + 72) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v60 + 48));
    (*(v79 + 32))(boxed_opaque_existential_0, v62, v5);
  }

  *(v60 + 80) = 0x6572756365537369;
  *(v60 + 88) = 0xEF74736575716552;
  v64 = MEMORY[0x277D839B0];
  *(v60 + 96) = v29;
  *(v60 + 120) = v64;
  *(v60 + 128) = v1;
  *(v60 + 136) = 0x8000000252E72940;
  if (v9)
  {
    v65 = type metadata accessor for HomeAutomationEntityResponses();
    v66 = v9;
  }

  else
  {
    v66 = 0;
    v65 = 0;
    *(v60 + 152) = 0;
    *(v60 + 160) = 0;
  }

  *(v60 + 144) = v66;
  *(v60 + 168) = v65;
  strcpy((v60 + 176), "intentContext");
  *(v60 + 190) = -4864;
  v67 = 0;
  if (v30)
  {
    v67 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v60 + 200) = 0;
    *(v60 + 208) = 0;
  }

  *(v0 + 736) = v30;
  *(v60 + 192) = v30;
  *(v60 + 216) = v67;
  v68 = *(MEMORY[0x277D55C70] + 4);
  v80 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v69 = swift_task_alloc();
  *(v0 + 744) = v69;
  *v69 = v0;
  v69[1] = sub_252C7F5B8;

  return v80(v1 + 10, 0x8000000252E8EEC0, v60);
}

uint64_t sub_252C7F5B8(uint64_t a1)
{
  v3 = *(*v2 + 744);
  v4 = *v2;
  v4[94] = a1;
  v4[95] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C7F858, 0, 0);
  }

  else
  {
    v5 = v4[91];
    v6 = v4[90];

    v7 = swift_task_alloc();
    v4[96] = v7;
    *v7 = v4;
    v7[1] = sub_252C7F744;
    v8 = v4[81];
    v9 = v4[76];

    return sub_252A2B5A4(v8, v9);
  }
}

uint64_t sub_252C7F744()
{
  v2 = *(*v1 + 768);
  v5 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_252C7FF30;
  }

  else
  {
    v3 = sub_252C7FA1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C7F858()
{
  v1 = v0[91];
  v2 = v0[90];

  v3 = v0[95];
  v4 = v0[92];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  sub_252E379F4();
  v0[73] = 0;
  v0[74] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  v0[75] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(v0[73], v0[74], 0xD00000000000007DLL, 0x8000000252E8EE40);

  sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[85];
  v11 = v0[84];
  v12 = v0[81];
  v13 = v0[80];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252C7FA1C()
{
  v1 = v0[81];
  if ((*(v0[83] + 48))(v1, 1, v0[82]) == 1)
  {
    v2 = v0[94];
    v3 = v0[92];
    v4 = v0[89];
    sub_25293847C(v0[87], &qword_27F540298, &unk_252E3C270);

    sub_25293847C(v1, &qword_27F543448, &unk_252E4BAA8);
    v5 = v0[87];
    v6 = v0[86];
    v7 = v0[85];
    v8 = v0[84];
    v9 = v0[81];
    v10 = v0[80];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[94];
    v14 = v0[84];
    v15 = v0[80];
    v16 = v0[77];
    sub_2529645E8(v1, v14);
    v17 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v16[6]);
    v18 = swift_task_alloc();
    v0[98] = v18;
    *(v18 + 16) = v13;
    v19 = swift_task_alloc();
    v0[99] = v19;
    *(v19 + 16) = v14;
    sub_252B03B94();
    v20 = swift_task_alloc();
    v0[100] = v20;
    *v20 = v0;
    v20[1] = sub_252C7FC7C;
    v21 = v0[80];

    return sub_252A199A8((v0 + 65), &unk_252E58000, v18, &unk_252E58010, v19, v21, 0, 0);
  }
}

uint64_t sub_252C7FC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *(*v1 + 640);
  v5 = *(*v1 + 632);
  v6 = *(*v1 + 624);
  v11 = *v1;
  *(*v1 + 808) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C800E8;
  }

  else
  {
    v8 = *(v2 + 792);
    v9 = *(v2 + 784);

    v7 = sub_252C7FE08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C7FE08()
{
  v1 = v0[94];
  v2 = v0[92];
  v3 = v0[89];
  v4 = v0[87];
  v5 = v0[84];
  *(sub_252B680FC() + 161) = 1;

  sub_252C8082C((v0 + 65));

  __swift_destroy_boxed_opaque_existential_1(v0 + 65);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  sub_252C80C04(v5, type metadata accessor for CompletionSnippetModel);
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[81];
  v11 = v0[80];

  v12 = v0[1];

  return v12();
}

uint64_t sub_252C7FF30()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 736);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  sub_252E379F4();
  *(v0 + 584) = 0;
  *(v0 + 592) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  *(v0 + 600) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 584), *(v0 + 592), 0xD00000000000007DLL, 0x8000000252E8EE40);

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252C800E8()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 672);

  sub_252C80C04(v3, type metadata accessor for CompletionSnippetModel);
  v4 = *(v0 + 808);
  v5 = *(v0 + 736);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  sub_252E379F4();
  *(v0 + 584) = 0;
  *(v0 + 592) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  *(v0 + 600) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 584), *(v0 + 592), 0xD00000000000007DLL, 0x8000000252E8EE40);

  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 680);
  v12 = *(v0 + 672);
  v13 = *(v0 + 648);
  v14 = *(v0 + 640);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252C802D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C802F8, 0, 0);
}

uint64_t sub_252C802F8()
{
  v1 = v0[2];
  sub_252A31B70(v0[3], v1);
  v2 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_252C803B4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_252C80428()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252C804BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C802D8(a1, v4);
}

uint64_t sub_252C8055C()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), &v16);

  __swift_project_boxed_opaque_existential_1(&v16, v18);
  v1 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  if ((v1 & 1) == 0)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E8F0C0, 0xD00000000000007DLL, 0x8000000252E8EE40);
    goto LABEL_27;
  }

  v2 = sub_252C4B5D4();
  v3 = sub_252C526B4();
  v15 = (v3 != 2) ^ v3;
  v4 = *(sub_252B680FC() + 129);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D60);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E8F0F0);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v6, v7);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E8F120);
  if (v15)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v15)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8F140);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v10, v11);

  sub_252CC3D90(v16, v17, 0xD00000000000007DLL, 0x8000000252E8EE40);

  if (!v2)
  {
LABEL_27:
    v12 = 0;
    return v12 & 1;
  }

  v12 = v15 & (v4 ^ 1);
  return v12 & 1;
}

void sub_252C8082C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B0, &unk_252E3C460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-1] - v4;
  v6 = sub_252E34204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252929E74(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v12(v5, 0, 1, v6);
    (*(v7 + 32))(v10, v5, v6);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E8EF30, 0xD00000000000007DLL, 0x8000000252E8EE40);
    sub_252E341F4();
    v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v14 + 56), v17);

    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_252E33EC4();

    (*(v7 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v12(v5, 1, 1, v6);
    sub_25293847C(v5, &qword_27F5403B0, &unk_252E3C460);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E8EF00, 0xD00000000000007DLL, 0x8000000252E8EE40);
  }
}

uint64_t sub_252C80B58()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252C7E0A8(v2, v3, v5, v4);
}

uint64_t sub_252C80C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252C80C64(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v12);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  if ((sub_252E338F4() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = [a1 userTask];
  if (!v3)
  {
    sub_252C515AC();
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 attribute];

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v5 == 67 && sub_252C4B5D4())
  {
    v6 = "eply for non HomePod request";
    v7 = 1;
    v8 = 0xD00000000000002BLL;
    v9 = 0xD00000000000002BLL;
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
  v9 = 0xD00000000000002CLL;
  v6 = "No need to send eagerMessage.";
  if (qword_27F53F4E8 != -1)
  {
    v8 = 0xD00000000000002CLL;
LABEL_12:
    swift_once();
    v9 = v8;
  }

LABEL_10:
  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D60);
  sub_252CC3D90(v9, v6 | 0x8000000000000000, 0xD00000000000007DLL, 0x8000000252E8EE40);
  return v7;
}

uint64_t sub_252C80E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 8))
  {
    return (*a1 + 61);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_252C80E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_252C80F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  return MEMORY[0x2822009F8](sub_252C80F28, 0, 0);
}

uint64_t sub_252C80F28()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = sub_252E36AD4();
  v0[27] = __swift_project_value_buffer(v3, qword_27F544C58);
  sub_252E379F4();
  v0[21] = 0;
  v0[22] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E8F160);
  v0[23] = v2;
  sub_252E37AE4();
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v0[21], v0[22], 0xD00000000000008FLL, 0x8000000252E8F190);

  sub_252CC3D90(0xD000000000000036, 0x8000000252E8F220, 0xD00000000000008FLL, 0x8000000252E8F190);
  type metadata accessor for BaseConfirmationHandler();
  v0[28] = swift_initStackObject();
  sub_252A907DC(v2);

  v4 = sub_252A86604(v2, v1);
  v0[29] = v4;
  v5 = *(*v4 + 216);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_252C811B4;

  return v9(v0 + 16);
}

uint64_t sub_252C811B4()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_252C81384;
  }

  else
  {
    v3 = sub_252C812C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C812C8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8F260, 0xD00000000000008FLL, 0x8000000252E8F190);

  sub_252A52D18((v0 + 128), v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252C81384()
{
  v1 = v0[29];

  v2 = v0[1];
  v3 = v0[31];

  return v2();
}

uint64_t sub_252C81418(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_252E34014();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[4] = v2;

  return MEMORY[0x2822009F8](sub_252C81510, 0, 0);
}

uint64_t sub_252C81510()
{
  v1 = v0 + 4;
  v2 = (v0[7] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v4 = *v2;
  v3 = v2[1];
  v5 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v7 = v0[8];
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v4, v3);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E8F530, 0xD00000000000008FLL, 0x8000000252E6B430);

    v9 = *(v7 + 96);
    __swift_project_boxed_opaque_existential_1((v7 + 72), v9);
    v10 = swift_task_alloc();
    v0[16] = v10;
    v10[2] = v1;
    v10[3] = v4;
    v10[4] = v3;
    sub_252AD7CC4();
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_252C81E64;
    v12 = v0[15];
    v13 = v0[6];
    v14 = &unk_252E58300;
LABEL_5:

    return sub_252BDB88C(v13, v14, v10, v12, 0, 0, 0, v9);
  }

  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v36 = v0[11];
      v37 = v0[8];
      v38 = sub_252E36AD4();
      __swift_project_value_buffer(v38, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8F470, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v37 + 96);
      __swift_project_boxed_opaque_existential_1((v37 + 72), v9);
      v10 = swift_task_alloc();
      v0[28] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v39 = swift_task_alloc();
      v0[29] = v39;
      *v39 = v0;
      v39[1] = sub_252C82464;
      v12 = v0[11];
      v13 = v0[6];
      v14 = &unk_252E582C0;
      goto LABEL_5;
    }

    if (v5 == 5)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v20 = v0[13];
      v21 = v0[8];
      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD000000000000029, 0x8000000252E8F4D0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v21 + 96);
      __swift_project_boxed_opaque_existential_1((v21 + 72), v9);
      v10 = swift_task_alloc();
      v0[22] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v23 = swift_task_alloc();
      v0[23] = v23;
      *v23 = v0;
      v23[1] = sub_252C82164;
      v12 = v0[13];
      v13 = v0[6];
      v14 = &unk_252E582E0;
      goto LABEL_5;
    }
  }

  else
  {
    if (v5 == 2)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v32 = v0[14];
      v33 = v0[8];
      v34 = sub_252E36AD4();
      __swift_project_value_buffer(v34, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F500, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v33 + 96);
      __swift_project_boxed_opaque_existential_1((v33 + 72), v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v35 = swift_task_alloc();
      v0[20] = v35;
      *v35 = v0;
      v35[1] = sub_252C81FE4;
      v12 = v0[14];
      v13 = v0[6];
      v14 = &unk_252E582F0;
      goto LABEL_5;
    }

    if (v5 == 3)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v16 = v0[12];
      v17 = v0[8];
      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F4A0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v17 + 96);
      __swift_project_boxed_opaque_existential_1((v17 + 72), v9);
      v10 = swift_task_alloc();
      v0[25] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_252C822E4;
      v12 = v0[12];
      v13 = v0[6];
      v14 = &unk_252E582D0;
      goto LABEL_5;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v24 = v0[6];
  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[5] = v5;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000011, 0x8000000252E8F450, 564);

  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v27 = v0[14];
  v26 = v0[15];
  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[11];

  v31 = v0[1];

  return v31();
}

uint64_t sub_252C81E64()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C864C0;
  }

  else
  {
    v8 = *(v2 + 128);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C81FE4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C864C4;
  }

  else
  {
    v8 = *(v2 + 152);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C82164()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 192) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C864C8;
  }

  else
  {
    v8 = *(v2 + 176);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C822E4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C864CC;
  }

  else
  {
    v8 = *(v2 + 200);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C82464()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 240) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C864D0;
  }

  else
  {
    v8 = *(v2 + 224);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C825E4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_252E34014();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[4] = v2;

  return MEMORY[0x2822009F8](sub_252C826DC, 0, 0);
}

uint64_t sub_252C826DC()
{
  v1 = v0 + 4;
  v2 = (v0[7] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v4 = *v2;
  v3 = v2[1];
  v5 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v7 = v0[8];
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v4, v3);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E8F530, 0xD00000000000008FLL, 0x8000000252E6B430);

    v9 = *(v7 + 96);
    __swift_project_boxed_opaque_existential_1((v7 + 72), v9);
    v10 = swift_task_alloc();
    v0[16] = v10;
    v10[2] = v1;
    v10[3] = v4;
    v10[4] = v3;
    sub_252AD7CC4();
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_252C83030;
    v12 = v0[15];
    v13 = v0[6];
    v14 = &unk_252E582A0;
LABEL_5:

    return sub_252BDB88C(v13, v14, v10, v12, 0, 0, 0, v9);
  }

  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v36 = v0[11];
      v37 = v0[8];
      v38 = sub_252E36AD4();
      __swift_project_value_buffer(v38, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8F470, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v37 + 96);
      __swift_project_boxed_opaque_existential_1((v37 + 72), v9);
      v10 = swift_task_alloc();
      v0[28] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v39 = swift_task_alloc();
      v0[29] = v39;
      *v39 = v0;
      v39[1] = sub_252C836D4;
      v12 = v0[11];
      v13 = v0[6];
      v14 = &unk_252E58260;
      goto LABEL_5;
    }

    if (v5 == 5)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v20 = v0[13];
      v21 = v0[8];
      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD000000000000029, 0x8000000252E8F4D0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v21 + 96);
      __swift_project_boxed_opaque_existential_1((v21 + 72), v9);
      v10 = swift_task_alloc();
      v0[22] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v23 = swift_task_alloc();
      v0[23] = v23;
      *v23 = v0;
      v23[1] = sub_252C833D4;
      v12 = v0[13];
      v13 = v0[6];
      v14 = &unk_252E58280;
      goto LABEL_5;
    }
  }

  else
  {
    if (v5 == 2)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v32 = v0[14];
      v33 = v0[8];
      v34 = sub_252E36AD4();
      __swift_project_value_buffer(v34, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F500, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v33 + 96);
      __swift_project_boxed_opaque_existential_1((v33 + 72), v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v35 = swift_task_alloc();
      v0[20] = v35;
      *v35 = v0;
      v35[1] = sub_252C83254;
      v12 = v0[14];
      v13 = v0[6];
      v14 = &unk_252E58290;
      goto LABEL_5;
    }

    if (v5 == 3)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v16 = v0[12];
      v17 = v0[8];
      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F4A0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v9 = *(v17 + 96);
      __swift_project_boxed_opaque_existential_1((v17 + 72), v9);
      v10 = swift_task_alloc();
      v0[25] = v10;
      v10[2] = v1;
      v10[3] = v4;
      v10[4] = v3;
      sub_252AD7CC4();
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_252C83554;
      v12 = v0[12];
      v13 = v0[6];
      v14 = &unk_252E58270;
      goto LABEL_5;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v24 = v0[6];
  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[5] = v5;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000011, 0x8000000252E8F450, 564);

  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v27 = v0[14];
  v26 = v0[15];
  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[11];

  v31 = v0[1];

  return v31();
}

uint64_t sub_252C83030()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C831B0;
  }

  else
  {
    v8 = *(v2 + 128);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C831B0()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C83254()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C83854;
  }

  else
  {
    v8 = *(v2 + 152);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C833D4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 192) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C83990;
  }

  else
  {
    v8 = *(v2 + 176);

    v7 = sub_252C838FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C83554()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C83A38;
  }

  else
  {
    v8 = *(v2 + 200);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C836D4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 240) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C83AE0;
  }

  else
  {
    v8 = *(v2 + 224);

    v7 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C83854()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C838FC()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252C83990()
{
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C83A38()
{
  v1 = v0[27];
  v2 = v0[25];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C83AE0()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C83B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_252C83BAC, 0, 0);
}

uint64_t sub_252C83BAC()
{
  v1 = *(v0 + 128);
  if ((sub_252C4D664(5) & 1) == 0)
  {
    goto LABEL_14;
  }

  v2 = [*(v0 + 128) filters];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = HomeStore.scenes(matching:)(v4);
  v8 = v7;

  if (v8)
  {
    goto LABEL_13;
  }

  if (v6 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:
    sub_252C85DA4(v6, v8 & 1, MEMORY[0x277D84FB8]);
LABEL_14:
    v14 = swift_task_alloc();
    *(v0 + 200) = v14;
    *v14 = v0;
    v14[1] = sub_252C841C4;
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    return sub_252C8431C(v16, v17);
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x2530ADF00](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v6 + 32);
  }

  *(v0 + 152) = v10;
  sub_252C85DA4(v6, 0, MEMORY[0x277D84FB8]);
  *(v0 + 160) = sub_252B2F098();
  v11 = v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
  *(v0 + 168) = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *(v0 + 176) = *(v11 + 8);

  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_252C83E34;
  v13 = *(v0 + 144);

  return sub_252C825E4(v0 + 56, v10);
}

uint64_t sub_252C83E34()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);

    v5 = sub_252C842B8;
  }

  else
  {
    v5 = sub_252C83F50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C83F50()
{
  if (*(v0 + 80))
  {
    sub_252A52D18((v0 + 56), v0 + 16);
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D18);
    sub_252E379F4();
    *(v0 + 96) = 0;
    *(v0 + 104) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E8F410);
    *(v0 + 112) = v4;
    sub_252E37AE4();
    MEMORY[0x2530AD570](0x3A656D616E202D20, 0xE900000000000020);
    MEMORY[0x2530AD570](v2, v1);

    sub_252CC3D90(*(v0 + 96), *(v0 + 104), 0xD000000000000098, 0x8000000252E8F300);

    sub_252A52D18((v0 + 16), v5);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);

    sub_25293847C(v0 + 56, &qword_27F542188, &qword_252E43C80);
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_252C841C4;
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);

    return sub_252C8431C(v13, v14);
  }
}

uint64_t sub_252C841C4()
{
  v1 = *(*v0 + 200);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_252C842B8()
{
  v1 = v0[19];

  v2 = v0[24];
  v3 = v0[1];

  return v3();
}

uint64_t sub_252C8431C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E32E84();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C84404, 0, 0);
}

uint64_t sub_252C84404()
{
  v1 = [v0[3] filters];
  v158 = v0;
  if (!v1)
  {
    v11 = 0;
    goto LABEL_51;
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = HomeStore.accessories(matching:supporting:)(v3, 0);
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x277D84FB8];
    v9 = v5;
    v10 = 1;
LABEL_7:
    sub_252C85DA4(v9, v10, v8);
    v11 = 0;
    v0 = v158;
    goto LABEL_51;
  }

  v12 = static HomeStore.shared.getter();
  v13 = sub_2529F219C();
  v15 = v14;

  if (v15)
  {
    sub_252C85DA4(v13, 1, MEMORY[0x277D85008]);
    v8 = MEMORY[0x277D84FB8];
    v9 = v5;
    v10 = 0;
    goto LABEL_7;
  }

  v16 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    goto LABEL_49;
  }

  v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0 = v158;
  if (v17)
  {
LABEL_10:
    v18 = 0;
    v149 = v5 & 0xC000000000000001;
    v151 = (v0[6] + 32);
    v153 = v13;
    v143 = v17;
    v145 = v16;
    v147 = v5;
    do
    {
      if (v149)
      {
        v19 = MEMORY[0x2530ADF00](v18, v5);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:

LABEL_46:
          v63 = MEMORY[0x277D84FB8];
          v64 = v147;
LABEL_47:
          sub_252C85DA4(v64, 0, v63);
          sub_252C85DA4(v13, 0, MEMORY[0x277D85008]);
          v11 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          __break(1u);
LABEL_49:
          v17 = sub_252E378C4();
          v0 = v158;
          if (!v17)
          {
            break;
          }

          goto LABEL_10;
        }

        v19 = *(v5 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_44;
        }
      }

      v155 = v20;
      v21 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      if (v21)
      {
        v22 = v21;
        v23 = v0[10];
        v24 = type metadata accessor for Room();
        v25 = *(v24 + 48);
        v26 = *(v24 + 52);
        v27 = swift_allocObject();
        *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v22;
        v28 = v22;
        v29 = [v28 uniqueIdentifier];
        sub_252E32E64();

        v30 = [v28 name];
        v31 = sub_252E36F34();
        v33 = v32;

        v34 = [v28 assistantIdentifier];
        if (v34)
        {
          v35 = v34;
          v36 = sub_252E36F34();
          v38 = v37;
        }

        else
        {

          v36 = 0;
          v38 = 0;
        }

        v0 = v158;
        (*v151)(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v158[10], v158[5]);
        v39 = (v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v39 = v31;
        v39[1] = v33;
        *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v40 = (v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v40 = v36;
        v40[1] = v38;
        v13 = v153;
        if (!v153)
        {
LABEL_24:
          v47 = 0;
          if (!v27)
          {
            goto LABEL_38;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v27 = 0;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v41 = [*&v13[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
      if (!v41)
      {
        goto LABEL_24;
      }

      v42 = v41;
      v43 = v0[9];
      v44 = type metadata accessor for Room();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      v47 = swift_allocObject();
      *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v42;
      v48 = v42;
      v49 = [v48 uniqueIdentifier];
      sub_252E32E64();

      v50 = [v48 name];
      v51 = sub_252E36F34();
      v53 = v52;

      v54 = [v48 assistantIdentifier];
      if (v54)
      {
        v55 = v54;
        v56 = sub_252E36F34();
        v58 = v57;
      }

      else
      {

        v56 = 0;
        v58 = 0;
      }

      (*v151)(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v158[9], v158[5]);
      v61 = (v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v61 = v51;
      v61[1] = v53;
      v0 = v158;
      *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v62 = (v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v62 = v56;
      v62[1] = v58;
      v13 = v153;
      if (!v27)
      {
LABEL_38:

        if (!v47)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

LABEL_25:
      if (!v47)
      {

        goto LABEL_39;
      }

      if ((sub_252E32E54() & 1) == 0 || *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {

LABEL_39:
        v5 = v147;

        goto LABEL_40;
      }

      if (*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
      {
        goto LABEL_45;
      }

      v60 = sub_252E37DB4();

      v5 = v147;
      if (v60)
      {
        v63 = MEMORY[0x277D84FB8];
        v64 = v147;
        goto LABEL_47;
      }

LABEL_40:
      ++v18;
      v16 = v145;
    }

    while (v155 != v143);
  }

  sub_252C85DA4(v5, 0, MEMORY[0x277D84FB8]);
  sub_252C85DA4(v13, 0, MEMORY[0x277D85008]);
  v11 = 0;
LABEL_51:
  v65 = [v0[3] filters];
  if (!v65)
  {
    v75 = 0;
    goto LABEL_59;
  }

  v66 = v65;
  v154 = v11;
  type metadata accessor for HomeFilter();
  v67 = sub_252E37264();

  type metadata accessor for HomeStore();
  v68 = static HomeStore.shared.getter();
  v69 = HomeStore.scenes(matching:)(v67);
  v71 = v70;

  if (v71)
  {
    v72 = MEMORY[0x277D84FB8];
    v73 = v69;
    v74 = 1;
LABEL_57:
    sub_252C85DA4(v73, v74, v72);
    v75 = 0;
    v0 = v158;
LABEL_58:
    v11 = v154;
    goto LABEL_59;
  }

  v76 = static HomeStore.shared.getter();
  v77 = sub_2529F219C();
  v79 = v78;

  if (v79)
  {
    sub_252C85DA4(v77, 1, MEMORY[0x277D85008]);
    v72 = MEMORY[0x277D84FB8];
    v73 = v69;
    v74 = 0;
    goto LABEL_57;
  }

  v142 = v77;
  v11 = v154;
  if (!(v69 >> 62))
  {
    result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = v158;
    if (result)
    {
      goto LABEL_71;
    }

LABEL_116:
    sub_252C85DA4(v69, 0, MEMORY[0x277D84FB8]);
    sub_252C85DA4(v142, 0, MEMORY[0x277D85008]);
    v75 = 0;
LABEL_59:
    LODWORD(v80) = v11 | v75;
    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_60;
  }

  result = sub_252E378C4();
  v0 = v158;
  if (!result)
  {
    goto LABEL_116;
  }

LABEL_71:
  if ((v69 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v69);
    v80 = v142;
  }

  else
  {
    v80 = v142;
    if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v94 = *(v69 + 32);
  }

  sub_252C85DA4(v69, 0, MEMORY[0x277D84FB8]);
  v95 = sub_252B2F280();

  if (v95 >> 62)
  {
    v96 = sub_252E378C4();
    if (v96)
    {
      goto LABEL_76;
    }

LABEL_119:
    sub_252C85DA4(v80, 0, MEMORY[0x277D85008]);

    v75 = 0;
    goto LABEL_58;
  }

  v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v96)
  {
    goto LABEL_119;
  }

LABEL_76:
  v97 = 0;
  v148 = v95 & 0xFFFFFFFFFFFFFF8;
  v150 = v95 & 0xC000000000000001;
  v152 = (v0[6] + 32);
  v144 = v96;
  v146 = v95;
  while (v150)
  {
    v98 = MEMORY[0x2530ADF00](v97, v95);
    v99 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
LABEL_110:
      __break(1u);
LABEL_111:

LABEL_112:

      sub_252C85DA4(v80, 0, MEMORY[0x277D85008]);
      v75 = 1;
      goto LABEL_58;
    }

LABEL_80:
    v157 = v99;
    v100 = [*(v98 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
    if (v100)
    {
      v101 = v100;
      v102 = v0[8];
      v103 = type metadata accessor for Room();
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      v106 = swift_allocObject();
      *(v106 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v101;
      v107 = v101;
      v108 = [v107 uniqueIdentifier];
      sub_252E32E64();

      v109 = [v107 name];
      v110 = sub_252E36F34();
      v112 = v111;

      v113 = [v107 assistantIdentifier];
      if (v113)
      {
        v114 = v113;
        v115 = sub_252E36F34();
        v117 = v116;
      }

      else
      {

        v115 = 0;
        v117 = 0;
      }

      v0 = v158;
      (*v152)(v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v158[8], v158[5]);
      v118 = (v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v118 = v110;
      v118[1] = v112;
      *(v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v119 = (v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v119 = v115;
      v119[1] = v117;
      if (!v80)
      {
LABEL_90:
        v126 = 0;
        if (!v106)
        {
          goto LABEL_104;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v106 = 0;
      if (!v80)
      {
        goto LABEL_90;
      }
    }

    v120 = [*&v80[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
    if (!v120)
    {
      goto LABEL_90;
    }

    v121 = v120;
    v122 = v0[7];
    v123 = type metadata accessor for Room();
    v124 = *(v123 + 48);
    v125 = *(v123 + 52);
    v126 = swift_allocObject();
    *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v121;
    v127 = v121;
    v128 = [v127 uniqueIdentifier];
    sub_252E32E64();

    v129 = [v127 name];
    v130 = sub_252E36F34();
    v132 = v131;

    v133 = [v127 assistantIdentifier];
    if (v133)
    {
      v134 = v133;
      v135 = sub_252E36F34();
      v137 = v136;
    }

    else
    {

      v135 = 0;
      v137 = 0;
    }

    v0 = v158;
    (*v152)(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v158[7], v158[5]);
    v140 = (v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v140 = v130;
    v140[1] = v132;
    *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
    v141 = (v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v141 = v135;
    v141[1] = v137;
    v80 = v142;
    if (!v106)
    {
LABEL_104:

      if (!v126)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    }

LABEL_91:
    if (!v126)
    {

      goto LABEL_105;
    }

    if ((sub_252E32E54() & 1) == 0 || *(v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
    {

LABEL_105:
      v95 = v146;

      goto LABEL_106;
    }

    if (*(v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v106 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
    {
      goto LABEL_111;
    }

    v139 = sub_252E37DB4();

    v95 = v146;
    if (v139)
    {
      goto LABEL_112;
    }

LABEL_106:
    ++v97;
    if (v157 == v144)
    {
      goto LABEL_119;
    }
  }

  if (v97 < *(v148 + 16))
  {
    v98 = *&v95[8 * v97 + 32];

    v99 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      goto LABEL_110;
    }

    goto LABEL_80;
  }

  __break(1u);
LABEL_114:
  swift_once();
LABEL_60:
  v81 = v0[9];
  v82 = v0[10];
  v83 = v0[8];
  v156 = v0[7];
  v84 = v0[4];
  v85 = v0[2];
  v86 = sub_252E36AD4();
  __swift_project_value_buffer(v86, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E8F2D0, 0xD000000000000098, 0x8000000252E8F300);
  sub_252E379F4();

  if (v80)
  {
    v87 = 1702195828;
  }

  else
  {
    v87 = 0x65736C6166;
  }

  if (v80)
  {
    v88 = 0xE400000000000000;
  }

  else
  {
    v88 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v87, v88);

  sub_252CC3D90(0xD000000000000019, 0x8000000252E8F3A0, 0xD000000000000098, 0x8000000252E8F300);

  v89 = v84[12];
  v90 = v84[13];
  __swift_project_boxed_opaque_existential_1(v84 + 9, v89);
  v91 = swift_allocObject();
  *(v91 + 16) = v84;
  *(v91 + 24) = v80;

  sub_252943B8C(sub_252C85D98, v91, v89, v90);

  v92 = v158[1];

  return v92();
}

uint64_t sub_252C85374(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C290;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000252E8F3F0;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = a2;

  sub_252E362B4();
}

uint64_t sub_252C85478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C83B88(a1, a2, a3);
}

void *sub_252C8552C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AsyncDefaultEagerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C85590(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C855B8, 0, 0);
}

uint64_t sub_252C855B8()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C864D4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_252C120F8(0, v2, v4, v5);
}

uint64_t sub_252C8568C(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C856B4, 0, 0);
}

uint64_t sub_252C856B4()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C864D4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_252C125B0(0, v2, v4, v5);
}

uint64_t sub_252C85788(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C857B0, 0, 0);
}

uint64_t sub_252C857B0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C864D4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_252C1295C(0, v2, v4, v5);
}

uint64_t sub_252C85884(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C858AC, 0, 0);
}

uint64_t sub_252C858AC()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C864D4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_252C12D08(0, v2, v4, v5);
}

uint64_t sub_252C85980(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C859A8, 0, 0);
}

uint64_t sub_252C859A8()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C864D4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_252C130B4(0, v2, v4, v5);
}

uint64_t sub_252C85A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C85AA4, 0, 0);
}

uint64_t sub_252C85AA4()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C85B78;
  v4 = v0[2];
  v5 = v0[3];

  return sub_252C125B0(0, v2, v4, v5);
}

uint64_t sub_252C85B78(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

id sub_252C85C9C(void *a1, char *a2)
{
  if (sub_252A6B2EC(a1))
  {
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    v3 = sub_252929CE8();
    result = 0;
    if ((v3 & 1) == 0 || !a2)
    {
      return result;
    }
  }

  v5 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*&a2[v5] != 4)
  {
    return 0;
  }

  result = [a2 entityResponses];
  if (result)
  {
    v6 = result;
    type metadata accessor for HomeEntityResponse();
    v7 = sub_252E37264();

    if (v7 >> 62)
    {
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v8 == 0);
  }

  return result;
}

void sub_252C85DA4(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_252C85DB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85980(v2, v3, v4);
}

uint64_t sub_252C85E68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85884(v2, v3, v4);
}

uint64_t sub_252C85F1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85788(v2, v3, v4);
}

uint64_t sub_252C85FD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252C85A7C(v2, v3, v4);
}

uint64_t sub_252C86084()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85590(v2, v3, v4);
}

uint64_t sub_252C86138()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85980(v2, v3, v4);
}

uint64_t sub_252C861EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85884(v2, v3, v4);
}

uint64_t sub_252C862A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85788(v2, v3, v4);
}

uint64_t sub_252C86354()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C8568C(v2, v3, v4);
}

uint64_t sub_252C86408()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85590(v2, v3, v4);
}

unint64_t sub_252C864D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252C87DC4();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for HomeAutomationHomeLocation(0);
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C86824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v56[-v15];
  if ((a1 != 0x6552797469746E65 || a2 != 0xEF7365736E6F7073) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v19 = *(v3 + 24);
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v28 = *(v3 + 24);
        }

        result = sub_252E378C4();
      }

      else
      {
        result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = result;
      goto LABEL_13;
    }

    if (a1 == 0x614E797469746E65 && a2 == 0xEB0000000073656DLL || (sub_252E37DB4() & 1) != 0)
    {
      v21 = sub_252998290();
LABEL_18:
      v22 = v21;
      v23 = &unk_27F540600;
      v24 = &unk_252E3CF90;
LABEL_19:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
LABEL_20:
      *(a3 + 24) = result;
      *a3 = v22;
      return result;
    }

    if (a1 == 0xD000000000000011 && 0x8000000252E6FD80 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v21 = sub_25299829C();
      goto LABEL_18;
    }

    if (a1 == 0x61636F4C6D6F6F72 && a2 == 0xED0000736E6F6974 || (sub_252E37DB4() & 1) != 0)
    {
      v25 = sub_2529985A0();
LABEL_29:
      v22 = v25;
      v23 = &qword_27F5405F0;
      v24 = &qword_252E3ECF0;
      goto LABEL_19;
    }

    if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v25 = sub_25299EEB4();
      goto LABEL_29;
    }

    if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v26 = sub_252C864D8(*(v3 + 24));
      v27 = sub_252DF8E14(v26);

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
      *(a3 + 24) = result;
      *a3 = v27;
      return result;
    }

    if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v25 = sub_2529985AC();
      goto LABEL_29;
    }

    if (a1 == 0x7365707974 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v21 = sub_25299875C();
      goto LABEL_18;
    }

    if (a1 == 0x736574617473 && a2 == 0xE600000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v29 = sub_252998A68();
LABEL_53:
      v22 = v29;
      v23 = &qword_27F540610;
      v24 = &qword_252E3CF98;
      goto LABEL_19;
    }

    if (a1 == 0x6C61566574617473 && a2 == 0xEB00000000736575 || (sub_252E37DB4() & 1) != 0)
    {
      v22 = sub_252998BC8();
      v23 = &unk_27F544840;
      v24 = &unk_252E58470;
      goto LABEL_19;
    }

    if (a1 == 0x7474416574617473 && a2 == 0xEF73657475626972 || (sub_252E37DB4() & 1) != 0)
    {
      v21 = sub_252998D84();
      goto LABEL_18;
    }

    if (a1 == 0x7974706D457369 && a2 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v30 = *(v3 + 24);
      if (v30 >> 62)
      {
        if (v30 < 0)
        {
          v43 = *(v3 + 24);
        }

        result = sub_252E378C4();
      }

      else
      {
        result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = result == 0;
LABEL_68:
      v32 = MEMORY[0x277D839B0];
      v33 = v31;
LABEL_71:
      *(a3 + 24) = v32;
      *a3 = v33;
      return result;
    }

    if (a1 == 0x706D45746F4E7369 && a2 == 0xEA00000000007974 || (sub_252E37DB4() & 1) != 0)
    {
      v34 = *(v3 + 24);
      if (v34 >> 62)
      {
        if (v34 < 0)
        {
          v46 = *(v3 + 24);
        }

        result = sub_252E378C4();
      }

      else
      {
        result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = result == 0;
      goto LABEL_78;
    }

    if (a1 == 0x6E45656E4F736168 && a2 == 0xEC00000079746974 || (sub_252E37DB4() & 1) != 0)
    {
      v36 = *(v3 + 24);
      if (v36 >> 62)
      {
        if (v36 < 0)
        {
          v47 = *(v3 + 24);
        }

        result = sub_252E378C4();
        v31 = result == 1;
      }

      else
      {
        result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v31 = result == 1;
      }

      goto LABEL_68;
    }

    if (a1 == 0xD000000000000014 && 0x8000000252E8F5F0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v37 = *(v3 + 24);
      if (v37 >> 62)
      {
        if (v37 < 0)
        {
          v50 = *(v3 + 24);
        }

        result = sub_252E378C4();
      }

      else
      {
        result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = MEMORY[0x277D839B0];
      v33 = result > 1;
      goto LABEL_71;
    }

    if (a1 == 0x7571696E55736168 && a2 == 0xED00006570795465 || (sub_252E37DB4() & 1) != 0)
    {
      sub_25299AB0C(v16);
      v38 = sub_252E36324();
      v39 = (*(*(v38 - 8) + 48))(v16, 1, v38) != 1;
      result = sub_252938BBC(v16);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v39;
      return result;
    }

    if (a1 == 0x7954657571696E75 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
    {
      sub_25299AB0C(v14);
      v40 = sub_252E36324();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v14, 1, v40) != 1)
      {
        *(a3 + 24) = v40;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v41 + 32))(boxed_opaque_existential_0, v14, v40);
      }

      v42 = v14;
LABEL_101:
      result = sub_252938BBC(v42);
      goto LABEL_102;
    }

    if (a1 == 0x7571696E55736168 && a2 == 0xED00006D6F6F5265 || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_25299B138();
      goto LABEL_111;
    }

    if (a1 == 0x6F52657571696E75 && a2 == 0xEA00000000006D6FLL || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_25299B138();
      if (!result)
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (a1 == 0x736D6F6F526D756ELL && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
      {
        v48 = sub_25299EEB4();
        if (v48 >> 62)
        {
          v49 = sub_252E378C4();
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = v49;
LABEL_13:
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = v20;
        return result;
      }

      if (a1 == 0xD000000000000014 && 0x8000000252E8F610 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        v51 = sub_25299BE58();
        if (v51 >> 62)
        {
          v52 = sub_252E378C4();
        }

        else
        {
          v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v35 = v52 == 0;
LABEL_78:
        v32 = MEMORY[0x277D839B0];
        v33 = !v35;
        goto LABEL_71;
      }

      if (a1 == 0xD000000000000011 && 0x8000000252E8F630 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        v25 = sub_25299BE58();
        goto LABEL_29;
      }

      if (a1 == 0x7571696E55736168 && a2 == 0xED0000656E6F5A65 || (sub_252E37DB4() & 1) != 0)
      {
        result = sub_25299B360();
        goto LABEL_111;
      }

      if ((a1 != 0x6F5A657571696E75 || a2 != 0xEA0000000000656ELL) && (sub_252E37DB4() & 1) == 0)
      {
        if ((a1 != 0x7571696E55736168 || a2 != 0xEE00657461745365) && (sub_252E37DB4() & 1) == 0)
        {
          if (a1 == 0x7453657571696E75 && a2 == 0xEB00000000657461 || (sub_252E37DB4() & 1) != 0)
          {
            result = sub_252999524();
            if (result)
            {
              v22 = result;
              result = type metadata accessor for HomeAutomationEntityState(0);
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 0x7453657571696E75 && a2 == 0xEC00000073657461 || (sub_252E37DB4() & 1) != 0)
            {
              v29 = sub_2529992EC();
              goto LABEL_53;
            }

            if (a1 == 0xD000000000000015 && 0x8000000252E8F650 == a2 || (sub_252E37DB4() & 1) != 0)
            {
              sub_25299A2D0(v11);
              v53 = sub_252E36324();
              v54 = *(v53 - 8);
              if ((*(v54 + 48))(v11, 1, v53) != 1)
              {
                *(a3 + 24) = v53;
                v55 = __swift_allocate_boxed_opaque_existential_0(a3);
                return (*(v54 + 32))(v55, v11, v53);
              }

              v42 = v11;
              goto LABEL_101;
            }

            if (a1 == 0x6349657571696E75 && a2 == 0xEA00000000006E6FLL || (sub_252E37DB4() & 1) != 0)
            {
              result = sub_25299DB10();
              if (result)
              {
                v22 = result;
                result = type metadata accessor for HomeAutomationAccessoryIcon(0);
                goto LABEL_20;
              }
            }

            else if (a1 == 0x736E6F6369 && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
            {
              v22 = sub_25299DC9C();
              v23 = &unk_27F544838;
              v24 = &unk_252E58460;
              goto LABEL_19;
            }
          }

LABEL_102:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }

        result = sub_25299909C();
LABEL_111:
        v45 = result;
        if (result)
        {
        }

        v35 = v45 == 0;
        goto LABEL_78;
      }

      result = sub_25299B360();
      if (!result)
      {
        goto LABEL_102;
      }
    }

    v22 = result;
    result = type metadata accessor for HomeAutomationHomeLocation(0);
    goto LABEL_20;
  }

  v17 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544828, &unk_252E58450);
  *a3 = v17;
}

uint64_t sub_252C8757C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544850, &qword_252E58478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C87D70();
  sub_252E37F84();
  v11[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544828, &unk_252E58450);
  sub_252C87E28(&qword_27F544858, &qword_27F5405D8);
  sub_252E37D54();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252C87730()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C877B4()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C87810@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252C878B0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252C87908(uint64_t a1)
{
  v2 = sub_252C87D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C87944(uint64_t a1)
{
  v2 = sub_252C87D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C879A4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_252C87A18(a1);
  return v2;
}

uint64_t sub_252C87A18(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544818, &qword_252E58448);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C87D70();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationEntityResponses();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544828, &unk_252E58450);
    sub_252C87E28(&qword_27F544830, &qword_27F5405D0);
    sub_252E37C64();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252C87C80@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_252C87D70()
{
  result = qword_27F544820;
  if (!qword_27F544820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544820);
  }

  return result;
}

unint64_t sub_252C87DC4()
{
  result = qword_27F544848;
  if (!qword_27F544848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544848);
  }

  return result;
}

uint64_t sub_252C87E28(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544828, &unk_252E58450);
    sub_252C87EC8(a2, 255, type metadata accessor for HomeAutomationEntityResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252C87EC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_252C87F24()
{
  result = qword_27F544860;
  if (!qword_27F544860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544860);
  }

  return result;
}

unint64_t sub_252C87F7C()
{
  result = qword_27F544868;
  if (!qword_27F544868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544868);
  }

  return result;
}

unint64_t sub_252C87FD4()
{
  result = qword_27F544870;
  if (!qword_27F544870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544870);
  }

  return result;
}

uint64_t sub_252C8804C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252C88A2C(a1);
}

uint64_t sub_252C880F8(void *__src)
{
  v1 = __src[50];
  if (*(v1 + 16))
  {
    return 0;
  }

  v2 = __src[51];
  if (*(v2 + 16))
  {
    return 0;
  }

  v3 = __src[52];
  if (*(v3 + 16))
  {
    return 0;
  }

  v4 = __src[53];
  if (v4[2])
  {
    return 0;
  }

  v5 = __src[54];
  if (*(v5 + 16))
  {
    return 0;
  }

  v6 = __src[55];
  if (*(v6 + 16))
  {
    return 0;
  }

  v7 = __src[56];
  if (*(v7 + 16))
  {
    return 0;
  }

  v8 = __src[57];
  if (*(v8 + 16))
  {
    return 0;
  }

  v9 = __src[58];
  if (*(v9 + 16))
  {
    return 0;
  }

  v10 = __src[59];
  if (*(v10 + 16))
  {
    return 0;
  }

  v21 = __src[60];
  if (*(v21 + 16))
  {
    return 0;
  }

  v20 = (__src + 61);
  memcpy(__dst, __src, sizeof(__dst));
  v23 = v1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v21;
  v34 = *v20;
  v12 = sub_252BAC7E4();
  v13 = v12;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_36:

    return 0;
  }

  v14 = sub_252E378C4();
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_15:
  for (i = 0; ; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2530ADF00](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v17 = *(v13 + 8 * i + 32);
    }

    v4 = v17;
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v19 = [v17 roomName];
    if (!v19)
    {
      v19 = [v4 zoneName];
      if (!v19)
      {
        v19 = [v4 homeName];
        if (!v19)
        {
          v19 = [v4 groupName];
          if (!v19)
          {
            v19 = [v4 homeEntityName];
            if (!v19)
            {
              v19 = [v4 outerDeviceName];
              if (!v19)
              {
                v19 = [v4 targetArea];
                if (!v19)
                {
                  v19 = [v4 targetMap];
                  if (!v19)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }
          }
        }
      }
    }

    v16 = v19;

    if (v18 == v14)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  return 0;
}