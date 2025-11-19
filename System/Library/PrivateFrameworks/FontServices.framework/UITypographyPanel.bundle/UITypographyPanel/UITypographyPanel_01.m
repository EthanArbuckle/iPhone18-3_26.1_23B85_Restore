uint64_t sub_127DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = *(a3 + 40), sub_16500(), v5 = sub_59870(), v6 = -1 << *(a3 + 32), v7 = v5 & ~v6, ((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    sub_D660();
    do
    {
      v11 = *(*(a3 + 48) + 16 * v7);
      v9 = sub_598A0();
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_128C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_59EC0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_12970@<X0>(uint64_t a1@<X8>)
{
  v10 = *v1;
  v11 = *(v1 + 1);
  v8 = v11;
  sub_10590(sub_18750, v9, a1);
  type metadata accessor for TypographyPanelViewModel();
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
  v3 = sub_58AA0();
  v4 = (a1 + *(sub_187C(&qword_70E98, &qword_5C0E8) + 36));
  *v4 = v3;
  v4[1] = v8;
  KeyPath = swift_getKeyPath();
  v6 = a1 + *(sub_187C(&qword_70EA0, qword_5C118) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
}

uint64_t sub_12AB8(uint64_t a1)
{
  v2 = sub_187C(&qword_71078, &qword_5C378);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - v4;
  sub_6610(a1, &v7 - v4, &qword_71078, &qword_5C378);
  return sub_296B8(v5);
}

uint64_t sub_12B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v54 = a6;
  v58 = a5;
  v61 = a7;
  v59 = sub_187C(&qword_710A8, &unk_5C3E0);
  v55 = *(v59 - 8);
  v11 = *(v55 + 64);
  v12 = __chkstk_darwin(v59);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v13;
  __chkstk_darwin(v12);
  v60 = &v50 - v14;
  v15 = sub_187C(&qword_71078, &qword_5C378);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v50 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a2 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);
  v24 = *(a1 + 25);
  if (*(a1 + 25))
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 24);
  v51 = v25;
  v62 = v18;
  sub_35570(a3, a4, v19, v18);
  v53 = a4;
  v27 = *(a4 + 48);
  v28 = *(v27 + 16);
  v52 = v24;
  if (v28 && (v29 = (v27 + 32 * v28), v30 = *v29, v31 = v29[1], v32 = v29[2], v33 = *(v29 + 24), v34 = *(v29 + 25), , v32))
  {
    if (v34)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    *&v68 = v30;
    *(&v68 + 1) = v31;
    *&v69 = v32;
    WORD4(v69) = v35 | v33;
    *&v65 = v19;
    *(&v65 + 1) = v20;
    *&v66 = v21;
    BYTE8(v66) = v26;
    BYTE9(v66) = v24;
    sub_17BAC();

    v36 = sub_598A0();
  }

  else
  {

    v36 = 0;
  }

  v37 = v19;

  v38 = v53;
  sub_E9C0(v53, &v68);
  v39 = v58;

  v40 = v60;
  sub_484C0(v38, v37, v20, v21, v51 | v26, v39, v54, v36 & 1, v60);
  KeyPath = swift_getKeyPath();
  v42 = v26;
  v43 = (v40 + *(v59 + 36));
  v44 = sub_187C(&qword_70FE0, &qword_5C320);
  sub_6610(v62, v43 + *(v44 + 28), &qword_71078, &qword_5C378);
  *v43 = KeyPath;
  v45 = v57;
  sub_6610(v40, v57, &qword_710A8, &unk_5C3E0);
  v46 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v47 = swift_allocObject();
  sub_178D8(v45, v47 + v46);
  v48 = swift_allocObject();
  *(v48 + 16) = v39;
  *(v48 + 24) = v37;
  *(v48 + 32) = v20;
  *(v48 + 40) = v21;
  *(v48 + 48) = v42;
  *(v48 + 49) = v52;
  sub_17A7C();

  sub_48EF0(sub_17948, v47, sub_17A10, v48, &v68);
  v71 = v70;
  v65 = v68;
  v66 = v69;
  v67 = v70;
  v63 = v20;
  v64 = v21;
  sub_187C(&qword_71010, &qword_5C338);
  sub_6ED0(&qword_71008, &qword_71010, &qword_5C338);
  sub_66D8();
  sub_59440();

  sub_6678(&v71, &qword_70C88, &unk_5AE60);
  sub_6678(v40, &qword_710A8, &unk_5C3E0);
  return sub_6678(v62, &qword_71078, &qword_5C378);
}

uint64_t sub_130A8@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, char a12, uint64_t a13, void *a14)
{
  v44 = a7;
  v45 = a5;
  v46 = a6;
  v50 = a4;
  v51 = a9;
  v52 = a1;
  v49 = a14;
  v47 = a13;
  v43 = a10;
  v17 = type metadata accessor for FeatureToggleView(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v48 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3;
  v21 = a2;
  if (sub_51BB0())
  {
    a2 = *(a8 + 24);
    a3 = *(a8 + 32);
  }

  v22 = *(a11 + 16);
  if (!v22 || (v23 = (a11 + 56 * v22), v24 = *(v23 - 3), v25 = *(v23 - 2), v26 = *(v23 - 1), v27 = *v23, v28 = v23[1], , !v26))
  {

LABEL_11:
    a12 = 0;
    goto LABEL_12;
  }

  if (v28)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  v57[0] = v24;
  v57[1] = v25;
  v57[2] = v26;
  v58 = v29 | v27;
  v53 = v52;
  v54 = v21;
  v55 = v20;
  v56 = v50 & 0x101;
  sub_17BAC();

  v30 = sub_598A0();

  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v32 = v45;

  v33 = v46;

  sub_E9C0(a8, v57);
  v34 = v48;
  sub_47354(a2, a3, a8, v43, a12 & 1, v32, v33, v44 & 1, v48);
  KeyPath = swift_getKeyPath();
  v36 = *(v47 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);
  v37 = sub_187C(&qword_70FC8, &qword_5C318);
  v38 = v51;
  v39 = (v51 + *(v37 + 36));
  v40 = sub_187C(&qword_70FE0, &qword_5C320);
  sub_35570(v49, a8, v52, v39 + *(v40 + 28));
  *v39 = KeyPath;
  return sub_17FFC(v34, v38, type metadata accessor for FeatureToggleView);
}

uint64_t sub_13368(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_16500();
  v9 = sub_59870();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_D660();
    while (1)
    {
      v17 = *(*(v7 + 48) + 16 * v11);
      if (sub_598A0())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_E9AC(a2, a3);
    v16 = *(*(v7 + 48) + 16 * v11);
    *a1 = v16;
    sub_B848(v16, *(&v16 + 1));
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_B848(a2, a3);
    sub_13A30(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

uint64_t sub_134D4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_59EC0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
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
    sub_13BC0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_135B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_71128, qword_5C458);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v28 = *(*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_16500();
      result = sub_59870();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 16 * v14) = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1380C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_71108, &qword_5C430);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_59EC0();
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
      *(*(v6 + 48) + 8 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_13A30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_135B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_13CE0();
      goto LABEL_12;
    }

    sub_13F7C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_16500();
  result = sub_59870();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    sub_D660();
    do
    {
      v19 = *(*(v10 + 48) + 16 * a3);
      result = sub_598A0();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = (*(v14 + 48) + 16 * a3);
  *v15 = v7;
  v15[1] = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v14 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_59E90();
  __break(1u);
  return result;
}

uint64_t sub_13BC0(uint64_t result, unint64_t a2, char a3)
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
    sub_1380C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_13E3C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_141C0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_59EC0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_13CE0()
{
  v1 = v0;
  sub_187C(&qword_71128, qword_5C458);
  v2 = *v0;
  v3 = sub_59C10();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_B848(v18, *(&v18 + 1));
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

void *sub_13E3C()
{
  v1 = v0;
  sub_187C(&qword_71108, &qword_5C430);
  v2 = *v0;
  v3 = sub_59C10();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_13F7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_71128, qword_5C458);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v30 = *(*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v19 = *(v6 + 40);
      v20 = *(*(v3 + 48) + 16 * (v16 | (v7 << 6)) + 8);
      sub_B848(v30, *(&v30 + 1));
      sub_16500();
      result = sub_59870();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v30;
      v15[1] = v20;
      ++*(v6 + 16);
      v3 = v29;
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

        v2 = v28;
        goto LABEL_28;
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

uint64_t sub_141C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_71108, &qword_5C430);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_59EC0();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_143B0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a3 & 1;
  v7 = *(v3 + 40);
  sub_D600();
  v8 = sub_59870();
  return sub_14438(a1, a2, v6, v8);
}

unint64_t sub_14438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_D5A8();
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v10 = *v8;
      v11 = *(v8 + 16);
      if (sub_598A0())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_14520(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1581C(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_59E50(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v17 = v1;
      v8 = v2 + 33;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          v14 = *(v13 - 1);
          v15 = sub_2BC64(v11 & 1);
          if (v15 >= sub_2BC64(v14))
          {
            break;
          }

          v11 = *v13;
          *v13 = *(v13 - 1);
          *--v13 = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v8;
        --v9;
      }

      v1 = v17;
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_59A40();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_146A0(v18, v19, v20, v5);
    *(v7 + 2) = 0;
  }

  *v1 = v2;
}

void sub_146A0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_90:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_5A8C(v8);
    }

    v78 = *(v8 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = *&v8[16 * v78];
        v80 = *&v8[16 * v78 + 24];
        sub_14C68((*a3 + v79), (*a3 + *&v8[16 * v78 + 16]), *a3 + v80, v9);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v80 < v79)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5A8C(v8);
        }

        if (v78 - 2 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v81 = &v8[16 * v78];
        *v81 = v79;
        *(v81 + 1) = v80;
        sub_14E94(v78 - 1);
        v78 = *(v8 + 2);
        if (v78 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = v9[*a3];
      v12 = sub_2BC64(*(*a3 + v7));
      v13 = sub_2BC64(v11);
      v14 = v9;
      while ((v6 - 2) != v9)
      {
        v15 = v9[v10 + 1];
        v16 = sub_2BC64((v9++)[v10 + 2]);
        if (v12 < v13 == v16 >= sub_2BC64(v15))
        {
          v6 = (v9 + 1);
          break;
        }
      }

      v9 = v14;
      if (v12 < v13)
      {
        if (v6 < v14)
        {
          goto LABEL_119;
        }

        if (v14 < v6)
        {
          v17 = v6 - 1;
          v18 = v14;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v19 = v18[v21];
              v18[v21] = *(v21 + v17);
              *(v21 + v17) = v19;
            }
          }

          while (++v18 < v17--);
        }
      }

      v7 = v6;
    }

    v22 = a3[1];
    if (v7 < v22)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_5AA0(0, *(v8 + 2) + 1, 1, v8);
    }

    v33 = *(v8 + 2);
    v32 = *(v8 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v8 = sub_5AA0((v32 > 1), v33 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = &v8[16 * v33];
    *(v35 + 4) = v9;
    *(v35 + 5) = v7;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v8 + 4);
          v39 = *(v8 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_59:
          if (v41)
          {
            goto LABEL_106;
          }

          v54 = &v8[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = &v8[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_113;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v64 = &v8[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_73:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v8[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_111;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_80:
        v75 = v37 - 1;
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v9 = *&v8[16 * v75 + 32];
        v76 = *&v8[16 * v37 + 40];
        sub_14C68(&v9[*a3], (*a3 + *&v8[16 * v37 + 32]), *a3 + v76, v36);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v76 < v9)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5A8C(v8);
        }

        if (v75 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v77 = &v8[16 * v75];
        *(v77 + 4) = v9;
        *(v77 + 5) = v76;
        sub_14E94(v37);
        v34 = *(v8 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v8[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_104;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_105;
      }

      v49 = &v8[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_107;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = &v8[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_114;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_120;
  }

  v83 = v5;
  if (&v9[a4] >= v22)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = &v9[a4];
  }

  if (v5 < v9)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v7 == v5)
  {
LABEL_38:
    v5 = v83;
    goto LABEL_39;
  }

  v23 = *a3;
  v24 = (*a3 + v7);
  v82 = v9;
  v25 = &v9[-v7];
LABEL_31:
  v26 = *(v23 + v7);
  v27 = v25;
  v28 = v24;
  while (1)
  {
    v29 = *(v28 - 1);
    v30 = sub_2BC64(v26 & 1);
    if (v30 >= sub_2BC64(v29))
    {
LABEL_30:
      ++v7;
      ++v24;
      --v25;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      v9 = v82;
      goto LABEL_38;
    }

    if (!v23)
    {
      break;
    }

    v26 = *v28;
    *v28 = *(v28 - 1);
    *--v28 = v26;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_14C68(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v16 = v6 - 1;
        --v5;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *v16;
          v19 = sub_2BC64(*(v10 - 1));
          if (v19 < sub_2BC64(v18))
          {
            break;
          }

          v20 = v10 - 1;
          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v20;
          }

          --v5;
          --v10;
          if (v20 <= v4)
          {
            v10 = v20;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v16;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v16 > v7);
      v6 = v16;
      if (v16 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v12 = sub_2BC64(*v6);
        if (v12 >= sub_2BC64(v11))
        {
          v15 = v4 + 1;
          v14 = v4;
          v13 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v15)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v13 = v6 + 1;
          v14 = v6;
          if (v7 >= v6 && v7 < v13)
          {
            goto LABEL_16;
          }
        }

        *v7 = *v14;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v13;
          if (v13 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_14E94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5A8C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_14F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71120, &qword_5C450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_15014(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_710E0, &qword_5C408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_710D8, &qword_5C400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1515C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_71110, &qword_5C438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_71118, &unk_5C440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_152A8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  sub_16500();
  v3 = sub_59870();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  sub_D660();
  while (1)
  {
    v14 = *(*(v1 + 48) + 16 * v5);
    if (sub_598A0())
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v15 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_13CE0();
    v10 = v15;
  }

  v11 = (*(v10 + 48) + 16 * v5);
  v13 = *v11;
  v12 = v11[1];
  sub_154E0(v5);
  result = v13;
  *v0 = v15;
  return result;
}

uint64_t sub_153F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_59EC0();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_13E3C();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_15698(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_154E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_59BA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_16500();
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 16 * v6);
        v12 = sub_59870() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 16 * v2);
            v17 = (v15 + 16 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_15698(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_59BA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_59EC0() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_15830(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71120, &qword_5C450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_15924(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_16500();
  result = sub_59AA0();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_B848(v6, *v4);
      sub_13368(v7, v6, v5);
      sub_E9AC(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_159C0()
{
  result = qword_70E78;
  if (!qword_70E78)
  {
    sub_1F64(&qword_70E70, &qword_5C0E0);
    sub_15A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E78);
  }

  return result;
}

unint64_t sub_15A44()
{
  result = qword_70E80;
  if (!qword_70E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E80);
  }

  return result;
}

unint64_t sub_15A98()
{
  result = qword_70E88;
  if (!qword_70E88)
  {
    sub_1F64(&qword_70E70, &qword_5C0E0);
    sub_15B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E88);
  }

  return result;
}

unint64_t sub_15B1C()
{
  result = qword_70E90;
  if (!qword_70E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E90);
  }

  return result;
}

uint64_t sub_15BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_15BFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_15C48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_15C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_15CA4(uint64_t result, int a2, int a3)
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

unint64_t sub_15D3C()
{
  result = qword_70EB8;
  if (!qword_70EB8)
  {
    sub_1F64(&qword_70EA0, qword_5C118);
    sub_15DF4();
    sub_6ED0(&qword_70F18, &qword_70F20, &qword_5EE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EB8);
  }

  return result;
}

unint64_t sub_15DF4()
{
  result = qword_70EC0;
  if (!qword_70EC0)
  {
    sub_1F64(&qword_70E98, &qword_5C0E8);
    sub_15EAC();
    sub_6ED0(&qword_70F08, &qword_70F10, &unk_5C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EC0);
  }

  return result;
}

unint64_t sub_15EAC()
{
  result = qword_70EC8;
  if (!qword_70EC8)
  {
    sub_1F64(&qword_70ED0, &qword_5C270);
    sub_1600C();
    sub_1F64(&qword_70EF0, &qword_5C280);
    sub_1F64(&qword_70EF8, &qword_5C288);
    sub_59150();
    sub_6ED0(&qword_70F00, &qword_70EF8, &qword_5C288);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EC8);
  }

  return result;
}

unint64_t sub_1600C()
{
  result = qword_70ED8;
  if (!qword_70ED8)
  {
    sub_1F64(&qword_70EE0, &qword_5C278);
    sub_16098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70ED8);
  }

  return result;
}

unint64_t sub_16098()
{
  result = qword_70EE8;
  if (!qword_70EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EE8);
  }

  return result;
}

uint64_t sub_160EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_16114()
{
  result = qword_70F40;
  if (!qword_70F40)
  {
    sub_1F64(&qword_70F38, &qword_5C2B0);
    sub_16198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F40);
  }

  return result;
}

unint64_t sub_16198()
{
  result = qword_70F48;
  if (!qword_70F48)
  {
    sub_1F64(&qword_70F50, &qword_5C2B8);
    sub_6ED0(&qword_70F58, &qword_70F60, &unk_5C2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F48);
  }

  return result;
}

uint64_t sub_16248()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_16290@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v24 = v2[5];
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_1FE20();
  if (*(v9 + 16) && (v10 = sub_A4D8(v7, v8), (v11 & 1) != 0))
  {
    v23 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_59A80();

  sub_B848(v7, v8);
  v12 = sub_59A70();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v5;
  v13[5] = v4;
  v13[6] = v6;
  v13[7] = v7;
  v13[8] = v8;

  sub_B848(v7, v8);
  v14 = sub_59A70();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v5;
  v15[5] = v4;
  v15[6] = v6;
  v15[7] = v7;
  v15[8] = v8;
  sub_59710();
  v16 = v25;
  v17 = v26.n128_u8[0];
  v18 = swift_allocObject();
  v18[2] = v23;
  v18[3] = v5;
  v18[4] = v4;
  v18[5] = v6;
  v18[6] = v24;
  v18[7] = v7;
  v18[8] = v8;
  sub_B848(v7, v8);

  sub_B848(v7, v8);
  v19 = v24;
  sub_187C(&qword_70F80, &unk_5C2F0);
  sub_167A8();
  v20 = sub_DBD4();
  sub_3CC80(v20 & 1, v16, *(&v16 + 1), v17, v7, v8, sub_16794, v18, &v25);
  v21 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v21;
  *(a2 + 64) = v29;
  result = v26;
  *a2 = v25;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_16500()
{
  result = qword_70F78;
  if (!qword_70F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F78);
  }

  return result;
}

uint64_t sub_16558@<X0>(BOOL *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B50();
  LOBYTE(v5) = sub_127DC(v4, v5, v7);

  *a1 = (v5 & 1) == 0;
  return result;
}

uint64_t sub_165E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  if (v0[8] >= 9uLL)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_16638(_BYTE *a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  if (*a1 == 1)
  {
    sub_187C(&qword_70E70, &qword_5C0E0);
    sub_58B50();
    v5 = sub_152A8();
    sub_18728(v5, v6);
  }

  else
  {
    sub_B848(v1[7], v1[8]);
    sub_187C(&qword_70E70, &qword_5C0E0);
    sub_58B50();
    sub_13368(v8, v3, v4);
    sub_E9AC(v8[0], v8[1]);
  }

  return sub_58B60();
}

uint64_t sub_16734()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 64) >= 9uLL)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_167A8()
{
  result = qword_70F88;
  if (!qword_70F88)
  {
    sub_1F64(&qword_70F80, &unk_5C2F0);
    sub_2118();
    sub_16834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F88);
  }

  return result;
}

unint64_t sub_16834()
{
  result = qword_70F90;
  if (!qword_70F90)
  {
    sub_1F64(&qword_70F98, &qword_5C300);
    sub_168B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F90);
  }

  return result;
}

unint64_t sub_168B8()
{
  result = qword_70FA0;
  if (!qword_70FA0)
  {
    sub_1F64(&qword_70FA8, &qword_5C308);
    sub_16944();
    sub_16C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FA0);
  }

  return result;
}

unint64_t sub_16944()
{
  result = qword_70FB0;
  if (!qword_70FB0)
  {
    sub_1F64(&qword_70FB8, &qword_5C310);
    sub_169D0();
    sub_16AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FB0);
  }

  return result;
}

unint64_t sub_169D0()
{
  result = qword_70FC0;
  if (!qword_70FC0)
  {
    sub_1F64(&qword_70FC8, &qword_5C318);
    sub_17B64(&qword_70FD0, type metadata accessor for FeatureToggleView);
    sub_6ED0(&qword_70FD8, &qword_70FE0, &qword_5C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FC0);
  }

  return result;
}

unint64_t sub_16AB8()
{
  result = qword_70FE8;
  if (!qword_70FE8)
  {
    sub_1F64(&qword_70FF0, &qword_5C328);
    sub_16B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FE8);
  }

  return result;
}

unint64_t sub_16B3C()
{
  result = qword_70FF8;
  if (!qword_70FF8)
  {
    sub_1F64(&qword_71000, &qword_5C330);
    sub_6ED0(&qword_71008, &qword_71010, &qword_5C338);
    sub_17B64(&qword_71018, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FF8);
  }

  return result;
}

unint64_t sub_16C24()
{
  result = qword_71020;
  if (!qword_71020)
  {
    sub_1F64(&qword_71028, &qword_5C340);
    sub_169D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71020);
  }

  return result;
}

uint64_t sub_16CA8()
{
  if (*(v0 + 32) >= 9uLL)
  {
  }

  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_16D08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *(v2 + 16);
  v4 = *(v2 + 40);
  v27 = *(v2 + 48);
  v26 = *(v2 + 64);
  v54 = *(a1 + 8);
  v5 = a1[3];
  v53[2] = a1[2];
  v53[3] = v5;
  v6 = a1[1];
  v53[0] = *a1;
  v53[1] = v6;
  v7 = *(a1 + 4);
  v8 = *(v4 + 16);
  if (!v8)
  {
    v10 = 0;
    v19 = 0;
    v18 = 0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v22 = 0;
    if (!v7)
    {
LABEL_8:
      *&v38 = v22;
      *(&v38 + 1) = v13;
      *&v39 = v15;
      *(&v39 + 1) = v14;
      *&v40 = 0;
      *(&v40 + 1) = v16;
      *&v41 = v18;
      *(&v41 + 1) = v19;
      v42 = v10;
      sub_E9C0(v53, &v48);
      sub_6678(&v38, &qword_71058, &qword_5C360);
      v21 = 1;
      return sub_11250(v28, v53, v21 & 1, v27, v26, a2);
    }

LABEL_6:
    v30 = v22;
    sub_E9C0(v53, &v38);
    v17 = 0;
LABEL_10:
    *&v38 = v30;
    *(&v38 + 1) = v13;
    *&v39 = v15;
    *(&v39 + 1) = v14;
    *&v40 = v17;
    *(&v40 + 1) = v16;
    *&v41 = v18;
    *(&v41 + 1) = v19;
    v23 = a1[1];
    v43 = *a1;
    v44 = v23;
    v42 = v10;
    v45 = v7;
    v24 = *(a1 + 56);
    v46 = *(a1 + 40);
    v47 = v24;
    sub_6678(&v38, &qword_71050, &qword_5C358);
    v21 = 0;
    return sub_11250(v28, v53, v21 & 1, v27, v26, a2);
  }

  v9 = v4 + 72 * v8;
  v38 = *(v9 - 40);
  v10 = *(v9 + 24);
  v11 = *(v9 + 8);
  v12 = *(v9 - 8);
  v39 = *(v9 - 24);
  v40 = v12;
  v41 = v11;
  v42 = v10;
  v13 = *(&v38 + 1);
  v30 = v38;
  v14 = *(&v39 + 1);
  v15 = v39;
  v16 = *(&v12 + 1);
  v17 = v12;
  v19 = *(&v11 + 1);
  v18 = v11;
  sub_E9C0(&v38, &v48);
  if (!v17)
  {
    v22 = v30;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v38 = __PAIR128__(v13, v30);
  v39 = __PAIR128__(v14, v15);
  v40 = __PAIR128__(v16, v17);
  v41 = __PAIR128__(v19, v18);
  v42 = v10;
  v52 = v10;
  v50 = __PAIR128__(v16, v17);
  v51 = __PAIR128__(v19, v18);
  v48 = __PAIR128__(v13, v30);
  v49 = __PAIR128__(v14, v15);
  if (!v7)
  {
    *v37 = v40;
    *&v37[16] = v41;
    *&v37[32] = v42;
    v35 = v38;
    v36 = v39;
    sub_E9C0(v53, v33);
    sub_6610(&v38, v33, &qword_71058, &qword_5C360);
    sub_B818(&v35);
    goto LABEL_10;
  }

  v20 = a1[1];
  v35 = *a1;
  v36 = v20;
  *&v37[8] = *(a1 + 40);
  *&v37[24] = *(a1 + 56);
  *v37 = v7;
  sub_E9C0(v53, v33);
  sub_6610(&v38, v33, &qword_71058, &qword_5C360);
  sub_17080();
  v21 = sub_598A0();
  v31[2] = *v37;
  v31[3] = *&v37[16];
  v32 = *&v37[32];
  v31[0] = v35;
  v31[1] = v36;
  sub_B818(v31);
  v33[2] = v50;
  v33[3] = v51;
  v34 = v52;
  v33[0] = v48;
  v33[1] = v49;
  sub_B818(v33);
  v35 = __PAIR128__(v13, v30);
  v36 = __PAIR128__(v14, v15);
  *v37 = __PAIR128__(v16, v17);
  *&v37[16] = __PAIR128__(v19, v18);
  *&v37[32] = v10;
  sub_6678(&v35, &qword_71058, &qword_5C360);
  return sub_11250(v28, v53, v21 & 1, v27, v26, a2);
}

unint64_t sub_1702C()
{
  result = qword_71048;
  if (!qword_71048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71048);
  }

  return result;
}

unint64_t sub_17080()
{
  result = qword_71060;
  if (!qword_71060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71060);
  }

  return result;
}

uint64_t sub_170DC(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v26 = *(v1 + 72);
  v27 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  if (*(v1 + 89))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  swift_unownedRetainStrong();
  v10 = sub_1FAA4();

  v28 = v3;
  if (*(v10 + 16))
  {
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = sub_143B0(v11, v4, v5);
    if (v15)
    {
      v16 = *(*(v10 + 56) + 8 * v14);

      goto LABEL_9;
    }
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  v16 = &_swiftEmptySetSingleton;
LABEL_9:

  v30 = v16;
  v17 = sub_51FA0(v27, v26, v6, v8 | v7);
  if (v9)
  {
    if ((v18 & 1) == 0)
    {
      sub_153F0(v17);
    }

    v19 = v27;
  }

  else
  {
    if (v18)
    {
      sub_153F0(v27);
      goto LABEL_17;
    }

    v20 = v17;
    sub_153F0(v27);
    v19 = v20;
  }

  sub_134D4(v29, v19);
LABEL_17:
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = v28;
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  v22 = v30;
  v23 = v30[2];
  sub_B4D0(v28, v12, v13);
  if (!v23)
  {

    v22 = &_swiftEmptySetSingleton;
  }

  *(inited + 56) = v22;
  v24 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v24);
}

uint64_t sub_172E4()
{
  sub_EAAC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1739C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_173D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(a1 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v2(*a1, *(a1 + 8), *(a1 + 16), v4 | *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t sub_17428()
{
  v1 = *(v0 + 16);

  sub_EAAC(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return _swift_deallocObject(v0, 113, 7);
}

unint64_t sub_174A8()
{
  result = qword_710A0;
  if (!qword_710A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_710A0);
  }

  return result;
}

uint64_t sub_174FC()
{
  v1 = sub_187C(&qword_710A8, &unk_5C3E0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_EAAC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = *(v0 + v4 + 32);

  v7 = *(v0 + v4 + 48);

  v8 = *(v0 + v4 + 64);

  v9 = *(v0 + v4 + 88);

  v10 = *(v0 + v4 + 104);

  v11 = type metadata accessor for FeatureOptionView(0);
  v12 = v0 + v4 + *(v11 + 36);
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v33 = v3;

      v14 = *(v12 + 24);

      v15 = v12 + *(v13 + 28);
      v16 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
      {
        v31 = sub_58920();
        v32 = *(*(v31 - 8) + 8);
        v32(v15, v31);
        v32(v15 + *(v16 + 48), v31);
      }

      v17 = *(v12 + *(v13 + 40) + 8);

      v3 = v33;
    }
  }

  else
  {
    v18 = *v12;
  }

  sub_178CC(*(v5 + *(v11 + 40)), *(v5 + *(v11 + 40) + 8));
  v19 = (v5 + *(v1 + 36));
  v20 = *v19;

  v21 = (v19 + *(sub_187C(&qword_70FE0, &qword_5C320) + 28));
  v22 = type metadata accessor for FeaturePreviewConfiguration(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v23 = v21[3];

    v24 = v21 + *(v22 + 28);
    v25 = sub_187C(&qword_710B8, &unk_5C3F0);
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {
      v34 = v3;
      v26 = sub_58920();
      v27 = *(*(v26 - 8) + 8);
      v27(v24, v26);
      v28 = v26;
      v3 = v34;
      v27(&v24[*(v25 + 48)], v28);
    }

    v29 = *(v21 + *(v22 + 40) + 8);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_178CC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_178D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_187C(&qword_710A8, &unk_5C3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_179D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_17A10()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 48);
    v3 = *(v0 + 24);
    sub_187C(&qword_710D8, &qword_5C400);
    return sub_596F0();
  }

  return result;
}

unint64_t sub_17A7C()
{
  result = qword_710C0;
  if (!qword_710C0)
  {
    sub_1F64(&qword_710A8, &unk_5C3E0);
    sub_17B64(&qword_710C8, type metadata accessor for FeatureOptionView);
    sub_6ED0(&qword_70FD8, &qword_70FE0, &qword_5C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_710C0);
  }

  return result;
}

uint64_t sub_17B64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_17BAC()
{
  result = qword_710D0;
  if (!qword_710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_710D0);
  }

  return result;
}

uint64_t sub_17C00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_17C44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unownedRelease();
  sub_EAAC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_17CA8(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  v12 = *(v1 + 56);
  v5 = v12;
  v11 = *(v1 + 40);
  *(inited + 32) = v11;
  *(inited + 48) = v5;
  sub_187C(&qword_710F0, &qword_5D9C0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_5AB00;
  *(v6 + 32) = v3;
  v7 = sub_17DC0(v6);
  swift_setDeallocating();
  *(inited + 56) = v7;
  sub_E9F8(&v11, v10);
  v8 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v8);
}

uint64_t sub_17DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71108, &qword_5C430);
    v3 = sub_59C40();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = sub_59EC0();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_17ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71100, &unk_5DC10);
    v3 = sub_59D60();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_B4D0(v5, v6, v7);

      result = sub_143B0(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
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

uint64_t sub_17FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_18064(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = sub_51F88(a1, a2, a3, a4 & 0x101);
  if (v15 == 2 || (v16 = v15, v17 = sub_51FA0(a1, a2, a3, a4 & 0x101), (v18 & 1) != 0))
  {
    v19 = sub_1FAA4();
    if (*(v19 + 16))
    {
      v20 = sub_143B0(a6, a7, a8 & 1);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);

        v23 = sub_128C8(a1, v22);

        return v23;
      }
    }

    return a4;
  }

  else
  {
    v25 = v17;
    v26 = sub_1FAA4();
    if (*(v26 + 16) && (v27 = sub_143B0(a6, a7, a8 & 1), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
    }

    else
    {
      v29 = &_swiftEmptySetSingleton;
    }

    if (sub_128C8(a1, v29))
    {
    }

    else if (v16 && (a4 & 1) != 0)
    {
      v30 = sub_128C8(v25, v29);

      return !v30;
    }

    else
    {

      return 0;
    }
  }

  return v16;
}

uint64_t sub_18204()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_EAAC(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 72);

  sub_EAAC(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  v3 = *(v0 + 120);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_18280@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  if (*(v1 + 81))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v1 + 160);
  swift_unownedRetainStrong();
  v12 = sub_18064(v6, v7, v8, v10 | v9, v11, v3, v4, v5);

  *a1 = v12;
  return result;
}

uint64_t sub_18328(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *a1;
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  if (v7 == 1)
  {
    sub_187C(&qword_710F0, &qword_5D9C0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_5AB00;
    *(v9 + 32) = v6;
    v10 = sub_17DC0(v9);
    swift_setDeallocating();
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *(inited + 56) = v10;
  sub_B4D0(v2, v4, v5);
  v11 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v11);
}

uint64_t sub_1846C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unownedRelease();
  sub_EAAC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_184C0@<X0>(BOOL *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  swift_unownedRetainStrong();
  v8 = sub_1FAA4();

  if (*(v8 + 16) && (v9 = sub_143B0(v3, v5, v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    v12 = sub_128C8(v7, v11);

    v14 = v12;
  }

  else
  {

    v14 = 0;
  }

  *a1 = v14;
  return result;
}

uint64_t sub_18588()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unownedRelease();
  sub_EAAC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 80);

  v4 = *(v0 + 112);

  return _swift_deallocObject(v0, 122, 7);
}

uint64_t sub_185E4(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 96);
  v8 = *a1;
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  sub_187C(&qword_710F0, &qword_5D9C0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_5AB00;
  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  *(v10 + 32) = v11;
  v12 = sub_17DC0(v10);
  swift_setDeallocating();
  *(inited + 56) = v12;
  sub_B4D0(v2, v4, v5);
  v13 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v13);
}

uint64_t sub_18728(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_E9AC(a1, a2);
  }

  return a1;
}

uint64_t sub_187A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_18814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v5;
  return result;
}

uint64_t sub_18894(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_58B10();
}

uint64_t sub_1890C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

id sub_1897C()
{
  v0 = *sub_52218();

  return v0;
}

uint64_t sub_189C4(uint64_t a1)
{
  v2 = sub_187C(&qword_71138, &qword_5C4E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71130, &qword_5C4D8);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_18B2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_18BA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v5;
  return result;
}

uint64_t sub_18C20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_18C94()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_18D20(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_18EE4(uint64_t a1)
{
  v2 = sub_187C(&qword_71158, &qword_5C598);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71150, &qword_5C590);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_190CC(uint64_t a1)
{
  v2 = sub_187C(&qword_71170, &qword_5C5F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71168, &qword_5C5F0);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_19274()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_192F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v5;
  return result;
}

uint64_t sub_19384(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_19410()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_194C8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_187C(a2, a3);
  sub_58AD0();
  return swift_endAccess();
}

uint64_t sub_19540(uint64_t a1)
{
  v2 = sub_187C(&qword_71188, &qword_5C658);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71180, &qword_5C650);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_19680(uint64_t a1)
{
  v3 = type metadata accessor for FontGlyphVariant();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = *(a1 + 16);
  v65 = a1;
  v64 = v7;
  if (v10)
  {
    v11 = (a1 + *(v3 + 20) + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  }

  else
  {
    v11 = sub_52218();
  }

  v12 = *v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v77[0] = v12;
  v13 = v12;

  v66 = v1;
  sub_58B10();
  v74 = v3;
  v76 = v10;
  if (v10)
  {
    v14 = 0;
    v15 = *(v3 + 20);
    v70 = *(v3 + 24);
    v71 = v15;
    v69 = v65 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v68 = *(v64 + 72);
    v16 = _swiftEmptyArrayStorage;
    v67 = v9;
    do
    {
      sub_1BBBC(v69 + v68 * v14, v9);
      v17 = *&v9[v71];
      LODWORD(v75) = *&v9[v70];
      v18 = sub_2AAF4(v75);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v20 = *(v19 + 2);
      v21 = sub_59AA0();
      v22 = v21;
      v23 = *(v19 + 2);
      if (v23)
      {
        v73 = v16;
        v24 = 0;
        v25 = (v21 + 56);
        do
        {
          while (1)
          {
            v26 = *&v19[2 * v24++ + 32];
            v27 = *(v22 + 5);
            v28 = sub_59EB0();
            v29 = -1 << v22[32];
            v30 = v28 & ~v29;
            if ((*&v25[(v30 >> 3) & 0xFFFFFFFFFFFFFF8] >> v30))
            {
              break;
            }

LABEL_18:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = v22;
            sub_1B408(v26, v30, isUniquelyReferenced_nonNull_native);
            v22 = v77[0];
            if (v24 == v23)
            {
              goto LABEL_20;
            }

            v25 = v77[0] + 56;
          }

          v31 = ~v29;
          while (*(*(v22 + 6) + 2 * v30) != v26)
          {
            v30 = (v30 + 1) & v31;
            if (((*&v25[(v30 >> 3) & 0xFFFFFFFFFFFFFF8] >> v30) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        while (v24 != v23);
LABEL_20:

        v10 = v76;
        v9 = v67;
        v16 = v73;
      }

      else
      {
      }

      v33 = v75;
      if (*(v22 + 2))
      {
        v34 = *&v9[*(v74 + 28)];
        v77[0] = v22;
        sub_1B0F8(v78, v75);
        sub_1B0F8(v78, v34);
        v35 = v77[0];
        sub_1BC20(v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1AE68(0, *(v16 + 2) + 1, 1, v16);
        }

        v37 = *(v16 + 2);
        v36 = *(v16 + 3);
        if (v37 >= v36 >> 1)
        {
          v16 = sub_1AE68((v36 > 1), v37 + 1, 1, v16);
        }

        *(v16 + 2) = v37 + 1;
        v38 = &v16[16 * v37];
        *(v38 + 16) = v33;
        *(v38 + 5) = v35;
      }

      else
      {

        sub_1BC20(v9);
      }

      ++v14;
    }

    while (v14 != v10);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (*(v16 + 2))
  {
    sub_187C(&qword_71190, &unk_5C660);
    v39 = sub_59D60();
  }

  else
  {
    v39 = &_swiftEmptyDictionarySingleton;
  }

  v77[0] = v39;
  sub_1BC7C(v16, 1, v77);

  v40 = sub_19FCC(v77[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  v77[0] = v40;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v41 = *(v77[0] + 2);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v77[0]) = v41 != 0;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v42 = v77[0];
  v43 = *(v77[0] + 2);
  v44 = _swiftEmptyArrayStorage;
  if (v43)
  {
    v45 = sub_52E4(*(v77[0] + 2), 0);
    *&v75 = sub_1B9B4(v77, v45 + 16, v43, v42);
    v73 = v77[4];

    sub_61FC();
    if (v75 != v43)
    {
      __break(1u);
      goto LABEL_50;
    }

    v10 = v76;
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  v77[0] = v45;
  v46 = 0;
  sub_51AC(v77);

  v47 = v77[0];
  if (*(v77[0] + 2) >= 0x52uLL)
  {
    sub_1ADA0(v77[0], (v77[0] + 32), 0, 0xA3uLL);
    v49 = v48;

    v47 = v49;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v77[0] = v47;

  sub_58B10();
  if (v10)
  {
    v73 = 0;
    v77[0] = _swiftEmptyArrayStorage;
    sub_1B860(0, v10, 0);
    v44 = v77[0];
    v50 = v65 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v51 = *(v64 + 72);
    v75 = xmmword_5AB00;
    do
    {
      v52 = v72;
      sub_1BBBC(v50, v72);
      v53 = v74;
      v54 = *(v52 + *(v74 + 24));
      sub_187C(&qword_70CC0, &unk_5AEB0);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = *(v52 + *(v53 + 28));
      v56 = sub_6B34(inited);
      swift_setDeallocating();
      sub_1BC20(v52);
      v77[0] = v44;
      v58 = *(v44 + 2);
      v57 = *(v44 + 3);
      if (v58 >= v57 >> 1)
      {
        sub_1B860((v57 > 1), v58 + 1, 1);
        v44 = v77[0];
      }

      *(v44 + 2) = v58 + 1;
      v59 = &v44[16 * v58];
      *(v59 + 16) = v54;
      *(v59 + 5) = v56;
      v50 += v51;
      --v76;
    }

    while (v76);
    v46 = v73;
    goto LABEL_45;
  }

  if (_swiftEmptyArrayStorage[2])
  {
LABEL_45:
    sub_187C(&qword_71190, &unk_5C660);
    v60 = sub_59D60();
    goto LABEL_46;
  }

  v60 = &_swiftEmptyDictionarySingleton;
LABEL_46:
  v77[0] = v60;
  sub_1BC7C(v44, 1, v77);
  if (!v46)
  {

    v61 = v77[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v77[0] = v61;

    return sub_58B10();
  }

LABEL_50:

  __break(1u);
  return result;
}

uint64_t sub_19EEC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B0F8(&v11, *(*(v2 + 48) + ((v9 << 7) | (2 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19FCC(uint64_t a1)
{
  v2 = v1;
  v4 = &_swiftEmptyDictionarySingleton;
  v36 = &_swiftEmptyDictionarySingleton;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_5:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    v14 = *(v13 + 16);
    if (v14 >= 2)
    {
      v32 = *(*(a1 + 48) + 2 * v12);
      v33 = v2;
      sub_187C(&qword_70CC0, &unk_5AEB0);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      *(v16 + 16) = v14;
      *(v16 + 24) = (v17 - 32 + ((v17 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      v34 = sub_60FC(&v35, (v16 + 32), v14, v13);
      swift_bridgeObjectRetain_n();
      sub_61FC();
      if (v34 != v14)
      {
        goto LABEL_29;
      }

      v35 = v16;
      sub_51AC(&v35);
      v2 = v33;
      if (v33)
      {
        goto LABEL_30;
      }

      v18 = v35;
      v19 = v4[2];
      if (v4[3] <= v19)
      {
        sub_1AB34(v19 + 1, 1, &qword_71298, qword_5C728);
        v4 = v36;
      }

      v20 = v4[5];
      v21 = sub_59EB0();
      v22 = (v4 + 8);
      v23 = -1 << *(v4 + 32);
      v24 = v21 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v4[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *&v22[8 * v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v4[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
      *(v4[6] + 2 * v26) = v32;
      *(v4[7] + 8 * v26) = v18;
      ++v4[2];
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {

      return v4;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  __break(1u);
  return result;
}

uint64_t sub_1A2B4()
{
  v1 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__font;
  v2 = sub_187C(&qword_71130, &qword_5C4D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsPresent;
  v4 = sub_187C(&qword_71140, &unk_5C530);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantKeys;
  v6 = sub_187C(&qword_71150, &qword_5C590);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsForGlyph;
  v8 = sub_187C(&qword_71168, &qword_5C5F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__selectionForGlyph;
  v10 = sub_187C(&qword_71180, &qword_5C650);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_1A450()
{
  v1 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__font;
  v2 = sub_187C(&qword_71130, &qword_5C4D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsPresent;
  v4 = sub_187C(&qword_71140, &unk_5C530);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantKeys;
  v6 = sub_187C(&qword_71150, &qword_5C590);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsForGlyph;
  v8 = sub_187C(&qword_71168, &qword_5C5F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__selectionForGlyph;
  v10 = sub_187C(&qword_71180, &qword_5C650);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v11, v12);
}

uint64_t sub_1A628()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1A660();
  return v3;
}

uint64_t sub_1A660()
{
  v1 = sub_187C(&qword_71180, &qword_5C650);
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v36 = &v30 - v3;
  v4 = sub_187C(&qword_71168, &qword_5C5F0);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v30 - v6;
  v7 = sub_187C(&qword_71150, &qword_5C590);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v30 = sub_187C(&qword_71140, &unk_5C530);
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v30);
  v14 = &v30 - v13;
  v15 = sub_187C(&qword_71130, &qword_5C4D8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v20 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__font;
  v21 = *sub_52218();
  v39 = v21;
  type metadata accessor for CTFont(0);
  v22 = v21;
  sub_58AC0();
  (*(v16 + 32))(v0 + v20, v19, v15);
  v23 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsPresent;
  LOBYTE(v39) = 0;
  sub_58AC0();
  (*(v11 + 32))(v0 + v23, v14, v30);
  v24 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantKeys;
  v39 = _swiftEmptyArrayStorage;
  sub_187C(&qword_70CB0, &qword_5C540);
  sub_58AC0();
  (*(v31 + 32))(v0 + v24, v10, v32);
  v25 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsForGlyph;
  v39 = sub_1BAB4(_swiftEmptyArrayStorage, &qword_71298, qword_5C728);
  sub_187C(&qword_71160, &qword_5C5A0);
  v26 = v33;
  sub_58AC0();
  (*(v34 + 32))(v0 + v25, v26, v35);
  v27 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__selectionForGlyph;
  v39 = sub_1BAB4(_swiftEmptyArrayStorage, &qword_71190, &unk_5C660);
  sub_187C(&qword_71178, &qword_5C600);
  v28 = v36;
  sub_58AC0();
  (*(v37 + 32))(v0 + v27, v28, v38);
  *(v0 + OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel_maxToDisplay) = 81;
  return v0;
}

uint64_t sub_1AAE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_58AB0();
  *a1 = result;
  return result;
}

uint64_t sub_1AB34(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_187C(a3, a4);
  result = sub_59D50();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 2 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_59EB0();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 2 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void sub_1ADA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_187C(&qword_70CC0, &unk_5AEB0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = (v9 - 32 + ((v9 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 2 * a3), 2 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_1AE68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_71288, &qword_5C710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_71290, &qword_5C718);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AF9C()
{
  v1 = v0;
  sub_187C(&qword_71190, &unk_5C660);
  v2 = *v0;
  v3 = sub_59D40();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_1B0F8(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_59EB0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 2 * v9) != a2)
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
    sub_1B408(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B1E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_70CF8, &qword_5AED0);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_59EB0();
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
      *(*(v6 + 48) + 2 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B408(uint64_t result, unint64_t a2, char a3)
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
    sub_1B1E0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B52C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B66C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_59EB0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 2 * a2) != v4)
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
  *(*(v12 + 48) + 2 * a2) = v4;
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
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_1B52C()
{
  v1 = v0;
  sub_187C(&qword_70CF8, &qword_5AED0);
  v2 = *v0;
  v3 = sub_59C10();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

uint64_t sub_1B66C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_70CF8, &qword_5AED0);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_59EB0();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 2 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

void *sub_1B860(void *a1, int64_t a2, char a3)
{
  result = sub_1B880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B880(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_71288, &qword_5C710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_71290, &qword_5C718);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B9B4(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1BAB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_187C(a2, a3);
  v5 = sub_59D60();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_4FC4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 2 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 4);
    v17 = *v12;

    v10 = sub_4FC4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC20(uint64_t a1)
{
  v2 = type metadata accessor for FontGlyphVariant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC7C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    v7 = *(result + 32);
    v8 = *(result + 40);
    v9 = *a3;
    v10 = sub_4FC4(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      sub_1AB34(v14, a2 & 1, &qword_71190, &unk_5C660);
      v18 = *a3;
      result = sub_4FC4(v7);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_27:
        result = sub_59EA0();
        __break(1u);
        return result;
      }

      v15 = result;
      v20 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v21 = *(v20[7] + 8 * v15);

      v22 = sub_19EEC(v8, v21);
      v23 = v20[7];
      v24 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v22;

      v25 = v3 - 1;
      if (!v25)
      {
        return result;
      }

LABEL_15:
      for (i = (v6 + 56); ; i += 2)
      {
        v34 = *(i - 4);
        v35 = *i;
        v36 = *a3;
        v37 = sub_4FC4(v34);
        v39 = v36[2];
        v40 = (v38 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          break;
        }

        v42 = v37;
        v43 = v38;
        v44 = v36[3];

        if (v44 < v41)
        {
          sub_1AB34(v41, 1, &qword_71190, &unk_5C660);
          v45 = *a3;
          result = sub_4FC4(v34);
          if ((v43 & 1) != (v46 & 1))
          {
            goto LABEL_27;
          }

          v42 = result;
        }

        v47 = *a3;
        if (v43)
        {
          v30 = *(v47[7] + 8 * v42);

          v31 = sub_19EEC(v35, v30);
          v32 = v47[7];
          v33 = *(v32 + 8 * v42);
          *(v32 + 8 * v42) = v31;
        }

        else
        {
          v47[(v42 >> 6) + 8] |= 1 << v42;
          *(v47[6] + 2 * v42) = v34;
          *(v47[7] + 8 * v42) = v35;
          v48 = v47[2];
          v27 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v27)
          {
            goto LABEL_26;
          }

          v47[2] = v49;
        }

        if (!--v25)
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_1AF9C();
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20[(v15 >> 6) + 8] |= 1 << v15;
    *(v20[6] + 2 * v15) = v7;
    *(v20[7] + 8 * v15) = v8;
    v26 = v20[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20[2] = v28;
    v25 = v3 - 1;
    if (!v25)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t type metadata accessor for GlyphVariantsViewModel()
{
  result = qword_748C0;
  if (!qword_748C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF8C()
{
  sub_1C180();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C1D8(319, &qword_711C8, &type metadata for Bool, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C228(319, &qword_711D0, &qword_70CB0, &qword_5C540);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1C228(319, &qword_711D8, &qword_71160, &qword_5C5A0);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1C228(319, &unk_711E0, &qword_71178, &qword_5C600);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C180()
{
  if (!qword_711C0)
  {
    type metadata accessor for CTFont(255);
    v0 = sub_58B20();
    if (!v1)
    {
      atomic_store(v0, &qword_711C0);
    }
  }
}

void sub_1C1D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C228(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1F64(a3, a4);
    v5 = sub_58B20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_589A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C2EC(uint64_t a1)
{
  v3 = sub_589A0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id sub_1C374()
{
  v1 = *(v0 + *(type metadata accessor for FontGlyphVariant() + 20));

  return v1;
}

uint64_t type metadata accessor for FontGlyphVariant()
{
  result = qword_74E50;
  if (!qword_74E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_1C43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_589A0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for FontGlyphVariant();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1C4DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_6EC98;
  v6._object = a2;
  v4 = sub_59D80(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C530(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6870796C67;
  if (a1 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (a1)
  {
    v1 = 1953394534;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C5AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6870796C67;
    }

    else
    {
      v3 = 0x6C616E696769726FLL;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xED00006870796C47;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1953394534;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6870796C67;
  if (a2 != 2)
  {
    v8 = 0x6C616E696769726FLL;
    v7 = 0xED00006870796C47;
  }

  if (a2)
  {
    v6 = 1953394534;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_59E80();
  }

  return v11 & 1;
}

Swift::Int sub_1C6E8()
{
  v1 = *v0;
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

uint64_t sub_1C7A0()
{
  *v0;
  *v0;
  *v0;
  sub_59920();
}

Swift::Int sub_1C844()
{
  v1 = *v0;
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

uint64_t sub_1C8F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1C928(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6870796C67;
  if (*v1 != 2)
  {
    v5 = 0x6C616E696769726FLL;
    v4 = 0xED00006870796C47;
  }

  if (*v1)
  {
    v3 = 1953394534;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1C99C()
{
  v1 = 25705;
  v2 = 0x6870796C67;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 1953394534;
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

uint64_t sub_1CA0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA40(uint64_t a1)
{
  v2 = sub_1D764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CA7C(uint64_t a1)
{
  v2 = sub_1D764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1CAB8(void *a1)
{
  v3 = v1;
  v5 = sub_187C(&qword_712A0, &qword_5C740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_7770(a1, a1[3]);
  sub_1D764();
  sub_59F30();
  v11 = objc_opt_self();
  v12 = type metadata accessor for FontGlyphVariant();
  v13 = *(v3 + v12[5]);
  v24[0] = 0;
  v14 = [v11 archivedDataWithRootObject:v13 requiringSecureCoding:0 error:v24];
  v15 = v24[0];
  if (v14)
  {
    v16 = sub_58980();
    v18 = v17;

    v24[0] = v16;
    v24[1] = v18;
    v23[7] = 1;
    sub_1D7B8();
    sub_59E30();
    if (!v2)
    {
      LOBYTE(v24[0]) = 0;
      sub_589A0();
      sub_1DAFC(&qword_712B8, &type metadata accessor for UUID);
      sub_59E30();
      v19 = *(v3 + v12[6]);
      LOBYTE(v24[0]) = 2;
      sub_59E40();
      v20 = *(v3 + v12[7]);
      LOBYTE(v24[0]) = 3;
      sub_59E40();
    }

    (*(v6 + 8))(v9, v5);
    return sub_1D80C(v16, v18);
  }

  else
  {
    v22 = v15;
    sub_58960();

    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }
}

void sub_1CDB0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_589A0();
  v43 = *(v41 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v41);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_187C(&qword_712C0, &qword_5C748);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v40 = type metadata accessor for FontGlyphVariant();
  v12 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_58990();
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  sub_7770(a1, v16);
  sub_1D764();
  sub_59F20();
  if (v2)
  {
    v17 = v41;
    v20 = v43;
    sub_EA60(v42);
    (*(v20 + 8))(v14, v17);
    return;
  }

  v37 = v6;
  v38 = v8;
  LOBYTE(v45) = 1;
  sub_1D860();
  sub_59DD0();
  v18 = v41;
  v19 = v7;
  v36 = v11;
  v21 = v44[0];
  v22 = v44[1];
  sub_1D91C(0, &qword_712D0, NSKeyedUnarchiver_ptr);
  sub_59AE0();
  v23 = v14;
  v35 = v21;
  if (!v44[3])
  {
    sub_1D8B4(v44);
    v25 = v40;
    goto LABEL_7;
  }

  sub_1D91C(0, &qword_712E8, UIFont_ptr);
  v24 = swift_dynamicCast();
  v25 = v40;
  if ((v24 & 1) == 0)
  {
LABEL_7:
    v28 = v43;
    v26 = v22;
    v27 = *sub_52218();
    goto LABEL_8;
  }

  v26 = v22;
  v27 = v45;
  v28 = v43;
LABEL_8:
  *&v14[*(v25 + 20)] = v27;
  LOBYTE(v44[0]) = 0;
  sub_1DAFC(&qword_712E0, &type metadata accessor for UUID);
  v29 = v36;
  v30 = v37;
  sub_59DD0();
  (*(v28 + 40))(v14, v30, v18);
  LOBYTE(v44[0]) = 2;
  v31 = sub_59DE0();
  v32 = v19;
  v33 = v40;
  *(v23 + *(v40 + 24)) = v31;
  LOBYTE(v44[0]) = 3;
  LOWORD(v30) = sub_59DE0();
  (*(v38 + 8))(v29, v32);
  sub_1D80C(v35, v26);
  *(v23 + *(v33 + 28)) = v30;
  sub_1BBBC(v23, v39);
  sub_EA60(v42);
  sub_1BC20(v23);
}

BOOL sub_1D2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant();
  v5 = *(a1 + v4[5]);
  v6 = sub_52384();
  v8 = v7;
  v9 = *(a2 + v4[5]);
  if (v6 == sub_52384() && v8 == v10)
  {
  }

  else
  {
    v12 = sub_59E80();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  return 0;
}

void sub_1D3D0()
{
  v1 = v0;
  v2 = type metadata accessor for FontGlyphVariant();
  v3 = *(v0 + v2[5]);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v1 + v2[6]));
  sub_59EF0(*(v1 + v2[7]));
}

Swift::Int sub_1D450()
{
  v1 = v0;
  sub_59ED0();
  v2 = type metadata accessor for FontGlyphVariant();
  v3 = *(v0 + v2[5]);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v1 + v2[6]));
  sub_59EF0(*(v1 + v2[7]));
  return sub_59F10();
}

Swift::Int sub_1D4EC(int *a1)
{
  v3 = v1;
  sub_59ED0();
  v4 = *(v1 + a1[5]);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v3 + a1[6]));
  sub_59EF0(*(v3 + a1[7]));
  return sub_59F10();
}

void sub_1D580(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *(v2 + a2[5]);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v4 + a2[6]));
  sub_59EF0(*(v4 + a2[7]));
}

Swift::Int sub_1D5F8(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_59ED0();
  v5 = *(v2 + a2[5]);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v4 + a2[6]));
  sub_59EF0(*(v4 + a2[7]));
  return sub_59F10();
}

BOOL sub_1D688(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + a3[5]);
  v7 = sub_52384();
  v9 = v8;
  v10 = *(a2 + a3[5]);
  if (v7 == sub_52384() && v9 == v11)
  {
  }

  else
  {
    v13 = sub_59E80();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + a3[6]) == *(a2 + a3[6]))
  {
    return *(a1 + a3[7]) == *(a2 + a3[7]);
  }

  return 0;
}

unint64_t sub_1D764()
{
  result = qword_712A8;
  if (!qword_712A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712A8);
  }

  return result;
}

unint64_t sub_1D7B8()
{
  result = qword_712B0;
  if (!qword_712B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712B0);
  }

  return result;
}

uint64_t sub_1D80C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D860()
{
  result = qword_712C8;
  if (!qword_712C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712C8);
  }

  return result;
}

uint64_t sub_1D8B4(uint64_t a1)
{
  v2 = sub_187C(&qword_712D8, qword_5C750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D91C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D9B0()
{
  result = qword_712F8;
  if (!qword_712F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712F8);
  }

  return result;
}

unint64_t sub_1DA08()
{
  result = qword_71300;
  if (!qword_71300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71300);
  }

  return result;
}

unint64_t sub_1DA60()
{
  result = qword_71308;
  if (!qword_71308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71308);
  }

  return result;
}

uint64_t sub_1DAFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_589A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_589A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1DCE0()
{
  sub_589A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CTFont(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for FontGlyphVariant.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FontGlyphVariant.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1DEE4(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_52500();
  v5 = v3;
  sub_27A60(v4, v5);

  return v5;
}

id sub_1DF6C(void *a1)
{
  sub_187C(&qword_713A0, &qword_5C9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = NSFontAttributeName;
  type metadata accessor for CTFont(0);
  *(inited + 64) = v3;
  *(inited + 40) = a1;
  v4 = a1;
  v5 = NSFontAttributeName;
  sub_276CC(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_713A8, &qword_5C9F8);
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = sub_598B0();

  type metadata accessor for Key(0);
  sub_28050(&qword_713B0, type metadata accessor for Key);
  isa = sub_59860().super.isa;

  v9 = [v6 initWithString:v7 attributes:isa];

  v10 = sub_52500();
  sub_27A60(v10, v4);

  return v4;
}

uint64_t sub_1E138(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_6EDA8;
  v6._object = a2;
  v4 = sub_59D80(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1E18C(char a1)
{
  if (!a1)
  {
    return 1953394534;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 0x73746E6169726176;
}

uint64_t sub_1E1D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65676E6172;
  if (v2 != 1)
  {
    v4 = 0x73746E6169726176;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953394534;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6172;
  if (*a2 != 1)
  {
    v8 = 0x73746E6169726176;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953394534;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_59E80();
  }

  return v11 & 1;
}

Swift::Int sub_1E2CC()
{
  v1 = *v0;
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

uint64_t sub_1E364()
{
  *v0;
  *v0;
  sub_59920();
}

Swift::Int sub_1E3E8()
{
  v1 = *v0;
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

uint64_t sub_1E47C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E138(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1E4AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65676E6172;
  if (v2 != 1)
  {
    v5 = 0x73746E6169726176;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953394534;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E500()
{
  v1 = 0x65676E6172;
  if (*v0 != 1)
  {
    v1 = 0x73746E6169726176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953394534;
  }
}

uint64_t sub_1E550@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E584(uint64_t a1)
{
  v2 = sub_27FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1E5C0(uint64_t a1)
{
  v2 = sub_27FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1E5FC(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v23 = a5;
  v24 = a4;
  v9 = sub_187C(&qword_713B8, &qword_5CA00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = a1[4];
  sub_7770(a1, a1[3]);
  sub_27FFC();
  sub_59F30();
  v15 = objc_opt_self();
  v26 = 0;
  v16 = [v15 archivedDataWithRootObject:a2 requiringSecureCoding:0 error:&v26];
  v17 = v26;
  if (v16)
  {
    v18 = sub_58980();
    v20 = v19;

    v26 = v18;
    v27 = v20;
    v25 = 0;
    sub_1D7B8();
    sub_59E30();
    if (v5)
    {
      (*(v10 + 8))(v13, v9);
      return sub_1D80C(v18, v20);
    }

    v26 = a3;
    v27 = v24;
    v25 = 1;
    type metadata accessor for _NSRange(0);
    sub_28050(&qword_713C8, type metadata accessor for _NSRange);
    sub_59E30();
    v26 = v23;
    v25 = 2;

    sub_187C(&qword_713D0, &qword_5CA08);
    sub_29240(&qword_713D8, &qword_713E0);
    sub_59E30();
    sub_1D80C(v18, v20);
  }

  else
  {
    v22 = v17;
    sub_58960();

    swift_willThrow();
  }

  return (*(v10 + 8))(v13, v9);
}

id sub_1E940(uint64_t *a1)
{
  result = sub_28098(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for CTFont(0);
  sub_28050(&qword_713E8, type metadata accessor for CTFont);
  if ((sub_589E0() & 1) == 0 || a2 != a6 || a3 != a7)
  {
    return 0;
  }

  return sub_1EA6C(a4, a8);
}

uint64_t sub_1EA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v15 = &v33 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a1 + 56);
  v33 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = a2 + 56;
  v34 = v21;
  v35 = &v33 - v13;
  v36 = v14;
  v37 = a1;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v38 = (v20 - 1) & v20;
LABEL_13:
      v26 = *(v14 + 72);
      sub_1BBBC(*(a1 + 48) + v26 * (v23 | (v16 << 6)), v15);
      sub_291DC(v15, v11);
      v27 = *(a2 + 40);
      sub_28050(&qword_71640, type metadata accessor for FontGlyphVariant);
      v28 = sub_59870();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v31 = ~v29;
      while (1)
      {
        sub_1BBBC(*(a2 + 48) + v30 * v26, v8);
        sub_28050(&qword_71310, type metadata accessor for FontGlyphVariant);
        v32 = sub_598A0();
        sub_1BC20(v8);
        if (v32)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_1BC20(v11);
      v14 = v36;
      a1 = v37;
      v21 = v34;
      v15 = v35;
      v20 = v38;
      if (!v38)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1BC20(v11);
    return 0;
  }

LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v25 = *(v33 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v38 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_1ED78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_28098(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1EDC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  type metadata accessor for CTFont(0);
  sub_28050(&qword_713E8, type metadata accessor for CTFont);
  if ((sub_589E0() & 1) == 0)
  {
    return 0;
  }

  if (v3 != v7 || v5 != v9)
  {
    return 0;
  }

  return sub_1EA6C(v4, v8);
}

uint64_t sub_1EEC0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1EEFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1EF5C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1EFF0;
}

void sub_1EFF0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1F09C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_1F110()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

void (*sub_1F180(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_58AF0();
  return sub_1F224;
}

void sub_1F224(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1F2A8(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1F3E0(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_187C(&qword_71148, &qword_5CA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__multipleUnknownFontsUsed;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_187C(&qword_71140, &unk_5C530);
  sub_58AD0();
  swift_endAccess();
  return sub_292F0;
}

uint64_t sub_1F5D0(uint64_t a1)
{
  v2 = sub_187C(&qword_71400, &qword_5CAC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_713F8, &qword_5CAB8);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1F758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_1F7CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v5;
  return result;
}

uint64_t sub_1F84C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_58B10();
}

uint64_t sub_1F8C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_1F958(uint64_t a1)
{
  v2 = sub_187C(&qword_71418, &qword_5CB20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71410, &qword_5CB18);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1FB1C(uint64_t a1)
{
  v2 = sub_187C(&qword_71430, &unk_5CB80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71428, &qword_5CB78);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1FCD4(uint64_t a1)
{
  v2 = sub_187C(&qword_71440, &qword_5CBE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71438, &qword_5CBD8);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1FE98(uint64_t a1)
{
  v2 = sub_187C(&qword_71458, &unk_5CC40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71450, &qword_5CC38);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_20050(uint64_t a1)
{
  v2 = sub_187C(&qword_71468, &qword_5CCA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71460, &qword_5CC98);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void sub_20188(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    goto LABEL_76;
  }

  v4 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v6 = v88;
  v85 = v2;
  if (v88 >> 62)
  {
    goto LABEL_74;
  }

  v7 = *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
LABEL_75:

    v3 = v85;
LABEL_76:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = 0;

    sub_58B10();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = _swiftEmptyArrayStorage;

    sub_58B10();
    v77 = sub_27DF0(_swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = v77;

    sub_58B10();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = _swiftEmptyArrayStorage;

    sub_58B10();
    v78 = sub_17ED8(_swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = v78;

    sub_58B10();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_58B00();

    if (v88 == 1)
    {
      v79 = *(v3 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_variantsModel);
      sub_19680(_swiftEmptyArrayStorage);
    }

    return;
  }

  while (1)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_59C80();
      }

      else
      {
        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (sub_52384() == a1 && v12 == v4)
      {
        break;
      }

      v13 = sub_59E80();

      if (v13)
      {
        goto LABEL_16;
      }

      ++v8;
      if (v11 == v7)
      {
        goto LABEL_75;
      }
    }

LABEL_16:

    v14 = sub_52384();
    v16 = v15;
    v17 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
    v3 = v85;
    swift_beginAccess();
    v18 = *(v85 + v17);
    if (!*(v18 + 16))
    {

LABEL_23:
      swift_endAccess();

      goto LABEL_76;
    }

    v19 = sub_500C(v14, v16);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }

    a1 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v6 = v85 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName;
    swift_beginAccess();
    v23 = *v6;
    v22 = *(v6 + 8);

    v24 = sub_52384();
    if (!v22)
    {

      goto LABEL_26;
    }

    if (v23 == v24 && v22 == v25)
    {

      goto LABEL_27;
    }

    v26 = sub_59E80();

    if ((v26 & 1) == 0)
    {
LABEL_26:
      v27 = *(v85 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);
      sub_36890();
    }

LABEL_27:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = v10;
    v28 = v10;

    sub_58B10();
    v29 = sub_52384();
    v30 = *(v6 + 8);
    *v6 = v29;
    *(v6 + 8) = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_58B00();

    v32 = v88;
    v86 = v28;
    v33 = sub_2D540();
    v34 = v33;
    if (v32)
    {
      goto LABEL_43;
    }

    v4 = v33[2];
    if (!v4)
    {
      break;
    }

    v35 = 0;
    v36 = v33 + 4;
    v37 = _swiftEmptyArrayStorage;
    v83 = v33 + 4;
LABEL_30:
    v38 = &v36[9 * v35];
    v39 = v35;
    while (v39 < v34[2])
    {
      v88 = *v38;
      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      v42 = *(v38 + 1);
      v92 = v38[8];
      v90 = v41;
      v91 = v40;
      v89 = v42;
      v35 = v39 + 1;
      v43 = *(&v88 + 1);
      v6 = v88;
      v44 = v42;
      sub_E9C0(&v88, &v87);
      if (sub_51970(v6, v43, v44))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25FE0(0, v37[2] + 1, 1);
          v37 = v93;
        }

        v47 = v37[2];
        v46 = v37[3];
        v6 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          sub_25FE0((v46 > 1), v47 + 1, 1);
          v37 = v93;
        }

        v37[2] = v6;
        v48 = &v37[9 * v47];
        *(v48 + 2) = v88;
        v49 = v89;
        v50 = v90;
        v51 = v91;
        v48[12] = v92;
        *(v48 + 4) = v50;
        *(v48 + 5) = v51;
        *(v48 + 3) = v49;
        v36 = v83;
        if (v4 - 1 != v39)
        {
          goto LABEL_30;
        }

        goto LABEL_42;
      }

      sub_B818(&v88);
      v38 += 9;
      ++v39;
      if (v4 == v35)
      {
        goto LABEL_42;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v7 = sub_59D30();
    if (!v7)
    {
      goto LABEL_75;
    }
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_42:

  v34 = v37;
LABEL_43:
  swift_getKeyPath();
  swift_getKeyPath();
  *&v88 = v34;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v52 = sub_9F34();

  swift_getKeyPath();
  swift_getKeyPath();
  *&v88 = v52;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v53 = v88;
  v54 = *(v88 + 16);
  if (!v54)
  {

    v55 = _swiftEmptyArrayStorage;
LABEL_47:
    *&v88 = v55;
    sub_24E54(&v88);
    v57 = v88;
    v58 = *(v88 + 16);
    if (v58)
    {
      v84 = a1;
      *&v88 = _swiftEmptyArrayStorage;
      sub_25FC0(0, v58, 0);
      v59 = v88;
      v60 = (v57 + 40);
      do
      {
        v61 = *(v60 - 1);
        v62 = *v60;
        sub_B848(v61, *v60);
        *&v88 = v59;
        v64 = v59[2];
        v63 = v59[3];
        if (v64 >= v63 >> 1)
        {
          sub_25FC0((v63 > 1), v64 + 1, 1);
          v59 = v88;
        }

        v60 += 3;
        v59[2] = v64 + 1;
        v65 = &v59[2 * v64];
        v65[4] = v61;
        v65[5] = v62;
        --v58;
      }

      while (v58);

      a1 = v84;
    }

    else
    {

      v59 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = v59;

    sub_58B10();
    v66 = *(a1 + 16);
    if (v66)
    {
      *&v88 = _swiftEmptyArrayStorage;
      sub_59CE0();
      v67 = 32;
      do
      {
        v68 = *(a1 + v67);
        sub_59CC0();
        v69 = *(v88 + 16);
        sub_59CF0();
        sub_59D00();
        sub_59CD0();
        v67 += 32;
        --v66;
      }

      while (v66);

      a1 = v88;
    }

    else
    {

      a1 = _swiftEmptyArrayStorage;
    }

    v6 = sub_17ED8(_swiftEmptyArrayStorage);
    if (a1 >> 62)
    {
      v70 = sub_59D30();
      if (v70)
      {
LABEL_61:
        v71 = 0;
        v4 = a1 & 0xC000000000000001;
        while (1)
        {
          if (v4)
          {
            v72 = sub_59C80();
          }

          else
          {
            if (v71 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_72;
            }

            v72 = *(a1 + 8 * v71 + 32);
          }

          v73 = v72;
          v74 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          v75 = sub_2C6B0();
          v76 = swift_isUniquelyReferenced_nonNull_native();
          *&v88 = v6;
          sub_28458(v75, sub_2767C, 0, v76, &v88);

          v6 = v88;
          ++v71;
          if (v74 == v70)
          {
            goto LABEL_80;
          }
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    else
    {
      v70 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v70)
      {
        goto LABEL_61;
      }
    }

LABEL_80:

    swift_getKeyPath();
    swift_getKeyPath();
    *&v88 = v6;

    sub_58B10();
    sub_21258();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v80 = *(v85 + 24);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_58B00();

      v81 = v87;
      if (!v87)
      {
        v81 = *sub_52218();
      }

      ObjectType = swift_getObjectType();
      (*(v80 + 24))(v81, ObjectType, v80);

      swift_unknownObjectRelease();
    }

    return;
  }

  v55 = sub_24EC0(*(v88 + 16), 0);
  v56 = sub_274E0(&v88, (v55 + 4), v54, v53);

  sub_61FC();
  if (v56 == v54)
  {

    goto LABEL_47;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_20DB8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_20DE0();
}

uint64_t sub_20DE0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (v4)
  {
    v0 = sub_52384();
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0;
  }

  sub_20188(v0, v2);
}

uint64_t (*sub_20ED4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *(a1 + 8) = *(a1 + 9);
  return sub_20F68;
}

uint64_t sub_20F68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20DE0();
}

uint64_t sub_20FAC(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_210E4(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_187C(&qword_71148, &qword_5CA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__internalFeaturesEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_187C(&qword_71140, &unk_5C530);
  sub_58AD0();
  swift_endAccess();
  return sub_21254;
}

uint64_t sub_21258()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (v23 != 1)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!v23)
  {
LABEL_15:
    v22 = *(v1 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_variantsModel);
    return sub_19680(_swiftEmptyArrayStorage);
  }

  v3 = sub_52384();
  v5 = v4;
  v6 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!*(v7 + 16))
  {

    goto LABEL_14;
  }

  v8 = sub_500C(v3, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_14:
    swift_endAccess();

    goto LABEL_15;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  v12 = *(v1 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_variantsModel);
  v13 = _swiftEmptyArrayStorage;
  v14 = *(v11 + 16);

  if (v14)
  {
    v15 = 0;
    v16 = (v11 + 56);
    while (v15 < *(v11 + 16))
    {
      ++v15;
      v17 = *v16;
      v16 += 4;

      result = sub_2637C(v18);
      if (v14 == v15)
      {
        v13 = _swiftEmptyArrayStorage;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    if (_swiftEmptyArrayStorage[2] >= 0xC9uLL)
    {
      v19 = *(type metadata accessor for FontGlyphVariant() - 8);
      sub_24CB4(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage + ((*(v19 + 80) + 32) & ~*(v19 + 80)), 0, 0x191uLL);
      v21 = v20;

      v13 = v21;
    }

    sub_19680(v13);
  }

  return result;
}

uint64_t sub_214C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_21548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v5;
  return result;
}

uint64_t sub_215C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_58B10();
  return sub_21258();
}

uint64_t sub_2163C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_58B10();
  return sub_21258();
}

uint64_t (*sub_216B0(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *(a1 + 8) = *(a1 + 9);
  return sub_21744;
}

uint64_t sub_21744(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;

  sub_58B10();
  return sub_21258();
}

uint64_t sub_217E0(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21918(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_187C(&qword_71148, &qword_5CA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__variantSelectionAllowed;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_187C(&qword_71140, &unk_5C530);
  sub_58AD0();
  swift_endAccess();
  return sub_292F0;
}

void sub_21A88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_58AE0();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_58AE0();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_21C74()
{
  v1 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21CBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21D14()
{
  v1 = (v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_21D6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_21DCC(void *a1)
{
  v2 = v1;

  v5 = sub_2873C(v4);

  v6 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v9 = sub_23CB4(v8, v5);

  if (v9)
  {
LABEL_63:

    return;
  }

  v10 = *(v2 + v6);
  *(v2 + v6) = v5;
  sub_224F8(a1);
  v12 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v12;

  sub_58B10();
  v13 = a1[2];
  v61 = v2;
  if (!v13)
  {

    goto LABEL_17;
  }

  v59 = v10;
  v15 = a1[4];
  v14 = a1[5];
  v17 = a1[6];
  v16 = a1[7];
  v18 = &a1[4 * v13];
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[3];
  v58 = v18[2];
  type metadata accessor for CTFont(0);
  sub_28050(&qword_713E8, type metadata accessor for CTFont);
  v22 = v15;
  swift_bridgeObjectRetain_n();
  v23 = v22;
  v24 = v20;

  if ((sub_589E0() & 1) == 0 || v14 != v19 || v17 != v58)
  {

    swift_bridgeObjectRelease_n();
LABEL_15:

LABEL_16:

    v2 = v61;
    goto LABEL_17;
  }

  v25 = sub_1EA6C(v16, v21);

  if ((v25 & 1) == 0)
  {

    goto LABEL_15;
  }

  if (!sub_53C98(v14, v17))
  {
    goto LABEL_42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!v63)
  {
    sub_52384();
    goto LABEL_41;
  }

  v26 = sub_52384();
  v28 = v27;

  v29 = sub_52384();
  if (!v28)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (v26 == v29 && v28 == v30)
  {

    goto LABEL_44;
  }

  v43 = sub_59E80();

  if (v43)
  {
LABEL_44:
    v44 = sub_52384();
    if (!*(v59 + 16))
    {
      goto LABEL_54;
    }

    v46 = sub_500C(v44, v45);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_55;
    }

    v49 = *(*(v59 + 56) + 8 * v46);

    v60 = v49;
    v50 = (v49 + 56);
    v51 = -*(v49 + 16);
    v52 = -1;
    while (1)
    {
      if (v51 + v52 == -1)
      {

        goto LABEL_62;
      }

      if (++v52 >= *(v60 + 16))
      {
        goto LABEL_66;
      }

      v53 = *(v50 - 1);
      v54 = *v50;
      v55 = *(v50 - 2);
      v56 = *(v50 - 3);

      if (!sub_53C98(v55, v53))
      {
        break;
      }

      v50 += 4;
      v57 = sub_589E0();

      if ((v57 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_42:

LABEL_17:
  while (1)
  {
    v31 = (v2 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
    swift_beginAccess();
    v23 = v31[1];
    if (!v23)
    {
      break;
    }

    v32 = *v31;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_58B00();

    if (v62 >> 62)
    {
      v33 = sub_59D30();
    }

    else
    {
      v33 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
    }

    v34 = 0;
    while (1)
    {
      if (v33 == v34)
      {

        goto LABEL_32;
      }

      if ((v62 & 0xC000000000000001) != 0)
      {
        v35 = sub_59C80();
      }

      else
      {
        if (v34 >= *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        v35 = *(v62 + 8 * v34 + 32);
      }

      v36 = v35;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (sub_52384() == v32 && v23 == v37)
      {

LABEL_38:

        sub_20188(v32, v23);
        goto LABEL_62;
      }

      v2 = sub_59E80();

      ++v34;
      if (v2)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

LABEL_55:
  }

LABEL_32:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!(v62 >> 62))
  {
    if (*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_34;
    }

LABEL_60:

    v40 = 0;
    v42 = 0;
LABEL_61:
    sub_20188(v40, v42);
LABEL_62:

    goto LABEL_63;
  }

  if (!sub_59D30())
  {
    goto LABEL_60;
  }

LABEL_34:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v38 = sub_59C80();
    goto LABEL_37;
  }

  if (*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
  {
    v38 = *(v62 + 32);
LABEL_37:
    v39 = v38;

    v40 = sub_52384();
    v42 = v41;

    goto LABEL_61;
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_224F8(uint64_t a1)
{
  v15 = _swiftEmptyArrayStorage;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 56;
    v13 = a1 + 56;
    do
    {
      v4 = (v3 + 32 * v2);
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        v6 = *v4;
        v7 = *(v4 - 3);

        v8 = sub_52384();
        v10 = sub_24084(&v14, v8, v9);

        if (v10)
        {
          break;
        }

        v4 += 4;
        if (v2 == v1)
        {
          return;
        }
      }

      v11 = sub_2C550();
      sub_522C4(1.0);

      sub_599E0();
      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v15 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v12 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        sub_59A30();
      }

      sub_59A50();
      v3 = v13;
    }

    while (v2 != v1);
  }
}

uint64_t sub_22684(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_134D4(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22764(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!v75)
  {
    return;
  }

  v65 = v75;
  v4 = sub_52384();
  v6 = v5;
  v7 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {

    goto LABEL_11;
  }

  v9 = sub_500C(v4, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_11:
    swift_endAccess();
    goto LABEL_12;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v13 = *(v12 + 16);
  if (v13)
  {
    v75 = _swiftEmptyArrayStorage;

    sub_5BC4(0, v13, 0);
    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 40;
    do
    {
      v17 = *(v12 + v16);
      v75 = v14;
      v18 = v14[3];
      if (v15 >= v18 >> 1)
      {
        v72 = v17;
        sub_5BC4((v18 > 1), v15 + 1, 1);
        v17 = v72;
        v14 = v75;
      }

      v14[2] = v15 + 1;
      *&v14[2 * v15 + 4] = v17;
      v16 += 32;
      ++v15;
      --v13;
    }

    while (v13);
    v64 = v14;

    goto LABEL_13;
  }

LABEL_12:
  v64 = _swiftEmptyArrayStorage;
LABEL_13:
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v68 = v23;
  v69 = a1 + 64;
  v66 = v2;
  v67 = a1;
  while (v22)
  {
LABEL_24:
    v30 = *(a1 + 48) + 24 * (__clz(__rbit64(v22)) | (v24 << 6));
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    v34 = *(a1 + 16);
    sub_B4D0(*v30, v32, v33);
    if (v34 && (v35 = sub_143B0(v31, v32, v33), (v36 & 1) != 0))
    {
      v37 = *(*(a1 + 56) + 8 * v35);
    }

    else
    {
      v37 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v71 = sub_58AF0();
    v39 = v38;
    v40 = *v38;
    if (v37)
    {
      v70 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v39;
      v73 = *v39;
      *v39 = 0x8000000000000000;
      v44 = sub_143B0(v31, v32, v33);
      v45 = v42[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        sub_59EA0();
        __break(1u);
        return;
      }

      v48 = v43;
      if (v42[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v43 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_26F70();
          if ((v48 & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        sub_269DC(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_143B0(v31, v32, v33);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_51;
        }

        v44 = v49;
        if ((v48 & 1) == 0)
        {
LABEL_40:
          v25 = v73;
          v73[(v44 >> 6) + 8] |= 1 << v44;
          v58 = v73[6] + 24 * v44;
          *v58 = v31;
          *(v58 + 8) = v32;
          *(v58 + 16) = v33;
          *(v73[7] + 8 * v44) = v70;
          v59 = v73[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_50;
          }

          v73[2] = v61;
          goto LABEL_17;
        }
      }

      sub_EAAC(v31, v32, v33);
      v25 = v73;
      v26 = v73[7];
      v27 = *(v26 + 8 * v44);
      *(v26 + 8 * v44) = v70;

LABEL_17:
      v28 = *v39;
      *v39 = v25;

      v2 = v66;
      a1 = v67;
      v23 = v68;
      goto LABEL_18;
    }

    v51 = sub_143B0(v31, v32, v33);
    v53 = v52;
    sub_EAAC(v31, v32, v33);
    v23 = v68;
    if (v53)
    {
      v54 = *v39;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v74 = *v39;
      *v39 = 0x8000000000000000;
      if (!v55)
      {
        sub_26F70();
      }

      sub_EAAC(*(*(v74 + 48) + 24 * v51), *(*(v74 + 48) + 24 * v51 + 8), *(*(v74 + 48) + 24 * v51 + 16));
      v56 = *(*(v74 + 56) + 8 * v51);

      sub_270EC(v51, v74);
      v57 = *v39;
      *v39 = v74;
    }

LABEL_18:
    v22 &= v22 - 1;
    v71(&v75, 0);

    v19 = v69;
  }

  while (1)
  {
    v29 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v29 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v29);
    ++v24;
    if (v22)
    {
      v24 = v29;
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v62 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v62 + 8))(a1, v64, ObjectType, v62);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_22CF8()
{
  sub_28978(v0 + 16);
  v1 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__multipleUnknownFontsUsed;
  v2 = sub_187C(&qword_71140, &unk_5C530);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__availableFonts;
  v5 = sub_187C(&qword_713F8, &qword_5CAB8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFont;
  v7 = sub_187C(&qword_71410, &qword_5CB18);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFeatures;
  v9 = sub_187C(&qword_71428, &qword_5CB78);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypes;
  v11 = sub_187C(&qword_71438, &qword_5CBD8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypeGroups;
  v13 = sub_187C(&qword_71450, &qword_5CC38);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__sortedFeatureGroups;
  v15 = sub_187C(&qword_71460, &qword_5CC98);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v3(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__internalFeaturesEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__variantSelectionAllowed, v2);
  v16 = *(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);

  v17 = *(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_variantsModel);

  v18 = *(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable);

  v19 = *(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName + 8);

  return v0;
}

uint64_t sub_22FC4()
{
  sub_22CF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_2301C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23054();
  return v3;
}

uint64_t sub_23054()
{
  v1 = v0;
  v2 = sub_187C(&qword_71460, &qword_5CC98);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  __chkstk_darwin(v2);
  v60 = &v48 - v4;
  v5 = sub_187C(&qword_71450, &qword_5CC38);
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v57 = &v48 - v7;
  v8 = sub_187C(&qword_71438, &qword_5CBD8);
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v54 = &v48 - v10;
  v11 = sub_187C(&qword_71428, &qword_5CB78);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  __chkstk_darwin(v11);
  v50 = &v48 - v13;
  v14 = sub_187C(&qword_71410, &qword_5CB18);
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = sub_187C(&qword_713F8, &qword_5CAB8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  v23 = sub_187C(&qword_71140, &unk_5C530);
  v51 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v48 - v26;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__multipleUnknownFontsUsed;
  LOBYTE(v63) = 0;
  sub_58AC0();
  v29 = *(v24 + 32);
  v29(v1 + v28, v27, v23);
  v30 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__availableFonts;
  v63 = _swiftEmptyArrayStorage;
  sub_187C(&qword_713F0, &qword_5CA68);
  sub_58AC0();
  (*(v19 + 32))(v1 + v30, v22, v18);
  v31 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFont;
  v63 = 0;
  sub_187C(&qword_71408, &qword_5CAC8);
  sub_58AC0();
  (*(v48 + 32))(v1 + v31, v17, v49);
  v32 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFeatures;
  v63 = sub_17ED8(_swiftEmptyArrayStorage);
  sub_187C(&qword_71420, &qword_5CB28);
  v33 = v50;
  sub_58AC0();
  (*(v52 + 32))(v1 + v32, v33, v53);
  v34 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypes;
  v63 = _swiftEmptyArrayStorage;
  sub_187C(&qword_71038, &qword_5C350);
  v35 = v54;
  sub_58AC0();
  (*(v55 + 32))(v1 + v34, v35, v56);
  v36 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypeGroups;
  v63 = sub_27DF0(_swiftEmptyArrayStorage);
  sub_187C(&qword_71448, &qword_5CBE8);
  v37 = v57;
  sub_58AC0();
  (*(v58 + 32))(v1 + v36, v37, v59);
  v38 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__sortedFeatureGroups;
  v63 = _swiftEmptyArrayStorage;
  sub_187C(&qword_70F68, &qword_5C2E8);
  v39 = v60;
  sub_58AC0();
  (*(v61 + 32))(v1 + v38, v39, v62);
  v40 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__internalFeaturesEnabled;
  LOBYTE(v63) = 0;
  sub_58AC0();
  v41 = v51;
  v29(v1 + v40, v27, v51);
  v42 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__variantSelectionAllowed;
  LOBYTE(v63) = 0;
  sub_58AC0();
  v29(v1 + v42, v27, v41);
  v43 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache;
  type metadata accessor for FeaturePreviewConfigurationCache();
  *(v1 + v43) = sub_3693C();
  v44 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_variantsModel;
  type metadata accessor for GlyphVariantsViewModel();
  *(v1 + v44) = sub_1A628();
  v45 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  *(v1 + v45) = sub_27EF8(_swiftEmptyArrayStorage);
  v46 = (v1 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
  *v46 = 0;
  v46[1] = 0;
  return v1;
}

uint64_t sub_23744(uint64_t a1, id *a2)
{
  result = sub_598C0();
  *a2 = 0;
  return result;
}

uint64_t sub_237BC(uint64_t a1, id *a2)
{
  v3 = sub_598D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2383C@<X0>(void *a1@<X8>)
{
  sub_598E0();
  v2 = sub_598B0();

  *a1 = v2;
  return result;
}

uint64_t sub_23880()
{
  v1 = *v0;
  sub_598E0();
  v2 = sub_599A0();

  return v2;
}

uint64_t sub_238BC()
{
  v1 = *v0;
  sub_598E0();
  sub_59920();
}

Swift::Int sub_23910()
{
  v1 = *v0;
  sub_598E0();
  sub_59ED0();
  sub_59920();
  v2 = sub_59F10();

  return v2;
}

uint64_t sub_23984(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_598E0();
  v6 = v5;
  if (v4 == sub_598E0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_59E80();
  }

  return v9 & 1;
}

uint64_t sub_23A0C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_58A00();
}

uint64_t sub_23A58()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_589F0();
}

Swift::Int sub_23AB0()
{
  sub_59ED0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_589F0();
  return sub_59F10();
}

uint64_t sub_23B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_598B0();

  *a2 = v5;
  return result;
}

uint64_t sub_23B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_598E0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23B8C(uint64_t a1)
{
  v2 = sub_28050(&qword_713B0, type metadata accessor for Key);
  v3 = sub_28050(&qword_715F0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_23C48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_589E0();
}

uint64_t sub_23CB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_14:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18 = sub_500C(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v22)
    {
      v23 = v21 == v17;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v27 = v3;
      v28 = v2;

      v24 = 0;
      v25 = 0;
      while (v25 < *(v21 + 16))
      {
        v26 = *(v21 + v24 + 40);
        v33 = *(v21 + v24 + 32);
        v34 = *(v21 + v24 + 56);
        if (v25 >= *(v17 + 16))
        {
          goto LABEL_33;
        }

        v30 = *(v17 + v24 + 32);
        v31 = *(v17 + v24 + 40);
        v32 = *(v17 + v24 + 56);
        sub_29188();
        result = sub_598A0();
        if ((result & 1) == 0)
        {

          goto LABEL_28;
        }

        ++v25;
        v24 += 32;
        if (v22 == v25)
        {

          v3 = v27;
          v2 = v28;
          goto LABEL_6;
        }
      }

      goto LABEL_32;
    }

LABEL_6:

    v8 = v29;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_23EEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_598E0();
  sub_59ED0();
  sub_59920();
  v4 = sub_59F10();

  return sub_23F80(a1, v4);
}

unint64_t sub_23F80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_598E0();
      v9 = v8;
      if (v7 == sub_598E0() && v9 == v10)
      {
        break;
      }

      v12 = sub_59E80();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24084(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_59ED0();
  sub_59920();
  v9 = sub_59F10();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_59E80() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24434(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}