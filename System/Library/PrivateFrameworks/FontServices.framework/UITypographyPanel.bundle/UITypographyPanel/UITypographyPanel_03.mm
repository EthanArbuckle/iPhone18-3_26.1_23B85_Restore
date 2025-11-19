uint64_t sub_33F54(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_B4D0(*a1, v3, v4);
  v5 = sub_815C(v2, v3, v4);
  if (v6 - 5 < 2)
  {
    sub_18728(v5, v6);
    return 1;
  }

  if (v6 != 9)
  {
    sub_18728(v5, v6);
  }

  if (*(a1 + 64))
  {
    return 0;
  }

  sub_B4D0(v2, v3, v4);
  v8 = sub_815C(v2, v3, v4);
  if (v9 - 1 < 2)
  {
    return 0;
  }

  if (v9 == 9)
  {
    if ((v4 & 1) == 0)
    {
      v7 = 0;
      if (v2 <= 0x1A && ((1 << v2) & 0x6400042) != 0)
      {
        return v7;
      }

      if (v2 == 103)
      {
        return v7;
      }
    }
  }

  else
  {
    sub_18728(v8, v9);
  }

  if (sub_51F6C())
  {
    return 1;
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 16);
  v13 = (v11 + 57);
  v14 = v12 + 1;
  do
  {
    v7 = --v14 != 0;
    if (!v14)
    {
      break;
    }

    v15 = v13 + 32;
    v16 = *(v13 - 1);
    v17 = *(v13 - 9);
    v18 = *(v13 - 17);
    v19 = *(v13 - 25);
    v20 = *v13 ? 256 : 0;
    v21 = *(v13 - 9);

    v22 = sub_51F88(v19, v18, v17, v20 | v16);

    v13 = v15;
  }

  while (v22 == 2);
  return v7;
}

BOOL sub_340DC(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v1 = *a1;
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    v4 = a1;
    sub_B4D0(*a1, v2, v3);
    v6 = sub_815C(v1, v2, v3);
    a1 = v4;
    if (v5 - 1 >= 2)
    {
      if (v5 != 9)
      {
        sub_18728(v6, v5);
        return 1;
      }

      if ((v3 & 1) != 0 || (v1 > 0x1A || ((1 << v1) & 0x6400042) == 0) && v1 != 103)
      {
        return 1;
      }
    }
  }

  return (sub_33F54(a1) & 1) == 0;
}

uint64_t sub_3419C(uint64_t (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0x10000;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v10 = v8;
    result = a1(&v10);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0x10000;
    }
  }

  return result;
}

uint64_t sub_34214()
{
  if (qword_763E0 != -1)
  {
    swift_once();
  }

  v0 = sub_588D0();

  return sub_F15C(v0, qword_77C58);
}

uint64_t sub_342C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_763E0 != -1)
  {
    swift_once();
  }

  v2 = sub_588D0();
  v3 = sub_F15C(v2, qword_77C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_34368(uint64_t a1, unint64_t a2, const __CTFont *a3, unint64_t a4)
{
  v8 = sub_187C(&qword_719F0, &unk_5DC00);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v87 = &v78 - v11;
  if (a2 < 2)
  {
    __chkstk_darwin(v10);
    v76 = a3;
    v77 = a4;
    v73 = sub_3419C(sub_39F08, (&v78 - 4), a1);
    if ((v73 & 0x10000) != 0)
    {
      if (!*(a1 + 16))
      {
        return _swiftEmptyArrayStorage;
      }

      v74 = *(a1 + 32);
    }

    else
    {
      v74 = v73;
    }

    sub_187C(&qword_70CC0, &unk_5AEB0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_5AB00;
    v85 = v75;
    *(v75 + 32) = v74;
  }

  else
  {
    v83 = 0;
    v78 = a4;
    v12 = *(a1 + 16);
    v13 = _swiftEmptyArrayStorage[2];
    v82 = v12;
    v14 = v13 >= a2 || v12 == 0;
    v85 = _swiftEmptyArrayStorage;
    if (!v14)
    {
      v15 = 0;
      v84 = &_swiftEmptyArrayStorage[2];
      v85 = _swiftEmptyArrayStorage;
      v80 = a2;
      v81 = a1 + 32;
      v90 = a3;
      while (1)
      {
        v16 = *(v81 + 2 * v15);
        v17 = sub_2AAF4(*(v81 + 2 * v15));
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = _swiftEmptyArrayStorage;
        }

        v19 = *(v18 + 2);
        v20 = sub_59AA0();
        v21 = v20;
        v22 = *(v18 + 2);
        v86 = v15;
        if (v22)
        {
          v23 = 0;
          v24 = (v20 + 56);
          do
          {
            while (1)
            {
              v25 = *&v18[2 * v23++ + 32];
              v26 = *(v21 + 40);
              v27 = sub_59EB0();
              v28 = -1 << *(v21 + 32);
              v29 = v27 & ~v28;
              if ((*(v24 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
              {
                break;
              }

LABEL_17:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v93 = v21;
              sub_1B408(v25, v29, isUniquelyReferenced_nonNull_native);
              v21 = v93;
              if (v23 == v22)
              {
                goto LABEL_19;
              }

              v24 = v93 + 7;
            }

            v30 = ~v28;
            while (*(*(v21 + 48) + 2 * v29) != v25)
            {
              v29 = (v29 + 1) & v30;
              if (((*(v24 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_17;
              }
            }
          }

          while (v23 != v22);
LABEL_19:

          a3 = v90;
          a2 = v80;
          v15 = v86;
        }

        else
        {
        }

        v32 = sub_2A980();
        if (v33)
        {
          v34 = v32;
          v35 = v33;
          v79 = v16;
          __chkstk_darwin(v32);
          v76 = v78;
          v36 = v83;
          result = sub_34BF0(sub_39FB8, (&v78 - 4), v34, v35);
          v83 = v36;
          if (result)
          {
            v88 = v34;
            v89 = v35;
            v38 = *v84;
            if (*v84)
            {
              v93 = _swiftEmptyArrayStorage;
              sub_375A0(0, v38, 0);
              v39 = v93;
              v40 = v85 + 32;
              do
              {
                v41 = *v40;
                v40 += 2;
                result = sub_2A934();
                if (v42)
                {
                  v43 = result;
                }

                else
                {
                  v43 = 0;
                }

                if (v42)
                {
                  v44 = v42;
                }

                else
                {
                  v44 = 0xE000000000000000;
                }

                v93 = v39;
                v46 = v39[2];
                v45 = v39[3];
                v47 = v46 + 1;
                if (v46 >= v45 >> 1)
                {
                  result = sub_375A0((v45 > 1), v46 + 1, 1);
                  v39 = v93;
                }

                v39[2] = v47;
                v48 = &v39[2 * v46];
                v48[4] = v43;
                v48[5] = v44;
                --v38;
                a3 = v90;
              }

              while (v38);
            }

            else
            {
              v47 = _swiftEmptyArrayStorage[2];
              v39 = _swiftEmptyArrayStorage;
            }

            v50 = v39 + 5;
            v51 = -v47;
            v52 = -1;
            while (v51 + v52 != -1)
            {
              if (++v52 >= v39[2])
              {
                __break(1u);
                return result;
              }

              v53 = v50 + 2;
              v54 = *v50;
              v93 = *(v50 - 1);
              v94 = v54;
              v91 = v88;
              v92 = v89;

              v55 = v87;
              sub_589C0();
              v56 = sub_589D0();
              (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
              v76 = sub_66D8();
              v77 = v76;
              v57 = sub_59B40();
              sub_6678(v55, &qword_719F0, &unk_5DC00);

              v50 = v53;
              if (!v57)
              {

                a2 = v80;
                v15 = v86;
                goto LABEL_37;
              }
            }

            v58 = *v84;
            if (*v84)
            {
              v59 = (v85 + 32);
              v60 = &_swiftEmptySetSingleton;
              do
              {
                v61 = *v59++;
                v62 = sub_2AAF4(v61);
                if (v62)
                {
                  v63 = v62;
                }

                else
                {
                  v63 = _swiftEmptyArrayStorage;
                }

                v64 = sub_393B8(v63);

                v60 = sub_19EEC(v64, v60);
                --v58;
              }

              while (v58);
            }

            else
            {
              v60 = &_swiftEmptySetSingleton;
            }

            v65 = sub_37904(v21, v60);

            v66 = *(v65 + 16);

            if (v66)
            {
              a2 = v80;
              v15 = v86;
            }

            else
            {
              PathForGlyph = CTFontCreatePathForGlyph(a3, v79, 0);
              a2 = v80;
              v15 = v86;
              if (PathForGlyph)
              {
                v68 = PathForGlyph;
                v69 = sub_53CCC();

                if (v69)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v85 = sub_2AFB4(0, *v84 + 1, 1, v85);
                  }

                  v71 = *(v85 + 2);
                  v70 = *(v85 + 3);
                  if (v71 >= v70 >> 1)
                  {
                    v85 = sub_2AFB4((v70 > 1), v71 + 1, 1, v85);
                  }

                  v72 = v85;
                  *(v85 + 2) = v71 + 1;
                  *&v72[2 * v71 + 32] = v79;
                }
              }
            }

            goto LABEL_37;
          }
        }

LABEL_37:
        v49 = *(v85 + 2);
        v84 = (v85 + 16);
        if (v49 < a2 && ++v15 < v82)
        {
          continue;
        }

        return v85;
      }
    }
  }

  return v85;
}

uint64_t sub_34A08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v17 = 1;
    return v17 & 1;
  }

  v5 = 0;
  v21 = a2 & 0xFFFFFFFFFFFFFFLL;
  v19 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_59C60();
      v9 = v8;
      goto LABEL_15;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = a1;
      v20[1] = v21;
      v7 = v20 + v5;
    }

    else
    {
      v6 = v19;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v6 = sub_59CB0();
      }

      v7 = (v6 + v5);
    }

    v10 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_14:
      v9 = 1;
      goto LABEL_15;
    }

    v13 = (__clz(v10 ^ 0xFF) - 24);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v15 = ((v10 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3Fu;
        v9 = 3;
      }

      else
      {
        v16 = ((v10 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3Fu;
        v9 = 4;
      }
    }

    else
    {
      if (v13 == 1)
      {
        goto LABEL_14;
      }

      v14 = v7[1] & 0x3F | ((v10 & 0x1F) << 6);
      v9 = 2;
    }

LABEL_15:
    if (qword_763E0 != -1)
    {
      swift_once();
    }

    v11 = sub_588D0();
    sub_F15C(v11, qword_77C58);
    v12 = sub_588C0();
    if (v12)
    {
      break;
    }

    v5 += v9;
  }

  while (v5 < v2);
  v17 = v12 ^ 1;
  return v17 & 1;
}

uint64_t sub_34BF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_59C60();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_59CB0();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_34D98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = _swiftEmptyArrayStorage;
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_375C0(0, v8[2] + 1, 1);
          v8 = v19;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_375C0((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  return result;
}

unint64_t sub_34F10(uint64_t a1, const __CTFont *a2, const __CTFont *a3, uint64_t a4)
{
  type metadata accessor for CTFont(0);
  sub_39D78(&qword_713E8, type metadata accessor for CTFont);
  v52 = a2;
  v55 = a3;
  if (sub_589E0())
  {
    goto LABEL_40;
  }

  v8 = *(a1 + 16);
  v9 = 100;
  if (v8 < 0x64)
  {
    v9 = *(a1 + 16);
  }

  v54 = v9;
  if (!v8)
  {
LABEL_40:
    v51 = 0x100000000;
LABEL_41:
    LOBYTE(v59) = BYTE4(v51) & 1;
    return v51 | ((BYTE4(v51) & 1) << 32);
  }

  v49 = a4;
  v50 = 0;
  v51 = 0x100000000;
  v10 = 0;
  v53 = a1 + 32;
  v58 = xmmword_5AB00;
  while (2)
  {
    v11 = *(v53 + 2 * v10);
    v12 = sub_187C(&qword_70CC0, &unk_5AEB0);
    v13 = swift_allocObject();
    *(v13 + 16) = v58;
    *(v13 + 32) = v11;
    v14 = sub_2A580(v13);

    v15 = v14[2];
    v16 = sub_59AA0();
    v17 = v14[2];
    if (v17)
    {
      v56 = v12;
      v57 = v11;
      v18 = 0;
      do
      {
        v20 = v16 + 56;
        while (1)
        {
          v21 = *(v14 + v18++ + 16);
          v22 = *(v16 + 40);
          v23 = sub_59EB0();
          v24 = -1 << *(v16 + 32);
          v25 = v23 & ~v24;
          if (((*(v20 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            break;
          }

          v26 = ~v24;
          while (*(*(v16 + 48) + 2 * v25) != v21)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v20 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          if (v18 == v17)
          {
            goto LABEL_18;
          }
        }

LABEL_10:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v16;
        sub_1B408(v21, v25, isUniquelyReferenced_nonNull_native);
        v16 = v59;
      }

      while (v18 != v17);
LABEL_18:

      v11 = v57;
    }

    else
    {
    }

    inited = swift_initStackObject();
    *(inited + 16) = v58;
    *(inited + 32) = v11;
    v28 = sub_38030(inited, v16);
    result = swift_setDeallocating();
    v30 = 0;
    v31 = 0;
    v32 = 1 << *(v28 + 32);
    while (1)
    {
      v33 = v28[v31 + 7];
      if (v33)
      {
        break;
      }

      ++v31;
      v30 -= 64;
      if ((v32 + 63) >> 6 == v31)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v34 = __clz(__rbit64(v33));
    if (v34 - v32 == v30)
    {
      goto LABEL_6;
    }

    if (-v30 < 0 || (v35 = v34 - v30, v35 >= v32))
    {
      __break(1u);
    }

    else if ((v28[(v31 & 0x3FFFFFFFFFFFFFFLL) + 7] >> v34))
    {
      v36 = *(v28[6] + 2 * v35);

      if (v11 == v36)
      {
        goto LABEL_7;
      }

      PathForGlyph = CTFontCreatePathForGlyph(v52, v11, 0);
      if (!PathForGlyph)
      {
        goto LABEL_7;
      }

      v38 = PathForGlyph;
      v39 = CTFontCreatePathForGlyph(v55, v36, 0);
      if (!v39)
      {

        goto LABEL_7;
      }

      v40 = v39;
      type metadata accessor for CGPath(0);
      sub_39D78(&qword_719E8, type metadata accessor for CGPath);
      if (sub_589E0())
      {

        goto LABEL_7;
      }

      v41 = sub_53CCC();

      if (!v41)
      {
        goto LABEL_7;
      }

      v42 = sub_2A980();
      if (!v43 || (v44 = v43, __chkstk_darwin(v42), v45 = v50, v48[2] = v49, v47 = sub_34BF0(sub_39ED8, v48, v46, v44), v50 = v45, , (v47 & 1) == 0))
      {
        if ((v51 & 0x100000000) != 0)
        {
          v51 = v11 | (v36 << 16);
        }

        else
        {
          HIDWORD(v51) = 0;
        }

LABEL_7:
        if (++v10 == v54)
        {
          goto LABEL_41;
        }

        continue;
      }

      v51 = v11 | (v36 << 16);
      goto LABEL_41;
    }

    break;
  }

  __break(1u);
  return result;
}

Swift::Int sub_353A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_59ED0();
  sub_D600();
  sub_59880();
  sub_59EE0(v4);
  return sub_59F10();
}

void sub_3542C()
{
  v1 = *(v0 + 3);
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_D600();
  sub_59880();
  sub_59EE0(v1);
}

Swift::Int sub_35498()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_59ED0();
  sub_D600();
  sub_59880();
  sub_59EE0(v4);
  return sub_59F10();
}

uint64_t sub_35518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  return sub_7414(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & (v2 == v3);
}

uint64_t sub_35570@<X0>(void *a1@<X0>, uint64_t a2@<X1>, Swift::UInt a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v64 = a3;
  v57 = a1;
  v6 = sub_187C(&qword_717D0, qword_5DA30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58 = &v52 - v8;
  v9 = sub_187C(&qword_717B8, &unk_5DA18);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v55 = &v52 - v11;
  v12 = sub_187C(&qword_71078, &qword_5C378);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v52 - v14;
  v16 = type metadata accessor for FeaturePreviewConfiguration(0);
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  __chkstk_darwin(v16);
  v53 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v60 = *(v56 - 8);
  v19 = *(v60 + 64);
  v20 = __chkstk_darwin(v56);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v52 - v24;
  __chkstk_darwin(v23);
  v27 = &v52 - v26;
  v28 = *a2;
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  swift_beginAccess();
  v59 = v4;
  v31 = *(v4 + 16);
  v32 = *(v31 + 16);
  sub_B4D0(v28, v29, v30);
  if (v32 && (v33 = sub_373D8(v28, v29, v30, v64), (v34 & 1) != 0))
  {
    sub_39694(*(v31 + 56) + *(v60 + 72) * v33, v25, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    sub_396FC(v25, v27, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    swift_endAccess();
    sub_EAAC(v28, v29, v30);
    sub_396FC(v27, v22, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v36 = v61;
    v35 = v62;
    if ((*(v61 + 48))(v22, 1, v62) == 1)
    {
      return (*(v36 + 56))(v63, 1, 1, v35);
    }

    else
    {
      v51 = v63;
      sub_396FC(v22, v63, type metadata accessor for FeaturePreviewConfiguration);
      return (*(v36 + 56))(v51, 0, 1, v35);
    }
  }

  else
  {
    v38 = v28;
    v54 = v30;
    swift_endAccess();
    v39 = sub_588D0();
    v40 = v55;
    (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
    v41 = v57;
    sub_E9C0(a2, v65);
    v42 = v64;
    sub_31D58(v41, a2, v64, v40, 0, 1, 2, v15);
    v44 = v61;
    v43 = v62;
    if ((*(v61 + 48))(v15, 1, v62) == 1)
    {
      sub_6678(v15, &qword_71078, &qword_5C378);
      v45 = *(v44 + 56);
      v46 = v58;
      v45(v58, 1, 1, v43);
      (*(v60 + 56))(v46, 0, 1, v56);
      swift_beginAccess();
      sub_35BA0(v46, v28, v29, v54, v42);
      swift_endAccess();
      return (v45)(v63, 1, 1, v43);
    }

    else
    {
      v47 = v53;
      sub_396FC(v15, v53, type metadata accessor for FeaturePreviewConfiguration);
      v48 = v58;
      sub_39694(v47, v58, type metadata accessor for FeaturePreviewConfiguration);
      v49 = *(v44 + 56);
      v49(v48, 0, 1, v43);
      (*(v60 + 56))(v48, 0, 1, v56);
      swift_beginAccess();
      sub_35BA0(v48, v38, v29, v54, v42);
      swift_endAccess();
      v50 = v63;
      sub_396FC(v47, v63, type metadata accessor for FeaturePreviewConfiguration);
      return (v49)(v50, 0, 1, v43);
    }
  }
}

uint64_t sub_35BA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, Swift::UInt a5)
{
  v11 = sub_187C(&qword_717D0, qword_5DA30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23[-v13];
  v15 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v19 + 48))(a1, 1) == 1)
  {
    sub_6678(a1, &qword_717D0, qword_5DA30);
    sub_38534(a2, a3, a4 & 1, a5, v14);
    sub_EAAC(a2, a3, a4 & 1);
    return sub_6678(v14, &qword_717D0, qword_5DA30);
  }

  else
  {
    sub_396FC(a1, v18, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v21 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;
    sub_38C9C(v18, a2, a3, a4 & 1, a5, isUniquelyReferenced_nonNull_native);
    result = sub_EAAC(a2, a3, a4 & 1);
    *v5 = v24;
  }

  return result;
}

uint64_t sub_35DA4(void *a1, uint64_t a2)
{
  v116 = a1;
  v3 = sub_187C(&qword_717B8, &unk_5DA18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v115 = &v103 - v5;
  v6 = type metadata accessor for FeaturePreviewConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v118 = *(v10 - 8);
  v11 = *(v118 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v114 = &v103 - v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v103 - v18;
  v19 = __chkstk_darwin(v17);
  v113 = &v103 - v20;
  v21 = __chkstk_darwin(v19);
  v106 = &v103 - v22;
  __chkstk_darwin(v21);
  v104 = &v103 - v23;
  v24 = sub_187C(&qword_71078, &qword_5C378);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  __chkstk_darwin(v26);
  v29 = *(a2 + 48);
  v30 = *(v29 + 16);
  if (!v30)
  {
    return 0;
  }

  v111 = v28;
  v103 = v14;
  v124 = (v7 + 48);
  v122 = (v7 + 56);
  v31 = (v29 + 48);
  v110 = v6;
  v105 = a2;
  v117 = &v103 - v27;
  while (1)
  {
    v123 = v30;
    v35 = *(v31 - 2);
    v36 = *v31;
    v38 = *a2;
    v37 = *(a2 + 8);
    v39 = a2;
    v40 = *(a2 + 16);
    v41 = v126;
    swift_beginAccess();
    v42 = *(v41 + 16);
    v43 = *(v42 + 16);

    v120 = v124 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (!v43)
    {
      break;
    }

    v44 = sub_373D8(v38, v37, v40, v35);
    if ((v45 & 1) == 0)
    {
      break;
    }

    v46 = v104;
    sub_39694(*(v42 + 56) + *(v118 + 72) * v44, v104, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    swift_endAccess();

    v47 = v46;
    v48 = v103;
    sub_396FC(v47, v103, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v34 = *v124;
    if ((*v124)(v48, 1, v6) == 1)
    {
      v33 = v117;
      (*v122)(v117, 1, 1, v6);
    }

    else
    {
      v100 = v48;
      v33 = v117;
      sub_396FC(v100, v117, type metadata accessor for FeaturePreviewConfiguration);
      (*v122)(v33, 0, 1, v6);
    }

    a2 = v39;
LABEL_5:
    if (v34(v33, 1, v6) != 1)
    {
      sub_6678(v33, &qword_71078, &qword_5C378);
      return 1;
    }

LABEL_6:
    sub_6678(v33, &qword_71078, &qword_5C378);
    v31 += 4;
    v30 = v123 - 1;
    if (v123 == 1)
    {
      return 0;
    }
  }

  v125 = v38;
  v121 = v40;
  v119 = v36;
  swift_endAccess();
  v49 = sub_588D0();
  v50 = v115;
  (*(*(v49 - 8) + 56))(v115, 1, 1, v49);
  v51 = v116;
  a2 = v39;
  sub_E9C0(v39, v128);
  v52 = v111;
  sub_31D58(v51, v39, v35, v50, 0, 1, 2, v111);
  v53 = *v124;
  v54 = v35;
  if ((*v124)(v52, 1, v6) == 1)
  {
    sub_6678(v52, &qword_71078, &qword_5C378);
    v55 = *v122;
    v56 = v107;
    (*v122)(v107, 1, 1, v6);
    v57 = v126;
    swift_beginAccess();
    sub_396FC(v56, v114, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v58 = *(v57 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(v57 + 16);
    v60 = v127;
    *(v57 + 16) = 0x8000000000000000;
    v61 = v37;
    v62 = v37;
    v63 = v121;
    v64 = sub_373D8(v125, v62, v121, v54);
    v66 = v60[2];
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_38;
    }

    v70 = v65;
    if (v60[3] >= v69)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v101 = v64;
        sub_38EF8();
        v64 = v101;
      }

      v71 = v125;
      v73 = v127;
      if (v70)
      {
LABEL_16:
        sub_39764(v114, v73[7] + *(v118 + 72) * v64);
LABEL_27:
        v95 = *(v126 + 16);
        *(v126 + 16) = v73;

        swift_endAccess();

        v33 = v117;
        v6 = v110;
        v55(v117, 1, 1, v110);
        goto LABEL_6;
      }
    }

    else
    {
      sub_386A8(v69, isUniquelyReferenced_nonNull_native);
      v71 = v125;
      v64 = sub_373D8(v125, v61, v63, v54);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_41;
      }

      v73 = v127;
      if (v70)
      {
        goto LABEL_16;
      }
    }

    v73[(v64 >> 6) + 8] |= 1 << v64;
    v92 = v73[6] + 32 * v64;
    *v92 = v71;
    *(v92 + 8) = v61;
    *(v92 + 16) = v63;
    *(v92 + 24) = v54;
    sub_396FC(v114, v73[7] + *(v118 + 72) * v64, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v93 = v73[2];
    v68 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v68)
    {
      goto LABEL_40;
    }

    v73[2] = v94;
    sub_B4D0(v71, v61, v63);
    goto LABEL_27;
  }

  v109 = v53;
  v74 = v112;
  sub_396FC(v52, v112, type metadata accessor for FeaturePreviewConfiguration);
  v75 = v74;
  v76 = v106;
  sub_39694(v75, v106, type metadata accessor for FeaturePreviewConfiguration);
  v108 = *v122;
  v108(v76, 0, 1, v6);
  v77 = v126;
  swift_beginAccess();
  sub_396FC(v76, v113, type metadata accessor for FeaturePreviewConfigurationCache.Value);
  v78 = *(v77 + 16);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *(v77 + 16);
  v80 = v127;
  *(v77 + 16) = 0x8000000000000000;
  v81 = v37;
  v83 = sub_373D8(v125, v37, v121, v35);
  v84 = v80[2];
  v85 = (v82 & 1) == 0;
  v86 = v84 + v85;
  if (!__OFADD__(v84, v85))
  {
    v87 = v82;
    if (v80[3] >= v86)
    {
      if ((v79 & 1) == 0)
      {
        sub_38EF8();
      }

      v88 = v125;
      v91 = v127;
      if ((v87 & 1) == 0)
      {
LABEL_31:
        v91[(v83 >> 6) + 8] |= 1 << v83;
        v96 = v91[6] + 32 * v83;
        *v96 = v88;
        *(v96 + 8) = v81;
        v97 = v121;
        *(v96 + 16) = v121;
        *(v96 + 24) = v54;
        sub_396FC(v113, v91[7] + *(v118 + 72) * v83, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        v98 = v91[2];
        v68 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v68)
        {
          goto LABEL_39;
        }

        v91[2] = v99;
        sub_B4D0(v88, v81, v97);
        goto LABEL_4;
      }
    }

    else
    {
      sub_386A8(v86, v79);
      v88 = v125;
      v89 = sub_373D8(v125, v81, v121, v54);
      if ((v87 & 1) != (v90 & 1))
      {
        goto LABEL_41;
      }

      v83 = v89;
      v91 = v127;
      if ((v87 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    sub_39764(v113, v91[7] + *(v118 + 72) * v83);
LABEL_4:
    v32 = *(v77 + 16);
    *(v77 + 16) = v91;

    swift_endAccess();

    v33 = v117;
    sub_396FC(v112, v117, type metadata accessor for FeaturePreviewConfiguration);
    v6 = v110;
    v108(v33, 0, 1, v110);
    a2 = v105;
    v34 = v109;
    goto LABEL_5;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_59EA0();
  __break(1u);
  return result;
}

uint64_t sub_36890()
{
  v1 = sub_3942C(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;
}

uint64_t sub_368E4()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_36904()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_3693C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_3942C(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_369A8()
{
  v0 = sub_588D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F9D4(v3, qword_763F0);
  v6 = sub_F15C(v0, qword_763F0);
  sub_39D78(&qword_719F8, &type metadata accessor for CharacterSet);
  sub_59B80();
  v8[2] = 48;
  sub_59B70();
  return (*(v1 + 32))(v6, v5, v0);
}

uint64_t sub_36B3C(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_588D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v17 - v12;
  sub_F9D4(v11, a2);
  sub_F15C(v5, a2);
  a3();
  if (qword_763E8 != -1)
  {
    swift_once();
  }

  v14 = sub_F15C(v5, qword_763F0);
  (*(v6 + 16))(v10, v14, v5);
  sub_58870();
  v15 = *(v6 + 8);
  v15(v10, v5);
  return (v15)(v13, v5);
}

uint64_t sub_36CC8()
{
  v0 = sub_588D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v12 - v7;
  sub_F9D4(v6, qword_76450);
  sub_F15C(v0, qword_76450);
  if (qword_76428 != -1)
  {
    swift_once();
  }

  v9 = sub_F15C(v0, qword_76430);
  (*(v1 + 16))(v8, v9, v0);
  sub_588B0();
  sub_588A0();
  v10 = *(v1 + 8);
  v10(v5, v0);
  return (v10)(v8, v0);
}

uint64_t sub_36E98(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = sub_588D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v25 - v19;
  sub_F9D4(v18, a2);
  sub_F15C(v9, a2);
  v21 = a3();
  a4(v21);
  sub_588A0();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v23 = (v22)(v17, v9);
  a5(v23);
  sub_588A0();
  v22(v17, v9);
  return (v22)(v20, v9);
}

uint64_t sub_37050(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_2A980();
  if (v6)
  {
    v7 = v6;
    __chkstk_darwin(v5);
    v11[2] = a3;
    v9 = sub_34BF0(sub_39FB8, v11, v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_37104(unsigned int *a1, uint64_t a2)
{
  v4 = sub_187C(&qword_717B8, &unk_5DA18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  sub_6610(a2, &v13 - v6, &qword_717B8, &unk_5DA18);
  v9 = sub_588D0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_6678(v7, &qword_717B8, &unk_5DA18);
    v11 = 1;
  }

  else
  {
    v11 = sub_588C0();
    (*(v10 + 8))(v7, v9);
  }

  return v11 & 1;
}

uint64_t sub_3724C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_589E0();
}

uint64_t sub_372B8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_58A00();
}

uint64_t sub_37304()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_589F0();
}

Swift::Int sub_37374()
{
  sub_59ED0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_589F0();
  return sub_59F10();
}

unint64_t sub_373D8(uint64_t a1, uint64_t a2, char a3, Swift::UInt a4)
{
  v5 = v4;
  v10 = *(v5 + 40);
  sub_59ED0();
  sub_D600();
  sub_59880();
  sub_59EE0(a4);
  v11 = sub_59F10();
  return sub_37488(a1, a2, a3 & 1, a4, v11);
}

unint64_t sub_37488(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    do
    {
      v10 = *(v5 + 48) + 32 * v7;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      sub_B4D0(*v10, v12, v13);
      v15 = sub_7414(v11, v12, v13, a1, a2, a3 & 1);
      sub_EAAC(v11, v12, v13);
      if ((v15 & (v14 == a4)) == 1)
      {
        break;
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

char *sub_375A0(char *a1, int64_t a2, char a3)
{
  result = sub_375E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_375C0(char *a1, int64_t a2, char a3)
{
  result = sub_376EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_375E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70E58, qword_5D880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_376EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_719E0, &qword_5DBF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_377F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_719E0, &qword_5DBF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_37904(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_37B58(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_37AC8(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_37AC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_37B58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_37B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v40 = 0;
LABEL_24:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_31:
      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + 2 * v32);
      v34 = *(a4 + 40);
      result = sub_59EB0();
      v35 = -1 << *(a4 + 32);
      v36 = result & ~v35;
      if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(a4 + 48) + 2 * v36) != v33)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_41;
        }

        ++v40;
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_38:

        return sub_37E40(v39, a2, v40, a3);
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v40 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 2 * (v12 | (v6 << 6)));
      v16 = *(a3 + 40);
      result = sub_59EB0();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 2 * v18) == v15)
        {
LABEL_18:
          v39[v19] |= v20;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

          ++v40;
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 2 * v18) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_37E40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_187C(&qword_70CF8, &qword_5AED0);
  result = sub_59C40();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 2 * (v13 | (v11 << 6)));
    v17 = v9[5];
    result = sub_59EB0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 2 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_38030(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16))
  {
    v31[0] = a1;
    v28 = *(a1 + 16);
    if (v28)
    {
      v4 = 0;
      v5 = a2 + 56;
      v29 = *(a2 + 40);
      v30 = a1 + 32;
      v27 = -1 << *(a2 + 32);
      v6 = ~v27;
      while (1)
      {
        v7 = *(v30 + 2 * v4++);
        v8 = sub_59EB0();
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v28)
        {
          return v2;
        }
      }

      while (*(v2[6] + 2 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v31[1] = v4;
      v12 = (63 - v27) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v28 = v12;
        v29 = &v27;
        __chkstk_darwin(i);
        v9 = &v27 - v15;
        memcpy(&v27 - v15, v2 + 7, v13);
        v16 = v2[2];
        *(v9 + 8 * v10) &= ~v11;
        v13 = v16 - 1;
        v17 = *(a1 + 16);
        if (v4 == v17)
        {
          break;
        }

        v10 = v2[5];
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v17)
        {
          v11 = *(v30 + 2 * v4);
          v19 = sub_59EB0();
          v20 = v19 & v12;
          v21 = (v19 & v12) >> 6;
          v22 = 1 << (v19 & v12);
          if ((v22 & *(v5 + 8 * v21)) != 0)
          {
            while (*(v2[6] + 2 * v20) != v11)
            {
              v20 = (v20 + 1) & v12;
              v21 = v20 >> 6;
              v22 = 1 << v20;
              if (((1 << v20) & *(v5 + 8 * (v20 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v23 = *(v9 + 8 * v21);
            *(v9 + 8 * v21) = v23 & ~v22;
            if ((v23 & v22) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v17 = *(a1 + 16);
          if (v4 == v17)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v25 = swift_slowAlloc();
          memcpy(v25, v2 + 7, v13);
          v26 = sub_383B0(v25, v12, v2, v9, v31);

          return v26;
        }
      }

LABEL_13:
      v2 = sub_37E40(v9, v28, v13, v2);
LABEL_14:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_383B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return sub_37E40(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 2 * v11 + 32);
      a5[1] = v11 + 1;
      v16 = *(a3 + 40);
      result = sub_59EB0();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v14 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 2 * v18) == v15)
        {
LABEL_12:
          v23 = v7[v19];
          v7[v19] = v23 & ~v20;
          if ((v23 & v20) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v14 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 2 * v18) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_38534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, Swift::UInt a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_373D8(a1, a2, a3 & 1, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v24 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_38EF8();
      v14 = v24;
    }

    sub_EAAC(*(*(v14 + 48) + 32 * v11), *(*(v14 + 48) + 32 * v11 + 8), *(*(v14 + 48) + 32 * v11 + 16));
    v15 = *(v14 + 56);
    v16 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
    v23 = *(v16 - 8);
    sub_396FC(v15 + *(v23 + 72) * v11, a5, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    sub_38A5C(v11, v14);
    *v6 = v14;
    v17 = *(v23 + 56);
    v18 = a5;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    v21 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a5;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

uint64_t sub_386A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6 - 8);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_187C(&qword_719D0, &qword_5DBE8);
  v45 = a2;
  result = sub_59D50();
  v12 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v43 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = *(v9 + 48) + 32 * v26;
      v30 = *v28;
      v29 = *(v28 + 8);
      v31 = *(v28 + 16);
      v48 = *(v28 + 24);
      v46 = *(v44 + 72);
      v32 = v27 + v46 * v26;
      if (v45)
      {
        sub_396FC(v32, v47, type metadata accessor for FeaturePreviewConfigurationCache.Value);
      }

      else
      {
        sub_39694(v32, v47, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        sub_B4D0(v30, v29, v31);
      }

      v33 = *(v12 + 40);
      sub_59ED0();
      v49 = v30;
      v50 = v29;
      v51 = v31;
      sub_D600();
      sub_59880();
      sub_59EE0(v48);
      result = sub_59F10();
      v34 = -1 << *(v12 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v20 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 32 * v20;
      *v21 = v30;
      *(v21 + 8) = v29;
      *(v21 + 16) = v31;
      v22 = v47;
      *(v21 + 24) = v48;
      result = sub_396FC(v22, *(v12 + 56) + v46 * v20, type metadata accessor for FeaturePreviewConfigurationCache.Value);
      ++*(v12 + 16);
      v9 = v43;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v14, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_38A5C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_59BA0() + 1) & ~v5;
    v32 = v4;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48) + 32 * v6;
      v11 = v7;
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      sub_59ED0();
      sub_B4D0(v12, v13, v14);
      sub_D600();
      sub_59880();
      sub_59EE0(v15);
      v16 = sub_59F10();
      v17 = v12;
      v7 = v11;
      result = sub_EAAC(v17, v13, v14);
      v18 = v16 & v11;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 32 * v3);
      v21 = (v19 + 32 * v6);
      if (v3 != v6 || v20 >= v21 + 2)
      {
        v22 = v21[1];
        *v20 = *v21;
        v20[1] = v22;
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for FeaturePreviewConfigurationCache.Value(0) - 8) + 72);
      v25 = v24 * v3;
      result = v23 + v24 * v3;
      v26 = v24 * v6;
      v27 = v23 + v24 * v6 + v24;
      if (v25 >= v26 && result < v27)
      {
        v3 = v6;
        v4 = v32;
        if (v25 != v26)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v3 = v6;
        }

        goto LABEL_5;
      }

      result = swift_arrayInitWithTakeFrontToBack();
      v3 = v6;
LABEL_4:
      v4 = v32;
LABEL_5:
      v6 = (v6 + 1) & v11;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (v3 < v18)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_38C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_373D8(a2, a3, a4 & 1, a5);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_38EF8();
      goto LABEL_7;
    }

    sub_386A8(v19, a6 & 1);
    v26 = *v7;
    v27 = sub_373D8(a2, a3, a4 & 1, a5);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_59EA0();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if (v20)
  {
LABEL_8:
    v23 = v22[7];
    v24 = v23 + *(*(type metadata accessor for FeaturePreviewConfigurationCache.Value(0) - 8) + 72) * v16;

    return sub_39764(a1, v24);
  }

LABEL_13:
  sub_38E40(v16, a2, a3, a4 & 1, a5, a1, v22);

  return sub_B4D0(a2, a3, a4 & 1);
}

uint64_t sub_38E40(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a7[6] + 32 * a1;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4 & 1;
  *(v10 + 24) = a5;
  v11 = a7[7];
  v12 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  result = sub_396FC(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for FeaturePreviewConfigurationCache.Value);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

char *sub_38EF8()
{
  v1 = v0;
  v2 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_187C(&qword_719D0, &qword_5DBE8);
  v5 = *v0;
  v6 = sub_59D40();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 32 * v20;
        v22 = *(v5 + 56);
        v23 = *(v5 + 48) + 32 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);
        v28 = v37;
        v29 = *(v38 + 72) * v20;
        sub_39694(v22 + v29, v37, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        v30 = v39;
        v31 = *(v39 + 48) + v21;
        *v31 = v24;
        *(v31 + 8) = v25;
        *(v31 + 16) = v26;
        *(v31 + 24) = v27;
        v32 = *(v30 + 56) + v29;
        v5 = v36;
        sub_396FC(v28, v32, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        result = sub_B4D0(v24, v25, v26);
        v15 = v40;
      }

      while (v40);
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

        v1 = v34;
        v7 = v39;
        goto LABEL_18;
      }

      v19 = *(v35 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

uint64_t sub_39170(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_59AA0();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_134D4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_39200()
{
  result = qword_717C8;
  if (!qword_717C8)
  {
    sub_1F64(&qword_717C0, &qword_5DA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_717C8);
  }

  return result;
}

uint64_t sub_39264(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_59940();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_39300(uint64_t a1)
{
  v2 = type metadata accessor for FeaturePreviewConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3935C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5[2] = *(v1 + 16);
  return sub_34BF0(sub_39FB8, v5, v2, v3) & 1;
}

uint64_t sub_393A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_393B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_59AA0();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B0F8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_3942C(uint64_t a1)
{
  v2 = sub_187C(&qword_719D8, &qword_5DBF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_187C(&qword_719D0, &qword_5DBE8);
    v8 = sub_59D60();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v25 = *(v3 + 72);
    v26 = v9;

    while (1)
    {
      sub_6610(v10, v6, &qword_719D8, &qword_5DBF0);
      v11 = *v6;
      v12 = *(v6 + 1);
      v13 = v6[16];
      v14 = *(v6 + 3);
      result = sub_373D8(*v6, v12, v13, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v8[6] + 32 * result;
      *v18 = v11;
      *(v18 + 8) = v12;
      *(v18 + 16) = v13;
      *(v18 + 24) = v14;
      v19 = v8[7];
      v20 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
      result = sub_396FC(&v6[v26], v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FeaturePreviewConfigurationCache.Value);
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v25;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3965C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_396FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_39764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_397DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_187C(&qword_717B0, &qword_5DA10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_398AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_717B0, &qword_5DA10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3995C()
{
  type metadata accessor for CTFont(319);
  if (v0 <= 0x3F)
  {
    sub_39E88(319, &qword_71830, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_39AB0(319, &qword_71838, &qword_710B8, &unk_5C3F0);
      if (v2 <= 0x3F)
      {
        sub_39AB0(319, &qword_71840, &qword_71848, &qword_5DA80);
        if (v3 <= 0x3F)
        {
          sub_39E88(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_39AB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1F64(a3, a4);
    v5 = sub_59B10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_39B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_39B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_39BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturePreviewConfiguration(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_39C58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FeaturePreviewConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_39CD8()
{
  v0 = type metadata accessor for FeaturePreviewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_39D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_39DC4()
{
  result = qword_76630[0];
  if (!qword_76630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_76630);
  }

  return result;
}

void sub_39E88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_39FF0()
{
  v0 = sub_597A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_597B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(v1 + 104))(v4, enum case for Solarium.EnablementIdiom.iOS(_:), v0);
  sub_59790();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 104))(v10, enum case for Solarium.EnablementLevel.disabled(_:), v5);
  sub_4D92C(&qword_72168, &type metadata accessor for Solarium.EnablementLevel);
  LOBYTE(v0) = sub_598A0();
  v13 = *(v6 + 8);
  v13(v10, v5);
  result = (v13)(v12, v5);
  byte_77C70 = (v0 & 1) == 0;
  return result;
}

char *sub_3A234()
{
  if (qword_768C0 != -1)
  {
    swift_once();
  }

  return &byte_77C70;
}

__n128 sub_3A284@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_187C(&qword_71A18, &qword_5DCE0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  KeyPath = swift_getKeyPath();
  v10 = sub_187C(&qword_71A20, &qword_5DD18);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(sub_187C(&qword_71A28, &qword_5DD20) + 36)];
  *v11 = KeyPath;
  v11[8] = 1;
  *&v8[*(v5 + 44)] = sub_59190();
  v12 = *sub_2B9A8();
  sub_597D0();
  sub_58D00();
  sub_4EB64(v8, a2, &qword_71A18, &qword_5DCE0);
  v13 = a2 + *(sub_187C(&qword_71A30, &qword_5DD28) + 36);
  v14 = v23;
  *(v13 + 64) = v22;
  *(v13 + 80) = v14;
  *(v13 + 96) = v24;
  v15 = v19;
  *v13 = v18;
  *(v13 + 16) = v15;
  result = v21;
  *(v13 + 32) = v20;
  *(v13 + 48) = result;
  return result;
}

Swift::Int sub_3A4DC(char a1)
{
  sub_59ED0();
  sub_59EE0(a1 & 1);
  return sub_59F10();
}

uint64_t sub_3A524@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v5 = sub_187C(&qword_71A38, &qword_5DD30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_187C(&qword_71A40, &qword_5DD38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_187C(&qword_71A48, &qword_5DD40);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  if (qword_768C0 != -1)
  {
    swift_once();
  }

  if (byte_77C70)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  if (a2)
  {
    v29 = v10;
    v30 = a3;
    if (byte_77C70)
    {
      v32 = *sub_2A188();
    }

    v22 = sub_58C00();
    v23 = sub_59200();
    v24 = sub_187C(&qword_71A50, &qword_5DD48);
    (*(*(v24 - 8) + 16))(v8, v31, v24);
    v25 = &v8[*(v5 + 36)];
    *v25 = v22;
    v25[8] = v23;
    v26 = sub_49C08();
    sub_29CA0(v18);
    sub_6678(v8, &qword_71A38, &qword_5DD30);
    v27 = v29;
    (*(v29 + 16))(v17, v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48);
    v32 = v5;
    v33 = v26;
    swift_getOpaqueTypeConformance2();
    sub_59100();
    return (*(v27 + 8))(v13, v9);
  }

  else
  {
    v19 = sub_187C(&qword_71A50, &qword_5DD48);
    (*(*(v19 - 8) + 16))(v17, v31, v19);
    swift_storeEnumTagMultiPayload();
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48);
    v20 = sub_49C08();
    v32 = v5;
    v33 = v20;
    swift_getOpaqueTypeConformance2();
    return sub_59100();
  }
}

uint64_t sub_3A960(uint64_t a1, uint64_t a2)
{
  v4 = sub_590F0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_59100();
}

uint64_t sub_3AA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_590F0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_59100();
}

uint64_t sub_3AB84(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel();
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_3AC00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypographyPanelViewModel();
  v5 = sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);

  return EnvironmentObject.projectedValue.getter(a1, a2, v4, v5);
}

uint64_t sub_3AC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_187C(&qword_71A78, &qword_5DD58);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v53 - v8;
  v10 = sub_187C(&qword_71A80, &qword_5DD60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v57 = sub_187C(&qword_71A88, &qword_5DD68);
  v14 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v16 = &v53 - v15;
  v58 = sub_187C(&qword_71A90, &qword_5DD70);
  v56 = *(v58 - 8);
  v17 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v53 - v18;
  v54 = sub_187C(&qword_71A98, &qword_5DD78);
  v19 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v21 = &v53 - v20;
  v22 = sub_187C(&qword_71AA0, &qword_5DD80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v53 - v24;
  if (a1)
  {
    v60 = v9;
    v61 = a3;

    v26 = sub_1F564();

    if (v26 >> 62)
    {
      v27 = sub_59D30();
    }

    else
    {
      v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    }

    *v13 = sub_58F20();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v28 = sub_187C(&qword_71AA8, &qword_5DD88);
    sub_3B358(v27 > 1, a1, a2, &v13[*(v28 + 44)]);
    v29 = *sub_2BD68();
    sub_597D0();
    sub_58BF0();
    v30 = &v13[*(sub_187C(&qword_71AB0, &qword_5DD90) + 36)];
    v31 = v64;
    *v30 = v63;
    *(v30 + 1) = v31;
    *(v30 + 2) = v65;
    LOBYTE(v29) = sub_591F0();
    v32 = *sub_2B9C0();
    sub_58B90();
    v33 = &v13[*(v10 + 36)];
    *v33 = v29;
    *(v33 + 1) = v34;
    *(v33 + 2) = v35;
    *(v33 + 3) = v36;
    *(v33 + 4) = v37;
    v33[40] = 0;
    if (qword_768C0 != -1)
    {
      swift_once();
    }

    v53 = a2;
    v59 = v22;
    if (byte_77C70)
    {
      v62 = *sub_2A188();

      v38 = sub_58C00();
      v39 = 0;
    }

    else
    {
      v38 = sub_58C00();
      v39 = 2;
    }

    v40 = sub_59200();
    sub_4EB64(v13, v16, &qword_71A80, &qword_5DD60);
    v41 = &v16[*(v57 + 36)];
    *v41 = v38;
    v41[8] = v40;
    sub_49CEC();
    v42 = v55;
    sub_29CA0(v39);
    sub_6678(v16, &qword_71A88, &qword_5DD68);
    v43 = sub_591F0();
    (*(v56 + 32))(v21, v42, v58);
    v44 = &v21[*(v54 + 36)];
    *v44 = v43;
    *(v44 + 8) = 0u;
    *(v44 + 24) = 0u;
    v45 = 1;
    v44[40] = 1;
    v46 = sub_59810();
    v47 = sub_4EB64(v21, v25, &qword_71A98, &qword_5DD78);
    v48 = v60;
    v49 = &v25[*(v59 + 36)];
    *v49 = v46;
    v49[8] = v27 > 1;
    if (v27 >= 2)
    {
      __chkstk_darwin(v47);
      v50 = v53;
      *(&v53 - 2) = a1;
      *(&v53 - 1) = v50;
      sub_187C(&qword_71AE8, &qword_5DDA8);
      sub_4A008();
      sub_58BB0();
      v45 = 0;
    }

    v51 = sub_187C(&qword_71AE0, &qword_5DDA0);
    (*(*(v51 - 8) + 56))(v48, v45, 1, v51);
    sub_187C(&qword_71AE8, &qword_5DDA8);
    sub_49E88();
    sub_4A008();
    sub_59360();
    sub_6678(v48, &qword_71A78, &qword_5DD58);
    return sub_6678(v25, &qword_71AA0, &qword_5DD80);
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel();
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_3B358@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v120 = a4;
  v110 = sub_187C(&qword_72068, &qword_5ED50);
  v6 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v113 = (&v97 - v7);
  v107 = sub_187C(&qword_72070, &qword_5ED58);
  v8 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v105 = (&v97 - v9);
  v111 = sub_187C(&qword_72078, &qword_5ED60);
  v10 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v108 = &v97 - v11;
  v12 = sub_187C(&qword_72080, &qword_5ED68);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v104 = (&v97 - v14);
  v106 = sub_187C(&qword_72088, &qword_5ED70);
  v15 = *(*(v106 - 8) + 64);
  v16 = __chkstk_darwin(v106);
  v100 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v97 - v18;
  v19 = sub_187C(&qword_72090, &qword_5ED78);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v119 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v123 = &v97 - v23;
  v24 = sub_58CE0();
  v114 = *(v24 - 8);
  v25 = *(v114 + 64);
  __chkstk_darwin(v24);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_187C(&qword_72098, &qword_5ED80);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v97 - v30;
  v32 = sub_187C(&qword_720A0, &qword_5ED88);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v97 - v35;
  v37 = sub_187C(&qword_720A8, &unk_5ED90);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v116 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v117 = &v97 - v42;
  v43 = __chkstk_darwin(v41);
  v115 = &v97 - v44;
  __chkstk_darwin(v43);
  v118 = a1;
  v121 = &v97 - v45;
  v112 = v31;
  if (a1)
  {
    v46 = swift_allocObject();
    v47 = v122;
    *(v46 + 16) = a2;
    *(v46 + 24) = v47;

    sub_187C(&qword_71FA0, &qword_5EC30);
    sub_4DC68();
    sub_59670();
    *&v31[*(v28 + 36)] = sub_59180();
    sub_58CD0();
    sub_50CF8();
    sub_4D92C(&qword_720E8, &type metadata accessor for PlainButtonStyle);
    sub_59350();
    (*(v114 + 8))(v27, v24);
    sub_6678(v31, &qword_72098, &qword_5ED80);
    v48 = v121;
    (*(v33 + 32))(v121, v36, v32);
    v49 = *(v33 + 56);
    v50 = v48;
    v51 = 0;
  }

  else
  {
    v49 = *(v33 + 56);
    v50 = &v97 - v45;
    v51 = 1;
  }

  v109 = v49;
  v49(v50, v51, 1, v32);

  v52 = sub_1F758();
  v99 = a2;
  if (v52)
  {
    v53 = v52;

    v54 = sub_58F10();
    v55 = v104;
    *v104 = v54;
    v55[1] = 0;
    *(v55 + 16) = 1;
    v56 = sub_187C(&qword_720F0, &qword_5EDB0);
    sub_3C294(v53, v55 + *(v56 + 44));
    sub_597D0();
    sub_58D00();
    v57 = v55;
    v58 = v100;
    sub_4EB64(v57, v100, &qword_72080, &qword_5ED68);
    v59 = (v58 + *(v106 + 36));
    v60 = v129;
    v59[4] = v128;
    v59[5] = v60;
    v59[6] = v130;
    v61 = v125;
    *v59 = v124;
    v59[1] = v61;
    v62 = v127;
    v59[2] = v126;
    v59[3] = v62;
    v98 = v36;
    v103 = v27;
    v102 = v32;
    v104 = v24;
    v63 = v101;
    sub_4EB64(v58, v101, &qword_72088, &qword_5ED70);
    sub_6610(v63, v105, &qword_72088, &qword_5ED70);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A20, &unk_5AB48);
    sub_50870();
    sub_2118();
    v64 = v108;
    sub_59100();
    sub_6610(v64, v113, &qword_72078, &qword_5ED60);
    swift_storeEnumTagMultiPayload();
    sub_507E4();
    sub_59100();

    sub_6678(v64, &qword_72078, &qword_5ED60);
    v65 = v63;
    v36 = v98;
    v24 = v104;
    v32 = v102;
    v27 = v103;
    sub_6678(v65, &qword_72088, &qword_5ED70);
  }

  else
  {
    v66 = sub_1F074();

    if (v66)
    {
      v131._countAndFlagsBits = 0xD000000000000026;
      v131._object = 0x8000000000066F80;
      *&v124 = sub_2B8E0(v131, 0xD000000000000051, 0x8000000000066FB0);
      *(&v124 + 1) = v67;
      sub_66D8();
      v68 = sub_59310();
      v104 = v24;
      v70 = v69;
      v71 = v105;
      *v105 = v68;
      v71[1] = v69;
      v103 = v27;
      v102 = v32;
      v73 = v72 & 1;
      *(v71 + 16) = v72 & 1;
      v71[3] = v74;
      v101 = v74;
      swift_storeEnumTagMultiPayload();
      sub_50498(v68, v70, v73);

      sub_187C(&qword_70A20, &unk_5AB48);
      sub_50870();
      v107 = v33;
      sub_2118();
      v75 = v108;
      sub_59100();
      sub_6610(v75, v113, &qword_72078, &qword_5ED60);
      swift_storeEnumTagMultiPayload();
      sub_507E4();
      sub_59100();
      v76 = v70;
      v24 = v104;
      v77 = v73;
      v32 = v102;
      v27 = v103;
      sub_4FFA4(v68, v76, v77);

      v33 = v107;
      sub_6678(v75, &qword_72078, &qword_5ED60);
    }

    else
    {
      v132._object = 0x8000000000066F20;
      v132._countAndFlagsBits = 0xD000000000000011;
      *&v124 = sub_2B8E0(v132, 0xD000000000000032, 0x8000000000066F40);
      *(&v124 + 1) = v78;
      sub_66D8();
      v79 = sub_59310();
      v80 = v113;
      *v113 = v79;
      v80[1] = v81;
      *(v80 + 16) = v82 & 1;
      v80[3] = v83;
      swift_storeEnumTagMultiPayload();
      sub_187C(&qword_70A20, &unk_5AB48);
      sub_507E4();
      sub_2118();
      sub_59100();
    }
  }

  v84 = v122;
  v85 = v112;
  if (v118)
  {
    v86 = swift_allocObject();
    *(v86 + 16) = v99;
    *(v86 + 24) = v84;

    sub_187C(&qword_71FA0, &qword_5EC30);
    sub_4DC68();
    sub_59670();
    *(v85 + *(v28 + 36)) = sub_59180();
    sub_58CD0();
    sub_50CF8();
    sub_4D92C(&qword_720E8, &type metadata accessor for PlainButtonStyle);
    sub_59350();
    (*(v114 + 8))(v27, v24);
    sub_6678(v85, &qword_72098, &qword_5ED80);
    v87 = v115;
    (*(v33 + 32))(v115, v36, v32);
    v88 = 0;
  }

  else
  {
    v88 = 1;
    v87 = v115;
  }

  v109(v87, v88, 1, v32);
  v89 = v121;
  v90 = v117;
  sub_6610(v121, v117, &qword_720A8, &unk_5ED90);
  v91 = v123;
  v92 = v119;
  sub_6610(v123, v119, &qword_72090, &qword_5ED78);
  v93 = v116;
  sub_6610(v87, v116, &qword_720A8, &unk_5ED90);
  v94 = v120;
  sub_6610(v90, v120, &qword_720A8, &unk_5ED90);
  v95 = sub_187C(&qword_720C8, &qword_5EDA0);
  sub_6610(v92, v94 + *(v95 + 48), &qword_72090, &qword_5ED78);
  sub_6610(v93, v94 + *(v95 + 64), &qword_720A8, &unk_5ED90);
  sub_6678(v87, &qword_720A8, &unk_5ED90);
  sub_6678(v91, &qword_72090, &qword_5ED78);
  sub_6678(v89, &qword_720A8, &unk_5ED90);
  sub_6678(v93, &qword_720A8, &unk_5ED90);
  sub_6678(v92, &qword_72090, &qword_5ED78);
  return sub_6678(v90, &qword_720A8, &unk_5ED90);
}

uint64_t sub_3C230@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_595B0();
  v3 = sub_59280();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

__n128 sub_3C294@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = sub_58F30();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v47);
  v6 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_187C(&qword_720F8, &qword_5EDB8);
  v7 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v49 = &KeyPath - v8;
  *&v63[0] = sub_52154();
  *(&v63[0] + 1) = v9;
  sub_66D8();
  v10 = sub_59310();
  v45 = v11;
  v46 = v10;
  v13 = v12;
  v44 = v14;
  KeyPath = swift_getKeyPath();
  sub_52154();
  v15 = sub_2ACEC();

  if ((v15 & 1) == 0)
  {
    a1 = *sub_52218();
  }

  v16 = a1;
  v17 = sub_2BD94();
  v18 = sub_522C4(*v17);

  v19 = *sub_2BD80();
  v20 = fmin(v19 / sub_52374(), 1.0);
  v21 = sub_523CC();
  sub_522C4(v21 * v20);

  v22 = sub_59290();
  v23 = swift_getKeyPath();
  v24 = v13 & 1;
  LOBYTE(v63[0]) = v13 & 1;
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  LOBYTE(v63[0]) = 0;
  v28 = *sub_2BDB4();
  v29 = sub_59200();
  sub_58B90();
  v62 = 0;
  *&v51 = v46;
  *(&v51 + 1) = v45;
  LOBYTE(v52) = v24;
  *(&v52 + 1) = v44;
  *&v53 = KeyPath;
  BYTE8(v53) = 1;
  v54.n128_u64[0] = v23;
  v54.n128_u64[1] = v22;
  *&v55 = v25;
  *(&v55 + 1) = 0x3FE8000000000000;
  *&v56 = v26;
  BYTE8(v56) = 1;
  *&v57 = v27;
  *(&v57 + 1) = 1;
  LOBYTE(v58) = 0;
  BYTE8(v58) = v29;
  *&v59 = v30;
  *(&v59 + 1) = v31;
  *&v60 = v32;
  *(&v60 + 1) = v33;
  v61 = 0;
  v34 = v47;
  (*(v3 + 104))(v6, enum case for ColorRenderingMode.nonLinear(_:), v47);
  sub_187C(&qword_72100, &qword_5EE20);
  sub_51188(&qword_72108, &qword_72100, &qword_5EE20, sub_5120C);
  v35 = v49;
  sub_593B0();
  (*(v3 + 8))(v6, v34);
  v63[8] = v59;
  v63[9] = v60;
  v64 = v61;
  v63[4] = v55;
  v63[5] = v56;
  v63[6] = v57;
  v63[7] = v58;
  v63[0] = v51;
  v63[1] = v52;
  v63[2] = v53;
  v63[3] = v54;
  sub_6678(v63, &qword_72100, &qword_5EE20);
  v36 = sub_58F10();
  v37 = (v35 + *(v48 + 36));
  *v37 = v36;
  v37[1] = sub_3C6E0;
  v37[2] = 0;
  sub_597C0();
  sub_58D00();
  v38 = v50;
  sub_4EB64(v35, v50, &qword_720F8, &qword_5EDB8);
  v39 = v38 + *(sub_187C(&qword_72160, &qword_5EE58) + 36);
  v40 = v56;
  *(v39 + 64) = v55;
  *(v39 + 80) = v40;
  *(v39 + 96) = v57;
  v41 = v52;
  *v39 = v51;
  *(v39 + 16) = v41;
  result = v54;
  *(v39 + 32) = v53;
  *(v39 + 48) = result;
  return result;
}

double sub_3C6E0()
{
  sub_58EF0();
  sub_58C80();
  return v0 + *sub_2BDA0();
}

uint64_t sub_3C720@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_595B0();
  v3 = sub_59280();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_3C784(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_59850();
}

uint64_t sub_3C958()
{
  type metadata accessor for TypographyPanelViewModel();
  sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);

  return sub_58D50();
}

uint64_t sub_3C9D4()
{
  v3 = *v0;
  v4 = *(v0 + 16);
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return v2;
}

uint64_t sub_3CA2C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_187C(&qword_70C90, &qword_5DDD0);
  return sub_596F0();
}

void (*sub_3CA88(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 56) = *v1;
  *(v3 + 64) = v6;
  v7 = *(v1 + 16);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_4A340(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return sub_3CB44;
}

void sub_3CB44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 56);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_596F0();
  sub_4A39C(v1 + 48);

  free(v1);
}

uint64_t sub_3CBBC()
{
  v3 = *v0;
  v4 = *(v0 + 16);
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_59700();
  return v2;
}

uint64_t sub_3CC18()
{
  v1 = *(v0 + 24);
  sub_B848(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_3CC4C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_3CC80@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = sub_59620();
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a1 & 1;
  *(a9 + 64) = v19;
  *(a9 + 72) = v20;
  return result;
}

uint64_t sub_3CD28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_59750();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v19[-v12];
  v26 = sub_8164(*(v2 + 24), *(v2 + 32));
  v27 = v14;
  v15 = *(a1 + 24);
  v20 = v5;
  v21 = v15;
  v22 = v2;
  sub_66D8();
  sub_59740();
  v23 = &protocol witness table for Text;
  v24 = v15;
  v25 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  v16 = v7[2];
  v16(v13, v11, v6);
  v17 = v7[1];
  v17(v11, v6);
  v16(a2, v13, v6);
  return (v17)(v13, v6);
}

uint64_t sub_3CF0C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12 = *(v9 + 48);
  (*(v9 + 40))();
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_3D04C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v4 = *v2;
  v5 = v2[1];
  return sub_3CD28(a1, a2);
}

uint64_t sub_3D0B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_187C(&qword_71B48, &unk_5DE00);
  v7 = a3 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  result = sub_4EB64(a1, a3, &qword_71078, &qword_5C378);
  v9 = (a3 + v6[9]);
  *v9 = 0;
  v9[1] = 0;
  *(a3 + v6[10]) = a2;
  return result;
}

uint64_t sub_3D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeaturePreviewView();
  v7 = a3 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = type metadata accessor for FeaturePreviewConfiguration(0);
  result = (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  v10 = (a3 + v6[9]);
  *v10 = a1;
  v10[1] = a2;
  *(a3 + v6[10]) = 2;
  return result;
}

uint64_t sub_3D210@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1F64(&qword_71B50, &qword_5DE10);
  sub_1F64(&qword_71B58, &qword_5DE18);
  *&v47 = v3;
  *(&v47 + 1) = &type metadata for EmptyView;
  *&v48 = v4;
  *(&v48 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView();
  sub_59110();
  sub_59110();
  sub_1F64(&qword_71B60, &qword_5DE20);
  sub_59110();
  v5 = sub_4A438();
  v29 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
  WitnessTable = swift_getWitnessTable();
  v27 = v5;
  v28 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = sub_4A7CC();
  v6 = swift_getWitnessTable();
  sub_59590();
  v37[0] = v47;
  v37[1] = v48;
  v38[0] = *v49;
  *(v38 + 13) = *&v49[13];
  v31 = v47;
  v32 = v48;
  *v33 = *v49;
  *&v33[13] = *&v49[13];
  v7 = sub_595A0();
  v24 = v6;
  v8 = swift_getWitnessTable();
  sub_59450();
  (*(*(v7 - 8) + 8))(v37, v7);
  *v33 = v42;
  *&v33[16] = v43;
  v34 = v44;
  v31 = v40;
  v32 = v41;
  sub_1F64(&qword_71C08, &qword_5DE88);
  v9 = sub_58CB0();
  v22 = v8;
  v23 = sub_6ED0(&qword_71C10, &qword_71C08, &qword_5DE88);
  swift_getWitnessTable();
  sub_594F0();
  v39[2] = *v33;
  v39[3] = *&v33[16];
  v39[4] = v34;
  v39[0] = v31;
  v39[1] = v32;
  (*(*(v9 - 8) + 8))(v39, v9);
  v19 = v50;
  v20 = v51;
  v21 = v52;
  v15 = v47;
  v16 = v48;
  v17 = *v49;
  v18 = *&v49[16];
  sub_1F64(&qword_71C18, &qword_5DE90);
  v10 = sub_58CB0();
  sub_6ED0(&qword_71C20, &qword_71C18, &qword_5DE90);
  swift_getWitnessTable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(&v31, &v15, v10);
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v13 = *(v11 + 8);
  v13(&v40, v10);
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v15 = v31;
  v16 = v32;
  v17 = *v33;
  v18 = *&v33[16];
  v12(a2, &v15, v10);
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v47 = v15;
  v48 = v16;
  *v49 = v17;
  *&v49[16] = v18;
  return (v13)(&v47, v10);
}

uint64_t sub_3D6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v246 = a2;
  v247 = a1;
  v243 = a4;
  v245 = a3;
  v244 = type metadata accessor for FeaturePreviewView();
  v228 = *(v244 - 8);
  v4 = *(v228 + 64);
  v5 = __chkstk_darwin(v244);
  v227 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v6;
  __chkstk_darwin(v5);
  v236 = &v210 - v7;
  v8 = sub_187C(&qword_717B0, &qword_5DA10);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v224 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v231 = &v210 - v12;
  v13 = sub_187C(&qword_72038, &qword_5ED00);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v225 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v232 = &v210 - v17;
  v238 = sub_58920();
  v235 = *(v238 - 8);
  v18 = *(v235 + 64);
  v19 = __chkstk_darwin(v238);
  v221 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v222 = &v210 - v21;
  v22 = __chkstk_darwin(v20);
  v223 = &v210 - v23;
  __chkstk_darwin(v22);
  v229 = &v210 - v24;
  v25 = sub_187C(&qword_71078, &qword_5C378);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v239 = (&v210 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v230 = &v210 - v30;
  v31 = __chkstk_darwin(v29);
  *&v240 = &v210 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v210 - v34;
  __chkstk_darwin(v33);
  v37 = &v210 - v36;
  v38 = type metadata accessor for FeaturePreviewConfiguration(0);
  v39 = *(v38 - 1);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v242 = (&v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __chkstk_darwin(v41);
  v226 = &v210 - v43;
  v44 = __chkstk_darwin(v42);
  v241 = &v210 - v45;
  v46 = __chkstk_darwin(v44);
  *&v234 = &v210 - v47;
  __chkstk_darwin(v46);
  v49 = &v210 - v48;
  sub_6610(v247, v37, &qword_71078, &qword_5C378);
  v233 = v39;
  v50 = *(v39 + 48);
  if (v50(v37, 1, v38) == 1)
  {
    sub_6678(v37, &qword_71078, &qword_5C378);
  }

  else
  {
    v51 = v37;
    v52 = v49;
    sub_4AE50(v51, v49, type metadata accessor for FeaturePreviewConfiguration);
    v53 = *(v49 + 3);
    if (v53)
    {
      v54 = *(v49 + 2);
      v55 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v55 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v56 = v234;
        sub_4ADE4(v52, v234, type metadata accessor for FeaturePreviewConfiguration);
        v57 = (*(v233 + 80) + 32) & ~*(v233 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v54;
        *(v58 + 24) = v53;
        sub_4AE50(v56, v58 + v57, type metadata accessor for FeaturePreviewConfiguration);
        v220 = v52;
        sub_4ADE4(v52, v56, type metadata accessor for FeaturePreviewConfiguration);
        v59 = swift_allocObject();
        *(v59 + 16) = v54;
        *(v59 + 24) = v53;
        sub_4AE50(v56, v59 + v57, type metadata accessor for FeaturePreviewConfiguration);
        swift_bridgeObjectRetain_n();
        sub_3FD88(v244, &v302);

        *(v262 + 10) = *&v304[10];
        v261 = v303;
        v262[0] = *v304;
        v260 = v302;
        *&v304[10] = *(v262 + 10);
        LOBYTE(v270) = 0;
        v304[26] = 0;
        v60 = *(&v302 + 1);
        v247 = v302;
        v61 = v303;
        v62 = v262[0];
        v63 = *&v262[1];
        v64 = BYTE9(v262[1]);
        v65 = BYTE8(v262[1]);
        sub_4FF24(v302, *(&v302 + 1), v303, *(&v303 + 1), *&v262[0], *(&v262[0] + 1), *&v262[1], SBYTE8(v262[1]), SBYTE9(v262[1]), sub_51874);
        sub_4FF24(v247, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v65, v64, sub_51874);
        sub_187C(&qword_71B78, &qword_5DE28);
        sub_187C(&qword_71BA8, &qword_5DE48);
        sub_4A5D8(&qword_71B70, &qword_71B78, &qword_5DE28, sub_4A51C);
        sub_4A5D8(&qword_71BA0, &qword_71BA8, &qword_5DE48, sub_4A654);
        sub_59100();
        v295 = v275;
        v296 = v276;
        v297[0] = v277[0];
        *(v297 + 11) = *(v277 + 11);
        v66 = sub_187C(&qword_71B50, &qword_5DE10);
        sub_1F64(&qword_71B58, &qword_5DE18);
        v67 = v245;
        *&v302 = v246;
        *(&v302 + 1) = &type metadata for EmptyView;
        *&v303 = v245;
        *(&v303 + 1) = &protocol witness table for EmptyView;
        type metadata accessor for FeaturePreviewContainerView();
        sub_59110();
        v68 = sub_4A438();
        v69 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
        WitnessTable = swift_getWitnessTable();
        v250 = v69;
        v251 = WitnessTable;
        v71 = swift_getWitnessTable();
        sub_3A960(&v295, v66);
        sub_6678(&v275, &qword_71B50, &qword_5DE10);
        v278 = v302;
        v279 = v303;
        v280[0] = *v304;
        *(v280 + 12) = *&v304[12];
        v265 = v302;
        v266 = v303;
        v267[0] = *v304;
        *(v267 + 12) = *&v304[12];
        v72 = sub_59110();
        sub_187C(&qword_71B60, &qword_5DE20);
        v248 = v68;
        v249 = v71;
        v73 = v67;
        swift_getWitnessTable();
        sub_4A7CC();
        sub_3A960(&v265, v72);
        sub_6678(&v260, &qword_71B78, &qword_5DE28);
        sub_6678(&v260, &qword_71B78, &qword_5DE28);
        (*(*(v72 - 8) + 8))(&v278, v72);
        sub_39300(v220);
        goto LABEL_36;
      }
    }

    sub_39300(v52);
  }

  v74 = v247;
  sub_6610(v247, v35, &qword_71078, &qword_5C378);
  v75 = v50(v35, 1, v38);
  v76 = v244;
  if (v75 == 1)
  {
    v77 = &qword_71078;
    v78 = &qword_5C378;
  }

  else
  {
    v79 = v35;
    v80 = v241;
    sub_4AE50(v79, v241, type metadata accessor for FeaturePreviewConfiguration);
    v220 = v38[7];
    v81 = v231;
    sub_6610(v80 + v220, v231, &qword_717B0, &qword_5DA10);
    v82 = sub_187C(&qword_710B8, &unk_5C3F0);
    v83 = *(v82 - 8);
    v84 = *(v83 + 48);
    v218 = v83 + 48;
    v219 = v84;
    if (v84(v81, 1, v82) == 1)
    {
      sub_39300(v80);
      sub_6678(v81, &qword_717B0, &qword_5DA10);
      v35 = v232;
      (*(v235 + 56))(v232, 1, 1, v238);
      v74 = v247;
    }

    else
    {
      v85 = *(v82 + 48);
      v214 = v50;
      v215 = v85;
      v86 = v235;
      v35 = v232;
      v87 = v238;
      v216 = *(v235 + 32);
      v217 = v235 + 32;
      v216(v232, v81, v238);
      v211 = v86[7];
      v212 = v86 + 7;
      v211(v35, 0, 1, v87);
      v88 = v86[1];
      v213 = v86 + 1;
      v231 = v88;
      (v88)(&v81[v215], v87);
      v89 = v86[6];
      if (v89(v35, 1, v87) != 1)
      {
        v216(v229, v35, v87);
        v153 = v224;
        sub_6610(v241 + v220, v224, &qword_717B0, &qword_5DA10);
        if (v219(v153, 1, v82) == 1)
        {
          (v231)(v229, v87);
          sub_39300(v241);
          sub_6678(v153, &qword_717B0, &qword_5DA10);
          v154 = v225;
          v211(v225, 1, 1, v87);
          v74 = v247;
        }

        else
        {
          v172 = v153 + *(v82 + 48);
          v173 = v153;
          v154 = v225;
          v216(v225, v172, v87);
          v211(v154, 0, 1, v87);
          (v231)(v173, v87);
          v174 = v89(v154, 1, v87);
          v74 = v247;
          if (v174 != 1)
          {
            v216(v223, v154, v87);
            v175 = v235 + 16;
            *&v240 = *(v235 + 16);
            (v240)(v222, v229, v87);
            v242 = type metadata accessor for FeaturePreviewConfiguration;
            v176 = v234;
            sub_4ADE4(v241, v234, type metadata accessor for FeaturePreviewConfiguration);
            v177 = v228;
            v239 = *(v228 + 16);
            v239(v236, v74, v244);
            v178 = *(v175 + 64);
            v179 = *(v233 + 80);
            v180 = v18 + v179 + ((v178 + 32) & ~v178);
            v181 = (v178 + 32) & ~v178;
            v232 = v181;
            v182 = v180 & ~v179;
            v183 = *(v177 + 80);
            v235 = v182;
            v184 = (v40 + v183 + v182) & ~v183;
            v233 = v178 | v179 | v183;
            v230 = v184;
            v185 = swift_allocObject();
            v186 = v245;
            *(v185 + 16) = v246;
            *(v185 + 24) = v186;
            v187 = v185 + v181;
            v188 = v238;
            v216(v187, v222, v238);
            v189 = v242;
            sub_4AE50(v176, v185 + v182, v242);
            *&v234 = *(v177 + 32);
            v190 = v185 + v184;
            v191 = v244;
            (v234)(v190, v236, v244);
            v192 = v221;
            (v240)(v221, v223, v188);
            v193 = v226;
            sub_4ADE4(v241, v226, v189);
            v194 = v227;
            v239(v227, v247, v191);
            v195 = v230;
            v196 = swift_allocObject();
            v197 = v245;
            *(v196 + 16) = v246;
            *(v196 + 24) = v197;
            v216(&v232[v196], v192, v188);
            sub_4AE50(v193, v196 + v235, v242);
            (v234)(v196 + v195, v194, v191);
            sub_187C(&qword_72048, &qword_5ED10);
            *&v302 = &type metadata for Text;
            *(&v302 + 1) = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
            sub_3FD88(v191, &v302);

            *(v262 + 10) = *&v304[10];
            v261 = v303;
            v262[0] = *v304;
            v260 = v302;
            *&v304[10] = *(v262 + 10);
            LOBYTE(v270) = 1;
            v304[26] = 1;
            v247 = *(&v302 + 1);
            v198 = v302;
            v199 = v303;
            v200 = v262[0];
            v201 = *&v262[1];
            LOBYTE(v191) = BYTE9(v262[1]);
            LOBYTE(v188) = BYTE8(v262[1]);
            sub_4FF24(v302, *(&v302 + 1), v303, *(&v303 + 1), *&v262[0], *(&v262[0] + 1), *&v262[1], SBYTE8(v262[1]), SBYTE9(v262[1]), sub_51874);
            sub_4FF24(v198, v247, v199, *(&v199 + 1), v200, *(&v200 + 1), v201, v188, v191, sub_51874);
            sub_187C(&qword_71B78, &qword_5DE28);
            sub_187C(&qword_71BA8, &qword_5DE48);
            sub_4A5D8(&qword_71B70, &qword_71B78, &qword_5DE28, sub_4A51C);
            sub_4A5D8(&qword_71BA0, &qword_71BA8, &qword_5DE48, sub_4A654);
            sub_59100();
            v295 = v275;
            v296 = v276;
            v297[0] = v277[0];
            *(v297 + 11) = *(v277 + 11);
            v202 = sub_187C(&qword_71B50, &qword_5DE10);
            sub_1F64(&qword_71B58, &qword_5DE18);
            v73 = v245;
            *&v302 = v246;
            *(&v302 + 1) = &type metadata for EmptyView;
            *&v303 = v245;
            *(&v303 + 1) = &protocol witness table for EmptyView;
            type metadata accessor for FeaturePreviewContainerView();
            sub_59110();
            v203 = sub_4A438();
            v204 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
            v205 = swift_getWitnessTable();
            v254 = v204;
            v255 = v205;
            v206 = swift_getWitnessTable();
            sub_3A960(&v295, v202);
            sub_6678(&v275, &qword_71B50, &qword_5DE10);
            v278 = v302;
            v279 = v303;
            v280[0] = *v304;
            *(v280 + 12) = *&v304[12];
            v265 = v302;
            v266 = v303;
            v267[0] = *v304;
            *(v267 + 12) = *&v304[12];
            v207 = sub_59110();
            sub_187C(&qword_71B60, &qword_5DE20);
            v252 = v203;
            v253 = v206;
            swift_getWitnessTable();
            sub_4A7CC();
            sub_3A960(&v265, v207);
            sub_6678(&v260, &qword_71BA8, &qword_5DE48);
            sub_6678(&v260, &qword_71BA8, &qword_5DE48);
            (*(*(v207 - 8) + 8))(&v278, v207);
            v208 = v238;
            v209 = v231;
            (v231)(v223, v238);
            (v209)(v229, v208);
            sub_39300(v241);
            goto LABEL_36;
          }

          (v231)(v229, v87);
          sub_39300(v241);
        }

        sub_6678(v154, &qword_72038, &qword_5ED00);
        v76 = v244;
        v90 = v240;
        v50 = v214;
        goto LABEL_17;
      }

      sub_39300(v241);
      v74 = v247;
      v76 = v244;
      v50 = v214;
    }

    v77 = &qword_72038;
    v78 = &qword_5ED00;
  }

  sub_6678(v35, v77, v78);
  v90 = v240;
LABEL_17:
  sub_6610(v74, v90, &qword_71078, &qword_5C378);
  if (v50(v90, 1, v38) == 1)
  {
    sub_6678(v90, &qword_71078, &qword_5C378);
  }

  else
  {
    v91 = v50;
    v92 = v76;
    v93 = v242;
    sub_4AE50(v90, v242, type metadata accessor for FeaturePreviewConfiguration);
    v94 = v93 + v38[8];
    if ((v94[4] & 1) == 0)
    {
      LODWORD(v241) = *v94;
      *&v240 = type metadata accessor for FeaturePreviewConfiguration;
      v111 = v234;
      sub_4ADE4(v93, v234, type metadata accessor for FeaturePreviewConfiguration);
      v112 = v228;
      v239 = *(v228 + 16);
      v239(v236, v74, v92);
      v113 = *(v233 + 80);
      v114 = (v113 + 32) & ~v113;
      v235 = v114;
      v115 = *(v112 + 80);
      v116 = (v40 + v114 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v238 = v116;
      v117 = (v115 + v116 + 4) & ~v115;
      v233 = v113 | v115;
      v118 = swift_allocObject();
      v119 = v245;
      v120 = v246;
      *(v118 + 16) = v246;
      *(v118 + 24) = v119;
      v121 = v118 + v114;
      v122 = v240;
      sub_4AE50(v111, v121, v240);
      *(v118 + v116) = v241;
      v123 = v120;
      v124 = v92;
      *&v234 = *(v112 + 32);
      (v234)(v118 + v117, v236, v92);
      v125 = v226;
      sub_4ADE4(v242, v226, v122);
      v126 = v227;
      v127 = v124;
      v239(v227, v247, v124);
      v73 = v245;
      v128 = swift_allocObject();
      *(v128 + 16) = v123;
      *(v128 + 24) = v73;
      sub_4AE50(v125, v128 + v235, v240);
      *(v128 + v238) = v241;
      (v234)(v128 + v117, v126, v127);
      sub_187C(&qword_72040, &qword_5ED08);
      v129 = sub_37F8();
      *&v302 = &type metadata for GlyphShape;
      *(&v302 + 1) = v129;
      swift_getOpaqueTypeConformance2();
      sub_3FD88(v127, &v302);

      *(v262 + 10) = *&v304[10];
      v261 = v303;
      v262[0] = *v304;
      v260 = v302;
      *&v304[10] = *(v262 + 10);
      sub_4FF24(v302, *(&v302 + 1), v303, *(&v303 + 1), *&v262[0], *(&v262[0] + 1), *&v262[1], SBYTE8(v262[1]), SBYTE9(v262[1]), sub_51874);
      v130 = sub_187C(&qword_71B58, &qword_5DE18);
      *&v295 = v246;
      *(&v295 + 1) = &type metadata for EmptyView;
      *&v296 = v73;
      *(&v296 + 1) = &protocol witness table for EmptyView;
      type metadata accessor for FeaturePreviewContainerView();
      v131 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
      v132 = swift_getWitnessTable();
      sub_3A960(&v302, v130);
      v275 = v295;
      v276 = v296;
      v277[0] = v297[0];
      *(v277 + 11) = *(v297 + 11);
      v278 = v295;
      v279 = v296;
      v280[0] = v297[0];
      *(v280 + 11) = *(v297 + 11);
      v133 = sub_187C(&qword_71B50, &qword_5DE10);
      v134 = sub_59110();
      v135 = sub_4A438();
      v258 = v131;
      v259 = v132;
      v136 = swift_getWitnessTable();
      sub_3AA58(&v278, v133, v134);
      (*(*(v134 - 8) + 8))(&v275, v134);
      v278 = v302;
      v279 = v303;
      v280[0] = *v304;
      *(v280 + 12) = *&v304[12];
      v265 = v302;
      v266 = v303;
      v267[0] = *v304;
      *(v267 + 12) = *&v304[12];
      v137 = sub_59110();
      sub_187C(&qword_71B60, &qword_5DE20);
      v256 = v135;
      v257 = v136;
      swift_getWitnessTable();
      sub_4A7CC();
      sub_3A960(&v265, v137);
      sub_6678(&v260, &qword_71B58, &qword_5DE18);
      sub_6678(&v260, &qword_71B58, &qword_5DE18);
      (*(*(v137 - 8) + 8))(&v278, v137);
      sub_39300(v242);
      goto LABEL_36;
    }

    sub_39300(v93);
    v76 = v92;
    v50 = v91;
  }

  v95 = v74 + *(v76 + 36);
  v96 = v239;
  if (*v95)
  {
    v242 = *v95;
    v97 = *(v95 + 8);
    v98 = v230;
    sub_6610(v74, v230, &qword_71078, &qword_5C378);
    if (v50(v98, 1, v38) == 1)
    {
      v99 = v246;
      v100 = v97;

      sub_6678(v98, &qword_71078, &qword_5C378);
      v101 = 1;
    }

    else
    {
      v99 = v246;
      v101 = *(v98 + v38[11]);
      v100 = v97;

      sub_39300(v98);
    }

    v138 = v245;
    v139 = *(v74 + *(v76 + 40));
    v140 = swift_allocObject();
    v140[2] = v99;
    v140[3] = v138;
    v140[4] = v242;
    v140[5] = v100;
    v239 = v100;
    KeyPath = swift_getKeyPath();
    v301 = 0;
    LOBYTE(v302) = v101;
    *(&v302 + 1) = *v299;
    DWORD1(v302) = *&v299[3];
    *(&v302 + 1) = sub_4F184;
    v303 = v140;
    *v304 = 0;
    v304[8] = v139;
    *&v304[9] = *v298;
    *&v304[12] = *&v298[3];
    *&v304[16] = KeyPath;
    v304[24] = 0;
    *&v295 = v99;
    *(&v295 + 1) = &type metadata for EmptyView;
    *&v296 = v138;
    *(&v296 + 1) = &protocol witness table for EmptyView;
    v141 = type metadata accessor for FeaturePreviewContainerView();
    v142 = swift_getWitnessTable();
    v143 = *(*(v141 - 8) + 16);
    v143(&v260, &v302, v141);

    sub_4F190(0);
    sub_6678(&KeyPath, &qword_71C28, &qword_5DE98);
    v302 = v260;
    v244 = *(&v261 + 1);
    v241 = v261;
    v238 = *&v262[1];
    v303 = v261;
    v240 = v262[0];
    *v304 = v262[0];
    *&v304[16] = *&v262[1];
    LODWORD(v247) = BYTE8(v262[1]);
    v304[24] = BYTE8(v262[1]);
    v143(&v270, &v302, v141);
    v302 = v270;
    v235 = *(&v271 + 1);
    v237 = v273;
    v303 = v271;
    v234 = v272;
    *v304 = v272;
    *&v304[16] = v273;
    LODWORD(v236) = v274;
    v304[24] = v274;
    v144 = sub_187C(&qword_71B58, &qword_5DE18);
    v145 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
    sub_3AA58(&v302, v144, v141);
    v275 = v295;
    v276 = v296;
    v277[0] = v297[0];
    *(v277 + 11) = *(v297 + 11);
    v278 = v295;
    v279 = v296;
    v280[0] = v297[0];
    *(v280 + 11) = *(v297 + 11);
    v146 = sub_187C(&qword_71B50, &qword_5DE10);
    v147 = sub_59110();
    v148 = sub_4A438();
    v268 = v145;
    v269 = v142;
    v149 = swift_getWitnessTable();
    sub_3AA58(&v278, v146, v147);
    (*(*(v147 - 8) + 8))(&v275, v147);
    v278 = v302;
    v279 = v303;
    v280[0] = *v304;
    *(v280 + 12) = *&v304[12];
    v265 = v302;
    v266 = v303;
    v267[0] = *v304;
    *(v267 + 12) = *&v304[12];
    v150 = sub_59110();
    sub_187C(&qword_71B60, &qword_5DE20);
    v263 = v148;
    v264 = v149;
    v73 = v245;
    swift_getWitnessTable();
    sub_4A7CC();
    sub_3A960(&v265, v150);
    sub_4F190(v242);
    (*(*(v150 - 8) + 8))(&v278, v150);

    sub_4F190(v235);
    sub_178CC(v237, v236 & 1);

    sub_4F190(v244);
    sub_178CC(v238, v247 & 1);
  }

  else
  {
    v102 = v74;
    v103 = *(v74 + *(v76 + 40));
    if (v103 == 2)
    {
      LOBYTE(v265) = 1;
      v304[25] = 1;
      sub_187C(&qword_71C00, &qword_5DE80);
      sub_4A870(qword_76908, &qword_71C00, &qword_5DE80);
      sub_59100();
      v302 = v278;
      v303 = v279;
      *v304 = v280[0];
      *&v304[10] = *(v280 + 10);
      sub_1F64(&qword_71B50, &qword_5DE10);
      sub_1F64(&qword_71B58, &qword_5DE18);
      v104 = v245;
      *&v295 = v246;
      *(&v295 + 1) = &type metadata for EmptyView;
      *&v296 = v245;
      *(&v296 + 1) = &protocol witness table for EmptyView;
      type metadata accessor for FeaturePreviewContainerView();
      sub_59110();
      v105 = sub_59110();
      v106 = sub_187C(&qword_71B60, &qword_5DE20);
      v107 = sub_4A438();
      v108 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
      v109 = swift_getWitnessTable();
      v293 = v108;
      v294 = v109;
      v110 = swift_getWitnessTable();
      v291 = v107;
      v73 = v104;
      v292 = v110;
      swift_getWitnessTable();
      sub_4A7CC();
      sub_3AA58(&v302, v105, v106);
    }

    else
    {
      sub_6610(v102, v239, &qword_71078, &qword_5C378);
      if (v50(v96, 1, v38) == 1)
      {
        v151 = v246;
        sub_6678(v96, &qword_71078, &qword_5C378);
        v152 = 1;
      }

      else
      {
        v151 = v246;
        v152 = v96[v38[11]];
        sub_39300(v96);
      }

      v155 = v245;
      v156 = swift_getKeyPath();
      LOBYTE(v275) = 0;
      LOBYTE(v265) = 0;
      LOBYTE(v302) = v152;
      *(&v302 + 1) = sub_41110;
      v303 = 0uLL;
      *v304 = 0;
      v304[8] = v103;
      *&v304[16] = v156;
      *&v304[24] = 0;

      sub_187C(&qword_71C00, &qword_5DE80);
      sub_4A870(qword_76908, &qword_71C00, &qword_5DE80);
      sub_59100();
      v302 = v278;
      v303 = v279;
      *v304 = v280[0];
      *&v304[10] = *(v280 + 10);
      sub_1F64(&qword_71B50, &qword_5DE10);
      sub_1F64(&qword_71B58, &qword_5DE18);
      *&v295 = v151;
      *(&v295 + 1) = &type metadata for EmptyView;
      *&v296 = v155;
      *(&v296 + 1) = &protocol witness table for EmptyView;
      type metadata accessor for FeaturePreviewContainerView();
      sub_59110();
      v157 = sub_59110();
      v158 = sub_187C(&qword_71B60, &qword_5DE20);
      v159 = sub_4A438();
      v160 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
      v161 = swift_getWitnessTable();
      v283 = v160;
      v284 = v161;
      v73 = v245;
      v162 = swift_getWitnessTable();
      v281 = v159;
      v282 = v162;
      swift_getWitnessTable();
      sub_4A7CC();
      sub_3AA58(&v302, v157, v158);
    }

    sub_6678(&v278, &qword_71B60, &qword_5DE20);
  }

LABEL_36:
  v302 = v295;
  v303 = v296;
  *v304 = v297[0];
  *&v304[13] = *(v297 + 13);
  v297[0] = *v304;
  *(v297 + 13) = *&v304[13];
  sub_1F64(&qword_71B50, &qword_5DE10);
  sub_1F64(&qword_71B58, &qword_5DE18);
  *&v278 = v246;
  *(&v278 + 1) = &type metadata for EmptyView;
  *&v279 = v73;
  *(&v279 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView();
  sub_59110();
  sub_59110();
  sub_1F64(&qword_71B60, &qword_5DE20);
  v163 = sub_59110();
  v164 = sub_4A438();
  v165 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
  v166 = swift_getWitnessTable();
  v289 = v165;
  v290 = v166;
  v167 = swift_getWitnessTable();
  v287 = v164;
  v288 = v167;
  v168 = swift_getWitnessTable();
  v169 = sub_4A7CC();
  v285 = v168;
  v286 = v169;
  swift_getWitnessTable();
  v170 = *(v163 - 8);
  (*(v170 + 16))(v243, &v295, v163);
  return (*(v170 + 8))(&v302, v163);
}

uint64_t sub_3FD88@<X0>(uint64_t a1@<X5>, __int128 *a2@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v3 = sub_58CB0();
  WitnessTable = swift_getWitnessTable();
  v20 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = &protocol witness table for _FlexFrameLayout;
  v4 = swift_getWitnessTable();
  type metadata accessor for FeaturePreviewContainerView();
  *&v26 = v3;
  *(&v26 + 1) = &type metadata for EmptyView;
  *&v27 = v4;
  *(&v27 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView();
  sub_59110();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_59590();
  v24[0] = v26;
  v24[1] = v27;
  v25[0] = v28[0];
  *(v25 + 10) = *(v28 + 10);
  v12 = v26;
  v13 = v27;
  v14[0] = v28[0];
  *(v14 + 10) = *(v28 + 10);
  v5 = sub_595A0();
  swift_getWitnessTable();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(&v21, &v12, v5);
  v8 = *(v6 + 8);
  v8(v24, v5);
  v26 = v21;
  v27 = v22;
  v28[0] = v23[0];
  *(v28 + 10) = *(v23 + 10);
  v12 = v21;
  v13 = v22;
  v14[0] = v23[0];
  *(v14 + 10) = *(v23 + 10);
  v7(a2, &v12, v5);
  return v8(&v26, v5);
}

uint64_t sub_40140@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_58F70();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_58E80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a2 + *(type metadata accessor for FeaturePreviewView() + 44);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_59AD0();
    v20 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v15, 0);
    (*(v9 + 8))(v12, v8);
    if (v22 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_58F60();
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_58F50(v23);
    v21[6] = v13;
    sub_58F40();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_58F50(v24);
    result = sub_58F90();
    goto LABEL_6;
  }

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_58F80();
LABEL_6:
  *a3 = result;
  a3[1] = v17;
  a3[2] = v18 & 1;
  a3[3] = v19;
  return result;
}

uint64_t sub_40384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *__return_ptr, int *, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_58920();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  (*(v15 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v16 = sub_59300();
  v18 = v17;
  v20 = v19;
  v26[4] = v16;
  v26[5] = v17;
  v27 = v19 & 1;
  v28 = v21;
  v22 = (a2 + *(type metadata accessor for FeaturePreviewConfiguration(0) + 32));
  if (*(v22 + 4) == 1 || (v25 = *v22, a6(v26, &v25, a3, a4, a5), !v26[1]))
  {
    sub_58F80();
  }

  sub_59480();

  sub_4FFA4(v16, v18, v20 & 1);
}

uint64_t sub_40554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_58F70();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_58E80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 2);
  v14 = a2 + *(type metadata accessor for FeaturePreviewView() + 44);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_59AD0();
    v20 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v15, 0);
    (*(v9 + 8))(v12, v8);
    if (v22 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_58F60();
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_58F50(v23);
    v21[6] = v13;
    sub_58F40();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_58F50(v24);
    result = sub_58F90();
    goto LABEL_6;
  }

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_58F80();
LABEL_6:
  *a3 = result;
  a3[1] = v17;
  a3[2] = v18 & 1;
  a3[3] = v19;
  return result;
}

uint64_t sub_40798@<X0>(void *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = sub_58F70();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v26 = sub_58E80();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v26);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v13 = *a1;
  v14 = v15[1];
  sub_187C(&qword_70CC0, &unk_5AEB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_5AB00;
  *(v16 + 32) = a2;
  v17 = v14;
  v18 = *sub_2BC18();
  sub_2AA58(v16);
  v20 = v19;

  v21 = sub_58FF0();
  v27 = v17;
  v30 = v17;
  v31 = a2;
  v32 = fmin(v20, 1.0);
  v33 = v21;
  v22 = a3 + *(type metadata accessor for FeaturePreviewView() + 44);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_59AD0();
    v24 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v23, 0);
    (*(v9 + 8))(v12, v26);
    if (v29 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_58F60();
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_58F50(v34);
    v29 = a2;
    sub_58F40();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_58F50(v35);
    sub_58F90();
    goto LABEL_6;
  }

  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_58F80();
LABEL_6:
  sub_37F8();
  sub_59480();
}

uint64_t sub_40AAC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v6 = HIWORD(a2);
  v7 = sub_58F70();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_58E80();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  sub_187C(&qword_70CC0, &unk_5AEB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_5AB00;
  *(v14 + 32) = v6;
  v15 = v13;
  v16 = *sub_2BC18();
  sub_2AA58(v14);
  v18 = v17;

  v19 = fmin(v18, 1.0);
  if (*(a1 + *(type metadata accessor for FeaturePreviewConfiguration(0) + 36)))
  {
    goto LABEL_4;
  }

  sub_40E08();
  if (v20)
  {

LABEL_4:
    v21 = sub_58FE0();
    v22 = type metadata accessor for FeaturePreviewView();
    goto LABEL_5;
  }

  v27 = type metadata accessor for FeaturePreviewView();
  v21 = sub_58FD0();
  v22 = v27;
LABEL_5:
  v32 = v15;
  v33 = v6;
  v34 = v19;
  v35 = v21;
  v23 = a3 + *(v22 + 44);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    sub_59AD0();
    v25 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v24, 0);
    (*(v28 + 8))(v12, v29);
    if (v31 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_58F60();
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    sub_58F50(v36);
    v31 = v6;
    sub_58F40();
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    sub_58F50(v37);
    sub_58F90();
    goto LABEL_10;
  }

  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_58F80();
LABEL_10:
  sub_37F8();
  sub_59480();
}

uint64_t sub_40E08()
{
  v1 = v0;
  v2 = sub_187C(&qword_71078, &qword_5C378);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for FeaturePreviewConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6610(v1, v5, &qword_71078, &qword_5C378);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_6678(v5, &qword_71078, &qword_5C378);
  }

  else
  {
    sub_4AE50(v5, v10, type metadata accessor for FeaturePreviewConfiguration);
    if (v10[*(v6 + 36)])
    {
      sub_39300(v10);
    }

    else
    {
      v11 = &v10[*(v6 + 40)];
      v13 = *v11;
      v12 = *(v11 + 1);

      sub_39300(v10);
      if (v12)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t sub_40FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v16 - v11;
  v10();
  v13 = v5[2];
  v13(v12, v9, a2);
  v14 = v5[1];
  v14(v9, a2);
  v13(a3, v12, a2);
  return (v14)(v12, a2);
}

uint64_t sub_41110@<X0>(uint64_t a1@<X8>)
{
  sub_58F80();
  result = sub_592F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_41178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v99 = a8;
  v93 = a5;
  v94 = a6;
  *&v91 = a3;
  v95 = a9;
  v97 = a13;
  v98 = a10;
  v96 = a7;
  *&v92 = a11;
  v16 = type metadata accessor for FeaturePreviewView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v90 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for FeaturePreviewConfiguration(0);
  v23 = v18 + 7;
  if (*(a1 + *(v22 + 36)) == 1)
  {
    v24 = *(a2 + *(v16 + 40));
    v87 = *(a1 + *(v22 + 44));
    LODWORD(v88) = v24;
    *&v84 = *(v17 + 16);
    *&v85 = v17 + 16;
    (v84)(v21, a2, v16);
    v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v82 = v25;
    v26 = (v23 + v25) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = v98;
    v29 = v99;
    v27[2] = v96;
    v27[3] = v29;
    v81 = a2;
    v30 = v92;
    v27[4] = v28;
    v27[5] = v30;
    v83 = a12;
    v31 = v97;
    v27[6] = a12;
    v27[7] = v31;
    v89 = a4;
    v32 = *(v17 + 32);
    v33 = v27 + v25;
    v34 = v27;
    v86 = v27;
    v32(v33, v21, v16);
    v35 = (v34 + v26);
    *v35 = v91;
    v35[1] = a4;
    v36 = v90;
    (v84)(v90, v81, v16);
    v37 = swift_allocObject();
    v38 = v98;
    v39 = v99;
    *(v37 + 2) = v96;
    *(v37 + 3) = v39;
    *(v37 + 4) = v38;
    *(v37 + 5) = v30;
    v40 = v97;
    *(v37 + 6) = v83;
    *(v37 + 7) = v40;
    v32(&v37[v82], v36, v16);
    v41 = &v37[v26];
    v42 = v94;
    *v41 = v93;
    *(v41 + 1) = v42;
    sub_1F64(&qword_72050, qword_5ED18);
    swift_getTupleTypeMetadata2();
    sub_59840();
    swift_getWitnessTable();
    sub_596A0();
    v43 = sub_58CB0();
    swift_getTupleTypeMetadata2();
    sub_59840();
    swift_getWitnessTable();
    sub_596A0();
    v44 = sub_58CB0();
    WitnessTable = swift_getWitnessTable();
    v103 = &protocol witness table for _FlexFrameLayout;
    v45 = swift_getWitnessTable();
    v100 = swift_getWitnessTable();
    v101 = &protocol witness table for _FlexFrameLayout;
    v46 = swift_getWitnessTable();
    v96 = v46;
    KeyPath = swift_getKeyPath();
    v130 = 0;
    LOBYTE(v131) = v87;
    *(&v131 + 1) = *v128;
    DWORD1(v131) = *&v128[3];
    *(&v131 + 1) = sub_50024;
    *&v132 = v86;
    *(&v132 + 1) = sub_50330;
    *v133 = v37;
    v133[8] = v88;
    *&v133[9] = *v127;
    *&v133[12] = *&v127[3];
    *&v133[16] = KeyPath;
    v133[24] = 0;
    *&v112 = v43;
    *(&v112 + 1) = v44;
    *&v113 = v45;
    *(&v113 + 1) = v46;
    v47 = type metadata accessor for FeaturePreviewContainerView();
    v93 = &unk_5EBA8;
    v97 = swift_getWitnessTable();
    v48 = *(*(v47 - 8) + 16);
    v48(&v122, &v131, v47);

    sub_4F190(sub_50330);
    sub_6678(&KeyPath, &qword_71C28, &qword_5DE98);
    v131 = v122;
    v49 = *(&v123 + 1);
    v94 = v125;
    v132 = v123;
    v92 = v124;
    *v133 = v124;
    *&v133[16] = v125;
    LOBYTE(v38) = v126;
    v133[24] = v126;
    v48(&v115, &v131, v47);
    v131 = v115;
    v50 = *(&v116 + 1);
    v51 = v118;
    v132 = v116;
    v91 = v117;
    *v133 = v117;
    *&v133[16] = v118;
    LOBYTE(v39) = v119;
    v133[24] = v119;
    *&v112 = v44;
    *(&v112 + 1) = &type metadata for EmptyView;
    *&v113 = v96;
    *(&v113 + 1) = &protocol witness table for EmptyView;
    type metadata accessor for FeaturePreviewContainerView();
    swift_getWitnessTable();
    sub_3A960(&v131, v47);

    sub_4F190(v50);
    sub_178CC(v51, v39 & 1);

    sub_4F190(v49);
    sub_178CC(v94, v38 & 1);
  }

  else
  {
    LODWORD(v88) = *(a1 + *(v22 + 44));
    LODWORD(v91) = *(a2 + *(v16 + 40));
    (*(v17 + 16))(v21, a2, v16);
    v52 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v53 = (v23 + v52) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v98;
    v56 = v99;
    *(v54 + 16) = v96;
    *(v54 + 24) = v56;
    v57 = v92;
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = v97;
    *(v54 + 48) = a12;
    *(v54 + 56) = v58;
    (*(v17 + 32))(v54 + v52, v21, v16);
    v59 = (v54 + v53);
    v60 = v94;
    *v59 = v93;
    v59[1] = v60;
    v97 = sub_1F64(&qword_72050, qword_5ED18);
    swift_getTupleTypeMetadata2();
    sub_59840();
    v96 = &protocol conformance descriptor for TupleView<A>;
    swift_getWitnessTable();
    sub_596A0();
    v61 = sub_58CB0();
    v93 = &protocol conformance descriptor for HStack<A>;
    v120 = swift_getWitnessTable();
    v121 = &protocol witness table for _FlexFrameLayout;
    *&v92 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
    v62 = v61;
    v90 = v61;
    v63 = swift_getWitnessTable();
    v89 = v63;
    KeyPath = swift_getKeyPath();
    v130 = 0;
    LOBYTE(v131) = v88;
    *(&v131 + 1) = *v128;
    DWORD1(v131) = *&v128[3];
    *(&v131 + 1) = sub_4FFF8;
    v132 = v54;
    *v133 = 0;
    v133[8] = v91;
    *&v133[9] = *v127;
    *&v133[12] = *&v127[3];
    *&v133[16] = KeyPath;
    v133[24] = 0;
    *&v112 = v62;
    *(&v112 + 1) = &type metadata for EmptyView;
    *&v113 = v63;
    *(&v113 + 1) = &protocol witness table for EmptyView;
    v64 = type metadata accessor for FeaturePreviewContainerView();
    v88 = &unk_5EBA8;
    *&v91 = swift_getWitnessTable();
    v65 = *(*(v64 - 8) + 16);
    v65(&v122, &v131, v64);

    sub_4F190(0);
    sub_6678(&KeyPath, &qword_71C28, &qword_5DE98);
    v131 = v122;
    v86 = *(&v123 + 1);
    v94 = v125;
    v132 = v123;
    v85 = v124;
    *v133 = v124;
    *&v133[16] = v125;
    v87 = v126;
    v133[24] = v126;
    v65(&v115, &v131, v64);
    v131 = v115;
    v66 = *(&v116 + 1);
    v67 = v118;
    v132 = v116;
    v84 = v117;
    *v133 = v117;
    *&v133[16] = v118;
    LOBYTE(v54) = v119;
    v133[24] = v119;
    swift_getTupleTypeMetadata2();
    sub_59840();
    swift_getWitnessTable();
    sub_596A0();
    v68 = sub_58CB0();
    v110 = swift_getWitnessTable();
    v111 = &protocol witness table for _FlexFrameLayout;
    v69 = swift_getWitnessTable();
    *&v112 = v68;
    *(&v112 + 1) = v90;
    *&v113 = v69;
    *(&v113 + 1) = v89;
    v70 = type metadata accessor for FeaturePreviewContainerView();
    swift_getWitnessTable();
    sub_3AA58(&v131, v70, v64);

    sub_4F190(v66);
    sub_178CC(v67, v54 & 1);

    sub_4F190(v86);
    sub_178CC(v94, v87 & 1);
  }

  v131 = v112;
  v132 = v113;
  *v133 = v114[0];
  *&v133[10] = *(v114 + 10);
  v114[0] = *v133;
  *(v114 + 10) = *&v133[10];
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v71 = sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v72 = sub_58CB0();
  v108 = swift_getWitnessTable();
  v109 = &protocol witness table for _FlexFrameLayout;
  v73 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v107 = &protocol witness table for _FlexFrameLayout;
  v74 = swift_getWitnessTable();
  *&v122 = v71;
  *(&v122 + 1) = v72;
  *&v123 = v73;
  *(&v123 + 1) = v74;
  type metadata accessor for FeaturePreviewContainerView();
  *&v122 = v72;
  *(&v122 + 1) = &type metadata for EmptyView;
  *&v123 = v74;
  *(&v123 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView();
  v75 = sub_59110();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v104 = v76;
  v105 = v77;
  swift_getWitnessTable();
  v78 = *(v75 - 8);
  (*(v78 + 16))(v95, &v112, v75);
  return (*(v78 + 8))(&v131, v75);
}

uint64_t sub_41EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v34 = a3;
  v35 = a8;
  v32 = a2;
  v33 = a7;
  v30 = a5;
  v31 = a1;
  v37 = a9;
  v29 = a10;
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  v12 = sub_596A0();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = sub_58CB0();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v28 - v22;
  v38 = a4;
  v39 = v30;
  v40 = a6;
  v41 = v33;
  v42 = v35;
  v43 = v29;
  v44 = v31;
  v45 = v32;
  v46 = v34;
  sub_58F20();
  sub_59690();
  sub_597F0();
  WitnessTable = swift_getWitnessTable();
  sub_594A0();
  (*(v36 + 8))(v15, v12);
  v47 = WitnessTable;
  v48 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v24 = v17[2];
  v24(v23, v21, v16);
  v25 = v17[1];
  v25(v21, v16);
  v24(v37, v23, v16);
  return (v25)(v23, v16);
}

double sub_4224C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_187C(&qword_71078, &qword_5C378);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for FeaturePreviewConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_40E08();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    sub_6610(v1, v6, &qword_71078, &qword_5C378);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_4AE50(v6, v11, type metadata accessor for FeaturePreviewConfiguration);
      *&v42 = v14;
      *(&v42 + 1) = v15;
      sub_66D8();
      v16 = sub_59310();
      v18 = v17;
      v20 = v19;
      v21 = *v11;
      sub_59290();
      v22 = sub_592E0();
      v24 = v23;
      v26 = v25;
      v38[1] = v27;

      sub_4FFA4(v16, v18, v20 & 1);

      LODWORD(v42) = sub_59180();
      v28 = sub_592D0();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      sub_4FFA4(v22, v24, v26 & 1);

      *&v39 = v28;
      *(&v39 + 1) = v30;
      *&v40 = v32 & 1;
      *(&v40 + 1) = v34;
      v41 = 0;
      sub_59100();
      sub_39300(v11);
      goto LABEL_6;
    }

    sub_6678(v6, &qword_71078, &qword_5C378);
  }

  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  sub_59100();
LABEL_6:
  result = *&v42;
  v36 = v43;
  v37 = v44;
  *a1 = v42;
  *(a1 + 16) = v36;
  *(a1 + 32) = v37;
  return result;
}

uint64_t sub_42558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  v39 = a8;
  v37 = a7;
  v35 = a6;
  v33 = a4;
  v38 = a3;
  v36 = a2;
  v34 = a1;
  v42 = a9;
  v40 = a11;
  v41 = a12;
  v32 = a10;
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  v13 = sub_596A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = sub_58CB0();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v31 - v24;
  v43 = v33;
  v44 = a5;
  v45 = v35;
  v46 = v37;
  v47 = v39;
  v48 = v32;
  v49 = v34;
  v50 = v36;
  v51 = v38;
  sub_58F20();
  v26 = sub_59690();
  v41(v26);
  WitnessTable = swift_getWitnessTable();
  sub_594A0();
  (*(v14 + 8))(v17, v13);
  v52 = WitnessTable;
  v53 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v27 = v19[2];
  v27(v25, v23, v18);
  v28 = v19[1];
  v28(v23, v18);
  v27(v42, v25, v18);
  return (v28)(v25, v18);
}

uint64_t sub_428E8@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a2;
  v25 = a4;
  v26 = a5;
  v6 = *(a3 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = sub_4224C(&v31);
  v14 = v31;
  v15 = v32;
  v16 = v33;
  v23[0] = v34;
  v17 = v35;
  v24(v13);
  v18 = v6[2];
  v18(v12, v10, a3);
  v19 = v6[1];
  v23[1] = v6 + 1;
  v24 = v19;
  (v19)(v10, a3);
  v31 = v14;
  v32 = v15;
  v20 = v23[0];
  v33 = v16;
  v34 = v23[0];
  v35 = v17;
  v30[0] = &v31;
  v18(v10, v12, a3);
  v30[1] = v10;
  sub_50454(v14, v15, v16, v20, v17);
  v29[0] = sub_187C(&qword_72050, qword_5ED18);
  v29[1] = a3;
  v27 = sub_504A8();
  v28 = v25;
  sub_3C784(v30, 2uLL, v29);
  sub_5052C(v14, v15, v16, v20, v17);
  v21 = v24;
  (v24)(v12, a3);
  (v21)(v10, a3);
  return sub_5052C(v31, v32, v33, v34, v35);
}

uint64_t sub_42B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a1;
  v63 = a2;
  v49 = sub_58E80();
  v48 = *(v49 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v49);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a1 + 16);
  sub_58CB0();
  sub_1F64(&qword_71F88, &qword_5EBF8);
  v5 = *(a1 + 24);
  sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  sub_59B10();
  swift_getTupleTypeMetadata2();
  sub_59840();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_596A0();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  sub_1F64(&qword_70AB8, &qword_5AB98);
  v10 = sub_58CB0();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = sub_58CB0();
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = sub_58CB0();
  v60 = *(v18 - 8);
  v19 = *(v60 + 64);
  __chkstk_darwin(v18);
  v57 = &v46 - v20;
  v61 = v21;
  v22 = sub_58CB0();
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  v24 = __chkstk_darwin(v22);
  v58 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v46 - v26;
  sub_58F00();
  v27 = *sub_2BC24();
  v64 = v54;
  v65 = v5;
  v66 = *(v52 + 32);
  v28 = v55;
  v67 = v55;
  sub_59690();
  LODWORD(v76) = sub_59170();
  v29 = swift_getWitnessTable();
  sub_59410();
  (*(v51 + 8))(v9, v6);
  v30 = sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98);
  v74 = v29;
  v75 = v30;
  v31 = swift_getWitnessTable();
  sub_594B0();
  (*(v53 + 8))(v13, v10);
  v77 = *(v28 + 56);
  v76 = *(v28 + 48);
  if (v77 != 1)
  {

    sub_59AD0();
    v32 = sub_591D0();
    sub_58A10();

    v33 = v47;
    sub_58E70();
    swift_getAtKeyPath();
    sub_6678(&v76, &qword_71C28, &qword_5DE98);
    (*(v48 + 8))(v33, v49);
  }

  v72 = v31;
  v73 = &protocol witness table for _PaddingLayout;
  v34 = swift_getWitnessTable();
  v35 = v57;
  sub_594E0();
  (*(v56 + 8))(v17, v14);
  v36 = *(v28 + 40);
  if (v36 != 2)
  {
    sub_2BC64(v36 & 1);
  }

  sub_2BC64(*v28);
  v37 = *sub_2B9A8();
  sub_597E0();
  v70 = v34;
  v71 = &protocol witness table for _FixedSizeLayout;
  v38 = v61;
  v39 = swift_getWitnessTable();
  v40 = v58;
  sub_59490();
  (*(v60 + 8))(v35, v38);
  v68 = v39;
  v69 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v41 = v62;
  v42 = *(v62 + 16);
  v43 = v59;
  v42(v59, v40, v22);
  v44 = *(v41 + 8);
  v44(v40, v22);
  v42(v63, v43, v22);
  return (v44)(v43, v22);
}

uint64_t sub_433B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a5;
  v102 = a4;
  v103 = a6;
  v9 = sub_1F64(&qword_71F88, &qword_5EBF8);
  v10 = sub_58CB0();
  v90 = v9;
  swift_getTupleTypeMetadata2();
  v11 = sub_59840();
  v101 = *(v11 - 8);
  v12 = *(v101 + 64);
  v13 = __chkstk_darwin(v11);
  v91 = &v78 - v14;
  v85 = a3;
  v84 = *(a3 - 8);
  v15 = *(v84 + 64);
  v16 = __chkstk_darwin(v13);
  v83 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v10;
  v89 = *(v10 - 8);
  v18 = *(v89 + 64);
  v19 = __chkstk_darwin(v16);
  v88 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v86 = &v78 - v21;
  v22 = sub_187C(&qword_71C30, &qword_5DEA0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v82 = (&v78 - v24);
  v106 = v11;
  v105 = sub_59B10();
  v99 = *(v105 - 8);
  v25 = *(v99 + 64);
  v26 = __chkstk_darwin(v105);
  v104 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v107 = &v78 - v29;
  v30 = *(a2 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_58CB0();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = __chkstk_darwin(v34);
  v39 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v78 - v41;
  v43 = *(a1 + 16);
  (*(a1 + 8))(v40);
  sub_597D0();
  v44 = v102;
  sub_594A0();
  (*(v30 + 8))(v33, a2);
  v121 = v44;
  v122 = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  v45 = v35[2];
  v100 = v42;
  v94 = v35 + 2;
  v93 = v45;
  v45(v42, v39, v34);
  v46 = v35[1];
  v98 = v39;
  v96 = v34;
  v102 = v35 + 1;
  v97 = v46;
  v46(v39, v34);
  v47 = *(a1 + 24);
  if (v47)
  {
    v81 = *(a1 + 32);

    v48 = sub_595B0();
    v49 = *sub_2BC04();
    sub_59250();
    v50 = sub_59240();
    v51 = v82;
    (*(*(v50 - 8) + 56))(v82, 1, 1, v50);
    v80 = sub_59270();
    sub_6678(v51, &qword_71C30, &qword_5DEA0);
    KeyPath = swift_getKeyPath();
    v79 = sub_59180();
    v53 = v83;
    v47();
    sub_597D0();
    v54 = v87;
    v82 = v47;
    v55 = v85;
    v56 = v88;
    sub_594A0();
    (*(v84 + 8))(v53, v55);
    v114 = v54;
    v115 = &protocol witness table for _FlexFrameLayout;
    v57 = v92;
    v87 = swift_getWitnessTable();
    v58 = v89;
    v59 = *(v89 + 16);
    v60 = v86;
    v59(v86, v56, v57);
    v61 = *(v58 + 8);
    v61(v56, v57);
    v78 = v48;
    v110 = v48;
    v111 = KeyPath;
    v112 = v80;
    v113 = v79;
    v119 = &v110;
    v59(v56, v60, v57);
    v62 = v106;
    v120 = v56;

    v117 = v90;
    v118 = v57;
    v108 = sub_4DBB0();
    v109 = v87;
    v63 = v91;
    sub_3C784(&v119, 2uLL, &v117);
    sub_4F190(v82);

    v61(v60, v57);
    v61(v56, v57);

    v64 = v101;
    v65 = v104;
    (*(v101 + 32))(v104, v63, v62);
    (*(v64 + 56))(v65, 0, 1, v62);
  }

  else
  {
    v65 = v104;
    (*(v101 + 56))(v104, 1, 1, v106);
  }

  swift_getWitnessTable();
  v66 = v99;
  v67 = *(v99 + 16);
  v68 = v105;
  v67(v107, v65, v105);
  v69 = *(v66 + 8);
  v69(v65, v68);
  v70 = v98;
  v71 = v100;
  v72 = v96;
  v93(v98, v100, v96);
  v110 = v70;
  v73 = v107;
  v74 = v105;
  v67(v65, v107, v105);
  v111 = v65;
  v119 = v72;
  v120 = v74;
  v117 = WitnessTable;
  v116 = swift_getWitnessTable();
  v118 = swift_getWitnessTable();
  sub_3C784(&v110, 2uLL, &v119);
  v69(v73, v74);
  v75 = v71;
  v76 = v97;
  v97(v75, v72);
  v69(v65, v74);
  return v76(v70, v72);
}

uint64_t sub_43EA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_42B10(a1, a2);
}

uint64_t sub_43EEC()
{
  v1 = sub_58E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 32);
  v6 = *(v0 + 24);
  v10 = v6;
  if (v11 != 1)
  {

    sub_59AD0();
    v7 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_6678(&v10, &qword_71C28, &qword_5DE98);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_4404C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_58E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_187C(&qword_710B0, &qword_5DEF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_6610(v2, &v16 - v11, &qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_4EB64(v12, a1, &qword_71078, &qword_5C378);
  }

  v14 = *v12;
  sub_59AD0();
  v15 = sub_591D0();
  sub_58A10();

  sub_58E70();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_4422C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_58E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_187C(&qword_71CA8, &qword_5DF70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_6610(v2, &v17 - v11, &qword_71CA8, &qword_5DF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_58CA0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_59AD0();
    v16 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_4442C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_187C(&qword_71C30, &qword_5DEA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_187C(&qword_71C38, &qword_5DEA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v38 = &v36 - v10;
  v11 = sub_58E80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v1 + 32);
  v17 = v1[3];
  v52 = v17;
  if (v53 == 1)
  {
    if ((v17 & 1) == 0)
    {
      return (*(v8 + 56))(a1, 1, 1, v7);
    }
  }

  else
  {
    v37 = v14;

    sub_59AD0();
    v18 = sub_591D0();
    v39 = v8;
    v19 = v18;
    sub_58A10();

    v8 = v39;
    sub_58E70();
    swift_getAtKeyPath();
    sub_6678(&v52, &qword_71C28, &qword_5DE98);
    (*(v12 + 8))(v16, v37);
    if (LOBYTE(v50[0]) != 1)
    {
      return (*(v8 + 56))(a1, 1, 1, v7);
    }
  }

  if (v1[2])
  {
    v20 = *v1;
    v21 = v1[1];
    sub_598F0();
    v39 = v8;
    v22 = sub_59240();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_59270();
    sub_6678(v6, &qword_71C30, &qword_5DEA0);
    sub_59230();

    v23 = sub_592E0();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    sub_597D0();
    sub_58BF0();
    LOBYTE(v50[0]) = v27 & 1;
    v30 = sub_59190();
    v31 = *sub_2A0AC();

    v32 = sub_59200();
    *&v40 = v23;
    *(&v40 + 1) = v25;
    LOBYTE(v41) = v27 & 1;
    *(&v41 + 1) = v29;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    LODWORD(v45) = v30;
    *(&v45 + 1) = v31;
    v46 = v32;
    sub_187C(&qword_71C40, &qword_5DEB0);
    sub_4A8C4();
    v33 = v38;
    sub_29CA0(2);
    v50[4] = v44;
    v50[5] = v45;
    v51 = v46;
    v50[0] = v40;
    v50[1] = v41;
    v50[2] = v42;
    v50[3] = v43;
    sub_6678(v50, &qword_71C40, &qword_5DEB0);
    v34 = v39;
    (*(v39 + 32))(a1, v33, v7);
    return (*(v34 + 56))(a1, 0, 1, v7);
  }

  return (*(v8 + 56))(a1, 1, 1, v7);
}

uint64_t sub_448C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_448E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_44918@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v2 + 32);
  v20 = *(v2 + 24);
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  v22[0] = v12;
  v22[1] = v13;
  v23 = v14;
  v24 = KeyPath;
  v25 = 0;
  sub_B4D0(v12, v13, v14);
  v20(v22);
  sub_EAAC(v12, v13, v14);

  v16 = v4[2];
  v16(v10, v8, v3);
  v17 = v4[1];
  v17(v8, v3);
  v16(v21, v10, v3);
  return (v17)(v10, v3);
}

uint64_t sub_44AC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_44AEC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_44B1C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_44BA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v75 = a1;
  v72 = *(a1 - 8);
  v73 = *(v72 + 64);
  __chkstk_darwin(a1);
  v71 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F64(&qword_71C70, &qword_5DF20);
  v76 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  sub_58CB0();
  WitnessTable = swift_getWitnessTable();
  v92 = &protocol witness table for _FlexFrameLayout;
  v61 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v58 = swift_getWitnessTable();
  v4 = sub_596D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v56 - v7;
  v9 = sub_58CB0();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = sub_58CB0();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v63 = sub_58CB0();
  v64 = *(v63 - 8);
  v17 = *(v64 + 64);
  __chkstk_darwin(v63);
  v19 = &v56 - v18;
  v20 = sub_58CB0();
  v67 = *(v20 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v20);
  v60 = &v56 - v22;
  sub_1F64(&qword_71C78, &qword_5DF28);
  v68 = v20;
  v69 = sub_58CB0();
  v70 = *(v69 - 8);
  v23 = *(v70 + 64);
  v24 = __chkstk_darwin(v69);
  v65 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v66 = &v56 - v26;
  v57 = *(v75 + 24);
  v78 = v76;
  v79 = v57;
  v80 = v77;
  sub_58FD0();
  sub_596C0();
  v27 = swift_getWitnessTable();
  sub_59420();
  (*(v5 + 8))(v8, v4);
  sub_59210();
  v28 = *sub_2BA14();
  v89 = v27;
  v90 = &protocol witness table for _CompositingGroupEffect;
  v29 = swift_getWitnessTable();
  sub_594C0();
  (*(v59 + 8))(v12, v9);
  v30 = *sub_2B9A8();
  sub_597D0();
  v87 = v29;
  v88 = &protocol witness table for _PaddingLayout;
  v55 = swift_getWitnessTable();
  sub_594A0();
  (*(v62 + 8))(v16, v13);
  sub_58FB0();
  v31 = v72;
  v32 = v71;
  v33 = v75;
  (*(v72 + 16))(v71, v77, v75);
  v34 = v31;
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 16) = v76;
  *(v36 + 24) = v37;
  (*(v34 + 32))(v36 + v35, v32, v33);
  v85 = v55;
  v86 = &protocol witness table for _FlexFrameLayout;
  v38 = v60;
  v39 = v63;
  v40 = swift_getWitnessTable();
  sub_59400();

  (*(v64 + 8))(v19, v39);
  sub_45D7C(v33);
  if (v41 <= 0.0)
  {
    v43 = 0x4034000000000000;
  }

  else
  {
    v42 = sub_2B9CC();
    if (v42[1])
    {
      v43 = 0;
    }

    else
    {
      v43 = *v42;
    }
  }

  v44 = *sub_2B9E4();
  v93 = 0;
  v94 = v43;
  v95 = 0;
  v96 = v44;
  v97 = 0;
  v83 = v40;
  v84 = &protocol witness table for _AlignmentWritingModifier;
  v45 = v68;
  v46 = swift_getWitnessTable();
  v47 = v65;
  sub_593E0();
  (*(v67 + 8))(v38, v45);
  v48 = sub_6ED0(&qword_71C80, &qword_71C78, &qword_5DF28);
  v81 = v46;
  v82 = v48;
  v49 = v69;
  swift_getWitnessTable();
  v50 = v70;
  v51 = *(v70 + 16);
  v52 = v66;
  v51(v66, v47, v49);
  v53 = *(v50 + 8);
  v53(v47, v49);
  v51(v74, v52, v49);
  return (v53)(v52, v49);
}

uint64_t sub_45554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22 = a1;
  v23 = a3;
  v25 = a4;
  sub_1F64(&qword_71C70, &qword_5DF20);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  v5 = sub_596A0();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_58CB0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_58F00();
  v17 = *sub_2B9C0();
  v26 = a2;
  v27 = v23;
  v28 = v22;
  sub_59690();
  sub_597D0();
  WitnessTable = swift_getWitnessTable();
  sub_594A0();
  (*(v24 + 8))(v8, v5);
  v29 = WitnessTable;
  v30 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v18 = v10[2];
  v18(v16, v14, v9);
  v19 = v10[1];
  v19(v14, v9);
  v18(v25, v16, v9);
  return (v19)(v16, v9);
}

uint64_t sub_45890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v53 = *(a2 - 8);
  v7 = *(v53 + 64);
  v8 = __chkstk_darwin(a1);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v44 - v10;
  v11 = sub_187C(&qword_71B48, &unk_5DE00);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = sub_58E80();
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_187C(&qword_71C70, &qword_5DF20);
  v20 = *(*(v47 - 8) + 64);
  v21 = __chkstk_darwin(v47);
  v49 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v44 - v23;
  v52 = a3;
  v25 = type metadata accessor for FeatureRowView();
  v26 = a1 + *(v25 + 48);
  v27 = *v26;
  if (*(v26 + 8) != 1)
  {

    sub_59AD0();
    v44 = v16;
    v29 = sub_591D0();
    v45 = v24;
    v30 = v29;
    sub_58A10();

    v24 = v45;
    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v27, 0);
    (*(v46 + 8))(v19, v44);
    if (LOBYTE(v57[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = a1 + *(v25 + 44);
    sub_4404C(v15);
    LOBYTE(v31) = *a1;
    v32 = &v15[v11[11]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v15[v11[9]];
    *v33 = 0;
    *(v33 + 1) = 0;
    v15[v11[10]] = v31;
    sub_4EB64(v15, v24, &qword_71B48, &unk_5DE00);
    v28 = 0;
    goto LABEL_6;
  }

  if (v27)
  {
    goto LABEL_5;
  }

LABEL_3:
  v28 = 1;
LABEL_6:
  v34 = (*(v12 + 56))(v24, v28, 1, v11);
  v35 = *(a1 + 16);
  v36 = v48;
  (*(a1 + 8))(v34);
  v37 = v53;
  v38 = *(v53 + 16);
  v39 = v24;
  v40 = v50;
  v38(v50, v36, a2);
  v41 = *(v37 + 8);
  v41(v36, a2);
  v42 = v49;
  sub_6610(v39, v49, &qword_71C70, &qword_5DF20);
  v57[0] = v42;
  v38(v36, v40, a2);
  v57[1] = v36;
  v56[0] = v47;
  v56[1] = a2;
  v54 = sub_4F09C();
  v55 = v52;
  sub_3C784(v57, 2uLL, v56);
  v41(v40, a2);
  sub_6678(v39, &qword_71C70, &qword_5DF20);
  v41(v36, a2);
  return sub_6678(v42, &qword_71C70, &qword_5DF20);
}

uint64_t sub_45D7C(uint64_t a1)
{
  v3 = sub_58E80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_187C(&qword_710B0, &qword_5DEF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v23 - v10);
  v12 = sub_187C(&qword_71078, &qword_5C378);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  sub_6610(&v1[*(a1 + 44)], v11, &qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_4EB64(v11, v15, &qword_71078, &qword_5C378);
  }

  else
  {
    v16 = *v11;
    sub_59AD0();
    v17 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  v18 = type metadata accessor for FeaturePreviewConfiguration(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    result = sub_6678(v15, &qword_71078, &qword_5C378);
    v20 = *v1;
    if (v20 == 2)
    {
      return result;
    }

    v21 = v20 & 1;
  }

  else
  {
    v21 = v15[*(v18 + 44)];
    sub_39300(v15);
  }

  sub_2BC64(v21);
  result = sub_2B9CC();
  v22 = *result;
  *(result + 8);
  return result;
}

uint64_t sub_46060@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  v6 = type metadata accessor for FeatureRowView();
  v7 = *(v6 + 44);
  *(a5 + v7) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v8 = a5 + *(v6 + 48);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_46100()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_4614C()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return v2;
}

uint64_t sub_461A4()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  sub_187C(&qword_70C90, &qword_5DDD0);
  return sub_596F0();
}

void (*sub_46200(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 112);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return sub_462B4;
}

void sub_462B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_596F0();

  free(v1);
}

uint64_t sub_4632C()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_59700();
  return v2;
}

uint64_t sub_46388@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeatureToggleView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  sub_4ADE4(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureToggleView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureToggleView);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = sub_4AD98;
  *(a1 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_464C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeatureToggleView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(a2 + 88);
  v10 = *(a2 + 89);
  sub_4ADE4(a2, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeatureToggleView);
  v23 = *a1;
  v24 = *(a1 + 16);
  v21 = *(a1 + 3);
  v22 = *(a1 + 32);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_4AE50(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v12 + v11, type metadata accessor for FeatureToggleView);
  v13 = v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = a1[1];
  *v13 = *a1;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a1 + 32);
  *a3 = v9;
  *(a3 + 1) = v10;
  *(a3 + 8) = sub_4EE60;
  *(a3 + 16) = v12;
  v15 = sub_187C(&qword_71FE8, &qword_5ECD0);
  v16 = *(v15 + 44);
  *(a3 + v16) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  sub_E9F8(&v23, v20);
  return sub_6610(&v21, v20, &qword_71C28, &qword_5DE98);
}

uint64_t sub_466D8@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v109 = a3;
  v4 = sub_58EE0();
  v103 = *(v4 - 8);
  v104 = v4;
  v5 = *(v103 + 64);
  __chkstk_darwin(v4);
  v101 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_187C(&qword_71FF0, &qword_5ECD8);
  v108 = *(v102 - 8);
  v7 = *(v108 + 64);
  __chkstk_darwin(v102);
  v105 = &v93 - v8;
  v107 = sub_187C(&qword_71FF8, &qword_5ECE0);
  v9 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v106 = &v93 - v10;
  v118 = sub_187C(&qword_72000, &qword_5ECE8);
  v110 = *(v118 - 8);
  v11 = *(v110 + 64);
  v12 = __chkstk_darwin(v118);
  v117 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v116 = &v93 - v14;
  v15 = sub_187C(&qword_71B48, &unk_5DE00);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v93 - v18;
  v20 = sub_187C(&qword_71078, &qword_5C378);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v99 = &v93 - v22;
  v23 = type metadata accessor for FeaturePreviewConfiguration(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v95 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_58E80();
  v97 = *(v27 - 8);
  v98 = v27;
  v28 = *(v97 + 64);
  __chkstk_darwin(v27);
  v96 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_187C(&qword_71C70, &qword_5DF20);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v120 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v119 = &v93 - v34;
  v35 = a1[1];
  v130 = *a1;
  v131 = v35;
  sub_66D8();

  v36 = sub_59310();
  v113 = v37;
  v114 = v36;
  v39 = v38;
  v115 = v40;
  v41 = *sub_2B9A8();
  sub_597E0();
  sub_58D00();
  v111 = v39 & 1;
  v152 = v39 & 1;
  KeyPath = swift_getKeyPath();
  v42 = type metadata accessor for FeatureToggleView(0);
  v43 = a1 + *(v42 + 40);
  v44 = *v43;
  v45 = a1;
  if (v43[8] == 1)
  {
    if (v44)
    {
LABEL_3:
      v46 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v94 = v42;

    sub_59AD0();
    v47 = v24;
    v48 = v23;
    v49 = v19;
    v50 = v16;
    v51 = v15;
    v52 = a1;
    v53 = sub_591D0();
    v45 = v52;
    v15 = v51;
    v16 = v50;
    v19 = v49;
    v23 = v48;
    v24 = v47;
    sub_58A10();

    v54 = v96;
    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v44, 0);
    (*(v97 + 8))(v54, v98);
    v42 = v94;
    if (v130)
    {
      goto LABEL_3;
    }
  }

  v55 = v45 + *(v42 + 36);
  v56 = v99;
  sub_4404C(v99);
  if ((*(v24 + 48))(v56, 1, v23) == 1)
  {
    sub_6678(v56, &qword_71078, &qword_5C378);
    v46 = 1;
  }

  else
  {
    v57 = v56;
    v58 = v95;
    sub_4AE50(v57, v95, type metadata accessor for FeaturePreviewConfiguration);
    sub_4AE50(v58, v19, type metadata accessor for FeaturePreviewConfiguration);
    (*(v24 + 56))(v19, 0, 1, v23);
    v59 = &v19[v15[11]];
    *v59 = swift_getKeyPath();
    v59[8] = 0;
    v60 = &v19[v15[9]];
    *v60 = 0;
    *(v60 + 1) = 0;
    v19[v15[10]] = 2;
    sub_4EB64(v19, v119, &qword_71B48, &unk_5DE00);
    v46 = 0;
  }

LABEL_8:
  v61 = v119;
  (*(v16 + 56))(v119, v46, 1, v15);
  v62 = v45[13];
  v63 = *(v45 + 112);
  v130 = v45[12];
  v131 = v62;
  v132 = v63;
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_59700();
  v64 = v105;
  sub_596B0();
  v65 = v101;
  sub_58ED0();
  sub_6ED0(&qword_72008, &qword_71FF0, &qword_5ECD8);
  sub_4D92C(&qword_72010, &type metadata accessor for SwitchToggleStyle);
  v66 = v106;
  v67 = v102;
  v68 = v104;
  sub_59390();
  (*(v103 + 8))(v65, v68);
  (*(v108 + 8))(v64, v67);
  v69 = sub_58F00();
  v70 = (v66 + *(v107 + 36));
  *v70 = v69;
  v70[1] = sub_47324;
  v70[2] = 0;
  sub_4EF44();
  v71 = v116;
  sub_593C0();
  sub_6678(v66, &qword_71FF8, &qword_5ECE0);
  v155 = *v100;
  v156 = *(v100 + 16);
  LOBYTE(v66) = v156;
  v153 = *(v100 + 3);
  v72 = v153;
  v73 = v61;
  v154 = *(v100 + 32);
  v74 = v154;
  v75 = *v100;
  v107 = *(v100 + 1);
  v76 = v107;
  v108 = v75;
  sub_6610(v73, v120, &qword_71C70, &qword_5DF20);
  v77 = v110;
  v78 = *(v110 + 16);
  v78(v117, v71, v118);
  *&v121 = v114;
  *(&v121 + 1) = v113;
  LOBYTE(v122) = v111;
  *(&v122 + 1) = *v151;
  DWORD1(v122) = *&v151[3];
  *(&v122 + 1) = v115;
  v127 = v148;
  v128 = v149;
  v129[0] = v150;
  v123 = v144;
  v124 = v145;
  v125 = v146;
  v126 = v147;
  *&v129[1] = KeyPath;
  BYTE8(v129[1]) = 1;
  v79 = v149;
  v80 = v109;
  *(v109 + 96) = v148;
  *(v80 + 112) = v79;
  *(v80 + 128) = v129[0];
  v81 = v124;
  *(v80 + 32) = v123;
  *(v80 + 48) = v81;
  v82 = v126;
  *(v80 + 64) = v125;
  *(v80 + 80) = v82;
  v83 = v122;
  *v80 = v121;
  *(v80 + 16) = v83;
  *(v80 + 137) = *(v129 + 9);
  *(v80 + 160) = v75;
  *(v80 + 168) = v76;
  LOBYTE(v76) = v66 & 1;
  *(v80 + 176) = v66 & 1;
  LODWORD(v105) = v66 & 1;
  *(v80 + 184) = v72;
  v84 = v74 & 1;
  *(v80 + 192) = v84;
  LODWORD(v106) = v84;
  v85 = sub_187C(&qword_72020, &unk_5ECF0);
  sub_6610(v120, v80 + *(v85 + 64), &qword_71C70, &qword_5DF20);
  v86 = (v80 + *(v85 + 80));
  v87 = v117;
  v88 = v118;
  v78(v86, v117, v118);
  sub_E9F8(&v155, &v130);
  sub_6610(&v153, &v130, &qword_71C28, &qword_5DE98);
  sub_6610(&v121, &v130, &qword_71FD0, &qword_5EC88);
  v90 = v107;
  v89 = v108;
  sub_B4D0(v108, v107, v76);
  sub_4EAA0(v72, v84);
  v91 = *(v77 + 8);
  v91(v116, v88);
  sub_6678(v119, &qword_71C70, &qword_5DF20);
  v91(v87, v88);
  sub_6678(v120, &qword_71C70, &qword_5DF20);
  sub_EAAC(v89, v90, v105);
  sub_178CC(v72, v106);
  v130 = v114;
  v131 = v113;
  v132 = v111;
  *v133 = *v151;
  *&v133[3] = *&v151[3];
  v134 = v115;
  v139 = v148;
  v140 = v149;
  v141 = v150;
  v135 = v144;
  v136 = v145;
  v137 = v146;
  v138 = v147;
  v142 = KeyPath;
  v143 = 1;
  return sub_6678(&v130, &qword_71FD0, &qword_5EC88);
}

double sub_47324()
{
  sub_58F20();
  sub_58C80();
  return v0 + 5.0;
}

uint64_t sub_47354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v10 = *(a3 + 48);
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 64) = v10;
  *(a9 + 80) = *(a3 + 64);
  v11 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v11;
  *(a9 + 88) = a4;
  *(a9 + 89) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  v12 = type metadata accessor for FeatureToggleView(0);
  v13 = *(v12 + 36);
  *(a9 + v13) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v14 = a9 + *(v12 + 40);
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  return result;
}

uint64_t sub_47408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  sub_4ADE4(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureToggleView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureToggleView);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = sub_51890;
  *(a2 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_4754C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  *(v0 + 97);

  return v1;
}

uint64_t sub_475C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeatureOptionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  sub_4ADE4(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureOptionView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureOptionView);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = sub_4AEB8;
  *(a1 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_47708@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeatureOptionView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(a2 + 112);
  v10 = *(a2 + 113);
  sub_4ADE4(a2, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeatureOptionView);
  v23 = *a1;
  v24 = *(a1 + 16);
  v21 = *(a1 + 3);
  v22 = *(a1 + 32);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_4AE50(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v12 + v11, type metadata accessor for FeatureOptionView);
  v13 = v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = a1[1];
  *v13 = *a1;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a1 + 32);
  *a3 = v9;
  *(a3 + 1) = v10;
  *(a3 + 8) = sub_4E9FC;
  *(a3 + 16) = v12;
  v15 = sub_187C(&qword_71FB0, &qword_5EC38);
  v16 = *(v15 + 44);
  *(a3 + v16) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  sub_E9F8(&v23, v20);
  return sub_6610(&v21, v20, &qword_71C28, &qword_5DE98);
}

uint64_t sub_47918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v98 = a3;
  v4 = sub_187C(&qword_71FB8, &qword_5EC40);
  v102 = *(v4 - 8);
  v5 = *(v102 + 64);
  __chkstk_darwin(v4);
  v97 = &v91 - v6;
  v7 = sub_187C(&qword_71FC0, &qword_5EC48);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v108 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v91 - v11;
  v12 = sub_187C(&qword_71B48, &unk_5DE00);
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  __chkstk_darwin(v12);
  v92 = &v91 - v14;
  v15 = sub_187C(&qword_71078, &qword_5C378);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for FeaturePreviewConfiguration(0);
  v95 = *(v19 - 8);
  v96 = v19;
  v20 = *(v95 + 64);
  __chkstk_darwin(v19);
  v91 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_58E80();
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  __chkstk_darwin(v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_187C(&qword_71C70, &qword_5DF20);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v111 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v91 - v30;
  v32 = a1[11];
  v121 = a1[10];
  v122 = v32;
  sub_66D8();

  v33 = sub_59310();
  v105 = v34;
  v106 = v33;
  v36 = v35;
  v107 = v37;
  v38 = *sub_2B9A8();
  v39 = sub_597E0();
  v109 = v31;
  v89 = v39;
  v90 = v40;
  v88 = 1;
  v87 = 0;
  sub_58D00();
  v103 = v36 & 1;
  v142 = v36 & 1;
  KeyPath = swift_getKeyPath();
  v41 = type metadata accessor for FeatureOptionView(0);
  v42 = a1 + *(v41 + 40);
  v43 = *v42;
  if (v42[8] == 1)
  {
    if (v43)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_59AD0();
    v44 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v43, 0);
    (*(v93 + 8))(v25, v94);
    if (v121)
    {
LABEL_7:
      v48 = 1;
      v49 = v100;
      goto LABEL_9;
    }
  }

  v45 = a1 + *(v41 + 36);
  sub_4404C(v18);
  v47 = v95;
  v46 = v96;
  if ((*(v95 + 48))(v18, 1, v96) == 1)
  {
    sub_6678(v18, &qword_71078, &qword_5C378);
    goto LABEL_7;
  }

  v50 = v18;
  v51 = v91;
  sub_4AE50(v50, v91, type metadata accessor for FeaturePreviewConfiguration);
  v52 = v51;
  v53 = v92;
  sub_4AE50(v52, v92, type metadata accessor for FeaturePreviewConfiguration);
  (*(v47 + 56))(v53, 0, 1, v46);
  v54 = v100;
  v55 = v53 + *(v100 + 44);
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  v56 = (v53 + *(v54 + 36));
  *v56 = 0;
  v56[1] = 0;
  *(v53 + *(v54 + 40)) = 2;
  sub_4EB64(v53, v109, &qword_71B48, &unk_5DE00);
  v49 = v54;
  v48 = 0;
LABEL_9:
  v57 = (*(v99 + 56))(v109, v48, 1, v49);
  v58 = a1[13];
  __chkstk_darwin(v57);
  v89 = a1;
  v60 = sub_483FC(sub_4EA28, &v87, v59);
  v61 = 1;
  if (v60)
  {
    v62 = sub_595B0();
    v63 = sub_59520();
    v100 = v4;
    v64 = v63;
    v65 = swift_getKeyPath();
    v121 = v62;
    v122 = v65;
    v123 = v64;
    sub_59260();
    sub_187C(&qword_71FD8, &unk_5ECC0);
    sub_4EAAC();
    v66 = v97;
    sub_59340();
    v67 = v100;

    v68 = v66;
    v4 = v67;
    (*(v102 + 32))(v110, v68, v67);
    v61 = 0;
  }

  v69 = v110;
  (*(v102 + 56))(v110, v61, 1, v4);
  v145 = *v101;
  v146 = *(v101 + 16);
  v70 = v146;
  v71 = *(v101 + 3);
  v143 = v71;
  v144 = *(v101 + 32);
  v72 = v144;
  v73 = *(v101 + 1);
  v100 = *v101;
  v74 = v100;
  v101 = v73;
  v102 = v71;
  v75 = v109;
  sub_6610(v109, v111, &qword_71C70, &qword_5DF20);
  v76 = v108;
  sub_6610(v69, v108, &qword_71FC0, &qword_5EC48);
  *&v112 = v106;
  *(&v112 + 1) = v105;
  LOBYTE(v113) = v103;
  *(&v113 + 1) = *v141;
  DWORD1(v113) = *&v141[3];
  *(&v113 + 1) = v107;
  v118 = v138;
  v119 = v139;
  v120[0] = v140;
  v114 = v134;
  v115 = v135;
  v117 = v137;
  v116 = v136;
  *&v120[1] = KeyPath;
  BYTE8(v120[1]) = 1;
  v77 = v139;
  v78 = v98;
  *(v98 + 96) = v138;
  *(v78 + 112) = v77;
  *(v78 + 128) = v120[0];
  v79 = v115;
  *(v78 + 32) = v114;
  *(v78 + 48) = v79;
  v80 = v117;
  *(v78 + 64) = v116;
  *(v78 + 80) = v80;
  v81 = v113;
  *v78 = v112;
  *(v78 + 16) = v81;
  *(v78 + 137) = *(v120 + 9);
  *(v78 + 160) = v74;
  *(v78 + 168) = v73;
  v70 &= 1u;
  *(v78 + 176) = v70;
  *(v78 + 184) = v71;
  v72 &= 1u;
  *(v78 + 192) = v72;
  v82 = sub_187C(&qword_71FC8, &qword_5EC80);
  sub_6610(v111, v78 + *(v82 + 64), &qword_71C70, &qword_5DF20);
  sub_6610(v76, v78 + *(v82 + 80), &qword_71FC0, &qword_5EC48);
  sub_E9F8(&v145, &v121);
  sub_6610(&v143, &v121, &qword_71C28, &qword_5DE98);
  sub_6610(&v112, &v121, &qword_71FD0, &qword_5EC88);
  v83 = v100;
  v84 = v101;
  sub_B4D0(v100, v101, v70);
  v85 = v102;
  sub_4EAA0(v102, v72);
  sub_6678(v110, &qword_71FC0, &qword_5EC48);
  sub_6678(v75, &qword_71C70, &qword_5DF20);
  sub_6678(v108, &qword_71FC0, &qword_5EC48);
  sub_6678(v111, &qword_71C70, &qword_5DF20);
  sub_EAAC(v83, v84, v70);
  sub_178CC(v85, v72);
  v121 = v106;
  v122 = v105;
  LOBYTE(v123) = v103;
  *(&v123 + 1) = *v141;
  HIDWORD(v123) = *&v141[3];
  v124 = v107;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v125 = v134;
  v126 = v135;
  v128 = v137;
  v127 = v136;
  v132 = KeyPath;
  v133 = 1;
  return sub_6678(&v121, &qword_71FD0, &qword_5EC88);
}

uint64_t sub_483FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v13[2] = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v7 += 3;
      v11 = v6-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_484C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v10 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v12;
  *(a9 + 64) = v11;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5 & 1;
  *(a9 + 97) = HIBYTE(a5) & 1;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 113) = a8;
  v13 = type metadata accessor for FeatureOptionView(0);
  v14 = *(v13 + 36);
  *(a9 + v14) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v15 = a9 + *(v13 + 40);
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_48580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  sub_4ADE4(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureOptionView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureOptionView);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = sub_5188C;
  *(a2 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_486B8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_486E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_48720()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_4878C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F64(&qword_70AD8, &qword_5ABA8);
  v10 = sub_58CB0();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = *(a1 + 24);
  v15 = sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8);
  v71 = v14;
  v72 = v15;
  WitnessTable = swift_getWitnessTable();
  *&v73[0] = v10;
  *(&v73[0] + 1) = WitnessTable;
  v17 = WitnessTable;
  v55 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = OpaqueTypeMetadata2;
  v60 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v60 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v54 = &v52 - v20;
  *&v73[0] = v10;
  *(&v73[0] + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v73[0] = OpaqueTypeMetadata2;
  *(&v73[0] + 1) = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  __chkstk_darwin(v21);
  v53 = &v52 - v23;
  sub_1F64(&qword_71C88, &unk_5DF30);
  v64 = v21;
  v58 = sub_58CB0();
  v65 = *(v58 - 8);
  v24 = *(v65 + 64);
  v25 = __chkstk_darwin(v58);
  v61 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v62 = &v52 - v28;
  v29 = *(v3 + 8);
  (*v3)(v27);
  sub_4AF7C();
  v30 = v13;
  sub_593A0();
  (*(v6 + 8))(v9, v5);
  v31 = *(v3 + 24);
  v73[0] = *(v3 + 32);
  v32 = swift_allocObject();
  *(v32 + 16) = v5;
  *(v32 + 24) = v14;
  v33 = *(v3 + 16);
  *(v32 + 32) = *v3;
  *(v32 + 48) = v33;
  *(v32 + 64) = *(v3 + 32);

  sub_6610(v73, &v70, &qword_70C88, &unk_5AE60);
  v34 = v54;
  sub_593D0();
  v35 = v53;

  (*(v59 + 8))(v30, v10);
  v36 = swift_allocObject();
  *(v36 + 16) = v5;
  *(v36 + 24) = v14;
  v37 = *(v3 + 16);
  *(v36 + 32) = *v3;
  *(v36 + 48) = v37;
  *(v36 + 64) = *(v3 + 32);
  v38 = OpaqueTypeConformance2;

  sub_6610(v73, &v70, &qword_70C88, &unk_5AE60);
  v39 = v57;
  sub_59460();

  (*(v60 + 8))(v34, v39);
  v70 = v73[0];
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59630();
  v40 = 0;
  if (v69 == 1)
  {
    v41 = [objc_opt_self() systemGray5Color];
    v40 = sub_59510();
  }

  v69 = v40;
  *&v70 = v39;
  *(&v70 + 1) = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v61;
  v44 = v64;
  sub_59430();

  (*(v63 + 8))(v35, v44);
  v45 = sub_6ED0(&qword_71C98, &qword_71C88, &unk_5DF30);
  v67 = v42;
  v68 = v45;
  v46 = v58;
  swift_getWitnessTable();
  v47 = v65;
  v48 = *(v65 + 16);
  v49 = v62;
  v48(v62, v43, v46);
  v50 = *(v47 + 8);
  v50(v43, v46);
  v48(v66, v49, v46);
  return (v50)(v49, v46);
}

uint64_t sub_48EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_59620();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  return result;
}

uint64_t sub_48F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_48F78@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_48FB8()
{
  v0 = sub_58A90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  sub_58A80();

  sub_58A70();
  v8 = [objc_opt_self() clearColor];
  v9 = sub_58A60();
  sub_58A50();
  v9(v12, 0);
  sub_4B0E4();
  (*(v1 + 16))(v5, v7, v0);
  v10 = sub_59AF0();
  (*(v1 + 8))(v7, v0);
  return v10;
}

uint64_t sub_4915C()
{
  v1 = sub_58A90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v15[-v7];
  v10 = *v0;
  v9 = v0[1];

  sub_58A80();
  sub_58A70();
  v11 = [objc_opt_self() clearColor];
  v12 = sub_58A60();
  sub_58A50();
  v12(v15, 0);
  sub_4B0E4();
  (*(v2 + 16))(v6, v8, v1);
  v13 = sub_59AF0();
  (*(v2 + 8))(v8, v1);
  return v13;
}

uint64_t sub_49350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4E1E4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_493B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4E1E4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_49418()
{
  sub_4E1E4();
  sub_590C0();
  __break(1u);
}

id sub_494A8@<X0>(void *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a3;
  v10 = *(type metadata accessor for _GlyphShape(0) + 32);
  *(a4 + v10) = swift_getKeyPath();
  sub_187C(&qword_71CA8, &qword_5DF70);
  swift_storeEnumTagMultiPayload();
  v16 = a1;
  sub_52330();
  sub_597D0();
  sub_58BF0();
  v11 = (a4 + *(sub_187C(&qword_71CB0, &qword_5DF78) + 36));
  *v11 = v17;
  v11[1] = v18;
  v11[2] = v19;
  *(a4 + *(sub_187C(&qword_71CB8, &qword_5DF80) + 36)) = 257;
  v12 = sub_58F00();
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v13 + 24) = a2;
  *(v13 + 32) = a5;
  *(v13 + 40) = a3;
  v14 = (a4 + *(sub_187C(&qword_71CC0, &qword_5DF88) + 36));
  *v14 = v12;
  v14[1] = sub_4B188;
  v14[2] = v13;

  return v16;
}

CGPathRef sub_49664(double a1, CGFloat a2)
{
  v31 = *(v2 + 8);
  v3 = v31;
  v4 = *v2;
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(*v2, kCTFontOrientationDefault, &v31, 0, 1);
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  width = BoundingRectsForGlyphs.size.width;
  height = BoundingRectsForGlyphs.size.height;
  CGAffineTransformMakeScale(&t1, 1.0, -1.0);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  v11 = *(v2 + 16);
  CGAffineTransformMakeScale(&t1, v11, v11);
  v12 = *&t1.a;
  v13 = *&t1.c;
  v14 = *&t1.tx;
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v12;
  *&t2.c = v13;
  *&t2.tx = v14;
  CGAffineTransformConcat(&v28, &t1, &t2);
  v16 = v28.tx;
  v15 = v28.ty;
  v23 = *&v28.c;
  v25 = *&v28.a;
  sub_4DE30(v2, a1, x, y, width, height);
  v18 = v17;
  v19 = sub_522C4(a2);
  v20 = sub_52328();

  CGAffineTransformMakeTranslation(&t1, v18, a2 - v11 * v20);
  *&t2.a = v25;
  *&t2.c = v23;
  t2.tx = v16;
  t2.ty = v15;
  v28 = t1;
  CGAffineTransformConcat(&t1, &t2, &v28);
  return CTFontCreatePathForGlyph(v4, v3, &t1);
}

uint64_t sub_49834(uint64_t a1)
{
  v2 = sub_58CA0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_58DA0();
}

double sub_498FC@<D0>(uint64_t a1@<X8>, double a2@<D2>, CGFloat a3@<D3>)
{
  if (sub_49664(a2, a3))
  {
    sub_592C0();
  }

  else
  {
    sub_592B0();
  }

  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

void (*sub_49978(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_58B30();
  return sub_49A00;
}

void sub_49A00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_49A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4DA48(qword_77888);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_49ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4DA48(qword_77888);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_49B4C(uint64_t a1)
{
  v2 = sub_4DA48(qword_77888);

  return Shape.body.getter(a1, v2);
}

uint64_t sub_49BB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_58E10();
  *a1 = result;
  return result;
}

unint64_t sub_49C08()
{
  result = qword_71A58;
  if (!qword_71A58)
  {
    sub_1F64(&qword_71A38, &qword_5DD30);
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48);
    sub_6ED0(&qword_71A68, &qword_71A70, &qword_5DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A58);
  }

  return result;
}

unint64_t sub_49CEC()
{
  result = qword_71AB8;
  if (!qword_71AB8)
  {
    sub_1F64(&qword_71A88, &qword_5DD68);
    sub_51188(&qword_71AC0, &qword_71A80, &qword_5DD60, sub_49DD0);
    sub_6ED0(&qword_71A68, &qword_71A70, &qword_5DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AB8);
  }

  return result;
}

unint64_t sub_49DD0()
{
  result = qword_71AC8;
  if (!qword_71AC8)
  {
    sub_1F64(&qword_71AB0, &qword_5DD90);
    sub_6ED0(&qword_71AD0, &qword_71AD8, &qword_5DD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AC8);
  }

  return result;
}

unint64_t sub_49E88()
{
  result = qword_71AF0;
  if (!qword_71AF0)
  {
    sub_1F64(&qword_71AA0, &qword_5DD80);
    sub_49F40();
    sub_6ED0(&qword_71B00, &qword_71B08, &qword_5DDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AF0);
  }

  return result;
}

unint64_t sub_49F40()
{
  result = qword_71AF8;
  if (!qword_71AF8)
  {
    sub_1F64(&qword_71A98, &qword_5DD78);
    sub_1F64(&qword_71A88, &qword_5DD68);
    sub_49CEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AF8);
  }

  return result;
}

unint64_t sub_4A008()
{
  result = qword_71B10;
  if (!qword_71B10)
  {
    sub_1F64(&qword_71AE8, &qword_5DDA8);
    sub_4A08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B10);
  }

  return result;
}

unint64_t sub_4A08C()
{
  result = qword_71B18;
  if (!qword_71B18)
  {
    sub_1F64(&qword_71B20, &qword_5DDB8);
    sub_6ED0(&qword_71B28, &qword_71B30, &qword_5DDC0);
    sub_6ED0(&qword_71B38, &qword_71B40, &qword_5DDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B18);
  }

  return result;
}

uint64_t sub_4A170()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);

    sub_1F564();

    swift_getKeyPath();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;

    sub_187C(&qword_713F0, &qword_5CA68);
    sub_187C(&qword_71B20, &qword_5DDB8);
    sub_6ED0(&qword_72060, &qword_713F0, &qword_5CA68);
    sub_4D92C(&qword_715E0, type metadata accessor for CTFont);
    sub_4A08C();
    return sub_59720();
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel();
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

unint64_t sub_4A438()
{
  result = qword_71B68;
  if (!qword_71B68)
  {
    sub_1F64(&qword_71B50, &qword_5DE10);
    sub_4A5D8(&qword_71B70, &qword_71B78, &qword_5DE28, sub_4A51C);
    sub_4A5D8(&qword_71BA0, &qword_71BA8, &qword_5DE48, sub_4A654);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B68);
  }

  return result;
}

unint64_t sub_4A51C()
{
  result = qword_71B80;
  if (!qword_71B80)
  {
    sub_1F64(&qword_71B88, &qword_5DE30);
    sub_4A870(&qword_768D8, &qword_71B90, &qword_5DE38);
    sub_4A870(&qword_768E0, &qword_71B98, &qword_5DE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B80);
  }

  return result;
}

uint64_t sub_4A5D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4A654()
{
  result = qword_71BB0;
  if (!qword_71BB0)
  {
    sub_1F64(&qword_71BB8, &qword_5DE50);
    sub_4A870(&qword_768E8, &qword_71BC0, &qword_5DE58);
    sub_4A870(&qword_768F0, &qword_71BC8, &qword_5DE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71BB0);
  }

  return result;
}

unint64_t sub_4A710()
{
  result = qword_71BD8;
  if (!qword_71BD8)
  {
    sub_1F64(&qword_71BE0, &qword_5DE68);
    sub_4A870(&qword_768F8, &qword_71BE8, &qword_5DE70);
    sub_4A870(&qword_76900, &qword_71BF0, &qword_5DE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71BD8);
  }

  return result;
}

unint64_t sub_4A7CC()
{
  result = qword_71BF8;
  if (!qword_71BF8)
  {
    sub_1F64(&qword_71B60, &qword_5DE20);
    sub_4A870(qword_76908, &qword_71C00, &qword_5DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71BF8);
  }

  return result;
}

uint64_t sub_4A870(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4A8C4()
{
  result = qword_71C48;
  if (!qword_71C48)
  {
    sub_1F64(&qword_71C40, &qword_5DEB0);
    sub_4A97C();
    sub_6ED0(&qword_70AC0, &qword_70AC8, &qword_5ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C48);
  }

  return result;
}

unint64_t sub_4A97C()
{
  result = qword_71C50;
  if (!qword_71C50)
  {
    sub_1F64(&qword_71C58, &qword_5DEB8);
    sub_4AA34();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C50);
  }

  return result;
}

unint64_t sub_4AA34()
{
  result = qword_71C60;
  if (!qword_71C60)
  {
    sub_1F64(&qword_71C68, &qword_5DEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C60);
  }

  return result;
}

uint64_t sub_4AAC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FeatureRowView();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = *(v0 + v5 + 16);

  v8 = v0 + v5 + *(v3 + 44);
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v8 + 24);

      v11 = v8 + *(v9 + 28);
      v12 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
      {
        v16 = sub_58920();
        v17 = *(*(v16 - 8) + 8);
        v17(v11, v16);
        v17(v11 + *(v12 + 48), v16);
      }

      v13 = *(v8 + *(v9 + 40) + 8);
    }
  }

  else
  {
    v14 = *v8;
  }

  sub_178CC(*(v0 + v5 + *(v3 + 48)), *(v0 + v5 + *(v3 + 48) + 8));

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_4AD18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FeatureRowView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_45D7C(v3);
}

uint64_t sub_4ADE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4AE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4AEE4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_4AF7C()
{
  result = qword_71C90;
  if (!qword_71C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C90);
  }

  return result;
}

uint64_t sub_4AFD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_4AFFC()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_4B044()
{
  v2 = *(v0 + 16);
  sub_59820();
  sub_59800();

  sub_58C20();
}

unint64_t sub_4B0E4()
{
  result = qword_71CA0;
  if (!qword_71CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71CA0);
  }

  return result;
}

uint64_t sub_4B150()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_4B188()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = sub_523CC();
  v4 = sub_522C4(v2 * v3);
  sub_58C70();
  v6 = v5 - sub_52328();
  v7 = sub_5237C();

  return v6 - v7;
}

unint64_t sub_4B21C()
{
  result = qword_71CC8;
  if (!qword_71CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71CC8);
  }

  return result;
}

unint64_t sub_4B470()
{
  result = qword_71CD0;
  if (!qword_71CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71CD0);
  }

  return result;
}

uint64_t sub_4B524(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4B580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_4B5E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_4B61C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_4B638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_4B680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_4B6F4()
{
  sub_4D778(319, &qword_71CD8, type metadata accessor for FeaturePreviewConfiguration, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_4C4E0(319, &qword_71CE0, &qword_71CE8, qword_5E648, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_4B860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_187C(&qword_71078, &qword_5C378);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_4B948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_187C(&qword_71078, &qword_5C378);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

__n128 sub_4BA18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4BA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_4BA74(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_4BACC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_4BB08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4BB1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_4BB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_4BBCC()
{
  sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_4BE90();
    if (v1 <= 0x3F)
    {
      sub_4C4E0(319, &qword_71D08, &qword_71078, &qword_5C378, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_4BD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4BDE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_4BE90()
{
  result = qword_71D00;
  if (!qword_71D00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_71D00);
  }

  return result;
}

uint64_t sub_4BEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4BFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4C074()
{
  sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_4D728(319, &qword_70B88, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_4C4E0(319, &qword_71D08, &qword_71078, &qword_5C378, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_4C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4C2BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4C36C()
{
  sub_4C4E0(319, &unk_71E00, &qword_710D8, &qword_5C400, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_4C4E0(319, &qword_71D08, &qword_71078, &qword_5C378, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4C4E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1F64(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_4C544()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_4C580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_4C594(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_4C5DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_4C67C()
{
  result = qword_71E48;
  if (!qword_71E48)
  {
    sub_1F64(&qword_71A30, &qword_5DD28);
    sub_4C708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E48);
  }

  return result;
}

unint64_t sub_4C708()
{
  result = qword_71E50;
  if (!qword_71E50)
  {
    sub_1F64(&qword_71A18, &qword_5DCE0);
    sub_4C7C0();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E50);
  }

  return result;
}

unint64_t sub_4C7C0()
{
  result = qword_71E58;
  if (!qword_71E58)
  {
    sub_1F64(&qword_71A28, &qword_5DD20);
    sub_6ED0(&qword_71E60, &qword_71A20, &qword_5DD18);
    sub_6ED0(&qword_71E68, &qword_71E70, &qword_5E928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E58);
  }

  return result;
}

unint64_t sub_4C8A8()
{
  result = qword_71E78;
  if (!qword_71E78)
  {
    sub_1F64(&qword_71E80, &qword_5E930);
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48);
    sub_1F64(&qword_71A38, &qword_5DD30);
    sub_49C08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E78);
  }

  return result;
}

uint64_t sub_4C9A4()
{
  sub_1F64(&qword_71AA0, &qword_5DD80);
  sub_1F64(&qword_71AE8, &qword_5DDA8);
  sub_49E88();
  sub_4A008();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_4CA34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_59750();
  return swift_getWitnessTable();
}

uint64_t sub_4CAAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1F64(&qword_71B50, &qword_5DE10);
  sub_1F64(&qword_71B58, &qword_5DE18);
  type metadata accessor for FeaturePreviewContainerView();
  sub_59110();
  sub_59110();
  sub_1F64(&qword_71B60, &qword_5DE20);
  sub_59110();
  sub_595A0();
  sub_1F64(&qword_71C08, &qword_5DE88);
  sub_58CB0();
  sub_1F64(&qword_71C18, &qword_5DE90);
  sub_58CB0();
  sub_4A438();
  sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_4A7CC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_6ED0(&qword_71C10, &qword_71C08, &qword_5DE88);
  swift_getWitnessTable();
  sub_6ED0(&qword_71C20, &qword_71C18, &qword_5DE90);
  return swift_getWitnessTable();
}

unint64_t sub_4CD6C()
{
  result = qword_71E88;
  if (!qword_71E88)
  {
    sub_1F64(&qword_71E90, &qword_5E938);
    sub_1F64(&qword_71C40, &qword_5DEB0);
    sub_4A8C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E88);
  }

  return result;
}

uint64_t sub_4CE34(uint64_t *a1)
{
  v1 = *a1;
  sub_1F64(&qword_71C70, &qword_5DF20);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  sub_58CB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_596D0();
  sub_58CB0();
  sub_58CB0();
  sub_58CB0();
  sub_58CB0();
  sub_1F64(&qword_71C78, &qword_5DF28);
  sub_58CB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_6ED0(&qword_71C80, &qword_71C78, &qword_5DF28);
  return swift_getWitnessTable();
}