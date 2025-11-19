char *sub_2531B4E50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD10, &qword_2531E7398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4F60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE0, &qword_2531E7370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_2531B5070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD08, &qword_2531E7390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2531B5170(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD00, &qword_2531E7388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_2531B5270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB0, &qword_2531E7340);
    v3 = sub_2531DAD74();
    v4 = a1 + 32;

    while (1)
    {
      sub_2531B5834(v4, &v13, &qword_27F58DCB8, &qword_2531E7348);
      v5 = v13;
      v6 = v14;
      result = sub_25317D998(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531675D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2531B53A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE8, &unk_2531E7CF0);
  v3 = sub_2531DAD74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_25317DA10(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 12 * v9;
    *v12 = v4;
    *(v12 + 8) = v5 & 1;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 8);
    v17 = *v11;

    v9 = sub_25317DA10(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2531B54D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D770, &qword_2531E4948);
    v3 = sub_2531DAD74();
    v4 = a1 + 32;

    while (1)
    {
      sub_2531B5834(v4, &v13, &qword_27F58DA38, &qword_2531E5800);
      v5 = v13;
      v6 = v14;
      result = sub_25317D998(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531675D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2531B5608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCF0, &qword_2531E7378);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCF8, &qword_2531E7380);
    v8 = sub_2531DAD74();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2531B5834(v10, v6, &qword_27F58DCF0, &qword_2531E7378);
      result = sub_25317DA90(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2531DA204();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2531B5834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2531B589C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD18, &qword_2531E73A0);
    v3 = sub_2531DAD74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25317D998(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t MTR.Node.ID.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) <= 2u)
  {
    *(v0 + 8);
  }

  else
  {
    if (*(v0 + 8) == 5)
    {
      v2 = *v0;
    }

    *(v0 + 8);
  }

  sub_2531B5B08();
  v3 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v3);

  return 30768;
}

unint64_t MTR.Node.ID.rawValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 2)
  {
    if (*(v0 + 8))
    {
      if (v2 == 1)
      {
        return *v0 | 0xFFFFFFFE00000000;
      }

      else
      {
        v5 = result | 0xFF00;
        if (BYTE2(result) != 1)
        {
          v5 = 0;
        }

        if (BYTE2(result))
        {
          LOWORD(v6) = v5;
        }

        else
        {
          v6 = *v0;
        }

        return v6 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (v2 == 5)
    {
      v3 = *v0;
    }

    else
    {
      v3 = 0;
    }

    v4 = *v0 | 0xFFFFFFFB00000000;
    if (v2 != 3)
    {
      v4 = *v0 | 0xFFFFFFFD00000000;
    }

    if (*(v0 + 8) <= 4u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

unint64_t sub_2531B5B08()
{
  result = qword_27F58DD50;
  if (!qword_27F58DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD50);
  }

  return result;
}

unint64_t MTR.Node.ID.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    if (result >= 0xFFFFFFF000000000)
    {
      if (result < 0xFFFFFFFB00000000)
      {
        goto LABEL_6;
      }

      if (result <= 0xFFFFFFFBFFFFFFFFLL)
      {
        result = result;
        v2 = 3;
        goto LABEL_9;
      }

      if (result < 0xFFFFFFFD00000000)
      {
        goto LABEL_6;
      }

      if (result <= 0xFFFFFFFDFFFFFFFFLL)
      {
        result = result;
        v2 = 4;
        goto LABEL_9;
      }

      if (result <= 0xFFFFFFFEFFFFFFFFLL)
      {
        result = result;
        v2 = 1;
        goto LABEL_9;
      }

      if (result < 0xFFFFFFFFFFFF0000)
      {
LABEL_6:
        v2 = 5;
      }

      else if (result)
      {
        if (result > 0xFEFEu)
        {
          result &= 0x100FFuLL;
        }

        else
        {
          result = result;
        }

        v2 = 2;
      }

      else
      {
        v2 = 2;
        result = 0x20000;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 6;
  }

LABEL_9:
  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t MTR.Node.ID.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) <= 2u)
  {
    *(v0 + 8);
  }

  else
  {
    if (*(v0 + 8) == 5)
    {
      v2 = *v0;
    }

    *(v0 + 8);
  }

  sub_2531B5B08();
  v3 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v3);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x2844492E65646F4ELL;
}

uint64_t MTR.Node.ID.kind.getter()
{
  v1 = *(v0 + 8);
  v2 = 0x6669636570736E75;
  if (v1 == 5)
  {
    v2 = 0x6465767265736572;
  }

  v3 = 0x79654B656B6170;
  if (v1 != 3)
  {
    v3 = 0x67615465736163;
  }

  if (*(v0 + 8) <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F6974617265706FLL;
  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x646F4E70756F7267;
  }

  if (*(v0 + 8))
  {
    v4 = v5;
  }

  if (*(v0 + 8) <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2531B5E34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MTR.Node.ID.init(rawValue:)(*a1, &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

unint64_t sub_2531B5E78@<X0>(unint64_t *a1@<X8>)
{
  result = MTR.Node.ID.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2531B5F54()
{
  result = qword_27F58DD58;
  if (!qword_27F58DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD58);
  }

  return result;
}

uint64_t sub_2531B5FA8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2531DB3F4();
  sub_253188BAC(v4, v1, v2);
  return sub_2531DB454();
}

uint64_t sub_2531B6004()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2531DB3F4();
  sub_253188BAC(v4, v1, v2);
  return sub_2531DB454();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s4NodeO2IDOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4NodeO2IDOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_2531B6120(uint64_t a1)
{
  if (*(a1 + 8) <= 5u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_2531B6138(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_2531B6160()
{
  result = qword_27F58DD60;
  if (!qword_27F58DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD60);
  }

  return result;
}

uint64_t MTR.Event.ID.description.getter()
{
  v3 = *v0;
  sub_253169338();
  v1 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v1);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x44492E746E657645;
}

uint64_t sub_2531B6308()
{
  v3 = *v0;
  sub_253169338();
  v1 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v1);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x44492E746E657645;
}

_WORD *MTR.Event.Path.init(_:_:_:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

_WORD *MTR.Event.Path.init(_:_:eventID:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = a3;
  return result;
}

_WORD *MTR.Event.Path.init(_:clusterID:eventID:)@<X0>(_WORD *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

void MTR.Event.Path.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 endpoint];
  v5 = [v4 unsignedShortValue];

  v6 = [v3 cluster];
  v7 = [v6 unsignedIntValue];

  v8 = [v3 event];
  v9 = [v8 unsignedIntValue];

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
}

MTREventPath __swiftcall MTR.Event.Path.makeEventPath()()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v7 = [objc_opt_self() eventPathWithEndpointID:v4 clusterID:v5 eventID:v6];

  return v7;
}

BOOL static MTR.Event.Path.== infix(_:_:)(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  return _s23HomeKitDaemonFoundation3MTRO5EventO4PathV6isSame4path03mtrG0SbAG_So08MTREventG0CtFZ_0(&v3, a2);
}

BOOL static MTR.Event.Path.== infix(_:_:)(id a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  return _s23HomeKitDaemonFoundation3MTRO5EventO4PathV6isSame4path03mtrG0SbAG_So08MTREventG0CtFZ_0(&v3, a1);
}

uint64_t MTR.Event.Path.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB434();
}

uint64_t MTR.Event.Path.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation3MTRO5EventO4PathV6isSame4path03mtrG0SbAG_So08MTREventG0CtFZ_0(unsigned __int16 *a1, id a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = [a2 endpoint];
  v7 = [v6 unsignedIntValue];

  if (v7 != v3)
  {
    return 0;
  }

  v8 = [a2 cluster];
  v9 = [v8 unsignedIntValue];

  if (v5 != v9)
  {
    return 0;
  }

  v10 = [a2 event];
  v11 = [v10 unsignedIntValue];

  return v4 == v11;
}

unint64_t sub_2531B6870()
{
  result = qword_27F58DD68;
  if (!qword_27F58DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD68);
  }

  return result;
}

unint64_t sub_2531B68C8()
{
  result = qword_27F58DD70;
  if (!qword_27F58DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD70);
  }

  return result;
}

unint64_t sub_2531B694C()
{
  result = qword_27F58DD78;
  if (!qword_27F58DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD78);
  }

  return result;
}

uint64_t MTR.ValueEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v11 = *v4;
  _s26ValueEncoderImplementationCMa();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = xmmword_2531E7720;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = -1;
  v14 = sub_25316B674();

  v15 = sub_2531B6D48(a1, 0x8000000000000000, &v23, a2, &_s10_CodingKeyON, a3, v14);
  if (!v6)
  {
    if (v15)
    {
      v23 = v11;
      sub_2531B76D8(v15, a4);
    }

    else
    {
      v16 = sub_2531DAC44();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D740, &qword_2531E7730) + 48);
      v18[3] = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
      (*(*(a2 - 1) + 16))(boxed_opaque_existential_0, a1, a2);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_2531DABC4();

      v23 = 0x6576656C2D706F54;
      v24 = 0xEA0000000000206CLL;
      v21 = sub_2531DB544();
      MEMORY[0x259BFE570](v21);

      MEMORY[0x259BFE570](0xD00000000000001BLL, 0x80000002531DD5C0);
      sub_2531DAC14();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D841A8], v16);
      swift_willThrow();
    }
  }
}

unint64_t sub_2531B6C20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_2531BDD70(a1, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_25317DA10(a2, a3 & 1);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_2531BDEE4();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 8 * v13);

      result = sub_2531BDBA8(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t MTR.ValueEncoder.userInfo.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2531B6D48(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, char *a5, uint64_t *a6, uint64_t a7)
{
  v108 = a3;
  v104 = a6;
  v105 = a7;
  v111 = a2;
  v112 = a1;
  v109 = *(a5 - 1);
  v9 = *(v109 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v106 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v96 - v12;
  v13 = sub_2531DAAF4();
  v110 = *(v13 - 8);
  v14 = *(v110 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v96 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v96 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v96 - v25;
  v27 = *(a4 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    (*(v27 + 16))(v30, v112, a4);
    swift_dynamicCast();
    v31 = v113;
    v32 = v114;
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = v31;
    *(result + 24) = v32;
    *(result + 32) = 6;
    return result;
  }

  v99 = v27;
  v97 = v17;
  v98 = v20;
  v100 = v23;
  v101 = v26;
  v34 = v106;
  v35 = v107;
  v102 = a5;
  if (!swift_conformsToProtocol2())
  {
    v103 = a4;
    swift_beginAccess();
    v47 = v35[3];
    v100 = v35 + 3;
    if (v47 >> 62)
    {
      goto LABEL_48;
    }

    v101 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

  v113 = 0;
  v114 = 0xE000000000000000;
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DCBA0);
  v36 = sub_2531DB544();
  MEMORY[0x259BFE570](v36);

  MEMORY[0x259BFE570](0xD000000000000029, 0x80000002531DD8C0);
  v37 = v113;
  v106 = v114;
  v107 = sub_2531DAC44();
  v115 = swift_allocError();
  v38[3] = a4;
  v104 = v38;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(v99 + 16))(boxed_opaque_existential_0, v112, a4);
  v40 = v110;
  v41 = *(v110 + 16);
  v42 = v101;
  v41(v101, v108, v13);
  v43 = v100;
  v41(v100, v42, v13);
  v44 = v109;
  v34 = v102;
  if ((*(v109 + 48))(v43, 1, v102) == 1)
  {
    v45 = *(v40 + 8);
    v45(v42, v13);
    v45(v43, v13);
    v46 = v111;

LABEL_19:
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D740, &qword_2531E7730) + 48);
    sub_25316B2C4(v46);

    v77 = v104;
    sub_2531DAC14();
    (*(*(v107 - 8) + 104))(v77, *MEMORY[0x277D841A8]);
    return swift_willThrow();
  }

  v112 = v37;
  v60 = *(v44 + 32);
  v61 = v43;
  v35 = v103;
  v60(v103, v61, v34);
  v62 = v42;
  v46 = swift_allocObject();
  v63 = v105;
  v46[5] = v34;
  v46[6] = v63;
  v64 = __swift_allocate_boxed_opaque_existential_0(v46 + 2);
  v60(v64, v35, v34);
  v66 = *(v40 + 8);
  v65 = (v40 + 8);
  v66(v62, v13);
  v67 = v111;
  v46[7] = v111;
  if (v67 >> 62)
  {
    if (v67 >> 62 != 1)
    {
      v75 = 1;
      goto LABEL_18;
    }

    v68 = ((v67 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v68 = v67 + 8;
  }

  v74 = *v68;

  v75 = v74 + 1;
  if (!__OFADD__(v74, 1))
  {
LABEL_18:
    v46[8] = v75;
    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  for (i = v67 + 8; ; i = ((v67 & 0x3FFFFFFFFFFFFFFFLL) + 32))
  {
    v59 = v115;
    v78 = *i;

    v79 = v78 + 1;
    if (!__OFADD__(v78, 1))
    {
      break;
    }

    __break(1u);
LABEL_48:
    v101 = sub_2531DAD44();
LABEL_8:
    v48 = v102;
    v49 = v13;
    v50 = v34;
    v51 = v110;
    v52 = *(v110 + 16);
    v53 = v98;
    v52(v98, v108, v49);
    v54 = v97;
    v52(v97, v53, v49);
    v55 = v54;
    v56 = v109;
    if ((*(v109 + 48))(v55, 1, v48) == 1)
    {
      v57 = *(v51 + 8);
      v57(v53, v49);
      v57(v55, v49);
      v58 = v111;

      v59 = v115;
      goto LABEL_26;
    }

    v69 = *(v56 + 32);
    v34 = (v56 + 32);
    v69(v50, v55, v48);
    v65 = swift_allocObject();
    v70 = v105;
    v65[5] = v48;
    v65[6] = v70;
    v71 = __swift_allocate_boxed_opaque_existential_0(v65 + 2);
    v69(v71, v50, v48);
    v72 = *(v51 + 8);
    v13 = v51 + 8;
    v72(v53, v49);
    v67 = v111;
    v65[7] = v111;
    if (!(v67 >> 62))
    {
      goto LABEL_23;
    }

    if (v67 >> 62 != 1)
    {
      v59 = v115;
      v79 = 1;
      break;
    }
  }

  v65[8] = v79;
  v58 = v65;
LABEL_26:
  v81 = v35[4];
  v80 = v35[5];
  v35[4] = v58;
  if (!(v58 >> 62))
  {
    v82 = (v58 + 64);
    goto LABEL_30;
  }

  if (v58 >> 62 == 1)
  {
    v82 = ((v58 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_30:
    v83 = *v82;

    goto LABEL_32;
  }

  v83 = 0;
LABEL_32:
  v84 = v112;
  v35[5] = v83;
  sub_2531B9380(v84, v35);
  if (v59)
  {

    v85 = v35[4];
    v35[4] = v81;

    v35[5] = v80;
    v86 = v35[3];
    if (v86 >> 62)
    {
      if (v86 < 0)
      {
        v93 = v35[3];
      }

      v87 = sub_2531DAD44();
    }

    else
    {
      v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v101 >= v87)
    {
      return swift_willThrow();
    }

    swift_beginAccess();
    v88 = *v100;
    if (*v100 >> 62)
    {
      if (v88 < 0)
      {
        v95 = *v100;
      }

      if (sub_2531DAD44())
      {
        goto LABEL_38;
      }
    }

    else if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_38:
      sub_2531B7BC4();
      swift_endAccess();

      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_59;
  }

  v89 = v35[4];
  v35[4] = v81;

  v35[5] = v80;
  v90 = v35[3];
  if (v90 >> 62)
  {
    if (v90 < 0)
    {
      v94 = v35[3];
    }

    v91 = sub_2531DAD44();
  }

  else
  {
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v101 >= v91)
  {
    return 0;
  }

  swift_beginAccess();
  if (*v100 >> 62)
  {
LABEL_59:
    result = sub_2531DAD44();
    if (!result)
    {
      goto LABEL_60;
    }

LABEL_44:
    v92 = sub_2531B7BC4();
    swift_endAccess();
    return v92;
  }

  result = *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_44;
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_2531B76D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *v2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  sub_2531BEB9C(v5, v4, v6);

  v8 = v6 >> 6;
  if (v6 >> 6 <= 1)
  {
    if (!v8)
    {
LABEL_29:
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      return result;
    }

    if (!(v5 >> 62))
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }

LABEL_31:
    v9 = sub_2531DAD44();
    if (v9)
    {
LABEL_5:
      v34 = v6;
      v33 = a2;
      v38 = MEMORY[0x277D84F90];
      sub_2531B468C(0, v9 & ~(v9 >> 63), 0);
      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        v11 = v38;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x259BFEA20](v10, v5);
          }

          else
          {
            v13 = *(v5 + 8 * v10 + 32);
          }

          sub_2531B76D8(&v40, v12);
          v14 = v40;
          v15 = v41;
          v17 = *(v38 + 16);
          v16 = *(v38 + 24);
          if (v17 >= v16 >> 1)
          {
            v31 = v40;
            sub_2531B468C((v16 > 1), v17 + 1, 1);
            v14 = v31;
          }

          ++v10;
          *(v38 + 16) = v17 + 1;
          v18 = v38 + 24 * v17;
          *(v18 + 32) = v14;
          *(v18 + 48) = v15;
        }

        while (v9 != v10);
        sub_25317079C(v5, v4, v34);
        LOBYTE(v6) = 7;
        goto LABEL_27;
      }

      goto LABEL_34;
    }

LABEL_32:
    sub_25317079C(v5, v4, v6);
    LOBYTE(v6) = 7;
    v11 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  if (v8 == 2)
  {
    v19 = *(v5 + 16);
    if (v19)
    {
      v20 = sub_2531964F4(*(v5 + 16), 0);
      v35 = sub_253196BB0(&v40, (v20 + 4), v19, v5);
      sub_2531BEB9C(v5, v4, v6);
      sub_25319714C();
      if (v35 != v19)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_25317079C(v5, v4, v6);
    }

    else
    {
      sub_25317079C(v5, v4, v6);
      v20 = MEMORY[0x277D84F90];
    }

    v33 = a2;
    *&v40 = v20;
    v6 = 0;
    sub_2531BE058(&v40);
    a2 = v40;
    v4 = *(v40 + 16);
    if (!v4)
    {

      LOBYTE(v6) = 8;
      v11 = MEMORY[0x277D84F90];
LABEL_27:
      a2 = v33;
LABEL_28:
      result = swift_allocObject();
      v5 = result;
      v4 = 0;
      *(result + 16) = v11;
      goto LABEL_29;
    }

    v39 = MEMORY[0x277D84F90];
    sub_2531B4614(0, v4, 0);
    v21 = 0;
    v11 = v39;
    v22 = (a2 + 48);
    v36 = a2;
    while (v21 < *(a2 + 16))
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 8);
      v25 = *v22;

      sub_2531B76D8(&v40, v26);
      v27 = v40;
      v28 = v41;
      v6 = *(v39 + 16);
      v29 = *(v39 + 24);
      v5 = v6 + 1;
      if (v6 >= v29 >> 1)
      {
        v32 = v40;
        sub_2531B4614((v29 > 1), v6 + 1, 1);
        v27 = v32;
      }

      *(v39 + 16) = v5;
      v30 = v39 + 40 * v6;
      *(v30 + 32) = v23;
      ++v21;
      *(v30 + 40) = v24;
      *(v30 + 48) = v27;
      *(v30 + 64) = v28;
      v22 += 3;
      a2 = v36;
      if (v4 == v21)
      {

        LOBYTE(v6) = 8;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_35:
  sub_2531DAD34();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_2531B7B60()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 24);
    }

    v2 = sub_2531DAD44();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == *(v0 + 40);
}

unint64_t sub_2531B7BC4()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_2531A6B38();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_2531DAD44();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_2531A6A0C(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_2531A6A0C(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_2531DAD44();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2531B7C54()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_2531B7CA8()
{
  v1 = v0;
  v2 = (v0 + 2);
  if ((*(*v0 + 192))())
  {
    swift_beginAccess();
    v3 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0x80;

    MEMORY[0x259BFE6B0](v5);
    if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  v6 = v0[3];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 < 0)
  {
    v10 = v1[3];
  }

  v7 = sub_2531DAD44();
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_7:
  v2 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 8 * v2 + 32);

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_19:

  v8 = MEMORY[0x259BFEA20](v2, v6);

LABEL_12:
  if ((*(v8 + 32) & 0xC0) == 0x80)
  {
LABEL_13:
    v12 = v1[4];
    _s12ValueEncoderV14KeyedContainerVMa();

    swift_getWitnessTable();
    return sub_2531DAF14();
  }

LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2531B7EEC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if ((*(*v1 + 192))())
  {
    swift_beginAccess();
    _s14ValueReferenceCMa();
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84F90];
    *(v4 + 24) = 0;
    *(v4 + 32) = 64;

    MEMORY[0x259BFE6B0](v5);
    if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();
    swift_endAccess();
    v6 = v1[4];
    a1[3] = &_s12ValueEncoderV16UnkeyedContainerVN;
    a1[4] = sub_2531BD884();
    *a1 = v2;
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B8068()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_2531B80F4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = _s26ValueEncoderImplementationCMa();
  a1[4] = sub_2531BEB54(&qword_27F58DD88, _s26ValueEncoderImplementationCMa);
  *a1 = v3;
}

uint64_t sub_2531B8174()
{
  if (((*(*v0 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 10;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v2);
  if (*((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8280(char a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
LABEL_8:
    sub_2531DA8C4();
    goto LABEL_6;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  if (a1)
  {
    *(v3 + 16) = xmmword_2531E1A40;
  }

  else
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
  }

  *(v3 + 32) = 0;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B83A4(uint64_t a1, uint64_t a2)
{
  if (((*(*v2 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 5;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v6);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B84C0(double a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 4;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B85DC(float a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = LODWORD(a1);
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B86F8(char a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B880C(__int16 a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8920(int a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8A34(unsigned __int8 a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8B48(unsigned __int16 a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8C5C(unsigned int a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8D70(uint64_t a1, char a2)
{
  if (((*(*v2 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 32) = a2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v6);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8E80(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *(a2 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*v3 + 192))(v12) & 1) == 0)
  {
    __break(1u);
LABEL_10:
    sub_2531DA8C4();
    goto LABEL_8;
  }

  (*(v10 + 16))(v14, a1, a2);
  v15 = v3[4];
  memset(v22, 0, sizeof(v22));
  v23 = -1;
  v16 = sub_25316B674();

  v17 = sub_2531B6D48(v14, v15, v22, a2, &_s10_CodingKeyON, a3, v16);
  if (v5)
  {

    return (*(v10 + 8))(v14, a2);
  }

  if (v17)
  {
  }

  else
  {
    v19 = sub_2531B53A0(MEMORY[0x277D84F90]);

    _s14ValueReferenceCMa();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x80;
  }

  (*(v10 + 8))(v14, a2);
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v21);
  if (*((v6[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B90EC(void *a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = sub_2531B6D48(v12, a2, a3, v10, a4, v11, a5);
  if (!v5 && !result)
  {
    v14 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t sub_2531B9380(uint64_t a1, uint64_t a2)
{
  v4[3] = _s26ValueEncoderImplementationCMa();
  v4[4] = sub_2531BEB54(&qword_27F58DD80, _s26ValueEncoderImplementationCMa);
  v4[0] = a2;

  sub_2531DA674();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_2531B9440(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  swift_beginAccess();
  sub_25316D004(v2, v3, v4);

  MEMORY[0x259BFE6B0](v6);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B9568(uint64_t a1, unint64_t a2)
{
  if (((*(*v2 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 6;
  swift_beginAccess();
  sub_25316D050(a1, a2);

  MEMORY[0x259BFE6B0](v6);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B96D0()
{
  v1 = *(v0 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 10;
  v3 = *(v1 + 32);
  if ((v3 & 0xC0) == 0x40)
  {
    v4 = *(v1 + 24);
    v11 = *(v1 + 16);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = -64;

    sub_25317079C(v5, v4, v3);

    MEMORY[0x259BFE6B0](v6);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    *(v1 + 16) = v11;
    *(v1 + 24) = 0;
    v9 = *(v1 + 32);
    *(v1 + 32) = 64;
    return sub_25317079C(v7, v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B97E0(char a1)
{
  v3 = *(v1 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = xmmword_2531E1A40;
  }

  else
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  v5 = *(v3 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v3 + 24);
    v13 = *(v3 + 16);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    *(v3 + 16) = v13;
    *(v3 + 24) = 0;
    v11 = *(v3 + 32);
    *(v3 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9908(char a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9A1C(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9B30(int a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9C44(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 2;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9D58(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 2;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9E6C(unsigned int a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 2;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9F80(uint64_t a1, char a2)
{
  v5 = *(v2 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = a2;
  v7 = *(v5 + 32);
  if ((v7 & 0xC0) == 0x40)
  {
    v8 = *(v5 + 24);
    v15 = *(v5 + 16);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v9, v8, v7);

    MEMORY[0x259BFE6B0](v10);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    *(v5 + 16) = v15;
    *(v5 + 24) = 0;
    v13 = *(v5 + 32);
    *(v5 + 32) = 64;
    return sub_25317079C(v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA09C(float a1)
{
  v2 = *(v1 + 8);
  v3 = LODWORD(a1);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 3;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v13 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA1B0(double a1)
{
  v3 = *(v1 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 4;
  v5 = *(v3 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v3 + 24);
    v13 = *(v3 + 16);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    *(v3 + 16) = v13;
    *(v3 + 24) = 0;
    v11 = *(v3 + 32);
    *(v3 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA2D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 5;
  v7 = *(v5 + 32);
  if ((v7 & 0xC0) == 0x40)
  {
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_2531BEB9C(v9, v8, v7);
    sub_25317079C(v9, v8, v7);

    MEMORY[0x259BFE6B0](v10);
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    *(v5 + 16) = v9;
    *(v5 + 24) = 0;
    v13 = *(v5 + 32);
    *(v5 + 32) = 64;
    return sub_25317079C(v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA410(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *(a2 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  result = (*(v9 + 16))(v12);
  v15 = v6[1];
  if ((*(v15 + 32) & 0xC0) != 0x40)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v16 = *(v13 + 32);
  v17 = *(v15 + 16);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v30 = *(v15 + 16);
    }

    v18 = sub_2531DAD44();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32[1] = 0;
  v32[2] = 0;
  v32[0] = v18;
  v33 = 2;
  v19 = sub_25316B674();

  v20 = sub_2531B6D48(v12, v16, v32, a2, &_s10_CodingKeyON, a3, v19);
  if (v5)
  {

    return (*(v9 + 8))(v12, a2);
  }

  if (v20)
  {
  }

  else
  {
    v21 = sub_2531B53A0(MEMORY[0x277D84F90]);

    _s14ValueReferenceCMa();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x80;
  }

  result = (*(v9 + 8))(v12, a2);
  v23 = *(v15 + 32);
  if ((v23 & 0xC0) != 0x40)
  {
    goto LABEL_17;
  }

  v24 = *(v15 + 24);
  v32[0] = *(v15 + 16);
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = -64;

  sub_25317079C(v25, v24, v23);

  MEMORY[0x259BFE6B0](v26);
  if (*((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v31 = *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2531DA8C4();
  }

  sub_2531DA904();

  v27 = *(v15 + 16);
  v28 = *(v15 + 24);
  *(v15 + 16) = v32[0];
  *(v15 + 24) = 0;
  v29 = *(v15 + 32);
  *(v15 + 32) = 64;
  return sub_25317079C(v27, v28, v29);
}

void sub_2531BA6C4()
{
  v1 = v0[1];
  if ((*(v1 + 32) & 0xC0) == 0x40)
  {
    v2 = v0;
    v3 = *(v1 + 16);
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v20 = *(v1 + 16);
      }

      v4 = sub_2531DAD44();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0x80;
    v7 = *(v1 + 32);
    if ((v7 & 0xC0) != 0x40)
    {
      goto LABEL_19;
    }

    v8 = *(v1 + 24);
    v22 = *(v1 + 16);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = -64;

    sub_25317079C(v9, v8, v7);

    MEMORY[0x259BFE6B0](v10);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2531DA8C4();
    }

    sub_2531DA904();
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    *(v1 + 16) = v22;
    *(v1 + 24) = 0;
    v13 = *(v1 + 32);
    *(v1 + 32) = 64;
    sub_25317079C(v11, v12, v13);
    v14 = *v2;
    v15 = v2[2];
    v16 = swift_allocObject();
    v16[5] = &_s10_CodingKeyON;
    v16[6] = sub_25316B674();
    v17 = swift_allocObject();
    v16[2] = v17;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 16) = v4;
    *(v17 + 40) = 2;
    v16[7] = v15;
    if (v15 >> 62)
    {
      v18 = 0;
      if (v15 >> 62 != 1)
      {
LABEL_12:
        if (!__OFADD__(v18, 1))
        {
          v16[8] = v18 + 1;
          _s12ValueEncoderV14KeyedContainerVMa();

          swift_getWitnessTable();
          sub_2531DAF14();
          return;
        }

        __break(1u);
        goto LABEL_18;
      }

      v19 = ((v15 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = (v15 + 64);
    }

    v18 = *v19;

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2531BA934(void *a1@<X8>)
{
  v3 = v1[1];
  if ((*(v3 + 32) & 0xC0) != 0x40)
  {
    goto LABEL_20;
  }

  v4 = v1;
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v22 = *(v3 + 16);
    }

    v6 = sub_2531DAD44();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v7 + 24) = 0;
  *(v7 + 32) = 64;
  v8 = *(v3 + 32);
  if ((v8 & 0xC0) != 0x40)
  {
    goto LABEL_21;
  }

  v9 = v7;
  v10 = *(v3 + 24);
  v24 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -64;

  sub_25317079C(v11, v10, v8);

  MEMORY[0x259BFE6B0](v12);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2531DA8C4();
  }

  sub_2531DA904();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  *(v3 + 16) = v24;
  *(v3 + 24) = 0;
  v15 = *(v3 + 32);
  *(v3 + 32) = 64;
  sub_25317079C(v13, v14, v15);
  v16 = *v4;
  v17 = v4[2];
  v18 = swift_allocObject();
  v18[5] = &_s10_CodingKeyON;
  v18[6] = sub_25316B674();
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = v6;
  *(v19 + 40) = 2;
  v18[7] = v17;
  if (v17 >> 62)
  {
    v20 = 0;
    if (v17 >> 62 != 1)
    {
      goto LABEL_12;
    }

    v21 = ((v17 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v21 = (v17 + 64);
  }

  v20 = *v21;

LABEL_12:
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v18[8] = v20 + 1;
  a1[3] = &_s12ValueEncoderV16UnkeyedContainerVN;
  a1[4] = sub_2531BD884();
  *a1 = v16;
  a1[1] = v9;
  a1[2] = v18;
}

void sub_2531BAB64(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if ((*(v3 + 32) & 0xC0) != 0x40)
  {
    goto LABEL_21;
  }

  v4 = *v1;
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v17 = *(v3 + 16);
    }

    v6 = sub_2531DAD44();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *(v4 + 32);
  v8 = _s23ValueReferencingEncoderCMa();
  v9 = swift_allocObject();
  *(v9 + 72) = v4;
  *(v9 + 48) = v3;
  *(v9 + 56) = v6;
  *(v9 + 64) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v11 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v13 = (v7 + 64);
    goto LABEL_8;
  }

  v12 = 0;
  if (v11 == 1)
  {
    v13 = ((v7 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_8:
    v12 = *v13;
  }

  if (!__OFADD__(v12, 1))
  {
    *(v10 + 32) = v12 + 1;
    if (v11)
    {
      if (v11 != 1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v7 &= 0x3FFFFFFFFFFFFFFFuLL;
      v14 = 32;
    }

    else
    {
      v14 = 64;
    }

    v15 = *(v7 + v14);
LABEL_16:
    swift_beginAccess();
    v16 = MEMORY[0x277D84F90];
    *(v9 + 16) = *(v4 + 16);
    *(v9 + 24) = v16;
    *(v9 + 32) = v10 | 0x4000000000000000;
    *(v9 + 40) = v15;
    a1[3] = v8;
    a1[4] = sub_2531BEB54(qword_27F58DD98, _s23ValueReferencingEncoderCMa);
    *a1 = v9;

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2531BAD2C()
{
  v1 = *(v0 + 8);
  if ((*(v1 + 32) & 0xC0) == 0x40)
  {
    v2 = *(v1 + 16);
    if (v2 >> 62)
    {
      return sub_2531DAD44();
    }

    else
    {
      return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2531DB504();
  if ((v3 & 1) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = MTR.Tag.init(rawValue:)(v2, &v6);
      v5 = v7;
      if (v7 != 255)
      {
        *a1 = v6;
        *(a1 + 8) = v5 & 1;
        return result;
      }
    }

    __break(1u);
  }

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

unint64_t sub_2531BB2A4(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 10;
  v6 = *v2;
  v7 = v2[2];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  result = sub_2531BB1EC(&v21);
  v11 = *(v4 + 32);
  if ((v11 & 0xC0) == 0x80)
  {
    v12 = v22;
    v13 = v21;
    v14 = *(v4 + 16);
    v15 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v16, v15, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v14;
    sub_2531BDD70(v5, v13, v12, isUniquelyReferenced_nonNull_native);
    v18 = *(v4 + 16);
    v19 = *(v4 + 24);
    *(v4 + 16) = v23;
    *(v4 + 24) = 0;
    v20 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v18, v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB3B4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  v8 = v7;
  if (a1)
  {
    *(v7 + 16) = xmmword_2531E1A40;
  }

  else
  {
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
  }

  *(v7 + 32) = 0;
  v9 = *v3;
  v10 = v3[2];
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  result = sub_2531BB1EC(&v24);
  v14 = *(v6 + 32);
  if ((v14 & 0xC0) == 0x80)
  {
    v15 = v25;
    v16 = v24;
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = -64;

    sub_25317079C(v19, v18, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v17;
    sub_2531BDD70(v8, v16, v15, isUniquelyReferenced_nonNull_native);
    v21 = *(v6 + 16);
    v22 = *(v6 + 24);
    *(v6 + 16) = v26;
    *(v6 + 24) = 0;
    v23 = *(v6 + 32);
    *(v6 + 32) = 0x80;
    return sub_25317079C(v21, v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[1];
  _s14ValueReferenceCMa();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = 5;
  v10 = *v4;
  v11 = v4[2];
  v13 = *(a4 + 16);
  v12 = *(a4 + 24);

  result = sub_2531BB1EC(&v25);
  v15 = *(v8 + 32);
  if ((v15 & 0xC0) == 0x80)
  {
    v16 = v26;
    v17 = v25;
    v18 = *(v8 + 16);
    v19 = *(v8 + 24);
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = -64;

    sub_25317079C(v20, v19, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2531BDD70(v9, v17, v16, isUniquelyReferenced_nonNull_native);
    v22 = *(v8 + 16);
    v23 = *(v8 + 24);
    *(v8 + 16) = v18;
    *(v8 + 24) = 0;
    v24 = *(v8 + 32);
    *(v8 + 32) = 0x80;
    return sub_25317079C(v22, v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB60C(double a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 4;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v6 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v6 + 16);
    v17 = *(v6 + 24);
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v6 + 16);
    v21 = *(v6 + 24);
    *(v6 + 16) = v16;
    *(v6 + 24) = 0;
    v22 = *(v6 + 32);
    *(v6 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB72C(float a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = LODWORD(a1);
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB840(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = a1;
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB954(__int16 a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = a1;
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBA68(int a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = a1;
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBB7C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = a1;
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 2;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBC90(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = a1;
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 2;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBDA4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = a1;
  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 2;
  v8 = *v3;
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  result = sub_2531BB1EC(&v23);
  v13 = *(v5 + 32);
  if ((v13 & 0xC0) == 0x80)
  {
    v14 = v24;
    v15 = v23;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v18, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2531BDD70(v7, v15, v14, isUniquelyReferenced_nonNull_native);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    *(v5 + 16) = v25;
    *(v5 + 24) = 0;
    v22 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBEB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = v4[1];
  _s14ValueReferenceCMa();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 0;
  *(v9 + 32) = a4;
  v10 = *v4;
  v11 = v4[2];
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  result = sub_2531BB1EC(&v25);
  v15 = *(v8 + 32);
  if ((v15 & 0xC0) == 0x80)
  {
    v16 = v26;
    v17 = v25;
    v18 = *(v8 + 16);
    v19 = *(v8 + 24);
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = -64;

    sub_25317079C(v20, v19, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2531BDD70(v9, v17, v16, isUniquelyReferenced_nonNull_native);
    v22 = *(v8 + 16);
    v23 = *(v8 + 24);
    *(v8 + 16) = v18;
    *(v8 + 24) = 0;
    v24 = *(v8 + 32);
    *(v8 + 32) = 0x80;
    return sub_25317079C(v22, v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a3 + 16);
  v41 = sub_2531DAAF4();
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v41);
  v15 = &v37 - v14;
  v38 = v5;
  v16 = *v5;
  v44 = a4;
  v45 = a5;
  v17 = __swift_allocate_boxed_opaque_existential_0(&v42);
  (*(*(a4 - 8) + 16))(v17, a1, a4);
  v18 = *(v16 + 32);
  v19 = *(v11 - 1);
  v20 = *(v19 + 16);
  v39 = a2;
  v20(v15, a2, v11);
  (*(v19 + 56))(v15, 0, 1, v11);
  v21 = *(a3 + 24);

  v22 = v40;
  v23 = sub_2531B90EC(&v42, v18, v15, v11, v21);
  if (v22)
  {
    (*(v12 + 8))(v15, v41);

    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    v40 = v23;
    (*(v12 + 8))(v15, v41);

    __swift_destroy_boxed_opaque_existential_1(&v42);
    v26 = v38[1];
    v25 = v38[2];
    result = sub_2531BB1EC(&v42);
    v27 = *(v26 + 32);
    if ((v27 & 0xC0) == 0x80)
    {
      v28 = v43;
      v29 = v42;
      v30 = *(v26 + 16);
      v31 = *(v26 + 24);
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = -64;

      sub_25317079C(v32, v31, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v30;
      sub_2531BDD70(v40, v29, v28, isUniquelyReferenced_nonNull_native);
      v34 = *(v26 + 16);
      v35 = *(v26 + 24);
      *(v26 + 16) = v46;
      *(v26 + 24) = 0;
      v36 = *(v26 + 32);
      *(v26 + 32) = 0x80;
      return sub_25317079C(v34, v35, v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2531BC284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a6;
  v62 = a4;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2531DAAF4();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = *v6;
  v22 = v6[1];
  v23 = v6[2];
  v24 = *(a3 + 24);
  v63 = a2;
  v66 = v23;
  v67 = v21;
  result = sub_2531BB1EC(&v69);
  if ((*(v22 + 32) & 0xC0) != 0x80)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v59 = v14;
  v60 = a5;
  v26 = v69;
  v27 = v70;
  v28 = *(v22 + 16);
  v29 = *(v28 + 16);
  v58 = v24;
  if (!v29 || (result = sub_25317DA10(v69, v70), (v30 & 1) == 0))
  {
    v57 = v26;
    v34 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = v34;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
    v35 = *(v22 + 32);
    v32 = v68;
    if ((v35 & 0xC0) != 0x80)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v31 = result;
    v37 = *(v22 + 16);
    v36 = *(v22 + 24);
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = -64;

    sub_2531BEB9C(v37, v36, v35);
    sub_25317079C(v37, v36, v35);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v37;
    sub_2531BDD70(v31, v57, v27, isUniquelyReferenced_nonNull_native);
    v39 = *(v22 + 16);
    v40 = *(v22 + 24);
    *(v22 + 16) = v69;
    *(v22 + 24) = 0;
    v41 = *(v22 + 32);
    *(v22 + 32) = 0x80;
    sub_25317079C(v39, v40, v41);
    goto LABEL_8;
  }

  v31 = *(*(v28 + 56) + 8 * result);
  v32 = v68;
  if ((*(v31 + 32) & 0xC0) == 0x80)
  {
    v33 = *(*(v28 + 56) + 8 * result);
    swift_retain_n();
LABEL_8:
    v42 = v64;
    v43 = v65;
    (*(v11 + 16))(v20, v63, v10);
    (*(v11 + 56))(v20, 0, 1, v10);
    (*(v42 + 16))(v32, v20, v43);
    if ((*(v11 + 48))(v32, 1, v10) == 1)
    {
      v44 = *(v42 + 8);
      v45 = v67;

      v44(v20, v43);
      v44(v32, v43);
      v46 = v66;

LABEL_16:
      v69 = v45;
      v70 = v31;
      v71 = v46;
      _s12ValueEncoderV14KeyedContainerVMa();

      swift_getWitnessTable();
      sub_2531DAF14();
    }

    v47 = *(v11 + 32);
    v48 = v59;
    v47(v59, v32, v10);
    v46 = swift_allocObject();
    v49 = v58;
    v46[5] = v10;
    v46[6] = v49;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46 + 2);
    v47(boxed_opaque_existential_0, v48, v10);
    v51 = *(v42 + 8);
    v45 = v67;

    v51(v20, v43);
    v52 = v66;
    v46[7] = v66;
    if (v52 >> 62)
    {
      if (v52 >> 62 != 1)
      {
        v55 = 1;
        goto LABEL_15;
      }

      v53 = ((v52 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v53 = v52 + 8;
    }

    v54 = *v53;

    v55 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
LABEL_15:
      v46[8] = v55;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2531BC784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(a2 + 16);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2531DAAF4();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = *v3;
  v19 = v3[1];
  v20 = *(a2 + 24);
  v58 = v3[2];
  v59 = v18;
  result = sub_2531BB1EC(&v60);
  if ((*(v19 + 32) & 0xC0) != 0x80)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v53 = v10;
  v54 = a1;
  v52 = v20;
  v22 = v60;
  v23 = v61;
  v24 = *(v19 + 16);
  if (!*(v24 + 16) || (result = sub_25317DA10(v60, v61), (v25 & 1) == 0))
  {
    v31 = v15;
    v51 = a3;
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F90];
    *(result + 24) = 0;
    *(result + 32) = 64;
    v32 = *(v19 + 32);
    if ((v32 & 0xC0) != 0x80)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v26 = result;
    v33 = *(v19 + 16);
    v34 = *(v19 + 24);
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = -64;

    sub_2531BEB9C(v33, v34, v32);
    sub_25317079C(v33, v34, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v33;
    sub_2531BDD70(v26, v22, v23, isUniquelyReferenced_nonNull_native);
    v36 = *(v19 + 16);
    v37 = *(v19 + 24);
    *(v19 + 16) = v60;
    *(v19 + 24) = 0;
    v38 = *(v19 + 32);
    *(v19 + 32) = 0x80;
    sub_25317079C(v36, v37, v38);
    a3 = v51;
    v29 = v56;
    v28 = v57;
    v30 = v55;
    v15 = v31;
    goto LABEL_8;
  }

  v26 = *(*(v24 + 56) + 8 * result);
  if ((*(v26 + 32) & 0xC0) == 0x40)
  {
    v27 = *(*(v24 + 56) + 8 * result);
    swift_retain_n();
    v29 = v56;
    v28 = v57;
    v30 = v55;
LABEL_8:
    (*(v30 + 16))(v17, v54, v7);
    (*(v30 + 56))(v17, 0, 1, v7);
    (*(v29 + 16))(v15, v17, v28);
    if ((*(v30 + 48))(v15, 1, v7) == 1)
    {
      v39 = *(v29 + 8);

      v39(v17, v28);
      v39(v15, v28);
      v40 = v58;

LABEL_16:
      a3[3] = &_s12ValueEncoderV16UnkeyedContainerVN;
      a3[4] = sub_2531BD884();

      *a3 = v59;
      a3[1] = v26;
      a3[2] = v40;
      return result;
    }

    v41 = *(v30 + 32);
    v42 = v53;
    v41(v53, v15, v7);
    v40 = swift_allocObject();
    v43 = v52;
    v40[5] = v7;
    v40[6] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40 + 2);
    v41(boxed_opaque_existential_0, v42, v7);
    v45 = *(v29 + 8);

    v45(v17, v28);
    v46 = v58;
    v40[7] = v58;
    if (v46 >> 62)
    {
      if (v46 >> 62 != 1)
      {
        v49 = 1;
        goto LABEL_15;
      }

      v47 = ((v46 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v47 = v46 + 8;
    }

    v48 = *v47;

    v49 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
LABEL_15:
      v40[8] = v49;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2531BCC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s23ValueReferencingEncoderCMa();
  v13 = *v3;
  v14 = v3[1];
  v15 = v3[2];
  v16 = *(a2 + 24);

  sub_2531BB1EC(&v22);
  v20 = v22;
  v21 = v23;
  v17 = *(v13 + 32);
  (*(v8 + 16))(v11, a1, v7);

  v18 = sub_2531BEBC0(v13, v11, &v20, v17, v14, v12, v7, v16);

  a3[3] = v12;
  result = sub_2531BEB54(qword_27F58DD98, _s23ValueReferencingEncoderCMa);
  a3[4] = result;
  *a3 = v18;
  return result;
}

uint64_t sub_2531BCE20(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2531BB1E4(*v1, *(v1 + 8), *(v1 + 16));
}

BOOL sub_2531BD2B4()
{
  swift_beginAccess();
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[3];
    }

    v2 = sub_2531DAD44();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[4];

  v4 = sub_25316B2C4(v3);

  v5 = *(v4 + 16);

  v6 = *(v0[9] + 32);

  v7 = sub_25316B2C4(v6);

  v8 = *(v7 + 16);

  return v2 == v5 + ~v8;
}

uint64_t sub_2531BD394()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  j__swift_release();
  v4 = *(v0 + 72);
}

uint64_t sub_2531BD3C8()
{
  v4 = v0;
  swift_beginAccess();
  v7 = *(v0 + 24);
  v6 = (v0 + 24);
  v5 = v7;
  if (v7 >> 62)
  {
    v8 = sub_2531DAD44();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
LABEL_15:
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);

      v23 = *(v4 + 32);

      v24 = *(v4 + 48);
      v25 = *(v4 + 56);
      v26 = *(v4 + 64);
      j__swift_release();
      v27 = *(v4 + 72);

      return v4;
    }
  }

  if (v8 == 1)
  {
    swift_beginAccess();
    v9 = *v6;
    if (*v6 >> 62)
    {
      if (v9 < 0)
      {
        v29 = *v6;
      }

      if (sub_2531DAD44())
      {
LABEL_6:
        v3 = sub_2531B7BC4();
        swift_endAccess();
        v1 = *(v4 + 48);
        v2 = *(v4 + 56);
        v10 = *(v4 + 64);
        if (v10 < 0)
        {
          v18 = *(v1 + 32);
          if ((v18 & 0xC0) == 0x80)
          {
            v20 = *(v1 + 16);
            v19 = *(v1 + 24);
            *(v1 + 16) = 0;
            *(v1 + 24) = 0;
            *(v1 + 32) = -64;
            j__swift_retain();
            sub_2531BEB9C(v20, v19, v18);
            sub_25317079C(v20, v19, v18);
            sub_2531B6C20(v3, v2, v10 & 1);
            v14 = *(v1 + 16);
            v15 = *(v1 + 24);
            *(v1 + 16) = v20;
            *(v1 + 24) = 0;
            v16 = *(v1 + 32);
            v17 = 0x80;
            goto LABEL_14;
          }

          goto LABEL_26;
        }

        v11 = *(v1 + 16);
        v12 = *(v1 + 32);
        if ((v12 & 0xC0) != 0x40)
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v13 = *(v1 + 24);
        v30 = *(v1 + 16);
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = -64;
        j__swift_retain();
        sub_2531BEB9C(v11, v13, v12);
        sub_25317079C(v11, v13, v12);
        if (!(v11 >> 62))
        {
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2)
          {
            goto LABEL_10;
          }

          goto LABEL_23;
        }

LABEL_22:
        if (sub_2531DAD44() >= v2)
        {
LABEL_10:
          if ((v2 & 0x8000000000000000) == 0)
          {
            sub_2531D4FF0(v2, v2, v3);

            v14 = *(v1 + 16);
            v15 = *(v1 + 24);
            *(v1 + 16) = v30;
            *(v1 + 24) = 0;
            v16 = *(v1 + 32);
            v17 = 64;
LABEL_14:
            *(v1 + 32) = v17;
            sub_25317079C(v14, v15, v16);
            j__swift_release();
            goto LABEL_15;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_27:
  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t sub_2531BD698()
{
  sub_2531BD3C8();

  return swift_deallocClassInstance();
}

uint64_t sub_2531BD6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 17))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = ((*(a1 + 16) >> 7) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 16) >> 1) & 0x3F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2531BD76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_2531BD7EC(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_2531BD82C(uint64_t a1)
{
  result = sub_2531BEB54(&qword_27F58DD80, _s26ValueEncoderImplementationCMa);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531BD884()
{
  result = qword_27F58DD90;
  if (!qword_27F58DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD90);
  }

  return result;
}

uint64_t sub_2531BD8F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE8, &unk_2531E7CF0);
  v40 = a2;
  result = sub_2531DAD64();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 12 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_2531DB3F4();
      v28 = __ROR8__(v24, 32);
      if (v25)
      {
        v29 = v24;
      }

      else
      {
        v29 = v28;
      }

      MEMORY[0x259BFF270](v29);
      result = sub_2531DB454();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 12 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_38;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_2531BDBA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2531DAB64() + 1) & ~v5;
    do
    {
      v9 = 12 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 12 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_2531DB3F4();
      v14 = __ROR8__(v12, 32);
      if (v13)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      MEMORY[0x259BFF270](v15);
      result = sub_2531DB454();
      v16 = result & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(a2 + 48);
        v18 = v17 + 12 * v3;
        v19 = (v17 + v9);
        if (12 * v3 < v9 || v18 >= v19 + 12 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 8) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2531BDD70(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25317DA10(a2, a3 & 1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2531BD8F0(v16, a4 & 1);
      v20 = *v5;
      result = sub_25317DA10(a2, a3 & 1);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2531DB364();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2531BDEE4();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    v25 = v22[6] + 12 * result;
    *v25 = a2;
    *(v25 + 8) = a3 & 1;
    *(v22[7] + 8 * result) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = v22[7];
  v24 = *(v23 + 8 * result);
  *(v23 + 8 * result) = a1;
}

void *sub_2531BDEE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE8, &unk_2531E7CF0);
  v2 = *v0;
  v3 = sub_2531DAD54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 12 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 12 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2531BE058(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2531C80D4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2531BE0C4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2531BE0C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2531DAF24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD48, &qword_2531E73C8);
        v5 = sub_2531DA8E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2531BE280(v7, v8, a1, v4);
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
    return sub_2531BE1CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2531BE1CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 24 * a3);
    v8 = *v7;
    v9 = __ROR8__(*v7, 32);
    v10 = *(v7 + 8);
    if (v10)
    {
      v9 = v8;
    }

    v11 = v6;
    v12 = v5;
    while (1)
    {
      result = *(v12 + 8);
      v13 = __ROR8__(*v12, 32);
      v14 = *v12;
      if (!*(v12 + 8))
      {
        v14 = v13;
      }

      if (v9 >= v14)
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v15 = *(v12 + 40);
      *(v12 + 24) = *v12;
      result = *(v12 + 16);
      *(v12 + 40) = result;
      *v12 = v8;
      *(v12 + 8) = v10;
      *(v12 + 16) = v15;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2531BE280(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_133:
      result = sub_2531C80C0(v9);
      v9 = result;
    }

    v94 = *(v9 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = *&v9[16 * v94];
        v96 = *&v9[16 * v94 + 24];
        sub_2531BE8C8((*a3 + 24 * v95), (*a3 + 24 * *&v9[16 * v94 + 16]), *a3 + 24 * v96, v7);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2531C80C0(v9);
        }

        if (v94 - 2 >= *(v9 + 2))
        {
          goto LABEL_127;
        }

        v97 = &v9[16 * v94];
        *v97 = v95;
        *(v97 + 1) = v96;
        result = sub_2531C8034(v94 - 1);
        v94 = *(v9 + 2);
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *a3 + 24 * v8;
      v12 = *v11;
      LODWORD(v13) = *(v11 + 8);
      v14 = 24 * v10;
      v15 = *a3 + 24 * v10;
      v16 = __ROR8__(v12, 32);
      if (v13)
      {
        v16 = v12;
      }

      v17 = __ROR8__(*v15, 32);
      v18 = *v15;
      if (!*(v15 + 8))
      {
        v18 = v17;
      }

      v19 = v10 + 2;
      v20 = (v15 + 56);
      while (v6 != v19)
      {
        v21 = __ROR8__(v12, 32);
        v22 = *(v20 - 1);
        v23 = *v20;
        v20 += 24;
        result = v23;
        v24 = __ROR8__(v22, 32);
        if (v23)
        {
          v24 = v22;
        }

        if (v13)
        {
          v13 = v12;
        }

        else
        {
          v13 = v21;
        }

        v25 = (v16 < v18) ^ (v24 >= v13);
        ++v19;
        LOBYTE(v13) = result;
        v12 = v22;
        if ((v25 & 1) == 0)
        {
          v8 = v19 - 1;
          if (v16 >= v18)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }
      }

      v8 = v6;
      if (v16 >= v18)
      {
        goto LABEL_29;
      }

LABEL_20:
      if (v8 < v10)
      {
        goto LABEL_130;
      }

      if (v10 < v8)
      {
        v26 = 24 * v8 - 8;
        v27 = v8;
        v28 = v10;
        do
        {
          if (v28 != --v27)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            v29 = (v35 + v14);
            v30 = (v35 + v26);
            v31 = *v29;
            v32 = *(v29 + 8);
            v33 = v29[2];
            v34 = *v30;
            *v29 = *(v30 - 1);
            v29[2] = v34;
            *(v30 - 2) = v31;
            *(v30 - 8) = v32;
            *v30 = v33;
          }

          ++v28;
          v26 -= 24;
          v14 += 24;
        }

        while (v28 < v27);
        v6 = a3[1];
      }
    }

LABEL_29:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_129;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_131;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v8 < v10)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25316A1C4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v49 = *(v9 + 2);
    v48 = *(v9 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_25316A1C4((v48 > 1), v49 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v50;
    v51 = &v9[16 * v49];
    *(v51 + 4) = v10;
    *(v51 + 5) = v8;
    v52 = *v99;
    if (!*v99)
    {
      goto LABEL_138;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v9 + 4);
          v55 = *(v9 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_70:
          if (v57)
          {
            goto LABEL_117;
          }

          v70 = &v9[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_120;
          }

          v76 = &v9[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_124;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v80 = &v9[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_84:
        if (v75)
        {
          goto LABEL_119;
        }

        v83 = &v9[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_91:
        v7 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v91 = *&v9[16 * v7 + 32];
        v92 = *&v9[16 * v53 + 40];
        sub_2531BE8C8((*a3 + 24 * v91), (*a3 + 24 * *&v9[16 * v53 + 32]), *a3 + 24 * v92, v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2531C80C0(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_114;
        }

        v93 = &v9[16 * v7];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_2531C8034(v53);
        v50 = *(v9 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v9[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_115;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_116;
      }

      v65 = &v9[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_118;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_121;
      }

      if (v69 >= v61)
      {
        v87 = &v9[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_101;
    }
  }

  v36 = *a3;
  v37 = *a3 + 24 * v8 - 24;
  v38 = v10 - v8;
LABEL_39:
  v39 = (v36 + 24 * v8);
  v40 = *v39;
  v41 = __ROR8__(*v39, 32);
  v42 = *(v39 + 8);
  if (v42)
  {
    v41 = v40;
  }

  v43 = v38;
  v44 = v37;
  while (1)
  {
    result = __ROR8__(*v44, 32);
    v45 = *v44;
    if (!*(v44 + 8))
    {
      v45 = result;
    }

    if (v41 >= v45)
    {
LABEL_38:
      ++v8;
      v37 += 24;
      --v38;
      if (v8 != v6)
      {
        goto LABEL_39;
      }

      v8 = v6;
      goto LABEL_50;
    }

    if (!v36)
    {
      break;
    }

    v46 = *(v44 + 40);
    *(v44 + 24) = *v44;
    *(v44 + 40) = *(v44 + 16);
    *v44 = v40;
    *(v44 + 8) = v42;
    *(v44 + 16) = v46;
    v44 -= 24;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_2531BE8C8(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = __ROR8__(*v6, 32);
      v17 = *v6;
      if (!v6[8])
      {
        v17 = v16;
      }

      v18 = __ROR8__(*v4, 32);
      if (v4[8])
      {
        v18 = *v4;
      }

      if (v17 < v18)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 24;
    v5 -= 24;
    v20 = v12;
    do
    {
      v21 = *(v20 - 24);
      v20 -= 24;
      v22 = (v5 + 24);
      v23 = __ROR8__(v21, 32);
      v24 = v21;
      if (!*(v20 + 8))
      {
        v24 = v23;
      }

      v25 = __ROR8__(*(v6 - 3), 32);
      if (*(v6 - 16))
      {
        v25 = *(v6 - 3);
      }

      if (v24 < v25)
      {
        if (v22 != v6)
        {
          v27 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v27;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v22 != v12)
      {
        v26 = *v20;
        *(v5 + 16) = *(v20 + 16);
        *v5 = v26;
      }

      v5 -= 24;
      v12 = v20;
    }

    while (v20 > v4);
    v12 = v20;
  }

LABEL_39:
  v28 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v29 = (v28 >> 2) + (v28 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v29])
  {
    memmove(v6, v4, 24 * v29);
  }

  return 1;
}

uint64_t sub_2531BEB54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2531BEB9C(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_25316D004(result, a2, a3);
  }
}

uint64_t sub_2531BEBC0(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a4;
  *&v54 = a7;
  *(&v54 + 1) = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a2, a7);
  _s23ValueReferencingEncoderCMa();
  v14 = swift_allocObject();
  v15 = *a3;
  v16 = *(a3 + 8);
  v51 = a1;
  *(v14 + 72) = a1;
  *(v14 + 48) = a5;
  *(v14 + 56) = v15;
  *(v14 + 64) = v16 | 0x80;
  v49 = v54;
  v17 = v54;
  v50 = __swift_project_boxed_opaque_existential_1(v53, v54);
  v18 = sub_2531DAAF4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 - 8);
  v23 = v22;
  (*(v22 + 16))(v21, v50, v17);
  v24 = (*(v22 + 56))(v21, 0, 1, v17);
  v25 = *(v22 + 64);
  v26 = v18;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  (*(v19 + 16))(v21, v21, v18);
  if ((*(v23 + 48))(v21, 1, v17) == 1)
  {
    v30 = *(v19 + 8);
    v31 = v51;

    v30(v21, v18);
    v30(v21, v18);
    v32 = v52;
    v33 = v52 >> 62;
    v34 = v52;
    v35 = v31;
    if (v52 >> 62)
    {
LABEL_3:
      if (v33 != 1)
      {
        v44 = 0;
LABEL_14:
        swift_beginAccess();
        v48 = MEMORY[0x277D84F90];
        *(v14 + 16) = *(v35 + 16);
        *(v14 + 24) = v48;
        *(v14 + 32) = v34;
        *(v14 + 40) = v44;

        __swift_destroy_boxed_opaque_existential_1(v53);
        return v14;
      }

      v32 &= 0x3FFFFFFFFFFFFFFFuLL;
      v36 = 32;
LABEL_13:
      v44 = *(v32 + v36);
      goto LABEL_14;
    }

LABEL_12:
    v36 = 64;
    goto LABEL_13;
  }

  v37 = *(v23 + 32);
  v37(v29, v21, v17);
  v34 = swift_allocObject();
  *(v34 + 40) = v49;
  v38 = __swift_allocate_boxed_opaque_existential_0((v34 + 16));
  v37(v38, v29, v17);
  v39 = *(v19 + 8);
  v40 = v51;

  result = v39(v21, v26);
  v32 = v52;
  *(v34 + 56) = v52;
  v33 = v32 >> 62;
  v35 = v40;
  if (!(v32 >> 62))
  {
    v43 = 64;
    v42 = v32;
LABEL_10:
    v45 = *(v42 + v43);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v33 == 1)
  {
    v42 = v32 & 0x3FFFFFFFFFFFFFFFLL;
    v43 = 32;
    goto LABEL_10;
  }

  v47 = 1;
  if (!__OFSUB__(v33, 1))
  {
LABEL_11:
    *(v34 + 64) = v47;
    if (v33)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2531BEFD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2531BF00C(uint64_t *a1, int a2)
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

uint64_t sub_2531BF054(uint64_t result, int a2, int a3)
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

double static MTR.Cluster.RVCRunMode.attributePaths(endpoint:)(__int16 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2531E53E0;
  *(v2 + 32) = v1;
  *(v2 + 36) = 0x100000054;
  *(v2 + 44) = v1;
  *&result = 84;
  *(v2 + 48) = 84;
  return result;
}

uint64_t sub_2531BF1B0@<X0>(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_25318AA74(*a2 | 0x5400000000, 1u, *a1, a1[1]);
  v5 = [v4 unsignedShortValue];

  return MTR.Cluster.RVCRunMode.RunModeType.init(rawValue:)(v5, a3);
}

double static MTR.Cluster.RVCRunMode.currentModeAttributePath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x100000054;
  *(a2 + 4) = 0x100000054;
  return result;
}

uint64_t MTR.Cluster.RVCRunMode.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static MTR.Cluster.RVCRunMode.toRunModeType(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_44:
    v9 = sub_2531C2D5C(v3, sub_2531C2F00, &type metadata for MTR.Cluster.RVCRunMode.RunModeType, sub_2531C0108);

    return v9;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25317E5F0(v2, v13);
    sub_25317E5F0(v13, &v11);
    sub_2531BF79C();
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      goto LABEL_4;
    }

    v4 = [v10 value];
    v11 = 0;
    v12 = 1;
    sub_2531DAA14();

    result = __swift_destroy_boxed_opaque_existential_1(v13);
    if (v12)
    {
      goto LABEL_4;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >> 16)
    {
      goto LABEL_46;
    }

    if (v11 <= 5u)
    {
      if (v11 <= 2u)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            v6 = 1;
          }

          else
          {
            v6 = 2;
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_38;
      }

      switch(v11)
      {
        case 3u:
          v6 = 3;
          goto LABEL_38;
        case 4u:
          v6 = 4;
          goto LABEL_38;
        case 5u:
          v6 = 5;
          goto LABEL_38;
      }
    }

    else if (v11 <= 8u)
    {
      switch(v11)
      {
        case 6u:
          v6 = 6;
          goto LABEL_38;
        case 7u:
          v6 = 7;
          goto LABEL_38;
        case 8u:
          v6 = 8;
          goto LABEL_38;
      }
    }

    else if (v11 > 0x4000u)
    {
      if (v11 == 16385)
      {
        v6 = 11;
        goto LABEL_38;
      }

      if (v11 == 16386)
      {
        v6 = 12;
        goto LABEL_38;
      }
    }

    else
    {
      if (v11 == 9)
      {
        v6 = 9;
        goto LABEL_38;
      }

      if (v11 == 0x4000)
      {
        v6 = 10;
LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25316A648(0, *(v3 + 2) + 1, 1, v3);
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          v3 = sub_25316A648((v7 > 1), v8 + 1, 1, v3);
        }

        *(v3 + 2) = v8 + 1;
        v3[v8 + 32] = v6;
      }
    }

LABEL_4:
    v2 += 32;
    if (!--v1)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

double static MTR.Cluster.RVCRunMode.supportedModesAttributePath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 84;
  *(a2 + 4) = 84;
  return result;
}

uint64_t MTR.Cluster.RVCRunMode.RunModeType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 5u)
  {
    goto LABEL_7;
  }

  if (result <= 8u)
  {
    if (result == 6 || result == 7 || result == 8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (result <= 0x4000u)
    {
      if (result != 9)
      {
        if (result == 0x4000)
        {
          *a2 = 10;
          return result;
        }

        goto LABEL_16;
      }

LABEL_7:
      *a2 = result;
      return result;
    }

    if (result == 16385)
    {
      *a2 = 11;
      return result;
    }

    if (result == 16386)
    {
      *a2 = 12;
      return result;
    }
  }

LABEL_16:
  *a2 = 13;
  return result;
}

unint64_t sub_2531BF79C()
{
  result = qword_27F58DE20;
  if (!qword_27F58DE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F58DE20);
  }

  return result;
}

uint64_t static MTR.Cluster.RVCRunMode.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2531DB144() & 1) == 0)
  {
    return 0;
  }

  return sub_25318DDC0(v2, v3);
}

uint64_t MTR.Cluster.RVCRunMode.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x259BFF230](*v1);
  sub_2531DA734();

  return sub_25318DDC8(a1, v5);
}

uint64_t MTR.Cluster.RVCRunMode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_25318DDC8(v6, v4);
  return sub_2531DB454();
}

uint64_t sub_2531BF958()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_25318DDC8(v6, v4);
  return sub_2531DB454();
}

uint64_t sub_2531BF9D0(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x259BFF230](*v1);
  sub_2531DA734();

  return sub_25318DDC8(a1, v5);
}

uint64_t sub_2531BFA38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_25318DDC8(v6, v4);
  return sub_2531DB454();
}

uint64_t sub_2531BFAAC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2531DB144() & 1) == 0)
  {
    return 0;
  }

  return sub_25318DDC0(v2, v3);
}

uint64_t sub_2531BFB88()
{
  v1 = *v0;
  sub_2531DB3F4();
  v2 = word_2531E7FEA[v1];
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_2531BFC10()
{
  v1 = *v0;
  sub_2531DB3F4();
  v2 = word_2531E7FEA[v1];
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_2531BFD0C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2531DB3F4();
  v7 = word_2531E7FEA[a2];
  sub_2531DB424();
  v8 = sub_2531DB454();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (word_2531E7FEA[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2531C0FF0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2531BFE24(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2531DB3F4();
  sub_2531DB434();
  v7 = sub_2531DB454();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2531C1398(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2531BFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  v15 = *v8;
  v16 = *(*v8 + 40);
  sub_2531DB3F4();
  MEMORY[0x259BFF230](a2);
  sub_2531DA734();
  a6(v33, a5);
  v17 = sub_2531DB454();
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = (*(v15 + 48) + 32 * v19);
      if (*v21 == a2)
      {
        v22 = v21[3];
        v23 = v21[1] == a3 && v21[2] == a4;
        if (v23 || (sub_2531DB144()) && (a8(v22, a5))
        {
          break;
        }
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v27 = *(v15 + 48) + 32 * v19;
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    *a1 = *v27;
    *(a1 + 16) = v28;
    *(a1 + 24) = v29;

    return 0;
  }

  else
  {
LABEL_12:
    v24 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *v31;

    a7(a2, a3, a4, a5, v19, isUniquelyReferenced_nonNull_native);
    *v31 = v33[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }
}

uint64_t sub_2531C0108(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2531DB3F4();
  v7 = word_2531E7FEA[a2];
  sub_2531DB424();
  v8 = sub_2531DB454();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (word_2531E7FEA[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2531C1710(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2531C0220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_2531DB3F4();
  v25 = a2;
  v10 = 0x42414003020100uLL >> (8 * a2);
  sub_2531DB414();
  sub_2531DB414();
  if (a4)
  {
    sub_2531DA734();
  }

  v11 = sub_2531DB454();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_16:
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v26;

    sub_2531C188C(v25, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v26 = v28;
    *a1 = v25;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v14 = ~v12;
  v15 = *(v8 + 48);
  while (1)
  {
    v16 = v15 + 24 * v13;
    if ((0x42414003020100uLL >> (8 * *v16)) != v10)
    {
      goto LABEL_6;
    }

    v17 = *(v16 + 16);
    if (v17)
    {
      break;
    }

    if (!a4)
    {
      goto LABEL_17;
    }

LABEL_6:
    v13 = (v13 + 1) & v14;
    if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v18 = *(v16 + 8) == a3 && v17 == a4;
  if (!v18 && (sub_2531DB144() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:

  v22 = *(v8 + 48) + 24 * v13;
  v24 = *(v22 + 8);
  v23 = *(v22 + 16);
  *a1 = *v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23;

  return 0;
}

uint64_t sub_2531C0418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D988, &qword_2531E5608);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2531DB3F4();
      v20 = word_2531E7FEA[v18];
      sub_2531DB424();
      result = sub_2531DB454();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2531C0674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE78, &qword_2531E7FD8);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2531DB3F4();
      sub_2531DB434();
      result = sub_2531DB454();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2531C08C4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2531DAB94();
  v9 = result;
  if (*(v6 + 16))
  {
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v28 = v5;
    v29 = result + 56;
    for (i = v6; v14; ++*(v9 + 16))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = (*(v6 + 48) + 32 * (v16 | (v10 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v24 = *(v9 + 40);
      sub_2531DB3F4();
      MEMORY[0x259BFF230](v20);
      sub_2531DA734();
      a4(v32, v22);
      sub_2531DB454();
      v25 = -1 << *(v9 + 32);
      result = sub_2531DAB74();
      *(v29 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v26 = (*(v9 + 48) + 32 * result);
      *v26 = v20;
      v26[1] = v21;
      v6 = i;
      v26[2] = v23;
      v26[3] = v22;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v15)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v6 + 32);
    if (v27 >= 64)
    {
      bzero(v11, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v27;
    }

    v5 = v28;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_2531C0AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE48, &qword_2531E7FC0);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2531DB3F4();
      v20 = word_2531E7FEA[v18];
      sub_2531DB424();
      result = sub_2531DB454();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2531C0D40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE58, &qword_2531E7FC8);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_2531DB3F4();
      sub_2531DB414();
      sub_2531DB414();
      if (v21)
      {
        sub_2531DA734();
      }

      result = sub_2531DB454();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2531C0FF0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2531C0418(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2531C1D38(&qword_27F58D988, &qword_2531E5608);
      a2 = v7;
      goto LABEL_12;
    }

    sub_2531C1FD0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2531DB3F4();
  v10 = word_2531E7FEA[v4];
  sub_2531DB424();
  result = sub_2531DB454();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (word_2531E7FEA[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C116C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a6)
  {
    sub_2531C08C4(v13 + 1, &qword_27F58DE88, &qword_2531E7FE0, sub_25318DDC8);
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_2531C1BDC(&qword_27F58DE88, &qword_2531E7FE0);
      goto LABEL_19;
    }

    sub_2531C241C(v13 + 1, &qword_27F58DE88, &qword_2531E7FE0, sub_25318DDC8);
  }

  v15 = *v6;
  v16 = *(*v6 + 40);
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v12);
  sub_2531DA734();
  sub_25318DDC8(v27, a4);
  result = sub_2531DB454();
  v17 = -1 << *(v15 + 32);
  a5 = result & ~v17;
  if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    do
    {
      v19 = (*(v15 + 48) + 32 * a5);
      if (*v19 == v12)
      {
        v20 = v19[3];
        v21 = v19[1] == a2 && v19[2] == a3;
        if (v21 || (result = sub_2531DB144(), (result & 1) != 0))
        {
          result = sub_25318DDC0(v20, a4);
          if (result)
          {
            goto LABEL_22;
          }
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_19:
  v22 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v23 = (*(v22 + 48) + 32 * a5);
  *v23 = v12;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_22:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C1398(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2531C0674(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2531C1A9C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2531C21FC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2531DB3F4();
  sub_2531DB434();
  result = sub_2531DB454();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C14E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a6)
  {
    sub_2531C08C4(v13 + 1, &qword_27F58DE68, &qword_2531E7FD0, sub_25318DDC8);
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_2531C1BDC(&qword_27F58DE68, &qword_2531E7FD0);
      goto LABEL_19;
    }

    sub_2531C241C(v13 + 1, &qword_27F58DE68, &qword_2531E7FD0, sub_25318DDC8);
  }

  v15 = *v6;
  v16 = *(*v6 + 40);
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v12);
  sub_2531DA734();
  sub_25318DDC8(v27, a4);
  result = sub_2531DB454();
  v17 = -1 << *(v15 + 32);
  a5 = result & ~v17;
  if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    do
    {
      v19 = (*(v15 + 48) + 32 * a5);
      if (*v19 == v12)
      {
        v20 = v19[3];
        v21 = v19[1] == a2 && v19[2] == a3;
        if (v21 || (result = sub_2531DB144(), (result & 1) != 0))
        {
          result = sub_25318DDC0(v20, a4);
          if (result)
          {
            goto LABEL_22;
          }
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_19:
  v22 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v23 = (*(v22 + 48) + 32 * a5);
  *v23 = v12;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_22:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C1710(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2531C0AE4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2531C1D38(&qword_27F58DE48, &qword_2531E7FC0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_2531C2610(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2531DB3F4();
  v10 = word_2531E7FEA[v4];
  sub_2531DB424();
  result = sub_2531DB454();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (word_2531E7FEA[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C188C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  v27 = result;
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    sub_2531C0D40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_2531C1E68();
      goto LABEL_23;
    }

    sub_2531C283C(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (a3)
  {
    sub_2531DA734();
  }

  result = sub_2531DB454();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      if ((0x42414003020100uLL >> (8 * *v19)) == (0x42414003020100uLL >> (8 * v10)))
      {
        v20 = *(v19 + 16);
        if (v20)
        {
          if (a3)
          {
            v21 = *(v19 + 8) == a2 && v20 == a3;
            if (v21 || (result = sub_2531DB144(), (result & 1) != 0))
            {
LABEL_22:
              result = sub_2531DB354();
              __break(1u);
              break;
            }
          }
        }

        else if (!a3)
        {
          goto LABEL_22;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_23:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v27;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void *sub_2531C1A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE78, &qword_2531E7FD8);
  v2 = *v0;
  v3 = sub_2531DAB84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2531C1BDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2531DAB84();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = *(v4 + 48) + v19;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v6 + 48) + v19;
        *v23 = *v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2531C1D38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2531DAB84();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2531C1E68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE58, &qword_2531E7FC8);
  v2 = *v0;
  v3 = sub_2531DAB84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2531C1FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D988, &qword_2531E5608);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2531DB3F4();
      v19 = word_2531E7FEA[v17];
      sub_2531DB424();
      result = sub_2531DB454();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2531C21FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE78, &qword_2531E7FD8);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2531DB3F4();
      sub_2531DB434();
      result = sub_2531DB454();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2531C241C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, uint64_t))
{
  v5 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v6 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2531DAB94();
  v8 = result;
  v29 = v5;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    for (i = result + 56; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = (*(v29 + 48) + 32 * (v15 | (v9 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = *(v8 + 40);
      sub_2531DB3F4();
      MEMORY[0x259BFF230](v19);

      sub_2531DA734();
      a4(v30, v22);
      sub_2531DB454();
      v24 = -1 << *(v8 + 32);
      result = sub_2531DAB74();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v25 = (*(v8 + 48) + 32 * result);
      *v25 = v19;
      v25[1] = v20;
      v25[2] = v21;
      v25[3] = v22;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_16;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v26 = v8;
  }

  return result;
}

uint64_t sub_2531C2610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE48, &qword_2531E7FC0);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2531DB3F4();
      v19 = word_2531E7FEA[v17];
      sub_2531DB424();
      result = sub_2531DB454();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2531C283C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE58, &qword_2531E7FC8);
  result = sub_2531DAB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_2531DB3F4();
      sub_2531DB414();
      sub_2531DB414();
      if (v21)
      {

        sub_2531DA734();
      }

      result = sub_2531DB454();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_30;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2531C2AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C3708();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.RVCCleanMode, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_2531BFF1C(v10, v9, v8, v7, v6, sub_25318DDC8, sub_2531C116C, sub_25318DDC0);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2531C2BF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C36B4();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.ID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2531BFE24(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2531C2C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C3660();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.RVCRunMode, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_2531BFF1C(v10, v9, v8, v7, v6, sub_25318DDC8, sub_2531C14E4, sub_25318DDC0);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2531C2D5C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x259BFE820](v7, a3, v8);
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

unint64_t sub_2531C2DE0()
{
  result = qword_27F58DE28;
  if (!qword_27F58DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE28);
  }

  return result;
}

unint64_t sub_2531C2E38()
{
  result = qword_27F58DE30;
  if (!qword_27F58DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE30);
  }

  return result;
}

unint64_t sub_2531C2EAC()
{
  result = qword_27F58DE38;
  if (!qword_27F58DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE38);
  }

  return result;
}

unint64_t sub_2531C2F00()
{
  result = qword_27F58DE40;
  if (!qword_27F58DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE40);
  }

  return result;
}

uint64_t sub_2531C2F54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C2FF4();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.RVCOperationalState, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 16);

      sub_2531C0220(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_2531C2FF4()
{
  result = qword_27F58DE50;
  if (!qword_27F58DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE50);
  }

  return result;
}

uint64_t sub_2531C3048(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = 0;
  v3 = sub_25318B178(*a2 | 0x5400000000, 0, *a1, a1[1]);
  if (!(v3 >> 62))
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v3;
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_72:
    v14 = MEMORY[0x277D84F90];
LABEL_73:

    v41 = sub_2531C2C64(v14);

    return v41;
  }

  v40 = v3;
  v12 = sub_2531DAD44();
  v3 = v40;
  v42 = v40;
  if (!v12)
  {
    goto LABEL_72;
  }

LABEL_6:
  v13 = 0;
  v45 = v3 & 0xFFFFFFFFFFFFFF8;
  v46 = v3 & 0xC000000000000001;
  v44 = v3 + 32;
  v14 = MEMORY[0x277D84F90];
  v43 = v12;
  while (1)
  {
    if (v46)
    {
      v15 = MEMORY[0x259BFEA20](v13, v42);
    }

    else
    {
      if (v13 >= *(v45 + 16))
      {
        goto LABEL_70;
      }

      v15 = *(v44 + 8 * v13);
    }

    v16 = v15;
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_69;
    }

    v50 = v14;
    v18 = [v15 mode];
    v49 = [v18 unsignedIntegerValue];

    v19 = [v16 label];
    v20 = sub_2531DA6D4();
    v47 = v21;
    v48 = v20;

    v22 = [v16 modeTags];
    v23 = sub_2531DA8A4();

    v24 = *(v23 + 16);
    if (v24)
    {
      break;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_55:
    v31 = *(v26 + 2);
    v32 = sub_2531C2F00();
    v54[0] = MEMORY[0x259BFE820](v31, &type metadata for MTR.Cluster.RVCRunMode.RunModeType, v32);
    v33 = *(v26 + 2);
    if (v33)
    {
      v34 = (v26 + 32);
      do
      {
        v35 = *v34++;
        sub_2531C0108(&v52, v35);
        --v33;
      }

      while (v33);
    }

    v36 = v54[0];
    v14 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25316A520(0, *(v50 + 2) + 1, 1, v50);
    }

    v2 = *(v14 + 2);
    v37 = *(v14 + 3);
    if (v2 >= v37 >> 1)
    {
      v14 = sub_25316A520((v37 > 1), v2 + 1, 1, v14);
    }

    *(v14 + 2) = v2 + 1;
    v38 = &v14[32 * v2];
    *(v38 + 4) = v49;
    *(v38 + 5) = v48;
    *(v38 + 6) = v47;
    *(v38 + 7) = v36;
    if (v13 == v43)
    {
      goto LABEL_73;
    }
  }

  v25 = v23 + 32;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25317E5F0(v25, v54);
    sub_25317E5F0(v54, &v52);
    sub_2531BF79C();
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_14;
    }

    v2 = v51;
    v27 = [v51 value];
    v52 = 0;
    v53 = 1;
    sub_2531DAA14();

    __swift_destroy_boxed_opaque_existential_1(v54);
    if (v53)
    {
      goto LABEL_14;
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v52 >> 16)
    {
      goto LABEL_68;
    }

    if (v52 <= 5u)
    {
      if (v52 <= 2u)
      {
        if (v52)
        {
          if (v52 == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }
        }

        else
        {
          v28 = 0;
        }

        goto LABEL_48;
      }

      switch(v52)
      {
        case 3u:
          v28 = 3;
          goto LABEL_48;
        case 4u:
          v28 = 4;
          goto LABEL_48;
        case 5u:
          v28 = 5;
          goto LABEL_48;
      }
    }

    else if (v52 <= 8u)
    {
      switch(v52)
      {
        case 6u:
          v28 = 6;
          goto LABEL_48;
        case 7u:
          v28 = 7;
          goto LABEL_48;
        case 8u:
          v28 = 8;
          goto LABEL_48;
      }
    }

    else if (v52 > 0x4000u)
    {
      if (v52 == 16385)
      {
        v28 = 11;
        goto LABEL_48;
      }

      if (v52 == 16386)
      {
        v28 = 12;
        goto LABEL_48;
      }
    }

    else
    {
      if (v52 == 9)
      {
        v28 = 9;
        goto LABEL_48;
      }

      if (v52 == 0x4000)
      {
        v28 = 10;
LABEL_48:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_25316A648(0, *(v26 + 2) + 1, 1, v26);
        }

        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        if (v30 >= v29 >> 1)
        {
          v26 = sub_25316A648((v29 > 1), v30 + 1, 1, v26);
        }

        *(v26 + 2) = v30 + 1;
        v26[v30 + 32] = v28;
      }
    }

LABEL_14:
    v25 += 32;
    if (!--v24)
    {

      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  swift_once();
  v4 = sub_2531DA274();
  __swift_project_value_buffer(v4, qword_27F59A2A8);
  v5 = v2;
  v6 = sub_2531DA254();
  v7 = sub_2531DAA84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_253166000, v6, v7, "Error occurred while parsing run mode response: %@", v8, 0xCu);
    sub_25316FD44(v9);
    MEMORY[0x259BFFA80](v9, -1, -1);
    MEMORY[0x259BFFA80](v8, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_2531C3660()
{
  result = qword_27F58DE60;
  if (!qword_27F58DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE60);
  }

  return result;
}

unint64_t sub_2531C36B4()
{
  result = qword_27F58DE70;
  if (!qword_27F58DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE70);
  }

  return result;
}

unint64_t sub_2531C3708()
{
  result = qword_27F58DE80;
  if (!qword_27F58DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE80);
  }

  return result;
}

unint64_t sub_2531C375C()
{
  result = qword_27F58DE90;
  if (!qword_27F58DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE90);
  }

  return result;
}

uint64_t sub_2531C37FC(uint64_t *a1, unsigned __int16 *a2, uint64_t (*a3)(id))
{
  v3 = sub_25318AA74(*a2 | 0x6100000000, 4u, *a1, a1[1]);
  v4 = [v3 unsignedCharValue];

  return a3(v4);
}

double static MTR.Cluster.RVCOperationalState.operationalStateMatterPath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x400000061;
  *(a2 + 4) = 0x400000061;
  return result;
}

uint64_t MTR.Cluster.RVCOperationalState.operationalStateLabel.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t static MTR.Cluster.RVCOperationalState.toOperationalStateType(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0xFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (result <= 0x3Fu)
  {
    if (result < 4u)
    {
      *a2 = result;
      return result;
    }

LABEL_11:
    result = 3;
    *a2 = 3;
    return result;
  }

  if (result == 66)
  {
    result = 6;
    *a2 = 6;
    return result;
  }

  if (result != 65)
  {
    if (result == 64)
    {
      result = 4;
      *a2 = 4;
      return result;
    }

    goto LABEL_11;
  }

  result = 5;
  *a2 = 5;
  return result;
}

double static MTR.Cluster.RVCOperationalState.operationalStateListMatterPath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x300000061;
  *(a2 + 4) = 0x300000061;
  return result;
}

uint64_t MTR.Cluster.RVCOperationalState.OperationalStateType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 0x3Fu)
  {
    if (result < 4u)
    {
      *a2 = result;
      return result;
    }

LABEL_9:
    result = 7;
    *a2 = 7;
    return result;
  }

  if (result == 66)
  {
    result = 6;
    *a2 = 6;
    return result;
  }

  if (result != 65)
  {
    if (result == 64)
    {
      result = 4;
      *a2 = 4;
      return result;
    }

    goto LABEL_9;
  }

  result = 5;
  *a2 = 5;
  return result;
}

uint64_t MTR.Cluster.RVCOperationalState.OperationalErrorStateType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x41u)
  {
    if (result > 0x44u)
    {
      switch(result)
      {
        case 'E':
          result = 9;
          *a2 = 9;
          return result;
        case 'F':
          result = 10;
          *a2 = 10;
          return result;
        case 'G':
          result = 11;
          *a2 = 11;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 'B':
          result = 6;
          *a2 = 6;
          return result;
        case 'C':
          result = 7;
          *a2 = 7;
          return result;
        case 'D':
          result = 8;
          *a2 = 8;
          return result;
      }
    }
  }

  else
  {
    if (result < 4u)
    {
      *a2 = result;
      return result;
    }

    if (result == 64)
    {
      result = 4;
      *a2 = 4;
      return result;
    }

    if (result == 65)
    {
      result = 5;
      *a2 = 5;
      return result;
    }
  }

  result = 12;
  *a2 = 12;
  return result;
}

double static MTR.Cluster.RVCOperationalState.operationalStateErrorMatterPath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x500000061;
  *(a2 + 4) = 0x500000061;
  return result;
}

uint64_t static MTR.Cluster.RVCOperationalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((0x42414003020100uLL >> (8 * *a1)) == (0x42414003020100uLL >> (8 * *a2)))
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3)
      {
        if (*(a1 + 8) == *(a2 + 8) && v2 == v3)
        {
          return 1;
        }

        if (sub_2531DB144())
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MTR.Cluster.RVCOperationalState.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = 8 * *v0;
  sub_2531DB414();
  if (!v2)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA734();
}

uint64_t MTR.Cluster.RVCOperationalState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v3)
  {
    sub_2531DA734();
  }

  return sub_2531DB454();
}

uint64_t sub_2531C3DF4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v3)
  {
    sub_2531DA734();
  }

  return sub_2531DB454();
}

uint64_t sub_2531C3E88()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = 8 * *v0;
  sub_2531DB414();
  if (!v2)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA734();
}

uint64_t sub_2531C3F18()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v3)
  {
    sub_2531DA734();
  }

  return sub_2531DB454();
}

uint64_t sub_2531C3FA8(uint64_t a1, uint64_t a2)
{
  if ((0x42414003020100uLL >> (8 * *a1)) == (0x42414003020100uLL >> (8 * *a2)))
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3 && (*(a1 + 8) == *(a2 + 8) && v2 == v3 || (sub_2531DB144() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2531C40C8()
{
  v1 = *v0;
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_2531C4168()
{
  v1 = *v0;
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_2531C42C8()
{
  v1 = *v0;
  sub_2531DB3F4();
  v2 = byte_2531E8382[v1];
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_2531C4350()
{
  v1 = *v0;
  sub_2531DB3F4();
  v2 = byte_2531E8382[v1];
  sub_2531DB414();
  return sub_2531DB454();
}