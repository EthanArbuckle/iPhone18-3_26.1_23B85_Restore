uint64_t sub_1007DC2E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB63D8);
  v35 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1007DC588(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100706B30(&qword_100CB63C8);
  v38 = a2;
  result = sub_100937418();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1007DFC7C(v25, v7);
      }

      else
      {
        sub_1007DE914(v25, v7, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v26 = v23;
      }

      result = sub_100937028(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1007DFC7C(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void sub_1007DC8A8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100937028(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1007DCA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    do
    {
      sub_100937668();

      sub_100936BC8();
      v9 = sub_1009376C8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1007DCBE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    do
    {
      sub_100937668();

      sub_100936BC8();
      v9 = sub_1009376C8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1007DCD94(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100937028(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for IDSGroupEncryptionPublicIdentity(0) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_1007DCF5C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000136E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1007DC044(v16, a4 & 1);
      result = sub_1000136E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1007DD5B4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1007DD0C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000136E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1007DC2E4(v16, a4 & 1);
      v11 = sub_1000136E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1009375D8();
        __break(1u);
        return _objc_release_x1(v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1007DD71C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return _objc_release_x1(v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_1007DD240(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1007DBB60(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_1007DD888();
      goto LABEL_7;
    }

    sub_1007DC588(v12, a3 & 1);
    v19 = sub_1007DBB60(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_100014170(0, &qword_100CB34A0);
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for IDSGroupEncryptionPublicIdentity(0) - 8) + 72) * v9;

    return sub_1007E0124(a1, v17);
  }

LABEL_13:
  sub_1007DD3A4(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_1007DD3A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  result = sub_1007DFC7C(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_1007DD438()
{
  v1 = v0;
  sub_100706B30(&qword_100CB63F0);
  v2 = *v0;
  v3 = sub_100937408();
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
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        v19 = v18;
        result = sub_100715738(v20, *(&v20 + 1));
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

void *sub_1007DD5B4()
{
  v1 = v0;
  sub_100706B30(&qword_100CB63D0);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_1007DD71C()
{
  v1 = v0;
  sub_100706B30(&qword_100CB63D8);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

id sub_1007DD888()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB63C8);
  v5 = *v0;
  v6 = sub_100937408();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1007DE914(*(v5 + 56) + v22, v4, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1007DFC7C(v4, *(v7 + 56) + v22);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_1007DDAAC(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1007DDE00(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1007DDC0C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1007DDC0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a1;
  v4 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v7 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    sub_1007DE914(*(a3 + 56) + *(v23 + 72) * v15, v6, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v17 = v16;
    v18 = sub_10089CDF8();
    sub_1007BE0C4(v6, type metadata accessor for IDSGroupEncryptionPublicIdentity);

    if ((v18 & 1) == 0)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1007DDE78(v21, v20, v22, a3);
        return;
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 64 + 8 * v7);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1007DDE00(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1007DDC0C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1007DDE78(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v40 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v38 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100706B30(&qword_100CB63C8);
  result = sub_100937438();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v38 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v39;
    v41 = *(v40 + 72);
    sub_1007DE914(v22 + v41 * v21, v39, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v25 = v24;
    v26 = v11;
    sub_1007DFC7C(v25, v11);
    v27 = *(v14 + 40);
    v28 = v23;
    result = sub_100937028(v27);
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v11 = v26;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v11 = v26;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v14 + 48) + 8 * v32) = v28;
    result = sub_1007DFC7C(v11, *(v14 + 56) + v32 * v41);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_1007DE16C(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_100937118();
  sub_100014170(0, &qword_100CB34A0);
  sub_1007D5B6C();
  result = sub_100936E58();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_100937198())
      {
        goto LABEL_30;
      }

      sub_100014170(0, &qword_100CB34A0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1007DE388(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100937158();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100788564(v2, 0);

    v1 = sub_1007DE16C(&v5, v3 + 4, v2, v1);
    sub_100308C6C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_1007DE438(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1009373F8();
    }

    result = sub_100937278();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1007DE4F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1009373F8();
  }

  return sub_100937278();
}

unint64_t sub_1007DE558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB63D8);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000136E4(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1007DE65C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB63D0);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000136E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1007DE758(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB63F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB63C8);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1007E01F8(v9, v5);
      v11 = *v5;
      result = sub_1007DBB60(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
      result = sub_1007DFC7C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1007DE914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1007DE97C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB63F0);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_100715738(v5, v6);
      result = sub_1007DBB60(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1007DEA80(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v34 = sub_100936F78();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100936F38();
  __chkstk_darwin(v10);
  v11 = sub_100936528();
  __chkstk_darwin(v11 - 8);
  sub_1009364C8();
  v33 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_q;
  v12 = sub_100014170(0, &qword_100CB3510);
  v32[0] = &unk_1009B3920;
  v32[1] = v12;
  sub_100936508();
  v41 = &_swiftEmptyArrayStorage;
  sub_100014B68(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520);
  sub_1009370B8();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v5[v33] = sub_100936F98();
  v13 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock;
  v14 = sub_1007DE558(&_swiftEmptyArrayStorage);
  v15 = sub_1007DE65C(&_swiftEmptyArrayStorage);
  sub_100706B30(&qword_100CB62E0);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *&v6[v13] = v16;
  v17 = OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock;
  v18 = sub_1007DE758(&_swiftEmptyArrayStorage);
  sub_100706B30(&qword_100CB62E8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *&v6[v17] = v19;
  v20 = &v6[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners];
  *v20 = 0;
  *(v20 + 1) = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v22 = v36;
  v21 = v37;
  *&v6[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_config] = v36;
  *&v6[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_sessionProvider] = v21;
  v24 = v38;
  v23 = v39;
  *&v6[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController] = v38;
  *&v6[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_pushHandler] = v23;
  v25 = type metadata accessor for IDSGroupEncryptionDefaultCryptoHandler();
  v26 = v22;
  swift_unknownObjectRetain();
  v27 = v24;
  swift_unknownObjectRetain();
  v28 = StewieProvisioningEventTracing.__allocating_init()();
  v29 = &v6[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_cryptoHandler];
  *(v29 + 3) = v25;
  *(v29 + 4) = &off_100BE9B28;
  *v29 = v28;
  v30 = type metadata accessor for IDSGroupEncryptionController2();
  v40.receiver = v6;
  v40.super_class = v30;
  return objc_msgSendSuper2(&v40, "init");
}

uint64_t type metadata accessor for IDSGroupEncryptionController2()
{
  result = qword_100CC6C48;
  if (!qword_100CC6C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007DEF2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1007DBB60(*(v3 + 16)), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v11 = *(v10 - 8);
    sub_1007DE914(v9 + *(v11 + 72) * v8, a2, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_1007DF088(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v42 = a6;
  v32 = a5;
  v33 = a2;
  v31 = a1;
  v38 = sub_1009364F8();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100936528();
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v34 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100936038();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v36 = *&v8[OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_q];
  (*(v17 + 16))(&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v16);
  v19 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 2) = v8;
  *(v20 + 3) = v21;
  *(v20 + 4) = v42;
  *(v20 + 5) = a4;
  *(v20 + 6) = a3;
  *(v20 + 7) = a1;
  v22 = v33;
  *(v20 + 8) = v33;
  (*(v17 + 32))(&v20[v19], &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  *&v20[(v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v35;
  aBlock[4] = sub_1007DFFD8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE8CB0;
  v23 = _Block_copy(aBlock);
  v24 = v8;

  v25 = a4;
  v26 = a3;
  sub_100715738(v31, v22);
  v27 = v34;
  sub_100936508();
  v43 = &_swiftEmptyArrayStorage;
  sub_100014B68(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550);
  sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
  v29 = v37;
  v28 = v38;
  sub_1009370B8();
  sub_100936F88();
  _Block_release(v23);
  (*(v41 + 8))(v29, v28);
  (*(v39 + 8))(v27, v40);
}

unint64_t sub_1007DF4AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 8);
  result = sub_1007DCF5C(1, v3, v4, isUniquelyReferenced_nonNull_native);
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1007DF518()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock);

  os_unfair_lock_lock((v1 + 32));
  sub_1007DFCE0((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

void sub_1007DF5B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_remoteParticipantsListeners));

  v4 = sub_1007DF880((v3 + 8), v2);

  v5 = *(v3 + 8);
  if (v5 >> 62)
  {
    v6 = sub_1009373F8();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1007DFBA4(v4, v6);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1007DF680()
{
  result = sub_1009364D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1007DF77C(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1009373F8();
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
      v9 = sub_100937268();
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

uint64_t sub_1007DF880(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1007DF77C(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1009373F8();
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
      if (v11 == sub_1009373F8())
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

    v16 = sub_100937268();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_100937268();
        v14 = sub_100937268();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1007DE4F4(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_1007DE4F4(v7);
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
        *(v4 + 8 * v11 + 32) = v3;

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
  return sub_1009373F8();
}

uint64_t sub_1007DFAA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for IDSGroupEncryptionController2.RemoteParticipantsListener();
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
  result = sub_1009373F8();
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
    result = sub_1009373F8();
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

uint64_t sub_1007DFBA4(uint64_t a1, uint64_t a2)
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

  result = sub_1009373F8();
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
    v9 = sub_1009373F8();
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

  sub_1007DE438(result);

  return sub_1007DFAA8(v4, v2, 0);
}

uint64_t sub_1007DFC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1007DFCE0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  if (*(v4 + 16) && (v6 = sub_1000136E4(v2, v3), (v7 & 1) != 0) && *(*(v4 + 56) + v6) == 1)
  {
    v8 = *a1;
    if (*(*a1 + 16))
    {
      v9 = sub_1000136E4(v2, v3);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        v12 = *((swift_isaMask & *v11) + 0x3B8);
        v13 = v11;
        v12(v2, v3);
      }
    }

    sub_1007D7C08(0, v2, v3);

    sub_1007D7D00(2, v2, v3);

    v14 = sub_1009364B8();
    v15 = sub_100936F18();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10001273C(0xD00000000000001ALL, 0x8000000100B02D50, &v18);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_10001273C(v2, v3, &v18);
      v17 = "%s: cleaned up for group %s.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {

    v14 = sub_1009364B8();
    v15 = sub_100936F18();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10001273C(0xD00000000000001ALL, 0x8000000100B02D50, &v18);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_10001273C(v2, v3, &v18);
      v17 = "%s: does not need to clean up for group %s.";
      goto LABEL_11;
    }
  }
}

void sub_1007DFFD8()
{
  v1 = *(sub_100936038() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  sub_1007D9044(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1007E0074@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1000136E4(*(v3 + 16), *(v3 + 24));
    if (v6)
    {
      v7 = *(*(v5 + 56) + 8 * result);
      result = v7;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1007E00E0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1007E00EC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1007E0124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007E0188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB63E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007E01F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB63F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1007E02A0()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1);
  return sub_1009376C8();
}

Swift::Int sub_1007E0314()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1);
  return sub_1009376C8();
}

uint64_t *sub_1007E0358@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1007E0374(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___IDSServerRateLimitConfigurationOptions_service];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_1007E045C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerRateLimitConfigurationOptions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007E04A4()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() sharedInstanceForBagType:1];
  v6[3] = sub_100014170(0, &qword_100CB6408);
  v6[4] = &off_100BE8D00;
  v6[0] = v1;
  v2 = [objc_opt_self() defaultCenter];
  v5[3] = sub_100014170(0, &qword_100CB6410);
  v5[4] = &off_100BE8D10;
  v5[0] = v2;
  v3 = (*(ObjectType + 144))(v6, v5);
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_1007E0650(uint64_t a1, void *a2)
{
  sub_1007C9A6C(16);
  *&v2[OBJC_IVAR___IDSServerRateLimitConfiguration_rules] = 0;
  v5 = OBJC_IVAR___IDSServerRateLimitConfiguration_rateLimiter;
  *&v2[v5] = [objc_allocWithZone(IDSRateLimiter) initWithLimit:0 timeLimit:0.0];
  sub_100022B2C(a1, &v2[OBJC_IVAR___IDSServerRateLimitConfiguration_serverBag]);
  sub_100022B2C(a2, &v2[OBJC_IVAR___IDSServerRateLimitConfiguration_notificationCenter]);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for ServerRateLimitConfiguration();
  v6 = objc_msgSendSuper2(&v18, "init");
  v7 = a2[3];
  v8 = a2[4];
  sub_1000226D4(a2, v7);
  v9 = IDSServerBagFinishedLoadingNotification;
  memset(v17, 0, sizeof(v17));
  v10 = objc_opt_self();
  v11 = v6;
  v12 = [v10 mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v8 + 8);

  v14(v9, v17, v12, sub_1007E26E4, v13, v7, v8);

  swift_unknownObjectRelease();

  sub_100012970(a1);
  sub_100013814(v17, &qword_100CB4A90);

  sub_100012970(a2);
  return v11;
}

char *sub_1007E084C()
{
  v0 = sub_1009364D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 16))(v3, Strong + OBJC_IVAR___IDSServerRateLimitConfiguration_logger, v0);

    v6 = sub_1009364B8();
    v7 = sub_100936F18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Server bag finished loading, resetting rules", v8, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR___IDSServerRateLimitConfiguration_rules] = 0;
  }

  return result;
}

id sub_1007E0A14()
{
  sub_100022B2C(v0 + OBJC_IVAR___IDSServerRateLimitConfiguration_notificationCenter, v9);
  v1 = v10;
  v2 = v11;
  sub_1000226D4(v9, v10);
  v3 = type metadata accessor for ServerRateLimitConfiguration();
  v8[3] = v3;
  v8[0] = v0;
  v4 = *(v2 + 16);
  v5 = v0;
  v4(v8, v1, v2);
  sub_100012970(v8);
  sub_100012970(v9);
  v7.receiver = v5;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1007E0C54()
{
  v1 = v0;
  v2 = sub_100936B78();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___IDSServerRateLimitConfiguration_rules;
  if (*&v0[OBJC_IVAR___IDSServerRateLimitConfiguration_rules])
  {
    return;
  }

  v8 = v4;
  v9 = *&v0[OBJC_IVAR___IDSServerRateLimitConfiguration_serverBag + 24];
  v10 = *&v0[OBJC_IVAR___IDSServerRateLimitConfiguration_serverBag + 32];
  sub_1000226D4(&v0[OBJC_IVAR___IDSServerRateLimitConfiguration_serverBag], v9);
  (*(v10 + 8))(&v52, 0xD000000000000017, 0x8000000100B03470, v9, v10);
  if (!v55)
  {
    sub_100013814(&v52, &qword_100CB4A90);
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    *&v1[v7] = &_swiftEmptyArrayStorage;

    return;
  }

  sub_100936B68();
  v11 = sub_100936B48();
  v13 = v12;

  (*(v3 + 8))(v6, v8);
  if (v13 >> 60 == 15)
  {
LABEL_24:
    v35 = sub_1009364B8();
    v36 = sub_100936EF8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to parse rate limit rules", v37, 2u);
    }

    goto LABEL_27;
  }

  v14 = objc_opt_self();
  isa = sub_100935E78().super.isa;
  v52 = 0;
  v16 = [v14 JSONObjectWithData:isa options:0 error:&v52];

  if (!v16)
  {
    v34 = v52;
    sub_100935D78();

    swift_willThrow();
    sub_10001C370(v11, v13);

    goto LABEL_24;
  }

  v17 = v52;
  sub_100937098();
  swift_unknownObjectRelease();
  sub_100706B30(&qword_100CB6470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = v51;
  if (!*(v51 + 16) || (v19 = sub_1000136E4(0xD000000000000011, 0x8000000100B03490), (v20 & 1) == 0))
  {
    sub_10001C370(v11, v13);

    goto LABEL_24;
  }

  sub_100012914(*(v18 + 56) + 32 * v19, &v52);

  sub_100706B30(&qword_100CB6478);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_10001C370(v11, v13);
    goto LABEL_24;
  }

  v21 = 0;
  v46 = 0;
  v22 = v51;
  v23 = *(v51 + 16);
  v24 = &_swiftEmptyArrayStorage;
LABEL_11:
  v25 = v21;
  while (v23 != v25)
  {
    if (v25 >= *(v22 + 16))
    {
      __break(1u);
    }

    v21 = v25 + 1;

    sub_1007E23F0(v26, &v52);
    v27 = v53;
    v25 = v21;
    if (v53)
    {
      v47 = v52;
      v49 = v55;
      v50 = v54;
      v48 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1007E2198(0, *(v24 + 2) + 1, 1, v24);
      }

      v29 = *(v24 + 2);
      v28 = *(v24 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v45 = v29 + 1;
        v33 = sub_1007E2198((v28 > 1), v29 + 1, 1, v24);
        v30 = v45;
        v24 = v33;
      }

      *(v24 + 2) = v30;
      v31 = &v24[40 * v29];
      *(v31 + 4) = v47;
      *(v31 + 5) = v27;
      v32 = v49;
      *(v31 + 6) = v50;
      *(v31 + 7) = v32;
      v31[64] = v48 & 1;
      goto LABEL_11;
    }
  }

  *&v1[v7] = v24;

  v38 = v1;
  v39 = sub_1009364B8();
  v40 = sub_100936F18();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    v42 = *&v1[v7];
    if (v42)
    {
      v42 = *(v42 + 16);
    }

    *(v41 + 4) = v42;
    v43 = v41;

    _os_log_impl(&_mh_execute_header, v39, v40, "Loaded %ld rules", v43, 0xCu);
  }

  else
  {
  }

  sub_10001C370(v11, v13);
}

uint64_t sub_1007E120C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  sub_1007E0C54();
  v4 = *(v2 + OBJC_IVAR___IDSServerRateLimitConfiguration_rules);
  if (!v4)
  {
    v30 = sub_1009364B8();
    v31 = sub_100936F18();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No rules loaded", v32, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v5 = *(v4 + 16);

  v36 = v5;
  if (!v5)
  {
    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v7 = 0;
  v35 = v4 + 32;
  v8 = &_swiftEmptyArrayStorage;
  v34 = v4;
  while (1)
  {
    v38 = v8;
LABEL_5:
    if (v7 >= *(v4 + 16))
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v9 = v35 + 40 * v7;
    v11 = *v9;
    v10 = *(v9 + 8);
    v40 = *(v9 + 16);
    LODWORD(v12) = *(v9 + 32);
    ++v7;
    v13 = v11 == 42 && v10 == 0xE100000000000000;
    v42 = v10;
    v39 = v12;
    if (!v13)
    {
      break;
    }

LABEL_25:
    result = swift_isUniquelyReferenced_nonNull_native();
    v45 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1007E22B4(0, v8[2] + 1, 1);
      v8 = v45;
    }

    v25 = v42;
    v27 = v8[2];
    v26 = v8[3];
    if (v27 >= v26 >> 1)
    {
      v12 = v11;
      v29 = v42;
      result = sub_1007E22B4((v26 > 1), v27 + 1, 1);
      v25 = v29;
      v11 = v12;
      LOBYTE(v12) = v39;
      v8 = v45;
    }

    v8[2] = v27 + 1;
    v28 = &v8[5 * v27];
    v28[4] = v11;
    v28[5] = v25;
    *(v28 + 3) = v40;
    *(v28 + 64) = v12;
    if (v7 == v36)
    {
      goto LABEL_37;
    }
  }

  v14 = v11;
  v15 = v10;
  v16 = sub_100937598();
  if (v16)
  {

    v11 = v14;
LABEL_24:
    LOBYTE(v12) = v39;
    goto LABEL_25;
  }

  v41 = v7;
  v44[0] = 44;
  v44[1] = 0xE100000000000000;
  __chkstk_darwin(v16);
  v33[2] = v44;
  swift_bridgeObjectRetain_n();
  v37 = v14;
  result = sub_1007E1CCC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1007E28B4, v33, v14, v15, v17);
  v18 = result;
  v19 = result + 56;
  v20 = -*(result + 16);
  v21 = -1;
  while (v20 + v21 != -1)
  {
    if (++v21 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (sub_100936BB8() == a1 && v22 == v43)
    {

LABEL_23:

      v4 = v34;
      v7 = v41;
      v11 = v37;
      v8 = v38;
      goto LABEL_24;
    }

    v19 += 32;
    v24 = sub_100937598();

    if (v24)
    {
      goto LABEL_23;
    }
  }

  v7 = v41;
  v4 = v34;
  v8 = v38;
  if (v41 != v36)
  {
    goto LABEL_5;
  }

LABEL_37:

  return v8;
}

uint64_t sub_1007E15D4(uint64_t a1)
{
  v2 = sub_1007E120C(*(a1 + OBJC_IVAR___IDSServerRateLimitConfigurationOptions_service), *(a1 + OBJC_IVAR___IDSServerRateLimitConfigurationOptions_service + 8));
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_10:

    return 0;
  }

  v5 = 0;
  v6 = *(v1 + OBJC_IVAR___IDSServerRateLimitConfiguration_rateLimiter);
  v7 = (v2 + 64);
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
    }

    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v19 = *v7;

    v10 = sub_100936B28();

    if (!v6)
    {

      goto LABEL_4;
    }

    [v6 configureLimit:v9 timeLimit:v10 forItem:v8];
    v20 = 0;
    v11 = v6;
    if (([v11 underLimitForItem:v10 isLastBeforeLimit:&v20]& 1) == 0)
    {
      break;
    }

    [v11 noteItem:v10];

    if (v20 == 1)
    {

      return 2;
    }

LABEL_4:
    ++v5;
    v7 += 40;
    if (v4 == v5)
    {
      goto LABEL_10;
    }
  }

  v13 = v10;
  v14 = sub_1009364B8();
  v15 = sub_100936F18();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Rate limit exceeded for %@", v16, 0xCu);
    sub_100013814(v17, &qword_100CB36B0);

    v13 = v14;
    v14 = v11;
    v11 = v18;
  }

  return v19 ^ 1u;
}

double sub_1007E18D4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_100936B28();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_100937098();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_1007E198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10071A680(a2, v20);
  v10 = v21;
  if (v21)
  {
    v11 = sub_1000226D4(v20, v21);
    v12 = *(v10 - 8);
    __chkstk_darwin(v11);
    v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_100937588();
    (*(v12 + 8))(v14, v10);
    sub_100012970(v20);
  }

  else
  {
    v15 = 0;
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1007E1B78;
  aBlock[3] = &unk_100BE8DD0;
  v16 = _Block_copy(aBlock);

  v17 = [v5 addObserverForName:a1 object:v15 queue:a3 usingBlock:v16];
  swift_unknownObjectRelease();
  _Block_release(v16);

  return v17;
}

uint64_t sub_1007E1B78(uint64_t a1)
{
  v2 = sub_100935BA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_100935B98();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1007E1C6C(void *a1)
{
  v2 = *v1;
  sub_1000226D4(a1, a1[3]);
  [v2 removeObserver:sub_100937588()];

  return swift_unknownObjectRelease();
}

void *sub_1007E1CCC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_100936C88();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1007E208C(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1007E208C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_100936C68();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_100936BE8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_100936BE8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_100936C88();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1007E208C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_100936C88();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1007E208C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1007E208C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_100936BE8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1007E208C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&qword_100CB6488);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1007E2198(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&qword_100CB6480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1007E22B4(char *a1, int64_t a2, char a3)
{
  result = sub_1007E22D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007E22D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&qword_100CB6480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1007E23F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_1000136E4(0x6369706F74, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100012914(*(a1 + 56) + 32 * v4, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v23;
  if (!*(a1 + 16) || (v7 = v22, v8 = sub_1000136E4(0x6553776F646E6977, 0xED000073646E6F63), (v9 & 1) == 0) || (sub_100012914(*(a1 + 56) + 32 * v8, v24), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v10 = v22, v11 = sub_1000136E4(1702125938, 0xE400000000000000), (v12 & 1) == 0) || (sub_100012914(*(a1 + 56) + 32 * v11, v24), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v13 = v22, v14 = sub_1000136E4(0x6E7552797264, 0xE600000000000000), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100012914(*(a1 + 56) + 32 * v14, v24);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    v7 = 0;
    v6 = 0;
    v10 = 0;
    v13 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  v16 = sub_100936B98();
  v18 = v17;

  if (v16 == 1702195828 && v18 == 0xE400000000000000)
  {

    v20 = 1;
  }

  else
  {
    v20 = sub_100937598();
  }

  v21 = v20 & 1;
LABEL_17:
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13;
  *(a2 + 32) = v21;
  return result;
}

uint64_t type metadata accessor for ServerRateLimitConfiguration()
{
  result = qword_100CC6E00;
  if (!qword_100CC6E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1007E26F0()
{
  result = qword_100CB6418;
  if (!qword_100CB6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6418);
  }

  return result;
}

__n128 sub_1007E2744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1007E2758(uint64_t a1, int a2)
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

uint64_t sub_1007E27A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1007E280C()
{
  result = sub_1009364D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007E28D0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E29D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E2AE0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E2BB8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E2CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E2DC8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E2EA0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E2FA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E30B0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E3188()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007E32B4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E33E8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E34C0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007E35EC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E3720()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E37F8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_1007E3930@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E3A70()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E3B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a5, a6);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009368C8();
}

uint64_t sub_1007E3C14()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice(0);
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1007FC128();
  sub_100936898();

  return v0;
}

uint64_t sub_1007E3D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice(0);
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1007FC128();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_1007E3E4C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6490, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1007E3F18()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice(0);
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  sub_1007FC128();
  sub_1009368B8();
}

uint64_t sub_1007E3FC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = swift_allocObject();
  sub_1007E4070(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_1007E4070(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  *(v10 + 48) = sub_100706B30(&qword_100CB64C8);
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  *(v10 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v10 + 24));
  sub_100936858();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v10 + 18) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB64A0);
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice(0);
  sub_1007FC128();
  sub_1009366C8();

  *(v10 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, a10);
  sub_1009366D8();

  sub_10001C370(a9, a10);
  *(v10 + 18) = 0;

  sub_100936C08(v13);

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, a10);

  return v10;
}

uint64_t sub_1007E4650(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB64C8);
  sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB64A0);
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice(0);
  sub_1007FC128();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007E49B0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E4AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E4BC0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_1007E4C98()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E4D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E4EA8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_1007E4F80()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E5084@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E5190()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_1007E5268()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007E536C@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007E5478()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_1007E55C4()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100769364(&qword_100CB3D48);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E56F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100769364(&qword_100CB3D48);
  sub_1009368A8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1007E5850()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_1007E591C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100769364(&qword_100CB3D40);
  sub_1009368C8();
}

uint64_t sub_1007E59EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 48) = sub_100706B30(&qword_100CB64E0);
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v6 + 24));
  sub_100936858();
  *(v6 + 16) = 257;
  *(v6 + 18) = 1;
  sub_100936158();

  v8._countAndFlagsBits = a3;
  v8._object = a4;
  sub_100936C08(v8);
  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64D0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  sub_100936138();

  swift_getKeyPath();
  sub_100936138();

  swift_getKeyPath();
  sub_100936138();

  return v6;
}

void sub_1007E5E18(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 40));
    swift_beginAccess();
    sub_100012970(v5 + 24);
    a3(v4 + 40, v5 + 24);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970(v5 + 24);
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1007E5EFC(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB64E0);
  sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007E6064()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007E616C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E627C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E6354()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E6458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E6564()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E663C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007E6744@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E6854()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E692C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007E6A34@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E6B44()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E6C1C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007E6D20@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007E6E2C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E6EFC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007E7000@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007E710C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E71E8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_1007E7324@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E7460()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E7538()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007E7664@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E7798()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E7870()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007E7974@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007E7A80()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E7B68()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E7C58()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

__n128 sub_1007E7D30@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1007FD1C0();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1007E7E80@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1007FD1C0();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1007E7FD0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E80BC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1007FD13C();
  sub_1009368C8();
}

uint64_t sub_1007E8178()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable(0);
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1007FD278();
  sub_100936898();

  return v0;
}

uint64_t sub_1007E8290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable(0);
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1007FD278();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_1007E83B0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB64E8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007E847C()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable(0);
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  sub_1007FD278();
  sub_1009368B8();
}

uint64_t sub_1007E852C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, __int128 a10, char a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  v15 = swift_allocObject();
  *(v15 + 48) = sub_100706B30(&qword_100CB6520);
  *&v30 = v14;
  *(&v30 + 1) = v14;
  *&v31 = sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  *(&v31 + 1) = v31;
  *(v15 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v15 + 24));
  sub_100936858();
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = 0uLL;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CB6500);
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable(0);
  sub_1007FD278();
  sub_1009366C8();

  *(v15 + 20) = 0;
  sub_100936158();
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = a1;
  *(&v30 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = v26;
  sub_100715738(v26, *(&v26 + 1));
  sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v26, *(&v26 + 1));
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = v27;
  sub_100715738(v27, *(&v27 + 1));
  sub_1009366D8();

  sub_1007156D8(v27, *(&v27 + 1));
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a7;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a8;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a9;
  sub_1007483B0(a9, *(&a9 + 1));
  sub_1009366D8();

  sub_10001C370(a9, *(&a9 + 1));
  *(v15 + 16) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a10;
  sub_1009366D8();

  *(v15 + 17) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a11;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v15 + 18) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a13;
  sub_1007483B0(a13, *(&a13 + 1));
  sub_1009366D8();

  sub_10001C370(a13, *(&a13 + 1));
  *(v15 + 19) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v16 = *(a14 + 80);
  v34 = *(a14 + 64);
  v35 = v16;
  v36 = *(a14 + 96);
  v17 = *(a14 + 16);
  v30 = *a14;
  v31 = v17;
  v18 = *(a14 + 48);
  v32 = *(a14 + 32);
  v33 = v18;
  sub_1007FD240(a14, v29);
  sub_1007FD13C();
  sub_1009366D8();

  sub_1007FD190(a14);
  v19 = sub_100716518(a1, a2);
  v21 = v20;

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = v19;
  *(&v30 + 1) = v21;
  sub_1009366D8();
  sub_1007FD190(a14);
  sub_10001C370(a13, *(&a13 + 1));
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a9, *(&a9 + 1));
  sub_1007156D8(v27, *(&v27 + 1));
  sub_1007156D8(v26, *(&v26 + 1));

  sub_1007156D8(v19, v21);
  return v15;
}

uint64_t sub_1007E8F08(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB6520);
  sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 19) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB6500);
  type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable(0);
  sub_1007FD278();
  sub_1009366C8();

  *(v1 + 20) = 0;
  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007E93AC(uint64_t a1)
{
  v2 = sub_1007FDAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007E93E8(uint64_t a1)
{
  v2 = sub_1007FDAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007E9424(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB6528);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_1007FDAB8();
  sub_1009376F8();
  v19 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100012D50(&v19, v11, &qword_100CB3CE8);
  sub_100768A18();
  sub_1009374C8();
  if (!v2)
  {
    sub_10001C370(v13, *(&v13 + 1));
    v18 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100012D50(&v18, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_100937518();
    LOBYTE(v13) = 3;
    sub_100937508();
    v17 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 4;
    sub_100012D50(&v17, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v16 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 5;
    sub_100012D50(&v16, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v15 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 6;
    sub_100012D50(&v15, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 7;
    sub_100012D50(&v14, v11, &qword_100CB3CE8);
    sub_1009374C8();
  }

  sub_10001C370(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1007E9800@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007FDB0C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1007E9878()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007E9980@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007E9A90()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007E9B68()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E9C6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007E9D78()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007E9E50()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007E9F54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EA060()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007EA138()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007EA23C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EA348()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007EA420()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EA528@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EA638()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007EA710()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EA818@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EA928()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007EAA00()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007EAB38()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007EAC70(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007EADF8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007EAF30()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007EB068(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

double sub_1007EB1F0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

double sub_1007EB2F4@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EB400()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6530, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007EB4D8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  sub_1009368C8();
}

uint64_t *sub_1007EB574(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, uint64_t a11, uint64_t a12)
{
  v40._countAndFlagsBits = a7;
  v40._object = a8;
  v43._countAndFlagsBits = a5;
  v43._object = a6;
  v42._countAndFlagsBits = a3;
  v42._object = a4;
  v37 = a2;
  v38 = a1;
  v44 = a12;
  v45 = a11;
  v41 = a10;
  v39 = sub_100936038();
  v16 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[5] = sub_100706B30(&qword_100CB6540);
  v19 = sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  v46._countAndFlagsBits = v12;
  v46._object = v12;
  v47 = v19;
  v48 = v19;
  v18[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v18 + 2);
  sub_100936858();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = 0;
  sub_1009366D8();

  sub_100936158();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v42;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v43;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v20 = v40;
  v46 = v40;
  sub_100715738(v40._countAndFlagsBits, v40._object);
  v35 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v20._countAndFlagsBits, v20._object);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v21 = v41;
  v46 = v41;
  sub_100715738(v41._countAndFlagsBits, v41._object);
  sub_1009366D8();

  sub_1007156D8(v21._countAndFlagsBits, v21._object);
  v32 = *(v16 + 16);
  v22 = v36;
  v23 = v39;
  v32(v36, v45, v39);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v31 = sub_1007FBEB8(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v24 = *(v16 + 8);
  v24(v22, v23);
  v33 = v24;
  v34 = v16 + 8;
  v32(v22, v44, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v24(v22, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  *&v46._countAndFlagsBits = a9;
  sub_1009366D8();

  v46._countAndFlagsBits = v38;
  v46._object = v37;

  sub_100936C08(v42);

  sub_100936C08(v43);

  v25 = v40;
  v26 = sub_100716518(v46._countAndFlagsBits, v46._object);
  v28 = v27;

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = v26;
  v46._object = v28;
  sub_1009366D8();

  sub_1007156D8(v41._countAndFlagsBits, v41._object);
  sub_1007156D8(v25._countAndFlagsBits, v25._object);
  v29 = v33;
  v33(v44, v23);
  v29(v45, v23);
  sub_1007156D8(v26, v28);
  return v18;
}

uint64_t *sub_1007EBC58(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB6540);
  sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_1000226D4(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1007EBDF8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EBF00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EC010()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007EC0E8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007EC1EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EC2F8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007EC3D0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EC4D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EC5E8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007EC6C0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007EC7C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EC8D0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007EC9A8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007ECAB0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007ECBC0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007ECC98()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007ECDD0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007ECF08(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007FBEB8(&qword_100CB6548, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007ED090(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_1007ED128(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_1007ED128(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v41 = a8;
  v38 = a7;
  v35 = a1;
  v36 = a6;
  v31[0] = a5;
  v34 = a2;
  v15 = *v8;
  v16 = sub_100936038();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v37 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[5] = sub_100706B30(&qword_100CB6558);
  v19 = sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  v42 = v15;
  v43 = v15;
  v44 = v19;
  v45 = v19;
  v9[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v9 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a1;
  v43 = a2;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a3;
  v43 = a4;
  v32 = a3;
  v33 = a4;
  sub_100715738(a3, a4);
  v31[1] = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a3, a4);
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a5;
  v20 = v36;
  v43 = v36;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v21 = v38;
  v22 = v41;
  v42 = v38;
  v43 = v41;
  sub_100715738(v38, v41);
  sub_1009366D8();

  sub_1007156D8(v21, v22);
  v23 = v37;
  sub_100936028();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB3DA8, &type metadata accessor for Date);
  v24 = v39;
  sub_1009366D8();

  (*(v40 + 8))(v23, v24);
  v42 = v35;
  v43 = v34;

  v46._countAndFlagsBits = v31[0];
  v46._object = v20;
  sub_100936C08(v46);

  v25 = v32;
  v26 = v33;
  v27 = sub_100716518(v42, v43);
  v29 = v28;

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = v27;
  v43 = v29;
  sub_1009366D8();
  sub_1007156D8(v21, v41);
  sub_1007156D8(v25, v26);

  sub_1007156D8(v27, v29);
  return v9;
}

void sub_1007ED5EC(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 40));
    swift_beginAccess();
    sub_100012970(v5 + 16);
    a3(v4 + 40, v5 + 16);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970(v5 + 16);
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t *sub_1007ED6D0(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB6558);
  sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1007ED818()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007ED91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EDA28()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1007EDB00()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007EDC04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EDD10()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1007EDDE8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007EDF28()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007EE068(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB6560, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007EE1B0(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_1007EE218(a1, a2, a3, a4);
  return v8;
}

void *sub_1007EE218(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CB6570);
  v18 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle;
  v12 = sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  v21 = v8;
  v22 = v8;
  v23 = v12;
  v24 = v12;
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100014250(v5 + 3);
  sub_100936858();
  *(v5 + 16) = 1;
  sub_100936158();
  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = a1;
  v22 = a2;
  sub_1009366D8();

  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = v16;
  v22 = v17;
  sub_1009366D8();

  sub_100936028();
  v13 = sub_100936038();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v21 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = v11;
  sub_1007FBEB8(&qword_100CB6560, v18);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_1007EE520(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CB6570);
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v2 + 24));
  sub_100936858();
  *(v2 + 16) = 1;
  sub_100936158();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v2 + 24);
  sub_100308C84(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_1007EE658(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB6570);
  sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007EE7B4()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EE8BC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EE9CC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007EEAA4()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EEBAC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EECBC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007EED94()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EEE9C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EEFAC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007EF084()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007EF188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EF294()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007EF36C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007EF470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007EF57C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007EF654()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EF75C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EF86C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007EF944()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007EFA7C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007EFBB4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007EFD3C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007EFE44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007EFF54()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a5, a6);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_1007F00C8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007F01CC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007F02D8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F03A8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007F04AC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007F05B8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F0688()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F07C8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F0908(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007F0A50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a4, a5);
  sub_100022850(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009368C8();
}

uint64_t sub_1007F0B18()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007F0C1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007F0D28()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F0DF8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007F0EFC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007F1008()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F10D8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F1218()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F1358(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007F14A0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007F15CC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007F1700()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F17D8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F1918()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F1A58(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007F1BA0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F1CE0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F1E20(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007F1F68()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F20A8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F21E8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007F2330()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007F2434@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007F2540()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6578, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007F2610(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a4, a5);
  sub_1009368C8();
}

uint64_t sub_1007F269C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18)
{
  v48 = a8;
  v50 = a7;
  v47 = a5;
  v65 = a3;
  v66 = a4;
  v57 = a18;
  v55 = a17;
  v53 = a16;
  v52 = a15;
  v51 = a14;
  v63 = a12;
  v64 = a13;
  v67 = a11;
  v59 = a10;
  v58 = a9;
  v60 = sub_100936038();
  v68 = *(v60 - 8);
  __chkstk_darwin(v60);
  v49 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 48) = sub_100706B30(&qword_100CB6588);
  v56 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution;
  v24 = sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  v71 = v18;
  v72 = v18;
  v73 = v24;
  v74 = v24;
  *(v23 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v23 + 24));
  sub_100936858();
  *(v23 + 16) = 16843009;
  *(v23 + 20) = 257;
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = 0;
  sub_1009366D8();

  v54 = OBJC_IVAR____TtCO17identityservicesd21SDPersistenceSchemaV531IDSQuerySDSenderKeyDistribution___observationRegistrar;
  sub_100936158();
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = a1;
  v72 = a2;
  v61 = a1;
  v62 = a2;
  sub_100715738(a1, a2);
  v25 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a1, a2);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v27 = v65;
  v26 = v66;
  v71 = v65;
  v72 = v66;
  sub_100715738(v65, v66);
  sub_1009366D8();

  sub_1007156D8(v27, v26);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = v47;
  v72 = a6;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = v50;
  v72 = v48;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v28 = v58;
  v29 = v59;
  v71 = v58;
  v72 = v59;
  sub_100715738(v58, v59);
  v46 = v25;
  sub_1009366D8();

  sub_1007156D8(v28, v29);
  v30 = v68;
  v31 = v49;
  v32 = v60;
  (*(v68 + 16))(v49, v67, v60);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v33 = *(v30 + 8);
  v68 = v30 + 8;
  v50 = v33;
  v33(v31, v32);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v35 = v63;
  v34 = v64;
  v71 = v63;
  v72 = v64;
  sub_100715738(v63, v64);
  sub_1009366D8();

  sub_1007156D8(v35, v34);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v51;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v52;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v53;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v55;
  sub_1009366D8();

  v37 = v61;
  v36 = v62;
  v76 = v61;
  v77 = v62;
  v74 = &type metadata for Data;
  v75 = &protocol witness table for Data;
  v38 = v58;
  v39 = v59;
  v71 = v58;
  v72 = v59;
  v40 = sub_1000226D4(&v71, &type metadata for Data);
  v41 = *v40;
  v42 = v40[1];
  sub_100715738(v37, v36);
  sub_100715738(v38, v39);
  sub_100768308(v41, v42);
  sub_100012970(&v71);
  v43 = v76;
  v44 = v77;
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = v43;
  v72 = v44;
  sub_1009366D8();

  sub_1007156D8(v43, v44);
  v71 = v23;
  swift_getKeyPath();
  v69 = v23;
  v70 = v57;
  sub_1007FBEB8(&qword_100CB6578, v56);
  sub_100936138();

  sub_1007156D8(v63, v64);
  sub_1007156D8(v38, v39);
  sub_1007156D8(v65, v66);
  sub_1007156D8(v61, v62);
  v50(v67, v60);
  return v23;
}

uint64_t sub_1007F2F90(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB6588);
  sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 257;
  sub_1000226D4((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007F3148()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F324C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F3358()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_1007F3424()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_1007F34C0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007F35C4@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007F36D0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_1007F37A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a4, a5);
  sub_1009368C8();
}

uint64_t sub_1007F382C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007F3964()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007F3A9C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007FBEB8(&qword_100CB6590, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007F3C24(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1007F3C7C(a1, a2, a3);
  return v6;
}

uint64_t *sub_1007F3C7C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v17 = a3;
  v7 = *v3;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[5] = sub_100706B30(&qword_100CB65A0);
  v12 = sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  v18 = v7;
  v19 = v7;
  v20 = v12;
  v21 = v12;
  v4[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v4 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  v18 = a1;
  sub_1009366D8();

  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  LODWORD(v18) = a2;
  sub_1009366D8();

  v13 = v17;
  (*(v9 + 16))(v11, v17, v8);
  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v14 = *(v9 + 8);
  v14(v13, v8);
  v14(v11, v8);
  return v4;
}

uint64_t *sub_1007F3F8C(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB65A0);
  sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v2 + 2));
  sub_100308C84(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_1007F40BC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F41C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007F42CC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007F43A4()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F44A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007F45B4()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007F468C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F4790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007F489C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007F4974()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F4A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F4B84()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65A8, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007F4C50()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  sub_1009368C8();
}

uint64_t sub_1007F4CEC(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1007F4D5C(a1, a2);
  return v4;
}

uint64_t *sub_1007F4D5C(uint64_t a1, void *a2)
{
  v3 = v2;
  v2[5] = sub_100706B30(&qword_100CB65B8);
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100936C08(v7);

  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  return v2;
}

uint64_t *sub_1007F5010(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB65B8);
  sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v2 + 2));
  sub_100308C84(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_1007F5140()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F5244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F5350()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007F541C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007F54B8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F55BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007F56C8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007F57A0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F58E0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100022850(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007F5A20(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007F5B68()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007F5CA0()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1007FBEB8(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007F5DD8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007F5F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a4, a5);
  sub_1007FBEB8(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009368C8();
}

uint64_t sub_1007F6020()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F6124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F6230()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007F62FC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007F6398()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F649C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F65A8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007F6674()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007F6710()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007F683C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007F6970()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007F6A48()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007F6B74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007F6CA8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65C0, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007F6D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a5, a6);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009368C8();
}

uint64_t sub_1007F6E40(void *a1, void *a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v30 = a7;
  v31 = a8;
  v28 = a3;
  v29 = a6;
  v26 = a1;
  v27 = a5;
  v36 = a4;
  v33 = a10;
  v34 = a11;
  v32 = a9;
  v35 = sub_100936038();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = swift_allocObject();
  *(v19 + 48) = sub_100706B30(&qword_100CB65D0);
  v20 = sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  v38 = v11;
  v39 = v11;
  v40 = v20;
  v41 = v20;
  *(v19 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v19 + 24));
  sub_100936858();
  sub_100936158();
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v26;
  v39 = a2;
  sub_1009366D8();

  sub_100012D50(a3, v18, &qword_100CB4AC0);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v26 = &protocol conformance descriptor for <A> A?;
  sub_100022850(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009366D8();

  sub_100021EA4(v18);
  *(v19 + 16) = 0;
  v21 = v37;
  v22 = v35;
  (*(v37 + 16))(v15, v36, v35);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v23 = v21 + 8;
  v24 = *(v21 + 8);
  v37 = v23;
  v24(v15, v22);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v27;
  sub_1009366D8();

  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v29;
  sub_1009366D8();

  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v30;
  v39 = v31;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v19 + 17) = 0;
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v32;
  v39 = v33;
  sub_1009366D8();

  *(v19 + 18) = 0;
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v34;
  sub_1009366D8();

  v24(v36, v35);
  sub_100021EA4(v28);
  return v19;
}

uint64_t sub_1007F7414(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB65D0);
  sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007F757C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F7680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007F778C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F7864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a5, a6);
  sub_1009368C8();
}

uint64_t sub_1007F78FC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F7A00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F7B0C()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F7BD8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F7C74()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F7D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F7E84()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F7F50()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F7FEC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F80F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F81FC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F82C8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F8364()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F8468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F8574()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F8640()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F86DC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F87E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F88EC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F89B8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F8A54()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F8B58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F8C64()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F8D30()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F8DCC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F8ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F8FDC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F90A8()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F9144()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F9248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F9354()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F9420()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F94BC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F95C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F96CC()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F9798()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007F9834()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007F9938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007F9A44()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65D8, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007F9B10()
{
  swift_getKeyPath();
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t *sub_1007F9BAC()
{
  v0 = swift_allocObject();
  v0[5] = sub_100706B30(&qword_100CB65E8);
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  v0[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v0 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  return v0;
}

uint64_t sub_1007FA05C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_1007FA0AC(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB65E8);
  sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

void (*sub_1007FA228(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_100803D20;
}

uint64_t sub_1007FA3A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FA43C(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_100803D20;
}

uint64_t sub_1007FA5B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FA650(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_100803D20;
}

uint64_t sub_1007FA7CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FA87C(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_100803D24;
}

uint64_t sub_1007FA9F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FAA90(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_100803D24;
}

uint64_t sub_1007FAC0C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FACA4(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_100803D20;
}

uint64_t sub_1007FAE20(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FAEB8(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_100803D20;
}

uint64_t sub_1007FB034(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007FB0E4(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_100803D24;
}

uint64_t sub_1007FB260(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t *sub_1007FB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t *))
{
  v10 = swift_allocObject();
  v10[5] = sub_100706B30(a4);
  v10[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v10 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v10 + 2));
  a7(a1, v10 + 2);
  swift_endAccess();
  return v10;
}

void (*sub_1007FB418(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_100803D24;
}

uint64_t sub_1007FB594(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_1007FB62C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 24);
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1007FB694(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_100803D20;
}

uint64_t sub_1007FB810(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_1007FB8A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_1007FB8F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 16);
  a4(a1, v4 + 16);
  return swift_endAccess();
}

void (*sub_1007FB960(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_100803D24;
}

uint64_t sub_1007FBADC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_1007FBB5C()
{
  sub_100706B30(&unk_100CB4A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD8E0;
  v1 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice(0);
  v2 = sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable(0);
  v4 = sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession(0);
  v6 = sub_1007FBEB8(&qword_100CB6538, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSession);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity(0);
  v8 = sub_1007FBEB8(&qword_100CB6550, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDPublicIdentity);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution(0);
  v10 = sub_1007FBEB8(&qword_100CB6580, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDSenderKeyDistribution);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex(0);
  v12 = sub_1007FBEB8(&qword_100CB6598, type metadata accessor for SDPersistenceSchemaV5.IDSGroupEncryptionKeyRollIndex);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle(0);
  v14 = sub_1007FBEB8(&qword_100CB6568, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDShortHandle);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle(0);
  v16 = sub_1007FBEB8(&qword_100CB65B0, type metadata accessor for SDPersistenceSchemaV5.IDSOffGridDeliveryDonatedHandle);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent(0);
  v18 = sub_1007FBEB8(&qword_100CB65C8, type metadata accessor for SDPersistenceSchemaV5.IDSRegistrationEvent);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount(0);
  v20 = sub_1007FBEB8(&qword_100CB65E0, type metadata accessor for SDPersistenceSchemaV5.IDSQualifiedContactsCount);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus(0);
  v22 = sub_1007FBEB8(&qword_100CB64D8, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDStatus);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  return v0;
}

uint64_t sub_1007FBEB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007FC128()
{
  result = qword_100CB64A8;
  if (!qword_100CB64A8)
  {
    sub_1007147D0(&qword_100CB64A0);
    sub_10071499C(&qword_100CB64B0, &qword_100CB64B8);
    sub_1007FBEB8(&qword_100CB64C0, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB64A8);
  }

  return result;
}

uint64_t sub_1007FC228()
{
  v0 = sub_100936978();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1009AD830;
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v5 = sub_100936A28();
  swift_allocObject();
  v6 = sub_100936A38();
  *(&v11 + 1) = v5;
  v12 = sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  *&v10 = v6;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v14 + 1) = sub_100706B30(&qword_100CB49F0);
  *&v13 = &_swiftEmptyArrayStorage;
  (*(v1 + 104))(v3, enum case for Schema.Relationship.DeleteRule.nullify(_:), v0);
  v7 = sub_100936988();
  swift_allocObject();
  v8 = sub_100936998();
  *(&v11 + 1) = v7;
  v12 = sub_1007FBEB8(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v10 = v8;
  sub_1009369B8();
  return v4;
}

uint64_t sub_1007FC960()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD830;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

unint64_t sub_1007FD13C()
{
  result = qword_100CB64F0;
  if (!qword_100CB64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB64F0);
  }

  return result;
}

unint64_t sub_1007FD1C0()
{
  result = qword_100CB64F8;
  if (!qword_100CB64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB64F8);
  }

  return result;
}

unint64_t sub_1007FD278()
{
  result = qword_100CB6508;
  if (!qword_100CB6508)
  {
    sub_1007147D0(&qword_100CB6500);
    sub_10071499C(&qword_100CB6510, &qword_100CB6518);
    sub_1007FBEB8(&qword_100CB6498, type metadata accessor for SDPersistenceSchemaV5.IDSQuerySDAddressable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6508);
  }

  return result;
}

uint64_t sub_1007FD378()
{
  v10 = sub_100936978();
  v0 = *(v10 - 8);
  __chkstk_darwin(v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1009AD8F0;
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v4 = sub_100936A28();
  swift_allocObject();
  v5 = sub_100936A38();
  *(&v12 + 1) = v4;
  v13 = sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  *&v11 = v5;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = sub_100706B30(&qword_100CB49F0);
  *&v14 = &_swiftEmptyArrayStorage;
  swift_getKeyPath();
  (*(v0 + 104))(v2, enum case for Schema.Relationship.DeleteRule.nullify(_:), v10);
  v6 = sub_100936988();
  swift_allocObject();
  v7 = sub_100936998();
  *(&v12 + 1) = v6;
  v13 = sub_1007FBEB8(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v11 = v7;
  sub_1009369B8();
  return v3;
}

unint64_t sub_1007FDAB8()
{
  result = qword_100CC6F00[0];
  if (!qword_100CC6F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC6F00);
  }

  return result;
}

uint64_t sub_1007FDB0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100706B30(&qword_100CB7158);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v36 = a1;
  sub_1000226D4(a1, v9);
  sub_1007FDAB8();
  sub_1009376E8();
  if (v2)
  {
    v37 = v2;
    v35 = 0;
    sub_100012970(v36);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(v35, 0xF000000000000000);
    return sub_10001C370(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_100768AE4();
    sub_100937468();
    v34 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 1;
    sub_100937468();
    v11 = *(&v45 + 1);
    v33 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v45) = 2;
    v12 = sub_1009374B8();
    LOBYTE(v45) = 3;
    v13 = sub_1009374A8();
    LOBYTE(v38) = 4;
    sub_100937468();
    v60 = v13;
    LODWORD(v35) = v12;
    v32 = *(&v45 + 1);
    v14 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 5;
    sub_100937468();
    v30 = v6;
    v31 = __PAIR128__(*(&v45 + 1), v14);
    v15 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 6;
    sub_100937468();
    v28 = a2;
    v29 = *(&v45 + 1);
    v16 = v45;
    sub_10001C370(0, 0xF000000000000000);
    v61 = 7;
    sub_100937468();
    v37 = 0;
    (*(v30 + 8))(v8, v5);
    v17 = v58;
    v18 = v59;
    sub_10001C370(0, 0xF000000000000000);
    v19 = v34;
    v38 = v34;
    v20 = v33;
    *&v39 = v33;
    *(&v39 + 1) = v11;
    LOWORD(v40) = v35;
    BYTE2(v40) = v60;
    v21 = v31;
    *(&v40 + 1) = v31;
    v22 = v32;
    *&v41 = v32;
    *(&v41 + 1) = v15;
    *&v42 = *(&v31 + 1);
    *(&v42 + 1) = v16;
    *&v43 = v29;
    *(&v43 + 1) = v17;
    v44 = v18;
    sub_1007FD240(&v38, &v45);
    sub_100012970(v36);
    v45 = __PAIR128__(*(&v34 + 1), v19);
    v46 = v20;
    v47 = v11;
    v48 = v35;
    v49 = v60;
    v50 = v21;
    v51 = v22;
    v52 = v15;
    v53 = *(&v31 + 1);
    v54 = v16;
    v55 = v29;
    v56 = v17;
    v57 = v18;
    result = sub_1007FD190(&v45);
    v23 = v43;
    v24 = v28;
    *(v28 + 64) = v42;
    *(v24 + 80) = v23;
    *(v24 + 96) = v44;
    v25 = v39;
    *v24 = v38;
    *(v24 + 16) = v25;
    v26 = v41;
    *(v24 + 32) = v40;
    *(v24 + 48) = v26;
  }

  return result;
}

uint64_t sub_1007FE590()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD900;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007FEC48()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD840;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007FF134()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AC7A0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007FFB48()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD910;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_100800414()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AC7A0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1008007F0()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD150;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_100800D78()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD940;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_100801400()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD8E0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007FBEB8(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}