uint64_t IDSPacketLogReader.deinit()
{

  sub_1A7CC7E50(*(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t IDSPacketLogReader.__deallocating_deinit()
{

  sub_1A7CC7E50(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

IDSObjCPacketLogReader __swiftcall IDSObjCPacketLogReader.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A7E06B10@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A7E21630();
    if (v10)
    {
      v11 = sub_1A7E21660();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A7E21650();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A7E21630();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A7E21660();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A7E21650();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A7E06D40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A7E075BC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A7CC7E50(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1A7E06B10(v13, a3, a4, &v12);
  v10 = v4;
  sub_1A7CC7E50(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1A7E06ED0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A7E22420();
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
    v5 = MEMORY[0x1AC561CD0](15, a1 >> 16);
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

unint64_t sub_1A7E06F4C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1A7DF6EAC(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1A7E21680();
      swift_allocObject();
      v8 = sub_1A7E21620();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1A7E219A0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1A7E07014(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1A7CC7E50(v6, v5);
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

    sub_1A7CC7E50(v6, v5);
    *v3 = xmmword_1A7E56160;
    sub_1A7CC7E50(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1A7E21630() && __OFSUB__(v6, sub_1A7E21660()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1A7E21680();
      swift_allocObject();
      v13 = sub_1A7E21610();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1A7E074B8(v6, v6 >> 32, a1);

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

    sub_1A7CC7E50(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1A7E56160;
    sub_1A7CC7E50(0, 0xC000000000000000);
    sub_1A7E21950();
    result = sub_1A7E074B8(*(v16 + 2), *(v16 + 3), a1);
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

_BYTE *sub_1A7E073B8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1A7DF6EAC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1A7E08598(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1A7E08614(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1A7E0744C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_1A7E074B8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1A7E21630();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1A7E21660();
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

  v12 = sub_1A7E21650();
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

uint64_t sub_1A7E0756C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_1A7E22B80();
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

uint64_t sub_1A7E075BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A7E21630();
  v11 = result;
  if (result)
  {
    result = sub_1A7E21660();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A7E21650();
  sub_1A7E06B10(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A7E07674(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A7D5164C(a3, a4);
          return sub_1A7E06D40(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1A7E077DC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void sub_1A7E077FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v89 = a3;
  v90 = a4;
  v85 = a1;
  v86 = a2;
  v97[2] = *MEMORY[0x1E69E9840];
  v6 = sub_1A7E21C30();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A7E21C20();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v9);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A7E21850();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7CC7FFC(&qword_1EB2B8168);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v77 - v17;
  v19 = sub_1A7E21B00();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A7E21940();
  v95 = *(v24 - 8);
  v96 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v84 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v91 = &v77 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v94 = &v77 - v32;
  v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v34 = sub_1A7E22260();
  [v33 setDateFormat_];

  v35 = [objc_opt_self() defaultManager];
  v92 = a5;
  v36 = sub_1A7E218E0();
  v97[0] = 0;
  LODWORD(a5) = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v97];

  v37 = v97[0];
  if (a5)
  {
    v97[0] = 47;
    v97[1] = 0xE100000000000000;
    v38 = v37;
    sub_1A7E21AF0();
    v39 = sub_1A7E21AA0();
    (*(v20 + 8))(v23, v19);
    v40 = [v33 stringFromDate_];

    v41 = sub_1A7E22290();
    v43 = v42;

    MEMORY[0x1AC561C90](v41, v43);

    MEMORY[0x1AC561C90](45, 0xE100000000000000);
    sub_1A7E21B10();
    v44 = sub_1A7E21B60();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v18, 1, v44) == 1)
    {
      sub_1A7CC9970(v18, &qword_1EB2B8168);
      v46 = 0xE700000000000000;
      v47 = 0x6E776F6E6B6E75;
    }

    else
    {
      v47 = sub_1A7E21B20();
      v46 = v49;
      (*(v45 + 8))(v18, v44);
    }

    v86 = v33;
    MEMORY[0x1AC561C90](v47, v46);

    MEMORY[0x1AC561C90](45, 0xE100000000000000);
    MEMORY[0x1AC561C90](v89, v90);
    MEMORY[0x1AC561C90](0x676F6C702ELL, 0xE500000000000000);
    v51 = v87;
    v50 = v88;
    (*(v87 + 104))(v14, *MEMORY[0x1E6968F70], v88);
    sub_1A7CC7DFC();
    v52 = v94;
    sub_1A7E21920();
    (*(v51 + 8))(v14, v50);

    if (qword_1EB2B29C0 != -1)
    {
      swift_once();
    }

    v53 = sub_1A7E22060();
    sub_1A7B0CB00(v53, qword_1EB2B29C8);
    v55 = v95;
    v54 = v96;
    v56 = *(v95 + 16);
    v57 = v91;
    v56(v91, v52, v96);
    v58 = sub_1A7E22040();
    v59 = sub_1A7E228F0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v97[0] = v92;
      *v60 = 136315138;
      sub_1A7E0B7F4();
      v61 = v56;
      v62 = sub_1A7E23090();
      v64 = v63;
      v65 = *(v55 + 8);
      v65(v57, v96);
      v66 = v62;
      v56 = v61;
      v67 = sub_1A7B0CB38(v66, v64, v97);
      v54 = v96;

      *(v60 + 4) = v67;
      _os_log_impl(&dword_1A7AD9000, v58, v59, "writing packet log to %s...", v60, 0xCu);
      v68 = v92;
      sub_1A7B0CD6C(v92);
      MEMORY[0x1AC5654B0](v68, -1, -1);
      v69 = v60;
      v52 = v94;
      MEMORY[0x1AC5654B0](v69, -1, -1);
    }

    else
    {

      v65 = *(v55 + 8);
      v65(v57, v54);
    }

    v70 = v93;
    sub_1A7E21A20();
    if (v70)
    {
      v65(v52, v54);
    }

    else
    {
      sub_1A7CC79C8(0, &qword_1EB2B2900);
      v71 = v84;
      v56(v84, v52, v54);
      v72 = sub_1A7E05908(v71, &selRef_fileHandleForWritingToURL_error_);
      v73 = swift_allocObject();
      (*(v78 + 104))(v82, *MEMORY[0x1E69E5BC8], v79);
      (*(v80 + 104))(v83, *MEMORY[0x1E69E5BD0], v81);
      *(swift_allocObject() + 16) = v72;
      sub_1A7E21C00();
      swift_allocObject();
      v74 = v72;
      v75 = sub_1A7E21C10();
      v76 = v86;
      *(v73 + 16) = 0;
      *(v73 + 24) = v75;

      v65(v94, v96);
    }
  }

  else
  {
    v48 = v97[0];
    sub_1A7E217F0();

    swift_willThrow();
  }
}

unint64_t sub_1A7E08218@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_slowAlloc();
  result = mach_continuous_time();
  v4 = result;
  if (qword_1EB2B3368 != -1)
  {
    result = swift_once();
  }

  v5 = *&qword_1EB2B3370;
  v6 = *&qword_1EB2B3370 * v4;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = mach_continuous_time();
  v7 = v5 * result;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 1.84467441e19)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = v2;
    *(a1 + 24) = v2 + 1024;
    *(a1 + 32) = v2;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A7E08350(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  if (result)
  {
    type metadata accessor for IDSPacketLog.SimpleBatch();
    v13 = sub_1A7E22580();
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14[1] = v12;
  v15 = 0;
  v14[0] = ((v13 & 0xFFFFFFFFFFFFFF8) + 32);
  result = sub_1A7E040B8(v14, &v15, a2, a3, a4, a5, a6);
  if (v6)
  {
    if (v15 <= v12)
    {
      *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15;

      return v13;
    }

    goto LABEL_12;
  }

  if (v15 <= v12)
  {
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15;
    return v13;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A7E08450(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1A7E08350(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    if (v8 >> 62)
    {
      v10 = v8;
      v11 = sub_1A7E22DA0();
      if (v11)
      {
        v12 = v11;
        v6 = sub_1A7CE50F8(v11, 0);
        sub_1A7DB26A4(v6 + 32, v12, v10);
        v14 = v13;

        if (v14 == v12)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }

    return v8 & 0xFFFFFFFFFFFFFF8;
  }

  return v6;
}

uint64_t sub_1A7E084F8(uint64_t result)
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
      sub_1A7E21680();
      swift_allocObject();
      sub_1A7E21640();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1A7E219A0();
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

uint64_t sub_1A7E08598(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1A7E21680();
  swift_allocObject();
  result = sub_1A7E21620();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A7E219A0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1A7E08614(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1A7E21680();
  swift_allocObject();
  result = sub_1A7E21620();
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

unint64_t sub_1A7E08698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1A7CE2010(MEMORY[0x1E69E7CC0]);
  *(v4 + 48) = 0;
  *(v4 + 56) = v11;
  v12 = sub_1A7CE2144(v10);
  sub_1A7CC7FFC(&qword_1EB2B4BA8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A7E418C0;
  v14 = sub_1A7E08450(4, 0, 0, 0xE000000000000000, 0, 0);
  *(v13 + 32) = 0;
  *(v13 + 40) = v14;
  *(v4 + 64) = 0;
  *(v4 + 72) = v12;
  *(v4 + 80) = v10;
  *(v4 + 88) = v13;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  result = mach_continuous_time();
  v16 = result;
  if (qword_1EB2B3368 != -1)
  {
    result = swift_once();
  }

  v17 = *&qword_1EB2B3370 * v16;
  if (COERCE__INT64(fabs(*&qword_1EB2B3370 * v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v17 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 32) = v17;
  result = sub_1A7E21A80();
  v19 = v18 * 1000000.0;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v19 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v4 + 40) = v19;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;

  sub_1A7E04314();
  if (v5)
  {
  }

  return v4;
}

void sub_1A7E08880()
{
  if (qword_1EB2B3328 != -1)
  {
    swift_once();
  }

  v0 = sub_1A7E22060();
  sub_1A7B0CB00(v0, qword_1EB2B3330);
  oslog = sub_1A7E22040();
  v1 = sub_1A7E228F0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A7AD9000, oslog, v1, "finish...", v2, 2u);
    MEMORY[0x1AC5654B0](v2, -1, -1);
  }
}

uint64_t sub_1A7E08968(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1A7E219A0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1A7E21630();
  if (v3)
  {
    result = sub_1A7E21660();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1A7E21650();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A7DF6EAC(v3, v7);

  return v8;
}

uint64_t sub_1A7E08A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7E21980();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A7E21970();
  if (a2)
  {
    sub_1A7E21680();
    swift_allocObject();

    v11 = sub_1A7E21610();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v12 = sub_1A7E21670();
      *v13 |= 0x8000000000000000;
      v12(v17, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v15 = sub_1A7E08968(v11, a2);
  }

  else
  {
    v14 = sub_1A7E21970();
    v14(a1, 0);

    v15 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v15;
}

uint64_t sub_1A7E08CD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (v3 <= 0)
      {
        memset(v21, 0, 14);
        return *(v21 + a1);
      }

      goto LABEL_20;
    }

    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 < v3)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= v3)
      {
        goto LABEL_12;
      }

LABEL_20:
      sub_1A7D17E10();
      swift_allocError();
      *v16 = 0;
      return swift_willThrow();
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (BYTE6(a3) < v3)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v4 == 2)
  {
    v10 = a1;
    v17 = *(a2 + 16);
    v18 = sub_1A7E21630();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1A7E21660();
      if (__OFSUB__(v17, v20))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v14 = v17 - v20 + v19;
      sub_1A7E21650();
      if (v14)
      {
        return *(v14 + v10);
      }
    }

    else
    {
      sub_1A7E21650();
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v4 != 1)
  {
    v21[0] = a2;
    LOWORD(v21[1]) = a3;
    BYTE2(v21[1]) = BYTE2(a3);
    BYTE3(v21[1]) = BYTE3(a3);
    BYTE4(v21[1]) = BYTE4(a3);
    BYTE5(v21[1]) = BYTE5(a3);
    return *(v21 + a1);
  }

  v9 = a2;
  if (a2 > a2 >> 32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = a1;
  v11 = sub_1A7E21630();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A7E21660();
    if (!__OFSUB__(v9, v13))
    {
      v14 = v9 - v13 + v12;
      result = sub_1A7E21650();
      if (!v14)
      {
        goto LABEL_36;
      }

      return *(v14 + v10);
    }

LABEL_32:
    __break(1u);
  }

LABEL_35:
  result = sub_1A7E21650();
LABEL_36:
  __break(1u);
  return result;
}

void sub_1A7E08F1C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v202 = a2;
  swift_beginAccess();
  swift_beginAccess();
  sub_1A7E05A60(1024);
  if (v4)
  {
LABEL_2:

    v7 = v202;
LABEL_3:

    return;
  }

  v181 = a4;
  while (1)
  {
    v8 = a1[8];
    v9 = a1[9];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_62;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_75;
      }
    }

    else if (v10)
    {
      LODWORD(v11) = HIDWORD(v8) - v8;
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_76;
      }

      v11 = v11;
    }

    else
    {
      v11 = BYTE6(v9);
    }

    if (!v11)
    {
LABEL_62:

      v7 = a3;
      goto LABEL_3;
    }

    sub_1A7D5164C(a1[8], a1[9]);
    v15 = sub_1A7E219E0();
    sub_1A7CC7E50(v8, v9);
    if (v15 == 1)
    {
      break;
    }

    v42 = a1[8];
    v43 = a1[9];
    sub_1A7D5164C(v42, v43);
    v44 = sub_1A7E219E0();
    sub_1A7CC7E50(v42, v43);
    if (v44 != 2)
    {
      v175 = a1[8];
      v176 = a1[9];
      sub_1A7D5164C(v175, v176);
      v177 = sub_1A7E219E0();
      sub_1A7CC7E50(v175, v176);
      sub_1A7E0B6B8();
      swift_allocError();
      *v178 = v177;
      v178[1] = 0;
LABEL_65:
      swift_willThrow();
      goto LABEL_2;
    }

    if (qword_1EB2B3328 != -1)
    {
      swift_once();
    }

    v45 = sub_1A7E22060();
    sub_1A7B0CB00(v45, qword_1EB2B3330);
    v46 = sub_1A7E22040();
    v47 = sub_1A7E228F0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1A7AD9000, v46, v47, "Parsing Link Info", v48, 2u);
      MEMORY[0x1AC5654B0](v48, -1, -1);
    }

    v49 = a1[8];
    v50 = a1[9];
    sub_1A7D5164C(v49, v50);
    v51 = sub_1A7E08CD0(1, v49, v50);
    sub_1A7CC7E50(v49, v50);
    v52 = a1[8];
    v53 = a1[9];
    sub_1A7D5164C(v52, v53);
    v54 = sub_1A7E08CD0(2, v52, v53);
    sub_1A7CC7E50(v52, v53);
    v55 = a1[8];
    v56 = a1[9];
    sub_1A7D5164C(v55, v56);
    v57 = sub_1A7E21A60();
    v59 = v58;
    sub_1A7CC7E50(v55, v56);
    v60 = a1[8];
    v61 = a1[9];
    a1[8] = v57;
    a1[9] = v59;
    sub_1A7CC7E50(v60, v61);
    v62 = sub_1A7E22040();
    v63 = sub_1A7E228F0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 16777728;
      *(v64 + 4) = v51;
      *(v64 + 5) = 256;
      *(v64 + 7) = v54;
      _os_log_impl(&dword_1A7AD9000, v62, v63, "  linkID: %hhd; delegatedLinkID: %hhd", v64, 8u);
      MEMORY[0x1AC5654B0](v64, -1, -1);
    }

    v189 = v54;

    v65 = a1[8];
    v66 = a1[9];
    sub_1A7D5164C(v65, v66);
    v67 = sub_1A7D17BF8(0, v65, v66);
    v69 = v68;
    v187 = v51;
    sub_1A7CC7E50(v65, v66);
    v70 = a1[8];
    v71 = a1[9];
    sub_1A7D5164C(v70, v71);
    v72 = sub_1A7E21A60();
    v74 = v73;
    sub_1A7CC7E50(v70, v71);
    v75 = a1[8];
    v76 = a1[9];
    a1[8] = v72;
    a1[9] = v74;
    sub_1A7CC7E50(v75, v76);

    v77 = sub_1A7E22040();
    v78 = sub_1A7E228F0();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v193[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_1A7B0CB38(v67, v69, v193);
      _os_log_impl(&dword_1A7AD9000, v77, v78, "  protocolStack: %s", v79, 0xCu);
      sub_1A7B0CD6C(v80);
      MEMORY[0x1AC5654B0](v80, -1, -1);
      MEMORY[0x1AC5654B0](v79, -1, -1);
    }

    v81 = a1[8];
    v82 = a1[9];
    sub_1A7D5164C(v81, v82);
    sub_1A7D17798(v193, 0, v81, v82);
    v185 = v67;
    sub_1A7CC7E50(v81, v82);
    v83 = v193[0];
    v84 = a1[8];
    v85 = a1[9];
    sub_1A7D5164C(v84, v85);
    v86 = sub_1A7E21A60();
    v88 = v87;
    sub_1A7CC7E50(v84, v85);
    v89 = a1[8];
    v90 = a1[9];
    a1[8] = v86;
    a1[9] = v88;
    sub_1A7CC7E50(v89, v90);
    v91 = sub_1A7E22040();
    v92 = sub_1A7E228F0();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 134217984;
      *(v93 + 4) = v83;
      _os_log_impl(&dword_1A7AD9000, v91, v92, "  connectionID: %llu", v93, 0xCu);
      MEMORY[0x1AC5654B0](v93, -1, -1);
    }

    swift_beginAccess();
    v94 = a1[10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[10] = v94;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v94 = sub_1A7CCD39C(0, *(v94 + 2) + 1, 1, v94);
      a1[10] = v94;
    }

    v97 = *(v94 + 2);
    v96 = *(v94 + 3);
    if (v97 >= v96 >> 1)
    {
      v94 = sub_1A7CCD39C((v96 > 1), v97 + 1, 1, v94);
    }

    *(v94 + 2) = v97 + 1;
    v98 = &v94[32 * v97];
    v98[32] = v187;
    v98[33] = v189;
    *(v98 + 5) = v185;
    *(v98 + 6) = v69;
    *(v98 + 7) = v83;
    a1[10] = v94;
    swift_endAccess();
LABEL_61:
    sub_1A7E05A60(1024);
  }

  if (qword_1EB2B3328 != -1)
  {
    swift_once();
  }

  v16 = sub_1A7E22060();
  sub_1A7B0CB00(v16, qword_1EB2B3330);
  v17 = sub_1A7E22040();
  v18 = sub_1A7E228F0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A7AD9000, v17, v18, "Parsing Batch", v19, 2u);
    MEMORY[0x1AC5654B0](v19, -1, -1);
  }

  v20 = a1[8];
  v21 = a1[9];
  sub_1A7D5164C(v20, v21);
  v22 = sub_1A7E21A60();
  v24 = v23;
  sub_1A7CC7E50(v20, v21);
  v25 = a1[8];
  v26 = a1[9];
  a1[8] = v22;
  a1[9] = v24;
  sub_1A7CC7E50(v25, v26);
  v27 = a1[8];
  v28 = a1[9];
  sub_1A7D5164C(v27, v28);
  v29 = sub_1A7E08CD0(0, v27, v28);
  sub_1A7CC7E50(v27, v28);
  v30 = a1[8];
  v31 = a1[9];
  sub_1A7D5164C(v30, v31);
  v32 = sub_1A7E21A60();
  v34 = v33;
  sub_1A7CC7E50(v30, v31);
  v35 = a1[8];
  v36 = a1[9];
  a1[8] = v32;
  a1[9] = v34;
  sub_1A7CC7E50(v35, v36);
  v37 = sub_1A7E22040();
  v38 = sub_1A7E228F0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v193[0] = v40;
    *v39 = 136315138;
    if (v29 >= 4u)
    {
      v41 = 4144959;
    }

    else
    {
      v41 = qword_1A7E56440[v29];
    }

    v99 = sub_1A7B0CB38(v41, 0xE300000000000000, v193);

    *(v39 + 4) = v99;
    _os_log_impl(&dword_1A7AD9000, v37, v38, "Batch kind: %s", v39, 0xCu);
    sub_1A7B0CD6C(v40);
    MEMORY[0x1AC5654B0](v40, -1, -1);
    MEMORY[0x1AC5654B0](v39, -1, -1);
  }

  v100 = a1[8];
  v101 = a1[9];
  sub_1A7D5164C(v100, v101);
  sub_1A7D17798(v193, 0, v100, v101);
  v190 = v29;
  sub_1A7CC7E50(v100, v101);
  v102 = v193[0];
  v103 = a1[8];
  v104 = a1[9];
  sub_1A7D5164C(v103, v104);
  v105 = sub_1A7E21A60();
  v107 = v106;
  sub_1A7CC7E50(v103, v104);
  v108 = a1[8];
  v109 = a1[9];
  a1[8] = v105;
  a1[9] = v107;
  sub_1A7CC7E50(v108, v109);

  v110 = sub_1A7E22040();
  v111 = sub_1A7E228F0();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134218240;
    *(v112 + 4) = v102;
    *(v112 + 12) = 2048;
    *(v112 + 14) = *(a1[10] + 16);

    _os_log_impl(&dword_1A7AD9000, v110, v111, "Link info ID: %llu (of %ld)", v112, 0x16u);
    MEMORY[0x1AC5654B0](v112, -1, -1);
  }

  else
  {
  }

  v113 = a1[10];
  v114 = *(v113 + 16);
  if (!v114 || v102 >= v114)
  {
    sub_1A7E0B6B8();
    swift_allocError();
    *v179 = 515;
    goto LABEL_65;
  }

  v115 = v113 + 32 * v102;
  v184 = *(v115 + 33);
  v186 = *(v115 + 32);
  v182 = *(v115 + 56);
  v183 = *(v115 + 40);
  v116 = a1[8];
  v117 = a1[9];
  v188 = *(v115 + 48);

  sub_1A7D5164C(v116, v117);
  sub_1A7D17798(v193, 0, v116, v117);
  sub_1A7CC7E50(v116, v117);
  v118 = v193[0];
  v119 = a1[8];
  v120 = a1[9];
  sub_1A7D5164C(v119, v120);
  v121 = sub_1A7E21A60();
  v123 = v122;
  sub_1A7CC7E50(v119, v120);
  v124 = a1[8];
  v125 = a1[9];
  a1[8] = v121;
  a1[9] = v123;
  sub_1A7CC7E50(v124, v125);
  v126 = a1[8];
  v127 = a1[9];
  sub_1A7D5164C(v126, v127);
  sub_1A7D17410(v193, 0, v126, v127);
  sub_1A7CC7E50(v126, v127);
  v128 = v193[0];
  v129 = a1[8];
  v130 = a1[9];
  sub_1A7D5164C(v129, v130);
  v131 = sub_1A7E21A60();
  v133 = v132;
  sub_1A7CC7E50(v129, v130);
  v134 = a1[8];
  v135 = a1[9];
  a1[8] = v131;
  a1[9] = v133;
  sub_1A7CC7E50(v134, v135);
  if (v118 < 0)
  {
    goto LABEL_72;
  }

  v136 = a1[6];
  if (v136 < 0)
  {
    goto LABEL_73;
  }

  v137 = v118 + v136;
  if (__OFADD__(v118, v136))
  {
    goto LABEL_74;
  }

  v138 = sub_1A7E22040();
  v139 = sub_1A7E228F0();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 67109376;
    *(v140 + 4) = v128;
    *(v140 + 8) = 2048;
    *(v140 + 10) = v118;
    _os_log_impl(&dword_1A7AD9000, v138, v139, "Batch size: %u; timestamp relative to startTime: %llu", v140, 0x12u);
    MEMORY[0x1AC5654B0](v140, -1, -1);
  }

  if (!v128)
  {
LABEL_60:

    goto LABEL_61;
  }

  v180 = v190;
  while (1)
  {
    sub_1A7E05A60(1024);
    v141 = a1[8];
    v142 = a1[9];
    sub_1A7D5164C(v141, v142);
    sub_1A7D17798(v193, 0, v141, v142);
    v191 = v128;
    sub_1A7CC7E50(v141, v142);
    v143 = -(v193[0] & 1) ^ (v193[0] >> 1);
    v144 = a1[8];
    v145 = a1[9];
    sub_1A7D5164C(v144, v145);
    v146 = sub_1A7E21A60();
    v148 = v147;
    sub_1A7CC7E50(v144, v145);
    v149 = a1[8];
    v150 = a1[9];
    a1[8] = v146;
    a1[9] = v148;
    sub_1A7CC7E50(v149, v150);
    v14 = __OFADD__(v137, v143);
    v137 += v143;
    if (v14)
    {
      break;
    }

    v151 = a1[8];
    v152 = a1[9];
    sub_1A7D5164C(v151, v152);
    sub_1A7D17798(v193, 0, v151, v152);
    sub_1A7CC7E50(v151, v152);
    v153 = v193[0];
    v154 = a1[8];
    v155 = a1[9];
    sub_1A7D5164C(v154, v155);
    v156 = sub_1A7E21A60();
    v158 = v157;
    sub_1A7CC7E50(v154, v155);
    v159 = a1[8];
    v160 = a1[9];
    a1[8] = v156;
    a1[9] = v158;
    sub_1A7CC7E50(v159, v160);
    v161 = a1[8];
    v162 = a1[9];
    sub_1A7D5164C(v161, v162);
    sub_1A7D17798(v193, 0, v161, v162);
    sub_1A7CC7E50(v161, v162);
    v163 = v193[0];
    v164 = a1[8];
    v165 = a1[9];
    sub_1A7D5164C(v164, v165);
    v166 = sub_1A7E21A60();
    v168 = v167;
    sub_1A7CC7E50(v164, v165);
    v169 = a1[8];
    v170 = a1[9];
    a1[8] = v166;
    a1[9] = v168;
    sub_1A7CC7E50(v169, v170);
    v171 = a1[6];
    if (v171 < 0)
    {
      goto LABEL_67;
    }

    v14 = __OFSUB__(v137, v171);
    v172 = v137 - v171;
    if (v14)
    {
      goto LABEL_68;
    }

    v173 = a1[7];
    v14 = __OFADD__(v172, v173);
    v174 = v172 + v173;
    if (v14)
    {
      goto LABEL_69;
    }

    if (v174 < 0)
    {
      goto LABEL_70;
    }

    if ((v163 | v153 | v173) < 0)
    {
      goto LABEL_71;
    }

    v194[0] = v174;
    v194[1] = v180;
    v195 = v186;
    v196 = v184;
    v197 = v183;
    v198 = v188;
    v199 = v182;
    v200 = v153;
    v201 = v163;

    sub_1A7E0604C(v194, v202, a3, v181);

    v128 = v191 - 1;
    if (v191 == 1)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

void sub_1A7E09EB8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7E21940();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v51 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v51 - v16;
  v18 = a1;
  v19 = *(v5 + 16);
  v19(&v51 - v16, v18, v4, v15);
  type metadata accessor for IDSPacketLogReader();
  v20 = swift_allocObject();
  sub_1A7E05564(v17);
  if (!v2)
  {
    v21 = v56;
    v54 = 0;
    v55 = v20;
    v53 = v8;
    if (qword_1EB2B3328 != -1)
    {
      swift_once();
    }

    v22 = sub_1A7E22060();
    sub_1A7B0CB00(v22, qword_1EB2B3330);
    (v19)(v12, v21, v4);
    v23 = sub_1A7E22040();
    v24 = sub_1A7E228F0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v55;
    v52 = v19;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57[0] = v51;
      *v27 = 136315138;
      sub_1A7E0B7F4();
      v28 = sub_1A7E23090();
      v30 = v29;
      (*(v5 + 8))(v12, v4);
      v31 = sub_1A7B0CB38(v28, v30, v57);
      v26 = v55;

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1A7AD9000, v23, v24, "Writing to %s...", v27, 0xCu);
      v32 = v51;
      sub_1A7B0CD6C(v51);
      MEMORY[0x1AC5654B0](v32, -1, -1);
      MEMORY[0x1AC5654B0](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    v33 = v56;
    v34 = v54;
    sub_1A7E21A20();
    v35 = v53;
    if (v34)
    {
    }

    else
    {
      sub_1A7CC79C8(0, &qword_1EB2B2900);
      v52(v35, v33, v4);
      v36 = sub_1A7E05908(v35, &selRef_fileHandleForWritingToURL_error_);
      v37 = v26;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v39 = sub_1A7E22260();
      [v38 setDateFormat_];

      v40 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v41 = sub_1A7E22260();
      [v40 setDateFormat_];

      v42 = v38;
      v43 = v40;
      v44 = v36;
      sub_1A7E08F1C(v37, v42, v43, v44);

      v57[0] = 0;
      v45 = [v44 synchronizeAndReturnError_];
      v46 = v57[0];
      if (v45 & 1) != 0 && (v57[0] = 0, v47 = v46, v48 = [v44 closeAndReturnError_], v46 = v57[0], (v48))
      {
        v49 = v57[0];
      }

      else
      {
        v50 = v46;
        sub_1A7E217F0();

        swift_willThrow();
      }
    }
  }
}

uint64_t _sSo22IDSObjCPacketLogReaderC13IDSFoundationE25convertAllLogsToPlainTextyyFZ_0()
{
  v128 = *MEMORY[0x1E69E9840];
  v119 = sub_1A7E216F0();
  v111 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v0);
  v107 = &v95 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A7E21850();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1A7E21940();
  v7 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v8);
  v106 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v99 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v97 = &v95 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = &v95 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v96 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v114 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v95 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v95 - v31;
  sub_1A7E218B0();
  v33 = *MEMORY[0x1E6968F70];
  v34 = v3 + 104;
  v108 = *(v3 + 104);
  v35 = v2;
  v108(v6, v33, v2);
  v36 = sub_1A7CC7DFC();
  v110 = v32;
  sub_1A7E21910();
  v37 = *(v3 + 8);
  v109 = v3 + 8;
  v37(v6, v35);
  v121 = v7;
  v38 = *(v7 + 8);
  v39 = v124;
  v38(v28, v124);
  sub_1A7E218D0();
  v103 = v33;
  v102 = v34;
  v108(v6, v33, v35);
  v40 = v114;
  v101 = v36;
  sub_1A7E21910();
  v104 = v6;
  v105 = v35;
  v100 = v37;
  v37(v6, v35);
  v122 = v38;
  v123 = v7 + 8;
  v38(v28, v39);
  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  v43 = sub_1A7E218E0();
  v126 = 0;
  LODWORD(v37) = [v42 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v126];

  v44 = v126;
  if (v37 && (v45 = v126, v46 = [v41 defaultManager], v47 = sub_1A7E218E0(), v116 = sub_1A7CC7FFC(&qword_1EB2B5758), v48 = swift_allocObject(), v120 = xmmword_1A7E418C0, *(v48 + 16) = xmmword_1A7E418C0, v49 = *MEMORY[0x1E695DBB8], *(v48 + 32) = *MEMORY[0x1E695DBB8], type metadata accessor for URLResourceKey(0), v115 = v49, v50 = sub_1A7E22520(), , v126 = 0, v51 = objc_msgSend(v46, sel_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_, v47, v50, 0, &v126), v46, v47, v50, v44 = v126, v51))
  {
    v52 = sub_1A7E22530();
    v53 = v44;

    v118 = v52;
    v55 = v107;
    v40 = v98;
    v56 = v96;
    v113 = *(v52 + 16);
    if (!v113)
    {
LABEL_15:

      v93 = v124;
      v94 = v122;
      v122(v114, v124);
      return v94(v110, v93);
    }

    v57 = 0;
    v58 = 0;
    v112 = v118 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v117 = v121 + 16;
    ++v111;
    *&v54 = 136315650;
    v95 = v54;
    while (v57 < *(v118 + 16))
    {
      v33 = *(v121 + 16);
      (v33)(v56, v112 + *(v121 + 72) * v57, v124);
      inited = swift_initStackObject();
      *(inited + 16) = v120;
      v60 = v115;
      *(inited + 32) = v115;
      v61 = v60;
      sub_1A7D0BFFC(inited);
      swift_setDeallocating();
      sub_1A7D0D3E8(inited + 32);
      sub_1A7E21880();

      v62 = sub_1A7E216C0();
      (*v111)(v55, v119);
      if (v62 == 2 || (v62 & 1) == 0)
      {
        v122(v56, v124);
      }

      else
      {
        sub_1A7CC7FFC(&qword_1EB2B4B98);
        v63 = swift_allocObject();
        *(v63 + 16) = v120;
        v126 = sub_1A7E218C0();
        v127 = v64;

        MEMORY[0x1AC561C90](1735355438, 0xE400000000000000);

        v65 = v127;
        *(v63 + 32) = v126;
        *(v63 + 40) = v65;
        v66 = v104;
        v67 = v105;
        v108(v104, v103, v105);
        sub_1A7E21910();

        v100(v66, v67);
        sub_1A7E09EB8(v56, v40);
        v68 = v124;
        v69 = v122;
        v122(v40, v124);
        v69(v56, v68);
        v55 = v107;
      }

      if (v113 == ++v57)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v70 = v44;
    v58 = sub_1A7E217F0();

    swift_willThrow();
    v33 = v106;
    v56 = v110;
    if (qword_1EB2B3328 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v71 = sub_1A7E22060();
  sub_1A7B0CB00(v71, qword_1EB2B3330);
  (*(v121 + 16))(v33, v56, v124);
  v72 = v58;
  v73 = sub_1A7E22040();
  v74 = sub_1A7E228E0();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v126 = v76;
    *v75 = 136315394;
    sub_1A7E0B7F4();
    v77 = v124;
    v78 = sub_1A7E23090();
    v80 = v79;
    v81 = v122;
    v122(v33, v77);
    v82 = sub_1A7B0CB38(v78, v80, &v126);

    *(v75 + 4) = v82;
    *(v75 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    v84 = MEMORY[0x1EEE9AC00](ErrorValue, v125);
    (*(v86 + 16))(&v95 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0), v84);
    v87 = sub_1A7E222F0();
    v89 = sub_1A7B0CB38(v87, v88, &v126);

    *(v75 + 14) = v89;
    _os_log_impl(&dword_1A7AD9000, v73, v74, "Could not iterate over logs at %s: %s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v76, -1, -1);
    MEMORY[0x1AC5654B0](v75, -1, -1);

    v81(v114, v77);
    return (v81)(v110, v77);
  }

  else
  {

    v91 = v124;
    v92 = v122;
    v122(v33, v124);
    v92(v40, v91);
    return (v92)(v56, v91);
  }
}

__n128 sub_1A7E0B4C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

uint64_t sub_1A7E0B504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 80))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 32))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A7E0B548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1A7E0B5AC()
{
}

uint64_t sub_1A7E0B5F0(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_1A7E0B664()
{
  result = qword_1EB2B3388;
  if (!qword_1EB2B3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3388);
  }

  return result;
}

unint64_t sub_1A7E0B6B8()
{
  result = qword_1EB2B8138;
  if (!qword_1EB2B8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8138);
  }

  return result;
}

void *sub_1A7E0B70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1A7E0744C(sub_1A7E0B774, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_1A7E0B7F4()
{
  result = qword_1EB2B3058;
  if (!qword_1EB2B3058)
  {
    sub_1A7E21940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3058);
  }

  return result;
}

unint64_t sub_1A7E0B84C()
{
  result = qword_1EB2B3050;
  if (!qword_1EB2B3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3050);
  }

  return result;
}

uint64_t sub_1A7E0B8A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7E228A0();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSPacketLogReader.PacketLogReadError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSPacketLogReader.PacketLogReadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A7E0BA50(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_1A7E0BA68(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

unint64_t sub_1A7E0BB88()
{
  v1 = *v0;
  v2 = 1886351214;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736B6E696CLL;
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

uint64_t sub_1A7E0BC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7E0FE84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7E0BC48(uint64_t a1)
{
  v2 = sub_1A7E0C5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0BC84(uint64_t a1)
{
  v2 = sub_1A7E0C5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0BCC0(uint64_t a1)
{
  v2 = sub_1A7E0C760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0BCFC(uint64_t a1)
{
  v2 = sub_1A7E0C760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0BD38(uint64_t a1)
{
  v2 = sub_1A7E0C6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0BD74(uint64_t a1)
{
  v2 = sub_1A7E0C6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0BDB0(uint64_t a1)
{
  v2 = sub_1A7E0C610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0BDEC(uint64_t a1)
{
  v2 = sub_1A7E0C610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0BE28(uint64_t a1)
{
  v2 = sub_1A7E0C808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0BE64(uint64_t a1)
{
  v2 = sub_1A7E0C808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0BEA0(uint64_t a1)
{
  v2 = sub_1A7E0C8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0BEDC(uint64_t a1)
{
  v2 = sub_1A7E0C8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolResponse.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B8180);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = &v41 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B8188);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v41 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B8190);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v51 = &v41 - v11;
  v12 = sub_1A7CC7FFC(&qword_1EB2B8198);
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  v43 = sub_1A7CC7FFC(&qword_1EB2B81A0);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v16);
  v18 = &v41 - v17;
  v19 = sub_1A7CC7FFC(&qword_1EB2B81A8);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v41 - v21;
  v23 = *v1;
  v54 = v1[1];
  v24 = v1[3];
  v55 = v1[2];
  v56 = v23;
  v41 = v1[4];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E0C5BC();
  v25 = v22;
  sub_1A7E23260();
  v26 = (v24 >> 60) & 7;
  if (((v24 >> 60) & 7) <= 1)
  {
    v32 = v15;
    v33 = v12;
    v35 = v50;
    v34 = v51;
    v37 = v52;
    v36 = v53;
    if (v26)
    {
      LOBYTE(v59) = 2;
      sub_1A7E0C760();
      v40 = v34;
      v28 = v58;
      v29 = v25;
      sub_1A7E22F80();
      v59 = v56;
      v60 = v54;
      LOBYTE(v61) = v55;
      sub_1A7E0C7B4();
      sub_1A7E23030();
      (*(v37 + 8))(v40, v36);
    }

    else
    {
      LOBYTE(v59) = 1;
      sub_1A7E0C808();
      v28 = v58;
      v29 = v25;
      sub_1A7E22F80();
      v59 = v56;
      sub_1A7E0C85C();
      sub_1A7E23030();
      (*(v35 + 8))(v32, v33);
    }
  }

  else
  {
    if (v26 == 2)
    {
      LOBYTE(v59) = 3;
      sub_1A7E0C6B8();
      v27 = v44;
      v28 = v58;
      v29 = v25;
      sub_1A7E22F80();
      v59 = v56;
      v60 = v54;
      v61 = v55;
      v62 = v24 & 0x8FFFFFFFFFFFFFFFLL;
      v63 = v41;
      sub_1A7E0C70C();
      v30 = v46;
      sub_1A7E23030();
      v31 = v45;
    }

    else
    {
      if (v26 != 3)
      {
        LOBYTE(v59) = 0;
        sub_1A7E0C8B0();
        v38 = v58;
        sub_1A7E22F80();
        (*(v42 + 8))(v18, v43);
        return (*(v57 + 8))(v22, v38);
      }

      LOBYTE(v59) = 4;
      sub_1A7E0C610();
      v27 = v47;
      v28 = v58;
      v29 = v25;
      sub_1A7E22F80();
      LOBYTE(v59) = v56 & 1;
      sub_1A7E0C664();
      v30 = v49;
      sub_1A7E23030();
      v31 = v48;
    }

    (*(v31 + 8))(v27, v30);
  }

  return (*(v57 + 8))(v29, v28);
}

unint64_t sub_1A7E0C5BC()
{
  result = qword_1EB2B81B0;
  if (!qword_1EB2B81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81B0);
  }

  return result;
}

unint64_t sub_1A7E0C610()
{
  result = qword_1EB2B81B8;
  if (!qword_1EB2B81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81B8);
  }

  return result;
}

unint64_t sub_1A7E0C664()
{
  result = qword_1EB2B81C0;
  if (!qword_1EB2B81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81C0);
  }

  return result;
}

unint64_t sub_1A7E0C6B8()
{
  result = qword_1EB2B81C8;
  if (!qword_1EB2B81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81C8);
  }

  return result;
}

unint64_t sub_1A7E0C70C()
{
  result = qword_1EB2B81D0;
  if (!qword_1EB2B81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81D0);
  }

  return result;
}

unint64_t sub_1A7E0C760()
{
  result = qword_1EB2B81D8;
  if (!qword_1EB2B81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81D8);
  }

  return result;
}

unint64_t sub_1A7E0C7B4()
{
  result = qword_1EB2B81E0;
  if (!qword_1EB2B81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81E0);
  }

  return result;
}

unint64_t sub_1A7E0C808()
{
  result = qword_1EB2B81E8;
  if (!qword_1EB2B81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81E8);
  }

  return result;
}

unint64_t sub_1A7E0C85C()
{
  result = qword_1EB2B81F0;
  if (!qword_1EB2B81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81F0);
  }

  return result;
}

unint64_t sub_1A7E0C8B0()
{
  result = qword_1EB2B81F8;
  if (!qword_1EB2B81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B81F8);
  }

  return result;
}

uint64_t LEToolResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v55 = sub_1A7CC7FFC(&qword_1EB2B8200);
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v3);
  v63 = &v51 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B8208);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v60 = &v51 - v8;
  v52 = sub_1A7CC7FFC(&qword_1EB2B8210);
  v56 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v9);
  v62 = &v51 - v10;
  v11 = sub_1A7CC7FFC(&qword_1EB2B8218);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v51 - v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B8220);
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51 - v17;
  v19 = sub_1A7CC7FFC(&qword_1EB2B8228);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v51 - v22;
  v24 = a1[3];
  v64 = a1;
  sub_1A7CC9878(a1, v24);
  sub_1A7E0C5BC();
  v25 = v74;
  sub_1A7E23250();
  if (!v25)
  {
    v26 = v18;
    v74 = v15;
    v28 = v62;
    v27 = v63;
    v29 = sub_1A7E22F70();
    v30 = (2 * *(v29 + 16)) | 1;
    v70 = v29;
    v71 = v29 + 32;
    v72 = 0;
    v73 = v30;
    v31 = sub_1A7CDB548();
    if (v31 != 5 && v72 == v73 >> 1)
    {
      if (v31 <= 1u)
      {
        if (v31)
        {
          LOBYTE(v65) = 1;
          sub_1A7E0C808();
          sub_1A7E22E70();
          sub_1A7E0D320();
          v45 = v54;
          sub_1A7E22F30();
          (*(v53 + 8))(v14, v45);
          (*(v20 + 8))(v23, v19);
          swift_unknownObjectRelease();
          v46 = 0;
          v48 = 0;
          v50 = 0;
          v49 = 0;
          v47 = v65;
        }

        else
        {
          LOBYTE(v65) = 0;
          sub_1A7E0C8B0();
          sub_1A7E22E70();
          (*(v51 + 8))(v26, v74);
          (*(v20 + 8))(v23, v19);
          swift_unknownObjectRelease();
          v47 = 0;
          v46 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0x4000000000000000;
        }
      }

      else
      {
        if (v31 == 2)
        {
          LOBYTE(v65) = 2;
          sub_1A7E0C760();
          v40 = v28;
          sub_1A7E22E70();
          v32 = v61;
          sub_1A7E0D2CC();
          v41 = v52;
          sub_1A7E22F30();
          (*(v56 + 8))(v40, v41);
          (*(v20 + 8))(v23, v19);
          swift_unknownObjectRelease();
          v49 = 0;
          v47 = v65;
          v46 = v66;
          v50 = 0x1000000000000000;
          v48 = v67;
          goto LABEL_16;
        }

        v32 = v61;
        if (v31 == 3)
        {
          LOBYTE(v65) = 3;
          sub_1A7E0C6B8();
          v33 = v60;
          sub_1A7E22E70();
          sub_1A7E0D278();
          v34 = v57;
          sub_1A7E22F30();
          (*(v58 + 8))(v33, v34);
          (*(v20 + 8))(v23, v19);
          swift_unknownObjectRelease();
          v47 = v65;
          v46 = v66;
          v48 = v67;
          v49 = v69;
          v50 = v68 | 0x2000000000000000;
LABEL_16:
          v43 = v64;
LABEL_18:
          *v32 = v47;
          v32[1] = v46;
          v32[2] = v48;
          v32[3] = v50;
          v32[4] = v49;
          return sub_1A7B0CD6C(v43);
        }

        LOBYTE(v65) = 4;
        sub_1A7E0C610();
        sub_1A7E22E70();
        sub_1A7E0D224();
        v42 = v55;
        sub_1A7E22F30();
        (*(v59 + 8))(v27, v42);
        (*(v20 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v46 = 0;
        v48 = 0;
        v49 = 0;
        v47 = v65;
        v50 = 0x3000000000000000;
      }

      v43 = v64;
      v32 = v61;
      goto LABEL_18;
    }

    v35 = sub_1A7E22BD0();
    swift_allocError();
    v36 = v23;
    v37 = v19;
    v39 = v38;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v39 = &type metadata for LEToolResponse;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v35 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v20 + 8))(v36, v37);
    swift_unknownObjectRelease();
  }

  v43 = v64;
  return sub_1A7B0CD6C(v43);
}

unint64_t sub_1A7E0D224()
{
  result = qword_1EB2B8230;
  if (!qword_1EB2B8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8230);
  }

  return result;
}

unint64_t sub_1A7E0D278()
{
  result = qword_1EB2B8238;
  if (!qword_1EB2B8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8238);
  }

  return result;
}

unint64_t sub_1A7E0D2CC()
{
  result = qword_1EB2B8240;
  if (!qword_1EB2B8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8240);
  }

  return result;
}

unint64_t sub_1A7E0D320()
{
  result = qword_1EB2B8248;
  if (!qword_1EB2B8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8248);
  }

  return result;
}

unint64_t sub_1A7E0D3A4()
{
  v1 = *v0;
  v2 = 0x6973736553736469;
  v3 = 0xD000000000000010;
  v4 = 0x657461636F6C6C61;
  if (v1 != 3)
  {
    v4 = 0x65736E6F70736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F69737365537271;
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

uint64_t sub_1A7E0D45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7E1003C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7E0D484(uint64_t a1)
{
  v2 = sub_1A7E0D7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0D4C0(uint64_t a1)
{
  v2 = sub_1A7E0D7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolRelayEngineResponseMessage.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B8250);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = v1[2];
  v27 = v1[3];
  v28 = v8;
  v9 = v1[4];
  v25 = v1[5];
  v26 = v9;
  v10 = v1[6];
  v23 = v1[7];
  v24 = v10;
  v11 = v1[8];
  v22 = v1[9];
  v12 = v1[10];
  v20 = v11;
  v21 = v12;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E0D7DC();
  sub_1A7E23260();
  LOBYTE(v30) = 0;
  v13 = v29;
  sub_1A7E22FA0();
  if (!v13)
  {
    v15 = v25;
    v14 = v26;
    v17 = v23;
    v16 = v24;
    LOBYTE(v30) = 1;
    sub_1A7E22FA0();
    v30 = v14;
    v35 = 2;
    sub_1A7CC7FFC(&qword_1EB2B4AA0);
    sub_1A7D66B20(&qword_1EB2B5BD8);
    sub_1A7E23030();
    v30 = v15;
    v35 = 3;
    type metadata accessor for IDSQuickRelayAllocateType(0);
    sub_1A7E10200(&qword_1EB2B8260);
    sub_1A7E23030();
    v30 = v16;
    v31 = v17;
    v32 = v20;
    v33 = v22;
    v34 = v21;
    v35 = 4;
    sub_1A7E0351C(v16, v17, v20, v22);
    sub_1A7E0D830();
    sub_1A7E23030();
    sub_1A7CE5E00(v30, v31, v32, v33);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7E0D7DC()
{
  result = qword_1EB2B8258;
  if (!qword_1EB2B8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8258);
  }

  return result;
}

unint64_t sub_1A7E0D830()
{
  result = qword_1EB2B8268;
  if (!qword_1EB2B8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8268);
  }

  return result;
}

uint64_t LEToolRelayEngineResponseMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B8270);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E0D7DC();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    v10 = sub_1A7E22EA0();
    v12 = v11;
    v34 = v10;
    LOBYTE(v41[0]) = 1;
    v13 = sub_1A7E22EA0();
    v15 = v14;
    v33 = v13;
    sub_1A7CC7FFC(&qword_1EB2B4AA0);
    LOBYTE(v35) = 2;
    sub_1A7D66B20(&qword_1EB2B5BF8);
    sub_1A7E22F30();
    v32 = a2;
    v16 = v41[0];
    type metadata accessor for IDSQuickRelayAllocateType(0);
    LOBYTE(v35) = 3;
    sub_1A7E10200(&qword_1EB2B8278);
    sub_1A7E22F30();
    v31 = v41[0];
    v45 = 4;
    sub_1A7E0DCEC();
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v29 = *(&v42 + 1);
    v30 = v42;
    v28 = v43;
    v17 = v44;
    v27 = *(&v43 + 1);
    v18 = v34;
    *&v35 = v34;
    *(&v35 + 1) = v12;
    v19 = v33;
    *&v36 = v33;
    *(&v36 + 1) = v15;
    *&v37 = v16;
    v20 = v31;
    *(&v37 + 1) = v31;
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v21 = v36;
    v22 = v32;
    *v32 = v35;
    v22[1] = v21;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    *(v22 + 10) = v17;
    v22[3] = v24;
    v22[4] = v25;
    v22[2] = v23;
    sub_1A7E0DD40(&v35, v41);
    sub_1A7B0CD6C(a1);
    v41[0] = v18;
    v41[1] = v12;
    v41[2] = v19;
    v41[3] = v15;
    v41[4] = v16;
    v41[5] = v20;
    v41[6] = v30;
    v41[7] = v29;
    v41[8] = v28;
    v41[9] = v27;
    v41[10] = v17;
    return sub_1A7E0DD78(v41);
  }
}

unint64_t sub_1A7E0DCEC()
{
  result = qword_1EB2B8280;
  if (!qword_1EB2B8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8280);
  }

  return result;
}

uint64_t sub_1A7E0DDD8(uint64_t a1)
{
  v2 = sub_1A7E0DFE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0DE14(uint64_t a1)
{
  v2 = sub_1A7E0DFE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolP2PEngineResponseMessage.encode(to:)(void *a1)
{
  v15 = sub_1A7CC7FFC(&qword_1EB2B8288);
  v21 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v3);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = a1[3];
  v14 = a1[4];
  sub_1A7CC9878(a1, v11);
  sub_1A7E0351C(v6, v7, v8, v9);
  sub_1A7E0DFE0();
  sub_1A7E23260();
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_1A7E0D830();
  v12 = v15;
  sub_1A7E23030();
  sub_1A7CE5E00(v16, v17, v18, v19);
  return (*(v21 + 8))(v5, v12);
}

unint64_t sub_1A7E0DFE0()
{
  result = qword_1EB2B8290;
  if (!qword_1EB2B8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8290);
  }

  return result;
}

uint64_t LEToolP2PEngineResponseMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B8298);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E0DFE0();
  sub_1A7E23250();
  if (!v2)
  {
    sub_1A7E0DCEC();
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v10 = v14;
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7E0E1DC()
{
  if (*v0)
  {
    return 0x6E69676E45703270;
  }

  else
  {
    return 0x676E4579616C6572;
  }
}

uint64_t sub_1A7E0E224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E4579616C6572 && a2 == 0xEB00000000656E69;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69676E45703270 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7E0E30C(uint64_t a1)
{
  v2 = sub_1A7E0E844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0E348(uint64_t a1)
{
  v2 = sub_1A7E0E844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0E384(uint64_t a1)
{
  v2 = sub_1A7E0E898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0E3C0(uint64_t a1)
{
  v2 = sub_1A7E0E898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7E0E3FC(uint64_t a1)
{
  v2 = sub_1A7E0E940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E0E438(uint64_t a1)
{
  v2 = sub_1A7E0E940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolResponseMessage.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B82A0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B82A8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v40 = sub_1A7CC7FFC(&qword_1EB2B82B0);
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v12);
  v14 = &v25 - v13;
  v15 = v1[1];
  v35 = *v1;
  v36 = v15;
  v16 = v1[3];
  v37 = v1[2];
  v38 = v16;
  v17 = v1[5];
  v39 = v1[4];
  v30 = v17;
  v18 = v1[7];
  v29 = v1[6];
  v28 = v18;
  v19 = v1[9];
  v27 = v1[8];
  v26 = v1[10];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E0E844();
  sub_1A7E23260();
  if ((v19 & 0x800000000000000) != 0)
  {
    LOBYTE(v41) = 1;
    sub_1A7E0E898();
    v23 = v40;
    sub_1A7E22F80();
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    sub_1A7E0E8EC();
    v24 = v34;
    sub_1A7E23030();
    (*(v33 + 8))(v6, v24);
    return (*(v11 + 8))(v14, v23);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1A7E0E940();
    v20 = v40;
    sub_1A7E22F80();
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v30;
    v47 = v29;
    v48 = v28;
    v49 = v27;
    v50 = v19;
    v51 = v26;
    sub_1A7E0E994();
    v21 = v32;
    sub_1A7E23030();
    (*(v31 + 8))(v10, v21);
    return (*(v11 + 8))(v14, v20);
  }
}

unint64_t sub_1A7E0E844()
{
  result = qword_1EB2B82B8;
  if (!qword_1EB2B82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B82B8);
  }

  return result;
}

unint64_t sub_1A7E0E898()
{
  result = qword_1EB2B82C0;
  if (!qword_1EB2B82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B82C0);
  }

  return result;
}

unint64_t sub_1A7E0E8EC()
{
  result = qword_1EB2B82C8;
  if (!qword_1EB2B82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B82C8);
  }

  return result;
}

unint64_t sub_1A7E0E940()
{
  result = qword_1EB2B82D0;
  if (!qword_1EB2B82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B82D0);
  }

  return result;
}

unint64_t sub_1A7E0E994()
{
  result = qword_1EB2B82D8;
  if (!qword_1EB2B82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B82D8);
  }

  return result;
}

uint64_t LEToolResponseMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B82E0);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v38 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B82E8);
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  v12 = sub_1A7CC7FFC(&qword_1EB2B82F0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - v15;
  v17 = a1[3];
  v55 = a1;
  sub_1A7CC9878(a1, v17);
  sub_1A7E0E844();
  v18 = v43;
  sub_1A7E23250();
  if (!v18)
  {
    v43 = v13;
    v19 = v42;
    v20 = sub_1A7E22F70();
    v21 = (2 * *(v20 + 16)) | 1;
    v51 = v20;
    v52 = v20 + 32;
    v53 = 0;
    v54 = v21;
    v22 = sub_1A7CDB538();
    v23 = v12;
    if (v22 == 2 || v53 != v54 >> 1)
    {
      v25 = sub_1A7E22BD0();
      swift_allocError();
      v27 = v26;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v27 = &type metadata for LEToolResponseMessage;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v43 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        LOBYTE(v44) = 1;
        sub_1A7E0E898();
        sub_1A7E22E70();
        v24 = v43;
        sub_1A7E0EF34();
        v30 = v40;
        sub_1A7E22F30();
        (*(v41 + 8))(v7, v30);
        (*(v24 + 8))(v16, v23);
        swift_unknownObjectRelease();
        v34 = v44;
        v35 = v45;
        v36 = 0x800000000000000;
        *&v37 = v46;
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_1A7E0E940();
        sub_1A7E22E70();
        v29 = v43;
        sub_1A7E0EF88();
        sub_1A7E22F30();
        (*(v39 + 8))(v11, v8);
        (*(v29 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = v44;
        v35 = v45;
        v37 = v46;
        v33 = v47;
        v31 = v48;
        v32 = v50;
        v36 = v49 & 0xF00000000000FFFFLL;
      }

      *v19 = v34;
      *(v19 + 16) = v35;
      *(v19 + 32) = v37;
      *(v19 + 48) = v33;
      *(v19 + 64) = v31;
      *(v19 + 72) = v36;
      *(v19 + 80) = v32;
    }
  }

  return sub_1A7B0CD6C(v55);
}

unint64_t sub_1A7E0EF34()
{
  result = qword_1EB2B82F8;
  if (!qword_1EB2B82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B82F8);
  }

  return result;
}

unint64_t sub_1A7E0EF88()
{
  result = qword_1EB2B8300;
  if (!qword_1EB2B8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8300);
  }

  return result;
}

uint64_t sub_1A7E0F00C(uint64_t a1)
{
  if (((*(a1 + 24) >> 60) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 7;
  }
}

void *sub_1A7E0F03C(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    result[3] = result[3] & 0x800000000000FFFFLL | (a2 << 60);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 4);
    *(result + 3) = xmmword_1A7E56460;
  }

  return result;
}

uint64_t sub_1A7E0F080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7E0F0C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7E0F12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 26);
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

uint64_t sub_1A7E0F178(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = -a2 << 16;
      *(result + 32) = 0;
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

uint64_t sub_1A7E0F1E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 74);
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

double sub_1A7E0F234(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = -a2 << 16;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7E0F388()
{
  result = qword_1EB2B8308;
  if (!qword_1EB2B8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8308);
  }

  return result;
}

unint64_t sub_1A7E0F3E0()
{
  result = qword_1EB2B8310;
  if (!qword_1EB2B8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8310);
  }

  return result;
}

unint64_t sub_1A7E0F438()
{
  result = qword_1EB2B8318;
  if (!qword_1EB2B8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8318);
  }

  return result;
}

unint64_t sub_1A7E0F490()
{
  result = qword_1EB2B8320;
  if (!qword_1EB2B8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8320);
  }

  return result;
}

unint64_t sub_1A7E0F4E8()
{
  result = qword_1EB2B8328;
  if (!qword_1EB2B8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8328);
  }

  return result;
}

unint64_t sub_1A7E0F540()
{
  result = qword_1EB2B8330;
  if (!qword_1EB2B8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8330);
  }

  return result;
}

unint64_t sub_1A7E0F598()
{
  result = qword_1EB2B8338;
  if (!qword_1EB2B8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8338);
  }

  return result;
}

unint64_t sub_1A7E0F5F0()
{
  result = qword_1EB2B8340;
  if (!qword_1EB2B8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8340);
  }

  return result;
}

unint64_t sub_1A7E0F648()
{
  result = qword_1EB2B8348;
  if (!qword_1EB2B8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8348);
  }

  return result;
}

unint64_t sub_1A7E0F6A0()
{
  result = qword_1EB2B8350;
  if (!qword_1EB2B8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8350);
  }

  return result;
}

unint64_t sub_1A7E0F6F8()
{
  result = qword_1EB2B8358;
  if (!qword_1EB2B8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8358);
  }

  return result;
}

unint64_t sub_1A7E0F750()
{
  result = qword_1EB2B8360;
  if (!qword_1EB2B8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8360);
  }

  return result;
}

unint64_t sub_1A7E0F7A8()
{
  result = qword_1EB2B8368;
  if (!qword_1EB2B8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8368);
  }

  return result;
}

unint64_t sub_1A7E0F800()
{
  result = qword_1EB2B8370;
  if (!qword_1EB2B8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8370);
  }

  return result;
}

unint64_t sub_1A7E0F858()
{
  result = qword_1EB2B8378;
  if (!qword_1EB2B8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8378);
  }

  return result;
}

unint64_t sub_1A7E0F8B0()
{
  result = qword_1EB2B8380;
  if (!qword_1EB2B8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8380);
  }

  return result;
}

unint64_t sub_1A7E0F908()
{
  result = qword_1EB2B8388;
  if (!qword_1EB2B8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8388);
  }

  return result;
}

unint64_t sub_1A7E0F960()
{
  result = qword_1EB2B8390;
  if (!qword_1EB2B8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8390);
  }

  return result;
}

unint64_t sub_1A7E0F9B8()
{
  result = qword_1EB2B8398;
  if (!qword_1EB2B8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8398);
  }

  return result;
}

unint64_t sub_1A7E0FA10()
{
  result = qword_1EB2B83A0;
  if (!qword_1EB2B83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83A0);
  }

  return result;
}

unint64_t sub_1A7E0FA68()
{
  result = qword_1EB2B83A8;
  if (!qword_1EB2B83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83A8);
  }

  return result;
}

unint64_t sub_1A7E0FAC0()
{
  result = qword_1EB2B83B0;
  if (!qword_1EB2B83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83B0);
  }

  return result;
}

unint64_t sub_1A7E0FB18()
{
  result = qword_1EB2B83B8;
  if (!qword_1EB2B83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83B8);
  }

  return result;
}

unint64_t sub_1A7E0FB70()
{
  result = qword_1EB2B83C0;
  if (!qword_1EB2B83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83C0);
  }

  return result;
}

unint64_t sub_1A7E0FBC8()
{
  result = qword_1EB2B83C8;
  if (!qword_1EB2B83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83C8);
  }

  return result;
}

unint64_t sub_1A7E0FC20()
{
  result = qword_1EB2B83D0;
  if (!qword_1EB2B83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83D0);
  }

  return result;
}

unint64_t sub_1A7E0FC78()
{
  result = qword_1EB2B83D8;
  if (!qword_1EB2B83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83D8);
  }

  return result;
}

unint64_t sub_1A7E0FCD0()
{
  result = qword_1EB2B83E0;
  if (!qword_1EB2B83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83E0);
  }

  return result;
}

unint64_t sub_1A7E0FD28()
{
  result = qword_1EB2B83E8;
  if (!qword_1EB2B83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83E8);
  }

  return result;
}

unint64_t sub_1A7E0FD80()
{
  result = qword_1EB2B83F0;
  if (!qword_1EB2B83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83F0);
  }

  return result;
}

unint64_t sub_1A7E0FDD8()
{
  result = qword_1EB2B83F8;
  if (!qword_1EB2B83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B83F8);
  }

  return result;
}

unint64_t sub_1A7E0FE30()
{
  result = qword_1EB2B8400;
  if (!qword_1EB2B8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8400);
  }

  return result;
}

uint64_t sub_1A7E0FE84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1886351214 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A7EAFF80 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A7EAFF40 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A7EAFF60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A7E1003C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736553736469 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69737365537271 && a2 == 0xEB0000000044496ELL || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A7EB2140 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657461636F6C6C61 && a2 == 0xEC00000065707954 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A7E10200(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDSQuickRelayAllocateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A7E10280()
{
  v3 = *MEMORY[0x1E69E9840];
  if (qword_1EB2BBC58)
  {
    v0 = "had salt from daemon, value changed";
  }

  else
  {
    v0 = "just recevied salt from daemon";
  }

  v1 = 136315138;
  v2 = v0;
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IDSLoggableDescriptionSalt changed - %s", &v1, 0xCu);
}

void sub_1A7E10334(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 queue];
    dispatch_assert_queue_V2(v4);

    v5 = [a1 config];
    if ([v5 bypassProcessChecks] & 1) != 0 || (_IDSRunningInDaemon())
    {
    }

    else
    {
      if (qword_1ED5DF7E0 != -1)
      {
        dispatch_once(&qword_1ED5DF7E0, &unk_1F1AAA0E0);
      }

      v15 = byte_1ED5DF7D8;

      if ((v15 & 1) == 0)
      {
        v16 = [a1 config];
        v17 = [v16 logCategory];

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          sub_1A7B0A58C();
          sub_1A7B0A740(&dword_1A7AD9000, v18, v19, "<%@:%p> not allowed to load, returning {_loaderState: %d}", v20, v21, v22, v23, v48, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), buf[0]);
        }

        goto LABEL_27;
      }
    }

    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 64))
    {
      v6 = [a1 config];
      v7 = [v6 logCategory];

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        os_unfair_lock_unlock((a1 + 8));
        goto LABEL_10;
      }

      objc_opt_class();
      sub_1A7B0A58C();
      v14 = "<%@:%p> not idle, returning {_loaderState: %d}";
LABEL_8:
      sub_1A7B0A740(&dword_1A7AD9000, v8, v9, v14, v10, v11, v12, v13, v48, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), buf[0]);
      goto LABEL_9;
    }

    v24 = _Block_copy(v3);
    v25 = *(a1 + 72);
    *(a1 + 72) = v24;

    if ((sub_1A7B0D220(a1) & 1) == 0)
    {
      *(a1 + 64) = 2;
      v47 = [a1 config];
      v7 = [v47 logCategory];

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      objc_opt_class();
      sub_1A7B0A58C();
      v14 = "<%@:%p> server not available, returning {_loaderState: %d}";
      goto LABEL_8;
    }

    v26 = objc_alloc(MEMORY[0x1E696AD68]);
    v27 = [a1 config];
    v28 = [v27 url];
    v17 = [v26 initWithURL:v28 cachePolicy:1 timeoutInterval:60.0];

    v29 = MEMORY[0x1E696AEC0];
    v30 = [MEMORY[0x1E69A60B8] sharedInstance];
    v31 = [v30 userAgentString];
    v32 = [v29 stringWithFormat:@"%@ %@", @"server-bag", v31];

    v51 = v32;
    [v17 setValue:v32 forHTTPHeaderField:@"user-agent"];
    v33 = IDSAdditionalRequestHeaders();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v60;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v59 + 1) + 8 * i);
          v39 = [v33 objectForKey:v38];
          [v17 setValue:v39 forHTTPHeaderField:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v35);
    }

    [v17 setHTTPShouldHandleCookies:0];
    v40 = [MEMORY[0x1E695DF00] date];
    *(a1 + 64) = 1;
    v41 = [a1 config];
    v42 = [v41 logCategory];

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      sub_1A7B0A58C();
      v64 = 2112;
      v65 = v17;
      _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "<%@:%p> starting load {_loaderState: %d, urlRequest: %@}", buf, 0x26u);
    }

    v43 = (*(*(a1 + 32) + 16))();
    v44 = *(a1 + 56);
    *(a1 + 56) = v43;

    v45 = *(a1 + 56);
    v52 = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = sub_1A7B16464;
    v55 = &unk_1E77DCE28;
    v56 = a1;
    v57 = v40;
    v58 = v3;
    v46 = v40;
    [v45 performRequest:v17 completionBlock:&v52];
    [*(a1 + 56) finishTasksAndInvalidate];
    os_unfair_lock_unlock((a1 + 8));

LABEL_27:
  }

LABEL_10:
}

void sub_1A7E108A4(char a1, char a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = @"NO";
  if (byte_1ED5DF7D8)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (a1)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = 138412802;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  if (a2)
  {
    v3 = @"YES";
  }

  v10 = 2112;
  v11 = v3;
  _os_log_error_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_ERROR, "Checked bag access permission -- allowed? %@ {hasMachAccess: %@, hasEntitlements: %@}", &v6, 0x20u);
}

void sub_1A7E10B4C()
{
  sub_1A7B20844();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E10BD4()
{
  sub_1A7B0A5CC();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E10C48()
{
  sub_1A7B20824();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E10CC0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1A7B208C8(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_ERROR, "Failed to get publicNGMIdentity - Failed to create publicDeviceIdentityContainer {error: %{public}@, deviceIdentityContainer: %{private}@}", v4, 0x16u);
}

void sub_1A7E10D18(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1A7B208C8(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_ERROR, "Failed to get publicLegacyIdentity - Failed {error: %{public}@, deviceIdentityContainer: %{private}@}", v4, 0x16u);
}

void sub_1A7E10D70()
{
  sub_1A7B20844();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E10DF8()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"identityIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_1A7E10E6C()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"signingIdentityContainer" object:? file:? lineNumber:? description:?];
}

void sub_1A7E10EE0(void *a1)
{
  v1 = [a1 debugDescription];
  sub_1A7B0A5F0();
  sub_1A7B20834();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1A7E10F6C()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"identityIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_1A7E10FE0()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"signingIdentityContainer" object:? file:? lineNumber:? description:?];
}

void sub_1A7E11054()
{
  sub_1A7B20880();
  v2 = [v1 ngmVersion];
  v3 = [v0 ngmVersion];
  sub_1A7B20854();
  sub_1A7B0A760();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1A7E11104()
{
  sub_1A7B208A4();
  v1 = [v0 debugDescription];
  sub_1A7B0A5CC();
  sub_1A7B0A760();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A7E1119C()
{
  sub_1A7B208EC();
  v2 = [sub_1A7B208E0(v0 v1)];
  sub_1A7B2080C();
  sub_1A7B0A760();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1A7E11230()
{
  sub_1A7B20880();
  v2 = [*(v1 + 40) debugDescription];
  v3 = [*(v0 + 48) debugDescription];
  sub_1A7B20890();
  sub_1A7B0A760();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1A7E112E8()
{
  sub_1A7B208A4();
  v1 = [v0 debugDescription];
  sub_1A7B0A5CC();
  sub_1A7B20834();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A7E11380()
{
  sub_1A7B208EC();
  v2 = [sub_1A7B208E0(v0 v1)];
  sub_1A7B2080C();
  sub_1A7B20834();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1A7E11414()
{
  sub_1A7B20880();
  v2 = [*(v1 + 32) debugDescription];
  v3 = [*(v0 + 40) debugDescription];
  sub_1A7B20890();
  sub_1A7B0A760();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1A7E114CC()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E11548()
{
  sub_1A7B20824();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1A7E115CC()
{
  sub_1A7B0A5CC();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E11640()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_1A7E116B4()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"signingIdentity" object:? file:? lineNumber:? description:?];
}

void sub_1A7E11728()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"outUsedIdentityIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_1A7E1179C()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"signingIdentity" object:? file:? lineNumber:? description:?];
}

void sub_1A7E11810(void *a1)
{
  v1 = [a1 debugDescription];
  sub_1A7B0A5CC();
  sub_1A7B0A760();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A7E118B0(uint64_t a1, void *a2)
{
  v2 = [a2 debugDescription];
  sub_1A7B20824();
  sub_1A7B0A760();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1A7E11958()
{
  sub_1A7B208A4();
  v1 = [v0 debugDescription];
  sub_1A7B0A5CC();
  sub_1A7B20834();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A7E119F0()
{
  sub_1A7B208EC();
  v2 = [sub_1A7B208E0(v0 v1)];
  sub_1A7B2080C();
  sub_1A7B20834();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1A7E11A84()
{
  sub_1A7B20880();
  v2 = [v1 ngmVersion];
  v3 = [v0 ngmVersion];
  sub_1A7B20854();
  sub_1A7B0A760();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1A7E11B34()
{
  sub_1A7B208A4();
  v1 = [v0 debugDescription];
  sub_1A7B0A5CC();
  sub_1A7B0A760();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A7E11BCC()
{
  sub_1A7B208EC();
  v2 = [sub_1A7B208E0(v0 v1)];
  sub_1A7B2080C();
  sub_1A7B0A760();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1A7E11C60()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E11D10()
{
  sub_1A7B0A5CC();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E11FF4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_FAULT, "IDSBlastDoorConnectionHelper: Missing keys in payload received from blastdoor {%@}", &v2, 0xCu);
}

void sub_1A7E1237C()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E123EC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  _os_log_debug_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEBUG, "%@", v1, 0xCu);
}

void sub_1A7E12460()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E125A0()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E12610()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E1295C()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_ERROR, "listener %p failed to start (%@)", v2, 0x16u);
}

void sub_1A7E129E8()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E12A58(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 134218498;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_ERROR, "listener %p got unexpected state: %u, %@", &v4, 0x1Cu);
}

void sub_1A7E12AF0()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E135A8()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E136FC()
{
  sub_1A7B0A5F0();
  sub_1A7B494E4();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E13770()
{
  sub_1A7B0A5F0();
  sub_1A7B494E4();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E13A70()
{
  sub_1A7B0A5F0();
  sub_1A7B494E4();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E13BCC()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E13C3C()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E13CAC()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E13D1C()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E13D8C()
{
  sub_1A7B494B4();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E13E04()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E13EFC()
{
  sub_1A7B494B4();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E13F74()
{
  sub_1A7B494B4();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E13FEC()
{
  sub_1A7B494B4();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E14064()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E1414C()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E1460C(void *a1)
{

  objc_end_catch();
}

uint64_t sub_1A7E14668(_DWORD *a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v7 = a2;
  v23 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v22 = 0;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if ([a1 _getPacketBufferSendInfo:v7 channelNumber:&v22 transport:&v21 glLinkProtocol:&v20])
  {
    v11 = [a1 _getLink:v7[57] stunTransport:v21 glLinkProtocol:v20];
    v19 = -1;
    v12 = v7[1216];
    v13 = v12;
    if ((v7[46] & 1) == 0)
    {
      if ((v12 & 0x80) != 0 || a1[360] <= v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = *&a1[2 * v7[1216] + 58];
      }

      v15 = [a1 _prepareOutgoingChannelData:&v23 arraySize:1 channelNumber:v22 candidatePair:v14 linkID:v13 delegatedLinkID:&v19 stunTransport:v21];
      if (v15)
      {
        goto LABEL_12;
      }

      v7 = v23;
    }

    _IDSLinkPacketBufferRetain("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLink.m", 10427, v7);
    v16 = *(v23 + 16);
    v15 = [v11 sendPacketBuffer:? toDeviceUniqueID:? cbuuid:?];
    LOBYTE(v18) = 1;
    [a1 _updateSendStatsWithResult:v15 bytesSent:v16 packetsSent:1 linkID:v13 delegatedLinkID:v19 token:0 isClientData:a5 sendTime:v18 stunTransport:v21 packetBuffer:v23];
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLink.m", 10433, v23);
LABEL_12:

    goto LABEL_13;
  }

  _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLink.m", 10409, v7);
  v15 = 9;
LABEL_13:

  return v15;
}

void sub_1A7E148A0()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E14EE4(void *a1)
{
  v1 = [a1 requestID];
  sub_1A7B0A664();
  sub_1A7B0A770(&dword_1A7AD9000, MEMORY[0x1E69E9C10], v2, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v3, v4, v5, v6, v7);
}

void sub_1A7E16058()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E160C8()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E16104()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E16140()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E161B0()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E17484()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1753C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E17578()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E175E8()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E1797C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E179B8()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E179F4()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E17A64(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 base64EncodedStringWithOptions:33];
  sub_1A7B0A5F0();
  _os_log_error_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_ERROR, "failed to parse incoming proto message %@", v4, 0xCu);
}

void sub_1A7E17B00()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E17B3C()
{
  v0 = [0 candidatePairToken];
  sub_1A7B0A664();
  sub_1A7B0A770(&dword_1A7AD9000, MEMORY[0x1E69E9C10], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v6);
}

void sub_1A7E186F0()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E18760()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E187D0()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1880C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E18848(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_ERROR, "IDSHBHEncryptDataWithKey failed due to invalid parameters. derivedKey = %p, plaintext = %p", &v3, 0x16u);
}

void sub_1A7E188D0()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E18940()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E189B0()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E189EC(void *a1)
{
  v1 = [a1 initializationVector];
  [v1 length];
  sub_1A7BE1A88();
  sub_1A7BE1A9C(&dword_1A7AD9000, v2, v3, "IDSHBHDecryptDataWithKey Initialization Vector length should be %u bytes, not %lu bytes.", v4, v5, v6, v7, 0);
}

void sub_1A7E18A7C(void *a1)
{
  v1 = [a1 authenticationTag];
  [v1 length];
  sub_1A7BE1A88();
  sub_1A7BE1A9C(&dword_1A7AD9000, v2, v3, "IDSHBHDecryptDataWithKey Authentication Tag length should be %u bytes, not %lu bytes.", v4, v5, v6, v7, 0);
}

void sub_1A7E18B0C()
{
  sub_1A7B0A78C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1A7E18B7C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E18C58()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_ERROR, "write: invalid outBuf %p %p", v2, 0x16u);
}

void sub_1A7E18DD8(int *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 134218240;
  v5 = a2;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_ERROR, "remainingLength: %zd < attributeLen: %d", &v4, 0x12u);
}

void sub_1A7E18E64()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E18ED4()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E18F44()
{
  sub_1A7B0A5F0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A7E19060()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E190EC()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19178()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19204()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19290()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E1931C()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E193A8()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19434()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E194C0()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E1954C()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E195D8()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19664()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E196F0()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E1977C()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E1983C()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E198C8()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19954()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E199E0()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19A6C()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19AF8()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19B84()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19C10()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19C9C()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19D28()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19DB4()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19E74()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19F00()
{
  v0 = objc_opt_class();
  v1 = sub_1A7B0A690(v0);
  sub_1A7B0A7B8(&dword_1A7AD9000, v2, v3, "%s on %@ should never be called!", v4, v5, v6, v7, 2u);
}

void sub_1A7E19FC0(dispatch_queue_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(a1[4]);
    v2 = [(dispatch_queue_t *)a1 cacheDidReloadBlock];
    if (v2 && (v3 = v2, v4 = [(dispatch_queue_t *)a1 postingNotification], v3, !v4))
    {
      v11 = [(dispatch_queue_t *)a1 config];
      v12 = [v11 logCategory];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2048;
        v17 = a1;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "<%@:%p> processing external reload", &v14, 0x16u);
      }

      v6 = [(dispatch_queue_t *)a1 loadFromCacheWithError:0];
      if (v6)
      {
        v13 = [(dispatch_queue_t *)a1 cacheDidReloadBlock];
        (v13)[2](v13, v6);
      }
    }

    else
    {
      v5 = [(dispatch_queue_t *)a1 config];
      v6 = [v5 logCategory];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = [(dispatch_queue_t *)a1 cacheDidReloadBlock];
        if (v8)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v14 = 138413058;
        if ([(dispatch_queue_t *)a1 postingNotification])
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v15 = v7;
        v16 = 2048;
        v17 = a1;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "<%@:%p> asked to reload externally, not not in a state to do so {hasCacheDidReloadBlock: %@, postingNotification: %@}", &v14, 0x2Au);
      }
    }
  }
}

void sub_1A7E1A1EC(dispatch_queue_t *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(a1[4]);
    [(dispatch_queue_t *)a1 setPostingNotification:1];
    v2 = [(dispatch_queue_t *)a1 config];
    v3 = [v2 logCategory];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = a1;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "<%@:%p> posting external reload notification", buf, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"__k_IDSServerBagFinishedLoadingDistributedNotification", 0, 0, 0);
    v5 = dispatch_time(0, 1000000000);
    v6 = [(dispatch_queue_t *)a1 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7BE77E8;
    block[3] = &unk_1E77E0818;
    block[4] = a1;
    dispatch_after(v5, v6, block);
  }
}

void sub_1A7E1A380(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7BE778C;
    block[3] = &unk_1E77E0818;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1A7E1A410(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 138412546;
  v2 = a1;
  v3 = 2080;
  v4 = "_sessionIDToSlicingBitMask";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
}

void sub_1A7E1A4A4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_ERROR, "Deprecated -objectForKey called on IDSMessageContext! {key : %@}", &v2, 0xCu);
}

void sub_1A7E1A600()
{
  sub_1A7BEEC78();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1A7E1A690()
{
  sub_1A7BEEC60();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1A790(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_ERROR, "Failed to create full identity {error: %{public}@}", &v2, 0xCu);
}

void sub_1A7E1A92C()
{
  sub_1A7BEEC60();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1AA40()
{
  sub_1A7BEEC60();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1AAF4(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "Failure computing hash of message for replay key { isEC: %@, error: %@ }", &v4, 0x16u);
}

void sub_1A7E1AB94()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTVerifierResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSIDInfoResult.m" lineNumber:12 description:{@"Unable to find class %s", "KTVerifierResult"}];

  __break(1u);
}

void sub_1A7E1AC10(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSIDInfoResult.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A7E1ACD0()
{
  v0 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEFAULT, "failed to generate connection ID", v1, 2u);
  }

  abort();
}

void sub_1A7E1ADC4()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AE00()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AE3C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AE78()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AEB4()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AEF0()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AF2C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1AF68()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1AFF8()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1B088()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1B118()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1B1A8()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1B238()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1B2C8()
{
  sub_1A7B0A650();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A7E1B528()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1B7B4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSCloudKitKeyElectionStore.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

void sub_1A7E1B82C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSCloudKitKeyElectionStore.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"item.groupName"}];
}

void sub_1A7E1B8A4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSCloudKitKeyElectionStore.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"item.groupID"}];
}

void sub_1A7E1B91C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "Failed to save account identity item {record: %{public}@, error: %{public}@}", &v5, 0x16u);
}

void sub_1A7E1BBA0(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = 138478083;
  v5 = v2;
  v6 = 2113;
  v7 = v3;
  _os_log_fault_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_FAULT, "Endpoint has ngmPublicDeviceIdentity but no ngmVersion -- creating legacy endpiont {URI: %{private}@, pushToken: %{private}@}", &v4, 0x16u);
}

void sub_1A7E1BC2C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = 138543875;
  v6 = a1;
  v7 = 2113;
  v8 = v3;
  v9 = 2113;
  v10 = v4;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "Failed to create publicDeviceContainer - Creating corrupt endpoint {error: %{public}@, URI: %{private}@, pushToken: %{private}@}", &v5, 0x20u);
}

void sub_1A7E1BCC4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_FAULT, "Endpoint public identity is not valid {serializedPublicMessageProtectionIdentity : %@}", &v2, 0xCu);
}

void sub_1A7E1BD3C(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_ERROR, "Invalid formated kt endpoint validation: %d", v2, 8u);
}

void sub_1A7E1BF54()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_FAULT, "Failed to parse record {record: %@, error: %@}", v2, 0x16u);
}

void sub_1A7E1BFD8(void *a1)
{
  v1 = [a1 payload];
  sub_1A7B0A5F0();
  sub_1A7C179E0(&dword_1A7AD9000, v2, v3, "Message without recipient alias: %{private}@", v4, v5, v6, v7, v8);
}

void sub_1A7E1C05C(void *a1)
{
  v1 = [a1 payload];
  sub_1A7B0A5F0();
  sub_1A7C179E0(&dword_1A7AD9000, v2, v3, "Message without sender alias: %{private}@", v4, v5, v6, v7, v8);
}

void sub_1A7E1C2C0(void *a1)
{
  v1 = [a1 accountKey];
  sub_1A7B0A6D4(&dword_1A7AD9000, v2, v3, "Key class mismatch -- Fail {key: %{public}@}", v4, v5, v6, v7, 2u);
}

void sub_1A7E1C348(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_DEBUG, "LegacyMP cypher data - {data: %{private}@}", &v2, 0xCu);
}

void sub_1A7E1C3C0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_DEBUG, "LegacyMP decypher data - {decrypted: %{private}@}", &v2, 0xCu);
}

void sub_1A7E1C438()
{
  sub_1A7B400EC();
  sub_1A7C33B70();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1C574()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1C5B0()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1C660()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1C69C()
{
  sub_1A7B400EC();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A7E1D40C()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A650();
  v1 = "participantUpdateInfo";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_1A7E1D4A0()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A650();
  v1 = "participantUpdateInfo";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_1A7E1D548(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 138412546;
  v2 = a1;
  v3 = 2080;
  v4 = "_tokenToRelayInterfaceInfoDeliveryStatus";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
}

void sub_1A7E1D90C()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTVerifierResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSQueryKeyTransparencyContext.m" lineNumber:12 description:{@"Unable to find class %s", "KTVerifierResult"}];

  __break(1u);
}

void sub_1A7E1D988(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSQueryKeyTransparencyContext.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A7E1DEFC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_ERROR, "Failed to create certifiedDeliveryContext from dataRepresentation : %@, error : %@", &v3, 0x16u);
}

void sub_1A7E1DF84(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_ERROR, "Failed to create dataRepresentation from certifiedDeliveryContext, error : %@", &v2, 0xCu);
}

void sub_1A7E1DFFC(os_unfair_lock_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1)
  {
    v8 = [(os_unfair_lock_s *)a1 queue];
    dispatch_assert_queue_V2(v8);

    if (v7)
    {
      if (a3)
      {
        a3 = _IDSRunningInDaemon();
      }

      v9 = [(os_unfair_lock_s *)a1 validator];
      v19 = 0;
      v10 = [v9 trustedContentsFromRawContents:v7 shouldReport:a3 withError:&v19];
      v11 = v19;

      if (!v10 || v11)
      {
        v18 = [(os_unfair_lock_s *)a1 config];
        v12 = [v18 logCategory];

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          sub_1A7B0A6F4();
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "<%@:%p> content update not validated {cacheValidationError: %@}", buf, 0x20u);
        }
      }

      else
      {
        os_unfair_lock_lock(a1 + 2);
        [(os_unfair_lock_s *)a1 setLoadedRawContents:v7];
        v12 = [(os_unfair_lock_s *)a1 contentsUpdatedBlock];
        os_unfair_lock_unlock(a1 + 2);
        if (!a4)
        {
          v13 = [(os_unfair_lock_s *)a1 cacheLoader];
          v14 = [v13 writeRawContents:v7];
        }

        if (v12)
        {
          (*(v12 + 16))(v12, v10, a4);
        }

        v15 = [(os_unfair_lock_s *)a1 config];
        v16 = [v15 logCategory];

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          sub_1A7B0A6F4();
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "<%@:%p> content update loaded {loadedContents: %@}", buf, 0x20u);
        }
      }
    }

    else
    {
      v17 = [(os_unfair_lock_s *)a1 config];
      v11 = [v17 logCategory];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        sub_1A7B0A6F4();
        _os_log_error_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_ERROR, "<%@:%p> Told to process contents but none found", buf, 0x16u);
      }
    }
  }
}

void sub_1A7E1E2C4(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = *a1;
  v8 = 138412802;
  v9 = v6;
  v10 = 2048;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1A7AD9000, a3, OS_LOG_TYPE_ERROR, "<%@:%p> Loader failed with error {error: %@}", &v8, 0x20u);
}

void sub_1A7E1E380(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_1A7E1DFFC(WeakRetained, a2, 1, 0);
}

void sub_1A7E1EBF4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = 138412802;
  v5 = v3;
  v6 = 2112;
  v7 = 0;
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "Failed to issue phone number registration request due to insufficient context { coreTelephonyClient: %@, error: %@, context: %@ }", &v4, 0x20u);
}

void sub_1A7E1EC88()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  _os_log_fault_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_FAULT, "Missing completion! {self: %@}", v1, 0xCu);
}

void sub_1A7E1ECFC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  _os_log_debug_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEBUG, "IDSCTPNR received carrier bundle change callback {self: %@}", v1, 0xCu);
}

void sub_1A7E1ED70()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  _os_log_debug_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEBUG, "IDSCTPNR received operator bundle change callback {self: %@}", v1, 0xCu);
}

void sub_1A7E1EE60(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  sub_1A7B0A5F0();
  _os_log_fault_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_FAULT, "CSR Key validation failed -- regenerating {error: %@ }", v4, 0xCu);
}

void sub_1A7E1EEF8()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_FAULT, "Failed storing keypair signature data [Identifier: %@] (error: %d)", v2, 0x12u);
}

void sub_1A7E1EF80(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_ERROR, "Asked for callerID with fromID %@ from a non-ds-based account.", &v1, 0xCu);
}

void sub_1A7E1EFFC()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_ERROR, "Asked for callerID with fromID %@ for ds-based account. Forcing fromID = %@", v2, 0x16u);
}

void sub_1A7E1F080()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  _os_log_debug_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEBUG, "CallerID - no fromID and this is a ds-based account, using %@", v1, 0xCu);
}

void sub_1A7E1F108()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  _os_log_error_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_ERROR, "_IDSFetchPhoneNumber failed due to telephony error { error: %@ }", v1, 0xCu);
}

void sub_1A7E1F17C()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_DEBUG, "_IDSCopyOrderedAliases sorted aliases %@  (my phone numbers: %@)", v2, 0x16u);
}

void sub_1A7E1F3B0()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_DEBUG, "No value found in carrier bundle for provided key { key: %@, fallbackValue: %@ }", v2, 0x16u);
}

void sub_1A7E1F434()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7B0A5F0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_ERROR, "Failed to fetch SIMContext for SIM {error: %@, context: %@}", v2, 0x16u);
}

void sub_1A7E1F534()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A664();
  v1 = "_tokenToConnectionData";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_1A7E1F5BC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A7B0A664();
  v1 = "_tokenToDeliveryStatus";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_1A7E1F834(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_DEBUG, "Failed to create RTCReporting session. Error: %@", &v4, 0xCu);
}

void sub_1A7E1F96C()
{
  sub_1A7B0A70C();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1A7E1F9F4()
{
  sub_1A7B0A70C();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1A7E1FA8C()
{
  sub_1A7B0A70C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E1FB14()
{
  sub_1A7B0A70C();
  sub_1A7C960A0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void sub_1A7E1FBA4()
{
  sub_1A7B0A70C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E1FC2C()
{
  sub_1A7B0A70C();
  sub_1A7C960A0();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void sub_1A7E1FCB8()
{
  sub_1A7B0A70C();
  sub_1A7C960A0();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void sub_1A7E1FD44()
{
  sub_1A7B0A70C();
  sub_1A7C960A0();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1A7E1FDC8()
{
  sub_1A7B0A70C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1A7E1FE58()
{
  sub_1A7B0A70C();
  sub_1A7B0A5E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_1A7E1FEF0()
{
  sub_1A7B0A70C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E1FFF8(NSObject *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = 136315650;
  v4 = "[IDSUDPLink reconnectWithLocalAddress:]";
  v5 = 1024;
  v6 = 750;
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&dword_1A7AD9000, a1, OS_LOG_TYPE_ERROR, "%s:%d getsockname failed: %d", &v3, 0x18u);
}

void sub_1A7E200A8()
{
  sub_1A7B0A70C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E20130()
{
  sub_1A7B0A70C();
  sub_1A7B0A5FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1A7E201B8(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_DEBUG, "_parseHeader: _currentCapsuleType: %llu, _currentCapsuleLength: %llu", &v5, 0x16u);
}

void sub_1A7E20274(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 connection];
  v4 = 134217984;
  id = nw_connection_get_id();
  _os_log_debug_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_DEBUG, "[C%llu] _readWithCompletionHandler", &v4, 0xCu);
}

void sub_1A7E20454()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 138412546;
  v1 = @"qI";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_1A7E20574(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A7AD9000, a2, OS_LOG_TYPE_FAULT, "FAULTING: %@ : Found archived data objects.", &v2, 0xCu);
}

void sub_1A7E205EC()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"featureID" object:? file:? lineNumber:? description:?];
}

void sub_1A7E20660()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"[allowedServices count]" object:? file:? lineNumber:? description:?];
}

void sub_1A7E2086C()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"URI" object:? file:? lineNumber:? description:?];
}

void sub_1A7E208E0()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"maskedURI" object:? file:? lineNumber:? description:?];
}

void sub_1A7E20954()
{
  sub_1A7B208BC();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_1A7B208B0();
  [v0 handleFailureInMethod:@"properties" object:? file:? lineNumber:? description:?];
}

__CFArray *sub_1A7E20BA8(void *a1, void *a2, int a3, uint64_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!a1)
  {
LABEL_55:
    Mutable = 0;
    goto LABEL_56;
  }

  v8 = [a1 config];
  v9 = [v8 url];
  v10 = [a1 config];
  v11 = [v10 validateAgainstIDSPolicy];
  v12 = v7;
  v13 = v9;
  if (v13)
  {
    v52 = v11;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v48 = v12;
      v49 = a4;
      v50 = a3;
      v51 = v7;
      v56 = 0u;
      v57 = 0u;
      *error = 0u;
      v55 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:error objects:buf count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v55;
LABEL_6:
        v19 = 0;
        while (1)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(error[1] + v19);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v21 = SecCertificateCreateWithData(0, v20);
          if (!v21)
          {
            break;
          }

          v22 = v21;
          CFArrayAppendValue(Mutable, v21);
          CFRelease(v22);
          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:error objects:buf count:16];
            if (v17)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      trust = 0;
      Count = CFArrayGetCount(Mutable);
      v7 = v51;
      a4 = v49;
      if (Count == [v15 count])
      {
        v24 = [v13 host];
        v25 = v52 ? SecPolicyCreateAppleIDSService() : SecPolicyCreateSSL(1u, v24);
        v26 = v25;

        if (v26)
        {
          if (SecTrustCreateWithCertificates(Mutable, v26, &trust) && trust)
          {
            CFRelease(trust);
            trust = 0;
          }

          CFRelease(v26);
        }
      }

      CFRelease(Mutable);
      Mutable = trust;
      a3 = v50;
      v12 = v48;
    }
  }

  else
  {
    Mutable = 0;
  }

  if (Mutable)
  {
    error[0] = 0;
    if (!SecTrustEvaluateWithError(Mutable, error))
    {
      if (SecTrustIsExpiredOnly())
      {
        v27 = a3;
        v28 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v30 = CFDateCreate(v28, Current + -604800.0);
        v31 = SecTrustSetVerifyDate(Mutable, v30);
        CFRelease(v30);
        if (v31)
        {
          v32 = [a1 config];
          v33 = [v32 logCategory];

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            objc_opt_class();
            sub_1A7B0A71C();
            v59 = 1024;
            LODWORD(v60) = v31;
            _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "<%@:%p> Failed trust evaluate, unable to check verify date {errorRef: %@, setDateStatus: %d}", buf, 0x26u);
          }

          v30 = 0;
          LODWORD(a4) = 0;
        }

        else
        {
          if (error[0])
          {
            CFRelease(error[0]);
            error[0] = 0;
          }

          if (SecTrustEvaluateWithError(Mutable, error))
          {
            v30 = 1;
            LODWORD(a4) = 1;
          }

          else
          {
            v35 = [a1 config];
            v36 = [v35 logCategory];

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              objc_opt_class();
              sub_1A7B0A71C();
              v59 = v37;
              v60 = v30;
              _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "<%@:%p> Failed trust evaluate, after date adjustment {errorRef: %@, oneWeekAgo: %@}", buf, 0x2Au);
            }

            if (a4)
            {
              sub_1A7CC12D4(error[0]);
            }

            else
            {
              v30 = 0;
            }
          }
        }

        a3 = v27;
      }

      else
      {
        v34 = [a1 config];
        v30 = [v34 logCategory];

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          sub_1A7B0A71C();
          _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "<%@:%p> Failed trust evaluate, not expired {errorRef: %@}", buf, 0x20u);
        }

        if (a4)
        {
          sub_1A7CC12D4(error[0]);
        }

        else
        {
          v30 = 0;
        }
      }

      if (a3)
      {
        v38 = [a1 config];
        v39 = [v38 sosDomain];
        v40 = [a1 config];
        v41 = [v40 url];
        v42 = [v41 absoluteString];
        v43 = [IDSSOSMetric metricWithDomain:v39 type:v30 error:9001 bagURL:v42];

        v44 = +[IDSSOSLogger logger];
        [v44 logMetric:v43];
      }

      if (IMGetDomainBoolForKey())
      {
        v45 = [MEMORY[0x1E69A60F0] sharedInstance];
        v46 = [v45 isInternalInstall];
      }

      else
      {
        v46 = 0;
      }

      if (((a4 | v46) & 1) == 0)
      {
        if (error[0])
        {
          CFRelease(error[0]);
          error[0] = 0;
        }

        CFRelease(Mutable);
        goto LABEL_55;
      }
    }
  }

LABEL_56:

  return Mutable;
}

BOOL sub_1A7E21178(void *a1, void *a2, void *a3, __SecTrust *a4, int a5, void *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!v11 || !a4)
  {
    v16 = [a1 config];
    v17 = [v16 logCategory];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      objc_opt_class();
      sub_1A7B0A6F4();
      _os_log_error_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_ERROR, "<%@:%p> No input signature or trust provided for server bag verification", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v13 = SecTrustCopyKey(a4);
  if (!v13)
  {
    v18 = [a1 config];
    v17 = [v18 logCategory];

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_18:

LABEL_19:
      v24 = 0;
      goto LABEL_27;
    }

    objc_opt_class();
    sub_1A7B0A6F4();
    v19 = "<%@:%p> Could not extract public key from trust for server bag signature verification";
    v20 = v17;
    v21 = 22;
LABEL_29:
    _os_log_fault_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_FAULT, v19, buf, v21);
    goto LABEL_18;
  }

  v14 = v13;
  if (a5 == 1)
  {
    v15 = MEMORY[0x1E697B1C8];
    goto LABEL_13;
  }

  if (a5)
  {
    CFRelease(v13);
    v29 = [a1 config];
    v17 = [v29 logCategory];

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    objc_opt_class();
    sub_1A7B0A6F4();
    v38 = 1024;
    LODWORD(v39) = a5;
    v19 = "<%@:%p> Unsupported server bag signature algorithm {hashAlgorithm: %d}";
    v20 = v17;
    v21 = 28;
    goto LABEL_29;
  }

  v15 = MEMORY[0x1E697B1C0];
LABEL_13:
  v22 = *v15;
  v32 = v12;
  error = 0;
  v23 = SecKeyVerifySignature(v13, v22, v12, v11, &error);
  v24 = v23 != 0;
  v25 = [a1 config];
  v26 = [v25 logCategory];

  if (v23)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = _IDSServerBagHashAlgorithmString(a5);
      *buf = 138412802;
      v35 = v27;
      v36 = 2048;
      v37 = a1;
      v38 = 2112;
      v39 = v28;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_INFO, "<%@:%p> Server bag signature verification succeeded {algorithm: %@}", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      *buf = 138413058;
      v35 = v31;
      v36 = 2048;
      v37 = a1;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = error;
      _os_log_error_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_ERROR, "<%@:%p> Server bag signature failed to verify {secAlgorithm: %@, error: %@}", buf, 0x2Au);
    }

    if (a6)
    {
      *a6 = error;
    }
  }

  v12 = v32;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  CFRelease(v14);
LABEL_27:

  return v24;
}