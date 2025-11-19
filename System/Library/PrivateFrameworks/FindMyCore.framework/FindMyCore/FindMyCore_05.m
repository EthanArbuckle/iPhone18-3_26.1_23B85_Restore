uint64_t static Symbol.sharing.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8798 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA380;
  v2 = qword_27EFAA388;
  v3 = unk_27EFAA390;
  v4 = word_27EFAA398;
  v5 = HIBYTE(word_27EFAA398);
  *a1 = qword_27EFAA378;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEF378()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA3A0 = v8;
  *algn_27EFAA3A8 = v10;
  qword_27EFAA3B0 = 1918985575;
  unk_27EFAA3B8 = 0xE400000000000000;
  word_27EFAA3C0 = 2049;
}

uint64_t static Symbol.settings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA87A0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA3A8;
  v2 = qword_27EFAA3B0;
  v3 = unk_27EFAA3B8;
  v4 = word_27EFAA3C0;
  v5 = HIBYTE(word_27EFAA3C0);
  *a1 = qword_27EFAA3A0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

BOOL _s10FindMyCore6SymbolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 == v9;
  }

  v11 = sub_24AE097C8();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 == v9;
  }

  return result;
}

unint64_t sub_24ADEF64C()
{
  result = qword_27EFAA3C8;
  if (!qword_27EFAA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3C8);
  }

  return result;
}

unint64_t sub_24ADEF6A4()
{
  result = qword_27EFAA3D0;
  if (!qword_27EFAA3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFAA3D8, &qword_24AE107E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3D0);
  }

  return result;
}

unint64_t sub_24ADEF70C()
{
  result = qword_27EFAA3E0;
  if (!qword_27EFAA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3E0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ADEF774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADEF7BC(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Symbol.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADEFA14()
{
  result = qword_27EFAA3E8;
  if (!qword_27EFAA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3E8);
  }

  return result;
}

__n128 ItemModel.init(uniqueID:displayName:imageDefinition:owner:relationship:kind:partsIdentifiers:battery:capabilities:playSoundState:lostModeState:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, char *a11, char *a12)
{
  v12 = *(a3 + 16);
  *(a9 + 32) = *a3;
  *(a9 + 48) = v12;
  *(a9 + 64) = *(a3 + 32);
  v13 = *(a4 + 16);
  *(a9 + 88) = *a4;
  v14 = *a1;
  v15 = a1[1];
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a3 + 48);
  v19 = *(a4 + 48);
  v20 = *a5;
  v21 = *a6;
  v22 = *a8;
  v23 = *a10;
  v24 = *a11;
  v25 = *a12;
  *a9 = v14;
  *(a9 + 8) = v15;
  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  *(a9 + 80) = v18;
  *(a9 + 104) = v13;
  result = *(a4 + 32);
  *(a9 + 120) = result;
  *(a9 + 136) = v19;
  *(a9 + 144) = v20;
  *(a9 + 145) = v21;
  *(a9 + 152) = a7;
  *(a9 + 160) = v22;
  *(a9 + 168) = v23;
  *(a9 + 176) = v24;
  *(a9 + 177) = v25;
  return result;
}

uint64_t sub_24ADEFAF8()
{
  sub_24AE09048();
}

uint64_t ItemModel.displayName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t ItemModel.displayName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ItemModel.imageDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  return sub_24ADB7988(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ItemModel.imageDefinition.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_24ADEFD28(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return result;
}

uint64_t sub_24ADEFD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t ItemModel.owner.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_24ADC4008(v2, v3);
}

__n128 ItemModel.owner.setter(__int128 *a1)
{
  v11 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  sub_24ADEFE3C(v1[11], v1[12]);
  v9 = *a1;
  *(v1 + 13) = a1[1];
  *(v1 + 11) = v9;
  result = v11;
  *(v1 + 15) = v11;
  v1[17] = v3;
  return result;
}

uint64_t sub_24ADEFE3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ItemModel.partsIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t ItemModel.resolvedIdentifiers.getter()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
    v2 = v0[19];
    sub_24AE08288();
  }

  else
  {
    v4 = *v0;
    v3 = v0[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90C0, &unk_24AE0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_24AE08288();
    v1 = sub_24ADDBE34(inited);
    swift_setDeallocating();
    sub_24ADF0D3C(inited + 32);
  }

  return v1;
}

uint64_t ItemModel.hash(into:)(__int128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v16 = *(v1 + 88);
  v17 = *(v1 + 104);
  v19 = *(v1 + 112);
  v20 = *(v1 + 96);
  v18 = *(v1 + 120);
  v14 = *(v1 + 64);
  v15 = *(v1 + 128);
  v21 = *(v1 + 136);
  v22 = *(v1 + 144);
  v23 = *(v1 + 145);
  v24 = *(v1 + 152);
  v25 = *(v1 + 160);
  v26 = *(v1 + 168);
  v27 = *(v1 + 176);
  v28 = *(v1 + 177);
  MEMORY[0x24C230FB0](*v1, *(v1 + 8));
  sub_24AE09048();

  sub_24AE09048();
  if (v10 < 0)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
    v11 = v22;
    v12 = v21;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v9)
    {
      sub_24AE09048();
    }

    v11 = v22;
    v12 = v21;
    sub_24ADEFAF8();
    if (v20)
    {
LABEL_8:
      MEMORY[0x24C231780](1);
      sub_24AE09048();
      MEMORY[0x24C231780](v17);
      sub_24AE09048();
      if (v12)
      {
        sub_24AE09858();
        sub_24AE09048();
        if (v11 == 2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_24AE09858();
        if (v11 == 2)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_12;
    }
  }

  MEMORY[0x24C231780](0);
  if (v11 == 2)
  {
LABEL_10:
    MEMORY[0x24C231780](0);
    goto LABEL_13;
  }

LABEL_12:
  MEMORY[0x24C231780](1);
  sub_24AE09858();
LABEL_13:
  MEMORY[0x24C231780](v23);
  sub_24ADF0588(a1, v24);
  MEMORY[0x24C231780](v25);
  MEMORY[0x24C231780](v26);
  sub_24AE09048();

  sub_24AE09048();
}

uint64_t ItemModel.hashValue.getter()
{
  sub_24AE09838();
  ItemModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF04F8()
{
  sub_24AE09838();
  ItemModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF053C()
{
  sub_24AE09838();
  ItemModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t ItemModel.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADF0588(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_24AE09868();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_24AE08288();
  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_24AE09838();
    sub_24AE08288();
    MEMORY[0x24C230FB0](v13, v14);
    sub_24AE09048();

    v15 = sub_24AE09868();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C231780](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ADF0718(__int128 *a1, uint64_t a2)
{
  v33 = a1[2];
  v34 = a1[3];
  v35 = *(a1 + 8);
  v31 = *a1;
  v32 = a1[1];
  sub_24AE09868();
  v29 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  result = sub_24AE08288();
  v9 = 0;
  v10 = 0;
  v27 = v7;
  v28 = v3;
  while (v6)
  {
    v30 = v9;
LABEL_11:
    v13 = *(v29 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v18 = *(v13 + 24);
    v17 = *(v13 + 32);
    v19 = *(v13 + 40);
    sub_24AE09838();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE09048();
    MEMORY[0x24C231780](v16);
    sub_24AE09048();
    MEMORY[0x24C231780](*(v19 + 16));
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 64);
      do
      {
        v22 = *(v21 - 4);
        v23 = *(v21 - 3);
        v24 = *(v21 - 16);
        v26 = *(v21 - 1);
        v25 = *v21;
        sub_24AE08288();
        sub_24AE08288();
        sub_24AE09048();
        MEMORY[0x24C231780](v24);
        sub_24AE09048();

        v21 += 5;
        --v20;
      }

      while (v20);
    }

    v6 &= v6 - 1;
    v11 = sub_24AE09868();

    v9 = v11 ^ v30;
    v7 = v27;
    v3 = v28;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x24C231780](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v30 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10FindMyCore9ItemModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v51 = *(a1 + 32);
  v52 = *(a1 + 24);
  v49 = *(a1 + 48);
  v50 = *(a1 + 40);
  v47 = *(a1 + 64);
  v48 = *(a1 + 56);
  v46 = *(a1 + 72);
  v45 = *(a1 + 80);
  v36 = *(a1 + 96);
  v37 = *(a1 + 88);
  v34 = *(a1 + 112);
  v35 = *(a1 + 104);
  v32 = *(a1 + 128);
  v33 = *(a1 + 120);
  v31 = *(a1 + 136);
  v23 = *(a1 + 144);
  v21 = *(a1 + 145);
  v19 = *(a1 + 152);
  v17 = *(a1 + 160);
  v15 = *(a1 + 168);
  v13 = *(a1 + 176);
  v11 = *(a1 + 177);
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v43 = a2[5];
  v44 = a2[4];
  v41 = a2[7];
  v42 = a2[6];
  v39 = a2[9];
  v40 = a2[8];
  v38 = *(a2 + 80);
  v29 = a2[12];
  v30 = a2[11];
  v27 = a2[14];
  v28 = a2[13];
  v25 = a2[16];
  v26 = a2[15];
  v24 = a2[17];
  v22 = *(a2 + 144);
  v20 = *(a2 + 145);
  v18 = a2[19];
  v16 = a2[20];
  v14 = a2[21];
  v12 = *(a2 + 176);
  v10 = *(a2 + 177);
  MEMORY[0x24C230FB0](*a1, *(a1 + 8));
  v60 = 0x3A315644494142;
  v61 = 0xE700000000000000;
  MEMORY[0x24C230FB0](v3, v4);

  if ((v2 != v6 || v52 != v5) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  v60 = v51;
  v61 = v50;
  v62 = v49;
  v63 = v48;
  v64 = v47;
  v65 = v46;
  LOBYTE(v66) = v45;
  v53 = v44;
  v54 = v43;
  v55 = v42;
  v56 = v41;
  v57 = v40;
  v58 = v39;
  LOBYTE(v59) = v38;
  sub_24ADB7988(v51, v50, v49, v48, v47, v46, v45);
  sub_24ADB7988(v44, v43, v42, v41, v40, v39, v38);
  MyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0 = _s10FindMyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0(&v60, &v53);
  sub_24ADEFD28(v53, v54, v55, v56, v57, v58, v59);
  sub_24ADEFD28(v60, v61, v62, v63, v64, v65, v66);
  if ((MyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0 & 1) == 0)
  {
    return 0;
  }

  v60 = v37;
  v61 = v36;
  v62 = v35;
  v63 = v34;
  v64 = v33;
  v65 = v32;
  v66 = v31;
  v53 = v30;
  v54 = v29;
  v55 = v28;
  v56 = v27;
  v57 = v26;
  v58 = v25;
  v59 = v24;
  sub_24ADC4008(v37, v36);
  sub_24ADC4008(v30, v29);
  MyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0 = _s10FindMyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0(&v60, &v53);
  sub_24ADEFE3C(v53, v54);
  sub_24ADEFE3C(v60, v61);
  if (!MyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0)
  {
    return 0;
  }

  if (v23 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  if (((v21 ^ v20) & 1) != 0 || (sub_24ADFFDD8(v19, v18) & 1) == 0 || v17 != v16 || v15 != v14 || (sub_24ADF63D8(v13, v12) & 1) == 0)
  {
    return 0;
  }

  return sub_24ADF6598(v11, v10);
}

unint64_t sub_24ADF0D94()
{
  result = qword_27EFAA3F0;
  if (!qword_27EFAA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3F0);
  }

  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24ADF0E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADF0E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ItemModel.BAIdentifier.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08928();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ItemModel.BAIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA3F8, &qword_24AE10B38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_24AE08928();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ItemModel.BAIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE088F8();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24ADF11DC(v5);
    v16 = 1;
  }

  else
  {
    v17 = *(v7 + 32);
    v17(v10, v5, v6);
    v17(v15, v10, v6);
    sub_24ADF1244(v15, a1);
    v16 = 0;
  }

  return (*(v12 + 56))(a1, v16, 1, v11);
}

uint64_t type metadata accessor for ItemModel.BAIdentifier()
{
  result = qword_281519C28;
  if (!qword_281519C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADF11DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA3F8, &qword_24AE10B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADF1244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemModel.BAIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ItemModel.BAIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AE08928();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ItemModel.BAIdentifier.hash(into:)()
{
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0]);

  return sub_24AE08EB8();
}

uint64_t ItemModel.BAIdentifier.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0]);
  sub_24AE08EB8();
  return sub_24AE09868();
}

uint64_t sub_24ADF1428()
{
  sub_24AE09838();
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0]);
  sub_24AE08EB8();
  return sub_24AE09868();
}

uint64_t sub_24ADF14B0()
{
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0]);

  return sub_24AE08EB8();
}

uint64_t sub_24ADF1534()
{
  sub_24AE09838();
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0]);
  sub_24AE08EB8();
  return sub_24AE09868();
}

uint64_t sub_24ADF1600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ADF1670()
{
  result = sub_24AE08928();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24ADF1750()
{
  result = qword_27EFAA408;
  if (!qword_27EFAA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA408);
  }

  return result;
}

unint64_t sub_24ADF17A8()
{
  result = qword_27EFAA410;
  if (!qword_27EFAA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA410);
  }

  return result;
}

unint64_t sub_24ADF17FC()
{
  result = qword_27EFAA418;
  if (!qword_27EFAA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA418);
  }

  return result;
}

unint64_t sub_24ADF1854()
{
  result = qword_27EFAA420;
  if (!qword_27EFAA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA420);
  }

  return result;
}

uint64_t _s7BatteryVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7BatteryVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_24ADF1940()
{
  result = qword_27EFAA428;
  if (!qword_27EFAA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA428);
  }

  return result;
}

unint64_t sub_24ADF1998()
{
  result = qword_27EFAA430;
  if (!qword_27EFAA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA430);
  }

  return result;
}

unint64_t sub_24ADF19EC()
{
  result = qword_27EFAA438;
  if (!qword_27EFAA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA438);
  }

  return result;
}

unint64_t sub_24ADF1A44()
{
  result = qword_27EFAA440;
  if (!qword_27EFAA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA440);
  }

  return result;
}

uint64_t ItemModel.DisplayName.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.DisplayName.init(name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ItemModel.DisplayName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t ItemModel.DisplayName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE09048();
}

uint64_t ItemModel.DisplayName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADF1B68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADF1BB4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE09048();
}

uint64_t sub_24ADF1BBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADF1C04(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t static ItemModel.DisplayName.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t sub_24ADF1C64(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t sub_24ADF1C94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24AE097C8() ^ 1) & 1;
  }
}

uint64_t sub_24ADF1CDC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_24AE097C8() ^ 1) & 1;
  }
}

uint64_t sub_24ADF1D30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

Swift::Bool __swiftcall ItemModel.DisplayName.contains(search:)(Swift::String search)
{
  v2 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v2 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *v1;
  v5 = v1[1];
  sub_24ADA16A8();
  return sub_24AE09468() & 1;
}

unint64_t sub_24ADF1DD0()
{
  result = qword_27EFAA448;
  if (!qword_27EFAA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA448);
  }

  return result;
}

uint64_t ItemModel.ImageDefinition.emoji.getter@<X0>(void *a1@<X8>)
{
  if (v1[6] < 0)
  {
    v6 = v1;
    v3 = *v1;
    v5 = v6[1];
    result = sub_24AE08288();
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t ItemModel.ImageDefinition.serverImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3 < 0)
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    LOBYTE(v3) = 0;
  }

  else
  {
    v5 = v1[4];
    v4 = v1[5];
    v7 = v1[2];
    v6 = v1[3];
    v10 = v1;
    v8 = *v1;
    v9 = v10[1];
    sub_24AE08288();
    sub_24AE08288();
    result = sub_24AE08288();
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  return result;
}

uint64_t ItemModel.ImageDefinition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[6] < 0)
  {
    MEMORY[0x24C231780](1);

    return sub_24AE09048();
  }

  else
  {
    v3 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v4)
    {
      sub_24AE09048();
    }

    return sub_24ADEFAF8();
  }
}

uint64_t ItemModel.ImageDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24AE09838();
  if (v7 < 0)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
  }

  else
  {
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v6)
    {
      sub_24AE09048();
    }

    sub_24ADEFAF8();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF2104()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[6] < 0)
  {
    MEMORY[0x24C231780](1);

    return sub_24AE09048();
  }

  else
  {
    v3 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v4)
    {
      sub_24AE09048();
    }

    return sub_24ADEFAF8();
  }
}

uint64_t sub_24ADF2210()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24AE09838();
  if (v7 < 0)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
  }

  else
  {
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v6)
    {
      sub_24AE09048();
    }

    sub_24ADEFAF8();
  }

  return sub_24AE09868();
}

uint64_t _s10FindMyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v38 = *(a2 + 24);
  v39 = *(a2 + 32);
  v40 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a1 + 48);
  v43 = *a1;
  v44 = v5;
  if ((v8 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v47[0] = *a1;
      v47[1] = v3;
      v47[2] = v5;
      v47[3] = v4;
      v47[4] = v6;
      v47[5] = v7;
      v34 = v7;
      v36 = v8;
      v48 = v8;
      v45[0] = v10;
      v45[1] = v9;
      v29 = v9;
      v31 = v11;
      v45[2] = v11;
      v45[3] = v38;
      v45[4] = v39;
      v45[5] = v40;
      v46 = v12;
      v41 = v10;
      v14 = v11;
      v15 = v6;
      v32 = v6;
      v16 = v2;
      sub_24ADB7988(v10, v9, v14, v38, v39, v40, v12);
      sub_24ADB7988(v16, v3, v5, v4, v15, v7, v36);
      sub_24ADB7988(v16, v3, v5, v4, v15, v7, v36);
      sub_24ADB7988(v41, v29, v31, v38, v39, v40, v12);
      MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = _s10FindMyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0(v47, v45);
      sub_24ADEFD28(v43, v3, v5, v4, v32, v34, v36);
      sub_24ADEFD28(v41, v29, v31, v38, v39, v40, v12);
      sub_24ADEFD28(v41, v29, v31, v38, v39, v40, v12);
      sub_24ADEFD28(v43, v3, v5, v4, v32, v34, v36);
      return MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 & 1;
    }

LABEL_5:
    v18 = *a2;
    v42 = *a2;
    v19 = *(a2 + 8);
    v20 = *(a1 + 32);
    v37 = *(a1 + 48);
    sub_24ADB7988(v2, v3, *(a1 + 16), v4, v6, v7, v8);
    sub_24ADB7988(v18, v19, v11, v38, v39, v40, v12);
    sub_24ADEFD28(v43, v3, v44, v4, v20, v7, v37);
    sub_24ADEFD28(v42, v19, v11, v38, v39, v40, v12);
    MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = 0;
    return MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 & 1;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v35 = *(a2 + 48);
  v33 = *(a1 + 32);
  if (v2 == v10 && v3 == v9)
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *a1;
    sub_24ADB7988(v2, v3, v5, v4, v6, v22, v8);
    sub_24ADB7988(v24, v3, v11, v38, v39, v40, v35);
    sub_24ADEFD28(v24, v3, v5, v4, v33, v22, v23);
    sub_24ADEFD28(v24, v3, v11, v38, v39, v40, v35);
    MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = 1;
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 8);
    v27 = *(a1 + 32);
    v28 = *a1;
    v30 = sub_24AE097C8();
    sub_24ADB7988(v28, v3, v5, v4, v27, v7, v13);
    sub_24ADB7988(v25, v26, v11, v38, v39, v40, v35);
    sub_24ADEFD28(v43, v3, v5, v4, v33, v7, v13);
    sub_24ADEFD28(v25, v26, v11, v38, v39, v40, v35);
    MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = (v30 & 1) != 0;
  }

  return MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 & 1;
}

unint64_t sub_24ADF2748()
{
  result = qword_27EFAA450;
  if (!qword_27EFAA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA450);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24ADF27B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 49))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 48) >> 3) & 0xE | (*(a1 + 48) >> 7)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24ADF280C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t ItemModel.ImageDefinition.Emoji.init(symbol:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ItemModel.ImageDefinition.Emoji.symbol.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t static ItemModel.ImageDefinition.Emoji.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t ItemModel.ImageDefinition.Emoji.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE09048();
}

uint64_t ItemModel.ImageDefinition.Emoji.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

unint64_t sub_24ADF2980()
{
  result = qword_27EFAA458;
  if (!qword_27EFAA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA458);
  }

  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.init(category:model:color:variant:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a6;
  if (!a2 || !a4)
  {
    goto LABEL_5;
  }

  v11 = *a7;
  if (v11 == 9)
  {

LABEL_5:

    *(a8 + 48) = 0;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0u;
    *a8 = 0u;
    return result;
  }

  if (a6)
  {
    v12 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v12 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      v13 = result;
      v14 = a2;
      v15 = a3;

      result = v13;
      a3 = v15;
      a2 = v14;
      a5 = 0;
      v8 = 0;
    }
  }

  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v8;
  *(a8 + 48) = v11;
  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.category.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.ImageDefinition.ServerImage.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.ImageDefinition.ServerImage.color.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.ImageDefinition.ServerImage.Variant.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24AE09668();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ItemModel.ImageDefinition.ServerImage.Variant.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x656E696C6E6FLL;
    v7 = 0x64656B636F6CLL;
    if (v1 != 2)
    {
      v7 = 0x6475427466656CLL;
    }

    if (*v0)
    {
      v6 = 0x656E696C66666FLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4364694C65736163;
    if (v1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (v1 == 4)
    {
      v4 = 0x6475427468676972;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24ADF2CE4()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24ADEFAF8();
  return sub_24AE09868();
}

uint64_t sub_24ADF2D34()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24ADEFAF8();
  return sub_24AE09868();
}

uint64_t sub_24ADF2D78@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ItemModel.ImageDefinition.ServerImage.Variant.init(rawValue:)(a1);
}

unint64_t sub_24ADF2D84@<X0>(unint64_t *a1@<X8>)
{
  result = ItemModel.ImageDefinition.ServerImage.Variant.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.init(category:model:color:variant:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  if (a6)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      v10 = result;
      v11 = a4;
      v12 = a8;
      v13 = a3;
      v14 = a2;

      result = v10;
      a2 = v14;
      a3 = v13;
      a8 = v12;
      a4 = v11;
      a5 = 0;
      a6 = 0;
    }
  }

  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v6)
  {
    sub_24AE09048();
  }

  return sub_24ADEFAF8();
}

uint64_t ItemModel.ImageDefinition.ServerImage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v6)
  {
    sub_24AE09048();
  }

  sub_24ADEFAF8();
  return sub_24AE09868();
}

uint64_t sub_24ADF2FA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v6)
  {
    sub_24AE09048();
  }

  return sub_24ADEFAF8();
}

uint64_t sub_24ADF3048()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v6)
  {
    sub_24AE09048();
  }

  sub_24ADEFAF8();
  return sub_24AE09868();
}

uint64_t _s10FindMyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24AE097C8() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v3 == v10 && v5 == v9 || (sub_24AE097C8() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:

  return sub_24ADF66D4(v6, v11);
}

unint64_t sub_24ADF3220()
{
  result = qword_27EFAA460;
  if (!qword_27EFAA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA460);
  }

  return result;
}

unint64_t sub_24ADF3278()
{
  result = qword_27EFAA468;
  if (!qword_27EFAA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA468);
  }

  return result;
}

uint64_t sub_24ADF32CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADF3314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ItemModel.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

unint64_t sub_24ADF3424()
{
  result = qword_27EFAA470;
  if (!qword_27EFAA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA470);
  }

  return result;
}

uint64_t ItemModel.LostModeState.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24AE09668();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ItemModel.LostModeState.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x657669746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24ADF356C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ItemModel.LostModeState.init(rawValue:)(a1);
}

void sub_24ADF3578(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xD000000000000011;
  v5 = 0x800000024AE12E70;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000024AE12E90;
  }

  if (*v1)
  {
    v3 = 0x657669746361;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24ADF35FC()
{
  result = qword_27EFAA478;
  if (!qword_27EFAA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA478);
  }

  return result;
}

uint64_t sub_24ADF3650()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF3714()
{
  *v0;
  *v0;
  *v0;
  sub_24AE09048();
}

uint64_t sub_24ADF37C4()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t ItemModel.Section.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08F58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE08948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24AE086E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_24AE08F78();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = *v1 >> 62;
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_24AE08F08();
      *v11 = type metadata accessor for ModelsModule();
      (*(v8 + 104))(v11, *MEMORY[0x277CC9120], v7);
LABEL_11:
      sub_24AE08938();
      sub_24AE08728();
      v21 = sub_24AE08718();
      return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    }

    sub_24AE08F48();
    sub_24AE08F38();
    sub_24AE08288();
    sub_24AE08F18();
    sub_24ADC3E58(v14);
    sub_24AE08F38();
    sub_24AE08F68();
LABEL_7:
    *v11 = type metadata accessor for ModelsModule();
    (*(v8 + 104))(v11, *MEMORY[0x277CC9120], v7);
    goto LABEL_11;
  }

  if (v17 == 2)
  {
    sub_24AE08F08();
    goto LABEL_7;
  }

  v18 = sub_24AE08718();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, 1, 1, v18);
}

Swift::Bool __swiftcall ItemModel.contains(search:)(Swift::String search)
{
  v2 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v2 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_24ADA16A8();
  return sub_24AE09468() & 1;
}

uint64_t ItemModel.Section.sortOrder.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (v4 <= 1)
  {
    if (v1)
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    if (v4)
    {
      v9 = 50;
      MEMORY[0x24C230FB0](v5, 0xE100000000000000);
      sub_24AE08288();
      MEMORY[0x24C230FB0](v2, v3);

      return v9;
    }

    v6 = 49;
LABEL_12:
    v9 = v6;
    MEMORY[0x24C230FB0](v5, 0xE100000000000000);
    return v9;
  }

  if (v4 == 2)
  {
    if (v1)
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    v6 = 51;
    goto LABEL_12;
  }

  if (v3 | v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v1 == 0xC000000000000000;
  }

  if (v8)
  {
    return 48;
  }

  else
  {
    return 52;
  }
}

void ItemModel.Section.category.getter(char *a1@<X8>)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 3;
    }

    else
    {
      if (*(v1 + 8) == 0 && *v1 == 0xC000000000000000)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4;
      }

      *a1 = v5;
    }
  }

  else
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    *a1 = v3;
  }
}

uint64_t sub_24ADF3E4C()
{
  result = sub_24ADDB814(&unk_285E2F3F8);
  qword_27EFB76C0 = result;
  return result;
}

uint64_t ItemModel.Section.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v1 == 0xC000000000000000 && *(v0 + 1) == 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = 4;
      }

      return MEMORY[0x24C231780](v4);
    }

    v3 = 3;
LABEL_6:
    MEMORY[0x24C231780](v3);
    v4 = v1 & 1;
    return MEMORY[0x24C231780](v4);
  }

  if (!v2)
  {
    v3 = 1;
    goto LABEL_6;
  }

  MEMORY[0x24C231780](2);
  MEMORY[0x24C231780](v1 & 1);

  return sub_24AE09048();
}

uint64_t ItemModel.Section.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_24AE09838();
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (v2 == 0xC000000000000000 && (v3 | v1) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_7;
    }

    v5 = 3;
  }

  else
  {
    if (v4)
    {
      MEMORY[0x24C231780](2);
      MEMORY[0x24C231780](v2 & 1);
      sub_24AE09048();
      return sub_24AE09868();
    }

    v5 = 1;
  }

  MEMORY[0x24C231780](v5);
  v6 = v2 & 1;
LABEL_7:
  MEMORY[0x24C231780](v6);
  return sub_24AE09868();
}

uint64_t sub_24ADF4040()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_24AE09838();
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (v2 == 0xC000000000000000 && (v3 | v1) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_7;
    }

    v5 = 3;
  }

  else
  {
    if (v4)
    {
      MEMORY[0x24C231780](2);
      MEMORY[0x24C231780](v2 & 1);
      sub_24AE09048();
      return sub_24AE09868();
    }

    v5 = 1;
  }

  MEMORY[0x24C231780](v5);
  v6 = v2 & 1;
LABEL_7:
  MEMORY[0x24C231780](v6);
  return sub_24AE09868();
}

void sub_24ADF4110(char *a1@<X8>)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 3;
    }

    else
    {
      if (*(v1 + 8) == 0 && *v1 == 0xC000000000000000)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4;
      }

      *a1 = v5;
    }
  }

  else
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    *a1 = v3;
  }
}

uint64_t ItemModel.listSection(enabledSections:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(v2 + 145);
  if (!*(v2 + 96))
  {
    result = sub_24ADDAAC0(1, a1);
    if (result)
    {
      a2[2] = 0;
      *a2 = v4;
LABEL_12:
      a2[1] = 0;
      return result;
    }

LABEL_11:
    a2[2] = 0;
    *a2 = 0xC000000000000001;
    goto LABEL_12;
  }

  if ((v4 & 1) == 0)
  {
    result = sub_24ADDAAC0(3, a1);
    if (result)
    {
      v11 = 0x8000000000000000;
    }

    else
    {
      v11 = 0xC000000000000001;
    }

    a2[1] = 0;
    a2[2] = 0;
    *a2 = v11;
    return result;
  }

  v6 = *(v2 + 128);
  v5 = *(v2 + 136);
  v8 = *(v2 + 112);
  v7 = *(v2 + 120);
  result = sub_24ADDAAC0(2, a1);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = v5;
  if (!v5)
  {
    sub_24AE08288();
    v6 = v8;
    v10 = v7;
  }

  *a2 = 0x4000000000000001;
  a2[1] = v6;
  a2[2] = v10;

  return sub_24AE08288();
}

uint64_t static Set<>.forSelection.getter()
{
  return sub_24ADF4A38(&qword_27EFA87B0, &qword_27EFAA480);
}

{
  return sub_24ADF4A38(&qword_27EFA87E0, &qword_27EFAA638);
}

uint64_t ItemModel.Tag.title.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      if (qword_27EFA8800 != -1)
      {
        swift_once();
      }

      v2 = qword_27EFB76F0;
      if (qword_27EFB76F0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_27EFA8800 != -1)
      {
        swift_once();
      }

      v2 = qword_27EFB76F0;
      if (qword_27EFB76F0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  if (v1 == 2)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v2 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v1 != 3)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v2 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_24;
    }

LABEL_25:
    v5 = objc_opt_self();
    sub_24AE08288();
    v4 = [v5 mainBundle];
    v3 = 0;
    goto LABEL_26;
  }

  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v2 = qword_27EFB76F0;
  if (!qword_27EFB76F0)
  {
    goto LABEL_25;
  }

LABEL_24:
  sub_24AE08288();
  v3 = v2;
  v4 = v3;
LABEL_26:
  v6 = v3;
  v7 = sub_24AE08F88();
  v8 = sub_24AE08F88();
  v9 = [v4 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_24AE08FB8();

  return v10;
}

uint64_t ItemModel.contains(tag:)(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1)
  {
    return !*a1 && *(v1 + 96) == 0;
  }

  else
  {
    v3 = *(v1 + 145);
    if (v2 != 3)
    {
      v3 ^= 1u;
    }

    if (v2 == 2)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24ADF4764(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1)
  {
    return !*a1 && *(v1 + 96) == 0;
  }

  else
  {
    v3 = *(v1 + 145);
    if (v2 != 3)
    {
      v3 ^= 1u;
    }

    if (v2 == 2)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24ADF47AC()
{
  result = sub_24ADDB828(&unk_285E2F420);
  qword_27EFB76C8 = result;
  return result;
}

uint64_t ItemModel.Sort.sortDescriptor<A>(rootKeyPath:)()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    KeyPath = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(KeyPath);
  }

  else if (v1 == 3)
  {
    v2 = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(v2);

    sub_24ADC3FB4();
  }

  else
  {
    v3 = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(v3);

    sub_24ADC3F18();
  }

  return sub_24AE086A8();
}

uint64_t sub_24ADF4944@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADF4950@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24ADF495C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24ADF49B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v6 = a4;
    v7 = a3;
    swift_once();
    a3 = v7;
    a4 = v6;
  }

  *a4 = *a3;

  return sub_24AE08288();
}

uint64_t static Set<>.stable.getter()
{
  return sub_24ADF4A38(&qword_27EFA87C0, &qword_27EFAA488);
}

{
  return sub_24ADF4A38(&qword_27EFA87F0, &qword_27EFAA640);
}

uint64_t sub_24ADF4A38(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }

  return sub_24AE08288();
}

uint64_t _s10FindMyCore9ItemModelV7SectionO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 >> 62;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v2 == 0xC000000000000000 && (v4 | v3) == 0)
      {
        if (v5 >> 62 != 3 || v5 != 0xC000000000000000 || (v7 | v6) != 0)
        {
          goto LABEL_34;
        }

        sub_24ADC3E58(0xC000000000000000);
        v10 = 0xC000000000000000;
      }

      else
      {
        if (v5 >> 62 != 3 || v5 != 0xC000000000000001 || (v7 | v6) != 0)
        {
          goto LABEL_34;
        }

        sub_24ADC3E58(0xC000000000000001);
        v10 = 0xC000000000000001;
      }

      goto LABEL_39;
    }

    if (v5 >> 62 == 2)
    {
      goto LABEL_7;
    }

LABEL_34:
    v17 = v5;
LABEL_35:
    sub_24ADC3E34(v17);
    sub_24ADC3E58(v2);
    sub_24ADC3E58(v5);
    return 0;
  }

  if (!v8)
  {
    if (v5 >> 62)
    {
      goto LABEL_34;
    }

LABEL_7:
    sub_24ADC3E58(*a1);
    sub_24ADC3E58(v5);
    return ((v5 ^ v2) & 1) == 0;
  }

  if (v5 >> 62 != 1)
  {
    v14 = a1[2];
    sub_24AE08288();
    goto LABEL_34;
  }

  if ((v5 ^ v2))
  {
    v18 = *a2;
    v19 = a2[1];
    sub_24ADC3E34(v18);
    v17 = v2;
    goto LABEL_35;
  }

  if (v3 != v6 || v4 != v7)
  {
    v20 = a1[1];
    v21 = sub_24AE097C8();
    sub_24ADC3E34(v5);
    sub_24ADC3E34(v2);
    sub_24ADC3E58(v2);
    sub_24ADC3E58(v5);
    return (v21 & 1) != 0;
  }

  sub_24ADC3E34(*a2);
  sub_24ADC3E34(v2);
  sub_24ADC3E58(v2);
  v10 = v5;
LABEL_39:
  sub_24ADC3E58(v10);
  return 1;
}

unint64_t sub_24ADF4CF8()
{
  result = qword_281519B90;
  if (!qword_281519B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B90);
  }

  return result;
}

unint64_t sub_24ADF4D80()
{
  result = qword_27EFAA4A0;
  if (!qword_27EFAA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4A0);
  }

  return result;
}

unint64_t sub_24ADF4DD4()
{
  result = qword_281519B98;
  if (!qword_281519B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B98);
  }

  return result;
}

unint64_t sub_24ADF4E54()
{
  result = qword_281519B88;
  if (!qword_281519B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B88);
  }

  return result;
}

unint64_t sub_24ADF4EA8()
{
  result = qword_281519B78;
  if (!qword_281519B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B78);
  }

  return result;
}

unint64_t sub_24ADF4F00()
{
  result = qword_281519B80;
  if (!qword_281519B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B80);
  }

  return result;
}

unint64_t sub_24ADF4F58()
{
  result = qword_281519B70;
  if (!qword_281519B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B70);
  }

  return result;
}

unint64_t sub_24ADF4FB0()
{
  result = qword_27EFAA4A8;
  if (!qword_27EFAA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4A8);
  }

  return result;
}

unint64_t sub_24ADF5004(uint64_t a1)
{
  result = sub_24ADF502C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24ADF502C()
{
  result = qword_27EFAA4B0;
  if (!qword_27EFAA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4B0);
  }

  return result;
}

unint64_t sub_24ADF5084()
{
  result = qword_27EFAA4B8;
  if (!qword_27EFAA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4B8);
  }

  return result;
}

unint64_t sub_24ADF50DC()
{
  result = qword_281519BB0;
  if (!qword_281519BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BB0);
  }

  return result;
}

uint64_t sub_24ADF515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24ADF5198()
{
  result = qword_281519BA8;
  if (!qword_281519BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BA8);
  }

  return result;
}

uint64_t sub_24ADF521C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t get_enum_tag_for_layout_string_10FindMyCore9ItemModelV7SectionO(uint64_t a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24ADF5294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24ADF52E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

void *sub_24ADF533C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 3) >> 1;
    result[2] = 0;
    *result = (a2 - 3) & 1 | 0xC000000000000000;
  }

  return result;
}

uint64_t ItemModel.Owner.status()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_24AE08F58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (v1[1])
  {
    v24 = v5;
    v25 = a1;
    v14 = v1[5];
    v15 = v1[6];
    v16 = v1[3];
    v17 = v1[4];
    sub_24AE08F48();
    sub_24AE08F38();
    if (!v15)
    {
      sub_24AE08288();
    }

    sub_24AE08288();
    sub_24AE08F18();

    sub_24AE08F38();
    sub_24AE08F68();
    *v9 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v24);
    sub_24AE08938();
    v21 = v25;
    sub_24AE08728();
    v22 = sub_24AE08718();
    return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v18 = sub_24AE08718();
    v19 = *(*(v18 - 8) + 56);

    return v19(a1, 1, 1, v18);
  }
}

uint64_t ItemModel.Owner.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x24C231780](0);
  }

  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0 + 16);
  v6 = *v0;
  MEMORY[0x24C231780](1);
  sub_24AE09048();
  MEMORY[0x24C231780](v5);
  sub_24AE09048();
  if (!v2)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();

  return sub_24AE09048();
}

uint64_t ItemModel.Owner.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_24AE09838();
  if (v2)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
    MEMORY[0x24C231780](v3);
    sub_24AE09048();
    sub_24AE09858();
    if (v7)
    {
      sub_24AE09048();
    }
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF58EC()
{
  if (!v0[1])
  {
    return MEMORY[0x24C231780](0);
  }

  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0 + 16);
  v6 = *v0;
  MEMORY[0x24C231780](1);
  sub_24AE09048();
  MEMORY[0x24C231780](v5);
  sub_24AE09048();
  if (!v2)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();

  return sub_24AE09048();
}

uint64_t sub_24ADF59DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_24AE09838();
  if (v2)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
    MEMORY[0x24C231780](v3);
    sub_24AE09048();
    sub_24AE09858();
    if (v7)
    {
      sub_24AE09048();
    }
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  return sub_24AE09868();
}

void ItemModel.Owner.init(rawIdentifier:rawOwnerDisplayName:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1 == 0x6F6C4072656E776FLL && a2 == 0xEF74736F686C6163;
  if (v9 || (sub_24AE097C8() & 1) != 0)
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    a4 = 0;
  }

  else
  {
    PersonModel.Handle.init(rawValue:)(a1, a2, v17);
    v11 = v17[0];
    v12 = v17[1];
    v13 = v18;
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = 0;
    }

    v14 = v19;
    v15 = v20;
  }

  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  a5[4] = v15;
  a5[5] = v16;
  a5[6] = a4;
}

uint64_t ItemModel.Owner.rawIdentifier.getter()
{
  if (!v0[1])
  {
    return 0x6F6C4072656E776FLL;
  }

  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.Owner.rawOwnerDisplayName.getter()
{
  if (v0[1])
  {
    v1 = v0[6] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v2 = v0[5];
  sub_24AE08288();
  return v2;
}

BOOL _s10FindMyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v32 = a1[4];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  if (!v2)
  {
    if (!v5)
    {
      sub_24ADEFE3C(v3, 0);
      sub_24ADEFE3C(v6, 0);
      return 1;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
LABEL_8:
    v30 = *a2;
    v31 = a2[1];
    v13 = a1[1];
    v14 = *a1;
    sub_24ADC4008(*a2, v31);
    sub_24ADC4008(v14, v13);
    sub_24ADEFE3C(v14, v13);
    v15 = v30;
    v16 = v31;
LABEL_20:
    sub_24ADEFE3C(v15, v16);
    return 0;
  }

  v28 = a1[1];
  v29 = a1[5];
  v11 = a1[6];
  v27 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v17 = a1[2];
    v12 = *a2;
    v18 = a2[2];
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    v22 = sub_24AE097C8();
    v9 = v21;
    v7 = v19;
    v8 = v20;
    if ((v22 & 1) != 0 && v18 == v17)
    {
      goto LABEL_11;
    }

LABEL_19:
    sub_24ADC4008(v12, v5);
    sub_24ADC4008(v27, v28);
    sub_24ADEFE3C(v27, v28);
    v15 = v12;
    v16 = v5;
    goto LABEL_20;
  }

  v12 = *a2;
  if (a2[2] != a1[2])
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v4 != v7 || v32 != v8)
  {
    v23 = v9;
    v24 = sub_24AE097C8();
    v9 = v23;
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v11)
  {
    sub_24ADC4008(v12, v5);
    sub_24ADC4008(v27, v28);
    sub_24AE08288();
    sub_24ADEFE3C(v27, v28);
    sub_24ADEFE3C(v12, v5);
    if (!v10)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (!v10)
  {
    sub_24ADC4008(v12, v5);
    sub_24ADC4008(v27, v28);
    swift_bridgeObjectRetain_n();
    sub_24ADEFE3C(v27, v28);
    sub_24ADEFE3C(v12, v5);

LABEL_26:

    return 0;
  }

  if (v29 != v9 || v11 != v10)
  {
    v26 = sub_24AE097C8();
    sub_24ADC4008(v12, v5);
    sub_24ADC4008(v27, v28);
    swift_bridgeObjectRetain_n();
    sub_24AE08288();
    sub_24ADEFE3C(v27, v28);
    sub_24ADEFE3C(v12, v5);
    swift_bridgeObjectRelease_n();

    return (v26 & 1) != 0;
  }

  sub_24ADC4008(v12, v5);
  sub_24ADC4008(v27, v28);
  swift_bridgeObjectRetain_n();
  sub_24AE08288();
  sub_24ADEFE3C(v27, v28);
  sub_24ADEFE3C(v12, v5);
  swift_bridgeObjectRelease_n();
LABEL_29:

  return 1;
}

unint64_t sub_24ADF6278()
{
  result = qword_27EFAA4D0;
  if (!qword_27EFAA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4D0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24ADF62E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ADF6338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_24ADF6398(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24ADF63D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646575657571;
  v6 = 0xE600000000000000;
  v7 = 0x657669746361;
  if (a1 != 4)
  {
    v7 = 0x726F727265;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 6710895;
  if (a1 != 1)
  {
    v9 = 0x676E69646E6570;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x646575657571)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657669746361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x726F727265)
      {
LABEL_34:
        v13 = sub_24AE097C8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6710895)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E69646E6570)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24ADF6598(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2 == 2)
    {
      v4 = 0x800000024AE12E70;
    }

    else
    {
      v4 = 0x800000024AE12E90;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x657669746361;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v6 = 0x800000024AE12E70;
    }

    else
    {
      v6 = 0x800000024AE12E90;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x657669746361;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_24AE097C8();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_24ADF66D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v13 = 0x6475427466656CLL;
      v12 = 0xE700000000000000;
    }

    v14 = 0x656E696C66666FLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x656E696C6E6FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4364694C65736163;
    v4 = 0xED00006465736F6CLL;
    v5 = 0x800000024AE12E30;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = 0x800000024AE12E50;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v8 = 0x6475427468676972;
    }

    else
    {
      v7 = 0x800000024AE12E00;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x64656B636F6CLL)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x6475427466656CLL)
        {
          goto LABEL_56;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x656E696C66666FLL)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x656E696C6E6FLL)
      {
        goto LABEL_56;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x6475427468676972)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x800000024AE12E00;
      if (v9 != 0xD00000000000001ALL)
      {
LABEL_56:
        v16 = sub_24AE097C8();
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED00006465736F6CLL;
    if (v9 != 0x4364694C65736163)
    {
      goto LABEL_56;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x800000024AE12E30;
    if (v9 != 0xD000000000000015)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v15 = 0x800000024AE12E50;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_56;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_56;
  }

  v16 = 1;
LABEL_57:

  return v16 & 1;
}

uint64_t sub_24ADF69B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000065;
  v5 = 0xE700000000000000;
  v6 = 0x6567617373656DLL;
  if (a1 != 4)
  {
    v6 = 0x726568746FLL;
    v5 = 0xE500000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x74696C6C65746173;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000024AE12D70;
  if (a1 != 1)
  {
    v7 = 1702259052;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x79636167656CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x74696C6C65746173)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6567617373656DLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x726568746FLL)
      {
LABEL_35:
        v12 = sub_24AE097C8();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0x800000024AE12D70;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1702259052)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x79636167656CLL)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_24ADF6B80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E6E7572;
  v6 = 0xE700000000000000;
  v7 = 0x676E696C637963;
  if (a1 != 4)
  {
    v7 = 0x69746F6D6F747561;
    v6 = 0xEA00000000006576;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x616E6F6974617473;
  v9 = 0xEA00000000007972;
  if (a1 != 1)
  {
    v8 = 0x676E696B6C6177;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 1)
    {
      v12 = 0x616E6F6974617473;
      v13 = 31090;
      goto LABEL_30;
    }

    v14 = 0xE700000000000000;
    v15 = 1802264951;
LABEL_27:
    if (v10 != (v15 | 0x676E6900000000))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 3)
  {
    v14 = 0xE700000000000000;
    v15 = 1852732786;
    goto LABEL_27;
  }

  if (a2 == 4)
  {
    v14 = 0xE700000000000000;
    v15 = 1818458467;
    goto LABEL_27;
  }

  v12 = 0x69746F6D6F747561;
  v13 = 25974;
LABEL_30:
  v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  if (v10 != v12)
  {
LABEL_33:
    v16 = sub_24AE097C8();
    goto LABEL_34;
  }

LABEL_31:
  if (v11 != v14)
  {
    goto LABEL_33;
  }

  v16 = 1;
LABEL_34:

  return v16 & 1;
}

uint64_t sub_24ADF6D4C()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF6E4C()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF6F5C()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF7050()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF715C()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF7258()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t ItemModel.PlaySoundState.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24AE09668();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t ItemModel.PlaySoundState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646575657571;
  v4 = 0x657669746361;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6710895;
  if (v1 != 1)
  {
    v5 = 0x676E69646E6570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ADF744C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ItemModel.PlaySoundState.init(rawValue:)(a1);
}

void sub_24ADF7458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x646575657571;
  v7 = 0xE600000000000000;
  v8 = 0x657669746361;
  if (v2 != 4)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6710895;
  if (v2 != 1)
  {
    v10 = 0x676E69646E6570;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_24ADF7508()
{
  result = qword_27EFAA4D8;
  if (!qword_27EFAA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4D8);
  }

  return result;
}

uint64_t sub_24ADF7564()
{
  *v0;
  *v0;
  *v0;
  sub_24AE09048();
}

uint64_t ItemModel.Relationship.status(isRemote:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = *v1;
  if (v12 == 2 || (v12 & 1) != 0)
  {
    sub_24AE08F08();
    *v9 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
    sub_24AE08938();
    sub_24AE08728();
    v13 = sub_24AE08718();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  else
  {
    v15 = sub_24AE08718();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t ItemModel.Relationship.thisDeviceStatus(isRemote:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if (*v1 == 2)
  {
    sub_24AE08F08();
    *v9 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
    sub_24AE08938();
    sub_24AE08728();
    v14 = sub_24AE08718();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  else
  {
    v12 = sub_24AE08718();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t ItemModel.Relationship.connectedStatus(isRemote:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = *v1;
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v15 = sub_24AE08718();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }

  else
  {
    sub_24AE08F08();
    *v9 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
    sub_24AE08938();
    sub_24AE08728();
    v13 = sub_24AE08718();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }
}

BOOL static ItemModel.Relationship.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t ItemModel.Relationship.hash(into:)()
{
  if (*v0 == 2)
  {
    return MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C231780](1);
  return sub_24AE09858();
}

uint64_t ItemModel.Relationship.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1 == 2)
  {
    MEMORY[0x24C231780](0);
  }

  else
  {
    MEMORY[0x24C231780](1);
    sub_24AE09858();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF7FE4()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1 == 2)
  {
    MEMORY[0x24C231780](0);
  }

  else
  {
    MEMORY[0x24C231780](1);
    sub_24AE09858();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF804C()
{
  if (*v0 == 2)
  {
    return MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C231780](1);
  return sub_24AE09858();
}

uint64_t sub_24ADF8098()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1 == 2)
  {
    MEMORY[0x24C231780](0);
  }

  else
  {
    MEMORY[0x24C231780](1);
    sub_24AE09858();
  }

  return sub_24AE09868();
}

unint64_t sub_24ADF8100()
{
  result = qword_27EFAA4E0;
  if (!qword_27EFAA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4E0);
  }

  return result;
}

BOOL sub_24ADF8154(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t _s12RelationshipOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s12RelationshipOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24ADF82FC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24ADF8318(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t ItemModel.UniqueIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24AE090D8();
  if (result)
  {
    v7 = sub_24AE09058();
    v8 = sub_24ADF89E4(v7, a1, a2);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    a1 = MEMORY[0x24C230F60](v8, v10, v12, v14);
    a2 = v15;
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t ItemModel.UniqueIdentifier.baIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24AE08288();

  return ItemModel.BAIdentifier.init(rawValue:)(a1);
}

uint64_t ItemModel.UniqueIdentifier.rawValueWithoutPrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.UniqueIdentifier.init(baIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24AE08908();
  v6 = v5;
  result = sub_24ADD515C(a1);
  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_24ADF84BC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF8540()
{
  MEMORY[0x24C230FB0](*v0, v0[1]);
  sub_24AE09048();
}

uint64_t sub_24ADF85B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF863C@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x24C230FB0](*v1, v1[1]);
  *a1 = 0x3A315644494142;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_24ADF869C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24ADF8774(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24ADF8854(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

uint64_t _s10FindMyCore9ItemModelV16UniqueIdentifierV1loiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

unint64_t sub_24ADF89E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24AE09068();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24AE09108();
}

unint64_t sub_24ADF8A94()
{
  result = qword_281519BC0;
  if (!qword_281519BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BC0);
  }

  return result;
}

unint64_t sub_24ADF8B0C()
{
  result = qword_27EFAA4E8;
  if (!qword_27EFAA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4E8);
  }

  return result;
}

uint64_t PersonModel.init(uniqueID:handles:displayName:contactIdentifier:relationship:favorite:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a1[1];
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = a2[3];
  v15 = *a3;
  v16 = a3[1];
  v17 = *a7;
  v18 = *(a7 + 8);
  *a8 = *a1;
  *(a8 + 8) = v10;
  *(a8 + 16) = v11;
  *(a8 + 24) = v12;
  *(a8 + 32) = v13;
  *(a8 + 40) = v14;
  *(a8 + 48) = *(a2 + 2);
  *(a8 + 64) = v15;
  *(a8 + 72) = v16;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  v19 = type metadata accessor for PersonModel();
  result = sub_24ADF8C50(a6, a8 + *(v19 + 32));
  v21 = a8 + *(v19 + 36);
  *v21 = v17;
  *(v21 + 8) = v18;
  return result;
}

uint64_t type metadata accessor for PersonModel()
{
  result = qword_27EFAA4F8;
  if (!qword_27EFAA4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADF8C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel.Relationship(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PersonModel.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t PersonModel.handles.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  sub_24AE08288();
  sub_24AE08288();

  return sub_24AE08288();
}

uint64_t PersonModel.displayName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t PersonModel.displayName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t PersonModel.contactIdentifier.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_24AE08288();
  return v1;
}

uint64_t PersonModel.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PersonModel.relationship.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PersonModel() + 32);

  return sub_24ADF8E94(a1, v3);
}

uint64_t sub_24ADF8E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel.Relationship(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PersonModel.favorite.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PersonModel();
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PersonModel.favorite.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for PersonModel();
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t PersonModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AE088E8();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v64 = &v63 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v67 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v68 = &v63 - v21;
  v22 = type metadata accessor for PersonModel.Relationship.Following(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = v1[1];
  v71 = 0x3A3156444953;
  v72 = 0xE600000000000000;
  MEMORY[0x24C230FB0](v26, v27);
  sub_24AE09048();

  v28 = v1[2];
  v29 = v1[3];
  v30 = *(v1 + 32);
  v32 = v2[5];
  v31 = v2[6];
  v33 = v2[7];
  sub_24AE09048();
  MEMORY[0x24C231780](v30);
  sub_24AE09048();
  sub_24ADF9798(a1, v33);
  v34 = v2[8];
  v35 = v2[9];
  sub_24AE09048();
  if (v2[11])
  {
    v36 = v2[10];
    sub_24AE09858();
    sub_24AE09048();
  }

  else
  {
    sub_24AE09858();
  }

  v37 = type metadata accessor for PersonModel();
  v38 = v2 + *(v37 + 32);
  sub_24ADF9A74(v38, v25, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v37;
      v41 = v25;
      v42 = v64;
      sub_24ADCC510(v41, v64);
      MEMORY[0x24C231780](2);
      sub_24ADF9ADC(v42, v13);
      v44 = v69;
      v43 = v70;
      if ((*(v69 + 48))(v13, 1, v70) == 1)
      {
        sub_24AE09858();
      }

      else
      {
        v52 = v66;
        (*(v44 + 32))(v66, v13, v43);
        sub_24AE09858();
        sub_24ADF9BFC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
        sub_24AE08EB8();
        (*(v44 + 8))(v52, v43);
      }

      sub_24ADF9B4C(v42);
      v37 = v40;
    }

    else
    {
      MEMORY[0x24C231780](1);
    }
  }

  else
  {
    v64 = v37;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v46 = v68;
    sub_24ADCC510(v25, v68);
    v47 = &v25[v45];
    v48 = v67;
    sub_24ADCC510(v47, v67);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v46, v18);
    v50 = v69;
    v49 = v70;
    v51 = *(v69 + 48);
    if (v51(v18, 1, v70) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v53 = v66;
      (*(v50 + 32))(v66, v18, v49);
      sub_24AE09858();
      sub_24ADF9BFC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      v54 = v53;
      v48 = v67;
      (*(v50 + 8))(v54, v49);
    }

    v55 = v65;
    sub_24ADF9ADC(v48, v65);
    if (v51(v55, 1, v49) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v56 = v66;
      (*(v50 + 32))(v66, v55, v49);
      sub_24AE09858();
      sub_24ADF9BFC(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
      sub_24AE08EB8();
      (*(v50 + 8))(v56, v49);
    }

    sub_24ADF9B4C(v48);
    sub_24ADF9B4C(v68);
    v37 = v64;
  }

  v57 = type metadata accessor for PersonModel.Relationship(0);
  v58 = v38 + *(v57 + 20);
  PersonModel.Relationship.Follower.hash(into:)(a1);
  v59 = *(v38 + *(v57 + 24));
  sub_24AE09858();
  if (v59 != 2)
  {
    MEMORY[0x24C231780](v59 & 1);
  }

  v60 = v2 + *(v37 + 36);
  if (v60[8])
  {
    return sub_24AE09858();
  }

  v62 = *v60;
  sub_24AE09858();
  return MEMORY[0x24C231780](v62);
}

uint64_t PersonModel.hashValue.getter()
{
  sub_24AE09838();
  PersonModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF9714()
{
  sub_24AE09838();
  PersonModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF9758()
{
  sub_24AE09838();
  PersonModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF9798(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C231780](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 16);
      v9 = *(v5 - 1);
      v10 = *v5;
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE09048();
      MEMORY[0x24C231780](v8);
      sub_24AE09048();

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s10FindMyCore11PersonModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  MEMORY[0x24C230FB0](*a1, *(a1 + 8));
  MEMORY[0x24C230FB0](v4, v5);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 32);
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  if (*(a1 + 16) == a2[2] && *(a1 + 24) == a2[3])
  {
    if (v6 != v10)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_24AE097C8();
    result = 0;
    if ((v14 & 1) == 0 || v6 != v10)
    {
      return result;
    }
  }

  if ((v7 != v11 || v8 != v12) && (sub_24AE097C8() & 1) == 0 || (sub_24ADFFCDC(v9, v13) & 1) == 0 || (*(a1 + 64) != a2[8] || *(a1 + 72) != a2[9]) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 88);
  v17 = a2[11];
  if (v16)
  {
    if (!v17 || (*(a1 + 80) != a2[10] || v16 != v17) && (sub_24AE097C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = type metadata accessor for PersonModel();
  if ((static PersonModel.Relationship.== infix(_:_:)(a1 + *(v18 + 32), a2 + *(v18 + 32)) & 1) == 0)
  {
    return 0;
  }

  v19 = *(v18 + 36);
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = a2 + v19;
  v23 = *(v22 + 8);
  result = v21 & v23;
  if ((v21 & 1) == 0 && (v23 & 1) == 0)
  {
    return *v20 == *v22;
  }

  return result;
}

uint64_t sub_24ADF9A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ADF9ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADF9B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADF9BFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24ADF9C6C()
{
  sub_24ADF9D20();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PersonModel.Relationship(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADF9D20()
{
  if (!qword_27EFAA508)
  {
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFAA508);
    }
  }
}

uint64_t PersonModel.AssociatedHandles.init(allHandles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v13[0] = *(a1 + 32);
    v13[1] = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    sub_24ADFC170(a1, a1 + 32, 1, (2 * v3) | 1);
    sub_24AE08288();
    sub_24AE08288();

    result = PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v13, v17);
    v9 = v17[1];
    v10 = v18;
    v11 = v19;
    v12 = v20;
    *a2 = v17[0];
    *(a2 + 8) = v9;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
    *a2 = 0u;
  }

  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v31 = *(a1 + 16);
  v3 = a1[4];
  v32 = *a1;
  v33 = a1[3];
  sub_24ADAE554();
  sub_24AE08288();
  sub_24AE08288();
  v4 = sub_24AE09198();

  v6 = *(v4 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v7 = 0;
  v8 = v4 + 64;
  v30 = *(v4 + 16);
  v26 = v6 - 1;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v28 = v9;
    v10 = (v8 + 40 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = *(v10 - 4);
      v12 = *(v10 - 3);
      v14 = *(v10 - 16);
      v16 = *(v10 - 1);
      v15 = *v10;
      if (v13 == v32 && v12 == v2)
      {
        break;
      }

      v18 = *(v10 - 4);
      v19 = *(v10 - 3);
      result = sub_24AE097C8();
      if ((result & 1) == 0 || v14 != v31)
      {
        goto LABEL_21;
      }

LABEL_14:
      if (v16 != v33 || v15 != v3)
      {
        result = sub_24AE097C8();
        if ((result & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      ++v11;
      v10 += 5;
      if (v30 == v11)
      {
        v9 = v28;
        goto LABEL_29;
      }
    }

    if (v14 == v31)
    {
      goto LABEL_14;
    }

    v13 = v32;
LABEL_21:
    sub_24AE08288();
    sub_24AE08288();
    v9 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = v28;
    if ((result & 1) == 0)
    {
      result = sub_24ADFB038(0, *(v28 + 16) + 1, 1);
      v9 = v28;
    }

    v22 = *(v9 + 16);
    v21 = *(v9 + 24);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v29 = v22 + 1;
      v25 = *(v9 + 16);
      result = sub_24ADFB038((v21 > 1), v22 + 1, 1);
      v23 = v29;
      v22 = v25;
      v9 = v34;
    }

    v7 = v11 + 1;
    *(v9 + 16) = v23;
    v24 = v9 + 40 * v22;
    *(v24 + 32) = v13;
    *(v24 + 40) = v12;
    *(v24 + 48) = v14;
    *(v24 + 56) = v16;
    *(v24 + 64) = v15;
    v8 = v4 + 64;
  }

  while (v26 != v11);
LABEL_29:

  *a2 = v32;
  *(a2 + 8) = v2;
  *(a2 + 16) = v31;
  *(a2 + 24) = v33;
  *(a2 + 32) = v3;
  *(a2 + 40) = v9;
  return result;
}

uint64_t PersonModel.AssociatedHandles.mainHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

uint64_t PersonModel.AssociatedHandles.allHandles.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24AE0A280;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  v10 = v7;
  sub_24AE08288();
  sub_24AE08288();
  v8 = sub_24AE08288();
  sub_24ADFC258(v8);
  return v10;
}

uint64_t PersonModel.AssociatedHandles.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  sub_24AE09048();
  MEMORY[0x24C231780](v5);
  sub_24AE09048();

  return sub_24ADF9798(a1, v8);
}

uint64_t PersonModel.AssociatedHandles.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  sub_24ADF9798(v8, v6);
  return sub_24AE09868();
}

uint64_t sub_24ADFA2D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  sub_24ADF9798(v8, v6);
  return sub_24AE09868();
}

uint64_t sub_24ADFA368(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  sub_24AE09048();
  MEMORY[0x24C231780](v5);
  sub_24AE09048();

  return sub_24ADF9798(a1, v8);
}

uint64_t sub_24ADFA3E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  sub_24ADF9798(v8, v6);
  return sub_24AE09868();
}

uint64_t PersonModel.AssociatedHandles.init(allHandles:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = result;
  v30 = *(result + 16);
  if (v30)
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBECE8];
    v5 = (result + 40);
    v6 = MEMORY[0x277D84F90];
    v29 = result;
    while (v3 < *(v2 + 16))
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = sub_24AE09008();
      v31 = v10;
      v32 = v9;
      v11 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        sub_24AD92D74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_24AE0A280;
        *(v12 + 56) = MEMORY[0x277D837D0];
        *(v12 + 64) = sub_24AD92DC0();
        *(v12 + 32) = 0xD000000000000029;
        *(v12 + 40) = 0x800000024AE12EE0;
        sub_24AE08288();
        v13 = sub_24AE093C8();
        v14 = sub_24AE08F88();
        v15 = [v13 evaluateWithObject_];

        if (v15)
        {
          LOBYTE(String) = 1;
        }

        else if (sub_24ADFEF04(v8, v7))
        {
          sub_24ADA4B88();
          v17 = sub_24AE08F88();
          v18 = sub_24AE08F88();

          v19 = CFPhoneNumberCreate();

          if (v19)
          {
            v20 = v19;
            String = CFPhoneNumberCreateString();
            v2 = v29;
            if (String)
            {
              v8 = sub_24AE08FB8();
              v22 = v21;

              LOBYTE(String) = 0;
              v7 = v22;
            }

            else
            {
            }
          }

          else
          {
            LOBYTE(String) = 0;
            v2 = v29;
          }
        }

        else
        {
          LOBYTE(String) = 2;
        }
      }

      else
      {
        sub_24AE08288();
        LOBYTE(String) = 2;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24ADAA9F0(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_24ADAA9F0((v23 > 1), v24 + 1, 1, v6);
        v6 = result;
      }

      ++v3;
      *(v6 + 16) = v24 + 1;
      v25 = v6 + 40 * v24;
      *(v25 + 32) = v32;
      *(v25 + 40) = v31;
      *(v25 + 48) = String;
      *(v25 + 56) = v8;
      *(v25 + 64) = v7;
      v5 += 2;
      if (v30 == v3)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_24:

    result = PersonModel.AssociatedHandles.init(allHandles:)(v6, v33);
    v26 = v33[1];
    v27 = v33[2];
    *a2 = v33[0];
    a2[1] = v26;
    a2[2] = v27;
  }

  return result;
}

FindMyCore::LiteContact __swiftcall PersonModel.AssociatedHandles.handlesOnlyContact()()
{
  v2 = v0;
  v11 = *v1;
  v12 = v1[1];
  LOBYTE(v13) = *(v1 + 16);
  v14 = v1[3];
  v15 = *(v1 + 2);
  v3 = sub_24ADFA854();
  v4 = [v3 identifier];
  v5 = sub_24AE08FB8();
  v7 = v6;

  *v2 = v5;
  v2[1] = v7;
  v2[2] = v3;
  result.rawValue.super.isa = v10;
  result.identifier._object = v9;
  result.identifier._countAndFlagsBits = v8;
  return result;
}

id sub_24ADFA854()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AE0A280;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 64) = v4;
  v20 = inited;
  sub_24AE08288();
  sub_24AE08288();
  v8 = sub_24AE08288();
  sub_24ADFC258(v8);
  v9 = v20;
  v10 = *(v20 + 16);
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v10, 0);
    v11 = (v9 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *(v21 + 16);
      v15 = *(v21 + 24);
      sub_24AE08288();
      if (v14 >= v15 >> 1)
      {
        sub_24ADFB058((v15 > 1), v14 + 1, 1);
      }

      *(v21 + 16) = v14 + 1;
      v16 = v21 + 16 * v14;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 5;
      --v10;
    }

    while (v10);
  }

  v17 = sub_24AE091A8();

  v18 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v17];

  return v18;
}

Swift::Bool __swiftcall PersonModel.AssociatedHandles.contains(search:)(Swift::String search)
{
  v2 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v2 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v4 = v1[4];
    v3 = v1[5];
    v5 = v1[3];
    v6 = *(v1 + 16);
    v9 = v1;
    v7 = *v1;
    v8 = v9[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v6;
    *(inited + 56) = v5;
    *(inited + 64) = v4;
    v19 = inited;
    sub_24AE08288();
    sub_24AE08288();
    v11 = sub_24AE08288();
    result = sub_24ADFC258(v11);
    v13 = v19;
    v14 = (v19 + 40);
    v15 = -*(v19 + 16);
    v16 = -1;
    while (1)
    {
      v17 = v15 + v16 != -1;
      if (v15 + v16 == -1)
      {
LABEL_8:

        return v17;
      }

      if (++v16 >= *(v13 + 16))
      {
        break;
      }

      v18 = v14 + 5;
      v20 = *(v14 - 1);
      v21 = *v14;
      sub_24ADA16A8();
      result = sub_24AE09468();
      v14 = v18;
      if (result)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t PersonModel.AssociatedHandles.match(handlesSet:)(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = *v1;
    v40 = v1[1];
    v38 = *(v1 + 16);
    v37 = v1[3];
    v41 = v1[4];
    v42 = v1[5];
    v44 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v43 = (v3 + 63) >> 6;
    v6 = sub_24AE08288();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v45 = v6;
    while (1)
    {
      if (v5)
      {
        v46 = v8;
        goto LABEL_12;
      }

      do
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        if (v9 >= v43)
        {

          v31 = sub_24ADADF80(v8);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24AE0A280;
          *(inited + 32) = v39;
          *(inited + 40) = v40;
          *(inited + 48) = v38;
          *(inited + 56) = v37;
          *(inited + 64) = v41;
          v47 = inited;
          sub_24AE08288();
          sub_24AE08288();
          v33 = sub_24AE08288();
          sub_24ADFC258(v33);
          v34 = sub_24ADFC350(v47, v31);

          LOBYTE(v2) = v34 ^ 1;
          goto LABEL_31;
        }

        v5 = *(v44 + 8 * v9);
        ++v7;
      }

      while (!v5);
      v46 = v8;
      v7 = v9;
LABEL_12:
      v10 = *(v6 + 48) + 48 * (__clz(__rbit64(v5)) | (v7 << 6));
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v15 = *(v10 + 24);
      v14 = *(v10 + 32);
      v16 = *(v10 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_24AE0A280;
      v18 = (v17 + 16);
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      *(v17 + 48) = v13;
      *(v17 + 56) = v15;
      *(v17 + 64) = v14;
      v19 = *(v16 + 16);
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE08288();
      if (!v19)
      {

        v20 = *v18;
        goto LABEL_14;
      }

      v28 = sub_24ADAA9F0(1, v19 + 1, 1, v17);
      if (!*(v16 + 16))
      {
        goto LABEL_39;
      }

      v29 = v28;
      v18 = (v28 + 16);
      if ((*(v28 + 3) >> 1) - *(v28 + 2) < v19)
      {
        break;
      }

      swift_arrayInitWithCopy();

      v30 = *(v29 + 2);
      v20 = v30 + v19;
      if (__OFADD__(v30, v19))
      {
        goto LABEL_38;
      }

      *v18 = v20;
LABEL_14:
      v8 = v46;
      v21 = *(v46 + 2);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v46 + 3) >> 1)
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v8 = sub_24ADAA9F0(isUniquelyReferenced_nonNull_native, v24, 1, v46);
      }

      v5 &= v5 - 1;
      if (*v18)
      {
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v20)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        v6 = v45;
        if (v20)
        {
          v25 = *(v8 + 2);
          v26 = __OFADD__(v25, v20);
          v27 = v25 + v20;
          if (v26)
          {
            goto LABEL_36;
          }

          *(v8 + 2) = v27;
        }
      }

      else
      {

        v6 = v45;
        if (v20)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    __break(1u);
  }

  else
  {
LABEL_31:
    v35 = *MEMORY[0x277D85DE8];
    return v2 & 1;
  }

  return result;
}

unint64_t PersonModel.AssociatedHandles.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  sub_24AE094E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24AE0A280;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  v13 = v7;
  sub_24AE08288();
  sub_24AE08288();
  v8 = sub_24AE08288();
  sub_24ADFC258(v8);
  v9 = MEMORY[0x24C231120](v13, &type metadata for PersonModel.Handle);
  v11 = v10;

  MEMORY[0x24C230FB0](v9, v11);

  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

char *sub_24ADFB038(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFB3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24ADFB058(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFB4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24ADFB078(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFB604(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24ADFB098(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFA90C8, &qword_24AE0B9F0, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

char *sub_24ADFB0DC(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFB724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24ADFB0FC(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFBBA0(a1, a2, a3, *v3, &qword_27EFAA570, &unk_24AE12020);
  *v3 = result;
  return result;
}

char *sub_24ADFB134(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFB950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24ADFB154(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA560, &qword_24AE12008, &qword_27EFA9750, &qword_24AE12010);
  *v3 = result;
  return result;
}

char *sub_24ADFB194(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFBCC0(a1, a2, a3, *v3, &qword_27EFAA568, &qword_24AE12018);
  *v3 = result;
  return result;
}

char *sub_24ADFB1C4(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFBA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24ADFB1E4(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA550, &unk_24AE11FF0, &qword_27EFA9738, &qword_24AE0DD48);
  *v3 = result;
  return result;
}

char *sub_24ADFB224(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFBBA0(a1, a2, a3, *v3, &qword_27EFAA548, &qword_24AE11FE8);
  *v3 = result;
  return result;
}

size_t sub_24ADFB25C(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFAA540, &qword_24AE11FE0, MEMORY[0x277CB9DA8]);
  *v3 = result;
  return result;
}

size_t sub_24ADFB2A0(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFA9058, &qword_24AE0B980, type metadata accessor for PersonModel);
  *v3 = result;
  return result;
}

size_t sub_24ADFB2E4(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA530, &qword_24AE11FC8, &qword_27EFA96B8, &qword_24AE11FD0);
  *v3 = result;
  return result;
}

char *sub_24ADFB324(char *a1, int64_t a2, char a3)
{
  result = sub_24ADFBCC0(a1, a2, a3, *v3, &qword_27EFAA538, &qword_24AE11FD8);
  *v3 = result;
  return result;
}

size_t sub_24ADFB354(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFAA528, &qword_24AE11FC0, type metadata accessor for PersonEntity);
  *v3 = result;
  return result;
}

size_t sub_24ADFB398(size_t a1, int64_t a2, char a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA520, &unk_24AE11FB0, &qword_27EFA9B40, &unk_24AE0EF00);
  *v3 = result;
  return result;
}

char *sub_24ADFB3D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFB4F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA518, &qword_24AE11FA8);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFB604(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA578, &qword_24AE12090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFB724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9070, &qword_24AE0B990);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFB830(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97B0, &qword_24AE0DE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFB950(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A0, &qword_24AE0B9C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFBA78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA558, &qword_24AE12000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFBBA0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_24ADFBCC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_24ADFBDAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_24ADFBF88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void sub_24ADFC170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_24ADFC258(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24ADAA9F0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24ADFC350(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = 0;
  v26 = a1 + 32;
  v30 = a2 + 56;
  v25 = *(a1 + 16);
  while (1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_5;
    }

    v28 = v4;
    v5 = (v26 + 40 * v4);
    v7 = *v5;
    v6 = v5[1];
    v8 = *(v5 + 16);
    v10 = v5[3];
    v9 = v5[4];
    v11 = *(v3 + 40);
    sub_24AE09838();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE09048();
    v29 = v8;
    MEMORY[0x24C231780](v8);
    v12 = v10;
    sub_24AE09048();
    v13 = sub_24AE09868();
    v14 = -1 << *(v3 + 32);
    v15 = v13 & ~v14;
    if ((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      break;
    }

LABEL_4:

    v3 = a2;
    v4 = v28;
    v2 = v25;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v16 = ~v14;
  v17 = *(a2 + 48);
  while (1)
  {
    v18 = v17 + 40 * v15;
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    v22 = *v18 == v7 && *(v18 + 8) == v6;
    if (v22 || (sub_24AE097C8()) && v19 == v29)
    {
      v23 = v20 == v12 && v21 == v9;
      if (v23 || (sub_24AE097C8() & 1) != 0)
      {
        break;
      }
    }

    v15 = (v15 + 1) & v16;
    if (((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t _s10FindMyCore11PersonModelV17AssociatedHandlesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24AE097C8() & 1) == 0 || v2 != v6 || (v3 != v7 || v4 != v8) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  return sub_24ADFFCDC(v5, v9);
}

unint64_t sub_24ADFC634()
{
  result = qword_27EFAA510;
  if (!qword_27EFAA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA510);
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

uint64_t sub_24ADFC69C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADFC6E4(uint64_t result, int a2, int a3)
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

uint64_t static PersonModel.fetchCNContact(for:using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  *(v2 + 40) = *(a1 + 24);
  *(v2 + 48) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_24ADFC780, 0, 0);
}

uint64_t sub_24ADFC780()
{
  v12 = v0;
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v8[0] = *(v0 + 24);
  v8[1] = v3;
  v9 = v1;
  v10 = v2;
  v11 = *(v0 + 48);
  v5 = sub_24ADFD714(v8, v4);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_24ADFC81C()
{
  v0 = sub_24AE08E08();
  __swift_allocate_value_buffer(v0, qword_27EFAA580);
  __swift_project_value_buffer(v0, qword_27EFAA580);
  return sub_24AE08DF8();
}

FindMyCore::LiteContact __swiftcall PersonModel.liteContact()()
{
  v1 = v0;
  v2 = sub_24ADFC908();
  v3 = [v2 identifier];
  v4 = sub_24AE08FB8();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v1[2] = v2;
  result.rawValue.super.isa = v9;
  result.identifier._object = v8;
  result.identifier._countAndFlagsBits = v7;
  return result;
}

id sub_24ADFC908()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AE0A280;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = v6;
  v23 = inited;
  sub_24AE08288();
  sub_24AE08288();
  sub_24AE08288();
  v10 = sub_24AE08288();
  sub_24ADFC258(v10);
  v11 = v23;
  v12 = *(v23 + 16);
  if (v12)
  {
    v24 = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v12, 0);
    v13 = (v11 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      sub_24AE08288();
      if (v17 >= v16 >> 1)
      {
        sub_24ADFB058((v16 > 1), v17 + 1, 1);
      }

      *(v24 + 16) = v17 + 1;
      v18 = v24 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v13 += 5;
      --v12;
    }

    while (v12);
  }

  v19 = sub_24AE08F88();

  v20 = sub_24AE091A8();

  v21 = [objc_opt_self() contactWithDisplayName:v19 handleStrings:v20];

  return v21;
}

void *static PersonModel.syncFetchCNContact(for:using:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA518, &qword_24AE11FA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24AE0A280;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_24AE08288();
  v9 = sub_24AE091A8();

  v10 = [v7 predicateForContactsWithIdentifiers_];

  v11 = sub_24ADFD4FC(v10, a3);
  if (!v3)
  {
    v12 = v11;
    v13 = v11 >> 62;
    if (v11 >> 62)
    {
      if (sub_24AE095F8() == 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_12;
    }

    if (qword_27EFA87C8 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v14 = sub_24AE08E08();
      __swift_project_value_buffer(v14, qword_27EFAA580);
      sub_24AE08288();
      v15 = sub_24AE08DE8();
      v16 = sub_24AE093F8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        v18 = v13 ? sub_24AE095F8() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v17 + 4) = v18;

        _os_log_impl(&dword_24AD89000, v15, v16, "CNContact fetch: expected 1 result, got %ld", v17, 0xCu);
        MEMORY[0x24C231F80](v17, -1, -1);
      }

      else
      {
      }

LABEL_12:
      if (v13)
      {
        if (!sub_24AE095F8())
        {
LABEL_19:

          return 0;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v12 + 32);
LABEL_17:
        a3 = v19;

        return a3;
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

    v19 = MEMORY[0x24C231470](0, v12);
    goto LABEL_17;
  }

  return a3;
}

void CNContact.personAssociatedHandles()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5A0, &unk_24AE12060);
  v5 = sub_24AE091B8();

  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_24AE095F8();
    v6 = v5;
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = a1;
  v65 = v2;
  if (v7)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v69 = v6 & 0xC000000000000001;
      v66 = *MEMORY[0x277CBECE8];
      v9 = MEMORY[0x277D84F90];
      v71 = v7;
      v73 = v6;
      while (1)
      {
        if (v69)
        {
          v10 = MEMORY[0x24C231470](v8);
        }

        else
        {
          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = [v10 value];
        v13 = sub_24AE08FB8();
        v15 = v14;
        v16 = sub_24AE09008();
        v75 = v17;
        v18 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v18 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          sub_24ADD51D0(0, &qword_27EFA8898, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_24AE0A280;
          *(v19 + 56) = MEMORY[0x277D837D0];
          *(v19 + 64) = sub_24AD92DC0();
          *(v19 + 32) = 0xD000000000000029;
          *(v19 + 40) = 0x800000024AE12EE0;
          v20 = sub_24AE093C8();
          LODWORD(v19) = [v20 evaluateWithObject_];

          if (v19)
          {
            v21 = 1;
          }

          else if (sub_24ADFEF04(v13, v15))
          {
            sub_24ADA4B88();
            v22 = sub_24AE08F88();
            v23 = sub_24AE08F88();

            v24 = CFPhoneNumberCreate();

            if (!v24)
            {
              goto LABEL_21;
            }

            v25 = v24;
            String = CFPhoneNumberCreateString();
            if (!String)
            {

LABEL_21:
              v21 = 0;
              goto LABEL_22;
            }

            v27 = String;
            v13 = sub_24AE08FB8();
            v29 = v28;

            v21 = 0;
            v15 = v29;
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {

          v21 = 2;
        }

LABEL_22:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24ADAA9F0(0, *(v9 + 2) + 1, 1, v9);
        }

        v31 = *(v9 + 2);
        v30 = *(v9 + 3);
        if (v31 >= v30 >> 1)
        {
          v9 = sub_24ADAA9F0((v30 > 1), v31 + 1, 1, v9);
        }

        ++v8;

        *(v9 + 2) = v31 + 1;
        v32 = &v9[40 * v31];
        v6 = v73;
        *(v32 + 4) = v16;
        *(v32 + 5) = v75;
        v32[48] = v21;
        *(v32 + 7) = v13;
        *(v32 + 8) = v15;
        if (v71 == v8)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_29:

  v33 = [v65 phoneNumbers];
  v34 = sub_24AE091B8();

  if (v34 >> 62)
  {
    v35 = sub_24AE095F8();
    v36 = &loc_24AE0A000;
    if (v35)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = &loc_24AE0A000;
    if (v35)
    {
LABEL_31:
      if (v35 < 1)
      {
LABEL_64:
        __break(1u);
        return;
      }

      v37 = 0;
      v74 = v34 & 0xC000000000000001;
      v68 = v36[40];
      v70 = v34;
      v72 = v35;
      v67 = *MEMORY[0x277CBECE8];
      while (1)
      {
        v38 = v74 ? MEMORY[0x24C231470](v37, v34) : *(v34 + 8 * v37 + 32);
        v39 = v38;
        v40 = [v38 value];
        v41 = [v40 unformattedInternationalStringValue];

        if (v41)
        {
          break;
        }

LABEL_34:
        if (v35 == ++v37)
        {
          goto LABEL_60;
        }
      }

      v42 = sub_24AE08FB8();
      v44 = v43;

      v76 = sub_24AE09008();
      v46 = v45;
      v47 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v47 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v47)
      {
        v52 = 2;
LABEL_53:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24ADAA9F0(0, *(v9 + 2) + 1, 1, v9);
        }

        v62 = *(v9 + 2);
        v61 = *(v9 + 3);
        if (v62 >= v61 >> 1)
        {
          v9 = sub_24ADAA9F0((v61 > 1), v62 + 1, 1, v9);
        }

        *(v9 + 2) = v62 + 1;
        v63 = &v9[40 * v62];
        *(v63 + 4) = v76;
        *(v63 + 5) = v46;
        v63[48] = v52;
        *(v63 + 7) = v42;
        *(v63 + 8) = v44;
        v35 = v72;
        goto LABEL_34;
      }

      sub_24ADD51D0(0, &qword_27EFA8898, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
      v48 = swift_allocObject();
      *(v48 + 16) = v68;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = sub_24AD92DC0();
      *(v48 + 32) = 0xD000000000000029;
      *(v48 + 40) = 0x800000024AE12EE0;
      v49 = sub_24AE093C8();
      v50 = sub_24AE08F88();
      v51 = [v49 evaluateWithObject_];

      if (v51)
      {
        v52 = 1;
LABEL_52:
        v34 = v70;
        goto LABEL_53;
      }

      if (!sub_24ADFEF04(v42, v44))
      {
        v52 = 2;
        goto LABEL_52;
      }

      sub_24ADA4B88();
      v53 = sub_24AE08F88();
      v54 = sub_24AE08F88();

      v55 = CFPhoneNumberCreate();

      if (v55)
      {
        v56 = v55;
        v57 = CFPhoneNumberCreateString();
        if (v57)
        {
          v58 = v57;
          v42 = sub_24AE08FB8();
          v60 = v59;

          v52 = 0;
          v44 = v60;
          goto LABEL_52;
        }
      }

      v52 = 0;
      goto LABEL_52;
    }
  }

LABEL_60:

  PersonModel.AssociatedHandles.init(allHandles:)(v9, v64);
}

uint64_t sub_24ADFD4FC(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    sub_24ADFE5B0();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5B8, &unk_24AE12070);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24AE12030;
  v5 = *MEMORY[0x277CBD018];
  v6 = *MEMORY[0x277CBCFC0];
  *(v2 + 32) = *MEMORY[0x277CBD018];
  *(v2 + 40) = v6;
  v7 = *MEMORY[0x277CBD098];
  *(v2 + 48) = *MEMORY[0x277CBD098];
  v8 = objc_opt_self();
  v9 = v5;
  v10 = v6;
  v11 = v7;
  *(v2 + 56) = [v8 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5C0, &unk_24AE12080);
  v12 = sub_24AE091A8();

  v19[0] = 0;
  v13 = [a2 unifiedContactsMatchingPredicate:a1 keysToFetch:v12 error:v19];

  v14 = v19[0];
  if (!v13)
  {
    v16 = v19[0];
    sub_24AE086C8();

    goto LABEL_6;
  }

  sub_24ADD51D0(0, &qword_27EFAA5C8, 0x277CBDA58);
  v2 = sub_24AE091B8();
  v15 = v14;

LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

char *sub_24ADFD714(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  LODWORD(v129) = *(a1 + 16);
  v7 = *(a1 + 32);
  v122 = *(a1 + 24);
  v8 = *(a1 + 40);
  if (qword_27EFA87C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_74:
  swift_once();
LABEL_2:
  v9 = sub_24AE08E08();
  __swift_project_value_buffer(v9, qword_27EFAA580);
  sub_24AE08288();
  sub_24AE08288();
  sub_24AE08288();
  v10 = sub_24AE08DE8();
  v11 = sub_24AE093E8();

  v120 = v7;
  v121 = v5;
  v118 = v6;
  v119 = v8;
  v115 = a2;
  if (os_log_type_enabled(v10, v11))
  {
    v113 = v11;
    log = v10;
    v12 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128[0] = v110;
    v112 = v12;
    *v12 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    *(inited + 48) = v129;
    *(inited + 56) = v122;
    *(inited + 64) = v7;
    v124 = inited;
    sub_24AE08288();
    sub_24AE08288();
    v14 = sub_24AE08288();
    sub_24ADFC258(v14);
    v15 = v124;
    v16 = *(v124 + 16);
    if (v16)
    {
      v108 = v3;
      v125 = MEMORY[0x277D84F90];
      sub_24ADFB058(0, v16, 0);
      v17 = (v15 + 40);
      do
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        v21 = *(v125 + 16);
        v20 = *(v125 + 24);
        sub_24AE08288();
        if (v21 >= v20 >> 1)
        {
          sub_24ADFB058((v20 > 1), v21 + 1, 1);
        }

        *(v125 + 16) = v21 + 1;
        v22 = v125 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
        v17 += 5;
        --v16;
      }

      while (v16);

      v7 = v120;
      v5 = v121;
      v3 = v108;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5E0, &qword_24AE12098);
    sub_24ADFE658();
    v23 = sub_24AE08EC8();
    v25 = v24;

    v26 = sub_24AD9F840(v23, v25, v128);

    *(v112 + 1) = v26;
    *(v112 + 6) = 2080;
    *(v112 + 14) = sub_24AD9F840(v6, v5, v128);
    _os_log_impl(&dword_24AD89000, log, v113, "Starting CNContact fetch for handles: %s, main handle: '%s'", v112, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v110, -1, -1);
    MEMORY[0x24C231F80](v112, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_24AE0A280;
  *(v27 + 32) = v6;
  *(v27 + 40) = v5;
  *(v27 + 48) = v129;
  *(v27 + 56) = v122;
  *(v27 + 64) = v7;
  v128[0] = v27;
  sub_24AE08288();
  sub_24AE08288();
  v28 = sub_24AE08288();
  sub_24ADFC258(v28);
  v29 = v128[0];
  v30 = *(v128[0] + 16);
  if (v30)
  {
    v128[0] = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v30, 0);
    v31 = v128[0];
    v32 = (v29 + 40);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v128[0] = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      sub_24AE08288();
      if (v36 >= v35 >> 1)
      {
        sub_24ADFB058((v35 > 1), v36 + 1, 1);
        v31 = v128[0];
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v32 += 5;
      --v30;
    }

    while (v30);
  }

  v38 = objc_opt_self();
  v39 = sub_24AE091A8();

  v7 = [v38 predicateForContactsMatchingHandleStrings_];

  v40 = sub_24ADFD4FC(v7, v115);
  if (v3)
  {

    return v7;
  }

  v3 = v40;
  sub_24AE08288();
  v42 = sub_24AE08DE8();
  v43 = sub_24AE093E8();
  v44 = v3 >> 62;
  if (os_log_type_enabled(v42, v43))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    if (!v44)
    {
      v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

    goto LABEL_81;
  }

  while (!v44)
  {
    v116 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v116)
    {
      goto LABEL_76;
    }

LABEL_27:
    v111 = v7;
    v46 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x24C231470](0, v3);
      goto LABEL_30;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *(v3 + 32);
LABEL_30:
      a2 = v47;
      if (v44)
      {
        v6 = sub_24AE095F8();
      }

      else
      {
        v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v109 = a2;
      if (v6 != 1)
      {
        sub_24AE08288();
        a2 = sub_24AE08DE8();
        v48 = sub_24AE093F8();
        if (os_log_type_enabled(a2, v48))
        {
          v105 = v48;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v128[0] = v50;
          *v49 = 134218242;
          v107 = a2;
          v104 = v50;
          if (v44)
          {
            v51 = sub_24AE095F8();
          }

          else
          {
            v51 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v49 + 4) = v51;

          buf = v49;
          *(v49 + 12) = 2080;
          if (v6)
          {
            v126 = MEMORY[0x277D84F90];
            result = sub_24ADFB058(0, v6 & ~(v6 >> 63), 0);
            if (v6 < 0)
            {
              __break(1u);
              return result;
            }

            v52 = 0;
            v114 = v6;
            do
            {
              if (v46)
              {
                v53 = MEMORY[0x24C231470](v52, v3);
              }

              else
              {
                v53 = *(v3 + 8 * v52 + 32);
              }

              v54 = v53;
              v55 = [v54 identifier];
              v56 = sub_24AE08FB8();
              v7 = v57;

              v6 = *(v126 + 16);
              v58 = *(v126 + 24);
              if (v6 >= v58 >> 1)
              {
                sub_24ADFB058((v58 > 1), v6 + 1, 1);
              }

              ++v52;
              *(v126 + 16) = v6 + 1;
              v59 = v126 + 16 * v6;
              *(v59 + 32) = v56;
              *(v59 + 40) = v7;
            }

            while (v114 != v52);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5E0, &qword_24AE12098);
          sub_24ADFE658();
          v60 = sub_24AE08EC8();
          v62 = v61;

          v63 = sub_24AD9F840(v60, v62, v128);

          *(buf + 14) = v63;
          a2 = v107;
          _os_log_impl(&dword_24AD89000, v107, v105, "CNContact fetch: expected 1 result, got %ld - contact identifiers: %s", buf, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x24C231F80](v104, -1, -1);
          MEMORY[0x24C231F80](buf, -1, -1);
        }

        else
        {
        }
      }

      v8 = 0;
      v5 = v116;
      while (1)
      {
        if (v46)
        {
          v64 = MEMORY[0x24C231470](v8, v3);
        }

        else
        {
          if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v64 = *(v3 + 8 * v8 + 32);
        }

        v7 = v64;
        a2 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        CNContact.personAssociatedHandles()(v128);
        if (v128[1])
        {
          v127 = v128[4];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA578, &qword_24AE12090);
          v65 = swift_initStackObject();
          *(v65 + 32) = v118;
          *(v65 + 16) = xmmword_24AE0A280;
          *(v65 + 40) = v121;
          *(v65 + 48) = v129;
          *(v65 + 56) = v122;
          *(v65 + 64) = v120;
          *(v65 + 72) = v119;
          sub_24AE08288();
          sub_24AE08288();
          sub_24AE08288();
          v66 = sub_24ADDB450(v65);
          swift_setDeallocating();
          sub_24ADFE604(v65 + 32);
          LOBYTE(v65) = PersonModel.AssociatedHandles.match(handlesSet:)(v66);

          v6 = v127;

          if (v65)
          {

            v76 = [v7 identifier];
            v77 = sub_24AE08FB8();
            v79 = v78;

            v80 = [v109 identifier];
            v81 = sub_24AE08FB8();
            v83 = v82;

            if (v77 == v81 && v79 == v83)
            {

              return v7;
            }

            v84 = sub_24AE097C8();

            if (v84)
            {

              return v7;
            }

            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            v85 = v109;
            v86 = v7;
            v87 = sub_24AE08DE8();
            v88 = sub_24AE093D8();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v129 = swift_slowAlloc();
              v128[0] = v129;
              *v89 = 136315650;
              v90 = [v85 identifier];
              v123 = v88;
              v91 = sub_24AE08FB8();
              v93 = v92;

              v94 = sub_24AD9F840(v91, v93, v128);

              *(v89 + 4) = v94;
              *(v89 + 12) = 2080;
              v95 = [v86 identifier];
              v96 = sub_24AE08FB8();
              v98 = v97;

              v99 = sub_24AD9F840(v96, v98, v128);

              *(v89 + 14) = v99;
              *(v89 + 22) = 2080;
              *(v89 + 24) = sub_24AD9F840(v118, v121, v128);
              _os_log_impl(&dword_24AD89000, v87, v123, "CNContact fetch: re-sorted contact selection changed from '%s' to '%s' based on main handle '%s'", v89, 0x20u);
              v100 = v129;
              swift_arrayDestroy();
              MEMORY[0x24C231F80](v100, -1, -1);
              MEMORY[0x24C231F80](v89, -1, -1);

              return v7;
            }

LABEL_63:
            return v7;
          }

          v5 = v116;
        }

        else
        {
        }

        ++v8;
        if (a2 == v5)
        {

          sub_24AE08288();
          sub_24AE08288();
          sub_24AE08288();
          v7 = v109;
          v67 = sub_24AE08DE8();
          v68 = sub_24AE093D8();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v128[0] = v70;
            *v69 = 136315394;
            *(v69 + 4) = sub_24AD9F840(v118, v121, v128);
            *(v69 + 12) = 2080;
            v71 = [v7 identifier];
            v72 = sub_24AE08FB8();
            v74 = v73;

            v75 = sub_24AD9F840(v72, v74, v128);

            *(v69 + 14) = v75;
            _os_log_impl(&dword_24AD89000, v67, v68, "CNContact fetch: no contact found containing main handle '%s', returning first result '%s'", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C231F80](v70, -1, -1);
            MEMORY[0x24C231F80](v69, -1, -1);
          }

          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    __break(1u);
LABEL_81:
    v45 = sub_24AE095F8();
LABEL_23:
    *(v39 + 1) = v45;

    _os_log_impl(&dword_24AD89000, v42, v43, "CNContact fetch returned %ld results", v39, 0xCu);
    MEMORY[0x24C231F80](v39, -1, -1);
  }

  v116 = sub_24AE095F8();
  if (v116)
  {
    goto LABEL_27;
  }

LABEL_76:

  v101 = sub_24AE08DE8();
  v102 = sub_24AE093D8();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_24AD89000, v101, v102, "CNContact fetch: no contacts found for handles", v103, 2u);
    MEMORY[0x24C231F80](v103, -1, -1);
  }

  return 0;
}

unint64_t sub_24ADFE5B0()
{
  result = qword_27EFAA5B0;
  if (!qword_27EFAA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA5B0);
  }

  return result;
}

unint64_t sub_24ADFE658()
{
  result = qword_27EFAA5E8;
  if (!qword_27EFAA5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFAA5E0, &qword_24AE12098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA5E8);
  }

  return result;
}

unint64_t sub_24ADFE6D0()
{
  result = qword_27EFAA5F0;
  if (!qword_27EFAA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA5F0);
  }

  return result;
}

uint64_t PersonModel.DisplayName.init(name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PersonModel.DisplayName.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t static PersonModel.DisplayName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t PersonModel.DisplayName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE09048();
}

uint64_t PersonModel.DisplayName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t static PersonModel.DisplayName.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

Swift::Bool __swiftcall PersonModel.DisplayName.contains(search:)(Swift::String search)
{
  v2 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v2 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *v1;
  v5 = v1[1];
  sub_24ADA16A8();
  return sub_24AE09468() & 1;
}

unint64_t sub_24ADFE88C()
{
  result = qword_27EFAA600;
  if (!qword_27EFAA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA600);
  }

  return result;
}

uint64_t PersonModel.Favorite.init(order:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t PersonModel.Favorite.rawOrder.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PersonModel.Favorite.sortOrder.getter()
{
  if (v0[8])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *v0;
  }
}

uint64_t PersonModel.Favorite.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    if (qword_27EFA86E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27EFA9FE0;
    v4 = *algn_27EFA9FE8;
    v5 = qword_27EFA9FF0;
    v6 = unk_27EFA9FF8;
    v7 = word_27EFAA000 | (HIBYTE(word_27EFAA000) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t static PersonModel.Favorite.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PersonModel.Favorite.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return sub_24AE09858();
  }

  v2 = *v0;
  sub_24AE09858();
  return MEMORY[0x24C231780](v2);
}

uint64_t PersonModel.Favorite.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24AE09838();
  sub_24AE09858();
  if (v2 != 1)
  {
    MEMORY[0x24C231780](v1);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADFEAF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24AE09838();
  sub_24AE09858();
  if (v2 != 1)
  {
    MEMORY[0x24C231780](v1);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADFEB64()
{
  if (*(v0 + 8) == 1)
  {
    return sub_24AE09858();
  }

  v2 = *v0;
  sub_24AE09858();
  return MEMORY[0x24C231780](v2);
}

uint64_t sub_24ADFEBB4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24AE09838();
  sub_24AE09858();
  if (v2 != 1)
  {
    MEMORY[0x24C231780](v1);
  }

  return sub_24AE09868();
}

unint64_t sub_24ADFEC24()
{
  result = qword_27EFAA608;
  if (!qword_27EFAA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA608);
  }

  return result;
}

uint64_t sub_24ADFEC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s8FavoriteVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s8FavoriteVwst(uint64_t result, int a2, int a3)
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

void PersonModel.Handle.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AE09008();
  v8 = v7;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  sub_24AD92D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24AE0A280;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_24AD92DC0();
  *(v10 + 32) = 0xD000000000000029;
  *(v10 + 40) = 0x800000024AE12EE0;
  v11 = sub_24AE093C8();
  v12 = sub_24AE08F88();
  v13 = [v11 evaluateWithObject_];

  if ((v13 & 1) == 0)
  {
    if (sub_24ADFEF04(a1, a2))
    {
      a1 = sub_24ADA4CC4(a1);
      v16 = v15;

      v14 = 0;
      a2 = v16;
      goto LABEL_9;
    }

LABEL_8:
    v14 = 2;
    goto LABEL_9;
  }

  v14 = 1;
LABEL_9:
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v14;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t PersonModel.Handle.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}