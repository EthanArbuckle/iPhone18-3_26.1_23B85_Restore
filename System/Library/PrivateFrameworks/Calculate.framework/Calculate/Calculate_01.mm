uint64_t sub_1C1E8CC64()
{
  swift_weakInit();
  *(v0 + 24) = 16777473;
  *(v0 + 28) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();
  return v0;
}

uint64_t sub_1C1E8CCF8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  return *(v2 + *a2);
}

uint64_t sub_1C1E8CD98(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  return *(v2 + *a2);
}

uint64_t sub_1C1E8CE4C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t CalculateExpression.RichExpression.__deallocating_deinit()
{
  swift_weakDestroy();

  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 51, 7);
}

uint64_t sub_1C1E8CECC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1F52994();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1C1F52994();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C1E8CFBC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1E8D05C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1E8CFBC(uint64_t a1)
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
    sub_1C1F52994();
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
  result = sub_1C1F52AD4();
  *v1 = result;
  return result;
}

uint64_t sub_1C1E8D05C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1F52994();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1F52994();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1E98DB4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21138, &qword_1C1F56910);
            v9 = sub_1C1E98D2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CalculateExpression.RichToken();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E8D1DC()
{
  v1 = v0;
  result = (*(*v0 + 392))();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:
  }

LABEL_26:
  result = sub_1C1F52994();
  v4 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6911DB0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v20[0] = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v21 = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v20, &v21))
      {
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v20[0] = *(v7 + v8);
        v21 = 16;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v20, &v21))
        {
          v9 = __OFSUB__(v5--, 1);
          if (v9)
          {
            goto LABEL_25;
          }
        }
      }

      v10 = (*(*v7 + 280))();
      if (v10)
      {
        sub_1C1E8D1DC();
      }

      if ((*(*v7 + 304))(v10))
      {
        sub_1C1E8D1DC();
      }
    }

    if (v5 >= 1)
    {
      v11 = *(*v1 + 408);
      v12 = type metadata accessor for CalculateExpression.RichToken();
      v13 = v5 + 1;
      do
      {
        v20[0] = 16;
        v14 = *(v12 + 48);
        v15 = *(v12 + 52);
        swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v20, 1);
        v16 = v11(v20);
        v18 = v17;
        MEMORY[0x1C6911980]();
        if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C1F526E4();
        }

        sub_1C1F52724();
        result = v16(v20, 0);
        --v13;
      }

      while (v13 > 1);
    }
  }

  return result;
}

uint64_t sub_1C1E8D4F8()
{
  result = (*(*v0 + 368))();
  if (result == 2)
  {
    return result;
  }

  v101[0] = MEMORY[0x1E69E7CC0];
  v100 = 0;
  v94 = v0;
  v95 = *(*v0 + 392);
  v2 = v95();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_1C1F52994();
    if (!v4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_32;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v5 = 0;
  v6 = 0;
  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6911DB0](i, v3);
    }

    else
    {
      v8 = *(v3 + 8 * i + 32);
    }

    if ((*(*v8 + 280))())
    {
      (sub_1C1E8D4F8)();
    }

    if (v6)
    {
      v9 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v99) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (LOBYTE(v97) = *(v6 + v9), v98 = 16, (static CalculateExpression.TokenType.== infix(_:_:)(&v97, &v98)) || (LOBYTE(v99) = *(v6 + v9), LOBYTE(v97) = 7, (static CalculateExpression.TokenType.== infix(_:_:)(&v99, &v97)) || (LOBYTE(v99) = *(v6 + v9), LOBYTE(v97) = 8, (static CalculateExpression.TokenType.== infix(_:_:)(&v99, &v97)))
      {
        v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v99) = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (LOBYTE(v97) = *(v8 + v10), v98 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(&v97, &v98)) || (LOBYTE(v99) = *(v8 + v10), LOBYTE(v97) = 10, (static CalculateExpression.TokenType.== infix(_:_:)(&v99, &v97)))
        {
          LOBYTE(v99) = *(v6 + v9);
          LOBYTE(v97) = 1;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(&v99, &v97) & 1) == 0 || (LOBYTE(v99) = *(v8 + v10), (CalculateExpression.TokenType.isConstant.getter() & 1) == 0))
          {
            LOBYTE(v99) = 5;
            v11 = type metadata accessor for CalculateExpression.RichToken();
            v12 = *(v11 + 48);
            v13 = *(v11 + 52);
            swift_allocObject();
            v14 = CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v99, 1);
            MEMORY[0x1C6911980](v14);
            if (*((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v21 = *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1C1F526E4();
            }

            sub_1C1F52724();
            v5 = 1;
          }
        }
      }
    }

    MEMORY[0x1C6911980](v15);
    if (*((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    sub_1C1F52724();

    v16 = *(*v8 + 304);

    v18 = v16(v17);

    if (v18)
    {
      sub_1C1E8D4F8(v19);
    }

    v6 = v8;
  }

  v100 = v5;
LABEL_32:

  v22 = MEMORY[0x1E69E7CC0];
  v23 = sub_1C1E8E268(MEMORY[0x1E69E7CC0]);
  v99 = v23;
  v24 = v94;
  v25 = v95();
  v26 = v25;
  v27 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 >> 62)
  {
    goto LABEL_131;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v96 = (v22 + 16);
  v29 = 0;
  if (!v28)
  {
LABEL_97:

    v27 = *(v22 + 2);
    if (!v27)
    {
LABEL_119:
      v97 = 0;

      v83 = sub_1C1E8E348(v82, v101, &v97, &v99, &v100);

      swift_bridgeObjectRelease_n();
      v101[0] = v83;
      v97 = 0;
      sub_1C1E8E588(v83, &v97, v101, sub_1C1EAB018, 0, &v100);
      swift_bridgeObjectRelease_n();
      if (v100 == 1)
      {
        v84 = *(*v24 + 400);

        v86 = v84(v85);
        if ((*(*v94 + 568))(v86))
        {
          (*(*v94 + 424))();
        }
      }
    }

    v68 = 0;
    v22 += 32;
    while (1)
    {
      if (v68 >= *v96)
      {
        goto LABEL_126;
      }

      v26 = *&v22[8 * v68];
      v69 = (v95)(v67);
      if ((v69 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1C6911DB0](v26, v69);
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        if (v26 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v70 = *(v69 + 8 * v26 + 32);
      }

      v72 = (*(*v70 + 256))(v71);

      if (v72)
      {
        break;
      }

LABEL_101:
      if (v27 == ++v68)
      {
        goto LABEL_119;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v23;
    v67 = sub_1C1EAC1C8(v26);
    v75 = v23[2];
    v76 = (v74 & 1) == 0;
    v50 = __OFADD__(v75, v76);
    v77 = v75 + v76;
    if (v50)
    {
      goto LABEL_129;
    }

    v24 = v74;
    if (v23[3] >= v77)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = v67;
        sub_1C1EAF7B0();
        v67 = v81;
        v23 = v97;
        if ((v24 & 1) == 0)
        {
          goto LABEL_114;
        }

        goto LABEL_99;
      }
    }

    else
    {
      sub_1C1EAF27C(v77, isUniquelyReferenced_nonNull_native);
      v67 = sub_1C1EAC1C8(v26);
      if ((v24 & 1) != (v78 & 1))
      {
        goto LABEL_140;
      }
    }

    v23 = v97;
    if ((v24 & 1) == 0)
    {
LABEL_114:
      v23[(v67 >> 6) + 8] |= 1 << v67;
      *(v23[6] + 8 * v67) = v26;
      *(v23[7] + v67) = 0;
      v79 = v23[2];
      v50 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v50)
      {
        goto LABEL_130;
      }

      v23[2] = v80;
      goto LABEL_100;
    }

LABEL_99:
    *(v23[7] + v67) = 0;
LABEL_100:
    v99 = v23;
    v24 = v94;
    goto LABEL_101;
  }

  v30 = 0;
  v90 = v22 + 24;
  while (1)
  {
    v92 = v29;
    v24 = v30;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1C6911DB0](v24, v26);
        v30 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v24 >= *(v27 + 16))
        {
          goto LABEL_125;
        }

        v29 = *(v26 + 8 * v24 + 32);

        v30 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
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
          v28 = sub_1C1F52994();
          goto LABEL_34;
        }
      }

      v31 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v97) = *(v29 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v98 = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v97, &v98))
      {
        v32 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C1EAEE14(0, *v96 + 1, 1, v22);
        }

        v34 = *(v22 + 2);
        v33 = *(v22 + 3);
        if (v34 >= v33 >> 1)
        {
          v22 = sub_1C1EAEE14((v33 > 1), v34 + 1, 1, v22);
        }

        *(v22 + 2) = v34 + 1;
        *&v22[8 * v34 + 32] = v24;
        v24 = v94;
        v28 = v32;
        goto LABEL_52;
      }

      LOBYTE(v97) = *(v29 + v31);
      v98 = 16;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v97, &v98))
      {
        break;
      }

      ++v24;
      if (v30 == v28)
      {
        v24 = v94;
        goto LABEL_97;
      }
    }

    v88 = v28;
    v91 = v22;
    v89 = v27;
    if (((*(*v29 + 256))() & 1) == 0)
    {
      goto LABEL_65;
    }

    if (*v96)
    {
      break;
    }

LABEL_61:
    if (v92)
    {
      if (*(v92 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) != 53)
      {
        LOBYTE(v97) = *(v92 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v98 = 15;
        sub_1C1E9019C();
        if (sub_1C1F52414())
        {
          v93 = 0;
          goto LABEL_66;
        }
      }
    }

LABEL_65:
    v93 = 1;
LABEL_66:
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v23;
    v42 = sub_1C1EAC1C8(v24);
    v43 = v23[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_133;
    }

    v46 = v41;
    if (v23[3] >= v45)
    {
      if ((v40 & 1) == 0)
      {
        sub_1C1EAF7B0();
      }
    }

    else
    {
      sub_1C1EAF27C(v45, v40);
      v47 = sub_1C1EAC1C8(v24);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_140;
      }

      v42 = v47;
    }

    v22 = v91;
    v23 = v97;
    if (v46)
    {
      *(v97[7] + v42) = v93;
    }

    else
    {
      v97[(v42 >> 6) + 8] |= 1 << v42;
      *(v23[6] + 8 * v42) = v24;
      *(v23[7] + v42) = v93;
      v49 = v23[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_135;
      }

      v23[2] = v51;
    }

    v24 = v94;
    v27 = v89;
    v99 = v23;
    if (!*v96)
    {
      v28 = v88;
      goto LABEL_89;
    }

    v52 = *&v90[8 * *v96];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v23;
    v87 = v52;
    v55 = sub_1C1EAC1C8(v52);
    v56 = v23;
    v57 = v23[2];
    v58 = (v54 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_134;
    }

    v60 = v54;
    if (v56[3] < v59)
    {
      sub_1C1EAF27C(v59, v53);
      v61 = sub_1C1EAC1C8(v52);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_140;
      }

      v55 = v61;
      goto LABEL_81;
    }

    v28 = v88;
    if ((v53 & 1) == 0)
    {
      sub_1C1EAF7B0();
LABEL_81:
      v28 = v88;
    }

    v63 = v97;
    if (v60)
    {
      *(v97[7] + v55) = v93;
      v24 = v94;
      v23 = v63;
    }

    else
    {
      v97[(v55 >> 6) + 8] |= 1 << v55;
      *(v63[6] + 8 * v55) = v87;
      *(v63[7] + v55) = v93;
      v64 = v63[2];
      v50 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v50)
      {
        goto LABEL_138;
      }

      v23 = v63;
      v63[2] = v65;
      v24 = v94;
    }

    v99 = v23;
    if (*v96)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1C1EAFA90(v91);
      }

      v66 = *(v22 + 2);
      if (!v66)
      {
        goto LABEL_139;
      }

      *(v22 + 2) = v66 - 1;

LABEL_52:
      v23 = v99;
      v96 = (v22 + 16);
      v90 = v22 + 24;
      if (v30 == v28)
      {
        goto LABEL_97;
      }

      continue;
    }

LABEL_89:

    if (v30 == v28)
    {
      goto LABEL_97;
    }
  }

  v35 = *&v90[8 * *v96];
  v36 = v95();
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1C6911DB0](v35, v36);
LABEL_60:

    v39 = (*(*v37 + 256))(v38);

    if ((v39 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_136;
  }

  if (v35 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 8 * v35 + 32);

    goto LABEL_60;
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1E8E20C()
{
  result = (*(*v0 + 176))();
  if (result)
  {
    v2 = CalculateExpression.format.getter();

    return v2;
  }

  return result;
}

unint64_t sub_1C1E8E268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21208, &qword_1C1F568F8);
    v3 = sub_1C1F52BE4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C1EAC1C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1E8E348(unint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v7 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1F52994())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = &unk_1EDC31000;
    while (v10)
    {
      MEMORY[0x1C6911DB0](v9, v7);
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }

LABEL_9:
      v15 = *a3;
      v16 = *a2;
      v34 = v14;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1C6911DB0](v15);
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v17 = *(v16 + 8 * v15 + 32);
      }

      v18 = *(v30 + v12[99]);

      if (CalculateExpression.TokenType.isParenthesis.getter() & 1) != 0 && (v19 = *a4, *(*a4 + 16)) && (v20 = sub_1C1EAC1C8(*a3), (v21))
      {
        v22 = *(*(v19 + 56) + v20);
      }

      else
      {
        v22 = 1;
      }

      if (__OFADD__(*a3, 1))
      {
        goto LABEL_29;
      }

      ++*a3;
      if (v22)
      {
        sub_1C1F52AF4();
        v23 = v11;
        v24 = a3;
        v25 = v7;
        v26 = i;
        v27 = v10;
        v28 = a2;
        v29 = *(v35 + 16);
        sub_1C1F52B24();
        a2 = v28;
        v10 = v27;
        i = v26;
        v7 = v25;
        a3 = v24;
        v11 = v23;
        v12 = &unk_1EDC31000;
        sub_1C1F52B34();
        sub_1C1F52B04();
      }

      else
      {
        *a5 = 1;
      }

      ++v9;
      if (v34 == i)
      {
        return v35;
      }
    }

    if (v9 >= *(v11 + 16))
    {
      goto LABEL_27;
    }

    v13 = *(v7 + 8 * v9 + 32);

    v14 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1E8E588(unint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(_BYTE *, uint64_t), uint64_t a5, _BYTE *a6)
{
  v30 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1F52994())
  {
    v10 = 0;
    v26 = a6;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6911DB0](v10, a1);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_46;
      }

LABEL_9:
      v29 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v28 = 5;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v29, &v28) & 1) == 0 || ((*(*v11 + 256))() & 1) == 0)
      {
        v17 = 1;
        goto LABEL_42;
      }

      v13 = *a2;
      v14 = *a2 - 1;
      if (__OFSUB__(*a2, 1))
      {
        goto LABEL_49;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        a6 = 0;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v15 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          a6 = MEMORY[0x1C6911DB0]();
          v16 = *a2 + 1;
          if (__OFADD__(*a2, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          a6 = *(v15 + 8 * v14 + 32);

          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_50;
          }
        }
      }

      v18 = *a3;
      if (*a3 >> 62)
      {
        if (v18 < 0)
        {
          v22 = *a3;
        }

        if (v16 >= sub_1C1F52994())
        {
          goto LABEL_40;
        }
      }

      else if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v19 = *a2 + 1;
      if (__OFADD__(*a2, 1))
      {
        goto LABEL_52;
      }

      v20 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C6911DB0](v19);
        if (!a6)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v21 = *(v20 + 8 * v19 + 32);

        if (!a6)
        {
LABEL_40:

          v17 = 0;
          goto LABEL_41;
        }
      }

      if (!v21)
      {
        goto LABEL_40;
      }

      v17 = a4(a6, v21);

LABEL_41:
      a6 = v26;
LABEL_42:
      if (__OFADD__(*a2, 1))
      {
        goto LABEL_48;
      }

      ++*a2;
      if (v17)
      {
        sub_1C1F52AF4();
        v23 = *(v30 + 16);
        sub_1C1F52B24();
        sub_1C1F52B34();
        sub_1C1F52B04();
      }

      else
      {
        *a6 = 1;
      }

      ++v10;
      if (v12 == i)
      {
        return v30;
      }
    }

    if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v11 = *(a1 + 8 * v10 + 32);

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

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
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1E8E8D8()
{
  v3 = (*v0 + 392);
  v74 = *v3;
  v4 = (*v3)();
  if (v4 >> 62)
  {
    goto LABEL_149;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1F52994())
  {

    if (i < 1)
    {
      break;
    }

    v73 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 4;
    while (1)
    {
      v9 = *(v7 + 2);
      v10 = v9 ? *&v7[8 * v9 + 24] : 0;
      v11 = v8 - 4;
      v12 = (v74)(isUniquelyReferenced_nonNull_native);
      v13 = v12;
      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v1 = MEMORY[0x1C6911DB0](v8 - 4, v12);
LABEL_11:

      v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      HIBYTE(v75) = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      BYTE6(v75) = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v75 + 7, &v75 + 6))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C1EAEE14(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1C1EAEE14((v15 > 1), v16 + 1, 1, v7);
        }

        v10 = 0;
        *(v7 + 2) = v16 + 1;
        *&v7[8 * v16 + 32] = 0;
      }

      else
      {
        BYTE5(v75) = *(v1 + v14);
        BYTE4(v75) = 16;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v75 + 5, &v75 + 4) & 1) != 0 && *(v7 + 2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v17 = *(v7 + 2);
            if (!v17)
            {
              goto LABEL_66;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = sub_1C1EAFA90(v7);
            v7 = isUniquelyReferenced_nonNull_native;
            v17 = *(isUniquelyReferenced_nonNull_native + 16);
            if (!v17)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }
          }

          *(v7 + 2) = v17 - 1;
        }
      }

      v18 = (*(*v1 + 280))();
      if (v18)
      {
        v13 = v18;
        v19 = (*v18 + 272);
        v20 = *v19;
        v21 = (*v19)(&v75 + 1);
        if (BYTE1(v75) == 1)
        {
          v2 = sub_1C1E8E8D8(v21);

          if (__OFADD__(v2, 1))
          {
            goto LABEL_76;
          }

          if (v2 + 1 > v10)
          {
            v10 = v2 + 1;
          }
        }

        else
        {
          v22 = (v20)(&v75, v21);
          if (v75 >= 3u)
          {
            v23 = sub_1C1E8E8D8(v22);

            if (v23 > v10)
            {
              v10 = v23;
            }
          }

          else
          {
          }
        }
      }

      v24 = (*(*v1 + 304))();
      if (v24)
      {
        v13 = v24;
        v25 = (*v24 + 272);
        v26 = *v25;
        v27 = (*v25)(&v75 + 3);
        if (BYTE3(v75) == 1)
        {
          v2 = sub_1C1E8E8D8(v27);

          if (__OFADD__(v2, 1))
          {
            goto LABEL_77;
          }

          if (v2 + 1 > v10)
          {
            v10 = v2 + 1;
          }

          v2 = *(v7 + 2);
          if (!v2)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        v28 = (v26)((&v75 + 2), v27);
        if (BYTE2(v75) >= 3u)
        {
          v37 = sub_1C1E8E8D8(v28);

          if (v37 > v10)
          {
            v10 = v37;
          }

          v2 = *(v7 + 2);
          if (!v2)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }
      }

      v2 = *(v7 + 2);
      if (!v2)
      {
        goto LABEL_49;
      }

LABEL_42:
      v13 = v2 - 1;
      if (v10 <= *&v7[8 * v2 + 24])
      {
        v29 = *&v7[8 * v2 + 24];
      }

      else
      {
        v29 = v10;
      }

      v24 = swift_isUniquelyReferenced_nonNull_native();
      if ((v24 & 1) == 0)
      {
        v24 = sub_1C1EAFA90(v7);
        v7 = v24;
      }

      if (v2 > *(v7 + 2))
      {
        goto LABEL_75;
      }

      *&v7[8 * v13 + 32] = v29;
LABEL_49:
      v30 = (v74)(v24);
      v13 = v30;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1C6911DB0](v8 - 4, v30);
      }

      else
      {
        if (v11 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v31 = *(v30 + 8 * v8);
      }

      (*(*v31 + 336))(v10);

      v33 = v73;
      if (v10 > v73)
      {
        v33 = v10;
      }

      v73 = v33;
      v34 = (v74)(v32);
      if (v34 >> 62)
      {
        v1 = v34;
        v35 = sub_1C1F52994();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v8 - 3;
      ++v8;
      if (v36 >= v35)
      {
        goto LABEL_68;
      }
    }

    if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v12 + 8 * v8);

      goto LABEL_11;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    while (2)
    {
      v40 = MEMORY[0x1C6911DB0](v10, v13);
LABEL_79:

      v42 = (*(*v40 + 328))(v41);

      (*(*v2 + 336))(v42);

      while (2)
      {
        while (2)
        {

          v10 = v1;
          if (v1 <= 0)
          {
            goto LABEL_139;
          }

LABEL_81:
          v43 = *(v7 + 2);
          if (v43)
          {
            v2 = *&v7[8 * v43 + 24];
          }

          else
          {
            v2 = 0;
          }

          v1 = v10 - 1;
          v44 = (v74)(result);
          if ((v44 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x1C6911DB0](v10 - 1, v44);
          }

          else
          {
            if (v1 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }

            v45 = *(v44 + 8 * v10 + 24);
          }

          v46 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          v79 = *(v45 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          v78 = 16;
          if (static CalculateExpression.TokenType.== infix(_:_:)(&v79, &v78))
          {
            v2 = (*(*v45 + 328))();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1C1EAEE14(0, *(v7 + 2) + 1, 1, v7);
            }

            v48 = *(v7 + 2);
            v47 = *(v7 + 3);
            v49 = v48 + 1;
            if (v48 >= v47 >> 1)
            {
              v7 = sub_1C1EAEE14((v47 > 1), v48 + 1, 1, v7);
            }

            *(v7 + 2) = v49;
            *&v7[8 * v48 + 32] = v2;
LABEL_99:
            if (v2 <= *&v7[8 * v49 + 24])
            {
              v52 = *&v7[8 * v49 + 24];
            }

            else
            {
              v52 = v2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1C1EAFA90(v7);
            }

            if (v49 > *(v7 + 2))
            {
              goto LABEL_145;
            }

            *&v7[8 * v49 + 24] = v52;
          }

          else
          {
            v77 = *(v45 + v46);
            v76 = 15;
            v50 = static CalculateExpression.TokenType.== infix(_:_:)(&v77, &v76);
            v49 = *(v7 + 2);
            if (v50)
            {
              if (!v49)
              {
                goto LABEL_106;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v51 = *(v7 + 2);
                if (!v51)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v7 = sub_1C1EAFA90(v7);
                v51 = *(v7 + 2);
                if (!v51)
                {
LABEL_138:
                  __break(1u);
LABEL_139:

                  return v73;
                }
              }

              v49 = v51 - 1;
              *(v7 + 2) = v51 - 1;
            }

            if (v49)
            {
              goto LABEL_99;
            }
          }

LABEL_106:
          v53 = v74();
          if ((v53 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1C6911DB0](v10 - 1, v53);
          }

          else
          {
            if (v1 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_142;
            }

            v54 = *(v53 + 8 * v10 + 24);
          }

          v56 = (v74)(v55);
          if ((v56 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1C6911DB0](v10 - 1, v56);
          }

          else
          {
            if (v1 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }

            v57 = *(v56 + 8 * v10 + 24);
          }

          v59 = (*(*v57 + 328))(v58);

          if (v2 <= v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = v2;
          }

          (*(*v54 + 336))(v60);

          v62 = (v74)(v61);
          if ((v62 & 0xC000000000000001) != 0)
          {
            v2 = MEMORY[0x1C6911DB0](v10 - 1, v62);
          }

          else
          {
            if (v1 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_144;
            }

            v2 = *(v62 + 8 * v10 + 24);
          }

          v64 = (*(*v2 + 328))(v63);

          v66 = v73;
          if (v64 > v73)
          {
            v66 = v64;
          }

          v73 = v66;
          if (((*(*v45 + 368))(v65) & 1) == 0)
          {
            continue;
          }

          break;
        }

        v67 = v74();
        if (v67 >> 62)
        {
          v2 = v67;
          v68 = sub_1C1F52994();
        }

        else
        {
          v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v68, 2))
        {
          goto LABEL_146;
        }

        if (v1 >= v68 - 2)
        {
          continue;
        }

        break;
      }

      v70 = (v74)(v69);
      if ((v70 & 0xC000000000000001) == 0)
      {
        if (v1 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v70 + 8 * v10 + 24);

          goto LABEL_128;
        }

LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v2 = MEMORY[0x1C6911DB0](v10 - 1, v70);
LABEL_128:

      v72 = (v74)(v71);
      v13 = v72;
      if ((v72 & 0xC000000000000001) != 0)
      {
        continue;
      }

      break;
    }

    if (v10 < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v72 + 8 * v10 + 32);

      goto LABEL_79;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    ;
  }

LABEL_67:
  v73 = 0;
LABEL_68:
  v38 = (v74)(isUniquelyReferenced_nonNull_native);
  if (v38 >> 62)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    if (((v10 - 1) & 0x8000000000000000) == 0)
    {
      v7 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    return v73;
  }

  return result;
}

uint64_t sub_1C1E8F494()
{
  v1 = v0;
  v2 = (*(*v0 + 272))(&v16 + 2);
  if (BYTE2(v16) || (v8 = *(*v0 + 176), (v8)(v2)) && (v9 = CalculateExpression.format.getter(), , v9 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C1F563C0;
    BYTE1(v16) = 18;
    v4 = type metadata accessor for CalculateExpression.RichToken();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0xE000000000000000, &v16 + 1, 0);
    *(v3 + 32) = v7;
    (*(*v1 + 400))(v3);
  }

  else
  {
    type metadata accessor for CalculateExpression.RichToken();
    v10 = (*(*v0 + 384))(&v16);
    v8(v10);
    v11 = sub_1C1E8FBEC(48, 0xE100000000000000, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1F563C0;
    *(v12 + 32) = v11;
    v13 = *(*v1 + 400);

    v13(v12);
  }

  (*(*v1 + 352))(0);
  (*(*v1 + 232))(1);
  v14 = (*(*v1 + 256))(0);
  result = (*(*v1 + 176))(v14);
  if (result)
  {
    sub_1C1E904FC(0);
  }

  return result;
}

uint64_t sub_1C1E8F7DC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 26);
  return result;
}

uint64_t type metadata accessor for CalculateExpression.RichToken()
{
  result = qword_1EDC2F6C0;
  if (!qword_1EDC2F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1E8F86C()
{
  v0 = sub_1C1F52034();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C1E8F990();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C1E8F990()
{
  if (!qword_1EDC2E8E0)
  {
    sub_1C1F520E4();
    v0 = sub_1C1F528D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC2E8E0);
    }
  }
}

uint64_t sub_1C1E8F9E8@<X0>(char *a1@<X8>)
{
  result = (*(*v1 + 176))();
  if (result)
  {
    CalculateExpression.effectiveBase.getter(&v5);

    v4 = v5;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t CalculateExpression.effectiveBase.getter@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    Strong = v1;
  }

  swift_getKeyPath();
  sub_1C1F52104();

  if (*(Strong + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) == 1)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
    swift_beginAccess();
    v5 = *(Strong + v4);
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1E8FBEC(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v22[0] = 1;
  v5 = (*(v3 + 360))(a1, a2, v22, 0);
  v22[0] = v4;
  v23 = 1;
  sub_1C1E903DC();
  if ((sub_1C1F52414() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1F563C0;
    v23 = v4;
    *v22 = CalculateExpression.Base.rawValue.getter();
    v7 = sub_1C1F52C34();
    v9 = v8;
    v22[0] = 1;
    v10 = type metadata accessor for CalculateExpression.RichToken();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(v7, v9, v22, 0);
    *(v6 + 32) = v13;
    type metadata accessor for CalculateExpression.RichExpression();
    swift_allocObject();

    v14 = sub_1C1EB0254(v6);

    v15 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right;
    swift_beginAccess();
    v16 = *(v5 + v15);
    *(v5 + v15) = v14;

    v17 = *(v5 + v15);
    if (v17)
    {
      v23 = 2;
      v18 = *(*v17 + 280);

      v18(&v23);

      v19 = *(v5 + v15);
      if (v19)
      {
        v20 = *(*v19 + 304);

        v20(0);
      }
    }
  }

  return v5;
}

uint64_t CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(a1, a2, a3, a4);
  return v11;
}

uint64_t CalculateExpression.RichToken.init(text:type:isImplicit:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, char a4)
{
  v5 = v4;
  v9 = *a3;
  sub_1C1F52024();
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript) = 0;
  v10 = (v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText);
  *v10 = 0;
  v10[1] = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumIntegerDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_minimumFractionDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumFractionDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_flexibleFractionDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesGroupingSeparator) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesSignificantDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits) = 0;
  v11 = (v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_locale;
  v13 = sub_1C1F520E4();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = (v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_localizedSymbol);
  *v14 = 0;
  v14[1] = 0;
  *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization) = 0;
  v15 = sub_1C1E90090(&unk_1F418CD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21148, &unk_1C1F564B0);
  swift_arrayDestroy();
  if (*(v15 + 16) && (v16 = sub_1C1E901F0(v9), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 16 * v16);
    a1 = *v18;
    v19 = v18[1];
  }

  else
  {

    if (a2)
    {
      v19 = a2;
    }

    else
    {
      a1 = 0;
      v19 = 0xE000000000000000;
    }
  }

  v20 = (v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text);
  *v20 = a1;
  v20[1] = v19;
  *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) = v9;
  *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_isImplicit) = a4 & 1;
  return v5;
}

unint64_t sub_1C1E90090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21158, &qword_1C1F57290);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1C1E901F0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1E9019C()
{
  result = qword_1EDC2C690;
  if (!qword_1EDC2C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2C690);
  }

  return result;
}

unint64_t sub_1C1E901F0(unsigned __int8 a1)
{
  v2 = *(v1 + 40);
  sub_1C1E90258();
  v3 = sub_1C1F523B4();
  return sub_1C1E902F8(a1, v3);
}

unint64_t sub_1C1E90258()
{
  result = qword_1EDC2C698[0];
  if (!qword_1EDC2C698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC2C698);
  }

  return result;
}

uint64_t sub_1C1E902B4()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

unint64_t sub_1C1E902F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C1E9019C();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_1C1F52414())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C1E903DC()
{
  result = qword_1EDC2CC18[0];
  if (!qword_1EDC2CC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC2CC18);
  }

  return result;
}

uint64_t sub_1C1E90454(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;

  *(v1 + 28) = 1;
  return result;
}

void sub_1C1E904AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1C1E90524(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

unint64_t sub_1C1E90660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*v3 + 392);
  v8 = *v7;
  v9 = v7;
  v10 = (*v7)();
  if (v10 >> 62)
  {
LABEL_129:
    v11 = sub_1C1F52994();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < 1)
  {
    return result;
  }

  v13 = 0;
  v85 = a3;
  v86 = v9;
  v87 = v8;
  while (1)
  {
    v14 = (v8)(result);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6911DB0](v13, v14);
    }

    else
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v9 = *(v14 + 8 * v13 + 32);
    }

    if ((*(*v9 + 408))(v15))
    {
      if (a2)
      {

        v16 = sub_1C1F52014();

        if (v16)
        {
LABEL_14:

          v17 = sub_1C1F52014();

          if (v17)
          {
            goto LABEL_21;
          }

          goto LABEL_15;
        }
      }

      (*(*v9 + 264))(0);
    }

    if (a2)
    {
      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v89[0]) = 1;
    v18 = static CalculateExpression.TokenType.== infix(_:_:)(v90, v89);
    if (v18)
    {
      v8 = *(*v9 + 232);
      v8();
      v19 = sub_1C1F525A4();

      if (v19 & 1) != 0 || ((v8)(v18), v20 = sub_1C1F525A4(), v18 = , (v20) || ((v8)(v18), v21 = sub_1C1F525A4(), v18 = , (v21))
      {
        (v8)(v18);
        v22 = v8();
        sub_1C1EAAEDC(101, 0xE100000000000000, v22, v23);
        v25 = v24;

        if (v25)
        {
          goto LABEL_132;
        }

        v26 = sub_1C1F525F4();
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = MEMORY[0x1C6911770](v26, v28, v30, v32);
        v35 = v34;

        v18 = (*(*v9 + 240))(v33, v35);
        a3 = v85;
      }
    }

LABEL_21:
    v36 = (*(*v9 + 280))(v18);
    if (!v36)
    {
      goto LABEL_63;
    }

    v37 = v36;
    v38 = sub_1C1EA69D8(v36, a1);
    if (!v38)
    {
      break;
    }

LABEL_51:
    if ((*(*v37 + 576))() & 1) != 0 || ((*(*v37 + 568))())
    {
      if (!v38)
      {
        LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v89[0]) = 7;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v90, v89))
        {
          v51 = (*v4 + 408);
          v52 = *v51;
          v53 = (*v51)(v90);
          sub_1C1E98338(v13);

          v54 = v53(v90, 0);
          v55 = (*(*v9 + 304))(v54);
          if (v55)
          {
            v56 = (*(*v55 + 392))();
            v57 = v52(v90);
            sub_1C1E9B764(v13, v13, v56);
            a3 = v85;

            v57(v90, 0);
          }

          goto LABEL_112;
        }

        (*(*v9 + 288))(0);
        goto LABEL_62;
      }
    }

    else if (!v38)
    {
      LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v89[0]) = 7;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v90, v89))
      {
        v58 = (*(*v37 + 392))();
        v59 = (*(*v4 + 408))(v90);
        sub_1C1E9B764(v13, v13, v58);

        v59(v90, 0);
        a3 = v85;
        (*(*v9 + 288))(0);
LABEL_112:

        goto LABEL_118;
      }
    }

    sub_1C1E90660(a1, a2, a3);
LABEL_62:

LABEL_63:
    v60 = (*(*v9 + 304))(v36);
    if (!v60)
    {
      goto LABEL_117;
    }

    v61 = v60;
    v62 = sub_1C1EA69D8(v60, a1);
    if (!v62)
    {
      if (a3 == 1)
      {
        if (((*(*v61 + 296))() & 1) == 0)
        {
          goto LABEL_108;
        }

LABEL_70:
        v63 = (*v61 + 392);
        v64 = *v63;
        v8 = v63;
        v65 = (*v63)();
        if (v65 >> 62)
        {
          v66 = sub_1C1F52994();
        }

        else
        {
          v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v66 != 1)
        {
          goto LABEL_84;
        }

        result = (v64)(v67);
        if (result >> 62)
        {
          v72 = result;
          v73 = sub_1C1F52994();
          result = v72;
          if (!v73)
          {
            goto LABEL_83;
          }

LABEL_75:
          if ((result & 0xC000000000000001) != 0)
          {
            v68 = MEMORY[0x1C6911DB0](0);
          }

          else
          {
            if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_131;
            }

            v68 = *(result + 32);
          }

          LOBYTE(v90[0]) = *(v68 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          LOBYTE(v89[0]) = 1;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) & 1) == 0)
          {

            goto LABEL_84;
          }

          v69 = (*(*v68 + 232))();
          v71 = v70;
        }

        else
        {
          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

LABEL_83:

LABEL_84:
          v69 = 0;
          v71 = 0xE000000000000000;
        }

        if (((*(*v9 + 384))(v67) & 1) == 0 || (v69 != 50 || v71 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0 && (v69 != 12337 || v71 != 0xE200000000000000) && (sub_1C1F52C64() & 1) == 0)
        {
          v8 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          LOBYTE(v89[0]) = 7;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) & 1) == 0)
          {
            goto LABEL_104;
          }

          if (v69 != 50 || v71 != 0xE100000000000000)
          {
            v74 = sub_1C1F52C64();
            LOBYTE(v75) = 0;
            v77 = v69 == 51 && v71 == 0xE100000000000000;
            if ((v74 & 1) != 0 || v77)
            {
              goto LABEL_107;
            }

            if ((sub_1C1F52C64() & 1) == 0)
            {
LABEL_104:
              v90[0] = (*(*v9 + 232))();
              v90[1] = v78;
              v89[0] = 1885957222;
              v89[1] = 0xE400000000000000;
              sub_1C1E94E48();
              v79 = sub_1C1F52924();

              if (v79)
              {
                LOBYTE(v90[0]) = *(v8 + v9);
                LOBYTE(v89[0]) = 1;
                v75 = static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) ^ 1;
LABEL_107:
                (*(*v61 + 304))(v75 & 1);

                a3 = v85;
                goto LABEL_108;
              }
            }
          }
        }

        LOBYTE(v75) = 0;
        goto LABEL_107;
      }

      if (a3 == 2 && ((*(*v61 + 296))() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

LABEL_108:
    if ((*(*v61 + 576))())
    {
      if (!v62)
      {
        goto LABEL_110;
      }
    }

    else if (!(v62 | (((*(*v61 + 568))() & 1) == 0)))
    {
LABEL_110:
      LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v89[0]) = 7;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v90, v89))
      {
        v80 = (*(*v4 + 408))(v90);
        sub_1C1E98338(v13);

        v80(v90, 0);
        goto LABEL_112;
      }

      (*(*v9 + 312))(0);
      goto LABEL_116;
    }

    sub_1C1E90660(a1, a2, a3);
LABEL_116:

    v9 = v61;
LABEL_117:

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_128;
    }

LABEL_118:
    v9 = v86;
    v8 = v87;
    v83 = (v87)(v81);
    if (v83 >> 62)
    {
      v84 = sub_1C1F52994();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 >= v84)
    {
      return result;
    }
  }

  if (a3 == 1)
  {
    if (((*(*v37 + 296))() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (a3 != 2 || ((*(*v37 + 296))() & 1) != 0)
  {
    goto LABEL_51;
  }

  v8 = (v37 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  v39 = (*v37 + 392);
  v40 = *v39;
  v41 = (*v39)();
  if (v41 >> 62)
  {
    v42 = sub_1C1F52994();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 != 1)
  {
    goto LABEL_43;
  }

  result = (v40)(v43);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_42:

LABEL_43:
    v45 = 0;
    v47 = 0xE000000000000000;
LABEL_44:
    if ((*(*v9 + 368))(v43))
    {
      if (v45 == 51 && v47 == 0xE100000000000000)
      {
        LOBYTE(v50) = 0;
      }

      else
      {
        v50 = sub_1C1F52C64() ^ 1;
      }
    }

    else
    {
      LOBYTE(v50) = 1;
    }

    (*(*v37 + 304))(v50 & 1);

    a3 = v85;
    goto LABEL_51;
  }

  v48 = result;
  v49 = sub_1C1F52994();
  result = v48;
  if (!v49)
  {
    goto LABEL_42;
  }

LABEL_33:
  if ((result & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1C6911DB0](0);
    goto LABEL_36;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(result + 32);

LABEL_36:

    LOBYTE(v90[0]) = *(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v89[0]) = 1;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) & 1) == 0)
    {

      goto LABEL_43;
    }

    v45 = (*(*v44 + 232))();
    v47 = v46;

    goto LABEL_44;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C1E91650()
{
  if ((*(*v0 + 256))())
  {
    v4 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v3 = 1;
    v1 = static CalculateExpression.TokenType.== infix(_:_:)(&v4, &v3);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1C1E916CC()
{
  v1 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_isImplicit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E91728()
{
  v1 = (v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1E91798(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1C1E917DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
  swift_beginAccess();
  v7 = *(v1 + v3);
  type metadata accessor for CalculateExpression.RichExpression();
  sub_1C1E77790(&qword_1EDC2E8C8, type metadata accessor for CalculateExpression.RichExpression);
  if (sub_1C1F52414())
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1E9196C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

uint64_t sub_1C1E919D8()
{
  if (v0[24] != 1)
  {
    goto LABEL_23;
  }

  v2 = v0;
  if ((*(*v0 + 176))())
  {
    v3 = CalculateExpression.format.getter();

    if (v3 == 2)
    {
      goto LABEL_11;
    }
  }

  v4 = (*v0 + 392);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = (v5)(v8);
  if (v7 == 1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6911DB0](0);
      goto LABEL_10;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);

LABEL_10:

      v1 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v24[0] = v1;
      v23 = 4;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v24, &v23))
      {
LABEL_11:
        v11 = 1;
        return v11 & 1;
      }

      v20 = v5();
      v2 = v20;
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C6911DB0](0, v20);
        goto LABEL_28;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v20 + 32);

LABEL_28:

        v22 = *(v21 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        goto LABEL_29;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_34:
    v15 = MEMORY[0x1C6911DB0](0, v0);
    goto LABEL_18;
  }

  if (v9 >> 62)
  {
    v12 = sub_1C1F52994();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 != 2)
  {
    goto LABEL_23;
  }

  v14 = (v5)(v13);
  v0 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = *(v14 + 32);

LABEL_18:

  v1 = &unk_1EDC31000;
  v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v26 = v16;
  v25 = 4;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v25) & 1) == 0)
  {
LABEL_23:
    v11 = 0;
    return v11 & 1;
  }

  result = v5();
  v2 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_38:
    v18 = MEMORY[0x1C6911DB0](1, v2);
    goto LABEL_22;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v18 = *(result + 40);

LABEL_22:

    v19 = *(v18 + v1[99]);

    v24[1] = v19;
LABEL_29:
    v11 = CalculateExpression.TokenType.isOperand.getter();
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E91D38(void *a1, uint64_t *a2)
{
  v4 = *v2;
  if (*a1 != -1)
  {
    v7 = *v2;
    v8 = a2;
    swift_once();
    v4 = v7;
    a2 = v8;
  }

  v5 = *a2;

  return sub_1C1E91F6C(v4, v5);
}

uint64_t sub_1C1E91D9C()
{
  result = sub_1C1E91DC4(&unk_1F418DEE8);
  qword_1EDC2F698 = result;
  return result;
}

uint64_t sub_1C1E91DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C1E90258();
  result = MEMORY[0x1C6911AC0](v2, &type metadata for CalculateExpression.TokenType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1C1E91E38(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C1E91E38(unsigned __int8 *a1, unsigned __int8 a2)
{
  v16 = a2;
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1C1E90258();
  v6 = sub_1C1F523B4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1C1E9019C();
    while (1)
    {
      v15 = *(*(v4 + 48) + v8);
      if (sub_1C1F52414())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v12 = (*(v4 + 48) + v8);
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1C1E92058(v16, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    v12 = &v16;
    result = 1;
  }

  *a1 = *v12;
  return result;
}

uint64_t sub_1C1E91F6C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = *(a2 + 40), sub_1C1E90258(), v4 = sub_1C1F523B4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    sub_1C1E9019C();
    do
    {
      v10 = *(*(a2 + 48) + v6);
      v8 = sub_1C1F52414();
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C1E92058(uint64_t result, unint64_t a2, char a3)
{
  v16 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1EAD730(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1C1EAE110();
      goto LABEL_12;
    }

    sub_1C1EAE5D8(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C1E90258();
  result = sub_1C1F523B4();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1C1E9019C();
    do
    {
      v15 = *(*(v7 + 48) + a2);
      result = sub_1C1F52414();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v16;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

Calculate::CalculateExpression::Base_optional __swiftcall CalculateExpression.Base.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 16)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 10)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 8)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t _s9Calculate19CalculateExpressionC13GraphableTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t CalculateExpression.base.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_1C1E923F0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C1E924DC(void *a1, uint64_t *a2)
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
}

uint64_t sub_1C1E9253C()
{
  type metadata accessor for CalculateExpression.RollOutOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F908 = result;
  return result;
}

uint64_t sub_1C1E925B8()
{
  type metadata accessor for CalculateExpression.RollInOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F968 = result;
  return result;
}

uint64_t sub_1C1E92610()
{
  type metadata accessor for CalculateExpression.DropOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB38 = result;
  return result;
}

uint64_t sub_1C1E926B0()
{
  type metadata accessor for CalculateExpression.SwapOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB08 = result;
  return result;
}

uint64_t CalculateExpression.rich.getter()
{
  sub_1C1E7F10C();
}

uint64_t CalculateExpression.prefersRTL.getter()
{
  if ((CalculateExpression.allowsLocalization.getter() & 1) != 0 && (swift_getKeyPath(), sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression), sub_1C1F52104(), , *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != 1))
  {
    v1 = CalculateExpression.isArabic.getter();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t CalculateExpression.isArabic.getter()
{
  v0 = sub_1C1F520C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1F520E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213B8, &unk_1C1F57DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  CalculateExpression.effectiveLocale.getter(v9);
  sub_1C1F520D4();
  (*(v6 + 8))(v9, v5);
  sub_1C1F520B4();
  (*(v1 + 8))(v4, v0);
  v14 = sub_1C1F52084();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C1E83580(v13, &qword_1EBF213B8, &unk_1C1F57DB0);
    v16 = 0;
  }

  else
  {
    v17 = sub_1C1F52064();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    if (v17 == 29281 && v19 == 0xE200000000000000)
    {

      v16 = 1;
    }

    else
    {
      v16 = sub_1C1F52C64();
    }
  }

  return v16 & 1;
}

uint64_t CalculateExpression.effectiveLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  v36 = v2;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  v34[1] = v14;
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v16 = &unk_1EDC30000;
  if (!Strong)
  {
    goto LABEL_3;
  }

  v17 = Strong;
  swift_getKeyPath();
  v35 = v17;
  sub_1C1F52104();
  v16 = &unk_1EDC30000;

  v18 = *(v17 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  v19 = v18;

  if (!v18)
  {
LABEL_3:
    swift_getKeyPath();
    v35 = v2;
    sub_1C1F52104();

    v20 = *(v2 + v16[383]);
    v21 = v20;
    if (!v20)
    {
      v27 = sub_1C1F520E4();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      goto LABEL_11;
    }

    v19 = v21;
  }

  v22 = [v19 locale];

  if (v22)
  {
    sub_1C1F520A4();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_1C1F520E4();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v11, v23, 1, v24);
  sub_1C1E93318(v11, v13);
  if ((*(v25 + 48))(v13, 1, v24) != 1)
  {
    return (*(v25 + 32))(a1, v13, v24);
  }

LABEL_11:
  swift_getKeyPath();
  v35 = v2;
  sub_1C1F52104();

  v28 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);
  v29 = *(v28 + 16);
  v30 = sub_1C1F520E4();
  v31 = *(v30 - 8);
  v32 = v31;
  if (v29)
  {
    (*(v31 + 16))(v8, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v30);
    (*(v32 + 56))(v8, 0, 1, v30);
    (*(v32 + 32))(a1, v8, v30);
  }

  else
  {
    (*(v31 + 56))(v8, 1, 1, v30);
    v33 = [objc_opt_self() systemLocale];
    sub_1C1F520A4();

    if ((*(v32 + 48))(v8, 1, v30) != 1)
    {
      sub_1C1E83580(v8, &qword_1EBF21168, &unk_1C1F564C0);
    }
  }

  result = (*(v32 + 48))(v13, 1, v30);
  if (result != 1)
  {
    return sub_1C1E83580(v13, &qword_1EBF21168, &unk_1C1F564C0);
  }

  return result;
}

uint64_t sub_1C1E93318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E93850()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(65, 0xE100000000000000);
  qword_1EDC2FA08 = result;
  return result;
}

uint64_t sub_1C1E938D4()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(66, 0xE100000000000000);
  qword_1EDC2F9F8 = result;
  return result;
}

uint64_t sub_1C1E93910()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(67, 0xE100000000000000);
  qword_1EDC2F9E8 = result;
  return result;
}

uint64_t sub_1C1E93970()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(68, 0xE100000000000000);
  qword_1EDC2F9D8 = result;
  return result;
}

uint64_t sub_1C1E939D0()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(69, 0xE100000000000000);
  qword_1EDC2F9C8 = result;
  return result;
}

uint64_t sub_1C1E93A30()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(70, 0xE100000000000000);
  qword_1EDC2F9B8 = result;
  return result;
}

uint64_t sub_1C1E93A90()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(17990, 0xE200000000000000);
  qword_1EDC2F928 = result;
  return result;
}

uint64_t sub_1C1E93AF0()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(12336, 0xE200000000000000);
  qword_1EDC2F938 = result;
  return result;
}

uint64_t sub_1C1E93B74()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(4476481, 0xE300000000000000);
  qword_1EDC2FBA8 = result;
  return result;
}

uint64_t sub_1C1E93BB4()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(21071, 0xE200000000000000);
  qword_1EDC2FBD8 = result;
  return result;
}

uint64_t sub_1C1E93C38()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(5394254, 0xE300000000000000);
  qword_1EDC2FB78 = result;
  return result;
}

uint64_t sub_1C1E93C78()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(5394264, 0xE300000000000000);
  qword_1EDC2FB58 = result;
  return result;
}

uint64_t sub_1C1E93CDC()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(6582125, 0xE300000000000000);
  qword_1EDC2FB98 = result;
  return result;
}

uint64_t sub_1C1E93D64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for CalculateExpression.ShiftOperation();
  v10 = a2;
  result = sub_1C1E93E1C(&v10, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1C1E93E1C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return sub_1C1E7C960();
}

uint64_t sub_1C1E94020()
{
  type metadata accessor for CalculateExpression.FlipOperation();
  result = sub_1C1E94080(56, 0xE100000000000000);
  qword_1EDC2F8D8 = result;
  return result;
}

uint64_t sub_1C1E940D0()
{
  type metadata accessor for CalculateExpression.FlipOperation();
  result = sub_1C1E94080(13873, 0xE200000000000000);
  qword_1EDC2F898 = result;
  return result;
}

uint64_t sub_1C1E94154()
{
  type metadata accessor for CalculateExpression.NotOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB68 = result;
  return result;
}

uint64_t sub_1C1E941AC()
{
  type metadata accessor for CalculateExpression.NegOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB88 = result;
  return result;
}

uint64_t sub_1C1E9424C()
{
  type metadata accessor for CalculateExpression.EnterOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FAE8 = result;
  return result;
}

uint64_t sub_1C1E942C8()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(121, 0xE100000000000000, v0 & 1);
  qword_1EDC2FD68 = result;
  return result;
}

uint64_t CalculateExpression.allowsLocalization.getter()
{
  v1 = sub_1C1F52084();
  v2 = *(v1 - 8);
  v48 = v1;
  v49 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213B0, &qword_1C1F57DA8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213B8, &unk_1C1F57DB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = sub_1C1F520C4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C1F520E4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  CalculateExpression.effectiveLocale.getter(v27);
  sub_1C1F520D4();
  v28 = v23;
  v29 = v17;
  v30 = v47;
  (*(v24 + 8))(v27, v28);
  v31 = v48;
  sub_1C1F520B4();
  (*(v19 + 8))(v22, v18);
  sub_1C1F52074();
  v32 = v49;
  (*(v49 + 56))(v15, 0, 1, v31);
  v33 = *(v6 + 56);
  v34 = v32;
  sub_1C1EB1D18(v29, v30, &qword_1EBF213B8, &unk_1C1F57DB0);
  sub_1C1EB1D18(v15, v30 + v33, &qword_1EBF213B8, &unk_1C1F57DB0);
  v35 = *(v32 + 48);
  if (v35(v30, 1, v31) != 1)
  {
    v43 = v29;
    v36 = v46;
    sub_1C1EB1D18(v30, v46, &qword_1EBF213B8, &unk_1C1F57DB0);
    if (v35(v30 + v33, 1, v31) != 1)
    {
      v38 = v30 + v33;
      v39 = v44;
      (*(v32 + 32))(v44, v38, v31);
      sub_1C1E77790(&qword_1EDC2E8E8, MEMORY[0x1E6969610]);
      v40 = sub_1C1F52414();
      v41 = *(v34 + 8);
      v41(v39, v31);
      sub_1C1E83580(v15, &qword_1EBF213B8, &unk_1C1F57DB0);
      sub_1C1E83580(v43, &qword_1EBF213B8, &unk_1C1F57DB0);
      v41(v36, v31);
      sub_1C1E83580(v30, &qword_1EBF213B8, &unk_1C1F57DB0);
      if (v40)
      {
        goto LABEL_9;
      }

      return 1;
    }

    sub_1C1E83580(v15, &qword_1EBF213B8, &unk_1C1F57DB0);
    sub_1C1E83580(v43, &qword_1EBF213B8, &unk_1C1F57DB0);
    (*(v32 + 8))(v36, v31);
LABEL_6:
    sub_1C1E83580(v30, &qword_1EBF213B0, &qword_1C1F57DA8);
    return 1;
  }

  sub_1C1E83580(v15, &qword_1EBF213B8, &unk_1C1F57DB0);
  sub_1C1E83580(v29, &qword_1EBF213B8, &unk_1C1F57DB0);
  if (v35(v30 + v33, 1, v31) != 1)
  {
    goto LABEL_6;
  }

  sub_1C1E83580(v30, &qword_1EBF213B8, &unk_1C1F57DB0);
LABEL_9:
  swift_getKeyPath();
  v42 = v45;
  v50 = v45;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  return *(v42 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath);
}

uint64_t sub_1C1E94DA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C1E94DF0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1C1E94E48()
{
  result = qword_1EDC2C330;
  if (!qword_1EDC2C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2C330);
  }

  return result;
}

uint64_t sub_1C1E94E9C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v3 = *a2;
  swift_beginAccess();
  return swift_weakLoadStrong();
}

void *sub_1C1E94FB8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1E950A0()
{
  result = sub_1C1E91DC4(&unk_1F418DFD0);
  qword_1EDC31308 = result;
  return result;
}

unsigned __int8 *sub_1C1E95104(uint64_t a1, unint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v42 = 11077;
  sub_1C1E94E48();
  if ((sub_1C1F52934() & 1) == 0)
  {
    v43 = a1;
    v44 = a2;
    v42 = 11589;
    if ((sub_1C1F52934() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = sub_1C1F52424();
  v5 = sub_1C1F52424();
  v6 = [v4 rangeOfString_];

  v7 = sub_1C1F52424();
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_79:

    goto LABEL_71;
  }

  v8 = v7;
  v9 = [v7 substringFromIndex_];

  v10 = sub_1C1F52454();
  v12 = v11;

  result = sub_1C1F524B4();
  v14 = HIBYTE(v12) & 0xF;
  v15 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_79;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_81;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      result = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1C1F52AE4();
    }

    v17 = *result;
    if (v17 == 43)
    {
      if (v15 < 1)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v14 = v15 - 1;
      if (v15 == 1)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v24 = result + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            goto LABEL_65;
          }

          v26 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_65;
          }

          ++v24;
          if (!--v14)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v17 == 45)
    {
      if (v15 < 1)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v14 = v15 - 1;
      if (v15 == 1)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v18 = result + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            goto LABEL_65;
          }

          v20 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            goto LABEL_65;
          }

          ++v18;
          if (!--v14)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      if (!v15)
      {
LABEL_65:
        v10 = 0;
        LOBYTE(v14) = 1;
LABEL_66:
        for (i = v14; ; i = v41)
        {

          v36 = (i & 1) != 0 ? 0 : v10;
          v37 = __OFADD__(v6, v36);
          v6 += v36;
          if (!v37)
          {
            break;
          }

          __break(1u);
LABEL_81:
          v10 = sub_1C1EAC9B8(v10, v12, 10);
        }

LABEL_71:
        v38 = sub_1C1EDA988(a1, a2);
        if (v39)
        {
          if (v38 == 45 && v39 == 0xE100000000000000)
          {

LABEL_76:
            v37 = __OFSUB__(v6--, 1);
            if (!v37)
            {
              return (v6 & ~(v6 >> 63));
            }

            __break(1u);
            goto LABEL_84;
          }

          v40 = sub_1C1F52C64();

          if (v40)
          {
            goto LABEL_76;
          }
        }

        return (v6 & ~(v6 >> 63));
      }

      v10 = 0;
      if (result)
      {
        do
        {
          v30 = *result - 48;
          if (v30 > 9)
          {
            goto LABEL_65;
          }

          v31 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            goto LABEL_65;
          }

          ++result;
        }

        while (--v15);
      }
    }

    LOBYTE(v14) = 0;
    goto LABEL_66;
  }

  v43 = v10;
  v44 = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v10 != 43)
  {
    if (v10 == 45)
    {
      if (!v14)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (--v14)
      {
        v10 = 0;
        v21 = &v43 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v14)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v14)
    {
      v10 = 0;
      v32 = &v43;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        v32 = (v32 + 1);
        if (!--v14)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

  if (v14)
  {
    if (--v14)
    {
      v10 = 0;
      v27 = &v43 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v14)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_87:
  __break(1u);
  return result;
}

id sub_1C1E955C4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  type metadata accessor for CalculateExpression();
  v72 = *(*v3 + 232);
  v72();
  v7 = static CalculateExpression.isHighPrecisionLiteral(_:)();

  v8 = CalculateExpression.effectiveNumberFormatter.getter();
  v9 = v8;
  if (v7 & 1) == 0 || ![v8 usesSignificantDigits] || (v10 = a2, (a3))
  {
    v10 = [v9 maximumSignificantDigits];
  }

  v69 = a3;
  formatter = a2;
  v11 = (v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText);
  v13 = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText);
  v12 = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText + 8);

  v15 = (v72)(v14);
  if (v12)
  {
    if (v13 == v15 && v12 == v16)
    {
    }

    else
    {
      v18 = sub_1C1F52C64();

      if ((v18 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v20 = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesGroupingSeparator);
    v19 = [v9 usesGroupingSeparator];
    if (v7)
    {
      if (((v20 ^ v19) & 1) == 0)
      {
        v21 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumIntegerDigits);
        v19 = [v9 maximumIntegerDigits];
        if (v21 == v19)
        {
          v22 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_minimumFractionDigits);
          v19 = [v9 minimumFractionDigits];
          if (v22 == v19)
          {
            v23 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumFractionDigits);
            v19 = [v9 maximumFractionDigits];
            if (v23 == v19)
            {
              v24 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesSignificantDigits);
              v19 = [v9 usesSignificantDigits];
              if (v24 == v19 && *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits) == v10)
              {
                v25 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_flexibleFractionDigits);
                v19 = CalculateExpression.flexibleFractionDigits.getter();
                if (v25 == (v19 & 1))
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }
    }

    else if (((v20 ^ v19) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

LABEL_24:
  v26 = (v72)(v19);
  v27 = v11[1];
  *v11 = v26;
  v11[1] = v28;

  v29 = [v9 maximumIntegerDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumIntegerDigits) = v29;
  v30 = [v9 minimumFractionDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_minimumFractionDigits) = v30;
  v31 = [v9 maximumFractionDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumFractionDigits) = v31;
  v32 = [v9 usesGroupingSeparator];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesGroupingSeparator) = v32;
  v33 = [v9 usesSignificantDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesSignificantDigits) = v33;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits) = v10;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_flexibleFractionDigits) = CalculateExpression.flexibleFractionDigits.getter() & 1;
  v34._countAndFlagsBits = (v72)();
  v77.value = v69 & 1;
  v75.value.super.super.isa = 0;
  v75.is_nil = formatter;
  v77.is_nil = 2;
  v36 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v34, 1, v75, v77, v35);

  v37 = (v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText);
  v38 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText + 8);
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText) = v36;

  if (v7)
  {
    v19 = [v9 maximumFractionDigits];
    if (v19 >= 1)
    {
      if (v37[1])
      {
        v39 = *v37;
        v40 = v37[1];

        v41 = sub_1C1F52424();

        v42 = sub_1C1F52424();
        v43 = [v41 rangeOfString_];

        result = [v9 decimalSeparator];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v45 = result;
        v46 = [v41 rangeOfString_];

        v47 = sub_1C1F51F64();
        v48 = v43;
        if (v43 == v47)
        {
          v48 = [v41 length];
        }

        if (v46 == sub_1C1F51F64())
        {
          goto LABEL_31;
        }

        v70 = v48;
        v49._countAndFlagsBits = (v72)();
        v76.value.super.super.isa = 0;
        v76.is_nil = 30;
        v78.value = 0;
        v78.is_nil = v43 != v47;
        v51 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v49, 1, v76, v78, v50);

        v52 = v37[1];
        if (v52)
        {
          v53 = v41;
          if (v51._countAndFlagsBits == *v37 && v52 == v51._object)
          {

LABEL_42:

            goto LABEL_43;
          }

          v54 = sub_1C1F52C64();

          if (v54)
          {
LABEL_31:

            goto LABEL_43;
          }
        }

        else
        {

          v53 = v41;
        }

        if (v43 == v47)
        {
          v63 = [v53 description];
          v64 = sub_1C1F52454();
          v66 = v65;

          v73 = v64;
          v74 = v66;
          MEMORY[0x1C69117F0](10911970, 0xA300000000000000);
        }

        else
        {
          v55 = [v53 substringToIndex_];
          v56 = sub_1C1F52454();
          v58 = v57;

          v73 = v56;
          v74 = v58;
          MEMORY[0x1C69117F0](10911970, 0xA300000000000000);
          v59 = [v53 substringFromIndex_];
          v60 = sub_1C1F52454();
          v62 = v61;

          MEMORY[0x1C69117F0](v60, v62);
        }

        v67 = v37[1];
        *v37 = v73;
        v37[1] = v74;
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (*(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText + 8))
  {
    v68 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText);
  }

  else
  {
    v68 = (v72)(v19);
  }

  return v68;
}

uint64_t static CalculateExpression.isHighPrecisionLiteral(_:)()
{
  sub_1C1E94E48();
  if (sub_1C1F52934())
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_1C1F52934();
  }

  return v0 & 1;
}

uint64_t sub_1C1E95D98()
{
  v6 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v5 = 10;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v6, &v5) & 1) == 0)
  {
    return 0;
  }

  if ((*(*v0 + 232))() == 10127586 && v1 == 0xA300000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_1C1F52C64();

    return v3 & 1;
  }
}

uint64_t CalculateExpression.id.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v4 = sub_1C1F52034();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t _s9Calculate0A10ExpressionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  swift_getKeyPath();
  v17[3] = a1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, a1 + v12, v4);
  swift_getKeyPath();
  v17[0] = a2;
  sub_1C1F52104();

  v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v13(v9, a2 + v14, v4);
  LOBYTE(v14) = sub_1C1F52014();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  return v14 & 1;
}

uint64_t sub_1C1E96224()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1E96274()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1E962C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21258, &unk_1C1F56D18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1E96380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21258, &unk_1C1F56D18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1E9643C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1C1E96570@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C1E9658C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1E965C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1E9660C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id scan(_:options:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = sub_1C1F52424();
  type metadata accessor for CalculateScanKey();
  sub_1C1E971B4(&qword_1EDC2C2F8);
  v9 = sub_1C1F52344();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C1E96D10;
  v13[3] = &block_descriptor;
  v10 = _Block_copy(v13);

  v11 = [v7 scan:v8 options:v9 resultHandler:v10];
  _Block_release(v10);

  return v11;
}

void type metadata accessor for CalculateScanKey()
{
  if (!qword_1EDC2C2E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC2C2E8);
    }
  }
}

uint64_t sub_1C1E96D10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1C1E96E6C();
  v3 = sub_1C1F526B4();

  v2(v3);
}

uint64_t scan(_:options:)()
{
  v0 = objc_opt_self();
  v1 = sub_1C1F52424();
  type metadata accessor for CalculateScanKey();
  sub_1C1E971B4(&qword_1EDC2C2F8);
  v2 = sub_1C1F52344();
  v3 = [v0 scan:v1 options:v2];

  sub_1C1E96E6C();
  v4 = sub_1C1F526B4();

  return v4;
}

unint64_t sub_1C1E96E6C()
{
  result = qword_1EDC2C2B8;
  if (!qword_1EDC2C2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC2C2B8);
  }

  return result;
}

uint64_t sub_1C1E96EB8()
{
  v1 = *v0;
  v2 = sub_1C1F52454();
  v3 = MEMORY[0x1C69118A0](v2);

  return v3;
}

uint64_t sub_1C1E96EF4()
{
  v1 = *v0;
  sub_1C1F52454();
  sub_1C1F524A4();
}

uint64_t sub_1C1E96F50(uint64_t a1, id *a2)
{
  result = sub_1C1F52434();
  *a2 = 0;
  return result;
}

uint64_t sub_1C1E96FC8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1F52454();
  v2 = sub_1C1F52424();

  *a1 = v2;
  return result;
}

uint64_t sub_1C1E9700C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1F52424();

  *a2 = v5;
  return result;
}

uint64_t sub_1C1E97054@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C1F52454();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C1E97080(uint64_t a1)
{
  v2 = sub_1C1E971B4(&qword_1EDC2C2F8);
  v3 = sub_1C1E971B4(&qword_1EBF21128);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C1E971B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateScanKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1E971F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1E981EC, v97);
  v3 = v97[0];
  if (!v97[0])
  {
    return 0;
  }

  v4 = v97[1];
  v5 = v97[3];
  v6 = *(*v97[0] + 416);

  v7 = v6(v4);
  if (!v7)
  {

    sub_1C1E98278(v3);
    return 0;
  }

  v8 = v7;
  v94 = v4;
  v9 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v97[0]) = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v95 = 1;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v97, &v95))
  {
    v10 = *(*v8 + 232);
    v10();
    v11 = sub_1C1F524B4();

    if (v11 >= 1)
    {
      v13 = (*(*v8 + 408))(v12);
      if (v13)
      {
        v13 = (*(*v8 + 264))(0);
      }

      v92 = *(*a1 + 176);
      v14 = v10;
      if (v92(v13))
      {
        (*(*v8 + 744))();
      }

      type metadata accessor for CalculateExpression.RichToken();

      v16 = sub_1C1E9C29C(v15);
      v17 = v14();
      v19 = sub_1C1E982B8(v17, v18);
      v21 = v20;

      if (!v21)
      {
        goto LABEL_107;
      }

      v93 = v6;
      (*(*v16 + 240))(v19, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C1F563C0;
      *(v23 + 32) = v16;
      v96 = v23;

      (v14)(v24);
      v5 = v25;
      v14();
      v27 = v26;
      v28 = v14;
      v29 = sub_1C1F524B4();

      v30 = v29 - 1;
      if (!__OFSUB__(v29, 1))
      {
        v31 = sub_1C1E984A8(v30);
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v38 = MEMORY[0x1C6911770](v31, v33, v35, v37);
        v40 = v39;

        v41 = *(*v8 + 240);
        v42 = v41(v38, v40);
        v43 = (v28)(v42);
        v45 = v44;

        v47 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v47 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {
          goto LABEL_72;
        }

        if ((*(*a1 + 368))(v46) != 2)
        {
          v84 = (*(*v3 + 408))(v97);
          sub_1C1E98338(v94);

          v84(v97, 0);
LABEL_72:

          goto LABEL_73;
        }

        v27 = v8;
        v41(48, 0xE100000000000000);
        v5 = v94 - 1;
        if (!__OFSUB__(v94, 1))
        {
          v74 = v93(v94 - 1);
          if (!v74 || (v75 = *(v74 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v75 == 53) || (LOBYTE(v97[0]) = v75, v95 = 4, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
          {
LABEL_61:
            (*(*a1 + 232))(1);
            v79 = (*(*a1 + 256))(0);
            if (v92(v79))
            {
              sub_1C1E904FC(0);
            }

            goto LABEL_72;
          }

          result = (*(*v3 + 392))();
          v27 = result;
          if ((result & 0xC000000000000001) == 0)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v5 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v76 = *(result + 8 * v5 + 32);

LABEL_60:

              v77 = sub_1C1E9C29C(v76);
              sub_1C1E98664(0, 0, v77);

              v78 = (*(*v3 + 408))(v97);
              sub_1C1E98338(v5);

              v78(v97, 0);
              goto LABEL_61;
            }

            __break(1u);
LABEL_107:
            __break(1u);
            return result;
          }

LABEL_104:
          v76 = MEMORY[0x1C6911DB0](v5, v27);
          goto LABEL_60;
        }

        goto LABEL_100;
      }

      __break(1u);
      goto LABEL_87;
    }
  }

  v48 = v6;
  LOBYTE(v97[0]) = *(v8 + v9);
  v49 = &OBJC_INSTANCE_METHODS_NSObject;
  if ((CalculateExpression.TokenType.isParenthesis.getter() & 1) != 0 && ((*(*v8 + 256))() & 1) == 0)
  {
    type metadata accessor for CalculateExpression.RichToken();
    v59 = (*(*v8 + 232))();
    LOBYTE(v97[0]) = *(v8 + v9);
    v28 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v59, v60, v97, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1F563C0;
    v49 = *(*v3 + 392);
    v61 = v49();
    v27 = v61;
    if ((v61 & 0xC000000000000001) == 0)
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v94 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v62 = *(v61 + 8 * v94 + 32);

LABEL_36:

      *(v5 + 32) = sub_1C1E9C29C(v62);
      v96 = v5;
      v63 = *(*v3 + 408);

      v93 = v63;
      v27 = v63(v97);
      v65 = v64;
      v5 = *v64;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v65 = v5;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        v5 = sub_1C1E98444(v5);
        *v65 = v5;
      }

      if ((v94 & 0x8000000000000000) == 0)
      {
        if (v94 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v67 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20) = v28;

          (v27)(v97, 0);
          v5 = v94 - 1;
          v68 = v48(v94 - 1);
          if (!v68)
          {
            goto LABEL_72;
          }

          v69 = *(v68 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v69 == 53)
          {
            goto LABEL_72;
          }

          LOBYTE(v97[0]) = v69;
          v95 = 10;
          sub_1C1E9019C();
          if ((sub_1C1F52414() & 1) == 0)
          {
            goto LABEL_72;
          }

          v70 = v49();
          v27 = v70;
          if ((v70 & 0xC000000000000001) == 0)
          {
            if (v94)
            {
              if (v94 <= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v71 = *(v70 + 8 * v5 + 32);

LABEL_49:

                v72 = sub_1C1E9C29C(v71);
                sub_1C1E98664(0, 0, v72);

                v73 = v93(v97);
                sub_1C1E98338(v5);

                v73(v97, 0);
                goto LABEL_72;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_104;
          }

LABEL_101:
          v71 = MEMORY[0x1C6911DB0](v5, v27);
          goto LABEL_49;
        }

        goto LABEL_99;
      }

      goto LABEL_97;
    }

LABEL_95:
    v62 = MEMORY[0x1C6911DB0](v94, v27);
    goto LABEL_36;
  }

  v50 = (*(*a1 + 368))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C1F563C0;
  v51 = (*(*v3 + 392))();
  v27 = v51;
  v52 = v51 & 0xC000000000000001;
  if (v50 == 2)
  {
    v30 = v94;
    if (v52)
    {
LABEL_87:
      v48 = v5;
      v53 = MEMORY[0x1C6911DB0](v30, v27);
LABEL_23:

      type metadata accessor for CalculateExpression.RichToken();
      *(v28 + 32) = sub_1C1E9C29C(v53);
      v96 = v28;
      v54 = *(*a1 + 176);
      v49 = (*a1 + 176);
      v55 = v54();
      if (v55)
      {
        CalculateExpression.effectiveBase.getter(v97);

        v56 = v97[0];
      }

      else
      {
        v56 = 1;
      }

      LOBYTE(v97[0]) = v56;
      (v54)(v55);
      v28 = sub_1C1E8FBEC(48, 0xE100000000000000, v97);
      v27 = (*(*v3 + 408))(v97);
      v5 = v80;
      v81 = *v80;
      v82 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v5 = v81;
      if (!v82 || (v81 & 0x8000000000000000) != 0 || (v81 & 0x4000000000000000) != 0)
      {
        v81 = sub_1C1E98444(v81);
        *v5 = v81;
      }

      if ((v94 & 0x8000000000000000) == 0)
      {
        if (v94 < *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20);
          *((v81 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20) = v28;

          (v27)(v97, 0);
          (*(*a1 + 232))(1);
          (*(*a1 + 256))(0);
          goto LABEL_73;
        }

        goto LABEL_94;
      }

      goto LABEL_91;
    }

    if ((v94 & 0x8000000000000000) == 0)
    {
      if (v94 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v48 = v5;
      v53 = *(v27 + 8 * v94 + 32);

      goto LABEL_23;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v48 = v94;
  if (v52)
  {
    v57 = MEMORY[0x1C6911DB0](v94, v51);
  }

  else
  {
    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (v94 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v57 = *(v51 + 8 * v94 + 32);
  }

  type metadata accessor for CalculateExpression.RichToken();
  *(v28 + 32) = sub_1C1E9C29C(v57);
  v96 = v28;
  v58 = (*(*v3 + 408))(v97);
  sub_1C1E98338(v94);

  v58(v97, 0);
LABEL_73:
  v85 = (*(*a1 + 232))(0);
  if ((*(*v3 + 568))(v85))
  {
    v86 = (*(*v3 + 424))();
    v87 = *(*a1 + 176);
    v88 = (v87)(v86);
  }

  else
  {
    v87 = *(*a1 + 176);
    v89 = v87();
    if (v89)
    {
      if ((j___s9Calculate0A10ExpressionC12prefersClearSbvg() & 1) == 0 && CalculateExpression.format.getter() != 2 && sub_1C1EE3BB0(1))
      {

        sub_1C1E904FC(1);
      }
    }

    v88 = (v87)(v89);
  }

  if (v88)
  {
    type metadata accessor for CalculateExpression.RichExpression();
    v90 = v96;
    v87();
    v91 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v90);
    CalculateExpression.removed.setter(v91);

    sub_1C1E98278(v3);
  }

  else
  {

    sub_1C1E98278(v3);
  }

  return 1;
}

uint64_t sub_1C1E981EC(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 568))())
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(*v1 + 576))() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1C1E98278(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1E982B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1C1F524D4();
  return sub_1C1F525D4();
}

uint64_t sub_1C1E98338(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t CalculateExpression.DeleteOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1E98444(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1F52994();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C1F52AD4();
}

uint64_t sub_1C1E984A8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C1F524E4();

    return sub_1C1F525F4();
  }

  return result;
}

uint64_t sub_1C1E98544(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CalculateExpression.RichToken();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1F52994();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C1F52994();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1E98664(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1F52994();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1C1F52994();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1C1E8CFBC(result);

  return sub_1C1E98544(v6, v5, 1, v3);
}

unint64_t sub_1C1E98750(uint64_t a1)
{
  v2 = *(*a1 + 176);
  v3 = *a1 + 176;
  result = v2();
  if (result)
  {
    v5 = CalculateExpression.format.getter();

    if (v5 != 2)
    {
      return 0;
    }

    if (!(v2)(v6))
    {
      return 1;
    }

    v7 = CalculateExpression.postfixStack.getter();

    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      v9 = sub_1C1F52994();
      if (v9)
      {
LABEL_6:
        v10 = __OFSUB__(v9, 1);
        v11 = v9 - 1;
        if (v10)
        {
          __break(1u);
        }

        else
        {
          v3 = v7 & 0xC000000000000001;
          if ((v7 & 0xC000000000000001) == 0)
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v11 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v12 = *(v7 + 8 * v11 + 32);

              v13 = v7 & 0xFFFFFFFFFFFFFF8;
              if (!v8)
              {
                goto LABEL_11;
              }

              goto LABEL_26;
            }

            __break(1u);
            goto LABEL_34;
          }
        }

        MEMORY[0x1C6911DB0](v11, v7);
        v13 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v8)
        {
LABEL_11:
          v14 = *(v13 + 16);
          v15 = v14 < 2;
          result = v14 - 2;
          if (!v15)
          {
            goto LABEL_12;
          }

          goto LABEL_28;
        }

LABEL_26:
        v33 = sub_1C1F52994();
        v15 = v33 < 2;
        result = v33 - 2;
        if (!v15)
        {
LABEL_12:
          if (v3)
          {
            MEMORY[0x1C6911DB0]();
          }

          else
          {
            if (result >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v16 = *(v7 + 8 * result + 32);
          }

          v17 = CalculateExpression.rich.getter();
          v18 = (*(*v17 + 392))(v17);

          if (!(v18 >> 62))
          {
            v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            v20 = (*a1 + 408);
            v21 = *v20;
            v22 = (*v20)(v34);
            sub_1C1E98C40(v19);
            v22(v34, 0);
            v23 = *CalculateExpression.rich.getter();
            v24 = (*(v23 + 392))();

            if (v24 >> 62)
            {
              v25 = sub_1C1F52994();
            }

            else
            {
              v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v26 = v21(v34);
            sub_1C1E98C40(v25);
            v26(v34, 0);
            v27 = *CalculateExpression.rich.getter();
            v28 = (*(v27 + 392))();

            v29 = v21(v34);
            sub_1C1E8CECC(v28);
            v29(v34, 0);
            v30 = *CalculateExpression.rich.getter();
            v31 = (*(v30 + 392))();

            v32 = v21(v34);
            sub_1C1E8CECC(v31);
            v32(v34, 0);
            (*(*a1 + 232))(0);
            (*(*a1 + 256))(1);

            goto LABEL_29;
          }

LABEL_34:
          v19 = sub_1C1F52994();
          goto LABEL_19;
        }

LABEL_28:

LABEL_29:

        return 1;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C1E98C40(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_1C1F52994();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_1C1E98F60(result, v2);
}

uint64_t CalculateExpression.SwapOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t (*sub_1C1E98D2C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6911DB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1C1E98DAC;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E98DB4()
{
  result = qword_1EBF21140;
  if (!qword_1EBF21140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF21138, &qword_1C1F56910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21140);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1E98E60(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for CalculateExpression.RichToken();
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
  result = sub_1C1F52994();
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
    result = sub_1C1F52994();
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

uint64_t sub_1C1E98F60(uint64_t a1, uint64_t a2)
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

  result = sub_1C1F52994();
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
    v9 = sub_1C1F52994();
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

  sub_1C1E8CFBC(result);

  return sub_1C1E98E60(v4, v2, 0);
}

uint64_t sub_1C1E99038()
{
  type metadata accessor for CalculateExpression.RichToken();
  v16 = 10;
  v1 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(1885957222, 0xE400000000000000, &v16, v1 & 1);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v15 = 1;

  v5 = sub_1C1E7DD60();
  v6 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v4, v3, &v15, v5 & 1);
  type metadata accessor for CalculateExpression.RichExpression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1F563C0;
  *(v7 + 32) = v6;

  v8 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v7);
  v9 = (*(*v2 + 312))(v8);
  v10 = *(*v2 + 304);
  v11 = v10(v9);
  if (v11)
  {
    (*(*v11 + 304))(0);
  }

  v12 = v10(v11);
  if (v12)
  {
    v14 = 2;
    (*(*v12 + 280))(&v14);
  }

  return v2;
}

uint64_t CalculateExpression.FlipOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.FunctionOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C1E992BC@<X0>(char *a1@<X8>)
{
  result = *(v1 + 24);
  if (result == 49 && *(v1 + 32) == 0xE100000000000000)
  {
    v5 = 1;
  }

  else
  {
    result = sub_1C1F52C64();
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1E99318(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1E7DD60, v136);
  v5 = v136[0];
  if (!v136[0])
  {
    return 0;
  }

  v6 = v136[1];
  v7 = *(*v136[0] + 416);

  v8 = (v7)(v6);
  if (!v8)
  {

    v12 = v5;
LABEL_13:
    sub_1C1E98278(v12);
    return 0;
  }

  v9 = v8;
  v133 = v6;
  (*(*a1 + 232))(0);
  v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v136[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (CalculateExpression.TokenType.isOperator.getter())
  {
    v135 = *(v9 + v10);
    v134 = 8;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v135, &v134) & 1) == 0)
    {
      v135 = *(v9 + v10);
      v134 = 9;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v135, &v134) & 1) == 0)
      {

        goto LABEL_12;
      }
    }
  }

  v11 = sub_1C1E90090(&unk_1F418CC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21148, &unk_1C1F564B0);
  swift_arrayDestroy();
  LOBYTE(v136[0]) = *(v9 + v10);
  v135 = 15;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) != 0 || (v132 = v11, LOBYTE(v136[0]) = *(v9 + v10), v135 = 18, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135)))
  {

LABEL_12:

    v12 = v5;
    goto LABEL_13;
  }

  v14 = *(v2 + 24);
  v15 = *(v3 + 32);
  if (!v14 && v15 == 0xE000000000000000 || (v16 = *(v3 + 24), v17 = *(v3 + 32), (sub_1C1F52C64() & 1) != 0))
  {
    v18 = type metadata accessor for CalculateExpression.RichToken();
    if (*(v11 + 16))
    {
      a1 = v18;
      v19 = sub_1C1E901F0(*(v3 + 16));
      if (v20)
      {
        v21 = (*(v11 + 56) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];

        LOBYTE(v136[0]) = *(v3 + 16);
        v24 = sub_1C1E7DD60();
        v25 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v22, v23, v136, v24 & 1);
        v15 = v133 + 1;
        if (!__OFADD__(v133, 1))
        {
          a1 = v25;
          v3 = (*(*v5 + 408))(v136);
          if (!(*v26 >> 62))
          {
            result = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result >= v15)
            {
              goto LABEL_23;
            }

            goto LABEL_156;
          }

LABEL_155:
          result = sub_1C1F52994();
          if (result >= v15)
          {
LABEL_23:
            if ((v15 & 0x8000000000000000) == 0)
            {
              sub_1C1E98664(v15, v15, a1);
              (v3)(v136, 0);

              v27 = v5;
LABEL_25:
              sub_1C1E98278(v27);
              return 1;
            }

            goto LABEL_157;
          }

LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

LABEL_154:
        __break(1u);
        goto LABEL_155;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_154;
  }

  if ((v14 != 49 || v15 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0)
  {

    v12 = v5;
    goto LABEL_13;
  }

  LOBYTE(v136[0]) = *(v9 + v10);
  v135 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) == 0)
  {
    goto LABEL_82;
  }

  result = v133 - 1;
  if (__OFSUB__(v133, 1))
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v130 = v133 - 1;
  v28 = v7();
  if (!v28)
  {
LABEL_82:
    result = type metadata accessor for CalculateExpression.RichToken();
    if (*(v132 + 16))
    {
      result = sub_1C1E901F0(*(v3 + 16));
      if (v57)
      {
        v58 = (*(v132 + 56) + 16 * result);
        v59 = *v58;
        v60 = v58[1];

        LOBYTE(v136[0]) = *(v3 + 16);
        v61 = sub_1C1E7DD60();
        v62 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v59, v60, v136, v61 & 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1C1F56430;
        *(v63 + 32) = v62;
        v64 = *(*a1 + 384);

        v66 = v64(v136, v65);
        (*(*a1 + 176))(v66);
        result = sub_1C1E8FBEC(49, 0xE100000000000000, v136);
        *(v63 + 40) = result;
        if (!__OFADD__(v133, 1))
        {
          v67 = (*(*v5 + 408))(v136);
          sub_1C1E9B764(v133 + 1, v133 + 1, v63);

          v67(v136, 0);

          v27 = v5;
          goto LABEL_25;
        }

        goto LABEL_160;
      }

LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v29 = v28;
  v30 = (*(*v9 + 400))();
  if (v31)
  {
    v32 = (*(*v9 + 232))(v30);
    v34 = sub_1C1E9A504(v32, v33);
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34;
    }
  }

  else
  {
    v36 = v30;
  }

  v37 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v136[0]) = *(v29 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v135 = 32;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135))
  {
    v38 = 1;
  }

  else
  {
    LOBYTE(v136[0]) = *(v29 + v37);
    v135 = 30;
    v38 = static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135);
  }

  LOBYTE(v136[0]) = *(v3 + 16);
  v135 = 29;
  result = static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135);
  if (result & 1) != 0 || (LOBYTE(v136[0]) = *(v3 + 16), v135 = 31, result = static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135), (result))
  {
    if (v38)
    {
      v128 = v36 != 0;
      if (v36)
      {
        v39 = v36 - 1;
      }

      else
      {
        v39 = 1;
      }
    }

    else
    {
      v40 = __CFADD__(v36, 1);
      v39 = v36 + 1;
      if (v40)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v128 = 0;
    }
  }

  else if (v38)
  {
    v40 = __CFADD__(v36, 1);
    v39 = v36 + 1;
    if (v40)
    {
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    v128 = 1;
  }

  else
  {
    v128 = v36 == 0;
    if (v36)
    {
      v39 = v36 - 1;
    }

    else
    {
      v39 = 1;
    }
  }

  LOBYTE(v136[0]) = *(v3 + 16);
  v135 = 31;
  v131 = v29;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) != 0 || (LOBYTE(v136[0]) = *(v3 + 16), v135 = 32, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135)))
  {
    v39 &= 0x3Fu;
  }

  type metadata accessor for CalculateExpression.RichToken();
  v136[0] = v39;
  v41 = sub_1C1F52C34();
  v129 = v42;
  LOBYTE(v136[0]) = 1;
  (*(*a1 + 176))();
  v43 = sub_1C1E8FBEC(v41, v129, v136);
  (*(*a1 + 384))(v136);
  (*(*v43 + 424))(v136);
  LOBYTE(v136[0]) = *(v3 + 16);
  v135 = 29;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) != 0 || (LOBYTE(v136[0]) = *(v3 + 16), v135 = 30, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135)))
  {
    LOBYTE(v136[0]) = *(v131 + v37);
    v135 = 29;
    if (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) != 0 || (LOBYTE(v136[0]) = *(v131 + v37), v135 = 30, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135)))
    {
      if (v39)
      {
        v44 = *(v132 + 16);
        if (v128)
        {
          if (v44 && (v45 = sub_1C1E901F0(0x1Eu), (v46 & 1) != 0))
          {
            v47 = (*(v132 + 56) + 16 * v45);
            v48 = *v47;
            v49 = v47[1];
          }

          else
          {
            v48 = 0;
            v49 = 0;
          }

          LOBYTE(v136[0]) = 30;
          v73 = sub_1C1E7DD60();
          v74 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v48, v49, v136, v73 & 1);
          v75 = *(*v5 + 408);
          v76 = v75(v136);
          v78 = v77;
          v79 = *v77;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v78 = v79;
          if (!result || (v79 & 0x8000000000000000) != 0 || (v79 & 0x4000000000000000) != 0)
          {
            result = sub_1C1E98444(v79);
            v79 = result;
            *v78 = result;
          }

          if ((v130 & 0x8000000000000000) != 0)
          {
            goto LABEL_164;
          }

          v80 = v43;
          if (v130 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20);
          *((v79 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20) = v74;

          v76(v136, 0);

          v82 = v75(v136);
          v84 = v83;
          v85 = *v83;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v84 = v85;
          if (!result || (v85 & 0x8000000000000000) != 0 || (v85 & 0x4000000000000000) != 0)
          {
            result = sub_1C1E98444(v85);
            v85 = result;
            *v84 = result;
          }

          if ((v133 & 0x8000000000000000) != 0)
          {
            goto LABEL_168;
          }

          v86 = v85 & 0xFFFFFFFFFFFFFF8;
          if (v133 < *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_150;
          }

          __break(1u);
        }

        else if (v44)
        {
          v68 = sub_1C1E901F0(0x1Du);
          if (v69)
          {
            v70 = (*(v132 + 56) + 16 * v68);
            v71 = *v70;
            v72 = v70[1];

LABEL_104:

            LOBYTE(v136[0]) = 29;
            v87 = sub_1C1E7DD60();
            v88 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v71, v72, v136, v87 & 1);
            v89 = *(*v5 + 408);
            v90 = v89(v136);
            v92 = v91;
            v93 = *v91;
            result = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *v92 = v93;
            if (!result || (v93 & 0x8000000000000000) != 0 || (v93 & 0x4000000000000000) != 0)
            {
              result = sub_1C1E98444(v93);
              v93 = result;
              *v92 = result;
            }

            if ((v130 & 0x8000000000000000) != 0)
            {
              goto LABEL_165;
            }

            v80 = v43;
            if (v130 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
              goto LABEL_170;
            }

            v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20);
            *((v93 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20) = v88;

            v90(v136, 0);

            v82 = v89(v136);
            v96 = v95;
            v97 = *v95;
            result = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *v96 = v97;
            if (!result || (v97 & 0x8000000000000000) != 0 || (v97 & 0x4000000000000000) != 0)
            {
              result = sub_1C1E98444(v97);
              v97 = result;
              *v96 = result;
            }

            if ((v133 & 0x8000000000000000) != 0)
            {
              goto LABEL_169;
            }

            v86 = v97 & 0xFFFFFFFFFFFFFF8;
            if (v133 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_117;
            }

LABEL_150:
            v126 = v86 + 8 * v133;
            v127 = *(v126 + 32);
            *(v126 + 32) = v80;

            v82(v136, 0);
            goto LABEL_151;
          }
        }

        v71 = 0;
        v72 = 0;
        goto LABEL_104;
      }

      v3 = v43;
      if (v133 < v130)
      {
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      result = (*(*v5 + 408))(v136);
      v56 = v133 + 1;
      if (!__OFADD__(v133, 1))
      {
        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_81;
    }
  }

  LOBYTE(v136[0]) = *(v3 + 16);
  v135 = 31;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) == 0 && (LOBYTE(v136[0]) = *(v3 + 16), v135 = 32, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) == 0) || (LOBYTE(v136[0]) = *(v131 + v37), v135 = 31, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) == 0) && (LOBYTE(v136[0]) = *(v131 + v37), v135 = 32, (static CalculateExpression.TokenType.== infix(_:_:)(v136, &v135) & 1) == 0))
  {
LABEL_81:

    goto LABEL_82;
  }

  if (!v39)
  {
LABEL_117:

    if (v133 < v130)
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    result = (*(*v5 + 408))(v136);
    v56 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

LABEL_119:
    v98 = result;
    sub_1C1E98F60(v130, v56);
    v98(v136, 0);
LABEL_151:

    v27 = v5;
    goto LABEL_25;
  }

  v50 = *(v132 + 16);
  if (v128)
  {
    if (v50 && (v51 = sub_1C1E901F0(0x20u), (v52 & 1) != 0))
    {
      v53 = (*(v132 + 56) + 16 * v51);
      v54 = *v53;
      v55 = v53[1];
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    LOBYTE(v136[0]) = 32;
    v104 = sub_1C1E7DD60();
    v105 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v54, v55, v136, v104 & 1);
    v106 = *(*v5 + 408);
    v107 = v106(v136);
    v109 = v108;
    v110 = *v108;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v109 = v110;
    if (!result || (v110 & 0x8000000000000000) != 0 || (v110 & 0x4000000000000000) != 0)
    {
      result = sub_1C1E98444(v110);
      v110 = result;
      *v109 = result;
    }

    if ((v130 & 0x8000000000000000) != 0)
    {
      goto LABEL_173;
    }

    v80 = v43;
    if (v130 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20);
    *((v110 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20) = v105;

    v107(v136, 0);

    v82 = v106(v136);
    v113 = v112;
    v114 = *v112;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v113 = v114;
    if (!result || (v114 & 0x8000000000000000) != 0 || (v114 & 0x4000000000000000) != 0)
    {
      result = sub_1C1E98444(v114);
      v114 = result;
      *v113 = result;
    }

    if ((v133 & 0x8000000000000000) != 0)
    {
      goto LABEL_177;
    }

    v86 = v114 & 0xFFFFFFFFFFFFFF8;
    if (v133 < *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_137;
  }

  if (!v50 || (v99 = sub_1C1E901F0(0x1Fu), (v100 & 1) == 0))
  {
LABEL_137:
    v102 = 0;
    v103 = 0;
    goto LABEL_138;
  }

  v101 = (*(v132 + 56) + 16 * v99);
  v102 = *v101;
  v103 = v101[1];

LABEL_138:

  LOBYTE(v136[0]) = 31;
  v115 = sub_1C1E7DD60();
  v116 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v102, v103, v136, v115 & 1);
  v117 = *(*v5 + 408);
  v118 = v117(v136);
  v120 = v119;
  v121 = *v119;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v120 = v121;
  if (!result || (v121 & 0x8000000000000000) != 0 || (v121 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v121);
    v121 = result;
    *v120 = result;
  }

  if ((v130 & 0x8000000000000000) != 0)
  {
    goto LABEL_174;
  }

  v80 = v43;
  if (v130 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20);
  *((v121 & 0xFFFFFFFFFFFFFF8) + 8 * v130 + 0x20) = v116;

  v118(v136, 0);

  v82 = v117(v136);
  v124 = v123;
  v125 = *v123;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v124 = v125;
  if (!result || (v125 & 0x8000000000000000) != 0 || (v125 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v125);
    v125 = result;
    *v124 = result;
  }

  if ((v133 & 0x8000000000000000) != 0)
  {
    goto LABEL_178;
  }

  v86 = v125 & 0xFFFFFFFFFFFFFF8;
  if (v133 < *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_150;
  }

LABEL_179:
  __break(1u);
  return result;
}

uint64_t sub_1C1E9A504(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C1F52AE4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1C1E9A8B4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t CalculateExpression.ShiftOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t CalculateExpression.ShiftOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unsigned __int8 *sub_1C1E9A8B4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1C1F525E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1E9AEC0();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1F52AE4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
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
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
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

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void *sub_1C1E9AE38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1C1E9AEC0()
{
  v0 = sub_1C1F525F4();
  v4 = sub_1C1E9AF40(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C1E9AF40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C1F52494();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C1F528E4();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C1E9B098(v9, 0);
  v12 = sub_1C1E9B10C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C1F52494();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C1F52AE4();
LABEL_4:

  return sub_1C1F52494();
}

void *sub_1C1E9B098(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21150, &qword_1C1F583C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1C1E9B10C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1C1E9B32C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C1F52564();
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
          result = sub_1C1F52AE4();
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

    result = sub_1C1E9B32C(v12, a6, a7);
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

    result = sub_1C1F52544();
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

uint64_t sub_1C1E9B32C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C1F52584();
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
    v5 = MEMORY[0x1C6911840](15, a1 >> 16);
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

uint64_t sub_1C1E9B3A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for CalculateExpression.RichToken();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C1E9B410(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1C1E9B4CC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void *sub_1C1E9B4CC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C1E9AE38(v2, 0);

    MEMORY[0x1C6911D80](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1C1F52994();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C1E9B568(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1C1E9B410(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

uint64_t sub_1C1E9B5CC(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CalculateExpression.RichToken();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_1C1E9B568(v4, sub_1C1E9B894);
  }

LABEL_25:
  v20 = sub_1C1F52994();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = MEMORY[0x1EEE9AC00](result);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return sub_1C1E9B568(v4, sub_1C1E9B894);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E9B764(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = sub_1C1F52994();
  if (result < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = sub_1C1F52994();
  v11 = result;
  v12 = __OFSUB__(result, v9);
  v13 = result - v9;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v14 = sub_1C1F52994();
  }

  else
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_1C1E8CFBC(result);

  return sub_1C1E9B5CC(v6, v5, v11, v3);
}

uint64_t CalculateExpression.RichToken.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1E9B93C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1E9B988(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t sub_1C1E9B9F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C1E9BAC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1E9BB6C(char a1)
{
  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_isImplicit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1E9BC1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9BC70(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 288);

  return v3(v4);
}

uint64_t sub_1C1E9BD38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9BD8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 312);

  return v3(v4);
}

uint64_t sub_1C1E9BDF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1C1E9BEA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9BF4C()
{
  v1 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E9BF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1E9C040()
{
  result = (*(*v0 + 280))();
  if (result)
  {
    v2 = (*(*result + 544))(result);

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v3 = (v2 + 1) & ~((v2 + 1) >> 63);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*v0 + 304))(result);
  if (!v4)
  {
    return v3;
  }

  v5 = (*(*v4 + 544))(v4);

  if (__OFADD__(v5, 1))
  {
    goto LABEL_12;
  }

  if (v5 + 1 <= v3)
  {
    return v3;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t sub_1C1E9C178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C1EAC150(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

uint64_t sub_1C1E9C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C1EAC150(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  result = *v6;
  v8 = v6[1];
  return result;
}

uint64_t CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1C1EB0254(a1);

  return v2;
}

uint64_t sub_1C1E9C29C(uint64_t a1)
{
  v3 = (*(*a1 + 232))();
  v5 = v4;
  v24[0] = *(a1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v6 = (*(*a1 + 256))();
  v7 = (*(v1 + 360))(v3, v5, v24, v6 & 1);
  v8 = *(*a1 + 328);

  v10 = v8(v9);
  v11 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
  swift_beginAccess();
  *(v7 + v11) = v10;

  v13 = (*(*a1 + 280))(v12);
  if (v13)
  {
    v14 = v13;
    type metadata accessor for CalculateExpression.RichExpression();
    swift_allocObject();
    v15 = sub_1C1EB0340(v14);

    v16 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left;
    swift_beginAccess();
    v17 = *(v7 + v16);
    *(v7 + v16) = v15;
  }

  v18 = (*(*a1 + 304))(v13);
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CalculateExpression.RichExpression();
    swift_allocObject();
    v20 = sub_1C1EB0340(v19);

    v21 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right;
    swift_beginAccess();
    v22 = *(v7 + v21);
    *(v7 + v21) = v20;
  }

  return v7;
}

_BYTE *sub_1C1E9C51C(_BYTE *a1)
{
  swift_allocObject();
  v2 = sub_1C1EB0340(a1);

  return v2;
}

uint64_t sub_1C1E9C568()
{
  v6 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v5 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v6, &v5) & 1) == 0)
  {
    return 0;
  }

  if ((*(*v0 + 232))() == 48 && v1 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_1C1F52C64();

    return v3 & 1;
  }
}

BOOL sub_1C1E9C644(uint64_t a1, uint64_t a2)
{
  LOBYTE(v9[0]) = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v8[0]) = 10;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v9, v8) & 1) == 0)
  {
    return 0;
  }

  v9[0] = (*(*v2 + 232))();
  v9[1] = v5;
  v8[0] = a1;
  v8[1] = a2;
  sub_1C1E94E48();
  v6 = sub_1C1F52924();

  return v6 == 0;
}

uint64_t sub_1C1E9C710()
{
  LOBYTE(v34[0]) = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v35[0] = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v34, v35) & 1) == 0)
  {
    return 0;
  }

  v1 = v0;
  result = (*(*v0 + 304))();
  if (result)
  {
    v3 = (*(*result + 392))();
    if (v3 >> 62)
    {
      v31 = v3;
      v32 = sub_1C1F52994();
      v3 = v31;
      v0 = v1;
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C6911DB0](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_81;
        }

        v4 = *(v3 + 32);
      }

      LOBYTE(v34[0]) = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v35[0] = 1;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v34, v35))
      {
        (*(*v0 + 232))();
        result = (*(*v4 + 232))();
        v6 = HIBYTE(v5) & 0xF;
        v7 = result & 0xFFFFFFFFFFFFLL;
        if ((v5 & 0x2000000000000000) != 0)
        {
          v8 = HIBYTE(v5) & 0xF;
        }

        else
        {
          v8 = result & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v35[0] = 0;
            v10 = sub_1C1EAC43C(result, v5, 10);

            if ((v10 & 0x100000000) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }

          if ((v5 & 0x2000000000000000) != 0)
          {
            v34[0] = result;
            v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
            if (result == 43)
            {
              if (v6)
              {
                v7 = v6 - 1;
                if (v6 != 1)
                {
                  LODWORD(v10) = 0;
                  v20 = v34 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      break;
                    }

                    v22 = 10 * v10;
                    if (v22 != v22)
                    {
                      break;
                    }

                    LODWORD(v10) = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      break;
                    }

                    ++v20;
                    if (!--v7)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_71;
              }

              goto LABEL_88;
            }

            if (result != 45)
            {
              if (v6)
              {
                LODWORD(v10) = 0;
                v25 = v34;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  v27 = 10 * v10;
                  if (v27 != v27)
                  {
                    break;
                  }

                  LODWORD(v10) = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    break;
                  }

                  ++v25;
                  if (!--v6)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_71;
            }

            if (v6)
            {
              v7 = v6 - 1;
              if (v6 != 1)
              {
                LODWORD(v10) = 0;
                v14 = v34 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    break;
                  }

                  v16 = 10 * v10;
                  if (v16 != v16)
                  {
                    break;
                  }

                  LODWORD(v10) = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    break;
                  }

                  ++v14;
                  if (!--v7)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }
          }

          else
          {
            if ((result & 0x1000000000000000) != 0)
            {
              result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              result = sub_1C1F52AE4();
              v7 = v33;
            }

            v9 = *result;
            if (v9 == 43)
            {
              if (v7 >= 1)
              {
                if (--v7)
                {
                  LODWORD(v10) = 0;
                  if (result)
                  {
                    v17 = (result + 1);
                    while (1)
                    {
                      v18 = *v17 - 48;
                      if (v18 > 9)
                      {
                        goto LABEL_71;
                      }

                      v19 = 10 * v10;
                      if (v19 != v19)
                      {
                        goto LABEL_71;
                      }

                      LODWORD(v10) = v19 + v18;
                      if (__OFADD__(v19, v18))
                      {
                        goto LABEL_71;
                      }

                      ++v17;
                      if (!--v7)
                      {
                        goto LABEL_72;
                      }
                    }
                  }

                  goto LABEL_70;
                }

                goto LABEL_71;
              }

              goto LABEL_87;
            }

            if (v9 != 45)
            {
              if (v7)
              {
                LODWORD(v10) = 0;
                if (result)
                {
                  while (1)
                  {
                    v23 = *result - 48;
                    if (v23 > 9)
                    {
                      goto LABEL_71;
                    }

                    v24 = 10 * v10;
                    if (v24 != v24)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v10) = v24 + v23;
                    if (__OFADD__(v24, v23))
                    {
                      goto LABEL_71;
                    }

                    ++result;
                    if (!--v7)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_70;
              }

LABEL_71:
              LODWORD(v10) = 0;
              LOBYTE(v7) = 1;
LABEL_72:
              v35[0] = v7;
              v28 = v7;

              if ((v28 & 1) == 0)
              {
LABEL_74:
                v29 = sub_1C1F52474();

                v30 = strtoull((v29 + 32), 0, v10);

                return v30;
              }

LABEL_73:
              LODWORD(v10) = 10;
              goto LABEL_74;
            }

            if (v7 >= 1)
            {
              if (--v7)
              {
                LODWORD(v10) = 0;
                if (result)
                {
                  v11 = (result + 1);
                  while (1)
                  {
                    v12 = *v11 - 48;
                    if (v12 > 9)
                    {
                      goto LABEL_71;
                    }

                    v13 = 10 * v10;
                    if (v13 != v13)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v10) = v13 - v12;
                    if (__OFSUB__(v13, v12))
                    {
                      goto LABEL_71;
                    }

                    ++v11;
                    if (!--v7)
                    {
                      goto LABEL_72;
                    }
                  }
                }

LABEL_70:
                LOBYTE(v7) = 0;
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            __break(1u);
          }

          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return result;
        }

LABEL_81:

        goto LABEL_73;
      }

      goto LABEL_77;
    }

LABEL_77:

    return 0;
  }

  return result;
}

void *sub_1C1E9CBF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1C1E9CC58(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 424))(&v4);
}

uint64_t sub_1C1E9CCB8@<X0>(char *a1@<X8>)
{
  LOBYTE(v45[0]) = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v46[0] = 1;
  result = static CalculateExpression.TokenType.== infix(_:_:)(v45, v46);
  if ((result & 1) == 0)
  {
    goto LABEL_94;
  }

  result = (*(*v1 + 304))();
  if (!result)
  {
    goto LABEL_94;
  }

  v5 = result;
  v6 = (*result + 392);
  v7 = *v6;
  v8 = (*v6)();
  if (v8 >> 62)
  {
    v2 = v8;
    v9 = sub_1C1F52994();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != 1)
  {
    goto LABEL_93;
  }

  v11 = v5;
  v12 = (v7)(v10);
  if (v12 >> 62)
  {
    v11 = v12;
    v43 = sub_1C1F52994();
    v12 = v11;
    if (!v43)
    {
      goto LABEL_92;
    }
  }

  else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_92;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6911DB0](0, v12);

    v14 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v14 == 53)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_89;
    }

    v13 = *(v12 + 32);
    v2 = v12;

    v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v14 == 53)
    {
LABEL_93:

      goto LABEL_94;
    }
  }

  LOBYTE(v45[0]) = v14;
  v46[0] = 1;
  sub_1C1E9019C();
  if ((sub_1C1F52414() & 1) == 0)
  {
    goto LABEL_93;
  }

  v15 = v7();
  v11 = v15;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_90:

LABEL_94:
    *a1 = 1;
    return result;
  }

LABEL_89:
  if (!sub_1C1F52994())
  {
    goto LABEL_90;
  }

LABEL_14:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1C6911DB0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_96;
    }

    v16 = *(v11 + 32);
  }

  v2 = (*(*v16 + 232))(v17);
  v11 = v18;

  v19 = HIBYTE(v11) & 0xF;
  v20 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v21 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_92:

    goto LABEL_93;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    if ((v11 & 0x2000000000000000) != 0)
    {
      v45[0] = v2;
      v45[1] = v11 & 0xFFFFFFFFFFFFFFLL;
      if (v2 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v23 = 0;
            v33 = v45 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_101:
        __break(1u);
        return result;
      }

      if (v2 != 45)
      {
        if (v19)
        {
          v23 = 0;
          v38 = v45;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v19)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v19)
      {
        if (--v19)
        {
          v23 = 0;
          v27 = v45 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C1F52AE4();
      }

      v22 = *result;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v23 = 0;
            if (result)
            {
              v30 = (result + 1);
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_77;
                }

                v32 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_77;
                }

                v23 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_77;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_100;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              v36 = *result - 48;
              if (v36 > 9)
              {
                goto LABEL_77;
              }

              v37 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_77;
              }

              v23 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_77;
              }

              ++result;
              if (!--v20)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v23 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_78;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          if (result)
          {
            v24 = (result + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_77;
              }

              v26 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_77;
              }

              v23 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_77;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v19) = 0;
LABEL_78:
          v46[0] = v19;
          v41 = v19;
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_96:
  v46[0] = 0;
  v23 = sub_1C1EAC9B8(v2, v11, 10);
  v41 = v44;
LABEL_79:

  if (v41)
  {
    goto LABEL_93;
  }

  CalculateExpression.Base.init(rawValue:)(v23);

  v42 = v45[0];
  if (LOBYTE(v45[0]) == 3)
  {
    v42 = 1;
  }

  *a1 = v42;
  return result;
}

uint64_t sub_1C1E9D27C(char *a1)
{
  v2 = v1;
  v3 = *a1;
  (*(*v1 + 416))(&v25);
  v4 = v25;
  LOBYTE(v22) = v3;
  sub_1C1E903DC();
  result = sub_1C1F52414();
  if (result)
  {
    return result;
  }

  LOBYTE(v25) = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v22) = 1;
  result = static CalculateExpression.TokenType.== infix(_:_:)(&v25, &v22);
  if ((result & 1) == 0)
  {
    return result;
  }

  (*(*v1 + 232))();
  LOBYTE(v25) = v4;
  result = CalculateExpression.Base.rawValue.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = sub_1C1F52474();

  v8 = strtoull((v7 + 32), 0, v6);

  v25 = v8;
  LOBYTE(v22) = v3;
  CalculateExpression.Base.rawValue.getter();
  sub_1C1EB05DC();
  v9 = sub_1C1F525C4();
  (*(*v2 + 240))(v9);
  v24 = v3;
  v23 = 1;
  sub_1C1EB0630();
  sub_1C1F52684();
  sub_1C1F52684();
  if (v25 == v22)
  {
    return (*(*v2 + 312))(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1F563C0;
  LOBYTE(v22) = v3;
  v25 = CalculateExpression.Base.rawValue.getter();
  v11 = sub_1C1F52C34();
  v13 = v12;
  LOBYTE(v25) = 1;
  v14 = type metadata accessor for CalculateExpression.RichToken();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(v11, v13, &v25, 0);
  *(v10 + 32) = v17;
  type metadata accessor for CalculateExpression.RichExpression();
  swift_allocObject();
  v18 = sub_1C1EB0254(v10);
  v19 = (*(*v2 + 312))(v18);
  v20 = *(*v2 + 304);
  v21 = v20(v19);
  if (v21)
  {
    LOBYTE(v25) = 2;
    (*(*v21 + 280))(&v25);
  }

  result = v20(v21);
  if (result)
  {
    (*(*result + 304))(0);
  }

  return result;
}