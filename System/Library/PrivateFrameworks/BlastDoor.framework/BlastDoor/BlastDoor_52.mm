uint64_t sub_214483C58(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2146DA028();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2146D9F18();
  *v1 = result;
  return result;
}

uint64_t sub_214483D34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214483D84(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_2146DA028();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x216054E00](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_214483E88(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_214483D84(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2146DA028();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_2146DA028())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x216054E00](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x216054E00](v10, v7);
        v16 = MEMORY[0x216054E00](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_214508E98(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_214508E98(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

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
  return sub_2146DA028();
}

uint64_t sub_2144840B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ClientConnection();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2146DA028();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2146DA028();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2144841B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2146DA028();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2146DA028();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_214483C58(result);

  return sub_2144840B0(v4, v2, 0);
}

uint64_t sub_214484288()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AvatarImage.$imageName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 AvatarImage.$imageName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

__n128 AvatarImage.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 232) = *(a1 + 192);
  *(v1 + 248) = v3;
  *(v1 + 264) = *(a1 + 224);
  v4 = *(a1 + 144);
  *(v1 + 168) = *(a1 + 128);
  *(v1 + 184) = v4;
  v5 = *(a1 + 176);
  *(v1 + 200) = *(a1 + 160);
  *(v1 + 216) = v5;
  v6 = *(a1 + 80);
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 120) = v6;
  v7 = *(a1 + 112);
  *(v1 + 136) = *(a1 + 96);
  *(v1 + 152) = v7;
  v8 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 280) = *(a1 + 240);
  *(v1 + 88) = v10;
  return result;
}

void *AvatarImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C905500, &qword_2146F2BE0);

  return memcpy((v1 + 40), a1, 0x1B8uLL);
}

uint64_t AvatarImage.imageName.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144845C4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Wallpaper(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214484650(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Wallpaper(0) + 20));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144846C8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Wallpaper(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214484734(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Wallpaper(0) + 28));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144847AC()
{
  v1 = v0 + *(type metadata accessor for Wallpaper(0) + 20);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_21448483C()
{
  v1 = v0 + *(type metadata accessor for Wallpaper(0) + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t AvatarRecipe.EmojiRecipe.$emoji.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 AvatarRecipe.EmojiRecipe.$emoji.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t AvatarRecipe.EmojiRecipe.emoji.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_2144849F0(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_214484A70(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_214484AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214484B18(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214484B70@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 73);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214484B94(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[3].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  v1[4].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214484BEC()
{
  if (*(v0 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return result;
}

uint64_t sub_214484C50()
{
  if (*(v0 + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);
  }

  return result;
}

uint64_t sub_214484CB4()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214484CE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214484D18()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_214484D4C()
{
  v1 = *(v0 + 48);
  sub_213FDCA18(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_214484D80()
{
  v1 = *(v0 + 64);
  sub_213FDCA18(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_214484DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_214484DF8()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_214484E34()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000019;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x79656B6E6ELL;
    v3 = 0xD000000000000010;
    if (v1 != 2)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0)
    {
      v2 = 0x615464726F636572;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_214484F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21448A730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214484F68(uint64_t a1)
{
  v2 = sub_21448537C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214484FA4(uint64_t a1)
{
  v2 = sub_21448537C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214484FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914378, &qword_21474BEE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v35 = *(v1 + 24);
  v36 = v10;
  v11 = *(v1 + 32);
  v33 = *(v1 + 40);
  v34 = v11;
  v12 = *(v1 + 48);
  v31 = *(v1 + 56);
  v32 = v12;
  v13 = *(v1 + 72);
  v29 = *(v1 + 64);
  v30 = v13;
  v14 = *(v1 + 88);
  v27 = *(v1 + 80);
  v28 = v14;
  v41 = *(v1 + 96);
  v15 = *(v1 + 112);
  v25 = *(v1 + 104);
  v26 = v15;
  v24[3] = *(v1 + 120);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v8, v9);
  sub_21448537C();
  sub_2146DAA28();
  v38 = v8;
  v39 = v9;
  v17 = v3;
  v42 = 0;
  sub_214061684();
  v18 = v37;
  sub_2146DA388();
  if (v18)
  {
    sub_213FB54FC(v38, v39);
  }

  else
  {
    v19 = v33;
    v20 = v34;
    v21 = v31;
    v22 = v32;
    sub_213FB54FC(v38, v39);
    LOBYTE(v38) = 1;
    sub_2146DA328();
    v38 = v20;
    v39 = v19;
    v42 = 2;
    sub_213FDCA18(v20, v19);
    sub_2146DA308();
    sub_213FDC6BC(v38, v39);
    v38 = v22;
    v39 = v21;
    v42 = 3;
    sub_213FDCA18(v22, v21);
    sub_2146DA308();
    sub_213FDC6BC(v38, v39);
    v38 = v29;
    v39 = v30;
    v42 = 4;
    sub_213FDCA18(v29, v30);
    sub_2146DA308();
    sub_213FDC6BC(v38, v39);
    v38 = v27;
    v39 = v28;
    v40 = v41;
    v42 = 5;
    sub_2140A6418();

    sub_2146DA388();

    v38 = v25;
    v39 = v26;
    v42 = 6;
    sub_213FDCA18(v25, v26);
    sub_2146DA308();
    sub_213FDC6BC(v38, v39);
    LOBYTE(v38) = 7;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v7, v17);
}

unint64_t sub_21448537C()
{
  result = qword_27C914380;
  if (!qword_27C914380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914380);
  }

  return result;
}

uint64_t sub_2144853D0@<X0>(uint64_t *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914388, &qword_21474BEE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21448537C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v43 = v6;
  LOBYTE(v45) = 0;
  sub_21406116C();
  v12 = v5;
  sub_2146DA1C8();
  v42 = v52;
  LOBYTE(v52) = 1;
  v13 = sub_2146DA168();
  v41 = v14;
  v15 = v13;
  LOBYTE(v45) = 2;
  sub_2146DA148();
  v40 = v52;
  LOBYTE(v45) = 3;
  sub_2146DA148();
  v16 = v52;
  v38 = v15;
  v39 = *(&v52 + 1);
  LOBYTE(v45) = 4;
  sub_2146DA148();
  v37 = v52;
  LOBYTE(v45) = 5;
  sub_21406100C();
  sub_2146DA1C8();
  v32 = v16;
  v35 = *(&v52 + 1);
  v36 = v52;
  LOBYTE(v16) = v53;
  LOBYTE(v45) = 6;
  sub_2146DA148();
  v17 = v16;
  v33 = *(&v52 + 1);
  v34 = v52;
  v65 = 7;
  v18 = sub_2146DA178();
  (*(v43 + 8))(v9, v12);
  LODWORD(v43) = v18 & 1;
  v19 = v42;
  v45 = v42;
  v20 = v39;
  v21 = v41;
  *&v46 = v38;
  *(&v46 + 1) = v41;
  v22 = v40;
  v47 = v40;
  v23 = v32;
  *&v48 = v32;
  *(&v48 + 1) = v39;
  v49 = v37;
  *&v50 = v36;
  *(&v50 + 1) = v35;
  LOBYTE(v51[0]) = v17;
  *(&v51[0] + 1) = v34;
  *&v51[1] = v33;
  BYTE8(v51[1]) = v43;
  v24 = v42;
  v25 = v46;
  v26 = v48;
  a2[2] = v40;
  a2[3] = v26;
  *a2 = v24;
  a2[1] = v25;
  v27 = v49;
  v28 = v50;
  v29 = v51[0];
  *(a2 + 105) = *(v51 + 9);
  a2[5] = v28;
  a2[6] = v29;
  a2[4] = v27;
  sub_2144859C8(&v45, &v52);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v52 = __PAIR128__(*(&v42 + 1), v19);
  v53 = v38;
  v54 = v21;
  v55 = __PAIR128__(*(&v40 + 1), v22);
  v56 = v23;
  v57 = v20;
  v58 = v37;
  v59 = v36;
  v60 = v35;
  v61 = v17;
  v62 = v34;
  v63 = v33;
  v64 = v43;
  return sub_214485A00(&v52);
}

uint64_t sub_214485A60()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214485A90(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214485AE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214485B18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214485CE4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Nickname(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_214485D2C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Nickname(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_214485DB8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Nickname(0) + 36));
  v4 = v3[3];
  v11 = v3[2];
  v12[0] = v4;
  *(v12 + 10) = *(v3 + 58);
  v5 = *(v12 + 10);
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  *(a1 + 58) = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_213FB2E54(v10, &v9, &qword_27C9143A0, &qword_21474BF00);
}

__n128 sub_214485E30(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Nickname(0) + 36));
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 58);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_213FB2DF4(v8, &qword_27C9143A0, &qword_21474BF00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 58) = *(a1 + 58);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_214485EF8()
{
  v1 = *v0;
  v2 = 0x6D614E7473726966;
  v3 = 0x657061706C6C6177;
  v4 = 0x736E756F6E6F7270;
  if (v1 != 4)
  {
    v4 = 0x6552726174617661;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E7473616CLL;
  if (v1 != 1)
  {
    v5 = 0x726174617661;
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

uint64_t sub_214485FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21448A9C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214485FE4(uint64_t a1)
{
  v2 = sub_2144863CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214486020(uint64_t a1)
{
  v2 = sub_2144863CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21448605C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9143A8, &qword_21474BF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144863CC();
  sub_2146DAA28();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v32[0]) = 0;
  sub_2146DA2B8();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v32[0]) = 1;
    sub_2146DA2B8();
    LOBYTE(v32[0]) = 2;
    sub_214486420();
    sub_2146DA308();
    v15 = type metadata accessor for Nickname(0);
    v16 = v15[7];
    LOBYTE(v32[0]) = 3;
    type metadata accessor for Wallpaper(0);
    sub_214486AE8(&qword_27C9143C0, type metadata accessor for Wallpaper);
    sub_2146DA308();
    v17 = (v3 + v15[8]);
    v18 = v17[1];
    v36 = *v17;
    v37 = v18;
    v35 = 4;
    sub_214486474();

    sub_2146DA308();

    v19 = (v3 + v15[9]);
    v20 = v19[1];
    v21 = v19[3];
    v33 = v19[2];
    *v34 = v21;
    *&v34[10] = *(v19 + 58);
    v22 = v19[1];
    v32[0] = *v19;
    v32[1] = v22;
    v23 = v19[3];
    v30 = v33;
    v31[0] = v23;
    *(v31 + 10) = *(v19 + 58);
    v28 = v32[0];
    v29 = v20;
    v27 = 5;
    sub_213FB2E54(v32, v25, &qword_27C9143A0, &qword_21474BF00);
    sub_2144864C8();
    sub_2146DA308();
    v25[2] = v30;
    *v26 = v31[0];
    *&v26[10] = *(v31 + 10);
    v25[0] = v28;
    v25[1] = v29;
    sub_213FB2DF4(v25, &qword_27C9143A0, &qword_21474BF00);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2144863CC()
{
  result = qword_27C9143B0;
  if (!qword_27C9143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143B0);
  }

  return result;
}

unint64_t sub_214486420()
{
  result = qword_27C9143B8;
  if (!qword_27C9143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143B8);
  }

  return result;
}

unint64_t sub_214486474()
{
  result = qword_27C9143C8;
  if (!qword_27C9143C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143C8);
  }

  return result;
}

unint64_t sub_2144864C8()
{
  result = qword_27C9143D0;
  if (!qword_27C9143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143D0);
  }

  return result;
}

uint64_t sub_21448651C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914398, "Vh\a");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v43 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9143D8, &unk_21474BF10);
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = v43 - v7;
  v9 = type metadata accessor for Nickname(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 2) = 0u;
  v46 = v13 + 32;
  *(v13 + 30) = 0u;
  *(v13 + 31) = 0u;
  *(v13 + 28) = 0u;
  *(v13 + 29) = 0u;
  *(v13 + 26) = 0u;
  *(v13 + 27) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 25) = 0u;
  *(v13 + 22) = 0u;
  *(v13 + 23) = 0u;
  *(v13 + 20) = 0u;
  *(v13 + 21) = 0u;
  *(v13 + 18) = 0u;
  *(v13 + 19) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 14) = 0u;
  *(v13 + 15) = 0u;
  *(v13 + 12) = 0u;
  *(v13 + 13) = 0u;
  *(v13 + 10) = 0u;
  *(v13 + 11) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 9) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 7) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 3) = 0u;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = v10[9];
  v15 = type metadata accessor for Wallpaper(0);
  v16 = *(*(v15 - 8) + 56);
  v45 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v10[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v13[v10[11]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 255;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 36) = 0;
  v19 = a1;
  v21 = a1[3];
  v20 = a1[4];
  v51 = v19;
  __swift_project_boxed_opaque_existential_1(v19, v21);
  sub_2144863CC();
  v50 = v8;
  v22 = v61;
  sub_2146DAA08();
  if (v22)
  {
    v61 = v22;
  }

  else
  {
    v43[0] = v18;
    v43[1] = v15;
    v23 = v45;
    v24 = v46;
    v25 = v47;
    v26 = v48;
    LOBYTE(v59[0]) = 0;
    v27 = v49;
    *v13 = sub_2146DA0F8();
    *(v13 + 1) = v28;
    LOBYTE(v59[0]) = 1;
    v29 = sub_2146DA0F8();
    v61 = 0;
    *(v13 + 2) = v29;
    *(v13 + 3) = v30;
    LOBYTE(v56[0]) = 2;
    sub_214486A94();
    v31 = v61;
    sub_2146DA148();
    v61 = v31;
    if (v31)
    {
      goto LABEL_5;
    }

    sub_21402EDB8(v59, v24, &qword_27C914390, &unk_21474BEF0);
    LOBYTE(v59[0]) = 3;
    sub_214486AE8(&qword_27C9143E8, type metadata accessor for Wallpaper);
    v32 = v61;
    sub_2146DA148();
    v61 = v32;
    if (v32)
    {
      goto LABEL_5;
    }

    sub_21402EDB8(v26, &v13[v23], &qword_27C914398, "Vh\a");
    LOBYTE(v56[0]) = 4;
    sub_214486B30();
    v34 = v61;
    sub_2146DA148();
    v61 = v34;
    if (v34)
    {
      goto LABEL_5;
    }

    v35 = v59[0];
    v36 = *(v17 + 1);

    *v17 = v35;
    v58 = 5;
    sub_214486B84();
    v37 = v61;
    sub_2146DA148();
    v61 = v37;
    if (v37)
    {
LABEL_5:
      (*(v25 + 8))(v50, v27);
    }

    else
    {
      (*(v25 + 8))(v50, v27);
      v54 = v59[2];
      v55[0] = v60[0];
      *(v55 + 10) = *(v60 + 10);
      v52 = v59[0];
      v53 = v59[1];
      v38 = v43[0];
      v39 = *(v43[0] + 48);
      v56[2] = *(v43[0] + 32);
      *v57 = v39;
      *&v57[10] = *(v43[0] + 58);
      v40 = *(v43[0] + 16);
      v56[0] = *v43[0];
      v56[1] = v40;
      sub_213FB2DF4(v56, &qword_27C9143A0, &qword_21474BF00);
      v41 = v55[0];
      v38[2] = v54;
      v38[3] = v41;
      *(v38 + 58) = *(v55 + 10);
      v42 = v53;
      *v38 = v52;
      v38[1] = v42;
      sub_214486BD8(v13, v44);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_214486A38(v13);
}

uint64_t sub_214486A38(uint64_t a1)
{
  v2 = type metadata accessor for Nickname(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214486A94()
{
  result = qword_27C9143E0;
  if (!qword_27C9143E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143E0);
  }

  return result;
}

uint64_t sub_214486AE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214486B30()
{
  result = qword_27C9143F0;
  if (!qword_27C9143F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143F0);
  }

  return result;
}

unint64_t sub_214486B84()
{
  result = qword_27C9143F8;
  if (!qword_27C9143F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9143F8);
  }

  return result;
}

uint64_t sub_214486BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Nickname(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AvatarImage.imageName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarImage.imageName.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarImage.$imageName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t AvatarImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1 + 40, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*AvatarImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 248;
  *(v3 + 496) = v1;
  result = sub_213FB2E54(v1 + 40, v3 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v4 + 272))
  {
    v7 = *(v5 + 208);
    *(v4 + 192) = *(v5 + 192);
    *(v4 + 208) = v7;
    *(v4 + 224) = *(v5 + 224);
    *(v4 + 240) = *(v5 + 240);
    v8 = *(v5 + 144);
    *(v4 + 128) = *(v5 + 128);
    *(v4 + 144) = v8;
    v9 = *(v5 + 176);
    *(v4 + 160) = *(v5 + 160);
    *(v4 + 176) = v9;
    v10 = *(v5 + 80);
    *(v4 + 64) = *(v5 + 64);
    *(v4 + 80) = v10;
    v11 = *(v5 + 112);
    *(v4 + 96) = *(v5 + 96);
    *(v4 + 112) = v11;
    v12 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 16) = v12;
    v13 = *(v5 + 48);
    *(v4 + 32) = *(v5 + 32);
    *(v4 + 48) = v13;
    return sub_214487064;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_214487064(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 62);
    sub_21407CF14(*a1, (v2 + 248));
    sub_213FB2DF4(v3 + 40, &qword_27C904858, &qword_214736F00);
    v4 = *(v2 + 264);
    v5 = *(v2 + 280);
    v6 = *(v2 + 296);
    *(v3 + 40) = *(v2 + 248);
    *(v3 + 88) = v6;
    *(v3 + 72) = v5;
    *(v3 + 56) = v4;
    v7 = *(v2 + 344);
    v8 = *(v2 + 360);
    v9 = *(v2 + 328);
    *(v3 + 104) = *(v2 + 312);
    *(v3 + 152) = v8;
    *(v3 + 136) = v7;
    *(v3 + 120) = v9;
    v10 = *(v2 + 408);
    v11 = *(v2 + 424);
    v12 = *(v2 + 392);
    *(v3 + 168) = *(v2 + 376);
    *(v3 + 216) = v11;
    *(v3 + 200) = v10;
    *(v3 + 184) = v12;
    v14 = *(v2 + 456);
    v13 = *(v2 + 472);
    v15 = *(v2 + 61);
    *(v3 + 232) = *(v2 + 440);
    *(v3 + 280) = v15;
    *(v3 + 264) = v13;
    *(v3 + 248) = v14;
    sub_21406D2CC(v2);
  }

  else
  {
    v16 = *(v2 + 62);
    sub_213FB2DF4(v16 + 40, &qword_27C904858, &qword_214736F00);
    v17 = *(v2 + 2);
    v18 = *(v2 + 3);
    v19 = *(v2 + 1);
    *(v16 + 40) = *v2;
    *(v16 + 88) = v18;
    *(v16 + 72) = v17;
    *(v16 + 56) = v19;
    v20 = *(v2 + 6);
    v21 = *(v2 + 7);
    v22 = *(v2 + 5);
    *(v16 + 104) = *(v2 + 4);
    *(v16 + 152) = v21;
    *(v16 + 136) = v20;
    *(v16 + 120) = v22;
    v23 = *(v2 + 10);
    v24 = *(v2 + 11);
    v25 = *(v2 + 9);
    *(v16 + 168) = *(v2 + 8);
    *(v16 + 216) = v24;
    *(v16 + 200) = v23;
    *(v16 + 184) = v25;
    v27 = *(v2 + 13);
    v26 = *(v2 + 14);
    v28 = *(v2 + 30);
    *(v16 + 232) = *(v2 + 12);
    *(v16 + 280) = v28;
    *(v16 + 264) = v26;
    *(v16 + 248) = v27;
  }

  free(v2);
}

void (*AvatarImage.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1 + 40, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_214487258;
}

void sub_214487258(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[110];
    sub_213FB2E54(*a1, (v2 + 55), &qword_27C905500, &qword_2146F2BE0);
    sub_213FB2DF4(v3 + 40, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v3 + 40), v2 + 55, 0x1B8uLL);
    sub_213FB2DF4(v2, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v4 = v2[110];
    sub_213FB2DF4(v4 + 40, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v4 + 40), v2, 0x1B8uLL);
  }

  free(v2);
}

__n128 AvatarRecipe.MonogramRecipe.center.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t AvatarRecipe.EmojiRecipe.emoji.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarRecipe.EmojiRecipe.emoji.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarRecipe.EmojiRecipe.$emoji.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t AvatarRecipe.backgroundRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_2142FB07C(v2, v3, v4, v5, v6);
}

uint64_t AvatarRecipe.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  v7 = *(v1 + 73);
  *(a1 + 33) = v7;
  return sub_2142FB0DC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_214487650()
{
  v0 = sub_214487890();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t AvatarRecipe.bridgedToObjectiveC.getter()
{
  v0 = sub_214487890();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

double AvatarRecipe.MonogramRecipe.Point.cgPoint.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

CGPath *sub_2144876E8(uint64_t a1)
{
  Mutable = CGPathCreateMutable();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      if (*v4 <= 1u)
      {
        v7 = *(v4 - 2);
        v8 = *(v4 - 1);
        if (*v4)
        {
          sub_2146D9BF8();
        }

        else
        {
          sub_2146D9BE8();
        }

        goto LABEL_4;
      }

      if (*v4 == 2)
      {
        v9 = v6[2];
        if (v9 == 2)
        {
          v16 = v6[4];
          v17 = v6[5];
          v18 = v6[6];
          v19 = v6[7];

          sub_2146D9BD8();
          goto LABEL_14;
        }

        if (v9 == 3)
        {
          v10 = v6[8];
          v11 = v6[9];
          v12 = v6[4];
          v13 = v6[5];
          v14 = v6[6];
          v15 = v6[7];

          sub_2146D9C08();
LABEL_14:
          sub_214487B6C(v6, v5, 2);
        }
      }

      else
      {
        CGPathCloseSubpath(Mutable);
      }

LABEL_4:
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return Mutable;
}

uint64_t sub_214487890()
{
  v1 = sub_2146D8958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = v0[3];
  v27 = v0[2];
  v28[0] = v9;
  *(v28 + 10) = *(v0 + 58);
  v10 = v0[1];
  v25 = *v0;
  v26 = v10;
  type metadata accessor for ClientConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_2146D9588();
  v14 = sub_2146D9588();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_2146D88E8();

    (*(v2 + 32))(v8, v6, v1);
    v16 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v17 = sub_2146D8898();
    v18 = [v16 initWithURL_];

    if (v18)
    {
      [v18 load];
      if ([v18 principalClass])
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        v20 = swift_conformsToProtocol2();
        if (v20)
        {
          if (ObjCClassMetadata)
          {
            v23[2] = v27;
            v24[0] = v28[0];
            *(v24 + 10) = *(v28 + 10);
            v23[0] = v25;
            v23[1] = v26;
            v21 = (*(v20 + 8))(v23, ObjCClassMetadata, v20);

            (*(v2 + 8))(v8, v1);
            return v21;
          }
        }
      }
    }

    (*(v2 + 8))(v8, v1);
  }

  return 0;
}

uint64_t sub_214487B6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

BlastDoor::WallpaperType __swiftcall WallpaperType.init(_:)(Swift::String a1)
{
  object = a1._object;
  v3 = v1;
  v4 = a1._countAndFlagsBits == 0xD00000000000002ELL && 0x8000000214787D40 == a1._object;
  if (v4 || (countAndFlagsBits = a1._countAndFlagsBits, (sub_2146DA6A8() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000028 && 0x8000000214787D70 == object || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0xD00000000000002CLL && 0x8000000214787DA0 == object)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v3 = v7;
  return result;
}

BlastDoor::WallpaperType_optional __swiftcall WallpaperType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214487D80@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214487E18(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214487F00(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_214488008()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214488038@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 32);
  }

  return result;
}

uint64_t (*sub_2144880BC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214488144;
  }

  return result;
}

uint64_t sub_214488170(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 24);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
  return result;
}

void (*sub_2144881DC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

void sub_214488274(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 24);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 41) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 24);

    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 41) = v8;
  }

  free(v2);
}

uint64_t sub_214488320@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 64);
  }

  return result;
}

uint64_t (*sub_2144883A4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  if (*(v1 + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 64);
    return sub_21448842C;
  }

  return result;
}

uint64_t sub_214488458(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 56);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 73) = v7;
  return result;
}

void (*sub_2144884C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 73);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21448855C;
}

void sub_21448855C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 56);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    *(v3 + 73) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 56);

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    *(v3 + 73) = v8;
  }

  free(v2);
}

__n128 sub_214488608@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_214488614(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  return result;
}

__n128 sub_214488654@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  result = *(v1 + 120);
  v4 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_21448866C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v4;
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_2144886A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Wallpaper(0) + 20);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214488740(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for Wallpaper(0) + 20);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214488808(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Wallpaper(0) + 20);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214488958(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Wallpaper(0) + 20);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_214488A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Wallpaper(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214488AB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Wallpaper(0) + 20);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_214488B4C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Wallpaper(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_214488C40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Wallpaper(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214488CDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for Wallpaper(0) + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214488DA4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Wallpaper(0) + 28);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214488EF4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Wallpaper(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_214488FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Wallpaper(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214489050(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Wallpaper(0) + 28);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144890E8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Wallpaper(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_214489290@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Wallpaper(0) + 40));
  v4 = v3[7];
  v5 = v3[5];
  v22 = v3[6];
  v23 = v4;
  v6 = v3[7];
  v24[0] = v3[8];
  *(v24 + 9) = *(v3 + 137);
  v7 = v3[3];
  v9 = v3[1];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  *(a1 + 137) = *(v3 + 137);
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v5;
  *a1 = v14;
  a1[1] = v9;
  return sub_213FB2E54(v17, &v16, &qword_27C9081D8, &qword_2146F4F68);
}

__n128 sub_214489348@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a7[1];
  v28 = *a7;
  v15 = type metadata accessor for Nickname(0);
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 336) = 0u;
  *(a9 + 352) = 0u;
  *(a9 + 368) = 0u;
  *(a9 + 384) = 0u;
  *(a9 + 400) = 0u;
  *(a9 + 416) = 0u;
  *(a9 + 432) = 0u;
  *(a9 + 448) = 0u;
  *(a9 + 464) = 0u;
  *(a9 + 480) = 0u;
  *(a9 + 496) = 0u;
  *(a9 + 32) = 0u;
  v16 = v15[7];
  v17 = type metadata accessor for Wallpaper(0);
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  v18 = (a9 + v15[8]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a9 + v15[9];
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 255;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_21402EDB8(a5, a9 + 32, &qword_27C914390, &unk_21474BEF0);
  sub_21402EDB8(a6, a9 + v16, &qword_27C914398, "Vh\a");
  v20 = v18[1];

  *v18 = v28;
  v18[1] = v27;
  v21 = *(v19 + 48);
  v29[2] = *(v19 + 32);
  v30[0] = v21;
  *(v30 + 10) = *(v19 + 58);
  v22 = *(v19 + 16);
  v29[0] = *v19;
  v29[1] = v22;
  sub_213FB2DF4(v29, &qword_27C9143A0, &qword_21474BF00);
  v23 = *(a8 + 48);
  *(v19 + 32) = *(a8 + 32);
  *(v19 + 48) = v23;
  *(v19 + 58) = *(a8 + 58);
  result = *(a8 + 16);
  *v19 = *a8;
  *(v19 + 16) = result;
  return result;
}

uint64_t sub_214489510@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12, char a13, uint64_t a14, uint64_t a15)
{
  v15 = *a12;
  v16 = a12[1];
  v17 = *(a12 + 16);
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v15;
  *(a9 + 88) = v16;
  *(a9 + 96) = v17;
  *(a9 + 120) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15;
  return result;
}

uint64_t AvatarImage.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  strcpy((v10 + 16), "NickNameImage");
  *(v10 + 30) = -4864;
  *(v9 + 16) = sub_2142EEE5C;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, a4);
  LOWORD(v33[0]) = 0;
  sub_2140615D0(v33);
  v11 = v33[9];
  *(a4 + 416) = v33[8];
  *(a4 + 432) = v11;
  v12 = v33[11];
  *(a4 + 448) = v33[10];
  *(a4 + 464) = v12;
  v13 = v33[5];
  *(a4 + 352) = v33[4];
  *(a4 + 368) = v13;
  v14 = v33[7];
  *(a4 + 384) = v33[6];
  *(a4 + 400) = v14;
  v15 = v33[1];
  *(a4 + 288) = v33[0];
  *(a4 + 304) = v15;
  v16 = v33[2];
  v17 = v33[3];
  *(a4 + 40) = 0u;
  *(a4 + 320) = v16;
  *(a4 + 336) = v17;
  *(a4 + 280) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 264) = 0u;
  v32[0] = a1;
  v32[1] = a2;
  v18 = *a4;
  v19 = *(a4 + 8);
  v31 = *(a4 + 32);
  v30[0] = 0x6E776F6E6B6E753CLL;
  v30[1] = 0xE90000000000003ELL;
  v30[2] = 0xD00000000000001CLL;
  v30[3] = 0x800000021478A360;
  if (v18(v32, &v31, v30))
  {
    v20 = *(a4 + 24);

    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    result = sub_213FB2DF4(a4 + 40, &qword_27C904858, &qword_214736F00);
    v22 = *(a3 + 208);
    *(a4 + 232) = *(a3 + 192);
    *(a4 + 248) = v22;
    *(a4 + 264) = *(a3 + 224);
    *(a4 + 280) = *(a3 + 240);
    v23 = *(a3 + 144);
    *(a4 + 168) = *(a3 + 128);
    *(a4 + 184) = v23;
    v24 = *(a3 + 176);
    *(a4 + 200) = *(a3 + 160);
    *(a4 + 216) = v24;
    v25 = *(a3 + 80);
    *(a4 + 104) = *(a3 + 64);
    *(a4 + 120) = v25;
    v26 = *(a3 + 112);
    *(a4 + 136) = *(a3 + 96);
    *(a4 + 152) = v26;
    v27 = *(a3 + 16);
    *(a4 + 40) = *a3;
    *(a4 + 56) = v27;
    v28 = *(a3 + 48);
    *(a4 + 72) = *(a3 + 32);
    *(a4 + 88) = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0x6E776F6E6B6E753CLL;
    v29[1] = 0xE90000000000003ELL;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_214489850()
{
  result = qword_27C914400;
  if (!qword_27C914400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914400);
  }

  return result;
}

unint64_t sub_2144898A8()
{
  result = qword_27C914408;
  if (!qword_27C914408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914408);
  }

  return result;
}

uint64_t sub_2144898FC(uint64_t a1)
{
  result = sub_214486AE8(&qword_27C914410, type metadata accessor for Nickname);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_214489954(uint64_t a1)
{
  *(a1 + 8) = sub_214486AE8(&qword_27C914418, type metadata accessor for Nickname);
  result = sub_214486AE8(&qword_27C914420, type metadata accessor for Nickname);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214489B10()
{
  result = qword_27C914428;
  if (!qword_27C914428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914428);
  }

  return result;
}

uint64_t sub_214489BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214489C24(uint64_t a1)
{
  *(a1 + 8) = sub_214486AE8(&qword_27C9143E8, type metadata accessor for Wallpaper);
  result = sub_214486AE8(&qword_27C9143C0, type metadata accessor for Wallpaper);
  *(a1 + 16) = result;
  return result;
}

void sub_214489CD0()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FC28);
    if (v1 <= 0x3F)
    {
      sub_21448A3DC(319, qword_280B2E4F8, type metadata accessor for Wallpaper);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, qword_280B2FC48);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2FA68);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_214489DF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214489E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214489EB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
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

uint64_t sub_214489F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 480) = 1;
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

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12AvatarRecipeV0D0O(uint64_t a1)
{
  if ((*(a1 + 33) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 33) & 3;
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21448A018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21448A060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21448A0C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21448A110(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12AvatarRecipeV08MonogramD0V11CommandTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21448A1D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 34))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 33);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21448A218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_21448A260(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    LOBYTE(a2) = 2;
    *(result + 32) = 0;
  }

  *(result + 33) = a2;
  return result;
}

void sub_21448A2DC()
{
  sub_21448A3DC(319, &qword_280B2F920, type metadata accessor for PosterArchive);
  if (v0 <= 0x3F)
  {
    sub_214084AA4();
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2E558);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2E550);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21448A3DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21448A440(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_21448A488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21448A524()
{
  result = qword_27C914430;
  if (!qword_27C914430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914430);
  }

  return result;
}

unint64_t sub_21448A57C()
{
  result = qword_27C914438;
  if (!qword_27C914438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914438);
  }

  return result;
}

unint64_t sub_21448A5D4()
{
  result = qword_27C914440;
  if (!qword_27C914440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914440);
  }

  return result;
}

unint64_t sub_21448A62C()
{
  result = qword_27C914448;
  if (!qword_27C914448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914448);
  }

  return result;
}

unint64_t sub_21448A684()
{
  result = qword_27C914450;
  if (!qword_27C914450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914450);
  }

  return result;
}

unint64_t sub_21448A6DC()
{
  result = qword_27C914458;
  if (!qword_27C914458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914458);
  }

  return result;
}

uint64_t sub_21448A730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79656B6E6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615464726F636572 && a2 == 0xE900000000000067 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214795280 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479B260 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002147952C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021478C7A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000214795320 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021479B280 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21448A9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657061706C6C6177 && a2 == 0xE900000000000072 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E756F6E6F7270 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552726174617661 && a2 == 0xEC00000065706963)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_21448ABCC()
{
  result = qword_27C914460;
  if (!qword_27C914460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914460);
  }

  return result;
}

uint64_t sub_21448AC20()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21448AC9C()
{
  v1 = v0 + *(type metadata accessor for IDSKCSharingInvitation() + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for IDSKCSharingInvitation()
{
  result = qword_27C914468;
  if (!qword_27C914468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21448AD74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21448ADC0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448AE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSKCSharingInvitation() + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21448AE7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSKCSharingInvitation() + 24));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448AEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21448B030(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21448B0CC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_21448B164@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation() + 20);

  return sub_2140703DC(v3, a1);
}

uint64_t sub_21448B1A8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation() + 20);

  return sub_214070484(a1, v3);
}

uint64_t sub_21448B234@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSKCSharingInvitation() + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21448B2CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSKCSharingInvitation() + 24);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21448B394(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSKCSharingInvitation() + 24);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21448B4E8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSKCSharingInvitation() + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2140646F8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21448B5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSKCSharingInvitation() + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21448B630(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSKCSharingInvitation() + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21448B6B8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSKCSharingInvitation() + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_214064B44;
}

uint64_t sub_21448B764@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation() + 28);

  return sub_2144716D8(v3, a1);
}

uint64_t sub_21448B7A8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation() + 28);

  return sub_2140924F0(a1, v3);
}

uint64_t sub_21448B834()
{
  v1 = (v0 + *(type metadata accessor for IDSKCSharingInvitation() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21448B874(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IDSKCSharingInvitation() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21448B904(uint64_t a1)
{
  *(a1 + 8) = sub_21448B96C(&qword_27C90CB18);
  result = sub_21448B96C(&qword_27C90CAE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21448B96C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDSKCSharingInvitation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21448B9D8()
{
  sub_21448BAC8(319, &qword_280B2E578, type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CloudKitSharingToken();
    if (v1 <= 0x3F)
    {
      sub_21409320C();
      if (v2 <= 0x3F)
      {
        sub_21448BAC8(319, &qword_280B34BE0, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21448BAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unsigned __int8 *sub_21448BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_21448CC2C();

  result = sub_2146D97A8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21448C0B4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2146D9F88();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21448C0B4()
{
  v0 = sub_2146D97B8();
  v4 = sub_21448C134(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21448C134(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2146D9688();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2146D9D68();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2146701CC(v9, 0);
  v12 = sub_21448C28C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2146D9688();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2146D9F88();
LABEL_4:

  return sub_2146D9688();
}

unint64_t sub_21448C28C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21448C4AC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2146D9748();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2146D9F88();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21448C4AC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2146D9718();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21448C4AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2146D9758();
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
    v5 = MEMORY[0x216054620](15, a1 >> 16);
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

uint64_t sub_21448C528(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2146D9F88();
  }

  result = sub_21448C66C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_21448C5F4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2146DA418() & 1;
  }
}

uint64_t sub_21448C66C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21448C4AC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2146D9738();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21448C4AC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21448C4AC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_2146D9738();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21448CAD8(uint64_t a1, unint64_t a2)
{
  v17[0] = 58;
  v17[1] = 0xE100000000000000;
  v16[2] = v17;

  v5 = sub_214508AC4(1, 1, sub_21406D1FC, v16, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5;
    if ((sub_21448C5F4(v5[4], v5[5], v5[6], v5[7], 0x657079746B68, 0xE600000000000000) & 1) == 0)
    {

      return 1;
    }

    v7 = v6[8];
    v8 = v6[9];
    v10 = v6[10];
    v9 = v6[11];

    if ((v8 ^ v7) >> 14)
    {
      sub_21448C528(v7, v8, v10, v9, 10);
      if ((v11 & 0x100) != 0)
      {
        sub_21448BB1C(v7, v8, v10, v9, 10);
        v15 = v14;

        if (v15)
        {
          return 0;
        }
      }

      else
      {
        v12 = v11;

        if (v12)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

unint64_t sub_21448CC2C()
{
  result = qword_27C914478;
  if (!qword_27C914478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914478);
  }

  return result;
}

unint64_t sub_21448CC80@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2143C945C;
  v5[3] = 0;
  v5[4] = 1;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21439DF90;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 255;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_21439DF90;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214032610;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448CE58@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2143C945C;
  v5[3] = 0;
  v5[4] = 1;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 255;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_21439DF90;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_21403254C;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21448D030@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448D088(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21448D0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448D148(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448D1B0()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_21448D230()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_21448D2B0@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21448D308(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_u64[1];

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448D370()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21448D3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21448D41C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21448D474()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21448D4D8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_21448D5A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

uint64_t sub_21448D640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  sub_213FDC6BC(v5, v6);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;

  return sub_213FDCA18(v8, v9);
}

void (*sub_21448D6B8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

uint64_t sub_21448D758@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21448D7D4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21448D858()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21448D8B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t (*sub_21448D9E4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

void (*sub_21448DA6C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t sub_21448DB34(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_21448DB88(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_21448DBD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v11 = *(v3 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 24), *(v3 + 32));

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21448DD18(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_21448DDF0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_21448DE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v3 + 80);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 64), *(v3 + 72));

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21448DFD4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

void (*sub_21448E0AC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

uint64_t sub_21448E14C@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDCA18(v3, v4);
}

unint64_t sub_21448E200()
{
  result = qword_27C914480;
  if (!qword_27C914480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914480);
  }

  return result;
}

uint64_t sub_21448E2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21448E2E8()
{
  result = qword_27C914488;
  if (!qword_27C914488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914488);
  }

  return result;
}

unint64_t sub_21448E33C()
{
  result = qword_27C914490;
  if (!qword_27C914490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914490);
  }

  return result;
}

uint64_t sub_21448E390(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_21448E3D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21448E480()
{
  result = qword_27C914498;
  if (!qword_27C914498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914498);
  }

  return result;
}

uint64_t sub_21448E4D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v41 = MEMORY[0x277D84F90];
  sub_2140A0060(0, v1, 0);
  v2 = v41;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_2146D9E58();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v1;
  v29 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_35;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_36;
    }

    v30 = v8 + 1;
    v12 = *(a1 + 56);
    v37 = *(*(a1 + 48) + v7);
    sub_2140537E4(v12 + 32 * v7, v38);
    v35[0] = v37;
    sub_213FDC730(v38, &v36);
    sub_214493C2C(v35, v33);
    v13 = 0xE100000000000000;
    v14 = 99;
    v15 = v4;
    switch(v33[0])
    {
      case 1:
        v14 = 100;
        break;
      case 2:
        v14 = 115;
        break;
      case 3:
        v14 = 114;
        break;
      case 4:
        v14 = 112;
        break;
      case 5:
        v13 = 0xE200000000000000;
        v14 = 29296;
        break;
      case 6:
        v13 = 0xE200000000000000;
        v14 = 29795;
        break;
      case 7:
        v13 = 0xE200000000000000;
        v14 = 27507;
        break;
      case 8:
        v13 = 0xE200000000000000;
        v14 = 27504;
        break;
      case 9:
        v13 = 0xE200000000000000;
        v14 = 27501;
        break;
      case 0xA:
        v13 = 0xE200000000000000;
        v14 = 25699;
        break;
      case 0xB:
        v13 = 0xE200000000000000;
        v14 = 28777;
        break;
      case 0xC:
        v13 = 0xE200000000000000;
        v14 = 26995;
        break;
      default:
        break;
    }

    *&v39 = v14;
    *(&v39 + 1) = v13;
    sub_214493C2C(v35, v31);
    sub_213FDC730(&v32, v40);
    __swift_destroy_boxed_opaque_existential_1(v34);
    result = sub_214493C9C(v35);
    v41 = v2;
    v17 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_2140A0060((v16 > 1), v17 + 1, 1);
      v2 = v41;
    }

    *(v2 + 16) = v17 + 1;
    v18 = (v2 + 48 * v17);
    v19 = v39;
    v20 = v40[1];
    v18[3] = v40[0];
    v18[4] = v20;
    v18[2] = v19;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_37;
    }

    v21 = *(v15 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_38;
    }

    v4 = v15;
    v9 = v29;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_39;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (a1 + 72 + 8 * v11);
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_214493D04(v7, v29, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_214493D04(v7, v29, 0);
    }

LABEL_4:
    v7 = v10;
    v8 = v30;
    if (v30 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_21448E838@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 16;
  *(v3 + 16) = sub_2140598E0;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_213FB7994;
  v6[3] = 0;
  v6[4] = 32;
  *(v5 + 16) = sub_2140598E0;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_21448EAA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448EBFC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448ED58@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 97;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v32 = a5;
  v5 = sub_2146D86D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for ContainsOnlyCharacterSetValidator(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v27 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = v27;
  sub_2146D8668();
  sub_2146D8658();
  sub_2146D8698();
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = swift_allocObject();
  sub_214493D10(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  *(v19 + 16) = v29;
  *(v19 + 24) = v21;
  *(v17 + 32) = v19;
  v22 = sub_2142E0070(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = v32;
  *(v23 + 16) = v31;
  *(v23 + 24) = v24;
  *(inited + 32) = v23;
  return sub_214042A28(inited, v25);
}

uint64_t sub_21448F198@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21448F1E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F240@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F298(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F300@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F358(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t sub_21448F3C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F418(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[8].n128_u64[1];
  v7 = v1[9].n128_i64[0];
  v8 = v1[9].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F480@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F4D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_21448F540@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F598(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[13].n128_u64[1];
  v7 = v1[14].n128_i64[0];
  v8 = v1[14].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[13] = *a1;
  v1[14].n128_u64[0] = v3;
  v1[14].n128_u64[1] = v4;
  v1[15].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F600@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
  v5 = *(v1 + 280);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F658(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 256);
  v7 = *(v1 + 264);
  v8 = *(v1 + 272);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 248) = *a1;
  *(v1 + 264) = v3;
  *(v1 + 272) = v4;
  *(v1 + 280) = v5;
  return result;
}

uint64_t sub_21448F6C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F718(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[18].n128_u64[1];
  v7 = v1[19].n128_i64[0];
  v8 = v1[19].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[18] = *a1;
  v1[19].n128_u64[0] = v3;
  v1[19].n128_u64[1] = v4;
  v1[20].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F780@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 352);
  v5 = *(v1 + 360);
  *a1 = *(v1 + 328);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F7D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 336);
  v7 = *(v1 + 344);
  v8 = *(v1 + 352);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 328) = *a1;
  *(v1 + 344) = v3;
  *(v1 + 352) = v4;
  *(v1 + 360) = v5;
  return result;
}

uint64_t sub_21448F844@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 392);
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 416);
  *a1 = *(v1 + 384);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F89C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[24].n128_u64[1];
  v7 = v1[25].n128_i64[0];
  v8 = v1[25].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[24] = *a1;
  v1[25].n128_u64[0] = v3;
  v1[25].n128_u64[1] = v4;
  v1[26].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F904()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21448F980()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_21448FA00()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t sub_21448FA80()
{
  if (*(v0 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 144);

    return v1;
  }

  return result;
}

uint64_t sub_21448FB00()
{
  if (*(v0 + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 184);

    return v1;
  }

  return result;
}

uint64_t sub_21448FB80()
{
  if (*(v0 + 232) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 224);

    return v1;
  }

  return result;
}

uint64_t sub_21448FC00()
{
  if (*(v0 + 272) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 264);

    return v1;
  }

  return result;
}

uint64_t sub_21448FC80()
{
  if (*(v0 + 312) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 304);

    return v1;
  }

  return result;
}

uint64_t sub_21448FD00()
{
  if (*(v0 + 352) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 344);

    return v1;
  }

  return result;
}

uint64_t sub_21448FD80()
{
  if (*(v0 + 408) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 400);

    return v1;
  }

  return result;
}

uint64_t sub_21448FE00()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 112);
  v7 = *(v0 + 152);
  v18 = *(v0 + 104);
  v19 = *(v0 + 144);
  v8 = *(v0 + 192);
  v9 = *(v0 + 232);
  v20 = *(v0 + 184);
  v21 = *(v0 + 224);
  v10 = *(v0 + 272);
  v11 = *(v0 + 312);
  v22 = *(v0 + 264);
  v23 = *(v0 + 304);
  v26 = *(v0 + 352);
  v12 = *(v0 + 368);
  v27 = *(v0 + 376);
  v28 = *(v0 + 377);
  v24 = *(v0 + 344);
  v25 = *(v0 + 400);
  v29 = *(v0 + 408);
  v33 = MEMORY[0x277D84F98];
  if (!v1)
  {
    goto LABEL_37;
  }

  v13 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v30 = v2;
  v31 = v1;

  sub_214480660(&v30, 0);
  v32 = MEMORY[0x277D839F8];
  v30 = v3;
  sub_214480660(&v30, 1);
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v4;
    v31 = v5;

    sub_214480660(&v30, 2);
  }

  if (v6)
  {
    if (v6 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v18;
    v31 = v6;

    sub_214480660(&v30, 3);
  }

  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v19;
    v31 = v7;

    sub_214480660(&v30, 4);
  }

  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v20;
    v31 = v8;

    sub_214480660(&v30, 5);
  }

  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v21;
    v31 = v9;

    sub_214480660(&v30, 6);
  }

  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v22;
    v31 = v10;

    sub_214480660(&v30, 7);
  }

  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v23;
    v31 = v11;

    sub_214480660(&v30, 8);
  }

  if (v26)
  {
    if (v26 == 1)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v24;
    v31 = v26;

    sub_214480660(&v30, 9);
  }

  if ((v27 & 1) == 0)
  {
    v32 = MEMORY[0x277D839F8];
    v30 = v12;
    sub_214480660(&v30, 10);
  }

  if (v28 != 2)
  {
    v32 = MEMORY[0x277D839B0];
    LOBYTE(v30) = v28 & 1;
    sub_214480660(&v30, 11);
  }

  if (!v29)
  {
    goto LABEL_33;
  }

  if (v29 == 1)
  {
LABEL_37:
    sub_2146DA018();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v32 = v13;
  v30 = v25;
  v31 = v29;

  sub_214480660(&v30, 12);
LABEL_33:
  v14 = sub_21448E4D8(v33);

  if (*(v14 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v15 = sub_2146DA058();
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  v30 = v15;

  sub_2146B7C30(v16, 1, &v30);

  return v30;
}

uint64_t sub_2144901A4@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214490200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2144901A4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_214490254()
{
  result = 99;
  switch(*v0)
  {
    case 1:
      result = 100;
      break;
    case 2:
      result = 115;
      break;
    case 3:
      result = 114;
      break;
    case 4:
      result = 112;
      break;
    case 5:
      result = 29296;
      break;
    case 6:
      result = 29795;
      break;
    case 7:
      result = 27507;
      break;
    case 8:
      result = 27504;
      break;
    case 9:
      result = 27501;
      break;
    case 0xA:
      result = 25699;
      break;
    case 0xB:
      result = 28777;
      break;
    case 0xC:
      result = 26995;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214490300(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = sub_214490250();
  v4 = v3;
  if (v2 == sub_214490250() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_21449039C()
{
  v1 = *v0;
  v2 = sub_2146DA958();
  sub_214490250(v2);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214490404(uint64_t a1)
{
  v3 = *v1;
  sub_214490250(a1);
  sub_2146D9698();
}

uint64_t sub_214490468()
{
  v1 = *v0;
  v2 = sub_2146DA958();
  sub_214490250(v2);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144904CC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2144901A4(a1);
}

uint64_t sub_2144904D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214490250();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_214490504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2144901A4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_21449053C(uint64_t a1)
{
  v2 = sub_214493BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214490578(uint64_t a1)
{
  v2 = sub_214493BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144905B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144906FC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214490798(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214490860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v3 + 80);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 64), *(v3 + 72));

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144909A4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

void (*sub_214490A7C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

uint64_t sub_214490B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 88);
  v7 = *(v2 + 96);
  v11 = *(v3 + 120);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 104), *(v3 + 112));

    *(v3 + 104) = a1;
    *(v3 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214490C60(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void (*sub_214490D38(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

uint64_t sub_214490DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 128);
  v7 = *(v2 + 136);
  v11 = *(v3 + 160);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 144), *(v3 + 152));

    *(v3 + 144) = a1;
    *(v3 + 152) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214490F1C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 144);
  *(v3 + 24) = v5;
  v6 = *(v1 + 152);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2140556C8;
  }

  return result;
}

void (*sub_214490FF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055AD4;
}

uint64_t sub_214491094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 168);
  v7 = *(v2 + 176);
  v11 = *(v3 + 200);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 184), *(v3 + 192));

    *(v3 + 184) = a1;
    *(v3 + 192) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144911D8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 184);
  *(v3 + 24) = v5;
  v6 = *(v1 + 192);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DF7BC;
  }

  return result;
}

void (*sub_2144912B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DFB08;
}

uint64_t sub_214491350@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 232);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 224);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144913C4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214491474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 208);
  v7 = *(v2 + 216);
  v11 = *(v3 + 240);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 224), *(v3 + 232));

    *(v3 + 224) = a1;
    *(v3 + 232) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144915B8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 224);
  *(v3 + 24) = v5;
  v6 = *(v1 + 232);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214491690;
  }

  return result;
}

void sub_214491690(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 208);
    v11 = *(v3 + 216);
    v16 = *(v3 + 240);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 224) = v5;
      *(v12 + 232) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 208);
  v6 = *(v3 + 216);
  v16 = *(v3 + 240);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 224) = v5;
  *(v8 + 232) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214491860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  v5 = *(a1 + 240);
  *a2 = *(a1 + 208);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2144918B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 216);
  v9 = *(a2 + 224);
  v10 = *(a2 + 232);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 208) = v4;
  *(a2 + 216) = v3;
  *(a2 + 224) = v5;
  *(a2 + 232) = v6;
  *(a2 + 240) = v7;
  return result;
}

void (*sub_21449193C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);
  *v4 = *(v1 + 208);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144919DC;
}

void sub_2144919DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 216);
  v9 = *(v3 + 224);
  v11 = *(v3 + 232);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 208) = v5;
    *(v3 + 216) = v4;
    *(v3 + 224) = v7;
    *(v3 + 232) = v6;
    *(v3 + 240) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 216);

    sub_213FDC6D0(v9, v11);
    *(v3 + 208) = v5;
    *(v3 + 216) = v4;
    *(v3 + 224) = v7;
    *(v3 + 232) = v6;
    *(v3 + 240) = v8;
  }

  free(v2);
}

uint64_t sub_214491ABC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 272);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 264);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214491B30(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214491BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 248);
  v7 = *(v2 + 256);
  v11 = *(v3 + 280);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 264), *(v3 + 272));

    *(v3 + 264) = a1;
    *(v3 + 272) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214491D24(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 264);
  *(v3 + 24) = v5;
  v6 = *(v1 + 272);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214491DFC;
  }

  return result;
}

void sub_214491DFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 248);
    v11 = *(v3 + 256);
    v16 = *(v3 + 280);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 264) = v5;
      *(v12 + 272) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 248);
  v6 = *(v3 + 256);
  v16 = *(v3 + 280);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 264) = v5;
  *(v8 + 272) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214491FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 256);
  v3 = *(a1 + 264);
  v4 = *(a1 + 272);
  v5 = *(a1 + 280);
  *a2 = *(a1 + 248);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214492020(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 256);
  v9 = *(a2 + 264);
  v10 = *(a2 + 272);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 248) = v4;
  *(a2 + 256) = v3;
  *(a2 + 264) = v5;
  *(a2 + 272) = v6;
  *(a2 + 280) = v7;
  return result;
}

void (*sub_2144920A8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 256);
  v6 = *(v1 + 264);
  v7 = *(v1 + 272);
  v8 = *(v1 + 280);
  *v4 = *(v1 + 248);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214492148;
}

void sub_214492148(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 256);
  v9 = *(v3 + 264);
  v11 = *(v3 + 272);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 248) = v5;
    *(v3 + 256) = v4;
    *(v3 + 264) = v7;
    *(v3 + 272) = v6;
    *(v3 + 280) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 256);

    sub_213FDC6D0(v9, v11);
    *(v3 + 248) = v5;
    *(v3 + 256) = v4;
    *(v3 + 264) = v7;
    *(v3 + 272) = v6;
    *(v3 + 280) = v8;
  }

  free(v2);
}

uint64_t sub_214492228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 312);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 304);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21449229C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21449234C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 288);
  v7 = *(v2 + 296);
  v11 = *(v3 + 320);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 304), *(v3 + 312));

    *(v3 + 304) = a1;
    *(v3 + 312) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214492490(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 304);
  *(v3 + 24) = v5;
  v6 = *(v1 + 312);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214492568;
  }

  return result;
}

void sub_214492568(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 288);
    v11 = *(v3 + 296);
    v16 = *(v3 + 320);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 304) = v5;
      *(v12 + 312) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 288);
  v6 = *(v3 + 296);
  v16 = *(v3 + 320);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 304) = v5;
  *(v8 + 312) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214492738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  v5 = *(a1 + 320);
  *a2 = *(a1 + 288);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21449278C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 296);
  v9 = *(a2 + 304);
  v10 = *(a2 + 312);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 288) = v4;
  *(a2 + 296) = v3;
  *(a2 + 304) = v5;
  *(a2 + 312) = v6;
  *(a2 + 320) = v7;
  return result;
}

void (*sub_214492814(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  *v4 = *(v1 + 288);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144928B4;
}

void sub_2144928B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 296);
  v9 = *(v3 + 304);
  v11 = *(v3 + 312);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 296);

    sub_213FDC6D0(v9, v11);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
  }

  free(v2);
}

uint64_t sub_214492994@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 352);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 344);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214492A08(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214492AB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 328);
  v7 = *(v2 + 336);
  v11 = *(v3 + 360);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 344), *(v3 + 352));

    *(v3 + 344) = a1;
    *(v3 + 352) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214492BFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 344);
  *(v3 + 24) = v5;
  v6 = *(v1 + 352);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214492CD4;
  }

  return result;
}

void sub_214492CD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 328);
    v11 = *(v3 + 336);
    v16 = *(v3 + 360);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 344) = v5;
      *(v12 + 352) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 328);
  v6 = *(v3 + 336);
  v16 = *(v3 + 360);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 344) = v5;
  *(v8 + 352) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214492EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  v4 = *(a1 + 352);
  v5 = *(a1 + 360);
  *a2 = *(a1 + 328);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214492EF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 336);
  v9 = *(a2 + 344);
  v10 = *(a2 + 352);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 328) = v4;
  *(a2 + 336) = v3;
  *(a2 + 344) = v5;
  *(a2 + 352) = v6;
  *(a2 + 360) = v7;
  return result;
}

void (*sub_214492F80(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 336);
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);
  v8 = *(v1 + 360);
  *v4 = *(v1 + 328);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214493020;
}

void sub_214493020(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 336);
  v9 = *(v3 + 344);
  v11 = *(v3 + 352);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 328) = v5;
    *(v3 + 336) = v4;
    *(v3 + 344) = v7;
    *(v3 + 352) = v6;
    *(v3 + 360) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 336);

    sub_213FDC6D0(v9, v11);
    *(v3 + 328) = v5;
    *(v3 + 336) = v4;
    *(v3 + 344) = v7;
    *(v3 + 352) = v6;
    *(v3 + 360) = v8;
  }

  free(v2);
}

uint64_t sub_214493100()
{
  result = *(v0 + 368);
  v2 = *(v0 + 376);
  return result;
}

uint64_t sub_21449310C(uint64_t result, char a2)
{
  *(v2 + 368) = result;
  *(v2 + 376) = a2 & 1;
  return result;
}

uint64_t sub_21449316C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 408);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 400);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144931E0(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214493290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 384);
  v7 = *(v2 + 392);
  v11 = *(v3 + 416);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 400), *(v3 + 408));

    *(v3 + 400) = a1;
    *(v3 + 408) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144933D4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 400);
  *(v3 + 24) = v5;
  v6 = *(v1 + 408);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144934AC;
  }

  return result;
}

void sub_2144934AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 384);
    v11 = *(v3 + 392);
    v16 = *(v3 + 416);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 400) = v5;
      *(v12 + 408) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 384);
  v6 = *(v3 + 392);
  v16 = *(v3 + 416);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 400) = v5;
  *(v8 + 408) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21449367C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 392);
  v3 = *(a1 + 400);
  v4 = *(a1 + 408);
  v5 = *(a1 + 416);
  *a2 = *(a1 + 384);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2144936D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 392);
  v9 = *(a2 + 400);
  v10 = *(a2 + 408);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 384) = v4;
  *(a2 + 392) = v3;
  *(a2 + 400) = v5;
  *(a2 + 408) = v6;
  *(a2 + 416) = v7;
  return result;
}

void (*sub_214493758(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 392);
  v6 = *(v1 + 400);
  v7 = *(v1 + 408);
  v8 = *(v1 + 416);
  *v4 = *(v1 + 384);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144937F8;
}

void sub_2144937F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 392);
  v9 = *(v3 + 400);
  v11 = *(v3 + 408);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 384) = v5;
    *(v3 + 392) = v4;
    *(v3 + 400) = v7;
    *(v3 + 408) = v6;
    *(v3 + 416) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 392);

    sub_213FDC6D0(v9, v11);
    *(v3 + 384) = v5;
    *(v3 + 392) = v4;
    *(v3 + 400) = v7;
    *(v3 + 408) = v6;
    *(v3 + 416) = v8;
  }

  free(v2);
}

uint64_t sub_2144938D8()
{
  sub_21448FE00();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21449392C()
{
  sub_21448FE00();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_214493984()
{
  result = qword_27C9144A0;
  if (!qword_27C9144A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9144A0);
  }

  return result;
}

unint64_t sub_2144939DC()
{
  result = qword_27C9144A8;
  if (!qword_27C9144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9144A8);
  }

  return result;
}

unint64_t sub_214493A34()
{
  result = qword_27C9144B0;
  if (!qword_27C9144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9144B0);
  }

  return result;
}

unint64_t sub_214493A88(uint64_t a1)
{
  *(a1 + 8) = sub_21431FB9C();
  result = sub_21431F368();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214493AC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 417))
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

uint64_t sub_214493B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 392) = 0u;
    *(result + 416) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 417) = 1;
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

    *(result + 417) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214493BD8()
{
  result = qword_27C9144B8;
  if (!qword_27C9144B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9144B8);
  }

  return result;
}

uint64_t sub_214493C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9144C0, qword_21474D958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214493C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9144C0, qword_21474D958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214493D04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_214493D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainsOnlyCharacterSetValidator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for ContainsOnlyCharacterSetValidator(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2146D86D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214493E44(void *a1)
{
  v2 = *(*(type metadata accessor for ContainsOnlyCharacterSetValidator(0) - 8) + 80);

  return sub_21460413C(a1);
}

uint64_t type metadata accessor for SwiftRegexValidator()
{
  result = qword_27C9144C8;
  if (!qword_27C9144C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214493F40()
{
  sub_214493FAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}