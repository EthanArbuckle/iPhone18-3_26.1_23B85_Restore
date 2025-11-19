uint64_t sub_22BE72E48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&unk_27D907730, &qword_22C275270);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_22BE682A0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE72F40(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907348, &qword_22C2752A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_22BE682C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22BE73048()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v6 != v7)
    {
      sub_22BE22FB8();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BE1C228(v5);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D9076F8, &unk_22C275780);
    v8 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
    sub_22BE17A18(v8);
    v10 = *(v9 + 72);
    v11 = sub_22BE18384();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22BE38278();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22BE1A14C(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  sub_22BE187D0(v14);
  v16 = *(v15 + 80);
  sub_22BE19E14();
  if (v1)
  {
    v18 = sub_22BE1B908(v17);
    sub_22BE682E8(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void sub_22BE731D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_22BE5CE4C(a5, a6);
      v15 = sub_22BE2B740();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_22BE22FB8();
  if (!v11)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BE732C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907578, &unk_22C275600);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22BE67CD0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE733D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D9075E8, &qword_22C275670);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_22BE68148((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D9075F0, &qword_22C275678);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22BE734EC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_22BE1BD80();
    if (v13 != v14)
    {
      sub_22BE22FB8();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22BE5CE4C(a5, a6);
  v17 = a7(0);
  sub_22BE17A18(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = a7(0);
  sub_22BE187D0(v25);
  v27 = *(v26 + 80);
  sub_22BE19E14();
  if (a1)
  {
    a8(a4 + v28, v15, v22 + v28);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE73690()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v6 != v7)
    {
      sub_22BE22FB8();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BE1C228(v5);
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D9076C8, &unk_22C275750);
    v8 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
    sub_22BE17A18(v8);
    v10 = *(v9 + 72);
    v11 = sub_22BE18384();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22BE38278();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22BE1A14C(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  sub_22BE187D0(v14);
  v16 = *(v15 + 80);
  sub_22BE19E14();
  if (v1)
  {
    v18 = sub_22BE1B908(v17);
    sub_22BE68680(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void sub_22BE737E4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_22BE5CE4C(a5, a6);
      v15 = sub_22BE2B740();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 4);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  sub_22BE22FB8();
  if (!v11)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BE738C8(uint64_t a1, void *a2)
{
  sub_22BE5CE4C(&unk_27D907420, &qword_22C2753A8);
  v3 = sub_22C273484();

  [a2 setEntityFilters_];
}

uint64_t sub_22BE73948(void *a1)
{
  v1 = [a1 allMetaContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22BE5CE4C(&qword_27D907828, qword_22C275830);
  v3 = sub_22C273494();

  return v3;
}

uint64_t sub_22BE739B4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_22C273204();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE73A80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22C273CE4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22BE69A28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_22BE45D84(0, &qword_27D9077E0, 0x277CCA9B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22BE74364(&unk_27D9077F0, &qword_27D9077E8, &qword_22C275808);
        for (i = 0; i != v7; ++i)
        {
          sub_22BE5CE4C(&qword_27D9077E8, &qword_22C275808);
          v9 = sub_22C25F09C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE73C04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22C273CE4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22BE69A28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22BE74364(&qword_27D907448, &qword_27D907440, &qword_22C2754D0);
        for (i = 0; i != v7; ++i)
        {
          sub_22BE5CE4C(&qword_27D907440, &qword_22C2754D0);
          v9 = sub_22C25F110(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE73D88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v14 = *(a9 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  (*(v14 + 32))(&v28 - v19, v21, a9);
  v22 = type metadata accessor for SiriEntityMatcherShim();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  (*(v14 + 16))(v18, v20, a9);
  v26 = sub_22BE743B8(a1, a2 & 1, v18, a4, a5, v28, v29, v25, a9, a10);
  (*(v14 + 8))(v20, a9);
  return v26;
}

uint64_t sub_22BE73F10(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22BE73F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE18000(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BE19454();
  v9(v8);
  return v4;
}

uint64_t sub_22BE73FDC()
{
  result = sub_22C270F94();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22C26E244();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriEntityMatcherShim.matchEntitySpans(query:)()
{
  v2 = *(*v0 + 144);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_22BE25888(v4);

  return v7(v5);
}

uint64_t sub_22BE74224(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  sub_22BE2589C();

  return v4(a1);
}

uint64_t sub_22BE7431C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22BE74364(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE743B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = (a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher);
  v18[3] = a9;
  v18[4] = a10;
  v19 = sub_22BE62524(v18);
  (*(*(a9 - 8) + 32))(v19, a3, a9);
  v20 = a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount;
  *v20 = a1;
  *(v20 + 8) = a2 & 1;
  v21 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_locale;
  v22 = sub_22C26E244();
  (*(*(v22 - 8) + 32))(a8 + v21, a4, v22);
  v23 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType;
  v24 = sub_22C270F94();
  (*(*(v24 - 8) + 32))(a8 + v23, a5, v24);
  *(a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_tokenizer) = a6;
  *(a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes) = a7;
  return a8;
}

uint64_t sub_22BE74518(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22BE74560()
{
  result = qword_27D907838;
  if (!qword_27D907838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907838);
  }

  return result;
}

uint64_t sub_22BE745B4(uint64_t a1, int a2)
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

uint64_t sub_22BE745F4(uint64_t result, int a2, int a3)
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

unint64_t sub_22BE74654()
{
  result = qword_28107A508[0];
  if (!qword_28107A508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107A508);
  }

  return result;
}

uint64_t sub_22BE746AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v271[2] = a4;
  v272 = a5;
  v271[1] = a3;
  v280 = a2;
  v281 = a6;
  v277 = a1;
  v8 = sub_22BE5CE4C(&qword_27D907850, &qword_22C275978);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v271[0] = v271 - v10;
  v11 = sub_22C272984();
  v12 = sub_22BE179D8(v11);
  v273 = v13;
  v274 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v275 = v16;
  v17 = sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v276 = v271 - v19;
  v20 = sub_22C2720A4();
  v278 = sub_22BE179D8(v20);
  v279 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v278);
  v26 = v271 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v271 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v271 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v271 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v271 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v271 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v271 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v271 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = v271 - v48;
  v50 = [v7 itemType];
  switch(v50)
  {
    case 0x1E0Au:
      v187 = [v7 content];
      objc_opt_self();
      v188 = swift_dynamicCastObjCClass();
      if (!v188)
      {

        sub_22C271AE4();
        v261 = sub_22C272084();
        v262 = sub_22C2737A4();
        if (os_log_type_enabled(v261, v262))
        {
          v263 = sub_22BE202F8();
          *v263 = 0;
          _os_log_impl(&dword_22BE15000, v261, v262, "[SiriEntityMatcherShim] CCItemType_Home entity is missing content and cannot be converted to a TypedValue.entityIdentifier, skipping.", v263, 2u);
          sub_22BE17A28();
        }

        sub_22BE190E4();
        v221 = v35;
        goto LABEL_73;
      }

      v189 = sub_22BE76600([v188 entityType]);
      v191 = v281;
      if (!v190)
      {
        sub_22C271AE4();
        v264 = sub_22C272084();
        v265 = sub_22C2737A4();
        if (os_log_type_enabled(v264, v265))
        {
          *sub_22BE202F8() = 0;
          sub_22BE22FC4();
          _os_log_impl(v266, v267, v268, v269, v270, 2u);
          sub_22BE17A28();
        }

        (*(v279 + 8))(v38, v278);
        sub_22C272874();
        goto LABEL_74;
      }

      v192 = v189;
      v193 = v190;
      sub_22C2726F4();
      v194 = swift_allocBox();
      v69 = v195;
      sub_22BE1B2B0();
      v196 = swift_allocObject();
      if (qword_27D906330 != -1)
      {
        swift_once();
      }

      v197 = *algn_27D9BA598;
      v196[2] = qword_27D9BA590;
      v196[3] = v197;
      v196[4] = v192;
      v196[5] = v193;
      v198 = v275;
      *v275 = v196;
      v199 = *MEMORY[0x277D72D28];
      sub_22BE3E49C();
      v200(v198);
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v201, v202, v203, v204);

      sub_22C2726E4();

      *v191 = v194;
      goto LABEL_45;
    case 0xF789u:
      v120 = [v7 content];
      objc_opt_self();
      v121 = sub_22BE38288();
      if (!v121 || (v122 = sub_22BE69924(v121, &selRef_vocabularyIdentifier), !v123))
      {

        sub_22C271AE4();
        v231 = sub_22C272084();
        v232 = sub_22C2737A4();
        if (os_log_type_enabled(v231, v232))
        {
          *sub_22BE202F8() = 0;
          sub_22BE1BD90();
          _os_log_impl(v233, v234, v235, v236, v237, 2u);
          sub_22BE183C8();
        }

        (*(v279 + 8))(v29, v278);
        sub_22C272874();
        goto LABEL_74;
      }

      v69 = v122;
      sub_22C2726F4();
      v124 = swift_allocBox();
      sub_22BE1B2B0();
      v125 = swift_allocObject();
      v126 = v281;
      if (qword_27D906340 != -1)
      {
        swift_once();
      }

      v127 = unk_27D907860;
      *(v125 + 16) = qword_27D907858;
      *(v125 + 24) = v127;
      strcpy((v125 + 32), "smsGroupName");
      *(v125 + 45) = 0;
      *(v125 + 46) = -5120;
      v128 = v275;
      *v275 = v125;
      v129 = *MEMORY[0x277D72D28];
      sub_22BE3E49C();
      v130(v128);
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v131, v132, v133, v134);

      sub_22C2726E4();

      *v126 = v124;
LABEL_45:
      v205 = *MEMORY[0x277D729F8];
      v206 = sub_22C272874();
      sub_22BE18C18(v206);
      v208 = *(v207 + 104);
      sub_22BE354D0();
      v209();
      goto LABEL_46;
    case 0x69F2u:
      if (!*(v272 + 16) || (v166 = sub_22BE76644(*(v272 + 32)), !v167))
      {
        sub_22C271AE4();
        v248 = sub_22C272084();
        v249 = sub_22C2737A4();
        if (os_log_type_enabled(v248, v249))
        {
          v250 = sub_22BE202F8();
          *v250 = 0;
          _os_log_impl(&dword_22BE15000, v248, v249, "[SiriEntityMatcherShim] couldn't find corresponding type name for given CCItemType_FindMyDevice entity.", v250, 2u);
          sub_22BE17A28();
        }

        sub_22BE190E4();
        v221 = v32;
        goto LABEL_73;
      }

      v168 = v166;
      v169 = v167;
      sub_22C2726F4();
      v170 = swift_allocBox();
      v69 = v171;
      sub_22BE1B2B0();
      v172 = swift_allocObject();
      v173 = v281;
      if (qword_27D906338 != -1)
      {
        swift_once();
      }

      v174 = *algn_27D9BA5A8;
      v172[2] = qword_27D9BA5A0;
      v172[3] = v174;
      v172[4] = v168;
      v172[5] = v169;
      v175 = v275;
      *v275 = v172;
      v176 = *MEMORY[0x277D72D28];
      sub_22BE3E49C();
      v177(v175);
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v178, v179, v180, v181);

      sub_22C2726E4();
      *v173 = v170;
      v182 = *MEMORY[0x277D729F8];
      v183 = sub_22C272874();
      sub_22BE18C18(v183);
      v185 = *(v184 + 104);
      sub_22BE354D0();
      v186();
LABEL_46:
      sub_22BE187DC();
      v66 = v69;
      return sub_22BE19DC4(v63, v64, v65, v66);
    case 0x7786u:
      v145 = [v7 content];
      objc_opt_self();
      v146 = sub_22BE38288();
      if (v146 && (v147 = v146, sub_22BE69924(v146, &selRef_vocabularyString), v148))
      {
        sub_22BE69924(v147, &selRef_vocabularyIdentifier);
        if (v149)
        {
          v69 = sub_22C272804();
          v150 = swift_allocBox();
          v152 = v151;
          sub_22C272B64();
          sub_22BE1A140();
          sub_22BE19DC4(v153, v154, v155, v156);
          sub_22C272B74();
          sub_22C272B84();
          sub_22BE187DC();
          sub_22BE19DC4(v157, v158, v159, v160);
          sub_22C2727F4();

          (*(*(v69 - 8) + 104))(v152, *MEMORY[0x277D729C8], v69);
          *v281 = v150;
          v119 = MEMORY[0x277D72A58];
          goto LABEL_34;
        }
      }

      else
      {
      }

      sub_22C271AE4();
      v238 = v280;

      v239 = sub_22C272084();
      sub_22C2737A4();

      if (sub_22BE1A15C())
      {
        sub_22BE19E2C();
        v240 = sub_22BE1B918();
        v282 = v240;
        v241 = sub_22BE3AF18(4.8149e-34);
        *(v44 + 4) = sub_22BE61C88(v241, v238, v242);
        sub_22BE1BD90();
        _os_log_impl(v243, v244, v245, v246, v247, 0xCu);
        sub_22BE26B64(v240);
        sub_22BE17A28();
        sub_22BE183C8();
      }

      sub_22BE190E4();
      v221 = v41;
      goto LABEL_73;
    case 0x8E52u:
      v68 = sub_22C272804();
      v69 = swift_allocBox();
      v71 = v70;
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v72, v73, v74, v75);

      sub_22C272774();
      (*(*(v68 - 8) + 104))(v71, *MEMORY[0x277D72970], v68);
      *v281 = v69;
      v76 = MEMORY[0x277D72A58];
LABEL_14:
      v77 = *v76;
      v78 = sub_22C272874();
      sub_22BE18C18(v78);
      v80 = *(v79 + 104);
      sub_22BE354D0();
      v81();
      goto LABEL_46;
    case 0xA673u:
      v100 = [v7 content];
      objc_opt_self();
      v101 = sub_22BE38288();
      if (v101 && (v102 = sub_22BE69924(v101, &selRef_typeIdentifier), v103))
      {
        v104 = v102;
        v105 = v103;
        v106 = sub_22BE69924(v7, &selRef_sourceIdentifier);
        if (v107)
        {
          v108 = v106;
          v109 = v107;
          sub_22C2726D4();
          v110 = swift_allocBox();
          sub_22BE1B2B0();
          v111 = swift_allocObject();
          v111[2] = v108;
          v111[3] = v109;
          v111[4] = v104;
          v111[5] = v105;
          v112 = v275;
          *v275 = v111;
          v113 = *MEMORY[0x277D72D28];
          sub_22BE3E49C();
          v114(v112);
          sub_22C272B84();
          v69 = v276;
          sub_22BE1A140();
          sub_22BE19DC4(v115, v116, v117, v118);

          sub_22C2726C4();

          *v281 = v110;
          v119 = MEMORY[0x277D729E8];
LABEL_34:
          v161 = *v119;
          v162 = sub_22C272874();
          sub_22BE18C18(v162);
          v164 = *(v163 + 104);
          sub_22BE354D0();
          v165();
          goto LABEL_46;
        }
      }

      else
      {
      }

      sub_22C271AE4();
      v222 = v280;

      v223 = sub_22C272084();
      sub_22C2737A4();

      if (sub_22BE1A15C())
      {
        v224 = sub_22BE19E2C();
        v225 = swift_slowAlloc();
        v282 = v225;
        *v224 = 136315138;
        *(v224 + 4) = sub_22BE61C88(v277, v222, &v282);
        sub_22BE22FC4();
        _os_log_impl(v226, v227, v228, v229, v230, 0xCu);
        sub_22BE26B64(v225);
        sub_22BE183C8();
        sub_22BE17A28();
      }

      sub_22BE190E4();
      v221 = v44;
      goto LABEL_73;
    case 0xB8EDu:
      v82 = [v7 content];
      objc_opt_self();
      v83 = sub_22BE38288();
      if (v83 && (v84 = sub_22BE69924(v83, &selRef_typeIdentifier), v85))
      {
        v44 = v84;
        v86 = v85;
        v87 = sub_22BE69924(v7, &selRef_sourceIdentifier);
        if (v88)
        {
          v89 = v87;
          v90 = v88;
          sub_22C2726F4();
          v91 = swift_allocBox();
          sub_22BE1B2B0();
          v92 = swift_allocObject();
          v92[2] = v89;
          v92[3] = v90;
          v92[4] = v44;
          v92[5] = v86;
          v93 = v275;
          *v275 = v92;
          v94 = *MEMORY[0x277D72D28];
          sub_22BE3E49C();
          v95(v93);
          sub_22C272B84();
          sub_22BE1A140();
          sub_22BE19DC4(v96, v97, v98, v99);
          v69 = v280;

          sub_22C2726E4();

          *v281 = v91;
          v76 = MEMORY[0x277D729F8];
          goto LABEL_14;
        }
      }

      else
      {
      }

      v210 = v280;
      sub_22C271AE4();

      v211 = sub_22C272084();
      sub_22C2737A4();

      if (sub_22BE1A15C())
      {
        sub_22BE19E2C();
        v212 = sub_22BE1B918();
        v282 = v212;
        v213 = sub_22BE3AF18(4.8149e-34);
        *(v44 + 4) = sub_22BE61C88(v213, v210, v214);
        sub_22BE1BD90();
        _os_log_impl(v215, v216, v217, v218, v219, 0xCu);
        sub_22BE26B64(v212);
        sub_22BE183C8();
        sub_22BE183C8();
      }

      sub_22BE190E4();
      v221 = v47;
      goto LABEL_73;
  }

  if (v50 != 19668)
  {
    sub_22C271AE4();
    v135 = v280;

    v136 = v7;
    v137 = sub_22C272084();
    sub_22C273794();

    if (sub_22BE1A15C())
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v282 = v139;
      *v138 = 136315394;
      *(v138 + 4) = sub_22BE61C88(v277, v135, &v282);
      *(v138 + 12) = 512;
      *(v138 + 14) = [v136 itemType];

      sub_22BE22FC4();
      _os_log_impl(v140, v141, v142, v143, v144, 0x10u);
      sub_22BE26B64(v139);
      sub_22BE183C8();
      sub_22BE17A28();
    }

    else
    {
    }

    (*(v279 + 8))(v26, v278);
    sub_22C272874();
    goto LABEL_74;
  }

  v51 = [v7 content];
  objc_opt_self();
  if (!sub_22BE38288())
  {

    sub_22C271AE4();
    v251 = v280;

    v252 = sub_22C272084();
    sub_22C2737A4();

    if (sub_22BE1A15C())
    {
      sub_22BE19E2C();
      v253 = sub_22BE1B918();
      v282 = v253;
      v254 = sub_22BE3AF18(4.8149e-34);
      *(v44 + 4) = sub_22BE61C88(v254, v251, v255);
      sub_22BE1BD90();
      _os_log_impl(v256, v257, v258, v259, v260, 0xCu);
      sub_22BE26B64(v253);
      sub_22BE17A28();
      sub_22BE183C8();
    }

    sub_22BE190E4();
    v221 = v49;
LABEL_73:
    v220(v221, v278);
    sub_22C272874();
LABEL_74:
    sub_22BE1A140();
    return sub_22BE19DC4(v63, v64, v65, v66);
  }

  v52._countAndFlagsBits = v277;
  v52._object = v280;
  isa = CCContactContent.getAsINPerson(contactId:)(v52).super.isa;
  v54 = sub_22C272804();
  v55 = swift_allocBox();
  v57 = v56;
  sub_22C2727A4();

  (*(*(v54 - 8) + 104))(v57, *MEMORY[0x277D729B0], v54);
  *v281 = v55;
  v58 = *MEMORY[0x277D72A58];
  v59 = sub_22C272874();
  sub_22BE18C18(v59);
  v61 = *(v60 + 104);
  sub_22BE354D0();
  v62();
  sub_22BE187DC();
  v66 = isa;

  return sub_22BE19DC4(v63, v64, v65, v66);
}

INPerson __swiftcall CCContactContent.getAsINPerson(contactId:)(Swift::String contactId)
{
  v2 = v1;
  v76 = contactId;
  v3 = sub_22BE5CE4C(&qword_27D907848, &qword_22C2758F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v74 - v8;
  v10 = sub_22C26DE64();
  v11 = sub_22BE179D8(v10);
  v75 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v87 = v15;
  v16 = sub_22BE69924(v1, &selRef_namePrefix);
  sub_22BE69924(v1, &selRef_givenName);
  v18 = v17;
  v19 = sub_22BE69924(v1, &selRef_middleName);
  v84 = v20;
  v85 = v19;
  v21 = sub_22BE69924(v1, &selRef_familyName);
  v82 = v22;
  v83 = v21;
  v23 = sub_22BE69924(v1, &selRef_nameSuffix);
  v80 = v24;
  v81 = v23;
  v25 = sub_22BE69924(v1, &selRef_nickname);
  v78 = v26;
  v79 = v25;
  if (sub_22BE76190())
  {
    v27 = sub_22BE69924(v1, &selRef_phoneticGivenName);
    v74[1] = v28;
    v74[2] = v27;
    v74[0] = sub_22BE69924(v1, &selRef_phoneticMiddleName);
    v77 = v16;
    sub_22BE69924(v1, &selRef_phoneticFamilyName);
    v74[3] = v18;
    sub_22BE1A140();
    sub_22BE19DC4(v29, v30, v31, v10);
    sub_22C26DDF4();
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v77 = v10;
  sub_22BE19DC4(v9, v32, 1, v10);
  sub_22C26DDF4();
  v33 = MEMORY[0x277D84F90];
  v88 = MEMORY[0x277D84F90];
  v34 = sub_22BE76588(v1, &selRef_phoneNumbers, &qword_28106DB10, 0x277D20F70);
  v86 = v7;
  if (v34)
  {
    v35 = v34;
    v85 = v1;
    v36 = (sub_22BE69A28)();
    v37 = 0;
    v38 = v35 & 0xC000000000000001;
    while (1)
    {
      if (v36 == v37)
      {

        v2 = v85;
        v7 = v86;
        goto LABEL_16;
      }

      if (v38)
      {
        v39 = MEMORY[0x2318AC200](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v39 = *(v35 + 8 * v37 + 32);
      }

      v40 = v39;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      sub_22BE76250(&selRef_stringValue, 2);
      MEMORY[0x2318ABB70]();
      v7 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v33 = v88;

      ++v37;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_16:
    v41 = sub_22BE76588(v2, &selRef_emailAddresses, &qword_28106DB00, 0x277D20F58);
    if (v41)
    {
      v35 = v41;
      v42 = (sub_22BE69A28)();
      v43 = 0;
      v7 = (v35 & 0xC000000000000001);
      v38 = v35 & 0xFFFFFFFFFFFFFF8;
      while (v42 != v43)
      {
        if (v7)
        {
          v44 = MEMORY[0x2318AC200](v43, v35);
        }

        else
        {
          if (v43 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v44 = *(v35 + 8 * v43 + 32);
        }

        v45 = v44;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_48;
        }

        sub_22BE76250(&selRef_email, 1);
        MEMORY[0x2318ABB70]();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22C2734F4();
        }

        sub_22C273554();
        v33 = v88;

        ++v43;
      }

      v7 = v86;
    }

    v46 = sub_22BE69A28(v33);
    v38 = v77;
    if (!v46)
    {
      v47 = objc_allocWithZone(MEMORY[0x277CD3E98]);
      sub_22BE762F0(0, 0, 0);
      MEMORY[0x2318ABB70]();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v33 = v88;
    }

    v35 = v33 & 0xC000000000000001;
    sub_22BE69A38(0, (v33 & 0xC000000000000001) == 0, v33);
    if ((v33 & 0xC000000000000001) == 0)
    {
      v48 = *(v33 + 32);
      goto LABEL_34;
    }
  }

  v48 = MEMORY[0x2318AC200](0, v33);
LABEL_34:
  v49 = v48;
  if (sub_22BE66128(v33) < 2)
  {
    v54 = 0;
    goto LABEL_60;
  }

  v50 = sub_22BE69A28(v33);
  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_52;
  }

  v51 = v50;
  sub_22BE76530(1, v33);
  sub_22BE76530(v51, v33);
  if (!v35 || v51 == 1)
  {
  }

  else
  {
    sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);

    v52 = 1;
    do
    {
      v53 = v52 + 1;
      sub_22C273AE4();
      v52 = v53;
    }

    while (v51 != v53);
  }

  if (v33 >> 62)
  {
LABEL_52:

    v55 = sub_22C273CF4();
    v56 = v60;
    v57 = v61;
    v58 = v62;
    if ((v62 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

  v55 = v33 & 0xFFFFFFFFFFFFFF8;
  v56 = (v33 & 0xFFFFFFFFFFFFFF8) + 32;
  v57 = 1;
  v58 = (2 * v51) | 1;
  if ((v58 & 1) == 0)
  {
LABEL_45:
    sub_22BE68B50(v55, v56, v57, v58);
    v54 = v59;
LABEL_59:
    swift_unknownObjectRelease();
    goto LABEL_60;
  }

LABEL_53:
  sub_22C274064();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = MEMORY[0x277D84F90];
  }

  v64 = *(v63 + 16);

  if (__OFSUB__(v58 >> 1, v57))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (v64 != (v58 >> 1) - v57)
  {
LABEL_62:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v54 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v54)
  {
    v54 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

LABEL_60:
  v65 = v75;
  v66 = v87;
  (*(v75 + 16))(v7, v87, v38);
  sub_22BE187DC();
  sub_22BE19DC4(v67, v68, v69, v38);
  v70 = objc_allocWithZone(MEMORY[0x277CD3E90]);
  object = v76._object;

  v72 = sub_22BE7635C(v49, v7, 0, 0, 0, v76._countAndFlagsBits, object, 0, 0, v54, 0);
  (*(v65 + 8))(v66, v38);

  return v72;
}

BOOL sub_22BE76190()
{
  sub_22BE69924(v0, &selRef_phoneticGivenName);
  if (v1)
  {

    sub_22BE23BB4();
    if (v2)
    {
      return 1;
    }
  }

  sub_22BE69924(v0, &selRef_phoneticMiddleName);
  if (v3)
  {

    sub_22BE23BB4();
    if (v4)
    {
      return 1;
    }
  }

  v5 = sub_22BE69924(v0, &selRef_phoneticFamilyName);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

id sub_22BE76250(SEL *a1, uint64_t a2)
{
  sub_22BE69924(v2, &selRef_label);
  if (v5)
  {
    v6 = sub_22C272FF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_22BE69924(v2, a1);
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  return sub_22C25ED7C(v7, v9, a2, v6);
}

id sub_22BE762F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22C272FF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_22BE7635C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_22C26DE64();
  v17 = 0;
  if (sub_22BE1AEA8(a2, 1, v16) != 1)
  {
    v17 = sub_22C26DE24();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_22C272FF4();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_22C272FF4();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_22C272FF4();
  }

  else
  {
    v20 = 0;
  }

  if (a10)
  {
    sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);
    v21 = sub_22C273484();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20 aliases:v21 suggestionType:a11];

  return v22;
}

uint64_t sub_22BE76530(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_22C273CE4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BE76588(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_22BE45D84(0, a3, a4);
  v8 = sub_22C273494();

  return v8;
}

uint64_t sub_22BE76600(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  v1 = **(&unk_278725840 + (a1 - 1));
  return sub_22C273024();
}

unint64_t sub_22BE76644(unsigned __int16 a1)
{
  if (a1 == 27126)
  {
    v1 = 0xD000000000000010;
  }

  else
  {
    v1 = 0;
  }

  if (a1 - 27131 < 2 || a1 == 27127)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22BE766D0()
{
  v0 = *MEMORY[0x277D5F4D8];
  result = sub_22C273024();
  qword_27D9BA590 = result;
  *algn_27D9BA598 = v2;
  return result;
}

uint64_t sub_22BE76700()
{
  v0 = *MEMORY[0x277D5F4D0];
  result = sub_22C273024();
  qword_27D9BA5A0 = result;
  *algn_27D9BA5A8 = v2;
  return result;
}

uint64_t sub_22BE76730()
{
  v0 = *MEMORY[0x277D5F4E0];
  result = sub_22C273024();
  qword_27D907858 = result;
  unk_27D907860 = v2;
  return result;
}

uint64_t static EntitySpanMatcherTypeBundleNames.messagesBundleName.getter()
{
  if (qword_27D906340 != -1)
  {
    swift_once();
  }

  v0 = qword_27D907858;

  return v0;
}

_BYTE *sub_22BE767D8(_BYTE *result, int a2, int a3)
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

uint64_t EntitySpanMatchService.__allocating_init(matcherRegistry:maxMatchTasks:)()
{
  sub_22BE1A8A8();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  *(v2 + 120) = v0;
  return v2;
}

uint64_t EntitySpanMatchService.init(matcherRegistry:maxMatchTasks:)()
{
  sub_22BE1A8A8();
  swift_defaultActor_initialize();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return v1;
}

uint64_t sub_22BE7690C()
{
  sub_22BE183F0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_22C270F94();
  v1[22] = v5;
  sub_22BE17A18(v5);
  v1[23] = v6;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = sub_22C2720A4();
  v1[26] = v9;
  sub_22BE17A18(v9);
  v1[27] = v10;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE76A24, v0, 0);
}

uint64_t sub_22BE76A24()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 152);
  sub_22C271AE4();

  v3 = sub_22C272084();
  v4 = sub_22C273794();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  if (v5)
  {
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = sub_22BE19E2C();
    v12 = sub_22BE25618();
    v53 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22BE61C88(v10, v9, &v53);
    _os_log_impl(&dword_22BE15000, v3, v4, "[EntitySpanMatchService] start finding entity matches for %s", v11, 0xCu);
    sub_22BE26B64(v12);
    sub_22BE183C8();
    sub_22BE183C8();
  }

  (*(v7 + 8))(v6, v8);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 120) = v15;
  if (v13)
  {
    v16 = *(v0 + 184);
    v17 = *(v0 + 160);
    v50 = *(v15 + 16);
    v48 = v15 + 32;

    v18 = 0;
    v47 = MEMORY[0x277D84F90];
    for (i = v15; ; v15 = i)
    {
LABEL_5:
      if (v18 == v50)
      {

        v37 = v0 + 120;
        v15 = v47;
        *(v0 + 120) = v47;
        goto LABEL_19;
      }

      if (v18 >= *(v15 + 16))
      {
        break;
      }

      v19 = *(v0 + 200);
      v51 = v18 + 1;
      sub_22BE26B00(v48 + 40 * v18, v0 + 16);
      v20 = *(v0 + 48);
      sub_22BE1BD3C((v0 + 16), *(v0 + 40));
      sub_22C271924();
      if (*(v17 + 16))
      {
        v21 = *(v0 + 200);
        v22 = *(v0 + 176);
        v23 = *(v17 + 40);
        sub_22BE187E8();
        sub_22BE79708(&qword_27D907880, 255, v24);
        v25 = sub_22C272ED4();
        v26 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v27 = v25 & v26;
          if (((*(v17 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {
            break;
          }

          v28 = *(v0 + 192);
          v29 = *(v0 + 176);
          (*(v16 + 16))(v28, *(v17 + 48) + *(v16 + 72) * v27, v29);
          sub_22BE187E8();
          sub_22BE79708(&qword_27D907888, 255, v30);
          v31 = sub_22C272FD4();
          v32 = *(v16 + 8);
          v32(v28, v29);
          v25 = v27 + 1;
          if (v31)
          {
            v32(*(v0 + 200), *(v0 + 176));
            sub_22BE49224((v0 + 16), v0 + 56);
            v33 = v47;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v53 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22BE70264(0, *(v47 + 16) + 1, 1);
              v33 = v53;
            }

            v15 = i;
            v36 = *(v33 + 16);
            v35 = *(v33 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_22BE70264((v35 > 1), v36 + 1, 1);
              v33 = v53;
            }

            *(v33 + 16) = v36 + 1;
            v47 = v33;
            sub_22BE49224((v0 + 56), v33 + 40 * v36 + 32);
            v18 = v51;
            goto LABEL_5;
          }
        }
      }

      (*(v16 + 8))(*(v0 + 200), *(v0 + 176));
      sub_22BE26B64((v0 + 16));
      v18 = v51;
    }

    __break(1u);
  }

  else
  {

    v37 = v0 + 120;
LABEL_19:
    v38 = *(v0 + 168);
    v40 = *(v0 + 144);
    v39 = *(v0 + 152);
    *(v0 + 128) = MEMORY[0x277D84F90];
    if (*(v15 + 16) >= *(v38 + 120))
    {
      v41 = *(v38 + 120);
    }

    else
    {
      v41 = *(v15 + 16);
    }

    *(v0 + 136) = v41;
    sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
    sub_22BE79708(&qword_281079E18, v42, type metadata accessor for EntitySpanMatchService);
    v43 = swift_task_alloc();
    *(v0 + 232) = v43;
    v43[2] = v41;
    v43[3] = v37;
    v43[4] = v40;
    v43[5] = v39;
    v43[6] = v0 + 136;
    v43[7] = v0 + 128;
    v44 = *(MEMORY[0x277D859B8] + 4);
    v45 = swift_task_alloc();
    *(v0 + 240) = v45;
    *v45 = v0;
    v45[1] = sub_22BE76F54;
  }

  return MEMORY[0x282200740]();
}

uint64_t sub_22BE76F54()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = sub_22BE770F0;
  }

  else
  {
    v11 = v3[29];
    v12 = v3[21];

    v10 = sub_22BE77064;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BE77064()
{
  sub_22BE183FC();
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[15];
  v5 = v0[16];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_22BE770F0()
{
  sub_22BE183FC();
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[16];

  v6 = v0[15];

  sub_22BE17A94();
  v8 = v0[31];

  return v7();
}

uint64_t sub_22BE77180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = a7;
  v8[44] = a8;
  v8[41] = a5;
  v8[42] = a6;
  v8[39] = a3;
  v8[40] = a4;
  v8[38] = a2;
  v9 = *(*(sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v10 = sub_22C270F94();
  v8[49] = v10;
  v11 = *(v10 - 8);
  v8[50] = v11;
  v8[51] = *(v11 + 64);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v12 = sub_22BE5CE4C(&qword_27D9078A8, &qword_22C275B98);
  v8[55] = v12;
  v13 = *(v12 - 8);
  v8[56] = v13;
  v14 = *(v13 + 64) + 15;
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE77330, 0, 0);
}

uint64_t sub_22BE77330(uint64_t a1)
{
  v2 = *(v1 + 312);
  if (v2 < 0)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x2822004E8](a1);
  }

  v3 = *(v1 + 408);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 7;
    v36 = *(v1 + 400);
    v37 = v3 + 7;
    v35 = **(v1 + 304);
    v6 = 32;
    while (1)
    {
      v7 = **(v1 + 320);
      if (v4 >= *(v7 + 16))
      {
        break;
      }

      v42 = v4;
      v8 = *(v1 + 424);
      v9 = *(v1 + 432);
      v11 = *(v1 + 384);
      v10 = *(v1 + 392);
      v39 = *(v1 + 336);
      v40 = *(v1 + 376);
      v38 = *(v1 + 328);
      v41 = v6;
      sub_22BE26B00(v7 + v6, v1 + 16);
      v12 = *(v1 + 48);
      sub_22BE1BD3C((v1 + 16), *(v1 + 40));
      sub_22C271924();
      v13 = sub_22C273624();
      sub_22BE19DC4(v11, 1, 1, v13);
      (*(v36 + 16))(v8, v9, v10);
      sub_22BE26B00(v1 + 16, v1 + 56);
      v14 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v15 = (v14 + v5) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = (v16 + 16);
      *(v16 + 24) = 0;
      (*(v36 + 32))(v16 + v14, v8, v10);
      sub_22BE49224((v1 + 56), v16 + v15);
      v18 = (v16 + ((v15 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v18 = v38;
      v18[1] = v39;
      sub_22BE794B4(v11, v40);
      v19 = sub_22BE1AEA8(v40, 1, v13);

      v20 = *(v1 + 376);
      if (v19 == 1)
      {
        sub_22BE23388(*(v1 + 376), &qword_27D9078A0, &qword_22C275B90);
      }

      else
      {
        sub_22C273614();
        (*(*(v13 - 8) + 8))(v20, v13);
      }

      if (*v17)
      {
        v21 = *(v16 + 24);
        v22 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_22C2735D4();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
      v26 = v25 | v23;
      if (v25 | v23)
      {
        v26 = v1 + 176;
        *(v1 + 176) = 0;
        *(v1 + 184) = 0;
        *(v1 + 192) = v23;
        *(v1 + 200) = v25;
      }

      v4 = v42 + 1;
      v27 = *(v1 + 432);
      v29 = *(v1 + 384);
      v28 = *(v1 + 392);
      v30 = *(v1 + 312);
      *(v1 + 240) = 1;
      *(v1 + 248) = v26;
      *(v1 + 256) = v35;
      swift_task_create();

      sub_22BE23388(v29, &qword_27D9078A0, &qword_22C275B90);
      (*(v36 + 8))(v27, v28);
      a1 = sub_22BE26B64((v1 + 16));
      v6 = v41 + 40;
      v5 = v37;
      if (v42 + 1 == v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v5 = v3 + 7;
LABEL_16:
  *(v1 + 464) = v5;
  v31 = *(v1 + 456);
  *(v1 + 472) = **(v1 + 304);
  *(v1 + 480) = sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C273644();
  v32 = *(MEMORY[0x277D85828] + 4);
  v33 = swift_task_alloc();
  *(v1 + 488) = v33;
  *v33 = v1;
  a1 = sub_22BE17A58(v33);

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BE77770()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = *(v2 + 488);
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;

  if (v0)
  {
    v6 = sub_22BE77DA0;
  }

  else
  {
    v6 = sub_22BE77870;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22BE77870()
{
  v1 = *(v0 + 288);
  if (!v1)
  {
    v17 = *(v0 + 456);
    sub_22BE3C79C(*(v0 + 448));
    v18(v17);

    sub_22BE17A94();
    sub_22BE18174();

    __asm { BRAA            X1, X16 }
  }

  v2 = **(v0 + 344);
  v3 = **(v0 + 320);
  if (v2 < *(v3 + 16))
  {
    if (v2 < 0)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v56 = *(v0 + 288);
    v4 = *(v0 + 416);
    v5 = *(v0 + 424);
    v6 = *(v0 + 392);
    v7 = *(v0 + 400);
    v8 = *(v0 + 368);
    v57 = *(v0 + 464);
    v59 = *(v0 + 336);
    v60 = *(v0 + 360);
    v58 = *(v0 + 328);
    sub_22BE26B00(v3 + 40 * v2 + 32, v0 + 96);
    v9 = *(v0 + 128);
    sub_22BE1BD3C((v0 + 96), *(v0 + 120));
    sub_22C271924();
    v10 = sub_22C273624();
    sub_22BE19DC4(v8, 1, 1, v10);
    (*(v7 + 16))(v5, v4, v6);
    sub_22BE26B00(v0 + 96, v0 + 136);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = (v11 + v57) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = (v13 + 16);
    *(v13 + 24) = 0;
    (*(v7 + 32))(v13 + v11, v5, v6);
    sub_22BE49224((v0 + 136), v13 + v12);
    v15 = (v13 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v15 = v58;
    v15[1] = v59;
    sub_22BE794B4(v8, v60);
    LODWORD(v12) = sub_22BE1AEA8(v60, 1, v10);

    v16 = *(v0 + 360);
    if (v12 == 1)
    {
      sub_22BE23388(*(v0 + 360), &qword_27D9078A0, &qword_22C275B90);
    }

    else
    {
      sub_22C273614();
      (*(*(v10 - 8) + 8))(v16, v10);
    }

    if (*v14)
    {
      v21 = *(v13 + 24);
      v22 = *v14;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_22C2735D4();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    if (v25 | v23)
    {
      v26 = v0 + 208;
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = v23;
      *(v0 + 232) = v25;
    }

    else
    {
      v26 = 0;
    }

    v28 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 416);
    v30 = *(v0 + 392);
    v31 = *(v0 + 400);
    v32 = *(v0 + 368);
    v33 = *(v0 + 344);
    *(v0 + 264) = 1;
    *(v0 + 272) = v26;
    *(v0 + 280) = v28;
    swift_task_create();

    sub_22BE23388(v32, &qword_27D9078A0, &qword_22C275B90);
    (*(v31 + 8))(v29, v30);
    if (__OFADD__(*v33, 1))
    {
      goto LABEL_38;
    }

    **(v0 + 344) = *v33 + 1;
    sub_22BE26B64((v0 + 96));
    v1 = v56;
  }

  v34 = *(v0 + 352);
  v35 = *(v1 + 16);
  v36 = *v34;
  v37 = *(*v34 + 16);
  v38 = v37 + v35;
  if (__OFADD__(v37, v35))
  {
    __break(1u);
    goto LABEL_35;
  }

  v39 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v34 = v36;
  if (!isUniquelyReferenced_nonNull_native || (v41 = *(v36 + 24) >> 1, v41 < v38))
  {
    v42 = *(v0 + 352);
    if (*(v36 + 16) <= v38)
    {
      v43 = v38;
    }

    else
    {
      v43 = *(v36 + 16);
    }

    sub_22BE66518(isUniquelyReferenced_nonNull_native, v43, 1, v36);
    v36 = v44;
    *v42 = v44;
    v41 = *(v44 + 24) >> 1;
  }

  if (*(v1 + 16))
  {
    v45 = v41 - *(v36 + 16);
    v46 = *(sub_22C270FD4() - 8);
    if (v45 >= v35)
    {
      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = *(v46 + 72);
      swift_arrayInitWithCopy();

      if (!v35)
      {
        goto LABEL_31;
      }

      v49 = *(v36 + 16);
      v50 = __OFADD__(v49, v35);
      v51 = v49 + v35;
      if (!v50)
      {
        *(v36 + 16) = v51;
        goto LABEL_31;
      }

LABEL_39:
      __break(1u);
      return MEMORY[0x2822004E8]();
    }

    goto LABEL_36;
  }

  if (v35)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  **(v0 + 352) = v36;
  v52 = *(MEMORY[0x277D85828] + 4);
  v53 = swift_task_alloc();
  *(v0 + 488) = v53;
  *v53 = v0;
  sub_22BE17A58();
  sub_22BE18174();

  return MEMORY[0x2822004E8]();
}

uint64_t sub_22BE77DA0()
{
  v1 = v0[57];
  sub_22BE3C79C(v0[56]);
  v2(v1);
  v3 = v0[37];

  sub_22BE17A94();

  return v4();
}

uint64_t sub_22BE77E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_22C270F94();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v11 = sub_22C2720A4();
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE77FAC, 0, 0);
}

uint64_t sub_22BE77FAC()
{
  v34 = v3;
  sub_22BE23698();
  v5 = sub_22BE3E4A8();
  v6(v5);
  v7 = sub_22C272084();
  v8 = sub_22C273784();
  os_log_type_enabled(v7, v8);
  sub_22BE2B770();
  if (v9)
  {
    v32 = v4;
    v10 = sub_22BE19E2C();
    v11 = sub_22BE25618();
    v33 = v11;
    *v10 = 136315138;
    v29 = sub_22C270F84();
    v31 = v0;
    v13 = v12;
    v14 = sub_22BE183E0();
    v8(v14);
    sub_22BE61C88(v29, v13, &v33);
    sub_22BE3D3E0();

    *(v10 + 4) = v1;
    sub_22BE1C238(&dword_22BE15000, v15, v16, "[EntitySpanMatchService] finding span matches with %s", v17, v18, v19, v20, v29, v30, v8);
    sub_22BE26B64(v11);
    sub_22BE183C8();
    sub_22BE183C8();

    v21 = *(v2 + 8);
    v21(v31, v32);
  }

  else
  {

    v22 = sub_22BE183E0();
    v8(v22);
    v21 = *(v2 + 8);
    v21(v0, v4);
  }

  v3[17] = v21;
  v3[18] = v8;
  v23 = v3[4];
  v24 = v23[4];
  sub_22BE1BD3C(v23, v23[3]);
  v25 = *(MEMORY[0x277D1F168] + 4);
  v26 = swift_task_alloc();
  v3[19] = v26;
  *v26 = v3;
  v27 = sub_22BE79754(v26);

  return MEMORY[0x282179510](v27);
}

uint64_t sub_22BE78174()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;

  if (v0)
  {
    v9 = v3[13];
    v8 = v3[14];
    v12 = v3 + 9;
    v10 = v3[9];
    v11 = v12[1];

    sub_22BE17A94();

    return v13();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BE79750, 0, 0);
  }
}

uint64_t sub_22BE782C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_22C270F94();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v11 = sub_22C2720A4();
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE78400, 0, 0);
}

uint64_t sub_22BE78400()
{
  v34 = v3;
  sub_22BE23698();
  v5 = sub_22BE3E4A8();
  v6(v5);
  v7 = sub_22C272084();
  v8 = sub_22C273784();
  os_log_type_enabled(v7, v8);
  sub_22BE2B770();
  if (v9)
  {
    v32 = v4;
    v10 = sub_22BE19E2C();
    v11 = sub_22BE25618();
    v33 = v11;
    *v10 = 136315138;
    v29 = sub_22C270F84();
    v31 = v0;
    v13 = v12;
    v14 = sub_22BE183E0();
    v8(v14);
    sub_22BE61C88(v29, v13, &v33);
    sub_22BE3D3E0();

    *(v10 + 4) = v1;
    sub_22BE1C238(&dword_22BE15000, v15, v16, "[EntitySpanMatchService] finding span matches with %s", v17, v18, v19, v20, v29, v30, v8);
    sub_22BE26B64(v11);
    sub_22BE183C8();
    sub_22BE183C8();

    v21 = *(v2 + 8);
    v21(v31, v32);
  }

  else
  {

    v22 = sub_22BE183E0();
    v8(v22);
    v21 = *(v2 + 8);
    v21(v0, v4);
  }

  v3[17] = v21;
  v3[18] = v8;
  v23 = v3[4];
  v24 = v23[4];
  sub_22BE1BD3C(v23, v23[3]);
  v25 = *(MEMORY[0x277D1F168] + 4);
  v26 = swift_task_alloc();
  v3[19] = v26;
  *v26 = v3;
  v27 = sub_22BE79754(v26);

  return MEMORY[0x282179510](v27);
}

uint64_t sub_22BE785C8()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;

  if (v0)
  {
    v9 = v3[13];
    v8 = v3[14];
    v12 = v3 + 9;
    v10 = v3[9];
    v11 = v12[1];

    sub_22BE17A94();

    return v13();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BE78718, 0, 0);
  }
}

void sub_22BE78718()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 24);
  sub_22C271AE4();
  v3(v5, v7, v6);

  v8 = sub_22C272084();
  v36 = sub_22C273784();
  v9 = os_log_type_enabled(v8, v36);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 104);
  v37 = *(v0 + 96);
  v14 = *(v0 + 88);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 56);
  if (v9)
  {
    v35 = *(v0 + 88);
    v18 = sub_22BE25618();
    v38 = swift_slowAlloc();
    *v18 = 134218498;
    *(v18 + 4) = *(v10 + 16);

    *(v18 + 12) = 2080;
    v33 = v13;
    v34 = v11;
    v19 = sub_22C270F84();
    v21 = v20;
    v12(v15, v17);
    v22 = sub_22BE61C88(v19, v21, &v38);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    v23 = sub_22C270FD4();
    v24 = MEMORY[0x2318ABC00](v10, v23);
    v26 = sub_22BE61C88(v24, v25, &v38);

    *(v18 + 24) = v26;
    _os_log_impl(&dword_22BE15000, v8, v36, "[EntitySpanMatchService] found %ld span matches with %s: %s", v18, 0x20u);
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    v34(v33, v35);
  }

  else
  {

    v12(v15, v17);
    v11(v13, v14);
  }

  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  **(v0 + 16) = *(v0 + 160);

  sub_22BE17A94();
  sub_22BE18174();

  __asm { BRAA            X1, X16 }
}

uint64_t EntitySpanMatchService.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BE78A1C(uint64_t a1)
{
  v2 = sub_22BE79364();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE78A58(uint64_t a1)
{
  v2 = sub_22BE79364();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BE78B50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_22BE78C3C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_22BE78C84(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  sub_22BE5CE4C(&qword_27D9078B8, &qword_22C275BC8);
  result = sub_22C273A44();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = a1 + 32;
  v8 = *(result + 40);
  v9 = ~(-1 << *(result + 32));
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = *(v7 + 2 * v5++);
    for (result = MEMORY[0x2318AC830](v8, v11, 2); ; result = v12 + 1)
    {
      v12 = result & v9;
      v13 = (result & v9) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v9);
      if ((v15 & v14) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 2 * v12) == v11)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 2 * v12) = v11;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v10 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BE78DC8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  result = sub_22C273A44();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_22C274154();

    sub_22C272F44();
    result = sub_22C2741A4();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_22C274014() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22BE78F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v14 = a4(0);
  v15 = sub_22BE79708(a5, 255, a6);
  *&v13 = a2;
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return sub_22BE49224(&v13, v11 + 40 * a1 + 32);
}

uint64_t sub_22BE79014()
{
  sub_22BE1A8A8();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22BE40CC8;

  return sub_22BE77180(v2, v0, v4, v5, v6, v7, v9, v8);
}

uint64_t dispatch thunk of EntitySpanMatchService.findMatches(query:matcherOverrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22BE79268;

  return v12(a1, a2, a3);
}

uint64_t sub_22BE79268()
{
  sub_22BE183F0();
  v2 = v1;
  sub_22BE190F0();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22BE18C2C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

unint64_t sub_22BE79364()
{
  result = qword_27D907890;
  if (!qword_27D907890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907890);
  }

  return result;
}

uint64_t sub_22BE793B8()
{
  v1 = sub_22C270F94();
  sub_22BE17A18(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_22BE22FD4(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = sub_22BE1A4CC(v5);

  return sub_22BE77E70(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BE794B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE79524()
{
  v1 = sub_22C270F94();
  sub_22BE179D8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  sub_22BE26B64((v0 + v7));
  v10 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v4 | 7);
}

uint64_t sub_22BE7960C()
{
  v1 = sub_22C270F94();
  sub_22BE17A18(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_22BE22FD4(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = sub_22BE1A4CC(v5);

  return sub_22BE782C4(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BE79708(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BE79754(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 40);
}

uint64_t IntelligenceFlowError.errorHierarchy.getter()
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C275BD0;
  *(v0 + 32) = sub_22C26E5A4();
  return v0;
}

uint64_t sub_22BE797D4(uint64_t a1)
{
  v2 = sub_22BE7A4C8(&qword_27D9078C0, MEMORY[0x277D1C2F0]);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE79840(uint64_t a1)
{
  v2 = sub_22BE7A4C8(&qword_27D9078C0, MEMORY[0x277D1C2F0]);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t NSError.errorHierarchy.getter()
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22C275BD0;
  *(v1 + 32) = v0;
  v2 = v0;
  return v1;
}

uint64_t sub_22BE7992C()
{
  v1 = type metadata accessor for SessionCoordinatorError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v4, type metadata accessor for SessionCoordinatorError);
  sub_22BE7A4C8(&qword_27D9078E8, type metadata accessor for SessionCoordinatorError);
  v6 = sub_22C273FF4();
  if (v6)
  {
    v7 = v6;
    sub_22BE7A570(v4, type metadata accessor for SessionCoordinatorError);
  }

  else
  {
    v7 = swift_allocError();
    sub_22BE7A510(v4, v8, type metadata accessor for SessionCoordinatorError);
  }

  v9 = sub_22C26DE74();

  *(v5 + 32) = v9;
  SessionCoordinatorError.innerError.getter(v16);
  v10 = v17;
  v11 = v18;
  sub_22BE1BD3C(v16, v17);
  v12 = (*(v11 + 16))(v10, v11);
  v15 = v5;
  sub_22BE6E02C(v12);
  v13 = v15;
  sub_22BE26B64(v16);
  return v13;
}

uint64_t sub_22BE79B0C()
{
  v1 = type metadata accessor for ExecutorError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v4, type metadata accessor for ExecutorError);
  sub_22BE7A4C8(&qword_27D9078F8, type metadata accessor for ExecutorError);
  v6 = sub_22C273FF4();
  if (v6)
  {
    v7 = v6;
    sub_22BE7A570(v4, type metadata accessor for ExecutorError);
  }

  else
  {
    v7 = swift_allocError();
    sub_22BE7A510(v4, v8, type metadata accessor for ExecutorError);
  }

  v9 = sub_22C26DE74();

  *(v5 + 32) = v9;
  ExecutorError.innerError.getter(v16);
  v10 = v17;
  v11 = v18;
  sub_22BE1BD3C(v16, v17);
  v12 = (*(v11 + 16))(v10, v11);
  v15 = v5;
  sub_22BE6E02C(v12);
  v13 = v15;
  sub_22BE26B64(v16);
  return v13;
}

uint64_t sub_22BE79CEC()
{
  v1 = type metadata accessor for SessionError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v4, type metadata accessor for SessionError);
  sub_22BE7A4C8(&qword_27D9078E0, type metadata accessor for SessionError);
  v6 = sub_22C273FF4();
  if (v6)
  {
    v7 = v6;
    sub_22BE7A570(v4, type metadata accessor for SessionError);
  }

  else
  {
    v7 = swift_allocError();
    sub_22BE7A510(v4, v8, type metadata accessor for SessionError);
  }

  v9 = sub_22C26DE74();

  *(v5 + 32) = v9;
  SessionError.innerError.getter(v16);
  v10 = v17;
  v11 = v18;
  sub_22BE1BD3C(v16, v17);
  v12 = (*(v11 + 16))(v10, v11);
  v15 = v5;
  sub_22BE6E02C(v12);
  v13 = v15;
  sub_22BE26B64(v16);
  return v13;
}

uint64_t sub_22BE79ECC()
{
  v1 = type metadata accessor for PlannerError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v4, type metadata accessor for PlannerError);
  sub_22BE7A4C8(&qword_27D9078F0, type metadata accessor for PlannerError);
  v6 = sub_22C273FF4();
  if (v6)
  {
    v7 = v6;
    sub_22BE7A570(v4, type metadata accessor for PlannerError);
  }

  else
  {
    v7 = swift_allocError();
    sub_22BE7A510(v4, v8, type metadata accessor for PlannerError);
  }

  v9 = sub_22C26DE74();

  *(v5 + 32) = v9;
  PlannerError.innerError.getter(v16);
  v10 = v17;
  v11 = v18;
  sub_22BE1BD3C(v16, v17);
  v12 = (*(v11 + 16))(v10, v11);
  v15 = v5;
  sub_22BE6E02C(v12);
  v13 = v15;
  sub_22BE26B64(v16);
  return v13;
}

uint64_t ErrorHierarchyStep.errorHierarchy.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C275BD0;
  (*(v5 + 16))(v8, v2, a1);
  v10 = *(*(*(a2 + 8) + 8) + 8);
  v11 = sub_22C273FF4();
  if (v11)
  {
    v12 = v11;
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    v12 = swift_allocError();
    (*(v5 + 32))(v13, v8, a1);
  }

  v14 = sub_22C26DE74();

  *(v9 + 32) = v14;
  (*(a2 + 16))(v21, a1, a2);
  v15 = v22;
  v16 = v23;
  sub_22BE1BD3C(v21, v22);
  v17 = (*(v16 + 16))(v15, v16);
  v20 = v9;
  sub_22BE6E02C(v17);
  v18 = v20;
  sub_22BE26B64(v21);
  return v18;
}

uint64_t sub_22BE7A2B4(uint64_t a1)
{
  result = sub_22BE7A4C8(&qword_27D9078C0, MEMORY[0x277D1C2F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7A354(uint64_t a1)
{
  result = sub_22BE7A4C8(&qword_27D9078D0, sub_22BE7A3AC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22BE7A3AC()
{
  result = qword_27D9077E0;
  if (!qword_27D9077E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9077E0);
  }

  return result;
}

uint64_t sub_22BE7A468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BE7A4C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE7A510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE7A570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE7A5CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEF65747563657845)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BE7A6A0(char a1)
{
  sub_22C274154();
  MEMORY[0x2318AC860](a1 & 1);
  return sub_22C2741A4();
}

uint64_t sub_22BE7A6F4(char a1)
{
  if (a1)
  {
    return 0x6F5464656C696166;
  }

  else
  {
    return 0x726568746FLL;
  }
}

uint64_t sub_22BE7A73C()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t sub_22BE7A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7A5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE7A7D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE7A698();
  *a1 = result;
  return result;
}

uint64_t sub_22BE7A7F8(uint64_t a1)
{
  v2 = sub_22BE7B524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7A834(uint64_t a1)
{
  v2 = sub_22BE7B524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7A870(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s30IntelligenceFlowPlannerSupport07AgenticC6TargetO9hashValueSivg_0()
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

uint64_t sub_22BE7A944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE17F4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BE7A970(uint64_t a1)
{
  v2 = sub_22BE7B578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7A9AC(uint64_t a1)
{
  v2 = sub_22BE7B578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7A9F0()
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

uint64_t sub_22BE7AA30(uint64_t a1)
{
  v2 = sub_22BE7B5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7AA6C(uint64_t a1)
{
  v2 = sub_22BE7B5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7AAA8(uint64_t a1)
{
  v2 = sub_22BE7C024(&qword_27D907998, type metadata accessor for ExecutorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE7AB14(uint64_t a1)
{
  v2 = sub_22BE7C024(&qword_27D907998, type metadata accessor for ExecutorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

void ExecutorError.innerError.getter(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ExecutorError();
  sub_22BE1BC24(v3);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  sub_22BE7AD78(v1, v8 - v7);
  v10 = sub_22C26E5D4();
  if (sub_22BE1AEA8(v9, 1, v10) == 1)
  {
    sub_22BE18408();
    sub_22BE7C024(v11, v12);
    v13 = swift_allocError();
    sub_22BE7AD78(v1, v14);
    v15 = sub_22C26DE74();
    a1[3] = sub_22BE7A3AC();
    a1[4] = sub_22BE7C024(&qword_27D907908, sub_22BE7A3AC);

    *a1 = v15;
  }

  else
  {
    a1[3] = v10;
    sub_22BE17AB4();
    a1[4] = sub_22BE7C024(v16, v17);
    sub_22BE62524(a1);
    sub_22BE1BC24(v10);
    (*(v18 + 32))();
  }
}

uint64_t type metadata accessor for ExecutorError()
{
  result = qword_28107C9D8;
  if (!qword_28107C9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE7AD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutorError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ExecutorError.errorCodeValue.getter()
{
  v1 = type metadata accessor for ExecutorError();
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  sub_22BE7AD78(v0, v6 - v5);
  v8 = sub_22C26E5D4();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return 2;
  }

  sub_22BE7AE74(v7);
  return 1;
}

uint64_t sub_22BE7AE74(uint64_t a1)
{
  v2 = type metadata accessor for ExecutorError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ExecutorError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E5D4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = type metadata accessor for ExecutorError();
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = sub_22BE5CE4C(&qword_27D907910, &qword_22C275D40);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v32 - v25;
  v27 = *(v24 + 56);
  sub_22BE7AD78(a1, &v32 - v25);
  sub_22BE7AD78(a2, &v26[v27]);
  sub_22BE18190(v26);
  if (!v29)
  {
    sub_22BE7AD78(v26, v19);
    sub_22BE18190(&v26[v27]);
    if (!v29)
    {
      (*(v7 + 32))(v12, &v26[v27], v4);
      v28 = sub_22C26E5C4();
      v30 = *(v7 + 8);
      v30(v12, v4);
      v30(v19, v4);
      sub_22BE7AE74(v26);
      return v28 & 1;
    }

    (*(v7 + 8))(v19, v4);
LABEL_9:
    sub_22BE7B0DC(v26);
    v28 = 0;
    return v28 & 1;
  }

  sub_22BE18190(&v26[v27]);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_22BE7AE74(v26);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_22BE7B0DC(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907910, &qword_22C275D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExecutorError.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907918, &qword_22C275D48);
  v3 = sub_22BE179D8(v2);
  v48 = v4;
  v49 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v47 = v8;
  v9 = sub_22BE5CE4C(&qword_27D907920, &qword_22C275D50);
  v10 = sub_22BE179D8(v9);
  v51 = v11;
  v52 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v50 = v15;
  v16 = sub_22C26E5D4();
  v17 = sub_22BE179D8(v16);
  v54 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v23 = v22 - v21;
  v24 = type metadata accessor for ExecutorError();
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v30 = v29 - v28;
  v31 = sub_22BE5CE4C(&qword_27D907928, &qword_22C275D58);
  sub_22BE179D8(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v38 = &v46 - v37;
  v39 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7B524();
  sub_22C274234();
  sub_22BE7AD78(v53, v30);
  if (sub_22BE1AEA8(v30, 1, v16) == 1)
  {
    v56 = 1;
    sub_22BE7B578();
    v40 = v47;
    sub_22BE1B934();
    sub_22C273EE4();
    (*(v48 + 8))(v40, v49);
  }

  else
  {
    (*(v54 + 32))(v23, v30, v16);
    v55 = 0;
    sub_22BE7B5CC();
    v42 = v50;
    sub_22BE1B934();
    sub_22C273EE4();
    sub_22BE17AB4();
    sub_22BE7C024(v43, v44);
    v45 = v52;
    sub_22C273FA4();
    (*(v51 + 8))(v42, v45);
    (*(v54 + 8))(v23, v16);
  }

  return (*(v33 + 8))(v38, v31);
}

unint64_t sub_22BE7B524()
{
  result = qword_27D907930;
  if (!qword_27D907930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907930);
  }

  return result;
}

unint64_t sub_22BE7B578()
{
  result = qword_27D907938;
  if (!qword_27D907938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907938);
  }

  return result;
}

unint64_t sub_22BE7B5CC()
{
  result = qword_27D907940;
  if (!qword_27D907940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907940);
  }

  return result;
}

void ExecutorError.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_22BE5CE4C(&qword_27D907950, &qword_22C275D60);
  v4 = sub_22BE179D8(v3);
  v70 = v5;
  v71 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v73 = v9;
  v69 = sub_22BE5CE4C(&qword_27D907958, &qword_22C275D68);
  sub_22BE179D8(v69);
  v72 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v76 = v14;
  v15 = sub_22BE5CE4C(&qword_27D907960, &unk_22C275D70);
  sub_22BE179D8(v15);
  v75 = v16;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for ExecutorError();
  sub_22BE1BC24(v22);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v66 - v29;
  v31 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7B524();
  v32 = v77;
  sub_22C274214();
  if (v32)
  {
    goto LABEL_9;
  }

  v67 = v30;
  v68 = v22;
  v66 = v28;
  v77 = a1;
  v33 = sub_22C273ED4();
  sub_22BE7BE04(v33, 0);
  v38 = v15;
  if (v36 == v37 >> 1)
  {
LABEL_8:
    v50 = sub_22C273B34();
    swift_allocError();
    v52 = v51;
    v53 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v52 = v68;
    sub_22C273DF4();
    sub_22C273B24();
    v54 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v50);
    (*(v55 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v21, v38);
    a1 = v77;
LABEL_9:
    sub_22BE26B64(a1);
    return;
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
    return;
  }

  v39 = v15;
  v40 = *(v35 + v36);
  v41 = sub_22BE7C544(v36 + 1, v37 >> 1, v34, v35, v36, v37);
  v43 = v42;
  v45 = v44;
  swift_unknownObjectRelease();
  if (v43 != v45 >> 1)
  {
    v38 = v39;
    goto LABEL_8;
  }

  v46 = v39;
  if (v40)
  {
    v79 = 1;
    sub_22BE7B578();
    v47 = v73;
    sub_22BE1B934();
    sub_22C273DE4();
    v49 = v74;
    v48 = v75;
    swift_unknownObjectRelease();
    (*(v70 + 8))(v47, v71);
    (*(v48 + 8))(v21, v46);
    v56 = sub_22C26E5D4();
    v57 = v67;
    sub_22BE19DC4(v67, 1, 1, v56);
  }

  else
  {
    v78 = 0;
    sub_22BE7B5CC();
    sub_22BE1B934();
    sub_22C273DE4();
    v73 = v41;
    v58 = sub_22C26E5D4();
    sub_22BE17AB4();
    sub_22BE7C024(v59, v60);
    v61 = v66;
    sub_22C273EB4();
    swift_unknownObjectRelease();
    v62 = sub_22BE7C5CC();
    v63(v62);
    v64 = sub_22BE22FF8();
    v65(v64);
    sub_22BE19DC4(v61, 0, 1, v58);
    v57 = v67;
    sub_22BE7BE3C(v61, v67);
    v49 = v74;
  }

  sub_22BE7BE3C(v57, v49);
  sub_22BE26B64(v77);
}

unint64_t ExecutorError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_22C26E5D4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = type metadata accessor for ExecutorError();
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v17 = v16 - v15;
  sub_22BE7AD78(v1, v16 - v15);
  sub_22BE18190(v17);
  if (v18)
  {
    return 0xD00000000000001DLL;
  }

  (*(v5 + 32))(v10, v17, v2);
  sub_22C273AA4();

  v19 = sub_22C26E5B4();
  MEMORY[0x2318AB8D0](v19);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  v20 = 0xD000000000000015;
  (*(v5 + 8))(v10, v2);
  return v20;
}

void sub_22BE7BE04(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22BE18810();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22BE7BE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutorError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE7BEA0(void *a1)
{
  a1[1] = sub_22BE7C024(&qword_27D907978, type metadata accessor for ExecutorError);
  a1[2] = sub_22BE7C024(&qword_27D907980, type metadata accessor for ExecutorError);
  a1[3] = sub_22BE7C024(&qword_27D907988, type metadata accessor for ExecutorError);
  result = sub_22BE7C024(&qword_27D907990, type metadata accessor for ExecutorError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE7BF74(uint64_t a1)
{
  result = sub_22BE7C024(&qword_27D907978, type metadata accessor for ExecutorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7BFCC(uint64_t a1)
{
  result = sub_22BE7C024(&qword_27D907998, type metadata accessor for ExecutorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7C024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE7C094()
{
  v0 = sub_22C26E5D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for ExecutorError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ExecutorError.OtherCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE7C288()
{
  result = qword_27D9079A0;
  if (!qword_27D9079A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079A0);
  }

  return result;
}

unint64_t sub_22BE7C2E0()
{
  result = qword_27D9079A8;
  if (!qword_27D9079A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079A8);
  }

  return result;
}

unint64_t sub_22BE7C338()
{
  result = qword_27D9079B0;
  if (!qword_27D9079B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079B0);
  }

  return result;
}

unint64_t sub_22BE7C390()
{
  result = qword_27D9079B8;
  if (!qword_27D9079B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079B8);
  }

  return result;
}

unint64_t sub_22BE7C3E8()
{
  result = qword_27D9079C0;
  if (!qword_27D9079C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079C0);
  }

  return result;
}

unint64_t sub_22BE7C440()
{
  result = qword_27D9079C8;
  if (!qword_27D9079C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079C8);
  }

  return result;
}

unint64_t sub_22BE7C498()
{
  result = qword_27D9079D0;
  if (!qword_27D9079D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079D0);
  }

  return result;
}

unint64_t sub_22BE7C4F0()
{
  result = qword_27D9079D8;
  if (!qword_27D9079D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079D8);
  }

  return result;
}

uint64_t sub_22BE7C544(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_22BE7C5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F5464656C696166 && a2 == 0xEC0000006E616C50;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BE7C6FC(unsigned __int8 a1)
{
  sub_22C274154();
  MEMORY[0x2318AC860](a1);
  return sub_22C2741A4();
}

uint64_t sub_22BE7C744(char a1)
{
  if (!a1)
  {
    return 0x726568746FLL;
  }

  if (a1 == 1)
  {
    return 0x6F5464656C696166;
  }

  return 0x456B726F7774656ELL;
}

uint64_t sub_22BE7C7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7C5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE7C7E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE7C6F4();
  *a1 = result;
  return result;
}

uint64_t sub_22BE7C808(uint64_t a1)
{
  v2 = sub_22BE7D714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C844(uint64_t a1)
{
  v2 = sub_22BE7D714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C880(uint64_t a1)
{
  v2 = sub_22BE7D7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C8BC(uint64_t a1)
{
  v2 = sub_22BE7D7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C8F8(uint64_t a1)
{
  v2 = sub_22BE7D768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C934(uint64_t a1)
{
  v2 = sub_22BE7D768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C970(uint64_t a1)
{
  v2 = sub_22BE7D810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C9AC(uint64_t a1)
{
  v2 = sub_22BE7D810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C9E8(uint64_t a1)
{
  v2 = sub_22BE7E398(&qword_27D907A68, type metadata accessor for PlannerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE7CA54(uint64_t a1)
{
  v2 = sub_22BE7E398(&qword_27D907A68, type metadata accessor for PlannerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

void PlannerError.innerError.getter(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PlannerError();
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22C26E5D4();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v18 = v17 - v16;
  sub_22BE7CD14(v1, v9);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_22BE18420();
    sub_22BE7E398(v23, v24);
    v25 = swift_allocError();
    sub_22BE7CD14(v1, v26);
    v27 = sub_22C26DE74();
    a1[3] = sub_22BE7A3AC();
    a1[4] = sub_22BE7E398(&qword_27D907908, sub_22BE7A3AC);

    *a1 = v27;
  }

  else
  {
    v19 = *(v13 + 32);
    v19(v18, v9, v10);
    a1[3] = v10;
    sub_22BE18C50();
    a1[4] = sub_22BE7E398(v20, v21);
    v22 = sub_22BE62524(a1);
    v19(v22, v18, v10);
  }
}

uint64_t type metadata accessor for PlannerError()
{
  result = qword_28107D3C0;
  if (!qword_28107D3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE7CD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlannerError.errorCodeValue.getter()
{
  v1 = type metadata accessor for PlannerError();
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  sub_22BE7CD14(v0, v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return EnumCaseMultiPayload;
    }

    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  sub_22BE7CE20(v7);
  return v9;
}

uint64_t sub_22BE7CE20(uint64_t a1)
{
  v2 = type metadata accessor for PlannerError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PlannerError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v40 = sub_22C26E5D4();
  v4 = sub_22BE179D8(v40);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for PlannerError();
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v25 = *(*(sub_22BE5CE4C(&qword_27D9079E0, &qword_22C276240) - 8) + 64);
  sub_22BE179FC();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v39 - v28;
  v30 = *(v27 + 56);
  sub_22BE7CD14(a1, &v39 - v28);
  sub_22BE7CD14(a2, &v29[v30]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE7CD14(v29, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v40;
      (*(v6 + 32))(v14, &v29[v30], v40);
      v33 = sub_22C26E5C4();
      v34 = *(v6 + 8);
      v34(v14, v37);
      v35 = v24;
      v36 = v37;
      goto LABEL_12;
    }

    v21 = v24;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22BE7CD14(v29, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v40;
      (*(v6 + 32))(v11, &v29[v30], v40);
      v33 = sub_22C26E5C4();
      v34 = *(v6 + 8);
      v34(v11, v32);
      v35 = v21;
      v36 = v32;
LABEL_12:
      v34(v35, v36);
      sub_22BE7CE20(v29);
      return v33 & 1;
    }

LABEL_7:
    (*(v6 + 8))(v21, v40);
LABEL_10:
    sub_22BE7D178(v29);
    v33 = 0;
    return v33 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_22BE7CE20(v29);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_22BE7D178(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9079E0, &qword_22C276240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerError.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9079E8, &qword_22C276248);
  v3 = sub_22BE179D8(v2);
  v74 = v4;
  v75 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v73 = v8;
  v9 = sub_22BE5CE4C(&qword_27D9079F0, &qword_22C276250);
  v10 = sub_22BE179D8(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v69 = v15;
  v72 = sub_22BE5CE4C(&qword_27D9079F8, &qword_22C276258);
  sub_22BE179D8(v72);
  v68 = v16;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  v22 = sub_22C26E5D4();
  v23 = sub_22BE179D8(v22);
  v76 = v24;
  v77 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = &v68 - v31;
  v33 = type metadata accessor for PlannerError();
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  v39 = v38 - v37;
  v40 = sub_22BE5CE4C(&qword_27D907A00, &qword_22C276260);
  v41 = sub_22BE179D8(v40);
  v79 = v42;
  v80 = v41;
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  v47 = &v68 - v46;
  v48 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7D714();
  sub_22C274234();
  sub_22BE7CD14(v78, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v57 = v68;
    v51 = v76;
    v50 = v77;
    (*(v76 + 32))(v32, v39, v77);
    v82 = 0;
    sub_22BE7D810();
    sub_22BE23BC8();
    sub_22BE18C50();
    sub_22BE7E398(v58, v59);
    v60 = v72;
    sub_22C273FA4();
    (*(v57 + 8))(v21, v60);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v51 = v76;
    v50 = v77;
    (*(v76 + 32))(v29, v39, v77);
    v84 = 2;
    sub_22BE7D768();
    sub_22BE23BC8();
    sub_22BE18C50();
    sub_22BE7E398(v52, v53);
    v54 = v81;
    sub_22C273FA4();
    if (!v54)
    {
      v66 = sub_22BE1A180();
      v67(v66);
      (*(v51 + 8))(v29, v50);
      goto LABEL_7;
    }

    v55 = sub_22BE1A180();
    v56(v55);
    v32 = v29;
LABEL_6:
    (*(v51 + 8))(v32, v50);
LABEL_7:
    sub_22BE1B940();
    return v61(v47, v33);
  }

  v83 = 1;
  sub_22BE7D7BC();
  v63 = v69;
  v64 = v80;
  sub_22C273EE4();
  (*(v70 + 8))(v63, v71);
  sub_22BE1B940();
  return v65(v47, v64);
}

unint64_t sub_22BE7D714()
{
  result = qword_27D907A08;
  if (!qword_27D907A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A08);
  }

  return result;
}

unint64_t sub_22BE7D768()
{
  result = qword_27D907A10;
  if (!qword_27D907A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A10);
  }

  return result;
}

unint64_t sub_22BE7D7BC()
{
  result = qword_27D907A18;
  if (!qword_27D907A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A18);
  }

  return result;
}

unint64_t sub_22BE7D810()
{
  result = qword_27D907A20;
  if (!qword_27D907A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A20);
  }

  return result;
}

uint64_t PlannerError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v98 = sub_22BE5CE4C(&qword_27D907A28, &qword_22C276268);
  sub_22BE179D8(v98);
  v103 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v101 = v7;
  v8 = sub_22BE5CE4C(&qword_27D907A30, &qword_22C276270);
  v9 = sub_22BE179D8(v8);
  v94 = v10;
  v95 = v9;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v99 = v14;
  v15 = sub_22BE5CE4C(&qword_27D907A38, &qword_22C276278);
  v16 = sub_22BE179D8(v15);
  v96 = v17;
  v97 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v100 = v21;
  v22 = sub_22BE5CE4C(&qword_27D907A40, &unk_22C276280);
  v23 = sub_22BE179D8(v22);
  v104 = v24;
  v105 = v23;
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  v30 = type metadata accessor for PlannerError();
  v31 = sub_22BE18000(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE183AC();
  v36 = v34 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v89 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v89 - v41;
  v43 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7D714();
  v44 = v106;
  sub_22C274214();
  if (v44)
  {
    goto LABEL_11;
  }

  v90 = v40;
  v91 = v36;
  v92 = v42;
  v93 = v30;
  v106 = a1;
  v45 = v105;
  v46 = sub_22C273ED4();
  result = sub_22BE7C5C4(v46, 0);
  if (v49 == v50 >> 1)
  {
LABEL_10:
    v63 = sub_22C273B34();
    swift_allocError();
    v65 = v64;
    v66 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v65 = v93;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v67(v29, v45);
    a1 = v106;
LABEL_11:
    v68 = a1;
    return sub_22BE26B64(v68);
  }

  if (v49 < (v50 >> 1))
  {
    v51 = v29;
    v52 = *(v48 + v49);
    sub_22BE7C5C0(v49 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v57 = v103;
    if (v54 == v56 >> 1)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          v108 = 1;
          sub_22BE7D7BC();
          v58 = v99;
          sub_22BE23008();
          v59 = v102;
          swift_unknownObjectRelease();
          (*(v94 + 8))(v58, v95);
          sub_22BE1B940();
          v60 = sub_22BE3AF28();
          v61(v60);
          v62 = v92;
          swift_storeEnumTagMultiPayload();
LABEL_15:
          sub_22BE7E1B0(v62, v59);
          v68 = v106;
          return sub_22BE26B64(v68);
        }

        v109 = 2;
        sub_22BE7D768();
        v73 = v101;
        sub_22BE23008();
        sub_22C26E5D4();
        sub_22BE18C50();
        sub_22BE7E398(v74, v75);
        v76 = v91;
        v77 = v73;
        v78 = v98;
        sub_22C273EB4();
        v79 = v104;
        swift_unknownObjectRelease();
        (*(v57 + 8))(v77, v78);
        v85 = *(v79 + 8);
        v86 = sub_22BE3AF28();
        v87(v86);
        swift_storeEnumTagMultiPayload();
        v88 = v76;
      }

      else
      {
        v107 = 0;
        sub_22BE7D810();
        sub_22BE23008();
        sub_22C26E5D4();
        sub_22BE18C50();
        sub_22BE7E398(v69, v70);
        v71 = v90;
        sub_22C273EB4();
        v72 = v104;
        swift_unknownObjectRelease();
        v80 = sub_22BE382A0();
        v81(v80);
        v82 = *(v72 + 8);
        v83 = sub_22BE3AF28();
        v84(v83);
        swift_storeEnumTagMultiPayload();
        v88 = v71;
      }

      v62 = v92;
      sub_22BE7E1B0(v88, v92);
      v59 = v102;
      goto LABEL_15;
    }

    v29 = v51;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t PlannerError.errorDescription.getter()
{
  v1 = sub_22C26E5D4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = type metadata accessor for PlannerError();
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE7CD14(v0, v15 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0xD000000000000019;
    }

    v17 = sub_22BE3E4C8();
    v18(v17);
    sub_22C273AA4();

    sub_22BE3C7B4();
    v20 = v19 + 7;
  }

  else
  {
    v21 = sub_22BE3E4C8();
    v22(v21);
    sub_22C273AA4();

    sub_22BE3C7B4();
  }

  v26 = v20;
  v23 = sub_22C26E5B4();
  MEMORY[0x2318AB8D0](v23);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  v24 = v26;
  (*(v4 + 8))(v9, v1);
  return v24;
}

uint64_t sub_22BE7E1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE7E214(void *a1)
{
  a1[1] = sub_22BE7E398(&qword_27D907A48, type metadata accessor for PlannerError);
  a1[2] = sub_22BE7E398(&qword_27D907A50, type metadata accessor for PlannerError);
  a1[3] = sub_22BE7E398(&qword_27D907A58, type metadata accessor for PlannerError);
  result = sub_22BE7E398(&qword_27D907A60, type metadata accessor for PlannerError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE7E2E8(uint64_t a1)
{
  result = sub_22BE7E398(&qword_27D907A48, type metadata accessor for PlannerError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7E340(uint64_t a1)
{
  result = sub_22BE7E398(&qword_27D907A68, type metadata accessor for PlannerError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7E398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE7E3E0()
{
  result = sub_22C26E5D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BE7E53C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE7E5EC()
{
  result = qword_27D907A70;
  if (!qword_27D907A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A70);
  }

  return result;
}

unint64_t sub_22BE7E644()
{
  result = qword_27D907A78;
  if (!qword_27D907A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A78);
  }

  return result;
}

unint64_t sub_22BE7E69C()
{
  result = qword_27D907A80;
  if (!qword_27D907A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A80);
  }

  return result;
}

unint64_t sub_22BE7E6F4()
{
  result = qword_27D907A88;
  if (!qword_27D907A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A88);
  }

  return result;
}

unint64_t sub_22BE7E74C()
{
  result = qword_27D907A90;
  if (!qword_27D907A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A90);
  }

  return result;
}

unint64_t sub_22BE7E7A4()
{
  result = qword_27D907A98;
  if (!qword_27D907A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A98);
  }

  return result;
}

unint64_t sub_22BE7E7FC()
{
  result = qword_27D907AA0;
  if (!qword_27D907AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AA0);
  }

  return result;
}

unint64_t sub_22BE7E854()
{
  result = qword_27D907AA8;
  if (!qword_27D907AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AA8);
  }

  return result;
}

unint64_t sub_22BE7E8AC()
{
  result = qword_27D907AB0;
  if (!qword_27D907AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AB0);
  }

  return result;
}

unint64_t sub_22BE7E904()
{
  result = qword_27D907AB8;
  if (!qword_27D907AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AB8);
  }

  return result;
}

unint64_t sub_22BE7E95C()
{
  result = qword_27D907AC0;
  if (!qword_27D907AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AC0);
  }

  return result;
}

uint64_t sub_22BE7E9C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C2D2E80 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x800000022C2D2EA0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BE7EAE0(char a1)
{
  if (!a1)
  {
    return 0x726568746FLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_22BE7EB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7E9C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE7EB68(uint64_t a1)
{
  v2 = sub_22BE7F9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7EBA4(uint64_t a1)
{
  v2 = sub_22BE7F9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7EBE0(uint64_t a1)
{
  v2 = sub_22BE7FA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7EC1C(uint64_t a1)
{
  v2 = sub_22BE7FA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7EC58(uint64_t a1)
{
  v2 = sub_22BE7FA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7EC94(uint64_t a1)
{
  v2 = sub_22BE7FA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7ECD0(uint64_t a1)
{
  v2 = sub_22BE7FAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7ED0C(uint64_t a1)
{
  v2 = sub_22BE7FAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7ED48(uint64_t a1)
{
  v2 = sub_22BE807A0(&qword_27D907B50, type metadata accessor for SessionCoordinatorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE7EDB4(uint64_t a1)
{
  v2 = sub_22BE807A0(&qword_27D907B50, type metadata accessor for SessionCoordinatorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SessionCoordinatorError.innerError.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SessionCoordinatorError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22BE179EC();
  sub_22BE23BE8(v5);
  v6 = sub_22C26E5D4();
  a1[3] = v6;
  sub_22BE18C68();
  a1[4] = sub_22BE807A0(v7, v8);
  v9 = sub_22BE62524(a1);
  return (*(*(v6 - 8) + 32))(v9, v1, v6);
}

uint64_t type metadata accessor for SessionCoordinatorError()
{
  result = qword_281079348;
  if (!qword_281079348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE7EF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionCoordinatorError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionCoordinatorError.errorCodeValue.getter()
{
  v1 = type metadata accessor for SessionCoordinatorError();
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE23BE8(v5);
  v6 = qword_22C276F20[swift_getEnumCaseMultiPayload()];
  sub_22BE7F044(v0);
  return v6;
}

uint64_t sub_22BE7F044(uint64_t a1)
{
  v2 = type metadata accessor for SessionCoordinatorError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SessionCoordinatorError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v50 = sub_22C26E5D4();
  v4 = sub_22BE179D8(v50);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  v49 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for SessionCoordinatorError();
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v48 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v28 = *(*(sub_22BE5CE4C(&qword_27D907AC8, &qword_22C276888) - 8) + 64);
  sub_22BE179FC();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v48 - v31;
  v33 = *(v30 + 56);
  sub_22BE7EF5C(a1, &v48 - v31);
  sub_22BE7EF5C(v51, &v32[v33]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE7EF5C(v32, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE80E1C();
        v35 = v50;
        v36(v2);
        v37 = sub_22C26E5C4();
        v38 = *(v6 + 8);
        v38(v2, v35);
        v39 = v25;
        v40 = v35;
LABEL_9:
        v38(v39, v40);
LABEL_13:
        sub_22BE7F044(v32);
        return v37 & 1;
      }

      v21 = v25;
    }

    else
    {
      sub_22BE7EF5C(v32, v21);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE80E1C();
        v42 = v49;
        v41 = v50;
        v43(v49);
        v37 = sub_22C26E5C4();
        v38 = *(v6 + 8);
        v38(v42, v41);
        v39 = v21;
        v40 = v41;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_22BE7EF5C(v32, v27);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE80E1C();
      v44 = v50;
      v45(v14);
      v37 = sub_22C26E5C4();
      v46 = *(v6 + 8);
      v46(v14, v44);
      v46(v27, v44);
      goto LABEL_13;
    }

    v21 = v27;
  }

  (*(v6 + 8))(v21, v50);
  sub_22BE7F420(v32);
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_22BE7F420(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907AC8, &qword_22C276888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionCoordinatorError.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907AD0, &qword_22C276890);
  v4 = sub_22BE179D8(v3);
  v78 = v5;
  v79 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v77 = v9;
  v10 = sub_22BE5CE4C(&qword_27D907AD8, &qword_22C276898);
  v11 = sub_22BE179D8(v10);
  v75 = v12;
  v76 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v74 = v16;
  v73 = sub_22BE5CE4C(&qword_27D907AE0, &qword_22C2768A0);
  sub_22BE179D8(v73);
  v70 = v17;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v72 = v21;
  v83 = sub_22C26E5D4();
  v22 = sub_22BE179D8(v83);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  v71 = (v27 - v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - v31;
  v33 = type metadata accessor for SessionCoordinatorError();
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  v39 = v38 - v37;
  v40 = sub_22BE5CE4C(&qword_27D907AE8, &qword_22C2768A8);
  v41 = sub_22BE179D8(v40);
  v81 = v42;
  v82 = v41;
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  v47 = &v69 - v46;
  v48 = a1[3];
  sub_22BE1BD3C(a1, v48);
  sub_22BE7F9F0();
  v49 = v24;
  sub_22C274234();
  sub_22BE7EF5C(v80, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = *(v24 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE1B94C();
      v52();
      v85 = 1;
      sub_22BE7FA98();
      v53 = v74;
      sub_22BE3AF34();
      sub_22BE18C68();
      sub_22BE807A0(v54, v55);
      v56 = v76;
      sub_22C273FA4();
      (*(v75 + 8))(v53, v56);
      v32 = v1;
    }

    else
    {
      v32 = v71;
      sub_22BE1B94C();
      v63();
      v86 = 2;
      sub_22BE7FA44();
      v64 = v77;
      sub_22BE3AF34();
      sub_22BE18C68();
      sub_22BE807A0(v65, v66);
      v67 = v79;
      sub_22C273FA4();
      (*(v78 + 8))(v64, v67);
    }
  }

  else
  {
    v57 = v70;
    sub_22BE1B94C();
    v58();
    v84 = 0;
    sub_22BE7FAEC();
    v59 = v72;
    sub_22BE3AF34();
    sub_22BE18C68();
    sub_22BE807A0(v60, v61);
    v62 = v73;
    sub_22C273FA4();
    (*(v57 + 8))(v59, v62);
  }

  (*(v49 + 8))(v32, v48);
  return (*(v81 + 8))(v47, v39);
}

unint64_t sub_22BE7F9F0()
{
  result = qword_27D907AF0;
  if (!qword_27D907AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AF0);
  }

  return result;
}

unint64_t sub_22BE7FA44()
{
  result = qword_27D907AF8;
  if (!qword_27D907AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AF8);
  }

  return result;
}

unint64_t sub_22BE7FA98()
{
  result = qword_27D907B00;
  if (!qword_27D907B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B00);
  }

  return result;
}

unint64_t sub_22BE7FAEC()
{
  result = qword_27D907B08;
  if (!qword_27D907B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B08);
  }

  return result;
}

uint64_t SessionCoordinatorError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v109 = sub_22BE5CE4C(&qword_27D907B10, &qword_22C2768B0);
  sub_22BE179D8(v109);
  v102 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v104 = v7;
  v8 = sub_22BE5CE4C(&qword_27D907B18, &qword_22C2768B8);
  v9 = sub_22BE179D8(v8);
  v100 = v10;
  v101 = v9;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v106 = v14;
  v15 = sub_22BE5CE4C(&qword_27D907B20, &qword_22C2768C0);
  v16 = sub_22BE179D8(v15);
  v98 = v17;
  v99 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v103 = v21;
  v22 = sub_22BE5CE4C(&qword_27D907B28, &qword_22C2768C8);
  v23 = sub_22BE179D8(v22);
  v107 = v24;
  v108 = v23;
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  v28 = type metadata accessor for SessionCoordinatorError();
  v29 = sub_22BE18000(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE183AC();
  v34 = v32 - v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v92 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v92 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v92 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v110 = a1;
  sub_22BE1BD3C(a1, v45);
  sub_22BE7F9F0();
  v46 = v111;
  sub_22C274214();
  if (v46)
  {
    return sub_22BE26B64(v110);
  }

  v94 = v38;
  v95 = v34;
  v96 = v41;
  v97 = v43;
  v47 = v108;
  v111 = v28;
  v48 = sub_22C273ED4();
  result = sub_22BE7C5C4(v48, 0);
  if (v51 == v52 >> 1)
  {
    goto LABEL_8;
  }

  if (v51 >= (v52 >> 1))
  {
    __break(1u);
    return result;
  }

  v53 = *(v50 + v51);
  sub_22BE7C5C0(v51 + 1);
  v55 = v54;
  v57 = v56;
  swift_unknownObjectRelease();
  if (v55 != v57 >> 1)
  {
LABEL_8:
    v63 = sub_22C273B34();
    swift_allocError();
    v65 = v64;
    v66 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v65 = v111;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = sub_22BE1A194();
    v68(v67, v47);
    return sub_22BE26B64(v110);
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v113 = 1;
      sub_22BE7FA98();
      sub_22BE2302C();
      v58 = v97;
      sub_22C26E5D4();
      sub_22BE18C68();
      sub_22BE807A0(v59, v60);
      v61 = v94;
      v62 = v101;
      sub_22C273EB4();
      v93 = 0;
      swift_unknownObjectRelease();
      v77 = sub_22BE1A194();
      v78(v77, v62);
      v79 = sub_22BE1BDC4();
    }

    else
    {
      v114 = 2;
      sub_22BE7FA44();
      sub_22BE2302C();
      v58 = v97;
      sub_22C26E5D4();
      sub_22BE18C68();
      sub_22BE807A0(v74, v75);
      v61 = v95;
      sub_22C273EB4();
      v76 = v107;
      v93 = 0;
      swift_unknownObjectRelease();
      v89 = sub_22BE3C7C8();
      v90(v89);
      v91 = *(v76 + 8);
      v79 = sub_22BE1B18C();
    }

    v80(v79);
    swift_storeEnumTagMultiPayload();
    v88 = v61;
    v87 = v110;
    v69 = v105;
  }

  else
  {
    v112 = 0;
    sub_22BE7FAEC();
    sub_22BE2302C();
    v69 = v105;
    sub_22C26E5D4();
    sub_22BE18C68();
    sub_22BE807A0(v70, v71);
    v72 = v99;
    sub_22C273EB4();
    v73 = v107;
    v93 = 0;
    swift_unknownObjectRelease();
    v81 = sub_22BE1A194();
    v82(v81, v72);
    v83 = *(v73 + 8);
    v84 = sub_22BE1B18C();
    v85(v84);
    v86 = v96;
    swift_storeEnumTagMultiPayload();
    v87 = v110;
    v58 = v97;
    v88 = v86;
  }

  sub_22BE805B8(v88, v58);
  sub_22BE805B8(v58, v69);
  return sub_22BE26B64(v87);
}

unint64_t SessionCoordinatorError.errorDescription.getter()
{
  v1 = sub_22C26E5D4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = type metadata accessor for SessionCoordinatorError();
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v16 = v15 - v14;
  sub_22BE7EF5C(v0, v15 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v4 + 32))(v9, v16, v1);
  if (EnumCaseMultiPayload)
  {
    v22 = 0;
    sub_22C273AA4();
    if (EnumCaseMultiPayload == 1)
    {
      v18 = "ConvertClientEvent: ";
      v19 = 0xD000000000000031;
    }

    else
    {
      v18 = "PlannerError(other: ";
      v19 = 0xD000000000000034;
    }

    MEMORY[0x2318AB8D0](v19, v18 | 0x8000000000000000);
  }

  else
  {
    sub_22C273AA4();

    v22 = 0xD00000000000001FLL;
  }

  v20 = sub_22C26E5B4();
  MEMORY[0x2318AB8D0](v20);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  (*(v4 + 8))(v9, v1);
  return v22;
}

uint64_t sub_22BE805B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionCoordinatorError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE8061C(void *a1)
{
  a1[1] = sub_22BE807A0(&qword_27D907B30, type metadata accessor for SessionCoordinatorError);
  a1[2] = sub_22BE807A0(&qword_27D907B38, type metadata accessor for SessionCoordinatorError);
  a1[3] = sub_22BE807A0(&qword_27D907B40, type metadata accessor for SessionCoordinatorError);
  result = sub_22BE807A0(&qword_27D907B48, type metadata accessor for SessionCoordinatorError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE806F0(uint64_t a1)
{
  result = sub_22BE807A0(&qword_27D907B30, type metadata accessor for SessionCoordinatorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE80748(uint64_t a1)
{
  result = sub_22BE807A0(&qword_27D907B50, type metadata accessor for SessionCoordinatorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE807A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE807E8()
{
  result = sub_22C26E5D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionCoordinatorError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BE80948(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE809F8()
{
  result = qword_27D907B58;
  if (!qword_27D907B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B58);
  }

  return result;
}

unint64_t sub_22BE80A50()
{
  result = qword_27D907B60;
  if (!qword_27D907B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B60);
  }

  return result;
}

unint64_t sub_22BE80AA8()
{
  result = qword_27D907B68;
  if (!qword_27D907B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B68);
  }

  return result;
}

unint64_t sub_22BE80B00()
{
  result = qword_27D907B70;
  if (!qword_27D907B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B70);
  }

  return result;
}

unint64_t sub_22BE80B58()
{
  result = qword_27D907B78;
  if (!qword_27D907B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B78);
  }

  return result;
}

unint64_t sub_22BE80BB0()
{
  result = qword_27D907B80;
  if (!qword_27D907B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B80);
  }

  return result;
}

unint64_t sub_22BE80C08()
{
  result = qword_27D907B88;
  if (!qword_27D907B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B88);
  }

  return result;
}

unint64_t sub_22BE80C60()
{
  result = qword_27D907B90;
  if (!qword_27D907B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B90);
  }

  return result;
}

unint64_t sub_22BE80CB8()
{
  result = qword_27D907B98;
  if (!qword_27D907B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B98);
  }

  return result;
}

unint64_t sub_22BE80D10()
{
  result = qword_27D907BA0;
  if (!qword_27D907BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BA0);
  }

  return result;
}

unint64_t sub_22BE80D68()
{
  result = qword_27D907BA8;
  if (!qword_27D907BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BA8);
  }

  return result;
}

unint64_t sub_22BE80DC0()
{
  result = qword_27D907BB0;
  if (!qword_27D907BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BB0);
  }

  return result;
}

uint64_t sub_22BE80E7C()
{
  v2 = type metadata accessor for ExecutorError();
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22BE7A468(v1, v0, type metadata accessor for ExecutorError);
  v6 = sub_22C26E5D4();
  if (sub_22BE1AEA8(v0, 1, v6) == 1)
  {
    return 2;
  }

  sub_22BE3E4E0();
  sub_22BE81F04(v0, v8);
  return 1;
}

uint64_t sub_22BE80F28()
{
  v2 = type metadata accessor for PlannerError();
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22BE7A468(v1, v0, type metadata accessor for PlannerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return EnumCaseMultiPayload;
    }

    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  sub_22BE81F04(v0, type metadata accessor for PlannerError);
  return v7;
}

uint64_t sub_22BE80FF4()
{
  v1 = type metadata accessor for SessionCoordinatorError();
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  sub_22BE7A468(v0, v6 - v5, type metadata accessor for SessionCoordinatorError);
  v8 = qword_22C277728[swift_getEnumCaseMultiPayload()];
  sub_22BE1B95C();
  sub_22BE81F04(v7, v9);
  return v8;
}

uint64_t sub_22BE810A0()
{
  v1 = type metadata accessor for SessionError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE7A468(v0, v4, type metadata accessor for SessionError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22BE81F04(v4, type metadata accessor for SessionError);
  return EnumCaseMultiPayload + 1;
}

uint64_t sub_22BE81164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C2D2EC0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4572656E6E616C70 && a2 == 0xEC000000726F7272;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F747563657865 && a2 == 0xED0000726F727245)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

unint64_t sub_22BE812D4(char a1)
{
  result = 0x726568746FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x4572656E6E616C70;
      break;
    case 3:
      result = 0x726F747563657865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BE81374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE81164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8139C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE812CC();
  *a1 = result;
  return result;
}

uint64_t sub_22BE813C4(uint64_t a1)
{
  v2 = sub_22BE82678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE81400(uint64_t a1)
{
  v2 = sub_22BE82678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8143C(uint64_t a1)
{
  v2 = sub_22BE826CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE81478(uint64_t a1)
{
  v2 = sub_22BE826CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE814B4(uint64_t a1)
{
  v2 = sub_22BE827C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE814F0(uint64_t a1)
{
  v2 = sub_22BE827C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8152C(uint64_t a1)
{
  v2 = sub_22BE82720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE81568(uint64_t a1)
{
  v2 = sub_22BE82720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE815A4(uint64_t a1)
{
  v2 = sub_22BE82774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE815E0(uint64_t a1)
{
  v2 = sub_22BE82774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8161C(uint64_t a1)
{
  v2 = sub_22BE83444(&qword_27D907C58, type metadata accessor for SessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE81688(uint64_t a1)
{
  v2 = sub_22BE83444(&qword_27D907C58, type metadata accessor for SessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SessionError.innerError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for SessionError();
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22BE18C80();
  sub_22BE7A468(v3, v1, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(a1 + 24) = type metadata accessor for SessionCoordinatorError();
      sub_22BE1A538();
      v26 = sub_22BE83444(v24, v25);
      v19 = sub_22BE22BB8(v26);
      v20 = type metadata accessor for SessionCoordinatorError;
      goto LABEL_6;
    case 2u:
      *(a1 + 24) = type metadata accessor for PlannerError();
      sub_22BE190FC();
      v18 = sub_22BE83444(v16, v17);
      v19 = sub_22BE22BB8(v18);
      v20 = type metadata accessor for PlannerError;
      goto LABEL_6;
    case 3u:
      *(a1 + 24) = type metadata accessor for ExecutorError();
      sub_22BE18438();
      v23 = sub_22BE83444(v21, v22);
      v19 = sub_22BE22BB8(v23);
      v20 = type metadata accessor for ExecutorError;
LABEL_6:
      result = sub_22BE83260(v1, v19, v20);
      break;
    default:
      v10 = sub_22C26E5D4();
      *(a1 + 24) = v10;
      sub_22BE1B2BC();
      v13 = sub_22BE83444(v11, v12);
      v14 = sub_22BE22BB8(v13);
      result = (*(*(v10 - 8) + 32))(v14, v1, v10);
      break;
  }

  return result;
}

uint64_t SessionError.errorCodeValue.getter()
{
  v1 = type metadata accessor for SessionError();
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  sub_22BE18C80();
  sub_22BE7A468(v0, v7, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22BE83C10();
  sub_22BE81F04(v7, v10);
  return EnumCaseMultiPayload + 1;
}

uint64_t static SessionError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v3 = type metadata accessor for ExecutorError();
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v69 = v8 - v7;
  sub_22BE183BC();
  v9 = type metadata accessor for PlannerError();
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v68 = v14 - v13;
  sub_22BE183BC();
  v15 = type metadata accessor for SessionCoordinatorError();
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v67 = v20 - v19;
  sub_22BE183BC();
  v21 = sub_22C26E5D4();
  v22 = sub_22BE179D8(v21);
  v70 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  v28 = v27 - v26;
  v29 = type metadata accessor for SessionError();
  v30 = sub_22BE18000(v29);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v67 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v67 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v67 - v42;
  v44 = sub_22BE5CE4C(&qword_27D907BB8, &qword_22C276F40);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE336DC();
  v49 = *(v48 + 56);
  sub_22BE7A468(v71, v2, type metadata accessor for SessionError);
  sub_22BE7A468(v72, v2 + v49, type metadata accessor for SessionError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE18C80();
      sub_22BE7A468(v2, v41, v59);
      if (sub_22BE19638() == 1)
      {
        v60 = v67;
        sub_22BE83260(v2 + v49, v67, type metadata accessor for SessionCoordinatorError);
        v53 = static SessionCoordinatorError.== infix(_:_:)(v41, v60);
        v58 = type metadata accessor for SessionCoordinatorError;
        sub_22BE81F04(v60, type metadata accessor for SessionCoordinatorError);
        v54 = v41;
        goto LABEL_10;
      }

      sub_22BE1B95C();
      v63 = v41;
      goto LABEL_16;
    case 2u:
      sub_22BE18C80();
      sub_22BE7A468(v2, v38, v51);
      if (sub_22BE19638() == 2)
      {
        v52 = v68;
        sub_22BE83260(v2 + v49, v68, type metadata accessor for PlannerError);
        v53 = static PlannerError.== infix(_:_:)(v38, v52);
        sub_22BE81F04(v52, type metadata accessor for PlannerError);
        v54 = v38;
        v55 = type metadata accessor for PlannerError;
        goto LABEL_11;
      }

      v62 = type metadata accessor for PlannerError;
      v63 = v38;
      goto LABEL_16;
    case 3u:
      sub_22BE18C80();
      sub_22BE7A468(v2, v35, v56);
      if (sub_22BE19638() == 3)
      {
        v57 = v69;
        sub_22BE83260(v2 + v49, v69, type metadata accessor for ExecutorError);
        v53 = static ExecutorError.== infix(_:_:)(v35, v57);
        v58 = type metadata accessor for ExecutorError;
        sub_22BE81F04(v57, type metadata accessor for ExecutorError);
        v54 = v35;
LABEL_10:
        v55 = v58;
LABEL_11:
        sub_22BE81F04(v54, v55);
        goto LABEL_12;
      }

      sub_22BE3E4E0();
      v63 = v35;
LABEL_16:
      sub_22BE81F04(v63, v62);
      goto LABEL_17;
    default:
      sub_22BE18C80();
      sub_22BE7A468(v2, v43, v50);
      if (sub_22BE19638())
      {
        (*(v70 + 8))(v43, v21);
LABEL_17:
        sub_22BE81E9C(v2);
        v53 = 0;
      }

      else
      {
        v65 = v70;
        (*(v70 + 32))(v28, v2 + v49, v21);
        v53 = sub_22C26E5C4();
        v66 = *(v65 + 8);
        v66(v28, v21);
        v66(v43, v21);
LABEL_12:
        sub_22BE83C10();
        sub_22BE81F04(v2, v61);
      }

      return v53 & 1;
  }
}

uint64_t sub_22BE81E9C(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907BB8, &qword_22C276F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE81F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SessionError.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907BC0, &qword_22C276F48);
  v3 = sub_22BE179D8(v2);
  v106 = v4;
  v107 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v105 = v8;
  sub_22BE183BC();
  v103 = type metadata accessor for ExecutorError();
  v9 = sub_22BE18000(v103);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v104 = v13 - v12;
  v14 = sub_22BE5CE4C(&qword_27D907BC8, &qword_22C276F50);
  v15 = sub_22BE179D8(v14);
  v101 = v16;
  v102 = v15;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v100 = v20;
  sub_22BE183BC();
  v98 = type metadata accessor for PlannerError();
  v21 = sub_22BE18000(v98);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  v99 = v25 - v24;
  v26 = sub_22BE5CE4C(&qword_27D907BD0, &qword_22C276F58);
  v27 = sub_22BE179D8(v26);
  v96 = v28;
  v97 = v27;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v95 = v32;
  sub_22BE183BC();
  v93 = type metadata accessor for SessionCoordinatorError();
  v33 = sub_22BE18000(v93);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE179EC();
  v94 = v37 - v36;
  v38 = sub_22BE5CE4C(&qword_27D907BD8, &qword_22C276F60);
  v39 = sub_22BE179D8(v38);
  v91 = v40;
  v92 = v39;
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1AB08();
  v44 = sub_22C26E5D4();
  v45 = sub_22BE179D8(v44);
  v90 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE179EC();
  v51 = v50 - v49;
  v52 = type metadata accessor for SessionError();
  v53 = sub_22BE18000(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE179EC();
  v58 = v57 - v56;
  v59 = sub_22BE5CE4C(&qword_27D907BE0, &qword_22C276F68);
  v60 = sub_22BE179D8(v59);
  v109 = v61;
  v110 = v60;
  v63 = *(v62 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  v66 = &v89 - v65;
  v67 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE82678();
  sub_22C274234();
  sub_22BE18C80();
  sub_22BE7A468(v108, v58, v68);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v74 = v94;
      sub_22BE83260(v58, v94, type metadata accessor for SessionCoordinatorError);
      v112 = 1;
      sub_22BE82774();
      sub_22BE3AF54();
      sub_22BE1A538();
      sub_22BE83444(v84, v85);
      sub_22BE25A38();
      v86 = sub_22BE3C7DC();
      v87(v86);
      v79 = type metadata accessor for SessionCoordinatorError;
      goto LABEL_6;
    case 2u:
      v74 = v99;
      sub_22BE83260(v58, v99, type metadata accessor for PlannerError);
      v113 = 2;
      sub_22BE82720();
      sub_22BE3AF54();
      sub_22BE190FC();
      sub_22BE83444(v75, v76);
      sub_22BE25A38();
      v77 = sub_22BE3C7DC();
      v78(v77);
      v79 = type metadata accessor for PlannerError;
      goto LABEL_6;
    case 3u:
      v74 = v104;
      sub_22BE83260(v58, v104, type metadata accessor for ExecutorError);
      v114 = 3;
      sub_22BE826CC();
      sub_22BE3AF54();
      sub_22BE18438();
      sub_22BE83444(v80, v81);
      sub_22BE25A38();
      v82 = sub_22BE3C7DC();
      v83(v82);
      v79 = type metadata accessor for ExecutorError;
LABEL_6:
      sub_22BE81F04(v74, v79);
      break;
    default:
      v69 = v90;
      (*(v90 + 32))(v51, v58, v44);
      v111 = 0;
      sub_22BE827C8();
      sub_22BE3AF54();
      sub_22BE1B2BC();
      sub_22BE83444(v70, v71);
      sub_22BE25A38();
      v72 = sub_22BE3C7DC();
      v73(v72);
      (*(v69 + 8))(v51, v44);
      break;
  }

  return (*(v109 + 8))(v66, v52);
}

unint64_t sub_22BE82678()
{
  result = qword_27D907BE8;
  if (!qword_27D907BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BE8);
  }

  return result;
}

unint64_t sub_22BE826CC()
{
  result = qword_27D907BF0;
  if (!qword_27D907BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BF0);
  }

  return result;
}

unint64_t sub_22BE82720()
{
  result = qword_27D907BF8;
  if (!qword_27D907BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BF8);
  }

  return result;
}

unint64_t sub_22BE82774()
{
  result = qword_27D907C00;
  if (!qword_27D907C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C00);
  }

  return result;
}

unint64_t sub_22BE827C8()
{
  result = qword_27D907C08;
  if (!qword_27D907C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C08);
  }

  return result;
}

uint64_t SessionError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_22BE5CE4C(&qword_27D907C10, &qword_22C276F70);
  v4 = sub_22BE179D8(v3);
  v124 = v5;
  v125 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v130 = v9;
  v10 = sub_22BE5CE4C(&qword_27D907C18, &qword_22C276F78);
  v11 = sub_22BE179D8(v10);
  v122 = v12;
  v123 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v129 = v16;
  v17 = sub_22BE5CE4C(&qword_27D907C20, &qword_22C276F80);
  v18 = sub_22BE179D8(v17);
  v120 = v19;
  v121 = v18;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v128 = v23;
  v24 = sub_22BE5CE4C(&qword_27D907C28, &qword_22C276F88);
  v25 = sub_22BE179D8(v24);
  v118 = v26;
  v119 = v25;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  v127 = v30;
  v133 = sub_22BE5CE4C(&qword_27D907C30, &unk_22C276F90);
  sub_22BE179D8(v133);
  v131 = v31;
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1AB08();
  v132 = type metadata accessor for SessionError();
  v35 = sub_22BE18000(v132);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v113 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v113 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v113 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v113 - v50;
  v53 = a1[3];
  v52 = a1[4];
  v134 = a1;
  sub_22BE1BD3C(a1, v53);
  sub_22BE82678();
  v54 = v135;
  sub_22C274214();
  if (v54)
  {
LABEL_9:
    v75 = v134;
    return sub_22BE26B64(v75);
  }

  v115 = v46;
  v113 = v43;
  v116 = v49;
  v114 = v40;
  v135 = v51;
  v55 = v132;
  v56 = sub_22C273ED4();
  result = sub_22BE7C5C4(v56, 0);
  if (v59 == v60 >> 1)
  {
    goto LABEL_7;
  }

  v117 = 0;
  if (v59 >= (v60 >> 1))
  {
    __break(1u);
    return result;
  }

  v61 = *(v58 + v59);
  sub_22BE7C5C0(v59 + 1);
  v63 = v62;
  v65 = v64;
  swift_unknownObjectRelease();
  v66 = v135;
  if (v63 != v65 >> 1)
  {
LABEL_7:
    v69 = sub_22C273B34();
    swift_allocError();
    v71 = v70;
    v72 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v71 = v55;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D84160], v69);
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_8:
    v73 = sub_22BE1C25C();
    v74(v73);
    goto LABEL_9;
  }

  switch(v61)
  {
    case 1:
      v137 = 1;
      sub_22BE82774();
      sub_22BE2304C();
      type metadata accessor for SessionCoordinatorError();
      v117 = 0;
      sub_22BE1A538();
      sub_22BE83444(v88, v89);
      v90 = v117;
      sub_22C273EB4();
      if (v90)
      {
        swift_unknownObjectRelease();
        v91 = sub_22BE23C08();
        v92(v91);
        goto LABEL_8;
      }

      v117 = 0;
      swift_unknownObjectRelease();
      v108 = sub_22BE23C08();
      v109(v108);
      v110 = sub_22BE1C25C();
      v111(v110);
      v112 = v115;
      swift_storeEnumTagMultiPayload();
      v107 = v112;
      goto LABEL_21;
    case 2:
      v138 = 2;
      sub_22BE82720();
      sub_22BE2304C();
      type metadata accessor for PlannerError();
      v117 = 0;
      sub_22BE190FC();
      sub_22BE83444(v76, v77);
      v78 = v113;
      v79 = v117;
      sub_22C273EB4();
      sub_22BE19E44();
      if (v79)
      {
        swift_unknownObjectRelease();
        v80 = sub_22BE2B784();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v93 = sub_22BE2B784();
      v94(v93);
      v95 = sub_22BE382B4();
      v96(v95);
      swift_storeEnumTagMultiPayload();
      v107 = v78;
      goto LABEL_21;
    case 3:
      v139 = 3;
      sub_22BE826CC();
      sub_22BE2304C();
      type metadata accessor for ExecutorError();
      v117 = 0;
      sub_22BE18438();
      sub_22BE83444(v82, v83);
      v84 = v114;
      v85 = v117;
      sub_22C273EB4();
      sub_22BE19E44();
      if (v85)
      {
        swift_unknownObjectRelease();
        v80 = sub_22BE23C08();
LABEL_15:
        v81(v80);
        v86 = sub_22BE382B4();
        v87(v86);
        v75 = v134;
        return sub_22BE26B64(v75);
      }

      swift_unknownObjectRelease();
      v97 = sub_22BE23C08();
      v98(v97);
      v99 = sub_22BE382B4();
      v100(v99);
      swift_storeEnumTagMultiPayload();
      v107 = v84;
LABEL_21:
      v106 = v134;
LABEL_22:
      sub_22BE83260(v107, v66, type metadata accessor for SessionError);
      sub_22BE83260(v66, v126, type metadata accessor for SessionError);
      result = sub_22BE26B64(v106);
      break;
    default:
      v136 = 0;
      sub_22BE827C8();
      sub_22BE2304C();
      sub_22C26E5D4();
      sub_22BE1B2BC();
      sub_22BE83444(v67, v68);
      sub_22C273EB4();
      sub_22BE19E44();
      swift_unknownObjectRelease();
      v101 = sub_22BE2B784();
      v102(v101);
      v103 = sub_22BE382B4();
      v104(v103);
      v105 = v116;
      swift_storeEnumTagMultiPayload();
      v106 = v134;
      v107 = v105;
      goto LABEL_22;
  }

  return result;
}

uint64_t SessionError.errorDescription.getter()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_22C273AA4();

  strcpy(v5, "SessionError(");
  HIWORD(v5[1]) = -4864;
  SessionError.innerError.getter(v4);
  v0 = v4[4];
  sub_22BE1BD3C(v4, v4[3]);
  v1 = *(*(v0 + 8) + 8);
  v2 = sub_22C2740E4();
  MEMORY[0x2318AB8D0](v2);

  sub_22BE26B64(v4);
  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t sub_22BE83260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE832C0(void *a1)
{
  a1[1] = sub_22BE83444(&qword_27D907C38, type metadata accessor for SessionError);
  a1[2] = sub_22BE83444(&qword_27D907C40, type metadata accessor for SessionError);
  a1[3] = sub_22BE83444(&qword_27D907C48, type metadata accessor for SessionError);
  result = sub_22BE83444(&qword_27D907C50, type metadata accessor for SessionError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE83394(uint64_t a1)
{
  result = sub_22BE83444(&qword_27D907C38, type metadata accessor for SessionError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE833EC(uint64_t a1)
{
  result = sub_22BE83444(&qword_27D907C58, type metadata accessor for SessionError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE83444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE8348C()
{
  result = sub_22C26E5D4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionCoordinatorError();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PlannerError();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ExecutorError();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BE83634(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE836E4()
{
  result = qword_27D907C60;
  if (!qword_27D907C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C60);
  }

  return result;
}

unint64_t sub_22BE8373C()
{
  result = qword_27D907C68;
  if (!qword_27D907C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C68);
  }

  return result;
}

unint64_t sub_22BE83794()
{
  result = qword_27D907C70;
  if (!qword_27D907C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C70);
  }

  return result;
}

unint64_t sub_22BE837EC()
{
  result = qword_27D907C78;
  if (!qword_27D907C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C78);
  }

  return result;
}

unint64_t sub_22BE83844()
{
  result = qword_27D907C80;
  if (!qword_27D907C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C80);
  }

  return result;
}

unint64_t sub_22BE8389C()
{
  result = qword_27D907C88;
  if (!qword_27D907C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C88);
  }

  return result;
}

unint64_t sub_22BE838F4()
{
  result = qword_27D907C90;
  if (!qword_27D907C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C90);
  }

  return result;
}

unint64_t sub_22BE8394C()
{
  result = qword_27D907C98;
  if (!qword_27D907C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C98);
  }

  return result;
}

unint64_t sub_22BE839A4()
{
  result = qword_27D907CA0;
  if (!qword_27D907CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CA0);
  }

  return result;
}

unint64_t sub_22BE839FC()
{
  result = qword_27D907CA8;
  if (!qword_27D907CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CA8);
  }

  return result;
}

unint64_t sub_22BE83A54()
{
  result = qword_27D907CB0;
  if (!qword_27D907CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CB0);
  }

  return result;
}

unint64_t sub_22BE83AAC()
{
  result = qword_27D907CB8;
  if (!qword_27D907CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CB8);
  }

  return result;
}

unint64_t sub_22BE83B04()
{
  result = qword_27D907CC0;
  if (!qword_27D907CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CC0);
  }

  return result;
}

unint64_t sub_22BE83B5C()
{
  result = qword_27D907CC8;
  if (!qword_27D907CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CC8);
  }

  return result;
}

unint64_t sub_22BE83BB4()
{
  result = qword_27D907CD0;
  if (!qword_27D907CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CD0);
  }

  return result;
}

uint64_t ContextRetrievalServiceInput.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

IntelligenceFlowPlannerSupport::ContextRetrievalServiceInput __swiftcall ContextRetrievalServiceInput.init(query:timeout:)(Swift::String query, Swift::Double timeout)
{
  *v2 = query;
  *(v2 + 16) = timeout;
  result.query = query;
  result.timeout = timeout;
  return result;
}

uint64_t sub_22BE83C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BE83D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE83C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE83D58(uint64_t a1)
{
  v2 = sub_22BE3A7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE83D94(uint64_t a1)
{
  v2 = sub_22BE3A7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalServiceInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D907CE0, &qword_22C277768);
  sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE3A7D4();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  v10 = sub_22C273E64();
  v12 = v11;
  sub_22C273E84();
  v14 = v13;
  v15 = sub_22BE17ACC();
  v16(v15);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;

  sub_22BE26B64(a1);
}

uint64_t ContextRetrievalServiceOutput.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C271914();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextRetrievalServiceOutput.init(response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C271914();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22BE8407C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE84110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8407C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8413C(uint64_t a1)
{
  v2 = sub_22BE84308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE84178(uint64_t a1)
{
  v2 = sub_22BE84308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalServiceOutput.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907CE8, &qword_22C277770);
  sub_22BE179D8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE84308();
  sub_22C274234();
  sub_22C271914();
  sub_22BE845F8(&qword_28107F190);
  sub_22C273FA4();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_22BE84308()
{
  result = qword_2810764F8[0];
  if (!qword_2810764F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810764F8);
  }

  return result;
}

uint64_t ContextRetrievalServiceOutput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_22C271914();
  v4 = sub_22BE179D8(v3);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D907CF0, &qword_22C277778);
  sub_22BE179D8(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for ContextRetrievalServiceOutput();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE84308();
  v22 = v29;
  sub_22C274214();
  if (!v22)
  {
    v23 = v27;
    sub_22BE845F8(&qword_27D907CF8);
    sub_22C273EB4();
    (*(v11 + 8))(v16, v9);
    (*(v23 + 32))(v20, v28, v3);
    sub_22BE8463C(v20, v26);
  }

  return sub_22BE26B64(a1);
}

uint64_t type metadata accessor for ContextRetrievalServiceOutput()
{
  result = qword_2810764B0;
  if (!qword_2810764B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE845F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C271914();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE8463C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextRetrievalServiceOutput();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE846D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22BE84748()
{
  result = sub_22C271914();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalServiceOutput.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE84874()
{
  result = qword_27D907D00;
  if (!qword_27D907D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D00);
  }

  return result;
}

unint64_t sub_22BE848CC()
{
  result = qword_27D907D08;
  if (!qword_27D907D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D08);
  }

  return result;
}

unint64_t sub_22BE84924()
{
  result = qword_2810764E8;
  if (!qword_2810764E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810764E8);
  }

  return result;
}

unint64_t sub_22BE8497C()
{
  result = qword_2810764F0;
  if (!qword_2810764F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810764F0);
  }

  return result;
}

unint64_t sub_22BE849D4()
{
  result = qword_281076FF8;
  if (!qword_281076FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281076FF8);
  }

  return result;
}

unint64_t sub_22BE84A2C()
{
  result = qword_281077000;
  if (!qword_281077000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281077000);
  }

  return result;
}

uint64_t ContextRetrievalInput.contextType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270A04();
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ContextRetrievalInput.sourceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContextRetrievalInput() + 20);

  return sub_22BE84B24(v3, a1);
}

uint64_t sub_22BE84B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContextRetrievalInput.init(contextType:sourceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C270A04();
  sub_22BE18000(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for ContextRetrievalInput() + 20);

  return sub_22BE490B8(a2, v8);
}

uint64_t sub_22BE84C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54747865746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BE84CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE84C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE84D18(uint64_t a1)
{
  v2 = sub_22BE44FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE84D54(uint64_t a1)
{
  v2 = sub_22BE44FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = *(*(sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0) - 8) + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v43 = sub_22C270A04();
  v8 = sub_22BE179D8(v43);
  v39 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BE5CE4C(&qword_27D907D20, &qword_22C277AC0);
  v41 = sub_22BE179D8(v13);
  v42 = v14;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = type metadata accessor for ContextRetrievalInput();
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE44FE4();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  v36 = v18;
  v37 = v23;
  v25 = v39;
  v45 = 0;
  sub_22BE17ADC();
  sub_22BE45038(v26, v27);
  v28 = v40;
  v29 = v43;
  sub_22C273EB4();
  (*(v25 + 32))(v37, v28, v29);
  sub_22C270994();
  v44 = 1;
  sub_22BE1BDD8();
  sub_22BE45038(v30, v31);
  sub_22C273E44();
  v32 = sub_22BE18824();
  v33(v32);
  v34 = v37;
  sub_22BE490B8(v7, &v37[*(v36 + 20)]);
  sub_22BE85108(v34, v38);
  sub_22BE26B64(a1);
  return sub_22BE8516C(v34);
}

uint64_t sub_22BE85108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextRetrievalInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE8516C(uint64_t a1)
{
  v2 = type metadata accessor for ContextRetrievalInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE851F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x56747865746E6F63 && a2 == 0xED00007365756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE85298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE851F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE852C4(uint64_t a1)
{
  v2 = sub_22BE854D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE85300(uint64_t a1)
{
  v2 = sub_22BE854D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalOutput.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907D38, &qword_22C277AC8);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE854D0();

  sub_22C274234();
  v14[1] = v11;
  sub_22BE5CE4C(&qword_27D907D40, &qword_22C277AD0);
  sub_22BE856CC(&qword_28106DDC0, &qword_28107F1B0);
  sub_22BE1A550();
  sub_22C273FA4();

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_22BE854D0()
{
  result = qword_281079E30[0];
  if (!qword_281079E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281079E30);
  }

  return result;
}

uint64_t ContextRetrievalOutput.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D907D48, &qword_22C277AD8);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE854D0();
  sub_22C274214();
  if (!v2)
  {
    sub_22BE5CE4C(&qword_27D907D40, &qword_22C277AD0);
    sub_22BE856CC(&qword_27D907D50, &qword_27D907D58);
    sub_22C273EB4();
    (*(v7 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return sub_22BE26B64(a1);
}

uint64_t sub_22BE856CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D907D40, &qword_22C277AD0);
    sub_22BE45038(a2, MEMORY[0x277D1ECB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE857CC(uint64_t *a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BE8580C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalOutput.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE85918()
{
  result = qword_27D907D60;
  if (!qword_27D907D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D60);
  }

  return result;
}

unint64_t sub_22BE85970()
{
  result = qword_27D907D68;
  if (!qword_27D907D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D68);
  }

  return result;
}

unint64_t sub_22BE859C8()
{
  result = qword_281079E20;
  if (!qword_281079E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079E20);
  }

  return result;
}

unint64_t sub_22BE85A20()
{
  result = qword_281079E28;
  if (!qword_281079E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079E28);
  }

  return result;
}

unint64_t sub_22BE85A78()
{
  result = qword_28107A778;
  if (!qword_28107A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107A778);
  }

  return result;
}

unint64_t sub_22BE85AD0()
{
  result = qword_28107A780;
  if (!qword_28107A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107A780);
  }

  return result;
}

uint64_t static FeatureStoreWrapper.runReplayableOperation<A, B>(interactionId:input:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C26E2E4();
  v17 = *(MEMORY[0x277D08420] + 4);
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  *v18 = v12;
  v18[1] = sub_22BE85C2C;

  return MEMORY[0x28215E6E8](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_22BE85C2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

_BYTE *storeEnumTagSinglePayload for FeatureStoreWrapper(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BE85DDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C626169726176 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE85E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE85DDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE85EA8(uint64_t a1)
{
  v2 = sub_22BE86088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE85EE4(uint64_t a1)
{
  v2 = sub_22BE86088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertVariablesRequest.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907D70, &qword_22C277E50);
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE86088();

  sub_22C274234();
  v14[1] = v11;
  sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
  sub_22BE860DC();
  sub_22C273FA4();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_22BE86088()
{
  result = qword_27D907D78;
  if (!qword_27D907D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D78);
  }

  return result;
}

unint64_t sub_22BE860DC()
{
  result = qword_27D907D88;
  if (!qword_27D907D88)
  {
    sub_22BE7431C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE863A0(&qword_27D907D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D88);
  }

  return result;
}

uint64_t InsertVariablesRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D907D98, &qword_22C277E60);
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE86088();
  sub_22C274214();
  if (!v2)
  {
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE862F8();
    sub_22C273EB4();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return sub_22BE26B64(a1);
}

unint64_t sub_22BE862F8()
{
  result = qword_27D907DA0;
  if (!qword_27D907DA0)
  {
    sub_22BE7431C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE863A0(&qword_27D907DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DA0);
  }

  return result;
}

uint64_t sub_22BE863A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C272874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE86418(uint64_t a1)
{
  v2 = sub_22BE86598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE86454(uint64_t a1)
{
  v2 = sub_22BE86598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertVariablesResult.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907DB0, &qword_22C277E68);
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE86598();
  sub_22C274234();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_22BE86598()
{
  result = qword_27D907DB8;
  if (!qword_27D907DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DB8);
  }

  return result;
}

_BYTE *sub_22BE86674(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE86724()
{
  result = qword_27D907DC0;
  if (!qword_27D907DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DC0);
  }

  return result;
}

unint64_t sub_22BE8677C()
{
  result = qword_27D907DC8;
  if (!qword_27D907DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DC8);
  }

  return result;
}

unint64_t sub_22BE867D4()
{
  result = qword_27D907DD0;
  if (!qword_27D907DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DD0);
  }

  return result;
}

unint64_t sub_22BE8682C()
{
  result = qword_27D907DD8;
  if (!qword_27D907DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DD8);
  }

  return result;
}

unint64_t sub_22BE86884()
{
  result = qword_27D907DE0;
  if (!qword_27D907DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DE0);
  }

  return result;
}

uint64_t Session.InstrumentableEvent.description.getter()
{
  v1 = (v0 + *(type metadata accessor for Session.InstrumentableEvent() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22BE86940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_22BE19114() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000022C2D2F00 == a2;
    if (v6 || (sub_22BE19114() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BE19114();

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

uint64_t sub_22BE86A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE86940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE86A68(uint64_t a1)
{
  v2 = sub_22BE280C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE86AA4(uint64_t a1)
{
  v2 = sub_22BE280C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.InstrumentableEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Session.Event(0);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v32 = v9 - v8;
  v33 = sub_22BE5CE4C(&qword_27D907DE8, &qword_22C278130);
  v10 = sub_22BE179D8(v33);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = type metadata accessor for Session.InstrumentableEvent();
  v14 = sub_22BE18000(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE280C0();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  v30 = v13;
  sub_22BE17AF4();
  sub_22BE286A8(v21, v22);
  sub_22C273EB4();
  sub_22BE3F9A8(v32, v19);
  v23 = sub_22C273E64();
  v25 = v24;
  v26 = sub_22BE18450();
  v27(v26);
  v28 = (v19 + *(v30 + 20));
  *v28 = v23;
  v28[1] = v25;
  sub_22BE3B980(v19, a2, type metadata accessor for Session.InstrumentableEvent);
  sub_22BE26B64(a1);
  return sub_22BE1AD50(v19, type metadata accessor for Session.InstrumentableEvent);
}

uint64_t sub_22BE86DEC()
{
  result = type metadata accessor for Session.Event(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22BE86E74()
{
  result = qword_27D907E00;
  if (!qword_27D907E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E00);
  }

  return result;
}