uint64_t sub_1B0CA6950(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 - result;
  if (a3)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = 0;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = result;
  v13 = a3 + result;
  if (!a3)
  {
    v13 = 0;
  }

  v18 = 0;
  v19 = v8;
  v20 = v13;
  v21 = v8;
  result = sub_1B0CA6A64(1, &v18, a5, a6);
  if (!v6)
  {
    v14 = a4 - a3;
    if (!a3)
    {
      v14 = 0;
    }

    if ((v12 & 0x8000000000000000) == 0 && v14 >= v12)
    {
      if ((a2 & 0x8000000000000000) == 0 && v14 >= a2)
      {
        v15 = v7 - (v19 - v18);
        if (!__OFSUB__(v7, v19 - v18))
        {
          v16 = __OFADD__(v12, v15);
          v17 = v12 + v15;
          if (!v16)
          {
            if ((v17 & 0x8000000000000000) == 0 && v14 >= v17)
            {
              if (v17 >= v12)
              {
                if (v17 <= a2)
                {
                  if (a3)
                  {
                    return a3 + v12;
                  }

                  else
                  {
                    return 0;
                  }
                }

LABEL_31:
                __break(1u);
                return result;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1B0CA6A64(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_54;
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      if (v4 < v5 + 1)
      {
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
LABEL_56:
        __break(1u);
        return result;
      }

      v7 = *(a3 + v5);
      if (v7 == 61)
      {
        if (v6 == v4)
        {
          return result;
        }

        v8 = v5 + 2;
        if (v4 < v5 + 2)
        {
          goto LABEL_50;
        }

        if (v8 == v4)
        {
          return result;
        }

        v9 = v5 + 3;
        if (v4 < v5 + 3)
        {
          goto LABEL_51;
        }

        v10 = *(a3 + v6);
        v11 = *(a3 + v8);
        if ((v10 - 58) > 0xF5u)
        {
          v12 = -48;
        }

        else
        {
          if ((v10 - 71) <= 0xF9u)
          {
            if ((v10 - 103) >= 0xFAu)
            {
              v12 = -87;
              goto LABEL_39;
            }

LABEL_6:
            v6 = v9;
            goto LABEL_7;
          }

          v12 = -55;
        }

LABEL_39:
        if ((v11 - 58) > 0xF5u)
        {
          v20 = -48;
        }

        else if ((v11 - 71) > 0xF9u)
        {
          v20 = -55;
        }

        else
        {
          if ((v11 - 103) < 0xFAu)
          {
            goto LABEL_6;
          }

          v20 = -87;
        }

        v21 = *a2;
        v14 = a2[1];
        if (*a2 != v14)
        {
          v22 = (v11 + v20) | (16 * (v10 + v12));
          v15 = a2[2];
          *(v15 + v21) = v22;
          v16 = v21 + 1;
          if (v14 < v21 + 1)
          {
            goto LABEL_52;
          }

          goto LABEL_47;
        }

        goto LABEL_6;
      }

      if (result)
      {
        if (v7 != 9 && v7 != 32)
        {
          if (v7 != 95)
          {
            goto LABEL_34;
          }

          v13 = *a2;
          v14 = a2[1];
          if (*a2 != v14)
          {
            v15 = a2[2];
            *(v15 + v13) = 32;
            v16 = v13 + 1;
            if (v14 < v13 + 1)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          goto LABEL_7;
        }
      }

      else if (v7 != 32 && v7 != 9)
      {
LABEL_34:
        if ((v7 - 127) < 0xFFFFFFA1)
        {
          goto LABEL_7;
        }

        v19 = *a2;
        v14 = a2[1];
        if (*a2 == v14)
        {
          goto LABEL_7;
        }

        v15 = a2[2];
        *(v15 + v19) = v7;
        v16 = v19 + 1;
        if (v14 < v16)
        {
          goto LABEL_55;
        }

LABEL_32:
        v9 = v6;
LABEL_47:
        *a2 = v16;
        a2[1] = v14;
        v6 = v9;
        a2[2] = v15;
        goto LABEL_7;
      }

      v18 = *a2;
      v14 = a2[1];
      if (*a2 != v14)
      {
        v15 = a2[2];
        *(v15 + v18) = 32;
        v16 = v18 + 1;
        if (v14 < v18 + 1)
        {
          goto LABEL_53;
        }

        goto LABEL_32;
      }

LABEL_7:
      v5 = v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_1B0CA6C68(uint64_t result, uint64_t a2, char a3, _BYTE *a4, uint64_t *a5)
{
  v5 = a2;
  v6 = *a4;
  if (v6 != 2 && (v6 & 1) == 0)
  {
    v8 = *a5;
    v7 = a5[1];
    if (*a5 != v7)
    {
      v9 = a5[2];
      *(v9 + v8) = 10;
      v10 = v8 + 1;
      if (v7 < v10)
      {
        goto LABEL_19;
      }

      *a5 = v10;
      a5[1] = v7;
      a5[2] = v9;
    }
  }

  if (!result)
  {
    goto LABEL_13;
  }

  v11 = a2 - result;
  if (a2 == result)
  {
    goto LABEL_13;
  }

  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0 && v12 < v11)
  {
    v13 = (result + v12);
    if (*v13 == 61)
    {
      *a4 = 1;
      v5 = v13;
      return sub_1B0CA6A64(0, a5, result, v5);
    }

LABEL_13:
    if (a3)
    {
      *a4 = 2;
    }

    else
    {
      *a4 = 0;
    }

    return sub_1B0CA6A64(0, a5, result, v5);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ReplacementNode()
{
  result = qword_1EB6DB900;
  if (!qword_1EB6DB900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0CA6DA8()
{
  sub_1B0CA6EB4();
  if (v0 <= 0x3F)
  {
    sub_1B0CA6F04(319, &qword_1EB6DB910, type metadata accessor for PartReplacement, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B0CA6F04(319, &qword_1EB6E6008, type metadata accessor for ReplacementNode, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0CA6EB4()
{
  if (!qword_1EB6DB928)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB928);
    }
  }
}

void sub_1B0CA6F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B0CA6F68(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v17 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = a1(&v17);
      if (v3)
      {

        return v15 & 1;
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = 0;
        return v15 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CA70BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v8 = type metadata accessor for ReplacementNode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6010, "pG\b");
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 2;
  v20 = *(v8 + 24);
  v21 = type metadata accessor for PartReplacement();
  v22 = *(*(v21 - 8) + 56);
  v37 = v20;
  v22(a6 + v20, 1, 1, v21);
  (*(v9 + 56))(v19, 1, 1, v8);
  v50 = 0;
  v42 = &v50;
  v43 = a5;
  v44 = v19;
  v39 = &v50;
  v40 = v19;
  v23 = v36;
  sub_1B0CA33D0(3, v32, v33, v34, v35);
  if (v23)
  {
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
    v46 = v24;
    v47 = v25;
    v48 = v26;
    v49 = v27;
    sub_1B0CA286C(sub_1B0CA78E4, v41, sub_1B0CA7A28, v38, 0, 0);

    sub_1B03B5C80(v19, v17, &qword_1EB6E6010, "pG\b");
    if ((*(v9 + 48))(v17, 1, v8) != 1)
    {
      sub_1B0CA806C(v17, v12);
      sub_1B0398EFC(a6 + v37, &qword_1EB6E5F38, &qword_1B0EDEBC0);
      sub_1B0CA806C(v12, a6);

      v28 = &qword_1EB6E6010;
      v29 = "pG\b";
      v30 = v19;
      return sub_1B0398EFC(v30, v28, v29);
    }

    sub_1B0398EFC(v17, &qword_1EB6E6010, "pG\b");
    sub_1B0CA8018();
    swift_allocError();
    swift_willThrow();
  }

  sub_1B0398EFC(v19, &qword_1EB6E6010, "pG\b");
  v28 = &qword_1EB6E5F38;
  v29 = &qword_1B0EDEBC0;
  v30 = a6 + v37;
  return sub_1B0398EFC(v30, v28, v29);
}

uint64_t sub_1B0CA743C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ReplacementNode();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  *a2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v19 = *(a3 + 16);
  v40 = a3;
  v42 = a1;
  if (v19 && (v20 = sub_1B0CA7EF4(v17), (v21 & 1) != 0))
  {
    v22 = v20;
    v23 = *(a3 + 56);
    v24 = type metadata accessor for PartReplacement();
    v25 = *(v24 - 8);
    sub_1B0CA81D4(v23 + *(v25 + 72) * v22, v12, type metadata accessor for PartReplacement);
    (*(v25 + 56))(v12, 0, 1, v24);
  }

  else
  {
    v24 = type metadata accessor for PartReplacement();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  }

  v26 = v43;
  v27 = *(v13 + 24);
  type metadata accessor for PartReplacement();
  v28 = *(v24 - 8);
  (*(v28 + 56))(&v16[v27], 1, 1, v24);
  v29 = v42;
  v30 = *(v42 + 1);
  *v16 = *v42;
  *(v16 + 1) = v30;
  v31 = *(v29 + 32);
  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  *(v16 + 4) = v31;
  v16[56] = 2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CA80D0(v12, &v16[v27]);
  v32 = MEMORY[0x1E69E7CC0];
  *&v16[*(v13 + 28)] = MEMORY[0x1E69E7CC0];
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v17, v32))
  {
    sub_1B0398EFC(v26, &qword_1EB6E6010, "pG\b");
    sub_1B0CA81D4(v16, v26, type metadata accessor for ReplacementNode);
    (*(v41 + 56))(v26, 0, 1, v13);
  }

  else if (!(*(v41 + 48))(v26, 1, v13))
  {
    v33 = (2 * *(v17 + 16)) | 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CA7A30(v16, v17, v17 + 32, 0, v33);
    sub_1B0CA3980(v29);
  }

  v34 = v44;
  sub_1B03B5C80(&v16[v27], v44, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v35 = 1;
  v36 = (*(v28 + 48))(v34, 1, v24);
  v37 = sub_1B0398EFC(v34, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  if (v36 == 1)
  {
    MEMORY[0x1EEE9AC00](v37);
    *(&v39 - 2) = v16;
    if (sub_1B0CA6F68(sub_1B0CA8140, (&v39 - 4), v40))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }
  }

  sub_1B0CA8178(v16);
  return v35;
}

uint64_t sub_1B0CA7904(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7 = *a6;
  if (*a6 && *(result + 32) >> 59 == 9)
  {
    v16 = *result;
    v17 = *(result + 16);
    v18 = *(result + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0C7EB6C();
    if (v11 != 2)
    {
      v12 = v9;
      v13 = v10;
      v14 = v11;
      v15 = type metadata accessor for ReplacementNode();
      if (!(*(*(v15 - 8) + 48))(a7, 1, v15))
      {
        sub_1B0CA7CA0(v12, v13, v14 & 1, v7, v7 + 32, 0, (2 * *(v7 + 16)) | 1);
      }
    }
  }

  return result;
}

uint64_t sub_1B0CA7A30(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, size_t a5)
{
  v11 = type metadata accessor for ReplacementNode();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return result;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v17, a4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = a4 + 1;
  v19 = v17 == a4 + 1;
  if (__OFSUB__(v17, a4 + 1))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    a5 = sub_1B0C81860(0, a4, 1, a5);
    goto LABEL_10;
  }

  a4 = *(a3 + 8 * a4);
  if (!v19)
  {
    if (a4 >= 1)
    {
      v22 = *(result + 28);
      v23 = *(v5 + v22);
      if (a4 <= v23[2])
      {
        v25 = a4 - 1;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C785C8(v23);
          v23 = result;
        }

        v26 = v5;
        if (a4 > v23[2])
        {
          __break(1u);
        }

        else
        {
          v24 = v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25;
          sub_1B0CA7A30(a1, a2, a3, v18, a5);
          result = swift_unknownObjectRelease();
          *(v26 + v22) = v23;
        }
      }
    }

    return result;
  }

  a3 = *(result + 28);
  a5 = *(v5 + a3);
  if (*(a5 + 16) + 1 != a4)
  {
    return result;
  }

  sub_1B0CA81D4(a1, v16, type metadata accessor for ReplacementNode);
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  v21 = *(a5 + 16);
  v20 = *(a5 + 24);
  if (v21 >= v20 >> 1)
  {
    a5 = sub_1B0C81860(v20 > 1, v21 + 1, 1, a5);
  }

  swift_unknownObjectRelease();
  *(a5 + 16) = v21 + 1;
  result = sub_1B0CA806C(v16, a5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21);
  *(v5 + a3) = a5;
  return result;
}

uint64_t sub_1B0CA7CA0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
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
          v27 = sub_1B0C785C8(v9);
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
            sub_1B0CA7CA0(result, v23, v22 & 1, v7, v13, v18, v24);
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
        v9 = sub_1B0C785C8(v9);
        goto LABEL_10;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B0CA7EF4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v6, a1);
  v4 = sub_1B0E46CB8();

  return sub_1B0CA7F60(a1, v4);
}

unint64_t sub_1B0CA7F60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

unint64_t sub_1B0CA8018()
{
  result = qword_1EB6E6018;
  if (!qword_1EB6E6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6018);
  }

  return result;
}

uint64_t sub_1B0CA806C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplacementNode();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CA80D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CA8178(uint64_t a1)
{
  v2 = type metadata accessor for ReplacementNode();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CA81D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CA824C(char a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, void (*a6)(char *, char *), uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v93 = *MEMORY[0x1E69E9840];
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

  sub_1B0CB7368(a9, v13, a8, v86);
  v80 = 0u;
  v81 = 0u;
  v82 = 0x1FFFFFFF0ELL;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v14 = sub_1B0CB8540();
  if (v17 == 2)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v22 = 0;
  }

  else
  {
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v63 = a3;
    v64 = a4;
    v76 = 0;
    v69 = 0;
    v70 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v27 = 0;
    do
    {
      sub_1B0CB7ED8(v23, v24, v25, v26 & 1, &v87);
      v32 = v87;
      v31 = v88;
      v34 = v89;
      v33 = v90;
      v35 = v91;
      v36 = v92;
      if (v91 >> 59 == 9)
      {
        v75 = v26;
        v37 = v91;
        v38 = v25;
        v39 = v92;
        v40 = v24;
        v41 = v89;
        v42 = v87;
        v43 = v88;
        v44 = v90;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v33 = v44;
        v31 = v43;
        v32 = v42;
        v34 = v41;
        v24 = v40;
        v36 = v39;
        v25 = v38;
        v35 = v37;
        v26 = v75;
        v68 = v31;
        v69 = v32;
        v66 = v33;
        v67 = v34;
        v70 = v35;
        v76 = v36;
      }

      if (!(v27 & 1 | (v23 == 0)) && a9 && &v23[-a9] >= 1)
      {
        v45 = v33;
        sub_1B0C92F04(a8, a1, 1, a6, a7, 0, &v23[-a9], a9, a10);
        v33 = v45;
      }

      if ((v82 & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*(&v83 + 1))
        {
          v46 = (v84 - *(&v83 + 1));
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
        sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v46, *(&v83 + 1), v84);
        sub_1B0398EFC(&v80, &qword_1EB6E5D38, &qword_1B0EE0240);
        v33 = v47;
      }

      *&v80 = v32;
      *(&v80 + 1) = v31;
      *&v81 = v34;
      *(&v81 + 1) = v33;
      v82 = v35;
      *&v83 = v36;
      *(&v83 + 1) = v23;
      *&v84 = v24;
      *(&v84 + 1) = v25;
      v85 = v26 & 1;
      v23 = sub_1B0CB8540();
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = 1;
    }

    while (v30 != 2);
    a4 = v64;
    v22 = v76;
    v19 = v68;
    v18 = v69;
    v21 = v66;
    v20 = v67;
    a3 = v63;
  }

  if ((v82 & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
  {
LABEL_36:
    if (a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v48 = a3;
  v49 = *(&v83 + 1);
  v50 = v84;
  if (v82 >> 59)
  {
    sub_1B0398EFC(&v80, &qword_1EB6E5D38, &qword_1B0EE0240);
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
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v52, v49, v50);
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
    sub_1B0C70174(a1, a2, a6);
    goto LABEL_38;
  }

  if (a2)
  {
    if (*(&v83 + 1))
    {
      v51 = (v84 - *(&v83 + 1));
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

    sub_1B03B5C80(&v80, v77, &qword_1EB6E5D38, &qword_1B0EE0240);
    sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v51, v49, v50);
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

    LOBYTE(v77[0]) = v53;
    v54 = v77;
    v55 = v77 + 1;
  }

  else
  {
    v54 = "\r\n";
    v55 = "";
  }

  result = (a6)(v54, v55);
  if (!a4)
  {
    goto LABEL_56;
  }

  if (v22)
  {
    v77[0] = v18;
    v77[1] = v19;
    v77[2] = v20;
    v77[3] = v21;
    v78 = v70;
    v79 = v22;

    v57 = sub_1B0C7EB6C();
    if (v59 == 2)
    {
LABEL_55:
      sub_1B03B1AF0(a4);
LABEL_56:

      goto LABEL_57;
    }

    v60 = v58;
    if ((v59 & 1) == 0)
    {
      sub_1B0CAB06C(v57, v58);
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
      sub_1B0C93CE8(0, v61, v57, v60);
LABEL_54:
      a4();

      goto LABEL_55;
    }

    goto LABEL_61;
  }

LABEL_57:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1B0CA873C(char a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v51 = a3;
  v52 = a6;
  v53 = a7;
  v12 = sub_1B0E443C8();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v23 = type metadata accessor for Message(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B5C80(a2, v22, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v27 = type metadata accessor for PartReplacement();
  if ((*(*(v27 - 8) + 48))(v22, 1, v27) == 1)
  {
    sub_1B0398EFC(v22, &qword_1EB6E5F38, &qword_1B0EDEBC0);
LABEL_8:
    v38 = v50;
    v39 = v51;
    v41 = v52;
    v40 = v53;
    sub_1B0CAA1C4(a1, a2, v51, a4, a5, v52, v53, v50);
    return sub_1B0CAA428(a1, a2, v39, a4, a5, v41, v40, v38);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0CABE88(v22, type metadata accessor for PartReplacement);
    goto LABEL_8;
  }

  v28 = sub_1B0CABD3C(v22, v26, type metadata accessor for Message);
  v29 = MEMORY[0x1EEE9AC00](v28);
  *(&v47 - 64) = a5;
  v30 = v53;
  *(&v47 - 7) = v52;
  *(&v47 - 6) = v30;
  v32 = v50;
  v31 = v51;
  *(&v47 - 5) = v50;
  *(&v47 - 32) = a1;
  *(&v47 - 3) = v31;
  MEMORY[0x1EEE9AC00](v29);
  v45 = sub_1B0CAC0D4;
  v46 = v33;
  if (!Message.isEmpty.getter())
  {
    sub_1B0CABCD4(v26, v18, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v47;
      v35 = v48;
      v36 = v49;
      v37 = (*(v48 + 32))(v47, v18, v49);
      MEMORY[0x1EEE9AC00](v37);
      *(&v47 - 4) = v34;
      *(&v47 - 3) = sub_1B0CAC08C;
      v45 = (&v47 - 4);
      sub_1B0E44328();
      (*(v35 + 8))(v34, v36);
    }

    else
    {
      v43 = *v18;
      v44 = v18[1];
      sub_1B0CAA914(*v18, v44, a5, v52, v53, v32, a1, v51, a4);
      sub_1B0391D50(v43, v44);
    }
  }

  return sub_1B0CABE88(v26, type metadata accessor for Message);
}

uint64_t sub_1B0CA8BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 == 1)
    {
      v22 = 13;
      v24 = 11565;
      v6 = &v25;
      v7 = MEMORY[0x1EEE9AC00](a1);
      MEMORY[0x1EEE9AC00](v7);
      if (v9)
      {
        if (a1)
        {
          v10 = a2 - a1;
        }

        else
        {
          v10 = 0;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

        __break(1u);
        goto LABEL_27;
      }

      v18 = v8;
      v8(&v22, &v23);
      v18(&v24, &v25);
      v18(a1, a2);
      v19 = &v24;
    }

    else
    {
      v22 = 10;
      v25 = 11565;
      v6 = &v26;
      v15 = MEMORY[0x1EEE9AC00](a1);
      MEMORY[0x1EEE9AC00](v15);
      if (v17)
      {
        if (a1)
        {
          v10 = a2 - a1;
        }

        else
        {
          v10 = 0;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
      }

      v18 = v16;
      v16(&v22, &v23);
      v18(&v25, &v26);
      v18(a1, a2);
      v19 = &v25;
    }

    v18(v19, v6);
    result = (v18)(&v22, &v23);
    goto LABEL_25;
  }

  v23 = 11565;
  v11 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v11);
  if ((v13 & 1) == 0)
  {
    v20 = v12;
    v12("\r\n", "");
    v20(&v23, &v24);
    v20(a1, a2);
    v20(&v23, &v24);
    result = (v20)("\r\n", "");
    goto LABEL_25;
  }

  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_14:
  result = sub_1B0C940AC(0, v10, a1, a2, sub_1B0CAC05C);
LABEL_25:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CA8FA4(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
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
  v44 = sub_1B0E443C8();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message.Data(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v43 - v11);
  v13 = type metadata accessor for Message(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = type metadata accessor for PartReplacement();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CABCD4(v1, v23, type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0CABD3C(v23, v19, type metadata accessor for Message);
    sub_1B0CABCD4(v19, v12, type metadata accessor for Message.Data);
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

  sub_1B0CABD3C(v23, v17, type metadata accessor for Message);
  sub_1B0CABCD4(v17, v10, type metadata accessor for Message.Data);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v10;
    v25 = v44;
    (*(v2 + 32))(v5, v24, v44);
    v26 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v2 + 8))(v5, v25);
    v27 = v17;
LABEL_6:
    sub_1B0CABE88(v27, type metadata accessor for Message);
    return v26;
  }

  sub_1B0CABE88(v17, type metadata accessor for Message);
  result = *v10;
  v30 = v10[1];
  v31 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (!v31)
    {
      goto LABEL_15;
    }

    v32 = HIDWORD(result);
    v33 = *v10;
    sub_1B0391D50(result, v30);
    v34 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      return v34;
    }

    __break(1u);
LABEL_13:
    sub_1B0CABE88(v19, type metadata accessor for Message);
    result = *v12;
    v30 = v12[1];
    v35 = v30 >> 62;
    if ((v30 >> 62) <= 1)
    {
      if (v35)
      {
        v41 = HIDWORD(result);
        v42 = *v12;
        result = sub_1B0391D50(result, v30);
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
      sub_1B0391D50(result, v30);
      return v36;
    }

    goto LABEL_20;
  }

  if (v31 != 2)
  {
LABEL_24:
    sub_1B0391D50(result, v30);
    return 0;
  }

  v38 = *(result + 16);
  v37 = *(result + 24);
  sub_1B0391D50(result, v30);
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
  sub_1B0391D50(result, v30);
  result = v39 - v40;
  if (__OFSUB__(v39, v40))
  {
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t Message.streamWithPartsReplaced(input:output:replacements:_:)(unsigned int a1, unsigned int a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  v11 = sub_1B0E443C8();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message.Data(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ReplacementNode();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
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
  v39 = sub_1B0CABC28;
  v40 = v41;
  swift_bridgeObjectRetain_n();
  if (Message.isEmpty.getter())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v45;
    sub_1B0CA70BC(0, 0, 0, 0, a3, v21);
    if (!v22)
    {
      sub_1B0CA98E8(v34, v35, v21, v36, v37, 0, 0, 0, 0);
      sub_1B0CABE88(v21, type metadata accessor for ReplacementNode);
    }
  }

  else
  {
    sub_1B0CABCD4(v5, v17, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v31;
      v23 = v32;
      v25 = v33;
      v26 = (*(v32 + 32))(v31, v17, v33);
      MEMORY[0x1EEE9AC00](v26);
      *(&v31 - 4) = v24;
      *(&v31 - 3) = sub_1B0CABC5C;
      v30 = &v38;
      sub_1B0E44328();
      (*(v23 + 8))(v24, v25);
    }

    else
    {
      v28 = *v17;
      v27 = v17[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CAABA4(v28, v27, v34, v35, a3, v36, v37);
      sub_1B0391D50(v28, v27);
    }
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B0CA97C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, void (*a8)(char *, char *), uint64_t a9)
{
  v23 = a8;
  v17 = type metadata accessor for ReplacementNode();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CA70BC(a1, a2, a3, a4, a7, v20);
  if (!v9)
  {
    sub_1B0CA98E8(a5, a6, v20, v23, a9, a1, a2, a3, a4);
    return sub_1B0CABE88(v20, type metadata accessor for ReplacementNode);
  }

  return result;
}

uint64_t sub_1B0CA98E8(unsigned int a1, unsigned int a2, uint64_t *a3, void (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v95 = a7;
  v96 = a8;
  v94 = a6;
  v97 = a2;
  v93 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for ReplacementNode();
  v82 = *(v13 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6020, &qword_1B0EE0228);
  v99 = *(v17 - 8);
  v18 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v81 = (&v76 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6028, &unk_1B0EE0230);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v98 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v76 - v27;
  v85 = *(a3 + *(v13 + 28));
  if (!*(v85 + 16))
  {
    result = sub_1B0CA873C(v97, a3 + *(v13 + 24), a4, a5, *(a3 + 8), a3[2], a3[3], a3[4]);
    goto LABEL_39;
  }

  v92 = *(a3 + 56);
  if (v92 != 2)
  {
    v32 = a3[2];
    v89 = a3[3];
    v90 = v32;
    v33 = a3[6];
    v91 = a3[5];
    v34 = a3[4];
    v87 = a9;
    v88 = v34;
    v35 = *(a3 + 8);
    v36 = type metadata accessor for PartReplacement();
    (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
    v37 = v97;
    sub_1B0CAA1C4(v97, v28, a4, a5, v35, v90, v89, v88);
    v38 = v28;
    v39 = v37;
    sub_1B0398EFC(v38, &qword_1EB6E5F38, &qword_1B0EDEBC0);
    v40 = 0;
    v41 = *(v85 + 16);
    v89 = (v99 + 48);
    v90 = (v99 + 56);
    v83 = &v101;
    v80 = &v104;
    v88 = v33;
    v42 = v33 - v91;
    if (!v91)
    {
      v42 = 0;
    }

    v79 = v42;
    v78 = &v103;
    v77 = &v102;
    v43 = v84;
    v86 = v41;
    while (1)
    {
      if (v40 == v41)
      {
        v44 = 1;
        v99 = v41;
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

        if (v40 >= *(v85 + 16))
        {
          goto LABEL_41;
        }

        v45 = v40 + 1;
        v46 = v85 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v40;
        v47 = *(v17 + 48);
        v48 = v17;
        v49 = a4;
        v50 = v16;
        v51 = v81;
        *v81 = v40;
        sub_1B0CABCD4(v46, v51 + v47, type metadata accessor for ReplacementNode);
        v52 = v51;
        v16 = v50;
        a4 = v49;
        v17 = v48;
        v43 = v84;
        sub_1B03C60A4(v52, v98, &qword_1EB6E6020, &qword_1B0EE0228);
        v44 = 0;
        v99 = v45;
      }

      v53 = v98;
      (*v90)(v98, v44, 1, v17);
      sub_1B03C60A4(v53, v43, &qword_1EB6E6028, &unk_1B0EE0230);
      if ((*v89)(v43, 1, v17) == 1)
      {
        result = sub_1B0CA8BF4(v91, v88, v92 & 1, v39);
        goto LABEL_39;
      }

      v54 = *v43;
      v55 = sub_1B0CABD3C(v43 + *(v17 + 48), v16, type metadata accessor for ReplacementNode);
      v56 = v39;
      if (v39)
      {
        v57 = v83;
        if (v56 == 1)
        {
          v100 = 13;
          v102 = 11565;
          v58 = MEMORY[0x1EEE9AC00](v55);
          *(&v76 - 64) = v59;
          *(&v76 - 7) = a4;
          *(&v76 - 6) = a5;
          *(&v76 - 5) = &v100;
          *(&v76 - 4) = v57;
          *(&v76 - 3) = &v102;
          MEMORY[0x1EEE9AC00](v58);
          v74 = sub_1B0CAC074;
          v75 = v60;
          if ((v92 & 1) == 0)
          {
            if (v54)
            {
              a4(&v100, v57);
            }

            v69 = &v102;
            v70 = v78;
            goto LABEL_36;
          }

          v61 = v79;
          if (v79 < 0)
          {
            goto LABEL_44;
          }

          v62 = sub_1B0CAC05C;
        }

        else
        {
          v100 = 10;
          v103 = 11565;
          v66 = MEMORY[0x1EEE9AC00](v55);
          *(&v76 - 64) = v67;
          *(&v76 - 7) = a4;
          *(&v76 - 6) = a5;
          *(&v76 - 5) = &v100;
          *(&v76 - 4) = v57;
          *(&v76 - 3) = &v103;
          MEMORY[0x1EEE9AC00](v66);
          v74 = sub_1B0CABDA4;
          v75 = v68;
          if ((v92 & 1) == 0)
          {
            if (v54)
            {
              a4(&v100, v57);
            }

            v69 = &v103;
            v70 = v80;
LABEL_36:
            a4(v69, v70);
            a4(v91, v88);
            v72 = &v100;
            v71 = v57;
LABEL_37:
            a4(v72, v71);
            goto LABEL_9;
          }

          v61 = v79;
          if (v79 < 0)
          {
            goto LABEL_43;
          }

          v62 = sub_1B0CABDBC;
        }
      }

      else
      {
        v101 = 11565;
        v63 = MEMORY[0x1EEE9AC00](v55);
        *(&v76 - 64) = v64;
        *(&v76 - 7) = a4;
        *(&v76 - 6) = a5;
        *(&v76 - 5) = "\r\n";
        *(&v76 - 4) = "";
        *(&v76 - 3) = &v101;
        MEMORY[0x1EEE9AC00](v63);
        v74 = sub_1B0CAC074;
        v75 = v65;
        if ((v92 & 1) == 0)
        {
          if (v54)
          {
            a4("\r\n", "");
          }

          a4(&v101, v77);
          a4(v91, v88);
          v71 = "";
          v72 = "\r\n";
          goto LABEL_37;
        }

        v61 = v79;
        if (v79 < 0)
        {
          goto LABEL_42;
        }

        v62 = sub_1B0CAC05C;
      }

      sub_1B0C940AC(0, v61, v91, v88, v62);
LABEL_9:
      v39 = v97;
      sub_1B0CA98E8(v93, v97, v16, a4, a5, v94, v95, v96, v87);
      result = sub_1B0CABE88(v16, type metadata accessor for ReplacementNode);
      v41 = v86;
      v40 = v99;
      if (v9)
      {
        goto LABEL_39;
      }
    }
  }

  v29 = *a3;
  sub_1B0C8874C();
  swift_allocError();
  *v30 = v29;
  swift_willThrow();
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_39:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CAA1C4(char a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v26 - v17;
  sub_1B03B5C80(a2, &v26 - v17, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v19 = type metadata accessor for PartReplacement();
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_1B0398EFC(v18, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0CABE88(v18, type metadata accessor for PartReplacement);
    if (EnumCaseMultiPayload != 1)
    {
      v24 = 0;
      return sub_1B0CA824C(a1, v24, 1, 0, 0, a3, v27, a5, a6, a7, a8);
    }
  }

  v21 = sub_1B0CA21F0(a5, a6, a7, a8);
  if (v21)
  {
    v23 = v22 == v21;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return sub_1B0CA824C(a1, v24, 1, 0, 0, a3, v27, a5, a6, a7, a8);
}

uint64_t sub_1B0CAA380(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a3 & 1) == 0)
  {
    a4(a6, a7);
  }

  a4(a8, a9);
  a4(a1, a2);
  return (a4)(a6, a7);
}

char *sub_1B0CAA428(char a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v51 = a3;
  v52 = a5;
  v53 = a4;
  v12 = sub_1B0E443C8();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v23 = type metadata accessor for Message(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B5C80(a2, v22, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v27 = type metadata accessor for PartReplacement();
  if ((*(*(v27 - 8) + 48))(v22, 1, v27) == 1)
  {
    sub_1B0398EFC(v22, &qword_1EB6E5F38, &qword_1B0EDEBC0);
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
          return sub_1B0C92F04(v52, a1, 0, v31, v53, 0, v28, v29, v30);
        }

        __break(1u);
      }

      __break(1u);
LABEL_19:
      __break(1u);
      result = (*(a8 + 8))(v27, &qword_1B0EDEBC0);
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
      return sub_1B0C92F04(v52, a1, 0, v31, v53, 0, v28, v29, v30);
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0CABE88(v22, type metadata accessor for PartReplacement);
    if (a6)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v33 = sub_1B0CABD3C(v22, v26, type metadata accessor for Message);
  v34 = MEMORY[0x1EEE9AC00](v33);
  *(&v47 - 64) = v52;
  v35 = v50;
  *(&v47 - 7) = a6;
  *(&v47 - 6) = v35;
  *(&v47 - 5) = a8;
  v36 = a1;
  *(&v47 - 32) = a1;
  v37 = v51;
  *(&v47 - 3) = v51;
  MEMORY[0x1EEE9AC00](v34);
  v45 = sub_1B0CABEE8;
  v46 = v38;
  if (!Message.isEmpty.getter())
  {
    sub_1B0CABCD4(v26, v18, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = (*(v48 + 32))(v47, v18, v49);
      MEMORY[0x1EEE9AC00](v42);
      *(&v47 - 4) = v39;
      *(&v47 - 3) = sub_1B0CAC08C;
      v45 = (&v47 - 4);
      sub_1B0E44328();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v44 = *v18;
      v43 = v18[1];
      sub_1B0CAA914(v44, v43, v52, a6, v50, a8, v36, v37, v53);
      sub_1B0391D50(v44, v43);
    }
  }

  return sub_1B0CABE88(v26, type metadata accessor for Message);
}

char *sub_1B0CAA914(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(char *, char *), uint64_t a9)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v38, 0, 14);
      v35 = v38;
      v15 = a3;
      v16 = a7;
      v17 = a8;
      v18 = a9;
      v14 = 0;
      goto LABEL_32;
    }

    v36 = &v35;
    v37 = v9;
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = sub_1B0E42A98();
    if (v21)
    {
      v22 = sub_1B0E42AC8();
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

    a1 = sub_1B0E42AB8();
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
    v38[0] = a1;
    LOWORD(v38[1]) = a2;
    BYTE2(v38[1]) = BYTE2(a2);
    BYTE3(v38[1]) = BYTE3(a2);
    v14 = BYTE6(a2);
    BYTE4(v38[1]) = BYTE4(a2);
    BYTE5(v38[1]) = BYTE5(a2);
    v35 = (v38 + BYTE6(a2));
    v15 = a3;
    v16 = a7;
    v17 = a8;
    v18 = a9;
LABEL_32:
    result = sub_1B0C92F04(v15, v16, 0, v17, v18, 0, v14, v38, v35);
    v34 = *MEMORY[0x1E69E9840];
    return result;
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

  v36 = &v35;
  v37 = v9;
  v21 = sub_1B0E42A98();
  if (v21)
  {
    v29 = sub_1B0E42AC8();
    if (__OFSUB__(v27, v29))
    {
      goto LABEL_38;
    }

    v21 += v27 - v29;
  }

  v30 = sub_1B0E42AB8();
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

  result = sub_1B0C92F04(a3, a7, 0, a8, a9, 0, v26, v21, v31);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CAABA4(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, void (*a6)(char *, char *), uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a3;
  v46 = a4;
  v49[2] = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for ReplacementNode();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v45 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v45 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v45 - v22);
  v24 = a2 >> 62;
  swift_bridgeObjectRetain_n();
  if ((a2 >> 62) <= 1)
  {
    if (!v24)
    {
      v49[0] = a1;
      LOWORD(v49[1]) = a2;
      BYTE2(v49[1]) = BYTE2(a2);
      BYTE3(v49[1]) = BYTE3(a2);
      BYTE4(v49[1]) = BYTE4(a2);
      BYTE5(v49[1]) = BYTE5(a2);
      swift_bridgeObjectRetain_n();
      sub_1B0CA70BC(0, BYTE6(a2), v49, v49 + BYTE6(a2), a5, v21);
      if (!v7)
      {
        sub_1B0CA98E8(v45, v46, v21, v47, v48, 0, BYTE6(a2), v49, v49 + BYTE6(a2));
        v25 = v21;
LABEL_42:
        sub_1B0CABE88(v25, type metadata accessor for ReplacementNode);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (a1 >> 32 >= a1)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_bridgeObjectRetain_n();
      v37 = sub_1B0E42A98();
      if (v37)
      {
        v38 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v38))
        {
          goto LABEL_49;
        }

        v37 += a1 - v38;
      }

      v39 = sub_1B0E42AB8();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CA70BC(0, v41, v37, v42, a5, v18);
        if (!v7)
        {
          sub_1B0CA98E8(v45, v46, v18, v47, v48, 0, v41, v37, v42);
          v36 = v18;
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_bridgeObjectRetain_n();
    v28 = sub_1B0E42A98();
    if (v28)
    {
      v29 = sub_1B0E42AC8();
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
      v32 = sub_1B0E42AB8();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CA70BC(0, v34, v28, v35, a5, v15);
        if (!v7)
        {
          sub_1B0CA98E8(v45, v46, v15, v47, v48, 0, v34, v28, v35);
          v36 = v15;
LABEL_38:
          sub_1B0CABE88(v36, type metadata accessor for ReplacementNode);
        }

LABEL_39:
        swift_bridgeObjectRelease_n();
        goto LABEL_43;
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

  memset(v49, 0, 14);
  swift_bridgeObjectRetain_n();
  sub_1B0CA70BC(0, 0, v49, v49, a5, v23);
  if (!v7)
  {
    sub_1B0CA98E8(v45, v46, v23, v47, v48, 0, 0, v49, v49);
    v25 = v23;
    goto LABEL_42;
  }

LABEL_43:
  result = swift_bridgeObjectRelease_n();
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B0CAB06C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1B03B7A3C(a2 - a1, 0);
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

uint64_t sub_1B0CAB0E8(char a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, void (*a6)(char *, char *), uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, char a13, uint64_t a14, uint64_t (*a15)(char *, char *), char *a16)
{
  v91 = *MEMORY[0x1E69E9840];
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

  sub_1B0CB7368(a9, v19, a8, v84);
  v81 = 0u;
  v82 = 0u;
  *&v83[0] = 0x1FFFFFFF0ELL;
  memset(v83 + 8, 0, 33);
  v20 = sub_1B0CB8540();
  if (v23 == 2)
  {
    v24 = 0;
    v66 = 0uLL;
    v67 = 0;
    v25 = 0;
    goto LABEL_40;
  }

  v26 = v20;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v61 = a4;
  v62 = a3;
  v72 = 0;
  v64 = 0;
  v65 = 0;
  v67 = 0;
  v66 = 0uLL;
  v30 = 0;
  do
  {
    sub_1B0CB7ED8(v26, v27, v28, v29 & 1, &v85);
    v34 = v86;
    v73 = v85;
    v35 = v87;
    v36 = v88;
    v37 = v89;
    v38 = v90;
    if (v89 >> 59 == 9)
    {
      v39 = v88;
      v40 = v87;
      v41 = v86;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v34 = v41;
      v35 = v40;
      v36 = v39;
      *&v66 = v73;
      *(&v66 + 1) = v34;
      v67 = v35;
      v64 = v39;
      v65 = v37;
      v72 = v38;
    }

    if (!(v30 & 1 | (v26 == 0)) && a9 && &v26[-a9] >= 1)
    {
      v42 = v34;
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, &v26[-a9], a9, a10);
      v34 = v42;
    }

    if ((*&v83[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
    {
      if (*&v83[1])
      {
        v43 = (*(&v83[1] + 1) - *&v83[1]);
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
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v43, *&v83[1], *(&v83[1] + 1));
      sub_1B0398EFC(&v81, &qword_1EB6E5D38, &qword_1B0EE0240);
      v34 = v44;
    }

    *&v81 = v73;
    *(&v81 + 1) = v34;
    *&v82 = v35;
    *(&v82 + 1) = v36;
    *&v83[0] = v37;
    *(&v83[0] + 1) = v38;
    *&v83[1] = v26;
    *(&v83[1] + 1) = v27;
    *&v83[2] = v28;
    BYTE8(v83[2]) = v29 & 1;
    v26 = sub_1B0CB8540();
    v27 = v31;
    v28 = v32;
    v29 = v33;
    v30 = 1;
  }

  while (v33 != 2);
  if ((*&v83[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
  {
    v25 = v64;
    v45 = v65;
    v46 = v72;
    v18 = a16;
    if (!v72)
    {
      v24 = v65;
      a4 = v61;
      a3 = v62;
LABEL_40:
      LOBYTE(v77) = a13;
      a15("Content-Type", "");
      a15(": ", "");
      *(&v77 + 1) = 14;
      sub_1B0C6ECE0(&v77, a12, a15, v18, a14, v76);
      sub_1B0C72700(a13, a15);
      v46 = 0;
      v47 = v76[0];
      v45 = v24;
      if (a3)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v47 = 0;
    a4 = v61;
    goto LABEL_37;
  }

  v48 = v83[1];
  a4 = v61;
  v25 = v64;
  v45 = v65;
  v46 = v72;
  if (!(*&v83[0] >> 59))
  {
    if ((v62 & 1) == 0 || !a2)
    {
      if (v72)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (v72)
    {
      v79 = v83[0];
      v80[0] = v83[1];
      *(v80 + 9) = *(&v83[1] + 9);
      v77 = v81;
      v78 = v82;
      sub_1B03B5C80(&v77, v76, &qword_1EB6E5D40, &qword_1B0EE0250);
      v47 = 0;
    }

    else
    {
      v74[0] = a13;
      v79 = v83[0];
      v80[0] = v83[1];
      *(v80 + 9) = *(&v83[1] + 9);
      v77 = v81;
      v78 = v82;
      sub_1B03B5C80(&v77, v76, &qword_1EB6E5D40, &qword_1B0EE0250);
      a15("Content-Type", "");
      a15(": ", "");
      v75 = 14;
      sub_1B0C6ECE0(v74, a12, a15, a16, a14, v76);
      sub_1B0C72700(a13, a15);
      v47 = v76[0];
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
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v50, v48, *(&v48 + 1));
      goto LABEL_48;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_1B0398EFC(&v81, &qword_1EB6E5D38, &qword_1B0EE0240);
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

  sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v49, v48, *(&v48 + 1));
  if (v72)
  {
LABEL_34:
    v47 = 0;
    goto LABEL_37;
  }

LABEL_36:
  LOBYTE(v77) = a13;
  a15("Content-Type", "");
  a15(": ", "");
  *(&v77 + 1) = 14;
  sub_1B0C6ECE0(&v77, a12, a15, a16, a14, v76);
  sub_1B0C72700(a13, a15);
  v47 = v76[0];
LABEL_37:
  if ((v62 & 1) == 0)
  {
LABEL_41:
    sub_1B0C70174(a1, a2, a6);
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

    LOBYTE(v77) = v51;
    v52 = &v77;
    v53 = &v77 + 1;
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

  if (!v47)
  {
    if (!v46)
    {
      goto LABEL_59;
    }

    v77 = v66;
    *&v78 = v67;
    *(&v78 + 1) = v25;
    LOBYTE(v79) = v45;
    *(&v79 + 1) = v46;

    v56 = sub_1B0C7EB6C();
    if (v58 == 2)
    {
      goto LABEL_70;
    }

    v59 = v57;
    if ((v58 & 1) == 0)
    {
      sub_1B0CAB06C(v56, v57);
      goto LABEL_69;
    }

    if (v56)
    {
      v60 = v57 - v56;
    }

    else
    {
      v60 = 0;
    }

    if ((v60 & 0x8000000000000000) == 0)
    {
      sub_1B0C93CE8(0, v60, v56, v59);
LABEL_69:
      a4();

LABEL_70:
      sub_1B03B1AF0(a4);
      goto LABEL_58;
    }

LABEL_75:
    __break(1u);
  }

  (a4)(v47);
  sub_1B03B1AF0(a4);
LABEL_57:

LABEL_58:

LABEL_59:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s9IMAP2MIME15PartReplacementO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for PartReplacement();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6030, &qword_1B0EE0248);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v29[-v20];
  v23 = *(v22 + 56);
  sub_1B0CABCD4(a1, &v29[-v20], type metadata accessor for PartReplacement);
  sub_1B0CABCD4(a2, &v21[v23], type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0CABCD4(v21, v17, type metadata accessor for PartReplacement);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = sub_1B0CABD3C(&v21[v23], v10, type metadata accessor for Message);
      MEMORY[0x1EEE9AC00](v27);
      *&v29[-16] = v10;
      v25 = sub_1B0C9A9DC(sub_1B0CA1F44, &v29[-32]);
      sub_1B0CABE88(v10, type metadata accessor for Message);
      v26 = v17;
      goto LABEL_6;
    }

LABEL_8:
    sub_1B0CABE88(v17, type metadata accessor for Message);
    sub_1B0398EFC(v21, &qword_1EB6E6030, &qword_1B0EE0248);
    v25 = 0;
    return v25 & 1;
  }

  sub_1B0CABCD4(v21, v14, type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v14;
    goto LABEL_8;
  }

  v24 = sub_1B0CABD3C(&v21[v23], v7, type metadata accessor for Message);
  MEMORY[0x1EEE9AC00](v24);
  *&v29[-16] = v7;
  v25 = sub_1B0C9A9DC(sub_1B0C9B118, &v29[-32]);
  sub_1B0CABE88(v7, type metadata accessor for Message);
  v26 = v14;
LABEL_6:
  sub_1B0CABE88(v26, type metadata accessor for Message);
  sub_1B0CABE88(v21, type metadata accessor for PartReplacement);
  return v25 & 1;
}

uint64_t type metadata accessor for PartReplacement()
{
  result = qword_1EB6DB918;
  if (!qword_1EB6DB918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0CABC74()
{
  result = type metadata accessor for Message(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CABCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CABD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CABDBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0CABDE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0CABE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CABF3C(uint64_t result, uint64_t a2)
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

uint64_t sub_1B0CABFA0(uint64_t a1, uint64_t a2)
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

void sub_1B0CAC0EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
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

  v22 = 0;
  v23 = v7;
  v24 = a3;
  if (!v7)
  {
LABEL_43:
    sub_1B0CB1AD4(a2);
    return;
  }

  v12 = 0;
  while (v12 < v6)
  {
    v15 = *(a3 + v12);
    if (v15 == 61)
    {
      sub_1B0CAC38C(&v26);
      if (v27 != 2)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        sub_1B0CB1AD4(a2);

        v13 = sub_1B0CAC944(&v29, a5);
        MEMORY[0x1B2726E80](v13);

        *a6 = 1;
        v14 = v22;
        v6 = v23;
        goto LABEL_8;
      }

      v12 = v22;
      v6 = v23;
    }

    v14 = v6;
    if (v12 != v6)
    {
      if (v12 >= v6)
      {
        goto LABEL_45;
      }

      v16 = a4 - v24;
      if (!v24)
      {
        v16 = 0;
      }

      if (v12 < 0 || v12 >= v16)
      {
        goto LABEL_46;
      }

      v14 = v12 + 1;
      v22 = v12 + 1;
    }

    if (*a6 > 1u)
    {
      if (*a6 == 2)
      {
        if (v15 >= 0x21)
        {
          *a6 = 0;
          v19 = a1[1];
          v18 = a1[2];
          if (v18 >= v19)
          {
            goto LABEL_48;
          }

          v20 = *a1;
          *(*a1 + v18) = 32;
          a1[2] = v18 + 1;
          if (v18 + 1 >= v19)
          {
            goto LABEL_50;
          }

          *(v20 + v18 + 1) = v15;
          a1[2] = v18 + 2;
        }
      }

      else if (v15 >= 0x21)
      {
        *a6 = 0;
        v21 = a1[2];
        if (v21 >= a1[1])
        {
          goto LABEL_49;
        }

LABEL_36:
        *(*a1 + v21) = v15;
        a1[2] = v21 + 1;
      }
    }

    else if (*a6)
    {
      if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
      {
        if (v15 < 0x21)
        {
          goto LABEL_8;
        }

        v21 = a1[2];
        if (v21 >= a1[1])
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
      if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
      {
        if (v15 < 0x21)
        {
          goto LABEL_8;
        }

        v21 = a1[2];
        if (v21 >= a1[1])
        {
          goto LABEL_52;
        }

        goto LABEL_36;
      }

      v17 = a1[2];
      if (v17 >= a1[1])
      {
        goto LABEL_47;
      }

      *(*a1 + v17) = 32;
      a1[2] = v17 + 1;
      *a6 = 3;
    }

LABEL_8:
    a3 = v24;
    v12 = v14;
    if (v14 == v6)
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

void sub_1B0CAC38C(void *a1@<X8>)
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

int8x8_t *sub_1B0CAC5D0@<X0>(int8x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, int8x8_t **a6@<X8>)
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
  result = sub_1B0CB2450(*a3, a3[1], 0, result, a2, 0, a4);
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

    result = sub_1B0CB31A4("utf-8", a4);
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
    MEMORY[0x1EEE9AC00](v16);
    result = sub_1B0C78104(v14, a4, a5);
    if (v6)
    {

      result = 0;
      v10 = 0;
    }

    a6 = v13;
    goto LABEL_18;
  }

  v17 = sub_1B0433338(0, 0, v8, a2);
  result = sub_1B0433338(0, v9, v8, a2);
  if (__OFADD__(v17, result))
  {
    __break(1u);
  }

  else if (result + v17 >= v17)
  {
    result = sub_1B0E44C68();
LABEL_14:
    a6 = v13;
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

int8x8_t *sub_1B0CAC788(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
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
    v12 = sub_1B0CA6950(0, v10, result, a2, a3, a4);
    if (!v6)
    {
      if ((v14 & 1) == 0)
      {
        sub_1B0CAC5D0(v12, v13, a5, a6, sub_1B0CACFD8, &v15);

        return v15;
      }

      sub_1B0CACF54();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0CAC868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = sub_1B0C6549C(a3, a4, a1, a2, 0);
  if (!v7)
  {
    if ((v13 & 1) == 0)
    {
      sub_1B0CAC5D0(v11, v12, a5, a6, sub_1B0CACFA8, &v15);

      *a7 = v15;
      return result;
    }

    sub_1B0CACF54();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1B0CAC944(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
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
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v17 = sub_1B0C6549C(v4, v5, &v29 - v16, &v29 + v7 - v16, 0);
          if (v19)
          {
            sub_1B0CACF54();
            v22 = swift_allocError();
            swift_willThrow();
            swift_willThrow();
          }

          else
          {
            sub_1B0CAC5D0(v17, v18, a1, a2, sub_1B0CACFA8, &v30);
            v13 = v30;
            v25 = v31;

            if (v25)
            {
              goto LABEL_11;
            }
          }

LABEL_27:
          *&v32 = 0;
          *(&v32 + 1) = 0xE000000000000000;
          MEMORY[0x1B2726D20](v6);
          if (!v4 || v5 == v4)
          {
            goto LABEL_34;
          }

          v21 = *(&v32 + 1);
          v20 = v32;
          do
          {
            if (*v4 - 1 <= 0x7D)
            {
              v30 = v20;
              v31 = v21;
              sub_1B0E44C58();
              v20 = v30;
              v21 = v31;
            }

            ++v4;
          }

          while (v4 != v5);
          goto LABEL_33;
        }

        v28 = swift_slowAlloc();

        sub_1B0CAC868(v28, v28 + v7, v4, v5, a1, a2, &v32);
        MEMORY[0x1B272C230](v28, -1, -1);
LABEL_46:

        if (*(&v32 + 1))
        {
          v13 = v32;
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
    v26 = swift_slowAlloc();

    v13 = sub_1B0CAC788(v26, v26 + v7, v4, v5, a1, a2);
    v14 = v27;
    MEMORY[0x1B272C230](v26, -1, -1);
    goto LABEL_10;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1B0CA6950(0, v7, &v29 - v9, &v29 + v7 - v9, v4, v5);
  if ((v12 & 1) == 0)
  {
    sub_1B0CAC5D0(v10, v11, a1, a2, sub_1B0CACFD8, &v32);
    v14 = *(&v32 + 1);
    v13 = v32;
LABEL_10:

    if (v14)
    {
LABEL_11:

LABEL_35:
      v23 = *MEMORY[0x1E69E9840];
      return v13;
    }

    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    MEMORY[0x1B2726D20](v6);
    if (!v4 || v5 == v4)
    {
LABEL_34:

      v13 = v32;
      goto LABEL_35;
    }

    v21 = *(&v32 + 1);
    v20 = v32;
    do
    {
      if (*v4 - 1 <= 0x7D)
      {
        v30 = v20;
        v31 = v21;
        sub_1B0E44C58();
        v20 = v30;
        v21 = v31;
      }

      ++v4;
    }

    while (v4 != v5);
LABEL_33:
    *&v32 = v20;
    *(&v32 + 1) = v21;
    goto LABEL_34;
  }

  sub_1B0CACF54();
  swift_allocError();
  swift_willThrow();
  swift_willThrow();
  __break(1u);

  result = MEMORY[0x1B272C230](&v29, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B0CACDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v6 = a2 - a1;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1B2726D20](v7);
  v14 = 0;
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
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v16[0] = &v13 - v10;
    v16[1] = v6;
    v16[2] = 0;
    sub_1B0CAC0EC(v16, v15, a1, a2, a3, &v14);
    goto LABEL_12;
  }

  v9 = swift_slowAlloc();

  sub_1B0CB1ED8(v9, v6, v15, a1, a2, a3, &v14);
  MEMORY[0x1B272C230](v9, -1, -1);
LABEL_12:

  result = v15[0];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B0CACF54()
{
  result = qword_1EB6E6038;
  if (!qword_1EB6E6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6038);
  }

  return result;
}

uint64_t sub_1B0CACFF0(uint64_t a1, char **a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v65 = *(v4 - 17);
      v67 = *(v4 - 33);
      v9 = sub_1B0CAFDAC(*(v4 - 33), *(v4 - 25));
      if (v11 != 2)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1B0C80AF0(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_1B0C80AF0((v15 > 1), v16 + 1, 1, v3);
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
          sub_1B0CAEF80(v25, v26, &v73);
          if ((v76 & 1) == 0)
          {
            v63 = v73;
            v51 = v74;
            v50 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
            v30 = swift_allocObject();
            *(v30 + 1) = xmmword_1B0EC1E70;
            *(v30 + 4) = v51;
            *(v30 + 5) = v50;
            *(v30 + 24) = 0;
            v52 = sub_1B0C7EDA4(v23, v22);
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
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_1B0C8106C(0, *(v56 + 2) + 1, 1, v56);
              *a2 = v56;
            }

            v59 = *(v56 + 2);
            v58 = *(v56 + 3);
            if (v59 >= v58 >> 1)
            {
              v56 = sub_1B0C8106C((v58 > 1), v59 + 1, 1, v56);
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
        v29 = swift_allocObject();
        v30 = v29;
        *(v29 + 16) = xmmword_1B0EC1E70;
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
        v33 = sub_1B0C7EDA4(v23, v22);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1B0C8106C(0, *(v37 + 2) + 1, 1, v37);
          *a2 = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1B0C8106C((v39 > 1), v40 + 1, 1, v37);
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
        v69 = MEMORY[0x1E69E7CC0];
        sub_1B0CAE608(v23, v22, v18, v3, &v70, &v69);
        v41 = v70;
        v62 = v71;
        v61 = v72;
        v30 = v69;
        v42 = sub_1B0C7EDA4(v23, v22);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1B0C8106C(0, *(v46 + 2) + 1, 1, v46);
          *a2 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_1B0C8106C((v48 > 1), v49 + 1, 1, v46);
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

uint64_t sub_1B0CAD53C(uint64_t a1, char **a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v65 = *(v4 - 17);
      v67 = *(v4 - 33);
      v9 = sub_1B0CAFDAC(*(v4 - 33), *(v4 - 25));
      if (v11 != 2)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1B0C80AF0(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_1B0C80AF0((v15 > 1), v16 + 1, 1, v3);
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
          sub_1B0CAEF80(v25, v26, &v73);
          if ((v76 & 1) == 0)
          {
            v63 = v73;
            v51 = v74;
            v50 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
            v30 = swift_allocObject();
            *(v30 + 1) = xmmword_1B0EC1E70;
            *(v30 + 4) = v51;
            *(v30 + 5) = v50;
            *(v30 + 24) = 0;
            v52 = sub_1B0C79F34(v23, v22);
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
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_1B0C81050(0, *(v56 + 2) + 1, 1, v56);
              *a2 = v56;
            }

            v59 = *(v56 + 2);
            v58 = *(v56 + 3);
            if (v59 >= v58 >> 1)
            {
              v56 = sub_1B0C81050((v58 > 1), v59 + 1, 1, v56);
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
        v29 = swift_allocObject();
        v30 = v29;
        *(v29 + 16) = xmmword_1B0EC1E70;
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
        v33 = sub_1B0C79F34(v23, v22);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1B0C81050(0, *(v37 + 2) + 1, 1, v37);
          *a2 = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1B0C81050((v39 > 1), v40 + 1, 1, v37);
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
        v69 = MEMORY[0x1E69E7CC0];
        sub_1B0CAE608(v23, v22, v18, v3, &v70, &v69);
        v41 = v70;
        v62 = v71;
        v61 = v72;
        v30 = v69;
        v42 = sub_1B0C79F34(v23, v22);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1B0C81050(0, *(v46 + 2) + 1, 1, v46);
          *a2 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_1B0C81050((v48 > 1), v49 + 1, 1, v46);
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

uint64_t sub_1B0CADA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a1;
  v29 = a4;
  v27[2] = a6;
  v10 = 0;
  v11 = 0;
  v30 = *MEMORY[0x1E69E9840];
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
        goto LABEL_30;
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
      v27[1] = v6;
      v20 = sub_1B0E44DC8();
      v18 = __OFADD__(v11, v20);
      v11 += v20;
      if (v18)
      {
        goto LABEL_28;
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
        goto LABEL_28;
      }
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v19 = sub_1B0E44DC8();
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
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v26 = swift_slowAlloc();

    sub_1B0CAE96C(v26, v26 + v11, v28, a2, a3, v29, a5);
    MEMORY[0x1B272C230](v26, -1, -1);
    goto LABEL_24;
  }

LABEL_22:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v23 = v27 - v22;

  sub_1B0CAE96C(v23, &v23[v11], v28, a2, a3, v29, a5);
  if (v6)
  {
    swift_willThrow();
LABEL_24:

    goto LABEL_26;
  }

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B0CADCDC(unint64_t a1, unint64_t a2, char *a3, char *a4, void (*a5)(char *__return_ptr, void *, char *))
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
      v19 = sub_1B0A6D6C4(result, a1, a2);
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
      v22 = sub_1B0E44E08();
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
          v21 = sub_1B0E46368();
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

    result = sub_1B0A6D6C4(result, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_29:
      if (v8 <= result >> 16)
      {
        goto LABEL_38;
      }

      result = sub_1B0E44DD8();
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

uint64_t sub_1B0CADEFC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
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

uint64_t sub_1B0CADF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void *a11, uint64_t a12)
{
  v58 = a5;
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v62 = 0;
  v63 = v14;
  v64 = a1;
  v65 = a2;
  v15 = *a3;
  v16 = *a4;
  if (*a4 < v15)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v54 = a6;
  v55 = v12;
  v17 = a11;
  v53 = a10;
  if (v15 == v16)
  {
    v18 = 0;
LABEL_60:
    v47 = (v18 + a1);
    if (!a1)
    {
      v18 = 0;
      v47 = 0;
    }

    v66 = 0;
    v67 = v18;
    v68 = a1;
    v69 = v47;
    v70 = 0;
    v48 = sub_1B0CAF08C(&v66, a7, a8, a9 & 1, v17, a12);

    *v54 = v48 & 1;

    v50 = *MEMORY[0x1E69E9840];
    return result;
  }

  v52 = a11;
  v56 = v16;
  v57 = v58 + 32;
  v19 = v15;
  while (1)
  {
    if (v15 < 0)
    {
      goto LABEL_67;
    }

    if (v19 >= *(v58 + 16))
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

    v20 = v57 + 24 * v19;
    if (*(v20 + 16) < 0)
    {
      break;
    }

    v21 = *v20;
    if (!*v20)
    {
      v23 = 0;
LABEL_18:
      v27 = MEMORY[0x1EEE9AC00](a1);
      v31 = &v51 - v30;
      v13 = 0;
      if (!v23)
      {
        goto LABEL_46;
      }

      v32 = 0;
LABEL_20:
      if (v23 < v32 + 1)
      {
        goto LABEL_65;
      }

      v33 = *(v21 + v32);
      if (v33 != 37)
      {
        ++v32;
        goto LABEL_43;
      }

      if (v32 + 1 != v23)
      {
        for (v32 += 3; v32 - v23 != 2; v32 += 2)
        {
          if (v23 < v32 - 1)
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

          if (v32 - v23 == 1)
          {
            break;
          }

          if (v23 < v32)
          {
            goto LABEL_64;
          }

          v34 = *(v21 + v32 - 2);
          v35 = *(v21 + v32 - 1);
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
            v31[v13] = v33;
            if (__OFADD__(v13++, 1))
            {
              goto LABEL_66;
            }

            if (v32 == v23)
            {
              break;
            }

            goto LABEL_20;
          }
        }
      }

      if (v13 < 0)
      {
        goto LABEL_69;
      }

LABEL_46:
      v59 = v19;
      v39 = v15;
      v40 = v29;
      v41 = v28;
      v42 = v27;
      v66 = 0;
      v67 = v13;
      v68 = v31;
      v69 = &v31[v13];
      v43 = v62;
      if (v64)
      {
        v44 = v64 + v63;
      }

      else
      {
        v44 = 0;
      }

      if (v64)
      {
        v45 = v64 + v62;
      }

      else
      {
        v45 = 0;
      }

      v60 = v45;
      v61 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
      sub_1B0C16D0C();
      sub_1B0E429B8();
      if (__OFADD__(v43, v13))
      {
        goto LABEL_70;
      }

      if (v40 < v43 + v13)
      {
        goto LABEL_71;
      }

      v14 = v40;
      v62 = v43 + v13;
      v63 = v40;
      a1 = v42;
      v64 = v42;
      v65 = v41;
      a2 = v41;
      v15 = v39;
      v19 = v59;
      goto LABEL_55;
    }

    v22 = *(v20 + 8);
    v23 = v22 - v21;
    if (v22 - v21 < 0)
    {
      goto LABEL_72;
    }

    if (v23 < 1025)
    {
      goto LABEL_18;
    }

    v24 = v14;
    v25 = a2;
    v26 = a1;
    if (swift_stdlib_isStackAllocationSafe())
    {
      a1 = v26;
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    v46 = v55;
    sub_1B0CB5000(v13, v22 - v21, v21, v22, &v62, v26, v25);
    v55 = v46;
    if (v46)
    {
      goto LABEL_77;
    }

    MEMORY[0x1B272C230](v13, -1, -1);
    a1 = v26;
    a2 = v25;
    v14 = v24;
LABEL_55:
    if (++v19 == v56)
    {
      v18 = v62;
      v17 = v52;
      if ((v62 & 0x8000000000000000) == 0)
      {
        goto LABEL_60;
      }

LABEL_75:
      __break(1u);
    }
  }

  sub_1B0E465B8();
  __break(1u);
LABEL_77:

  result = MEMORY[0x1B272C230](v13, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B0CAE440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = a5[2];
  v13 = v12 + *a5;
  if (v12)
  {
    v14 = v12 + a5[1];
    v15 = v12 + *a5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
  sub_1B0C16D0C();
  sub_1B0E429B8();
  v16 = *a5;
  result = sub_1B0433338(a1, a2, a3, a4);
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

uint64_t sub_1B0CAE540(uint64_t result, uint64_t a2)
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

uint64_t sub_1B0CAE608(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, char **a6)
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
    if ((*(a5 + 16) & 1) != 0 && (sub_1B0CAEF80(v12, v11, &v47), (v50 & 1) == 0))
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
      result = sub_1B0C81A38((v18 > 1), v19 + 1, 1, v13);
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

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
    result = sub_1B0C81A38(0, *(v13 + 2) + 1, 1, v13);
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
        if ((*(a5 + 16) & 1) != 0 && (sub_1B0CAEF80(v11, v10, &v51), (v54 & 1) == 0))
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
        v12 = sub_1B0C81A38(0, *(v12 + 2) + 1, 1, v12);
        *a6 = v12;
      }

      v41 = *(v12 + 2);
      v40 = *(v12 + 3);
      v13 = (v41 + 1);
      if (v41 >= v40 >> 1)
      {
        v12 = sub_1B0C81A38((v40 > 1), v41 + 1, 1, v12);
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

uint64_t sub_1B0CAE96C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
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
      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v12 = 0;
    v35 = MEMORY[0x1E69E7CC0];
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = sub_1B0CAEBB4(v15, v16);
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
      v22 = sub_1B0CAEBB4(v18, v17);
      v24 = v23;
      v26 = v25;

      if (v26)
      {
        goto LABEL_8;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C80BF0(0, *(v35 + 16) + 1, 1, v35);
        v35 = result;
      }

      a7 = v34;
      a6 = v33;
      v27 = v36;
      v29 = *(v35 + 16);
      v28 = *(v35 + 24);
      v30 = v37;
      if (v29 >= v28 >> 1)
      {
        result = sub_1B0C80BF0((v28 > 1), v29 + 1, 1, v35);
        v27 = v36;
        v30 = v37;
        v35 = result;
      }

      ++v12;
      *(v35 + 16) = v29 + 1;
      v31 = v35 + 40 * v29;
      *(v31 + 32) = v30;
      *(v31 + 40) = v27;
      *(v31 + 48) = v22;
      *(v31 + 56) = v24;
      *(v31 + 64) = 0;
      v10 = v32;
      if (v12 >= v38)
      {
LABEL_20:

        sub_1B0CAFFE8(v35, a6, a7);
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1B0CAEBB4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v5 = sub_1B0E44DC8();
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
  if (sub_1B0433338(*v2, v6, v8, v9) < v5)
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

  result = sub_1B0CAECE4(a1, a2, v10);
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

unint64_t sub_1B0CAECE4(unint64_t result, unint64_t a2, uint64_t a3)
{
  v22[0] = result;
  v22[1] = a2;
  if (!a3)
  {
    return result;
  }

  v5 = result;
  MEMORY[0x1EEE9AC00](result);
  v18[2] = v22;
  v18[3] = v6;
  v18[4] = v7;
  v18[5] = v6;
  result = sub_1B0CAEEDC(sub_1B0CB0B9C, v18, v5, a2);
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
      v13 = sub_1B0A6D6C4(result, v5, a2);
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
      v16 = sub_1B0E44E08();
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
          v15 = sub_1B0E46368();
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

    result = sub_1B0A6D6C4(result, v5, a2);
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

    result = sub_1B0E44DD8();
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

void *sub_1B0CAEEDC(void *(*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
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
    v7 = sub_1B0E46368();
  }

  result = a1(&v11, v7, v8);
  if (!v4)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  return result;
}

uint64_t sub_1B0CAEF80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_1B0CAF08C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (v8)
    {
      sub_1B0CB521C(*a1, v7, a6, BYTE1(v8) & 1);
      return 0;
    }

    result = sub_1B0C771DC(*a1, v7, BYTE1(v8) & 1);
LABEL_24:
    MEMORY[0x1B2726E80](result);
LABEL_25:

    return 0;
  }

  if (!v8 || v7 == v6)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
LABEL_7:
    MEMORY[0x1B2726E80](v9, v10);
    goto LABEL_25;
  }

  v13 = *(a1 + 24);
  v14 = sub_1B0CB2450(a2, a3, a4 & 1, (v8 + v6), &v7[v8], 0, a5);
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    v16 = a5[3];
    if (v16)
    {
LABEL_13:
      v17 = swift_endAccess();
      if (v16 == v15)
      {
        v9 = sub_1B0E44C68();
      }

      else
      {
        MEMORY[0x1EEE9AC00](v17);
        v9 = sub_1B0C78104(v15, a5, sub_1B0CACFA8);
      }

      v10 = v18;
      goto LABEL_7;
    }

    result = sub_1B0CB31A4("utf-8", a5);
    if (result)
    {
      v16 = result;
      a5[3] = result;
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1B0433338(v6, v7, v8, v13);
    result = MEMORY[0x1B2726D20](v19);
    if (v7 > v6)
    {
      v20 = v13 - v8;
      result = 0;
      v21 = v6;
      while ((v6 & 0x8000000000000000) == 0 && v21 < v20)
      {
        if (*(v8 + v21) - 1 <= 0x7D)
        {
          v22 = result;
          sub_1B0E44C58();
          result = v22;
        }

        if (v7 == ++v21)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CAF2F8(uint64_t result, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8, void *a9, uint64_t a10)
{
  v79 = a7;
  v78 = a6;
  v77 = a5;
  v98 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v10 = a4[2];
  if (!v10)
  {
    goto LABEL_107;
  }

  v69 = result;
  v70 = a2;
  v68 = a3;
  v80 = a10;
  v85 = a4 + 4;
  v74 = a8;
  v11 = a4;
  swift_bridgeObjectRetain_n();
  v76 = a9;
  isStackAllocationSafe = swift_retain_n();
  v13 = 0;
  v81 = 0;
  v73 = v11 + 9;
  v72 = v10 + 1;
  v67 = v11;
  v71 = v11 + 6;
  while (1)
  {
    if (v13 >= v10)
    {
      goto LABEL_120;
    }

    v14 = &v85[3 * v13];
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v14 + 8);
    if ((v17 & 0x80000000) == 0)
    {
      break;
    }

    if (v17)
    {
      v21 = v81;
      isStackAllocationSafe = sub_1B0CB521C(*v14, v14[1], v80, BYTE1(v17) & 1);
      v81 = v21;
      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v92 = 0;
      v93 = 0xE000000000000000;
      if (v16)
      {
        v23 = v15 - v16;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x1B2726D20](v23);
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
        v25 = v92;
        v26 = v93;
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
              v92 = v25;
              v93 = v26;
              break;
            }

            v27 = (v16 + 2);
            if (*(v16 + 1) - 1 < 0x7E)
            {
LABEL_24:
              v88 = v25;
              v89 = v26;
              sub_1B0E44C58();
              v25 = v88;
              v26 = v89;
            }
          }

          v16 = v27;
          if (v27 == v15)
          {
            goto LABEL_97;
          }
        }
      }

      v11 = v80;
      MEMORY[0x1B2726E80](v92, v93);

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_121;
      }
    }

LABEL_37:
    v87 = v13;
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
    v19 = &v73[3 * v13];
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
  v86 = v18;
  if (__OFSUB__(v18, v13))
  {
    goto LABEL_123;
  }

  if (v18 - v13 == 1)
  {
    v11 = v74;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = v76;

    v31 = v81;
    v32 = sub_1B0CB569C(v16, v15, v77, v78, v79 & 1, v11, v30, v80);
    v81 = v31;

    if (v32)
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

  v33 = 0;
  v34 = &v71[3 * v13];
  v35 = v18;
  v36 = v72;
  while (1)
  {
    if (v13 == v35)
    {
      if (v33 < 0)
      {
        goto LABEL_126;
      }

      v83 = v33;
      if (v33 >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v60 = v83;
          v11 = swift_slowAlloc();
          v61 = v74;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v63 = v11 + v60;
          v64 = v81;
          sub_1B0CADF88(v11, v63, &v87, &v86, v67, &v92, v77, v78, v79 & 1, v61, v62, v80);
          v81 = v64;
          if (v64)
          {
            goto LABEL_128;
          }

          MEMORY[0x1B272C230](v11, -1, -1);
          isStackAllocationSafe = v92;
          v13 = v18 - 1;
          if (__OFSUB__(v18, 1))
          {
LABEL_105:
            __break(1u);
LABEL_106:

            result = swift_bridgeObjectRelease_n();
LABEL_107:
            v65 = *MEMORY[0x1E69E9840];
            return result;
          }

          goto LABEL_95;
        }
      }

      v75 = &v67;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v41 = &v67 - v40;
      v42 = 0;
      v92 = 0;
      v93 = v43;
      v84 = v41;
      v94 = v41;
      v95 = &v41[v43];
      v82 = &v41[v43];
      if (v13 == v18)
      {
LABEL_94:
        v96[0] = 0;
        v96[1] = v42;
        v96[2] = v84;
        v96[3] = &v84[v42];
        v97 = 0;
        isStackAllocationSafe = sub_1B0CAF08C(v96, v77, v78, v79 & 1, v76, v80);
        v13 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          goto LABEL_105;
        }

LABEL_95:
        v87 = v13;
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

        v44 = &v85[3 * v13];
        if (v44[2] < 0)
        {
          goto LABEL_127;
        }

        v11 = *v44;
        if (!*v44)
        {
          break;
        }

        v45 = v44[1];
        v46 = v45 - v11;
        if (v45 - v11 < 0)
        {
          goto LABEL_119;
        }

        if (v46 < 1025 || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
        {
          goto LABEL_61;
        }

        v47 = swift_slowAlloc();
        v48 = v81;
        sub_1B0CB5000(v47, v45 - v11, v11, v45, &v92, v84, v82);
        v81 = v48;
        if (v48)
        {

          swift_bridgeObjectRelease_n();

          v66 = v47;
          goto LABEL_130;
        }

        MEMORY[0x1B272C230](v47, -1, -1);
LABEL_92:
        if (++v13 == v18)
        {
          v42 = v92;
          if ((v92 & 0x8000000000000000) != 0)
          {
            goto LABEL_125;
          }

          goto LABEL_94;
        }
      }

      v46 = 0;
LABEL_61:
      MEMORY[0x1EEE9AC00](&v67);
      v50 = &v67 - v49;
      v51 = 0;
      if (!v46)
      {
        goto LABEL_89;
      }

      v52 = 0;
LABEL_63:
      if (v46 < v52 + 1)
      {
        goto LABEL_112;
      }

      v53 = *(v11 + v52);
      if (v53 != 37)
      {
        ++v52;
        goto LABEL_86;
      }

      if (v52 + 1 == v46)
      {
LABEL_88:
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

LABEL_89:
        v58 = v10;
        v88 = 0;
        v89 = v51;
        v90 = v50;
        v91 = &v50[v51];
        v59 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
        sub_1B0C16D0C();
        v11 = &v88;
        sub_1B0E429B8();
        if (__OFADD__(v59, v51))
        {
          goto LABEL_117;
        }

        if (v83 < (v59 + v51))
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

        v92 = v59 + v51;
        v93 = v83;
        v94 = v84;
        v95 = v82;
        v10 = v58;
        goto LABEL_92;
      }

      v52 += 3;
      while (1)
      {
        if (v46 < v52 - 1)
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

        if (v52 - v46 == 1)
        {
          goto LABEL_88;
        }

        if (v46 < v52)
        {
          goto LABEL_109;
        }

        v54 = *(v11 + v52 - 2);
        v55 = *(v11 + v52 - 1);
        if ((v54 - 58) > 0xF5u)
        {
          v56 = -48;
        }

        else if ((v54 - 71) > 0xF9u)
        {
          v56 = -55;
        }

        else
        {
          if ((v54 - 103) <= 0xF9u)
          {
            goto LABEL_79;
          }

          v56 = -87;
        }

        if ((v55 - 58) > 0xF5u)
        {
          v57 = -48;
          goto LABEL_85;
        }

        if ((v55 - 71) > 0xF9u)
        {
          v57 = -55;
          goto LABEL_85;
        }

        if ((v55 - 103) >= 0xFAu)
        {
          v57 = -87;
LABEL_85:
          LOBYTE(v53) = (v55 + v57) | (16 * (v54 + v56));
LABEL_86:
          v50[v51] = v53;
          v22 = __OFADD__(v51++, 1);
          if (v22)
          {
            goto LABEL_113;
          }

          if (v52 == v46)
          {
            goto LABEL_88;
          }

          goto LABEL_63;
        }

LABEL_79:
        v52 += 2;
        if (v52 - v46 == 2)
        {
          goto LABEL_88;
        }
      }
    }

    if (v13 == --v36)
    {
      goto LABEL_110;
    }

    if (*v34 < 0)
    {
      break;
    }

    v38 = *(v34 - 2);
    v37 = *(v34 - 1);
    v34 += 12;
    --v35;
    v39 = v37 - v38;
    if (!v38)
    {
      v39 = 0;
    }

    v22 = __OFADD__(v33, v39);
    v33 += v39;
    if (v22)
    {
      goto LABEL_111;
    }
  }

LABEL_127:

  swift_bridgeObjectRelease_n();
  sub_1B0E465B8();
  __break(1u);
LABEL_128:

  swift_bridgeObjectRelease_n();

  v66 = v11;
LABEL_130:
  result = MEMORY[0x1B272C230](v66, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B0CAFCA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (a3 & 1) != 0 && *(a4 + 16) == 1 && *(a4 + 48) < 0 && (v10 = *(a4 + 32), v11 = *(a4 + 40), (sub_1B0CAE540(v10, v11)))
  {

    v12 = sub_1B0CB4EF0(v10, v11);
    v14 = sub_1B0CACDC4(v12, v13, a5);

    return v14;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1B0CAF2F8(a1, a2, a3 & 1, a4, a1, a2, a3 & 1, a4, a5, v16);

    return v16[0];
  }
}

uint64_t sub_1B0CAFDAC(uint64_t result, uint64_t a2)
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
  if (v10 == i || (result = sub_1B0433338(i, v10, result, a2), result > 8))
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

uint64_t sub_1B0CAFFE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = (a1 + 65);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v62 = *(v5 - 17);
      v63 = *(v5 - 33);
      v10 = sub_1B0CAFDAC(*(v5 - 33), *(v5 - 25));
      if (v12 != 2)
      {
        v13 = v10;
        v14 = v11;
        v15 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B0C80AF0(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_1B0C80AF0((v16 > 1), v17 + 1, 1, v4);
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
        if ((v25 & 1) != 0 && (sub_1B0CAEF80(v26, v27, v69), (v70 & 1) == 0))
        {
          v52 = v69[0];
          v51 = v69[1];
          v54 = v69[4];
          v53 = v69[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1B0EC1E70;
          *(v55 + 32) = v54;
          *(v55 + 40) = v53;
          *(v55 + 48) = 0;
          if (v24)
          {
            if (v23 - v24 == 8)
            {
              v56 = v55;
              if (sub_1B0CADCDC(0x656D616E656C6966uLL, 0xE800000000000000, v24, v23, sub_1B0C95118))
              {
                v66 = 0;
                v67 = 0xE000000000000000;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

                sub_1B0CAF2F8(v52, v51, 0, v56, v52, v51, 0, v56, a3, &v66);

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
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1B0EC1E70;
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
              if (sub_1B0CADCDC(0x656D616E656C6966uLL, 0xE800000000000000, v24, v23, sub_1B0C95118))
              {
                v34 = v33;
                if (*(v33 + 16) == 1 && *(v33 + 48) < 0 && (v35 = *(v33 + 32), v36 = *(v33 + 40), v37 = sub_1B0CAE540(v35, v36), v34 = v33, (v37 & 1) != 0))
                {
                  v38 = sub_1B0CB4EF0(v35, v36);
                  v40 = v39;

                  v41 = sub_1B0CACDC4(v38, v40, a3);
                  v43 = v42;
                }

                else
                {
                  v66 = 0;
                  v67 = 0xE000000000000000;
                  v57 = v34;

                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0CAF2F8(0, 0, 1, v57, 0, 0, 1, v57, a3, &v66);

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
        v65 = MEMORY[0x1E69E7CC0];
        sub_1B0CAE608(v24, v23, i, v4, &v66, &v65);
        v44 = v65;
        if (v24)
        {
          if (v23 - v24 == 8)
          {
            v46 = v66;
            v45 = v67;
            v47 = v68;
            if (sub_1B0CADCDC(0x656D616E656C6966uLL, 0xE800000000000000, v24, v23, sub_1B0C95118))
            {

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v48 = sub_1B0CAFCA4(v46, v45, v47, v44, a3);
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

uint64_t sub_1B0CB0540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void sub_1B0CB0678(uint64_t a1, uint64_t a2, char a3)
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
    v28 = MEMORY[0x1E69E7CC0];
    v46 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    while ((sub_1B0CB0540(&v47, &v46, 0, v4, a1) & 1) != 0)
    {
      sub_1B0C948BC();
      sub_1B0C94918(v51);
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
        sub_1B0C94918(v53);
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
        v33 = sub_1B0C949D8(0x22u, 0x5Cu);
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
        v28 = sub_1B0C80BF0(0, *(v28 + 2) + 1, 1, v28);
      }

      v41 = *(v28 + 2);
      v40 = *(v28 + 3);
      if (v41 >= v40 >> 1)
      {
        v28 = sub_1B0C80BF0((v40 > 1), v41 + 1, 1, v28);
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
      sub_1B0C948BC();
      if (v47 != v48)
      {
        if (v47 >= v48)
        {
          goto LABEL_117;
        }

        if (*(v49 + v47) == 40)
        {
          ++v47;
          sub_1B0C944F8(0x29u);
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

void *sub_1B0CB0B9C(void *__src, size_t __len)
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

uint64_t sub_1B0CB0BBC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0CB0C10(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
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

char *sub_1B0CB0F14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E7CC0];
  v36[0] = MEMORY[0x1E69E7CC0];
  v30 = v36;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a1;
  v11 = swift_allocObject();
  sub_1B0C835A8(v41);
  v12 = v41[9];
  v11[9] = v41[8];
  v11[10] = v12;
  v11[11] = v42[0];
  *(v11 + 185) = *(v42 + 9);
  v13 = v41[5];
  v11[5] = v41[4];
  v11[6] = v13;
  v14 = v41[7];
  v11[7] = v41[6];
  v11[8] = v14;
  v15 = v41[1];
  v11[1] = v41[0];
  v11[2] = v15;
  v16 = v41[3];
  v11[3] = v41[2];
  v11[4] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = 2;
  v25 = v11;
  v26 = v17;
  v27 = sub_1B0CB1AB4;
  v28 = &v29;
  v23[2] = v11 + 1;
  v23[3] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v23[4] = 0;

  sub_1B0CA33D0(3, a2, a3, a4, a5);
  v36[1] = v10;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  sub_1B0CA286C(sub_1B0C844A0, v24, sub_1B0C844C0, v23, 0, 0);

  sub_1B0C8326C(v11, v17, v36, a1);

  return v36[0];
}

uint64_t SparsePartInfo.part.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
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

uint64_t sub_1B0CB1204(uint64_t a1, int8x16_t *a2)
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

uint64_t static SparsePartInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1))
  {
    v5 = *(a1 + 24);
    v11[0] = *(a1 + 8);
    v11[1] = v5;
    v12 = *(a1 + 40);
    v6 = *(a2 + 3);
    v9[0] = *(a2 + 1);
    v9[1] = v6;
    v10 = *(a2 + 40);
    v7 = _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1B0CB12CC(uint64_t *a1, uint64_t *a2)
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
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2))
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

  v3 = sub_1B0CA192C(v1, a1);

  return v3;
}

char *sub_1B0CB13DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char **a6@<X8>)
{
  result = sub_1B0CB0F14(a5, a1, a2, a3, a4);
  *a6 = result;
  return result;
}

uint64_t sub_1B0CB1424(uint64_t *a1, char **a2, void *a3)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1B0C81B48(0, *(v22 + 2) + 1, 1, v22);
      *a2 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B0C81B48((v24 > 1), v25 + 1, 1, v22);
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
  if (!v7 || !*(&v56 + 1) || (v8 = a1[5], v9 = a1[6], v10 = a1[7], (sub_1B0C63FAC(v8, v9, v10 & 1, a1[8], v55) & 1) == 0))
  {
    if (*(a1 + 184) != 2)
    {
      v33 = sub_1B0C82E8C();
      v34 = *a1;
      v36 = v35 & 1;
      v37 = *a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_1B0C81B48(0, *(v37 + 2) + 1, 1, v37);
        *a2 = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_1B0C81B48((v39 > 1), v40 + 1, 1, v37);
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_1B0C81B48(0, *(v28 + 2) + 1, 1, v28);
      *a2 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1B0C81B48((v30 > 1), v31 + 1, 1, v28);
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

  v12 = sub_1B0C795A8(a3, v8, v9, v10 & 1, v7);
  v14 = v13;
  if (*(a1 + 184) != 2)
  {
    v42 = sub_1B0C82E8C();
    v43 = *a1;
    v45 = v44 & 1;
    v46 = *a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1B0C81B48(0, *(v46 + 2) + 1, 1, v46);
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
      v53 = sub_1B0C81B48((v49 > 1), v48 + 1, 1, v51);
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1B0C81B48(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1B0C81B48((v18 > 1), v19 + 1, 1, v16);
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
            return (sub_1B0E46A78() & 1) != 0;
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
      return (sub_1B0E46A78() & 1) != 0;
    }

    return 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9IMAP2MIME14SparsePartInfoV6StatusO(uint64_t a1)
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

uint64_t sub_1B0CB19F8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0CB1A40(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0CB1A88(uint64_t result, unsigned int a2)
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

uint64_t sub_1B0CB1AD4(uint64_t result)
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
        result = sub_1B0E44C58();
        v10 = v22;
        *v4 = v21;
        v4[1] = v10;
      }

      if ((v5 & 0x80) == 0)
      {
        sub_1B0CB1F34();
        result = sub_1B0C14AB0();
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

      result = sub_1B0E46D58();
      v5 = v5 >> ((8 * result) & 0x38);
      v6 = v13 - 8 * result;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB1ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = 0;
  sub_1B0CAC0EC(v8, a3, a4, a5, a6, a7);
}

unint64_t sub_1B0CB1F34()
{
  result = qword_1EB6DA308;
  if (!qword_1EB6DA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA308);
  }

  return result;
}

uint64_t sub_1B0CB1F88(uint64_t result)
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

char *sub_1B0CB2014@<X0>(char *result@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, unsigned __int8 a6@<W5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
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
    v9 = byte_1B0EE0955[a5];
  }

  result = CompactEncDet_detectEncoding(a2, a3, result, a4 & 1, v9, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1B0CB20D8(__int16 a1)
{
  v2 = byte_1B0EE0955[a1];
  result = CompactEncDet_EncodingName(v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_1B0E44D88();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](10016, 0xE200000000000000);
  result = CompactEncDet_MimeEncodingName(v2);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = sub_1B0E44D88();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](8231, 0xE200000000000000);
  if ((a1 & 0x100) != 0)
  {
    v6 = 0x656C6261696C6572;
  }

  else
  {
    v6 = 0x6261696C65726E75;
  }

  if ((a1 & 0x100) != 0)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1B2726E80](v6, v7);

  return 0;
}

uint64_t sub_1B0CB21E4()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1B0CB20D8(v1 | *v0);
}

uint64_t sub_1B0CB2200()
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

uint64_t sub_1B0CB2264()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = byte_1B0EE0955[v1];
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB22EC()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = byte_1B0EE0955[v1];
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB2338@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0CB2428(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0CB237C()
{
  result = CompactEncDet_EncodingName(byte_1B0EE0955[*v0]);
  if (result)
  {

    return sub_1B0E44D88();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CB23BC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0CB2F3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0CB23F4()
{
  result = CompactEncDet_LanguageName(*v0);
  if (result)
  {

    return sub_1B0E44D88();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CB2428(unsigned __int8 a1)
{
  if (a1 > 0x4Au)
  {
    return 74;
  }

  else
  {
    return byte_1B0EE090A[a1];
  }
}

uint64_t sub_1B0CB2450(uint64_t a1, uint64_t a2, char a3, int8x8_t *a4, uint64_t a5, char a6, void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    v13 = a2 - a1;
    if (a1 && v13 > 119 || (v14 = sub_1B0CA1F60(a1, a2), v15 = sub_1B0CB2428(v14), v15 == 74))
    {
      v15 = 74;
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    v17 = MEMORY[0x1B2726D20](v16);
    if (v12 && a2 != v12)
    {
      v19 = v33;
      v18 = v34;
      do
      {
        v17 = *v12;
        if ((v17 - 1) <= 0x7D)
        {
          v31[0] = v19;
          v31[1] = v34;
          v17 = sub_1B0E44C58();
          v19 = v31[0];
        }

        ++v12;
      }

      while (v12 != a2);
      v33 = v19;
    }

    else
    {
      v18 = v34;
    }

    LOBYTE(v31[0]) = 0;
    MEMORY[0x1EEE9AC00](v17);
    v34 = v18 & 0xFFFFFFFFFFFFFFLL;
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
        v22 = byte_1B0EE0955[v15];
      }

      v32 = CompactEncDet_detectEncoding(a4, v20, &v33, a6 & 1, v22, 0x1Au, v31);
      goto LABEL_30;
    }

    __break(1u);
    __break(1u);
  }

  LOBYTE(v31[0]) = 0;
  if (!a4)
  {
    LODWORD(v10) = 0;
LABEL_23:
    v21 = CompactEncDet_detectEncoding(a4, v10, 0, a6 & 1, 23, 0x1Au, v31);
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
  sub_1B0E46258();
LABEL_30:

  v21 = v32;
LABEL_31:
  v23 = sub_1B0CB2428(v21);
  if (v23 == 74)
  {
    v24 = 0;
LABEL_51:
    v29 = *MEMORY[0x1E69E9840];
    return v24;
  }

  v24 = CompactEncDet_MimeEncodingName(byte_1B0EE0955[v23]);
  if (!v24)
  {
    goto LABEL_51;
  }

  v24 = sub_1B0CB31A4(v24, a7);
  if (!v24)
  {
    goto LABEL_51;
  }

  swift_beginAccess();
  v25 = a7[4];
  if (!v25)
  {

    result = sub_1B0CB31A4("euc-cn", a7);
    if (!result)
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v25 = result;
    a7[4] = result;
  }

  swift_endAccess();
  if (v25 == v24)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v27 = a7[5];
  if (!v27)
  {

    result = sub_1B0CB31A4("gb-2312-80", a7);
    if (!result)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v27 = result;
    a7[5] = result;
  }

  swift_endAccess();
  if (v27 == v24)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v28 = a7[6];
  if (!v28)
  {

    result = sub_1B0CB31A4("gbk", a7);
    if (!result)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v28 = result;
    a7[6] = result;
  }

  swift_endAccess();
  if (v28 == v24)
  {
LABEL_47:
    swift_beginAccess();
    v24 = a7[7];
    if (v24)
    {
LABEL_50:
      swift_endAccess();
      goto LABEL_51;
    }

    result = sub_1B0CB31A4("gb-18030", a7);
    if (result)
    {
      v24 = result;
      a7[7] = result;
      goto LABEL_50;
    }

    goto LABEL_64;
  }

  swift_beginAccess();
  v30 = a7[8];
  if (!v30)
  {

    result = sub_1B0CB31A4("big5", a7);
    if (!result)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v30 = result;
    a7[8] = result;
  }

  swift_endAccess();
  if (v30 != v24)
  {
    goto LABEL_51;
  }

  swift_beginAccess();
  v24 = a7[9];
  if (v24)
  {
    goto LABEL_50;
  }

  result = sub_1B0CB31A4("big5-hkscs", a7);
  if (result)
  {
    v24 = result;
    a7[9] = result;
    goto LABEL_50;
  }

LABEL_68:
  __break(1u);
  return result;
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

unint64_t sub_1B0CB2E38()
{
  result = qword_1EB6E6040;
  if (!qword_1EB6E6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6040);
  }

  return result;
}

unint64_t sub_1B0CB2E90()
{
  result = qword_1EB6E6048;
  if (!qword_1EB6E6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6048);
  }

  return result;
}

unint64_t sub_1B0CB2EE8()
{
  result = qword_1EB6E6050;
  if (!qword_1EB6E6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6050);
  }

  return result;
}

uint64_t sub_1B0CB2F3C(uint64_t result)
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

char *sub_1B0CB2FF8()
{
  v0 = ucnv_countAvailable();
  result = sub_1B0C80E48(0, v0 & ~(v0 >> 31), 0, MEMORY[0x1E69E7CC0]);
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
            v2 = sub_1B0C80E48((v5 > 1), v6 + 1, 1, v2);
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

unint64_t sub_1B0CB30C4()
{
  result = qword_1EB6E6058;
  if (!qword_1EB6E6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6058);
  }

  return result;
}

uint64_t sub_1B0CB3118()
{
  v1 = sub_1B0E44B68();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  sub_1B0E44B58();
  result = sub_1B0E44B28();
  if (!v5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0CB31A4(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
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
      v5 = sub_1B0CB2FF8();
      v6 = *(a2 + 16);
      *(a2 + 16) = v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_32;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (*(a2 + 16))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = sub_1B0CB2FF8();
      v11 = *(a2 + 16);
      *(a2 + 16) = v10;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v12 = *(v10 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

        v4 = v14;
        goto LABEL_36;
      }
    }
  }

  v15 = *(a2 + 16);
  if (!v15)
  {
    v16 = sub_1B0CB2FF8();
    v25 = *(a2 + 16);
    *(a2 + 16) = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v17 = *(v16 + 2);
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_34:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_35:

    v4 = 0;
    goto LABEL_36;
  }

  v16 = *(a2 + 16);
  v17 = *(v15 + 16);
  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_20:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6060, &qword_1B0EE0A70);
  v22 = sub_1B0E45278();
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

LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return v4;
}