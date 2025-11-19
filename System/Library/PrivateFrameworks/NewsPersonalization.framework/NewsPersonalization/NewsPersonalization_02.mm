uint64_t sub_1C6B3C0E8(uint64_t a1)
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
    sub_1C6D79E90();
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
  result = sub_1C6D79D80();
  *v1 = result;
  return result;
}

void sub_1C6B3C188()
{
  if (!qword_1EDCDF460)
  {
    sub_1C6B3C984(255, &qword_1EDCDFB10);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF460);
    }
  }
}

void sub_1C6B3C1F8()
{
  if (!qword_1EDCE5CF0)
  {
    sub_1C6D78630();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE5CF0);
    }
  }
}

void sub_1C6B3C260()
{
  if (!qword_1EDCDF4C0)
  {
    sub_1C6B3C4F0(255, &qword_1EDCDFBC8);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF4C0);
    }
  }
}

void sub_1C6B3C2D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > v7[3] >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v13 = v8 + v6;
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1C6B66A5C(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
    goto LABEL_19;
  }

  sub_1C6B3CAFC(0, &unk_1EDCDFBB0);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v14 = v7[2];
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    v7[2] = v16;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_1C6B3C3F4()
{
  if (!qword_1EDCDFB08)
  {
    sub_1C6B3CCC8(255, &qword_1EDCE65B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB08);
    }
  }
}

void sub_1C6B3C480()
{
  if (!qword_1EDCDF4B0)
  {
    sub_1C6B3C4F0(255, &qword_1EDCDFBC0);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF4B0);
    }
  }
}

void sub_1C6B3C4F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1C6B3C554()
{
  if (!qword_1EC1D6838)
  {
    sub_1C6B3C984(255, &unk_1EC1D6840);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6838);
    }
  }
}

void sub_1C6B3C5C4()
{
  if (!qword_1EDCDF418)
  {
    sub_1C6B3CCC8(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF418);
    }
  }
}

void sub_1C6B3C640()
{
  if (!qword_1EDCDFA40)
  {
    sub_1C6B3CAFC(255, &unk_1EDCDFBB0);
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFA40);
    }
  }
}

void sub_1C6B3C6B0()
{
  if (!qword_1EC1D9950)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA4D0, 0x1E69B6EE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9950);
    }
  }
}

void sub_1C6B3C72C()
{
  if (!qword_1EDCDFAF8)
  {
    sub_1C6B0C69C(255, &unk_1EDCEA4F0, 0x1E69B5470);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFAF8);
    }
  }
}

void sub_1C6B3C7A4()
{
  if (!qword_1EDCDF4F0)
  {
    sub_1C6B3C828(255, &qword_1EDCDFCD0, &qword_1EDCDF8F0, 0x1E69B5580, MEMORY[0x1E69B59A8]);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF4F0);
    }
  }
}

void sub_1C6B3C828(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0C69C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C6B3C890()
{
  if (!qword_1EDCE64C8)
  {
    sub_1C6B3C828(255, &qword_1EDCEA3C0, &unk_1EDCE7E40, 0x1E696B050, MEMORY[0x1E6968070]);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE64C8);
    }
  }
}

void sub_1C6B3C914()
{
  if (!qword_1EC1D6860)
  {
    sub_1C6B3C984(255, &qword_1EC1D6868);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6860);
    }
  }
}

void sub_1C6B3C984(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B3C9DC()
{
  if (!qword_1EDCDFCF8)
  {
    v0 = sub_1C6D78DF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFCF8);
    }
  }
}

void sub_1C6B3CA34()
{
  if (!qword_1EDCE5CC8)
  {
    sub_1C6B3C9DC();
    v0 = sub_1C6D788A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5CC8);
    }
  }
}

void sub_1C6B3CA94()
{
  if (!qword_1EDCDFB40)
  {
    sub_1C6D76BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB40);
    }
  }
}

void sub_1C6B3CAFC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B3CB50()
{
  if (!qword_1EDCDF490)
  {
    sub_1C6B3CAFC(255, &qword_1EDCDFB60);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF490);
    }
  }
}

void sub_1C6B3CBC0()
{
  if (!qword_1EC1D6880)
  {
    sub_1C6B3CCC8(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D794E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6880);
    }
  }
}

void sub_1C6B3CC4C()
{
  if (!qword_1EDCDF408)
  {
    sub_1C6B3CCC8(255, &qword_1EDCDF970, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF408);
    }
  }
}

void sub_1C6B3CCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C6B3CDCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v77 = a2;
  v78 = a3;
  v5 = sub_1C6D790E0();
  v6 = *(v5 - 8);
  v80 = v5;
  v81 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D79040();
  v88 = *(v9 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D79170();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1C6B5F204(MEMORY[0x1E69E7CC0]);
  v73 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_27:
    v16 = sub_1C6D79E90();
    v87 = v12;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v12;
    if (v16)
    {
LABEL_3:
      v12 = 0;
      v85 = a1 & 0xFFFFFFFFFFFFFF8;
      v86 = (a1 & 0xC000000000000001);
      v83 = a1;
      v84 = v9;
      do
      {
        if (v86)
        {
          v20 = MEMORY[0x1CCA56240](v12, a1);
          v21 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 >= *(v85 + 16))
          {
            goto LABEL_24;
          }

          v20 = *(a1 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v21 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v9 = v16;
        v22 = [v20 itemID];
        v23 = sub_1C6D795A0();
        v25 = v24;

        swift_unknownObjectRetain();
        v26 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v26;
        a1 = sub_1C6B5DEA8(v23, v25);
        v29 = *(v26 + 16);
        v30 = (v28 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_25;
        }

        v32 = v28;
        if (*(v26 + 24) >= v31)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v28)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1C6B730A8();
            if (v32)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1C6B6F0D4(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_1C6B5DEA8(v23, v25);
          if ((v32 & 1) != (v34 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          a1 = v33;
          if (v32)
          {
LABEL_4:

            v89 = v91;
            v17 = v91[7];
            v18 = *(v17 + 8 * a1);
            *(v17 + 8 * a1) = v20;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v35 = v91;
        v91[(a1 >> 6) + 8] |= 1 << a1;
        v36 = (v35[6] + 16 * a1);
        *v36 = v23;
        v36[1] = v25;
        *(v35[7] + 8 * a1) = v20;
        swift_unknownObjectRelease();
        v37 = v35[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_26;
        }

        v89 = v35;
        v35[2] = v39;
LABEL_5:
        ++v12;
        v16 = v9;
        v19 = v21 == v9;
        a1 = v83;
        v9 = v84;
      }

      while (!v19);
    }
  }

  if (v73)
  {
    sub_1C6B1677C();

    v44 = sub_1C6D79EC0();

    a1 = v44;
  }

  else
  {
    v40 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1C6D7A180();
    sub_1C6B1677C();
    if (!swift_dynamicCastMetatype())
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        v42 = (v40 + 32);
        while (1)
        {
          v43 = *v42;
          v90 = &unk_1F468C500;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          ++v42;
          if (!--v41)
          {
            goto LABEL_36;
          }
        }

        a1 = v40 | 1;
      }
    }
  }

LABEL_36:
  v45 = sub_1C6D791C0();
  v46 = v74;
  (*(*(v45 - 8) + 16))(v74, v77, v45);
  v48 = v75;
  v47 = v76;
  (*(v75 + 104))(v46, *MEMORY[0x1E69B5A28], v76);
  v49 = (*(v79 + 8))(a1, v46, v78);

  (*(v48 + 8))(v46, v47);
  v50 = *(v49 + 16);
  v51 = v87;
  if (v50)
  {
    v52 = v89;
    v86 = *(v88 + 16);
    v53 = v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v54 = (v88 + 8);
    v55 = MEMORY[0x1E69E7CC0];
    v88 += 16;
    v56 = *(v88 + 56);
    v84 = v81 + 32;
    v85 = v56;
    v86(v87, v53, v9);
    while (1)
    {
      v57 = sub_1C6D78FF0();
      if (*(v52 + 16))
      {
        v59 = sub_1C6B5DEA8(v57, v58);
        v61 = v60;

        if (v61)
        {
          v62 = *(*(v52 + 56) + 8 * v59);
          objc_opt_self();
          v63 = swift_dynamicCastObjCClass();
          swift_unknownObjectRetain();
          if (v63)
          {
            swift_unknownObjectRetain();
            v64 = v87;
            v65 = sub_1C6D79010();
            [v63 setScoreProfile_];

            v66 = sub_1C6D79010();
            [v66 sortingScore];
            v68 = v67;

            [v63 setTileProminenceScore_];
            swift_unknownObjectRelease();
          }

          else
          {
            v64 = v87;
          }

          sub_1C6D79010();
          sub_1C6D790D0();
          (*v54)(v64, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_1C6B65A3C(0, v55[2] + 1, 1, v55);
          }

          v52 = v89;
          v70 = v55[2];
          v69 = v55[3];
          if (v70 >= v69 >> 1)
          {
            v55 = sub_1C6B65A3C(v69 > 1, v70 + 1, 1, v55);
          }

          v55[2] = v70 + 1;
          (*(v81 + 32))(v55 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v70, v82, v80);
          v51 = v87;
        }

        else
        {
          v51 = v87;
          (*v54)(v87, v9);
        }
      }

      else
      {

        (*v54)(v51, v9);
      }

      v53 += v85;
      if (!--v50)
      {
        break;
      }

      v86(v51, v53, v9);
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v55;
}

uint64_t sub_1C6B3D5A8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v64 = a3;
  v63 = a2;
  v6 = sub_1C6D79060();
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_1C6D79040();
  v58 = *(isUniquelyReferenced_nonNull_native - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D79170();
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6B5F32C(MEMORY[0x1E69E7CC0]);
  v59 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v18 = sub_1C6D79E90();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = a4;
  v73 = v13;
  if (v18)
  {
    a4 = 0;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    v69 = a1;
    v70 = isUniquelyReferenced_nonNull_native;
    do
    {
      if (v72)
      {
        v21 = MEMORY[0x1CCA56240](a4, a1);
      }

      else
      {
        if (a4 >= *(v71 + 16))
        {
          goto LABEL_43;
        }

        v21 = *(a1 + 8 * a4 + 32);
      }

      v22 = v21;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v74 = (a4 + 1);
      v23 = [v21 itemID];
      a1 = sub_1C6D795A0();
      v13 = v24;

      v25 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v17;
      v27 = sub_1C6B5DEA8(a1, v13);
      v28 = v17[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_44;
      }

      v31 = v26;
      if (v17[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1C6B730C4();
          if (v31)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1C6B6F0F0(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_1C6B5DEA8(a1, v13);
        if ((v31 & 1) != (v33 & 1))
        {
          result = sub_1C6D7A1C0();
          __break(1u);
          return result;
        }

        v27 = v32;
        if (v31)
        {
LABEL_5:

          v17 = v75;
          v19 = v75[7];
          v20 = *(v19 + 8 * v27);
          *(v19 + 8 * v27) = v25;

          goto LABEL_6;
        }
      }

      v17 = v75;
      v75[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v17[6] + 16 * v27);
      *v34 = a1;
      v34[1] = v13;
      *(v17[7] + 8 * v27) = v25;

      v35 = v17[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_45;
      }

      v17[2] = v37;
LABEL_6:
      ++a4;
      v13 = v73;
      a1 = v69;
      isUniquelyReferenced_nonNull_native = v70;
    }

    while (v74 != v18);
  }

  if (v59)
  {
    sub_1C6B1677C();

    v38 = sub_1C6D79EC0();

    a1 = v38;
  }

  else
  {

    sub_1C6D7A180();
    sub_1C6B1677C();
  }

  v39 = v65;
  v40 = sub_1C6D791A0();
  v41 = v60;
  (*(*(v40 - 8) + 16))(v60, v63, v40);
  v43 = v61;
  v42 = v62;
  (*(v61 + 104))(v41, *MEMORY[0x1E69B5A10], v62);
  v44 = (*(v39 + 8))(a1, v41, v64, v39);

  (*(v43 + 8))(v41, v42);
  v45 = *(v44 + 16);
  if (v45)
  {
    v74 = *(v58 + 16);
    v46 = v44 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v72 = *(v58 + 72);
    v47 = (v58 + 8);
    v70 = v44;
    v71 = v67 + 32;
    v48 = MEMORY[0x1E69E7CC0];
    v74(v13, v46, isUniquelyReferenced_nonNull_native);
    while (1)
    {
      v49 = sub_1C6D78FF0();
      if (v17[2])
      {
        v51 = sub_1C6B5DEA8(v49, v50);
        v53 = v52;

        if (v53)
        {
          v54 = *(v17[7] + 8 * v51);
          v13 = v73;
          sub_1C6D79010();
          sub_1C6D79050();
          (*v47)(v13, isUniquelyReferenced_nonNull_native);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1C6B65A70(0, v48[2] + 1, 1, v48);
          }

          v56 = v48[2];
          v55 = v48[3];
          if (v56 >= v55 >> 1)
          {
            v48 = sub_1C6B65A70(v55 > 1, v56 + 1, 1, v48);
          }

          v48[2] = v56 + 1;
          (*(v67 + 32))(v48 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56, v68, v66);
        }

        else
        {
          v13 = v73;
          (*v47)(v73, isUniquelyReferenced_nonNull_native);
        }
      }

      else
      {

        (*v47)(v13, isUniquelyReferenced_nonNull_native);
      }

      v46 += v72;
      if (!--v45)
      {
        break;
      }

      v74(v13, v46, isUniquelyReferenced_nonNull_native);
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t sub_1C6B3DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6B3DFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved()
{
  result = qword_1EDCE30C0;
  if (!qword_1EDCE30C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B3E190(uint64_t a1, uint64_t a2)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B3E224(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B3E2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

void sub_1C6B3E554(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B3E660((*a1)[5], v4);
    sub_1C6B3E224(v9 + v3);
    sub_1C6B3E2B0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B3E6C4(v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  else
  {
    sub_1C6B3E224(v9 + v3);
    sub_1C6B3E2B0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6B3E660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B3E6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6B3EA80()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6888);
  __swift_project_value_buffer(v0, qword_1EC1D6888);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5850 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6B3EDD8();
    }
  }

  return result;
}

uint64_t sub_1C6B3EDD8()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6B3FC1C(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6B3EF28(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B3EF28(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6B3FC1C(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  sub_1C6B3FC1C(&qword_1EC1D68A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B3F1BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6B3F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B3F2D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6B3F344(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6B3F398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B3FC1C(&qword_1EC1D68C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B3F414@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5850 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B3F4BC(uint64_t a1)
{
  v2 = sub_1C6B3FC1C(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B3F528()
{
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B3F580()
{
  sub_1C6B3FC1C(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B3F5FC()
{
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6B3FC1C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

void sub_1C6B3FAC4()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B3FCC8(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B3FB88()
{
  if (!qword_1EC1D68C8)
  {
    sub_1C6B3FCC8(255, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D68C8);
    }
  }
}

uint64_t sub_1C6B3FC1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1C6B3FCC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B3FD2C()
{
  if (!qword_1EDCDF910)
  {
    sub_1C6D78D00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDF910);
    }
  }
}

uint64_t ArticleViewEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleViewEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4590], v0);
  sub_1C6B41184(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleViewEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4810], v0);
  sub_1C6B41184(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleViewEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777A0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleViewEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B404FC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B40608(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77790();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleViewEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B40C38(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777C0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B40C8C(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleViewEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B40C38(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777E0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B40C8C(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

void sub_1C6B40C38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B40C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6B40C38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ArticleViewEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D773E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77EC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777D0();
  sub_1C6D77EB0();
  (*(v8 + 8))(v11, v7);
  sub_1C6B8CE90(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6B40EC4(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77790();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleViewEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B40C38(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D777E0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B40C8C(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B41184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B41224()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B41324()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777A0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleViewEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B41474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77790();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B41594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B4169C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77790();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B41784@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D773E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77EC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777D0();
  sub_1C6D77EB0();
  (*(v8 + 8))(v11, v7);
  sub_1C6B8CE90(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6B41900()
{
  sub_1C6B40C38(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D777E0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B40C8C(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t ArticleLikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleLikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4590], v0);
  sub_1C6B42F6C(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleLikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4810], v0);
  sub_1C6B42F6C(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleLikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776C0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleLikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B421B8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B422C4(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D776B0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleLikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776D0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleLikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776F0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6B428F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6B42BF8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ArticleLikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776E0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

void sub_1C6B42BF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B42CAC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D776B0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleLikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D776F0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B42F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B4300C()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B4310C()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776C0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleLikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4325C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D776B0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B4337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B43484(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D776B0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B43570()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D776F0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B436C0()
{
  v0 = sub_1C6D771D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D77FA0();
  v10 = sub_1C6D77F90();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v15[15] = v10 & 1;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCEA7C0 = result;
  return result;
}

uint64_t sub_1C6B438D4()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D68E8 = result;
  return result;
}

uint64_t sub_1C6B43AE4()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D68F0 = result;
  return result;
}

uint64_t sub_1C6B43CF4()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D68F8 = result;
  return result;
}

uint64_t sub_1C6B43F04()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6900 = result;
  return result;
}

uint64_t sub_1C6B44114()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6908 = result;
  return result;
}

uint64_t sub_1C6B44324()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6910 = result;
  return result;
}

uint64_t sub_1C6B44534()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6918 = result;
  return result;
}

uint64_t sub_1C6B44744()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[1] = 0x3FF0000000000000;
  sub_1C6B47330(0, &qword_1EC1D69A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6920 = result;
  return result;
}

uint64_t sub_1C6B44958()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[1] = 0x3FEF5C28F5C28F5CLL;
  sub_1C6B47330(0, &qword_1EC1D69A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6928 = result;
  return result;
}

uint64_t sub_1C6B44B78()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6930 = result;
  return result;
}

uint64_t sub_1C6B44D88()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[1] = 555;
  sub_1C6B47330(0, &qword_1EC1D69A8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6938 = result;
  return result;
}

uint64_t sub_1C6B44F9C()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[1] = 2500;
  sub_1C6B47330(0, &qword_1EC1D69A8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6940 = result;
  return result;
}

uint64_t sub_1C6B451B0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6948 = result;
  return result;
}

uint64_t sub_1C6B453C0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6950 = result;
  return result;
}

uint64_t sub_1C6B455D0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6958 = result;
  return result;
}

uint64_t sub_1C6B457E0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCE6170 = result;
  return result;
}

uint64_t sub_1C6B459F0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[1] = 0;
  sub_1C6B47330(0, &qword_1EC1D69A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6960 = result;
  return result;
}

uint64_t sub_1C6B45C00()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCE6160 = result;
  return result;
}

uint64_t sub_1C6B45E10()
{
  v0 = sub_1C6D771D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsPersonalization.SportsTagScoringConfigurationOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  v10 = *MEMORY[0x1E69B5010];
  *v4 = sub_1C6D795A0();
  v4[1] = v11;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1C6D77150();
  qword_1EDCE6118 = result;
  return result;
}

uint64_t sub_1C6B45FF8()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v16[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCE6100 = result;
  return result;
}

uint64_t sub_1C6B46208()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B47330(0, &qword_1EC1D6988);
  v17[1] = v10;
  v20 = 32123;
  v21 = 0xE200000000000000;
  v11 = *MEMORY[0x1E69B5010];
  *v9 = sub_1C6D795A0();
  v9[1] = v12;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1C6B47288();
  sub_1C6B472E0();
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1C6D7EED0;
  v18 = 32123;
  v19 = 0xE200000000000000;
  sub_1C6D771E0();
  v18 = 0xD0000000000001EALL;
  v19 = 0x80000001C6D97760;
  sub_1C6D771E0();
  v18 = 0xD00000000000060BLL;
  v19 = 0x80000001C6D97970;
  sub_1C6D771E0();
  v18 = 0xD00000000000060BLL;
  v19 = 0x80000001C6D97FA0;
  sub_1C6D771E0();
  v18 = 0xD000000000000637;
  v19 = 0x80000001C6D985D0;
  sub_1C6D771E0();
  v18 = 0xD00000000000060DLL;
  v19 = 0x80000001C6D98C30;
  sub_1C6D771E0();
  v18 = 0xD000000000000614;
  v19 = 0x80000001C6D99240;
  sub_1C6D771E0();
  v18 = 0xD000000000000619;
  v19 = 0x80000001C6D99880;
  sub_1C6D771E0();
  v18 = 0xD000000000000619;
  v19 = 0x80000001C6D99EC0;
  sub_1C6D771E0();
  v18 = 0xD000000000000038;
  v19 = 0x80000001C6D9A510;
  sub_1C6D771E0();
  v18 = 0xD00000000000005CLL;
  v19 = 0x80000001C6D9A570;
  sub_1C6D771E0();
  result = sub_1C6D77200();
  qword_1EC1D6968 = result;
  return result;
}

uint64_t sub_1C6B467CC(void *a1, uint64_t *a2)
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

uint64_t sub_1C6B46830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C6D771C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  swift_allocObject();
  (*(v7 + 16))(v10, a4, v6);
  v13 = sub_1C6D77160();
  (*(v7 + 8))(a4, v6);
  return v13;
}

uint64_t sub_1C6B4695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v9 = sub_1C6D77160();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t Settings.NewsStatelessPersonalization.ClusterConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C19NewsPersonalizationE0c9StatelessD0V22ClusterConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B46AA4()
{
  v0 = sub_1C6D771D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsStatelessPersonalization.ClusterConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  v10 = *MEMORY[0x1E69B5010];
  *v4 = sub_1C6D795A0();
  v4[1] = v11;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1C6D77150();
  qword_1EC1D6970 = result;
  return result;
}

uint64_t sub_1C6B46C8C()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D77140();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B471CC();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1C6D77210();
  qword_1EDCE6188 = result;
  return result;
}

uint64_t sub_1C6B46E5C()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D77140();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B471CC();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1C6D77210();
  qword_1EDCE61A0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceMyMagazinesPersonalizationService.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ComputeServiceMyMagazinesPersonalizationService.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1C6B471CC()
{
  if (!qword_1EDCE60E0)
  {
    sub_1C6D77140();
    sub_1C6B47230();
    v0 = sub_1C6D77220();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE60E0);
    }
  }
}

unint64_t sub_1C6B47230()
{
  result = qword_1EDCE60F0;
  if (!qword_1EDCE60F0)
  {
    sub_1C6D77140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE60F0);
  }

  return result;
}

void sub_1C6B47288()
{
  if (!qword_1EC1D6990)
  {
    sub_1C6B472E0();
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6990);
    }
  }
}

void sub_1C6B472E0()
{
  if (!qword_1EC1D6998)
  {
    v0 = sub_1C6D771F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6998);
    }
  }
}

void sub_1C6B47330(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D77220();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t URL.zipForExport(filename:)@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1C6D75DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 temporaryDirectory];

  sub_1C6D75D90();
  sub_1C6D75D50();
  v11 = *(v2 + 8);
  v11(v5, v1);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B68D0]) init];
  v13 = sub_1C6D75D30();
  v14 = sub_1C6D75D30();
  LODWORD(v9) = [v12 archiveDirectory:v13 toLocation:v14];

  if (v9)
  {
    v15 = v25;
    (*(v2 + 32))(v25, v8, v1);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    sub_1C6D79AA0();
    sub_1C6B1D314();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6D7E630;
    sub_1C6B476D4();
    v19 = sub_1C6D7A0E0();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C6B2064C();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1C6B1AAB0();
    v22 = sub_1C6D79BD0();
    sub_1C6D78D30();

    v11(v8, v1);
    v16 = 1;
    v17 = v25;
  }

  return (*(v2 + 56))(v17, v16, 1, v1);
}

unint64_t sub_1C6B47670()
{
  result = qword_1EDCEA890;
  if (!qword_1EDCEA890)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA890);
  }

  return result;
}

unint64_t sub_1C6B476D4()
{
  result = qword_1EDCEA3B0;
  if (!qword_1EDCEA3B0)
  {
    sub_1C6D75DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA3B0);
  }

  return result;
}

uint64_t sub_1C6B4772C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77F00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69B4E98])
  {
    v10 = MEMORY[0x1E69E39A0];
LABEL_77:
    v12 = *v10;
    v13 = sub_1C6D770A0();
    v14 = *(*(v13 - 8) + 104);
    v15 = a1;
    v16 = v12;
    return v14(v15, v16, v13);
  }

  if (v9 == *MEMORY[0x1E69B4E80])
  {
    v10 = MEMORY[0x1E69E3988];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4ED8])
  {
    v10 = MEMORY[0x1E69E39D8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C20])
  {
    v10 = MEMORY[0x1E69E3798];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4EC8])
  {
    v10 = MEMORY[0x1E69E39C8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C78])
  {
    v10 = MEMORY[0x1E69E37E8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4CD8])
  {
    v10 = MEMORY[0x1E69E3828];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E70])
  {
    v10 = MEMORY[0x1E69E3978];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E60])
  {
    v10 = MEMORY[0x1E69E3968];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4D70])
  {
    v10 = MEMORY[0x1E69E38A0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E30])
  {
    v10 = MEMORY[0x1E69E3940];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E00])
  {
    v10 = MEMORY[0x1E69E3910];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4EC0])
  {
    v10 = MEMORY[0x1E69E39C0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4EE8])
  {
    v10 = MEMORY[0x1E69E39E8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C28])
  {
    v10 = MEMORY[0x1E69E37A0];
    goto LABEL_77;
  }

  v11 = v9;
  if (v9 == *MEMORY[0x1E69B4D20])
  {
    v10 = MEMORY[0x1E69E3860];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C58])
  {
    v10 = MEMORY[0x1E69E37C8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E10])
  {
    v10 = MEMORY[0x1E69E3920];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C98])
  {
    v10 = MEMORY[0x1E69E3808];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E78])
  {
    v10 = MEMORY[0x1E69E3980];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C50])
  {
    v10 = MEMORY[0x1E69E37C0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4EB0])
  {
    v10 = MEMORY[0x1E69E39B0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E90])
  {
    v10 = MEMORY[0x1E69E3998];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E68])
  {
    v10 = MEMORY[0x1E69E3970];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4DB0])
  {
    v10 = MEMORY[0x1E69E38D0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C90])
  {
    v10 = MEMORY[0x1E69E3800];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4D48])
  {
    v10 = MEMORY[0x1E69E3880];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E08])
  {
    v10 = MEMORY[0x1E69E3918];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C68])
  {
    v10 = MEMORY[0x1E69E37D8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C60])
  {
    v10 = MEMORY[0x1E69E37D0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E18])
  {
    v10 = MEMORY[0x1E69E3928];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4C38])
  {
    v10 = MEMORY[0x1E69E37B0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4ED0])
  {
    v10 = MEMORY[0x1E69E39D0];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4CF0])
  {
    v10 = MEMORY[0x1E69E3838];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4E58])
  {
    v10 = MEMORY[0x1E69E3960];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4D78])
  {
    v10 = MEMORY[0x1E69E38A8];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4CF8])
  {
    v10 = MEMORY[0x1E69E3840];
    goto LABEL_77;
  }

  if (v9 == *MEMORY[0x1E69B4DC0])
  {
    v10 = MEMORY[0x1E69E38D8];
    goto LABEL_77;
  }

  v18 = *MEMORY[0x1E69B4E20];
  v13 = sub_1C6D770A0();
  v14 = *(*(v13 - 8) + 104);
  if (v11 != v18)
  {
    v14(a1, *MEMORY[0x1E69E39A0], v13);
    return (*(v5 + 8))(v8, v4);
  }

  v16 = *MEMORY[0x1E69E3930];
  v15 = a1;
  return v14(v15, v16, v13);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t sub_1C6B47F34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6B480CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked()
{
  result = qword_1EDCE4498;
  if (!qword_1EDCE4498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B482A8(uint64_t a1, uint64_t a2)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B4833C(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B483C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Com_Apple_News_Personalization_SessionEventArticleUnliked.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

void sub_1C6B48678(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6B4833C(v9 + v3);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B487E8(v5, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  else
  {
    sub_1C6B4833C(v9 + v3);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6B48784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B487E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleUnliked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleUnliked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C6B48B44()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D69B0);
  __swift_project_value_buffer(v0, qword_1EC1D69B0);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleUnliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5900 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D69B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6B48DE4();
    }
  }

  return result;
}

uint64_t sub_1C6B48DE4()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B49AE4(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.traverse<A>(visitor:)()
{
  result = sub_1C6B48EF0(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B48EF0(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6B49AE4(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  sub_1C6B49AE4(&qword_1EC1D69C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B49184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6B49218@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6B49280(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6B49338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B49AE4(&qword_1EC1D69E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B493B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5900 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D69B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B4945C(uint64_t a1)
{
  v2 = sub_1C6B49AE4(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B494C8()
{
  sub_1C6B49AE4(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6B49AE4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6B4999C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B49B2C(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B49A50()
{
  if (!qword_1EC1D69F0)
  {
    sub_1C6B49B2C(255, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D69F0);
    }
  }
}

uint64_t sub_1C6B49AE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6B49B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B49B90()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F7030);
  __swift_project_value_buffer(v0, qword_1EC1F7030);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "string_value";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t sub_1C6B49CE4()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t sub_1C6B49D54()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B49DE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B49E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B4A2E8(&qword_1EC1D6A18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B49ED8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5908 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1F7030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B49F80(uint64_t a1)
{
  v2 = sub_1C6B4A2E8(&qword_1EC1D6A00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B49FEC()
{
  sub_1C6B4A2E8(&qword_1EC1D6A00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B4A068(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6B4A2E8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID()
{
  result = qword_1EC1D6A20;
  if (!qword_1EC1D6A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B4A290()
{
  if (!qword_1EDCDF400)
  {
    sub_1C6B3FD2C();
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF400);
    }
  }
}

uint64_t sub_1C6B4A2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B4A358()
{
  result = sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AudioEngageEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t AudioEngageEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4590], v0);
  sub_1C6B4B840(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t AudioEngageEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4810], v0);
  sub_1C6B4B840(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t AudioEngageEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77830();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = AudioEngageEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4AB3C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B4AC48(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77820();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t AudioEngageEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77850();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t AudioEngageEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77870();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t AudioEngageEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77860();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6B4B580(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77820();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t AudioEngageEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77870();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B4B840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B4B8E0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B4B9E0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77830();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = AudioEngageEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4BB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77820();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B4BC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B4BD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77820();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B4BE44()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77870();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t ArticleShareEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleShareEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4590], v0);
  sub_1C6B4D400(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleShareEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4810], v0);
  sub_1C6B4D400(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleShareEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77950();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleShareEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4C6FC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B4C808(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77940();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleShareEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77960();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleShareEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77980();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleShareEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77970();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6B4D140(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77940();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleShareEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77980();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B4D400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B4D4A0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B4D5A0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77950();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleShareEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4D6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77940();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B4D810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B4D918(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77940();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B4DA04()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77980();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

void sub_1C6B4DB54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v6 = sub_1C6D77E40();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C6D77690();
  v36 = *(v41 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B4DFEC();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v35 - v20, a1, v18);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v3)
    {
      sub_1C6B4E080(&unk_1EC1D6A50, MEMORY[0x1E69B46D8]);
      v26 = v41;
      sub_1C6D75AF0();
      v28 = v37;
      sub_1C6D77680();
      v29 = sub_1C6D77E30();
      v31 = v30;
      sub_1C6B1C9F0(v23, v25);
      (*(v38 + 8))(v28, v39);
      (*(v36 + 8))(v11, v26);
      *a3 = v29;
      a3[1] = v31;
      v32 = *MEMORY[0x1E69E3668];
      v33 = sub_1C6D76F90();
      v34 = *(v33 - 8);
      (*(v34 + 104))(a3, v32, v33);
      (*(v34 + 56))(a3, 0, 1, v33);
    }
  }

  else
  {
    v27 = sub_1C6D76F90();
    (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
  }
}

void sub_1C6B4DFEC()
{
  if (!qword_1EDCE60B8)
  {
    sub_1C6D776A0();
    sub_1C6B4E080(&qword_1EDCE5F80, MEMORY[0x1E69B46E8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE60B8);
    }
  }
}

uint64_t sub_1C6B4E080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.featureMap.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_1C6B5F348(MEMORY[0x1E69E7CC0]);
  v2 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0) + 20);
  return sub_1C6D78A30();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.floatList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(v2, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v9 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4E400@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(a1, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v9 = a2 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0) + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.floatList.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6B5F6DC(v9, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      return sub_1C6B4E838;
    }

    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v13 = MEMORY[0x1E69E7CC0];
  v16 = v13 + *(v10 + 20);
  sub_1C6D78A30();
  return sub_1C6B4E838;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.int32List.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(v2, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4EA24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(a1, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4EC00@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.int32List.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v13 = MEMORY[0x1E69E7CC0];
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6B4EEAC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  return sub_1C6B4EEAC;
}

void sub_1C6B4EEF0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C6B5F654((*a1)[3], v10, a5);
    sub_1C6B61A8C(v13, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C6B62664(v11, a6);
  }

  else
  {
    sub_1C6B61A8C(**a1, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.int64List.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(v2, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4F208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(a1, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0) + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.int64List.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v13 = MEMORY[0x1E69E7CC0];
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6B4F648;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  return sub_1C6B4F648;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.bytesList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(v2, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4F834@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(a1, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0) + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.bytesList.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v13 = MEMORY[0x1E69E7CC0];
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6B4FC74;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  return sub_1C6B4FC74;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.float16List.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(v2, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = xmmword_1C6D7F510;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4FE60@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6B61A0C(a1, &v11 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = xmmword_1C6D7F510;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B50008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1C6B5F654(a1, &v17 - v13, a6);
  sub_1C6B61A8C(a2, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F6DC(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1C6B50144(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C6B61A8C(v2, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F6DC(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1C6D7F510;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.float16List.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v13 = xmmword_1C6D7F510;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6B504AC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6B504AC;
}

uint64_t sub_1C6B50508@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B505A4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Int32List.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0) + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    return sub_1C6D79560() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Int64List.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0) + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    return sub_1C6D79560() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Float16List.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C6B5E090(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0) + 20);
  return sub_1C6D78A30();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.getter()
{
  v1 = *v0;
  sub_1C6B1CD10(*v0, *(v0 + 8));
  return v1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6B1C9F0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6B50DE0();
    }
  }

  return result;
}

uint64_t sub_1C6B50DE0()
{
  sub_1C6D78A10();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  sub_1C6B5F7C4(&unk_1EDCE5BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  return sub_1C6D78AC0();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_1C6D78A10(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0), sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature), sub_1C6B5F7C4(&unk_1EDCE5BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature), result = sub_1C6D78C40(), !v3))
  {
    v2 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B51040(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B51140@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_1C6B5F348(MEMORY[0x1E69E7CC0]);
  v4 = a2 + *(a1 + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B511CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&unk_1EC1D6C30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B5126C(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(&qword_1EDCE5B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B512D8()
{
  sub_1C6B5F7C4(&qword_1EDCE5B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B51388()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6A78);
  __swift_project_value_buffer(v0, qword_1EC1D6A78);
  sub_1C6B4A290();
  sub_1C6B61724(0, &qword_1EDCDF910, MEMORY[0x1E69AADF0]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C6D7F520;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "float_list";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "int32_list";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "int64_list";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "bytes_list";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "float16_list";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1C6B51750(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_1C6B51D84(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6B523D4(v5, a1, a2, a3);
          break;
        case 4:
          sub_1C6B52A24(v5, a1, a2, a3);
          break;
        case 5:
          sub_1C6B53074(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6B51750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v50 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  sub_1C6B62540(0, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v43 = v5;
  v29 = *(v5 + 56);
  v46 = v4;
  v40 = v29;
  v29(&v38 - v27, 1, 1, v4);
  sub_1C6B61A0C(v50, v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v39 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_5:
    v31 = v46;
    goto LABEL_6;
  }

  sub_1C6B5F6DC(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F6DC(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_5;
  }

  sub_1C6B61A8C(v28, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v35 = v41;
  sub_1C6B5F6DC(v20, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  sub_1C6B5F6DC(v35, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v31 = v46;
  v40(v28, 0, 1, v46);
LABEL_6:
  v32 = v44;
  sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v33 = v45;
  sub_1C6D78BB0();
  if (v33)
  {
    return sub_1C6B61A8C(v28, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  sub_1C6B61A0C(v28, v32, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  if ((*(v43 + 48))(v32, 1, v31) == 1)
  {
    sub_1C6B61A8C(v28, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    return sub_1C6B61A8C(v32, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  else
  {
    v36 = v42;
    sub_1C6B5F6DC(v32, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v28, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v37 = v50;
    sub_1C6B61A8C(v50, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v36, v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    swift_storeEnumTagMultiPayload();
    return (*(v39 + 56))(v37, 0, 1, v15);
  }
}

uint64_t sub_1C6B51D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6B62540(0, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6B61A0C(v51, v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
  }

  else
  {
    sub_1C6B5F6DC(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v45;
      sub_1C6B61A8C(v45, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v32 = v42;
      sub_1C6B5F6DC(v20, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      sub_1C6B5F6DC(v32, v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6B61A8C(v31, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  sub_1C6B61A0C(v31, v34, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6B61A8C(v31, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    return sub_1C6B61A8C(v34, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  else
  {
    v37 = v41;
    sub_1C6B5F6DC(v34, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v31, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    v38 = v51;
    sub_1C6B61A8C(v51, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v37, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6B523D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6B62540(0, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6B61A0C(v51, v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
  }

  else
  {
    sub_1C6B5F6DC(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = v45;
      sub_1C6B61A8C(v45, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      v32 = v42;
      sub_1C6B5F6DC(v20, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      sub_1C6B5F6DC(v32, v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6B61A8C(v31, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  sub_1C6B61A0C(v31, v34, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6B61A8C(v31, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    return sub_1C6B61A8C(v34, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  else
  {
    v37 = v41;
    sub_1C6B5F6DC(v34, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v31, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    v38 = v51;
    sub_1C6B61A8C(v51, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v37, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6B52A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6B62540(0, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6B61A0C(v51, v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
  }

  else
  {
    sub_1C6B5F6DC(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v31 = v45;
      sub_1C6B61A8C(v45, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      v32 = v42;
      sub_1C6B5F6DC(v20, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      sub_1C6B5F6DC(v32, v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6B61A8C(v31, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  sub_1C6B61A0C(v31, v34, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6B61A8C(v31, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    return sub_1C6B61A8C(v34, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  else
  {
    v37 = v41;
    sub_1C6B5F6DC(v34, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v31, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    v38 = v51;
    sub_1C6B61A8C(v51, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v37, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6B53074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6B62540(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6B61A0C(v51, v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
  }

  else
  {
    sub_1C6B5F6DC(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v31 = v45;
      sub_1C6B61A8C(v45, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v32 = v42;
      sub_1C6B5F6DC(v20, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6B5F6DC(v32, v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6B61A8C(v31, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6B61A0C(v31, v34, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6B61A8C(v31, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    return sub_1C6B61A8C(v34, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    v37 = v41;
    sub_1C6B5F6DC(v34, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v31, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v38 = v51;
    sub_1C6B61A8C(v51, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v37, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1C6B61A0C(v3, &v16 - v10, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1C6B53B44(v3, a1, a2, a3);
    }

    else
    {
      sub_1C6B538E0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1C6B53DAC(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1C6B54014(v3, a1, a2, a3);
  }

  else
  {
    sub_1C6B5427C(v3, a1, a2, a3);
  }

  result = sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B538E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B53B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B53DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B54014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B5427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B54530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B545EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B5468C(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B546F8()
{
  sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B548D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B54978(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B549E4()
{
  sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B54B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B54C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B54D04(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B54D70()
{
  sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B54F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B55004(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B55070()
{
  sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B55190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B552E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B55384(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B553F0()
{
  sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B55484(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B5556C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_1C6B4A290();
  sub_1C6B61724(0, &qword_1EDCDF910, MEMORY[0x1E69AADF0]);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 72);
  v13 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C6D7E630;
  v15 = v14 + v13 + *(v11 + 56);
  *(v14 + v13) = 1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = 2;
  v16 = *a5;
  v17 = sub_1C6D78D00();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  return sub_1C6D78D10();
}

uint64_t sub_1C6B5570C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6D78D20();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B20();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1C6D78C80();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  return sub_1C6D78A20();
}

uint64_t sub_1C6B55928(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6D7A260();
  a1(0);
  sub_1C6B5F7C4(a2, a3);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B559B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1C6D7F510;
  v2 = a2 + *(a1 + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B55A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B55AC8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6D78D20();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6B55B64(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B55BD0()
{
  sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B55C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C6B5E090(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B55CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C6D7A130() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C6B55D88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v69 = v2;
  v70 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v61 = v5[4];
    *v62 = v8;
    *&v62[16] = v5[6];
    v63 = *(v5 + 112);
    v9 = v5[1];
    v58 = *v5;
    v59 = v9;
    v10 = v5[3];
    *v60 = v5[2];
    *&v60[16] = v10;
    v11 = *v6;
    v12 = v6[1];
    v13 = v6[3];
    v64[2] = v6[2];
    v65 = v13;
    v64[0] = v11;
    v64[1] = v12;
    v14 = v6[4];
    v15 = v6[5];
    v16 = v6[6];
    v68 = *(v6 + 112);
    v67[0] = v15;
    v67[1] = v16;
    v66 = v14;
    v17 = *(&v58 + 1);
    v18 = v63;
    if ((v63 & 0x40) != 0)
    {
      if ((v68 & 0x40) == 0)
      {
        return 0;
      }

      v54 = v58;
      v55 = v59 & 0x1FF;
      *v56 = *(&v59 + 1);
      *&v56[8] = *v60;
      v49 = v64[0];
      v50 = v64[1] & 0x1FF;
      v51 = *(&v64[1] + 8);
      v52 = *(&v64[2] + 1);
      if ((_s19NewsPersonalization0B6ScriptV9AssertionO09ExistenceD0V2eeoiySbAG_AGtFZ_0(&v54, &v49) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v19 = v68;
      if ((v68 & 0x40) != 0)
      {
        return 0;
      }

      if (v58 > 2u)
      {
        if (v58 == 3)
        {
          v20 = 0xE200000000000000;
          v21 = 29804;
        }

        else if (v58 == 4)
        {
          v21 = 6648940;
          v20 = 0xE300000000000000;
        }

        else
        {
          v20 = 0xE200000000000000;
          v21 = 25966;
        }
      }

      else if (v58)
      {
        v20 = 0xE300000000000000;
        v21 = v58 == 1 ? 6648935 : 7106917;
      }

      else
      {
        v20 = 0xE200000000000000;
        v21 = 29799;
      }

      v47 = i;
      if (LOBYTE(v64[0]) > 2u)
      {
        if (LOBYTE(v64[0]) == 3)
        {
          v22 = 0xE200000000000000;
          v23 = 29804;
        }

        else if (LOBYTE(v64[0]) == 4)
        {
          v23 = 6648940;
          v22 = 0xE300000000000000;
        }

        else
        {
          v22 = 0xE200000000000000;
          v23 = 25966;
        }
      }

      else if (LOBYTE(v64[0]))
      {
        v22 = 0xE300000000000000;
        v23 = LOBYTE(v64[0]) == 1 ? 6648935 : 7106917;
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 29799;
      }

      v40 = v59;
      v41 = BYTE1(v59);
      v42 = BYTE8(v59);
      v43 = *v60;
      v44 = *&v60[8];
      v36 = WORD3(v59);
      v35 = *(&v59 + 2);
      v34 = *&v62[8];
      v32 = v62[0];
      v33 = *&v62[24];
      v24 = v60[24];
      v48 = *(v64 + 8);
      v39 = v64[2];
      v37 = v65;
      v38 = BYTE8(v64[1]);
      v45 = v66;
      v46 = v61;
      v31 = *(v67 + 8);
      v29 = v67[0];
      v30 = *(&v67[1] + 1);
      v25 = SBYTE8(v65);
      if (v21 != v23)
      {
        goto LABEL_35;
      }

      if (v20 == v22)
      {
        sub_1C6B6230C(v64, &v54);
        sub_1C6B6230C(&v58, &v54);
      }

      else
      {
LABEL_35:
        v26 = sub_1C6D7A130();
        sub_1C6B6230C(v64, &v54);
        sub_1C6B6230C(&v58, &v54);

        if ((v26 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (v24 < 0)
      {
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        *&v54 = v17;
        BYTE8(v54) = v40;
        BYTE9(v54) = v41;
        *(&v54 + 10) = v35;
        HIWORD(v54) = (v35 | (v36 << 32)) >> 32;
        LOBYTE(v55) = v42;
        *v56 = v43;
        *&v56[8] = v44;
        v57 = v24 & 0x7F;
        v49 = v48;
        LOBYTE(v50) = v38;
        v51 = v39;
        v52 = v37;
        v53 = v25 & 0x7F;
        if ((_s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v54, &v49) & 1) == 0)
        {
LABEL_52:
          sub_1C6B62368(v64);
          sub_1C6B62368(&v58);
          return 0;
        }
      }

      else if (v25 < 0 || *&v48 != v17)
      {
        goto LABEL_52;
      }

      if (v18 < 0)
      {
        i = v47;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_52;
        }

        v54 = v46;
        LOBYTE(v55) = v32;
        *v56 = v34;
        *&v56[16] = v33;
        v57 = v18 & 0x3F;
        v49 = v45;
        LOBYTE(v50) = v29;
        v51 = v31;
        v52 = v30;
        v53 = v19 & 0x3F;
        v27 = _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v54, &v49);
        sub_1C6B62368(v64);
        sub_1C6B62368(&v58);
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        i = v47;
        if (v19 < 0)
        {
          goto LABEL_52;
        }

        sub_1C6B62368(v64);
        sub_1C6B62368(&v58);
        if (*&v46 != *&v45)
        {
          return 0;
        }
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 120);
    v5 = (v5 + 120);
  }

  return 1;
}

uint64_t sub_1C6B5623C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v59 = a2 + 32;
  v60 = result + 32;
  v58 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_148;
    }

    v4 = v60 + 32 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = v59 + 32 * v3;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v65 = v6;
    v66 = v10;
    v61 = v3;
    v64 = *(v9 + 16);
    if ((v7 & 0x80) != 0)
    {
      if ((v12 & 0x80000000) == 0)
      {
        return 0;
      }

      v17 = *(v9 + 16);
      sub_1C6B35FD4(v6, v5, v7);

      v18 = v11;
      v19 = v10;
      v20 = v17;
      goto LABEL_31;
    }

    if (v12 < 0)
    {
      return 0;
    }

    if (!v7)
    {
      if (*(v9 + 16))
      {
        return 0;
      }

      if (v6 != v11 || v5 != v10)
      {
        v22 = sub_1C6D7A130();
        sub_1C6B35FD4(v6, v5, 0);

        sub_1C6B35FD4(v11, v10, 0);

        if ((v22 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_82;
      }

      sub_1C6B35FD4(v6, v5, 0);

      v18 = v6;
      v19 = v5;
      v20 = 0;
LABEL_31:
      sub_1C6B35FD4(v18, v19, v20);

      goto LABEL_82;
    }

    if (v7 == 1)
    {
      if (v12 != 1)
      {
        return 0;
      }

      v14 = 0x7374726F7073;
      v15 = 0xE600000000000000;
      v16 = 0x7374726F7073;
      switch(v6)
      {
        case 1:
          v15 = 0xE800000000000000;
          v16 = 0x73636974696C6F70;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1685024614;
          break;
        case 3:
          v16 = 0x6961747265746E65;
          v15 = 0xED0000746E656D6ELL;
          break;
        case 4:
          v16 = 0x68746C616568;
          break;
        case 5:
          v15 = 0xE700000000000000;
          v16 = 0x7373656E746966;
          break;
        case 6:
          v15 = 0xEA00000000007967;
          v16 = 0x6F6C6F6E68636574;
          break;
        case 7:
          v15 = 0xEA00000000006C6CLL;
          v16 = 0x616274656B736162;
          break;
        case 8:
          v15 = 0xE800000000000000;
          v16 = 0x6C6C6162746F6F66;
          break;
        case 9:
          v15 = 0xE400000000000000;
          v16 = 1718382439;
          break;
        case 10:
          v16 = 0x726563636F73;
          break;
        case 11:
          v15 = 0xE700000000000000;
          v16 = 0x6E6F6968736166;
          break;
        case 12:
          v16 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v37 = 0xE600000000000000;
      switch(*v9)
      {
        case 1u:
          v37 = 0xE800000000000000;
          v14 = 0x73636974696C6F70;
          break;
        case 2u:
          v37 = 0xE400000000000000;
          v14 = 1685024614;
          break;
        case 3u:
          v14 = 0x6961747265746E65;
          v37 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v14 = 0x68746C616568;
          break;
        case 5u:
          v37 = 0xE700000000000000;
          v14 = 0x7373656E746966;
          break;
        case 6u:
          v37 = 0xEA00000000007967;
          v14 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v37 = 0xEA00000000006C6CLL;
          v14 = 0x616274656B736162;
          break;
        case 8u:
          v37 = 0xE800000000000000;
          v14 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v37 = 0xE400000000000000;
          v14 = 1718382439;
          break;
        case 0xAu:
          v14 = 0x726563636F73;
          break;
        case 0xBu:
          v37 = 0xE700000000000000;
          v14 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v14 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v16 == v14 && v15 == v37)
      {
        sub_1C6B35FD4(v6, v5, 1);

        v30 = v11;
        v31 = v66;
        v32 = 1;
        goto LABEL_79;
      }

      v33 = sub_1C6D7A130();
      sub_1C6B35FD4(v6, v5, 1);

      v34 = v11;
      v35 = v66;
      v36 = 1;
    }

    else
    {
      if (v12 != 2)
      {
        return 0;
      }

      if (v6 > 1u)
      {
        if (v6 == 2)
        {
          v23 = 1313887045;
        }

        else
        {
          v23 = 1330659671;
        }

        v24 = 0xE400000000000000;
      }

      else
      {
        if (v6)
        {
          v23 = 0x696C6F505F4E4E43;
        }

        else
        {
          v23 = 5131843;
        }

        if (v6)
        {
          v24 = 0xEC00000073636974;
        }

        else
        {
          v24 = 0xE300000000000000;
        }
      }

      v25 = 1313887045;
      if (v11 != 2)
      {
        v25 = 1330659671;
      }

      v26 = 5131843;
      if (v11)
      {
        v26 = 0x696C6F505F4E4E43;
      }

      v27 = 0xE300000000000000;
      if (v11)
      {
        v27 = 0xEC00000073636974;
      }

      if (v11 <= 1u)
      {
        v28 = v26;
      }

      else
      {
        v28 = v25;
      }

      if (v11 <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE400000000000000;
      }

      if (v23 == v28 && v24 == v29)
      {
        sub_1C6B35FD4(v6, v5, 2);

        v30 = v11;
        v31 = v66;
        v32 = 2;
LABEL_79:
        sub_1C6B35FD4(v30, v31, v32);

        goto LABEL_82;
      }

      v33 = sub_1C6D7A130();
      sub_1C6B35FD4(v6, v5, 2);

      v34 = v11;
      v35 = v66;
      v36 = 2;
    }

    sub_1C6B35FD4(v34, v35, v36);

    if ((v33 & 1) == 0)
    {
LABEL_145:
      sub_1C6B360B4(v11, v66, v7);

      v53 = v6;
      v54 = v5;
LABEL_146:
      sub_1C6B360B4(v53, v54, v7);
LABEL_143:

      return 0;
    }

LABEL_82:
    v63 = v5;
    v38 = *(v8 + 16);
    if (v38 != *(v13 + 16))
    {
      sub_1C6B360B4(v11, v66, v64);

      v53 = v6;
      v54 = v63;
      goto LABEL_146;
    }

    v62 = v7;
    if (v38 && v8 != v13)
    {
      break;
    }

LABEL_88:
    v3 = v61 + 1;
    sub_1C6B360B4(v11, v66, v64);

    sub_1C6B360B4(v65, v63, v62);

    result = 1;
    v2 = v58;
    if (v61 + 1 == v58)
    {
      return result;
    }
  }

  v40 = 0;
  v69 = v8;
  v67 = v11;
  v68 = v13;
  while (v38)
  {
    v41 = v8 + v40;
    v43 = *(v8 + v40 + 40);
    v42 = *(v8 + v40 + 48);
    v44 = *(v8 + v40 + 56);
    v45 = *(v8 + v40 + 64);
    v46 = v13 + v40;
    v48 = *(v13 + v40 + 40);
    v47 = *(v13 + v40 + 48);
    v49 = *(v13 + v40 + 56);
    v50 = *(v46 + 64);
    if (v43)
    {
      if (!v48)
      {
        goto LABEL_142;
      }

      result = *(v41 + 32);
      if (result != *(v46 + 32) || v43 != v48)
      {
        result = sub_1C6D7A130();
        if ((result & 1) == 0)
        {
          goto LABEL_142;
        }
      }
    }

    else if (v48)
    {
      goto LABEL_142;
    }

    v52 = v45 >> 5;
    if (v45 >> 5 > 2)
    {
      if (v52 == 3)
      {
        if ((v50 & 0xE0) != 0x60)
        {
          goto LABEL_142;
        }

        if (!v42)
        {
LABEL_126:
          if (v47)
          {
            goto LABEL_142;
          }

          result = sub_1C6B62230(0, v49, v50);
          if (v44 != v49)
          {
            goto LABEL_142;
          }

          goto LABEL_93;
        }

        if (!v47)
        {
          goto LABEL_142;
        }

        goto LABEL_91;
      }

      if (v52 == 4)
      {
        if ((v50 & 0xE0) != 0x80)
        {
          goto LABEL_142;
        }

        if (v42)
        {
          if (!v47)
          {
            goto LABEL_142;
          }

          sub_1C6B62230(v42, v44, v45);

          sub_1C6B62230(v47, v49, v50);
          sub_1C6B62230(v47, v49, v50);
          sub_1C6B62230(v42, v44, v45);
          v56 = sub_1C6B56EAC(v42, v47);
          sub_1C6B62288(v47, v49, v50);
          sub_1C6B62288(v42, v44, v45);

          sub_1C6B62288(v47, v49, v50);

          result = sub_1C6B62288(v42, v44, v45);
          if ((v56 & 1) == 0)
          {
            goto LABEL_142;
          }
        }

        else
        {
          if (v47)
          {
            goto LABEL_142;
          }

          result = sub_1C6B62230(0, v49, v50);
        }

        if (*&v44 != *&v49)
        {
          goto LABEL_142;
        }
      }

      else
      {
        if ((v50 & 0xE0) != 0xA0)
        {
          goto LABEL_142;
        }

        sub_1C6B62230(v42, v44, v45);

        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v42, v44, v45);
        v57 = sub_1C6B5794C(v42, v47);
        sub_1C6B62288(v47, v49, v50);
        sub_1C6B62288(v42, v44, v45);

        sub_1C6B62288(v47, v49, v50);

        result = sub_1C6B62288(v42, v44, v45);
        if ((v57 & 1) == 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      if (v52)
      {
        if (v52 == 1)
        {
          if ((v50 & 0xE0) != 0x20)
          {
            goto LABEL_142;
          }
        }

        else if ((v50 & 0xE0) != 0x40)
        {
          goto LABEL_142;
        }

LABEL_125:
        if (!v42)
        {
          goto LABEL_126;
        }

        if (!v47)
        {
          sub_1C6B62230(0, v49, v50);
LABEL_142:
          sub_1C6B360B4(v67, v66, v64);

          sub_1C6B360B4(v65, v63, v62);
          goto LABEL_143;
        }

LABEL_91:

        sub_1C6B62230(v42, v44, v45);

        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v42, v44, v45);
        v55 = sub_1C6B56EAC(v42, v47);
        sub_1C6B62288(v47, v49, v50);
        sub_1C6B62288(v42, v44, v45);

        sub_1C6B62288(v47, v49, v50);

        result = sub_1C6B62288(v42, v44, v45);
        if ((v55 & 1) == 0 || v44 != v49)
        {
          goto LABEL_142;
        }

        goto LABEL_93;
      }

      if (v50 >= 0x20)
      {
        goto LABEL_142;
      }

      if (v45)
      {
        if ((v50 & 1) == 0)
        {
          goto LABEL_142;
        }

        goto LABEL_125;
      }

      if ((v50 & 1) != 0 || v42 != v47)
      {
        goto LABEL_142;
      }
    }

LABEL_93:
    v40 += 40;
    --v38;
    v8 = v69;
    v11 = v67;
    v13 = v68;
    if (!v38)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_1C6B56CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = *(v3 - 3);
      v9 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v4 - 4) != *(v3 - 4) || v5 != v10)
        {
          v14 = *(v4 - 3);
          v7 = *(v4 - 1);
          if ((sub_1C6D7A130() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      v17 = v9;
      v20 = v6;
      v21 = v7;
      v22 = v8;
      v18 = v11;
      v19 = v12;

      sub_1C6B62230(v6, v7, v8);

      sub_1C6B62230(v9, v11, v12);
      sub_1C6B62230(v6, v7, v8);
      sub_1C6B62230(v9, v11, v12);
      v16 = _s19NewsPersonalization0B6ScriptV11InteractionO2eeoiySbAE_AEtFZ_0(&v20, &v17);
      sub_1C6B62288(v17, v18, v19);
      sub_1C6B62288(v20, v21, v22);

      sub_1C6B62288(v9, v11, v12);

      sub_1C6B62288(v6, v7, v8);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C6B56EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v9 = *(i - 2);
      v10 = *i;
      v8 = v10;
      v12 = *(v3 - 2);
      v11 = *(v3 - 1);
      v7 = *v3;
      if (v10 < 0)
      {
        break;
      }

      if (v7 < 0)
      {
        return 0;
      }

      if (!*i)
      {
        if (*v3)
        {
          return 0;
        }

LABEL_41:
        if (v9 != v12 || *(i - 1) != v11)
        {
          v25 = *(i - 2);
          v26 = *(v3 - 2);
          v27 = *(v3 - 1);
          if ((sub_1C6D7A130() & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_7;
      }

      v48 = *(i - 1);
      if (v10 != 1)
      {
        if (v7 != 2)
        {
          return 0;
        }

        v19 = 1330659671;
        if (*(i - 2) == 2)
        {
          v19 = 1313887045;
        }

        v20 = 0x696C6F505F4E4E43;
        if (!*(i - 2))
        {
          v20 = 5131843;
        }

        v21 = 0xEC00000073636974;
        if (!*(i - 2))
        {
          v21 = 0xE300000000000000;
        }

        if (*(i - 2) <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = v19;
        }

        if (*(i - 2) <= 1u)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        if (*(v3 - 2) > 1u)
        {
          if (*(v3 - 2) == 2)
          {
            v34 = 1313887045;
          }

          else
          {
            v34 = 1330659671;
          }

          v24 = 0xE400000000000000;
          if (v22 != v34)
          {
LABEL_75:
            v36 = sub_1C6D7A130();
            sub_1C6B622D4(v12, v11, 2);
            sub_1C6B622D4(v9, v48, 2);

            sub_1C6B622F0(v12, v11, 2);
            sub_1C6B622F0(v9, v48, 2);
            if ((v36 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_7;
          }
        }

        else if (*(v3 - 2))
        {
          v24 = 0xEC00000073636974;
          if (v22 != 0x696C6F505F4E4E43)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v24 = 0xE300000000000000;
          if (v22 != 5131843)
          {
            goto LABEL_75;
          }
        }

        if (v23 == v24)
        {
          v5 = *(v3 - 2);
          v6 = *(i - 2);
          LOBYTE(v7) = 2;
          v8 = 2;
          goto LABEL_6;
        }

        goto LABEL_75;
      }

      if (v7 != 1)
      {
        return 0;
      }

      v13 = 0xE600000000000000;
      v14 = 0x7374726F7073;
      switch(*(i - 2))
      {
        case 1u:
          v13 = 0xE800000000000000;
          v14 = 0x73636974696C6F70;
          break;
        case 2u:
          v13 = 0xE400000000000000;
          v14 = 1685024614;
          break;
        case 3u:
          v14 = 0x6961747265746E65;
          v13 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v14 = 0x68746C616568;
          break;
        case 5u:
          v13 = 0xE700000000000000;
          v14 = 0x7373656E746966;
          break;
        case 6u:
          v13 = 0xEA00000000007967;
          v14 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v13 = 0xEA00000000006C6CLL;
          v14 = 0x616274656B736162;
          break;
        case 8u:
          v13 = 0xE800000000000000;
          v14 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v13 = 0xE400000000000000;
          v14 = 1718382439;
          break;
        case 0xAu:
          v14 = 0x726563636F73;
          break;
        case 0xBu:
          v13 = 0xE700000000000000;
          v14 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v14 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v40 = 0xE600000000000000;
      v41 = 0x7374726F7073;
      switch(*(v3 - 2))
      {
        case 1u:
          v40 = 0xE800000000000000;
          v41 = 0x73636974696C6F70;
          break;
        case 2u:
          v40 = 0xE400000000000000;
          v41 = 1685024614;
          break;
        case 3u:
          v41 = 0x6961747265746E65;
          v40 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v41 = 0x68746C616568;
          break;
        case 5u:
          v40 = 0xE700000000000000;
          v41 = 0x7373656E746966;
          break;
        case 6u:
          v40 = 0xEA00000000007967;
          v41 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v40 = 0xEA00000000006C6CLL;
          v41 = 0x616274656B736162;
          break;
        case 8u:
          v40 = 0xE800000000000000;
          v41 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v40 = 0xE400000000000000;
          v41 = 1718382439;
          break;
        case 0xAu:
          v41 = 0x726563636F73;
          break;
        case 0xBu:
          v40 = 0xE700000000000000;
          v41 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v41 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v14 == v41 && v13 == v40)
      {
        v5 = *(v3 - 2);
        v6 = *(i - 2);
        LOBYTE(v7) = 1;
        v8 = 1;
LABEL_6:
        sub_1C6B622D4(v5, v11, v7);
        sub_1C6B622D4(v6, v48, v8);

        sub_1C6B622F0(v5, v11, v7);
        sub_1C6B622F0(v6, v48, v8);
        goto LABEL_7;
      }

      v42 = sub_1C6D7A130();
      sub_1C6B622D4(v12, v11, 1);
      sub_1C6B622D4(v9, v48, 1);

      sub_1C6B622F0(v12, v11, 1);
      sub_1C6B622F0(v9, v48, 1);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if ((v7 & 0x80000000) == 0)
    {
      return 0;
    }

    v15 = v7 & 0x7F;
    v16 = v10 & 0x7F;
    if (v16)
    {
      v48 = *(i - 1);
      if (v16 == 1)
      {
        if (v15 != 1)
        {
          return 0;
        }

        v17 = 0xE600000000000000;
        v18 = 0x7374726F7073;
        switch(*(i - 2))
        {
          case 1u:
            v17 = 0xE800000000000000;
            v18 = 0x73636974696C6F70;
            break;
          case 2u:
            v17 = 0xE400000000000000;
            v18 = 1685024614;
            break;
          case 3u:
            v18 = 0x6961747265746E65;
            v17 = 0xED0000746E656D6ELL;
            break;
          case 4u:
            v18 = 0x68746C616568;
            break;
          case 5u:
            v17 = 0xE700000000000000;
            v18 = 0x7373656E746966;
            break;
          case 6u:
            v17 = 0xEA00000000007967;
            v18 = 0x6F6C6F6E68636574;
            break;
          case 7u:
            v17 = 0xEA00000000006C6CLL;
            v18 = 0x616274656B736162;
            break;
          case 8u:
            v17 = 0xE800000000000000;
            v18 = 0x6C6C6162746F6F66;
            break;
          case 9u:
            v17 = 0xE400000000000000;
            v18 = 1718382439;
            break;
          case 0xAu:
            v18 = 0x726563636F73;
            break;
          case 0xBu:
            v17 = 0xE700000000000000;
            v18 = 0x6E6F6968736166;
            break;
          case 0xCu:
            v18 = 0x6C6576617274;
            break;
          default:
            break;
        }

        v43 = 0xE600000000000000;
        v44 = 0x7374726F7073;
        switch(*(v3 - 2))
        {
          case 1u:
            v43 = 0xE800000000000000;
            v44 = 0x73636974696C6F70;
            break;
          case 2u:
            v43 = 0xE400000000000000;
            v44 = 1685024614;
            break;
          case 3u:
            v44 = 0x6961747265746E65;
            v43 = 0xED0000746E656D6ELL;
            break;
          case 4u:
            v44 = 0x68746C616568;
            break;
          case 5u:
            v43 = 0xE700000000000000;
            v44 = 0x7373656E746966;
            break;
          case 6u:
            v43 = 0xEA00000000007967;
            v44 = 0x6F6C6F6E68636574;
            break;
          case 7u:
            v43 = 0xEA00000000006C6CLL;
            v44 = 0x616274656B736162;
            break;
          case 8u:
            v43 = 0xE800000000000000;
            v44 = 0x6C6C6162746F6F66;
            break;
          case 9u:
            v43 = 0xE400000000000000;
            v44 = 1718382439;
            break;
          case 0xAu:
            v44 = 0x726563636F73;
            break;
          case 0xBu:
            v43 = 0xE700000000000000;
            v44 = 0x6E6F6968736166;
            break;
          case 0xCu:
            v44 = 0x6C6576617274;
            break;
          default:
            break;
        }

        if (v18 == v44 && v17 == v43)
        {
          v5 = *(v3 - 2);
          v6 = *(i - 2);
          goto LABEL_6;
        }

        v47 = sub_1C6D7A130();
        sub_1C6B622D4(v12, v11, v7);
        sub_1C6B622D4(v9, v48, v8);

        sub_1C6B622F0(v12, v11, v7);
        v37 = v9;
        v38 = v48;
        v39 = v8;
        goto LABEL_137;
      }

      if (v15 != 2)
      {
        return 0;
      }

      v28 = 1330659671;
      if (*(i - 2) == 2)
      {
        v28 = 1313887045;
      }

      v29 = 0x696C6F505F4E4E43;
      if (!*(i - 2))
      {
        v29 = 5131843;
      }

      v30 = 0xEC00000073636974;
      if (!*(i - 2))
      {
        v30 = 0xE300000000000000;
      }

      if (*(i - 2) <= 1u)
      {
        v31 = v29;
      }

      else
      {
        v31 = v28;
      }

      if (*(i - 2) <= 1u)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE400000000000000;
      }

      v46 = v8;
      if (*(v3 - 2) > 1u)
      {
        if (*(v3 - 2) == 2)
        {
          v35 = 1313887045;
        }

        else
        {
          v35 = 1330659671;
        }

        v33 = 0xE400000000000000;
        if (v31 != v35)
        {
          goto LABEL_80;
        }
      }

      else if (*(v3 - 2))
      {
        v33 = 0xEC00000073636974;
        if (v31 != 0x696C6F505F4E4E43)
        {
LABEL_80:
          v47 = sub_1C6D7A130();
          sub_1C6B622D4(v12, v11, v7);
          sub_1C6B622D4(v9, v48, v46);

          sub_1C6B622F0(v12, v11, v7);
          v37 = v9;
          v38 = v48;
          v39 = v46;
LABEL_137:
          sub_1C6B622F0(v37, v38, v39);
          if ((v47 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v33 = 0xE300000000000000;
        if (v31 != 5131843)
        {
          goto LABEL_80;
        }
      }

      if (v32 == v33)
      {
        v5 = *(v3 - 2);
        v6 = *(i - 2);
        v8 = v46;
        goto LABEL_6;
      }

      goto LABEL_80;
    }

    if ((v7 & 0x7F) != 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  return 1;
}

uint64_t sub_1C6B5794C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v49 = a2 + 32;
  v50 = result + 32;
  v48 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_167;
    }

    v4 = v50 + 24 * v3;
    v5 = (v49 + 24 * v3);
    v58 = *v4;
    v6 = *(*v4 + 16);
    v57 = *v5;
    if (v6 != *(*v5 + 16))
    {
      return 0;
    }

    v51 = v3;
    v54 = v5[1];
    v55 = *(v4 + 8);
    v52 = *(v4 + 16);
    v53 = *(v5 + 16);
    if (v6)
    {
      break;
    }

LABEL_126:
    if (v55 != v54)
    {
LABEL_163:

      return 0;
    }

    if (v52 > 2)
    {
      v41 = v53;
      if (v52 == 3)
      {
        v42 = 0xE900000000000066;
        v43 = 0x6569724264616572;
        if (v53 <= 2)
        {
          goto LABEL_142;
        }
      }

      else if (v52 == 4)
      {
        v42 = 0xE800000000000000;
        v43 = 0x676E6F4C64616572;
        if (v53 <= 2)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v42 = 0xE400000000000000;
        v43 = 1702257011;
        if (v53 <= 2)
        {
LABEL_142:
          if (v41)
          {
            if (v41 == 1)
            {
              v44 = 0xE400000000000000;
              if (v43 != 1701538156)
              {
                goto LABEL_159;
              }
            }

            else
            {
              v44 = 0xE700000000000000;
              if (v43 != 0x656B696C736964)
              {
                goto LABEL_159;
              }
            }
          }

          else
          {
            v44 = 0xE700000000000000;
            if (v43 != 0x746E6573657270)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_157;
        }
      }
    }

    else
    {
      v41 = v53;
      if (v52)
      {
        if (v52 == 1)
        {
          v42 = 0xE400000000000000;
          v43 = 1701538156;
          if (v53 <= 2)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v42 = 0xE700000000000000;
          v43 = 0x656B696C736964;
          if (v53 <= 2)
          {
            goto LABEL_142;
          }
        }
      }

      else
      {
        v42 = 0xE700000000000000;
        v43 = 0x746E6573657270;
        if (v53 <= 2)
        {
          goto LABEL_142;
        }
      }
    }

    if (v41 == 3)
    {
      v44 = 0xE900000000000066;
      if (v43 != 0x6569724264616572)
      {
        goto LABEL_159;
      }
    }

    else if (v41 == 4)
    {
      v44 = 0xE800000000000000;
      if (v43 != 0x676E6F4C64616572)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v44 = 0xE400000000000000;
      if (v43 != 1702257011)
      {
        goto LABEL_159;
      }
    }

LABEL_157:
    if (v42 == v44)
    {

      goto LABEL_160;
    }

LABEL_159:
    v45 = sub_1C6D7A130();

    if ((v45 & 1) == 0)
    {
      return 0;
    }

LABEL_160:
    v3 = v51 + 1;
    result = 1;
    v2 = v48;
    if (v51 + 1 == v48)
    {
      return result;
    }
  }

  v56 = *(*v4 + 16);

  v7 = v56;
  if (v58 == result)
  {
    goto LABEL_126;
  }

  v8 = 0;
  v9 = (v57 + 48);
  v10 = (v58 + 48);
  while (v8 < *(v58 + 16))
  {
    if (v8 >= *(v57 + 16))
    {
      goto LABEL_166;
    }

    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = *(v9 - 2);
    v15 = *(v9 - 1);
    v16 = *v9;
    if ((v13 & 0x80) != 0)
    {
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_163;
      }

      v20 = v16 & 0x7F;
      if ((v13 & 0x7F) == 0)
      {
        if ((v16 & 0x7F) != 0)
        {
          goto LABEL_163;
        }

LABEL_35:
        if (v11 != v14 || v12 != v15)
        {
          v26 = *(v10 - 2);
          v27 = *(v10 - 1);
          v28 = *(v9 - 2);
          v29 = *(v9 - 1);
          result = sub_1C6D7A130();
          v7 = v56;
          if ((result & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        goto LABEL_12;
      }

      if ((v13 & 0x7F) != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_163;
        }

        if (*(v10 - 2) > 1u)
        {
          v24 = 0xE400000000000000;
          if (*(v10 - 2) == 2)
          {
            v25 = 1313887045;
          }

          else
          {
            v25 = 1330659671;
          }
        }

        else if (*(v10 - 2))
        {
          v25 = 0x696C6F505F4E4E43;
          v24 = 0xEC00000073636974;
        }

        else
        {
          v24 = 0xE300000000000000;
          v25 = 5131843;
        }

        v30 = *(v9 - 2);
        if (v30 <= 1)
        {
          if (*(v9 - 2))
          {
LABEL_57:
            v31 = 0xEC00000073636974;
            if (v25 != 0x696C6F505F4E4E43)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

LABEL_51:
          v31 = 0xE300000000000000;
          if (v25 != 5131843)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v31 = 0xE400000000000000;
        if (v30 == 2)
        {
          if (v25 != 1313887045)
          {
LABEL_64:
            v32 = sub_1C6D7A130();

            v7 = v56;
            if ((v32 & 1) == 0)
            {
              goto LABEL_163;
            }

            goto LABEL_12;
          }
        }

        else if (v25 != 1330659671)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v24 == v31)
        {

          goto LABEL_11;
        }

        goto LABEL_64;
      }

      if (v20 != 1)
      {
        goto LABEL_163;
      }

      v21 = 0xE600000000000000;
      v22 = *(v9 - 2);
      v47 = *(v10 - 1);
      v23 = 0x7374726F7073;
      switch(*(v10 - 2))
      {
        case 1u:
          v21 = 0xE800000000000000;
          v23 = 0x73636974696C6F70;
          break;
        case 2u:
          v21 = 0xE400000000000000;
          v23 = 1685024614;
          break;
        case 3u:
          v23 = 0x6961747265746E65;
          v21 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v23 = 0x68746C616568;
          break;
        case 5u:
          v21 = 0xE700000000000000;
          v23 = 0x7373656E746966;
          break;
        case 6u:
          v21 = 0xEA00000000007967;
          v23 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v21 = 0xEA00000000006C6CLL;
          v23 = 0x616274656B736162;
          break;
        case 8u:
          v21 = 0xE800000000000000;
          v23 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v21 = 0xE400000000000000;
          v23 = 1718382439;
          break;
        case 0xAu:
          v23 = 0x726563636F73;
          break;
        case 0xBu:
          v21 = 0xE700000000000000;
          v23 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v23 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v39 = 0xE600000000000000;
      v40 = 0x7374726F7073;
      switch(*(v9 - 2))
      {
        case 1u:
          v39 = 0xE800000000000000;
          v40 = 0x73636974696C6F70;
          break;
        case 2u:
          v39 = 0xE400000000000000;
          v40 = 1685024614;
          break;
        case 3u:
          v40 = 0x6961747265746E65;
          v39 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v40 = 0x68746C616568;
          break;
        case 5u:
          v39 = 0xE700000000000000;
          v40 = 0x7373656E746966;
          break;
        case 6u:
          v39 = 0xEA00000000007967;
          v40 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v39 = 0xEA00000000006C6CLL;
          v40 = 0x616274656B736162;
          break;
        case 8u:
          v39 = 0xE800000000000000;
          v40 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v39 = 0xE400000000000000;
          v40 = 1718382439;
          break;
        case 0xAu:
          v40 = 0x726563636F73;
          break;
        case 0xBu:
          v39 = 0xE700000000000000;
          v40 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v40 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v23 == v40 && v21 == v39)
      {
        sub_1C6B622D4(v14, v15, v16);
        sub_1C6B622D4(v11, v47, v13);

        sub_1C6B622F0(v14, v15, v16);
        v35 = v11;
        v36 = v47;
        v37 = v13;
LABEL_122:
        result = sub_1C6B622F0(v35, v36, v37);
LABEL_11:
        v7 = v56;
        goto LABEL_12;
      }

      v46 = sub_1C6D7A130();
      sub_1C6B622D4(v14, v15, v16);
      sub_1C6B622D4(v11, v47, v13);

      sub_1C6B622F0(v14, v15, v16);
      result = sub_1C6B622F0(v11, v47, v13);
      v7 = v56;
      if ((v46 & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v16 < 0)
      {
        goto LABEL_163;
      }

      if (!*v10)
      {
        if (*v9)
        {
          goto LABEL_163;
        }

        goto LABEL_35;
      }

      if (v13 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_163;
        }

        if (*(v10 - 2) > 1u)
        {
          v24 = 0xE400000000000000;
          if (*(v10 - 2) == 2)
          {
            v25 = 1313887045;
          }

          else
          {
            v25 = 1330659671;
          }
        }

        else if (*(v10 - 2))
        {
          v25 = 0x696C6F505F4E4E43;
          v24 = 0xEC00000073636974;
        }

        else
        {
          v24 = 0xE300000000000000;
          v25 = 5131843;
        }

        v30 = *(v9 - 2);
        if (v30 <= 1)
        {
          if (*(v9 - 2))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

        goto LABEL_59;
      }

      if (v16 != 1)
      {
        goto LABEL_163;
      }

      v17 = 0xE600000000000000;
      v18 = *(v9 - 2);
      v19 = 0x7374726F7073;
      switch(*(v10 - 2))
      {
        case 1u:
          v17 = 0xE800000000000000;
          v19 = 0x73636974696C6F70;
          break;
        case 2u:
          v17 = 0xE400000000000000;
          v19 = 1685024614;
          break;
        case 3u:
          v19 = 0x6961747265746E65;
          v17 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v19 = 0x68746C616568;
          break;
        case 5u:
          v17 = 0xE700000000000000;
          v19 = 0x7373656E746966;
          break;
        case 6u:
          v17 = 0xEA00000000007967;
          v19 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v17 = 0xEA00000000006C6CLL;
          v19 = 0x616274656B736162;
          break;
        case 8u:
          v17 = 0xE800000000000000;
          v19 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v17 = 0xE400000000000000;
          v19 = 1718382439;
          break;
        case 0xAu:
          v19 = 0x726563636F73;
          break;
        case 0xBu:
          v17 = 0xE700000000000000;
          v19 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v19 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v33 = 0xE600000000000000;
      v34 = 0x7374726F7073;
      switch(*(v9 - 2))
      {
        case 1u:
          v33 = 0xE800000000000000;
          v34 = 0x73636974696C6F70;
          break;
        case 2u:
          v33 = 0xE400000000000000;
          v34 = 1685024614;
          break;
        case 3u:
          v34 = 0x6961747265746E65;
          v33 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v34 = 0x68746C616568;
          break;
        case 5u:
          v33 = 0xE700000000000000;
          v34 = 0x7373656E746966;
          break;
        case 6u:
          v33 = 0xEA00000000007967;
          v34 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v33 = 0xEA00000000006C6CLL;
          v34 = 0x616274656B736162;
          break;
        case 8u:
          v33 = 0xE800000000000000;
          v34 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v33 = 0xE400000000000000;
          v34 = 1718382439;
          break;
        case 0xAu:
          v34 = 0x726563636F73;
          break;
        case 0xBu:
          v33 = 0xE700000000000000;
          v34 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v34 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v19 == v34 && v17 == v33)
      {
        sub_1C6B622D4(*(v9 - 2), *(v9 - 1), 1);
        sub_1C6B622D4(v11, v12, 1);

        sub_1C6B622F0(v14, v15, 1);
        v35 = v11;
        v36 = v12;
        v37 = 1;
        goto LABEL_122;
      }

      v38 = sub_1C6D7A130();
      sub_1C6B622D4(v14, v15, 1);
      sub_1C6B622D4(v11, v12, 1);

      sub_1C6B622F0(v14, v15, 1);
      result = sub_1C6B622F0(v11, v12, 1);
      v7 = v56;
      if ((v38 & 1) == 0)
      {
        goto LABEL_163;
      }
    }

LABEL_12:
    ++v8;
    v9 += 24;
    v10 += 24;
    if (v7 == v8)
    {
      goto LABEL_126;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_1C6B58600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C6B5F654(v14, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6B5F654(v15, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      v17 = *v11 == *v7 && v11[1] == v7[1];
      if (!v17 && (sub_1C6D7A130() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v7[2] && v11[3] == v7[3];
      if (!v18 && (sub_1C6D7A130() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6D79560();
      sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}