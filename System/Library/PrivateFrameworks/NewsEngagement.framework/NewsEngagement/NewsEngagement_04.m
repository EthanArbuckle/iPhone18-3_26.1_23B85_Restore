void *sub_25BEACEF4()
{
  v1 = v0;
  sub_25BE61E38(0, &qword_280E76640, &type metadata for EngagementInlineViewManager.Placement, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_25BEB4C94();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        v25 = v20;
        result = sub_25BE86988(v21, v22, v23);
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

void *sub_25BEAD0A8()
{
  v1 = v0;
  sub_25BE6998C(0, &qword_280E76620);
  v2 = *v0;
  v3 = sub_25BEB4C94();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25BEADC08(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25BE694D4(v19, *(v4 + 56) + 16 * v17);
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

char *sub_25BEAD238(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25BE672C8(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25BE672C8(v6, v5);
    *v3 = xmmword_25BEB9310;
    sub_25BE672C8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25BEB4274() && __OFSUB__(v6, sub_25BEB42A4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25BEB42B4();
      swift_allocObject();
      v13 = sub_25BEB4254();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_25BEAD6DC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25BE672C8(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25BEB9310;
    sub_25BE672C8(0, 0xC000000000000000);
    sub_25BEB4344();
    result = sub_25BEAD6DC(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_25BEAD5DC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25BEAD85C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25BEAD9B4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25BEADA30(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25BEAD670(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25BEAD6DC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25BEB4274();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25BEB42A4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25BEB4294();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25BEAD790(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25BEB4924();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F87F110](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25BEAD80C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_25BEB4BB4();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BEAD85C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25BEAD914(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_25BEB42B4();
      swift_allocObject();
      sub_25BEB4284();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25BEB4354();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25BEAD9B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25BEB42B4();
  swift_allocObject();
  result = sub_25BEB4264();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25BEB4354();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25BEADA30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25BEB42B4();
  swift_allocObject();
  result = sub_25BEB4264();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25BEADAB4()
{
  v0 = sub_25BEB4CD4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

void sub_25BEADB00()
{
  if (!qword_280E76630)
  {
    sub_25BE63CCC(255, &qword_280E76708, type metadata accessor for WeakEngagementUIEventObserver, MEMORY[0x277D83940]);
    sub_25BE5CD58();
    v0 = sub_25BEB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76630);
    }
  }
}

void sub_25BEADB9C()
{
  if (!qword_280E76650)
  {
    sub_25BEB43C4();
    sub_25BE5CD58();
    v0 = sub_25BEB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76650);
    }
  }
}

void *sub_25BEADC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25BEAD670(sub_25BEADCCC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25BEADCEC()
{
  sub_25BE77650(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25BEADD48()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BEADE60()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BEADF58()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BEAE04C()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

NewsEngagement::EngagementUpsellBannerStyle_optional __swiftcall EngagementUpsellBannerStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4CD4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EngagementUpsellBannerStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x72656E6E6162;
  v4 = 0x6954656C62627562;
  if (v1 != 4)
  {
    v4 = 0x7473616F74;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7472656C61;
  if (v1 != 1)
  {
    v5 = 0x7465656873;
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

unint64_t sub_25BEAE278()
{
  result = qword_27FBE4740;
  if (!qword_27FBE4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4740);
  }

  return result;
}

uint64_t sub_25BEAE2D4()
{
  sub_25BEB48C4();
}

void sub_25BEAE3C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE600000000000000;
  v6 = 0x72656E6E6162;
  v7 = 0xE900000000000070;
  v8 = 0x6954656C62627562;
  if (v2 != 4)
  {
    v8 = 0x7473616F74;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7472656C61;
  if (v2 != 1)
  {
    v9 = 0x7465656873;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_25BEAE488(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25BEAE4CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 0x6E6F6973736573;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973736573;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x74726F6873;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BEB4E64();
  }

  return v11 & 1;
}

uint64_t sub_25BEAE5F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x646961706E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1752461154;
    }

    else
    {
      v4 = 1885956979;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1684627824;
    }

    else
    {
      v4 = 0x646961706E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 1752461154;
  if (a2 != 2)
  {
    v7 = 1885956979;
  }

  if (a2)
  {
    v2 = 1684627824;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25BEB4E64();
  }

  return v10 & 1;
}

uint64_t sub_25BEAE700(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x800000025BEB9F90;
      v5 = 0xD000000000000010;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000016;
      }

      else
      {
        v5 = 0xD000000000000012;
      }

      if (v2 == 4)
      {
        v6 = 0x800000025BEB9FB0;
      }

      else
      {
        v6 = 0x800000025BEB9FD0;
      }
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 1)
    {
      v4 = 0x64657269707865;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a1 != 1)
    {
      v3 = 0x800000025BEB9F70;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x800000025BEB9F50;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = 0x64657269707865;
      }

      else
      {
        v7 = 0xD000000000000017;
      }

      if (a2 == 1)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0x800000025BEB9F70;
      }

      if (v5 != v7)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v9 = "invalidPaidEligibility";
    goto LABEL_35;
  }

  if (a2 == 3)
  {
    v8 = 0x800000025BEB9F90;
    if (v5 != 0xD000000000000010)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 4)
  {
    v9 = "requiredAppLaunchCount";
LABEL_35:
    v8 = (v9 - 32) | 0x8000000000000000;
    if (v5 != 0xD000000000000016)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v8 = 0x800000025BEB9FD0;
  if (v5 != 0xD000000000000012)
  {
LABEL_42:
    v10 = sub_25BEB4E64();
    goto LABEL_43;
  }

LABEL_40:
  if (v6 != v8)
  {
    goto LABEL_42;
  }

  v10 = 1;
LABEL_43:

  return v10 & 1;
}

uint64_t sub_25BEAE8C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x72656E6E6162;
  v6 = 0x6954656C62627562;
  v7 = 0xE900000000000070;
  if (a1 != 4)
  {
    v6 = 0x7473616F74;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x7472656C61;
  if (a1 != 1)
  {
    v8 = 0x7465656873;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x746C7561666564;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
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
      v11 = 0xE600000000000000;
      if (v9 != 0x72656E6E6162)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 4)
    {
      v11 = 0xE900000000000070;
      if (v9 != 0x6954656C62627562)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v11 = 0xE500000000000000;
    v12 = 1935765364;
  }

  else
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x746C7561666564)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v11 = 0xE500000000000000;
    if (a2 == 1)
    {
      v12 = 1919249505;
    }

    else
    {
      v12 = 1701144691;
    }
  }

  if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x7400000000))
  {
LABEL_33:
    v13 = sub_25BEB4E64();
    goto LABEL_34;
  }

LABEL_31:
  if (v10 != v11)
  {
    goto LABEL_33;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t sub_25BEAEA70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x800000025BEB9E40;
    v13 = 0xD00000000000001BLL;
    if (a1 == 2)
    {
      v13 = 0xD000000000000017;
    }

    else
    {
      v12 = 0x800000025BEB9E60;
    }

    if (a1)
    {
      v14 = 0xD000000000000016;
    }

    else
    {
      v14 = 0x6E6F6973726576;
    }

    if (a1)
    {
      v11 = 0x800000025BEB9E20;
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
    v3 = 0x800000025BEB9ED0;
    v4 = 0xD00000000000001CLL;
    v5 = 0x800000025BEB9EF0;
    v6 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v6 = 0xD000000000000023;
      v5 = 0x800000025BEB9F10;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x800000025BEB9E80;
    v8 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v8 = 0xD000000000000021;
      v7 = 0x800000025BEB9EA0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x800000025BEB9E40;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v15 = 0x800000025BEB9E60;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_55;
        }
      }
    }

    else if (a2)
    {
      v15 = 0x800000025BEB9E20;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E6F6973726576)
      {
        goto LABEL_55;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x800000025BEB9E80;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v15 = 0x800000025BEB9EA0;
      if (v9 != 0xD000000000000021)
      {
LABEL_55:
        v16 = sub_25BEB4E64();
        goto LABEL_56;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x800000025BEB9ED0;
    if (v9 != 0xD00000000000001CLL)
    {
      goto LABEL_55;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x800000025BEB9EF0;
    if (v9 != 0xD00000000000001DLL)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v15 = 0x800000025BEB9F10;
    if (v9 != 0xD000000000000023)
    {
      goto LABEL_55;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_55;
  }

  v16 = 1;
LABEL_56:

  return v16 & 1;
}

uint64_t sub_25BEAED34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7972756372656DLL;
    }

    else
    {
      v4 = 0x6D6F6F727377656ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6775626564;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x7972756372656DLL;
  if (a2 != 2)
  {
    v8 = 0x6D6F6F727377656ELL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6775626564;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BEB4E64();
  }

  return v11 & 1;
}

uint64_t sub_25BEAEE70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 2)
    {
      v4 = 0x800000025BEB9A10;
    }

    else
    {
      v4 = 0x800000025BEB9A30;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656E4F656C707061;
    }

    else
    {
      v3 = 0x73756C507377656ELL;
    }

    v4 = 0xE800000000000000;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v6 = 0x800000025BEB9A10;
    }

    else
    {
      v6 = 0x800000025BEB9A30;
    }

    if (v3 != v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x656E4F656C707061;
    }

    else
    {
      v5 = 0x73756C507377656ELL;
    }

    v6 = 0xE800000000000000;
    if (v3 != v5)
    {
      goto LABEL_27;
    }
  }

  if (v4 != v6)
  {
LABEL_27:
    v8 = sub_25BEB4E64();
    goto LABEL_28;
  }

  v8 = 1;
LABEL_28:

  return v8 & 1;
}

id EngagementInlineViewManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EngagementInlineViewManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EngagementInlineViewManager.state(for:)()
{
  sub_25BEB4544();
  sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);

  sub_25BEB4644();
}

Swift::String_optional __swiftcall EngagementInlineViewManager.identifier(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  v1 = sub_25BEAF320();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_25BEAF234(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_25BEB4544();
  sub_25BE61510(0, a2, a3, MEMORY[0x277D83D88]);

  sub_25BEB4644();
}

Swift::String_optional __swiftcall EngagementInlineViewManager.appearanceInfo(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  v1 = sub_25BEAF320();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_25BEAF320()
{
  sub_25BEB4544();
  sub_25BE61510(0, &qword_280E76EF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);

  sub_25BEB4644();

  return v1;
}

uint64_t sub_25BEAF42C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_25BEB44F4();
  swift_beginAccess();
  v7 = *(v3 + 24);
  if (!*(v7 + 16) || (v8 = sub_25BE65758(v6), (v9 & 1) == 0))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_6:
    sub_25BE614B8(v19, 0, v20, v21, v22);
    swift_endAccess();
    return sub_25BEB4504();
  }

  v10 = (*(v7 + 56) + 40 * v8);
  v11 = *v10;
  v12 = *(v10 + 2);
  v13 = *(v10 + 3);
  v14 = v10[32];
  v15 = *(v10 + 1);
  v16 = v13;
  sub_25BE86988(v12, v13, v14);
  if (!v15)
  {
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    goto LABEL_6;
  }

  v17 = v15;
  swift_endAccess();
  sub_25BE614B8(v11, v15, v12, v16, v14);
  v18 = &v17[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_appearanceInfo];
  *v18 = a1;
  *(v18 + 1) = a2;

  return sub_25BEB4504();
}

Swift::String_optional __swiftcall EngagementInlineViewManager.messageID(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  v1 = sub_25BEAF320();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall EngagementInlineViewManager.trigger(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  v1 = sub_25BEAF320();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void sub_25BEAF5C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v8 = sub_25BEB4764();
  __swift_project_value_buffer(v8, qword_280E77F40);
  v9 = a1;
  sub_25BEB3D78(v6, v5, v7);
  v10 = sub_25BEB4744();
  v11 = sub_25BEB4A44();
  sub_25BEB3D50(v6, v5, v7);

  v71 = v6;
  v69 = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v74[0] = v72;
    *v12 = 138412802;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    if (v7 == 255)
    {
      v14 = 0;
    }

    else
    {
      v14 = v6;
    }

    if (v7 == 255)
    {
      v15 = 0;
    }

    else
    {
      v15 = v5;
    }

    if (v7 == 255)
    {
      v16 = 2;
    }

    else
    {
      v16 = v7;
    }

    *&v75 = v14;
    *(&v75 + 1) = v15;
    LOBYTE(v76) = v16;
    v17 = v9;
    v18 = v5;
    v19 = v2;
    v20 = v17;
    sub_25BEB3D78(v6, v18, v7);
    v21 = EngagementInlineBannerState.description.getter();
    v23 = v22;
    sub_25BEB3D64(v75, *(&v75 + 1), v76);
    v24 = sub_25BE60F30(v21, v23, v74);

    *(v12 + 14) = v24;
    *(v12 + 22) = 2080;
    v25 = v20[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement];
    v3 = v19;
    LOBYTE(v75) = v25;
    v26 = EngagementUIPlacement.rawValue.getter();
    v28 = sub_25BE60F30(v26, v27, v74);

    *(v12 + 24) = v28;
    _os_log_impl(&dword_25BE5A000, v10, v11, "Controller did update: %@ state: %s for placement: %s", v12, 0x20u);
    sub_25BE84A0C(v13);
    MEMORY[0x25F87FD60](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F87FD60](v72, -1, -1);
    MEMORY[0x25F87FD60](v12, -1, -1);
  }

  v70 = v9;
  v29 = *(v3 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state);
  v74[0] = *(v29 + 16);
  MEMORY[0x28223BE20](v30, v31);
  v73 = v32;
  sub_25BEB4544();
  sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  v33 = v75;
  v34 = v76;
  if (v76 < 2u)
  {
    goto LABEL_15;
  }

  if (v76 == 255)
  {
    sub_25BEB3D50(v75, *(&v75 + 1), 255);
    v35 = 4;
    v36 = 0;
    v37 = 2;
    goto LABEL_18;
  }

  if (v75 < 4)
  {
LABEL_15:
    sub_25BEB3D50(4, 0, 2);
    v36 = v33 >> 64;
    v35 = v33;
    v37 = v34;
LABEL_18:
    sub_25BEB3D50(v35, v36, v37);
    v40 = v71;
    v41 = v69;
    v42 = v7;
    if (v7 == 255)
    {
      v74[0] = *(v29 + 16);
      MEMORY[0x28223BE20](v38, v39);

      sub_25BEB4644();

      if (v76 == 255)
      {
        v40 = 0;
      }

      else
      {
        v40 = v75;
      }

      if (v76 == 255)
      {
        v41 = 0;
      }

      else
      {
        v41 = *(&v75 + 1);
      }

      if (v76 == 255)
      {
        v42 = 2;
      }

      else
      {
        v42 = v76;
      }
    }

    *&v75 = v40;
    *(&v75 + 1) = v41;
    LOBYTE(v76) = v42;
    v43 = v73;
    LOBYTE(v74[0]) = v73;
    sub_25BEB3D78(v71, v69, v7);
    sub_25BEB11A4(&v75, v74);
    sub_25BE86988(v40, v41, v42);
    v44 = sub_25BEB4744();
    v45 = sub_25BEB4A64();
    sub_25BEB3D64(v40, v41, v42);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74[0] = v47;
      *v46 = 136315394;
      LOBYTE(v75) = v73;
      v48 = EngagementUIPlacement.rawValue.getter();
      v50 = sub_25BE60F30(v48, v49, v74);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *&v75 = v40;
      *(&v75 + 1) = v41;
      LOBYTE(v76) = v42;
      sub_25BE86988(v40, v41, v42);
      v51 = EngagementInlineBannerState.description.getter();
      v53 = v52;
      sub_25BEB3D64(v75, *(&v75 + 1), v76);
      v54 = sub_25BE60F30(v51, v53, v74);
      v43 = v73;

      *(v46 + 14) = v54;
      _os_log_impl(&dword_25BE5A000, v44, v45, "Updated placement %s to state %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v47, -1, -1);
      MEMORY[0x25F87FD60](v46, -1, -1);
    }

    v55 = v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_source];
    v56 = *&v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier + 8];
    v57 = *&v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_messageID];
    v58 = *&v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_messageID + 8];
    v59 = v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_offer];
    v60 = *&v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_appearanceInfo];
    v61 = *&v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_appearanceInfo + 8];
    *&v75 = *&v70[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier];
    *(&v75 + 1) = v56;
    LOBYTE(v76) = v43;
    *(&v76 + 1) = v40;
    *&v77 = v41;
    BYTE8(v77) = v42;
    BYTE9(v77) = v55;
    *&v78 = v57;
    *(&v78 + 1) = v58;
    LOBYTE(v79) = v59;
    *(&v79 + 1) = v60;
    v80 = v61;
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 56) = v77;
    v64 = v79;
    *(v63 + 72) = v78;
    *(v63 + 88) = v64;
    *(v63 + 104) = v80;
    v65 = v76;
    *(v63 + 24) = v75;
    *(v63 + 40) = v65;
    sub_25BE86988(v40, v41, v42);

    sub_25BEB40CC(&v75, v74);
    sub_25BEB4734();

    sub_25BEB4128(&v75);
    sub_25BEB3D64(v40, v41, v42);
    return;
  }

  sub_25BEB3D50(v75, *(&v75 + 1), 2);
  v66 = sub_25BEB4744();
  v67 = sub_25BEB4A54();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_25BE5A000, v66, v67, "Skipping state update as this placement has been dismissed", v68, 2u);
    MEMORY[0x25F87FD60](v68, -1, -1);
  }
}

Swift::Void __swiftcall EngagementInlineViewManager.removePlacement(_:)(NewsEngagement::EngagementUIPlacement a1)
{
  v2 = *a1;
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v3 = sub_25BEB4764();
  __swift_project_value_buffer(v3, qword_280E77F40);
  v4 = sub_25BEB4744();
  v5 = sub_25BEB4A64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    v8 = EngagementUIPlacement.rawValue.getter();
    v10 = sub_25BE60F30(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25BE5A000, v4, v5, "Removing placement: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F87FD60](v7, -1, -1);
    MEMORY[0x25F87FD60](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore + 24);
  v12 = *(v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore), v11);
  LOBYTE(v13[0]) = v2;
  (*(v12 + 24))(v13, v11, v12);
  sub_25BEB44F4();
  swift_beginAccess();
  sub_25BEB3658(v2, v13);
  swift_endAccess();
  sub_25BE614B8(v13[0], v13[1], v13[2], v13[3], v14);
  sub_25BEB4504();
}

uint64_t EngagementInlineViewManager.removeObserver(_:)(uint64_t a1)
{
  sub_25BEB44F4();
  swift_beginAccess();
  sub_25BEB370C(a1, &v3);
  swift_endAccess();
  sub_25BE69354(&v3, &qword_280E76AB0, &type metadata for EngagementInlineViewManager.Observation);
  return sub_25BEB4504();
}

id EngagementInlineViewManager.view(for:width:)(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v103 = *&a2;
  v7 = sub_25BEB47A4();
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v95[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25BEB47C4();
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v95[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *(v4 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state);
  v113[0] = *(v16 + 16);
  v106 = v16;
  v107 = v15;
  sub_25BEB4544();
  sub_25BE61910(0, &qword_280E770B0, type metadata accessor for EngagementInlineDialogViewController, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  if (!aBlock)
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v67 = sub_25BEB4764();
    __swift_project_value_buffer(v67, qword_280E77F40);
    v68 = sub_25BEB4744();
    v69 = sub_25BEB4A54();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&aBlock = v71;
      *v70 = 136315138;
      LOBYTE(v113[0]) = v15;
      v72 = EngagementUIPlacement.rawValue.getter();
      v74 = sub_25BE60F30(v72, v73, &aBlock);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_25BE5A000, v68, v69, "Failed to retrieve inline view controller for placement=%s. Exiting", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x25F87FD60](v71, -1, -1);
      MEMORY[0x25F87FD60](v70, -1, -1);
    }

    return 0;
  }

  v105 = aBlock;
  v113[0] = *(v16 + 16);
  MEMORY[0x28223BE20](v17, v18);
  *&v95[-16] = v16;
  v104 = v19;
  v95[-8] = v19;
  sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  v20 = *(&aBlock + 1);
  v21 = v109;
  if (v109 > 1u)
  {
    if (v109 == 255)
    {
      v22 = 0;
      v23 = 0;
      v24 = 2;
    }

    else
    {
      v24 = 2;
      if (aBlock > 2)
      {
        v23 = *(&aBlock + 1);
        v22 = aBlock;
        if (!(aBlock ^ 3 | *(&aBlock + 1)))
        {
          goto LABEL_4;
        }
      }

      else
      {
        v23 = *(&aBlock + 1);
        v22 = aBlock;
        if (aBlock >= 2)
        {
          v98 = aBlock;
          v25 = v109;
          v26 = 0;
          goto LABEL_5;
        }
      }
    }

    goto LABEL_38;
  }

  v23 = *(&aBlock + 1);
  v22 = aBlock;
  v24 = v109;
  if (v109)
  {
LABEL_38:
    v75 = aBlock;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v76 = sub_25BEB4764();
    __swift_project_value_buffer(v76, qword_280E77F40);
    sub_25BEB3D78(v75, v20, v21);
    v77 = sub_25BEB4744();
    v78 = sub_25BEB4A64();
    sub_25BEB3D50(v75, v20, v21);
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v102 = v23;
      v103 = *&v24;
      v80 = v22;
      v81 = v21;
      v82 = v20;
      v83 = v79;
      v84 = swift_slowAlloc();
      v113[0] = v84;
      *v83 = 136315394;
      LOBYTE(aBlock) = v104;
      v85 = EngagementUIPlacement.rawValue.getter();
      v87 = sub_25BE60F30(v85, v86, v113);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      *&aBlock = v80;
      *(&aBlock + 1) = v102;
      LOBYTE(v109) = LOBYTE(v103);
      sub_25BEB3D78(v75, v82, v81);
      v88 = EngagementInlineBannerState.description.getter();
      v90 = v89;
      sub_25BEB3D64(aBlock, *(&aBlock + 1), v109);
      v91 = sub_25BE60F30(v88, v90, v113);

      *(v83 + 14) = v91;
      _os_log_impl(&dword_25BE5A000, v77, v78, "Requesting a view that has not been fulfilled placement=%s state=%s. Exiting", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v84, -1, -1);
      MEMORY[0x25F87FD60](v83, -1, -1);

      v92 = v75;
      v93 = v82;
      v94 = v81;
    }

    else
    {

      v92 = v75;
      v93 = v20;
      v94 = v21;
    }

    sub_25BEB3D50(v92, v93, v94);
    return 0;
  }

LABEL_4:
  v98 = aBlock;
  v25 = v109;
  v26 = 1;
LABEL_5:
  v28 = *(v4 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore + 24);
  v27 = *(v4 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore), v28);
  LOBYTE(v113[0]) = v104;
  (*(v27 + 8))(&aBlock, v113, v28, v27);
  v29 = *&aBlock;
  v30 = v109;
  if (v109)
  {
    v29 = 0.0;
  }

  v31 = v105;
  v32 = v25;
  if ((a3 & 1) == 0)
  {
    v33 = *(&aBlock + 1);
    v34 = v104;
    v97 = v29;
    if (v26)
    {
      v35 = v29 == v103 ? v109 : 1;
      if (v35 == 1)
      {
        if (qword_280E76F20 != -1)
        {
          swift_once();
        }

        v96 = v30;
        v36 = sub_25BEB4764();
        __swift_project_value_buffer(v36, qword_280E77F40);
        v37 = sub_25BEB4744();
        v38 = sub_25BEB4A64();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 134217984;
          *(v39 + 4) = v103;
          _os_log_impl(&dword_25BE5A000, v37, v38, "Requested banner width: %f", v39, 0xCu);
          MEMORY[0x25F87FD60](v39, -1, -1);
        }

        sub_25BE80458(0, &qword_280E766B0);
        v40 = sub_25BEB4AA4();
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        v43 = v103;
        *(v42 + 16) = v31;
        *(v42 + 24) = v43;
        *(v42 + 32) = v34;
        *(v42 + 40) = v41;
        v111 = sub_25BEB3D8C;
        v112 = v42;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v109 = sub_25BEAE488;
        v110 = &block_descriptor_21;
        v44 = _Block_copy(&aBlock);
        v45 = v31;

        sub_25BEB47B4();
        *&aBlock = MEMORY[0x277D84F90];
        sub_25BEB3CF8();
        sub_25BE61910(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_25BE80500();
        v46 = v102;
        sub_25BEB4B04();
        MEMORY[0x25F87F2C0](0, v14, v10, v44);
        _Block_release(v44);

        (*(v101 + 8))(v10, v46);
        (*(v99 + 8))(v14, v100);
        v30 = v96;
      }
    }

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v47 = sub_25BEB4764();
    __swift_project_value_buffer(v47, qword_280E77F40);
    v48 = sub_25BEB4744();
    v49 = sub_25BEB4A64();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v32;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&aBlock = v52;
      *v51 = 136315394;
      v53 = v97;
      v54 = 0.0;
      if (v30)
      {
        v53 = 0.0;
      }

      else
      {
        v54 = v33;
      }

      v55 = NSStringFromCGSize(*&v53);
      v56 = sub_25BEB4884();
      v57 = v34;
      v59 = v58;

      v60 = sub_25BE60F30(v56, v59, &aBlock);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2080;
      LOBYTE(v113[0]) = v57;
      v61 = EngagementUIPlacement.rawValue.getter();
      v63 = sub_25BE60F30(v61, v62, &aBlock);

      *(v51 + 14) = v63;
      _os_log_impl(&dword_25BE5A000, v48, v49, "Using banner size: %s for placement=%s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v52, -1, -1);
      v64 = v51;
      v32 = v50;
      MEMORY[0x25F87FD60](v64, -1, -1);
    }
  }

  v65 = [v31 view];

  sub_25BEB3D50(v98, *(&v98 + 1), v32);
  return v65;
}

void sub_25BEB0C28(void *a1, char a2, double a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 sizeThatFits_];
    v9 = v8;
    v11 = v10;

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v12 = sub_25BEB4764();
    __swift_project_value_buffer(v12, qword_280E77F40);
    v13 = sub_25BEB4744();
    v14 = sub_25BEB4A64();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136315394;
      v17 = sub_25BEB4AC4();
      v19 = sub_25BE60F30(v17, v18, v30);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v33 = a2;
      v20 = EngagementUIPlacement.rawValue.getter();
      v22 = sub_25BE60F30(v20, v21, v30);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_25BE5A000, v13, v14, "Calculated new banner size: %s for placement=%s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v16, -1, -1);
      MEMORY[0x25F87FD60](v15, -1, -1);
    }

    if (v11 > 0.0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        sub_25BE5D428(Strong + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore, v30);

        v25 = v31;
        v26 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        v34 = v9;
        v35 = v11;
        v29 = a2;
        (*(v26 + 16))(&v34, &v29, v25, v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
      }
    }

    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v34 = v9;
      v35 = v11;
      v36 = 0;
      sub_25BEAF5C0(a1, &v34);
    }
  }

  else
  {
    __break(1u);
  }
}

NewsEngagement::EngagementPlacementVisibility __swiftcall EngagementInlineViewManager.placementVisibility(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  v3 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state);
  v13 = *(v4 + 16);
  sub_25BEB4544();
  sub_25BE61510(0, qword_280E76AD8, &type metadata for EngagementPlacementSource, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  if (v17 <= 2u)
  {
    v6 = sub_25BEB4E64();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v17 != 3)
    {
      goto LABEL_7;
    }
  }

  v7 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory), *(v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory + 24));
  v17 = *(v4 + 16);
  MEMORY[0x28223BE20](v7, v8);
  sub_25BE61510(0, &qword_280E76EF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);

  sub_25BEB4644();

  v9 = v14;
  if (v14)
  {
    v10 = v13;
    sub_25BE5D428(*v7 + 16, &v13);
    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    (*(v12 + 16))(v10, v9, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v13);
  }

LABEL_7:
  *v3 = 0;
  return result;
}

uint64_t sub_25BEB11A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  sub_25BEB44F4();
  swift_beginAccess();
  v8 = *(v2 + 24);
  if (!*(v8 + 16) || (v9 = sub_25BE65758(v7), (v10 & 1) == 0))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_6:
    sub_25BE614B8(v27, 0, v26, v25, v24);
    swift_endAccess();
    return sub_25BEB4504();
  }

  v11 = (*(v8 + 56) + 40 * v9);
  v29 = v4;
  v30 = *v11;
  v12 = *(v11 + 2);
  v13 = *(v11 + 3);
  v14 = v11[32];
  v15 = *(v11 + 1);
  v16 = v12;
  v17 = v12;
  v18 = v13;
  v19 = v13;
  v20 = v14;
  sub_25BE86988(v17, v19, v14);
  if (!v15)
  {
    v24 = v14;
    v25 = v18;
    v26 = v16;
    v27 = v30;
    goto LABEL_6;
  }

  v21 = v15;
  swift_endAccess();
  sub_25BE614B8(v30, v15, v16, v18, v20);
  v32[0] = v7;
  v33 = v21;
  v34 = v29;
  v35 = v5;
  v36 = v6;
  swift_beginAccess();
  v22 = v21;
  sub_25BE86988(v29, v5, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_25BE85CF4(v32, v7, isUniquelyReferenced_nonNull_native);
  *(v3 + 24) = v31;
  swift_endAccess();

  return sub_25BEB4504();
}

uint64_t sub_25BEB1360(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    v5 = sub_25BE61620();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = type metadata accessor for EngagementInlineViewManager();
      v8 = (v5 + 40);
      do
      {
        v9 = *v8;
        ObjectType = swift_getObjectType();
        v17[3] = v7;
        v17[4] = &protocol witness table for EngagementInlineViewManager;
        v11 = *(a2 + 48);
        v15[2] = *(a2 + 32);
        v15[3] = v11;
        v15[4] = *(a2 + 64);
        v16 = *(a2 + 80);
        v17[0] = v4;
        v12 = *(a2 + 16);
        v15[0] = *a2;
        v15[1] = v12;
        v13 = *(v9 + 8);
        swift_unknownObjectRetain();
        v14 = v4;
        v13(v17, v15, ObjectType, v9);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        v8 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

void EngagementInlineViewManager.triggerAction(_:for:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *(v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state);
  *&v29 = *(v5 + 16);
  sub_25BEB4544();
  sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  if (v33 >= 2u)
  {
    if (v33 == 255)
    {
      sub_25BEB3D50(v31, v32, 255);
      v6 = 3;
      v7 = 0;
      v8 = 2;
      goto LABEL_5;
    }

    if (!(v31 ^ 3 | v32))
    {
      sub_25BEB3D50(v31, v32, 2);
      return;
    }
  }

  sub_25BEB3D50(3, 0, 2);
  v6 = v31;
  v7 = v32;
  v8 = v33;
LABEL_5:
  sub_25BEB3D50(v6, v7, v8);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory), *(v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory + 24));
  LOBYTE(v29) = v4;
  v9 = *(v2 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_featureSettings + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 8))(ObjectType, v9);
  sub_25BE5F578(&v29, v11 & 1, &v31);
  v13 = v31;
  v12 = v32;
  if (v32 != 11)
  {
    v14 = v33;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v12;
    *(v16 + 32) = v4;
    *(v16 + 33) = v14;
    sub_25BE5EC10(v12);
    sub_25BE5EC10(v12);

    sub_25BEB4734();

    sub_25BE5FDE0(v12);
  }

  if (v13)
  {
    v17 = v13;

    [v17 setDelegate_];
    sub_25BEB44F4();
    swift_beginAccess();
    sub_25BEB3658(v4, &v31);
    swift_endAccess();
    sub_25BE614B8(v31, v32, v33, *(&v33 + 1), v34);
    sub_25BEB4504();
    sub_25BEB44F4();
    LOBYTE(v31) = v4;
    v32 = v17;
    v33 = xmmword_25BEB9720;
    LOBYTE(v34) = 2;
    swift_beginAccess();
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v5 + 24);
    *(v5 + 24) = 0x8000000000000000;
    sub_25BE85CF4(&v31, v4, isUniquelyReferenced_nonNull_native);
    *(v5 + 24) = v28;
    swift_endAccess();
    sub_25BEB4504();
    v29 = xmmword_25BEB9740;
    v30 = 2;
    sub_25BEAF5C0(v18, &v29);
  }

  else
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v20 = sub_25BEB4764();
    __swift_project_value_buffer(v20, qword_280E77F40);
    v21 = sub_25BEB4744();
    v22 = sub_25BEB4A54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      LOBYTE(v29) = v4;
      v25 = EngagementUIPlacement.rawValue.getter();
      v27 = sub_25BE60F30(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_25BE5A000, v21, v22, "Could not create debug dialog view controller for placement: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x25F87FD60](v24, -1, -1);
      MEMORY[0x25F87FD60](v23, -1, -1);
    }
  }

  sub_25BE5FDE0(v12);
}

uint64_t sub_25BEB1988(uint64_t a1)
{
  sub_25BEB44F4();
  swift_beginAccess();
  sub_25BEB370C(a1, &v3);
  swift_endAccess();
  sub_25BE69354(&v3, &qword_280E76AB0, &type metadata for EngagementInlineViewManager.Observation);
  return sub_25BEB4504();
}

uint64_t sub_25BEB1A74()
{
  sub_25BEB4544();
  sub_25BE61510(0, &qword_280E76EF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);

  sub_25BEB4644();

  return v1;
}

uint64_t sub_25BEB1B6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_25BEB4544();
  sub_25BE61510(0, a4, a5, MEMORY[0x277D83D88]);

  sub_25BEB4644();
}

Swift::Void __swiftcall EngagementInlineViewManager.engagementFeatureSettingsDidChange()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_featureSettings + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 40))(ObjectType, v2))
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v4 = sub_25BEB4764();
    __swift_project_value_buffer(v4, qword_280E77F40);
    v5 = sub_25BEB4744();
    v6 = sub_25BEB4A64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25BE5A000, v5, v6, "Received settings change: blocking todayFeedMastheadBanner", v7, 2u);
      MEMORY[0x25F87FD60](v7, -1, -1);
    }

    v13 = *(*(v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state) + 16);
    MEMORY[0x28223BE20](v8, v9);
    sub_25BEB4544();
    sub_25BE61910(0, &qword_280E770B0, type metadata accessor for EngagementInlineDialogViewController, MEMORY[0x277D83D88]);

    sub_25BEB4644();

    v10 = v11;
    if (v11)
    {
      v11 = xmmword_25BEB9750;
      v12 = 2;
      sub_25BEAF5C0(v10, &v11);
    }
  }
}

void EngagementInlineViewManager.messageViewController(_:didUpdate:)(void *a1, double a2, double a3)
{
  type metadata accessor for EngagementInlineDialogViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v69 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement);
    v72 = *(*(v3 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state) + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_25BEB4544();
    sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);
    v70 = a1;

    sub_25BEB4644();

    v10 = v73;
    v11 = v74;
    if (v74 <= 1u)
    {
      if (!v74)
      {
        if (qword_280E76F20 != -1)
        {
          swift_once();
        }

        v12 = sub_25BEB4764();
        __swift_project_value_buffer(v12, qword_280E77F40);
        v13 = sub_25BEB4744();
        v14 = sub_25BEB4A64();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v72 = v16;
          *v15 = 134218754;
          *(v15 + 4) = a2;
          *(v15 + 12) = 2048;
          *(v15 + 14) = a3;
          *(v15 + 22) = 2080;
          LOBYTE(v73) = v9;
          v17 = EngagementUIPlacement.rawValue.getter();
          v19 = sub_25BE60F30(v17, v18, &v72);

          *(v15 + 24) = v19;
          *(v15 + 32) = 2080;
          v73 = v10;
          v74 = 0;
          v20 = EngagementInlineBannerState.description.getter();
          v22 = v21;
          sub_25BEB3D64(v73, *(&v73 + 1), v74);
          v23 = sub_25BE60F30(v20, v22, &v72);

          *(v15 + 34) = v23;
          _os_log_impl(&dword_25BE5A000, v13, v14, "messageViewController didUpdate: received new size [%f x %f] for placement %s state %s", v15, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25F87FD60](v16, -1, -1);
          MEMORY[0x25F87FD60](v15, -1, -1);
        }

        if (a3 == 0.0)
        {
          v24 = sub_25BEB4744();
          v25 = sub_25BEB4A64();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_25BE5A000, v24, v25, "Received height = 0. Transitioning to dismiss state", v26, 2u);
            MEMORY[0x25F87FD60](v26, -1, -1);
          }

          v73 = xmmword_25BEB9750;
          v74 = 2;
          sub_25BEAF5C0(v69, &v73);
          v28 = v10 >> 64;
          v27 = v10;
          v29 = 0;
LABEL_43:
          sub_25BEB3D50(v27, v28, v29);
          goto LABEL_44;
        }

LABEL_39:
        if (a2 != 0.0 || a3 != 0.0)
        {
          v73 = 0uLL;
          v74 = -1;
          sub_25BEAF5C0(v69, &v73);
        }

        v28 = v10 >> 64;
        v27 = v10;
        v29 = v11;
        goto LABEL_43;
      }

      goto LABEL_33;
    }

    if (v74 != 255)
    {
      if (v73 > 2)
      {
        if (!(v73 ^ 3 | *(&v73 + 1)))
        {
          v41 = v9;
          if (qword_280E76F20 != -1)
          {
            swift_once();
          }

          v42 = sub_25BEB4764();
          __swift_project_value_buffer(v42, qword_280E77F40);
          v43 = sub_25BEB4744();
          v44 = sub_25BEB4A64();
          if (!os_log_type_enabled(v43, v44))
          {
            goto LABEL_38;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v72 = v46;
          *v45 = 134218754;
          *(v45 + 4) = a2;
          *(v45 + 12) = 2048;
          *(v45 + 14) = a3;
          *(v45 + 22) = 2080;
          LOBYTE(v73) = v41;
          v47 = EngagementUIPlacement.rawValue.getter();
          v49 = sub_25BE60F30(v47, v48, &v72);

          *(v45 + 24) = v49;
          *(v45 + 32) = 2080;
          v73 = v10;
          v74 = 2;
          v50 = EngagementInlineBannerState.description.getter();
          v52 = v51;
          sub_25BEB3D64(v73, *(&v73 + 1), v74);
          v53 = sub_25BE60F30(v50, v52, &v72);

          *(v45 + 34) = v53;
          v54 = "messageViewController didUpdate: received new size [%f x %f] for placement %s state %s";
          v55 = v44;
          v56 = v43;
          v57 = v45;
          v58 = 42;
          goto LABEL_37;
        }
      }

      else if (v73 >= 2)
      {
        v73 = xmmword_25BEB9740;
        v74 = 2;
        sub_25BEAF5C0(v69, &v73);
LABEL_44:

        return;
      }

LABEL_33:
      v59 = v9;
      if (qword_280E76F20 != -1)
      {
        swift_once();
      }

      v60 = sub_25BEB4764();
      __swift_project_value_buffer(v60, qword_280E77F40);
      sub_25BE86988(v73, *(&v73 + 1), v74);
      v43 = sub_25BEB4744();
      v61 = sub_25BEB4A54();
      sub_25BEB3D50(v73, *(&v73 + 1), v74);
      if (!os_log_type_enabled(v43, v61))
      {
        goto LABEL_38;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v72 = v46;
      *v45 = 136315394;
      *(&v73 + 1) = *(&v10 + 1);
      v74 = v11;
      sub_25BE86988(v10, *(&v10 + 1), v11);
      v62 = EngagementInlineBannerState.description.getter();
      v64 = v63;
      sub_25BEB3D64(v73, *(&v10 + 1), v11);
      v65 = sub_25BE60F30(v62, v64, &v72);

      *(v45 + 4) = v65;
      *(v45 + 12) = 2080;
      LOBYTE(v73) = v59;
      v66 = EngagementUIPlacement.rawValue.getter();
      v68 = sub_25BE60F30(v66, v67, &v72);

      *(v45 + 14) = v68;
      v54 = "messageViewController didUpdate error: invalid state [%s] for placement %s";
      v55 = v61;
      v56 = v43;
      v57 = v45;
      v58 = 22;
LABEL_37:
      _os_log_impl(&dword_25BE5A000, v56, v55, v54, v57, v58);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v46, -1, -1);
      MEMORY[0x25F87FD60](v45, -1, -1);
LABEL_38:

      goto LABEL_39;
    }

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v33 = sub_25BEB4764();
    __swift_project_value_buffer(v33, qword_280E77F40);
    v34 = sub_25BEB4744();
    v35 = sub_25BEB4A54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v73 = v37;
      *v36 = 136315138;
      LOBYTE(v72) = v9;
      v38 = EngagementUIPlacement.rawValue.getter();
      v40 = sub_25BE60F30(v38, v39, &v73);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_25BE5A000, v34, v35, "messageViewController didUpdate error: invalid state for placement %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x25F87FD60](v37, -1, -1);
      MEMORY[0x25F87FD60](v36, -1, -1);
    }
  }

  else
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v30 = sub_25BEB4764();
    __swift_project_value_buffer(v30, qword_280E77F40);
    v71 = sub_25BEB4744();
    v31 = sub_25BEB4A54();
    if (os_log_type_enabled(v71, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25BE5A000, v71, v31, "messageViewController didUpdate error: Received invalid type of controller", v32, 2u);
      MEMORY[0x25F87FD60](v32, -1, -1);
    }
  }
}

void EngagementInlineViewManager.messageViewController(_:didSelectActionWith:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_25BEB47A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BEB47C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EngagementInlineDialogViewController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v62 = v12;
    v56 = v6;
    v57 = v10;
    v18 = a1;
    v19 = sub_25BE61620();
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v61 = v7;
    v20 = sub_25BEB4764();
    __swift_project_value_buffer(v20, qword_280E77F40);

    v21 = sub_25BEB4744();
    v22 = sub_25BEB4A64();
    v23 = os_log_type_enabled(v21, v22);
    v58 = v17;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *(v19 + 16);
      v25 = v19;

      _os_log_impl(&dword_25BE5A000, v21, v22, "Will notify %ld observer(s)", v24, 0xCu);
      MEMORY[0x25F87FD60](v24, -1, -1);
    }

    else
    {

      v25 = v19;
    }

    v47 = [a2 originalRequest];
    v30 = [a2 selectedActionIdentifier];
    v31 = v62;
    if (!v30)
    {
      sub_25BEB4884();
      v30 = sub_25BEB4874();
    }

    v32 = [v47 locateActionWithIdentifier:v30];

    v33 = v25;
    v34 = *(v25 + 16);
    if (v34)
    {
      v35 = sub_25BE80458(0, &qword_280E766B0);
      v53 = v64;
      v54 = v35;
      v52 = (v61 + 8);
      v51 = v31 + 1;
      v36 = 32;
      v50 = v15;
      v49 = v18;
      v59 = v33;
      v55 = v11;
      v37 = v56;
      do
      {
        v62 = v34;
        v60 = *(v59 + v36);
        swift_unknownObjectRetain();
        v61 = sub_25BEB4AA4();
        v38 = swift_allocObject();
        *(v38 + 16) = v60;
        *(v38 + 32) = v3;
        *(v38 + 40) = v32;
        *(v38 + 48) = v58;
        v64[2] = sub_25BEB3DA0;
        v64[3] = v38;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v64[0] = sub_25BEAE488;
        v64[1] = &block_descriptor_37;
        v39 = _Block_copy(aBlock);
        *&v60 = v49;
        swift_unknownObjectRetain();
        v40 = v3;
        v48 = v32;

        v41 = v50;
        sub_25BEB47B4();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_25BEB3CF8();
        sub_25BE61910(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_25BE80500();
        v42 = v57;
        sub_25BEB4B04();
        v43 = v61;
        MEMORY[0x25F87F2C0](0, v41, v42, v39);
        v44 = v62;
        _Block_release(v39);
        v45 = v55;
        swift_unknownObjectRelease();

        (*v52)(v42, v37);
        (v51->isa)(v41, v45);
        v36 += 16;
        v34 = (v44 - 1);
      }

      while (v34);

      return;
    }

    v29 = v47;
  }

  else
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v26 = sub_25BEB4764();
    __swift_project_value_buffer(v26, qword_280E77F40);
    v62 = sub_25BEB4744();
    v27 = sub_25BEB4A54();
    if (os_log_type_enabled(v62, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25BE5A000, v62, v27, "messageViewController didSelectActionWith error: Received invalid type of controller", v28, 2u);
      MEMORY[0x25F87FD60](v28, -1, -1);
    }

    v29 = v62;
  }
}

uint64_t sub_25BEB2FB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v14[3] = type metadata accessor for EngagementInlineViewManager();
  v14[4] = &protocol witness table for EngagementInlineViewManager;
  v14[0] = a3;
  v13 = *(a5 + OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement);
  v10 = *(a2 + 16);
  v11 = a3;
  v10(v14, a4, &v13, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

void EngagementInlineViewManager.messageViewController(_:didFailWithError:)(void *a1, void *a2)
{
  type metadata accessor for EngagementInlineDialogViewController();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v10 = v4;
      sub_25BEB3DB0();
      v5 = swift_allocError();
      v4 = v10;
    }

    v16[0] = v5;
    v16[1] = 0;
    v17 = 1;
    v15 = *(v4 + OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement);
    v11 = v5;
    v12 = a1;
    v13 = a2;
    sub_25BEB11A4(v16, &v15);

    v9 = v11;
  }

  else
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v6 = sub_25BEB4764();
    __swift_project_value_buffer(v6, qword_280E77F40);
    oslog = sub_25BEB4744();
    v7 = sub_25BEB4A54();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25BE5A000, oslog, v7, "messageViewController didFailWithError error: Received invalid type of controller", v8, 2u);
      MEMORY[0x25F87FD60](v8, -1, -1);
    }

    v9 = oslog;
  }
}

void EngagementInlineViewManager.messageViewController(_:didLoad:)(void *a1, void *a2)
{
  type metadata accessor for EngagementInlineDialogViewController();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [a2 metricsEvent];
    v8 = MEMORY[0x277D84F70];
    if (v7)
    {
      v9 = v7;
      v10 = [v7 underlyingDictionary];

      v11 = sub_25BEB4834();
      *&v24 = 0x496567617373656DLL;
      *(&v24 + 1) = 0xE900000000000064;
      sub_25BEB4B54();
      if (*(v11 + 16))
      {
        v12 = sub_25BE7A95C(&v22);
        if (v13)
        {
          sub_25BE60ED4(*(v11 + 56) + 32 * v12, &v24);
          sub_25BE7B108(&v22);

          if (*(&v25 + 1))
          {
            v14 = swift_dynamicCast();
            v16 = *(&v22 + 1);
            v15 = v22;
            if (!v14)
            {
              v15 = 0;
              v16 = 0;
            }

            goto LABEL_18;
          }

LABEL_17:
          sub_25BE69354(&v24, &qword_280E76598, v8 + 8);
          v15 = 0;
          v16 = 0;
LABEL_18:
          v20 = &v5[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_messageID];
          *v20 = v15;
          *(v20 + 1) = v16;

          v22 = xmmword_25BEB9730;
          v23 = 2;
          sub_25BEAF5C0(v5, &v22);

          return;
        }
      }

      sub_25BE7B108(&v22);
    }

    v24 = 0u;
    v25 = 0u;
    goto LABEL_17;
  }

  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v17 = sub_25BEB4764();
  __swift_project_value_buffer(v17, qword_280E77F40);
  oslog = sub_25BEB4744();
  v18 = sub_25BEB4A54();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25BE5A000, oslog, v18, "messageViewController didLoad error: Received invalid type of controller", v19, 2u);
    MEMORY[0x25F87FD60](v19, -1, -1);
  }
}

double sub_25BEB3658@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25BE65758(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25BEACEF4();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 40 * v7;
    v11 = *(v10 + 8);
    v12 = *(v10 + 32);
    *a2 = *v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = *(v10 + 16);
    *(a2 + 32) = v12;
    sub_25BE7FC74(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_25BEB370C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_25BE69650(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25BEAD0A8();
      v9 = v11;
    }

    sub_25BE694D4(*(v9 + 56) + 16 * v7, a2);
    sub_25BE802C8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_25BEB60D0;
  }

  return result;
}

void sub_25BEB37A4(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_25BE65758(a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 40 * v7);
    v10 = *v9;
    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    v13 = v9[32];
    v14 = *(v9 + 1);
    v15 = v12;
    sub_25BE86988(v11, v12, v13);
    if (v14)
    {
      v16 = v14;
      swift_endAccess();
      sub_25BE614B8(v10, v14, v11, v15, v13);
      v18 = *&v16[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier];
      v17 = *&v16[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier + 8];

      *a3 = v18;
      a3[1] = v17;
      return;
    }

    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  sub_25BE614B8(v19, 0, v20, v21, v22);
  swift_endAccess();
  *a3 = 0;
  a3[1] = 0;
}

void sub_25BEB3918(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (!*(v8 + 16) || (v9 = sub_25BE65758(a2), (v10 & 1) == 0))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_6:
    sub_25BE614B8(v20, 0, v21, v22, v23);
    swift_endAccess();
    v19 = 4;
    goto LABEL_7;
  }

  v11 = (*(v8 + 56) + 40 * v9);
  v12 = *v11;
  v13 = *(v11 + 2);
  v14 = *(v11 + 3);
  v15 = v11[32];
  v16 = *(v11 + 1);
  v17 = v14;
  sub_25BE86988(v13, v14, v15);
  if (!v16)
  {
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    goto LABEL_6;
  }

  v18 = v16;
  swift_endAccess();
  sub_25BE614B8(v12, v16, v13, v17, v15);
  v19 = v18[*a3];

LABEL_7:
  *a4 = v19;
}

void sub_25BEB3A78(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16) && (v9 = sub_25BE65758(a2), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 40 * v9);
    v12 = *v11;
    v13 = *(v11 + 2);
    v14 = *(v11 + 3);
    v15 = v11[32];
    v16 = *(v11 + 1);
    v17 = v14;
    sub_25BE86988(v13, v14, v15);
    if (v16)
    {
      v18 = v16;
      swift_endAccess();
      sub_25BE614B8(v12, v16, v13, v17, v15);
      v19 = &v18[*a3];
      v21 = *v19;
      v20 = *(v19 + 1);

      *a4 = v21;
      a4[1] = v20;
      return;
    }

    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  sub_25BE614B8(v22, 0, v23, v24, v25);
  swift_endAccess();
  *a4 = 0;
  a4[1] = 0;
}

uint64_t sub_25BEB3C34()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_25BEB3CA4()
{
  v1 = [*(v0 + 16) view];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BEB3CF8()
{
  result = qword_280E76720;
  if (!qword_280E76720)
  {
    sub_25BEB47A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E76720);
  }

  return result;
}

void sub_25BEB3D50(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_25BEB3D64(a1, a2, a3);
  }
}

void sub_25BEB3D64(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }
}

id sub_25BEB3D78(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25BE86988(result, a2, a3);
  }

  return result;
}

unint64_t sub_25BEB3DB0()
{
  result = qword_27FBE4780;
  if (!qword_27FBE4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4780);
  }

  return result;
}

uint64_t dispatch thunk of EngagementInlineViewManagerType.view(for:width:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 96))(a1, a2, a3 & 1);
}

{
  return (*(a5 + 104))(a1, a2, a3 & 1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BEB3F3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25BEB3F84(uint64_t result, int a2, int a3)
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

uint64_t sub_25BEB3FE8(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25BEB403C()
{
  result = qword_27FBE4788;
  if (!qword_27FBE4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4788);
  }

  return result;
}

uint64_t sub_25BEB41AC()
{
  v0 = sub_25BEB4764();
  __swift_allocate_value_buffer(v0, qword_280E77F40);
  __swift_project_value_buffer(v0, qword_280E77F40);
  return sub_25BEB4754();
}