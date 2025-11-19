int64_t sub_1B2138500()
{
  sub_1B21619D8(&qword_1EB7A34F0, &unk_1B226C7C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B22546B0;
  *(v1 + 32) = v0[2];
  v2 = MEMORY[0x1E69E7CC0];
  v51[0] = MEMORY[0x1E69E7CC0];

  if (*(v1 + 32))
  {
    v3 = *(v1 + 32);

    MEMORY[0x1B2742060](v4);
    if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B22525E0();
    }

    sub_1B2252630();
    v2 = v51[0];
  }

  v6 = v0[10];
  v5 = v0[11];
  swift_setDeallocating();
  result = sub_1B2138A1C();
  v8 = 0;
  v40 = v6 + 32;
  v41 = *(v6 + 16);
  v9 = &qword_1EB7A0EC8;
  for (i = v5; ; v5 = i)
  {
    if (v8 == v41)
    {
      return v2;
    }

    if (!*(v5 + 16))
    {
      break;
    }

    v10 = v9;
    v11 = (v40 + 16 * v8);
    v12 = *v11;
    v13 = v11[1];

    result = sub_1B211E590();
    if ((v14 & 1) == 0)
    {
      goto LABEL_42;
    }

    v15 = (*(v5 + 56) + 216 * result);
    memcpy(__dst, v15, sizeof(__dst));
    memcpy(__src, v15, sizeof(__src));
    memmove(v48, v15, 0xD8uLL);
    v49[0] = v12;
    v49[1] = v13;
    memcpy(v50, __src, sizeof(v50));

    sub_1B21A63AC(__dst, v45);
    sub_1B21A63AC(v48, v45);
    sub_1B212AC5C(v49, &qword_1EB7A1CB8, &qword_1B225A4C0);
    memcpy(v52, v48, sizeof(v52));
    v51[0] = v12;
    v51[1] = v13;
    v16 = memcpy(v53, &v48[48], sizeof(v53));
    v17 = sub_1B2138500(v16);
    v18 = v17;
    v19 = v17 >> 62;
    if (v17 >> 62)
    {
      v20 = sub_1B2252C20();
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v10;
    v21 = v2 >> 62;
    if (v2 >> 62)
    {
      result = sub_1B2252C20();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = result + v20;
    if (__OFADD__(result, v20))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v8;
    if (result)
    {
      if (v21)
      {
        goto LABEL_21;
      }

      v23 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v22 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v21)
      {
LABEL_21:
        sub_1B2252C20();
        goto LABEL_22;
      }

      v23 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v24 = *(v23 + 16);
LABEL_22:
    result = sub_1B2252D10();
    v2 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v44 = v20;
    v25 = *(v23 + 16);
    v26 = (*(v23 + 24) >> 1) - v25;
    v27 = v23 + 8 * v25;
    v42 = v23;
    if (v19)
    {
      v29 = sub_1B2252C20();
      if (v29)
      {
        v30 = v29;
        result = sub_1B2252C20();
        if (v26 < result)
        {
          goto LABEL_46;
        }

        if (v30 < 1)
        {
          goto LABEL_48;
        }

        v28 = result;
        v31 = v27 + 32;
        sub_1B211AB74(&qword_1EB7A34F8, v10, &unk_1B22545E0);
        for (j = 0; j != v30; ++j)
        {
          sub_1B21619D8(v9, &unk_1B22545E0);
          v33 = sub_1B21C2590(__src, j, v18);
          v35 = *v34;

          (v33)(__src, 0);
          *(v31 + 8 * j) = v35;
          v9 = v10;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        if (v26 < v28)
        {
          goto LABEL_47;
        }

        type metadata accessor for TableAlias();
        swift_arrayInitWithCopy();
LABEL_32:

        if (v28 < v44)
        {
          goto LABEL_44;
        }

        if (v28 > 0)
        {
          v36 = *(v42 + 16);
          v37 = __OFADD__(v36, v28);
          v38 = v36 + v28;
          if (v37)
          {
            goto LABEL_45;
          }

          *(v42 + 16) = v38;
        }

        goto LABEL_37;
      }
    }

    if (v20 > 0)
    {
      goto LABEL_44;
    }

LABEL_37:
    v8 = v43 + 1;
    result = sub_1B212AC5C(v51, &qword_1EB7A1CB8, &qword_1B225A4C0);
  }

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
  __break(1u);
  return result;
}

uint64_t sub_1B21389D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_1B21619D8(a1, a2);
  swift_arrayDestroy();
  v4 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

void *sub_1B2138A30(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = 0x8000000000000000;

  v2[4] = sub_1B2118664(a2);
  sub_1B2117044(a2);
  v2[5] = v4;
  v5 = sub_1B2115C78();
  v8 = sub_1B211903C(v5, v6, v7, 0);

  v2[6] = v8;
  return v2;
}

uint64_t sub_1B2138CB8()
{
  v0 = sub_1B2138CF0();

  return MEMORY[0x1B2742F10](v0);
}

uint64_t sub_1B2138CF0()
{
  if (*(v0 + 48) == 2)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v5 = v0 + 16;
    v3 = *(v0 + 16);
    v4 = *(v5 + 8);

    v7 = sub_1B2138CF0(v6);
    sub_1B2142C9C(v3, v4, v2, v1, 2);
    return v7;
  }

  else
  {
  }
}

uint64_t sub_1B2138D90()
{
}

uint64_t sub_1B2138F70()
{
  result = sub_1B2139070();
  if (!v1)
  {
    return sub_1B2138F90();
  }

  return result;
}

uint64_t sub_1B2138F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  if (v2 == 1)
  {
    v3 = *(v0 + 24);

    return sub_1B2115C78();
  }

  if (v2 == 2)
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 16);

    sub_1B2138F90(v7);
    v8 = sub_1B2115C78();
    sub_1B2142C9C(v8, v9, v5, v4, 2);
    return sub_1B2115C78();
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B2139070()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (*(v0 + 48) == 1)
    {
      v5 = *(v0 + 40);
    }

    else
    {
      v7 = *(v0 + 16);

      v9 = sub_1B2139070(v8);
      sub_1B2142C9C(v2, v1, v3, v4, 2);
      return v9;
    }
  }

  else
  {
    v6 = *(v0 + 24);

    return v2;
  }

  return v3;
}

void sub_1B2139114()
{
  sub_1B2122614();
  v2 = v0;
  v3 = v1;
  v4 = *v0;
  if (*(*v0 + 24) > v5)
  {
    v6 = *(*v0 + 24);
  }

  v44 = v1;
  sub_1B21619D8(&qword_1EB7A34C0, &unk_1B226C268);
  v7 = sub_1B2252EF0();
  if (!*(v4 + 16))
  {
LABEL_31:

LABEL_32:
    *v2 = v7;
    sub_1B2115CEC();
    return;
  }

  v42 = v2;
  v43 = v4;
  v8 = 0;
  v10 = v4 + 64;
  v9 = *(v4 + 64);
  v11 = *(v4 + 32);
  sub_1B21154D4();
  sub_1B2125FE8();
  v13 = v12 >> 6;
  v14 = v7 + 64;
  if (!v3)
  {
LABEL_6:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v10 + 8 * v8))
      {
        sub_1B211667C();
        v3 = v18 & v17;
        goto LABEL_11;
      }
    }

    if ((v44 & 1) == 0)
    {

      v2 = v42;
      goto LABEL_32;
    }

    v36 = *(v4 + 32);
    sub_1B2113108();
    v2 = v42;
    if (v38 != v39)
    {
      sub_1B211E564(v37);
    }

    else
    {
      v40 = sub_1B2122A88();
      sub_1B2148CEC(v40, v41, v10);
    }

    *(v4 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    sub_1B2149880();
LABEL_11:
    v19 = v15 | (v8 << 6);
    v20 = (*(v4 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v4 + 56) + 8 * v19);
    if ((v44 & 1) == 0)
    {
      v24 = v20[1];
    }

    sub_1B224B4B4();
    sub_1B2252370();
    v25 = sub_1B2253470();
    sub_1B211647C(v25);
    v27 = *(v14 + 8 * v26);
    sub_1B213CF74();
    if (v28)
    {
      break;
    }

    sub_1B2112110();
LABEL_23:
    sub_1B2111AE8();
    *(v14 + v32) |= v33;
    v35 = (*(v7 + 48) + 16 * v34);
    *v35 = v21;
    v35[1] = v22;
    *(*(v7 + 56) + 8 * v34) = v23;
    sub_1B212D15C();
    v4 = v43;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v14 + 8 * v29) != -1)
    {
      sub_1B2118398();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1B2139304()
{
  sub_1B212D010();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253470();
  v9 = *(v7 + 32);
  sub_1B2113B98();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (sub_1B22531F0() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;

      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;

  sub_1B2139668(v4, v2, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v20;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  sub_1B212CE34();
}

uint64_t sub_1B2139434(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C70();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1B2253420();

        sub_1B2252370();
        result = sub_1B2253470();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B2139668(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B213E7F8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B2139434(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1B2253420();
      sub_1B2252370();
      result = sub_1B2253470();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1B22531F0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B2248DB0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1B21397D0(uint64_t *a1)
{
  v3 = v2;
  v4 = *(v1 + 152);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v1 + 160);
    v41 = 0x2048544957;
    v42 = 0xE500000000000000;
    v7 = sub_1B224F344(v4, v6);
    v8 = *(v7 + 16) + 1;
    v9 = 202;
    while (--v8)
    {
      v10 = *(v7 + v9);
      v9 += 176;
      if (v10)
      {

        MEMORY[0x1B2741EB0](0x5649535255434552, 0xEA00000000002045);
        goto LABEL_8;
      }
    }

LABEL_8:
    v11 = sub_1B216B140(v4);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v13 = v11;
      v43 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v12 = v43;
        v14 = (v4 + 40);
        v30 = v6;
        while (v5)
        {
          if (!*(v6 + 16))
          {
            goto LABEL_21;
          }

          v32 = v13;
          v33 = v5;
          v15 = v12;
          v17 = *(v14 - 1);
          v16 = *v14;

          v18 = sub_1B211E590();
          if ((v19 & 1) == 0)
          {
            goto LABEL_22;
          }

          v20 = (*(v6 + 56) + 176 * v18);
          memcpy(__dst, v20, 0xABuLL);
          memcpy(__src, v20, sizeof(__src));
          memmove(v38, v20, 0xABuLL);
          v39[0] = v17;
          v39[1] = v16;
          memcpy(v40, __src, sizeof(v40));

          sub_1B21818BC(__dst, v35);
          sub_1B21818BC(v38, v35);
          sub_1B212AC5C(v39, &qword_1EB7A1BD0, &qword_1B226C7C0);
          memcpy(&v35[2], v38, 0xABuLL);
          v35[0] = v17;
          v35[1] = v16;
          v21 = sub_1B22508F4(v17, v16, &v35[2], a1);
          if (v3)
          {
            memcpy(v34, v35, 0xBBuLL);
            sub_1B212AC5C(v34, &qword_1EB7A1BD0, &qword_1B226C7C0);

            return;
          }

          v23 = v21;
          v24 = v22;
          memcpy(v34, v35, 0xBBuLL);
          sub_1B212AC5C(v34, &qword_1EB7A1BD0, &qword_1B226C7C0);
          v12 = v15;
          v43 = v15;
          v25 = *(v15 + 16);
          if (v25 >= *(v15 + 24) >> 1)
          {
            sub_1B2116B10();
            v12 = v43;
          }

          *(v12 + 16) = v25 + 1;
          v26 = v12 + 16 * v25;
          *(v26 + 32) = v23;
          *(v26 + 40) = v24;
          v5 = v33 - 1;
          v14 += 2;
          --v13;
          v3 = 0;
          v6 = v30;
          if (v32 == 1)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      v39[0] = v12;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
      v27 = sub_1B2252250();
      v29 = v28;

      MEMORY[0x1B2741EB0](v27, v29);

      MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    }
  }
}

uint64_t sub_1B2139B70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  if ((v1 & 0x8000000000000000) == 0)
  {
    return v2;
  }

  v5 = sub_1B2139B70(v3);
  v6 = sub_1B2115C78();
  sub_1B211B418(v6, v7);
  return v5;
}

void sub_1B2139BC4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(a2 + 32);
  (*(a2 + 24))(__dst);
  if (!v3)
  {
    v20 = a3;
    v8 = __dst[0];
    sub_1B213A63C(*(a2 + 80), *(a2 + 88));
    v9 = 0;
    v21 = *(v10 + 16);
    v22 = v10;
    for (i = (v10 + 80); ; i += 216)
    {
      if (v21 == v9)
      {

        *v20 = v8;
        return;
      }

      if (v9 >= *(v22 + 16))
      {
        break;
      }

      memcpy(__dst, i - 48, sizeof(__dst));
      memcpy(v25, i, 0xA8uLL);
      sub_1B21A63AC(__dst, v23);
      sub_1B22515A0(&__dst[6], v23);
      sub_1B2139BC4(&v26, a1, v25);
      sub_1B22515D8(&__dst[6]);
      v12 = v26;
      v13 = *(v26 + 16);
      v14 = *(v8 + 16);
      if (__OFADD__(v14, v13))
      {
        goto LABEL_19;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v15 = *(v8 + 24) >> 1, v15 < v14 + v13))
      {
        sub_1B2156430();
        v8 = v16;
        v15 = *(v16 + 24) >> 1;
      }

      if (*(v12 + 16))
      {
        if (v15 - *(v8 + 16) < v13)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v8 + 16);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_22;
          }

          *(v8 + 16) = v19;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_20;
        }
      }

      sub_1B21A6464(__dst);
      ++v9;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void *sub_1B2139DE8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, void *(*a4)(uint64_t *__return_ptr)@<X3>, void *a5@<X8>)
{
  result = sub_1B2139EF0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void *sub_1B2139E68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  if (!v4)
  {
    a2(&v8, &v7);

    return v8;
  }

  return result;
}

uint64_t sub_1B2139F20@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B2139F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 16))(a3, a4);
  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v6 = v17;
    v7 = v4 + 32;
    for (i = v5 - 1; ; --i)
    {
      sub_1B211EE68(v7, v13);
      v9 = v14;
      v10 = v15;
      sub_1B21139A0(v13, v14);
      (*(v10 + 8))(__src, v9, v10);
      sub_1B2113208(v13);
      v17 = v6;
      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_1B213A1C8();
        v6 = v17;
      }

      *(v6 + 16) = v11 + 1;
      memcpy((v6 + 184 * v11 + 32), __src, 0xB8uLL);
      if (!i)
      {
        break;
      }

      v7 += 40;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

double static TableRecord.databaseSelection.getter()
{
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1B22546B0;
  *(v0 + 56) = &type metadata for AllColumns;
  *(v0 + 64) = &protocol witness table for AllColumns;
  return result;
}

void sub_1B213A118()
{
  sub_1B2111830();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B213A1C8()
{
  v1 = *v0;
  sub_1B213A118();
  *v0 = v2;
}

void sub_1B213A264(void *a1)
{
  bzero(a1, 0xA0uLL);
  a1[21] = 0;
  a1[22] = 0;
  a1[20] = 0x8000000000000000;
}

uint64_t *sub_1B213A298@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v14 = a3;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v5 = v20;
    v7 = (v3 + 32);
    do
    {
      memcpy(__dst, v7, sizeof(__dst));
      memmove(v19, v7, 0xB8uLL);
      switch(sub_1B213A580(v19))
      {
        case 1u:
          v12 = sub_1B213AA9C(v19);
          memcpy(v16, v12, 0xA3uLL);
          sub_1B213A774(__dst, v17);
          sub_1B213BBD8(a2, __src);
          sub_1B213A5CC(__dst);
          memcpy(v16, __src, 0xA3uLL);
          sub_1B214D464(v16);
          goto LABEL_9;
        case 2u:
          v9 = sub_1B213AA9C(v19);
          v10 = v9[21];
          v11 = v9[22];
          memcpy(v16, v9, 0xA3uLL);
          sub_1B213A774(__dst, v17);
          sub_1B213A774(__dst, v17);
          sub_1B213BBD8(a2, __src);
          sub_1B21356F8(v9);
          sub_1B213A5CC(__dst);
          memcpy(v16, __src, 0xA8uLL);
          v16[21] = v10;
          v16[22] = v11;
          sub_1B2155A5C(v16);
          goto LABEL_9;
        case 3u:
          v16[0] = *sub_1B213AA9C(v19);
          sub_1B213A774(__dst, v17);
          sub_1B2153E58(a2, __src);
          sub_1B213A5CC(__dst);
          v16[0] = __src[0];
          sub_1B216ED24(v16);
          goto LABEL_9;
        case 4u:
          v16[0] = a2;
          sub_1B213A59C(v16);

          sub_1B213A5CC(__dst);
LABEL_9:
          memcpy(v17, v16, sizeof(v17));
          break;
        default:
          sub_1B213AA9C(v19);
          memcpy(v16, __dst, sizeof(v16));
          v8 = *sub_1B213AA9C(v16);
          memcpy(v17, __dst, sizeof(v17));

          break;
      }

      v20 = v5;
      v13 = *(v5 + 16);
      if (v13 >= *(v5 + 24) >> 1)
      {
        sub_1B213A1C8();
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      result = memcpy((v5 + 184 * v13 + 32), v17, 0xB8uLL);
      v7 += 184;
      --v4;
    }

    while (v4);
    a3 = v14;
  }

  *a3 = v5;
  return result;
}

unint64_t sub_1B213A580(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

void *sub_1B213A59C(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

unint64_t sub_1B213A620(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

void sub_1B213A63C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B216F050();
    v5 = v14;
    v6 = (a1 + 40);
    while (*(a2 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = sub_1B211E590();
      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }

      memcpy(__dst, (*(a2 + 56) + 216 * v9), sizeof(__dst));
      sub_1B21A63AC(__dst, v12);

      v14 = v5;
      v11 = *(v5 + 16);
      if (v11 >= *(v5 + 24) >> 1)
      {
        sub_1B216F050();
        v5 = v14;
      }

      *(v5 + 16) = v11 + 1;
      memcpy((v5 + 216 * v11 + 32), __dst, 0xD8uLL);
      v6 += 2;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1B213A7D0(uint64_t a1)
{
  sub_1B21118C4();
  memcpy(v3, v4, v5);
  sub_1B21118C4();
  memcpy(v6, v7, v8);
  v9 = 42;
  switch(sub_1B213A580(v67))
  {
    case 1u:
      v31 = sub_1B213AA9C(v67);
      v32 = memcpy(__dst, v31, 0xA3uLL);
      sub_1B2112878(v32, v33, v34, v35, v36, v37, v38, v39, v60, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], v65[0]);
      v40 = sub_1B213AA9C(v65);
      sub_1B2127DC0(v40, v64);
      v9 = __dst;
      v30 = sub_1B2127E58(a1, 0);
      goto LABEL_6;
    case 2u:
      v41 = sub_1B213AA9C(v67);
      v43 = v41[21];
      v42 = v41[22];
      v44 = memcpy(v64, v41, 0xA3uLL);
      sub_1B2112878(v44, v45, v46, v47, v48, v49, v50, v51, v60, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], v65[0]);
      v52 = sub_1B213AA9C(v65);
      sub_1B2156464(v52, __dst);
      v9 = v64;
      v53 = sub_1B2127E58(a1, 0);
      if (v1)
      {

        sub_1B21356F8(v41);
        return v9;
      }

      *__dst = v53;
      *&__dst[8] = v54;

      MEMORY[0x1B2741EB0](542327072, 0xE400000000000000);

      v56 = *__dst;
      v55 = *&__dst[8];
      sub_1B2116550();
      MEMORY[0x1B2741EB0](v43, v42);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      v57 = *__dst;
      v58 = *&__dst[8];
      *__dst = v56;
      *&__dst[8] = v55;

      MEMORY[0x1B2741EB0](v57, v58);

      sub_1B21356F8(v41);
      return *__dst;
    case 3u:
      v21 = sub_1B213AA9C(v67);
      sub_1B2112878(v21, v22, v23, v24, v25, v26, v27, v28, v60, *v21, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], v65[0]);
      v29 = *sub_1B213AA9C(v65);

      v9 = __dst;
      v30 = sub_1B2119120(a1);
LABEL_6:
      if (!v1)
      {
        v9 = v30;
      }

      sub_1B213ACA0(v66);
      return v9;
    case 4u:
      return v9;
    default:
      v10 = sub_1B213AA9C(v67);
      v11 = *v10;
      sub_1B2112878(v10, v12, v13, v14, v15, v16, v17, v18, v60, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], v65[0]);
      v19 = *sub_1B213AA9C(v65);

      sub_1B213AAC0(v11);
      if (v20)
      {
        sub_1B2116550();
        MEMORY[0x1B2741EB0]();
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        MEMORY[0x1B2741EB0](10798, 0xE200000000000000);

        sub_1B213ACA0(v66);
        return *__dst;
      }

      else
      {
        sub_1B213ACA0(v66);
        return 42;
      }
  }
}

uint64_t sub_1B213AAC0(uint64_t a1)
{
  v2 = v1;
  sub_1B2139070();
  if (v4)
  {

    return sub_1B2138F70();
  }

  else
  {
    v6 = *(v2 + 40);
    sub_1B213AB40();
    if ((v7 & 1) != 0 && sub_1B2118DD0(v6) < 2)
    {
      return 0;
    }

    else
    {
      return sub_1B213AE84(a1);
    }
  }
}

void sub_1B213AB40()
{
  sub_1B212D010();
  v1 = v0;
  if ((v0 & 0xC000000000000001) != 0)
  {

    sub_1B2252C50();
  }

  else if (*(v0 + 16))
  {
    type metadata accessor for TableAlias();
    v2 = *(v1 + 40);
    sub_1B2253420();
    sub_1B2138CB8();
    sub_1B2253470();
    v3 = *(v1 + 32);
    sub_1B2113B98();
    v6 = ~v5;
    do
    {
      v7 = v4 & v6;
      if (((1 << (v4 & v6)) & *(v1 + 56 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v8 = *(*(v1 + 48) + 8 * v7);

      v9 = static TableAlias.== infix(_:_:)();

      v4 = v7 + 1;
    }

    while (!v9);
  }

  sub_1B212CE34();
}

BOOL static TableAlias.== infix(_:_:)()
{
  v0 = sub_1B2138CF0();

  v1 = sub_1B2138CF0();

  return v0 == v1;
}

uint64_t sub_1B213ACD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B213ADF0(a4);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    MEMORY[0x1B2741EB0](a2, a3);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v8, v9);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1B2741EB0](a2, a3);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  }

  return 34;
}

uint64_t sub_1B213ADF0(uint64_t a1)
{
  v1 = sub_1B213AE84(a1);
  v3 = v2;
  if (v1 == sub_1B2138F90() && v3 == v4)
  {

LABEL_8:

    return sub_1B2115C78();
  }

  sub_1B2115C78();
  v6 = sub_1B22531F0();

  if (v6)
  {
    goto LABEL_8;
  }

  return sub_1B2115C78();
}

uint64_t sub_1B213AE84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (*(v4 + 16) && (v5 = sub_1B2190C9C(), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v10 = *(v2 + 24);
    if (v10 < 0)
    {
      v11 = *(v2 + 16);

      v8 = sub_1B213AE84(a1);
      sub_1B211B418(v11, v10);
    }

    else
    {
      return sub_1B2138F70();
    }
  }

  return v8;
}

void *sub_1B213AF68(uint64_t a1, void (*a2)(void *), uint64_t a3, void *(*a4)(void *__return_ptr))
{
  result = a4(__src);
  if (!v4)
  {
    a2(__src);
    memcpy(v7, __src, 0xA3uLL);
    return sub_1B21356F8(v7);
  }

  return result;
}

void *sub_1B213B064(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(v6);
  if (!v2)
  {
    v4 = v7;
    v5 = v8;
    sub_1B21139A0(v6, v7);
    (*(v5 + 8))(v4, v5);
    return sub_1B2113208(v6);
  }

  return result;
}

uint64_t *sub_1B213B110(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  v10[3] = &type metadata for SQLExpression;
  v10[4] = &protocol witness table for SQLExpression;
  v10[0] = swift_allocObject();
  a2(a1);
  if (v4)
  {
    return sub_1B21C80D0(v10);
  }

  v9[3] = &type metadata for SQLExpression;
  v9[4] = &protocol witness table for SQLExpression;
  v9[0] = swift_allocObject();
  a4(a1);
  && infix(_:_:)(v10, v9);
  sub_1B2113208(v9);
  return sub_1B2113208(v10);
}

uint64_t sub_1B213B230()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B213B2AC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1B21139A0(a1, v3);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  v6 = sub_1B212FF14(a2);
  return (*(*(v3 - 8) + 16))(v6, v5, v3);
}

uint64_t SQLExpression.sqlExpression.getter()
{
  sub_1B2111ADC();
  memcpy(v0, v1, v2);
  sub_1B2111ADC();
  v6 = memcpy(v3, v4, v5);
  v14 = sub_1B21D09F8(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  return sub_1B2127DC0(v14, v15);
}

uint64_t sub_1B213B3A4()
{

  return swift_unexpectedError();
}

void sub_1B213B4BC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v101 = *(a1 + 16);
  v104 = *(a1 + 24);
  LODWORD(v107) = *(a1 + 32);
  v6 = *(a1 + 33);
  HIDWORD(v89) = *(a1 + 34);
  if (v6 == 1)
  {
    HIDWORD(v83) = 1;
    v86 = a3;
    v7 = a2[2];
    v8 = a2 + 4;
    v3 = MEMORY[0x1E69E7CC0];
    v110 = xmmword_1B22546B0;
    v92 = *a1;
    v95 = *(a1 + 8);
    if (v7)
    {
      while (1)
      {
        sub_1B2117AC4();
        memcpy(v9, v10, v11);
        sub_1B2117AC4();
        memcpy(v12, v13, v14);
        v15 = sub_1B2127E1C(__dst);
        if (v15 != 9)
        {
          sub_1B21263F8(v15, v16, v17, v18, v19, v20, v21, v22, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v118, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0]);
          goto LABEL_17;
        }

        v119 = v7;
        v23 = sub_1B2127E38(__dst);
        v30 = *v23;
        v31 = *(v23 + 16);
        v32 = *(v23 + 24);
        v33 = *(v23 + 32);
        HIDWORD(v107) = *(v23 + 33);
        v34 = *(v23 + 34);
        v35 = *(v23 + 40);
        if (v5 != *v23 || v4 != *(v23 + 8))
        {
          v23 = sub_1B22531F0();
          if ((v23 & 1) == 0)
          {
            break;
          }
        }

        HIDWORD(v98) = v34;
        v37 = v107;
        LOBYTE(v127) = v107;
        LOBYTE(v124) = v33;
        v38 = sub_1B21263F8(v23, v24, v30, v25, v26, v27, v28, v29, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v119, v31, v32, v124, v101, v104, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0]);
        sub_1B21263F8(v38, v39, v40, v41, v42, v43, v44, v45, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v113, v116, v120, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0]);
        v46 = sub_1B211F390();
        sub_1B2113A20(v46, v47, v37);
        v48 = sub_1B211FE5C();
        sub_1B2113A20(v48, v49, v50);
        v51 = static DatabaseValue.== infix(_:_:)(&v125, &v122);
        sub_1B2113A44(v122, v123, v124);
        sub_1B2113A44(v125, v126, v127);

        v52 = sub_1B211FE5C();
        sub_1B2113A44(v52, v53, v54);
        if ((v51 & 1) == 0)
        {

          v5 = v92;
          v4 = v95;
          goto LABEL_16;
        }

        v5 = v92;
        v4 = v95;
        v7 = v118;
        if ((v107 & 0x100000000) == 0 || HIDWORD(v89) != HIDWORD(v98))
        {

          goto LABEL_17;
        }

        sub_1B21356F8(__src);
        v66 = *(v35 + 16);
LABEL_18:
        v67 = v3[2];
        if (__OFADD__(v67, v66))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v68 = v3[3] >> 1, v68 < v67 + v66))
        {
          sub_1B213B944();
          v3 = v69;
          v68 = v69[3] >> 1;
        }

        if (*(v35 + 16))
        {
          if (v68 - v3[2] < v66)
          {
            goto LABEL_41;
          }

          swift_arrayInitWithCopy();

          if (v66)
          {
            v70 = v3[2];
            v71 = __OFADD__(v70, v66);
            v72 = v70 + v66;
            if (v71)
            {
              goto LABEL_42;
            }

            v3[2] = v72;
          }
        }

        else
        {

          if (v66)
          {
            goto LABEL_40;
          }
        }

        v8 += 21;
        if (!--v7)
        {
          goto LABEL_32;
        }
      }

      v55 = sub_1B21263F8(v23, v24, v30, v25, v26, v27, v28, v29, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v119, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0]);
      sub_1B21263F8(v55, v56, v57, v58, v59, v60, v61, v62, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v114, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0]);

      v63 = sub_1B211FE5C();
      sub_1B2113A44(v63, v64, v65);

LABEL_16:
      v7 = v118;
LABEL_17:
      sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
      v35 = swift_allocObject();
      *(v35 + 16) = v110;
      memcpy((v35 + 32), __src, 0xA3uLL);
      v66 = 1;
      goto LABEL_18;
    }

LABEL_32:
    LOBYTE(v6) = BYTE4(v83);
  }

  else
  {
  }

  v73 = v3[2];
  if (v73)
  {
    memcpy(__dst, v3 + 4, 0xA3uLL);
    if (v73 == 1)
    {
      sub_1B2127DC0(__dst, __src);

      sub_1B21D0A74(v74, __dst);
      return;
    }

    __src[0] = v5;
    __src[1] = v4;
    v76 = v101;
    v75 = v104;
    __src[2] = v101;
    __src[3] = v104;
    v77 = v107;
    LOBYTE(__src[4]) = v107;
    BYTE1(__src[4]) = v6;
    BYTE2(__src[4]) = BYTE4(v89);
    __src[5] = v3;
    v79 = sub_1B213B9B8(__src);
    sub_1B21D0A74(v79, __src);
  }

  else
  {

    v76 = v101;
    v75 = v104;
    __dst[0] = v101;
    __dst[1] = v104;
    v77 = v107;
    LOBYTE(__dst[2]) = v107;
    v78 = sub_1B2127D7C(__dst);
    sub_1B21D0A74(v78, __dst);
  }

  sub_1B2113A20(v76, v75, v77);
}

void sub_1B213B894()
{
  sub_1B2114660();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1B213B974(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B213B998(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 168 * a2);
  }

  return result;
}

uint64_t sub_1B213B9B8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x480000u) >> 16;
  return result;
}

uint64_t sub_1B213B9FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v21 = a5;
  switch((a21 >> 19) & 0x1F)
  {
    case 0u:
    case 3u:
    case 5u:
      goto LABEL_14;
    case 1u:

      goto LABEL_2;
    case 2u:

      return sub_1B2113A44(result, a2, a3);
    case 4u:
    case 0xAu:

      return sub_1B214E054(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
    case 6u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
LABEL_2:

    case 9u:

      sub_1B2113A44(a3, a4, v21);
      goto LABEL_14;
    case 0x11u:

LABEL_14:

      break;
    default:
      return result;
  }

  return result;
}

void *sub_1B213BBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2111ADC();
  memcpy(v5, v6, v7);
  sub_1B2111ADC();
  memcpy(v8, v9, v10);
  v11 = sub_1B2127E1C(v143);
  switch(v11)
  {
    case 1:
      v71 = sub_1B2127E38(v143);
      v72 = *(v71 + 8);
      v73 = *(v71 + 16);
      sub_1B2121220();

      goto LABEL_3;
    case 2:
    case 4:
    case 10:
    case 19:
    case 20:
      v12 = sub_1B2127E38(v143);
LABEL_3:
      sub_1B211A2B4(v12, v142);
      return sub_1B2121220();
    case 3:
      v36 = sub_1B2127E38(v143);
      v37 = *v36;
      v38 = *(*v36 + 16);
      if (v38)
      {
        sub_1B2121220();
        v139[0] = MEMORY[0x1E69E7CC0];
        sub_1B2115CA0();
        sub_1B213CA68();
        v39 = v139[0];
        v40 = v37 + 32;
        do
        {
          sub_1B213CBAC();
          memcpy(v41, v42, v43);
          sub_1B213CBAC();
          memcpy(v44, v45, v46);
          sub_1B2127DC0(&v140[21], __dst);
          v47 = sub_1B211725C();
          sub_1B213BBD8(v47);
          sub_1B21356F8(&v140[21]);
          v139[0] = v39;
          v49 = v39[2];
          v48 = v39[3];
          if (v49 >= v48 >> 1)
          {
            sub_1B211156C(v48);
            sub_1B213CA68();
            v39 = v139[0];
          }

          v39[2] = v49 + 1;
          sub_1B212D6D8(&v39[21 * v49 + 4]);
          v40 += 168;
          --v38;
        }

        while (v38);
      }

      else
      {
        sub_1B2121220();
        v39 = MEMORY[0x1E69E7CC0];
      }

      if (!v39[2])
      {
        goto LABEL_59;
      }

      sub_1B21356F8(v142);
      v128 = v39[2];
      if (!v128)
      {
        __break(1u);
LABEL_59:

        __break(1u);
        JUMPOUT(0x1B213C664);
      }

      memcpy(__dst, v39 + 4, 0xA3uLL);
      if (v128 == 1)
      {
        sub_1B2127DC0(__dst, &v140[21]);

        v129 = __dst;
      }

      else
      {
        v140[0] = v39;
        sub_1B218184C(v140);
        v129 = v140;
      }

      v11 = memcpy(&v140[21], v129, 0xA3uLL);
      v97 = &v140[21];
      return sub_1B211A2B4(v11, v97);
    case 5:
      v140[0] = *sub_1B2127E38(v143);
      sub_1B2121220();
      v50 = sub_1B211725C();
      sub_1B2153E58(v50, v51);
      sub_1B21356F8(v142);
      __dst[0] = v140[21];
      v11 = sub_1B2153E14(__dst);
      goto LABEL_56;
    case 6:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v24, v25, v26);
      sub_1B21D09A0();
      memcpy(v27, v28, v29);
      sub_1B2142348();
      memcpy(v30, v31, v32);
      v33 = *(v2 + 515);
      sub_1B212E2C8();
      sub_1B212338C();
      v34 = sub_1B211725C();
      sub_1B213BBD8(v34);
      sub_1B213BBD8(a1);
      sub_1B21CF574(v33, a2);
      memcpy(v140, __src, 0xA3uLL);
      sub_1B21356F8(v140);
      sub_1B21D0A5C(&v140[21]);
      sub_1B21356F8(&v140[21]);
      v35 = v139;
      goto LABEL_32;
    case 7:
      sub_1B212D02C();
      v83 = v2[2];
      v84 = v2[3];
      memcpy(__dst, v2 + 4, 0xA3uLL);
      memcpy(v139, v2 + 25, 0xA3uLL);
      sub_1B212E2C8();
      sub_1B212338C();
      sub_1B213BBD8(a1);
      sub_1B21CF9AC(v83, v84, v140, a2);
      goto LABEL_25;
    case 8:
      sub_1B212D02C();
      v86 = v2[2];
      v85 = v2[3];
      v88 = v2[4];
      v87 = v2[5];
      memcpy(__dst, v2 + 6, 0xA3uLL);
      memcpy(v138, v2 + 27, 0xA3uLL);
      memcpy(v139, v2 + 48, 0xA3uLL);
      sub_1B212E2C8();
      sub_1B212338C();
      sub_1B213BBD8(a1);
      memcpy(__dst, v139, 0xA3uLL);
      if (sub_1B213EA68(__dst) == 1)
      {
        v89 = v139;
      }

      else
      {
        sub_1B212D6D8(v138);
        memcpy(v134, v139, 0xA3uLL);
        sub_1B2127DC0(v134, v137);
        sub_1B213BBD8(a1);
        sub_1B21D0A5C(v135);
        sub_1B21356F8(v135);
        memcpy(v137, __src, 0xA3uLL);
        nullsub_1(v137);
        v89 = v137;
      }

      memcpy(v138, v89, 0xA3uLL);
      v127 = swift_allocObject();
      v127[2] = v86;
      v127[3] = v85;
      v127[4] = v88;
      v127[5] = v87;
      memcpy(v127 + 6, v140, 0xA3uLL);
      sub_1B214CC30(v127 + 27);
      sub_1B21D0A5C(v127 + 48);

      sub_1B21356F8(v142);
      v137[0] = v127;
      v11 = sub_1B21D0530(v137);
      v97 = v137;
      return sub_1B211A2B4(v11, v97);
    case 9:
      v52 = sub_1B2127E38(v143);
      v53 = *(v52 + 8);
      v54 = *(v52 + 16);
      v55 = *(v52 + 24);
      v56 = *(v52 + 32);
      v57 = *(v52 + 33);
      v58 = *(v52 + 34);
      v59 = *(v52 + 40);
      v138[0] = *v52;
      v138[1] = v53;
      v138[2] = v54;
      v138[3] = v55;
      LOBYTE(v138[4]) = v56;
      BYTE1(v138[4]) = v57;
      BYTE2(v138[4]) = v58;
      v60 = *(v59 + 16);
      if (v60)
      {
        v130 = v56;
        v132 = v55;
        sub_1B2121220();
        v137[0] = MEMORY[0x1E69E7CC0];
        sub_1B213CA68();
        v61 = v137[0];
        v62 = v60 - 1;
        for (i = 32; ; i += 168)
        {
          memcpy(&v140[21], (v59 + i), 0xA3uLL);
          memcpy(v140, (v59 + i), 0xA3uLL);
          sub_1B2127DC0(&v140[21], v139);
          v64 = sub_1B211725C();
          sub_1B213BBD8(v64);
          sub_1B21356F8(&v140[21]);
          v137[0] = v61;
          v66 = v61[2];
          v65 = v61[3];
          if (v66 >= v65 >> 1)
          {
            sub_1B211156C(v65);
            sub_1B213CA68();
            v61 = v137[0];
          }

          v61[2] = v66 + 1;
          sub_1B212D6D8(&v61[21 * v66 + 4]);
          if (!v62)
          {
            break;
          }

          --v62;
        }

        v55 = v132;
        v56 = v130;
      }

      else
      {
        sub_1B2121220();

        v61 = MEMORY[0x1E69E7CC0];
      }

      sub_1B213B4BC(v138, v61, a2);

      return sub_1B2113A44(v54, v55, v56);
    case 11:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v98, v99, v100);
      sub_1B2114090();
      memcpy(v101, v102, v103);
      v104 = *(v2 + 346);
      sub_1B212E2C8();
      sub_1B2116A68();
      sub_1B214C980(a1, v140);
      sub_1B21D0994();
      v105 = swift_allocObject();
      v106 = sub_1B211E4F4(v105);
      sub_1B214CC30(v106);
      memcpy(&v140[2], v140, 0xA2uLL);
      BYTE2(v140[22]) = v104;
      sub_1B21356F8(v142);
      sub_1B213CF3C();
      v11 = sub_1B214C468(v107);
      goto LABEL_56;
    case 12:
      v18 = sub_1B2127E38(v143);
      v20 = *(*v18 + 16);
      v19 = *(*v18 + 24);
      v21 = *(*v18 + 32);
      memcpy(__dst, (*v18 + 40), 0xA3uLL);
      sub_1B212E2C8();
      sub_1B2116A68();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      sub_1B214CC30((v22 + 40));

      sub_1B21356F8(v142);
      sub_1B213CF3C();
      v11 = sub_1B21D0684(v23);
      goto LABEL_56;
    case 13:
      sub_1B212D02C();
      v67 = *(v2 + 16);
      memcpy(__dst, v2 + 3, 0xA3uLL);
      memcpy(v139, v2 + 24, 0xA3uLL);
      sub_1B212E2C8();
      sub_1B212338C();
      sub_1B213BBD8(a1);
      sub_1B21353B0(v67, v140, a2);
LABEL_25:
      sub_1B21D0A5C(&v140[21]);
      sub_1B21356F8(&v140[21]);
      v35 = v140;
      goto LABEL_32;
    case 14:
      v14 = sub_1B2127E38(v143);
      v15 = *(*v14 + 16);
      memcpy(__dst, (*v14 + 24), 0xA3uLL);
      sub_1B212E2C8();
      sub_1B2116A68();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      sub_1B214CC30((v16 + 24));

      sub_1B21356F8(v142);
      sub_1B213CF3C();
      v11 = sub_1B21D0640(v17);
      goto LABEL_56;
    case 15:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v74, v75, v76);
      sub_1B211D694();
      memcpy(v77, v78, v79);
      sub_1B212E2C8();
      sub_1B2127DC0(v140, &v140[21]);
      sub_1B2116A68();
      sub_1B21356F8(v140);
      v80 = swift_allocObject();
      v81 = sub_1B211E4F4(v80);
      sub_1B214CC30(v81);
      sub_1B21356F8(v142);
      sub_1B213CF3C();
      v11 = sub_1B21D03D8(v82);
      goto LABEL_56;
    case 16:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v108, v109, v110);
      v111 = v2[23];
      v112 = v2[24];
      sub_1B212E2C8();
      sub_1B2116A68();
      v140[0] = v111;
      v140[1] = v112;
      sub_1B21CF728(v140, a2);
      v35 = &v140[21];
LABEL_32:
      memcpy(__dst, v35, 0xA3uLL);
      sub_1B21356F8(__dst);
      return sub_1B21356F8(v142);
    case 17:
      v114 = sub_1B2127E38(v143);
      v115 = *v114;
      v116 = *(v114 + 8);
      v117 = *(v114 + 16);
      v118 = *(v114 + 17);
      v119 = *(v114 + 24);
      v120 = *(v119 + 16);
      if (v120)
      {
        v131 = *(v114 + 16);
        v133 = *(v114 + 8);
        sub_1B2121220();
        v138[0] = MEMORY[0x1E69E7CC0];
        sub_1B2115CA0();
        sub_1B213CA68();
        v121 = v138[0];
        v122 = v120 - 1;
        for (j = 32; ; j += 168)
        {
          memcpy(&v140[21], (v119 + j), 0xA3uLL);
          memcpy(v140, (v119 + j), 0xA3uLL);
          sub_1B2127DC0(&v140[21], v139);
          v124 = sub_1B211725C();
          sub_1B213BBD8(v124);
          sub_1B21356F8(&v140[21]);
          v138[0] = v121;
          v126 = *(v121 + 16);
          v125 = *(v121 + 24);
          if (v126 >= v125 >> 1)
          {
            sub_1B211156C(v125);
            sub_1B21234E8();
            sub_1B213CA68();
            v121 = v138[0];
          }

          *(v121 + 16) = v126 + 1;
          sub_1B212D6D8((v121 + 168 * v126 + 32));
          if (!v122)
          {
            break;
          }

          --v122;
        }

        v116 = v133;
        v117 = v131;
      }

      else
      {
        sub_1B2121220();

        v121 = MEMORY[0x1E69E7CC0];
      }

      __dst[0] = v115;
      __dst[1] = v116;
      LOBYTE(__dst[2]) = v117;
      BYTE1(__dst[2]) = v118;
      __dst[3] = v121;
      v11 = sub_1B2179374(__dst);
      goto LABEL_56;
    case 18:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v90, v91, v92);
      v93 = *(v2 + 179);
      sub_1B212E2C8();
      sub_1B2116A68();
      v94 = swift_allocObject();
      v95 = sub_1B211E4F4(v94);
      sub_1B214CC30(v95);
      *(v2 + 179) = v93;
      sub_1B21356F8(v142);
      sub_1B213CF3C();
      v11 = sub_1B21D04A8(v96);
LABEL_56:
      v97 = __dst;
      return sub_1B211A2B4(v11, v97);
    case 21:
      v97 = v142;
      return sub_1B211A2B4(v11, v97);
    case 22:
      __dst[0] = a1;
      v113 = sub_1B21D05FC(__dst);
      sub_1B211A2B4(v113, __dst);

    default:
      v68 = sub_1B2127E38(v143);
      v69 = v68[1];
      __dst[0] = *v68;
      __dst[1] = v69;
      __dst[2] = a1;
      v70 = sub_1B213CBE4(__dst);
      sub_1B211A2B4(v70, __dst);
      sub_1B212E2C8();
  }
}

uint64_t sub_1B213C6D0()
{
  sub_1B2114F84();
  v1 = sub_1B212CE50();
  sub_1B214DF8C(v2, v3, v4, v5, v6, v7, v8, v9, v1.n128_i64[0], v1.n128_i64[1], v10, v11, v12, v13, v14, v15, v16, v17, *(v0 + 328), *(v0 + 336), *(v0 + 344));
  sub_1B21D0994();

  return swift_deallocObject();
}

uint64_t sub_1B213C72C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  sub_1B211668C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 208) | (*(v0 + 210) << 16), *(v0 + 112), *(v0 + 128), *(v0 + 144), *(v0 + 160), *(v0 + 176));
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  sub_1B211668C(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 376) | (*(v0 + 378) << 16), *(v0 + 280), *(v0 + 296), *(v0 + 312), *(v0 + 328), *(v0 + 344));
  v7 = *(v0 + 448);
  v8 = *(v0 + 488);
  v9 = *(v0 + 544) | (*(v0 + 546) << 16);
  if (v7 >> 1 == 0xFFFFFFFF)
  {
    v10 = v8 != 0;
    v11 = v8 == 1;
  }

  else
  {
    v10 = 1;
    v11 = 0;
  }

  if (!v11 && v10 || (v9 & 0xFE7E00) != 0)
  {
    sub_1B213B9FC(*(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7, *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), v8, *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536), v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1B213C86C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 184) | (*(v0 + 186) << 16), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_1B213C8E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_1B211668C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 200) | (*(v0 + 202) << 16), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168));

  return swift_deallocObject();
}

void sub_1B213C9B8()
{
  sub_1B2111830();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B213CA68()
{
  v1 = *v0;
  sub_1B213C9B8();
  *v0 = v2;
}

void sub_1B213CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v8 = a4 + 16 * v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
}

uint64_t sub_1B213CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_1B2183238(a1, &a17, &a9, v17);
}

uint64_t sub_1B213CB2C()
{

  return type metadata accessor for Row();
}

void *sub_1B213CB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(a1, &__src, 0xD2uLL);
}

void *sub_1B213CBB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0xA3uLL);
}

uint64_t sub_1B213CBE4(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x80000u) >> 16;
  return result;
}

void *sub_1B213CC28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0xA2uLL);
}

uint64_t sub_1B213CC8C()
{
  v2 = *(v0 + 3368);
  *(v0 + 3360) = *(v0 + 3360);
  *(v0 + 3368) = v2;
}

void *sub_1B213CCB0(void *a1)
{

  return memcpy(a1, v1, 0xA3uLL);
}

uint64_t sub_1B213CCC8()
{

  return sub_1B2252190();
}

uint64_t sub_1B213CD08()
{
  v2 = *(v0 + 16);

  return type metadata accessor for QueryInterfaceRequest();
}

uint64_t sub_1B213CD34()
{
  v2 = *(v0 + 2624);
  sub_1B21139A0((v0 + 2592), v1);
  v3 = *(v2 + 8);

  return sub_1B2127B14(v0 + 3536, v0 + 2088);
}

void sub_1B213CD78()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B213CDAC()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t sub_1B213CDFC()
{
  v2 = *(v1 - 128);
  v3 = *(v2 + 40);
  v4 = *(*(*(v2 + 8) + 8) + 8);
  return v0;
}

void sub_1B213CE30()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B213CE68()
{

  return swift_dynamicCast();
}

uint64_t sub_1B213CE8C()
{

  return sub_1B21CF574(0, v0);
}

char *sub_1B213CED0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t sub_1B213CF0C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x250] = a1;
  STACK[0x258] = v1;
  return v2;
}

uint64_t sub_1B213CF20()
{
}

void sub_1B213CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v21;
  a20 = v23;
  v24 = v20;
  v159 = v25;
  v26 = *(v22 + 16);
  if (v27)
  {
    v28 = 0;
    v158 = v22 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    v157 = *(v22 + 16);
    while (v28 != v26)
    {
      v30 = v158 + 24 * v28;
      v32 = *v30;
      v31 = *(v30 + 8);
      if (*(v30 + 16))
      {
        v33 = sub_1B211619C();
        sub_1B214C970(v33, v34, v35);

        v36 = sub_1B213CF80(v159, v32, (v31 & 1) == 0);
        if (v24)
        {
          v149 = sub_1B211619C();
          sub_1B214DCD8(v149, v150, v151);
LABEL_54:
          v140 = sub_1B211619C();
LABEL_55:
          sub_1B214DCD8(v140, v141, v142);

          break;
        }

        v37 = v36;
        v38 = sub_1B211619C();
        sub_1B214DCD8(v38, v39, v40);
        v41 = sub_1B211619C();
        sub_1B214DCD8(v41, v42, v43);
      }

      else
      {
        v44 = sub_1B2115178();
        sub_1B214C970(v44, v45, v46);
        v47 = sub_1B2115178();
        sub_1B214C970(v47, v48, v49);

        v32(&a10, v159);
        if (v24)
        {
          v143 = sub_1B2115178();
          sub_1B214DCD8(v143, v144, v145);
          v146 = sub_1B2115178();
          sub_1B214DCD8(v146, v147, v148);

          break;
        }

        v155 = v28;
        v156 = 0;
        v50 = a10;
        v51 = *(a10 + 16);
        if (v51)
        {
          v164 = MEMORY[0x1E69E7CC0];
          sub_1B214D708();
          v37 = v164;
          v52 = v51 - 1;
          v53 = 32;
          while (1)
          {
            memcpy(__dst, (v50 + v53), 0xA3uLL);
            memmove(v163, (v50 + v53), 0xA3uLL);
            switch(sub_1B214DC10(v163))
            {
              case 2u:
                v70 = sub_1B213D4C8(v163);
                sub_1B21229D4(v70, v71, v72, v73, v74, v75, v76, v77, v152, v153, v154, v155, v156, v157, v158, v159, __src[0]);
                sub_1B21C7F70(__src);
                goto LABEL_15;
              case 3u:
                v78 = sub_1B213D4C8(v163);
                sub_1B21229D4(v78, v79, v80, v81, v82, v83, v84, v85, v152, v153, v154, v155, v156, v157, v158, v159, __src[0]);
                sub_1B21C7F2C(__src);
                goto LABEL_15;
              case 4u:
                v62 = sub_1B213D4C8(v163);
                sub_1B21229D4(v62, v63, v64, v65, v66, v67, v68, v69, v152, v153, v154, v155, v156, v157, v158, v159, __src[0]);
                sub_1B21C7E84(__src);
                goto LABEL_15;
              case 5u:
                goto LABEL_64;
              default:
                v54 = sub_1B213D4C8(v163);
                sub_1B21229D4(v54, v55, v56, v57, v58, v59, v60, v61, v152, v153, v154, v155, v156, v157, v158, v159, __src[0]);
                sub_1B21C7FB4(__src);
LABEL_15:
                memcpy(v161, __src, sizeof(v161));
                sub_1B21C7ED0(__dst, __src);
                v164 = v37;
                v87 = *(v37 + 16);
                v86 = *(v37 + 24);
                if (v87 >= v86 >> 1)
                {
                  sub_1B211156C(v86);
                  sub_1B214D708();
                  v37 = v164;
                }

                *(v37 + 16) = v87 + 1;
                memcpy((v37 + 168 * v87 + 32), v161, 0xA3uLL);
                if (!v52)
                {

                  v88 = sub_1B2115178();
                  sub_1B214DCD8(v88, v89, v90);
                  v91 = sub_1B2115178();
                  sub_1B214DCD8(v91, v92, v93);
                  v94 = sub_1B2115178();
                  sub_1B214DCD8(v94, v95, v96);
                  goto LABEL_21;
                }

                --v52;
                v53 += 168;
                break;
            }
          }
        }

        v97 = sub_1B2115178();
        sub_1B214DCD8(v97, v98, v99);
        v100 = sub_1B2115178();
        sub_1B214DCD8(v100, v101, v102);

        v37 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v28 = v155;
        v24 = v156;
      }

      v103 = *(v37 + 16);
      v104 = *(v29 + 16);
      if (__OFADD__(v104, v103))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        sub_1B213D4C8(v163);
        sub_1B2111608();
        sub_1B2112A88();
        sub_1B212E2BC();
        sub_1B2252EC0();
        __break(1u);
        JUMPOUT(0x1B213D4B0);
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v104 + v103 > *(v29 + 24) >> 1)
      {
        sub_1B214DCA8();
        v29 = v105;
      }

      ++v28;
      if (*(v37 + 16))
      {
        v106 = *(v29 + 16);
        v107 = *(v29 + 24);
        sub_1B2116A58();
        if (v109 != v110)
        {
          goto LABEL_61;
        }

        sub_1B21234D0(v108);
        swift_arrayInitWithCopy();

        v26 = v157;
        if (v103)
        {
          v111 = *(v29 + 16);
          v110 = __OFADD__(v111, v103);
          v112 = v111 + v103;
          if (v110)
          {
            goto LABEL_63;
          }

          *(v29 + 16) = v112;
        }
      }

      else
      {

        v26 = v157;
        if (v103)
        {
          __break(1u);
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
LABEL_33:
    v113 = (v22 + 48);
    for (i = MEMORY[0x1E69E7CC0]; v26; --v26)
    {
      v116 = *(v113 - 2);
      v115 = *(v113 - 1);
      if (*v113)
      {
        v117 = *(v113 - 2);

        v118 = sub_1B213CF80(v159, v116, v115 & 1);
        if (v24)
        {
          goto LABEL_54;
        }

        v119 = v118;
        v120 = sub_1B211619C();
        sub_1B214DCD8(v120, v121, v122);
      }

      else
      {
        v123 = sub_1B2115178();
        sub_1B214C970(v123, v124, v125);

        v116(v163, v159);
        v126 = sub_1B2115178();
        if (v24)
        {
          sub_1B214DCD8(v126, v127, v128);
          v140 = sub_1B2115178();
          goto LABEL_55;
        }

        sub_1B214DCD8(v126, v127, v128);
        v129 = sub_1B2115178();
        sub_1B214DCD8(v129, v130, v131);
        v119 = v163[0];
      }

      v132 = *(v119 + 16);
      v133 = *(i + 16);
      if (__OFADD__(v133, v132))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v133 + v132 > *(i + 24) >> 1)
      {
        sub_1B214DCA8();
        i = v134;
      }

      if (*(v119 + 16))
      {
        v135 = *(i + 16);
        v136 = *(i + 24);
        sub_1B2116A58();
        if (v109 != v110)
        {
          goto LABEL_60;
        }

        sub_1B21234D0(v137);
        swift_arrayInitWithCopy();

        if (v132)
        {
          v138 = *(i + 16);
          v110 = __OFADD__(v138, v132);
          v139 = v138 + v132;
          if (v110)
          {
            goto LABEL_62;
          }

          *(i + 16) = v139;
        }
      }

      else
      {

        if (v132)
        {
          goto LABEL_59;
        }
      }

      v113 += 24;
    }
  }

  sub_1B2112FDC();
}

uint64_t sub_1B213D4C8(uint64_t result)
{
  v1 = (*(result + 160) | (*(result + 162) << 16)) & 0xF9BFFF;
  *(result + 160) &= ~0x4000u;
  *(result + 162) = BYTE2(v1);
  return result;
}

void sub_1B213D4F4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v20 = *(v0 + 72);
  v4 = *(v2 + 16);

  v5 = (v2 + 40);
  if (v4)
  {
    while (*(v1 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v8 = sub_1B211E590();
      if ((v9 & 1) == 0)
      {
        goto LABEL_11;
      }

      v10 = (*(v1 + 56) + 216 * v8);
      memcpy(__dst, v10, sizeof(__dst));
      memcpy(__src, v10, sizeof(__src));
      memmove(v24, v10, 0xD8uLL);
      v25[0] = v7;
      v25[1] = v6;
      memcpy(v26, __src, sizeof(v26));

      sub_1B21A63AC(__dst, v21);
      sub_1B21A63AC(v24, v21);
      sub_1B212AC5C(v25, &qword_1EB7A1CB8, &qword_1B225A4C0);
      memcpy(v28, v24, sizeof(v28));
      v27[0] = v7;
      v27[1] = v6;
      v11 = memcpy(v29, &v24[48], sizeof(v29));
      v12 = sub_1B213D4F4(v11);
      v14 = v13;
      sub_1B21619D8(&qword_1EB7A0EB0, &unk_1B225BB30);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B22546B0;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14 & 1;
      *(v15 + 48) = 1;
      v16 = *(v3 + 16);

      if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v3 + 24) >> 1, v18 = v3, v17 <= v16))
      {
        sub_1B2162224();
        v18 = v19;
        v17 = *(v19 + 24) >> 1;
      }

      if (v17 <= *(v18 + 16))
      {
        goto LABEL_12;
      }

      swift_arrayInitWithCopy();

      ++*(v18 + 16);
      sub_1B212AC5C(v27, &qword_1EB7A1CB8, &qword_1B225A4C0);

      v5 += 2;
      --v4;
      v3 = v18;
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t sub_1B213D76C(char a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (*(v4[10] + 16))
  {
    goto LABEL_2;
  }

  v5 = a1;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12._countAndFlagsBits = *v4;
  v12._object = v10;
  v13 = Database.tableExists(_:)(v12);
  if (v14)
  {
    return v5 & 1;
  }

  if (v13)
  {
    memcpy(__dst, a3, 0xA3uLL);
    if (sub_1B213EA68(__dst) != 1)
    {
      memcpy(v23, __dst, sizeof(v23));
      memcpy(__src, a3, 0xA3uLL);
      sub_1B2127DC0(__src, v22);
      v20 = sub_1B213EA80();
      memcpy(v22, v23, 0xA3uLL);
      sub_1B21356F8(v22);
      v21 = sub_1B213FF40(v9, v10, v20);

      if (v21)
      {
        v5 = 1;
        return v5 & 1;
      }
    }
  }

  if (*(a4 + 16))
  {
LABEL_2:
    v5 = 0;
  }

  else
  {
    v16 = *(a2 + 16);
    for (i = (a2 + 32); ; i += 184)
    {
      v18 = v16-- != 0;
      v5 = v18;
      if (!v18)
      {
        break;
      }

      memcpy(__dst, i, 0xB8uLL);
      if (sub_1B213A580(__dst) - 1 <= 1)
      {
        v19 = sub_1B213AA9C(__dst);
        memcpy(__src, v19, 0xA3uLL);
        memcpy(v23, __src, sizeof(v23));
        if (sub_1B21CE8F0())
        {
          break;
        }
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_1B213D95C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B213DA88();
  if (v3)
  {
    return v6 & 1;
  }

  v7 = result;
  v18 = a3;
  v8 = (result + 40);
  v9 = -*(result + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      v6 = 0;
      return v6 & 1;
    }

    if (++v10 >= *(v7 + 16))
    {
      break;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    v13 = sub_1B2111664();
    sub_1B213E100(v13, v14);
    v15 = sub_1B213E114(v18);
    v8 += 2;
    v16 = sub_1B2111664();
    result = sub_1B213EA54(v16, v17);
    if (v15)
    {

      v6 = 1;
      return v6 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B213DA88()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = *(v0 + v3);

    return v4;
  }

  type metadata accessor for Row();
  *&v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v6 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v7 = static Row.fetchAll(_:sql:arguments:adapter:)(v0, 0xD000000000000014, 0x80000001B226E560, &v41, &v45);

  sub_1B212AC5C(&v45, &qword_1EB7A1370, &unk_1B2257580);
  if (v1)
  {
    return v4;
  }

  v8 = sub_1B2116B08(v7);
  if (!v8)
  {

    v4 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v50 = v4;
    v23 = *(v4 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = 40;
      while (*(v4 + v25) != 1)
      {
        ++v24;
        v25 += 16;
        if (v23 == v24)
        {
          goto LABEL_43;
        }
      }

      sub_1B214A77C(v24, 0);
      v4 = v50;
    }

LABEL_43:
    v26 = *(v2 + v3);
    *(v2 + v3) = v4;

    return v4;
  }

  v9 = v8;
  v31 = v3;
  v32 = v0;
  v49 = v6;
  sub_1B2147194();
  if (v9 < 0)
  {
    goto LABEL_47;
  }

  v10 = 0;
  v4 = v49;
  v35 = v7;
  v36 = v7 & 0xC000000000000001;
  v33 = v7 & 0xFFFFFFFFFFFFFF8;
  v34 = v9;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v36)
    {
      v12 = sub_1B2111664();
      v13 = MEMORY[0x1B27427E0](v12);
    }

    else
    {
      if (v10 >= *(v33 + 16))
      {
        goto LABEL_46;
      }

      v13 = *(v7 + 8 * v10 + 32);
    }

    if (*(v13 + 72) <= 1)
    {
      goto LABEL_49;
    }

    v7 = *(v13 + 64);
    if (v7)
    {
      if (sqlite3_column_type(*(v13 + 64), 1) == 5)
      {
        goto LABEL_50;
      }

      if (!sqlite3_column_text(v7, 1))
      {
        goto LABEL_48;
      }

      v14 = sub_1B2252400();
    }

    else
    {
      v14 = sub_1B212614C();
    }

    v16 = v14;
    v17 = v15;
    v18 = v14 == 1852399981 && v15 == 0xE400000000000000;
    if (v18 || (sub_1B2135670() & 1) != 0)
    {

      v16 = 0;
      v17 = 0;
    }

    else
    {
      if (v16 == 1886217588 && v17 == 0xE400000000000000)
      {

        goto LABEL_35;
      }

      v22 = sub_1B2135670();

      if (v22)
      {

LABEL_35:
        v16 = 0;
        v17 = 1;
      }
    }

    v49 = v4;
    v19 = *(v4 + 16);
    if (v19 >= *(v4 + 24) >> 1)
    {
      sub_1B213CC80();
      sub_1B2147194();
      v4 = v49;
    }

    *(v4 + 16) = v19 + 1;
    v20 = v4 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    ++v10;
    v7 = v35;
    if (v11 == v34)
    {

      v3 = v31;
      v2 = v32;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_1B2111608();
  sub_1B2112A88();
  sub_1B2252EC0();
  __break(1u);
LABEL_50:
  v41 = xmmword_1B2259350;
  LOBYTE(v42) = 1;

  RowDecodingContext.init(row:key:)(v28, &v41, &v45);
  sub_1B21A2FC0();
  sub_1B2118078();
  swift_allocError();
  v30 = v29;
  v41 = v45;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  sub_1B21320F0(v7, 1, &v39);
  v37 = v39;
  v38 = v40;
  sub_1B2183238(MEMORY[0x1E69E6158], &v41, &v37, v30);
  sub_1B2113A44(v37, *(&v37 + 1), v38);
  sub_1B218450C(&v45);
  swift_willThrow();
  sub_1B213CE18();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B213DF08()
{
  sub_1B2117A7C();
  v2 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_1B2122C80();
  sub_1B213E2CC(v5, v6);
  v7 = v23;
  v35[0] = v24;
  v33 = v26;
  v34 = v25;
  v32 = v27;
  swift_endAccess();
  sub_1B212AC5C(v35, &qword_1EB7A21B0, &qword_1B225B690);
  sub_1B212AC5C(&v34, &qword_1EB7A21B8, &qword_1B225B698);
  sub_1B212AC5C(&v33, &qword_1EB7A21C0, &qword_1B225B6A0);
  sub_1B212AC5C(&v32, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (!v23)
  {

    v8 = sub_1B2122C80();
    v10 = sub_1B21471E0(v8, v9);
    v12 = sub_1B21472B8(v0, v10, v11);
    if (!v1)
    {
      v7 = v12;
      swift_beginAccess();
      v13 = *v2;
      v14 = v2[1];

      v15 = sub_1B2122C80();
      sub_1B213E100(v15, v16);
      sub_1B2122C80();
      sub_1B213E2CC(v14, v17);
      v31 = v28;
      sub_1B212AC5C(&v31, &qword_1EB7A21D0, &qword_1B225B6B0);
      v35[1] = v7;
      v36 = v29;
      v37 = v30;
      v18 = v2[1];
      swift_isUniquelyReferenced_nonNull_native();
      v22 = v2[1];
      sub_1B2148D50();
      v2[1] = v22;
      v19 = sub_1B2122C80();
      sub_1B213EA54(v19, v20);
      swift_endAccess();
    }
  }

  return v7;
}

uint64_t sub_1B213E100(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B213E114(char a1)
{
  v2 = v1;
  v4 = sub_1B2252220();
  v6 = v5;
  v7 = sub_1B213DF08();
  if (v1)
  {

    return v2 & 1;
  }

  else
  {
    v8 = sub_1B213E598(a1, v7);

    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 56);
    v12 = (v9 + 63) >> 6;

    v14 = 0;
    while (v11)
    {
LABEL_11:
      v16 = (*(v8 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v16;
      v18 = v16[1];
      if (sub_1B2252220() == v4 && v19 == v6)
      {

        v2 = 1;
        goto LABEL_18;
      }

      v11 &= v11 - 1;
      v21 = sub_1B22531F0();

      if (v21)
      {

        v2 = 1;
LABEL_18:

        return v2 & 1;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        v2 = 0;
        goto LABEL_18;
      }

      v11 = *(v8 + 56 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B213E2CC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B213E424(), (v5 & 1) != 0))
  {
    v6 = (*(a1 + 56) + 40 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v11 = v6[4];
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A33A8, &qword_1B226B9D8);
    sub_1B2112F9C();
    v7 = sub_1B2252190();
    sub_1B21619D8(&qword_1EB7A33B0, &qword_1B226B9E0);
    sub_1B2112F9C();
    v9 = sub_1B2252190();
    sub_1B21619D8(&qword_1EB7A33B8, &qword_1B226B9E8);
    sub_1B2112F9C();
    v10 = sub_1B2252190();
    sub_1B21619D8(&qword_1EB7A33C0, &qword_1B226B9F0);
    sub_1B2112F9C();
    result = sub_1B2252190();
    v11 = result;
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  return result;
}

unint64_t sub_1B213E424()
{
  sub_1B2117FC0();
  sub_1B21224DC();
  if (!v0)
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (v0 == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x1B2742F10](v1);
    goto LABEL_7;
  }

  MEMORY[0x1B2742F10](2);
  sub_1B211473C();
  sub_1B2252370();
LABEL_7:
  sub_1B2253470();
  v2 = sub_1B2111F44();

  return sub_1B213E4B4(v2, v3, v4);
}

unint64_t sub_1B213E4B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1B22531F0() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1B213E598(char a1, uint64_t a2)
{
  v22 = MEMORY[0x1E69E7CD0];
  v2 = a2 + 56;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a2 + 48) + ((v7 << 12) | (v9 << 6)));
    v11 = v10[3];
    v21 = v10[2];
    v12 = v10[5];
    v13 = v10[7];
    v14 = 0xE500000000000000;
    v15 = 0x7865646E69;
    switch(a1)
    {
      case 1:
        v15 = 0x656C626174;
        break;
      case 2:
        v14 = 0xE700000000000000;
        v15 = 0x72656767697274;
        break;
      case 3:
        v14 = 0xE400000000000000;
        v15 = 2003134838;
        break;
      default:
        break;
    }

    if (*v10 == v15 && v10[1] == v14)
    {

LABEL_20:

      sub_1B2139304();
    }

    else
    {
      v17 = sub_1B22531F0();

      if (v17)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      JUMPOUT(0x1B213E7E8);
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  return v22;
}

uint64_t sub_1B213E7F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C70();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1B2148CEC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1B2253420();
    sub_1B2252370();
    result = sub_1B2253470();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B213EA54(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B213EA68(uint64_t a1)
{
  if ((*(a1 + 64) >> 1) > 0x80000000)
  {
    return -(*(a1 + 64) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B213EA80()
{
  sub_1B2111ADC();
  memcpy(v1, v2, v3);
  v4 = sub_1B2127E1C(v83);
  if (v4 == 16)
  {
    sub_1B21D0AA4(v83);
    memcpy(v82, (v51 + 16), 0xA3uLL);
    v5 = v82;
    v52 = sub_1B2122C80();
    v53 = sub_1B213EA80(v52);
    if (!v0)
    {
      return v53;
    }

    return v5;
  }

  v5 = MEMORY[0x1E69E7CD0];
  switch(v4)
  {
    case 9:
      v17 = sub_1B2127E38(v83);
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 33);
      v23 = *(v17 + 34);
      v73 = *v17;
      v74 = *(v17 + 40);
      v82[0] = *v17;
      v71 = v19;
      v72 = v18;
      v82[1] = v18;
      v82[2] = v19;
      v70 = v20;
      v82[3] = v20;
      v68 = v22;
      v69 = v21;
      LOBYTE(v82[4]) = v21;
      BYTE1(v82[4]) = v22;
      v67 = v23;
      BYTE2(v82[4]) = v23;
      if (qword_1ED85DC80 != -1)
      {
LABEL_40:
        sub_1B2112AD4();
        swift_once();
      }

      v76 = xmmword_1ED85DC88;
      v77 = xmmword_1ED85DC98;
      v78 = word_1ED85DCA8;
      v79 = byte_1ED85DCAA;

      v24 = sub_1B2118388();
      sub_1B2113A20(v24, v25, v26);
      v27 = static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v82, &v76);

      v28 = sub_1B2118388();
      sub_1B2113A44(v28, v29, v30);
      if (v27)
      {
        v31 = 0;
        v84 = v5;
        v32 = *(v74 + 16);
        v33 = v74 + 32;
        while (v32 != v31)
        {
          if (v31 >= *(v74 + 16))
          {
            goto LABEL_39;
          }

          sub_1B213CBAC();
          memcpy(v34, v35, v36);
          sub_1B213CBAC();
          memcpy(v37, v38, v39);
          sub_1B2127DC0(v82, v75);
          v5 = &v76;
          v40 = sub_1B2122C80();
          sub_1B213EA80(v40);
          if (v0)
          {
            goto LABEL_25;
          }

          ++v31;
          v5 = &v84;
          sub_1B213FE4C();
          sub_1B21356F8(v82);
          v33 += 168;
        }

        return v84;
      }

      v82[0] = v73;
      v82[1] = v72;
      v82[2] = v71;
      v82[3] = v70;
      LOBYTE(v82[4]) = v69;
      BYTE1(v82[4]) = v68;
      BYTE2(v82[4]) = v67;
      if (qword_1ED85D4E8 != -1)
      {
        sub_1B21175B4();
        swift_once();
      }

      v76 = xmmword_1ED85D4F0;
      v77 = xmmword_1ED85D500;
      v78 = word_1ED85D510;
      v79 = byte_1ED85D512;

      v54 = sub_1B2113190();
      sub_1B2113A20(v54, v55, v56);
      static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v82, &v76);

      v57 = sub_1B2113190();
      sub_1B2113A44(v57, v58, v59);
      return MEMORY[0x1E69E7CD0];
    case 13:
      v41 = sub_1B2127E38(v83);
      v42 = *v41;
      v43 = *(*v41 + 16);
      memcpy(__dst, (*v41 + 24), sizeof(__dst));
      memcpy(v81, (v42 + 192), sizeof(v81));
      switch(v43)
      {
        case 1:
        case 3:
          return v5;
        default:
          memcpy(v82, (v42 + 24), 0xA3uLL);
          v5 = v82;
          v44 = sub_1B2122C80();
          v46 = sub_1B213F348(v44, v45, 1);
          if (v0)
          {
            return v5;
          }

          v48 = v47;
          if (!v47)
          {
            goto LABEL_33;
          }

          v49 = v46;
          if (sub_1B213F998())
          {
            sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1B22546B0;
            *(v50 + 32) = v49;
            *(v50 + 40) = v48;
            return sub_1B213285C(v50);
          }

LABEL_33:
          v61 = sub_1B2122C80();
          v63 = sub_1B213F348(v61, v62, 1);
          v65 = v64;
          if (!v64)
          {
            return MEMORY[0x1E69E7CD0];
          }

          v66 = v63;
          if (sub_1B213F998())
          {
            sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1B22546B0;
            *(v50 + 32) = v66;
            *(v50 + 40) = v65;
            return sub_1B213285C(v50);
          }

          break;
      }

      return MEMORY[0x1E69E7CD0];
    case 3:
      v6 = 0;
      v7 = *sub_1B2127E38(v83);
      v84 = v5;
      v8 = *(v7 + 16);
      v9 = v7 + 32;
      while (v8 != v6)
      {
        if (v6 >= *(v7 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        sub_1B213CBAC();
        memcpy(v10, v11, v12);
        sub_1B213CBAC();
        memcpy(v13, v14, v15);
        sub_1B2127DC0(v82, v75);
        v5 = &v76;
        v16 = sub_1B2122C80();
        sub_1B213EA80(v16);
        if (v0)
        {
LABEL_25:

          sub_1B21356F8(v82);
          return v5;
        }

        ++v6;
        v5 = &v84;
        sub_1B213FE4C();
        sub_1B21356F8(v82);
        v9 += 168;
      }

      return v84;
  }

  return v5;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v12 || (v13 = sub_1B22531F0(), result = 0, (v13 & 1) != 0))
  {
    v23 = v2;
    v24 = v3;
    v25 = v4;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    sub_1B2113A20(v2, v3, v4);
    v15 = sub_1B2113190();
    sub_1B2113A20(v15, v16, v17);
    v18 = static DatabaseValue.== infix(_:_:)(&v23, &v20);
    sub_1B2113A44(v20, v21, v22);
    sub_1B2113A44(v23, v24, v25);
    if ((v5 ^ v10))
    {
      v19 = 0;
    }

    else
    {
      v19 = v6 ^ v11 ^ 1;
    }

    if (v18)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static DatabaseValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      v54 = *a1;
      if (*(a2 + 16))
      {
        if (v7 != 1)
        {
          goto LABEL_33;
        }

        v55 = *a2;
        v56 = sub_1B2114F30();
        sub_1B2113A44(v56, v57, 1);
        v58 = sub_1B211187C();
        sub_1B2113A44(v58, v59, 1);
        return v2 == v5;
      }

      v73 = sub_1B2114F30();
      sub_1B2113A44(v73, v74, 1);
      v75 = sub_1B211187C();
      sub_1B2113A44(v75, v76, 0);
      v77 = trunc(v2);
      if (v2 > -9.22337204e18 && v2 < 9.22337204e18 && v77 == v2)
      {
        return *&v5 == v2;
      }

      return 0;
    case 2:
      if (v7 != 2)
      {
        v60 = *(a1 + 8);

        goto LABEL_33;
      }

      v23 = *a1;
      if (*&v2 != *&v5 || v3 != v6)
      {
        v25 = sub_1B22531F0();
        v26 = sub_1B211187C();
        sub_1B2113A20(v26, v27, 2);
        v28 = sub_1B2114F30();
        sub_1B2113A20(v28, v29, 2);
        v30 = sub_1B2114F30();
        sub_1B2113A44(v30, v31, 2);
        v32 = sub_1B211187C();
        v34 = 2;
        goto LABEL_27;
      }

      sub_1B2113A20(*&v23, v3, 2);
      v80 = sub_1B2114F30();
      sub_1B2113A20(v80, v81, 2);
      v82 = sub_1B2114F30();
      sub_1B2113A44(v82, v83, 2);
      v20 = sub_1B2114F30();
      v22 = 2;
LABEL_49:
      sub_1B2113A44(v20, v21, v22);
      return 1;
    case 3:
      if (v7 != 3)
      {
        v61 = sub_1B2114F30();
        sub_1B2126638(v61, v62);
        goto LABEL_33;
      }

      v35 = sub_1B2117308();
      sub_1B2113A20(v35, v36, v37);
      v38 = sub_1B2114F30();
      sub_1B2113A20(v38, v39, 3);
      v40 = sub_1B2117308();
      sub_1B2113A20(v40, v41, v42);
      v43 = sub_1B2114F30();
      sub_1B2113A20(v43, v44, 3);
      v45 = sub_1B2114F30();
      v25 = MEMORY[0x1B27418B0](v45);
      v46 = sub_1B2117308();
      sub_1B2113A44(v46, v47, v48);
      v49 = sub_1B2114F30();
      sub_1B2113A44(v49, v50, 3);
      v51 = sub_1B2114F30();
      sub_1B2113A44(v51, v52, 3);
      v32 = sub_1B2117308();
LABEL_27:
      sub_1B2113A44(v32, v33, v34);
      return v25 & 1;
    case 4:
      if (v7 != 4 || (v6 | *&v5) != 0)
      {
        goto LABEL_33;
      }

      v18 = sub_1B2114F30();
      sub_1B2113A44(v18, v19, 4);
      v20 = 0;
      v21 = 0;
      v22 = 4;
      goto LABEL_49;
    default:
      if (*(a2 + 16))
      {
        if (v7 != 1)
        {
LABEL_33:
          v63 = sub_1B211187C();
          sub_1B2113A20(v63, v64, v7);
          v65 = sub_1B2114F30();
          sub_1B2113A44(v65, v66, v4);
          v67 = sub_1B211187C();
          sub_1B2113A44(v67, v68, v7);
          return 0;
        }

        v8 = *a2;
        v9 = sub_1B2114F30();
        sub_1B2113A44(v9, v10, 0);
        v11 = sub_1B211187C();
        sub_1B2113A44(v11, v12, 1);
        v13 = trunc(v5);
        if (v5 <= -9.22337204e18 || v5 >= 9.22337204e18 || v13 != v5)
        {
          return 0;
        }

        return *&v2 == v5;
      }

      else
      {
        v69 = sub_1B2114F30();
        sub_1B2113A44(v69, v70, 0);
        v71 = sub_1B211187C();
        sub_1B2113A44(v71, v72, 0);
        return *&v2 == *&v5;
      }
  }
}

void *sub_1B213F348(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B2111ADC();
  memcpy(v7, v8, v9);
  v10 = sub_1B2127E1C(v70);
  v11 = 0;
  switch(v10)
  {
    case 9:
      v12 = sub_1B2127E38(v70);
      v11 = 0;
      if ((a3 & 1) == 0 || !*(v12 + 34))
      {
        return v11;
      }

      v64 = a1;
      v65 = a2;
      v13 = 0;
      v14 = *(v12 + 40);
      v15 = *(v14 + 16);
      v16 = v14 + 32;
      v17 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v11 = (v16 + 168 * v13);
LABEL_6:
        if (v15 != v13)
        {
          if (v13 < *(v14 + 16))
          {
            sub_1B2117AC4();
            memcpy(v18, v19, v20);
            sub_1B2117AC4();
            memcpy(v21, v22, v23);
            sub_1B2127DC0(v69, v67);
            if ((sub_1B213F998() & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v71 = v17;
              v63 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v25 = v17[2];
                sub_1B213CA68();
                v17 = v71;
              }

              v27 = v17[2];
              v26 = v17[3];
              if (v27 >= v26 >> 1)
              {
                sub_1B211156C(v26);
                sub_1B213CA68();
                v17 = v71;
              }

              ++v13;
              v17[2] = v27 + 1;
              memcpy(&v17[21 * v27 + 4], v69, 0xA3uLL);
              v16 = v63;
              continue;
            }

            sub_1B21356F8(v69);
            v11 += 21;
            ++v13;
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_63;
        }

        break;
      }

      if (v17[2] == 1)
      {
        memcpy(v69, v17 + 4, 0xA3uLL);
        sub_1B2127DC0(v69, v68);

        memcpy(v68, v69, 0xA3uLL);
        v51 = v64;
        v52 = v65;
        v50 = 1;
        goto LABEL_56;
      }

      return 0;
    case 10:
    case 11:
    case 13:
    case 14:
    case 15:
    case 18:
      return v11;
    case 12:
      sub_1B21D0AA4(v70);
      v38 = *(v37 + 16);
      v11 = *(v37 + 24);
      v39 = *(v37 + 32);
      memcpy(v66, (v37 + 40), sizeof(v66));
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      if (v38 == 45 && v11 == 0xE100000000000000)
      {
        if (v39)
        {
          return 0;
        }
      }

      else if (v39 & 1 | ((sub_1B22531F0() & 1) == 0))
      {
        return 0;
      }

      sub_1B21234E8();
LABEL_22:
      sub_1B213F348(v35, v36, v34);
      if (!v3)
      {
        sub_1B21D09AC();
      }

      return v11;
    case 16:
      sub_1B21D0AA4(v70);
      memcpy(v69, (v33 + 16), 0xA3uLL);
      v34 = a3 & 1;
      v35 = a1;
      v36 = a2;
      goto LABEL_22;
    case 17:
      v41 = sub_1B2127E38(v70);
      v11 = 0;
      if ((*(v41 + 16) & 1) != 0 || (*(v41 + 17) & 1) != 0 || (a3 & 1) == 0)
      {
        return v11;
      }

      v64 = a1;
      v65 = a2;
      v42 = *(v41 + 24);
      v45 = v41;
      v43 = *v41;
      v44 = *(v45 + 8);
      v46 = sub_1B2252230();
      v11 = v47;
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v48 = swift_allocObject();
      *(v48 + 32) = 5784904;
      *(v48 + 40) = 0xE300000000000000;
      *(v48 + 48) = 0x45544F5551;
      *(v48 + 56) = 0xE500000000000000;
      *(v48 + 16) = xmmword_1B225B140;
      v69[0] = v46;
      v69[1] = v11;
      MEMORY[0x1EEE9AC00](v48);
      v62[2] = v69;
      v49 = sub_1B2158BF0(sub_1B2158ED4, v62, v48);
      swift_setDeallocating();
      sub_1B21B7140();
      if (v49 && v42[2] == 1)
      {

        if (!v42[2])
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        memcpy(v69, v42 + 4, 0xA3uLL);
        memcpy(v68, v42 + 4, 0xA3uLL);
        sub_1B2127DC0(v69, v67);
        v50 = a3 & 1;
        v51 = v64;
        v52 = v65;
        goto LABEL_56;
      }

      if (v46 == 0x4C4C554E4649 && v11 == 0xE600000000000000)
      {
      }

      else
      {
        v54 = sub_1B22531F0();

        if ((v54 & 1) == 0)
        {
          return 0;
        }
      }

      v11 = v42;
      v58 = v42[2];
      v60 = v64;
      v59 = v65;
      if (v58 != 2)
      {
        return 0;
      }

      memcpy(v69, v11 + 25, 0xA3uLL);
      if ((sub_1B213F998() & 1) == 0)
      {
        return 0;
      }

      if (!v11[2])
      {
LABEL_64:
        __break(1u);
        JUMPOUT(0x1B213F96CLL);
      }

      memcpy(v69, v11 + 4, 0xA3uLL);
      memcpy(v68, v11 + 4, 0xA3uLL);
      sub_1B2127DC0(v69, v67);
      v50 = a3 & 1;
      v51 = v60;
      v52 = v59;
LABEL_56:
      sub_1B213F348(v51, v52, v50);
      if (v3)
      {
        memcpy(v67, v68, 0xA3uLL);
        sub_1B21356F8(v67);
      }

      else
      {
        sub_1B21D09AC();
        memcpy(v67, v68, 0xA3uLL);
        sub_1B21356F8(v67);
      }

      return v11;
    case 19:
      v31 = *sub_1B2127E38(v70);
      type metadata accessor for TableAlias();
      if (!static TableAlias.== infix(_:_:)())
      {
        return 0;
      }

      v32 = sub_1B2138F90();
      Database.primaryKey(_:)(v69, v32);

      if (!v3)
      {
        v55 = v69[2];
        v68[0] = v69[0];
        v68[1] = v69[1];
        LOBYTE(v68[2]) = v69[2];
        sub_1B21BE504();
        sub_1B21D09AC();
        v56 = sub_1B2112F9C();
        sub_1B21424A0(v56, v57, v55);
      }

      return v11;
    default:
      if (v10 != 1)
      {
        return v11;
      }

      v28 = sub_1B2127E38(v70);
      v11 = *v28;
      v29 = v28[1];
      v30 = v28[2];
      type metadata accessor for TableAlias();

      if (static TableAlias.== infix(_:_:)())
      {
        return v11;
      }

      return 0;
  }
}

uint64_t sub_1B213F998()
{
  memcpy(__dst, v0, 0xA3uLL);
  v2 = 0;
  v3 = 40;
  v4 = 200;
  v5 = 32;
  switch(sub_1B2127E1C(__dst))
  {
    case 2u:
      sub_1B2127E38(__dst);
      goto LABEL_45;
    case 3u:
      v48 = sub_1B2127E38(__dst);
      goto LABEL_39;
    case 6u:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v21, v22, v23);
      sub_1B21D09A0();
      memcpy(v24, v25, v26);
      sub_1B2142348();
      v30 = memcpy(v27, v28, v29);
      v31 = sub_1B213F998(v30);
      if (v31)
      {
        v7 = sub_1B213F998(v31);
        if (v7)
        {
          goto LABEL_4;
        }
      }

      goto LABEL_53;
    case 7u:
      goto LABEL_35;
    case 9u:
      v48 = sub_1B2127E38(__dst) + 40;
LABEL_39:
      v52 = *v48;
      v53 = *(*v48 + 16);

      v54 = -1;
      v55 = 32;
      while (2)
      {
        if (v54 - v53 != -1)
        {
          if (++v54 < *(v52 + 16))
          {
            v56 = v55 + 168;
            v57 = memcpy(v71, (v52 + v55), 0xA3uLL);
            v58 = sub_1B213F998(v57);
            v55 = v56;
            if ((v58 & 1) == 0)
            {

              goto LABEL_53;
            }

            continue;
          }

          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          JUMPOUT(0x1B213FE08);
        }

        break;
      }

LABEL_45:
      v2 = 1;
      return v2 & 1;
    case 0xBu:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v32, v33, v34);
      sub_1B2114090();
      memcpy(v35, v36, v37);
      sub_1B2114090();
      memcpy(v38, v39, v40);
      if (sub_1B214CB20(v67))
      {
        sub_1B214CB10(v67);
        goto LABEL_53;
      }

      v41 = *sub_1B214CB10(v67);
      memcpy(v68, v69, 0xA2uLL);
      v42 = *sub_1B214CB10(v68);

      if (sub_1B213F998(v43))
      {
        sub_1B21D09B8();
        do
        {
          v2 = v1 == -33;
          if (v1 == -33)
          {
            break;
          }

          if (++v1 >= *(v41 + 16))
          {
            goto LABEL_59;
          }

          v45 = v44 + 168;
          v46 = memcpy(v71, v44, 0xA3uLL);
          v47 = sub_1B213F998(v46);
          v44 = v45;
        }

        while ((v47 & 1) != 0);
      }

      else
      {
        v2 = 0;
      }

      sub_1B214D4C8(v69);
      return v2 & 1;
    case 0xCu:
      goto LABEL_3;
    case 0xDu:
      v4 = 192;
      v5 = 24;
LABEL_35:
      v49 = *sub_1B2127E38(__dst);
      memcpy(v70, (v49 + v5), sizeof(v70));
      memcpy(v71, (v49 + v4), 0xA3uLL);
      v50 = sub_1B2127DC0(v71, v67);
      if (sub_1B213F998(v50))
      {
        v51 = memcpy(v67, v71, 0xA3uLL);
        v2 = sub_1B213F998(v51);
        sub_1B21356F8(v71);
        return v2 & 1;
      }

      sub_1B21356F8(v71);
      goto LABEL_53;
    case 0xFu:
    case 0x10u:
    case 0x12u:
      v3 = 16;
LABEL_3:
      v6 = sub_1B2127E38(__dst);
      v7 = memcpy(v72, (*v6 + v3), sizeof(v72));
LABEL_4:
      v2 = sub_1B213F998(v7);
      return v2 & 1;
    case 0x11u:
      v8 = sub_1B2127E38(__dst);
      v2 = 0;
      if (*(v8 + 16) & 1) != 0 || (*(v8 + 17))
      {
        return v2 & 1;
      }

      v9 = *(v8 + 24);
      v12 = v8;
      v10 = *v8;
      v11 = *(v12 + 8);
      v13 = sub_1B2252230();
      v15 = v13;
      v16 = v14;
      v17 = 0xE300000000000000;
      v18 = v13 == 5783885 && v14 == 0xE300000000000000;
      if (v18 || ((v1 = 5130573, sub_1B2112864(), v13 = sub_1B22531F0(), v15 == 5130573) ? (v19 = v16 == 0xE300000000000000) : (v19 = 0), !v19 ? (v20 = 0) : (v20 = 1), (v13 & 1) != 0 || (v20 & 1) != 0 || (sub_1B2112864(), v13 = sub_1B22531F0(), (v13))) && *(v9 + 16) >= 2uLL)
      {
      }

      else
      {
        v17 = &v66;
        v71[0] = v15;
        v71[1] = v16;
        MEMORY[0x1EEE9AC00](v13);
        v65[2] = v71;
        v59 = sub_1B2158BF0(sub_1B2158EB4, v65, &unk_1F2968B50);

        if (!v59)
        {
LABEL_53:
          v2 = 0;
          return v2 & 1;
        }
      }

      sub_1B21D09B8();
      do
      {
        v2 = (v17 + v1) == -1;
        if ((v17 + v1) == -1)
        {
          break;
        }

        if (++v1 >= *(v9 + 16))
        {
          goto LABEL_58;
        }

        v61 = v60 + 168;
        v62 = memcpy(v71, v60, 0xA3uLL);
        v63 = sub_1B213F998(v62);
        v60 = v61;
      }

      while ((v63 & 1) != 0);
      return v2 & 1;
    default:
      return v2 & 1;
  }
}

void sub_1B213FE4C()
{
  sub_1B224B638();
  v1 = v0;
  v2 = 0;
  v4 = v0 + 56;
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  sub_1B21115A0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(v1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1B224B54C();
      sub_1B2139304();

      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }

  sub_1B224B5E0();
}

uint64_t sub_1B213FF28(void *a1)
{

  return RowDecodingContext.init(row:key:)(a1, (v1 - 200), v1 - 176);
}

uint64_t sub_1B213FF40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  v7 = sub_1B213FFD4(a3);
  v8 = sub_1B21401E4(v7, a1);

  if (!v4)
  {
    if (v8)
    {

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

void *sub_1B213FFD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 16);
  v3 = sub_1B2140064();
  sub_1B21400DC();
  v5 = v4;
  (sub_1B21401E0)();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1B2140078()
{
  sub_1B212CDB4();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B211A26C(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[2] = v0;
  v6[3] = 2 * ((v7 - 32) / 16);
  return v6;
}

void sub_1B21400DC()
{
  sub_1B2111F14();
  sub_1B2111FE0(v4, v5, v6, v7);
  if (!v8)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2113B5C(v12);
    sub_1B2111588();
    return;
  }

  v10 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v8;
    sub_1B2115BFC();
    v15 = (v14 - v2) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v17);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      v18 = (*(v0 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v3)))));
      v19 = v18[1];
      v3 &= v3 - 1;
      *v11 = *v18;
      v11[1] = v19;
      if (v16 == v10)
      {

        v12 = v17;
        goto LABEL_17;
      }

      v11 += 2;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1B21401E4(uint64_t a1, void *a2)
{
  v5 = sub_1B214056C(a1);
  if (!*(sub_1B2140648(v5) + 16))
  {
LABEL_40:

    return 0;
  }

  sub_1B213285C(&unk_1F2968D90);
  sub_1B211F670();
  sub_1B2140704();
  sub_1B212601C();
  if (v3)
  {

    return &unk_1F2968DC0;
  }

  v6 = sub_1B21229C4();
  Database.primaryKey(_:)(v7, v6);
  if (v2)
  {

    return v3;
  }

  if (v44)
  {
    if (v44 == 1)
    {
      v8 = v42;
    }

    else
    {
      v8 = &unk_1F2968DF0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v8 = swift_allocObject();
    v8[1] = xmmword_1B22546B0;
    *(v8 + 4) = v42;
    *(v8 + 5) = v43;
  }

  v9 = *(v8 + 2);
  sub_1B212D6C4();
  if (v9)
  {
    v10 = sub_1B2113978();
    sub_1B21414CC(v10, v11, v12);
    sub_1B2117238();
    v13 = v42;
    do
    {
      sub_1B2252220();
      sub_1B212D574();
      if (v15)
      {
        sub_1B2121FC4(v14);
        sub_1B2116B10();
        v13 = v42;
      }

      sub_1B2135314();
    }

    while (!v16);
  }

  else
  {
    v17 = sub_1B2113978();
    sub_1B21414CC(v17, v18, v19);

    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1B2140648(v13);
  v20 = sub_1B211F670();
  sub_1B21414EC(v20, v21);
  sub_1B212601C();
  if (swift_getObjectType)
  {

    if (v38)
    {
      if (v38 == 1)
      {
        return v45;
      }

      else
      {
        return &unk_1F2968E20;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      sub_1B2113B74();
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1B22546B0;
      *(v3 + 32) = v45;
      *(v3 + 40) = v40;
    }

    return v3;
  }

  sub_1B21424A0(v45, v40, v38);
  v22 = sub_1B21229C4();
  v24 = Database.indexes(on:)(v22, v23);
  result = sub_1B213CD20(v24);
  v28 = MEMORY[0x1E69E7CC0];
  v37 = result;
  v41 = v26;
  v39 = v27;
  while (1)
  {
    if (v13 == v26)
    {

      goto LABEL_40;
    }

    if (v13 >= a2[2])
    {
      break;
    }

    v29 = v27 + 32 * v13++;
    if (*(v29 + 24))
    {
      v3 = *(v29 + 16);
      v46 = *(v29 + 8);
      if (*(v3 + 16))
      {

        sub_1B214CB88();
        v30 = v28;
        do
        {
          v31 = *(v3 + 32);
          v32 = *(v3 + 40);
          sub_1B2252220();
          sub_1B213CB78();
          if (v15)
          {
            sub_1B2121FC4(v33);
            sub_1B2116B10();
            v30 = v28;
          }

          sub_1B214CBF8();
        }

        while (!v16);
        a2 = v37;
        v28 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v30 = v28;
      }

      sub_1B2140648(v30);
      v34 = sub_1B2112FD0();
      v36 = sub_1B21414EC(v34, v35);

      if (v36)
      {

        return v3;
      }

      v27 = v39;
      v26 = v41;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B214056C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = sub_1B2252220();
      v8 = v7;
      v9 = *(v12 + 16);
      if (v9 >= *(v12 + 24) >> 1)
      {
        sub_1B2116B10();
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v12;
}

uint64_t sub_1B2140648(uint64_t a1)
{
  v2 = sub_1B2115FB0(a1);
  result = MEMORY[0x1B27422D0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = 0;
  v9 = result;
  v5 = *(v1 + 16);
  for (i = (v1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v9;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_1B2139304();
  }

  __break(1u);
  return result;
}

void sub_1B2140704()
{
  sub_1B212D010();
  if (v1 != v2 && (v3 = sub_1B212257C(v1, v2), v28))
  {
    v4 = 0;
    v6 = v3 + 56;
    v5 = *(v3 + 56);
    v7 = *(v3 + 32);
    sub_1B211837C();
    sub_1B21161AC();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v30 = v8;
    if ((v10 & v9) != 0)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_11:
        v18 = (*(v8 + 48) + 16 * (v14 | (v4 << 6)));
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v0 + 40);
        sub_1B2253420();

        sub_1B2252370();
        sub_1B2253470();
        v22 = *(v0 + 32);
        sub_1B2113B98();
        v25 = ~v24;
        do
        {
          v26 = v23 & v25;
          if (((*(v0 + 56 + (((v23 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v25)) & 1) == 0)
          {

            goto LABEL_22;
          }

          v27 = (*(v0 + 48) + 16 * v26);
          v28 = *v27 == v20 && v27[1] == v19;
          if (v28)
          {
            break;
          }

          v29 = sub_1B22531F0();
          v23 = v26 + 1;
        }

        while ((v29 & 1) == 0);

        v8 = v30;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = v4;
    while (1)
    {
      v4 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v4 >= v13)
      {
        goto LABEL_22;
      }

      ++v15;
      if (*(v6 + 8 * v4))
      {
        sub_1B211667C();
        v11 = v17 & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1B212CE34();
  }
}

uint64_t Database.primaryKey(_:)()
{
  sub_1B2117A7C();
  v4 = v3;
  result = sub_1B213DA88();
  if (!v0)
  {
    v6 = result;
    v20 = v4;
    v24 = v2;
    v7 = 0;
    v8 = *(result + 16);
    for (i = (result + 40); ; i += 2)
    {
      if (v8 == v7)
      {

        sub_1B21AC298();
        sub_1B2118078();
        swift_allocError();
        sub_1B21AB9A4(v24, v1, v19);
        return swift_willThrow();
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v10 = *(i - 1);
      v11 = *i;
      v12 = sub_1B2111664();
      sub_1B213E100(v12, v13);

      v14 = sub_1B2111664();
      sub_1B21409CC(v14, v15, v24, v1, v16);
      v17 = sub_1B2111664();
      sub_1B213EA54(v17, v18);

      if (v23 != 255)
      {

        *v20 = v21;
        *(v20 + 8) = v22;
        *(v20 + 16) = v23;
        return result;
      }

      ++v7;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21409CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v114 = a5;
  type metadata accessor for SchedulingWatchdog();
  if ((sub_1B2117B40(v6) & 1) == 0)
  {
LABEL_46:
    sub_1B2252EC0();
    __break(1u);

    __break(1u);
    return result;
  }

  v12 = (v6 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v14, &v77);
  swift_endAccess();
  v15 = v78;
  v103[0] = v78;
  if (*(v78 + 16))
  {
    swift_bridgeObjectRetain_n();
    v16 = sub_1B211E590();
    if (v17)
    {
      v18 = v16;

      sub_1B213EA54(a1, a2);

      sub_1B213EA54(a1, a2);

      sub_1B213EA54(a1, a2);
      v19 = *(v15 + 56) + 24 * v18;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v98 = v77;
      sub_1B21414B8(v20, v21, v22);
      sub_1B212AC5C(&v98, &qword_1EB7A21D0, &qword_1B225B6B0);
      sub_1B212AC5C(v103, &qword_1EB7A21B0, &qword_1B225B690);
      v97 = v79;
      sub_1B212AC5C(&v97, &qword_1EB7A21B8, &qword_1B225B698);
      v96 = v80;
      sub_1B212AC5C(&v96, &qword_1EB7A21C0, &qword_1B225B6A0);
      v95 = v81;
      result = sub_1B212AC5C(&v95, &qword_1EB7A21C8, &qword_1B225B6A8);
      if (v22 == 255)
      {
        v40 = v114;
        *v114 = 0;
        v40[1] = 0;
        *(v40 + 16) = -1;
      }

      else
      {
        v24 = v114;
        *v114 = v20;
        v24[1] = v21;
        *(v24 + 16) = v22;
      }

      return result;
    }

    v102 = v77;
    sub_1B212AC5C(&v102, &qword_1EB7A21D0, &qword_1B225B6B0);
    sub_1B212AC5C(v103, &qword_1EB7A21B0, &qword_1B225B690);
    v101 = v79;
    sub_1B212AC5C(&v101, &qword_1EB7A21B8, &qword_1B225B698);
    v100 = v80;
    sub_1B212AC5C(&v100, &qword_1EB7A21C0, &qword_1B225B6A0);
    v99 = v81;
    v25 = &v99;
  }

  else
  {
    v94 = v77;
    swift_bridgeObjectRetain_n();
    sub_1B212AC5C(&v94, &qword_1EB7A21D0, &qword_1B225B6B0);
    sub_1B212AC5C(v103, &qword_1EB7A21B0, &qword_1B225B690);
    v93 = v79;
    sub_1B212AC5C(&v93, &qword_1EB7A21B8, &qword_1B225B698);
    v92 = v80;
    sub_1B212AC5C(&v92, &qword_1EB7A21C0, &qword_1B225B6A0);
    v91 = v81;
    v25 = &v91;
  }

  sub_1B212AC5C(v25, &qword_1EB7A21C8, &qword_1B225B6A8);
  v26 = sub_1B213E114(1);
  if (v7)
  {

    sub_1B213EA54(a1, a2);

    sub_1B213EA54(a1, a2);

    return sub_1B213EA54(a1, a2);
  }

  else
  {
    v27 = v26;

    sub_1B213EA54(a1, a2);
    if (v27)
    {
      v28 = sub_1B2143644(a1, a2, a3, a4);

      if (v28)
      {
        v71 = a4;
        v68 = v12;
        sub_1B213EA54(a1, a2);
        v29 = 0;
        v30 = *(v28 + 16);
        v31 = MEMORY[0x1E69E7CC0];
        v70 = a3;
        while (1)
        {
          for (i = (88 * v29 + 32); ; i += 88)
          {
            if (v30 == v29)
            {
              __dst[0] = v31;

              sub_1B2149BD0(__dst, sub_1B21C035C, sub_1B2149F90);

              v41 = __dst[0];
              v42 = *(__dst[0] + 16);
              if (v42)
              {
                if (v42 == 1)
                {
                  memcpy(__dst, (__dst[0] + 32), sizeof(__dst));
                  sub_1B21499AC(__dst, v74);

                  v44 = __dst[3];
                  v43 = __dst[4];
                  if (sub_1B2252230() == 0x52454745544E49 && v45 == 0xE700000000000000)
                  {

                    v48 = v68;
                  }

                  else
                  {
                    v47 = sub_1B22531F0();

                    v48 = v68;
                    if ((v47 & 1) == 0)
                    {
                      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
                      v49 = swift_allocObject();
                      *(v49 + 16) = xmmword_1B22546B0;
                      *(v49 + 32) = v44;
                      *(v49 + 40) = v43;

                      sub_1B2149A98(__dst);
                      v43 = sub_1B214AD9C(a1, a2, v70, v71);
                      v61 = 1;
                      v44 = v49;
                      goto LABEL_43;
                    }
                  }

                  sub_1B21414CC(v44, v43, 0);
                  sub_1B2149A98(__dst);
                  v61 = 0;
LABEL_44:
                  swift_beginAccess();
                  v62 = *v48;
                  v63 = v48[1];
                  sub_1B21414CC(v44, v43, v61);
                  sub_1B213E2CC(v63, v85);
                  v65 = v85[0];
                  v64 = v85[1];
                  v69 = v87;
                  sub_1B21414CC(v44, v43, v61);
                  swift_isUniquelyReferenced_nonNull_native();
                  v74[0] = v64;
                  sub_1B214A070(v44, v43, v61, v70, v71);

                  v103[1] = v65;
                  v103[2] = v74[0];
                  v104 = v86;
                  v105 = v69;
                  v66 = v48[1];
                  swift_isUniquelyReferenced_nonNull_native();
                  v74[0] = v48[1];
                  sub_1B2148D50();
                  v48[1] = v74[0];
                  sub_1B213EA54(a1, a2);
                  swift_endAccess();
                  result = sub_1B21424A0(v44, v43, v61);
                  v67 = v114;
                  *v114 = v44;
                  v67[1] = v43;
                  *(v67 + 16) = v61;
                  return result;
                }

                __dst[0] = MEMORY[0x1E69E7CC0];
                sub_1B2116B10();
                v54 = __dst[0];
                v55 = (v41 + 64);
                do
                {
                  v57 = *(v55 - 1);
                  v56 = *v55;
                  __dst[0] = v54;
                  v59 = *(v54 + 16);
                  v58 = *(v54 + 24);

                  if (v59 >= v58 >> 1)
                  {
                    sub_1B2116B10();
                    v54 = __dst[0];
                  }

                  *(v54 + 16) = v59 + 1;
                  v60 = v54 + 16 * v59;
                  *(v60 + 32) = v57;
                  *(v60 + 40) = v56;
                  v55 += 11;
                  --v42;
                }

                while (v42);
                v44 = v54;

                v43 = sub_1B214AD9C(a1, a2, v70, v71);
                v61 = 1;
              }

              else
              {

                v44 = 0;
                v43 = 0;
                v61 = 2;
              }

LABEL_43:
              v48 = v68;
              goto LABEL_44;
            }

            if (v29 >= *(v28 + 16))
            {
              __break(1u);
              goto LABEL_46;
            }

            memcpy(__dst, &i[v28], sizeof(__dst));
            if (__dst[10] > 0)
            {
              break;
            }

            ++v29;
          }

          sub_1B21499AC(__dst, v74);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = *(v31 + 16);
            sub_1B2149BB0();
            v31 = v76;
          }

          v34 = *(v31 + 16);
          if (v34 >= *(v31 + 24) >> 1)
          {
            sub_1B2149BB0();
            v31 = v76;
          }

          ++v29;
          *(v31 + 16) = v34 + 1;
          memcpy((v31 + 88 * v34 + 32), __dst, 0x58uLL);
        }
      }

      sub_1B213EA54(a1, a2);
      swift_beginAccess();
      v50 = *v12;
      sub_1B213E2CC(v12[1], v88);
      v52 = v88[0];
      v51 = v88[1];
      v73 = v90;
      swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v51;
      sub_1B214A070(0, 0, 255, a3, a4);

      v106 = v52;
      v107 = v51;
      v108 = v89;
      v109 = v73;
      v53 = v12[1];
      swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v12[1];
    }

    else
    {

      sub_1B213EA54(a1, a2);
      swift_beginAccess();
      v35 = *v12;
      sub_1B213E2CC(v12[1], v82);
      v37 = v82[0];
      v36 = v82[1];
      v72 = v84;
      swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v36;
      sub_1B214A070(0, 0, 255, a3, a4);

      v110 = v37;
      v111 = v36;
      v112 = v83;
      v113 = v72;
      v38 = v12[1];
      swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v12[1];
    }

    sub_1B2148D50();
    v12[1] = v74[0];
    sub_1B213EA54(a1, a2);
    result = swift_endAccess();
    v39 = v114;
    *v114 = 0;
    v39[1] = 0;
    *(v39 + 16) = -1;
  }

  return result;
}

uint64_t sub_1B21414B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B21414CC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B21414CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B21414EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_1B2253420();

        sub_1B2252370();
        v18 = sub_1B2253470();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_1B22531F0();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21416B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 163))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B214177C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216F2D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B214179C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v11 = v3[6];
  v10 = v3[7];
  v12._countAndFlagsBits = *v3;
  v12._object = v8;
  result = Database.tableExists(_:)(v12);
  if (!v14)
  {
    v21 = a3;
    if ((result & 1) != 0 && v11)
    {
      v11(__src, a1);
      memcpy(__dst, __src, 0xA3uLL);
      memcpy(v18, __src, 0xA3uLL);
      v15 = sub_1B21418EC(a1, v9);
      if (v15)
      {
        v18[0] = v6;
        sub_1B214A3A8(v7, v8, v15, v21);
        sub_1B21356F8(__dst);
      }

      sub_1B21356F8(__dst);
      v16 = v21;
      v17 = v6;
    }

    else
    {
      v16 = v21;
      v17 = v6;
    }

    *v16 = v17;
  }

  return result;
}

_BYTE *sub_1B21418EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v133[21] = *MEMORY[0x1E69E9840];
  sub_1B2111ADC();
  memcpy(v6, v7, v8);
  v9 = sub_1B2127E1C(v133);
  v10 = 0;
  v126 = a2;
  switch(v9)
  {
    case 9:
      v125 = a1;
      v11 = sub_1B2127E38(v133);
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v17 = *(v11 + 33);
      v18 = *(v11 + 34);
      v19 = *(v11 + 40);
      v132[0] = *v11;
      v123 = v14;
      v124 = v12;
      v132[1] = v12;
      v132[2] = v14;
      v122 = v15;
      v132[3] = v15;
      v120 = v17;
      v121 = v16;
      LOBYTE(v132[4]) = v16;
      BYTE1(v132[4]) = v17;
      v119 = v18;
      BYTE2(v132[4]) = v18;
      if (qword_1ED85DC80 == -1)
      {
        goto LABEL_3;
      }

LABEL_90:
      sub_1B2112AD4();
      swift_once();
LABEL_3:
      sub_1B2121FF0(&xmmword_1ED85DC88);
      v20 = sub_1B2118388();
      sub_1B2113A20(v20, v21, v22);
      v23 = static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v132, v130);

      v24 = sub_1B2118388();
      sub_1B2113A44(v24, v25, v26);
      if (v23)
      {
        v10 = 0;
        v27 = 0;
        v28 = *(v19 + 16);
        v29 = v19 + 32;
        v13 = v125;
        v124 = v19 + 32;
        while (1)
        {
          for (i = v29 + 168 * v27; ; i += 168)
          {
            if (v28 == v27)
            {
              goto LABEL_82;
            }

            if (v27 >= *(v19 + 16))
            {
              __break(1u);
              goto LABEL_89;
            }

            sub_1B2117AC4();
            memcpy(v31, v32, v33);
            sub_1B2117AC4();
            memcpy(v34, v35, v36);
            sub_1B2127DC0(v132, &v127);
            v37 = sub_1B21418EC(v13, v126);
            if (v3)
            {
              goto LABEL_49;
            }

            v38 = v37;
            if (v37)
            {
              break;
            }

            sub_1B21356F8(v132);
            ++v27;
          }

          ++v27;
          if (v10)
          {
            v39 = v10[32];
            v40 = v39 & 0x3F;
            v123 = ((1 << v39) + 63) >> 6;
            v41 = 8 * v123;

            if (v40 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              v122 = v118;
              MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v43 = &v118[-((v41 + 15) & 0x3FFFFFFFFFFFFFF0)];
              v44 = v123;
              sub_1B2148CEC(0, v123, v43);
              sub_1B21CAE7C(v43, v44, v10, v38);
              v46 = v45;
            }

            else
            {
              v47 = swift_slowAlloc();

              v46 = sub_1B21CABF4(v47, v123, v10, v38);

              MEMORY[0x1B2743C50](v47, -1, -1);
            }

            v10 = v46;
            sub_1B21356F8(v132);

            v29 = v124;
            v13 = v125;
            if (!*(v46 + 2))
            {
              goto LABEL_82;
            }
          }

          else
          {
            sub_1B21356F8(v132);
            v10 = v38;
            v29 = v124;
          }
        }
      }

      v132[0] = v13;
      v132[1] = v124;
      v132[2] = v123;
      v132[3] = v122;
      LOBYTE(v132[4]) = v121;
      BYTE1(v132[4]) = v120;
      BYTE2(v132[4]) = v119;
      if (qword_1ED85D4E8 != -1)
      {
        sub_1B21175B4();
        swift_once();
      }

      sub_1B2121FF0(&xmmword_1ED85D4F0);
      v73 = sub_1B2118388();
      sub_1B2113A20(v73, v74, v75);
      v76 = static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v132, v130);

      v77 = sub_1B2118388();
      sub_1B2113A44(v77, v78, v79);
      if (v76)
      {
        v13 = 0;
        v129[0] = MEMORY[0x1E69E7CD0];
        v80 = *(v19 + 16);
        v10 = (v19 + 32);
        v81 = v126;
        while (1)
        {
          if (v80 == v13)
          {
            v10 = v129[0];
            goto LABEL_82;
          }

          if (v13 >= *(v19 + 16))
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          memcpy(v132, v10, 0xA3uLL);
          memcpy(v130, v10, 0xA3uLL);
          sub_1B2127DC0(v132, &v127);
          v82 = sub_1B21418EC(v125, v81);
          if (v3)
          {
LABEL_49:

            sub_1B21356F8(v132);
            goto LABEL_82;
          }

          if (!v82)
          {
            break;
          }

          sub_1B223DD24(v82);
          sub_1B21356F8(v132);
          v10 += 168;
          ++v13;
        }

        sub_1B21356F8(v132);
      }

      goto LABEL_81;
    case 10:
    case 12:
    case 14:
    case 15:
      goto LABEL_82;
    case 11:
      v63 = *sub_1B2127E38(v133);
      sub_1B211D694();
      memcpy(v64, v65, v66);
      sub_1B2114090();
      memcpy(v67, v68, v69);
      if (*(v63 + 346))
      {
        goto LABEL_81;
      }

      sub_1B2114090();
      memcpy(v70, v71, v72);
      if (sub_1B214CB20(&v127))
      {
        sub_1B214CB10(&v127);
LABEL_81:
        v10 = 0;
        goto LABEL_82;
      }

      v83 = *sub_1B214CB10(&v127);
      memcpy(v129, v130, 0xA2uLL);
      v84 = *sub_1B214CB10(v129);

      sub_1B213F348(a1, v126, 0);
      if (v2)
      {
        sub_1B214D4C8(v130);
        goto LABEL_82;
      }

      if (!v85 || (sub_1B2138F90(), v86 = sub_1B21440C0(), v94 = v86, , , (v94 & 1) == 0))
      {
        sub_1B214D4C8(v130);
        goto LABEL_81;
      }

      v95 = 0;
      v96 = *(v83 + 16);
      v97 = v83 + 32;
      v98 = MEMORY[0x1E69E7CC0];
      v126 = v83 + 32;
LABEL_62:
      v99 = v97 + 168 * v95;
      while (v96 != v95)
      {
        if (v95 >= *(v83 + 16))
        {
          __break(1u);
        }

        sub_1B21D0950();
        memmove(v100, v101, v102);
        if (sub_1B2127E1C(v132) == 2)
        {
          v103 = sub_1B2127E38(v132);
          v104 = *v103;
          if (*(v103 + 16) == 1)
          {
            v105 = *v103;
            if (v104 >= -9.22337204e18 && v104 < 9.22337204e18)
            {
              if ((~*&v104 & 0x7FF0000000000000) == 0)
              {
                __break(1u);
LABEL_93:
                __break(1u);

                swift_willThrow();

                __break(1u);

                MEMORY[0x1B2743C50](v95, -1, -1);
                __break(1u);
                JUMPOUT(0x1B2142318);
              }

              if (v104 <= -9.22337204e18)
              {
                goto LABEL_93;
              }

              *&v104 = v104;
LABEL_75:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B2162254(0, *(v98 + 16) + 1, 1, v98);
                v98 = v109;
              }

              v107 = *(v98 + 16);
              v106 = *(v98 + 24);
              v108 = v107 + 1;
              if (v107 >= v106 >> 1)
              {
                v110 = sub_1B211156C(v106);
                v125 = v111;
                sub_1B2162254(v110, v111, 1, v98);
                v108 = v125;
                v98 = v112;
              }

              ++v95;
              *(v98 + 16) = v108;
              *(v98 + 8 * v107 + 32) = v104;
              v97 = v126;
              goto LABEL_62;
            }
          }

          else if (!*(v103 + 16))
          {
            goto LABEL_75;
          }
        }

        v99 += 168;
        ++v95;
      }

      sub_1B214D4C8(v130);
      v62 = sub_1B2168E80(v98);
LABEL_32:
      v10 = v62;
LABEL_82:
      v113 = *MEMORY[0x1E69E9840];
      return v10;
    case 13:
      v53 = sub_1B2127E38(v133);
      v54 = *v53;
      v55 = *(*v53 + 16);
      memcpy(v132, (*v53 + 24), 0xA3uLL);
      memcpy(v131, (v54 + 192), sizeof(v131));
      switch(v55)
      {
        case 1:
        case 3:
          goto LABEL_81;
        default:
          memcpy(v130, (v54 + 24), 0xA3uLL);
          v56 = sub_1B21D0A04();
          if (v2)
          {
            goto LABEL_82;
          }

          v58 = v57;
          if (!v57 || (v59 = v56, sub_1B2138F90(), v60 = sub_1B2142354(v59, v58), (v87 = v60, , , (v87 & 1) == 0) || (memcpy(v130, v131, 0xA3uLL), sub_1B2127E1C(v130) != 2)))
          {
            sub_1B21D0A04();
            if (!v92)
            {
              goto LABEL_81;
            }

            sub_1B2138F90();
            v93 = sub_1B21440C0();
            v115 = v93;

            if ((v115 & 1) == 0)
            {
              goto LABEL_81;
            }

            memcpy(v130, v132, 0xA3uLL);
            if (sub_1B2127E1C(v130) != 2)
            {
              goto LABEL_81;
            }
          }

          v88 = sub_1B2127E38(v130);
          v89 = *(v88 + 16);
          v127 = *v88;
          v128 = v89;
          v90 = static Int64.fromDatabaseValue(_:)(&v127);
          if (v91)
          {
            v10 = MEMORY[0x1E69E7CD0];
            goto LABEL_82;
          }

          v116 = v90;
          sub_1B21619D8(&qword_1EB7A0F80, &qword_1B2254698);
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1B22546B0;
          *(v117 + 32) = v116;
          v62 = sub_1B214A274(v117);
          break;
      }

      goto LABEL_32;
    case 16:
      sub_1B21D0AA4(v133);
      memcpy(v132, (v61 + 16), 0xA3uLL);
      v62 = sub_1B21418EC(a1, v126);
      if (!v2)
      {
        goto LABEL_32;
      }

      goto LABEL_82;
    default:
      if (v9 == 2)
      {
        v48 = sub_1B2127E38(v133);
        v49 = *(v48 + 8);
        v50 = *(v48 + 16);
        v10 = MEMORY[0x1E69E7CD0];
        if (v50 != 4 || *v48 != 0)
        {
          v132[0] = *v48;
          v132[1] = v49;
          LOBYTE(v132[2]) = v50;
          memset(v130, 0, 17);
          v52 = static DatabaseValue.== infix(_:_:)(v132, v130);
          sub_1B2113A44(v130[0], v130[1], v130[2]);
          if ((v52 & 1) == 0)
          {
            v10 = 0;
          }
        }
      }

      goto LABEL_82;
  }
}

uint64_t sub_1B2142354(uint64_t a1, uint64_t a2)
{
  Database.primaryKey(_:)();
  if (v2)
  {
    return v5 & 1;
  }

  if (!v14)
  {
    if (v12 == a1 && v13 == a2)
    {
      sub_1B21424A0(a1, v13, 0);
    }

    else
    {
      v7 = sub_1B22531F0();
      sub_1B21424A0(v12, v13, 0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    v5 = 1;
    return v5 & 1;
  }

  if (v14 != 1)
  {
    sub_1B21424A0(v12, v13, 2u);
    goto LABEL_13;
  }

  sub_1B21424A0(v12, v13, 1u);
  if (v13)
  {
LABEL_13:
    sub_1B2113B50();
    if (sub_1B2252230() != 0x4449574F52 || v8 != 0xE500000000000000)
    {
      v10 = sub_1B22531F0();

      return v10 & 1;
    }

    goto LABEL_20;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B21424A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B21424C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1B211B358();
  result = sub_1B2252190();
  v15 = result;
  v12 = *(a2 + 16);
  v13 = (a2 + 32);
  if (v12)
  {
    while (1)
    {
      v14 = *v13;

      sub_1B2180750(&v15, &v14, a1, a3, a4);

      if (v5)
      {
      }

      ++v13;
      if (!--v12)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    *a5 = v15;
  }

  return result;
}

double sub_1B21425A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_1B2142658(a1, 0, 1, &v7);
  if (!v3)
  {
    if (v8)
    {
      sub_1B2134D5C(&v7, a2);
    }

    else
    {
      sub_1B212AC5C(&v7, &qword_1EB7A3500, &qword_1B226C7D8);
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1B2142658@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v8 = result;
  if ((a3 & 1) != 0 && !*(v4[10] + 16))
  {
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    return result;
  }

  v11 = v4[3];
  v10 = v4[4];
  sub_1B2139B70();
  v11(&v51);

  if (!v5)
  {
    v12 = sub_1B2178F60(v8, v51);

    v39 = a2 + v12;
    if (__OFADD__(a2, v12))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      sub_1B2253390();
      __break(1u);
      goto LABEL_40;
    }

    v13 = v8;
    v37 = a3;
    v38 = a4;
    sub_1B21619D8(&qword_1EB7A0F40, &qword_1B226C7E0);
    v14 = sub_1B2252190();
    v15 = v4[10];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v4[11];
      v18 = (v15 + 40);
      v19 = (a2 + v12);
      v40 = v12;
      v41 = v13;
      v43 = v6[11];
      while (*(v17 + 16))
      {
        v20 = *(v18 - 1);
        v21 = *v18;
        v55 = v18;

        v22 = sub_1B211E590();
        if ((v23 & 1) == 0)
        {
          goto LABEL_34;
        }

        v24 = (*(v17 + 56) + 216 * v22);
        memcpy(__dst, v24, sizeof(__dst));
        memcpy(__src, v24, sizeof(__src));
        memmove(v50, v24, 0xD8uLL);
        *&v51 = v20;
        *(&v51 + 1) = v21;
        memcpy(v52, __src, sizeof(v52));

        sub_1B21A63AC(__dst, &v45);
        sub_1B21A63AC(v50, &v45);
        sub_1B212AC5C(&v51, &qword_1EB7A1CB8, &qword_1B225A4C0);
        memcpy(v53, v50, sizeof(v53));
        memcpy(v54, &v50[48], sizeof(v54));
        sub_1B2142658(&v45, v13, v19, 0);
        if (v46)
        {
          v25 = v47;
          sub_1B2134D5C(&v45, __src);
          *&__src[40] = v25;
          sub_1B2134D5C(__src, v44);
          sub_1B211EE68(v44, __src);
          swift_isUniquelyReferenced_nonNull_native();
          *&v45 = v14;
          v26 = sub_1B211E590();
          if (__OFADD__(v14[2], (v27 & 1) == 0))
          {
            goto LABEL_35;
          }

          v28 = v26;
          v29 = v27;
          sub_1B21619D8(&qword_1EB7A3508, qword_1B226C7E8);
          if (sub_1B2252E70())
          {
            v30 = sub_1B211E590();
            if ((v29 & 1) != (v31 & 1))
            {
              goto LABEL_39;
            }

            v28 = v30;
          }

          v19 = v25;
          if (v29)
          {

            v14 = v45;
            v32 = (*(v45 + 56) + 40 * v28);
            sub_1B2113208(v32);
            sub_1B2134D5C(__src, v32);
            sub_1B21A6464(v53);
            sub_1B2113208(v44);
          }

          else
          {
            v14 = v45;
            *(v45 + 8 * (v28 >> 6) + 64) |= 1 << v28;
            v33 = (v14[6] + 16 * v28);
            *v33 = v20;
            v33[1] = v21;
            sub_1B2134D5C(__src, v14[7] + 40 * v28);
            sub_1B21A6464(v53);
            sub_1B2113208(v44);
            v34 = v14[2];
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_36;
            }

            v14[2] = v36;
          }

          v12 = v40;
          v13 = v41;
        }

        else
        {

          sub_1B21A6464(v53);
          sub_1B212AC5C(&v45, &qword_1EB7A3500, &qword_1B226C7D8);
        }

        v18 = v55 + 2;
        --v16;
        v17 = v43;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v19 = (a2 + v12);
LABEL_24:
    if ((v37 & 1) == 0 && v12 || v14[2])
    {
      if (v39 < a2)
      {
        goto LABEL_38;
      }

      if (a2 < 0)
      {
LABEL_40:
        result = sub_1B2252EC0();
        __break(1u);
        return result;
      }

      sub_1B224F47C(v14, a2, v39, &v51);
      sub_1B2134D5C(&v51, v38);
      *(v38 + 40) = v19;
    }

    else
    {
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      *v38 = 0u;
    }
  }

  return result;
}

uint64_t sub_1B2142B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1370, &unk_1B2257580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2142C20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t TableAlias.__deallocating_deinit()
{
  sub_1B2142C9C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t sub_1B2142C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 == 1)
    {
    }

    else
    {
      if (a5)
      {
        return result;
      }
    }
  }
}

uint64_t sub_1B2142D6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B2142D84(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B2142DA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void PersistableRecord.performInsert(_:)()
{
  sub_1B2111640();
  v4 = v3;
  v6 = v5;
  sub_1B21115E0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  sub_1B212D870();
  v12 = *(v4 + 8);
  v13 = *(v12 + 24);
  v14 = sub_1B2115F1C();
  v15(v14, v12);
  v16 = LOBYTE(v23[0]);
  type metadata accessor for DAO();
  (*(v8 + 16))(v2, v0, v6);

  v17 = sub_1B2143004();
  if (!v1)
  {
    v18 = v17;
    sub_1B21454D4(v23);
    v23[0] = 0;
    v23[1] = 0;
    v24.value.values._rawValue = v23;
    Statement.execute(arguments:)(v24);
    if (v19)
    {

LABEL_6:

      goto LABEL_7;
    }

    if (v16 == 3)
    {
      goto LABEL_6;
    }

    v20 = Database.lastInsertedRowID.getter();
    if (*(v18 + 72))
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = *(v18 + 56);
      v22 = *(v18 + 64);
    }

    (*(v4 + 16))(v20, v21, v22, v6, v4);
  }

LABEL_7:
  sub_1B2112FDC();
}

uint64_t sub_1B2143004()
{
  sub_1B2117A7C();
  swift_allocObject();
  sub_1B2115F1C();
  sub_1B2143054();
  return v0;
}

void sub_1B2143054()
{
  sub_1B2111640();
  v2 = v0;
  v3 = *v0;
  v34 = v3;
  v4 = *(v3 + 80);
  sub_1B21115E0();
  v35 = v5;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v10;
  v2[2] = v9;
  v38 = v11;
  sub_1B212DF24();
  DynamicType = swift_getDynamicType();
  v13 = *(v3 + 88);
  v14 = *(v13 + 16);
  v15 = *(v14 + 8);

  v16 = sub_1B2112F9C();
  v2[5] = v15(v16);
  v2[6] = v17;

  Database.primaryKey(_:)();
  if (v1)
  {

    v18 = v35;
    v23 = v2[2];

    v24 = v2[6];

    swift_deallocPartialClassInstance();
LABEL_4:
    v25 = *(v18 + 8);
    v26 = sub_1B21D810C();
    v27(v26);
    sub_1B2112FDC();
    return;
  }

  v32 = DynamicType;

  v19 = v37;
  *(v2 + 7) = v36;
  *(v2 + 72) = v19;
  v18 = v35;
  v20 = v33;
  (*(v35 + 16))(v33, v38, v4);
  v21 = *(v13 + 8);

  sub_1B2143368(v22, v20, v4, v21, v14);
  v28 = v36;
  *(v2 + 3) = v36;
  if (*(v28 + 16))
  {

    goto LABEL_4;
  }

  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_1B2252CD0();
  v29 = sub_1B2253510();
  v31 = v30;

  *&v36 = v29;
  *(&v36 + 1) = v31;
  MEMORY[0x1B2741EB0](0xD000000000000025, 0x80000001B226CF50);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2143368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B2117A7C();
  v11 = v10;
  swift_getDynamicType();
  v12 = *(a5 + 8);
  v13 = sub_1B2113B28();
  v15 = v14(v13, a5);
  v17 = Database.columns(in:)(v15, v16);
  if (v5)
  {
  }

  else
  {
    v18 = v17;

    v19 = *(v18 + 16);

    sub_1B2122CE8();
    sub_1B214400C();
    v21 = v20;
    v22 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
    v23 = MEMORY[0x1B2741C60](v19, MEMORY[0x1E69E6158], v22, MEMORY[0x1E69E6168]);
    *v11 = v21;
    v11[1] = v23;
    (*(a4 + 8))(v11, a3, a4);
  }

  return (*(*(a3 - 8) + 8))(v6, a3);
}

uint64_t sub_1B21434C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = sub_1B213DA88();
  if (v3)
  {
    return v4;
  }

  v9 = result;
  v20 = a3;
  v21 = a1;
  v10 = (result + 40);
  v22 = -*(result + 16);
  v11 = -1;
  while (1)
  {
    if (v22 + v11 == -1)
    {

      sub_1B21AC298();
      sub_1B2118078();
      swift_allocError();
      sub_1B21AB9A4(v21, a2, v19);
      swift_willThrow();
      return v4;
    }

    if (++v11 >= *(v9 + 16))
    {
      break;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = sub_1B2111664();
    sub_1B213E100(v14, v15);

    v16 = sub_1B2111664();
    v4 = v20(v16);
    v10 += 2;
    v17 = sub_1B2111664();
    sub_1B213EA54(v17, v18);

    if (v4)
    {

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2143644(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v14, v64);
  swift_endAccess();
  v15 = sub_1B2143F18();
  v75[0] = v64[0];
  sub_1B212AC5C(v75, &qword_1EB7A21D0, &qword_1B225B6B0);
  v74 = v64[1];
  sub_1B212AC5C(&v74, &qword_1EB7A21B0, &qword_1B225B690);
  v73 = v64[2];
  sub_1B212AC5C(&v73, &qword_1EB7A21B8, &qword_1B225B698);
  v72 = v64[3];
  sub_1B212AC5C(&v72, &qword_1EB7A21C0, &qword_1B225B6A0);
  v71 = v64[4];
  sub_1B212AC5C(&v71, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (v15 != 1)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    return v15;
  }

  if (sqlite3_libversion_number() > 3025999)
  {
    v58 = v12;
    sub_1B213EA54(a1, a2);
    sub_1B2252CD0();

    strcpy(__dst, "PRAGMA ");
    *&__dst[8] = 0xE700000000000000;
    v17 = 0xE400000000000000;
    v18 = 1886217588;
    if (a2 != 1)
    {
      v18 = a1;
      v17 = a2;
    }

    v19 = a4;
    if (a2)
    {
      v20 = v18;
    }

    else
    {
      v20 = 1852399981;
    }

    if (a2)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    sub_1B213E100(a1, a2);
    MEMORY[0x1B2741EB0](v20, v21);

    MEMORY[0x1B2741EB0](0x785F656C6261742ELL, 0xED0000286F666E69);
    v60 = 34;
    v61 = 0xE100000000000000;
    v22 = a3;
    v85 = v19;
    v23 = v19;
    v6 = v5;
    goto LABEL_26;
  }

  if (sqlite3_libversion_number() > 3008004)
  {
    v59 = a3;
    v85 = a4;
    sub_1B213EA54(a1, a2);
LABEL_17:
    v58 = v12;
    sub_1B2252CD0();

    strcpy(__dst, "PRAGMA ");
    *&__dst[8] = 0xE700000000000000;
    v24 = 0xE400000000000000;
    v25 = 1886217588;
    if (a2 != 1)
    {
      v25 = a1;
      v24 = a2;
    }

    if (a2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1852399981;
    }

    if (a2)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    sub_1B213E100(a1, a2);
    MEMORY[0x1B2741EB0](v26, v27);

    MEMORY[0x1B2741EB0](0x695F656C6261742ELL, 0xEC000000286F666ELL);
    v60 = 34;
    v61 = 0xE100000000000000;
    v22 = v59;
    v23 = v85;
LABEL_26:
    MEMORY[0x1B2741EB0](v22, v23);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v60, v61);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v15 = *&__dst[8];
    v28 = *__dst;
    memset(__dst, 0, 40);
    v29 = sub_1B21473DC(v7, v28, v15, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], __dst, sub_1B2148E94);
    if (v6)
    {

      sub_1B213EA54(a1, a2);
      sub_1B213EA54(a1, a2);
      sub_1B212AC5C(__dst, &qword_1EB7A1370, &unk_1B2257580);
      return v15;
    }

    v30 = v29;
    sub_1B212AC5C(__dst, &qword_1EB7A1370, &unk_1B2257580);

    v31 = MEMORY[0x1E69E7CC0];

    v32 = 0;
    v33 = *(v30 + 16);
    v34 = 32;
LABEL_29:
    v35 = v34;
    v36 = v34 + 88 * v32;
    while (v33 != v32)
    {
      if (v32 >= *(v30 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      memcpy(__dst, (v30 + v36), sizeof(__dst));
      if ((__dst[16] & 1) != 0 || *&__dst[8] != 1)
      {
        sub_1B21499AC(__dst, &v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = *(v31 + 16);
          sub_1B2149BB0();
          v31 = v63;
        }

        v39 = *(v31 + 16);
        if (v39 >= *(v31 + 24) >> 1)
        {
          sub_1B2149BB0();
          v31 = v63;
        }

        ++v32;
        *(v31 + 16) = v39 + 1;
        memcpy((v31 + 88 * v39 + 32), __dst, 0x58uLL);
        v34 = v35;
        goto LABEL_29;
      }

      v36 += 88;
      ++v32;
    }

    *__dst = v31;

    sub_1B2149BD0(__dst, sub_1B21BFE34, sub_1B2149D70);

    v15 = *__dst;
    v40 = *(*__dst + 16);
    sub_1B213EA54(a1, a2);
    if (v40)
    {
      swift_beginAccess();
      v42 = *v58;
      v41 = v58[1];

      sub_1B213E2CC(v41, v69);
      v43 = v69[0];
      v44 = v69[1];
      v45 = v69[2];
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v45;
      sub_1B2149F60();
      v77 = v43;
      v78 = v44;
      v79 = v60;
      v80 = v70;
      v46 = v58[1];
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v58[1];
      sub_1B2148D50();
      v58[1] = v60;
      sub_1B213EA54(a1, a2);
      swift_endAccess();
      return v15;
    }

    v12 = v58;
    swift_beginAccess();
    v47 = *v58;
    sub_1B213E2CC(v58[1], v67);
    v48 = v67[0];
    v49 = v67[1];
    v50 = v67[2];
    swift_isUniquelyReferenced_nonNull_native();
    v60 = v50;
    sub_1B2149F60();
    v75[1] = v48;
    v75[2] = v49;
    v75[3] = v60;
    v76 = v68;
    v51 = v58[1];
    swift_isUniquelyReferenced_nonNull_native();
    v60 = v58[1];
LABEL_46:
    sub_1B2148D50();
    v12[1] = v60;
    sub_1B213EA54(a1, a2);
    swift_endAccess();
    return 0;
  }

  v16 = sub_1B213E114(1);
  sub_1B213EA54(a1, a2);
  if (!v5)
  {
    if ((v16 & 1) == 0)
    {
      sub_1B213EA54(a1, a2);
      swift_beginAccess();
      v52 = *v12;
      sub_1B213E2CC(v12[1], v65);
      v53 = v65[0];
      v54 = v65[1];
      v55 = v65[2];
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v55;
      sub_1B2149F60();
      v81 = v53;
      v82 = v54;
      v83 = v55;
      v84 = v66;
      v56 = v12[1];
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v12[1];
      goto LABEL_46;
    }

    v59 = a3;
    v85 = a4;
    goto LABEL_17;
  }

  sub_1B213EA54(a1, a2);
  sub_1B213EA54(a1, a2);
  return v15;
}

uint64_t sub_1B2143F18()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = sub_1B211E590();
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
}

void sub_1B2143F5C()
{
  sub_1B2114660();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v8 == v9)
  {
LABEL_7:
    sub_1B2111EF8(v7);
    if (v4)
    {
      sub_1B2113B10(v10, v11, v12, v13, v14, v15);
      v16 = sub_1B211A23C();
      sub_1B2111554(v16);
      sub_1B211F5F8();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1B2117B84();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v8)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2144090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11)
{

  return sub_1B2113A44(a9, a10, a11);
}

uint64_t sub_1B21440C0()
{

  return sub_1B2142354(v1, v0);
}

void *sub_1B214412C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __dst)
{

  return memcpy(&__dst, &a9, 0xA3uLL);
}

double EncodableRecord<>.encode(to:)(unint64_t *a1)
{
  v2 = type metadata accessor for RecordEncoder();
  v3 = a1[1];
  v9.n128_u64[0] = *a1;
  v9.n128_u64[1] = v3;
  sub_1B21442C4(&v9);
  v5 = v4;
  v10 = v2;
  WitnessTable = swift_getWitnessTable();
  v9.n128_u64[0] = v5;

  sub_1B2252200();
  v7 = *a1;
  v6 = a1[1];

  sub_1B2113208(&v9);
  sub_1B2145424(&v9);

  result = v9.n128_f64[0];
  *a1 = v9;
  return result;
}

__n128 sub_1B21442C4(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  *(v2 + 16) = *a1;
  return result;
}

uint64_t sub_1B2144320()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  type metadata accessor for RecordEncoder.KeyedContainer();
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

uint64_t sub_1B21443FC(uint64_t a1, void *a2)
{
  sub_1B2144680();
  if (v15)
  {
    if (v15 == 1)
    {
      v4 = a2[4];
      sub_1B21139A0(a2, a2[3]);
      v5 = sub_1B22534D0();
      v7 = sub_1B2190834(v5, v6);
      v9 = v8;
    }

    else
    {
      v7 = v15(a2);
      v9 = v12;
      sub_1B21268B4(v15);
    }
  }

  else
  {
    v10 = a2[4];
    sub_1B21139A0(a2, a2[3]);
    v7 = sub_1B22534D0();
    v9 = v11;
  }

  sub_1B21446E0(a1, &v15);
  swift_beginAccess();
  sub_1B2144750(&v15, v7, v9, v14);

  sub_1B212AC5C(v14, qword_1EB7A1570, &qword_1B225A4D0);
  sub_1B212AC5C(&v15, &qword_1EB7A0E30, &unk_1B2259360);
  return swift_endAccess();
}

uint64_t sub_1B2144558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = &protocol witness table for String;
  v13[0] = a1;
  v13[1] = a2;
  v12[3] = a6;
  v12[4] = a8;
  v10 = sub_1B212FF14(v12);
  (*(*(a6 - 8) + 16))(v10, a3, a6);

  sub_1B21443FC(v13, v12);
  sub_1B2113208(v12);
  return sub_1B212AC5C(v13, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21446E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1B2144750@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B21446E0(a1, &v13);
  sub_1B211314C();
  sub_1B2144838();
  if (*(&v15 + 1) == 1)
  {
    sub_1B212AC5C(&v14, qword_1EB7A1570, &qword_1B225A4D0);

    sub_1B21449A8();
    v8 = *(*v4 + 16);
    sub_1B2144A08();
    v9 = *v4;
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    *v4 = v9;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_1B2259350;
  }

  else
  {
    result = *&v14;
    v12 = v15;
    *a4 = v14;
    *(a4 + 16) = v12;
    *(a4 + 32) = v16;
  }

  return result;
}

void sub_1B2144838()
{
  sub_1B211AD88();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *v0;
  sub_1B211E590();
  sub_1B21120DC();
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_11:
    sub_1B2253390();
    __break(1u);
    return;
  }

  v14 = v10;
  v15 = v11;
  sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
  sub_1B213CE24();
  if (sub_1B2252E70())
  {
    sub_1B211E590();
    sub_1B2114080();
    if (!v17)
    {
      goto LABEL_11;
    }

    v14 = v16;
  }

  if (v15)
  {
    v18 = *(v21 + 56) + 40 * v14;
    v19 = *(v18 + 16);
    *v8 = *v18;
    *(v8 + 16) = v19;
    *(v8 + 32) = *(v18 + 32);
    v20 = *(v6 + 16);
    *v18 = *v6;
    *(v18 + 16) = v20;
    *(v18 + 32) = *(v6 + 32);
  }

  else
  {
    sub_1B2144974(v14, v4, v2, v6, v21);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = xmmword_1B2259350;
  }

  *v0 = v21;
  sub_1B21119F0();
}

void sub_1B2144974(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2117584(a1, a2, a3, a4, a5);
  sub_1B211ADB0(v5, v6, v7, v8);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v9, v10);
  }
}

void sub_1B21449A8()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B211728C();
    sub_1B2143F5C();
    *v1 = v4;
  }
}

void sub_1B2144A08()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B211728C();
    sub_1B2143F5C();
    *v0 = v4;
  }
}

uint64_t sub_1B2144A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[3] = a5;
  v15[4] = a8;
  v13 = sub_1B212FF14(v15);
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  sub_1B2144B88(a1, v15, a6, a9);
  return sub_1B2113208(v15);
}

void sub_1B2144B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v74 = a2;
  v86 = *MEMORY[0x1E69E9840];
  v72 = *v4;
  v7 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v65 - v9;
  v71 = sub_1B2251EE0();
  v69 = *(v71 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v65 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v67 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v26 = sub_1B2251E90();
  v70 = *(v26 - 8);
  v27 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v17 + 16);
  v30(v25, a1, a3);
  v31 = a3;
  if (swift_dynamicCast())
  {
    sub_1B21117B4(v16, 0, 1, v26);
    v32 = v70;
    (*(v70 + 32))(v29, v16, v26);
    v33 = *(v72 + 80);
    (*(*(v72 + 88) + 32))(&v79);
    v77 = v79;
    v78 = v80;
    sub_1B218EF84(&v82);
    sub_1B2187B6C(v77, *(&v77 + 1), v78);
    sub_1B21443FC(&v82, v74);
    sub_1B212AC5C(&v82, &qword_1EB7A0E30, &unk_1B2259360);
    (*(v32 + 8))(v29, v26);
  }

  else
  {
    v34 = v72;
    v35 = v74;
    sub_1B21117B4(v16, 1, 1, v26);
    sub_1B212AC5C(v16, &qword_1EB7A1330, &unk_1B226A760);
    v30(v23, a1, v31);
    v36 = v71;
    if (swift_dynamicCast())
    {
      v37 = v73;
      sub_1B21117B4(v73, 0, 1, v36);
      v38 = v69;
      v39 = v68;
      (*(v69 + 32))(v68, v37, v36);
      v40 = *(v34 + 80);
      (*(*(v34 + 88) + 40))(&v77);
      if (v77)
      {
        if (v77 == 1)
        {
          v41 = sub_1B2251EB0();
          v84 = MEMORY[0x1E69E6158];
          WitnessTable = &protocol witness table for String;
          *&v82 = v41;
          *(&v82 + 1) = v42;
        }

        else
        {
          sub_1B2251EB0();
          v59 = sub_1B2252220();
          v61 = v60;

          v84 = MEMORY[0x1E69E6158];
          WitnessTable = &protocol witness table for String;
          *&v82 = v59;
          *(&v82 + 1) = v61;
        }
      }

      else
      {
        v84 = &type metadata for DatabaseValue;
        WitnessTable = &protocol witness table for DatabaseValue;
        *&v79 = sub_1B2251ED0();
        *(&v79 + 1) = v57;
        *&v82 = MEMORY[0x1B27418E0](&v79, 16);
        *(&v82 + 1) = v58;
        v83 = 3;
      }

      sub_1B21443FC(&v82, v35);
      (*(v38 + 8))(v39, v36);
      sub_1B212AC5C(&v82, &qword_1EB7A0E30, &unk_1B2259360);
    }

    else
    {
      v43 = a1;
      v44 = v73;
      sub_1B21117B4(v73, 1, 1, v36);
      sub_1B212AC5C(v44, &qword_1EB7A1568, &qword_1B2258E20);
      v30(v67, a1, v31);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      v45 = v35;
      if (swift_dynamicCast())
      {
        sub_1B21217FC(&v79, &v82);
        v46 = v84;
        v47 = WitnessTable;
        sub_1B21139A0(&v82, v84);
        v48 = v47[3];
        *(&v80 + 1) = &type metadata for DatabaseValue;
        v81 = &protocol witness table for DatabaseValue;
        v48(&v79, v46, v47);
        sub_1B21443FC(&v79, v35);
        sub_1B212AC5C(&v79, &qword_1EB7A0E30, &unk_1B2259360);
        sub_1B2113208(&v82);
      }

      else
      {
        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        sub_1B212AC5C(&v79, &qword_1EB7A0E30, &unk_1B2259360);
        v49 = *(v34 + 80);
        v50 = *(v34 + 88);
        v51 = type metadata accessor for ColumnEncoder();
        sub_1B211EE68(v35, &v82);
        v52 = v75;
        v53 = sub_1B214A968(v75, &v82);
        v84 = v51;
        WitnessTable = swift_getWitnessTable();
        *&v82 = v53;

        v54 = v76;
        v55 = v66;
        sub_1B2252200();
        v56 = v54;
        if (v54)
        {

          sub_1B2113208(&v82);
        }

        else
        {
          sub_1B2113208(&v82);
          if (*(v53 + 64) != 1)
          {

            goto LABEL_20;
          }

          sub_1B2155660();
          v56 = swift_allocError();
          swift_willThrow();
        }

        *&v82 = v56;
        v62 = v56;
        sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
        if (swift_dynamicCast())
        {

          v63 = MEMORY[0x1B2743050]();
          sub_1B2186FAC(v45, v43, v52, v31, v55, &v79);
          objc_autoreleasePoolPop(v63);
        }
      }
    }
  }

LABEL_20:
  v64 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B2145424@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1B2145474()
{
  v0 = sub_1B21454A4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B21454A4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1B21454D4(_BYTE *a1)
{
  v3 = v1;
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[2];
  v6 = v1[3];
  LOBYTE(v16) = *a1;
  *(&v16 + 1) = v4;
  v17 = v5;
  v18 = v6;

  v8 = sub_1B21455C4();
  v10 = v9;

  v11 = sub_1B212DAFC(v8, v10);
  if (!v2)
  {

    v12 = sub_1B214620C(v6, v3[4]);
    sub_1B2112554(v12, &v16);
    v15 = v16;
    v13.values._rawValue = &v15;
    Statement.setUncheckedArguments(_:)(v13);
  }

  return v11;
}

uint64_t sub_1B21455C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_1ED85DA20 != -1)
  {
    swift_once();
  }

  v5 = sub_1B2117D3C();
  sub_1B2145AD4(v5, v6);
  v8 = v7;

  v9 = sub_1B2145CE0(v1, v2, v3, v4, v8);
  v11 = v10;

  if (!v11)
  {
    v12 = *(v4 + 16);
    if (v12)
    {
      v37 = MEMORY[0x1E69E7CC0];
      sub_1B212CE88();
      sub_1B2116B10();
      v13 = v37;
      v14 = (v4 + 40);
      v35 = v12;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v38[0] = 34;
        v38[1] = 0xE100000000000000;

        v17 = sub_1B212D5CC();
        MEMORY[0x1B2741EB0](v17);
        sub_1B2122C5C();

        v36 = v13;
        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1B2116B10();
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = 34;
        *(v19 + 40) = 0xE100000000000000;
        v14 += 2;
        --v12;
      }

      while (v12);
      v12 = v35;
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B21151BC();
    sub_1B211AB74(v20, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2252250();

    v38[0] = v12;
    v38[1] = 63;
    v38[2] = 0xE100000000000000;
    sub_1B21619D8(&qword_1EB7A2330, &qword_1B225EC10);
    sub_1B211AB74(&qword_1ED85DA30, &qword_1EB7A2330, &qword_1B225EC10);
    v21 = sub_1B2252250();
    v23 = v22;
    if (v1 == 1)
    {
      sub_1B211A2CC();
      sub_1B2252CD0();

      strcpy(v38, "INSERT INTO ");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
      v24 = sub_1B2112F9C();
      MEMORY[0x1B2741EB0](v24);
      sub_1B2122C5C();
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      MEMORY[0x1B2741EB0](10272, 0xE200000000000000);
      v25 = sub_1B212D5CC();
      MEMORY[0x1B2741EB0](v25);

      sub_1B211F6B0();
      MEMORY[0x1B2741EB0](v21, v23);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v9 = v38[0];
    }

    else
    {
      sub_1B211A2CC();
      sub_1B2252CD0();

      strcpy(v38, "INSERT OR ");
      BYTE3(v38[1]) = 0;
      HIDWORD(v38[1]) = -369098752;
      v26 = 0xE800000000000000;
      v27 = sub_1B21D8124();
      switch(v1)
      {
        case 1:
          __break(1u);
          JUMPOUT(0x1B2145AC0);
        case 2:
          v26 = 0xE400000000000000;
          v27 = 1279869254;
          break;
        case 3:
          v26 = 0xE600000000000000;
          v27 = 0x45524F4E4749;
          break;
        case 4:
          v26 = 0xE700000000000000;
          v27 = sub_1B21260C0();
          break;
        default:
          break;
      }

      MEMORY[0x1B2741EB0](v27, v26);

      MEMORY[0x1B2741EB0](0x204F544E4920, 0xE600000000000000);
      sub_1B21131A0();
      v28 = sub_1B2112F9C();
      MEMORY[0x1B2741EB0](v28);
      sub_1B2122C5C();
      MEMORY[0x1B2741EB0](v36);

      MEMORY[0x1B2741EB0](10272, 0xE200000000000000);
      v29 = sub_1B212D5CC();
      MEMORY[0x1B2741EB0](v29);

      sub_1B211F6B0();
      MEMORY[0x1B2741EB0](v21, v23);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v9 = v38[0];
    }

    v30 = sub_1B2117D3C();
    sub_1B2145AD4(v30, v31);
    v33 = v32;
    swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v33;
    sub_1B2153B18();
    sub_1B2153A80();
  }

  return v9;
}

void sub_1B2145B10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v4 + 24);
  sub_1B21619D8(a3, a4);
  sub_1B2252A50();
}

uint64_t sub_1B2145BA4()
{
  sub_1B211D7B0();
  swift_beginAccess();
  v4 = *(v1 + 16);

  v2(&v5, &v4);

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B2145C34@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B2145C54(a1);
}

uint64_t sub_1B2145C54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2145BA4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2145CB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_1B2145C98();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B2145CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v5 = sub_1B2145D20(), (v6 & 1) != 0))
  {
    sub_1B2114830(v5);
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

unint64_t sub_1B2145D20()
{
  sub_1B2111FC0();
  sub_1B21224DC();
  sub_1B2145DB0();
  sub_1B211314C();
  sub_1B2252370();
  sub_1B2145E84(v6, v0);
  sub_1B2253470();
  sub_1B211314C();

  return sub_1B2145EE4(v1, v2, v3, v0, v4);
}

uint64_t sub_1B2145DB0()
{
  sub_1B2252370();
}

void sub_1B2145E84(uint64_t a1, uint64_t a2)
{
  sub_1B211AD04(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1B2114748();
      sub_1B2252370();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1B2145EE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    v8 = 0x4B4341424C4C4F52;
    v26 = (a4 + 40);
    do
    {
      v9 = *(v5 + 48) + 32 * v7;
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = 0xE800000000000000;
      v14 = v8;
      switch(*v9)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x54524F4241;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1279869254;
          break;
        case 3:
          v13 = 0xE600000000000000;
          v14 = 0x45524F4E4749;
          break;
        case 4:
          v13 = 0xE700000000000000;
          v14 = 0x4543414C504552;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      v16 = v8;
      switch(a1)
      {
        case 1:
          v15 = 0xE500000000000000;
          v8 = 0x54524F4241;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v8 = 1279869254;
          break;
        case 3:
          v15 = 0xE600000000000000;
          v8 = 0x45524F4E4749;
          break;
        case 4:
          v15 = 0xE700000000000000;
          v8 = 0x4543414C504552;
          break;
        default:
          break;
      }

      if (v14 == v8 && v13 == v15)
      {
      }

      else
      {
        v18 = sub_1B22531F0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v19 = v11 == a2 && v10 == a3;
      if (v19 || (sub_1B22531F0() & 1) != 0)
      {
        v20 = *(v12 + 16);
        if (v20 == *(a4 + 16))
        {
          if (v20)
          {
            v21 = v12 == a4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
LABEL_41:

            return v7;
          }

          v22 = (v12 + 40);
          v23 = v26;
          while (1)
          {
            if (!v20)
            {
              __break(1u);
              JUMPOUT(0x1B21461C4);
            }

            v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
            if (!v24 && (sub_1B22531F0() & 1) == 0)
            {
              break;
            }

            v22 += 2;
            v23 += 2;
            if (!--v20)
            {
              goto LABEL_41;
            }
          }
        }
      }

LABEL_39:

      v7 = (v7 + 1) & v28;
      v8 = v16;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_1B21461EC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216F90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B214620C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1B21461EC(0, v2, 0);
  v3 = v19;
  v7 = (a1 + 40);
  while (*(a2 + 16))
  {
    v8 = *(v7 - 1);
    v9 = *v7;

    result = sub_1B211E590();
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1B21446E0(*(a2 + 56) + 40 * result, v17);

    v19 = v3;
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    if (v12 >= v11 >> 1)
    {
      v16 = sub_1B211156C(v11);
      result = sub_1B21461EC(v16, v12 + 1, 1);
      v3 = v19;
    }

    *(v3 + 16) = v12 + 1;
    v13 = v3 + 40 * v12;
    v14 = v17[0];
    v15 = v17[1];
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 48) = v15;
    v7 += 2;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

sqlite3_int64 Database.lastInsertedRowID.getter()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if (sub_1B2117B40(v1))
  {
    sub_1B2122734();
    swift_beginAccess();
    return sqlite3_last_insert_rowid(*(v0 + 16));
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21463A4()
{
  sub_1B21463D8();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

uint64_t sub_1B21463D8()
{
  v1 = *(v0 + 16);

  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = *(v0 + 48);

  sub_1B21424A0(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

void *DatabaseValueConvertible.sqlExpression.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  (*(a1 + 24))(&v4);
  __src[0] = v4;
  LOBYTE(__src[1]) = v5;
  sub_1B2127D7C(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B2146534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, _OWORD *))
{
  v11 = *a4;
  v10 = a4[1];
  sub_1B211E1E0(a5, v15, &qword_1EB7A1370, &unk_1B2257580);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = v11;
  __src[3] = v10;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = v12;

  sub_1B214670C(v15, v16, &qword_1EB7A1370, &unk_1B2257580);
  v19 = 2;
  v13 = a6(a1, v16);
  sub_1B212ACBC(v16, &unk_1EB7A1C18);
  return v13;
}

uint64_t sub_1B21466AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  sub_1B21118A0(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_1B214670C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1B224B650(a1, a2, a3, a4);
  sub_1B2111808(v5);
  v7 = *(v6 + 40);
  v8 = sub_1B2112FD0();
  v9(v8);
  return v4;
}

uint64_t sub_1B214675C()
{
  sub_1B213CACC();
  v4 = sub_1B2146A54(v3);
  if (!v0)
  {
    v12 = sub_1B212CF8C(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18, v19[0]);
    v1 = static Row.fetchAll(_:arguments:adapter:)(v12, v13, v14);
    if (v20)
    {

      v20(v2, v1);
      v16 = sub_1B2122C8C();
      sub_1B2112F4C(v16);
    }

    sub_1B2142D18(v19);
  }

  return v1;
}

uint64_t sub_1B2146830@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v5 = sub_1B2114D98(0);
  v6 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v8 = sub_1B2117164(v7, v5, v6);
  *&v20[0] = *(v3 + 40);

  sub_1B2119120(v8);
  if (v2)
  {
  }

  if (*(v3 + 48) == 2)
  {
    sub_1B2114290();
    v12 = sub_1B212641C(v9, v10, v11);
  }

  else
  {
    sub_1B2114290();
    if (v15)
    {
      v12 = sub_1B212DAFC(v13, v14);
    }

    else
    {
      v12 = Database.cachedStatement(sql:)(v13, v14);
    }
  }

  v17 = v12;

  sub_1B211B048(v20);
  v20[3] = v20[0];
  sub_1B2114290();
  Statement.setArguments(_:)(v18);
  if (v19)
  {
  }

  sub_1B211E17C(v3, v20, &qword_1EB7A1370, &unk_1B2257580);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0u;
  *a1 = v17;
  result = sub_1B2142B5C(v20, a1 + 8);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1B2146A84()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B2146AA4()
{
  result = *(v0 - 176);
  *(v0 - 72) = *(*(v0 - 168) + 32);
  return result;
}

void sub_1B2146AC0()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t sub_1B2146AD8()
{

  return sub_1B2181098();
}

void *sub_1B2146AF8(void *a1)
{

  return memcpy(a1, (v1 + 2840), 0xA3uLL);
}

uint64_t sub_1B2146B30()
{

  return sub_1B2253420();
}

uint64_t sub_1B2146B4C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = *a2;
  result = static Row.fetchCursor(_:arguments:adapter:)(a1, &v11, a3);
  if (!v5)
  {
    v9 = result;
    sub_1B21619D8(&qword_1EB7A33D0, &unk_1B226BA20);
    inited = swift_initStackObject();
    inited[2] = v9;
    inited[3] = a4;
    inited[4] = 0;
    return a5();
  }

  return result;
}

uint64_t sub_1B2146C18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  type metadata accessor for SchedulingWatchdog();
  v9 = *(a1 + 80);
  swift_unownedRetainStrong();

  if (sub_1B2117B40(v9))
  {

    v10 = *(a1 + 16);
    if (sqlite3_stmt_busy(v10))
    {
      v28 = a1;
      v31 = v9;
      goto LABEL_4;
    }

    swift_unownedRetainStrong();
    v25 = sub_1B212D130();
    Database.statementWillExecute(_:)(v25);
    v5 = v4;
    if (v4)
    {
    }

    else
    {
      v28 = a1;
      v31 = v9;

LABEL_4:
      while (sqlite3_step(v10) == 100)
      {
        v34 = *(a2 + 32);
        v12 = *(a3 + 24);
        v11 = *(a3 + 32);

        v12(&v33, &v34);
        if (v5)
        {

          return sub_1B2122A70();
        }

        MEMORY[0x1B2742060](v13);
        v14 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v14 >> 1)
        {
          sub_1B211156C(v14);
          sub_1B22525E0();
        }

        sub_1B2252630();
      }

      sub_1B21122DC();
      if (v23)
      {
        sub_1B21130F0(v15, v16, v17, v18, v19, v20, v21, v22, v26, v27, v28, v31);
        swift_unownedRetainStrong();
        Database.statementDidExecute(_:)(v29);
        if (!v5)
        {
          sub_1B2122A70();
        }
      }

      else
      {
        sub_1B21130F0(v15, v16, v17, v18, v19, v20, v21, v22, v26, v27, v28, v31);
        swift_unownedRetainStrong();
        sub_1B2122700(v30);
      }
    }

    return sub_1B2122A70();
  }

  else
  {
    sub_1B2122A70();

    sub_1B2112EA0();
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2146E6C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 16);
  swift_retain_n();

  sub_1B2146C18(v6, v5, a1, &v8);
  if (!v2)
  {
    *(v5 + 24) = 1;

    v4 = v8;
LABEL_5:

    return v4;
  }

  return v4;
}

uint64_t sub_1B2146F44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1B211E6C0();
  v5 = *(v2 + 112);
  sub_1B224B2B4();
  sub_1B2127108();
  result = v6();
  *a2 = result;
  return result;
}

uint64_t sub_1B2146FA8()
{

  return sub_1B2252EF0();
}

void *sub_1B2146FF4(void *a1)
{

  return memcpy(a1, &STACK[0x418], 0xA3uLL);
}

uint64_t sub_1B214700C()
{
  v3 = *(v0 - 72);
}

void sub_1B2147038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sqlite3_column_count(v1);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    if (!v2)
    {
      return;
    }

    v10 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v4 = 0;
    while (v3 != v4)
    {
      if (!sqlite3_column_name(v1, v4))
      {
        goto LABEL_12;
      }

      v5 = sub_1B22523F0();
      v7 = v6;
      v8 = *(v10 + 16);
      if (v8 >= *(v10 + 24) >> 1)
      {
        sub_1B2116B10();
      }

      ++v4;
      *(v10 + 16) = v8 + 1;
      v9 = v10 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      if (v3 == v4)
      {
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t FilterCursor.__deallocating_deinit()
{
  FilterCursor.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _s12GRDBInternal12FilterCursorCfd_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

void sub_1B2147194()
{
  v1 = *v0;
  sub_1B2119D9C();
  *v0 = v2;
}

uint64_t sub_1B21471E0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x6D5F6574696C7173;
  }

  if (a2 == 1)
  {
    sub_1B212D858();
    return 0xD000000000000012;
  }

  else
  {
    sub_1B2252CD0();

    MEMORY[0x1B2741EB0](0x5F6574696C71732ELL, 0xEE0072657473616DLL);
    return a1;
  }
}

uint64_t sub_1B21472B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2252CD0();

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001B226E460;
  MEMORY[0x1B2741EB0](a2, a3);

  sub_1B2113180();
  v7 = sub_1B21473DC(a1, v6, 0x80000001B226E460, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v9, sub_1B214750C);
  sub_1B212AC5C(v9, &qword_1EB7A1370, &unk_1B2257580);

  return v7;
}

uint64_t sub_1B21473DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, _OWORD *))
{
  sub_1B2122784(a6, v16);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v13 + 32), __src, 0xB8uLL);
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = v13;

  sub_1B2142B5C(v16, v17);
  v20 = 2;
  v14 = a7(a1, v17);
  sub_1B212AC5C(v17, &qword_1EB7A1C18, &qword_1B2259C90);
  return v14;
}

uint64_t sub_1B214750C(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54(&v21, a1, 0);
  if (v2)
  {
    return a2;
  }

  v5 = v23;
  if (!v23)
  {
    sub_1B2122784(v22, v19);
    sub_1B21619D8(&qword_1EB7A21D8, &qword_1B225B6B8);
    swift_allocObject();

    v10 = sub_1B214786C(v7, 0, 0, v19);
    *&v18[0] = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(v10 + 24) == 1)
    {

      a2 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v16 = v10[2];

      sub_1B2147A24(v16);
      *(v10 + 24) = 1;

      a2 = *&v18[0];
    }

LABEL_17:
    sub_1B2142D18(&v21);
    return a2;
  }

  type metadata accessor for Row();
  v6 = v21;
  v19[0] = 0uLL;

  v9 = static Row.fetchAll(_:arguments:adapter:)(v6, v19, v22);
  v5(a1, v9);
  v25 = v5;
  v11 = sub_1B2116B08(v9);
  v12 = sub_1B21C2600();
  v20 = MEMORY[0x1B27422D0](v11, &type metadata for SchemaInfo.SchemaObject, v12);
  v13 = sub_1B2116B08(v9);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      sub_1B2112F4C(v25);
      a2 = v20;
      goto LABEL_17;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B27427E0](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v15 = *(v9 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for RowDecoder();
    swift_initStackObject();
    sub_1B2147C54(v15, v19);

    v24[0] = v19[0];
    v24[1] = v19[1];
    v24[2] = v19[2];
    v24[3] = v19[3];
    sub_1B21481C0(v17, v24);
    v18[0] = v17[0];
    v18[1] = v17[1];
    v18[2] = v17[2];
    v18[3] = v17[3];
    sub_1B2148190(v18);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t *sub_1B214786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  *(v4 + 24) = 0;
  v4[2] = a1;
  type metadata accessor for Row();
  swift_allocObject();
  v12 = swift_retain_n();
  sub_1B211CFCC(v12);
  v16[3] = type metadata accessor for Statement();
  v16[4] = &protocol witness table for Statement;
  v16[0] = a1;

  v13 = sub_1B211E6DC(a4, v16);

  if (v5)
  {
    sub_1B211A378(a2);

    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(v16);
    v14 = v6[2];

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B2113208(v16);
    v6[4] = v13;
    v16[0] = a2;
    v16[1] = a3;
    sub_1B2119E50(v16);
    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(a2);
  }

  return v6;
}

uint64_t sub_1B2147A24(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  v3 = *(a1 + 80);
  v4 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v4))
  {

    v5 = *(a1 + 16);
    if (!sqlite3_stmt_busy(v5))
    {
      swift_unownedRetainStrong();
      v6 = sub_1B2115468();
      Database.statementWillExecute(_:)(v6);
      if (v1)
      {
LABEL_10:
      }
    }

    while (1)
    {
      v7 = sqlite3_step(v5);
      if (v7 != 100)
      {
        break;
      }

      sub_1B2147BC4(&v12);
      v21[0] = v12;
      v21[1] = v13;
      v21[2] = v14;
      v21[3] = v15;
      sub_1B2148158(v21, &v17);
      sub_1B21481C0(&v17, v21);
      v16[0] = v17;
      v16[1] = v18;
      v16[2] = v19;
      v16[3] = v20;
      sub_1B2148190(v16);
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = v15;
      sub_1B2148190(&v17);
    }

    if (v7 == 101)
    {
      swift_unownedRetainStrong();
      v8 = sub_1B2115468();
      Database.statementDidExecute(_:)(v8);
    }

    else
    {
      swift_unownedRetainStrong();
      sub_1B2111BFC();
      Database.statementDidFail(_:withResultCode:)(v9, v10);
    }

    goto LABEL_10;
  }

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

double sub_1B2147BC4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  type metadata accessor for RowDecoder();
  swift_initStackObject();
  sub_1B2147C54(v3, v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double sub_1B2147C54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v10[3] = sub_1B21619D8(&qword_1EB7A21E8, &qword_1B225B6C0);
  v10[4] = sub_1B211AB74(qword_1ED85E018, &qword_1EB7A21E8, &qword_1B225B6C0);
  sub_1B2113B74();
  v5 = swift_allocObject();
  v10[0] = v5;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = a1;
  v5[3] = v6;
  v5[4] = 0;
  v5[5] = 0;

  sub_1B2147D80(v10, v11);
  if (!v2)
  {
    v8 = v11[1];
    *a2 = v11[0];
    a2[1] = v8;
    result = *&v12;
    v9 = v13;
    a2[2] = v12;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_1B2147D30()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4] >= 2uLL)
  {
    v3 = v0[5];
  }

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B2147D80@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1B21619D8(&qword_1EB7A21F0, &qword_1B225B6C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B2148074();
  sub_1B22534A0();
  if (v2)
  {
    return sub_1B2113208(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_1B2252F60();
  v26 = v12;
  LOBYTE(v31[0]) = 1;
  *&v25 = sub_1B2252F60();
  *(&v25 + 1) = v13;
  LOBYTE(v31[0]) = 2;
  *&v24 = sub_1B2252F50();
  *(&v24 + 1) = v14;
  v37 = 3;
  v15 = sub_1B2252F50();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v18 = v26;
  *&v27 = v11;
  *(&v27 + 1) = v26;
  v19 = *(&v24 + 1);
  v20 = v25;
  v28 = v25;
  v29 = v24;
  *&v30 = v15;
  *(&v30 + 1) = v17;
  sub_1B2148158(&v27, v31);
  sub_1B2113208(a1);
  v31[0] = v11;
  v31[1] = v18;
  v32 = __PAIR128__(*(&v25 + 1), v20);
  v33 = v24;
  v34 = v19;
  v35 = v15;
  v36 = v17;
  result = sub_1B2148190(v31);
  v22 = v28;
  *a2 = v27;
  a2[1] = v22;
  v23 = v30;
  a2[2] = v29;
  a2[3] = v23;
  return result;
}

unint64_t sub_1B2148074()
{
  result = qword_1ED85E0B0;
  if (!qword_1ED85E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0B0);
  }

  return result;
}

uint64_t sub_1B21480DC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x656D616E5F6C6274;
      break;
    case 3:
      result = 7106931;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B21481C0(__int128 *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B2253420();
  sub_1B21483F8();
  sub_1B2253470();
  v6 = *(v4 + 32);
  sub_1B2113B98();
  v9 = v8 & ~v7;
  v42 = v10;
  if ((*(v10 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v40 = ~v7;
    v11 = *a2;
    v12 = a2[1];
    v37 = v4;
    v41 = *(v4 + 48);
    do
    {
      v13 = (v41 + (v9 << 6));
      v14 = v13[2];
      v15 = v13[3];
      v17 = v13[4];
      v16 = v13[5];
      v19 = v13[6];
      v18 = v13[7];
      v20 = *v13 == v11 && v13[1] == v12;
      if (!v20 && (sub_1B22531F0() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v14 != a2[2] || v15 != a2[3])
      {
        sub_1B2116164();
        if ((sub_1B22531F0() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v22 = a2[5];
      if (v16)
      {
        if (!v22)
        {
          goto LABEL_31;
        }

        if (v17 != a2[4] || v16 != v22)
        {
          sub_1B2111658();
          if ((sub_1B22531F0() & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v22)
      {
        goto LABEL_31;
      }

      v24 = a2[7];
      if (v18)
      {
        if (v24)
        {
          v25 = v19 == a2[6] && v18 == v24;
          if (v25 || (sub_1B2117214(), (sub_1B22531F0() & 1) != 0))
          {
LABEL_34:
            sub_1B2148190(a2);
            v31 = (*(v37 + 48) + (v9 << 6));
            v32 = *v31;
            v33 = v31[1];
            v34 = v31[3];
            v44[2] = v31[2];
            v44[3] = v34;
            v44[0] = v32;
            v44[1] = v33;
            v35 = v31[1];
            *a1 = *v31;
            a1[1] = v35;
            v36 = v31[3];
            a1[2] = v31[2];
            a1[3] = v36;
            sub_1B2148158(v44, v43);
            return 0;
          }
        }
      }

      else if (!v24)
      {
        goto LABEL_34;
      }

LABEL_31:
      v9 = (v9 + 1) & v40;
    }

    while (((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  v26 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *v38;
  sub_1B2148158(a2, v44);
  sub_1B21484B0(a2, v9, isUniquelyReferenced_nonNull_native);
  *v38 = v43[0];
  v28 = *(a2 + 1);
  *a1 = *a2;
  a1[1] = v28;
  v29 = *(a2 + 3);
  a1[2] = *(a2 + 2);
  a1[3] = v29;
  return 1;
}

uint64_t sub_1B21483F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B2252370();
  v3 = v0[2];
  v4 = v0[3];
  sub_1B2252370();
  if (v0[5])
  {
    v5 = v0[4];
    sub_1B2253440();
    sub_1B2252370();
  }

  else
  {
    sub_1B2253440();
  }

  if (!v0[7])
  {
    return sub_1B2253440();
  }

  v6 = v0[6];
  sub_1B2253440();

  return sub_1B2252370();
}

uint64_t sub_1B21484B0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B21489CC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1B2249048();
        goto LABEL_39;
      }

      sub_1B21486EC(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1B2253420();
    sub_1B21483F8();
    result = sub_1B2253470();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    v36 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v35 = ~v10;
      v11 = *v5;
      v12 = v5[1];
      v34 = *(v8 + 48);
      do
      {
        v13 = (v34 + (a2 << 6));
        result = *v13;
        v15 = v13[2];
        v14 = v13[3];
        v17 = v13[4];
        v16 = v13[5];
        v19 = v13[6];
        v18 = v13[7];
        if (*v13 != v11 || v13[1] != v12)
        {
          result = sub_1B22531F0();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        if (v15 != v5[2] || v14 != v5[3])
        {
          result = sub_1B22531F0();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v22 = v5[5];
        if (v16)
        {
          if (!v22)
          {
            goto LABEL_38;
          }

          if (v17 != v5[4] || v16 != v22)
          {
            result = sub_1B22531F0();
            if ((result & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        else if (v22)
        {
          goto LABEL_38;
        }

        v24 = v5[7];
        if (v18)
        {
          if (v24)
          {
            if (v19 == v5[6] && v18 == v24)
            {
              goto LABEL_42;
            }

            result = sub_1B22531F0();
            if (result)
            {
              goto LABEL_42;
            }
          }
        }

        else if (!v24)
        {
          goto LABEL_42;
        }

LABEL_38:
        a2 = (a2 + 1) & v35;
      }

      while (((*(v36 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v26 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + (a2 << 6));
  v28 = *(v5 + 1);
  *v27 = *v5;
  v27[1] = v28;
  v29 = *(v5 + 3);
  v27[2] = *(v5 + 2);
  v27[3] = v29;
  v30 = *(v26 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_42:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v32;
  }

  return result;
}

uint64_t sub_1B21486EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A3498, &qword_1B226C228);
  result = sub_1B2252C70();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + ((v13 | (v7 << 6)) << 6));
        v18 = *v16;
        v17 = v16[1];
        v19 = v16[3];
        v37 = v16[2];
        v38 = v19;
        v35 = v18;
        v36 = v17;
        v20 = *(v6 + 40);
        sub_1B2253420();
        sub_1B2148158(&v35, v34);
        sub_1B2252370();
        sub_1B2252370();
        if (*(&v37 + 1))
        {
          sub_1B2253440();
          sub_1B2252370();
        }

        else
        {
          sub_1B2253440();
        }

        if (*(&v38 + 1))
        {
          sub_1B2253440();
          sub_1B2252370();
        }

        else
        {
          sub_1B2253440();
        }

        result = sub_1B2253470();
        v21 = -1 << *(v6 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v6 + 48) + (v24 << 6));
        v30 = v35;
        v31 = v36;
        v32 = v38;
        v29[2] = v37;
        v29[3] = v32;
        *v29 = v30;
        v29[1] = v31;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v33;
          goto LABEL_33;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}