uint64_t TagRecommendationsDataServiceResult.Recommendation.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t TagRecommendationsDataServiceResult.Recommendation.tagID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C6BEF104@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C6B39534(0, v3, 0);
    result = a1;
    v6 = 0;
    v7 = v18;
    v8 = (a1 + 56);
    v17 = a1;
    while (v6 < *(result + 16))
    {
      v9 = *(v8 - 24);
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);
      v12 = *v8;
      v13 = *(v18 + 16);
      v14 = *(v18 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_1C6B39534((v14 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v15 = v18 + 32 * v13;
      *(v15 + 32) = v9;
      ++v6;
      *(v15 + 40) = v11;
      *(v15 + 48) = v10;
      *(v15 + 56) = v12;
      v8 += 8;
      result = v17;
      if (v3 == v6)
      {

        v2 = a2;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_1C6BEF24C()
{
  result = qword_1EC1D77E0;
  if (!qword_1EC1D77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D77E0);
  }

  return result;
}

uint64_t sub_1C6BEF2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6BEF2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1C6BEF354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6BEF39C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6BEF400(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6BEF448(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C6BEF4E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v4 = *(v0 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  v5 = *(v0 + 128);

  return v0;
}

uint64_t sub_1C6BEF53C()
{
  sub_1C6BEF4E4();

  return swift_deallocClassInstance();
}

void sub_1C6BEF570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a3;
  v17[8] = a4;
  v21[4] = sub_1C6BF52D8;
  v21[5] = v17;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C6BF0328;
  v21[3] = &block_descriptor_3;
  v18 = _Block_copy(v21);
  v19 = a7;

  v20 = a6;

  [v16 fetchSignalsFromBiomeWithSafariBlockoutDuration:a5 maxExternalSignalEventCount:v18 resultsBlock:0.0];
  _Block_release(v18);
}

void sub_1C6BEF6BC(unint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B38A60(v11);

  v73 = sub_1C6BF4570(v12, sub_1C6B6916C, sub_1C6BF47B0);
  sub_1C6BF2074(&v73);

  v13 = v73;
  v14 = &unk_1EDCE2000;
  v15 = &unk_1EDCE2000;
  if (v73 < 0 || (v73 & 0x4000000000000000) != 0)
  {
LABEL_75:
    v72 = sub_1C6D79E90();
    if (v72)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v72 = *(v73 + 16);
    if (v72)
    {
LABEL_7:
      if (v14[119] != -1)
      {
LABEL_80:
        swift_once();
      }

      v69 = v15[120];
      sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C6D7EB10;
      if (a1)
      {
        if (a1 >> 62)
        {
          v61 = v16;
          v17 = sub_1C6D79E90();
          v16 = v61;
        }

        else
        {
          v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v17 = 0;
      }

      v15 = MEMORY[0x1E69E6530];
      v18 = MEMORY[0x1E69E65A8];
      *(v16 + 56) = MEMORY[0x1E69E6530];
      *(v16 + 64) = v18;
      *(v16 + 32) = v17;
      if (v9)
      {
        if (v9 >> 62)
        {
          v62 = v16;
          v19 = sub_1C6D79E90();
          v16 = v62;
        }

        else
        {
          v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v19 = 0;
      }

      v63 = a9;
      *(v16 + 96) = v15;
      *(v16 + 104) = v18;
      *(v16 + 72) = v19;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      v9 = 0;
      v71 = v13 & 0xC000000000000001;
      a1 = MEMORY[0x1E69E7CC0];
      v70 = v13;
      while (1)
      {
        if (v71)
        {
          v23 = MEMORY[0x1CCA56240](v9, v13);
          v15 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v9 >= *(v13 + 16))
          {
            goto LABEL_67;
          }

          v23 = *(v13 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v15 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_66:
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
            goto LABEL_75;
          }
        }

        v24 = [v23 type];
        if ((v24 - 2) < 2)
        {
          if (a6)
          {
            v13 = a6;
            v36 = [v23 content];
            v37 = [v13 tagScoresForBundleID_];

            sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
            v38 = sub_1C6D79490();

            v14 = sub_1C6BEE9DC(v38, 0);

            v39 = v14[2];
            v40 = *(a1 + 16);
            v41 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_68;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native)
            {
              v43 = *(a1 + 24) >> 1;
              if (v43 >= v41)
              {
                if (v14[2])
                {
                  goto LABEL_44;
                }

LABEL_54:

                if (v39)
                {
                  goto LABEL_69;
                }

                goto LABEL_61;
              }
            }

            if (v40 <= v41)
            {
              v51 = v40 + v39;
            }

            else
            {
              v51 = v40;
            }

            a1 = sub_1C6B663A0(isUniquelyReferenced_nonNull_native, v51, 1, a1);
            v43 = *(a1 + 24) >> 1;
            if (!v14[2])
            {
              goto LABEL_54;
            }

LABEL_44:
            if (v43 - *(a1 + 16) < v39)
            {
              goto LABEL_70;
            }

            sub_1C6BF5804(0, &qword_1EDCDFB18);
            swift_arrayInitWithCopy();

            if (v39)
            {
              v44 = *(a1 + 16);
              v34 = __OFADD__(v44, v39);
              v35 = v44 + v39;
              if (v34)
              {
                goto LABEL_73;
              }

              goto LABEL_47;
            }

LABEL_61:
            swift_unknownObjectRelease();

LABEL_62:
            v13 = v70;
            goto LABEL_19;
          }
        }

        else
        {
          if (!v24)
          {
            v14 = sub_1C6D79AA0();
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_1C6D7E630;
            v46 = [v23 content];
            if (!v46)
            {
              __break(1u);

              __break(1u);
              return;
            }

            v47 = v46;
            v48 = sub_1C6D795A0();
            v50 = v49;

            *(v45 + 56) = MEMORY[0x1E69E6158];
            *(v45 + 64) = sub_1C6B2064C();
            *(v45 + 32) = v48;
            *(v45 + 40) = v50;
            sub_1C6D78D30();

            swift_unknownObjectRelease();
            goto LABEL_62;
          }

          if (v24 == 1)
          {
            if (a5)
            {
              v13 = a5;
              v25 = [v23 content];
              v26 = [v13 tagScoresForURL_];

              sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
              v27 = sub_1C6D79490();

              v14 = sub_1C6BEE9DC(v27, 1);

              v28 = v14[2];
              v29 = *(a1 + 16);
              v30 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              v31 = swift_isUniquelyReferenced_nonNull_native();
              if (v31 && (v32 = *(a1 + 24) >> 1, v32 >= v30))
              {
                if (v14[2])
                {
LABEL_34:
                  if (v32 - *(a1 + 16) < v28)
                  {
                    goto LABEL_74;
                  }

                  sub_1C6BF5804(0, &qword_1EDCDFB18);
                  swift_arrayInitWithCopy();

                  if (!v28)
                  {
                    goto LABEL_61;
                  }

                  v33 = *(a1 + 16);
                  v34 = __OFADD__(v33, v28);
                  v35 = v33 + v28;
                  if (v34)
                  {
                    __break(1u);
                    goto LABEL_80;
                  }

LABEL_47:
                  *(a1 + 16) = v35;
                  goto LABEL_61;
                }
              }

              else
              {
                if (v29 <= v30)
                {
                  v52 = v29 + v28;
                }

                else
                {
                  v52 = v29;
                }

                a1 = sub_1C6B663A0(v31, v52, 1, a1);
                v32 = *(a1 + 24) >> 1;
                if (v14[2])
                {
                  goto LABEL_34;
                }
              }

              if (v28)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }
          }

          else
          {
            v14 = sub_1C6D79AA0();
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_1C6D7E630;
            v73 = 0;
            v74 = 0xE000000000000000;
            [v23 type];
            type metadata accessor for FCPersonalizationExternalSignalType(0);
            sub_1C6D79E60();
            v21 = v73;
            v22 = v74;
            *(v20 + 56) = MEMORY[0x1E69E6158];
            *(v20 + 64) = sub_1C6B2064C();
            *(v20 + 32) = v21;
            *(v20 + 40) = v22;
            sub_1C6D78D30();
          }
        }

        swift_unknownObjectRelease();
LABEL_19:
        ++v9;
        if (v15 == v72)
        {

          if (*(a1 + 16))
          {
            sub_1C6BF0054(a1);

            v53 = swift_allocObject();
            *(v53 + 16) = a3;
            *(v53 + 24) = a4;

            v54 = sub_1C6D78210();
            sub_1C6D782B0();

            v55 = swift_allocObject();
            *(v55 + 16) = a8;
            *(v55 + 24) = v63;

            v56 = sub_1C6D78210();
            sub_1C6D782E0();

            return;
          }

          sub_1C6D79AC0();
          v57 = MEMORY[0x1E69E7CC0];
          sub_1C6D78D30();
          v58 = v57;
          goto LABEL_79;
        }
      }
    }
  }

  if (v14[119] != -1)
  {
    swift_once();
  }

  v59 = v15[120];
  sub_1C6D79AC0();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();
  v58 = v60;
LABEL_79:
  sub_1C6BEF104(v58, &v73);
  a3(&v73);
}

uint64_t sub_1C6BF0054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D75F80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  if (qword_1EC1D5AA0 != -1)
  {
    swift_once();
  }

  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6D7EB10;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  sub_1C6BF1FBC();
  v12 = sub_1C6D7A0E0();
  v14 = v13;
  *(v9 + 96) = MEMORY[0x1E69E6158];
  *(v9 + 104) = sub_1C6B2064C();
  *(v9 + 72) = v12;
  *(v9 + 80) = v14;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v15 = *(v2 + 136);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  sub_1C6BF5394();

  sub_1C6D78390();

  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C6BF5430;
  *(v17 + 24) = v2;

  v18 = sub_1C6D782B0();

  (*(v5 + 8))(v8, v4);
  return v18;
}

uint64_t sub_1C6BF0328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
    v4 = sub_1C6D79780();
  }

  if (a3)
  {
    sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
    a3 = sub_1C6D79780();
  }

  v6(v4, a3);
}

uint64_t sub_1C6BF03EC(uint64_t a1)
{
  sub_1C6BF04CC(a1);
  sub_1C6BF0840(a1);
  sub_1C6B1B3B0(0, &qword_1EDCE7A70);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1C6D78350();
  v5 = sub_1C6D78210();
  v6 = sub_1C6D78200();

  return v6;
}

uint64_t sub_1C6BF04CC(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 48;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v4 + 24 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_20;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    v8 = *v6;
    v6 += 24;
    ++v2;
    if ((v8 & 1) == 0)
    {
      v9 = *(v6 - 5);
      v1 = *(v6 - 4);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B39594(0, v5[2] + 1, 1);
      }

      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        sub_1C6B39594((v10 > 1), v11 + 1, 1);
      }

      v5[2] = v11 + 1;
      v12 = &v5[3 * v11];
      v12[4] = v9;
      v12[5] = v1;
      *(v12 + 48) = 0;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = v5[2];
  if (v13)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v13, 0);
    v1 = v32;
    v14 = v5 + 5;
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1C6B39280((v17 > 1), v18 + 1, 1);
      }

      *(v32 + 16) = v18 + 1;
      v19 = v32 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += 3;
      --v13;
    }

    while (v13);
  }

  else
  {

    v1 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC1D5AA0 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6D7E630;
  v21 = *(v1 + 16);
  v22 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = MEMORY[0x1E69E6530];
  *(v20 + 64) = v22;
  *(v20 + 32) = v21;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](v23);
    sub_1C6BF54E8();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_1C6D78350();

    return v27;
  }

  else
  {

    sub_1C6D79AC0();
    sub_1C6D78D30();
    sub_1C6BF54E8();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }
}

uint64_t sub_1C6BF0840(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 48;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v4 + 24 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_20;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    v9 = *v7;
    v7 += 24;
    ++v2;
    if (v9)
    {
      v10 = *(v7 - 5);
      v1 = *(v7 - 4);

      v11 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B39594(0, v6[2] + 1, 1);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        sub_1C6B39594((v12 > 1), v13 + 1, 1);
      }

      v6[2] = v13 + 1;
      v14 = &v6[3 * v13];
      v14[4] = v10;
      v14[5] = v1;
      *(v14 + 48) = 1;
      v2 = v8;
      v5 = v11;
      goto LABEL_2;
    }
  }

  v15 = v6[2];
  if (v15)
  {
    sub_1C6B39280(0, v15, 0);
    v1 = v5;
    v16 = v6 + 5;
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1C6B39280((v19 > 1), v20 + 1, 1);
      }

      *(v5 + 16) = v20 + 1;
      v21 = v5 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    v1 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC1D5AA0 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6D7E630;
  v23 = *(v1 + 16);
  v24 = MEMORY[0x1E69E65A8];
  *(v22 + 56) = MEMORY[0x1E69E6530];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](v25);
    sub_1C6BF54E8();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = sub_1C6D78350();

    return v29;
  }

  else
  {

    sub_1C6D79AC0();
    sub_1C6D78D30();
    sub_1C6BF54E8();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }
}

uint64_t sub_1C6BF0BBC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a5[3];
  v9 = a5[8];
  v10 = a5[9];
  __swift_project_boxed_opaque_existential_1(a5 + 5, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = sub_1C6D703C8(v8, a6, v11 & 1);
  a1(&v13);
}

uint64_t sub_1C6BF0CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_1C6BF0F20(a1);
  v5 = *(v4 + 2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = a2;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6B395D4(0, v5, 0);
    v7 = v29;
    v8 = v4 + 48;
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v29 = v7;
      v13 = v7[2];
      v12 = v7[3];

      if (v13 >= v12 >> 1)
      {
        sub_1C6B395D4((v12 > 1), v13 + 1, 1);
        v7 = v29;
      }

      v7[2] = v13 + 1;
      v14 = &v7[4 * v13];
      *(v14 + 32) = 0;
      v14[5] = v10;
      v14[6] = v9;
      *(v14 + 14) = v11;
      v8 += 6;
      --v5;
    }

    while (v5);

    a2 = v27;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1C6BF0F20(a2);
  v16 = *(v15 + 2);
  if (v16)
  {
    v29 = v6;
    sub_1C6B395D4(0, v16, 0);
    v17 = v6;
    v18 = v15 + 48;
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v29 = v17;
      v23 = v17[2];
      v22 = v17[3];

      if (v23 >= v22 >> 1)
      {
        sub_1C6B395D4((v22 > 1), v23 + 1, 1);
        v17 = v29;
      }

      v17[2] = v23 + 1;
      v24 = &v17[4 * v23];
      *(v24 + 32) = 1;
      v24[5] = v20;
      v24[6] = v19;
      *(v24 + 14) = v21;
      v18 += 6;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v29 = v7;
  sub_1C6B38A78(v17);

  sub_1C6BF20F0(&v29);

  v25 = v29;

  return sub_1C6BEF104(v25, a3);
}

id sub_1C6BF0F20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D78EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 136);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1C6D78ED0();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

  v11 = *(v2 + 112);
  v12 = *(v2 + 120);
  __swift_project_boxed_opaque_existential_1((v2 + 88), v11);
  (*(v12 + 8))(v47, 0, v11, v12);
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v13 = sub_1C6D76090();
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v14 = sub_1C6D76080();
  v15 = sub_1C6C22548(v14, v13);
  v16 = [*(v2 + 16) possiblyUnfetchedAppConfiguration];
  result = [v16 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v18 = [v16 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = sub_1C6D79780();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1E69E6158];
  v20 = sub_1C6B1E610(v19);

  v2 = sub_1C6C22548(v20, v15);
  if (qword_1EDCE2380 != -1)
  {
    goto LABEL_33;
  }

LABEL_7:
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D7EB10;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E65A8];
  *(v21 + 56) = MEMORY[0x1E69E6530];
  *(v21 + 64) = v23;
  *(v21 + 32) = v22;
  v24 = sub_1C6D79970();
  v26 = v25;
  *(v21 + 96) = v8;
  *(v21 + 104) = sub_1C6B2064C();
  *(v21 + 72) = v24;
  *(v21 + 80) = v26;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  if (v22)
  {
    v27 = 0;
    v45 = a1 + 32;
    v28 = v2 + 56;
    a1 = MEMORY[0x1E69E7CC0];
    v44 = v22;
    while (1)
    {
      if (v27 >= v22)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_7;
      }

      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_31;
      }

      v30 = (v45 + 24 * v27);
      v31 = *v30;
      v8 = v30[1];
      v32 = *(v30 + 4);
      ++v27;
      if (*(v2 + 16))
      {
        v33 = *(v2 + 40);
        sub_1C6D7A260();

        sub_1C6D79610();
        v34 = sub_1C6D7A2B0();
        v35 = -1 << *(v2 + 32);
        v36 = v34 & ~v35;
        if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          while (1)
          {
            v38 = (*(v2 + 48) + 16 * v36);
            v39 = *v38 == v31 && v38[1] == v8;
            if (v39 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v36 = (v36 + 1) & v37;
            if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6B395B4(0, *(a1 + 16) + 1, 1);
        a1 = v46;
      }

      v42 = *(a1 + 16);
      v41 = *(a1 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C6B395B4((v41 > 1), v42 + 1, 1);
        a1 = v46;
      }

      *(a1 + 16) = v42 + 1;
      v43 = a1 + 24 * v42;
      *(v43 + 32) = v31;
      *(v43 + 40) = v8;
      *(v43 + 48) = v32;
      v22 = v44;
LABEL_10:
      if (v29 == v22)
      {
        goto LABEL_29;
      }
    }
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_29:

  __swift_destroy_boxed_opaque_existential_1(v47);
  return a1;
}

uint64_t sub_1C6BF1430()
{
  sub_1C6B1A418(0, &qword_1EDCE5D68, sub_1C6BF512C, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C6D78350();
  sub_1C6B1B3B0(0, &qword_1EDCE7A70);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1C6D78350();
  v6 = sub_1C6D78210();
  v7 = sub_1C6D781F0();

  return v7;
}

uint64_t sub_1C6BF154C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5[3];
  v8 = a5[8];
  v9 = a5[9];
  __swift_project_boxed_opaque_existential_1(a5 + 5, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v13[0] = sub_1C6C19594(v7, v10 & 1, a5[16]);
  v13[1] = v11;
  a1(v13);
}

uint64_t sub_1C6BF166C(void *a1, void *a2)
{
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = a1[2];
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v9 = a2[2];
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v18[0] = a1;

  sub_1C6BF2248(v18);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v10 = sub_1C6BF0F20(v18[0]);

    v11 = sub_1C6BEEEB4(v10);

    v18[0] = a2;

    sub_1C6BF2248(v18);
    v12 = sub_1C6BF0F20(v18[0]);

    v13 = sub_1C6BEEEB4(v12);

    v18[0] = v11;
    v18[1] = v13;
    sub_1C6B1B3B0(0, &qword_1EDCE5DA0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }

  return result;
}

uint64_t sub_1C6BF1884()
{
  v1 = v0;
  v2 = sub_1C6D75F80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  sub_1C6BF1FBC();
  v8 = sub_1C6D7A0E0();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v11 = *(v1 + 136);

  sub_1C6D78390();

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C6BF2030;
  *(v12 + 24) = v1;

  v13 = sub_1C6D782B0();

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_1C6BF1B08()
{
  sub_1C6B1B3B0(0, &qword_1EDCE7A70);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6BF1B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = a5[14];
  v15 = a5[15];
  __swift_project_boxed_opaque_existential_1(a5 + 11, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a8;
  *(v16 + 24) = v13;
  v17 = *(v15 + 16);

  v17(a9, v16, v14, v15);
}

void *sub_1C6BF1C58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[8];
  v7 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v6);
  v8 = (*(v7 + 8))(v6, v7);
  result = sub_1C6C4129C(v5, v8 & 1, a1[16]);
  if (!v2)
  {
    v11 = v10;
    v16 = result;

    sub_1C6BF2248(&v16);
    v12 = sub_1C6BF0F20(v16);

    v13 = sub_1C6BEEEB4(v12);

    v16 = v11;

    sub_1C6BF2248(&v16);

    v14 = sub_1C6BF0F20(v16);

    v15 = sub_1C6BEEEB4(v14);

    *a2 = v13;
    a2[1] = v15;
  }

  return result;
}

uint64_t sub_1C6BF1DD4()
{
  v5 = *v0;
  sub_1C6B1B3B0(0, &unk_1EDCE5D90);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6BF1E48()
{
  v1 = *v0;
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v2 = *(v1 + 136);
  sub_1C6BF50C0();

  sub_1C6D78390();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6BF521C;
  *(v3 + 24) = v1;

  v4 = sub_1C6D782A0();

  return v4;
}

unint64_t sub_1C6BF1FBC()
{
  result = qword_1EDCEA390;
  if (!qword_1EDCEA390)
  {
    sub_1C6D75F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA390);
  }

  return result;
}

uint64_t sub_1C6BF204C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C6BF2074(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C6C750C0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C6BF23B0(v6);
  return sub_1C6D79DD0();
}

uint64_t sub_1C6BF20F0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F80(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 11);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          if (*(v11 - 8) >= *v11)
          {
            break;
          }

          v13 = v11 - 6;
          v15 = *(v11 - 14);
          v14 = *(v11 - 10);
          *(v11 - 8) = *v11;
          v11 -= 8;
          v16 = *(v11 + 8);
          v17 = *(v11 + 2);
          v18 = *(v11 + 3);
          *v13 = v15;
          *(v13 + 1) = v14;
          *(v11 - 24) = v16;
          *(v11 - 2) = v17;
          *(v11 - 1) = v18;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 8;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6B3B6A4();
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1C6BF3090(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6BF2248(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F94(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6BF5804(0, &qword_1EDCE6680);
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1C6BF3648(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

id sub_1C6BF23B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6D7A0C0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
        v6 = sub_1C6D797F0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1C6BF2710(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C6BF24C4(0, v2, 1, a1);
  }

  return result;
}

id sub_1C6BF24C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1C6D75F50();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v30 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v34 = (v12 + 8);
    v37 = v15;
    v16 = v15 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v32 = v16;
    v33 = a3;
    v18 = *(v37 + 8 * a3);
    v31 = v17;
    v19 = v17;
    while (1)
    {
      v20 = *v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      result = [v18 date];
      if (!result)
      {
        break;
      }

      v21 = result;
      sub_1C6D75F20();

      result = [v20 date];
      if (!result)
      {
        goto LABEL_13;
      }

      v22 = result;
      v23 = v35;
      sub_1C6D75F20();

      v38 = sub_1C6D75EE0();
      v24 = v19;
      v25 = *v34;
      v26 = v23;
      v27 = v36;
      (*v34)(v26, v36);
      v25(v14, v27);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v38)
      {
        if (!v37)
        {
          goto LABEL_14;
        }

        v28 = *v16;
        v18 = *(v16 + 8);
        *v16 = v18;
        *(v16 + 8) = v28;
        v16 -= 8;
        ++v19;
        if (v24 != -1)
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v16 = v32 + 8;
      v17 = v31 - 1;
      if (v33 + 1 == v30)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6BF2710(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v130 = a1;
  v142 = sub_1C6D75F50();
  v7 = *(*(v142 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v142);
  v139 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v124 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v133 = &v124 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v134 = &v124 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v125 = &v124 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v126 = &v124 - v21;
  v137 = a3;
  v22 = a3[1];
  if (v22 >= 1)
  {
    v23 = 0;
    v141 = (v20 + 8);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = &selRef_adSegmentsOutputName;
    v129 = a4;
    v143 = v12;
    while (1)
    {
      v26 = v23++;
      if (v23 < v22)
      {
        v136 = v22;
        v128 = v24;
        v27 = *v137;
        v28 = *(*v137 + 8 * v23);
        v29 = *(*v137 + 8 * v26);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        result = [v28 v25[11]];
        if (!result)
        {
          goto LABEL_139;
        }

        v30 = result;
        v132 = v27;
        v31 = v126;
        sub_1C6D75F20();

        result = [v29 v25[11]];
        if (!result)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v32 = result;
        v33 = v125;
        sub_1C6D75F20();

        LODWORD(v140) = sub_1C6D75EE0();
        v4 = v141;
        v34 = *v141;
        v35 = v33;
        v36 = v31;
        v37 = v142;
        (*v141)(v35, v142);
        v135 = v34;
        v34(v36, v37);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v38 = v26 + 2;
        v127 = v26;
        v131 = 8 * v26;
        v39 = (v132 + 8 * v26 + 16);
        while (1)
        {
          v23 = v136;
          if (v136 == v38)
          {
            break;
          }

          v40 = *(v39 - 1);
          v41 = *v39;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          result = [v41 v25[11]];
          if (!result)
          {
            goto LABEL_134;
          }

          v42 = result;
          v43 = v134;
          sub_1C6D75F20();

          result = [v40 v25[11]];
          if (!result)
          {
            goto LABEL_133;
          }

          v44 = result;
          v45 = v133;
          sub_1C6D75F20();

          LODWORD(v44) = sub_1C6D75EE0() & 1;
          v46 = v45;
          v47 = v43;
          v48 = v142;
          v4 = v135;
          v135(v46, v142);
          (v4)(v47, v48);
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          ++v38;
          ++v39;
          v12 = v143;
          v25 = &selRef_adSegmentsOutputName;
          if ((v140 & 1) != v44)
          {
            v23 = v38 - 1;
            break;
          }
        }

        v26 = v127;
        v24 = v128;
        v49 = v131;
        if (v140)
        {
          if (v23 < v127)
          {
            goto LABEL_126;
          }

          if (v127 < v23)
          {
            v50 = 8 * v23 - 8;
            v51 = v23;
            v52 = v127;
            do
            {
              if (v52 != --v51)
              {
                v53 = *v137;
                if (!*v137)
                {
                  goto LABEL_136;
                }

                v54 = *(v53 + v49);
                *(v53 + v49) = *(v53 + v50);
                *(v53 + v50) = v54;
              }

              ++v52;
              v50 -= 8;
              v49 += 8;
            }

            while (v52 < v51);
          }
        }

        a4 = v129;
      }

      v55 = v137[1];
      if (v23 < v55)
      {
        if (__OFSUB__(v23, v26))
        {
          goto LABEL_125;
        }

        if (v23 - v26 < a4)
        {
          v56 = v26 + a4;
          if (__OFADD__(v26, a4))
          {
            goto LABEL_127;
          }

          if (v56 >= v55)
          {
            v56 = v137[1];
          }

          if (v56 < v26)
          {
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          if (v23 != v56)
          {
            v127 = v26;
            v128 = v24;
            v140 = *v137;
            v57 = v140 + 8 * v23 - 8;
            v58 = v26 - v23;
            v131 = v56;
            do
            {
              v135 = v57;
              v136 = v23;
              v4 = *(v140 + 8 * v23);
              v132 = v58;
              v59 = v57;
              while (1)
              {
                v60 = *v59;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                result = [v4 v25[11]];
                if (!result)
                {
                  goto LABEL_131;
                }

                v61 = result;
                sub_1C6D75F20();

                result = [v60 v25[11]];
                if (!result)
                {
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
LABEL_134:
                  __break(1u);
LABEL_135:
                  __break(1u);
LABEL_136:
                  __break(1u);
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
LABEL_139:
                  __break(1u);
                  goto LABEL_140;
                }

                v62 = result;
                v63 = v139;
                sub_1C6D75F20();

                LOBYTE(v62) = sub_1C6D75EE0();
                v64 = v12;
                v65 = *v141;
                v66 = v63;
                v67 = v142;
                (*v141)(v66, v142);
                v65(v64, v67);
                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                if ((v62 & 1) == 0)
                {
                  break;
                }

                if (!v140)
                {
                  goto LABEL_132;
                }

                v68 = *v59;
                v4 = *(v59 + 8);
                *v59 = v4;
                *(v59 + 8) = v68;
                v59 -= 8;
                v69 = __CFADD__(v58++, 1);
                v12 = v143;
                v25 = &selRef_adSegmentsOutputName;
                if (v69)
                {
                  goto LABEL_32;
                }
              }

              v12 = v143;
              v25 = &selRef_adSegmentsOutputName;
LABEL_32:
              v23 = v136 + 1;
              v57 = v135 + 8;
              v58 = v132 - 1;
            }

            while (v136 + 1 != v131);
            v23 = v131;
            v26 = v127;
            v24 = v128;
          }
        }
      }

      if (v23 < v26)
      {
        goto LABEL_124;
      }

      v70 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v24 = v70;
      }

      else
      {
        result = sub_1C6B657D0(0, *(v70 + 16) + 1, 1, v70);
        v24 = result;
      }

      v72 = *(v24 + 16);
      v71 = *(v24 + 24);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        result = sub_1C6B657D0((v71 > 1), v72 + 1, 1, v24);
        v24 = result;
      }

      *(v24 + 16) = v73;
      v74 = v24 + 16 * v72;
      *(v74 + 32) = v26;
      *(v74 + 40) = v23;
      v75 = *v130;
      if (!*v130)
      {
        goto LABEL_138;
      }

      if (v72)
      {
        while (1)
        {
          v4 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v76 = *(v24 + 32);
            v77 = *(v24 + 40);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_62:
            if (v79)
            {
              goto LABEL_113;
            }

            v92 = (v24 + 16 * v73);
            v94 = *v92;
            v93 = v92[1];
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_116;
            }

            v98 = (v24 + 32 + 16 * v4);
            v100 = *v98;
            v99 = v98[1];
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_120;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v4 = v73 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v102 = (v24 + 16 * v73);
          v104 = *v102;
          v103 = v102[1];
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_76:
          if (v97)
          {
            goto LABEL_115;
          }

          v105 = v24 + 16 * v4;
          v107 = *(v105 + 32);
          v106 = *(v105 + 40);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_118;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_83:
          v113 = v4 - 1;
          if (v4 - 1 >= v73)
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
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v137)
          {
            goto LABEL_135;
          }

          v114 = v24;
          v115 = *(v24 + 32 + 16 * v113);
          v26 = *(v24 + 32 + 16 * v4 + 8);
          v116 = v138;
          sub_1C6BF3C00((*v137 + 8 * v115), (*v137 + 8 * *(v24 + 32 + 16 * v4)), (*v137 + 8 * v26), v75);
          v138 = v116;
          if (v116)
          {
          }

          if (v26 < v115)
          {
            goto LABEL_109;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v117 = v114;
          }

          else
          {
            v117 = sub_1C6C73C90(v114);
          }

          v12 = v143;
          if (v113 >= *(v117 + 2))
          {
            goto LABEL_110;
          }

          v118 = &v117[16 * v113];
          *(v118 + 4) = v115;
          *(v118 + 5) = v26;
          v144 = v117;
          result = sub_1C6C73C04(v4);
          v24 = v144;
          v73 = *(v144 + 16);
          if (v73 <= 1)
          {
            goto LABEL_3;
          }
        }

        v80 = v24 + 32 + 16 * v73;
        v81 = *(v80 - 64);
        v82 = *(v80 - 56);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_111;
        }

        v85 = *(v80 - 48);
        v84 = *(v80 - 40);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_112;
        }

        v87 = (v24 + 16 * v73);
        v89 = *v87;
        v88 = v87[1];
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_114;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_117;
        }

        if (v91 >= v83)
        {
          v109 = (v24 + 32 + 16 * v4);
          v111 = *v109;
          v110 = v109[1];
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_121;
          }

          if (v78 < v112)
          {
            v4 = v73 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v22 = v137[1];
      a4 = v129;
      if (v23 >= v22)
      {
        goto LABEL_96;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_96:
  v4 = *v130;
  if (*v130)
  {
    v23 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v138;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v23;
    }

    else
    {
LABEL_129:
      result = sub_1C6C73C90(v23);
    }

    v144 = result;
    v23 = *(result + 16);
    if (v23 >= 2)
    {
      while (*v137)
      {
        v120 = *(result + 16 * v23);
        v121 = result;
        v122 = *(result + 16 * (v23 - 1) + 40);
        sub_1C6BF3C00((*v137 + 8 * v120), (*v137 + 8 * *(result + 16 * (v23 - 1) + 32)), (*v137 + 8 * v122), v4);
        if (v26)
        {
        }

        if (v122 < v120)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1C6C73C90(v121);
        }

        if ((v23 - 2) >= *(v121 + 2))
        {
          goto LABEL_123;
        }

        v123 = &v121[16 * v23];
        *v123 = v120;
        *(v123 + 1) = v122;
        v144 = v121;
        sub_1C6C73C04(v23 - 1);
        result = v144;
        v23 = *(v144 + 16);
        if (v23 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  else
  {
LABEL_141:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6BF3090(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v87 = (v8 + 16);
    v88 = *(v8 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v8 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1C6BF411C((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_117;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_118;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_119;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      while (v6 != v14)
      {
        v16 = *(v15 - 8) >= *v15;
        ++v14;
        v15 += 8;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 32 * v7 - 32;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v17);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            v27 = *(v22 + v11 + 16);
            v28 = *(v22 + v11 + 24);
            if (v11 != v17 || v23 >= v24 + 2)
            {
              v20 = v24[1];
              *v23 = *v24;
              v23[1] = v20;
            }

            v21 = v22 + v17;
            *v21 = v25;
            *(v21 + 8) = v26;
            *(v21 + 16) = v27;
            *(v21 + 24) = v28;
          }

          ++v19;
          v17 -= 32;
          v11 += 32;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v41 = *(v8 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_1C6B657D0((v41 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v42;
    v43 = v8 + 32;
    v44 = (v8 + 32 + 16 * v5);
    *v44 = v9;
    v44[1] = v7;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v8 + 32);
          v46 = *(v8 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_107;
          }

          v61 = (v8 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_114;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v42 < 2)
        {
          goto LABEL_115;
        }

        v71 = (v8 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_75:
        if (v66)
        {
          goto LABEL_111;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v42)
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        sub_1C6BF411C((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v8 + 16);
        if (v5 >= v86)
        {
          goto LABEL_104;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v8 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_105;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_106;
      }

      v56 = (v8 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_108;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_116;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v94;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 + 24;
  v31 = v9 - v7;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    if (*(v33 - 32) >= *v33)
    {
LABEL_32:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v34 = (v33 - 24);
    v36 = *(v33 - 56);
    v35 = *(v33 - 40);
    *(v33 - 32) = *v33;
    v33 -= 32;
    v37 = *(v33 + 8);
    v38 = *(v33 + 16);
    v39 = *(v33 + 24);
    *v34 = v36;
    v34[1] = v35;
    *(v33 - 24) = v37;
    *(v33 - 16) = v38;
    *(v33 - 8) = v39;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

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
  __break(1u);
  return result;
}

uint64_t sub_1C6BF3648(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C6BF4318((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1C6B657D0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1C6BF4318((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (*(v31 + 16) >= v32)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_1C6BF3C00(void **a1, void **a2, void **a3, void **a4)
{
  v63 = sub_1C6D75F50();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = (&v56 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v61 = (&v56 - v16);
  v17 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v17 = a2 - a1;
  }

  v18 = v17 >> 3;
  v19 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v19 = a3 - a2;
  }

  v20 = v19 >> 3;
  if (v18 < v19 >> 3)
  {
    if (a4 != a1 || &a1[v18] <= a4)
    {
      v21 = v18;
      memmove(a4, a1, 8 * v18);
      v18 = v21;
    }

    v65 = &a4[v18];
    v22 = v61;
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v60 = (v8 + 8);
      v23 = &selRef_adSegmentsOutputName;
      v64 = a3;
      v24 = (v8 + 8);
      while (1)
      {
        v25 = *a2;
        v62 = a4;
        v26 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        result = [v25 v23[11]];
        if (!result)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v28 = result;
        v29 = a1;
        sub_1C6D75F20();

        result = [v26 v23[11]];
        if (!result)
        {
          goto LABEL_47;
        }

        v30 = result;
        v31 = v59;
        sub_1C6D75F20();

        LOBYTE(v30) = sub_1C6D75EE0();
        v32 = v22;
        v33 = *v24;
        v34 = v31;
        v35 = v63;
        (*v24)(v34, v63);
        v33(v32, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v30 & 1) == 0)
        {
          break;
        }

        v36 = a2;
        v37 = v29;
        v38 = v29 == a2++;
        a4 = v62;
        if (!v38)
        {
          goto LABEL_19;
        }

LABEL_20:
        a1 = v37 + 1;
        v22 = v61;
        v23 = &selRef_adSegmentsOutputName;
        if (a4 >= v65 || a2 >= v64)
        {
          goto LABEL_22;
        }
      }

      v36 = v62;
      a4 = v62 + 1;
      v37 = v29;
      if (v29 == v62)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v37 = *v36;
      goto LABEL_20;
    }

LABEL_22:
    a2 = a1;
    goto LABEL_42;
  }

  if (a4 != a2 || &a2[v20] <= a4)
  {
    memmove(a4, a2, 8 * v20);
  }

  v65 = &a4[v20];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_42:
    if (a2 != a4 || a2 >= (a4 + ((v65 - a4 + (v65 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v65 - a4));
    }

    return 1;
  }

  v59 = (v8 + 8);
  v39 = &selRef_adSegmentsOutputName;
  v57 = a1;
LABEL_29:
  v58 = a2;
  v40 = a2 - 1;
  v41 = a3 - 1;
  v42 = v65;
  v61 = a2 - 1;
  while (1)
  {
    v64 = v41;
    v43 = *--v42;
    v44 = *v40;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    result = [v43 v39[11]];
    if (!result)
    {
      goto LABEL_48;
    }

    v45 = result;
    v46 = a4;
    v47 = v62;
    sub_1C6D75F20();

    result = [v44 v39[11]];
    if (!result)
    {
      break;
    }

    v48 = result;
    v49 = v60;
    sub_1C6D75F20();

    LOBYTE(v48) = sub_1C6D75EE0();
    v50 = *v59;
    v51 = v49;
    v52 = v63;
    (*v59)(v51, v63);
    v50(v47, v52);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v48)
    {
      a3 = v64;
      v54 = v57;
      a4 = v46;
      v55 = v61;
      if (v64 + 1 != v58)
      {
        *v64 = *v61;
      }

      v39 = &selRef_adSegmentsOutputName;
      if (v65 <= v46 || (a2 = v55, v55 <= v54))
      {
        a2 = v55;
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    v53 = v64;
    a4 = v46;
    if (v64 + 1 != v65)
    {
      *v64 = *v42;
    }

    v41 = v53 - 1;
    v65 = v42;
    v39 = &selRef_adSegmentsOutputName;
    v40 = v61;
    if (v42 <= v46)
    {
      v65 = v42;
      a2 = v58;
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C6BF411C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 8 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[6] < v6[6])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 8 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v23 = v6 - 8;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 8, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 8;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 8;
      v15 -= 8;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_1C6BF4318(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v6 - 2) < *(v13 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

uint64_t sub_1C6BF4570(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1C6D79E90();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C6BF4614(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
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
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6B1A418(0, &qword_1EDCDFA58, MEMORY[0x1E69B4F58], MEMORY[0x1E69E62F8]);
          sub_1C6BF56F8();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AA54(v13, i, a3);
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
        sub_1C6D78FC0();
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

uint64_t sub_1C6BF47B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
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
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EDCDF988, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal, sub_1C6B0F7A8);
          sub_1C6BF556C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4ACB4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
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

uint64_t sub_1C6BF4958(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
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
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EC1D7810, &qword_1EC1D6EA8, 0x1E69B6CC8, sub_1C6B0C69C);
          sub_1C6BF55F0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AD34(v13, i, a3);
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
        sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);
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

uint64_t sub_1C6BF4B00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
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
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, sub_1C6B0F7A8);
          sub_1C6BF5780();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4ACB4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1C6B0F7A8(0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
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

uint64_t sub_1C6BF4CA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
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
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding, sub_1C6B0F7A8);
          sub_1C6BF585C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AC2C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
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

uint64_t sub_1C6BF4E50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
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
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EC1D7828, &qword_1EDCDF860, 0x1E69B5450, sub_1C6B0C69C);
          sub_1C6BF5674();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AD34(v13, i, a3);
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
        sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
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

uint64_t sub_1C6BF5054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C6BF507C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1C6BF50C0()
{
  if (!qword_1EDCDF9F8)
  {
    sub_1C6BF512C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDF9F8);
    }
  }
}

void sub_1C6BF512C()
{
  if (!qword_1EDCDFA00)
  {
    sub_1C6BF51C0(255, &unk_1EDCDF9E8, &qword_1EDCE6680, MEMORY[0x1E69E6448], sub_1C6BF5804);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFA00);
    }
  }
}

void sub_1C6BF51C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C6D79820();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6BF5238(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1C6BF530C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_1C6BF5350()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1C6BF5394()
{
  if (!qword_1EC1D77F0)
  {
    sub_1C6BF51C0(255, &unk_1EDCDF9E8, &qword_1EDCE6680, MEMORY[0x1E69E6448], sub_1C6BF5804);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1D77F0);
    }
  }
}

uint64_t sub_1C6BF5438(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_1C6BF54E8()
{
  if (!qword_1EC1D7800)
  {
    sub_1C6BF51C0(255, &unk_1EDCDF9E8, &qword_1EDCE6680, MEMORY[0x1E69E6448], sub_1C6BF5804);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7800);
    }
  }
}

unint64_t sub_1C6BF556C()
{
  result = qword_1EDCDF980;
  if (!qword_1EDCDF980)
  {
    sub_1C6BF51C0(255, &qword_1EDCDF988, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal, sub_1C6B0F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF980);
  }

  return result;
}

unint64_t sub_1C6BF55F0()
{
  result = qword_1EC1D7818;
  if (!qword_1EC1D7818)
  {
    sub_1C6BF51C0(255, &qword_1EC1D7810, &qword_1EC1D6EA8, 0x1E69B6CC8, sub_1C6B0C69C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7818);
  }

  return result;
}

unint64_t sub_1C6BF5674()
{
  result = qword_1EC1D7830;
  if (!qword_1EC1D7830)
  {
    sub_1C6BF51C0(255, &qword_1EC1D7828, &unk_1EDCDF860, 0x1E69B5450, sub_1C6B0C69C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7830);
  }

  return result;
}

unint64_t sub_1C6BF56F8()
{
  result = qword_1EDCDFA50;
  if (!qword_1EDCDFA50)
  {
    sub_1C6B1A418(255, &qword_1EDCDFA58, MEMORY[0x1E69B4F58], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFA50);
  }

  return result;
}

unint64_t sub_1C6BF5780()
{
  result = qword_1EC1D7838;
  if (!qword_1EC1D7838)
  {
    sub_1C6BF51C0(255, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, sub_1C6B0F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7838);
  }

  return result;
}

void sub_1C6BF5804(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1C6BF585C()
{
  result = qword_1EDCDF9C8;
  if (!qword_1EDCDF9C8)
  {
    sub_1C6BF51C0(255, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding, sub_1C6B0F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF9C8);
  }

  return result;
}

uint64_t sub_1C6BF5918(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001BLL;
  v4 = 0x80000001C6D96E40;
  if (v2 == 1)
  {
    v5 = 0x80000001C6D96E40;
  }

  else
  {
    v3 = 0x7461527961636564;
    v5 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7461676572676761;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007365;
  }

  v8 = 0xD00000000000001BLL;
  if (*a2 != 1)
  {
    v8 = 0x7461527961636564;
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461676572676761;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007365;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6BF5A1C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BF5ACC()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6BF5B68()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BF5C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6BF7B6C();
  *a2 = result;
  return result;
}

void sub_1C6BF5C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007365;
  v4 = 0x80000001C6D96E40;
  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 0x7461527961636564;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461676572676761;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C6BF5CB0()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x7461527961636564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

uint64_t sub_1C6BF5D18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6BF7B6C();
  *a1 = result;
  return result;
}

uint64_t sub_1C6BF5D4C(uint64_t a1)
{
  v2 = sub_1C6BF667C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BF5D88(uint64_t a1)
{
  v2 = sub_1C6BF667C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserEventHistoryAggregateStore.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v100 = a2;
  v3 = sub_1C6D78A80();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v104 = *(v7 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BF7264(0, &qword_1EDCDF618, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v106 = *(v11 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v85 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BF667C();
  v17 = v105;
  v18 = a1;
  sub_1C6D7A2D0();
  v19 = v17;
  if (v17)
  {
LABEL_37:
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v105 = v10;
    v102 = v7;
    v103 = v6;
    sub_1C6BF66D0();
    LOBYTE(v111) = 0;
    sub_1C6BF6730();
    sub_1C6D79FF0();
    v92 = v15;
    v93 = v18;
    v20 = v107;
    sub_1C6BF6910(0, &unk_1EDCEA460, sub_1C6B6976C);
    v21 = sub_1C6D79EF0();
    v22 = 0;
    v23 = *(v20 + 64);
    v94 = v20 + 64;
    v95 = 0;
    v98 = v12;
    v99 = v20;
    v24 = 1 << *(v20 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v96 = v21 + 64;
    v97 = v21;
    v28 = v106;
    if (v26)
    {
      while (1)
      {
        v29 = __clz(__rbit64(v26));
        v101 = (v26 - 1) & v26;
LABEL_11:
        v32 = v29 | (v22 << 6);
        v33 = (*(v99 + 48) + 16 * v32);
        v35 = *v33;
        v34 = v33[1];
        v36 = (*(v99 + 56) + 16 * v32);
        v37 = *v36;
        v38 = v36[1];
        v39 = objc_allocWithZone(MEMORY[0x1E69B6EE8]);

        sub_1C6B1CD10(v37, v38);
        v40 = sub_1C6D75E50();
        v41 = [v39 initWithData_];

        if (!v41)
        {
          break;
        }

        sub_1C6B1C9F0(v37, v38);
        v42 = v97;
        *(v96 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v43 = (v42[6] + 16 * v32);
        *v43 = v35;
        v43[1] = v34;
        *(v42[7] + 8 * v32) = v41;
        v44 = v42[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        v12 = v98;
        v28 = v106;
        if (v45)
        {
          goto LABEL_42;
        }

        v42[2] = v46;
        v19 = v95;
        v26 = v101;
        if (!v101)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v30 = v22;
      while (1)
      {
        v22 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v22 >= v27)
        {
          break;
        }

        v31 = *(v94 + 8 * v22);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v101 = (v31 - 1) & v31;
          goto LABEL_11;
        }
      }

      sub_1C6BF67B0(0, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
      LOBYTE(v107) = 1;
      sub_1C6BF6828();
      v47 = v92;
      sub_1C6D79FF0();
      if (v19)
      {
        (*(v28 + 8))(v47, v12);

        v18 = v93;
        goto LABEL_37;
      }

      v48 = v111;
      sub_1C6BF6910(0, &qword_1EDCDF6C8, sub_1C6BF6974);
      v49 = sub_1C6D79EF0();
      v50 = v48;
      v51 = v49;
      v52 = 0;
      v53 = v50 + 64;
      v54 = 1 << *(v50 + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & *(v50 + 64);
      v57 = (v54 + 63) >> 6;
      v90 = v49 + 64;
      v18 = v93;
      v58 = v100;
      v88 = v49;
      v87 = v50;
      v86 = v50 + 64;
      v89 = v57;
      if (v56)
      {
        while (1)
        {
          v59 = __clz(__rbit64(v56));
          v60 = (v56 - 1) & v56;
LABEL_26:
          v94 = v52;
          v95 = v60;
          v63 = v59 | (v52 << 6);
          v64 = *(v50 + 56);
          v65 = (*(v50 + 48) + 16 * v63);
          v66 = v65[1];
          v96 = *v65;
          v99 = v63;
          v67 = *(v64 + 8 * v63);
          v68 = *(v67 + 16);
          if (v68)
          {
            break;
          }

          v70 = MEMORY[0x1E69E7CC0];
LABEL_34:
          v77 = v99;
          *(v90 + ((v99 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v99;
          v78 = (v51[6] + 16 * v77);
          *v78 = v96;
          v78[1] = v76;
          *(v51[7] + 8 * v77) = v70;
          v79 = v51[2];
          v45 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v45)
          {
            goto LABEL_43;
          }

          v51[2] = v80;
          v57 = v89;
          v52 = v94;
          v56 = v95;
          if (!v95)
          {
            goto LABEL_21;
          }
        }

        v110 = MEMORY[0x1E69E7CC0];
        v91 = v66;

        v101 = v68;
        sub_1C6B39624(0, v68, 0);
        v69 = 0;
        v70 = v110;
        v71 = (v67 + 40);
        while (v69 < *(v67 + 16))
        {
          v72 = *(v71 - 1);
          v73 = *v71;
          v109 = 0;
          v107 = 0u;
          v108 = 0u;
          sub_1C6B1CD10(v72, v73);
          sub_1C6D78A70();
          sub_1C6BF71A8();
          sub_1C6D78BE0();
          v110 = v70;
          v75 = *(v70 + 16);
          v74 = *(v70 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_1C6B39624(v74 > 1, v75 + 1, 1);
            v70 = v110;
          }

          ++v69;
          *(v70 + 16) = v75 + 1;
          sub_1C6BF7200(v105, v70 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v75);
          v71 += 2;
          if (v101 == v69)
          {

            v18 = v93;
            v58 = v100;
            v51 = v88;
            v50 = v87;
            v53 = v86;
            v76 = v91;
            goto LABEL_34;
          }
        }

        goto LABEL_40;
      }

LABEL_21:
      v61 = v52;
      while (1)
      {
        v52 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v52 >= v57)
        {

          LOBYTE(v107) = 2;
          v81 = v98;
          v82 = v92;
          sub_1C6D79FC0();
          v84 = v83;
          (*(v106 + 8))(v82, v81);
          *v58 = v97;
          v58[1] = v51;
          v58[2] = v84;
          goto LABEL_37;
        }

        v62 = *(v53 + 8 * v52);
        ++v61;
        if (v62)
        {
          v59 = __clz(__rbit64(v62));
          v60 = (v62 - 1) & v62;
          goto LABEL_26;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_1C6BF667C()
{
  result = qword_1EDCE0640;
  if (!qword_1EDCE0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0640);
  }

  return result;
}

void sub_1C6BF66D0()
{
  if (!qword_1EDCDFC40)
  {
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFC40);
    }
  }
}

unint64_t sub_1C6BF6730()
{
  result = qword_1EDCDFC38;
  if (!qword_1EDCDFC38)
  {
    sub_1C6BF66D0();
    sub_1C6B1C938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC38);
  }

  return result;
}

void sub_1C6BF67B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1C6BF74D8(255, a3, a4);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1C6BF6828()
{
  result = qword_1EDCDFBF8;
  if (!qword_1EDCDFBF8)
  {
    sub_1C6BF67B0(255, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
    sub_1C6BF7820(&qword_1EDCDFAC0, sub_1C6B1C938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFBF8);
  }

  return result;
}

void sub_1C6BF6910(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79F30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6BF6974()
{
  if (!qword_1EDCDFA80)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEvent(255);
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFA80);
    }
  }
}

uint64_t UserEventHistoryAggregateStore.encode(to:)(void *a1)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BF7264(0, &qword_1EDCDF5F0, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v70 = *(v8 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v58 - v11;
  v13 = *v1;
  v69 = v1[1];
  v14 = v1[2];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BF667C();
  sub_1C6D7A300();
  sub_1C6BF72C8(v13);
  v77 = v16;
  v76 = 0;
  sub_1C6BF67B0(0, &qword_1EDCDFC30, &qword_1EDCE63A0, MEMORY[0x1E69E6720], MEMORY[0x1E69E5E28]);
  sub_1C6BF752C();
  sub_1C6D7A090();
  v17 = v2;
  if (v2)
  {

    return (*(v70 + 8))(v12, v9);
  }

  else
  {
    v73 = v7;
    v60 = v9;

    sub_1C6BF67B0(0, &qword_1EDCDF6D0, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E6EC8]);
    v19 = v69;
    result = sub_1C6D79EF0();
    v20 = result;
    v21 = 0;
    v22 = v19 + 64;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v19 + 64);
    v26 = (v23 + 63) >> 6;
    v61 = result;
    v62 = result + 64;
    v27 = v74;
    v28 = v19;
    v29 = v70;
    v65 = v12;
    v58 = v22;
    v63 = v26;
    if (v25)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v25));
        v31 = (v25 - 1) & v25;
LABEL_12:
        v34 = v30 | (v21 << 6);
        v66 = v31;
        v35 = *(v28 + 56);
        v36 = (*(v28 + 48) + 16 * v34);
        v37 = v36[1];
        v67 = *v36;
        v68 = v34;
        v38 = *(v35 + 8 * v34);
        v39 = *(v38 + 16);
        if (v39)
        {
          break;
        }

        v41 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v52 = v68;
        *(v62 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
        v53 = (v20[6] + 16 * v52);
        *v53 = v67;
        v53[1] = result;
        *(v20[7] + 8 * v52) = v41;
        v54 = v20[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        v26 = v63;
        if (v55)
        {
          goto LABEL_30;
        }

        v20[2] = v56;
        v29 = v70;
        v12 = v65;
        v25 = v66;
        if (!v66)
        {
          goto LABEL_7;
        }
      }

      v59 = v21;
      v77 = MEMORY[0x1E69E7CC0];
      v64 = v37;

      result = sub_1C6B393F4(0, v39, 0);
      v40 = 0;
      v41 = v77;
      v42 = *(v27 + 80);
      v71 = v38;
      v72 = v38 + ((v42 + 32) & ~v42);
      v43 = v73;
      while (v40 < *(v38 + 16))
      {
        v44 = v39;
        sub_1C6BF7678(v72 + *(v27 + 72) * v40, v43);
        sub_1C6BF71A8();
        v45 = sub_1C6D78BF0();
        if (v17)
        {

          sub_1C6BF76DC(v43);
          (*(v70 + 8))(v65, v60);
        }

        v47 = v45;
        v48 = v46;
        v75 = 0;
        result = sub_1C6BF76DC(v43);
        v77 = v41;
        v50 = v41[2];
        v49 = v41[3];
        if (v50 >= v49 >> 1)
        {
          result = sub_1C6B393F4((v49 > 1), v50 + 1, 1);
          v41 = v77;
        }

        ++v40;
        v41[2] = v50 + 1;
        v51 = &v41[2 * v50];
        v51[4] = v47;
        v51[5] = v48;
        v39 = v44;
        v27 = v74;
        v17 = v75;
        v43 = v73;
        v38 = v71;
        if (v44 == v40)
        {

          v28 = v69;
          v20 = v61;
          v22 = v58;
          v21 = v59;
          result = v64;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      v32 = v21;
      while (1)
      {
        v21 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v21 >= v26)
        {
          v77 = v20;
          v76 = 1;
          sub_1C6BF67B0(0, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
          sub_1C6BF7738();
          v57 = v60;
          sub_1C6D7A090();

          if (!v17)
          {
            LOBYTE(v77) = 2;
            sub_1C6D7A060();
          }

          return (*(v29 + 8))(v12, v57);
        }

        v33 = *(v22 + 8 * v21);
        ++v32;
        if (v33)
        {
          v30 = __clz(__rbit64(v33));
          v31 = (v33 - 1) & v33;
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t UserEventHistoryAggregateStore.description.getter()
{
  v1 = *v0;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000028, 0x80000001C6D9EF40);
  v4 = *(v1 + 16);
  v2 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v2);

  MEMORY[0x1CCA55B00](0x6167657267676120, 0xEB00000000736574);
  return 0;
}

id UserEventHistoryAggregateStore.readonlyAggregateStore.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = objc_allocWithZone(MEMORY[0x1E69B5258]);
  sub_1C6B6976C();
  v4 = sub_1C6D79480();
  v5 = [v3 initWithAggregates:v4 scoringType:3 decayRate:v2];

  v6 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
  return v6;
}

unint64_t sub_1C6BF71A8()
{
  result = qword_1EDCE55C8;
  if (!qword_1EDCE55C8)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE55C8);
  }

  return result;
}

uint64_t sub_1C6BF7200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6BF7264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6BF667C();
    v7 = a3(a1, &type metadata for UserEventHistoryAggregateStore.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C6BF72C8(uint64_t a1)
{
  sub_1C6BF67B0(0, &unk_1EDCDF730, &qword_1EDCE63A0, MEMORY[0x1E69E6720], MEMORY[0x1E69E6EC8]);
  v2 = sub_1C6D79EF0();
  v3 = v2;
  v4 = 0;
  v36 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v34 = v2;
  v35 = v2 + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v36 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v36 + 56) + 8 * v15);

      v20 = v19;
      v21 = [v20 data];
      if (v21)
      {
        v38 = v18;
        v37 = v17;
        v22 = v10;
        v23 = v21;
        v24 = sub_1C6D75E60();
        v26 = v25;

        v27 = v26;
        v28 = v24;
        v3 = v34;
        v10 = v22;
        v17 = v37;
        v18 = v38;
      }

      else
      {

        v28 = 0;
        v27 = 0xF000000000000000;
      }

      *(v35 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v29 = (v3[6] + 16 * v15);
      *v29 = v18;
      v29[1] = v17;
      v30 = (v3[7] + 16 * v15);
      *v30 = v28;
      v30[1] = v27;
      v31 = v3[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v3[2] = v33;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C6BF74D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6969080]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C6BF752C()
{
  result = qword_1EDCDFC28;
  if (!qword_1EDCDFC28)
  {
    sub_1C6BF67B0(255, &qword_1EDCDFC30, &qword_1EDCE63A0, MEMORY[0x1E69E6720], MEMORY[0x1E69E5E28]);
    sub_1C6BF75E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC28);
  }

  return result;
}

unint64_t sub_1C6BF75E4()
{
  result = qword_1EDCE6390;
  if (!qword_1EDCE6390)
  {
    sub_1C6BF74D8(255, &qword_1EDCE63A0, MEMORY[0x1E69E6720]);
    sub_1C6B1CCBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6390);
  }

  return result;
}

uint64_t sub_1C6BF7678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BF76DC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6BF7738()
{
  result = qword_1EDCDFC00;
  if (!qword_1EDCDFC00)
  {
    sub_1C6BF67B0(255, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
    sub_1C6BF7820(&unk_1EDCDFAC8, sub_1C6B1CCBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC00);
  }

  return result;
}

uint64_t sub_1C6BF7820(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C6BF74D8(255, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6BF78BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t getEnumTagSinglePayload for UserEventHistoryAggregateStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserEventHistoryAggregateStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6BF7A68()
{
  result = qword_1EC1D7840;
  if (!qword_1EC1D7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7840);
  }

  return result;
}

unint64_t sub_1C6BF7AC0()
{
  result = qword_1EDCE0630;
  if (!qword_1EDCE0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0630);
  }

  return result;
}

unint64_t sub_1C6BF7B18()
{
  result = qword_1EDCE0638;
  if (!qword_1EDCE0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0638);
  }

  return result;
}

uint64_t sub_1C6BF7B6C()
{
  v0 = sub_1C6D79F50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C6BF7BF8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      v9 = a3(0);
      v10 = sub_1C6D797F0();
      *(v10 + 16) = a2;
      v11 = *(v9 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      sub_1C6BFEF44(v7, v10 + v12, a4);
      v13 = a2 - 1;
      if (a2 != 1)
      {
        v14 = *(v11 + 72);
        v15 = v10 + v14 + v12;
        do
        {
          sub_1C6BFEF44(v7, v15, a4);
          v15 += v14;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6BFEFAC(v7, a5);
    return v10;
  }

  return result;
}

uint64_t sub_1C6BF7CFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v197 = a3;
  sub_1C6BFDEA8(0, &qword_1EDCEA310, MEMORY[0x1E6996170]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v184 = &v172 - v10;
  sub_1C6BFDEA8(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v183 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v182 = &v172 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v181 = &v172 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v180 = (&v172 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v179 = (&v172 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v178 = &v172 - v23;
  v24 = sub_1C6D783E0();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v190 = &v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v189 = &v172 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v188 = &v172 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v187 = &v172 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v192 = &v172 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v191 = &v172 - v36;
  v199 = type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures(0);
  v194 = *(v199 - 1);
  v37 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v200 = (&v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v195 = sub_1C6D78810();
  v198 = *(v195 - 8);
  v39 = *(v198 + 64);
  v40 = MEMORY[0x1EEE9AC00](v195);
  v193 = &v172 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v172 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v172 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v172 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v172 - v51;
  v53 = *a1;
  if (*(*a1 + 16))
  {
    v54 = sub_1C6B64FC0(a2);
    if (v55)
    {
      v56 = v198;
      v57 = *(v53 + 56) + *(v198 + 72) * v54;
      v58 = v195;
      (*(v198 + 16))(v52, v57, v195);
      return (*(v56 + 32))(a4, v52, v58);
    }
  }

  v185 = v44;
  v196 = v4;
  v176 = a1;
  v177 = a4;
  if (qword_1EDCE96C8 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();
  v203 = 0;
  v204 = 0;
  sub_1C6D79AC0();
  v61 = sub_1C6D78D30();
  v202 = v60;
  v62 = *a2;
  v63 = v197;
  v64 = v197[2];
  MEMORY[0x1EEE9AC00](v61);
  *(&v172 - 6) = &v204;
  *(&v172 - 5) = &v202;
  *(&v172 - 4) = v62;
  *(&v172 - 3) = &v203;
  *(&v172 - 2) = a2;
  *(&v172 - 1) = v63;
  (*(*v64 + 160))(0, 0, 0, sub_1C6BFDF1C);
  sub_1C6B1D314();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1C6D7EB10;
  v67 = v203;
  v66 = v204;
  v68 = MEMORY[0x1E69E6530];
  v69 = MEMORY[0x1E69E65A8];
  *(v65 + 56) = MEMORY[0x1E69E6530];
  *(v65 + 64) = v69;
  *(v65 + 32) = v67;
  *(v65 + 96) = v68;
  *(v65 + 104) = v69;
  *(v65 + 72) = v66;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v70 = v202;
  v71 = *(v202 + 16);
  v63[5] = v71;
  v72 = v62 - v71;
  if (v62 <= v71)
  {
    v75 = a2;
    v76 = v196;
  }

  else
  {
    v73 = v63[3];
    sub_1C6D787D0();
    v74 = v196;
    sub_1C6C6D288(v73, v47, a2[6], v50);
    if (v74)
    {
      (*(v198 + 8))(v47, v195);
    }

    v75 = a2;
    v77 = v198;
    v197 = *(v198 + 8);
    v78 = v47;
    v79 = v195;
    (v197)(v78, v195);
    v81 = v199;
    v80 = v200;
    (*(v77 + 16))(v200 + v199[5], v50, v79);
    *v80 = 0;
    v80[1] = 0xE000000000000000;
    v82 = (v80 + v81[6]);
    *v82 = 0;
    v82[1] = 0xE000000000000000;
    v83 = (v80 + v81[7]);
    *v83 = 0;
    v83[1] = 0xE000000000000000;
    v84 = (v80 + v81[8]);
    *v84 = 0;
    v84[1] = 0xE000000000000000;
    *(v80 + v81[9]) = 0;
    v76 = 0;
    *(v80 + v81[10]) = 0;
    v85 = sub_1C6BF7BF8(v80, v72, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
    sub_1C6B38B70(v85);
    (v197)(v50, v79);
    v70 = v202;
    v71 = *(v202 + 16);
  }

  v86 = MEMORY[0x1E69E7CC0];
  v173 = v75;
  v87 = v193;
  v186 = v70;
  if (v71)
  {
    v196 = v76;
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B39674(0, v71, 0);
    v86 = v201[0];
    v88 = v195;
    v89 = v70 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
    v197 = *(v194 + 72);
    v90 = (v198 + 16);
    do
    {
      v91 = v200;
      sub_1C6BFEF44(v89, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
      (*v90)(v87, v91 + v199[5], v88);
      sub_1C6BFEFAC(v91, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
      v201[0] = v86;
      v93 = *(v86 + 16);
      v92 = *(v86 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_1C6B39674(v92 > 1, v93 + 1, 1);
        v86 = v201[0];
      }

      *(v86 + 16) = v93 + 1;
      (*(v198 + 32))(v86 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v93, v87, v88);
      v89 += v197;
      --v71;
    }

    while (v71);
    v76 = v196;
    v94 = v185;
    v70 = v186;
  }

  else
  {
    v94 = v185;
  }

  sub_1C6B96AD0(v86, 2, 2u, v94);
  if (v76)
  {
  }

  else
  {
    v95 = v94;

    sub_1C6D783C0();
    v96 = *(v70 + 16);
    v196 = 0;
    v174 = v96;
    if (v96)
    {
      v201[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v96, 0);
      v97 = v201[0];
      v98 = v70 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v99 = *(v194 + 72);
      do
      {
        v100 = v200;
        sub_1C6BFEF44(v98, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v102 = *v100;
        v101 = v100[1];

        sub_1C6BFEFAC(v100, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v201[0] = v97;
        v104 = *(v97 + 16);
        v103 = *(v97 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_1C6B39280((v103 > 1), v104 + 1, 1);
          v97 = v201[0];
        }

        *(v97 + 16) = v104 + 1;
        v105 = v97 + 16 * v104;
        *(v105 + 32) = v102;
        *(v105 + 40) = v101;
        v98 += v99;
        --v96;
      }

      while (v96);
      v70 = v186;
      v96 = v174;
    }

    v106 = v178;
    sub_1C6D78740();
    v107 = sub_1C6D78760();
    v197 = *(v107 - 8);
    v193 = v197[7];
    v175 = (v197 + 7);
    (v193)(v106, 0, 1, v107);
    sub_1C6D78830();
    sub_1C6D783C0();
    v108 = MEMORY[0x1E69E7CC0];
    v191 = v107;
    if (v96)
    {
      v201[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B392F0(0, v96, 0);
      v108 = v201[0];
      v109 = v70 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v110 = *(v194 + 72);
      v111 = v96;
      do
      {
        v112 = v200;
        sub_1C6BFEF44(v109, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v113 = *(v112 + v199[9]);
        sub_1C6BFEFAC(v112, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v201[0] = v108;
        v115 = *(v108 + 16);
        v114 = *(v108 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1C6B392F0((v114 > 1), v115 + 1, 1);
          v108 = v201[0];
        }

        *(v108 + 16) = v115 + 1;
        *(v108 + 4 * v115 + 32) = v113;
        v109 += v110;
        --v111;
      }

      while (v111);
      v116 = v95;
      v96 = v174;
      v107 = v191;
    }

    else
    {
      v116 = v95;
    }

    v117 = v179;
    *v179 = v108;
    v118 = v197[13];
    (v118)(v117, *MEMORY[0x1E6996140], v107);
    (v193)(v117, 0, 1, v107);
    sub_1C6D78830();
    sub_1C6D783C0();
    if (v96)
    {
      v197 = v118;
      v201[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B3922C(0, v96, 0);
      v119 = v201[0];
      v120 = v186 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v121 = v96;
      v122 = *(v194 + 72);
      v123 = v120;
      v124 = v116;
      do
      {
        v125 = v200;
        sub_1C6BFEF44(v123, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v126 = *(v125 + v199[10]);
        sub_1C6BFEFAC(v125, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v201[0] = v119;
        v128 = *(v119 + 16);
        v127 = *(v119 + 24);
        if (v128 >= v127 >> 1)
        {
          sub_1C6B3922C((v127 > 1), v128 + 1, 1);
          v119 = v201[0];
        }

        *(v119 + 16) = v128 + 1;
        *(v119 + 4 * v128 + 32) = v126;
        v123 += v122;
        --v121;
      }

      while (v121);
      v129 = v180;
      *v180 = v119;
      v130 = v191;
      (v197)(v129, *MEMORY[0x1E6996138], v191);
      (v193)(v129, 0, 1, v130);
      sub_1C6D78830();
      sub_1C6D783C0();
      v201[0] = MEMORY[0x1E69E7CC0];
      v131 = v174;
      sub_1C6B39280(0, v174, 0);
      v132 = v201[0];
      do
      {
        v133 = v200;
        sub_1C6BFEF44(v120, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v134 = (v133 + v199[6]);
        v136 = *v134;
        v135 = v134[1];

        sub_1C6BFEFAC(v133, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v201[0] = v132;
        v138 = *(v132 + 16);
        v137 = *(v132 + 24);
        if (v138 >= v137 >> 1)
        {
          sub_1C6B39280((v137 > 1), v138 + 1, 1);
          v132 = v201[0];
        }

        *(v132 + 16) = v138 + 1;
        v139 = v132 + 16 * v138;
        *(v139 + 32) = v136;
        *(v139 + 40) = v135;
        v120 += v122;
        --v131;
      }

      while (v131);
      v96 = v174;
      v107 = v191;
      v116 = v124;
      v140 = v193;
    }

    else
    {
      v141 = v180;
      *v180 = MEMORY[0x1E69E7CC0];
      (v118)(v141, *MEMORY[0x1E6996138], v107);
      v140 = v193;
      (v193)(v141, 0, 1, v107);
      sub_1C6D78830();
      sub_1C6D783C0();
    }

    v142 = v181;
    sub_1C6D78740();
    v140(v142, 0, 1, v107);
    sub_1C6D78830();
    sub_1C6D783C0();
    v143 = v107;
    v144 = v186;
    if (v96)
    {
      v201[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v96, 0);
      v145 = v201[0];
      v146 = v144 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v197 = *(v194 + 72);
      v147 = v146;
      v148 = v96;
      do
      {
        v149 = v200;
        sub_1C6BFEF44(v147, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v150 = (v149 + v199[7]);
        v151 = *v150;
        v152 = v150[1];

        sub_1C6BFEFAC(v149, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v201[0] = v145;
        v154 = *(v145 + 16);
        v153 = *(v145 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_1C6B39280((v153 > 1), v154 + 1, 1);
          v145 = v201[0];
        }

        *(v145 + 16) = v154 + 1;
        v155 = v145 + 16 * v154;
        *(v155 + 32) = v151;
        *(v155 + 40) = v152;
        v147 += v197;
        --v148;
      }

      while (v148);
      v156 = v182;
      sub_1C6D78740();
      (v193)(v156, 0, 1, v191);
      sub_1C6D78830();
      sub_1C6D783C0();
      v201[0] = MEMORY[0x1E69E7CC0];
      v157 = v174;
      sub_1C6B39280(0, v174, 0);
      v158 = v201[0];
      do
      {
        v159 = v200;
        sub_1C6BFEF44(v146, v200, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v160 = (v159 + v199[8]);
        v161 = *v160;
        v162 = v160[1];

        sub_1C6BFEFAC(v159, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v201[0] = v158;
        v164 = *(v158 + 16);
        v163 = *(v158 + 24);
        if (v164 >= v163 >> 1)
        {
          sub_1C6B39280((v163 > 1), v164 + 1, 1);
          v158 = v201[0];
        }

        *(v158 + 16) = v164 + 1;
        v165 = v158 + 16 * v164;
        *(v165 + 32) = v161;
        *(v165 + 40) = v162;
        v146 += v197;
        --v157;
      }

      while (v157);
      v166 = v173;
      v143 = v191;
      v116 = v185;
      v140 = v193;
    }

    else
    {
      v167 = v182;
      sub_1C6D78740();
      v140(v167, 0, 1, v143);
      sub_1C6D78830();
      sub_1C6D783C0();
      v166 = v173;
    }

    v168 = v183;
    sub_1C6D78740();
    v140(v168, 0, 1, v143);
    sub_1C6D78830();
    v169 = v198;
    v170 = v184;
    v171 = v195;
    (*(v198 + 16))(v184, v116, v195);
    (*(v169 + 56))(v170, 0, 1, v171);
    sub_1C6BC62A0(v166, v201);
    sub_1C6BC1DF0(v170, v166);
    (*(v169 + 32))(v177, v116, v171);
  }
}

uint64_t sub_1C6BF91AC(__int128 *a1, BOOL *a2, uint64_t *a3, size_t *a4, uint64_t a5, void *a6, __int128 *a7, uint64_t a8)
{
  v190 = a8;
  v192 = a7;
  v209 = a6;
  v175 = a5;
  v210 = a4;
  v177 = sub_1C6D789A0();
  v204 = *(v177 - 8);
  v11 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v157 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BFDEA8(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v154 - v18;
  sub_1C6BFDEA8(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v172 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v171 = &v154 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v154 - v25;
  v191 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v197 = *(v191 - 8);
  v26 = *(v197 + 64);
  v27 = MEMORY[0x1EEE9AC00](v191);
  v173 = (&v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v154 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v154 - v32);
  v165 = type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures(0);
  v164 = *(v165 - 8);
  v34 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v185 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1C6D78810();
  v36 = *(v198 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v198);
  v186 = &v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v196 = &v154 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v195 = &v154 - v42;
  v43 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v194 = &v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v46 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v193 = &v154 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = _s10ValidationOMa(0);
  v48 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = (&v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BFDEA8(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v154 - v52;
  v208 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v205 = *(v208 - 8);
  v54 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v203 = &v154 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v56 = *(v163 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x1EEE9AC00](v163);
  v60 = (&v154 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    goto LABEL_62;
  }

  v167 = v33;
  v168 = v31;
  v158 = v17;
  v155 = a2;
  *a3 = v61;
  if (qword_1EDCDF7A0 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v62 = *algn_1EDCF0308;
    MEMORY[0x1EEE9AC00](v58);
    *(&v154 - 2) = a1;
    v206 = v62;
    v207 = v63;
    result = (v63)(sub_1C6BFDF4C);
    v65 = *(a1 + 2);
    v66 = *(v65 + 16);
    a1 = v192;
    v67 = v175;
    v68 = v203;
    if (!v66)
    {
      break;
    }

    v199 = 0;
    v205 += 48;
    v188 = (v36 + 8);
    v161 = (v36 + 16);
    v160 = (v197 + 48);
    v162 = (v204 + 48);
    v154 = (v204 + 32);
    v156 = (v204 + 8);
    v159 = (v36 + 32);
    v176 = xmmword_1C6D7F510;
    v204 = v65;
    v200 = v56;
    v189 = v53;
    while (v66 <= *(v65 + 16))
    {
      --v66;
      sub_1C6BFEF44(v65 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v66, v60, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
      if (*(*v210 + 16) >= v67)
      {
        result = sub_1C6BFEFAC(v60, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        goto LABEL_57;
      }

      if (__OFADD__(*v209, 1))
      {
        goto LABEL_59;
      }

      ++*v209;
      sub_1C6BFE158(v60, v53, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if ((*v205)(v53, 1, v208) == 1)
      {
        v69 = sub_1C6BFE1C4(v53, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        MEMORY[0x1EEE9AC00](v69);
        *(&v154 - 2) = v60;
        v207(sub_1C6BFDF54);
        v68 = v203;
      }

      else
      {
        sub_1C6BFDFEC(v53, v68, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        v70 = *(a1 + 24);
        v213[0] = *(a1 + 8);
        v213[1] = v70;
        v214 = *(a1 + 5);
        v71 = v201;
        v72 = v68;
        sub_1C6BFAA74(v213, v201);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v74 = v71[1];
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
          *(&v154 - 2) = v75;
          *(&v154 - 1) = v74;
          v36 = v74;
          v207(sub_1C6B9F5E4);

          sub_1C6BFEFAC(v72, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
          v68 = v72;
          v56 = v200;
        }

        else
        {
          v76 = v67;
          v197 = *v71;
          sub_1C6BFDF5C();
          v78 = v77[16];
          v79 = *(v71 + v77[20]);
          v80 = v193;
          sub_1C6BFDFEC(v71 + v77[12], v193, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
          v81 = v71 + v78;
          v36 = v194;
          sub_1C6BFDFEC(v81, v194, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
          v82 = v195;
          static Features.fromProtoFeatureMap(_:)(*v36, v195);
          v83 = *(a1 + 6);
          v84 = v196;
          v85 = v199;
          v86 = sub_1C6C6D288(*(v190 + 24), v82, v83, v196);
          if (v85)
          {
            (*v188)(v82, v198);

            MEMORY[0x1EEE9AC00](v87);
            *(&v154 - 2) = v85;
            v207(sub_1C6BFE054);

            sub_1C6BFEFAC(v80, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
            v68 = v203;
            sub_1C6BFEFAC(v203, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
            sub_1C6BFEFAC(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
            v199 = 0;
            a1 = v192;
            v56 = v200;
            v67 = v76;
            v53 = v189;
          }

          else
          {
            v187 = v79;
            v199 = 0;
            MEMORY[0x1EEE9AC00](v86);
            *(&v154 - 2) = v197;
            *(&v154 - 1) = v74;
            v184 = v74;
            v207(sub_1C6B9F65C);
            (*v161)(v186, v84, v198);
            v88 = *(v169 + 24);
            v89 = v170;
            sub_1C6BFE158(v80 + v88, v170, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v90 = *v160;
            v91 = v191;
            if ((*v160)(v89, 1, v191) == 1)
            {
              v92 = v167;
              *v167 = v176;
              *(v92 + 2) = 0;
              *(v92 + 24) = 1;
              *(v92 + 4) = 0;
              *(v92 + 40) = 1;
              *(v92 + 6) = 0;
              *(v92 + 56) = 1;
              v93 = v92 + *(v91 + 32);
              sub_1C6D78A30();
              v94 = (v92 + *(v91 + 36));
              *v94 = 0;
              v94[1] = 0;
              v95 = v90(v89, 1, v91);
              v53 = v189;
              if (v95 != 1)
              {
                sub_1C6BFE1C4(v89, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              }
            }

            else
            {
              v92 = v167;
              sub_1C6BFDFEC(v89, v167, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              v53 = v189;
            }

            v96 = *(v92 + 2);
            v97 = *(v92 + 24);
            sub_1C6BFEFAC(v92, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v211 = v96;
            v212 = v97;
            v98 = Com_Apple_News_Personalization_GroupType.string.getter();
            if (v99)
            {
              v100 = v98;
            }

            else
            {
              v100 = 0;
            }

            v183 = v100;
            v101 = 0xE000000000000000;
            if (v99)
            {
              v101 = v99;
            }

            v182 = v101;
            v102 = v171;
            sub_1C6BFE158(v80 + v88, v171, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v103 = v191;
            if (v90(v102, 1, v191) == 1)
            {
              v104 = v168;
              *v168 = v176;
              *(v104 + 2) = 0;
              *(v104 + 24) = 1;
              *(v104 + 4) = 0;
              *(v104 + 40) = 1;
              *(v104 + 6) = 0;
              *(v104 + 56) = 1;
              v105 = v104 + *(v103 + 32);
              sub_1C6D78A30();
              v106 = (v104 + *(v103 + 36));
              *v106 = 0;
              v106[1] = 0;
              if (v90(v102, 1, v103) != 1)
              {
                sub_1C6BFE1C4(v102, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              }
            }

            else
            {
              v104 = v168;
              sub_1C6BFDFEC(v102, v168, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            }

            v107 = *(v104 + 4);
            v108 = *(v104 + 40);
            sub_1C6BFEFAC(v104, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v211 = v107;
            v212 = v108;
            v109 = Com_Apple_News_Personalization_FeedType.string.getter();
            if (v110)
            {
              v111 = v109;
            }

            else
            {
              v111 = 0;
            }

            v181 = v111;
            v112 = 0xE000000000000000;
            if (v110)
            {
              v112 = v110;
            }

            v180 = v112;
            v113 = v172;
            sub_1C6BFE158(v80 + v88, v172, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v114 = v191;
            if (v90(v113, 1, v191) == 1)
            {
              a1 = v173;
              *v173 = v176;
              *(a1 + 2) = 0;
              *(a1 + 24) = 1;
              *(a1 + 4) = 0;
              *(a1 + 40) = 1;
              *(a1 + 6) = 0;
              *(a1 + 56) = 1;
              v115 = a1 + *(v114 + 32);
              sub_1C6D78A30();
              v116 = (a1 + *(v114 + 36));
              *v116 = 0;
              v116[1] = 0;
              v117 = v90(v113, 1, v114);
              v56 = v200;
              v118 = v162;
              v36 = v187;
              if (v117 != 1)
              {
                sub_1C6BFE1C4(v113, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              }
            }

            else
            {
              a1 = v173;
              sub_1C6BFDFEC(v113, v173, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              v56 = v200;
              v118 = v162;
              v36 = v187;
            }

            v119 = *(a1 + 6);
            v120 = *(a1 + 56);
            sub_1C6BFEFAC(a1, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v211 = v119;
            v212 = v120;
            v121 = sub_1C6C26E00();
            if (v122)
            {
              v123 = v121;
            }

            else
            {
              v123 = 0;
            }

            if (v122)
            {
              v124 = v122;
            }

            else
            {
              v124 = 0xE000000000000000;
            }

            if (v36 < 0xFFFFFFFF80000000)
            {
              goto LABEL_60;
            }

            if (v36 > 0x7FFFFFFF)
            {
              goto LABEL_61;
            }

            v178 = v124;
            v179 = v123;
            v125 = *(v163 + 24);
            v126 = MEMORY[0x1E69AA900];
            v127 = v166;
            sub_1C6BFE158(v60 + v125, v166, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            v174 = *v118;
            v128 = v174(v127, 1, v177);
            sub_1C6BFE1C4(v127, &qword_1EDCE66F0, v126);
            v129 = 0.0;
            if (v128 != 1)
            {
              v130 = v158;
              sub_1C6BFE158(v60 + v125, v158, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              v131 = v177;
              v132 = v174;
              if (v174(v130, 1, v177) == 1)
              {
                v133 = v157;
                sub_1C6D78990();
                if (v132(v130, 1, v131) != 1)
                {
                  sub_1C6BFE1C4(v158, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                }
              }

              else
              {
                v133 = v157;
                (*v154)(v157, v130, v131);
              }

              sub_1C6D78970();
              v135 = v134;
              (*v156)(v133, v131);
              v129 = v135;
            }

            v136 = v185;
            v137 = v184;
            *v185 = v197;
            *(v136 + 1) = v137;
            v138 = v165;
            (*v159)(&v136[*(v165 + 20)], v186, v198);
            v139 = &v136[v138[6]];
            v140 = v182;
            *v139 = v183;
            v139[1] = v140;
            v141 = &v136[v138[7]];
            v142 = v180;
            *v141 = v181;
            v141[1] = v142;
            v143 = &v136[v138[8]];
            v144 = v178;
            *v143 = v179;
            v143[1] = v144;
            *&v136[v138[9]] = v187;
            *&v136[v138[10]] = v129;
            v145 = v210;
            v146 = *v210;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v145 = v146;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v146 = sub_1C6B66664(0, v146[2] + 1, 1, v146);
              *v210 = v146;
            }

            v67 = v175;
            v149 = v146[2];
            v148 = v146[3];
            if (v149 >= v148 >> 1)
            {
              v153 = sub_1C6B66664(v148 > 1, v149 + 1, 1, v146);
              *v210 = v153;
            }

            v150 = *v188;
            v36 = v198;
            (*v188)();
            (v150)(v195, v36);
            sub_1C6BFEFAC(v193, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
            v151 = v203;
            sub_1C6BFEFAC(v203, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
            v152 = *v210;
            *(v152 + 16) = v149 + 1;
            v68 = v151;
            sub_1C6BFDFEC(v185, v152 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v149, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
            sub_1C6BFEFAC(v194, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
            a1 = v192;
          }
        }
      }

      result = sub_1C6BFEFAC(v60, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
      v65 = v204;
      if (!v66)
      {
        goto LABEL_57;
      }
    }

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
    v58 = swift_once();
  }

LABEL_57:
  *v155 = *(*v210 + 16) >= v67;
  return result;
}

uint64_t sub_1C6BFA71C(void *a1)
{
  v2 = MEMORY[0x1E69AA900];
  sub_1C6BFDEA8(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v16 - v5;
  v7 = sub_1C6D789A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD00000000000001ALL, 0x80000001C6D9F290);
  MEMORY[0x1CCA55B00](*a1, a1[1]);
  MEMORY[0x1CCA55B00](2108704, 0xE300000000000000);
  v12 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6BFE158(a1 + *(v12 + 36), v6, &qword_1EDCE66F0, v2);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_1C6D78990();
    if (v13(v6, 1, v7) != 1)
    {
      sub_1C6BFE1C4(v6, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_1C6D79E60();
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1CCA55B00](0x206874697720, 0xE600000000000000);
  v16[1] = *(a1[2] + 16);
  v14 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v14);

  MEMORY[0x1CCA55B00](0x73746E65766520, 0xE700000000000000);
  return v17;
}

uint64_t sub_1C6BFA9E4()
{
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000049, 0x80000001C6D9F240);
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6D79E60();
  return 0;
}

uint64_t sub_1C6BFAA74@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v174 = a1;
  v181 = a2;
  v169 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v3 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v173 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BFDEA8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v158 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v161 = &v153 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v170 = &v153 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v156 = &v153 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v160 = &v153 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v153 - v17;
  v171 = sub_1C6D78A00();
  v175 = *(v171 - 8);
  v18 = *(v175 + 64);
  v19 = MEMORY[0x1EEE9AC00](v171);
  v155 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v159 = &v153 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v166 = &v153 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v154 = &v153 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v157 = &v153 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v153 - v29;
  v162 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v30 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v172 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v32 = *(*(v177 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v177);
  v168 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v163 = &v153 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v165 = &v153 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v176 = &v153 - v39;
  v40 = sub_1C6D78A80();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v179 = (&v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BFDEA8(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v153 - v45;
  v47 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v153 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v180 = &v153 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BFDEA8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = (&v153 - v57);
  v59 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v153 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v2;
  Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.recipe.getter(v58);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_1C6BFE1C4(v58, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    v64 = v181;
    *v181 = 0xD000000000000019;
    v64[1] = 0x80000001C6D9F130;
    _s10ValidationOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v65 = v181;
  sub_1C6BFDFEC(v58, v63, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BFE158(&v63[*(v59 + 24)], v46, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v66 = *(v48 + 48);
  v67 = v63;
  if (v66(v46, 1, v47) == 1)
  {
    *v51 = xmmword_1C6D7F510;
    *(v51 + 2) = 0;
    v51[24] = 1;
    *(v51 + 4) = 0;
    v51[40] = 1;
    *(v51 + 6) = 0;
    v51[56] = 1;
    v68 = &v51[*(v47 + 32)];
    sub_1C6D78A30();
    v69 = &v51[*(v47 + 36)];
    *v69 = 0;
    *(v69 + 1) = 0;
    if (v66(v46, 1, v47) != 1)
    {
      sub_1C6BFE1C4(v46, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
    }
  }

  else
  {
    sub_1C6BFDFEC(v46, v51, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  }

  v70 = *v51;
  v71 = *(v51 + 1);
  sub_1C6B1CD10(*v51, v71);
  sub_1C6BFEFAC(v51, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v185 = v70;
  v186 = v71;
  v184 = 0;
  v182 = 0u;
  v183 = 0u;
  sub_1C6D78A70();
  sub_1C6BFE05C();
  v72 = v180;
  sub_1C6D78C00();
  v73 = v176;
  sub_1C6BFEF44(v178, v176, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v83 = v172;
    v84 = sub_1C6BFDFEC(v73, v172, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    v85 = v174[3];
    v86 = v175;
    if (v85 > 0.0)
    {
      v87 = v174[2];
      sub_1C6BFE0B4(v84, 0.0, 1.0);
      if (v88 < v85)
      {
        v176 = *(v162 + 24);
        v89 = v167;
        sub_1C6BFE158(v83 + v176, v167, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v90 = *(v86 + 48);
        v91 = v171;
        if (v90(v89, 1, v171) == 1)
        {
          v92 = v164;
          sub_1C6D789F0();
          if (v90(v89, 1, v91) != 1)
          {
            sub_1C6BFE1C4(v89, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v92 = v164;
          (*(v86 + 32))(v164, v89, v91);
        }

        sub_1C6D789C0();
        v110 = v109;
        v111 = v92;
        v112 = *(v86 + 8);
        v112(v111, v91);
        v179 = v112;
        if (v87 <= v110)
        {
          sub_1C6BFEF44(v178, v165, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
          v115 = swift_getEnumCaseMultiPayload();
          v116 = v67;
          if (v115)
          {
            if (v115 == 1)
            {
              v117 = 0x6153657069636572;
              v118 = 0xEB00000000646576;
            }

            else
            {
              v117 = 0x6956657069636572;
              v118 = 0xEC00000064657765;
            }
          }

          else
          {
            v117 = 0x65646F4D6B6F6F63;
            v118 = 0xEE00646577656956;
          }

          sub_1C6BFDF5C();
          v134 = v133;
          v135 = *(v133 + 48);
          v136 = *(v133 + 64);
          sub_1C6BFEFAC(v165, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
          *v65 = v117;
          v65[1] = v118;
          v137 = v116;
          sub_1C6BFEF44(v116, v65 + v135, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
          v138 = v180;
          sub_1C6BFEF44(v180, v65 + v136, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
          v139 = v160;
          sub_1C6BFE158(v172 + v176, v160, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          v140 = v171;
          if (v90(v139, 1, v171) == 1)
          {
            v141 = v157;
            sub_1C6D789F0();
            if (v90(v139, 1, v140) != 1)
            {
              sub_1C6BFE1C4(v139, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v141 = v157;
            (*(v175 + 32))(v157, v139, v140);
          }

          v142 = *(v134 + 80);
          v143 = sub_1C6D789E0();
          v179(v141, v140);
          v144 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
          v145 = &v187;
          goto LABEL_68;
        }

        *&v182 = 0;
        *(&v182 + 1) = 0xE000000000000000;
        sub_1C6D79D50();
        MEMORY[0x1CCA55B00](0xD000000000000025, 0x80000001C6D9F210);
        v113 = v156;
        sub_1C6BFE158(v83 + v176, v156, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        if (v90(v113, 1, v91) == 1)
        {
          v114 = v154;
          sub_1C6D789F0();
          if (v90(v113, 1, v91) != 1)
          {
            sub_1C6BFE1C4(v113, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v114 = v154;
          (*(v86 + 32))(v154, v113, v91);
        }

        sub_1C6D789C0();
        v179(v114, v91);
        sub_1C6D79910();
        MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
        sub_1C6D79910();
        v104 = *(&v182 + 1);
        v103 = v182;
        v106 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
        v107 = v172;
LABEL_28:
        sub_1C6BFEFAC(v107, v106);
        sub_1C6BFEFAC(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v108 = v67;
LABEL_29:
        sub_1C6BFEFAC(v108, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
        *v65 = v103;
        v65[1] = v104;
        _s10ValidationOMa(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    *&v182 = 0;
    *(&v182 + 1) = 0xE000000000000000;
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000028, 0x80000001C6D9F1E0);
    sub_1C6D79910();
    MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
    v104 = *(&v182 + 1);
    v103 = v182;
    v105 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
LABEL_27:
    v106 = v105;
    v107 = v83;
    goto LABEL_28;
  }

  v75 = v175;
  if (EnumCaseMultiPayload != 1)
  {
    v83 = v173;
    v93 = sub_1C6BFDFEC(v73, v173, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    v94 = v174[1];
    if (v94 > 0.0)
    {
      v95 = *v174;
      sub_1C6BFE0B4(v93, 0.0, 1.0);
      if (v96 < v94)
      {
        v176 = *(v169 + 24);
        v97 = v170;
        sub_1C6BFE158(v83 + v176, v170, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v98 = *(v75 + 48);
        v99 = v171;
        if (v98(v97, 1, v171) == 1)
        {
          v100 = v166;
          sub_1C6D789F0();
          if (v98(v97, 1, v99) != 1)
          {
            sub_1C6BFE1C4(v97, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v100 = v166;
          (*(v75 + 32))(v166, v97, v99);
        }

        sub_1C6D789C0();
        v120 = v119;
        v121 = v100;
        v122 = *(v75 + 8);
        v122(v121, v99);
        v179 = v122;
        if (v95 > v120)
        {
          v178 = v67;
          *&v182 = 0;
          *(&v182 + 1) = 0xE000000000000000;
          sub_1C6D79D50();
          MEMORY[0x1CCA55B00](0xD000000000000022, 0x80000001C6D9F180);
          v123 = v158;
          sub_1C6BFE158(v83 + v176, v158, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          if (v98(v123, 1, v99) == 1)
          {
            v124 = v155;
            sub_1C6D789F0();
            if (v98(v123, 1, v99) != 1)
            {
              sub_1C6BFE1C4(v123, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v124 = v155;
            (*(v75 + 32))(v155, v123, v99);
          }

          sub_1C6D789C0();
          v179(v124, v99);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
          sub_1C6D79910();
          v104 = *(&v182 + 1);
          v103 = v182;
          sub_1C6BFEFAC(v173, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
          sub_1C6BFEFAC(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
          v108 = v178;
          goto LABEL_29;
        }

        sub_1C6BFEF44(v178, v168, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        v125 = swift_getEnumCaseMultiPayload();
        v126 = v67;
        if (v125)
        {
          if (v125 == 1)
          {
            v127 = 0x6153657069636572;
            v128 = 0xEB00000000646576;
          }

          else
          {
            v127 = 0x6956657069636572;
            v128 = 0xEC00000064657765;
          }
        }

        else
        {
          v127 = 0x65646F4D6B6F6F63;
          v128 = 0xEE00646577656956;
        }

        sub_1C6BFDF5C();
        v147 = v146;
        v148 = *(v146 + 48);
        v149 = *(v146 + 64);
        sub_1C6BFEFAC(v168, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        *v65 = v127;
        v65[1] = v128;
        v137 = v126;
        sub_1C6BFEF44(v126, v65 + v148, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
        v138 = v180;
        sub_1C6BFEF44(v180, v65 + v149, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v150 = v161;
        sub_1C6BFE158(v173 + v176, v161, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v151 = v171;
        if (v98(v150, 1, v171) == 1)
        {
          v152 = v159;
          sub_1C6D789F0();
          if (v98(v150, 1, v151) != 1)
          {
            sub_1C6BFE1C4(v150, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v152 = v159;
          (*(v175 + 32))(v159, v150, v151);
        }

        v142 = *(v147 + 80);
        v143 = sub_1C6D789E0();
        v179(v152, v151);
        v144 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
        v145 = &v188;
LABEL_68:
        sub_1C6BFEFAC(*(v145 - 32), v144);
        sub_1C6BFEFAC(v138, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6BFEFAC(v137, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
        *(v65 + v142) = v143;
        _s10ValidationOMa(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    *&v182 = 0;
    *(&v182 + 1) = 0xE000000000000000;
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000025, 0x80000001C6D9F150);
    sub_1C6D79910();
    MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
    v104 = *(&v182 + 1);
    v103 = v182;
    v105 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
    goto LABEL_27;
  }

  v76 = v174[4];
  if (v76 <= 0.0 || (sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0), v77 >= v76))
  {
    *&v182 = 0;
    *(&v182 + 1) = 0xE000000000000000;
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000024, 0x80000001C6D9F1B0);
    sub_1C6D79910();
    MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
    v101 = v182;
    sub_1C6BFEFAC(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6BFEFAC(v63, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    *v65 = v101;
    _s10ValidationOMa(0);
    swift_storeEnumTagMultiPayload();
    return sub_1C6BFEFAC(v73, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    v78 = v163;
    sub_1C6BFEF44(v178, v163, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v79 = swift_getEnumCaseMultiPayload();
    v80 = v63;
    if (v79)
    {
      if (v79 == 1)
      {
        v81 = 0x6153657069636572;
        v82 = 0xEB00000000646576;
      }

      else
      {
        v81 = 0x6956657069636572;
        v82 = 0xEC00000064657765;
      }
    }

    else
    {
      v81 = 0x65646F4D6B6F6F63;
      v82 = 0xEE00646577656956;
    }

    sub_1C6BFDF5C();
    v130 = v129[12];
    v131 = v129[16];
    v132 = v129[20];
    sub_1C6BFEFAC(v78, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    *v65 = v81;
    v65[1] = v82;
    sub_1C6BFDFEC(v80, v65 + v130, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    sub_1C6BFDFEC(v72, v65 + v131, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    *(v65 + v132) = 0;
    _s10ValidationOMa(0);
    swift_storeEnumTagMultiPayload();
    return sub_1C6BFEFAC(v176, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }
}

uint64_t sub_1C6BFC300()
{
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000017, 0x80000001C6D9BD50);
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  return 0;
}

uint64_t sub_1C6BFC3A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void sub_1C6BFC3EC()
{
  if (!qword_1EC1D7848)
  {
    v0 = sub_1C6D783B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7848);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C6BFC460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6BFC4A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6BFC504(uint64_t a1)
{
  v2 = sub_1C6BFF7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFC540(uint64_t a1)
{
  v2 = sub_1C6BFF7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6BFC5CC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1C6BFC620(a1, &qword_1EC1D7958, sub_1C6BFF7B8, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.RecipeViewedConditions.CodingKeys, sub_1C6BFF7B8);
}

uint64_t sub_1C6BFC620(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1C6BFF8B4(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A300();
  v18 = 0;
  sub_1C6D7A060();
  if (!v5)
  {
    v17 = 1;
    sub_1C6D7A060();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C6BFC7A0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA56770](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1CCA56770](*&v3);
}

uint64_t sub_1C6BFC7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

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

uint64_t sub_1C6BFC8D0(uint64_t a1)
{
  v2 = sub_1C6BFF80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFC90C(uint64_t a1)
{
  v2 = sub_1C6BFF80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C6BFC998(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v8 = sub_1C6BFE348(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    *(a6 + 8) = v9;
  }
}

uint64_t sub_1C6BFC9D4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1C6BFC620(a1, &qword_1EC1D7960, sub_1C6BFF80C, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.CookModeViewedConditions.CodingKeys, sub_1C6BFF80C);
}

uint64_t sub_1C6BFCA28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6BFC7A0(v1, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFCA7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6BFC7A0(v1, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFCAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6D7A130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6BFCB78(uint64_t a1)
{
  v2 = sub_1C6BFF860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFCBB4(uint64_t a1)
{
  v2 = sub_1C6BFF860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6BFCBF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  sub_1C6BFF8B4(0, &qword_1EC1D7948, sub_1C6BFF860, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.RecipeSavedConditions.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF860();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v16;
  sub_1C6D79FC0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v13;
  return result;
}

uint64_t sub_1C6BFCDA8(void *a1)
{
  sub_1C6BFF8B4(0, &qword_1EC1D7968, sub_1C6BFF860, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.RecipeSavedConditions.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF860();
  sub_1C6D7A300();
  sub_1C6D7A060();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C6BFCF14()
{
  v1 = *v0;
  sub_1C6D7A260();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA56770](*&v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFCF70()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1CCA56770](*&v1);
}

uint64_t sub_1C6BFCFAC()
{
  v1 = *v0;
  sub_1C6D7A260();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA56770](*&v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD018(void *a1)
{
  v3 = v1;
  sub_1C6BFF8B4(0, &qword_1EC1D78D8, sub_1C6BFF31C, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.EventConditions.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF31C();
  sub_1C6D7A300();
  v13 = *v3;
  v14 = 0;
  sub_1C6BFF46C();
  sub_1C6D7A090();
  if (!v2)
  {
    v13 = v3[1];
    v14 = 1;
    sub_1C6BFF4C0();
    sub_1C6D7A090();
    *&v13 = *(v3 + 4);
    v14 = 2;
    sub_1C6BFF514();
    sub_1C6D7A090();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6BFD220()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA56770](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x1CCA56770](*&v3);
  v4 = v0[2];
  v5 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1CCA56770](*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x1CCA56770](*&v6);
  v7 = v0[4];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x1CCA56770](*&v7);
}

uint64_t sub_1C6BFD2AC()
{
  v1 = 0x65646F4D6B6F6F63;
  if (*v0 != 1)
  {
    v1 = 0x6153657069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6956657069636572;
  }
}

uint64_t sub_1C6BFD324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6BFE800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6BFD34C(uint64_t a1)
{
  v2 = sub_1C6BFF31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFD388(uint64_t a1)
{
  v2 = sub_1C6BFF31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C6BFD3C4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6BFE538(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C6BFD424()
{
  sub_1C6D7A260();
  sub_1C6BFD220();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD468()
{
  sub_1C6D7A260();
  sub_1C6BFD220();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD4E4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF736E6F69746964;
  v3 = 0x6E6F43746E657665;
  v4 = *a1;
  v5 = 0x6D614E7475706E69;
  v6 = 0xEA00000000007365;
  if (v4 == 1)
  {
    v5 = 0x6E6F43746E657665;
    v6 = 0xEF736E6F69746964;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001C6D96E10;
  }

  if (*a2 != 1)
  {
    v3 = 0x6D614E7475706E69;
    v2 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001C6D96E10;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6BFD5F0()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD6A8()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6BFD74C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6BFE928();
  *a2 = result;
  return result;
}

void sub_1C6BFD830(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF736E6F69746964;
  v4 = 0x6E6F43746E657665;
  if (v2 != 1)
  {
    v4 = 0x6D614E7475706E69;
    v3 = 0xEA00000000007365;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001C6D96E10;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1C6BFD8A4()
{
  v1 = 0x6E6F43746E657665;
  if (*v0 != 1)
  {
    v1 = 0x6D614E7475706E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C6BFD914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6BFE928();
  *a1 = result;
  return result;
}

uint64_t sub_1C6BFD93C(uint64_t a1)
{
  v2 = sub_1C6BFEDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFD978(uint64_t a1)
{
  v2 = sub_1C6BFEDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6BFD9B4(void *a1)
{
  v3 = v1;
  sub_1C6BFF8B4(0, &qword_1EC1D7870, sub_1C6BFEDE8, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFEDE8();
  sub_1C6D7A300();
  v12 = *v3;
  LOBYTE(v15[0]) = 0;
  sub_1C6D7A080();
  if (!v2)
  {
    v13 = *(v3 + 3);
    v15[0] = *(v3 + 1);
    v15[1] = v13;
    v16 = v3[5];
    v17 = 1;
    sub_1C6BFEE90();
    sub_1C6D7A090();
    *&v15[0] = v3[6];
    v17 = 2;
    sub_1C6B855D0();
    sub_1C6BFEEE4(&qword_1EDCE6630);
    sub_1C6D7A090();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6BFDBDC()
{
  MEMORY[0x1CCA56740](*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA56770](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1CCA56770](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1CCA56770](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1CCA56770](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1CCA56770](*&v9);
  v10 = *(v0 + 48);
  v11 = *(v10 + 16);
  result = MEMORY[0x1CCA56740](v11);
  if (v11)
  {
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1C6D79610();

      v13 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

double sub_1C6BFDCD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6BFE974(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C6BFDD40()
{
  sub_1C6D7A260();
  sub_1C6BFDBDC();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFDD84()
{
  sub_1C6D7A260();
  sub_1C6BFDBDC();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFDDC0(uint64_t a1, uint64_t a2)
{
  v2 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))), xmmword_1C6D80110)) & 0xF;
  if (*a1 == *a2 && v2 == 0 && *(a1 + 40) == *(a2 + 40))
  {
    return sub_1C6B55CF8(*(a1 + 48), *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C6BFDE40()
{
  result = qword_1EDCE0170;
  if (!qword_1EDCE0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0170);
  }

  return result;
}

void sub_1C6BFDEA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1C6BFDF5C()
{
  if (!qword_1EC1D7850)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1D7850);
    }
  }
}

uint64_t sub_1C6BFDFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6BFE05C()
{
  result = qword_1EDCE5B20;
  if (!qword_1EDCE5B20)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5B20);
  }

  return result;
}

uint64_t sub_1C6BFE0B4(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1CCA57120](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1C6BFE0B4(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1C6BFE158(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6BFDEA8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BFE1C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6BFDEA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1C6BFE220(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1C6D797F0();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_1C6BFE2BC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1C6BFED9C();
    v4 = sub_1C6D797F0();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

double sub_1C6BFE348(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1C6BFF8B4(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v22 = *(v9 - 8);
  v11 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A2D0();
  if (!v5)
  {
    v15 = v22;
    v24 = 0;
    v16 = sub_1C6D79F70();
    v18 = v17;
    v19 = *&v16;
    v23 = 1;
    sub_1C6D79F70();
    if (v18)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v19;
    }

    (*(v15 + 8))(v13, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1C6BFE538@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v22 = a2;
  sub_1C6BFF8B4(0, &qword_1EC1D78B0, sub_1C6BFF31C, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.EventConditions.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF31C();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v22;
  v23 = 0;
  sub_1C6BFF370();
  sub_1C6D79F90();
  if (v26)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v24;
  }

  if (v26)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v25;
  }

  v23 = 1;
  sub_1C6BFF3C4();
  sub_1C6D79F90();
  v15 = v11;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v23 = 2;
  sub_1C6BFF418();
  sub_1C6D79F90();
  v20 = 0.0;
  if (v18)
  {
    v17 = 0.0;
    v16 = 0.0;
  }

  (*(v15 + 8))(v9, v5);
  if (!LOBYTE(v25))
  {
    v20 = v24;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v20;
  return result;
}

uint64_t sub_1C6BFE800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6956657069636572 && a2 == 0xEC00000064657765;
  if (v4 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D6B6F6F63 && a2 == 0xEE00646577656956 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6153657069636572 && a2 == 0xEB00000000646576)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6D7A130();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C6BFE928()
{
  v0 = sub_1C6D79F50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C6BFE974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1C6BFF8B4(0, &qword_1EC1D7858, sub_1C6BFEDE8, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v23.i8[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFEDE8();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  v27.i8[0] = 0;
  v13 = v5;
  v14 = sub_1C6D79F80();
  if (v15)
  {
    v16 = 128;
  }

  else
  {
    v16 = v14;
  }

  v26 = 1;
  sub_1C6BFEE3C();
  sub_1C6D79F90();
  v23 = v28;
  v24 = v27;
  if (v30)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = v29;
  }

  if (v30)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  sub_1C6B855D0();
  v26 = 2;
  sub_1C6BFEEE4(&qword_1EDCE6628);
  sub_1C6D79F90();
  v20 = vdupq_n_s64(v18);
  v23 = vbslq_s8(v20, xmmword_1C6D83E50, v23);
  v24 = vbslq_s8(v20, xmmword_1C6D83E50, v24);
  (*(v11 + 8))(v9, v13);
  v21 = v27.i64[0];
  if (v27.i64[0])
  {
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v16;
  v22 = v24;
  *(v12 + 24) = v23;
  *(v12 + 8) = v22;
  *(v12 + 40) = v17;
  *(v12 + 48) = v21;
  return result;
}

void sub_1C6BFEC6C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 recipeViewed];
  [v4 probability];
  v6 = v5;

  v7 = [a1 recipeViewed];
  [v7 probability];
  v9 = v8;

  v10 = [a1 cookModeViewed];
  [v10 probability];
  v12 = v11;

  v13 = [a1 cookModeViewed];
  [v13 probability];
  v15 = v14;

  v16 = [a1 recipeSaved];
  [v16 probability];
  v18 = v17;

  *a2 = v6;
  a2[1] = v9;
  a2[2] = v12;
  a2[3] = v15;
  a2[4] = v18;
}

unint64_t sub_1C6BFED9C()
{
  result = qword_1EC1D6EA8;
  if (!qword_1EC1D6EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1D6EA8);
  }

  return result;
}

unint64_t sub_1C6BFEDE8()
{
  result = qword_1EC1D7860;
  if (!qword_1EC1D7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7860);
  }

  return result;
}

unint64_t sub_1C6BFEE3C()
{
  result = qword_1EC1D7868;
  if (!qword_1EC1D7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7868);
  }

  return result;
}

unint64_t sub_1C6BFEE90()
{
  result = qword_1EC1D7878;
  if (!qword_1EC1D7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7878);
  }

  return result;
}

uint64_t sub_1C6BFEEE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B855D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6BFEF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BFEFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6BFF01C()
{
  sub_1C6BFDF5C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1C6BFF0AC()
{
  result = sub_1C6D78810();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6BFF158(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6BFF178(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1C6BFF1C0()
{
  result = qword_1EC1D7890;
  if (!qword_1EC1D7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7890);
  }

  return result;
}

unint64_t sub_1C6BFF218()
{
  result = qword_1EC1D7898;
  if (!qword_1EC1D7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7898);
  }

  return result;
}

unint64_t sub_1C6BFF270()
{
  result = qword_1EC1D78A0;
  if (!qword_1EC1D78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78A0);
  }

  return result;
}

unint64_t sub_1C6BFF2C8()
{
  result = qword_1EC1D78A8;
  if (!qword_1EC1D78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78A8);
  }

  return result;
}

unint64_t sub_1C6BFF31C()
{
  result = qword_1EC1D78B8;
  if (!qword_1EC1D78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78B8);
  }

  return result;
}

unint64_t sub_1C6BFF370()
{
  result = qword_1EC1D78C0;
  if (!qword_1EC1D78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78C0);
  }

  return result;
}

unint64_t sub_1C6BFF3C4()
{
  result = qword_1EC1D78C8;
  if (!qword_1EC1D78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78C8);
  }

  return result;
}

unint64_t sub_1C6BFF418()
{
  result = qword_1EC1D78D0;
  if (!qword_1EC1D78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78D0);
  }

  return result;
}

unint64_t sub_1C6BFF46C()
{
  result = qword_1EC1D78E0;
  if (!qword_1EC1D78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78E0);
  }

  return result;
}

unint64_t sub_1C6BFF4C0()
{
  result = qword_1EC1D78E8;
  if (!qword_1EC1D78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78E8);
  }

  return result;
}

unint64_t sub_1C6BFF514()
{
  result = qword_1EC1D78F0;
  if (!qword_1EC1D78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78F0);
  }

  return result;
}

unint64_t sub_1C6BFF5AC()
{
  result = qword_1EC1D78F8;
  if (!qword_1EC1D78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78F8);
  }

  return result;
}

unint64_t sub_1C6BFF604()
{
  result = qword_1EC1D7900;
  if (!qword_1EC1D7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7900);
  }

  return result;
}

unint64_t sub_1C6BFF65C()
{
  result = qword_1EC1D7908;
  if (!qword_1EC1D7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7908);
  }

  return result;
}

unint64_t sub_1C6BFF6B4()
{
  result = qword_1EC1D7910;
  if (!qword_1EC1D7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7910);
  }

  return result;
}

unint64_t sub_1C6BFF70C()
{
  result = qword_1EC1D7918;
  if (!qword_1EC1D7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7918);
  }

  return result;
}

unint64_t sub_1C6BFF764()
{
  result = qword_1EC1D7920;
  if (!qword_1EC1D7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7920);
  }

  return result;
}

unint64_t sub_1C6BFF7B8()
{
  result = qword_1EC1D7930;
  if (!qword_1EC1D7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7930);
  }

  return result;
}

unint64_t sub_1C6BFF80C()
{
  result = qword_1EC1D7940;
  if (!qword_1EC1D7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7940);
  }

  return result;
}

unint64_t sub_1C6BFF860()
{
  result = qword_1EC1D7950;
  if (!qword_1EC1D7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7950);
  }

  return result;
}

void sub_1C6BFF8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1C6BFF950()
{
  result = qword_1EC1D7970;
  if (!qword_1EC1D7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7970);
  }

  return result;
}

unint64_t sub_1C6BFF9A8()
{
  result = qword_1EC1D7978;
  if (!qword_1EC1D7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7978);
  }

  return result;
}

unint64_t sub_1C6BFFA00()
{
  result = qword_1EC1D7980;
  if (!qword_1EC1D7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7980);
  }

  return result;
}

unint64_t sub_1C6BFFA58()
{
  result = qword_1EC1D7988;
  if (!qword_1EC1D7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7988);
  }

  return result;
}

unint64_t sub_1C6BFFAB0()
{
  result = qword_1EC1D7990;
  if (!qword_1EC1D7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7990);
  }

  return result;
}

unint64_t sub_1C6BFFB08()
{
  result = qword_1EC1D7998;
  if (!qword_1EC1D7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7998);
  }

  return result;
}

unint64_t sub_1C6BFFB60()
{
  result = qword_1EC1D79A0;
  if (!qword_1EC1D79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D79A0);
  }

  return result;
}

unint64_t sub_1C6BFFBB8()
{
  result = qword_1EC1D79A8;
  if (!qword_1EC1D79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D79A8);
  }

  return result;
}

unint64_t sub_1C6BFFC10()
{
  result = qword_1EC1D79B0;
  if (!qword_1EC1D79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D79B0);
  }

  return result;
}

uint64_t FCFeedPersonalizationConfigurationSet.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D791C0();
  if ((a1 - 1) > 0x26)
  {
    v5 = MEMORY[0x1E69B5CD8];
  }

  else
  {
    v5 = qword_1E8297150[a1 - 1];
  }

  (*(*(v4 - 8) + 104))(a2, *v5, v4);
  v6 = *MEMORY[0x1E69B5A28];
  v7 = sub_1C6D79170();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t FCFeedPersonalizationConfigurationSet.headlineContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D791C0();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 0x26)
  {
    v6 = MEMORY[0x1E69B5CD8];
  }

  else
  {
    v6 = qword_1E8297150[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t FCFeedPersonalizationConfigurationSet.issueContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D791A0();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69B5B98];
  if (a1 != 3)
  {
    v6 = MEMORY[0x1E69B5BA0];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t FCFeedPersonalizationConfigurationSet.recipeContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B5CA0];
  v3 = sub_1C6D791B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C6BFFF3C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(v1 + *(v7 + 28), v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
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
    return sub_1C6C02F44(v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead()
{
  result = qword_1EDCE38A8;
  if (!qword_1EDCE38A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v3 = a1 + v2[6];
  sub_1C6D78A30();
  v4 = v2[7];
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1C6C002B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(a1 + *(v8 + 28), v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
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
    return sub_1C6C02F44(v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}