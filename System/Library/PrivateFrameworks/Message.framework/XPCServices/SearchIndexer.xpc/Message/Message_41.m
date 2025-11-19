uint64_t sub_10029B4F4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v15 = a7 >> 1;
  if (a7 >> 1 == a6)
  {
    *(v8 + 40) = result;
    *(v8 + 48) = a2;
    *(v8 + 56) = a3 & 1;
    return result;
  }

  if ((a7 >> 1) <= a6)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (__OFSUB__(v15, a6))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = result;
  v30 = a3;
  v12 = *(a5 + 8 * a6);
  if (v12 >= 1)
  {
    v7 = a4;
    v11 = a7;
    v14 = a2;
    v13 = a5;
    result = type metadata accessor for ReplacementNode();
    v17 = a6;
    v9 = *(v8 + *(result + 28));
    if (v12 <= v9[2])
    {
      v28 = *(result + 28);
      v29 = v12 - 1;
      v18 = v17 + 1;
      if (!__OFSUB__(v15, v17 + 1))
      {
        v10 = result;
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = isUniquelyReferenced_nonNull_native;
        if (v15 != v18)
        {
          v22 = v30;
          result = v31;
          if (v20)
          {
            v23 = v14;
            goto LABEL_14;
          }

LABEL_22:
          v27 = sub_10026B29C(v9);
          v22 = v30;
          v23 = v14;
          v9 = v27;
          result = v31;
LABEL_14:
          v24 = v11;
          if (v12 > v9[2])
          {
            __break(1u);
          }

          else
          {
            v25 = v8;
            v26 = v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v29;
            sub_10029B4F4(result, v23, v22 & 1, v7, v13, v18, v24);
            result = swift_unknownObjectRelease();
            *(v25 + v28) = v9;
          }

          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_10:
          v18 = v29;
          result = swift_unknownObjectRelease();
          if (v12 <= v9[2])
          {
            v21 = v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v29;
            *(v21 + 40) = v31;
            *(v21 + 48) = v14;
            *(v21 + 56) = v30 & 1;
            *(v8 + v28) = v9;
            return result;
          }

          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        v9 = sub_10026B29C(v9);
        goto LABEL_10;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_10029B748(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1004A6E94();
  SectionSpecifier.Part.hash(into:)(v6, a1);
  v4 = sub_1004A6F14();

  return sub_10029B7B4(a1, v4);
}

unint64_t sub_10029B7B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10029B86C()
{
  result = qword_1005D6AC8;
  if (!qword_1005D6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6AC8);
  }

  return result;
}

uint64_t sub_10029B8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplacementNode();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029B924(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029B9CC(uint64_t a1)
{
  v2 = type metadata accessor for ReplacementNode();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029BA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029BAA0(char a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, char *), uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (a9)
  {
    v13 = a11 + a9;
  }

  else
  {
    v13 = 0;
  }

  sub_1002AADD4(a9, v13, a8, v85);
  v79 = 0u;
  v80 = 0u;
  v81 = 0x1FFFFFFF0ELL;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v14 = sub_1002AC09C();
  if (v17 == 2)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v69 = 0;
    v22 = 0;
  }

  else
  {
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v62 = a3;
    v63 = a4;
    v75 = 0;
    v68 = 0;
    v69 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v27 = 0;
    do
    {
      sub_1002AB9E4(v23, v24, v25, v26 & 1, &v86);
      v32 = v86;
      v31 = v87;
      v34 = v88;
      v33 = v89;
      v35 = v90;
      v36 = v91;
      if (v90 >> 59 == 9)
      {
        v74 = v26;
        v37 = v90;
        v38 = v25;
        v39 = v91;
        v40 = v24;
        v41 = v88;
        v42 = v86;
        v43 = v87;
        v44 = v89;

        v33 = v44;
        v31 = v43;
        v32 = v42;
        v34 = v41;
        v24 = v40;
        v36 = v39;
        v25 = v38;
        v35 = v37;
        v26 = v74;
        v67 = v31;
        v68 = v32;
        v65 = v33;
        v66 = v34;
        v69 = v35;
        v75 = v36;
      }

      if (!(v27 & 1 | (v23 == 0)) && a9 && &v23[-a9] >= 1)
      {
        v45 = v33;
        sub_1002863C4(a8, a1, 1, a6, a7, 0, &v23[-a9], a9, a10);
        v33 = v45;
      }

      if ((v81 & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*(&v82 + 1))
        {
          v46 = (v83 - *(&v82 + 1));
        }

        else
        {
          v46 = 0;
        }

        if ((v46 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v47 = v33;
        sub_1002863C4(a8, a1, 1, a6, a7, 0, v46, *(&v82 + 1), v83);
        sub_100025F40(&v79, &qword_1005D6328, &qword_1004ECE90);
        v33 = v47;
      }

      *&v79 = v32;
      *(&v79 + 1) = v31;
      *&v80 = v34;
      *(&v80 + 1) = v33;
      v81 = v35;
      *&v82 = v36;
      *(&v82 + 1) = v23;
      *&v83 = v24;
      *(&v83 + 1) = v25;
      v84 = v26 & 1;
      v23 = sub_1002AC09C();
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = 1;
    }

    while (v30 != 2);
    a4 = v63;
    v22 = v75;
    v19 = v67;
    v18 = v68;
    v21 = v65;
    v20 = v66;
    a3 = v62;
  }

  if ((v81 & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
  {
LABEL_36:
    if (a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v48 = a3;
  v49 = *(&v82 + 1);
  v50 = v83;
  if (v81 >> 59)
  {
    sub_100025F40(&v79, &qword_1005D6328, &qword_1004ECE90);
    if (v49)
    {
      v52 = v50 - v49;
    }

    else
    {
      v52 = 0;
    }

    if ((v52 & 0x8000000000000000) == 0)
    {
      sub_1002863C4(a8, a1, 1, a6, a7, 0, v52, v49, v50);
      a3 = v48;
      goto LABEL_36;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v48 & 1) == 0)
  {
LABEL_37:
    sub_100262B54(a1, a2, a6);
    goto LABEL_38;
  }

  if (a2)
  {
    if (*(&v82 + 1))
    {
      v51 = (v83 - *(&v82 + 1));
    }

    else
    {
      v51 = 0;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
LABEL_62:
      __break(1u);
    }

    sub_10000E268(&v79, v76, &qword_1005D6328, &qword_1004ECE90);
    sub_1002863C4(a8, a1, 1, a6, a7, 0, v51, v49, v50);
  }

LABEL_38:
  if (a1)
  {
    if (a1 == 1)
    {
      v53 = 13;
    }

    else
    {
      v53 = 10;
    }

    LOBYTE(v76[0]) = v53;
    v54 = v76;
    v55 = v76 + 1;
  }

  else
  {
    v54 = "\r\n";
    v55 = "";
  }

  result = (a6)(v54, v55);
  if (!a4)
  {
  }

  if (!v22)
  {
    return result;
  }

  v76[0] = v18;
  v76[1] = v19;
  v76[2] = v20;
  v76[3] = v21;
  v77 = v69;
  v78 = v22;

  v57 = sub_100271A2C();
  if (v59 != 2)
  {
    v60 = v58;
    if ((v59 & 1) == 0)
    {
      sub_10029E8D4(v57, v58);
      goto LABEL_54;
    }

    if (v57)
    {
      v61 = v58 - v57;
    }

    else
    {
      v61 = 0;
    }

    if ((v61 & 0x8000000000000000) == 0)
    {
      sub_1002871D4(0, v61, v57, v60);
LABEL_54:
      a4();

      goto LABEL_55;
    }

    goto LABEL_61;
  }

LABEL_55:
  sub_1000B5158(a4);
}

char *sub_10029BF90(char a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v51 = a3;
  v52 = a6;
  v53 = a7;
  v12 = sub_1004A5384();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v47 - v21;
  v23 = type metadata accessor for Message(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E268(a2, v22, &qword_1005D6620, &qword_1004EB7F0);
  v27 = type metadata accessor for PartReplacement();
  if ((*(*(v27 - 8) + 48))(v22, 1, v27) == 1)
  {
    sub_100025F40(v22, &qword_1005D6620, &qword_1004EB7F0);
LABEL_8:
    v38 = v50;
    v39 = v51;
    v41 = v52;
    v40 = v53;
    sub_10029DA2C(a1, a2, v51, a4, a5, v52, v53, v50);
    return sub_10029DC90(a1, a2, v39, a4, a5, v41, v40, v38);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10029F6F0(v22, type metadata accessor for PartReplacement);
    goto LABEL_8;
  }

  v28 = sub_10029F5A4(v22, v26, type metadata accessor for Message);
  __chkstk_darwin(v28);
  *(&v47 - 64) = a5;
  v29 = v53;
  *(&v47 - 7) = v52;
  *(&v47 - 6) = v29;
  v31 = v50;
  v30 = v51;
  *(&v47 - 5) = v50;
  *(&v47 - 32) = a1;
  *(&v47 - 3) = v30;
  __chkstk_darwin(v32);
  v45 = sub_10029F93C;
  v46 = v33;
  if (!Message.isEmpty.getter())
  {
    sub_10029F53C(v26, v18, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v47;
      v35 = v48;
      v36 = v49;
      v37 = (*(v48 + 32))(v47, v18, v49);
      __chkstk_darwin(v37);
      *(&v47 - 4) = v34;
      *(&v47 - 3) = sub_10029F8F4;
      v45 = (&v47 - 4);
      sub_1004A5314();
      (*(v35 + 8))(v34, v36);
    }

    else
    {
      v43 = *v18;
      v44 = v18[1];
      sub_10029E17C(*v18, v44, a5, v52, v53, v31, a1, v51, a4);
      sub_100014D40(v43, v44);
    }
  }

  return sub_10029F6F0(v26, type metadata accessor for Message);
}

uint64_t sub_10029C448(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v24 = 13;
      v26 = 11565;
      v6 = &v27;
      __chkstk_darwin(a1);
      v9 = __chkstk_darwin(v7);
      if (v10)
      {
        if (a1)
        {
          v11 = a2 - a1;
        }

        else
        {
          v11 = 0;
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          return sub_100287598(0, v11, a1, a2, sub_10029F8C4);
        }

        __break(1u);
        goto LABEL_26;
      }

      v21 = v8;
      (v8)(&v24, &v25, v9);
      v21(&v26, &v27);
      v21(a1, a2);
      v22 = &v26;
    }

    else
    {
      v24 = 10;
      v27 = 11565;
      v6 = &v28;
      __chkstk_darwin(a1);
      v19 = __chkstk_darwin(v17);
      if (v20)
      {
        if (a1)
        {
          v11 = a2 - a1;
        }

        else
        {
          v11 = 0;
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          return sub_100287598(0, v11, a1, a2, sub_10029F8C4);
        }

LABEL_27:
        __break(1u);
      }

      v21 = v18;
      (v18)(&v24, &v25, v19);
      v21(&v27, &v28);
      v21(a1, a2);
      v22 = &v27;
    }

    v21(v22, v6);
    return (v21)(&v24, &v25);
  }

  else
  {
    v25 = 11565;
    __chkstk_darwin(a1);
    v14 = __chkstk_darwin(v12);
    if (v15)
    {
      if (a1)
      {
        v11 = a2 - a1;
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        return sub_100287598(0, v11, a1, a2, sub_10029F8C4);
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v23 = v13;
    (v13)("\r\n", "", v14);
    v23(&v25, &v26);
    v23(a1, a2);
    v23(&v25, &v26);
    return (v23)("\r\n", "");
  }
}

uint64_t sub_10029C7F8(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return a3(0);
  }

  __break(1u);
  return result;
}

unint64_t PartReplacement.count.getter()
{
  v1 = v0;
  v44 = sub_1004A5384();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v44);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message.Data(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v43 - v11);
  v13 = type metadata accessor for Message(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for PartReplacement();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10029F53C(v1, v23, type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10029F5A4(v23, v19, type metadata accessor for Message);
    sub_10029F53C(v19, v12, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v44;
      (*(v2 + 32))(v5, v12, v44);
      v26 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*(v2 + 8))(v5, v28);
      v27 = v19;
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  sub_10029F5A4(v23, v16, type metadata accessor for Message);
  sub_10029F53C(v16, v9, type metadata accessor for Message.Data);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v9;
    v25 = v44;
    (*(v2 + 32))(v5, v24, v44);
    v26 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v2 + 8))(v5, v25);
    v27 = v16;
LABEL_6:
    sub_10029F6F0(v27, type metadata accessor for Message);
    return v26;
  }

  sub_10029F6F0(v16, type metadata accessor for Message);
  result = *v9;
  v30 = v9[1];
  v31 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (!v31)
    {
      goto LABEL_15;
    }

    v32 = HIDWORD(result);
    v33 = *v9;
    sub_100014D40(result, v30);
    v34 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      return v34;
    }

    __break(1u);
LABEL_13:
    sub_10029F6F0(v19, type metadata accessor for Message);
    result = *v12;
    v30 = v12[1];
    v35 = v30 >> 62;
    if ((v30 >> 62) <= 1)
    {
      if (v35)
      {
        v41 = HIDWORD(result);
        v42 = *v12;
        result = sub_100014D40(result, v30);
        v34 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          __break(1u);
          return result;
        }

        return v34;
      }

LABEL_15:
      v36 = BYTE6(v30);
      sub_100014D40(result, v30);
      return v36;
    }

    goto LABEL_20;
  }

  if (v31 != 2)
  {
LABEL_24:
    sub_100014D40(result, v30);
    return 0;
  }

  v38 = *(result + 16);
  v37 = *(result + 24);
  sub_100014D40(result, v30);
  result = v37 - v38;
  if (!__OFSUB__(v37, v38))
  {
    return result;
  }

  __break(1u);
LABEL_20:
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v40 = *(result + 16);
  v39 = *(result + 24);
  sub_100014D40(result, v30);
  result = v39 - v40;
  if (__OFSUB__(v39, v40))
  {
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t Message.streamWithPartsReplaced(input:output:replacements:_:)(unsigned int a1, unsigned int a2, uint64_t a3, void (*a4)(uint64_t, char *), uint64_t a5)
{
  v11 = sub_1004A5384();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message.Data(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ReplacementNode();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = a1;
  v35 = a2;
  v41[16] = a1;
  v41[17] = a2;
  v42 = a3;
  v43 = a4;
  v36 = a4;
  v37 = a5;
  v44 = a5;
  v39 = sub_10029F490;
  v40 = v41;
  swift_bridgeObjectRetain_n();
  if (Message.isEmpty.getter())
  {

    v22 = v45;
    sub_10029A910(0, 0, 0, 0, a3, v21);
    if (!v22)
    {
      sub_10029D150(v34, v35, v21, v36, v37, 0, 0, 0, 0);
      sub_10029F6F0(v21, type metadata accessor for ReplacementNode);
    }
  }

  else
  {
    sub_10029F53C(v5, v17, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v31;
      v23 = v32;
      v25 = v33;
      v26 = (*(v32 + 32))(v31, v17, v33);
      __chkstk_darwin(v26);
      *(&v31 - 4) = v24;
      *(&v31 - 3) = sub_10029F4C4;
      v30 = &v38;
      sub_1004A5314();
      (*(v23 + 8))(v24, v25);
    }

    else
    {
      v28 = *v17;
      v27 = v17[1];

      sub_10029E40C(v28, v27, v34, v35, a3, v36, v37);
      sub_100014D40(v28, v27);
    }
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10029D02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, void (*a8)(uint64_t, char *), uint64_t a9)
{
  v23 = a8;
  v17 = type metadata accessor for ReplacementNode();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));

  result = sub_10029A910(a1, a2, a3, a4, a7, v20);
  if (!v9)
  {
    sub_10029D150(a5, a6, v20, v23, a9, a1, a2, a3, a4);
    return sub_10029F6F0(v20, type metadata accessor for ReplacementNode);
  }

  return result;
}

char *sub_10029D150(unsigned int a1, unsigned int a2, uint64_t *a3, void (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v96 = a7;
  v97 = a8;
  v95 = a6;
  v98 = a2;
  v94 = a1;
  v13 = type metadata accessor for ReplacementNode();
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  __chkstk_darwin(v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005D6B78, &qword_1004ECE78);
  v100 = *(v17 - 8);
  v18 = *(v100 + 64);
  __chkstk_darwin(v17);
  v82 = (&v77 - v19);
  v20 = sub_10000C9C0(&qword_1005D6B80, &unk_1004ECE80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v99 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v85 = &v77 - v24;
  v25 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v77 - v27;
  v86 = *(a3 + *(v13 + 28));
  if (!*(v86 + 16))
  {
    return sub_10029BF90(v98, a3 + *(v13 + 24), a4, a5, *(a3 + 8), a3[2], a3[3], a3[4]);
  }

  v93 = *(a3 + 56);
  if (v93 == 2)
  {
    v29 = *a3;
    sub_10027B5FC();
    swift_allocError();
    *v30 = v29;
    swift_willThrow();
  }

  v32 = a3[2];
  v90 = a3[3];
  v91 = v32;
  v33 = a3[6];
  v92 = a3[5];
  v34 = a3[4];
  v88 = a9;
  v89 = v34;
  v35 = *(a3 + 8);
  v36 = type metadata accessor for PartReplacement();
  (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
  v37 = v98;
  sub_10029DA2C(v98, v28, a4, a5, v35, v91, v90, v89);
  v38 = v28;
  v39 = v37;
  sub_100025F40(v38, &qword_1005D6620, &qword_1004EB7F0);
  v40 = 0;
  v41 = *(v86 + 16);
  v90 = (v100 + 48);
  v91 = (v100 + 56);
  v84 = &v102;
  v81 = &v105;
  v89 = v33;
  v42 = v33 - v92;
  if (!v92)
  {
    v42 = 0;
  }

  v80 = v42;
  v79 = &v104;
  v78 = &v103;
  v43 = v85;
  v87 = v41;
  while (1)
  {
    if (v40 == v41)
    {
      v44 = 1;
      v100 = v41;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
      }

      if (v40 >= *(v86 + 16))
      {
        goto LABEL_41;
      }

      v45 = v40 + 1;
      v46 = v86 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v40;
      v47 = *(v17 + 48);
      v48 = v17;
      v49 = a4;
      v50 = v16;
      v51 = v82;
      *v82 = v40;
      sub_10029F53C(v46, v51 + v47, type metadata accessor for ReplacementNode);
      v52 = v51;
      v16 = v50;
      a4 = v49;
      v17 = v48;
      v43 = v85;
      sub_100025FDC(v52, v99, &qword_1005D6B78, &qword_1004ECE78);
      v44 = 0;
      v100 = v45;
    }

    v53 = v99;
    (*v91)(v99, v44, 1, v17);
    sub_100025FDC(v53, v43, &qword_1005D6B80, &unk_1004ECE80);
    if ((*v90)(v43, 1, v17) == 1)
    {
      return sub_10029C448(v92, v89, v93 & 1, v39);
    }

    v54 = *v43;
    v55 = sub_10029F5A4(v43 + *(v17 + 48), v16, type metadata accessor for ReplacementNode);
    v56 = v39;
    if (v39)
    {
      v57 = v84;
      if (v56 == 1)
      {
        v101 = 13;
        v103 = 11565;
        __chkstk_darwin(v55);
        *(&v77 - 64) = v58;
        *(&v77 - 7) = a4;
        *(&v77 - 6) = a5;
        *(&v77 - 5) = &v101;
        *(&v77 - 4) = v57;
        *(&v77 - 3) = &v103;
        v60 = __chkstk_darwin(v59);
        v75 = sub_10029F8DC;
        v76 = v61;
        if ((v93 & 1) == 0)
        {
          if (v54)
          {
            (a4)(&v101, v57, v60);
          }

          v71 = &v103;
          v72 = v79;
          goto LABEL_36;
        }

        v62 = v80;
        if (v80 < 0)
        {
          goto LABEL_44;
        }

        v63 = sub_10029F8C4;
      }

      else
      {
        v101 = 10;
        v104 = 11565;
        __chkstk_darwin(v55);
        *(&v77 - 64) = v68;
        *(&v77 - 7) = a4;
        *(&v77 - 6) = a5;
        *(&v77 - 5) = &v101;
        *(&v77 - 4) = v57;
        *(&v77 - 3) = &v104;
        v60 = __chkstk_darwin(v69);
        v75 = sub_10029F60C;
        v76 = v70;
        if ((v93 & 1) == 0)
        {
          if (v54)
          {
            (a4)(&v101, v57, v60);
          }

          v71 = &v104;
          v72 = v81;
LABEL_36:
          (a4)(v71, v72, v60);
          a4(v92, v89);
          v74 = &v101;
          v73 = v57;
LABEL_37:
          a4(v74, v73);
          goto LABEL_9;
        }

        v62 = v80;
        if (v80 < 0)
        {
          goto LABEL_43;
        }

        v63 = sub_10029F624;
      }
    }

    else
    {
      v102 = 11565;
      __chkstk_darwin(v55);
      *(&v77 - 64) = v64;
      *(&v77 - 7) = a4;
      *(&v77 - 6) = a5;
      *(&v77 - 5) = "\r\n";
      *(&v77 - 4) = "";
      *(&v77 - 3) = &v102;
      v66 = __chkstk_darwin(v65);
      v75 = sub_10029F8DC;
      v76 = v67;
      if ((v93 & 1) == 0)
      {
        if (v54)
        {
          (a4)("\r\n", "", v66);
        }

        (a4)(&v102, v78, v66);
        a4(v92, v89);
        v73 = "";
        v74 = "\r\n";
        goto LABEL_37;
      }

      v62 = v80;
      if (v80 < 0)
      {
        goto LABEL_42;
      }

      v63 = sub_10029F8C4;
    }

    sub_100287598(0, v62, v92, v89, v63);
LABEL_9:
    v39 = v98;
    sub_10029D150(v94, v98, v16, a4, a5, v95, v96, v97, v88);
    result = sub_10029F6F0(v16, type metadata accessor for ReplacementNode);
    v41 = v87;
    v40 = v100;
    if (v9)
    {
      return result;
    }
  }
}

uint64_t sub_10029DA2C(char a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a4;
  v15 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  sub_10000E268(a2, &v26 - v17, &qword_1005D6620, &qword_1004EB7F0);
  v19 = type metadata accessor for PartReplacement();
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_100025F40(v18, &qword_1005D6620, &qword_1004EB7F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10029F6F0(v18, type metadata accessor for PartReplacement);
    if (EnumCaseMultiPayload != 1)
    {
      v24 = 0;
      return sub_10029BAA0(a1, v24, 1, 0, 0, a3, v27, a5, a6, a7, a8);
    }
  }

  v21 = sub_1002958F8(a5, a6, a7, a8);
  if (v21)
  {
    v23 = v22 == v21;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return sub_10029BAA0(a1, v24, 1, 0, 0, a3, v27, a5, a6, a7, a8);
}

uint64_t sub_10029DBE8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a3 & 1) == 0)
  {
    a4(a6, a7);
  }

  a4(a8, a9);
  a4(a1, a2);
  return (a4)(a6, a7);
}

char *sub_10029DC90(char a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v51 = a3;
  v52 = a5;
  v53 = a4;
  v12 = sub_1004A5384();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v47 - v21;
  v23 = type metadata accessor for Message(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E268(a2, v22, &qword_1005D6620, &qword_1004EB7F0);
  v27 = type metadata accessor for PartReplacement();
  if ((*(*(v27 - 8) + 48))(v22, 1, v27) == 1)
  {
    sub_100025F40(v22, &qword_1005D6620, &qword_1004EB7F0);
    if (a6)
    {
LABEL_3:
      v28 = (v50 - a6 - a8);
      if (v50 - a6 >= a8)
      {
        if (v50 - a6 - a8 >= 0)
        {
          v29 = a6 + a8;
          v30 = v50;
          v31 = v51;
          return sub_1002863C4(v52, a1, 0, v31, v53, 0, v28, v29, v30);
        }

        __break(1u);
      }

      __break(1u);
LABEL_19:
      __break(1u);
      result = (*(a8 + 8))(v27, &qword_1004EB7F0);
      __break(1u);
      return result;
    }

LABEL_8:
    v31 = v51;
    if (a8 <= 0)
    {
      v30 = 0;
      v29 = 0;
      v28 = 0;
      return sub_1002863C4(v52, a1, 0, v31, v53, 0, v28, v29, v30);
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10029F6F0(v22, type metadata accessor for PartReplacement);
    if (a6)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v33 = sub_10029F5A4(v22, v26, type metadata accessor for Message);
  __chkstk_darwin(v33);
  *(&v47 - 64) = v52;
  v34 = v50;
  *(&v47 - 7) = a6;
  *(&v47 - 6) = v34;
  *(&v47 - 5) = a8;
  v35 = a1;
  *(&v47 - 32) = a1;
  v36 = v51;
  *(&v47 - 3) = v51;
  __chkstk_darwin(v37);
  v45 = sub_10029F750;
  v46 = v38;
  if (!Message.isEmpty.getter())
  {
    sub_10029F53C(v26, v18, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = (*(v48 + 32))(v47, v18, v49);
      __chkstk_darwin(v42);
      *(&v47 - 4) = v39;
      *(&v47 - 3) = sub_10029F8F4;
      v45 = (&v47 - 4);
      sub_1004A5314();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v44 = *v18;
      v43 = v18[1];
      sub_10029E17C(v44, v43, v52, a6, v50, a8, v35, v36, v53);
      sub_100014D40(v44, v43);
    }
  }

  return sub_10029F6F0(v26, type metadata accessor for Message);
}

char *sub_10029E17C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, char *), uint64_t a9)
{
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v36, 0, 14);
      v33 = v36;
      v15 = a3;
      v16 = a7;
      v17 = a8;
      v18 = a9;
      v14 = 0;
      return sub_1002863C4(v15, v16, 0, v17, v18, 0, v14, v36, v33);
    }

    v34 = &v33;
    v35 = v9;
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = sub_1004A40D4();
    if (v21)
    {
      v22 = sub_1004A4104();
      if (__OFSUB__(v20, v22))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      v21 += v20 - v22;
    }

    v23 = __OFSUB__(v19, v20);
    v24 = v19 - v20;
    if (v23)
    {
      goto LABEL_35;
    }

    a1 = sub_1004A40F4();
    if (a1 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = a1;
    }

    if (v21)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v36[0] = a1;
    LOWORD(v36[1]) = a2;
    BYTE2(v36[1]) = BYTE2(a2);
    BYTE3(v36[1]) = BYTE3(a2);
    v14 = BYTE6(a2);
    BYTE4(v36[1]) = BYTE4(a2);
    BYTE5(v36[1]) = BYTE5(a2);
    v33 = (v36 + BYTE6(a2));
    v15 = a3;
    v16 = a7;
    v17 = a8;
    v18 = a9;
    return sub_1002863C4(v15, v16, 0, v17, v18, 0, v14, v36, v33);
  }

  v27 = a1;
  v28 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = &v33;
  v35 = v9;
  v21 = sub_1004A40D4();
  if (v21)
  {
    v29 = sub_1004A4104();
    if (__OFSUB__(v27, v29))
    {
      goto LABEL_38;
    }

    v21 += v27 - v29;
  }

  v30 = sub_1004A40F4();
  if (v30 >= v28)
  {
    v25 = v28;
  }

  else
  {
    v25 = v30;
  }

  if (v21)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v31 = &v25[v21];
  if (!v21)
  {
    v31 = 0;
  }

  return sub_1002863C4(a3, a7, 0, a8, a9, 0, v26, v21, v31);
}

uint64_t sub_10029E40C(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, void (*a6)(uint64_t, char *), uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v44 = a3;
  v45 = a4;
  v11 = type metadata accessor for ReplacementNode();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v44 - v16);
  __chkstk_darwin(v18);
  v20 = (&v44 - v19);
  __chkstk_darwin(v21);
  v23 = (&v44 - v22);
  v24 = a2 >> 62;
  swift_bridgeObjectRetain_n();
  if ((a2 >> 62) <= 1)
  {
    if (!v24)
    {
      v48[0] = a1;
      LOWORD(v48[1]) = a2;
      BYTE2(v48[1]) = BYTE2(a2);
      BYTE3(v48[1]) = BYTE3(a2);
      BYTE4(v48[1]) = BYTE4(a2);
      BYTE5(v48[1]) = BYTE5(a2);
      swift_bridgeObjectRetain_n();
      sub_10029A910(0, BYTE6(a2), v48, v48 + BYTE6(a2), a5, v20);
      if (!v7)
      {
        sub_10029D150(v44, v45, v20, v46, v47, 0, BYTE6(a2), v48, v48 + BYTE6(a2));
        v25 = v20;
LABEL_42:
        sub_10029F6F0(v25, type metadata accessor for ReplacementNode);
        return swift_bridgeObjectRelease_n();
      }

      return swift_bridgeObjectRelease_n();
    }

    if (a1 >> 32 >= a1)
    {

      swift_bridgeObjectRetain_n();
      v37 = sub_1004A40D4();
      if (v37)
      {
        v38 = sub_1004A4104();
        if (__OFSUB__(a1, v38))
        {
          goto LABEL_49;
        }

        v37 += a1 - v38;
      }

      v39 = sub_1004A40F4();
      if (v39 >= (a1 >> 32) - a1)
      {
        v40 = (a1 >> 32) - a1;
      }

      else
      {
        v40 = v39;
      }

      if (v37)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      if (v37)
      {
        v42 = v40 + v37;
      }

      else
      {
        v42 = 0;
      }

      if ((v41 & 0x8000000000000000) == 0)
      {

        sub_10029A910(0, v41, v37, v42, a5, v17);
        if (!v7)
        {
          sub_10029D150(v44, v45, v17, v46, v47, 0, v41, v37, v42);
          v36 = v17;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v24 == 2)
  {
    v26 = *(a1 + 16);
    v27 = *(a1 + 24);

    swift_bridgeObjectRetain_n();
    v28 = sub_1004A40D4();
    if (v28)
    {
      v29 = sub_1004A4104();
      if (__OFSUB__(v26, v29))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v28 += v26 - v29;
    }

    v30 = __OFSUB__(v27, v26);
    v31 = v27 - v26;
    if (!v30)
    {
      v32 = sub_1004A40F4();
      if (v32 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = v32;
      }

      if (v28)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v28)
      {
        v35 = v33 + v28;
      }

      else
      {
        v35 = 0;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {

        sub_10029A910(0, v34, v28, v35, a5, v14);
        if (!v7)
        {
          sub_10029D150(v44, v45, v14, v46, v47, 0, v34, v28, v35);
          v36 = v14;
LABEL_38:
          sub_10029F6F0(v36, type metadata accessor for ReplacementNode);
        }

LABEL_39:
        swift_bridgeObjectRelease_n();
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  memset(v48, 0, 14);
  swift_bridgeObjectRetain_n();
  sub_10029A910(0, 0, v48, v48, a5, v23);
  if (!v7)
  {
    sub_10029D150(v44, v45, v23, v46, v47, 0, 0, v48, v48);
    v25 = v23;
    goto LABEL_42;
  }

  return swift_bridgeObjectRelease_n();
}

void *sub_10029E8D4(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10015BEAC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10029E950(char a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, char *), uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, char a13, uint64_t a14, uint64_t (*a15)(char *, char *), char *a16)
{
  if (a11 < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v18 = a16;
  if (a9)
  {
    v19 = a11 + a9;
  }

  else
  {
    v19 = 0;
  }

  sub_1002AADD4(a9, v19, a8, v83);
  v80 = 0u;
  v81 = 0u;
  *&v82[0] = 0x1FFFFFFF0ELL;
  memset(v82 + 8, 0, 33);
  v20 = sub_1002AC09C();
  if (v23 == 2)
  {
    v24 = 0;
    v65 = 0uLL;
    v66 = 0;
    v25 = 0;
    goto LABEL_40;
  }

  v26 = v20;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v60 = a4;
  v61 = a3;
  v71 = 0;
  v63 = 0;
  v64 = 0;
  v66 = 0;
  v65 = 0uLL;
  v30 = 0;
  do
  {
    sub_1002AB9E4(v26, v27, v28, v29 & 1, &v84);
    v34 = v85;
    v72 = v84;
    v35 = v86;
    v36 = v87;
    v37 = v88;
    v38 = v89;
    if (v88 >> 59 == 9)
    {
      v39 = v87;
      v40 = v86;
      v41 = v85;

      v34 = v41;
      v35 = v40;
      v36 = v39;
      *&v65 = v72;
      *(&v65 + 1) = v34;
      v66 = v35;
      v63 = v39;
      v64 = v37;
      v71 = v38;
    }

    if (!(v30 & 1 | (v26 == 0)) && a9 && &v26[-a9] >= 1)
    {
      v42 = v34;
      sub_1002863C4(a8, a1, 1, a6, a7, 0, &v26[-a9], a9, a10);
      v34 = v42;
    }

    if ((*&v82[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
    {
      if (*&v82[1])
      {
        v43 = (*(&v82[1] + 1) - *&v82[1]);
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_72;
      }

      v44 = v34;
      sub_1002863C4(a8, a1, 1, a6, a7, 0, v43, *&v82[1], *(&v82[1] + 1));
      sub_100025F40(&v80, &qword_1005D6328, &qword_1004ECE90);
      v34 = v44;
    }

    *&v80 = v72;
    *(&v80 + 1) = v34;
    *&v81 = v35;
    *(&v81 + 1) = v36;
    *&v82[0] = v37;
    *(&v82[0] + 1) = v38;
    *&v82[1] = v26;
    *(&v82[1] + 1) = v27;
    *&v82[2] = v28;
    BYTE8(v82[2]) = v29 & 1;
    v26 = sub_1002AC09C();
    v27 = v31;
    v28 = v32;
    v29 = v33;
    v30 = 1;
  }

  while (v33 != 2);
  if ((*&v82[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
  {
    v25 = v63;
    v45 = v64;
    v46 = v71;
    v18 = a16;
    if (!v71)
    {
      v24 = v64;
      a4 = v60;
      a3 = v61;
LABEL_40:
      LOBYTE(v76) = a13;
      a15("Content-Type", "");
      a15(": ", "");
      *(&v76 + 1) = 14;
      sub_1002616C0(&v76, a12, a15, v18, a14, v75);
      sub_1002652C0(a13, a15);
      v46 = 0;
      v47 = v75[0];
      v45 = v24;
      if (a3)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v47 = 0;
    a4 = v60;
    goto LABEL_37;
  }

  v48 = v82[1];
  a4 = v60;
  v25 = v63;
  v45 = v64;
  v46 = v71;
  if (!(*&v82[0] >> 59))
  {
    if ((v61 & 1) == 0 || !a2)
    {
      if (v71)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (v71)
    {
      v78 = v82[0];
      v79[0] = v82[1];
      *(v79 + 9) = *(&v82[1] + 9);
      v76 = v80;
      v77 = v81;
      sub_10000E268(&v76, v75, &qword_1005D6330, &qword_1004ECEA0);
      v47 = 0;
    }

    else
    {
      v73[0] = a13;
      v78 = v82[0];
      v79[0] = v82[1];
      *(v79 + 9) = *(&v82[1] + 9);
      v76 = v80;
      v77 = v81;
      sub_10000E268(&v76, v75, &qword_1005D6330, &qword_1004ECEA0);
      a15("Content-Type", "");
      a15(": ", "");
      v74 = 14;
      sub_1002616C0(v73, a12, a15, a16, a14, v75);
      sub_1002652C0(a13, a15);
      v47 = v75[0];
    }

    if (v48)
    {
      v50 = (*(&v48 + 1) - v48);
    }

    else
    {
      v50 = 0;
    }

    if ((v50 & 0x8000000000000000) == 0)
    {
      sub_1002863C4(a8, a1, 1, a6, a7, 0, v50, v48, *(&v48 + 1));
      goto LABEL_48;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_100025F40(&v80, &qword_1005D6328, &qword_1004ECE90);
  if (v48)
  {
    v49 = (*(&v48 + 1) - v48);
  }

  else
  {
    v49 = 0;
  }

  if ((v49 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1002863C4(a8, a1, 1, a6, a7, 0, v49, v48, *(&v48 + 1));
  if (v71)
  {
LABEL_34:
    v47 = 0;
    goto LABEL_37;
  }

LABEL_36:
  LOBYTE(v76) = a13;
  a15("Content-Type", "");
  a15(": ", "");
  *(&v76 + 1) = 14;
  sub_1002616C0(&v76, a12, a15, a16, a14, v75);
  sub_1002652C0(a13, a15);
  v47 = v75[0];
LABEL_37:
  if ((v61 & 1) == 0)
  {
LABEL_41:
    sub_100262B54(a1, a2, a6);
  }

LABEL_48:
  if (a1)
  {
    if (a1 == 1)
    {
      v51 = 13;
    }

    else
    {
      v51 = 10;
    }

    LOBYTE(v76) = v51;
    v52 = &v76;
    v53 = &v76 + 1;
  }

  else
  {
    v52 = "\r\n";
    v53 = "";
  }

  result = (a6)(v52, v53);
  if (!a4)
  {
    goto LABEL_57;
  }

  if (v47)
  {

    (a4)(v47);
    sub_1000B5158(a4);
LABEL_57:
  }

  if (v46)
  {
    v76 = v65;
    *&v77 = v66;
    *(&v77 + 1) = v25;
    LOBYTE(v78) = v45;
    *(&v78 + 1) = v46;

    v55 = sub_100271A2C();
    if (v57 == 2)
    {
LABEL_70:
      sub_1000B5158(a4);
    }

    v58 = v56;
    if ((v57 & 1) == 0)
    {
      sub_10029E8D4(v55, v56);
      goto LABEL_69;
    }

    if (v55)
    {
      v59 = v56 - v55;
    }

    else
    {
      v59 = 0;
    }

    if ((v59 & 0x8000000000000000) == 0)
    {
      sub_1002871D4(0, v59, v55, v58);
LABEL_69:
      a4();

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
  }

  return result;
}

uint64_t _s9IMAP2MIME15PartReplacementO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for PartReplacement();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v29[-v16];
  v18 = sub_10000C9C0(&qword_1005D6B88, &qword_1004ECE98);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v29[-v20];
  v23 = *(v22 + 56);
  sub_10029F53C(a1, &v29[-v20], type metadata accessor for PartReplacement);
  sub_10029F53C(a2, &v21[v23], type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10029F53C(v21, v17, type metadata accessor for PartReplacement);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = sub_10029F5A4(&v21[v23], v10, type metadata accessor for Message);
      __chkstk_darwin(v27);
      *&v29[-16] = v10;
      v25 = sub_10028DF64(sub_10029564C, &v29[-32]);
      sub_10029F6F0(v10, type metadata accessor for Message);
      v26 = v17;
      goto LABEL_6;
    }

LABEL_8:
    sub_10029F6F0(v17, type metadata accessor for Message);
    sub_100025F40(v21, &qword_1005D6B88, &qword_1004ECE98);
    v25 = 0;
    return v25 & 1;
  }

  sub_10029F53C(v21, v14, type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v14;
    goto LABEL_8;
  }

  v24 = sub_10029F5A4(&v21[v23], v7, type metadata accessor for Message);
  __chkstk_darwin(v24);
  *&v29[-16] = v7;
  v25 = sub_10028DF64(sub_10028E6A0, &v29[-32]);
  sub_10029F6F0(v7, type metadata accessor for Message);
  v26 = v14;
LABEL_6:
  sub_10029F6F0(v26, type metadata accessor for Message);
  sub_10029F6F0(v21, type metadata accessor for PartReplacement);
  return v25 & 1;
}

uint64_t type metadata accessor for PartReplacement()
{
  result = qword_1005D6B40;
  if (!qword_1005D6B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029F4DC()
{
  result = type metadata accessor for Message(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10029F53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029F5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029F624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10029F64C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = v3[8];
  if ((v6 & 1) == 0)
  {
    v8(v3[5], v3[6]);
  }

  v8(v11, v12);
  v8(a1, a2);
  return (v8)(v9, v10);
}

uint64_t sub_10029F6F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10029F7A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    return (*(v2 + 16))(0);
  }

  return result;
}

uint64_t sub_10029F808(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v5(v7, v8);
  v5(v9, v10);
  v5(a1, a2);
  v5(v9, v10);
  return (v5)(v7, v8);
}

void sub_10029F954(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v6 = a4 - a3;
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_51;
  }

  v21 = 0;
  v22 = v7;
  v23 = a3;
  if (!v7)
  {
LABEL_43:
    sub_1002A535C(a2);
    return;
  }

  v12 = 0;
  while (v12 < v6)
  {
    v14 = *(a3 + v12);
    if (v14 == 61)
    {
      sub_10029FBF4(&v25);
      if (v26 != 2)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        sub_1002A535C(a2);

        v31._countAndFlagsBits = sub_1002A01AC(&v28, a5);
        sub_1004A5994(v31);

        *a6 = 1;
        v13 = v21;
        v6 = v22;
        goto LABEL_8;
      }

      v12 = v21;
      v6 = v22;
    }

    v13 = v6;
    if (v12 != v6)
    {
      if (v12 >= v6)
      {
        goto LABEL_45;
      }

      v15 = a4 - v23;
      if (!v23)
      {
        v15 = 0;
      }

      if (v12 < 0 || v12 >= v15)
      {
        goto LABEL_46;
      }

      v13 = v12 + 1;
      v21 = v12 + 1;
    }

    if (*a6 > 1u)
    {
      if (*a6 == 2)
      {
        if (v14 >= 0x21)
        {
          *a6 = 0;
          v18 = a1[1];
          v17 = a1[2];
          if (v17 >= v18)
          {
            goto LABEL_48;
          }

          v19 = *a1;
          *(*a1 + v17) = 32;
          a1[2] = v17 + 1;
          if (v17 + 1 >= v18)
          {
            goto LABEL_50;
          }

          *(v19 + v17 + 1) = v14;
          a1[2] = v17 + 2;
        }
      }

      else if (v14 >= 0x21)
      {
        *a6 = 0;
        v20 = a1[2];
        if (v20 >= a1[1])
        {
          goto LABEL_49;
        }

LABEL_36:
        *(*a1 + v20) = v14;
        a1[2] = v20 + 1;
      }
    }

    else if (*a6)
    {
      if (v14 > 0x20 || ((1 << v14) & 0x100002600) == 0)
      {
        if (v14 < 0x21)
        {
          goto LABEL_8;
        }

        v20 = a1[2];
        if (v20 >= a1[1])
        {
          __break(1u);
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      *a6 = 2;
    }

    else
    {
      if (v14 > 0x20 || ((1 << v14) & 0x100002600) == 0)
      {
        if (v14 < 0x21)
        {
          goto LABEL_8;
        }

        v20 = a1[2];
        if (v20 >= a1[1])
        {
          goto LABEL_52;
        }

        goto LABEL_36;
      }

      v16 = a1[2];
      if (v16 >= a1[1])
      {
        goto LABEL_47;
      }

      *(*a1 + v16) = 32;
      a1[2] = v16 + 1;
      *a6 = 3;
    }

LABEL_8:
    a3 = v23;
    v12 = v13;
    if (v13 == v6)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_10029FBF4(void *a1@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    goto LABEL_52;
  }

  if (*v3 >= v5)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v1 = v3[2];
  if (*(v1 + v4) != 61)
  {
    goto LABEL_52;
  }

  *v3 = v4 + 1;
  if (v4 + 1 == v5)
  {
    goto LABEL_52;
  }

  if (v4 + 1 >= v5)
  {
    goto LABEL_54;
  }

  if (*(v1 + v4 + 1) != 63)
  {
    goto LABEL_52;
  }

  v6 = v4 + 2;
  *v3 = v4 + 2;
  if (v4 + 2 == v5)
  {
LABEL_9:
    v7 = 1;
    v8 = v5;
  }

  else
  {
    v8 = v4 + 2;
    while (1)
    {
      v9 = *(v1 + v8);
      v10 = v9 > 0x3F;
      v11 = (1 << v9) & 0x8000000000102600;
      v12 = v10 || v11 == 0;
      if (!v12)
      {
        break;
      }

      if (v5 == ++v8)
      {
        goto LABEL_9;
      }
    }

    v7 = 0;
  }

  *v3 = v8;
  if (v8 < v6)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v5 < v8)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v7)
  {
    goto LABEL_52;
  }

  if (v8 >= v5)
  {
    goto LABEL_58;
  }

  v13 = v1 + v8;
  if (*(v1 + v8) != 63 || v6 == v8 || v8 + 1 == v5)
  {
    goto LABEL_52;
  }

  if (v8 + 1 >= v5)
  {
    goto LABEL_59;
  }

  v2 = 0;
  v14 = *(v1 + v8 + 1);
  v15 = v8 + 2;
  *v3 = v8 + 2;
  if (v14 > 97)
  {
    if (v14 == 98)
    {
      goto LABEL_33;
    }

    if (v14 != 113)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v14 == 66)
    {
      goto LABEL_33;
    }

    if (v14 != 81)
    {
      goto LABEL_52;
    }
  }

  v2 = 1;
LABEL_33:
  if (v15 == v5)
  {
    goto LABEL_52;
  }

  if (v15 >= v5)
  {
    goto LABEL_60;
  }

  if (*(v1 + v15) != 63)
  {
    goto LABEL_52;
  }

  v16 = v8 + 3;
  *v3 = v8 + 3;
  if (v8 + 3 == v5)
  {
    v17 = 1;
LABEL_41:
    v18 = v5;
  }

  else
  {
    v18 = v8 + 3;
    while (1)
    {
      v19 = *(v1 + v18);
      v12 = v19 == 63;
      v17 = v19 != 63;
      if (v12)
      {
        break;
      }

      if (v5 == ++v18)
      {
        goto LABEL_41;
      }
    }
  }

  *v3 = v18;
  if (v18 < v16)
  {
    goto LABEL_61;
  }

  if (v5 < v18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17)
  {
    goto LABEL_52;
  }

  if (v18 >= v5)
  {
    goto LABEL_63;
  }

  v20 = v1 + v18;
  if (*(v1 + v18) != 63)
  {
    goto LABEL_52;
  }

  *v3 = v18 + 1;
  if (v18 + 1 == v5)
  {
    goto LABEL_52;
  }

  if (v18 + 1 < v5)
  {
    if (*(v1 + v18 + 1) == 61)
    {
      *v3 = v18 + 2;
      if (!v1)
      {
LABEL_55:
        v21 = 0;
        v13 = 0;
        v20 = 0;
        goto LABEL_53;
      }

      v21 = v1 + v6;
      v1 += v16;
LABEL_53:
      *a1 = v21;
      a1[1] = v13;
      a1[2] = v2;
      a1[3] = v1;
      a1[4] = v20;
      return;
    }

LABEL_52:
    v21 = 0;
    v13 = 0;
    v1 = 0;
    v20 = 0;
    *v3 = v4;
    v2 = 2;
    goto LABEL_53;
  }

LABEL_64:
  __break(1u);
}

int8x8_t *sub_10029FE38@<X0>(int8x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, int8x8_t **a6@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v8 = result;
  v9 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v10 = 0xE000000000000000;
LABEL_18:
    *a6 = result;
    a6[1] = v10;
    return result;
  }

  v13 = a6;
  result = sub_1002A5CD8(*a3, a3[1], 0, result, a2, 0, a4);
  if (!result)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v14 = result;
  swift_beginAccess();
  v15 = a4[3];
  if (!v15)
  {

    result = sub_1002A6B54("utf-8", a4);
    if (!result)
    {
      goto LABEL_21;
    }

    v15 = result;
    a4[3] = result;
  }

  v16 = swift_endAccess();
  if (v15 != v14)
  {
    __chkstk_darwin(v16);
    result = sub_10026ADD8(v14, a4, a5);
    if (v6)
    {

      result = 0;
      v10 = 0;
    }

    a6 = v13;
    goto LABEL_18;
  }

  v17 = sub_1002881FC(0, 0, v8, a2);
  result = sub_1002881FC(0, v9, v8, a2);
  if (__OFADD__(v17, result))
  {
    __break(1u);
  }

  else if (result + v17 >= v17)
  {
    result = sub_1004A58D4();
LABEL_14:
    a6 = v13;
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

int8x8_t *sub_10029FFF0(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  if (result)
  {
    v10 = a2 - result;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_10029A038(0, v10, result, a2, a3, a4);
    if (!v6)
    {
      if ((v14 & 1) == 0)
      {
        sub_10029FE38(v12, v13, a5, a6, sub_1002A0840, &v15);

        return v15;
      }

      sub_1002A07BC();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1002A00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = sub_100257E20(a3, a4, a1, a2, 0);
  if (!v7)
  {
    if ((v13 & 1) == 0)
    {
      sub_10029FE38(v11, v12, a5, a6, sub_1002A0810, &v15);

      *a7 = v15;
      return result;
    }

    sub_1002A07BC();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1002A01AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (*(a1 + 16))
  {
    if (v4)
    {
      v6 = v5 - v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      if ((v7 & 0x8000000000000000) == 0)
      {

        if (v7 < 1025)
        {
          goto LABEL_8;
        }

        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = v5 - v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      if ((v7 & 0x8000000000000000) == 0)
      {

        if (v7 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          __chkstk_darwin(isStackAllocationSafe);
          v17 = sub_100257E20(v4, v5, &v27 - v16, &v27 + v7 - v16, 0);
          if (v19)
          {
            sub_1002A07BC();
            swift_allocError();
            swift_willThrow();
            swift_willThrow();
          }

          else
          {
            sub_10029FE38(v17, v18, a1, a2, sub_1002A0810, &v28);
            v13 = v28;
            v23 = v29;

            if (v23)
            {
              goto LABEL_11;
            }
          }

LABEL_27:
          *&v30 = 0;
          *(&v30 + 1) = 0xE000000000000000;
          sub_1004A5874(v6);
          if (!v4 || v5 == v4)
          {
            goto LABEL_34;
          }

          v21 = *(&v30 + 1);
          v20 = v30;
          do
          {
            if (*v4 - 1 <= 0x7D)
            {
              v28 = v20;
              v29 = v21;
              sub_1004A58C4();
              v20 = v28;
              v21 = v29;
            }

            ++v4;
          }

          while (v4 != v5);
          goto LABEL_33;
        }

        v26 = swift_slowAlloc();

        sub_1002A00D0(v26, v26 + v7, v4, v5, a1, a2, &v30);

LABEL_46:

        if (*(&v30 + 1))
        {
          v13 = v30;
          goto LABEL_11;
        }

        goto LABEL_27;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_40:
  v8 = swift_stdlib_isStackAllocationSafe();
  if ((v8 & 1) == 0)
  {
    v24 = swift_slowAlloc();

    v13 = sub_10029FFF0(v24, v24 + v7, v4, v5, a1, a2);
    v14 = v25;

    goto LABEL_10;
  }

LABEL_8:
  __chkstk_darwin(v8);
  v10 = sub_10029A038(0, v7, &v27 - v9, &v27 + v7 - v9, v4, v5);
  if ((v12 & 1) == 0)
  {
    sub_10029FE38(v10, v11, a1, a2, sub_1002A0840, &v30);
    v14 = *(&v30 + 1);
    v13 = v30;
LABEL_10:

    if (v14)
    {
LABEL_11:

      return v13;
    }

    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1004A5874(v6);
    if (!v4 || v5 == v4)
    {
LABEL_34:

      return v30;
    }

    v21 = *(&v30 + 1);
    v20 = v30;
    do
    {
      if (*v4 - 1 <= 0x7D)
      {
        v28 = v20;
        v29 = v21;
        sub_1004A58C4();
        v20 = v28;
        v21 = v29;
      }

      ++v4;
    }

    while (v4 != v5);
LABEL_33:
    *&v30 = v20;
    *(&v30 + 1) = v21;
    goto LABEL_34;
  }

  sub_1002A07BC();
  swift_allocError();
  swift_willThrow();
  swift_willThrow();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1002A062C(uint64_t a1, uint64_t a2, void *a3)
{
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v6 = a2 - a1;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  sub_1004A5874(v7);
  v13 = 0;
  if (!a1)
  {
    v6 = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  if (v6 < 1025)
  {
    goto LABEL_10;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_11:
    __chkstk_darwin(isStackAllocationSafe);
    v15[0] = &v12 - v10;
    v15[1] = v6;
    v15[2] = 0;
    sub_10029F954(v15, v14, a1, a2, a3, &v13);
    goto LABEL_12;
  }

  v9 = swift_slowAlloc();

  sub_1002A5760(v9, v6, v14, a1, a2, a3, &v13);

LABEL_12:

  return v14[0];
}

unint64_t sub_1002A07BC()
{
  result = qword_1005D6B90;
  if (!qword_1005D6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6B90);
  }

  return result;
}

uint64_t sub_1002A0858(uint64_t a1, char **a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v65 = *(v4 - 17);
      v67 = *(v4 - 33);
      v9 = sub_1002A3614(*(v4 - 33), *(v4 - 25));
      if (v11 != 2)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100273998(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_100273998((v15 > 1), v16 + 1, 1, v3);
        }

        LOBYTE(v70) = ((v14 & 0xFFFFFFu) >> 16) & 1;
        *(v3 + 2) = v16 + 1;
        v5 = &v3[64 * v16];
        *(v5 + 4) = v12;
        *(v5 + 5) = v13;
        v5[48] = v14 & 1;
        v5[49] = BYTE1(v14);
        v5[50] = v70;
        v6 = v73;
        v5[55] = BYTE4(v73);
        *(v5 + 51) = v6;
        *(v5 + 72) = v65;
        *(v5 + 56) = v67;
        v5[88] = v7;
        v5[89] = v8;
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v68 = *(v3 + 2);
  if (v68)
  {
    v17 = 0;
    v18 = 0;
    v66 = v3;
    do
    {
      v21 = &v3[v17];
      v23 = *&v3[v17 + 32];
      v22 = *&v3[v17 + 40];
      if (v3[v17 + 50] == 1)
      {
        v24 = v21[48];
        v25 = *(v21 + 9);
        v26 = *(v21 + 10);
        v27 = v21[88];
        v28 = v21[89];
        if (v24)
        {
          sub_1002A27E8(v25, v26, &v73);
          if ((v76 & 1) == 0)
          {
            v63 = v73;
            v51 = v74;
            v50 = v75;
            sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
            v30 = swift_allocObject();
            *(v30 + 1) = xmmword_1004CEAA0;
            *(v30 + 4) = v51;
            *(v30 + 5) = v50;
            *(v30 + 24) = 0;
            v52 = sub_100271C98(v23, v22);
            v53 = v52;
            if (v52 == 13)
            {
              v54 = v23;
            }

            else
            {
              v54 = v52;
            }

            if (v52 == 13)
            {
              v55 = v22;
            }

            else
            {
              v55 = 0;
            }

            v56 = *a2;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_100273F14(0, *(v56 + 2) + 1, 1, v56);
              *a2 = v56;
            }

            v59 = *(v56 + 2);
            v58 = *(v56 + 3);
            if (v59 >= v58 >> 1)
            {
              v56 = sub_100273F14((v58 > 1), v59 + 1, 1, v56);
              *a2 = v56;
            }

            *(v56 + 2) = v59 + 1;
            v19 = &v56[56 * v59];
            *(v19 + 4) = v54;
            *(v19 + 5) = v55;
            v19[48] = v53 == 13;
            *(v19 + 56) = v63;
            v19[72] = 0;
            goto LABEL_14;
          }
        }

        sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
        v29 = swift_allocObject();
        v30 = v29;
        *(v29 + 16) = xmmword_1004CEAA0;
        if (v27)
        {
          v31 = -32512;
        }

        else
        {
          v31 = 0x8000;
        }

        v32 = v31 | v28;
        if (v24)
        {
          v32 = 0;
        }

        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        *(v29 + 48) = v32;
        v33 = sub_100271C98(v23, v22);
        v34 = v33;
        if (v33 == 13)
        {
          v35 = v23;
        }

        else
        {
          v35 = v33;
        }

        if (v33 == 13)
        {
          v36 = v22;
        }

        else
        {
          v36 = 0;
        }

        v37 = *a2;

        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_100273F14(0, *(v37 + 2) + 1, 1, v37);
          *a2 = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_100273F14((v39 > 1), v40 + 1, 1, v37);
          *a2 = v37;
        }

        *(v37 + 2) = v40 + 1;
        v19 = &v37[56 * v40];
        *(v19 + 4) = v35;
        *(v19 + 5) = v36;
        v19[48] = v34 == 13;
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        v20 = 1;
      }

      else
      {
        if (v21[49])
        {
          goto LABEL_15;
        }

        v70 = 0;
        v71 = 0;
        v72 = 1;
        v69 = _swiftEmptyArrayStorage;
        sub_1002A1E70(v23, v22, v18, v3, &v70, &v69);
        v41 = v70;
        v62 = v71;
        v61 = v72;
        v30 = v69;
        v42 = sub_100271C98(v23, v22);
        v43 = v42;
        if (v42 == 13)
        {
          v44 = v23;
        }

        else
        {
          v44 = v42;
        }

        if (v42 == 13)
        {
          v45 = v22;
        }

        else
        {
          v45 = 0;
        }

        v46 = *a2;

        v47 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_100273F14(0, *(v46 + 2) + 1, 1, v46);
          *a2 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_100273F14((v48 > 1), v49 + 1, 1, v46);
          *a2 = v46;
        }

        *(v46 + 2) = v49 + 1;
        v19 = &v46[56 * v49];
        *(v19 + 4) = v44;
        *(v19 + 5) = v45;
        v19[48] = v43 == 13;
        *(v19 + 7) = v41;
        *(v19 + 8) = v62;
        v20 = v61;
      }

      v19[72] = v20;
LABEL_14:
      *(v19 + 10) = v30;

      v3 = v66;
LABEL_15:
      ++v18;
      v17 += 64;
    }

    while (v68 != v18);
  }
}

uint64_t sub_1002A0DA4(uint64_t a1, char **a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v65 = *(v4 - 17);
      v67 = *(v4 - 33);
      v9 = sub_1002A3614(*(v4 - 33), *(v4 - 25));
      if (v11 != 2)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100273998(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_100273998((v15 > 1), v16 + 1, 1, v3);
        }

        LOBYTE(v70) = ((v14 & 0xFFFFFFu) >> 16) & 1;
        *(v3 + 2) = v16 + 1;
        v5 = &v3[64 * v16];
        *(v5 + 4) = v12;
        *(v5 + 5) = v13;
        v5[48] = v14 & 1;
        v5[49] = BYTE1(v14);
        v5[50] = v70;
        v6 = v73;
        v5[55] = BYTE4(v73);
        *(v5 + 51) = v6;
        *(v5 + 72) = v65;
        *(v5 + 56) = v67;
        v5[88] = v7;
        v5[89] = v8;
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v68 = *(v3 + 2);
  if (v68)
  {
    v17 = 0;
    v18 = 0;
    v66 = v3;
    do
    {
      v21 = &v3[v17];
      v23 = *&v3[v17 + 32];
      v22 = *&v3[v17 + 40];
      if (v3[v17 + 50] == 1)
      {
        v24 = v21[48];
        v25 = *(v21 + 9);
        v26 = *(v21 + 10);
        v27 = v21[88];
        v28 = v21[89];
        if (v24)
        {
          sub_1002A27E8(v25, v26, &v73);
          if ((v76 & 1) == 0)
          {
            v63 = v73;
            v51 = v74;
            v50 = v75;
            sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
            v30 = swift_allocObject();
            *(v30 + 1) = xmmword_1004CEAA0;
            *(v30 + 4) = v51;
            *(v30 + 5) = v50;
            *(v30 + 24) = 0;
            v52 = sub_10026CC0C(v23, v22);
            v53 = v52;
            if (v52 == 6)
            {
              v54 = v23;
            }

            else
            {
              v54 = v52;
            }

            if (v52 == 6)
            {
              v55 = v22;
            }

            else
            {
              v55 = 0;
            }

            v56 = *a2;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_100273EF8(0, *(v56 + 2) + 1, 1, v56);
              *a2 = v56;
            }

            v59 = *(v56 + 2);
            v58 = *(v56 + 3);
            if (v59 >= v58 >> 1)
            {
              v56 = sub_100273EF8((v58 > 1), v59 + 1, 1, v56);
              *a2 = v56;
            }

            *(v56 + 2) = v59 + 1;
            v19 = &v56[56 * v59];
            *(v19 + 4) = v54;
            *(v19 + 5) = v55;
            v19[48] = v53 == 6;
            *(v19 + 56) = v63;
            v19[72] = 0;
            goto LABEL_14;
          }
        }

        sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
        v29 = swift_allocObject();
        v30 = v29;
        *(v29 + 16) = xmmword_1004CEAA0;
        if (v27)
        {
          v31 = -32512;
        }

        else
        {
          v31 = 0x8000;
        }

        v32 = v31 | v28;
        if (v24)
        {
          v32 = 0;
        }

        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        *(v29 + 48) = v32;
        v33 = sub_10026CC0C(v23, v22);
        v34 = v33;
        if (v33 == 6)
        {
          v35 = v23;
        }

        else
        {
          v35 = v33;
        }

        if (v33 == 6)
        {
          v36 = v22;
        }

        else
        {
          v36 = 0;
        }

        v37 = *a2;

        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_100273EF8(0, *(v37 + 2) + 1, 1, v37);
          *a2 = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_100273EF8((v39 > 1), v40 + 1, 1, v37);
          *a2 = v37;
        }

        *(v37 + 2) = v40 + 1;
        v19 = &v37[56 * v40];
        *(v19 + 4) = v35;
        *(v19 + 5) = v36;
        v19[48] = v34 == 6;
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        v20 = 1;
      }

      else
      {
        if (v21[49])
        {
          goto LABEL_15;
        }

        v70 = 0;
        v71 = 0;
        v72 = 1;
        v69 = _swiftEmptyArrayStorage;
        sub_1002A1E70(v23, v22, v18, v3, &v70, &v69);
        v41 = v70;
        v62 = v71;
        v61 = v72;
        v30 = v69;
        v42 = sub_10026CC0C(v23, v22);
        v43 = v42;
        if (v42 == 6)
        {
          v44 = v23;
        }

        else
        {
          v44 = v42;
        }

        if (v42 == 6)
        {
          v45 = v22;
        }

        else
        {
          v45 = 0;
        }

        v46 = *a2;

        v47 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_100273EF8(0, *(v46 + 2) + 1, 1, v46);
          *a2 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_100273EF8((v48 > 1), v49 + 1, 1, v46);
          *a2 = v46;
        }

        *(v46 + 2) = v49 + 1;
        v19 = &v46[56 * v49];
        *(v19 + 4) = v44;
        *(v19 + 5) = v45;
        v19[48] = v43 == 6;
        *(v19 + 7) = v41;
        *(v19 + 8) = v62;
        v20 = v61;
      }

      v19[72] = v20;
LABEL_14:
      *(v19 + 10) = v30;

      v3 = v66;
LABEL_15:
      ++v18;
      v17 += 64;
    }

    while (v68 != v18);
  }
}

uint64_t sub_1002A12F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a1;
  v28 = a4;
  v26[2] = a6;
  v10 = 0;
  v11 = 0;
  v12 = *(a3 + 16);
  v13 = -1;
  while (1)
  {
    if (!v12)
    {
      if (v11 < 0)
      {
        __break(1u);
      }

      isStackAllocationSafe = swift_retain_n();
      if (v11 >= 1025)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (++v13 >= *(a2 + 16))
    {
      break;
    }

    v14 = *(a2 + v10 + 40);
    v16 = *(a3 + v10 + 32);
    v15 = *(a3 + v10 + 40);
    if ((v14 & 0x1000000000000000) != 0)
    {
      v26[1] = v6;
      v20 = sub_1004A59E4();
      v18 = __OFADD__(v11, v20);
      v11 += v20;
      if (v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v17 = *(a2 + v10 + 32) & 0xFFFFFFFFFFFFLL;
      }

      v18 = __OFADD__(v11, v17);
      v11 += v17;
      if (v18)
      {
        goto LABEL_27;
      }
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v19 = sub_1004A59E4();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    --v12;
    v10 += 16;
    v18 = __OFADD__(v11, v19);
    v11 += v19;
    if (v18)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v25 = swift_slowAlloc();

    sub_1002A21D4(v25, v25 + v11, v27, a2, a3, v28, a5);

    goto LABEL_24;
  }

LABEL_22:
  __chkstk_darwin(isStackAllocationSafe);
  v23 = v26 - v22;

  sub_1002A21D4(v23, &v23[v11], v27, a2, a3, v28, a5);
  if (v6)
  {
    swift_willThrow();
LABEL_24:
  }
}

unint64_t sub_1002A1544(unint64_t a1, unint64_t a2, char *a3, char *a4, void (*a5)(char *__return_ptr, void *, char *))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 4 * v8;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v29 = a2 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  result = 15;
  while (1)
  {
    if (a3)
    {
      v13 = a4;
      if (a3 != a4)
      {
        v14 = *a3++;
        LOBYTE(v33[0]) = v14;
        v15 = result;
        a5(&v32, v33, a4);
        if (v31 == v15 >> 14)
        {
          goto LABEL_34;
        }

        result = v15;
        v16 = v32;
        v17 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v31 == result >> 14)
    {
      v24 = 1;
      goto LABEL_36;
    }

    v17 = 0;
    v16 = 0;
    a3 = v13;
LABEL_19:
    v18 = result & 0xC;
    v19 = result;
    if (v18 == v10)
    {
      v23 = result;
      v19 = sub_10010C210(result, a1, a2);
      result = v23;
    }

    v20 = v19 >> 16;
    if (v19 >> 16 >= v8)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v22 = sub_1004A5A24();
      result = v26;
      if (v18 != v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = a1;
        v33[1] = v29;
        v21 = v33;
      }

      else
      {
        v21 = v28;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = sub_1004A67E4();
          result = v25;
        }
      }

      v22 = *(v21 + v20);
      if (v18 != v10)
      {
LABEL_28:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_29;
        }

        goto LABEL_7;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_29:
      if (v8 <= result >> 16)
      {
        goto LABEL_38;
      }

      result = sub_1004A59F4();
      goto LABEL_8;
    }

LABEL_7:
    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_8:
    if (v16 == v22)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & 1) == 0)
    {
LABEL_34:
      v24 = 0;
LABEL_36:

      return v24;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1002A1764(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  do
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v4 = 0;
        v5 = 1;
        a3 = a4;
        if (!a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 0;
        v8 = *a3++;
        v4 = v8;
        if (!a1)
        {
LABEL_10:
          v6 = 0;
          v7 = 1;
          if (v5)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    if (a1 == a2)
    {
      v6 = 0;
      v7 = 1;
      a1 = a2;
      if (v5)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      v9 = *a1++;
      v6 = v9;
      if (v5)
      {
        return v7;
      }
    }

LABEL_13:
    if (v4 != v6)
    {
      LODWORD(v7) = 1;
    }
  }

  while (v7 != 1);
  return 0;
}

uint64_t sub_1002A17F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void *a11, uint64_t a12)
{
  v59 = a5;
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v63 = 0;
  v64 = v13;
  v65 = a1;
  v66 = a2;
  v14 = *a3;
  v15 = *a4;
  if (*a4 < v14)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v55 = a6;
  v56 = v12;
  v16 = a11;
  v54 = a10;
  if (v14 == v15)
  {
    v17 = 0;
LABEL_60:
    v48 = (v17 + a1);
    if (!a1)
    {
      v17 = 0;
      v48 = 0;
    }

    v67 = 0;
    v68 = v17;
    v69 = a1;
    v70 = v48;
    v71 = 0;
    sub_1002A28F4(&v67, a7, a8, a9 & 1, v16, a12);
    v50 = v49;

    *v55 = v50 & 1;
  }

  v53 = a11;
  v57 = v15;
  v58 = v59 + 32;
  v18 = v14;
  while (1)
  {
    if (v14 < 0)
    {
      goto LABEL_67;
    }

    if (v18 >= *(v59 + 16))
    {
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
      goto LABEL_73;
    }

    v19 = v58 + 24 * v18;
    if (*(v19 + 16) < 0)
    {
      break;
    }

    v20 = *v19;
    if (!*v19)
    {
      v22 = 0;
LABEL_18:
      __chkstk_darwin(a1);
      v30 = &v52 - v29;
      v31 = 0;
      if (!v22)
      {
        goto LABEL_46;
      }

      v32 = 0;
LABEL_20:
      if (v22 < v32 + 1)
      {
        goto LABEL_65;
      }

      v33 = *(v20 + v32);
      if (v33 != 37)
      {
        ++v32;
        goto LABEL_43;
      }

      if (v32 + 1 != v22)
      {
        for (v32 += 3; v32 - v22 != 2; v32 += 2)
        {
          if (v22 < v32 - 1)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (v32 - v22 == 1)
          {
            break;
          }

          if (v22 < v32)
          {
            goto LABEL_64;
          }

          v34 = *(v20 + v32 - 2);
          v35 = *(v20 + v32 - 1);
          if ((v34 - 58) > 0xF5u)
          {
            v36 = -48;
          }

          else if ((v34 - 71) > 0xF9u)
          {
            v36 = -55;
          }

          else
          {
            if ((v34 - 103) <= 0xF9u)
            {
              continue;
            }

            v36 = -87;
          }

          if ((v35 - 58) > 0xF5u)
          {
            v37 = -48;
            goto LABEL_42;
          }

          if ((v35 - 71) > 0xF9u)
          {
            v37 = -55;
            goto LABEL_42;
          }

          if ((v35 - 103) >= 0xFAu)
          {
            v37 = -87;
LABEL_42:
            LOBYTE(v33) = (v35 + v37) | (16 * (v34 + v36));
LABEL_43:
            v30[v31] = v33;
            if (__OFADD__(v31++, 1))
            {
              goto LABEL_66;
            }

            if (v32 == v22)
            {
              break;
            }

            goto LABEL_20;
          }
        }
      }

      if (v31 < 0)
      {
        goto LABEL_69;
      }

LABEL_46:
      v60 = v18;
      v39 = v14;
      v40 = v28;
      v41 = v27;
      v42 = v26;
      v67 = 0;
      v68 = v31;
      v69 = v30;
      v70 = &v30[v31];
      v43 = v63;
      if (v65)
      {
        v44 = v65 + v64;
      }

      else
      {
        v44 = 0;
      }

      if (v65)
      {
        v45 = v65 + v63;
      }

      else
      {
        v45 = 0;
      }

      v61 = v45;
      v62 = v44;
      sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
      sub_1001F7048();
      sub_1004A4074();
      if (__OFADD__(v43, v31))
      {
        goto LABEL_70;
      }

      if (v40 < v43 + v31)
      {
        goto LABEL_71;
      }

      v13 = v40;
      v63 = v43 + v31;
      v64 = v40;
      a1 = v42;
      v65 = v42;
      v66 = v41;
      a2 = v41;
      v14 = v39;
      v18 = v60;
      goto LABEL_55;
    }

    v21 = *(v19 + 8);
    v22 = v21 - v20;
    if (v21 - v20 < 0)
    {
      goto LABEL_72;
    }

    if (v22 < 1025)
    {
      goto LABEL_18;
    }

    v23 = v13;
    v24 = a2;
    v25 = a1;
    if (swift_stdlib_isStackAllocationSafe())
    {
      a1 = v25;
      goto LABEL_18;
    }

    v46 = swift_slowAlloc();
    v47 = v56;
    sub_1002A89B0(v46, v21 - v20, v20, v21, &v63, v25, v24);
    v56 = v47;
    if (v47)
    {
      goto LABEL_77;
    }

    a1 = v25;
    a2 = v24;
    v13 = v23;
LABEL_55:
    if (++v18 == v57)
    {
      v17 = v63;
      v16 = v53;
      if ((v63 & 0x8000000000000000) == 0)
      {
        goto LABEL_60;
      }

LABEL_75:
      __break(1u);
    }
  }

  sub_1004A69A4();
  __break(1u);
LABEL_77:

  __break(1u);
  return result;
}

uint64_t sub_1002A1CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = a5[2];
  v13 = v12 + *a5;
  if (v12)
  {
    v14 = v12 + a5[1];
    v15 = v12 + *a5;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  v16 = *a5;
  result = sub_1002881FC(a1, a2, a3, a4);
  v18 = v16 + result;
  if (__OFADD__(v16, result))
  {
    __break(1u);
  }

  else
  {
    v19 = a7 - a6;
    if (!a6)
    {
      v19 = 0;
    }

    if (v19 >= v18)
    {
      *a5 = v18;
      a5[1] = v19;
      a5[2] = a6;
      a5[3] = a7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A1DA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 4)
    {
      v2 = 0;
      do
      {
        if (*(result + v2) == 61)
        {
          if (__OFADD__(v2, 1))
          {
            goto LABEL_25;
          }

          if (*(result + v2 + 1) == 63)
          {
            v3 = v2 + 2;
            if (!__OFADD__(v2, 2))
            {
              v4 = 0;
              v5 = a2 - result - 2;
              while (1)
              {
                do
                {
                  v6 = v5;
                  if (v3 >= v5)
                  {
                    if ((v5 != v3) | v4 & 1)
                    {
                      goto LABEL_18;
                    }

                    v4 = 1;
                    v5 = v2 + 2;
                  }

                  else
                  {
                    --v5;
                  }
                }

                while (*(result + v6) != 63);
                v7 = __OFADD__(v6, 1);
                v8 = v6 + 1;
                if (v7)
                {
                  break;
                }

                if (*(result + v8) == 61)
                {
                  return 1;
                }
              }

              __break(1u);
LABEL_25:
              __break(1u);
            }

            __break(1u);
            return result;
          }
        }

LABEL_18:
        if (v2 == a2 - result - 4)
        {
          return 0;
        }

        v7 = __OFADD__(v2++, 1);
      }

      while (!v7);
      __break(1u);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002A1E70(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v10 = a3;
  v8 = *(a4 + 16);
  if (v8 <= a3)
  {
    goto LABEL_56;
  }

  v9 = a2;
  v7 = a4 + 32;
  v14 = a4 + 32 + (a3 << 6);
  v12 = *(v14 + 40);
  v11 = *(v14 + 48);
  v44 = a1;
  if (*(v14 + 16) == 1)
  {
    if ((*(a5 + 16) & 1) != 0 && (sub_1002A27E8(v12, v11, &v47), (v50 & 1) == 0))
    {
      LOWORD(v6) = 0;
      v12 = v48;
      v11 = v49;
      *a5 = v47;
      *(a5 + 16) = 0;
    }

    else
    {
      LOWORD(v6) = 0;
    }
  }

  else
  {
    v15 = *(v14 + 57);
    if (*(v14 + 56))
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    LOWORD(v6) = v16 | v15 | 0x8000;
  }

  v13 = *a6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v13;
  if ((result & 1) == 0)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v19 = *(v13 + 2);
    v18 = *(v13 + 3);
    if (v19 >= v18 >> 1)
    {
      result = sub_1002748E0((v18 > 1), v19 + 1, 1, v13);
      v13 = result;
      *a6 = result;
    }

    *(v13 + 2) = v19 + 1;
    v20 = &v13[24 * v19];
    *(v20 + 4) = v12;
    *(v20 + 5) = v11;
    *(v20 + 24) = v6;
    v21 = v10 + 1;
    if (v10 + 1 == v8)
    {
      return result;
    }

    v22 = 0;
    v23 = v44;
LABEL_18:
    if (v21 < v8)
    {
      break;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    result = sub_1002748E0(0, *(v13 + 2) + 1, 1, v13);
    v13 = result;
    *a6 = result;
  }

  v24 = (v7 + (v21 << 6));
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  v6 = *(v24 + 17);
  v28 = *(v24 + 18);
  v11 = v24[5];
  v10 = v24[6];
  v29 = *(v24 + 56);
  ++v21;
  v30 = v23;
  v31 = *(v24 + 57);
  while (1)
  {
    v32 = !v30 || v30 == v9;
    v33 = v32;
    if (!v25 || v25 == v26)
    {
      break;
    }

    if (!v33)
    {
      v35 = *v25++;
      v34 = v35;
      v36 = *v30++;
      if (v34 == v36)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  if (!v33)
  {
LABEL_16:
    v6 = v22;
    goto LABEL_17;
  }

  if ((v28 & 1) == 0)
  {
    v37 = v22 + 1;
    if ((v37 >> 8))
    {
      goto LABEL_54;
    }

    if (v6 == v37)
    {
      if (v27)
      {
        if ((*(a5 + 16) & 1) != 0 && (sub_1002A27E8(v11, v10, &v51), (v54 & 1) == 0))
        {
          v45 = 0;
          v11 = v52;
          v10 = v53;
          *a5 = v51;
          *(a5 + 16) = 0;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        if (v29)
        {
          v38 = -32512;
        }

        else
        {
          v38 = 0x8000;
        }

        v45 = v38 | v31;
      }

      v12 = *a6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1002748E0(0, *(v12 + 2) + 1, 1, v12);
        *a6 = v12;
      }

      v41 = *(v12 + 2);
      v40 = *(v12 + 3);
      v13 = (v41 + 1);
      if (v41 >= v40 >> 1)
      {
        v12 = sub_1002748E0((v40 > 1), v41 + 1, 1, v12);
        *a6 = v12;
      }

      *(v12 + 2) = v13;
      v42 = &v12[24 * v41];
      *(v42 + 4) = v11;
      *(v42 + 5) = v10;
      *(v42 + 24) = v45;
      v23 = v44;
LABEL_17:
      v22 = v6;
      if (v21 != v8)
      {
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_1002A21D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v7 = a2 - result;
  if (!result)
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = a5;
    v11 = *(a5 + 16);

    v38 = v11;
    if (!v11)
    {
      v35 = _swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    v12 = 0;
    v35 = _swiftEmptyArrayStorage;
    v33 = a6;
    v34 = a7;
    v32 = v10;
    while (1)
    {
      v13 = 16 * v12;
      v14 = a4;
      while (1)
      {
        if (v12 >= *(a4 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v15 = *(v14 + v13 + 32);
        v16 = *(v14 + v13 + 40);
        v18 = *(v10 + v13 + 32);
        v17 = *(v10 + v13 + 40);

        v19 = sub_1002A241C(v15, v16);
        if ((v21 & 1) == 0)
        {
          break;
        }

LABEL_8:
        ++v12;
        v10 += 16;
        v14 += 16;
        if (v12 >= v38)
        {
          a7 = v34;
          a6 = v33;
          goto LABEL_20;
        }
      }

      v36 = v20;
      v37 = v19;
      v22 = sub_1002A241C(v18, v17);
      v24 = v23;
      v26 = v25;

      if (v26)
      {
        goto LABEL_8;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100273A98(0, *(v35 + 2) + 1, 1, v35);
        v35 = result;
      }

      a7 = v34;
      a6 = v33;
      v27 = v36;
      v29 = *(v35 + 2);
      v28 = *(v35 + 3);
      v30 = v37;
      if (v29 >= v28 >> 1)
      {
        result = sub_100273A98((v28 > 1), v29 + 1, 1, v35);
        v27 = v36;
        v30 = v37;
        v35 = result;
      }

      ++v12;
      *(v35 + 2) = v29 + 1;
      v31 = &v35[40 * v29];
      *(v31 + 4) = v30;
      *(v31 + 5) = v27;
      *(v31 + 6) = v22;
      *(v31 + 7) = v24;
      *(v31 + 32) = 0;
      v10 = v32;
      if (v12 >= v38)
      {
LABEL_20:

        sub_1002A3850(v35, a6, a7);
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1002A241C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v5 = sub_1004A59E4();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  if (sub_1002881FC(*v2, v6, v8, v9) < v5)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v8 + v7;
  }

  else
  {
    v10 = 0;
  }

  result = sub_1002A254C(a1, a2, v10);
  v12 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v9 - v8;
  if (!v8)
  {
    v13 = 0;
  }

  if (v12 < 0 || v13 < v12)
  {
    goto LABEL_21;
  }

  if (v12 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= v12)
  {
    *v2 = v12;
    v2[1] = v6;
    v2[2] = v8;
    v2[3] = v9;
    return v10;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1002A254C(unint64_t result, unint64_t a2, uint64_t a3)
{
  v22[0] = result;
  v22[1] = a2;
  if (!a3)
  {
    return result;
  }

  v5 = result;
  __chkstk_darwin(result);
  v18[2] = v22;
  v18[3] = v6;
  v18[4] = v7;
  v18[5] = v6;
  result = sub_1002A2744(sub_1002A4404, v18, v5, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v8 = (a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : v5 & 0xFFFFFFFFFFFFLL;
  if (!v8)
  {
    return result;
  }

  v9 = 0;
  v10 = (v5 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  while (1)
  {
    v12 = result & 0xC;
    v13 = result;
    if (v12 == v11)
    {
      v17 = result;
      v13 = sub_10010C210(result, v5, a2);
      result = v17;
    }

    v14 = v13 >> 16;
    if (v13 >> 16 >= v8)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v16 = sub_1004A5A24();
      result = v19;
      if (v12 != v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v21[0] = v5;
        v21[1] = v20;
        v15 = v21;
      }

      else
      {
        v15 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          v19 = result;
          v15 = sub_1004A67E4();
          result = v19;
        }
      }

      v16 = *(v15 + v14);
      if (v12 != v11)
      {
LABEL_19:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    result = sub_10010C210(result, v5, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_25;
    }

LABEL_23:
    if (v8 <= result >> 16)
    {
      goto LABEL_30;
    }

    result = sub_1004A59F4();
LABEL_25:
    if (__OFADD__(v9, 1))
    {
      goto LABEL_29;
    }

    *(a3 + v9++) = v16;
    if (4 * v8 == result >> 14)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_1002A2744(void *(*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v10[0] = a3;
    v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    result = a1(&v11, v10, HIBYTE(a4) & 0xF);
    if (v4)
    {
      return result;
    }

    return ((a4 & 0x1000000000000000) >> 60);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1004A67E4();
  }

  result = a1(&v11, v7, v8);
  if (!v4)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  return result;
}

uint64_t sub_1002A27E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
        goto LABEL_15;
      }

      if (*(result + v4) == 39)
      {
        goto LABEL_13;
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v3 < (v4 + 1))
      {
        goto LABEL_41;
      }

      v5 = (v4 + 1) <= v4;
      ++v4;
      if (v5)
      {
        __break(1u);
LABEL_13:
        if (v3 <= v4)
        {
          goto LABEL_43;
        }

        if (v3 - 1 == v4)
        {
LABEL_15:
          v6 = 0;
          v7 = 0;
          v8 = 0;
LABEL_16:
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 1;
        }

        else
        {
          v8 = ~v4 + v3;
          v13 = (result + v4 + 1);
          v14 = result + 1 + v4;
          while (1)
          {
            v15 = *v13++;
            if (v15 == 39)
            {
              break;
            }

            ++v14;
            if (!--v8)
            {
              v6 = 0;
              v7 = 0;
              goto LABEL_16;
            }
          }

          v16 = result + v4;
          v11 = a2;
          if (result)
          {
            v6 = result;
          }

          else
          {
            v6 = 0;
          }

          if (result)
          {
            v7 = result + v4;
          }

          else
          {
            v7 = 0;
          }

          if (result)
          {
            v8 = v16 + 1;
          }

          else
          {
            v8 = 0;
          }

          if (result)
          {
            v9 = v14;
          }

          else
          {
            v9 = 0;
          }

          if (result)
          {
            v10 = v14 + 1;
          }

          else
          {
            v10 = 0;
          }

          if (!result)
          {
            v11 = 0;
          }

          v12 = 0;
        }

        *a3 = v6;
        *(a3 + 8) = v7;
        *(a3 + 16) = v8;
        *(a3 + 24) = v9;
        *(a3 + 32) = v10;
        *(a3 + 40) = v11;
        *(a3 + 48) = v12;
        return result;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1002A28F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (v8)
    {
      sub_1002A8BCC(*a1, v7, a6, BYTE1(v8) & 1);
      return;
    }

    v11._countAndFlagsBits = sub_100269EB0(*a1, v7, BYTE1(v8) & 1);
LABEL_25:
    sub_1004A5994(v11);
    goto LABEL_26;
  }

  if (!v8 || v7 == v6)
  {
    v9._countAndFlagsBits = 0;
    object = 0xE000000000000000;
LABEL_7:
    v9._object = object;
    sub_1004A5994(v9);
LABEL_26:

    return;
  }

  v13 = *(a1 + 24);
  v14 = sub_1002A5CD8(a2, a3, a4 & 1, (v8 + v6), &v7[v8], 0, a5);
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    v16 = a5[3];
    if (v16)
    {
LABEL_13:
      v18 = swift_endAccess();
      if (v16 == v15)
      {
        v9._countAndFlagsBits = sub_1004A58D4();
      }

      else
      {
        __chkstk_darwin(v18);
        v9._countAndFlagsBits = sub_10026ADD8(v15, a5, sub_1002A0810);
      }

      object = v9._object;
      goto LABEL_7;
    }

    v17 = sub_1002A6B54("utf-8", a5);
    if (v17)
    {
      v16 = v17;
      a5[3] = v17;
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1002881FC(v6, v7, v8, v13);
    sub_1004A5874(v19);
    if (v7 > v6)
    {
      v20 = v13 - v8;
      v11._countAndFlagsBits = 0;
      v21 = v6;
      while ((v6 & 0x8000000000000000) == 0 && v21 < v20)
      {
        if (*(v8 + v21) - 1 <= 0x7D)
        {
          countAndFlagsBits = v11._countAndFlagsBits;
          sub_1004A58C4();
          v11._countAndFlagsBits = countAndFlagsBits;
        }

        if (v7 == ++v21)
        {
          v11._object = 0xE000000000000000;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002A2B60(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10)
{
  v80 = a7;
  v79 = a6;
  v78 = a5;
  v88 = 0;
  v10 = *(a4 + 16);
  if (!v10)
  {
    return result;
  }

  v70 = result;
  v71 = a2;
  v69 = a3;
  v81 = a10;
  v86 = a4 + 32;
  v75 = a8;
  swift_bridgeObjectRetain_n();
  v77 = a9;
  isStackAllocationSafe = swift_retain_n();
  v13 = 0;
  v82 = 0;
  v74 = a4 + 72;
  v73 = v10 + 1;
  v68 = a4;
  v72 = a4 + 48;
  while (1)
  {
    if (v13 >= v10)
    {
      goto LABEL_120;
    }

    v14 = v86 + 24 * v13;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    if ((v17 & 0x80000000) == 0)
    {
      break;
    }

    if (v17)
    {
      v21 = v82;
      isStackAllocationSafe = sub_1002A8BCC(*v14, *(v14 + 8), v81, BYTE1(v17) & 1);
      v82 = v21;
      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      if (v16)
      {
        v23 = v15 - v16;
      }

      else
      {
        v23 = 0;
      }

      sub_1004A5874(v23);
      if (v16)
      {
        v24 = v15 == v16;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        countAndFlagsBits = v93._countAndFlagsBits;
        object = v93._object;
        v27 = v16;
        while (1)
        {
          v29 = *v27++;
          v28 = v29;
          if ((v29 - 1) < 0x7E)
          {
            if ((v17 & 0x100) == 0 || v28 != 92)
            {
              goto LABEL_24;
            }

            if (v27 == v15)
            {
LABEL_97:
              v93._countAndFlagsBits = countAndFlagsBits;
              v93._object = object;
              break;
            }

            v27 = (v16 + 2);
            if (*(v16 + 1) - 1 < 0x7E)
            {
LABEL_24:
              v89 = countAndFlagsBits;
              v90 = object;
              sub_1004A58C4();
              countAndFlagsBits = v89;
              object = v90;
            }
          }

          v16 = v27;
          if (v27 == v15)
          {
            goto LABEL_97;
          }
        }
      }

      sub_1004A5994(v93);

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_121;
      }
    }

LABEL_37:
    v88 = v13;
    if (v13 >= v10)
    {
      goto LABEL_106;
    }
  }

  v18 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    goto LABEL_122;
  }

  if (v18 < v10)
  {
    v19 = (v74 + 24 * v13);
    v20 = v13 + 1;
    while (1)
    {
      if (v18 < 0)
      {
        goto LABEL_114;
      }

      if (*v19 < 0)
      {
        break;
      }

      ++v20;
      v19 += 12;
      if (v10 == v20)
      {
        v18 = v10;
        goto LABEL_33;
      }
    }

    v18 = v20;
  }

LABEL_33:
  v87 = v18;
  if (__OFSUB__(v18, v13))
  {
    goto LABEL_123;
  }

  if (v18 - v13 == 1)
  {
    v30 = v75;

    v31 = v77;

    v32 = v82;
    v33 = sub_1002A904C(v16, v15, v78, v79, v80 & 1, v30, v31, v81);
    v82 = v32;

    if (v33)
    {
      goto LABEL_106;
    }

LABEL_36:
    v22 = __OFADD__(v13++, 1);
    if (v22)
    {
      goto LABEL_121;
    }

    goto LABEL_37;
  }

  if (v18 < v13)
  {
    goto LABEL_124;
  }

  v34 = 0;
  v35 = (v72 + 24 * v13);
  v36 = v18;
  v37 = v73;
  while (1)
  {
    if (v13 == v36)
    {
      if (v34 < 0)
      {
        goto LABEL_126;
      }

      v84 = v34;
      if (v34 >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v62 = v84;
          v63 = swift_slowAlloc();
          v64 = v75;

          v66 = v62 + v63;
          v67 = v82;
          sub_1002A17F0(v63, v66, &v88, &v87, v68, &v93, v78, v79, v80 & 1, v64, v65, v81);
          v82 = v67;
          if (v67)
          {
            goto LABEL_128;
          }

          isStackAllocationSafe = LOBYTE(v93._countAndFlagsBits);
          v13 = v18 - 1;
          if (__OFSUB__(v18, 1))
          {
LABEL_105:
            __break(1u);
LABEL_106:

            return swift_bridgeObjectRelease_n();
          }

          goto LABEL_95;
        }
      }

      v76 = &v68;
      __chkstk_darwin(isStackAllocationSafe);
      v42 = &v68 - v41;
      v43 = 0;
      v93._countAndFlagsBits = 0;
      v93._object = v44;
      v85 = v42;
      v94 = v42;
      v95 = v44 + v42;
      v83 = v44 + v42;
      if (v13 == v18)
      {
LABEL_94:
        v96[0] = 0;
        v96[1] = v43;
        v96[2] = v85;
        v96[3] = &v85[v43];
        v97 = 0;
        sub_1002A28F4(v96, v78, v79, v80 & 1, v77, v81);
        v13 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          goto LABEL_105;
        }

LABEL_95:
        v88 = v13;
        if (isStackAllocationSafe)
        {
          goto LABEL_106;
        }

        goto LABEL_36;
      }

      while (1)
      {
        if (v13 == v10)
        {
          goto LABEL_115;
        }

        v45 = v86 + 24 * v13;
        if (*(v45 + 16) < 0)
        {
          goto LABEL_127;
        }

        v46 = *v45;
        if (!*v45)
        {
          break;
        }

        v47 = *(v45 + 8);
        v48 = v47 - v46;
        if (v47 - v46 < 0)
        {
          goto LABEL_119;
        }

        if (v48 < 1025 || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
        {
          goto LABEL_61;
        }

        v49 = swift_slowAlloc();
        v50 = v82;
        sub_1002A89B0(v49, v47 - v46, v46, v47, &v93._countAndFlagsBits, v85, v83);
        v82 = v50;
        if (v50)
        {
          goto LABEL_128;
        }

LABEL_92:
        if (++v13 == v18)
        {
          v43 = v93._countAndFlagsBits;
          if (v93._countAndFlagsBits < 0)
          {
            goto LABEL_125;
          }

          goto LABEL_94;
        }
      }

      v48 = 0;
LABEL_61:
      __chkstk_darwin(&v68);
      v52 = &v68 - v51;
      v53 = 0;
      if (!v48)
      {
        goto LABEL_89;
      }

      v54 = 0;
LABEL_63:
      if (v48 < v54 + 1)
      {
        goto LABEL_112;
      }

      v55 = *(v46 + v54);
      if (v55 != 37)
      {
        ++v54;
        goto LABEL_86;
      }

      if (v54 + 1 == v48)
      {
LABEL_88:
        if (v53 < 0)
        {
          goto LABEL_116;
        }

LABEL_89:
        v60 = v10;
        v89 = 0;
        v90 = v53;
        v91 = v52;
        v92 = &v52[v53];
        v61 = v93._countAndFlagsBits;
        sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
        sub_1001F7048();
        sub_1004A4074();
        if (__OFADD__(v61, v53))
        {
          goto LABEL_117;
        }

        if (v84 < v61 + v53)
        {
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
        }

        v93._countAndFlagsBits = v61 + v53;
        v93._object = v84;
        v94 = v85;
        v95 = v83;
        v10 = v60;
        goto LABEL_92;
      }

      v54 += 3;
      while (1)
      {
        if (v48 < v54 - 1)
        {
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
          goto LABEL_118;
        }

        if (v54 - v48 == 1)
        {
          goto LABEL_88;
        }

        if (v48 < v54)
        {
          goto LABEL_109;
        }

        v56 = *(v46 + v54 - 2);
        v57 = *(v46 + v54 - 1);
        if ((v56 - 58) > 0xF5u)
        {
          v58 = -48;
        }

        else if ((v56 - 71) > 0xF9u)
        {
          v58 = -55;
        }

        else
        {
          if ((v56 - 103) <= 0xF9u)
          {
            goto LABEL_79;
          }

          v58 = -87;
        }

        if ((v57 - 58) > 0xF5u)
        {
          v59 = -48;
          goto LABEL_85;
        }

        if ((v57 - 71) > 0xF9u)
        {
          v59 = -55;
          goto LABEL_85;
        }

        if ((v57 - 103) >= 0xFAu)
        {
          v59 = -87;
LABEL_85:
          LOBYTE(v55) = (v57 + v59) | (16 * (v56 + v58));
LABEL_86:
          v52[v53] = v55;
          v22 = __OFADD__(v53++, 1);
          if (v22)
          {
            goto LABEL_113;
          }

          if (v54 == v48)
          {
            goto LABEL_88;
          }

          goto LABEL_63;
        }

LABEL_79:
        v54 += 2;
        if (v54 - v48 == 2)
        {
          goto LABEL_88;
        }
      }
    }

    if (v13 == --v37)
    {
      goto LABEL_110;
    }

    if (*v35 < 0)
    {
      break;
    }

    v39 = *(v35 - 2);
    v38 = *(v35 - 1);
    v35 += 12;
    --v36;
    v40 = v38 - v39;
    if (!v39)
    {
      v40 = 0;
    }

    v22 = __OFADD__(v34, v40);
    v34 += v40;
    if (v22)
    {
      goto LABEL_111;
    }
  }

LABEL_127:

  swift_bridgeObjectRelease_n();
  sub_1004A69A4();
  __break(1u);
LABEL_128:

  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_1002A350C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (a3 & 1) != 0 && *(a4 + 16) == 1 && *(a4 + 48) < 0 && (v10 = *(a4 + 32), v11 = *(a4 + 40), (sub_1002A1DA8(v10, v11)))
  {

    v12 = sub_1002A88A0(v10, v11);
    v14 = sub_1002A062C(v12, v13, a5);

    return v14;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1002A2B60(a1, a2, a3 & 1, a4, a1, a2, a3 & 1, a4, a5, v16);

    return v16[0];
  }
}

uint64_t sub_1002A3614(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v3 = result;
  for (i = 1; ; ++i)
  {
    if (i - v2 == 1)
    {
      return v3;
    }

    v5 = i - 1;
    if (*(result + i - 1) == 42)
    {
      break;
    }

    v6 = i;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v2 < i)
    {
      goto LABEL_45;
    }

    if (v6 < v5)
    {
      __break(1u);
      return v3;
    }
  }

  if (v5 >= v2)
  {
    goto LABEL_52;
  }

  v7 = i;
  while (1)
  {
    if (v2 == v7)
    {
      goto LABEL_22;
    }

    if (*(result + v7) - 58 <= 0xFFFFFFF5)
    {
      break;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_46;
    }

    if (v2 < v8)
    {
      goto LABEL_47;
    }

    if (v8 < v7++)
    {
      __break(1u);
LABEL_22:
      v10 = v2;
      goto LABEL_24;
    }
  }

  v10 = v7;
LABEL_24:
  if (v10 <= v5)
  {
    goto LABEL_53;
  }

  v11 = v10 - i;
  if (v10 == i || (result = sub_1002881FC(i, v10, result, a2), result > 8))
  {
    if (v2 != i)
    {
      return 0;
    }

    return v3;
  }

  v12 = 0;
  if (v3)
  {
    v13 = (v3 + i);
    while (is_mul_ok(v12, 0xAuLL))
    {
      v14 = *v13 - 48;
      if ((v14 & 0xFFFFFF00) != 0)
      {
        goto LABEL_49;
      }

      v15 = 10 * v12;
      v16 = __CFADD__(v15, v14);
      v12 = v15 + v14;
      if (v16)
      {
        goto LABEL_50;
      }

      ++v13;
      if (!--v11)
      {
        if (v12 <= 0xFF)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_37:
  if (v2 == v7)
  {
    return v3;
  }

  if (v10 >= v2)
  {
    goto LABEL_54;
  }

  result = 0;
  if (*(v3 + v10) == 42 && v10 + 1 == v2)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1002A3850(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = (a1 + 65);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v62 = *(v5 - 17);
      v63 = *(v5 - 33);
      v10 = sub_1002A3614(*(v5 - 33), *(v5 - 25));
      if (v12 != 2)
      {
        v13 = v10;
        v14 = v11;
        v15 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100273998(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_100273998((v16 > 1), v17 + 1, 1, v4);
        }

        LOBYTE(v66) = ((v15 & 0xFFFFFFu) >> 16) & 1;
        *(v4 + 2) = v17 + 1;
        v6 = &v4[64 * v17];
        *(v6 + 4) = v13;
        *(v6 + 5) = v14;
        v6[48] = v15 & 1;
        v6[49] = BYTE1(v15);
        v6[50] = v66;
        v7 = v69[0];
        v6[55] = BYTE4(v69[0]);
        *(v6 + 51) = v7;
        *(v6 + 72) = v62;
        *(v6 + 56) = v63;
        v6[88] = v8;
        v6[89] = v9;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v64 = *(v4 + 2);
  if (v64)
  {
    v18 = 0;
    for (i = 0; v64 != i; ++i)
    {
      v22 = &v4[v18];
      v24 = *&v4[v18 + 32];
      v23 = *&v4[v18 + 40];
      if (v4[v18 + 50] == 1)
      {
        v25 = v22[48];
        v26 = *(v22 + 9);
        v27 = *(v22 + 10);
        v28 = v22[88];
        v29 = v22[89];
        if ((v25 & 1) != 0 && (sub_1002A27E8(v26, v27, v69), (v70 & 1) == 0))
        {
          v52 = v69[0];
          v51 = v69[1];
          v54 = v69[4];
          v53 = v69[5];
          sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1004CEAA0;
          *(v55 + 32) = v54;
          *(v55 + 40) = v53;
          *(v55 + 48) = 0;
          if (v24)
          {
            if (v23 - v24 == 8)
            {
              v56 = v55;
              if (sub_1002A1544(0x656D616E656C6966uLL, 0xE800000000000000, v24, v23, sub_100288638))
              {
                v66 = 0;
                v67 = 0xE000000000000000;

                sub_1002A2B60(v52, v51, 0, v56, v52, v51, 0, v56, a3, &v66);

                v20 = v67;
                v21 = a2[1];
                *a2 = v66;
                a2[1] = v20;
              }
            }
          }
        }

        else
        {
          sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1004CEAA0;
          if (v28)
          {
            v31 = -32512;
          }

          else
          {
            v31 = 0x8000;
          }

          v32 = v31 | v29;
          if (v25)
          {
            v32 = 0;
          }

          *(v30 + 32) = v26;
          *(v30 + 40) = v27;
          *(v30 + 48) = v32;
          if (v24)
          {
            if (v23 - v24 == 8)
            {
              v33 = v30;
              if (sub_1002A1544(0x656D616E656C6966uLL, 0xE800000000000000, v24, v23, sub_100288638))
              {
                v34 = v33;
                if (*(v33 + 16) == 1 && *(v33 + 48) < 0 && (v35 = *(v33 + 32), v36 = *(v33 + 40), v37 = sub_1002A1DA8(v35, v36), v34 = v33, (v37 & 1) != 0))
                {
                  v38 = sub_1002A88A0(v35, v36);
                  v40 = v39;

                  v41 = sub_1002A062C(v38, v40, a3);
                  v43 = v42;
                }

                else
                {
                  v66 = 0;
                  v67 = 0xE000000000000000;
                  v57 = v34;

                  sub_1002A2B60(0, 0, 1, v57, 0, 0, 1, v57, a3, &v66);

                  v41 = v66;
                  v43 = v67;
                }

                v58 = a2[1];
                *a2 = v41;
                a2[1] = v43;
              }
            }
          }
        }
      }

      else
      {
        if (v22[49])
        {
          goto LABEL_14;
        }

        v66 = 0;
        v67 = 0;
        v68 = 1;
        v65 = _swiftEmptyArrayStorage;
        sub_1002A1E70(v24, v23, i, v4, &v66, &v65);
        v44 = v65;
        if (v24)
        {
          if (v23 - v24 == 8)
          {
            v46 = v66;
            v45 = v67;
            v47 = v68;
            if (sub_1002A1544(0x656D616E656C6966uLL, 0xE800000000000000, v24, v23, sub_100288638))
            {

              v48 = sub_1002A350C(v46, v45, v47, v44, a3);
              v49 = a2[1];
              *a2 = v48;
              a2[1] = v50;
            }
          }
        }
      }

LABEL_14:
      v18 += 64;
    }
  }
}

uint64_t sub_1002A3DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  v11 = *a1;
  v12 = a1[1];
  if (*a1 != v12)
  {
    if (*a1 >= v12)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(a1[2] + v11) == 59)
    {
      *a1 = v11 + 1;
      LOBYTE(v13) = 1;
      return v13 & 1;
    }
  }

  result = swift_beginAccess();
  if (v11 == v12 || *(*a2 + 16) == 0)
  {
    goto LABEL_21;
  }

  if (__OFADD__(a3, 1))
  {
    goto LABEL_23;
  }

  if (a3 + 1 >= v11)
  {
    goto LABEL_21;
  }

  v15 = v11 - 2;
  if (v11 - 2 < a3 || v15 >= a4)
  {
    goto LABEL_24;
  }

  v16 = *(a5 + v15);
  v17 = v16 > 0x20;
  v18 = (1 << v16) & 0x100002600;
  if (v17 || v18 == 0)
  {
LABEL_21:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (v11 <= a4)
  {
    v20 = *(a5 + v11 - 1);
    if (v20 < 0x21)
    {
      v13 = 0x100002600uLL >> v20;
      return v13 & 1;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1002A3EE0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2 - a1;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_113;
  }

  v47 = 0;
  v48 = v4;
  v49 = a1;
  v50 = a2;
  v6 = 0;
  if (v4)
  {
    v3 = 1;
    while (v4 != v6)
    {
      v7 = *(a1 + v6);
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100002600;
      if (v8 || v9 == 0)
      {
        goto LABEL_14;
      }

      v47 = ++v6;
      v48 = v4;
      v49 = a1;
      v50 = a2;
      if (v4 == v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_14:
  if (v6 != v4)
  {
    if (v4 <= v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }

    v12 = v6;
    while (v3 != v12)
    {
      v18 = *(a1 + v12);
      v8 = v18 > 0x3B;
      v19 = (1 << v18) & 0x800000100002600;
      if (!v8 && v19 != 0)
      {
        v11 = 0;
        if (v12 >= v6)
        {
          goto LABEL_16;
        }

        goto LABEL_57;
      }

      v47 = ++v12;
      v48 = v4;
      v49 = a1;
      v50 = a2;
      if (v4 == v12)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_112;
  }

LABEL_15:
  v11 = 1;
  v12 = v4;
  if (v4 < v6)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    v13 = v3;
    if (v6 == v12)
    {
      return;
    }

    goto LABEL_59;
  }

LABEL_16:
  if (v4 < v12)
  {
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
    goto LABEL_120;
  }

  v3 = v12;
  if ((v11 & 1) == 0)
  {
    v3 = v12;
    while (v4 != v3)
    {
      v21 = *(a1 + v3);
      v8 = v21 > 0x20;
      v22 = (1 << v21) & 0x100002600;
      if (v8 || v22 == 0)
      {
        goto LABEL_18;
      }

      v47 = ++v3;
      v48 = v4;
      v49 = a1;
      v50 = a2;
      if (v4 == v3)
      {
        v13 = v4;
        goto LABEL_54;
      }
    }

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
    goto LABEL_114;
  }

LABEL_18:
  v13 = v4;
  if (v3 != v4)
  {
    if (v3 >= v4)
    {
LABEL_120:
      __break(1u);
      return;
    }

    if (*(a1 + v3) == 61)
    {
      v47 = ++v3;
      v48 = v4;
      v49 = a1;
      v50 = a2;
    }

    v13 = v4;
    if (v3 != v4)
    {
      if (v4 <= v3)
      {
        v14 = v3;
      }

      else
      {
        v14 = v4;
      }

      while (v14 != v3)
      {
        v15 = *(a1 + v3);
        v8 = v15 > 0x20;
        v16 = (1 << v15) & 0x100002600;
        if (v8 || v16 == 0)
        {
          goto LABEL_58;
        }

        v47 = ++v3;
        v48 = v4;
        v49 = a1;
        v50 = a2;
        if (v4 == v3)
        {
          v13 = v4;
          if (v6 == v12)
          {
            return;
          }

          goto LABEL_59;
        }
      }

      goto LABEL_111;
    }
  }

LABEL_54:
  if (v6 != v12)
  {
LABEL_59:
    if (v13 != v4)
    {
      if (v4 <= v13)
      {
        v24 = v13;
      }

      else
      {
        v24 = v4;
      }

      while (v24 != v13)
      {
        v25 = *(a1 + v13);
        v8 = v25 > 0x20;
        v26 = (1 << v25) & 0x100002600;
        if (!v8 && v26 != 0)
        {
          v47 = ++v13;
          v48 = v4;
          v49 = a1;
          v50 = a2;
          if (v4 != v13)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      goto LABEL_110;
    }

LABEL_69:
    v28 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    while ((sub_1002A3DA8(&v47, &v46, 0, v4, a1) & 1) != 0)
    {
      sub_100287DA8();
      sub_100287E04(v51);
      if (v52)
      {
        break;
      }

      v29 = v47;
      if (v47 == v48)
      {
        break;
      }

      if (v47 >= v48)
      {
        goto LABEL_115;
      }

      if (*(v49 + v47) != 61)
      {
        break;
      }

      v30 = v51[0];
      v31 = v51[1];
      v32 = v51[2];
      ++v47;
      if (v29 + 1 == v48)
      {
        goto LABEL_82;
      }

      if (v29 + 1 >= v48)
      {
        goto LABEL_116;
      }

      if (*(v49 + v29 + 1) != 34)
      {
LABEL_82:
        sub_100287E04(v53);
        if (v54)
        {
          goto LABEL_107;
        }

        v45 = 0;
        v33 = v53[0];
        v34 = v53[1];
        v35 = v53[2];
      }

      else
      {
        v47 = v29 + 2;
        v33 = sub_100287EC4(0x22u, 0x5Cu);
        if (v47 == v48)
        {
          goto LABEL_107;
        }

        if (v47 >= v48)
        {
          goto LABEL_118;
        }

        if (*(v49 + v47) != 34)
        {
          goto LABEL_107;
        }

        ++v47;
        LOBYTE(v45) = 1;
        BYTE4(v45) = a3;
      }

      v36 = v32 + v31;
      if (!v32)
      {
        v36 = 0;
      }

      v44 = v36;
      if (v32)
      {
        v37 = v32 + v30;
      }

      else
      {
        v37 = 0;
      }

      if (v35)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = 0;
      }

      if (v35)
      {
        v39 = v35 + v33;
      }

      else
      {
        v39 = 0;
      }

      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100273A98(0, *(v28 + 2) + 1, 1, v28);
      }

      v41 = *(v28 + 2);
      v40 = *(v28 + 3);
      if (v41 >= v40 >> 1)
      {
        v28 = sub_100273A98((v40 > 1), v41 + 1, 1, v28);
      }

      *(v28 + 2) = v41 + 1;
      v42 = &v28[40 * v41];
      *(v42 + 4) = v37;
      *(v42 + 5) = v44;
      *(v42 + 6) = v39;
      *(v42 + 7) = v38;
      v42[64] = v45;
      v42[65] = BYTE4(v45) & 1;
      v46 = v28;
      swift_endAccess();
      sub_100287DA8();
      if (v47 != v48)
      {
        if (v47 >= v48)
        {
          goto LABEL_117;
        }

        if (*(v49 + v47) == 40)
        {
          ++v47;
          sub_1002879E4(0x29u);
          if (v47 == v48)
          {
            goto LABEL_107;
          }

          if (v47 >= v48)
          {
            goto LABEL_119;
          }

          if (*(v49 + v47) != 41)
          {
LABEL_107:

            return;
          }

          ++v47;
        }
      }
    }
  }
}

void *sub_1002A4404(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_1002A4424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002A4478(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RFC_2231.UnsafeAttributeName(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 18))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element.Unencoded(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element.Unencoded(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

char *sub_1002A477C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[0] = _swiftEmptyArrayStorage;
  v29 = v35;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a1;
  v10 = swift_allocObject();
  sub_100276450(v40);
  v11 = v40[9];
  v10[9] = v40[8];
  v10[10] = v11;
  v10[11] = v41[0];
  *(v10 + 185) = *(v41 + 9);
  v12 = v40[5];
  v10[5] = v40[4];
  v10[6] = v12;
  v13 = v40[7];
  v10[7] = v40[6];
  v10[8] = v13;
  v14 = v40[1];
  v10[1] = v40[0];
  v10[2] = v14;
  v15 = v40[3];
  v10[3] = v40[2];
  v10[4] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  v24 = v10;
  v25 = v16;
  v26 = sub_1002A52E0;
  v27 = &v28;
  v22[2] = v10 + 1;
  v22[3] = UInt32.init(_:);
  v22[4] = 0;

  sub_100296AD8(3, a2, a3, a4, a5);
  v35[1] = _swiftEmptyArrayStorage;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  sub_100295F74(sub_100277324, v23, sub_100277344, v22, 0, 0);

  sub_100276114(v10, v16, v35, a1);

  return v35[0];
}

__n128 SparsePartInfo.init(part:status:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t sub_1002A4A30(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SparsePartInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11 = *(a1 + 40);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9 = *(a2 + 40);
    v6 = _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1002A4AF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v8[0] = *(a1 + 1);
  v8[1] = v3;
  v9 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a2 + 3);
  v10[0] = *(a2 + 1);
  v10[1] = v5;
  v11 = *(a2 + 40);
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v4))
  {
    v6 = _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v8, v10);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL SparsePartInfo.Status.isEmpty.getter()
{
  result = 0;
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 3)
    {
      return 1;
    }

    v1 = *(v0 + 8);
    v2 = *(v0 + 16) | *(v0 + 24);
    if (v2 | *v0 | v1)
    {
      v3 = v2 | v1;
      if (*v0 != 1 || v3 != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

char *Message.findPartsMissingData(cache:)(uint64_t a1)
{

  v3 = sub_100294F90(v1, a1);

  return v3;
}

char *sub_1002A4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char **a6@<X8>)
{
  result = sub_1002A477C(a5, a1, a2, a3, a4);
  *a6 = result;
  return result;
}

uint64_t sub_1002A4C50(uint64_t *a1, char **a2, void *a3)
{
  v5 = *(a1 + 8);
  v55[1] = *(a1 + 7);
  v56 = v5;
  v55[0] = *(a1 + 6);
  if (*(&v5 + 1))
  {
    v6 = v5 > 0xFu;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v21 = *a1;
    v22 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1002749F0(0, *(v22 + 2) + 1, 1, v22);
      *a2 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1002749F0((v24 > 1), v25 + 1, 1, v22);
      *a2 = v22;
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[48 * v25];
    *(v26 + 4) = v21;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
LABEL_26:
    v32 = 3;
LABEL_32:
    v26[72] = v32;
    return 2;
  }

  v7 = a1[8];
  if (!v7 || !*(&v56 + 1) || (v8 = a1[5], v9 = a1[6], v10 = a1[7], (sub_10025690C(v8, v9, v10 & 1, a1[8], v55) & 1) == 0))
  {
    if (*(a1 + 184) != 2)
    {
      v33 = sub_100275D34();
      v34 = *a1;
      v36 = v35 & 1;
      v37 = *a2;

      v38 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_1002749F0(0, *(v37 + 2) + 1, 1, v37);
        *a2 = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_1002749F0((v39 > 1), v40 + 1, 1, v37);
        *a2 = v37;
      }

      *(v37 + 2) = v40 + 1;
      v26 = &v37[48 * v40];
      *(v26 + 4) = v34;
      *(v26 + 5) = v33;
      *(v26 + 7) = 0;
      *(v26 + 8) = 0;
      *(v26 + 6) = v36;
      v32 = 1;
      goto LABEL_32;
    }

    v27 = *a1;
    v28 = *a2;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_1002749F0(0, *(v28 + 2) + 1, 1, v28);
      *a2 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1002749F0((v30 > 1), v31 + 1, 1, v28);
      *a2 = v28;
    }

    *(v28 + 2) = v31 + 1;
    v26 = &v28[48 * v31];
    *(v26 + 4) = v27;
    *(v26 + 5) = 1;
    *(v26 + 7) = 0;
    *(v26 + 8) = 0;
    *(v26 + 6) = 0;
    goto LABEL_26;
  }

  v12 = sub_10026C240(a3, v8, v9, v10 & 1, v7);
  v14 = v13;
  if (*(a1 + 184) != 2)
  {
    v42 = sub_100275D34();
    v43 = *a1;
    v45 = v44 & 1;
    v46 = *a2;

    v47 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1002749F0(0, *(v46 + 2) + 1, 1, v46);
      *a2 = v46;
    }

    v48 = *(v46 + 2);
    v49 = *(v46 + 3);
    v50 = v48 + 1;
    if (v48 >= v49 >> 1)
    {
      v54 = v48 + 1;
      v51 = v46;
      v52 = *(v46 + 2);
      v53 = sub_1002749F0((v49 > 1), v48 + 1, 1, v51);
      v48 = v52;
      v50 = v54;
      v46 = v53;
      *a2 = v53;
    }

    *(v46 + 2) = v50;
    v26 = &v46[48 * v48];
    *(v26 + 4) = v43;
    *(v26 + 5) = v42;
    *(v26 + 6) = v45;
    *(v26 + 7) = v12;
    *(v26 + 8) = v14;
    v32 = 2;
    goto LABEL_32;
  }

  v15 = *a1;
  v16 = *a2;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1002749F0(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1002749F0((v18 > 1), v19 + 1, 1, v16);
    *a2 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[48 * v19];
  *(v20 + 4) = v15;
  *(v20 + 5) = v12;
  *(v20 + 7) = 0;
  *(v20 + 8) = 0;
  *(v20 + 6) = v14;
  v20[72] = 0;
  return 2;
}

uint64_t _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = (*(a1 + 9) << 8) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 40) | v4;
  if (v5 <= 1)
  {
    if (!*(a1 + 32))
    {
      if (a2[2].i8[0])
      {
        return 0;
      }

      v7 = a2->i64[1];
      if (v6)
      {
        if (v7)
        {
          if (v3 != a2->i64[0] || v6 != v7)
          {
            return (sub_1004A6D34() & 1) != 0;
          }

          return 1;
        }

        return 0;
      }

      return !v7;
    }

    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    v11 = a2->i8[8];
    if ((v4 & 1) == 0)
    {
      return (a2->i8[8] & 1) == 0 && v3 == a2->i64[0];
    }

    return (a2->i8[8] & 1) != 0;
  }

  v9 = a1[2];
  v8 = a1[3];
  if (v5 != 2)
  {
    if (v6 | v9 | v3 | v8)
    {
      if (a2[2].i8[0] != 3 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

      v12 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v10 = a2->i8[8];
  v7 = a2[1].i64[1];
  if (v4)
  {
    if ((a2->i8[8] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (a2->i8[8])
  {
    return 0;
  }

  v13 = v3 == a2->i64[0];
  result = 0;
  if (v13)
  {
LABEL_29:
    if (!v8)
    {
      return !v7;
    }

    if (!v7)
    {
      return 0;
    }

    if (v9 != a2[1].i64[0] || v8 != v7)
    {
      return (sub_1004A6D34() & 1) != 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002A51F8(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1002A5224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002A526C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1002A52B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1002A5300()
{
  if (v0[2])
  {

    v1 = v0[10];

    v2 = v0[19];
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_1002A535C(uint64_t result)
{
  v2 = v1[2];
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v1;
    v4 = result;
    LODWORD(v5) = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v1;
    while (1)
    {
      while (1)
      {
        v23 = v5;
        v24 = v6;
        if (v6)
        {
          break;
        }

        if (v7 == v2)
        {
          goto LABEL_38;
        }

        v11 = *(v8 + v7);
        v12 = *(v8 + v7++);
        if (v11 < 0)
        {
          LODWORD(v5) = v5 & 0xFFFFFF00 | v12;
          v6 = 8;
          goto LABEL_7;
        }

LABEL_25:
        LODWORD(v5) = v23;
        v6 = v24;
        v9 = v4[1];
        v21 = *v4;
        v22 = v9;
        result = sub_1004A58C4();
        v10 = v22;
        *v4 = v21;
        v4[1] = v10;
      }

      if ((v5 & 0x80) == 0)
      {
        sub_1002A57BC();
        result = UnsafeExtractedAttachment.part.modify();
        v20 = *(v19 + 4);
        if (!v20)
        {
          goto LABEL_40;
        }

        *v19 >>= 8;
        *(v19 + 4) = v20 - 8;
        (result)(&v21, 0);
        goto LABEL_25;
      }

LABEL_7:
      if (v7 == v2)
      {
        v13 = v6;
      }

      else
      {
        v14 = v7 + 1;
        LODWORD(v5) = (*(v8 + v7) << v6) | ((-255 << v6) - 1) & v5;
        v13 = v6 + 8;
        if ((v6 + 8) > 0x1Fu)
        {
          goto LABEL_20;
        }

        if (v14 != v2)
        {
          v15 = *(v8 + v14);
          v14 = v7 + 2;
          LODWORD(v5) = (v15 << v13) | ((-255 << v13) - 1) & v5;
          v13 = v6 + 16;
          if ((v6 + 16) > 0x1Fu)
          {
            goto LABEL_20;
          }

          if (v14 != v2)
          {
            v16 = *(v8 + v14);
            v14 = v7 + 3;
            LODWORD(v5) = (v16 << v13) | ((-255 << v13) - 1) & v5;
            v13 = v6 + 24;
            if ((v6 + 24) > 0x1Fu)
            {
              goto LABEL_20;
            }

            if (v14 != v2)
            {
              v17 = *(v8 + v14);
              v14 = v7 + 4;
              LODWORD(v5) = (v17 << v13) | ((-255 << v13) - 1) & v5;
              v13 = v6 + 32;
              if (v6 < 0xE0u)
              {
LABEL_20:
                v7 = v14;
                goto LABEL_21;
              }

              if (v14 != v2)
              {
                v7 += 5;
                LODWORD(v5) = (*(v8 + v14) << v6) | ((-255 << v6) - 1) & v5;
                v13 = v6 + 40;
                goto LABEL_21;
              }
            }
          }
        }
      }

      v7 = v2;
      if (!v13)
      {
LABEL_38:
        v3[2] = 0;
        return result;
      }

LABEL_21:
      if ((v5 & 0xC0E0) == 0x80C0)
      {
        if ((v5 & 0x1E) != 0)
        {
          v18 = 16;
LABEL_24:
          v23 = v5 >> v18;
          v24 = v13 - v18;
          goto LABEL_25;
        }
      }

      else if ((v5 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v5 & 0x200F) != 0 && (v5 & 0x200F) != 0x200D)
        {
          v18 = 24;
          goto LABEL_24;
        }
      }

      else if ((v5 & 0xC0C0C0F8) == 0x808080F0 && (v5 & 0x3007) != 0 && __rev16(v5 & 0x3007) <= 0x400)
      {
        v18 = 32;
        goto LABEL_24;
      }

      result = sub_1004A6FB4();
      v5 = v5 >> ((8 * result) & 0x38);
      v6 = v13 - 8 * result;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1002A5760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = 0;
  sub_10029F954(v8, a3, a4, a5, a6, a7);
}

unint64_t sub_1002A57BC()
{
  result = qword_1005D6B98;
  if (!qword_1005D6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6B98);
  }

  return result;
}

uint64_t sub_1002A5810(uint64_t result)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xF7u)
    {
      v3 = (*v1 >> result);
      *v1 = (*v1 >> (((result + 8) >> 1) & 0x1C) >> (((result + 8) >> 1) & 0x1C) << ((result + 8 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8)) & 0x18)) | *v1 & ((1 << ((result >> 1) & 0x1C) << ((result >> 1) & 0x1C)) - 1);
      *(v1 + 4) = v2 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1002A589C@<X0>(char *result@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, unsigned __int8 a6@<W5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a5 == 74)
  {
    v9 = 23;
  }

  else
  {
    v9 = byte_1004ED5A5[a5];
  }

  result = CompactEncDet_detectEncoding(a2, a3, result, a4 & 1, v9, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1002A5960(__int16 a1)
{
  v2 = byte_1004ED5A5[a1];
  result = CompactEncDet_EncodingName(v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6._countAndFlagsBits = sub_1004A59B4();
  sub_1004A5994(v6);

  v7._countAndFlagsBits = 10016;
  v7._object = 0xE200000000000000;
  sub_1004A5994(v7);
  result = CompactEncDet_MimeEncodingName(v2);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8._countAndFlagsBits = sub_1004A59B4();
  sub_1004A5994(v8);

  v9._countAndFlagsBits = 8231;
  v9._object = 0xE200000000000000;
  sub_1004A5994(v9);
  if ((a1 & 0x100) != 0)
  {
    v4._countAndFlagsBits = 0x656C6261696C6572;
  }

  else
  {
    v4._countAndFlagsBits = 0x6261696C65726E75;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA0000000000656CLL;
  }

  v4._object = v5;
  sub_1004A5994(v4);

  return 0;
}

uint64_t sub_1002A5A6C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A5960(v1 | *v0);
}

uint64_t sub_1002A5A88()
{
  if (*v0)
  {
    result = 0x656C6261696C6572;
  }

  else
  {
    result = 0x6261696C65726E75;
  }

  *v0;
  return result;
}

Swift::Int sub_1002A5AEC()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(byte_1004ED5A5[v1]);
  return sub_1004A6F14();
}

Swift::Int sub_1002A5B74()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(byte_1004ED5A5[v1]);
  return sub_1004A6F14();
}

uint64_t sub_1002A5BC0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A5CB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002A5C04()
{
  result = CompactEncDet_EncodingName(byte_1004ED5A5[*v0]);
  if (result)
  {

    return sub_1004A59B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A5C44@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A68EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002A5C7C()
{
  result = CompactEncDet_LanguageName(*v0);
  if (result)
  {

    return sub_1004A59B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A5CB0(unsigned __int8 a1)
{
  if (a1 > 0x4Au)
  {
    return 74;
  }

  else
  {
    return byte_1004ED55A[a1];
  }
}

uint64_t sub_1002A5CD8(uint64_t a1, uint64_t a2, char a3, int8x8_t *a4, uint64_t a5, char a6, void *a7)
{
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    v13 = a2 - a1;
    if (a1 && v13 > 119 || (v14 = sub_100295668(a1, a2), v15 = sub_1002A5CB0(v14), v15 == 74))
    {
      v15 = 74;
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    sub_1004A5874(v16);
    if (v12 && a2 != v12)
    {
      v19 = v38;
      v18 = v39;
      do
      {
        v17 = *v12;
        if ((v17 - 1) <= 0x7D)
        {
          v36[0] = v19;
          v36[1] = v39;
          v17 = sub_1004A58C4();
          v19 = v36[0];
        }

        ++v12;
      }

      while (v12 != a2);
      v38 = v19;
    }

    else
    {
      v18 = v39;
    }

    LOBYTE(v36[0]) = 0;
    __chkstk_darwin(v17);
    v39 = v18 & 0xFFFFFFFFFFFFFFLL;
    if (v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      __break(1u);
    }

    else if (v20 <= 0x7FFFFFFF)
    {
      if (v15 == 74)
      {
        v22 = 23;
      }

      else
      {
        v22 = byte_1004ED5A5[v15];
      }

      v37 = CompactEncDet_detectEncoding(a4, v20, &v38, a6 & 1, v22, 0x1Au, v36);
      goto LABEL_30;
    }

    __break(1u);
    __break(1u);
  }

  LOBYTE(v36[0]) = 0;
  if (!a4)
  {
    LODWORD(v10) = 0;
LABEL_23:
    v21 = CompactEncDet_detectEncoding(a4, v10, 0, a6 & 1, 23, 0x1Au, v36);
    goto LABEL_31;
  }

  v10 = a5 - a4;
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  __break(1u);
  type metadata accessor for CompactEncDet_Encoding(0);
  sub_1004A66E4();
LABEL_30:

  v21 = v37;
LABEL_31:
  v23 = sub_1002A5CB0(v21);
  if (v23 == 74)
  {
    return 0;
  }

  v24 = CompactEncDet_MimeEncodingName(byte_1004ED5A5[v23]);
  if (v24)
  {

    v24 = sub_1002A6B54(v24, a7);
    if (v24)
    {
      swift_beginAccess();
      v25 = a7[4];
      if (!v25)
      {

        v26 = sub_1002A6B54("euc-cn", a7);
        if (!v26)
        {
          __break(1u);
          goto LABEL_64;
        }

        v25 = v26;
        a7[4] = v26;
      }

      swift_endAccess();
      if (v25 != v24)
      {
        swift_beginAccess();
        v27 = a7[5];
        if (!v27)
        {

          v28 = sub_1002A6B54("gb-2312-80", a7);
          if (!v28)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v27 = v28;
          a7[5] = v28;
        }

        swift_endAccess();
        if (v27 != v24)
        {
          swift_beginAccess();
          v29 = a7[6];
          if (!v29)
          {

            v30 = sub_1002A6B54("gbk", a7);
            if (!v30)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v29 = v30;
            a7[6] = v30;
          }

          swift_endAccess();
          if (v29 != v24)
          {
            swift_beginAccess();
            v33 = a7[8];
            if (!v33)
            {

              v34 = sub_1002A6B54("big5", a7);
              if (!v34)
              {
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

              v33 = v34;
              a7[8] = v34;
            }

            swift_endAccess();
            if (v33 != v24)
            {
              return v24;
            }

            swift_beginAccess();
            v24 = a7[9];
            if (v24)
            {
              goto LABEL_50;
            }

            v35 = sub_1002A6B54("big5-hkscs", a7);
            if (v35)
            {
              v24 = v35;
              a7[9] = v35;
              goto LABEL_50;
            }

LABEL_68:
            __break(1u);
            JUMPOUT(0x1002A63D0);
          }
        }
      }

      swift_beginAccess();
      v24 = a7[7];
      if (v24)
      {
LABEL_50:
        swift_endAccess();
        return v24;
      }

      v31 = sub_1002A6B54("gb-18030", a7);
      if (v31)
      {
        v24 = v31;
        a7[7] = v31;
        goto LABEL_50;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }
  }

  return v24;
}

uint64_t getEnumTagSinglePayload for CharacterSetDetection.Encoding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB7)
  {
    goto LABEL_17;
  }

  if (a2 + 73 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 73) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 73;
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

      return (*a1 | (v4 << 8)) - 73;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 73;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4A;
  v8 = v6 - 74;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacterSetDetection.Encoding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 73 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 73) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB7)
  {
    v4 = 0;
  }

  if (a2 > 0xB6)
  {
    v5 = ((a2 - 183) >> 8) + 1;
    *result = a2 + 73;
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
    *result = a2 + 73;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CharacterSetDetection.Language(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x60)
  {
    goto LABEL_17;
  }

  if (a2 + 160 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 160) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 160;
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

      return (*a1 | (v4 << 8)) - 160;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 160;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA1;
  v8 = v6 - 161;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacterSetDetection.Language(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 160 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 160) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x60)
  {
    v4 = 0;
  }

  if (a2 > 0x5F)
  {
    v5 = ((a2 - 96) >> 8) + 1;
    *result = a2 - 96;
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
    *result = a2 - 96;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002A67E8()
{
  result = qword_1005D6BA0;
  if (!qword_1005D6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BA0);
  }

  return result;
}

unint64_t sub_1002A6840()
{
  result = qword_1005D6BA8;
  if (!qword_1005D6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BA8);
  }

  return result;
}

unint64_t sub_1002A6898()
{
  result = qword_1005D6BB0;
  if (!qword_1005D6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BB0);
  }

  return result;
}

uint64_t sub_1002A68EC(uint64_t result)
{
  if (result >= -95)
  {
    v1 = -95;
  }

  else
  {
    v1 = result;
  }

  if ((result & 0x80u) == 0)
  {
    return result;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ICUCanonicalConverterName(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ICUCanonicalConverterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

char *sub_1002A69A8()
{
  v0 = ucnv_countAvailable();
  result = sub_100273CF0(0, v0 & ~(v0 >> 31), 0, _swiftEmptyArrayStorage);
  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (v0)
    {
      for (i = 0; i != v0; ++i)
      {
        AvailableName = ucnv_getAvailableName();
        if (AvailableName)
        {
          v6 = *(v2 + 2);
          v5 = *(v2 + 3);
          if (v6 >= v5 >> 1)
          {
            v7 = AvailableName;
            v2 = sub_100273CF0((v5 > 1), v6 + 1, 1, v2);
            AvailableName = v7;
          }

          *(v2 + 2) = v6 + 1;
          *&v2[8 * v6 + 32] = AvailableName;
        }
      }
    }

    return v2;
  }

  return result;
}

unint64_t sub_1002A6A74()
{
  result = qword_1005D6BB8;
  if (!qword_1005D6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BB8);
  }

  return result;
}

uint64_t sub_1002A6AC8()
{
  v1 = sub_1004A57F4();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = *v0;
  sub_1004A57E4();
  result = sub_1004A57B4();
  if (!v5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1002A6B54(uint64_t a1, uint64_t a2)
{
  CanonicalName = ucnv_getCanonicalName();
  if (CanonicalName)
  {
    v4 = CanonicalName;
    if (*(a2 + 16))
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = sub_1002A69A8();
      v6 = *(a2 + 16);
      *(a2 + 16) = v5;
    }

    v7 = *(v5 + 2);
    v8 = 32;
    while (v7)
    {
      v9 = *&v5[v8];
      v8 += 8;
      --v7;
      if (v9 == v4)
      {

        goto LABEL_32;
      }
    }

    if (*(a2 + 16))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = sub_1002A69A8();
      v11 = *(a2 + 16);
      *(a2 + 16) = v10;
    }

    v12 = *(v10 + 2);

    v13 = 0;
    while (v12 != v13)
    {
      if (v13 >= *(v10 + 2))
      {
        goto LABEL_39;
      }

      v14 = *&v10[8 * v13++ + 32];
      if (!ucnv_compareNames())
      {

        return v14;
      }
    }
  }

  v15 = *(a2 + 16);
  if (!v15)
  {
    v16 = sub_1002A69A8();
    v25 = *(a2 + 16);
    *(a2 + 16) = v16;

    v17 = *(v16 + 2);
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_34:

LABEL_35:

    return 0;
  }

  v16 = *(a2 + 16);
  v17 = *(v15 + 16);
  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_20:

  v18 = 0;
  while (1)
  {
    if (v18 >= *(v16 + 2))
    {
      goto LABEL_38;
    }

    v4 = *&v16[8 * v18 + 32];
    v19 = ucnv_countAliases();
    if (v19)
    {
      break;
    }

LABEL_22:
    if (++v18 == v17)
    {
      goto LABEL_35;
    }
  }

  v20 = v19;
  v21 = v19 + 1;
  sub_10000C9C0(&qword_1005D6BC0, &qword_1004ED6C0);
  v22 = sub_1004A5C64();
  v22[2] = v21;
  v22[4] = 0;
  bzero(v22 + 5, 8 * v20);
  ucnv_getAliases();
  v23 = v22[2];
  if (!v23)
  {
LABEL_21:

    goto LABEL_22;
  }

  v24 = 0;
  while (1)
  {
    if (v24 >= v22[2])
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if (v22[v24 + 4] && !ucnv_compareNames())
    {
      break;
    }

    if (v23 == ++v24)
    {
      goto LABEL_21;
    }
  }

LABEL_32:

  return v4;
}

uint64_t sub_1002A6E60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1002A7064(a1, a2);
  if (!v3)
  {
    if (result >= a2)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    if (a2 + 0x4000000000000000 >= 0)
    {
      v9 = 2 * a2;
      if (2 * a2 < 0)
      {
        __break(1u);
      }

      else if (v9 + 0x4000000000000000 >= 0)
      {
        v4 = result;
        result = 4 * a2;
        if (4 * a2 <= 1024)
        {
LABEL_7:
          __chkstk_darwin(result);
          v19[1] = sub_1002A71F8(a1, a2, v19 - v11, v10, v4);
          v19[2] = v12;
          v19[3] = v13;
          v19[4] = v14;
          sub_10000C9C0(&qword_1005D6BC8, &qword_1004ED6C8);
          sub_1002A7374();
          sub_1002A73D8();
          result = sub_1004A5854();
          if (v15)
          {
            *a3 = result;
            a3[1] = v15;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

LABEL_13:
        v19[0] = result;
        v16 = v9;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        result = v19[0];
        if (!isStackAllocationSafe)
        {
          v18 = swift_slowAlloc();
          sub_1002A713C(v18, a1, v16, a2, v4, a3);
        }

        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002A7064(uint64_t a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  return unorm2_spanQuickCheckYes();
}

uint64_t sub_1002A713C@<X0>(void *__dst@<X0>, void *__src@<X3>, uint64_t a3@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  result = sub_1002A71F8(__src, a4, __dst, a3, a5);
  if (!v6)
  {
    sub_10000C9C0(&qword_1005D6BC8, &qword_1004ED6C8);
    sub_1002A7374();
    sub_1002A73D8();
    result = sub_1004A5854();
    if (v9)
    {
      *a6 = result;
      a6[1] = v9;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002A71F8(void *__src, uint64_t a2, void *__dst, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a5 && a4)
  {
    if (a5 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a5;
    }

    memcpy(__dst, __src, 2 * v8);
  }

  if (a2 < a5)
  {
    goto LABEL_16;
  }

  if (a5 >> 31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 - a5 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if ((unorm2_normalizeSecondAndAppend() & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  return 0;
}

unint64_t sub_1002A7374()
{
  result = qword_1005D6BD0;
  if (!qword_1005D6BD0)
  {
    sub_10000DEFC(&qword_1005D6BC8, &qword_1004ED6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BD0);
  }

  return result;
}

unint64_t sub_1002A73D8()
{
  result = qword_1005D6BD8;
  if (!qword_1005D6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BD8);
  }

  return result;
}

uint64_t sub_1002A742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 32) & 0xF0) != 0x50 || (*(a1 + 16))
  {
    goto LABEL_3;
  }

  if (sub_10027C548(*a1, *(a1 + 8)) == 1819112552 && v23 == 0xE400000000000000)
  {

    v11 = 1;
    goto LABEL_4;
  }

  v25 = sub_1004A6D34();

  if (v25)
  {
    v11 = 1;
  }

  else
  {
LABEL_3:
    v11 = 0;
  }

LABEL_4:
  v12 = sub_1002717C4();
  v14 = v13;
  v16 = v15;
  sub_100270C3C(a1);
  if (!a4 || a3 == a2 || (v18 = sub_1002A5CD8(v12, v14, v16 & 1, (a4 + a2), a4 + a3, v11, a6)) == 0)
  {

    return 0;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = a6[3];
  if (!v20)
  {

    result = sub_1002A6B54("utf-8", a6);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    a6[3] = result;
  }

  v21 = swift_endAccess();
  if (v20 == v19)
  {
    v22 = sub_1004A58D4();
  }

  else
  {
    __chkstk_darwin(v21);
    v22 = sub_10026ADD8(v19, a6, sub_1002A0810);
  }

  return v22;
}

uint64_t sub_1002A7678(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  isStackAllocationSafe = sub_1004A63A4();
  if (isStackAllocationSafe + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (2 * isStackAllocationSafe < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (2 * isStackAllocationSafe + 0x4000000000000000 < 0)
  {
    goto LABEL_13;
  }

  if (4 * isStackAllocationSafe < 1025)
  {
    goto LABEL_5;
  }

LABEL_9:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_5:
    __chkstk_darwin(isStackAllocationSafe);
    result = sub_1002A8150((&v14 - v10), a1, a2, a3, a4);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1002A8150(v12, a1, a2, a3, a4);

  if (!v4)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1002A7810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = *a1;
  ucnv_setFallback();
  if (a2)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  result = sub_1002A7894(a2, v10, 1, v9, a1, 1);
  if (!v4)
  {
    v12 = a1[3];
    *a4 = a1[2];
    a4[1] = v12;
  }

  return result;
}

uint64_t sub_1002A7894(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v28 = a6;
  v29 = a3;
  v27 = a5;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v8 = 0;
  v34 = 0;
  v35 = v6;
  v36 = a1;
  v37 = a2;
  while (1)
  {
    v9 = v36;
    if (v36)
    {
      v10 = v37 - v36;
    }

    else
    {
      v10 = 0;
    }

    if ((v8 & 0x8000000000000000) != 0 || v10 < v8)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    if ((v6 & 0x8000000000000000) != 0 || v10 < v6)
    {
      goto LABEL_45;
    }

    MinCharSize = ucnv_getMinCharSize();
    if (!MinCharSize)
    {
      goto LABEL_46;
    }

    v12 = (v6 - v8) / MinCharSize;
    v13 = __OFADD__(v12, 3);
    v14 = v12 + 3;
    if (v13)
    {
      goto LABEL_47;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_48;
    }

    v15 = 2 * v14;
    if (2 * v14 < 0)
    {
      goto LABEL_54;
    }

    if (v15 >= 1025)
    {
      MinCharSize = swift_stdlib_isStackAllocationSafe();
      if ((MinCharSize & 1) == 0)
      {
        v23 = swift_slowAlloc();
        v24 = v30;
        sub_1002A7BB0(&v34, v23, v23 + v15, v29 & 1, a4, v27, v28 & 1);

        if (v24)
        {
          return result;
        }

        v30 = 0;
        v21 = v34;
        v6 = v35;
        goto LABEL_36;
      }
    }

    __chkstk_darwin(MinCharSize);
    v17 = &v26 - v16;
    v18 = v9 ? v9 + v8 : 0;
    v32 = v18;
    v33 = &v26 - v16;
    v31 = 0;
    result = ucnv_toUnicode();
    if (v32)
    {
      v20 = v32 - v18;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v8 + v20;
      if (__OFADD__(v8, v20))
      {
        goto LABEL_49;
      }

      if ((v21 & 0x8000000000000000) != 0 || v10 < v21)
      {
        goto LABEL_50;
      }

      if (v6 < v21)
      {
        goto LABEL_51;
      }

      if (v21 < v8)
      {
        goto LABEL_52;
      }

      v34 = v8 + v20;
      v35 = v6;
    }

    else
    {
      v21 = v8;
    }

    if (v31 != 15 && v31 > 0)
    {
      break;
    }

    if (v33)
    {
      if (v33 - v17 < -1)
      {
        goto LABEL_53;
      }

      v22 = v30;
      result = sub_1002A7DA8(v17, (v33 - v17) / 2, v27, v28 & 1);
      v30 = v22;
      if (v22)
      {
        return swift_willThrow();
      }
    }

LABEL_36:
    v8 = v21;
    if (v21 == v6)
    {
      return result;
    }
  }

  sub_1002755A0();
  swift_allocError();
  *v25 = 1;
  *(v25 + 4) = 1;
  swift_willThrow();
  return swift_willThrow();
}

uint64_t sub_1002A7BB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  if (v13)
  {
    v15 = v13 + *a1;
  }

  else
  {
    v15 = 0;
  }

  ucnv_toUnicode();
  if (v15)
  {
    v16 = v14 - v13;
    if (!v13)
    {
      v16 = 0;
    }

    if (v12 < 0 || v16 < v12)
    {
      __break(1u);
    }

    else if (v11 >= v12)
    {
      *a1 = v12;
      a1[1] = v11;
      a1[2] = v13;
      a1[3] = v14;
      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  if (a2)
  {
    if (!a2)
    {
      v17 = 0;
LABEL_16:
      result = sub_1002A7DA8(a2, v17, a6, a7 & 1);
      if (v7)
      {
        return result;
      }

      return 1;
    }

    if (a2 - a2 >= -1)
    {
      v17 = (a2 - a2) / 2;
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }

  return 1;
}

unint64_t sub_1002A80EC()
{
  result = qword_1005D6BE8;
  if (!qword_1005D6BE8)
  {
    sub_10000DEFC(&qword_1005D6BE0, &qword_1004ED6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6BE8);
  }

  return result;
}

unint64_t sub_1002A8150(_WORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3 >> 14;
  v31 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    v8 = 0;
    goto LABEL_54;
  }

  v11 = a2;
  v27 = v5;
  v12 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v28 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v29 = a5 & 0xFFFFFFFFFFFFFFLL;
  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  v30 = v14;
  v26 = (a1 + 1);

  v8 = 0;
  v35 = v13;
  do
  {
    v16 = v11 & 0xC;
    v17 = (v11 & 1) == 0 || v16 == v13;
    v18 = v17;
    if (v17)
    {
      result = v11;
      if (v16 == v13)
      {
        result = sub_10010C210(v11, a4, a5);
      }

      if (result >> 14 < v31 || result >> 14 >= v7)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      if ((result & 1) == 0)
      {
        sub_1001E1418(result, a4, a5);
      }
    }

    else
    {
      if (v11 >> 14 < v31)
      {
        goto LABEL_58;
      }

      result = v11;
      if (v11 >> 14 >= v7)
      {
        goto LABEL_58;
      }
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      result = sub_1004A6714();
      v19 = result;
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v32 = a4;
        v33 = v29;
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        sub_1004A67E4();
      }

      result = sub_1004A67F4();
      v19 = result;
      if (!v18)
      {
LABEL_29:
        if (v30 <= v11 >> 16)
        {
          goto LABEL_60;
        }

LABEL_37:
        if ((a5 & 0x1000000000000000) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_38;
      }
    }

    if (v16 == v35)
    {
      result = sub_10010C210(v11, a4, a5);
      v11 = result;
    }

    if (v30 <= v11 >> 16)
    {
      goto LABEL_59;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    result = sub_1001E1418(v11, a4, a5);
    v11 = v11 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a5 & 0x1000000000000000) != 0)
    {
LABEL_47:
      result = sub_1004A5884();
      v11 = result;
      goto LABEL_48;
    }

LABEL_38:
    v20 = v11 >> 16;
    if ((a5 & 0x2000000000000000) != 0)
    {
      v32 = a4;
      v33 = v29;
      v21 = *(&v32 + v20);
    }

    else
    {
      result = v28;
      if ((a4 & 0x1000000000000000) == 0)
      {
        result = sub_1004A67E4();
      }

      v21 = *(result + v20);
    }

    v22 = v21;
    v23 = __clz(v21 ^ 0xFF) - 24;
    if (v22 >= 0)
    {
      LOBYTE(v23) = 1;
    }

    v11 = ((v20 + v23) << 16) | 5;
LABEL_48:
    if (v19 >= 0x10000)
    {
      a1[v8] = ((v19 + 983040) >> 10) & 0x3FF | 0xD800;
      v19 = (((v19 + 983040) >> 10) & 0x3FF | ((v19 & 0x3FF) << 16) | 0xDC00D800) >> 16;
      v24 = v26;
      v25 = 2;
    }

    else
    {
      v24 = a1;
      v25 = 1;
    }

    v24[v8] = v19;
    v8 += v25;
    v13 = v35;
  }

  while (v7 != v11 >> 14);

  v5 = v27;
  if (v8 < 0)
  {
    goto LABEL_61;
  }

LABEL_54:
  result = sub_1002A6E60(a1, v8, &v34);
  if (!v5)
  {
    return v34;
  }

  return result;
}