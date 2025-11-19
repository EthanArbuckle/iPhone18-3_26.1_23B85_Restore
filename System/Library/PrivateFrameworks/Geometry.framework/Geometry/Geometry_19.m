uint64_t sub_250097DC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_250097E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_250097EE8()
{
  swift_getWitnessTable();

  return sub_2500BFAC8();
}

uint64_t sub_250097F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_250097FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BoundedArray6.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_250098008(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_250098090(v6, *a2, a3);
  return sub_25009B85C;
}

uint64_t (*sub_250098090(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  BoundedArray6.subscript.getter(a2, a3, v9);
  return sub_25009B860;
}

uint64_t sub_250098160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_250095564(a1, a2, WitnessTable, a3);
}

uint64_t sub_2500981C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_250098238(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2500982EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t BoundedArray9.count.setter(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 60);
  v4 = *(v2 + v3);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 <= 9)
  {
    *(v2 + v3) = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BoundedArray9.init(initialValue:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BoundedArray9();
  *(a4 + v8[15]) = 0;
  v9 = *(a3 - 8);
  v10 = *(v9 + 16);
  v10(a4, a1, a3);
  v10(a4 + v8[7], a1, a3);
  v10(a4 + v8[8], a1, a3);
  v10(a4 + v8[9], a1, a3);
  v10(a4 + v8[10], a1, a3);
  v10(a4 + v8[11], a1, a3);
  v10(a4 + v8[12], a1, a3);
  v10(a4 + v8[13], a1, a3);
  result = (*(v9 + 32))(a4 + v8[14], a1, a3);
  v12 = v8[15];
  v13 = *(a4 + v12);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 <= 9)
  {
    *(a4 + v12) = a2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *(*BoundedArray9.count.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = *(v2 + *(a2 + 60));
  return sub_2500985AC;
}

uint64_t *sub_2500985AC(uint64_t *result, char a2)
{
  v2 = result[2];
  v3 = *result;
  v4 = *(result[1] + 60);
  v5 = *(v2 + v4);
  if (a2)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v5 <= 9)
    {
LABEL_7:
      *(v2 + v4) = v3;
      return result;
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= 9)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t BoundedArray9.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (*(v3 + *(a2 + 60)) > result)
  {
    if (result <= 3)
    {
      if (result > 1)
      {
        if (result == 2)
        {
          v4 = *(a2 + 32);
        }

        else
        {
          v4 = *(a2 + 36);
        }

        return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v4);
      }

      if (result == 1)
      {
        v4 = *(a2 + 28);
        return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v4);
      }
    }

    else
    {
      if (result <= 5)
      {
        if (result == 4)
        {
          v4 = *(a2 + 40);
        }

        else
        {
          v4 = *(a2 + 44);
        }

        return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v4);
      }

      switch(result)
      {
        case 6:
          v4 = *(a2 + 48);
          return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v4);
        case 7:
          v4 = *(a2 + 52);
          return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v4);
        case 8:
          v4 = *(a2 + 56);
          return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v4);
      }
    }

    return (*(*(*(a2 + 16) - 8) + 16))(a3, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_250098720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t), uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v17 - v10;
  v13 = *v12;
  (*(v14 + 16))(&v17 - v10);
  v15 = a5(0, v8);
  return a6(v11, v13, v15);
}

uint64_t BoundedArray9.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*(v3 + *(a3 + 60)) <= a2)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = *(a3 + 32);
      }

      else
      {
        v4 = *(a3 + 36);
      }

      return (*(*(*(a3 + 16) - 8) + 40))(v3 + v4, result);
    }

    if (!a2)
    {
      return (*(*(*(a3 + 16) - 8) + 40))(v3, result);
    }

    if (a2 == 1)
    {
      v4 = *(a3 + 28);
      return (*(*(*(a3 + 16) - 8) + 40))(v3 + v4, result);
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v4 = *(a3 + 40);
      }

      else
      {
        v4 = *(a3 + 44);
      }

      return (*(*(*(a3 + 16) - 8) + 40))(v3 + v4, result);
    }

    switch(a2)
    {
      case 6:
        v4 = *(a3 + 48);
        return (*(*(*(a3 + 16) - 8) + 40))(v3 + v4, result);
      case 7:
        v4 = *(a3 + 52);
        return (*(*(*(a3 + 16) - 8) + 40))(v3 + v4, result);
      case 8:
        v4 = *(a3 + 56);
        return (*(*(*(a3 + 16) - 8) + 40))(v3 + v4, result);
    }
  }

  return (*(*(*(a3 + 16) - 8) + 8))(result);
}

void (*BoundedArray9.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  BoundedArray9.subscript.getter(a2, a3, v13);
  return sub_250098A84;
}

void sub_250098A9C(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v4[3];
    v8 = v4[4];
    v10 = v4[1];
    v9 = v4[2];
    v11 = *v4;
    (*(v8 + 16))((*a1)[5], v6, v7);
    a3(v5, v11, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v12 = v4[2];
    a3((*a1)[6], *v4, v4[1]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_250098C14()
{
  result = qword_27F3BA2C8;
  if (!qword_27F3BA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA2C8);
  }

  return result;
}

uint64_t sub_250098E40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA2C0, &qword_2500D25E8);
    sub_250098C14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_25009945C(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = BoundedArray9.subscript.modify(v6, *a2, a3);
  return sub_25009B858;
}

uint64_t sub_2500994FC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_25009B704(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_2500BFC38();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t (*sub_250099590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_250094CBC(v8, a2, a3, a4);
  return sub_25009B858;
}

void sub_250099620(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_250099768(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_250099804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_250099888()
{
  swift_getWitnessTable();

  return sub_2500BFAC8();
}

uint64_t sub_25009990C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25009999C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BoundedArray9.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_2500999C4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_250099A94(v6, *a2, a3);
  return sub_25009B85C;
}

void sub_250099A4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_250099A94(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  BoundedArray9.subscript.getter(a2, a3, v9);
  return sub_25009B860;
}

void sub_250099B64(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_250099BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_250095564(a1, a2, WitnessTable, a3);
}

uint64_t sub_250099C18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_250099C88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_250099D24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, void))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a5(&v9, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_250099DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_2500BFBD8();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_250099E2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_250099E98(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_25009B79C();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v7 = a3(0, *(a1 + a2 - 8));
  result = a4(v7);
  *a5 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a5(0, *(a3 + a4 - 8));
  return a6(v7, v8);
}

uint64_t keypath_get_1Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a4(0, *(a2 + a3 - 8));
  return a5(v6, v7);
}

uint64_t sub_25009A478(uint64_t a1)
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

uint64_t sub_25009A4F8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = ((v6 + ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *sub_25009A60C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_25009A7A0(uint64_t a1)
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

uint64_t sub_25009A81C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = ((v6 + ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *sub_25009A938(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_25009AADC(uint64_t a1)
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

uint64_t sub_25009AB60(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v7 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v5;
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
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *sub_25009AC84(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(v5 + 64) + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
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

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v18 = *(v6 + 56);

      return v18();
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_25009AE30(uint64_t a1)
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

uint64_t sub_25009AEBC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v7 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v5;
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
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *sub_25009AFF0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v13 = 0;
    v14 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = a3 - v6;
    if (((v7 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
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

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v18 = *(v5 + 56);

      return v18();
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v6 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_25009B1AC(uint64_t a1)
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

uint64_t sub_25009B23C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v7 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v5;
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
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *sub_25009B388(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v13 = 0;
    v14 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = a3 - v6;
    if (((v7 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
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

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v18 = *(v5 + 56);

      return v18();
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v6 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_25009B554()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2500BFA28();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_2500BFB88() + 36);
  result = sub_2500BFA28();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25009B620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2500BFA28();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25009B704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  sub_2500BFC38();
  swift_getWitnessTable();

  return sub_2500BFBF8();
}

void *sub_25009B8AC(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_25009CF90(a2, 0, &qword_27F3BA590, &qword_2500D33A8);
    memcpy(v4 + 4, a1, 4 * a2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = (2 * v4[2]) | 1;
  return v4;
}

uint64_t sub_25009B988(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, void, void, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, void, void))
{
  result = *(a1 + 16);
  v11 = *(a2 + 16) / 3uLL;
  if (a6)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a3))
    {
      return a7(result, a1 + 32, v11, a2 + 32, a3, *a4, *a5, a6);
    }

    __break(1u);
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!HIDWORD(a3))
  {
    return a8(result, a1 + 32, v11, a2 + 32, a3, *a4, *a5);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25009BA9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t (*a12)(void, uint64_t, unint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, _DWORD, void, void, void, void, void))
{
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a6))
  {
    v12 = *a10;
    return a12(*(result + 16), result + 32, *(a2 + 16) / 3uLL, a2 + 32, *(a3 + 16), a3 + 32, *(a4 + 16), a4 + 32, a5 + 32, a6, *a7, *a8, *a9, *a10, *a11);
  }

  __break(1u);
  return result;
}

void (*OS_geom_simplify_triangle_mesh_opt_3f.fixedVertexIndices.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  fixed_vertex_indices_data_3f = geom_simplify_triangle_mesh_opt_get_fixed_vertex_indices_data_3f(v2);
  fixed_vertex_indices_count_3f = geom_simplify_triangle_mesh_opt_get_fixed_vertex_indices_count_3f(v2);
  if (fixed_vertex_indices_count_3f)
  {
    v8 = fixed_vertex_indices_count_3f;
    v9 = sub_25009CF90(fixed_vertex_indices_count_3f, 0, &qword_27F3BA590, &qword_2500D33A8);
    memcpy(v9 + 4, fixed_vertex_indices_data_3f, 4 * v8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = (2 * v9[2]) | 1;
  *v5 = v9;
  v5[1] = v9 + 4;
  v5[2] = 0;
  v5[3] = v10;
  return sub_25009BC7C;
}

id OS_geom_simplify_triangle_mesh_opt_3f.outNewToOldVertexMap.getter()
{
  output_new_to_old_vertex_map_collection_3f = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3f(v0);

  return output_new_to_old_vertex_map_collection_3f;
}

void OS_geom_simplify_triangle_mesh_opt_3f.outNewToOldVertexMap.setter(void *a1)
{
  geom_simplify_triangle_mesh_opt_set_output_new_to_old_vertex_map_collection_3f(v1, a1);
}

void (*OS_geom_simplify_triangle_mesh_opt_3f.outNewToOldVertexMap.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3f(v1);
  return sub_25009BD58;
}

void sub_25009BD58(uint64_t *a1)
{
  v1 = *a1;
  geom_simplify_triangle_mesh_opt_set_output_new_to_old_vertex_map_collection_3f(a1[1], *a1);
}

uint64_t (*OS_geom_simplify_triangle_mesh_opt_3f.preserveUVBoundaries.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = geom_simplify_triangle_mesh_opt_get_preserve_uv_boundaries_3f(v1);
  return sub_25009BE0C;
}

uint64_t (*sub_25009BF60(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_simplify_triangle_mesh_opt_3f.fixedVertexIndices.modify(v3);
  return sub_25009B858;
}

id sub_25009BFD4()
{
  output_new_to_old_vertex_map_collection_3f = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3f(*v0);

  return output_new_to_old_vertex_map_collection_3f;
}

void sub_25009C004(void *a1)
{
  geom_simplify_triangle_mesh_opt_set_output_new_to_old_vertex_map_collection_3f(*v1, a1);
}

void (*sub_25009C044(void *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3f(v3);
  return sub_25009BD58;
}

uint64_t (*sub_25009C0C4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_simplify_triangle_mesh_opt_get_preserve_uv_boundaries_3f(v3);
  return sub_25009BE0C;
}

id sub_25009C188()
{
  output_uv_value_collection_3f = geom_simplify_triangle_mesh_opt_get_output_uv_value_collection_3f(*v0);

  return output_uv_value_collection_3f;
}

id sub_25009C1B8()
{
  output_triangles_with_uvs_collection_3f = geom_simplify_triangle_mesh_opt_get_output_triangles_with_uvs_collection_3f(*v0);

  return output_triangles_with_uvs_collection_3f;
}

id sub_25009C1E8()
{
  output_triangle_uv_indices_collection_3f = geom_simplify_triangle_mesh_opt_get_output_triangle_uv_indices_collection_3f(*v0);

  return output_triangle_uv_indices_collection_3f;
}

void *sub_25009C2D4(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = a1(v2);
  v5 = a2(v2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_25009CF90(v5, 0, &qword_27F3BA590, &qword_2500D33A8);
    memcpy(v7 + 4, v4, 4 * v6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = (2 * v7[2]) | 1;
  return v7;
}

void *sub_25009C374@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a2(*a1);
  v8 = a3(v6);
  result = sub_25009B8AC(v7, v8);
  *a4 = result;
  a4[1] = v10;
  a4[2] = v11;
  a4[3] = v12;
  return result;
}

uint64_t sub_25009C3EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t))
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    a5(v5, (a4 >> 1) - a3, a2 + 4 * a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*OS_geom_simplify_triangle_mesh_opt_3d.fixedVertexIndices.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  fixed_vertex_indices_data_3d = geom_simplify_triangle_mesh_opt_get_fixed_vertex_indices_data_3d(v2);
  fixed_vertex_indices_count_3d = geom_simplify_triangle_mesh_opt_get_fixed_vertex_indices_count_3d(v2);
  if (fixed_vertex_indices_count_3d)
  {
    v8 = fixed_vertex_indices_count_3d;
    v9 = sub_25009CF90(fixed_vertex_indices_count_3d, 0, &qword_27F3BA590, &qword_2500D33A8);
    memcpy(v9 + 4, fixed_vertex_indices_data_3d, 4 * v8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = (2 * v9[2]) | 1;
  *v5 = v9;
  v5[1] = v9 + 4;
  v5[2] = 0;
  v5[3] = v10;
  return sub_25009C52C;
}

void sub_25009C544(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[2];
  v6 = (*a1)[3] >> 1;
  v7 = v6 - v5;
  v8 = __OFSUB__(v6, v5);
  if ((a2 & 1) == 0)
  {
    if (!v8)
    {
      v13 = *v4;
      a3(v4[4], v7, v4[1] + 4 * v5);
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v4[4];
  v10 = *v4;
  v11 = v4[1] + 4 * v5;
  swift_unknownObjectRetain();
  a3(v9, v7, v11);
  swift_unknownObjectRelease();
  v12 = *v4;
LABEL_9:
  swift_unknownObjectRelease();

  free(v4);
}

id OS_geom_simplify_triangle_mesh_opt_3d.outNewToOldVertexMap.getter()
{
  output_new_to_old_vertex_map_collection_3d = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3d(v0);

  return output_new_to_old_vertex_map_collection_3d;
}

void OS_geom_simplify_triangle_mesh_opt_3d.outNewToOldVertexMap.setter(void *a1)
{
  geom_simplify_triangle_mesh_opt_set_output_new_to_old_vertex_map_collection_3d(v1, a1);
}

void (*OS_geom_simplify_triangle_mesh_opt_3d.outNewToOldVertexMap.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3d(v1);
  return sub_25009C6CC;
}

void sub_25009C6CC(uint64_t *a1)
{
  v1 = *a1;
  geom_simplify_triangle_mesh_opt_set_output_new_to_old_vertex_map_collection_3d(a1[1], *a1);
}

uint64_t (*OS_geom_simplify_triangle_mesh_opt_3d.preserveUVBoundaries.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = geom_simplify_triangle_mesh_opt_get_preserve_uv_boundaries_3d(v1);
  return sub_25009C780;
}

void *sub_25009C7BC(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = a1(v2);
  v5 = a2(v2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_25009D288(v5, 0, &qword_27F3BA578, &qword_2500D3390);
    memcpy(v7 + 4, v4, 8 * v6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = (2 * v7[2]) | 1;
  return v7;
}

void *sub_25009C888(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = a1(v2);
  v6 = a2(v4);
  if (v5)
  {
    v7 = v6;
    v8 = sub_25009CF90(v5, 0, &qword_27F3BA590, &qword_2500D33A8);
    memcpy(v8 + 4, v7, 4 * v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = (2 * v8[2]) | 1;
  return v8;
}

uint64_t sub_25009C95C(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  result = a1(v2);
  v5 = 3 * result;
  if ((result * 3) >> 64 == (3 * result) >> 63)
  {
    v6 = a2(v2);
    if (v5)
    {
      v7 = v6;
      v8 = sub_25009CF90(v5, 0, &qword_27F3BA590, &qword_2500D33A8);
      memcpy(v8 + 4, v7, 4 * v5);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = (2 * v8[2]) | 1;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25009CAD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, unint64_t, uint64_t))
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    a7(*v7, (a4 >> 1) - a3, a2 + 4 * a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_25009CB2C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_simplify_triangle_mesh_opt_3d.fixedVertexIndices.modify(v3);
  return sub_250094CB8;
}

id sub_25009CBA0()
{
  output_new_to_old_vertex_map_collection_3d = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3d(*v0);

  return output_new_to_old_vertex_map_collection_3d;
}

void sub_25009CBD0(void *a1)
{
  geom_simplify_triangle_mesh_opt_set_output_new_to_old_vertex_map_collection_3d(*v1, a1);
}

void (*sub_25009CC10(void *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3d(v3);
  return sub_25009C6CC;
}

uint64_t (*sub_25009CC90(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_simplify_triangle_mesh_opt_get_preserve_uv_boundaries_3d(v3);
  return sub_25009C780;
}

id sub_25009CD54()
{
  output_uv_value_collection_3d = geom_simplify_triangle_mesh_opt_get_output_uv_value_collection_3d(*v0);

  return output_uv_value_collection_3d;
}

id sub_25009CD84()
{
  output_triangles_with_uvs_collection_3d = geom_simplify_triangle_mesh_opt_get_output_triangles_with_uvs_collection_3d(*v0);

  return output_triangles_with_uvs_collection_3d;
}

id sub_25009CDB4()
{
  output_triangle_uv_indices_collection_3d = geom_simplify_triangle_mesh_opt_get_output_triangle_uv_indices_collection_3d(*v0);

  return output_triangle_uv_indices_collection_3d;
}

void *sub_25009CF00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_25009CF90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *sub_25009D020(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BA5C0, &qword_2500D33D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_25009D0D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 + 31;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 6);
  return result;
}

void *sub_25009D154(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BA5A8, &qword_2500D33C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_25009D1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_25009D288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

char *sub_25009D304(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

char *sub_25009D374(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 8 * v5);
    v4 += 8 * v5;
  }

  return v4;
}

id sub_25009D43C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3f(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25009D480@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = geom_simplify_triangle_mesh_opt_get_preserve_uv_boundaries_3f(*a1);
  *a2 = result;
  return result;
}

void *keypath_setTm_0(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v5 = result[2];
  v6 = result[3] >> 1;
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    return a5(*a2, v8, result[1] + 4 * v5);
  }

  __break(1u);
  return result;
}

id sub_25009D540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = geom_simplify_triangle_mesh_opt_get_output_new_to_old_vertex_map_collection_3d(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25009D584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = geom_simplify_triangle_mesh_opt_get_preserve_uv_boundaries_3d(*a1);
  *a2 = result;
  return result;
}

void geom_triangle_3f.closestPoint(to:)(float32x4_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;
  v6 = 0uLL;
  geom_closest_point_to_triangle_3f(&v6, a1, v4, v2, v3);
  v5 = *MEMORY[0x277D85DE8];
}

float64_t geom_triangle_3d.closestPoint(to:)(float64x2_t a1, float64x2_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  memset(v14, 0, sizeof(v14));
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  geom_closest_point_to_triangle_3d(v13, v12, v14, &v11);
  result = v11.f64[0];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void geom_circle_2f.closestPoint(to:)(float32x2_t a1, double a2, float a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  geom_closest_point_to_circle_2f(*&a2, SLODWORD(a3), &v4, a1);
  v3 = *MEMORY[0x277D85DE8];
}

void geom_circle_2d.closestPoint(to:)(float64x2_t a1, __n128 a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = a2;
  v6 = a3;
  geom_closest_point_to_circle_2d(&v5, &v4, a1);
  v3 = *MEMORY[0x277D85DE8];
}

void geom_sphere_3f.closestPoint(to:)(float32x4_t a1, __n128 a2, float a3, float a4)
{
  v8 = *MEMORY[0x277D85DE8];
  a2.n128_f32[2] = a3;
  v5 = 0;
  v6 = a2;
  v7 = a4;
  geom_closest_point_to_sphere_3f(&v6, &v5, a1);
  v4 = *MEMORY[0x277D85DE8];
}

float64_t geom_sphere_3d.closestPoint(to:)(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  v11 = a5;
  geom_closest_point_to_sphere_3d(v8, v10, &v9, &v7);
  result = v7.f64[0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_quadratic_bezier_2f.closestPoint(to:)(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  result = geom_closest_point_to_quadratic_bezier_2f(v6, v6 + 1, a1, a2, a3, a4);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_quadratic_bezier_2d.closestPoint(to:)(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0.0;
  result = geom_closest_point_to_quadratic_bezier_2d(&v6, v7, a1, a2, a3, a4);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

float *geom_cubic_bezier_2f.closestPoint(to:)(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  result = geom_closest_point_to_cubic_bezier_2f(v11, v11 + 1, a1, a2, a3, a4, a5, a8, a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void geom_cubic_bezier_2f.approximateClosestPoint(to:withSampleCount:)(unint64_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a1 >> 16)
  {
    goto LABEL_5;
  }

  geom_approximate_closest_point_to_cubic_bezier_2f(a1, v7, v7 + 1, a2, a3, a4, a5, a6);
  v6 = *MEMORY[0x277D85DE8];
}

double *geom_cubic_bezier_2d.closestPoint(to:)(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12[0] = 0.0;
  result = geom_closest_point_to_cubic_bezier_2d(&v11, v12, a1, a2, a3, a4, a5, a8, a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void geom_cubic_bezier_2d.approximateClosestPoint(to:withSampleCount:)(unint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0.0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a1 >> 16)
  {
    goto LABEL_5;
  }

  geom_approximate_closest_point_to_cubic_bezier_2d(a1, &v7, v8, a2, a3, a4, a5, a6);
  v6 = *MEMORY[0x277D85DE8];
}

double findBestRigidTransform(from:to:)(float32x4_t *a1, float32x4_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1[1].u64[0];
  if (v3 != a2[1].i64[0])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8 = 0uLL;
  v7 = xmmword_2500CA7D0;
  v6 = 0;
  if (HIDWORD(v3))
  {
    goto LABEL_5;
  }

  geom_find_best_rigid_transform_3f(v3, a1 + 2, a2 + 2, &v8, &v7, &v6);
  result = *v8.i64;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t findBestRigidTransform(from:to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = xmmword_2500C1660;
  v12 = 0;
  if (HIDWORD(v5))
  {
    goto LABEL_5;
  }

  geom_find_best_rigid_transform_3d(v5, (a1 + 32), (a2 + 32), &v15, &v13, &v12);
  result = v15.f64[0];
  v7 = v16;
  v8 = v13;
  v9 = v14;
  v10 = v12;
  *a3 = v15;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  *(a3 + 64) = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall findBestRigidTransformMatrix(from:to:)(simd_float4x4 *__return_ptr retstr, Swift::OpaquePointer from, Swift::OpaquePointer to)
{
  v4 = *(from._rawValue + 2);
  if (v4 == *(to._rawValue + 2))
  {
    if (!HIDWORD(v4))
    {
      geom_find_best_rigid_transform_matrix_3f(v4, from._rawValue + 2, to._rawValue + 2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall findBestRigidTransformMatrix(from:to:)(simd_double4x4 *__return_ptr retstr, Swift::OpaquePointer from, Swift::OpaquePointer to)
{
  v5 = *(from._rawValue + 2);
  if (v5 == *(to._rawValue + 2))
  {
    if (!HIDWORD(v5))
    {
      geom_find_best_rigid_transform_matrix_3d(v5, from._rawValue + 2, to._rawValue + 2, v10);
      v6 = v10[5];
      *retstr->columns[2].f64 = v10[4];
      *&retstr->columns[2].f64[2] = v6;
      v7 = v10[7];
      *retstr->columns[3].f64 = v10[6];
      *&retstr->columns[3].f64[2] = v7;
      v8 = v10[1];
      *retstr->columns[0].f64 = v10[0];
      *&retstr->columns[0].f64[2] = v8;
      v9 = v10[3];
      *retstr->columns[1].f64 = v10[2];
      *&retstr->columns[1].f64[2] = v9;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25009DE3C(_OWORD *a1, _DWORD *a2, float32x4_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = *(v3 + 4);
  v12 = 0;
  v13 = v7;
  v14 = v8;
  *&v9 = geom_closest_point_to_sphere_3f(&v13, &v12, v6);
  v10 = v12;
  *a1 = v9;
  *a2 = v10;
  v11 = *MEMORY[0x277D85DE8];
}

float64_t sub_25009DECC(float64x2_t *a1, void *a2, float64x2_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = a3[1];
  v8 = *v3;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v17 = 0;
  v16[0] = v6;
  v16[1] = v7;
  v18[0] = v8;
  v18[1] = v9;
  v19 = v10;
  geom_closest_point_to_sphere_3d(v16, v18, &v17, v15);
  result = v15[0].f64[0];
  v12 = v15[1];
  v13 = v17;
  *a1 = v15[0];
  a1[1] = v12;
  *a2 = v13;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25009DF6C(_OWORD *a1, float32x4_t *a2, float32x4_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = *v3;
  v13 = 0uLL;
  *&v10 = geom_closest_point_to_triangle_3f(&v13, v6, v9, v7, v8);
  v11 = v13;
  *a1 = v10;
  *a2 = v11;
  v12 = *MEMORY[0x277D85DE8];
}

float64_t sub_25009DFF0(float64x2_t *a1, _OWORD *a2, float64x2_t *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = a3[1];
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  v22 = 0u;
  v23 = 0u;
  v21[0] = v6;
  v21[1] = v7;
  v20[0] = v8;
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[5] = v13;
  geom_closest_point_to_triangle_3d(v21, v20, &v22, v19);
  result = v19[0].f64[0];
  v15 = v19[1];
  v16 = v22;
  v17 = v23;
  *a1 = v19[0];
  a1[1] = v15;
  *a2 = v16;
  a2[1] = v17;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25009E09C(void *a1, _DWORD *a2, _DWORD *a3, float32x2_t *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v16[0] = 0;
  result = geom_closest_point_to_quadratic_bezier_2f(v16, v16 + 1, v8, v9, v10, v11);
  v13 = v16[0];
  *a1 = v14;
  *a2 = v13;
  *a3 = HIDWORD(v13);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25009E12C(_OWORD *a1, void *a2, double *a3, float64x2_t *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v17 = 0;
  v18[0] = 0.0;
  result = geom_closest_point_to_quadratic_bezier_2d(&v17, v18, v8, v9, v10, v11);
  v13 = v17;
  v14 = v18[0];
  *a1 = v15;
  *a2 = v13;
  *a3 = v14;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

float *sub_25009E1BC(void *a1, _DWORD *a2, _DWORD *a3, double *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v17[0] = 0;
  result = geom_closest_point_to_cubic_bezier_2f(v17, v17 + 1, *&v8, v9, v10, v11, v12, a3, a4);
  v14 = v17[0];
  *a1 = v15;
  *a2 = v14;
  *a3 = HIDWORD(v14);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25009E24C(double *a1, _DWORD *a2, _DWORD *a3, float32x2_t *a4, unint64_t a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v17[0] = 0;
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a5 >> 16)
  {
    goto LABEL_5;
  }

  v14 = geom_approximate_closest_point_to_cubic_bezier_2f(a5, v17, v17 + 1, v6, v7, v8, v9, v10);
  v15 = v17[0];
  *a1 = v14;
  *a2 = v15;
  *a3 = HIDWORD(v15);
  v16 = *MEMORY[0x277D85DE8];
}

double *sub_25009E2F4(_OWORD *a1, void *a2, double *a3, double *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v18 = 0;
  v19[0] = 0.0;
  result = geom_closest_point_to_cubic_bezier_2d(&v18, v19, v8, v9, v10, v11, v12, a3, a4);
  v14 = v18;
  v15 = v19[0];
  *a1 = v16;
  *a2 = v14;
  *a3 = v15;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25009E384(_OWORD *a1, void *a2, double *a3, float64x2_t *a4, unint64_t a5)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v18 = 0;
  v19[0] = 0.0;
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a5 >> 16)
  {
    goto LABEL_5;
  }

  *&v14 = geom_approximate_closest_point_to_cubic_bezier_2d(a5, &v18, v19, v6, v7, v8, v9, v10);
  v15 = v18;
  v16 = v19[0];
  *a1 = v14;
  *a2 = v15;
  *a3 = v16;
  v17 = *MEMORY[0x277D85DE8];
}

double sub_25009E42C(int a1, uint64_t a2, __n128 a3)
{
  if (!a2)
  {
    return 2.24711749e307;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = a1;
  v7 = a3;

  v3(&v6, &v8, &v7);

  return *&v6;
}

double sub_25009E498(int a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (a2)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v9 = a1;
    v8[0] = a3;
    v8[1] = a4;

    v4(&v7, &v9, v8);

    return *&v7;
  }

  else
  {
    *&result = vdupq_n_s64(0x7FF8000000000000uLL).u64[0];
  }

  return result;
}

double sub_25009E534@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

__n128 sub_25009E540@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_25009E54C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t OS_geom_bvh_create_opt_2f.buildStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_25009F0F8(geom_bvh_create_opt_uses_builtin_strategy_2f, geom_bvh_create_opt_get_strategy_builtin_2f, geom_bvh_create_opt_get_strategy_custom_heuristic_2f, a1);
}

void (*OS_geom_bvh_create_opt_2f.buildStrategy.modify(uint64_t *a1))(unsigned int **a1, uint64_t a2)
{
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v2;
  if (geom_bvh_create_opt_uses_builtin_strategy_2f(v2))
  {
    *v5 = geom_bvh_create_opt_get_strategy_builtin_2f(v2);
    *(v5 + 8) = 0;
    *(v5 + 12) = 0;
LABEL_8:
    v9 = *MEMORY[0x277D85DE8];
    return sub_25009E728;
  }

  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  result = geom_bvh_create_opt_get_strategy_custom_heuristic_2f(v2, (v5 + 16), (v5 + 32));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v5 + 32);
    *v5 = v7;
    *(v5 + 8) = v8;
    *(v5 + 12) = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25009E780(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_bvh_create_opt_get_should_copy_input_data_2f(v3);
  return sub_25009E7CC;
}

uint64_t (*sub_25009E7F0(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_bvh_create_opt_get_minimum_primitives_in_interior_node_2f(v3);
  return sub_25009E83C;
}

uint64_t (*sub_25009E898(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_bvh_create_opt_2f.buildStrategy.modify(v3);
  return sub_25009B858;
}

uint64_t OS_geom_bvh_create_opt_3f.buildStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_25009F0F8(geom_bvh_create_opt_uses_builtin_strategy_3f, geom_bvh_create_opt_get_strategy_builtin_3f, geom_bvh_create_opt_get_strategy_custom_heuristic_3f, a1);
}

void (*OS_geom_bvh_create_opt_3f.buildStrategy.modify(uint64_t *a1))(unsigned int **a1, uint64_t a2)
{
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v2;
  if (geom_bvh_create_opt_uses_builtin_strategy_3f(v2))
  {
    *v5 = geom_bvh_create_opt_get_strategy_builtin_3f(v2);
    *(v5 + 8) = 0;
    *(v5 + 12) = 0;
LABEL_8:
    v9 = *MEMORY[0x277D85DE8];
    return sub_25009EAD4;
  }

  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  result = geom_bvh_create_opt_get_strategy_custom_heuristic_3f(v2, (v5 + 16), (v5 + 32));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v5 + 32);
    *v5 = v7;
    *(v5 + 8) = v8;
    *(v5 + 12) = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25009EB2C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_bvh_create_opt_get_should_copy_input_data_3f(v3);
  return sub_25009EB78;
}

uint64_t (*sub_25009EB9C(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_bvh_create_opt_get_minimum_primitives_in_interior_node_3f(v3);
  return sub_25009EBE8;
}

uint64_t (*sub_25009EC44(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_bvh_create_opt_3f.buildStrategy.modify(v3);
  return sub_25009B858;
}

uint64_t OS_geom_bvh_create_opt_2d.buildStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_25009F0F8(geom_bvh_create_opt_uses_builtin_strategy_2d, geom_bvh_create_opt_get_strategy_builtin_2d, geom_bvh_create_opt_get_strategy_custom_heuristic_2d, a1);
}

void (*OS_geom_bvh_create_opt_2d.buildStrategy.modify(uint64_t *a1))(unsigned int **a1, uint64_t a2)
{
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v2;
  if (geom_bvh_create_opt_uses_builtin_strategy_2d(v2))
  {
    *v5 = geom_bvh_create_opt_get_strategy_builtin_2d(v2);
    *(v5 + 8) = 0;
    *(v5 + 12) = 0;
LABEL_8:
    v9 = *MEMORY[0x277D85DE8];
    return sub_25009EE80;
  }

  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  result = geom_bvh_create_opt_get_strategy_custom_heuristic_2d(v2, (v5 + 16), (v5 + 32));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v5 + 32);
    *v5 = v7;
    *(v5 + 8) = v8;
    *(v5 + 12) = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25009EED8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_bvh_create_opt_get_should_copy_input_data_2d(v3);
  return sub_25009EF24;
}

uint64_t (*sub_25009EF48(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_bvh_create_opt_get_minimum_primitives_in_interior_node_2d(v3);
  return sub_25009EF94;
}

uint64_t (*sub_25009EFF0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_bvh_create_opt_2d.buildStrategy.modify(v3);
  return sub_250094CB8;
}

uint64_t OS_geom_bvh_create_opt_3d.buildStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_25009F0F8(geom_bvh_create_opt_uses_builtin_strategy_3d, geom_bvh_create_opt_get_strategy_builtin_3d, geom_bvh_create_opt_get_strategy_custom_heuristic_3d, a1);
}

uint64_t sub_25009F0F8@<X0>(unsigned int (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t, void *, int *)@<X2>, uint64_t a4@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a1(v4))
  {
    result = a2(v4);
    *a4 = result;
    *(a4 + 8) = 0;
    *(a4 + 12) = 0;
LABEL_5:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v12[0] = 0;
  v11 = 0;
  result = a3(v4, v12, &v11);
  if (v12[0])
  {
    v9 = v11;
    *a4 = v12[0];
    *(a4 + 8) = v9;
    *(a4 + 12) = 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_25009F1CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  v7 = *a1;
  v8 = *a2;
  if (*(a1 + 12))
  {
    return a6(v8, v7, *(a1 + 2));
  }

  else
  {
    return a5(v8, v7);
  }
}

uint64_t sub_25009F228(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, void))
{
  v6 = *a1;
  if (*(a1 + 12))
  {
    return a3(v3, v6, *(a1 + 2));
  }

  else
  {
    return a2(v3, v6);
  }
}

void (*OS_geom_bvh_create_opt_3d.buildStrategy.modify(uint64_t *a1))(unsigned int **a1, uint64_t a2)
{
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v2;
  if (geom_bvh_create_opt_uses_builtin_strategy_3d(v2))
  {
    *v5 = geom_bvh_create_opt_get_strategy_builtin_3d(v2);
    *(v5 + 8) = 0;
    *(v5 + 12) = 0;
LABEL_8:
    v9 = *MEMORY[0x277D85DE8];
    return sub_25009F360;
  }

  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  result = geom_bvh_create_opt_get_strategy_custom_heuristic_3d(v2, (v5 + 16), (v5 + 32));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v5 + 32);
    *v5 = v7;
    *(v5 + 8) = v8;
    *(v5 + 12) = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_25009F38C(unsigned int **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, void))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 3);
  if (v6)
  {
    a4(v7, v5, v4[2]);
  }

  else
  {
    a3(v7, v5);
  }

  free(v4);
}

uint64_t (*sub_25009F418(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_bvh_create_opt_get_should_copy_input_data_3d(v3);
  return sub_25009F464;
}

uint64_t (*sub_25009F488(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_bvh_create_opt_get_minimum_primitives_in_interior_node_3d(v3);
  return sub_25009F4D4;
}

uint64_t sub_25009F530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void))
{
  v7 = *v5;
  v8 = *a1;
  if (*(a1 + 12))
  {
    return a5(v7, v8, *(a1 + 2));
  }

  else
  {
    return a4(v7, v8);
  }
}

uint64_t (*sub_25009F558(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_bvh_create_opt_3d.buildStrategy.modify(v3);
  return sub_25009B858;
}

Swift::tuple_maxLevel_Int_sumOfLevels_Int __swiftcall OS_geom_bvh_2f.statistics()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  v1 = sub_2500A11C0(geom_bvh_tree_statistics_2f);
  result.sumOfLevels = v2;
  result.maxLevel = v1;
  return result;
}

void *OS_geom_bvh_2f.nodes.getter()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  nodes_2f = geom_bvh_get_nodes_2f(v0, v8);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = nodes_2f;
    v4 = sub_25009D020(v8[0], 0);
    memcpy(v4 + 4, v3, 40 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *MEMORY[0x277D85DE8];
  v6 = (2 * v4[2]) | 1;
  return v4;
}

void *OS_geom_bvh_2f.primitivePartition.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A1350(geom_bvh_get_primitive_partition_2f);
}

void *OS_geom_bvh_2f.primitives(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A147C(a1, geom_bvh_get_primitives_for_node_2f);
}

void *OS_geom_bvh_2f.primitives(forNode:)(unsigned int *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  primitives_for_node_2f = geom_bvh_get_primitives_for_node_2f(v1, *a1, v9);
  v3 = v9[0];
  if (v9[0])
  {
    v4 = primitives_for_node_2f;
    v5 = sub_25009D730(v9[0], 0);
    memcpy(v5 + 4, v4, 4 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *MEMORY[0x277D85DE8];
  v7 = (2 * v5[2]) | 1;
  return v5;
}

uint64_t OS_geom_bvh_2f.raycast(ray:intersectFunction:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v14[0] = sub_2500A4180;
  v14[1] = v9;
  if (geom_bvh_raycast_2f(v4, sub_25009FA2C, v14, v15 + 1, v15, a3, a4))
  {
    v11 = LODWORD(v15[0]);
    v10 = HIDWORD(v15[0]);

    result = v10 | (v11 << 32);
  }

  else
  {

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25009FA2C(int a1, uint64_t a2, _DWORD *a3, double a4, double a5)
{
  if (!a2)
  {
    return 0;
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  v11 = a1;
  *v10 = a4;
  *&v10[1] = a5;

  v7(&v9, &v11, v10);

  if ((v9 & 0x100000000) != 0)
  {
    return 0;
  }

  *a3 = v9;
  return 1;
}

uint64_t OS_geom_bvh_2f.closestPoint(to:closestPointFunction:)(uint64_t a1, uint64_t a2, float32x2_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11[0] = sub_2500A41C0;
  v11[1] = v7;
  geom_bvh_closest_point_2f(v3, a3, sub_25009FBA0, v11, v12 + 1, v12);
  v8 = LODWORD(v12[0]);

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

float32x2_t sub_25009FBA0(int a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    v8 = a1;
    v7 = a3;

    v3(&v6, &v8, &v7);

    return v6;
  }

  else
  {
    return vneg_f32(0x3F0000003FLL);
  }
}

uint64_t sub_25009FCB8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500A1A70(a1, a2, geom_bvh_tree_statistics_2f);
}

uint64_t sub_25009FDC4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v11[2] = a2;
  v11[3] = a3;
  v8 = *v4;
  result = OS_geom_bvh_2f.raycast(ray:intersectFunction:)(sub_2500A5640, v11, v6, v7);
  *a4 = result;
  *(a4 + 8) = v10 & 1;
  return result;
}

uint64_t sub_25009FE20(void *a1, _DWORD *a2, float32x2_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v13[2] = a4;
  v13[3] = a5;
  v9 = *v5;
  result = OS_geom_bvh_2f.closestPoint(to:closestPointFunction:)(sub_2500A5600, v13, v8);
  *a1 = v11;
  *a2 = v12;
  return result;
}

Swift::tuple_maxLevel_Int_sumOfLevels_Int __swiftcall OS_geom_bvh_3f.statistics()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  v1 = sub_2500A11C0(geom_bvh_tree_statistics_3f);
  result.sumOfLevels = v2;
  result.maxLevel = v1;
  return result;
}

uint64_t OS_geom_bvh_3f.nodes.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A07F8(geom_bvh_get_nodes_3f, sub_25009D0B0);
}

void *OS_geom_bvh_3f.primitivePartition.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A1350(geom_bvh_get_primitive_partition_3f);
}

void *OS_geom_bvh_3f.primitives(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A147C(a1, geom_bvh_get_primitives_for_node_3f);
}

void *OS_geom_bvh_3f.primitives(forNode:)(unsigned int *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A0A04(a1, geom_bvh_get_primitives_for_node_3f);
}

uint64_t OS_geom_bvh_3f.raycast(ray:intersectFunction:)(uint64_t a1, uint64_t a2, float32x4_t a3, float32_t a4, __n128 a5, float a6)
{
  v19 = *MEMORY[0x277D85DE8];
  a3.f32[2] = a4;
  a5.n128_f32[2] = a6;
  v14 = a5;
  v15 = a3;
  v18 = 0;
  v17 = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v16[0] = sub_2500A41F8;
  v16[1] = v9;
  if (geom_bvh_raycast_3f(v6, sub_2500A0258, v16, &v18, &v17, v15, v14))
  {
    v10 = v18;
    v11 = v17;

    result = v10 | (v11 << 32);
  }

  else
  {

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2500A0258(int a1, uint64_t a2, _DWORD *a3, __n128 a4, __n128 a5)
{
  if (!a2)
  {
    return 0;
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  v11 = a1;
  v10[0] = a4;
  v10[1] = a5;

  v7(&v9, &v11, v10);

  if ((v9 & 0x100000000) != 0)
  {
    return 0;
  }

  *a3 = v9;
  return 1;
}

uint64_t OS_geom_bvh_3f.closestPoint(to:closestPointFunction:)(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[0] = sub_2500A4240;
  v9[1] = v5;
  geom_bvh_closest_point_3f(v2, sub_2500A03CC, v9, v10 + 1, v10);
  v6 = LODWORD(v10[0]);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2500A0490(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500A1A70(a1, a2, geom_bvh_tree_statistics_3f);
}

uint64_t sub_2500A059C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v11[2] = a2;
  v11[3] = a3;
  v8 = *v4;
  result = OS_geom_bvh_3f.raycast(ray:intersectFunction:)(sub_2500A55A8, v11, v6, v6.f32[2], v7, v7.n128_f32[2]);
  *a4 = result;
  *(a4 + 8) = v10 & 1;
  return result;
}

uint64_t sub_2500A0600(_OWORD *a1, _DWORD *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v13[2] = a4;
  v13[3] = a5;
  v9 = *v5;
  result = OS_geom_bvh_3f.closestPoint(to:closestPointFunction:)(sub_2500A5524, v13);
  *a1 = v11;
  *a2 = v12;
  return result;
}

Swift::tuple_maxLevel_Int_sumOfLevels_Int __swiftcall OS_geom_bvh_2d.statistics()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  v1 = sub_2500A11C0(geom_bvh_tree_statistics_2d);
  result.sumOfLevels = v2;
  result.maxLevel = v1;
  return result;
}

uint64_t OS_geom_bvh_2d.nodes.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A07F8(geom_bvh_get_nodes_2d, sub_25009D0C4);
}

uint64_t sub_2500A07F8(uint64_t (*a1)(uint64_t, void *), uint64_t (*a2)(void, void))
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v4 = a1(v2, v11);
  v5 = v11[0];
  if (v11[0])
  {
    v6 = v4;
    v7 = a2(v11[0], 0);
    memcpy((v7 + 32), v6, v5 << 6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *MEMORY[0x277D85DE8];
  v9 = (2 * *(v7 + 16)) | 1;
  return v7;
}

void *OS_geom_bvh_2d.primitivePartition.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A1350(geom_bvh_get_primitive_partition_2d);
}

void *OS_geom_bvh_2d.primitives(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A147C(a1, geom_bvh_get_primitives_for_node_2d);
}

void *OS_geom_bvh_2d.primitives(forNode:)(unsigned int *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A0A04(a1, geom_bvh_get_primitives_for_node_2d);
}

void *sub_2500A0A04(unsigned int *a1, uint64_t (*a2)(uint64_t, void, uint64_t *))
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = a2(v2, *a1, v10);
  v4 = v10[0];
  if (v10[0])
  {
    v5 = v3;
    v6 = sub_25009D730(v10[0], 0);
    memcpy(v6 + 4, v5, 4 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *MEMORY[0x277D85DE8];
  v8 = (2 * v6[2]) | 1;
  return v6;
}

uint64_t OS_geom_bvh_2d.raycast(ray:intersectFunction:)(uint64_t a1, uint64_t a2, float64x2_t a3, __n128 a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0.0;
  v16 = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v15[0] = sub_2500A4278;
  v15[1] = v7;
  v8 = geom_bvh_raycast_2d(v4, sub_2500A0BCC, v15, v17, &v16, a3, a4);
  v9 = v8;
  if (v8)
  {
    v10 = v17[0];
  }

  else
  {

    v10 = 0.0;
  }

  LOBYTE(v15[0]) = v9 ^ 1;
  v11 = *MEMORY[0x277D85DE8];
  return *&v10;
}

uint64_t sub_2500A0BCC(int a1, uint64_t a2, void *a3, __n128 a4, __n128 a5)
{
  if (!a2)
  {
    return 0;
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v11[0] = a4;
  v11[1] = a5;

  v7(&v9, &v12, v11);

  if (v10)
  {
    return 0;
  }

  *a3 = v9;
  return 1;
}

uint64_t OS_geom_bvh_2d.closestPoint(to:closestPointFunction:)(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0.0;
  v12 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11[0] = sub_2500A42B8;
  v11[1] = v6;
  geom_bvh_closest_point_2d(v3, sub_2500A0D44, v11, v13, &v12, a3);
  v7 = v12;

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

double sub_2500A0D44(int a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    v8 = a1;
    v7 = a3;

    v3(&v6, &v8, &v7);

    return *&v6;
  }

  else
  {
    *&result = vdupq_n_s64(0x7FF8000000000000uLL).u64[0];
  }

  return result;
}

uint64_t sub_2500A0E5C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500A1A70(a1, a2, geom_bvh_tree_statistics_2d);
}

uint64_t sub_2500A0F68@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v12[2] = a2;
  v12[3] = a3;
  v8 = *v4;
  result = OS_geom_bvh_2d.raycast(ray:intersectFunction:)(sub_2500A5564, v12, v6, v7);
  *a4 = result;
  *(a4 + 8) = v10;
  *(a4 + 12) = v11 & 1;
  return result;
}

uint64_t sub_2500A0FC8(_OWORD *a1, void *a2, float64x2_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v13[2] = a4;
  v13[3] = a5;
  v9 = *v5;
  result = OS_geom_bvh_2d.closestPoint(to:closestPointFunction:)(sub_2500A5524, v13, v8);
  *a1 = v11;
  *a2 = v12;
  return result;
}

uint64_t sub_2500A105C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a5))
  {
    v6 = a6(*(result + 16), result + 32, a2 + 32, a3, a4, a5);

    return v6;
  }

  __break(1u);
  return result;
}

Swift::tuple_maxLevel_Int_sumOfLevels_Int __swiftcall OS_geom_bvh_3d.statistics()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  v1 = sub_2500A11C0(geom_bvh_tree_statistics_3d);
  result.sumOfLevels = v2;
  result.maxLevel = v1;
  return result;
}

uint64_t sub_2500A11C0(void (*a1)(uint64_t, char *, void *))
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  a1(v1, v4 + 4, v4);
  result = HIDWORD(v4[0]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *OS_geom_bvh_3d.nodes.getter()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  nodes_3d = geom_bvh_get_nodes_3d(v0, v8);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = nodes_3d;
    v4 = sub_25009D154(v8[0], 0);
    memcpy(v4 + 4, v3, 96 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *MEMORY[0x277D85DE8];
  v6 = (2 * v4[2]) | 1;
  return v4;
}

void *OS_geom_bvh_3d.primitivePartition.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A1350(geom_bvh_get_primitive_partition_3d);
}

void *sub_2500A1350(uint64_t (*a1)(uint64_t, uint64_t *))
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = a1(v1, v9);
  v3 = v9[0];
  if (v9[0])
  {
    v4 = v2;
    v5 = sub_25009D730(v9[0], 0);
    memcpy(v5 + 4, v4, 4 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *MEMORY[0x277D85DE8];
  v7 = (2 * v5[2]) | 1;
  return v5;
}

void *OS_geom_bvh_3d.primitives(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A147C(a1, geom_bvh_get_primitives_for_node_3d);
}

void *sub_2500A147C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = a2(v2, a1, v10);
  v4 = v10[0];
  if (v10[0])
  {
    v5 = v3;
    v6 = sub_25009D730(v10[0], 0);
    memcpy(v6 + 4, v5, 4 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *MEMORY[0x277D85DE8];
  v8 = (2 * v6[2]) | 1;
  return v6;
}

void *OS_geom_bvh_3d.primitives(forNode:)(unsigned int *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  primitives_for_node_3d = geom_bvh_get_primitives_for_node_3d(v1, *a1, v9);
  v3 = v9[0];
  if (v9[0])
  {
    v4 = primitives_for_node_3d;
    v5 = sub_25009D730(v9[0], 0);
    memcpy(v5 + 4, v4, 4 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *MEMORY[0x277D85DE8];
  v7 = (2 * v5[2]) | 1;
  return v5;
}

uint64_t OS_geom_bvh_3d.raycast(ray:intersectFunction:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = 0.0;
  v21 = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v20[0] = sub_2500A42F0;
  v20[1] = v9;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v10 = geom_bvh_raycast_3d(v6, sub_2500A1714, v19, v20, v22, &v21);
  v11 = v10;
  if (v10)
  {
    v12 = v22[0];
  }

  else
  {

    v12 = 0.0;
  }

  v19[0].n128_u8[0] = v11 ^ 1;
  v13 = *MEMORY[0x277D85DE8];
  return *&v12;
}

uint64_t sub_2500A1714(int a1, __int128 *a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a2[2];
  v6 = a2[3];
  v7 = *a2;
  v8 = a2[1];
  v10 = *a3;
  v9 = *(a3 + 8);
  v15 = a1;
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v5;
  v14[3] = v6;

  v10(&v12, &v15, v14);

  if (v13)
  {
    return 0;
  }

  *a4 = v12;
  return 1;
}

uint64_t OS_geom_bvh_3d.closestPoint(to:closestPointFunction:)(uint64_t a1, uint64_t a2, float64x2_t a3, float64x2_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0.0;
  v16 = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v15[0] = sub_2500A433C;
  v15[1] = v7;
  v14[0] = a3;
  v14[1] = a4;
  geom_bvh_closest_point_3d(v4, sub_2500A18A8, v14, v15, v17, &v16, &v13);
  v8 = v16;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2500A18A8(int a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v5 = sub_25009E498(a1, a3, *a2, a2[1]);
  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_2500A1908@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t, void, uint64_t, unint64_t)@<X7>, uint64_t *a7@<X8>)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a5))
  {
    v8 = a6(*(result + 16), result + 32, a2 + 32, *a3, a4, a5);

    *a7 = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2500A1A04(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500A1A70(a1, a2, geom_bvh_tree_statistics_3d);
}

uint64_t sub_2500A1A70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, void *))
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v7[0] = 0;
  a3(v4, v7 + 4, v7);
  result = HIDWORD(v7[0]);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2500A1B78@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q1>, __n128 a6@<Q3>)
{
  v8 = *a1;
  v9 = a1[2];
  v14[2] = a2;
  v14[3] = a3;
  v10 = *v6;
  a5.n128_u64[0] = a1[1].n128_u64[0];
  a6.n128_u64[0] = a1[3].n128_u64[0];
  result = OS_geom_bvh_3d.raycast(ray:intersectFunction:)(sub_2500A54DC, v14, v8, a5, v9, a6);
  *a4 = result;
  *(a4 + 8) = v12;
  *(a4 + 12) = v13 & 1;
  return result;
}

uint64_t sub_2500A1BE4(_OWORD *a1, void *a2, float64x2_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = a3[1];
  v15[2] = a4;
  v15[3] = a5;
  v10 = *v5;
  result = OS_geom_bvh_3d.closestPoint(to:closestPointFunction:)(sub_2500A549C, v15, v8, v9);
  *a1 = v12;
  a1[1] = v13;
  *a2 = v14;
  return result;
}

void OS_geom_triangle_mesh_bvh_3f.closestPoint(to:)(uint64_t a1@<X8>, float32x4_t a2@<Q0>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8 = 0uLL;
  *&v4 = geom_triangle_mesh_bvh_closest_point_3f(v2, v9 + 1, v9, &v8, a2);
  v5 = v8;
  v6 = HIDWORD(v9[0]) | (LODWORD(v9[0]) << 32);
  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  v7 = *MEMORY[0x277D85DE8];
}

void sub_2500A1E9C(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  OS_geom_triangle_mesh_bvh_3f.raycast(ray:)();
}

void sub_2500A1EEC(float32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *v2;
  v11[0] = 0;
  v10 = 0uLL;
  *&v6 = geom_triangle_mesh_bvh_closest_point_3f(v5, v11 + 1, v11, &v10, v4);
  v7 = v10;
  v8 = HIDWORD(v11[0]) | (LODWORD(v11[0]) << 32);
  *a2 = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 48) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2500A1F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v5 = a5(*(a1 + 16), a1 + 32, *(a2 + 16), a2 + 32, a3, a4);

  return v5;
}

uint64_t sub_2500A2014(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, uint64_t, void, uint64_t, uint64_t, uint64_t, unint64_t))
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a5))
  {
    v6 = a6(*(result + 16), result + 32, *(a2 + 16), a2 + 32, a3, a4, a5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2500A20B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t))
{
  v3 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  return v3;
}

uint64_t sub_2500A2138(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t, unint64_t, uint64_t, void *))
{
  v5 = a4(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32, a3);

  return v5;
}

void sub_2500A2210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, void, uint64_t, unint64_t, uint64_t, id))
{
  v8 = a3();
  a4(v4, *(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32, v8);
}

double OS_geom_triangle_mesh_bvh_3d.closestPoint(to:)@<D0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, __n128 a4@<Q5>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = 0.0;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14[0] = a2;
  v14[1] = a3;
  geom_triangle_mesh_bvh_closest_point_3d(v4, v14, v18, &v17, &v15, v13, a4);
  result = *v13;
  v7 = v13[1];
  v8 = v18[0];
  v9 = v17;
  v10 = v15;
  v11 = v16;
  LOBYTE(v14[0].f64[0]) = 0;
  *a1 = v13[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2500A2420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v7 = a5(*(a1 + 16), a1 + 32, *(a2 + 16), a2 + 32, a3, a4);

  *a6 = v7;
  return result;
}

uint64_t sub_2500A24A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, void, uint64_t, void, uint64_t, unint64_t)@<X7>, uint64_t *a7@<X8>)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a5))
  {
    v8 = a6(*(result + 16), result + 32, *(a2 + 16), a2 + 32, *a3, a4, a5);

    *a7 = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2500A253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v5 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  *a4 = v5;
  return result;
}

void sub_2500A25C4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, unint64_t, uint64_t, void)@<X5>, uint64_t *a5@<X8>)
{
  v6 = *a3;
  v7 = a4(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32, *a3);

  *a5 = v7;
}

void sub_2500A2648(uint64_t a1, double a2, __n128 a3)
{
  v4 = *(a1 + 32);
  v5 = *v3;
  a3.n128_u64[0] = *(a1 + 16);
  v6 = *(a1 + 48);
  OS_geom_triangle_mesh_bvh_3d.raycast(ray:)(*a1, a3);
}

double sub_2500A26A4@<D0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q5>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = *v3;
  v20[0] = 0.0;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16[0] = v5;
  v16[1] = v6;
  geom_triangle_mesh_bvh_closest_point_3d(v7, v16, v20, &v19, &v17, v15, a3);
  result = *v15;
  v9 = v15[1];
  v10 = v20[0];
  v11 = v19;
  v12 = v17;
  v13 = v18;
  LOBYTE(v16[0].f64[0]) = 0;
  *a2 = v15[0];
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

double OS_geom_bezier_curve_bvh_2f.closestPoint(to:)(float32x2_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v4 = 0;
  v5 = 0;
  result = geom_bezier_curve_bvh_closest_point_2f(v1, &v6, &v5, &v4, a1);
  LOBYTE(v6) = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500A28F8(float32x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *v2;
  v11[0] = 0;
  v10 = 0;
  v6 = geom_bezier_curve_bvh_closest_point_2f(v5, v11 + 1, v11, &v10, v4);
  v7 = v10;
  v8 = HIDWORD(v11[0]) | (LODWORD(v11[0]) << 32);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 20) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2500A29A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a5(*(a1 + 16), a1 + 32, a2 + 32, a3, a4);

  return v5;
}

uint64_t sub_2500A2A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v3 = a3(*(a1 + 16), a1 + 32, a2 + 32);

  return v3;
}

uint64_t sub_2500A2A90(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t, uint64_t, void *))
{
  v5 = a4(*(a1 + 16), a1 + 32, a2 + 32, a3);

  return v5;
}

void sub_2500A2B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, void, uint64_t, uint64_t, id))
{
  v8 = a3();
  a4(v4, *(a1 + 16), a1 + 32, a2 + 32, v8);
}

void OS_geom_bezier_curve_bvh_2d.closestPoint(to:)(uint64_t a1@<X8>, float64x2_t a2@<Q0>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0.0;
  v10 = 0;
  v9 = 0.0;
  geom_bezier_curve_bvh_closest_point_2d(v2, v11, &v10, &v9, a2);
  v4 = v11[0];
  v5 = v10;
  v6 = v9;
  *a1 = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2500A2C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v7 = a5(*(a1 + 16), a1 + 32, a2 + 32, a3, a4);

  *a6 = v7;
  return result;
}

uint64_t sub_2500A2CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v5 = a3(*(a1 + 16), a1 + 32, a2 + 32);

  *a4 = v5;
  return result;
}

void sub_2500A2D4C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t, void)@<X5>, uint64_t *a5@<X8>)
{
  v6 = *a3;
  v7 = a4(*(a1 + 16), a1 + 32, a2 + 32, *a3);

  *a5 = v7;
}

void sub_2500A2DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, void, uint64_t, uint64_t, id))
{
  v10 = *v6;
  v11 = a5();
  a6(v10, *(a1 + 16), a1 + 32, a2 + 32, v11);
}

void sub_2500A2E80(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *v2;
  v13[0] = 0.0;
  v12 = 0;
  v11 = 0.0;
  geom_bezier_curve_bvh_closest_point_2d(v5, v13, &v12, &v11, v4);
  v6 = v13[0];
  v7 = v12;
  v8 = v11;
  *a2 = v9;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t (*sub_2500A2F40(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_should_copy_input_data_2f(v3);
  return sub_2500A2F8C;
}

uint64_t (*sub_2500A2FB0(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_build_strategy_2f(v3);
  return sub_2500A2FFC;
}

uint64_t (*sub_2500A3038(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_should_copy_input_data_3f(v3);
  return sub_2500A3084;
}

uint64_t (*sub_2500A30A8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_build_strategy_3f(v3);
  return sub_2500A30F4;
}

uint64_t (*sub_2500A3130(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_should_copy_input_data_2d(v3);
  return sub_2500A317C;
}

uint64_t (*sub_2500A31A0(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_build_strategy_2d(v3);
  return sub_2500A31EC;
}

uint64_t (*sub_2500A3228(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_should_copy_input_data_3d(v3);
  return sub_2500A3274;
}

uint64_t (*sub_2500A3298(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_kd_tree_create_opt_get_build_strategy_3d(v3);
  return sub_2500A32E4;
}

uint64_t KDTree.value(atNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 136))(a2, a3);
  (*(a3 + 104))(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  sub_2500BFBA8();

  return swift_unknownObjectRelease();
}

uint64_t OS_geom_kd_tree_2f.init(points:strategy:)(uint64_t a1, int a2)
{
  kd_tree_2f = geom_create_kd_tree_2f(*(a1 + 16), a1 + 32, a2);

  return kd_tree_2f;
}

OS_geom_kd_tree_2f __swiftcall OS_geom_kd_tree_2f.init(points:)(Swift::OpaquePointer points)
{
  kd_tree_with_default_options_2f = geom_create_kd_tree_with_default_options_2f(*(points._rawValue + 2), points._rawValue + 32);

  return kd_tree_with_default_options_2f;
}

void *OS_geom_kd_tree_2f.points.getter()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = geom_kd_tree_points_2f(v0, v8);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v1;
    v4 = sub_25009D734(v8[0], 0);
    memcpy(v4 + 4, v3, 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *MEMORY[0x277D85DE8];
  v6 = (2 * v4[2]) | 1;
  return v4;
}

uint64_t OS_geom_kd_tree_3f.init(points:strategy:)(uint64_t a1, int a2)
{
  kd_tree_3f = geom_create_kd_tree_3f(*(a1 + 16), a1 + 32, a2);

  return kd_tree_3f;
}

OS_geom_kd_tree_3f __swiftcall OS_geom_kd_tree_3f.init(points:)(Swift::OpaquePointer points)
{
  kd_tree_with_default_options_3f = geom_create_kd_tree_with_default_options_3f(*(points._rawValue + 2), points._rawValue + 32);

  return kd_tree_with_default_options_3f;
}

uint64_t OS_geom_kd_tree_3f.points.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A3A70(geom_kd_tree_points_3f, sub_25009D728);
}

uint64_t OS_geom_kd_tree_2d.init(points:strategy:)(uint64_t a1, int a2)
{
  kd_tree_2d = geom_create_kd_tree_2d(*(a1 + 16), a1 + 32, a2);

  return kd_tree_2d;
}

OS_geom_kd_tree_2d __swiftcall OS_geom_kd_tree_2d.init(points:)(Swift::OpaquePointer points)
{
  kd_tree_with_default_options_2d = geom_create_kd_tree_with_default_options_2d(*(points._rawValue + 2), points._rawValue + 32);

  return kd_tree_with_default_options_2d;
}

uint64_t OS_geom_kd_tree_2d.points.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2500A3A70(geom_kd_tree_points_2d, sub_25009D738);
}

uint64_t sub_2500A3A70(uint64_t (*a1)(uint64_t, void *), uint64_t (*a2)(void, void))
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v4 = a1(v2, v11);
  v5 = v11[0];
  if (v11[0])
  {
    v6 = v4;
    v7 = a2(v11[0], 0);
    memcpy((v7 + 32), v6, 16 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *MEMORY[0x277D85DE8];
  v9 = (2 * *(v7 + 16)) | 1;
  return v7;
}

uint64_t OS_geom_kd_tree_3d.init(points:strategy:)(uint64_t a1, int a2)
{
  kd_tree_3d = geom_create_kd_tree_3d(*(a1 + 16), a1 + 32, a2);

  return kd_tree_3d;
}

OS_geom_kd_tree_3d __swiftcall OS_geom_kd_tree_3d.init(points:)(Swift::OpaquePointer points)
{
  kd_tree_with_default_options_3d = geom_create_kd_tree_with_default_options_3d(*(points._rawValue + 2), points._rawValue + 32);

  return kd_tree_with_default_options_3d;
}

uint64_t sub_2500A3CEC(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t, void *))
{
  v4 = a3(*(a1 + 16), a1 + 32, a2);

  return v4;
}

void sub_2500A3D70(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t, id))
{
  v6 = a2();
  a3(v3, *(a1 + 16), a1 + 32, v6);
}

void *OS_geom_kd_tree_3d.points.getter()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = geom_kd_tree_points_3d(v0, v8);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v1;
    v4 = sub_25009D72C(v8[0], 0);
    memcpy(v4 + 4, v3, 32 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *MEMORY[0x277D85DE8];
  v6 = (2 * v4[2]) | 1;
  return v4;
}

uint64_t sub_2500A3EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v5 = a3(*(a1 + 16), a1 + 32, a2);

  *a4 = v5;
  return result;
}

uint64_t sub_2500A3F28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v4 = a2(*(a1 + 16), a1 + 32);

  *a3 = v4;
  return result;
}

void sub_2500A3F8C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, uint64_t, void)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = a3(*(a1 + 16), a1 + 32, *a2);

  *a4 = v6;
}

void sub_2500A4010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, void, uint64_t, id))
{
  v8 = *v5;
  v9 = a4();
  a5(v8, *(a1 + 16), a1 + 32, v9);
}

uint64_t sub_2500A40E4(float64x2_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v6[0] = v2;
  v6[1] = v3;
  return geom_kd_tree_find_closest_3d(v4, v6);
}

uint64_t sub_2500A4114(float64x2_t *a1, double *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *v3;
  v9[0] = v4;
  v9[1] = v5;
  return geom_kd_tree_find_within_radius_3d(v7, v9, a3, v6);
}

uint64_t sub_2500A4180@<X0>(unsigned int *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2, a2[1]);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_2500A41C0(unsigned int *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a3 = v5(*a1, *a2);
}

uint64_t sub_2500A41F8@<X0>(unsigned int *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2, COERCE_FLOAT(a2->n128_u64[1]), a2[1], COERCE_FLOAT(a2[1].n128_u64[1]));
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_2500A4240(unsigned int *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *&v7 = v5(*a1, *a2);
  *a3 = v7;
}

uint64_t sub_2500A4278@<X0>(unsigned int *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2, a2[1]);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

void sub_2500A42B8(unsigned int *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *&v7 = v5(*a1, *a2);
  *a3 = v7;
}

uint64_t sub_2500A42F0@<X0>(unsigned int *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2, a2[1].n128_f64[0], a2[2], a2[3].n128_f64[0]);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

void sub_2500A433C(unsigned int *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *&v7 = v5(*a1, *a2, a2[1]);
  *a3 = v7;
  a3[1] = v8;
}

uint64_t sub_2500A4374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2500A474C(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA628, &qword_27F3BA630, &off_27969BC08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A47A0(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA638, &qword_27F3BA640, off_27969BC00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A47F4(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA648, &qword_27F3BA650, off_27969BA00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A4848(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA658, &qword_27F3BA660, off_27969B9F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A49DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *keypath_getTm_0@<X0>(uint64_t *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2(&v8);
  v6 = v9;
  v7 = v10;
  *a3 = v8;
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  return result;
}

void sub_2500A4CC4(uint64_t a1)
{
  type metadata accessor for BVHBuiltInCreateStrategy(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_2500A4D50(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = ((*(v3 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v4 == 4 || ((*(v3 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 | 1;
  if ((v4 | 1) <= 3)
  {
    v6 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v7 = 1;
  }

  if (v6 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = *&a1[v5];
      if (*&a1[v5])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *&a1[v5];
      if (v9)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v13 = a1[v4];
    if (v13 >= 2)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = a1[v5];
  if (!a1[v5])
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = (v9 - 1) << (8 * v5);
  if (v5 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) + 255;
}

void sub_2500A4E3C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 == 4 || ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = 4;
  }

  v7 = v6 | 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v7] = 0;
    }

    else if (v10)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v6] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v7 <= 3)
  {
    v8 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = a2 - 255;
  v12 = (a2 - 255) >> 8;
  bzero(a1, v6 | 1);
  if (v7 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 <= 3)
  {
    *a1 = v11;
    if (v10 > 1)
    {
LABEL_21:
      if (v10 == 2)
      {
        *&a1[v7] = v13;
      }

      else
      {
        *&a1[v7] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v10)
  {
    a1[v7] = v13;
  }
}

uint64_t dispatch thunk of BVH2.primitives(forNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 160))();
}

{
  return (*(a3 + 168))();
}

uint64_t dispatch thunk of BVH3.primitives(forNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 160))();
}

{
  return (*(a3 + 168))();
}

double sub_2500A549C(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8[0] = a2;
  v8[1] = a3;
  v4(&v7, a1, v8);
  return *&v7;
}

uint64_t sub_2500A54DC(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v6(&v9, a1, v10);
  return v9;
}

double sub_2500A5524(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v3(&v6, a1, &v7);
  return *&v6;
}

uint64_t sub_2500A5564(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8[0] = a2;
  v8[1] = a3;
  v4(&v7, a1, v8);
  return v7;
}

unint64_t sub_2500A55A8(uint64_t a1, __n128 a2, float a3, __n128 a4, float a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  a2.n128_f32[2] = a3;
  a4.n128_f32[2] = a5;
  v10[0] = a2;
  v10[1] = a4;
  v6(&v9, a1, v10);
  return v9 | (BYTE4(v9) << 32);
}

double sub_2500A5600(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v3(&v6, a1, &v7);
  return v6;
}

unint64_t sub_2500A5640(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *v8 = a2;
  *&v8[1] = a3;
  v4(&v7, a1, v8);
  return v7 | (BYTE4(v7) << 32);
}

uint64_t PointTree.init(points:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  v30 = v10;
  v19 = *(v10 + 16);
  v34 = a2;
  v19(&v29 - v17, a2, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v31 = a4;
  v33 = a3;
  v21 = swift_getAssociatedTypeWitness();
  v22 = sub_2500BFAA8();
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    a4 = v22;
    v29 = v15;
    v19(v15, v18, AssociatedTypeWitness);

    if ((_swift_isClassOrObjCExistentialType() & 1) == 0 || (a1 & 0x8000000000000000) == 0 && (a1 & 0x4000000000000000) == 0)
    {

      if (_swift_isClassOrObjCExistentialType())
      {
        v23 = ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + (a1 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v23 = a1 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80));
      }

      goto LABEL_8;
    }
  }

  if (sub_2500BFAA8())
  {
    v35 = a1;
    sub_2500BFBB8();
    swift_getWitnessTable();
    sub_2500BFBC8();
    v28 = swift_unknownObjectRetain();
    v23 = MEMORY[0x25305E110](v28, v21);

    goto LABEL_14;
  }

  v23 = 0;
LABEL_8:
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    swift_unknownObjectRetain();
  }

  else
  {
    _swift_isClassOrObjCExistentialType();
  }

  if (!v23)
  {
    v23 = (~*(*(v21 - 8) + 80) | 0xFFFFFF00);
  }

LABEL_14:
  v24 = v34;
  v25 = v30;
  (*(v31 + 64))(a4, v23, v29, v33);
  v26 = *(v25 + 8);
  v26(v24, AssociatedTypeWitness);
  v26(v18, AssociatedTypeWitness);
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2500A5B04(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_should_copy_input_data_f(v3);
  return sub_2500A5B50;
}

uint64_t (*sub_2500A5B8C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_uniform_f(v3);
  return sub_2500A5BD8;
}

uint64_t (*sub_2500A5C14(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_max_depth_f(v3);
  return sub_2500A5C60;
}

uint64_t (*sub_2500A5C9C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_bucket_size_f(v3);
  return sub_2500A5CE8;
}

void *OS_geom_quadtree_f.data(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A6EAC(a1, geom_quadtree_get_data_f);
}

void sub_2500A5DC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  quadtree_f = geom_create_quadtree_f(a1, a2, *a3);

  *a4 = quadtree_f;
}

uint64_t sub_2500A5F20(int a1, _OWORD *a2)
{
  v8[1] = *a2;
  v4 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2500A79FC;
  *(v5 + 24) = v8;
  aBlock[4] = sub_2500A79DC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2500A7A00;
  aBlock[3] = &block_descriptor_31;
  v6 = _Block_copy(aBlock);

  geom_quadtree_traverse_f(v4, a1, v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2500A60A8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_should_copy_input_data_d(v3);
  return sub_2500A60F4;
}

uint64_t (*sub_2500A6130(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_uniform_d(v3);
  return sub_2500A617C;
}

uint64_t (*sub_2500A61B8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_max_depth_d(v3);
  return sub_2500A6204;
}

uint64_t (*sub_2500A6240(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_quadtree_create_opt_get_bucket_size_d(v3);
  return sub_2500A628C;
}

void *OS_geom_quadtree_d.data(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A6EAC(a1, geom_quadtree_get_data_d);
}

void sub_2500A6334(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = geom_quadtree_get_node_bbox_d(*v2, a1);
  *a2 = v4;
  a2[1] = v5;
}

void sub_2500A6364(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  quadtree_d = geom_create_quadtree_d(a1, a2, *a3);

  *a4 = quadtree_d;
}

uint64_t sub_2500A64C4(int a1, _OWORD *a2)
{
  v8[1] = *a2;
  v4 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2500A79FC;
  *(v5 + 24) = v8;
  aBlock[4] = sub_2500A79DC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2500A7A00;
  aBlock[3] = &block_descriptor_24;
  v6 = _Block_copy(aBlock);

  geom_quadtree_traverse_d(v4, a1, v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_2500A65F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t (*sub_2500A66A8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_should_copy_input_data_f(v3);
  return sub_2500A66F4;
}

uint64_t (*sub_2500A6730(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_uniform_f(v3);
  return sub_2500A677C;
}

uint64_t (*sub_2500A67B8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_max_depth_f(v3);
  return sub_2500A6804;
}

uint64_t (*sub_2500A6840(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_bucket_size_f(v3);
  return sub_2500A688C;
}

void *OS_geom_octree_f.data(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A6EAC(a1, geom_octree_get_data_f);
}

void sub_2500A6934(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  geom_octree_get_node_bbox_f(*v2, a1);
  *a2 = v4;
  a2[1] = v5;
}

void sub_2500A6964(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  octree_f = geom_create_octree_f(a1, a2, *a3);

  *a4 = octree_f;
}

uint64_t sub_2500A6AC4(int a1, _OWORD *a2)
{
  v8[1] = *a2;
  v4 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2500A79FC;
  *(v5 + 24) = v8;
  aBlock[4] = sub_2500A79DC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2500A7A00;
  aBlock[3] = &block_descriptor_17;
  v6 = _Block_copy(aBlock);

  geom_octree_traverse_f(v4, a1, v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2500A6C4C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_should_copy_input_data_d(v3);
  return sub_2500A6C98;
}

uint64_t (*sub_2500A6CD4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_uniform_d(v3);
  return sub_2500A6D20;
}

uint64_t (*sub_2500A6D5C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_max_depth_d(v3);
  return sub_2500A6DA8;
}

uint64_t (*sub_2500A6DE4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_octree_create_opt_get_bucket_size_d(v3);
  return sub_2500A6E30;
}

void *OS_geom_octree_d.data(forNode:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return sub_2500A6EAC(a1, geom_octree_get_data_d);
}

void *sub_2500A6EAC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = a2(v2, a1, v10);
  v4 = v10[0];
  if (v10[0] < 0)
  {
    __break(1u);
  }

  if (v10[0])
  {
    v5 = v3;
    v6 = sub_25009D73C(v10[0], 0);
    memcpy(v6 + 4, v5, 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *MEMORY[0x277D85DE8];
  v8 = (2 * v6[2]) | 1;
  return v6;
}

double sub_2500A6F78@<D0>(_OWORD *a1@<X8>)
{
  geom_octree_get_bbox_d(*v1, v7);
  result = *v7;
  v4 = v7[1];
  v5 = v7[2];
  v6 = v7[3];
  *a1 = v7[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

float64_t sub_2500A6FBC@<D0>(unint64_t a1@<X0>, float64x2_t *a2@<X8>, __n128 a3@<Q0>)
{
  geom_octree_get_node_bbox_d(*v3, a1, v9, a3);
  result = v9[0].f64[0];
  v6 = v9[1];
  v7 = v9[2];
  v8 = v9[3];
  *a2 = v9[0];
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

void sub_2500A7004(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  octree_d = geom_create_octree_d(a1, a2, *a3);

  *a4 = octree_d;
}

void sub_2500A7070(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, uint64_t)@<X4>, uint64_t (*a4)(void, uint64_t, void *)@<X5>, uint64_t *a5@<X8>)
{
  v8 = *a2;
  a3(*a2, 1);
  v9 = a4(*(a1 + 16), a1 + 32, v8);

  *a5 = v9;
}

double sub_2500A7160@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>, __n128 a3@<Q0>)
{
  geom_octree_get_centroid_d(*v3, a1, v7, a3);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_2500A71A0(float64x2_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v6[0] = v2;
  v6[1] = v3;
  return geom_octree_locate_d(v4, v6);
}

uint64_t sub_2500A71EC(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v6[0] = v2;
  v6[1] = v3;
  return geom_octree_find_closest_point_d(v4, v6);
}

double sub_2500A721C(__int128 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v3;
  v8[0] = v4;
  v8[1] = v5;
  *&result = geom_octree_find_k_nearest_d(v6, v8, a2, a3).n128_u64[0];
  return result;
}

uint64_t sub_2500A7254(int a1, _OWORD *a2)
{
  v8[1] = *a2;
  v4 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2500A7940;
  *(v5 + 24) = v8;
  aBlock[4] = sub_2500A7954;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2500A7A00;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  geom_octree_traverse_d(v4, a1, v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2500A73F8(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA728, &qword_27F3BA730, off_27969BBC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A74A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2500A74E8(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA738, &qword_27F3BA740, off_27969BBC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A7590(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA748, &qword_27F3BA750, off_27969BB88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A7638(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3BA758, &qword_27F3BA760, off_27969BB80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A7954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2500A7994(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_2500A7A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t))
{
  v3 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  return v3;
}

uint64_t static DopAxes3.axisCount.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2500BFC28();
  v2 = sub_2500BFB98();
  swift_unknownObjectRelease();
  return v2;
}

double sub_2500A7BCC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_2500A7BD8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double sub_2500A7C04@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_2500A7C10(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 sub_2500A7C3C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_2500A7C48(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 sub_2500A7C54@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 sub_2500A7C60(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t sub_2500A7C8C(uint64_t a1)
{
  result = sub_2500A8238(&qword_27F3BA768, type metadata accessor for BBox3f);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_2500A7CFC@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_2500A7D08(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

__n128 sub_2500A7D14(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_2500A7D40(uint64_t a1)
{
  result = sub_2500A8238(&qword_27F3BA770, type metadata accessor for BBox3d);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2500A7ED0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  result = (v6 >> 1) - v4;
  if (__OFSUB__(v6 >> 1, v4))
  {
    __break(1u);
  }

  return result;
}

double sub_2500A7F10@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_2500A7F1C(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

double sub_2500A7F28@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

double sub_2500A7F34(double *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

__n128 sub_2500A7F60@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 sub_2500A7F6C(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 sub_2500A7F78@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 sub_2500A7F84(__n128 *a1)
{
  result = *a1;
  v1[3] = *a1;
  return result;
}

__n128 sub_2500A7FB0@<Q0>(__n128 *a1@<X8>)
{
  result = v1[4];
  *a1 = result;
  return result;
}

__n128 sub_2500A7FBC(__n128 *a1)
{
  result = *a1;
  v1[4] = *a1;
  return result;
}

__n128 sub_2500A7FE8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_2500A7FF4(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

__n128 sub_2500A8000@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 128);
  v3 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_2500A800C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v3;
  return result;
}

uint64_t sub_2500A8128@<X0>(double *a1@<X0>, uint64_t (*a2)(double, double)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  return result;
}

float sub_2500A815C@<S0>(float *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

float sub_2500A8168(float *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t sub_2500A8238(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2500A82B0@<D0>(__n128 *a1@<X0>, void (*a2)(__int128 *__return_ptr, __n128, __n128)@<X3>, uint64_t a3@<X8>)
{
  a2(&v6, *a1, a1[1]);
  result = *&v6;
  v5 = v7;
  *a3 = v6;
  *(a3 + 16) = v5;
  return result;
}

void sub_2500A82F8(float64x2_t *a1@<X0>, float64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v5 = *v2;
  v6 = v4;
  *a2 = geom_signed_distance_point_to_line_2d(&v5, v3);
}

void sub_2500A8370(float64x2_t *a1@<X0>, float64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9[0] = *a1;
  v9[1] = v3;
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;
  *a2 = geom_signed_distance_point_to_plane_point_normal_3d(v9, v8);
}

double sub_2500A83C0@<D0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  geom_plane_from_point_and_normal_3f(&v6, *a1, *a2);
  result = v6.n128_f64[0];
  v5 = v7;
  *a3 = v6;
  a3[1].n128_u32[0] = v5;
  return result;
}

float sub_2500A8408@<S0>(float *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

float sub_2500A8414(float *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

void sub_2500A8438(__n128 *a1@<X0>, float (*a2)(__int128 *, __n128)@<X3>, float *a3@<X8>)
{
  v4 = *a1;
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = v5;
  *a3 = a2(&v6, v4);
}

double sub_2500A8484@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v13[0] = *a1;
  v13[1] = v4;
  v12[0] = v5;
  v12[1] = v6;
  geom_plane_from_point_and_normal_3d(v13, v12, v10);
  result = *v10;
  v8 = v10[1];
  v9 = v11;
  *a3 = v10[0];
  *(a3 + 16) = v8;
  *(a3 + 32) = v9;
  return result;
}

double sub_2500A84DC@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double sub_2500A84E8(double *a1)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

void sub_2500A850C(_OWORD *a1@<X0>, double (*a2)(_OWORD *, _OWORD *)@<X3>, double *a3@<X8>)
{
  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  v10[0] = *a1;
  v10[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  *a3 = a2(v10, v8);
}

uint64_t dispatch thunk of Line2.init(colinearWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 56))();
}

{
  return (*(a3 + 64))();
}

uint64_t dispatch thunk of CubicBezier2.init(elevateFrom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 104))();
}

{
  return (*(a3 + 112))();
}

float64_t geom_plane_from_point_and_normal_3d@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  *(a3 + 40) = 0;
  *a3 = v5;
  *(a3 + 16) = v6;
  result = vmulq_f64(v6, vnegq_f64(v3)).f64[0] + vaddvq_f64(vmulq_f64(v5, vnegq_f64(v4)));
  *(a3 + 32) = result;
  return result;
}

float geom_plane_from_point_and_normal_3f@<S0>(__n128 *a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>)
{
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  *a1 = a3;
  v3 = vmulq_f32(a3, vnegq_f32(a2));
  result = v3.f32[2] + vaddv_f32(*v3.f32);
  a1[1].n128_f32[0] = result;
  return result;
}

double geom_line_from_ray_2d@<D0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, int64x2_t a3@<Q1>, int64x2_t a4@<Q2>)
{
  *a4.i64 = -*&a3.i64[1];
  v4 = vzip1q_s64(a4, a3);
  v5 = vmulq_n_f64(v4, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v4, v4))));
  *(a1 + 24) = 0;
  *a1 = v5;
  result = -vaddvq_f64(vmulq_f64(a2, v5));
  *(a1 + 16) = result;
  return result;
}

double geom_line_from_line_segment_2d@<D0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v3 = vsubq_f64(vextq_s8(a2, a3, 8uLL), vextq_s8(a3, a2, 8uLL));
  v4 = vmulq_n_f64(v3, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v3, v3))));
  *(a1 + 24) = 0;
  *a1 = v4;
  result = -vaddvq_f64(vmulq_f64(a2, v4));
  *(a1 + 16) = result;
  return result;
}

uint64_t geom_line_from_ray_2f(double a1, int32x2_t a2, double a3)
{
  *&a3 = -*&a2.i32[1];
  v3 = vzip1_s32(*&a3, a2);
  v4 = vmul_f32(v3, v3);
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  return vmul_n_f32(v3, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
}

uint64_t geom_line_from_line_segment_2f(int8x8_t a1, int8x8_t a2)
{
  v2 = vsub_f32(vext_s8(a1, a2, 4uLL), vext_s8(a2, a1, 4uLL));
  v3 = vmul_f32(v2, v2);
  v3.i32[0] = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
  v4 = vrsqrte_f32(v3.u32[0]);
  v5 = vmul_f32(v4, vrsqrts_f32(v3.u32[0], vmul_f32(v4, v4)));
  return vmul_n_f32(v2, vmul_f32(v5, vrsqrts_f32(v3.u32[0], vmul_f32(v5, v5))).f32[0]);
}

double geom_signed_distance_point_to_sphere_3d(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vsubq_f64(*a1, *a2);
  v3 = vsubq_f64(a1[1], a2[1]);
  return sqrt(vmulq_f64(v3, v3).f64[0] + vaddvq_f64(vmulq_f64(v2, v2))) - a2[2].f64[0];
}

float geom_signed_distance_point_to_sphere_3f(float32x4_t *a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *a1);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)) - a1[1].f32[0];
}

uint64_t sub_2500A9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(v4);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = a4(v4);
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_12:
  v12 = __OFADD__(a1, a2);
  v11 = a1 + a2;
  if (v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = a4(v4);
  if ((v11 & 0x8000000000000000) == 0 && result >= v11)
  {
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2500A94E4(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_f(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A95A0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A95B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_d(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9674;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_2500A968C(id **a1, char a2, void (*a3)(id, id, id, id, id, id))
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  if (a2)
  {
    v11 = v9;
    a3(v8, v10, v7, v5, v6, v11);
  }

  else
  {
    a3((*a1)[5], v10, v7, v5, v6, v9);
  }

  free(v4);
}

uint64_t sub_2500A9740(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_u16(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A97FC;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9814(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_u(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A98D0;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_2500A9910(id **a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(id, id, id, id, id, id, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = **a1;
  v10 = (*a1)[1];
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  if (a2)
  {
    v15 = v13;
    a5(v12, v14, v11, v9, v10, v15, a3, a4);
  }

  else
  {
    a5((*a1)[5], v14, v11, v9, v10, v13, a3, a4);
  }

  free(v8);
}

uint64_t sub_2500A99E4(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_u64(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9AA0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9AB8(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_i(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9B74;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9BB4(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_i8(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9C70;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9C88(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_2f(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9D44;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9D5C(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_3f(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9E18;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9E58(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_4f(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500A9F14;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500A9F54(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_2d(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500AA010;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500AA028(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_3d(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500AA0E4;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2500AA124(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = geom_collection_size_4d(v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;
    v11 = v9;
    return sub_2500AA1E0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t GeometryCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = (*(a3 + 32))(a2, a3);
  v8 = *(*(*(a3 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 16);
  v12 = v7 + *(v10 + 72) * a1;

  return v11(a4, v12, AssociatedTypeWitness);
}

uint64_t sub_2500AA300(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(*(*(v7 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v17 - v12;
  v14 = *a3;
  (*(v15 + 16))(&v17 - v12, a1);
  return GeometryCollection.subscript.setter(v13, v14, v6, v7);
}

uint64_t GeometryCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 32))(a3, a4);
  v8 = *(*(*(a4 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 40);
  v12 = AssociatedTypeWitness;
  v13 = v7 + *(v10 + 72) * a2;

  return v11(v13, a1, v12);
}

void (*GeometryCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(*(*(a4 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  GeometryCollection.subscript.getter(a2, a3, a4, v16);
  return sub_2500AA620;
}

void sub_2500AA620(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    v10 = *v2;
    v9 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    GeometryCollection.subscript.setter(v3, v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[3];
    GeometryCollection.subscript.setter((*a1)[7], *v2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Int __swiftcall GeometryCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *sub_2500AA708@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_f();
  *a1 = result;
  return result;
}

float sub_2500AA738@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(geom_collection_data_f(*v2) + 4 * a1);
  *a2 = result;
  return result;
}

void (*sub_2500AA780(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_f(v3);
  return sub_2500AA7CC;
}

uint64_t sub_2500AA7D8(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA788, &qword_27F3BA790, off_27969BA80);
  result = sub_250090B94(&qword_27F3BA798, &qword_27F3BA790, off_27969BA80);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AA8B0()
{
  result = qword_27F3BA7A8;
  if (!qword_27F3BA7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA7B0, &qword_2500D43C0);
    sub_250090B94(&qword_27F3BA798, &qword_27F3BA790, off_27969BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA7A8);
  }

  return result;
}

unint64_t sub_2500AA964()
{
  result = qword_27F3BA7C0;
  if (!qword_27F3BA7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA7B0, &qword_2500D43C0);
    sub_250090B94(&qword_27F3BA788, &qword_27F3BA790, off_27969BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA7C0);
  }

  return result;
}

uint64_t sub_2500AAA14(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_f(*v2);
  *(result + 4 * v4) = v3;
  return result;
}

uint64_t (*sub_2500AAA4C(uint64_t a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(geom_collection_data_f(v5) + 4 * v4);
  return sub_2500AAAA8;
}

uint64_t sub_2500AAAA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  result = geom_collection_data_f(a1[1]);
  *(result + 4 * v1) = v2;
  return result;
}

uint64_t (*sub_2500AAAF8(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A94E4(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500AAB70@<X0>(uint64_t (*a1)(int *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B3F68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2500AAB9C(void *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(geom_collection_data_f(*v2) + 4 * v3);
    v7 = *(geom_collection_data_f(v5) + 4 * v4);
    *(geom_collection_data_f(v5) + 4 * v3) = v7;
    result = geom_collection_data_f(v5);
    *(result + v4) = v6;
  }

  return result;
}

unint64_t sub_2500AAD4C()
{
  result = qword_27F3BA7C8;
  if (!qword_27F3BA7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA7B0, &qword_2500D43C0);
    sub_250090B94(&qword_27F3BA7A0, &qword_27F3BA790, off_27969BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA7C8);
  }

  return result;
}

uint64_t sub_2500AAE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v7 = *v5;
  result = sub_2500A9408(*a1, a2, *a3, a4);
  *a5 = result;
  *(a5 + 8) = v9 & 1;
  return result;
}

uint64_t sub_2500AAF3C@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_f(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AAF68(_DWORD *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_f(*v2) + 4 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500AB03C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500AB090()
{
  v1 = *v0;
  v2 = sub_2500B4DA4(*v0);

  return v2;
}

void *sub_2500AB164@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_d();
  *a1 = result;
  return result;
}

double sub_2500AB194@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(geom_collection_data_d(*v2) + 8 * a1);
  *a2 = result;
  return result;
}

void (*sub_2500AB1DC(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_d(v3);
  return sub_2500AB228;
}

uint64_t sub_2500AB234(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA7F0, &qword_27F3BA7F8, off_27969BA78);
  result = sub_250090B94(&qword_27F3BA800, &qword_27F3BA7F8, off_27969BA78);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AB30C()
{
  result = qword_27F3BA810;
  if (!qword_27F3BA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA818, &qword_2500D4678);
    sub_250090B94(&qword_27F3BA800, &qword_27F3BA7F8, off_27969BA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA810);
  }

  return result;
}

unint64_t sub_2500AB3C0()
{
  result = qword_27F3BA828;
  if (!qword_27F3BA828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA818, &qword_2500D4678);
    sub_250090B94(&qword_27F3BA7F0, &qword_27F3BA7F8, off_27969BA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA828);
  }

  return result;
}

uint64_t sub_2500AB470(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_d(*v2);
  *(result + 8 * v4) = v3;
  return result;
}

uint64_t (*sub_2500AB4A8(void *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  a1[1] = *a2;
  a1[2] = v5;
  *a1 = *(geom_collection_data_d(v5) + 8 * v4);
  return sub_2500AB504;
}

uint64_t sub_2500AB504(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  result = geom_collection_data_d(a1[2]);
  *(result + 8 * v1) = v2;
  return result;
}

void sub_2500AB554(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void, void, void))
{
  v6 = a1[2];
  a5(v5, *a2, a2[1], *a1, a1[1]);
}

uint64_t (*sub_2500AB5A8(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A95B8(v4, *a2, a2[1]);
  return sub_250094CB8;
}

uint64_t sub_2500AB620@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B40A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_2500AB64C(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(geom_collection_data_d(*v2) + 8 * v3);
    v7 = *(geom_collection_data_d(v5) + 8 * v4);
    *(geom_collection_data_d(v5) + 8 * v3) = v7;
    result = geom_collection_data_d(v5);
    result[v4] = v6;
  }

  return result;
}

unint64_t sub_2500AB7FC()
{
  result = qword_27F3BA830;
  if (!qword_27F3BA830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA818, &qword_2500D4678);
    sub_250090B94(&qword_27F3BA808, &qword_27F3BA7F8, off_27969BA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA830);
  }

  return result;
}

uint64_t sub_2500AB9AC@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_d(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AB9D8(void *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_d(*v2) + 8 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

void *sub_2500ABA74@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2500ABA8C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_2500ABAF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500ABB48()
{
  v1 = *v0;
  v2 = sub_2500B4CEC(*v0);

  return v2;
}

void *sub_2500ABC1C@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_u16();
  *a1 = result;
  return result;
}

uint64_t sub_2500ABC4C@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  result = geom_collection_data_u16(*v2);
  *a2 = *(result + 2 * a1);
  return result;
}

void (*sub_2500ABC94(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_u16(v3);
  return sub_2500ABCE0;
}

uint64_t sub_2500ABCEC(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA858, &qword_27F3BA860, off_27969BAA0);
  result = sub_250090B94(&qword_27F3BA868, &qword_27F3BA860, off_27969BAA0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500ABDC4()
{
  result = qword_27F3BA878;
  if (!qword_27F3BA878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA880, &qword_2500D4928);
    sub_250090B94(&qword_27F3BA868, &qword_27F3BA860, off_27969BAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA878);
  }

  return result;
}

unint64_t sub_2500ABE78()
{
  result = qword_27F3BA890;
  if (!qword_27F3BA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA880, &qword_2500D4928);
    sub_250090B94(&qword_27F3BA858, &qword_27F3BA860, off_27969BAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA890);
  }

  return result;
}

uint64_t sub_2500ABF28(__int16 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_u16(*v2);
  *(result + 2 * v4) = v3;
  return result;
}

uint64_t (*sub_2500ABF60(uint64_t a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(geom_collection_data_u16(v5) + 2 * v4);
  return sub_2500ABFBC;
}

uint64_t sub_2500ABFBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = geom_collection_data_u16(a1[1]);
  *(result + 2 * v1) = v2;
  return result;
}

uint64_t (*sub_2500AC004(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9740(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500AC07C@<X0>(uint64_t (*a1)(__int16 *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B41E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2500AC0A8(void *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(geom_collection_data_u16(*v2) + 2 * v3);
    v7 = *(geom_collection_data_u16(v5) + 2 * v4);
    *(geom_collection_data_u16(v5) + 2 * v3) = v7;
    result = geom_collection_data_u16(v5);
    *(result + v4) = v6;
  }

  return result;
}

unint64_t sub_2500AC258()
{
  result = qword_27F3BA898;
  if (!qword_27F3BA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA880, &qword_2500D4928);
    sub_250090B94(&qword_27F3BA870, &qword_27F3BA860, off_27969BAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA898);
  }

  return result;
}

uint64_t sub_2500AC408@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_u16(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AC434(_WORD *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_u16(*v2) + 2 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500AC508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500AC55C()
{
  v1 = *v0;
  v2 = sub_2500B5324(*v0);

  return v2;
}

void *sub_2500AC630@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_u();
  *a1 = result;
  return result;
}

uint64_t sub_2500AC660@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = geom_collection_data_u(*v2);
  *a2 = *(result + 4 * a1);
  return result;
}

void (*sub_2500AC6A8(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_u(v3);
  return sub_2500AC6F4;
}

uint64_t sub_2500AC700(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA8C0, &qword_27F3BA8C8, off_27969BA98);
  result = sub_250090B94(&qword_27F3BA8D0, &qword_27F3BA8C8, off_27969BA98);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AC7D8()
{
  result = qword_27F3BA8E0;
  if (!qword_27F3BA8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA8E8, &qword_2500D4BD8);
    sub_250090B94(&qword_27F3BA8D0, &qword_27F3BA8C8, off_27969BA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA8E0);
  }

  return result;
}

unint64_t sub_2500AC88C()
{
  result = qword_27F3BA8F8;
  if (!qword_27F3BA8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA8E8, &qword_2500D4BD8);
    sub_250090B94(&qword_27F3BA8C0, &qword_27F3BA8C8, off_27969BA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA8F8);
  }

  return result;
}

uint64_t sub_2500AC93C(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_u(*v2);
  *(result + 4 * v4) = v3;
  return result;
}

uint64_t (*sub_2500AC974(uint64_t a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(geom_collection_data_u(v5) + 4 * v4);
  return sub_2500AC9D0;
}

uint64_t sub_2500AC9D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  result = geom_collection_data_u(a1[1]);
  *(result + 4 * v1) = v2;
  return result;
}

void sub_2500ACA40(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void, void, void, void))
{
  v8 = a1[2];
  a7(v7, *a2, a2[1], *a1, a1[1]);
}

uint64_t (*sub_2500ACA9C(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9814(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500ACB14@<X0>(uint64_t (*a1)(int *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2500B4468(a1, a2, geom_collection_size_u, geom_collection_data_u);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_2500ACCC0()
{
  result = qword_27F3BA900;
  if (!qword_27F3BA900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA8E8, &qword_2500D4BD8);
    sub_250090B94(&qword_27F3BA8D8, &qword_27F3BA8C8, off_27969BA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA900);
  }

  return result;
}

uint64_t sub_2500ACE70@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_u(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500ACE9C(_DWORD *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_u(*v2) + 4 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500ACF70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

id sub_2500ACFC4()
{
  v1 = *v0;
  v2 = sub_2500B4E5C(*v0, geom_collection_size_u, sub_25009D730, geom_collection_data_u);

  return v2;
}

void *sub_2500AD0FC@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_u64();
  *a1 = result;
  return result;
}

uint64_t sub_2500AD12C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = geom_collection_data_u64(*v2);
  *a2 = *(result + 8 * a1);
  return result;
}

void (*sub_2500AD174(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_u64(v3);
  return sub_2500AD1C0;
}

uint64_t sub_2500AD1CC(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA928, &qword_27F3BA930, off_27969BAA8);
  result = sub_250090B94(&qword_27F3BA938, &qword_27F3BA930, off_27969BAA8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AD2A4()
{
  result = qword_27F3BA948;
  if (!qword_27F3BA948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA950, &qword_2500D4E88);
    sub_250090B94(&qword_27F3BA938, &qword_27F3BA930, off_27969BAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA948);
  }

  return result;
}

unint64_t sub_2500AD358()
{
  result = qword_27F3BA960;
  if (!qword_27F3BA960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA950, &qword_2500D4E88);
    sub_250090B94(&qword_27F3BA928, &qword_27F3BA930, off_27969BAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA960);
  }

  return result;
}

uint64_t sub_2500AD408(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_u64(*v2);
  *(result + 8 * v4) = v3;
  return result;
}

uint64_t (*sub_2500AD440(void *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  a1[1] = *a2;
  a1[2] = v5;
  *a1 = *(geom_collection_data_u64(v5) + 8 * v4);
  return sub_2500AD49C;
}

uint64_t sub_2500AD49C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  result = geom_collection_data_u64(a1[2]);
  *(result + 8 * v1) = v2;
  return result;
}

uint64_t (*sub_2500AD4E4(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A99E4(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500AD55C@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B4328(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_2500AD588(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(geom_collection_data_u64(*v2) + 8 * v3);
    v7 = *(geom_collection_data_u64(v5) + 8 * v4);
    *(geom_collection_data_u64(v5) + 8 * v3) = v7;
    result = geom_collection_data_u64(v5);
    result[v4] = v6;
  }

  return result;
}

unint64_t sub_2500AD738()
{
  result = qword_27F3BA968;
  if (!qword_27F3BA968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA950, &qword_2500D4E88);
    sub_250090B94(&qword_27F3BA940, &qword_27F3BA930, off_27969BAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA968);
  }

  return result;
}

uint64_t sub_2500AD8E8@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_u64(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AD914(void *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_u64(*v2) + 8 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500AD9E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500ADA3C()
{
  v1 = *v0;
  v2 = sub_2500B53DC(*v0);

  return v2;
}

void *sub_2500ADB10@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_i();
  *a1 = result;
  return result;
}

uint64_t sub_2500ADB40@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = geom_collection_data_i(*v2);
  *a2 = *(result + 4 * a1);
  return result;
}

void (*sub_2500ADB88(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_i(v3);
  return sub_2500ADBD4;
}

uint64_t sub_2500ADBE0(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA990, &qword_27F3BA998, off_27969BA88);
  result = sub_250090B94(&qword_27F3BA9A0, &qword_27F3BA998, off_27969BA88);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500ADCB8()
{
  result = qword_27F3BA9B0;
  if (!qword_27F3BA9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA9B8, &qword_2500D5138);
    sub_250090B94(&qword_27F3BA9A0, &qword_27F3BA998, off_27969BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA9B0);
  }

  return result;
}

unint64_t sub_2500ADD6C()
{
  result = qword_27F3BA9C8;
  if (!qword_27F3BA9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA9B8, &qword_2500D5138);
    sub_250090B94(&qword_27F3BA990, &qword_27F3BA998, off_27969BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA9C8);
  }

  return result;
}

uint64_t sub_2500ADE1C(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_i(*v2);
  *(result + 4 * v4) = v3;
  return result;
}

uint64_t (*sub_2500ADE54(uint64_t a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(geom_collection_data_i(v5) + 4 * v4);
  return sub_2500ADEB0;
}

uint64_t sub_2500ADEB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  result = geom_collection_data_i(a1[1]);
  *(result + 4 * v1) = v2;
  return result;
}

uint64_t (*sub_2500ADF20(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9AB8(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500ADF98@<X0>(uint64_t (*a1)(int *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2500B4468(a1, a2, geom_collection_size_i, geom_collection_data_i);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_2500AE004(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *result;
  v7 = *a2;
  if (*result != *a2)
  {
    v8 = *v5;
    v9 = *v5;
    v11 = *(a5(v9) + 4 * v6);
    v12 = *(a5(v8) + 4 * v7);
    *(a5(v8) + 4 * v6) = v12;
    result = a5(v8);
    *(result + v7) = v11;
  }

  return result;
}

unint64_t sub_2500AE1C8()
{
  result = qword_27F3BA9D0;
  if (!qword_27F3BA9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BA9B8, &qword_2500D5138);
    sub_250090B94(&qword_27F3BA9A8, &qword_27F3BA998, off_27969BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BA9D0);
  }

  return result;
}

uint64_t sub_2500AE378@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_i(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AE3A4(_DWORD *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_i(*v2) + 4 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500AE478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

id sub_2500AE4CC()
{
  v1 = *v0;
  v2 = sub_2500B4E5C(*v0, geom_collection_size_i, sub_25009CE9C, geom_collection_data_i);

  return v2;
}

void *sub_2500AE604@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_i8();
  *a1 = result;
  return result;
}

uint64_t sub_2500AE634@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = geom_collection_data_i8(*v2);
  *a2 = *(result + a1);
  return result;
}

void (*sub_2500AE67C(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_i8(v3);
  return sub_2500AE6C8;
}

uint64_t sub_2500AE6D4(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BA9F8, &qword_27F3BAA00, off_27969BA90);
  result = sub_250090B94(&qword_27F3BAA08, &qword_27F3BAA00, off_27969BA90);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AE7AC()
{
  result = qword_27F3BAA18;
  if (!qword_27F3BAA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAA20, &qword_2500D53E8);
    sub_250090B94(&qword_27F3BAA08, &qword_27F3BAA00, off_27969BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAA18);
  }

  return result;
}

unint64_t sub_2500AE860()
{
  result = qword_27F3BAA30;
  if (!qword_27F3BAA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAA20, &qword_2500D53E8);
    sub_250090B94(&qword_27F3BA9F8, &qword_27F3BAA00, off_27969BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAA30);
  }

  return result;
}

uint64_t sub_2500AE910(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_i8(*v2);
  *(result + v4) = v3;
  return result;
}

uint64_t (*sub_2500AE948(uint64_t a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(geom_collection_data_i8(v5) + v4);
  return sub_2500AE9A4;
}

uint64_t sub_2500AE9A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  result = geom_collection_data_i8(a1[1]);
  *(result + v1) = v2;
  return result;
}

uint64_t (*sub_2500AE9EC(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9BB4(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500AEA64@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B45E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2500AEA90(void *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(geom_collection_data_i8(*v2) + v3);
    v7 = *(geom_collection_data_i8(v5) + v4);
    *(geom_collection_data_i8(v5) + v3) = v7;
    result = geom_collection_data_i8(v5);
    *(result + v4) = v6;
  }

  return result;
}

unint64_t sub_2500AEC40()
{
  result = qword_27F3BAA38;
  if (!qword_27F3BAA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAA20, &qword_2500D53E8);
    sub_250090B94(&qword_27F3BAA10, &qword_27F3BAA00, off_27969BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAA38);
  }

  return result;
}

uint64_t sub_2500AEDF0@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_i8(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AEE1C(_BYTE *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_i8(*v2) + v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500AEEF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500AEF44()
{
  v1 = *v0;
  v2 = sub_2500B5270(*v0);

  return v2;
}

void *sub_2500AF018@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_2f();
  *a1 = result;
  return result;
}

double sub_2500AF048@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(geom_collection_data_2f(*v2) + 8 * a1);
  *a2 = result;
  return result;
}

void (*sub_2500AF090(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_2f(v3);
  return sub_2500AF0DC;
}

uint64_t sub_2500AF0E8(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BAA60, &qword_27F3BAA68, off_27969BA50);
  result = sub_250090B94(&qword_27F3BAA70, &qword_27F3BAA68, off_27969BA50);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AF1C0()
{
  result = qword_27F3BAA80;
  if (!qword_27F3BAA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAA88, &qword_2500D5698);
    sub_250090B94(&qword_27F3BAA70, &qword_27F3BAA68, off_27969BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAA80);
  }

  return result;
}

unint64_t sub_2500AF274()
{
  result = qword_27F3BAA98;
  if (!qword_27F3BAA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAA88, &qword_2500D5698);
    sub_250090B94(&qword_27F3BAA60, &qword_27F3BAA68, off_27969BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAA98);
  }

  return result;
}

uint64_t sub_2500AF324(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = geom_collection_data_2f(*v2);
  *(result + 8 * v4) = v3;
  return result;
}

uint64_t (*sub_2500AF35C(void *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  a1[1] = *a2;
  a1[2] = v5;
  *a1 = *(geom_collection_data_2f(v5) + 8 * v4);
  return sub_2500AF3B8;
}

uint64_t sub_2500AF3B8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  result = geom_collection_data_2f(a1[2]);
  *(result + 8 * v1) = v2;
  return result;
}

uint64_t (*sub_2500AF408(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9C88(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500AF480@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B4720(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_2500AF4AC(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(geom_collection_data_2f(*v2) + 8 * v3);
    v7 = *(geom_collection_data_2f(v5) + 8 * v4);
    *(geom_collection_data_2f(v5) + 8 * v3) = v7;
    result = geom_collection_data_2f(v5);
    result[v4] = v6;
  }

  return result;
}

unint64_t sub_2500AF65C()
{
  result = qword_27F3BAAA0;
  if (!qword_27F3BAAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAA88, &qword_2500D5698);
    sub_250090B94(&qword_27F3BAA78, &qword_27F3BAA68, off_27969BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAAA0);
  }

  return result;
}

uint64_t sub_2500AF80C@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_2f(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500AF838(void *a1, uint64_t *a2))(void)
{
  v3 = *a2;
  *a1 = *(geom_collection_data_2f(*v2) + 8 * v3);
  return geom::bvh<float,(unsigned char)2>::invariant_check;
}

uint64_t sub_2500AF90C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500AF960()
{
  v1 = *v0;
  v2 = sub_2500B4FF4(*v0);

  return v2;
}

void *sub_2500AFA34@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_3f();
  *a1 = result;
  return result;
}

__n128 sub_2500AFA64@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(geom_collection_data_3f(*v2) + 16 * a1);
  *a2 = result;
  return result;
}

void (*sub_2500AFAAC(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_3f(v3);
  return sub_2500AFAF8;
}

uint64_t sub_2500AFB04(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BAAC8, &qword_27F3BAAD0, off_27969BA60);
  result = sub_250090B94(&qword_27F3BAAD8, &qword_27F3BAAD0, off_27969BA60);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500AFBDC()
{
  result = qword_27F3BAAE8;
  if (!qword_27F3BAAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAAF0, &qword_2500D5948);
    sub_250090B94(&qword_27F3BAAD8, &qword_27F3BAAD0, off_27969BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAAE8);
  }

  return result;
}

unint64_t sub_2500AFC90()
{
  result = qword_27F3BAB00;
  if (!qword_27F3BAB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAAF0, &qword_2500D5948);
    sub_250090B94(&qword_27F3BAAC8, &qword_27F3BAAD0, off_27969BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAB00);
  }

  return result;
}

__n128 sub_2500AFD40(__n128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v3 = *a2;
  v4 = geom_collection_data_3f(*v2);
  result = v6;
  *(v4 + 16 * v3) = v6;
  return result;
}

void (*sub_2500AFD80(uint64_t *a1, uint64_t *a2))(__int128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x20uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 16) = v7;
  v8 = *v2;
  *(v6 + 24) = *v2;
  *v6 = *(geom_collection_data_3f(v8) + 16 * v7);
  return sub_2500AFE0C;
}

uint64_t (*sub_2500AFE64(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9D5C(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500AFEDC@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2500B4860(a1, a2, geom_collection_size_3f, geom_collection_data_3f);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_2500B0088()
{
  result = qword_27F3BAB08;
  if (!qword_27F3BAB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAAF0, &qword_2500D5948);
    sub_250090B94(&qword_27F3BAAE0, &qword_27F3BAAD0, off_27969BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAB08);
  }

  return result;
}

uint64_t sub_2500B0238@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_3f(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500B0264(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x10uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *v5 = *(geom_collection_data_3f(*v2) + 16 * v6);
  return sub_2500B5D20;
}

uint64_t sub_2500B0364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

id sub_2500B03B8()
{
  v1 = *v0;
  v2 = sub_2500B5190(*v0, geom_collection_size_3f, sub_25009D728, geom_collection_data_3f);

  return v2;
}

void *sub_2500B04F0@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_4f();
  *a1 = result;
  return result;
}

__n128 sub_2500B0520@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(geom_collection_data_4f(*v2) + 16 * a1);
  *a2 = result;
  return result;
}

void (*sub_2500B0568(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_4f(v3);
  return sub_2500B05B4;
}

uint64_t sub_2500B05C0(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BAB30, &qword_27F3BAB38, off_27969BA70);
  result = sub_250090B94(&qword_27F3BAB40, &qword_27F3BAB38, off_27969BA70);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500B0698()
{
  result = qword_27F3BAB50;
  if (!qword_27F3BAB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAB58, &qword_2500D5BF8);
    sub_250090B94(&qword_27F3BAB40, &qword_27F3BAB38, off_27969BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAB50);
  }

  return result;
}

unint64_t sub_2500B074C()
{
  result = qword_27F3BAB68;
  if (!qword_27F3BAB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAB58, &qword_2500D5BF8);
    sub_250090B94(&qword_27F3BAB30, &qword_27F3BAB38, off_27969BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAB68);
  }

  return result;
}

__n128 sub_2500B07FC(__n128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v3 = *a2;
  v4 = geom_collection_data_4f(*v2);
  result = v6;
  *(v4 + 16 * v3) = v6;
  return result;
}

void (*sub_2500B083C(uint64_t *a1, uint64_t *a2))(__int128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x20uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 16) = v7;
  v8 = *v2;
  *(v6 + 24) = *v2;
  *v6 = *(geom_collection_data_4f(v8) + 16 * v7);
  return sub_2500B08C8;
}

void sub_2500B08E0(__int128 **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  v5 = **a1;
  *(a3(*(*a1 + 3)) + 16 * v4) = v5;

  free(v3);
}

uint64_t (*sub_2500B0978(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9E58(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500B09F0@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2500B4860(a1, a2, geom_collection_size_4f, geom_collection_data_4f);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

__n128 sub_2500B0A5C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 != *a2)
  {
    v8 = *v5;
    v9 = *v5;
    v11 = 16 * v6;
    v16 = *(a5(v9) + v11);
    v12 = 16 * v7;
    v15 = *(a5(v8) + v12);
    *(a5(v8) + v11) = v15;
    v13 = a5(v8);
    result = v16;
    *(v13 + v12) = v16;
  }

  return result;
}

unint64_t sub_2500B0C38()
{
  result = qword_27F3BAB70;
  if (!qword_27F3BAB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAB58, &qword_2500D5BF8);
    sub_250090B94(&qword_27F3BAB48, &qword_27F3BAB38, off_27969BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAB70);
  }

  return result;
}

uint64_t sub_2500B0DE8@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_4f(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500B0E14(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x10uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *v5 = *(geom_collection_data_4f(*v2) + 16 * v6);
  return sub_2500B5D20;
}

uint64_t sub_2500B0F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

id sub_2500B0F68()
{
  v1 = *v0;
  v2 = sub_2500B5190(*v0, geom_collection_size_4f, sub_25009CEC4, geom_collection_data_4f);

  return v2;
}

void *sub_2500B10A0@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_2d();
  *a1 = result;
  return result;
}

__n128 sub_2500B10D0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(geom_collection_data_2d(*v2) + 16 * a1);
  *a2 = result;
  return result;
}

void (*sub_2500B1118(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_2d(v3);
  return sub_2500B1164;
}

uint64_t sub_2500B1170(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BAB98, &qword_27F3BABA0, off_27969BA48);
  result = sub_250090B94(&qword_27F3BABA8, &qword_27F3BABA0, off_27969BA48);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500B1248()
{
  result = qword_27F3BABB8;
  if (!qword_27F3BABB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BABC0, &qword_2500D5EA8);
    sub_250090B94(&qword_27F3BABA8, &qword_27F3BABA0, off_27969BA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BABB8);
  }

  return result;
}

unint64_t sub_2500B12FC()
{
  result = qword_27F3BABD0;
  if (!qword_27F3BABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BABC0, &qword_2500D5EA8);
    sub_250090B94(&qword_27F3BAB98, &qword_27F3BABA0, off_27969BA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BABD0);
  }

  return result;
}

__n128 sub_2500B13AC(__n128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v3 = *a2;
  v4 = geom_collection_data_2d(*v2);
  result = v6;
  *(v4 + 16 * v3) = v6;
  return result;
}

void (*sub_2500B13EC(uint64_t *a1, uint64_t *a2))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x20uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 16) = v7;
  v8 = *v2;
  *(v6 + 24) = *v2;
  *v6 = *(geom_collection_data_2d(v8) + 16 * v7);
  return sub_2500B1478;
}

void sub_2500B1478(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 2);
  v3 = **a1;
  *(geom_collection_data_2d(*(*a1 + 3)) + 16 * v2) = v3;

  free(v1);
}

uint64_t (*sub_2500B14E4(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500A9F54(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500B155C@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2500B49F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_2500B1588(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 != *a2)
  {
    v5 = *v2;
    v10 = *(geom_collection_data_2d(*v2) + 16 * v3);
    v6 = 16 * v4;
    v9 = *(geom_collection_data_2d(v5) + v6);
    *(geom_collection_data_2d(v5) + 16 * v3) = v9;
    v7 = geom_collection_data_2d(v5);
    result = v10;
    *(v7 + v6) = v10;
  }

  return result;
}

unint64_t sub_2500B1750()
{
  result = qword_27F3BABD8;
  if (!qword_27F3BABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BABC0, &qword_2500D5EA8);
    sub_250090B94(&qword_27F3BABB0, &qword_27F3BABA0, off_27969BA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BABD8);
  }

  return result;
}

uint64_t sub_2500B1900@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_2d(*v1);
  *a1 = result;
  return result;
}

void (*sub_2500B192C(void *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x10uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *v5 = *(geom_collection_data_2d(*v2) + 16 * v6);
  return sub_2500B19B0;
}

uint64_t sub_2500B1A34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

void *sub_2500B1A88()
{
  v1 = *v0;
  v2 = sub_2500B4F3C(*v0);

  return v2;
}

void *sub_2500B1B5C@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_3d();
  *a1 = result;
  return result;
}

__n128 sub_2500B1B8C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = geom_collection_data_3d(*v2) + 32 * a1;
  result = *v4;
  v6 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v6;
  return result;
}

void (*sub_2500B1BD8(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_3d(v3);
  return sub_2500B1C24;
}

uint64_t sub_2500B1C30(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BAC00, &qword_27F3BAC08, off_27969BA58);
  result = sub_250090B94(&qword_27F3BAC10, &qword_27F3BAC08, off_27969BA58);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500B1D08()
{
  result = qword_27F3BAC20;
  if (!qword_27F3BAC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAC28, &qword_2500D6158);
    sub_250090B94(&qword_27F3BAC10, &qword_27F3BAC08, off_27969BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAC20);
  }

  return result;
}

unint64_t sub_2500B1DBC()
{
  result = qword_27F3BAC38;
  if (!qword_27F3BAC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAC28, &qword_2500D6158);
    sub_250090B94(&qword_27F3BAC00, &qword_27F3BAC08, off_27969BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAC38);
  }

  return result;
}

__n128 sub_2500B1E6C(__n128 *a1, uint64_t *a2)
{
  v6 = a1[1];
  v7 = *a1;
  v3 = *a2;
  v4 = (geom_collection_data_3d(*v2) + 32 * v3);
  result = v7;
  *v4 = v7;
  v4[1] = v6;
  return result;
}

void (*sub_2500B1EB0(uint64_t *a1, uint64_t *a2))(__int128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 32) = v7;
  v8 = *v2;
  *(v6 + 40) = *v2;
  v9 = (geom_collection_data_3d(v8) + 32 * v7);
  v10 = v9[1];
  *v6 = *v9;
  *(v6 + 16) = v10;
  return sub_2500B1F40;
}

uint64_t (*sub_2500B1F98(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500AA028(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500B2010@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2500B4B48(a1, a2, geom_collection_size_3d, geom_collection_data_3d);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_2500B21BC()
{
  result = qword_27F3BAC40;
  if (!qword_27F3BAC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAC28, &qword_2500D6158);
    sub_250090B94(&qword_27F3BAC18, &qword_27F3BAC08, off_27969BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAC40);
  }

  return result;
}

uint64_t sub_2500B236C@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_3d(*v1);
  *a1 = result;
  return result;
}

void (*sub_2500B2398(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x20uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = (geom_collection_data_3d(*v2) + 32 * v7);
  v9 = v8[1];
  *v6 = *v8;
  v6[1] = v9;
  return sub_2500B19B0;
}

uint64_t sub_2500B249C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2500B24F0()
{
  v1 = *v0;
  sub_2500B50AC(*v0, geom_collection_size_3d, sub_25009D72C, geom_collection_data_3d);
  v3 = v2;

  return v3;
}

void *sub_2500B2628@<X0>(void *a1@<X8>)
{
  result = geom_create_collection_4d();
  *a1 = result;
  return result;
}

__n128 sub_2500B2658@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = geom_collection_data_4d(*v2) + 32 * a1;
  result = *v4;
  v6 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v6;
  return result;
}

void (*sub_2500B26A4(uint64_t *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_collection_size_4d(v3);
  return sub_2500B26F0;
}

uint64_t sub_2500B26FC(uint64_t a1)
{
  *(a1 + 8) = sub_250090B94(&qword_27F3BAC68, &qword_27F3BAC70, off_27969BA68);
  result = sub_250090B94(&qword_27F3BAC78, &qword_27F3BAC70, off_27969BA68);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2500B27D4()
{
  result = qword_27F3BAC88;
  if (!qword_27F3BAC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAC90, &qword_2500D6408);
    sub_250090B94(&qword_27F3BAC78, &qword_27F3BAC70, off_27969BA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BAC88);
  }

  return result;
}

unint64_t sub_2500B2888()
{
  result = qword_27F3BACA0;
  if (!qword_27F3BACA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAC90, &qword_2500D6408);
    sub_250090B94(&qword_27F3BAC68, &qword_27F3BAC70, off_27969BA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BACA0);
  }

  return result;
}

__n128 sub_2500B2938(__n128 *a1, uint64_t *a2)
{
  v6 = a1[1];
  v7 = *a1;
  v3 = *a2;
  v4 = (geom_collection_data_4d(*v2) + 32 * v3);
  result = v7;
  *v4 = v7;
  v4[1] = v6;
  return result;
}