int64_t sub_1DC2D69A8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_1DC2DAE88(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2D6A44(uint64_t a1, void *a2)
{
  v4 = *(sub_1DC511FEC() + 16);

  if (v4)
  {
    v30 = a2;
    result = type metadata accessor for NLRouterServiceRequest(0);
    v6 = 0;
    v7 = *(a1 + *(result + 24));
    v8 = *(v7 + 16);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v10 = v7 + 48 * v6;
    while (v8 != v6)
    {
      if (v6 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      ++v6;
      v11 = (v10 + 48);
      v12 = *(v10 + 56);
      v10 += 48;
      if (v12)
      {
        v13 = *v11;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v17 = *(v9 + 16);
          v18 = OUTLINED_FUNCTION_13_0();
          result = sub_1DC2ACCD4(v18, v19, v20, v9);
          v9 = result;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          v21 = OUTLINED_FUNCTION_26(v14);
          result = sub_1DC2ACCD4(v21, v15 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
        goto LABEL_3;
      }
    }

    v22 = *(v9 + 16);
    v23 = *(sub_1DC511FEC() + 16);

    if (v22 >= v23)
    {
      v25 = sub_1DC511FEC();
      v26 = *(sub_1DC511FEC() + 16);

      v31[0] = v25;
      v31[1] = sub_1DC2D69A8(v26, v9);
      v31[2] = v27;
      v31[3] = v28;
      v31[4] = v29;
      v24 = sub_1DC2D637C(v31, v30);
      swift_unknownObjectRelease();
    }

    else
    {

      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24 & 1;
}

void sub_1DC2D6BF0()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v5 = type metadata accessor for TurnSummary(0);
  v6 = OUTLINED_FUNCTION_52(v5);
  v58 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = *(sub_1DC511FEC() + 16);

  if (v13)
  {
    v14 = 0;
    v59 = *(v4 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
    v60 = *(v59 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    while (v14 != v60)
    {
      if (v14 >= *(v59 + 16))
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
        return;
      }

      v16 = (v59 + 32 + 48 * v14);
      v0 = v16[4];
      v17 = v0[2];
      if (v17)
      {
        v61 = v14;
        v63 = v15;
        v18 = v16[1];
        v19 = v16[3];
        v20 = *(v58 + 80);
        OUTLINED_FUNCTION_24();
        v2 = v0 + v21;

        swift_bridgeObjectRetain_n();
        v1 = *(v58 + 72);

        v22 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1DC2DACB8(v2, v12);
          v23 = *(v12 + 16);
          v24 = *(v12 + 24);

          OUTLINED_FUNCTION_1_2();
          sub_1DC2DAD1C(v12, v25);
          if (v24)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = *(v22 + 2);
              v30 = OUTLINED_FUNCTION_13_0();
              v22 = sub_1DC2ACCD4(v30, v31, v32, v22);
            }

            v27 = *(v22 + 2);
            v26 = *(v22 + 3);
            if (v27 >= v26 >> 1)
            {
              v33 = OUTLINED_FUNCTION_26(v26);
              v22 = sub_1DC2ACCD4(v33, v27 + 1, 1, v22);
            }

            *(v22 + 2) = v27 + 1;
            v28 = &v22[16 * v27];
            *(v28 + 4) = v23;
            *(v28 + 5) = v24;
          }

          v2 += v1;
          --v17;
        }

        while (v17);
        swift_bridgeObjectRelease_n();

        v14 = v61;
        v15 = v63;
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      v34 = *(v22 + 2);
      v35 = *(v15 + 2);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_50;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v36 > *(v15 + 3) >> 1)
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        v15 = sub_1DC2ACCD4(isUniquelyReferenced_nonNull_native, v38, 1, v15);
      }

      ++v14;
      if (*(v22 + 2))
      {
        if ((*(v15 + 3) >> 1) - *(v15 + 2) < v34)
        {
          goto LABEL_51;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v39 = *(v15 + 2);
          v40 = __OFADD__(v39, v34);
          v41 = v39 + v34;
          if (v40)
          {
            goto LABEL_52;
          }

          *(v15 + 2) = v41;
        }
      }

      else
      {

        if (v34)
        {
          __break(1u);
          break;
        }
      }
    }

    v42 = *(v15 + 2);
    v43 = *(sub_1DC511FEC() + 16);

    if (v42 >= v43)
    {
      v44 = sub_1DC511FEC();
      v45 = *(sub_1DC511FEC() + 16);

      sub_1DC2D69A8(v45, v15);
      OUTLINED_FUNCTION_41_2();
      v62 = v46;
      v64 = v47;

      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_63_1();
      while (v64 != v2)
      {
        if (v2 >= *(v44 + 16))
        {
          goto LABEL_53;
        }

        if (!(v1 + v2))
        {
          break;
        }

        if ((v43 + v2) >= v62)
        {
          goto LABEL_54;
        }

        v48 = *(v0 - 1);
        v49 = *v0;
        v51 = *(v45 - 1);
        v50 = *v45;
        v52 = sub_1DC51778C();
        v54 = v53;
        OUTLINED_FUNCTION_47_0();
        if (v52 == sub_1DC51778C() && v54 == v55)
        {
        }

        else
        {
          OUTLINED_FUNCTION_35_0();
          v57 = sub_1DC51825C();

          if ((v57 & 1) == 0)
          {
            break;
          }
        }

        v45 += 2;
        v0 += 2;
        ++v2;
      }

      swift_unknownObjectRelease_n();
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC2D7018()
{
  OUTLINED_FUNCTION_33();
  v50 = v0;
  v2 = v1;
  v3 = type metadata accessor for TurnSummary(0);
  v4 = OUTLINED_FUNCTION_52(v3);
  v51 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *(sub_1DC511FEC() + 16);

  if (v11)
  {
    v12 = 0;
    v52 = *(v2 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
    v53 = *(v52 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    while (v12 != v53)
    {
      if (v12 >= *(v52 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v14 = (v52 + 32 + 48 * v12);
      v15 = v14[4];
      v16 = *(v15 + 16);
      if (v16)
      {
        v54 = v12;
        v55 = v13;
        v17 = v14[1];
        v18 = v14[3];
        v19 = *(v51 + 80);
        OUTLINED_FUNCTION_24();
        v21 = v15 + v20;

        swift_bridgeObjectRetain_n();
        v22 = *(v51 + 72);

        v23 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1DC2DACB8(v21, v10);
          v24 = *(v10 + 16);
          v25 = *(v10 + 24);

          OUTLINED_FUNCTION_1_2();
          sub_1DC2DAD1C(v10, v26);
          if (v25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = *(v23 + 2);
              v31 = OUTLINED_FUNCTION_13_0();
              v23 = sub_1DC2ACCD4(v31, v32, v33, v23);
            }

            v28 = *(v23 + 2);
            v27 = *(v23 + 3);
            if (v28 >= v27 >> 1)
            {
              v34 = OUTLINED_FUNCTION_26(v27);
              v23 = sub_1DC2ACCD4(v34, v28 + 1, 1, v23);
            }

            *(v23 + 2) = v28 + 1;
            v29 = &v23[16 * v28];
            *(v29 + 4) = v24;
            *(v29 + 5) = v25;
          }

          v21 += v22;
          --v16;
        }

        while (v16);
        swift_bridgeObjectRelease_n();

        v12 = v54;
        v13 = v55;
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v35 = *(v23 + 2);
      v36 = *(v13 + 2);
      v37 = v36 + v35;
      if (__OFADD__(v36, v35))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v37 > *(v13 + 3) >> 1)
      {
        if (v36 <= v37)
        {
          v39 = v36 + v35;
        }

        else
        {
          v39 = v36;
        }

        v13 = sub_1DC2ACCD4(isUniquelyReferenced_nonNull_native, v39, 1, v13);
      }

      ++v12;
      if (*(v23 + 2))
      {
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v35)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        if (v35)
        {
          v40 = *(v13 + 2);
          v41 = __OFADD__(v40, v35);
          v42 = v40 + v35;
          if (v41)
          {
            goto LABEL_38;
          }

          *(v13 + 2) = v42;
        }
      }

      else
      {

        if (v35)
        {
          __break(1u);
          break;
        }
      }
    }

    v43 = *(v13 + 2);
    v44 = *(sub_1DC511FEC() + 16);

    if (v43 >= v44)
    {
      v45 = sub_1DC511FEC();
      v46 = *(sub_1DC511FEC() + 16);

      v56[0] = v45;
      v56[1] = sub_1DC2D69A8(v46, v13);
      v56[2] = v47;
      v56[3] = v48;
      v56[4] = v49;
      sub_1DC2D637C(v56, v50);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC2D73A4()
{
  OUTLINED_FUNCTION_33();
  v74 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v4 = OUTLINED_FUNCTION_35(v74);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v71 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_2(v13, v70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_64();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v72 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v73 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_40();
  v31 = type metadata accessor for NLRouterTurnContext(v30);
  v32 = OUTLINED_FUNCTION_35(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v35 = type metadata accessor for NLRouterServiceRequest(0);
  v36 = *(v35 + 20);
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v0, 1, v31);
  if (v61)
  {
    v37 = &qword_1ECC7BFD0;
    v38 = &unk_1DC522550;
    v39 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    sub_1DC2DB0A4(v0, v1);
    OUTLINED_FUNCTION_69_1(*(v35 + 24));
    if (!v41 || *(v1 + *(v31 + 44)) != 1)
    {
      OUTLINED_FUNCTION_0_3();
      sub_1DC2DAD1C(v1, v49);
      goto LABEL_11;
    }

    v42 = v40 + 48 * v41;
    v43 = *(v42 - 8);
    v44 = *(v42 + 8);
    sub_1DC2D8C78(*(v42 + 16), v3);
    v45 = type metadata accessor for TurnSummary(0);
    OUTLINED_FUNCTION_39(v3, 1, v45);
    if (v61)
    {

      sub_1DC2AAF50(v3, &qword_1ECC7BFC0, &unk_1DC522540);
      v51 = v73;
      v53 = v74;
      v46 = OUTLINED_FUNCTION_50_2();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v74);
      v54 = v75;
    }

    else
    {
      v50 = *(v45 + 28);
      v51 = v73;
      sub_1DC2DB2AC();

      OUTLINED_FUNCTION_1_2();
      sub_1DC2DAD1C(v3, v52);
      v53 = v74;
      v54 = v75;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v2, 2, 4, v55);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v53);
    v59 = *(v9 + 48);
    OUTLINED_FUNCTION_79_1();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v54, 1, v53);
    if (v61)
    {

      OUTLINED_FUNCTION_49_2(v2);
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_0_3();
      sub_1DC2DAD1C(v1, v60);
      OUTLINED_FUNCTION_39(v54 + v59, 1, v53);
      if (v61)
      {
        sub_1DC2AAF50(v54, &qword_1ECC7BFC8, &unk_1DC524050);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v54 + v59, 1, v53);
      if (!v61)
      {
        OUTLINED_FUNCTION_2_7();
        sub_1DC2DB0A4(v54 + v59, v71);
        OUTLINED_FUNCTION_5_5();
        sub_1DC2DB304(v64, v65);
        sub_1DC5176CC();

        OUTLINED_FUNCTION_23_3();
        sub_1DC2DAD1C(v71, v66);
        sub_1DC2AAF50(v2, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC2AAF50(v51, &qword_1ECC7BFC8, &unk_1DC524050);
        OUTLINED_FUNCTION_0_3();
        sub_1DC2DAD1C(v1, v67);
        sub_1DC2DAD1C(v72, v53);
        v68 = OUTLINED_FUNCTION_60();
        sub_1DC2AAF50(v68, v69, &unk_1DC524050);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_49_2(v2);
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_0_3();
      sub_1DC2DAD1C(v1, v62);
      OUTLINED_FUNCTION_3_5();
      sub_1DC2DAD1C(v72, v63);
    }

    v37 = &qword_1ECC7BFB8;
    v38 = &unk_1DC52A4C0;
    v39 = v54;
  }

  sub_1DC2AAF50(v39, v37, v38);
LABEL_11:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2D7974()
{
  OUTLINED_FUNCTION_33();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v100 = v8;
  OUTLINED_FUNCTION_12();
  v101 = sub_1DC51190C();
  v9 = OUTLINED_FUNCTION_0(v101);
  v98[2] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v98[1] = v14 - v13;
  v15 = OUTLINED_FUNCTION_12();
  v104 = type metadata accessor for TurnSummary.ExecutionSource(v15);
  v16 = OUTLINED_FUNCTION_35(v104);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v99 = v20 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v102);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_2(v24, v98[0]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v103 = v33;
  OUTLINED_FUNCTION_22();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v98 - v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_55_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_18();
  v43 = type metadata accessor for NLRouterTurnContext(v42);
  v44 = OUTLINED_FUNCTION_35(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v47 = type metadata accessor for NLRouterServiceRequest(0);
  OUTLINED_FUNCTION_51_2(v47);
  sub_1DC2DB2AC();
  v48 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_39(v48, v49, v43);
  if (v75)
  {
    v50 = &qword_1ECC7BFD0;
    v51 = &unk_1DC522550;
    v52 = v2;
LABEL_4:
    sub_1DC2AAF50(v52, v50, v51);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_1();
  sub_1DC2DB0A4(v2, v0);
  OUTLINED_FUNCTION_69_1(*(v47 + 24));
  v55 = v0;
  if (!v54)
  {
LABEL_18:
    OUTLINED_FUNCTION_0_3();
    sub_1DC2DAD1C(v55, v79);
    goto LABEL_19;
  }

  v56 = OUTLINED_FUNCTION_27_2(v53);
  sub_1DC2D8C78(v56, v1);
  v57 = type metadata accessor for TurnSummary(0);
  OUTLINED_FUNCTION_14_2(v1);
  if (v75)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BFC0, &unk_1DC522540);
    v58 = OUTLINED_FUNCTION_50_2();
    v63 = v104;
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v104);
    v64 = v105;
  }

  else
  {
    v61 = *(v57 + 28);
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_1_2();
    sub_1DC2DAD1C(v1, v62);
    v63 = v104;
    v64 = v105;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  v65 = OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v65, v66, 4, v67);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v63);
  v71 = *(v102 + 48);
  sub_1DC2DB2AC();
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v64, 1, v63);
  v72 = v103;
  if (v75)
  {
    v73 = OUTLINED_FUNCTION_43();
    sub_1DC2AAF50(v73, v74, &unk_1DC524050);
    sub_1DC2AAF50(v3, &qword_1ECC7BFC8, &unk_1DC524050);
    OUTLINED_FUNCTION_39(v64 + v71, 1, v63);
    if (v75)
    {
      sub_1DC2AAF50(v64, &qword_1ECC7BFC8, &unk_1DC524050);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v64 + v71, 1, v63);
  if (v75)
  {
    v76 = OUTLINED_FUNCTION_43();
    sub_1DC2AAF50(v76, v77, &unk_1DC524050);
    sub_1DC2AAF50(v3, &qword_1ECC7BFC8, &unk_1DC524050);
    OUTLINED_FUNCTION_3_5();
    sub_1DC2DAD1C(v72, v78);
LABEL_17:
    sub_1DC2AAF50(v64, &qword_1ECC7BFB8, &unk_1DC52A4C0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_2_7();
  v80 = v64 + v71;
  v81 = v99;
  sub_1DC2DB0A4(v80, v99);
  OUTLINED_FUNCTION_5_5();
  sub_1DC2DB304(v82, v83);
  v84 = sub_1DC5176CC();
  sub_1DC2DAD1C(v81, type metadata accessor for TurnSummary.ExecutionSource);
  sub_1DC2AAF50(v37, &qword_1ECC7BFC8, &unk_1DC524050);
  sub_1DC2AAF50(v3, &qword_1ECC7BFC8, &unk_1DC524050);
  sub_1DC2DAD1C(v72, type metadata accessor for TurnSummary.ExecutionSource);
  v85 = OUTLINED_FUNCTION_35_0();
  sub_1DC2AAF50(v85, v86, &unk_1DC524050);
  if ((v84 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v87 = *(v43 + 32);
  v88 = v100;
  sub_1DC2DB2AC();
  v89 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v89, v90, v101);
  if (v75)
  {
    OUTLINED_FUNCTION_0_3();
    sub_1DC2DAD1C(v55, v91);
    v50 = &unk_1ECC7D3A0;
    v51 = &unk_1DC522560;
    v52 = v88;
    goto LABEL_4;
  }

  v92 = OUTLINED_FUNCTION_48_3();
  v93(v92);
  v94 = sub_1DC5118CC();
  if ((v94 & 1) == 0)
  {
    sub_1DC5118DC();
  }

  v95 = OUTLINED_FUNCTION_57_1();
  v96(v95);
  OUTLINED_FUNCTION_0_3();
  sub_1DC2DAD1C(v55, v97);
LABEL_19:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2D8008()
{
  OUTLINED_FUNCTION_33();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v100 = v8;
  OUTLINED_FUNCTION_12();
  v99 = sub_1DC5167EC();
  v9 = OUTLINED_FUNCTION_0(v99);
  v97[2] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v97[1] = v14 - v13;
  v15 = OUTLINED_FUNCTION_12();
  v103 = type metadata accessor for TurnSummary.ExecutionSource(v15);
  v16 = OUTLINED_FUNCTION_35(v103);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v98 = v20 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v101);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_2(v24, v97[0]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v102 = v33;
  OUTLINED_FUNCTION_22();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v97 - v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_55_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_18();
  v43 = type metadata accessor for NLRouterTurnContext(v42);
  v44 = OUTLINED_FUNCTION_35(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  v47 = OUTLINED_FUNCTION_58_0();
  v48 = type metadata accessor for NLRouterServiceRequest(v47);
  OUTLINED_FUNCTION_51_2(v48);
  sub_1DC2DB2AC();
  v49 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_39(v49, v50, v43);
  if (!v74)
  {
    OUTLINED_FUNCTION_6_1();
    sub_1DC2DB0A4(v2, v0);
    OUTLINED_FUNCTION_69_1(*(v48 + 24));
    v56 = v0;
    if (!v55)
    {
      goto LABEL_18;
    }

    v57 = OUTLINED_FUNCTION_27_2(v54);
    sub_1DC2D8C78(v57, v1);
    v58 = type metadata accessor for TurnSummary(0);
    OUTLINED_FUNCTION_14_2(v1);
    if (v74)
    {
      sub_1DC2AAF50(v1, &qword_1ECC7BFC0, &unk_1DC522540);
      v59 = OUTLINED_FUNCTION_50_2();
      v65 = v103;
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v103);
      v64 = v104;
    }

    else
    {
      v62 = *(v58 + 28);
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_1_2();
      sub_1DC2DAD1C(v1, v63);
      v65 = v103;
      v64 = v104;
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v37, 1, 4, v66);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
    v70 = *(v101 + 48);
    OUTLINED_FUNCTION_79_1();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v64, 1, v65);
    v71 = v102;
    if (v74)
    {
      v72 = OUTLINED_FUNCTION_36();
      sub_1DC2AAF50(v72, v73, &unk_1DC524050);
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_39(v64 + v70, 1, v65);
      if (v74)
      {
        sub_1DC2AAF50(v64, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_21:
        v87 = *(v43 + 28);
        v88 = v100;
        sub_1DC2DB2AC();
        v89 = OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_39(v89, v90, v99);
        if (!v74)
        {
          v92 = OUTLINED_FUNCTION_48_3();
          v93(v92);
          sub_1DC5167BC();
          v94 = OUTLINED_FUNCTION_57_1();
          v95(v94);
          OUTLINED_FUNCTION_0_3();
          sub_1DC2DAD1C(v56, v96);
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_0_3();
        sub_1DC2DAD1C(v56, v91);
        v51 = &qword_1ECC7BFE0;
        v52 = &unk_1DC5253A0;
        v53 = v88;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v64 + v70, 1, v65);
      if (!v74)
      {
        OUTLINED_FUNCTION_2_7();
        v79 = v64 + v70;
        v80 = v98;
        sub_1DC2DB0A4(v79, v98);
        OUTLINED_FUNCTION_5_5();
        sub_1DC2DB304(v81, v82);
        v83 = sub_1DC5176CC();
        OUTLINED_FUNCTION_23_3();
        sub_1DC2DAD1C(v80, v84);
        sub_1DC2AAF50(v37, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC2AAF50(v3, &qword_1ECC7BFC8, &unk_1DC524050);
        v85 = OUTLINED_FUNCTION_32_1();
        sub_1DC2DAD1C(v85, v86);
        sub_1DC2AAF50(v64, &qword_1ECC7BFC8, &unk_1DC524050);
        if (v83)
        {
          goto LABEL_21;
        }

LABEL_18:
        OUTLINED_FUNCTION_0_3();
        sub_1DC2DAD1C(v56, v78);
        goto LABEL_19;
      }

      v75 = OUTLINED_FUNCTION_36();
      sub_1DC2AAF50(v75, v76, &unk_1DC524050);
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_3_5();
      sub_1DC2DAD1C(v71, v77);
    }

    sub_1DC2AAF50(v64, &qword_1ECC7BFB8, &unk_1DC52A4C0);
    goto LABEL_18;
  }

  v51 = &qword_1ECC7BFD0;
  v52 = &unk_1DC522550;
  v53 = v2;
LABEL_4:
  sub_1DC2AAF50(v53, v51, v52);
LABEL_19:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2D863C()
{
  OUTLINED_FUNCTION_33();
  v82 = sub_1DC5119DC();
  v4 = OUTLINED_FUNCTION_0(v82);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_40();
  v81 = type metadata accessor for TurnSummary.ExecutionSource(v9);
  v10 = OUTLINED_FUNCTION_35(v81);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v77 = v14 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v79);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v83 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40_4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v24 = OUTLINED_FUNCTION_10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v78 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  v85 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  v80 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_18();
  v37 = type metadata accessor for NLRouterTurnContext(v36);
  v38 = OUTLINED_FUNCTION_35(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v41 = OUTLINED_FUNCTION_54_0();
  v42 = type metadata accessor for NLRouterServiceRequest(v41);
  OUTLINED_FUNCTION_51_2(v42);
  sub_1DC2DB2AC();
  v43 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_39(v43, v44, v37);
  if (!v65)
  {
    OUTLINED_FUNCTION_6_1();
    sub_1DC2DB0A4(v3, v0);
    OUTLINED_FUNCTION_69_1(*(v42 + 24));
    if (!v46)
    {
      OUTLINED_FUNCTION_0_3();
      v50 = v0;
LABEL_19:
      sub_1DC2DAD1C(v50, v49);
      goto LABEL_20;
    }

    v76 = v0;
    v47 = OUTLINED_FUNCTION_27_2(v45);
    sub_1DC2D8C78(v47, v2);
    v48 = type metadata accessor for TurnSummary(0);
    OUTLINED_FUNCTION_14_2(v2);
    if (v65)
    {
      sub_1DC2AAF50(v2, &qword_1ECC7BFC0, &unk_1DC522540);
      v52 = v80;
      v56 = v81;
      __swift_storeEnumTagSinglePayload(v80, 1, 1, v81);
      v54 = v82;
      v55 = v83;
    }

    else
    {
      v51 = *(v48 + 28);
      v52 = v80;
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_1_2();
      sub_1DC2DAD1C(v2, v53);
      v54 = v82;
      v55 = v83;
      v56 = v81;
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v85, 1, 4, v57);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v56);
    v61 = *(v79 + 48);
    OUTLINED_FUNCTION_75();
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    v62 = OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_39(v62, v63, v56);
    if (v65)
    {
      sub_1DC2AAF50(v85, &qword_1ECC7BFC8, &unk_1DC524050);
      sub_1DC2AAF50(v52, &qword_1ECC7BFC8, &unk_1DC524050);
      OUTLINED_FUNCTION_39(v55 + v61, 1, v56);
      v64 = v76;
      if (v65)
      {
        sub_1DC2AAF50(v55, &qword_1ECC7BFC8, &unk_1DC524050);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v55 + v61, 1, v56);
      v64 = v76;
      if (!v65)
      {
        OUTLINED_FUNCTION_2_7();
        sub_1DC2DB0A4(v55 + v61, v77);
        OUTLINED_FUNCTION_5_5();
        sub_1DC2DB304(v67, v68);
        v84 = sub_1DC5176CC();
        sub_1DC2DAD1C(v77, type metadata accessor for TurnSummary.ExecutionSource);
        sub_1DC2AAF50(v85, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC2AAF50(v52, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC2DAD1C(v78, type metadata accessor for TurnSummary.ExecutionSource);
        sub_1DC2AAF50(v55, &qword_1ECC7BFC8, &unk_1DC524050);
        if (v84)
        {
LABEL_22:
          v69 = 0;
          v70 = *(v64 + 16);
          v71 = *(v70 + 16);
          while (v71 != v69)
          {
            if (v69 >= *(v70 + 16))
            {
              __break(1u);
              return;
            }

            v72 = *(v6 + 80);
            OUTLINED_FUNCTION_24();
            (*(v6 + 16))(v1, v70 + v73 + *(v6 + 72) * v69++, v54);
            v74 = sub_1DC51194C();
            (*(v6 + 8))(v1, v54);
            if (v74)
            {
              OUTLINED_FUNCTION_0_3();
              sub_1DC2DAD1C(v64, v75);
              goto LABEL_20;
            }
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_0_3();
        v50 = v64;
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_49_2(v85);
      OUTLINED_FUNCTION_49_2(v52);
      OUTLINED_FUNCTION_3_5();
      sub_1DC2DAD1C(v78, v66);
    }

    sub_1DC2AAF50(v55, &qword_1ECC7BFB8, &unk_1DC52A4C0);
    goto LABEL_18;
  }

  sub_1DC2AAF50(v3, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_20:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2D8C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TurnSummary(0);
    sub_1DC2DACB8(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for TurnSummary(0);
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_1DC2D8D58()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE8, &unk_1DC522570);
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v72 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_56_1();
  v81 = sub_1DC516BAC();
  v13 = OUTLINED_FUNCTION_0(v81);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v73 = sub_1DC516BCC();
  v18 = OUTLINED_FUNCTION_0(v73);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF0, &qword_1DC5293B0);
  OUTLINED_FUNCTION_10(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40_4();
  v27 = *(sub_1DC511FEC() + 16);

  if (!v27 || !*(v6 + *(type metadata accessor for NLRouterServiceRequest(0) + 36)))
  {
    goto LABEL_26;
  }

  sub_1DC516D4C();
  v28 = sub_1DC516DCC();
  OUTLINED_FUNCTION_39(v2, 1, v28);
  if (v29)
  {
    sub_1DC2AAF50(v2, &qword_1ECC7BFF0, &qword_1DC5293B0);
LABEL_26:
    OUTLINED_FUNCTION_34();
    return;
  }

  v80 = v15;
  v30 = sub_1DC516DBC();
  OUTLINED_FUNCTION_7_1(v28);
  (*(v31 + 8))(v2, v28);
  v32 = *(v30 + 16);
  if (v32)
  {
    v70[2] = v4;
    v70[3] = 0;
    v34 = *(v20 + 16);
    v33 = v20 + 16;
    v35 = *(v33 + 64);
    OUTLINED_FUNCTION_24();
    v70[1] = v30;
    v37 = v30 + v36;
    v78 = *(v33 + 56);
    v79 = v38;
    v77 = v80 + 8;
    v80 = v33;
    v39 = (v33 - 8);
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v73;
    v71 = v1;
    do
    {
      v79(v3, v37, v41);
      sub_1DC516BBC();
      sub_1DC516B9C();
      v42 = sub_1DC51715C();
      OUTLINED_FUNCTION_39(v1, 1, v42);
      if (v29)
      {
        sub_1DC2AAF50(v1, &qword_1ECC7BFE8, &unk_1DC522570);
        v43 = OUTLINED_FUNCTION_59();
        v44(v43, v81);
        (*v39)(v3, v41);
      }

      else
      {
        v76 = v40;
        sub_1DC2DB2AC();
        v45 = sub_1DC51714C();
        v74 = v46;
        v75 = v45;
        OUTLINED_FUNCTION_7_1(v42);
        (*(v47 + 8))(v72, v42);
        v48 = OUTLINED_FUNCTION_60();
        sub_1DC2AAF50(v48, v49, &unk_1DC522570);
        v50 = OUTLINED_FUNCTION_59();
        v51(v50, v81);
        (*v39)(v3, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = *(v40 + 2);
          v58 = OUTLINED_FUNCTION_13_0();
          v40 = sub_1DC2ACCD4(v58, v59, v60, v40);
        }

        v54 = *(v40 + 2);
        v53 = *(v40 + 3);
        v1 = v71;
        if (v54 >= v53 >> 1)
        {
          v61 = OUTLINED_FUNCTION_26(v53);
          v40 = sub_1DC2ACCD4(v61, v54 + 1, 1, v40);
        }

        *(v40 + 2) = v54 + 1;
        v55 = &v40[16 * v54];
        v56 = v74;
        *(v55 + 4) = v75;
        *(v55 + 5) = v56;
        v41 = v73;
      }

      v37 += v78;
      --v32;
    }

    while (v32);
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  v62 = sub_1DC511FEC();
  v63 = v62;
  v64 = (v62 + 40);
  v65 = -*(v62 + 16);
  v66 = -1;
  while (1)
  {
    if (v65 + v66 == -1)
    {

      goto LABEL_26;
    }

    if (++v66 >= *(v63 + 16))
    {
      break;
    }

    v67 = v64 + 2;
    v68 = *v64;
    v82[0] = *(v64 - 1);
    v82[1] = v68;
    MEMORY[0x1EEE9AC00](v62);
    v70[-2] = v82;

    v69 = sub_1DC2CF098(sub_1DC2CF174, &v70[-4], v40);

    v64 = v67;
    if (!v69)
    {

      goto LABEL_26;
    }
  }

  __break(1u);
}

BOOL sub_1DC2D92BC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_54_0();
  v7 = *(type metadata accessor for NLRouterServiceRequest(v6) + 20);
  sub_1DC2DB2AC();
  v8 = type metadata accessor for NLRouterTurnContext(0);
  v9 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v9, v10, v8);
  if (v11)
  {
    sub_1DC2AAF50(v0, &qword_1ECC7BFD0, &unk_1DC522550);
    return 0;
  }

  else
  {
    v12 = *(v0 + *(v8 + 36));

    OUTLINED_FUNCTION_0_3();
    v14 = sub_1DC2DAD1C(v0, v13);
    MEMORY[0x1EEE9AC00](v14);
    v17[2] = v1;
    v15 = sub_1DC2D650C(sub_1DC2DAF40, v17, v12);
  }

  return v15;
}

uint64_t sub_1DC2D940C()
{
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC51665C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  if (sub_1DC5117FC())
  {
    sub_1DC5117DC();
    v6 = sub_1DC51664C();
    v8 = v7;
    v9 = *(v3 + 8);
    v10 = OUTLINED_FUNCTION_60();
    v11(v10);
    if (v6 == sub_1DC511FBC() && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_35_0();
      v14 = sub_1DC51825C();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_1DC2D9538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v7[2] = MEMORY[0x1EEE9AC00](a1);
    v7[3] = v3;
    return sub_1DC2D64AC(sub_1DC2DAF70, v7, v4);
  }

  else
  {
    return 1;
  }
}

void sub_1DC2D95D0()
{
  OUTLINED_FUNCTION_33();
  v5 = v0;
  OUTLINED_FUNCTION_38_2();
  v6 = sub_1DC516C3C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v67 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v11 = sub_1DC516AFC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v17 = OUTLINED_FUNCTION_18();
  if (*(v0 + *(type metadata accessor for NLRouterServiceRequest(v17) + 36)))
  {
    v68 = sub_1DC516D8C();
    if (v68)
    {
      v66 = v14;
      if ((sub_1DC5120EC() & 1) == 0)
      {
        v27 = MEMORY[0x1E69E7CC0];
        goto LABEL_8;
      }

      v1 = v6;
      v18 = sub_1DC5120DC();
      v20 = v19;
      v21 = type metadata accessor for AppInFocusRetrievedContextMatcher();
      v22 = swift_allocObject();
      sub_1DC2D9BD4(v18, v20);
      v23 = sub_1DC2DAB60(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v25 = v23[2];
      v24 = v23[3];
      v26 = v23;
      v4 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        goto LABEL_35;
      }

      while (1)
      {
        v70 = v21;
        v71 = &off_1F57F5A90;
        v69[0] = v22;
        v26[2] = v4;
        v27 = v26;
        v28 = OUTLINED_FUNCTION_71();
        sub_1DC28F9B0(v28, v29);
        v6 = v1;
        v14 = v66;
LABEL_8:
        if (sub_1DC51211C())
        {
          v30 = sub_1DC5120FC();
          (*(v14 + 104))(v3, *MEMORY[0x1E69A9050], v11);
          v31 = v27;
          v4 = type metadata accessor for BoolRetrievedContextMatcher();
          v32 = *(v4 + 48);
          v33 = *(v4 + 52);
          v34 = swift_allocObject();
          sub_1DC2DA0E0(v30 & 1, v3);
          v1 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = v31[2];
            v55 = OUTLINED_FUNCTION_13_0();
            v1 = sub_1DC2DAB60(v55, v56, v57, v31);
          }

          v36 = v1[2];
          v35 = v1[3];
          if (v36 >= v35 >> 1)
          {
            v58 = OUTLINED_FUNCTION_26(v35);
            v1 = sub_1DC2DAB60(v58, v36 + 1, 1, v1);
          }

          v70 = v4;
          v71 = &off_1F57F5AA8;
          v69[0] = v34;
          v27 = v1;
          v1[2] = v36 + 1;
          v37 = OUTLINED_FUNCTION_71();
          sub_1DC28F9B0(v37, v38);
          v14 = v66;
        }

        v64 = v27;
        v22 = v5;
        if (sub_1DC51212C())
        {
          v4 = sub_1DC51210C();
          (*(v14 + 104))(v3, *MEMORY[0x1E69A9060], v11);
          v5 = type metadata accessor for BoolRetrievedContextMatcher();
          v39 = *(v5 + 48);
          v40 = *(v5 + 52);
          v22 = swift_allocObject();
          sub_1DC2DA0E0(v4 & 1, v3);
          v1 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = v27[2];
            v60 = OUTLINED_FUNCTION_13_0();
            v1 = sub_1DC2DAB60(v60, v61, v62, v27);
          }

          v42 = v1[2];
          v41 = v1[3];
          v3 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v63 = OUTLINED_FUNCTION_26(v41);
            v1 = sub_1DC2DAB60(v63, v42 + 1, 1, v1);
          }

          v70 = v5;
          v71 = &off_1F57F5AA8;
          v69[0] = v22;
          v1[2] = v3;
          v64 = v1;
          v43 = OUTLINED_FUNCTION_71();
          sub_1DC28F9B0(v43, v44);
        }

        v66 = *(v68 + 16);
        if (!v66)
        {
          break;
        }

        v21 = 0;
        v45 = *(v67 + 80);
        OUTLINED_FUNCTION_24();
        v1 = v64[2];
        v65 = v68 + v46;
        v4 = v47 + 8;
        while (1)
        {
          v24 = *(v68 + 16);
          if (v21 >= v24)
          {
            break;
          }

          v48 = v6;
          (*(v67 + 16))(v2, v65 + *(v67 + 72) * v21, v6);
          if (v1)
          {
            v5 = (v64 + 4);
            v49 = v1;
            do
            {
              sub_1DC28FB9C(v5, v69);
              v3 = v70;
              v11 = v71;
              v22 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
              (*(v11 + 16))(v2, v3, v11);
              __swift_destroy_boxed_opaque_existential_1Tm(v69);
              v5 += 40;
              v49 = (v49 - 1);
            }

            while (v49);
          }

          ++v21;
          v6 = v48;
          (*v4)(v2, v48);
          if (v21 == v66)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v52 = OUTLINED_FUNCTION_26(v24);
        v26 = sub_1DC2DAB60(v52, v4, 1, v53);
      }

LABEL_27:

      v3 = v64;
      v50 = (v64 + 4);
      v21 = -v64[2];
      v51 = -1;
      do
      {
        if (v21 + v51 == -1)
        {
          break;
        }

        v24 = v64[2];
        if (++v51 >= v24)
        {
          goto LABEL_34;
        }

        v5 = v50 + 40;
        sub_1DC28FB9C(v50, v69);
        v1 = v70;
        v2 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v22 = (v2[1])(v1, v2);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        v50 = v5;
      }

      while ((v22 & 1) != 0);
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2D9B34()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_36();
  sub_1DC2D9BD4(v1, v2);
  return v0;
}

uint64_t sub_1DC2D9B80(char a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1DC2DA0E0(a1, a2);
  return v7;
}

uint64_t sub_1DC2D9BD4(uint64_t a1, unint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  *(v2 + 16) = v3 == 0;
  return v2;
}

void sub_1DC2D9BFC()
{
  OUTLINED_FUNCTION_33();
  v63 = v0;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC51728C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v64 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30_1();
  v13 = sub_1DC51724C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v61 = v15;
  v62 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v18 = sub_1DC516AFC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  sub_1DC516C2C();
  v24 = *(v21 + 88);
  v25 = OUTLINED_FUNCTION_75();
  v27 = v26(v25);
  v28 = *MEMORY[0x1E69A9008];
  v29 = *(v21 + 8);
  v30 = OUTLINED_FUNCTION_75();
  v31(v30);
  if (v27 == v28)
  {
    sub_1DC516C1C();
    sub_1DC5172AC();
    OUTLINED_FUNCTION_14_2(v3);
    if (v50)
    {
      sub_1DC2AAF50(v3, &qword_1ECC7BFF8, &qword_1DC522580);
    }

    else
    {
      OUTLINED_FUNCTION_72_0();
      v33 = v32;
      v35 = *(v34 + 88);
      v36 = OUTLINED_FUNCTION_32_1();
      if (v37(v36) == *MEMORY[0x1E69DAE70])
      {
        v38 = *(v33 + 96);
        v39 = OUTLINED_FUNCTION_32_1();
        v40(v39);
        v41 = *v3;
        v42 = swift_projectBox();
        (*(v64 + 16))(v2, v42, v4);
        v43 = *(v64 + 88);
        v44 = OUTLINED_FUNCTION_35_0();
        if (v45(v44) == *MEMORY[0x1E69DADA8])
        {
          v46 = *(v64 + 96);
          v47 = OUTLINED_FUNCTION_35_0();
          v48(v47);
          (*(v61 + 32))(v1, v2, v62);

          v50 = sub_1DC51723C() == *(v63 + 24) && v49 == *(v63 + 32);
          if (v50)
          {
            v51 = 1;
          }

          else
          {
            v51 = sub_1DC51825C();
          }

          v58 = *(v61 + 8);
          v59 = OUTLINED_FUNCTION_60();
          v60(v59);
          OUTLINED_FUNCTION_80_0();
          *(v63 + 16) = v51 & 1;
        }

        else
        {
          v55 = *(v64 + 8);
          v56 = OUTLINED_FUNCTION_35_0();
          v57(v56);
        }
      }

      else
      {
        v52 = *(v33 + 8);
        v53 = OUTLINED_FUNCTION_32_1();
        v54(v53);
      }
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2D9FB8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DC2DA0A0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DC2DA0E0(char a1, uint64_t a2)
{
  *(v2 + 17) = a1;
  v5 = OBJC_IVAR____TtC13CDMFoundation27BoolRetrievedContextMatcher_targetType;
  v6 = sub_1DC516AFC();
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 32))(v2 + v5, a2);
  *(v2 + 16) = a1 ^ 1;
  return v2;
}

void sub_1DC2DA158()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC51728C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_58_0();
  v16 = sub_1DC516AFC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  sub_1DC516C2C();
  v22 = sub_1DC2DA444();
  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_41();
  v25(v24);
  if (v22)
  {
    sub_1DC516C1C();
    sub_1DC5172AC();
    OUTLINED_FUNCTION_14_2(v1);
    if (v26)
    {
      sub_1DC2AAF50(v1, &qword_1ECC7BFF8, &qword_1DC522580);
    }

    else
    {
      OUTLINED_FUNCTION_72_0();
      v28 = v27;
      v30 = *(v29 + 88);
      v31 = OUTLINED_FUNCTION_19_6();
      if (v32(v31) == *MEMORY[0x1E69DAE70])
      {
        v33 = *(v28 + 96);
        v34 = OUTLINED_FUNCTION_19_6();
        v35(v34);
        v36 = *v1;
        v37 = swift_projectBox();
        (*(v6 + 16))(v11, v37, v3);
        v38 = *(v6 + 88);
        v39 = OUTLINED_FUNCTION_73();
        if (v40(v39) == *MEMORY[0x1E69DADC0])
        {
          v41 = *(v6 + 96);
          v42 = OUTLINED_FUNCTION_73();
          v43(v42);
          v44 = *v11;

          v45 = v44 ^ *(v2 + 17);
          OUTLINED_FUNCTION_80_0();
          *(v2 + 16) = (v45 & 1) == 0;
        }

        else
        {
          v49 = *(v6 + 8);
          v50 = OUTLINED_FUNCTION_73();
          v51(v50);
        }
      }

      else
      {
        v46 = *(v28 + 8);
        v47 = OUTLINED_FUNCTION_19_6();
        v48(v47);
      }
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2DA444()
{
  sub_1DC516AFC();
  sub_1DC2DB304(&qword_1ECC7BAE0, MEMORY[0x1E69A9090]);
  sub_1DC5179EC();
  sub_1DC5179EC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1DC51825C();
  }

  return v1 & 1;
}

uint64_t sub_1DC2DA524()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation27BoolRetrievedContextMatcher_targetType;
  v2 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void sub_1DC2DA630()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C000, &qword_1DC522588);
  OUTLINED_FUNCTION_35(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_2(v10, v80);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C008, &qword_1DC522590);
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_56_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30_1();
  v20 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v21 = OUTLINED_FUNCTION_35(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = OUTLINED_FUNCTION_54_0();
  v29 = type metadata accessor for TurnSummary(v28);
  v30 = OUTLINED_FUNCTION_35(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v33 = *(v5 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
  if (*(v33 + 16))
  {
    v34 = OUTLINED_FUNCTION_27_2(v33);
    sub_1DC2D8C78(v34, v0);
    v35 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v35, v36, v29);
    if (v41)
    {
      v37 = &qword_1ECC7BFC0;
      v38 = &unk_1DC522540;
      v39 = v0;
    }

    else
    {
      sub_1DC2DB0A4(v0, v3);
      v40 = *(v29 + 28);
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v2, 1, v20);
      if (v41)
      {
        OUTLINED_FUNCTION_1_2();
        sub_1DC2DAD1C(v3, v42);
        v37 = &qword_1ECC7BFC8;
        v38 = &unk_1DC524050;
        v39 = v2;
      }

      else
      {
        OUTLINED_FUNCTION_2_7();
        v43 = OUTLINED_FUNCTION_41();
        sub_1DC2DB0A4(v43, v44);
        v45 = *(v3 + *(v29 + 32));
        if (v45 != 2 && (v45 & 1) != 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_1DC2DAD1C(v1, v46);
          OUTLINED_FUNCTION_1_2();
          sub_1DC2DAD1C(v3, v47);
          goto LABEL_15;
        }

        sub_1DC51218C();
        OUTLINED_FUNCTION_1_2();
        sub_1DC2DAD1C(v3, v48);
        v49 = *(v6 + 48);
        sub_1DC2DB254();
        OUTLINED_FUNCTION_2_7();
        sub_1DC2DB0A4(v1, v81 + v49);
        v50 = sub_1DC51217C();
        OUTLINED_FUNCTION_14_2(v81);
        if (!v41)
        {
          sub_1DC2DB2AC();
          v51 = *(v50 - 8);
          v52 = *(v51 + 88);
          v53 = OUTLINED_FUNCTION_19_6();
          v55 = v54(v53);
          if (v55 == *MEMORY[0x1E69D0CC8])
          {
            v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v57 = OUTLINED_FUNCTION_47_2(v56);
            v58 = *(v51 + 8);
            v59 = OUTLINED_FUNCTION_19_6();
            v60(v59);
            if (v57 == 1)
            {
              goto LABEL_29;
            }
          }

          else if (v55 == *MEMORY[0x1E69D0CD0])
          {
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v62 = OUTLINED_FUNCTION_47_2(v61);
            v63 = *(v51 + 8);
            v64 = OUTLINED_FUNCTION_19_6();
            v65(v64);
            if (v62 == 2)
            {
              goto LABEL_29;
            }
          }

          else if (v55 == *MEMORY[0x1E69D0CD8])
          {
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v67 = OUTLINED_FUNCTION_47_2(v66);
            v68 = *(v51 + 8);
            v69 = OUTLINED_FUNCTION_19_6();
            v70(v69);
            if (v67 == 3)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v55 == *MEMORY[0x1E69D0CC0])
            {
              v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
              if (!OUTLINED_FUNCTION_47_2(v71))
              {
                v75 = sub_1DC5161CC();
                OUTLINED_FUNCTION_0_2(v75);
                (*(v76 + 8))(v81 + v49);
                v77 = *(v51 + 8);
                v78 = OUTLINED_FUNCTION_19_6();
                v79(v78);
LABEL_29:
                sub_1DC2AAF50(v81, &qword_1ECC7C008, &qword_1DC522590);
                goto LABEL_15;
              }
            }

            v72 = *(v51 + 8);
            v73 = OUTLINED_FUNCTION_19_6();
            v74(v73);
          }
        }

        v37 = &qword_1ECC7C000;
        v38 = &qword_1DC522588;
        v39 = v81;
      }
    }

    sub_1DC2AAF50(v39, v37, v38);
  }

LABEL_15:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC2DAB60(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C010, &qword_1DC5227D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C018, &unk_1DC5227E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC2DAC98(char *a1, int64_t a2, char a3)
{
  result = sub_1DC2DAD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2DACB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2DAD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

char *sub_1DC2DAD70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C058, &qword_1DC522830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DC2DAE88(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DC2DAEF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

BOOL sub_1DC2DAF70(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 8);
  OUTLINED_FUNCTION_74_1();
  return (v6() & 1) == 0;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for BoolRetrievedContextMatcher()
{
  result = qword_1ECC85A00;
  if (!qword_1ECC85A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC2DB0A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DC2DB110(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC2DB150(uint64_t result, int a2, int a3)
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

uint64_t sub_1DC2DB1B8()
{
  result = sub_1DC516AFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DC2DB254()
{
  OUTLINED_FUNCTION_42_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1DC2DB2AC()
{
  OUTLINED_FUNCTION_42_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1DC2DB304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC2DB364(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = sub_1DC510A0C();
  v9 = v8;

  v5(v7, v9, a3);

  return sub_1DC2AD740(v7, v9);
}

size_t sub_1DC2DB3E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for NLRouterOverride(0);
  v7 = OUTLINED_FUNCTION_52(v6);
  v27 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v11 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v12 = sub_1DC5176FC();
  v13 = swift_allocObject();
  *(v13 + 16) = &v29;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DC2DC6D0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1DC2DC798;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DC2DB364;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [a3 lookupKey:v12 resultBlock:v15];

  _Block_release(v15);
  LODWORD(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v17 = v29;

  v18 = *(v17 + 16);
  if (v18)
  {
    aBlock[0] = v11;
    result = sub_1DC2DC134(0, v18, 0);
    v19 = aBlock[0];
    v26 = a4 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v20 = *(a4 + 16);
    v21 = 32;
    while (*(v17 + v21) < v20)
    {
      v22 = v17;
      v23 = *(v27 + 72);
      OUTLINED_FUNCTION_0_4();
      sub_1DC2AE0C8();
      aBlock[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1DC2DC134(v24 > 1, v25 + 1, 1);
        v19 = aBlock[0];
      }

      *(v19 + 16) = v25 + 1;
      OUTLINED_FUNCTION_0_4();
      result = sub_1DC2A9458();
      v21 += 8;
      --v18;
      v17 = v22;
      if (!v18)
      {

        return v19;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DC2DB6D0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C080, &qword_1DC522970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v29 - v8;
  v10 = type metadata accessor for OverrideMatch(0);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v31 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29[1] = v29 - v14;
  v15 = 0;
  v16 = *(a3 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v16 == v15)
    {
      return v32;
    }

    v17 = *(type metadata accessor for NLRouterOverride(0) - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1DC28EB30(v9, &qword_1ECC7C080, &qword_1DC522970);
      ++v15;
    }

    else
    {
      v29[0] = type metadata accessor for OverrideMatch;
      sub_1DC2A9458();
      sub_1DC2A9458();
      v18 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DC2A6974(0, *(v18 + 16) + 1, 1, v18, &qword_1ECC7C088, &qword_1DC522978, type metadata accessor for OverrideMatch, type metadata accessor for OverrideMatch);
      }

      v19 = v18;
      v20 = *(v18 + 16);
      v32 = v19;
      v21 = *(v19 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v29[0] = v20 + 1;
        v26 = sub_1DC2A6974(v21 > 1, v20 + 1, 1, v32, &qword_1ECC7C088, &qword_1DC522978, type metadata accessor for OverrideMatch, type metadata accessor for OverrideMatch);
        v22 = v29[0];
        v32 = v26;
      }

      ++v15;
      v23 = v32;
      *(v32 + 16) = v22;
      v24 = v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v25 = *(v30 + 72);
      sub_1DC2A9458();
    }
  }

  v27 = v32;

  return v27;
}

uint64_t sub_1DC2DBA3C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1DC51778C();
  v13 = sub_1DC2DB3E4(v11, v12, a4, a5);

  v17[5] = v13;

  sub_1DC2AD5B0(v14);
  v17[2] = a1;
  v17[3] = a2;
  v15 = sub_1DC2DB6D0(sub_1DC2DC550, v17, v13);

  return v15;
}

uint64_t sub_1DC2DBAFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = sub_1DC2DBA3C(a1, a2, a3, a4, a5);
  sub_1DC2DBB40(v7, a6);
}

uint64_t sub_1DC2DBB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverrideMatch(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    sub_1DC2AE0C8();
    for (i = 1; v12 != i; ++i)
    {
      v15 = *(v5 + 72);
      sub_1DC2AE0C8();
      if (sub_1DC2DED0C(&v11[*(v4 + 20)], &v9[*(v4 + 20)]))
      {
        sub_1DC2ACED4(v11, type metadata accessor for OverrideMatch);
        sub_1DC2A9458();
      }

      else
      {
        sub_1DC2ACED4(v9, type metadata accessor for OverrideMatch);
      }
    }

    sub_1DC2A9458();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1DC2DBD68()
{
  v0 = OUTLINED_FUNCTION_5_1();
  v1 = *(type metadata accessor for OverrideMatch(v0) + 20);
  type metadata accessor for NLRouterOverride(0);
  sub_1DC291740(&qword_1ECC7C070, type metadata accessor for NLRouterOverride);
  return sub_1DC5176BC() & 1;
}

uint64_t sub_1DC2DBDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_5_1();
  v6 = *(type metadata accessor for OverrideMatch(v5) + 20);

  return a3(v4 + v6, v3 + v6);
}

char *sub_1DC2DBF3C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1DC2DBFC8(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1DC2DBF88(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1DC2DBFC8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1DC2DBFC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C098, &qword_1DC522988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC2DC0C8(uint64_t a1)
{
  v2 = sub_1DC51074C();
  if (v2)
  {
    v3 = v2;
    result = sub_1DC51076C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1DC51075C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

size_t sub_1DC2DC134(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2DC154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC2DC154(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C090, &qword_1DC522980);
  v10 = *(type metadata accessor for NLRouterOverride(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NLRouterOverride(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2AB394(a4 + v16, v8, v13 + v16, type metadata accessor for NLRouterOverride);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DC2DC31C()
{
  v1 = v0;
  v2 = sub_1DC510B6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B8, &qword_1DC5229B8);
  v7 = *v0;
  v8 = sub_1DC517EEC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void sub_1DC2DC550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DC2DDDA4();
}

uint64_t sub_1DC2DC5CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1DC2DC60C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
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

      return OUTLINED_FUNCTION_11_3(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_11_3(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC2DC650(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1DC2DC690(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_11_3(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_11_3(result, a2);
    }
  }

  return result;
}

void sub_1DC2DC6D0(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        a1 = a1;
        goto LABEL_5;
      }

      __break(1u);

      __break(1u);
      return;
    case 2uLL:
      a1 = *(a1 + 16);
      v6 = *(v5 + 24);
LABEL_5:
      v5 = sub_1DC2DC0C8(a1);
      goto LABEL_7;
    case 3uLL:
      v5 = 0;
      goto LABEL_7;
    default:
LABEL_7:
      sub_1DC2DBF3C();
      v7 = *(*v4 + 16);
      sub_1DC2DBF88(v7);
      v8 = *v4;
      *(v8 + 16) = v7 + 1;
      *(v8 + 8 * v7 + 32) = v5;
      return;
  }
}

uint64_t sub_1DC2DC798()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DC2DC7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_1DC5157EC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = type metadata accessor for NLRouterOverrideRoute(0);
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D8, &qword_1DC522A30);
  OUTLINED_FUNCTION_10(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_14_0();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &a9 - v47;
  v49 = *(v46 + 56);
  sub_1DC2DFC9C(v25, &a9 - v47);
  sub_1DC2DFC9C(v23, &v48[v49]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
  OUTLINED_FUNCTION_5_3(v48);
  if (!v51)
  {
    OUTLINED_FUNCTION_5_6();
    sub_1DC2DFC9C(v48, v41);
    OUTLINED_FUNCTION_5_3(&v48[v49]);
    if (!v51)
    {
      (*(v29 + 32))(v34, &v48[v49], v26);
      sub_1DC5157DC();
      v52 = *(v29 + 8);
      v52(v34, v26);
      v52(v41, v26);
      OUTLINED_FUNCTION_2_8();
      sub_1DC2DFCF4(v48, v53);
      goto LABEL_10;
    }

    (*(v29 + 8))(v41, v26);
LABEL_9:
    sub_1DC2AAF50(v48, &qword_1ECC7C0D8, &qword_1DC522A30);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(&v48[v49]);
  if (!v51)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_8();
  sub_1DC2DFCF4(v48, v50);
LABEL_10:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2DCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_38_2();
  v24 = sub_1DC51670C();
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v140 = v29 - v28;
  OUTLINED_FUNCTION_12();
  v141 = sub_1DC51716C();
  v30 = OUTLINED_FUNCTION_0(v141);
  v135 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v138 = v34 - v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v139 = v37;
  OUTLINED_FUNCTION_12();
  v142 = sub_1DC51668C();
  v38 = OUTLINED_FUNCTION_0(v142);
  v144 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8();
  v143 = v42 - v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v134 - v45;
  v145 = sub_1DC51672C();
  v47 = OUTLINED_FUNCTION_0(v145);
  v137 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v149 = sub_1DC511F3C();
  v51 = OUTLINED_FUNCTION_0(v149);
  v146 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  v148 = v56 - v55;
  OUTLINED_FUNCTION_12();
  v150 = sub_1DC5172FC();
  v57 = OUTLINED_FUNCTION_0(v150);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_8();
  v64 = v62 - v63;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_62();
  v147 = v66;
  sub_1DC511FBC();
  v67 = *(sub_1DC5122DC() + 16);

  if (v67)
  {
    v68 = sub_1DC5122DC();
    if (*(v68 + 16))
    {
      OUTLINED_FUNCTION_29_1();
      v69 = OUTLINED_FUNCTION_36_2(MEMORY[0x1E69E7CC0]);
      v140 = v70;
      sub_1DC2DF5F8(v69, v70, 0);
      v71 = 0;
      OUTLINED_FUNCTION_22_0();
      v142 = v68 + v72;
      v141 = v73 + 16;
      v143 = v137 + 8;
      v144 = (v73 + 8);
      v139 = v59 + 32;
      while (v71 < *(v68 + 16))
      {
        (*(v146 + 2))(v148, v142 + *(v146 + 9) * v71, v149);
        sub_1DC51671C();
        sub_1DC2DF618(&qword_1ECC7C0E0, MEMORY[0x1E69D0C38]);
        sub_1DC51679C();
        if (v21)
        {
          OUTLINED_FUNCTION_66_2();

          v109 = sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2(v109);
          v111 = *(v110 + 8);
          v112 = OUTLINED_FUNCTION_27_3();
          v113(v112);
          v114 = OUTLINED_FUNCTION_43_3();
          v115(v114);
          (*v144)(v148, v149);
          goto LABEL_21;
        }

        v74 = OUTLINED_FUNCTION_43_3();
        v75(v74);
        OUTLINED_FUNCTION_17_1();
        sub_1DC2DF618(&qword_1ECC7C0E8, v76);
        OUTLINED_FUNCTION_16_1();
        sub_1DC2DF618(&qword_1ECC7C0F0, v77);
        sub_1DC5164BC();
        (*v144)(v148, v149);
        v79 = *(a10 + 16);
        v78 = *(a10 + 24);
        if (v79 >= v78 >> 1)
        {
          v80 = OUTLINED_FUNCTION_26(v78);
          sub_1DC2DF5F8(v80, v79 + 1, 1);
        }

        ++v71;
        *(a10 + 16) = v79 + 1;
        (*(v59 + 32))(a10 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v79, v147, v150);
        if (v140 == v71)
        {
          v116 = sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2(v116);
          v118 = *(v117 + 8);
          v119 = OUTLINED_FUNCTION_27_3();
          v120(v119);

          OUTLINED_FUNCTION_47_3();
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

  else
  {
    v146 = v46;
    v147 = v59;
    v81 = sub_1DC511F5C();
    v82 = *(v81 + 16);
    if (v82)
    {
      v148 = v64;
      OUTLINED_FUNCTION_29_1();
      v83 = OUTLINED_FUNCTION_36_2(MEMORY[0x1E69E7CC0]);
      sub_1DC2DF5F8(v83, v82, 0);
      v84 = 0;
      OUTLINED_FUNCTION_22_0();
      v149 = a10;
      v137 = v81 + v86;
      v136 = v85 + 2;
      v134[5] = v135 + 16;
      v135 += 8;
      v145 = (v85 + 1);
      v134[4] = v147 + 32;
      v87 = v143;
      while (v84 < *(v81 + 16))
      {
        v88 = v85[2];
        v89 = v146;
        v90 = v142;
        (v88)(v146, v137 + v85[9] * v84, v142);
        (v88)(v87, v89, v90);
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        sub_1DC5166FC();
        OUTLINED_FUNCTION_16_1();
        sub_1DC2DF618(&qword_1ECC7C0F0, v91);
        v92 = v139;
        v93 = v141;
        sub_1DC51676C();
        if (v21)
        {

          OUTLINED_FUNCTION_66_2();
          v121 = sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2(v121);
          v123 = *(v122 + 8);
          v124 = OUTLINED_FUNCTION_27_3();
          v125(v124);
          v126 = *v145;
          v127 = OUTLINED_FUNCTION_56();
          v128(v127);
LABEL_21:

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_37(&a18);
        v94(v138, v92, v93);
        sub_1DC5172EC();
        v95 = OUTLINED_FUNCTION_49_3();
        v96(v95);
        v97 = *v145;
        v98 = OUTLINED_FUNCTION_56();
        v99(v98);
        v100 = v149;
        v154 = v149;
        v102 = *(v149 + 16);
        v101 = *(v149 + 24);
        if (v102 >= v101 >> 1)
        {
          v106 = OUTLINED_FUNCTION_26(v101);
          sub_1DC2DF5F8(v106, v102 + 1, 1);
          v100 = v154;
        }

        ++v84;
        *(v100 + 16) = v102 + 1;
        OUTLINED_FUNCTION_22_0();
        v149 = v103;
        (*(v105 + 32))(v103 + v104 + *(v105 + 72) * v102);
        v87 = v143;
        v85 = v144;
        if (v82 == v84)
        {
          v129 = sub_1DC5122FC();
          OUTLINED_FUNCTION_0_2(v129);
          v131 = *(v130 + 8);
          v132 = OUTLINED_FUNCTION_27_3();
          v133(v132);

          OUTLINED_FUNCTION_47_3();
          goto LABEL_22;
        }
      }

      goto LABEL_24;
    }
  }

  v107 = sub_1DC5122FC();
  OUTLINED_FUNCTION_0_2(v107);
  (*(v108 + 8))(v20);
LABEL_22:
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC2DD388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1DC51825C() & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_31_0();

  return sub_1DC2DD3F0(v6, v7);
}

uint64_t sub_1DC2DD3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC5172FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1DC2DF618(&qword_1ECC7C040, MEMORY[0x1E69DB0B8]);
    v22 = sub_1DC5176CC();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2DD604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DC53D3A0 == a2;
  if (v3 || (OUTLINED_FUNCTION_57_2(), (sub_1DC51825C() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_57_2();
    v7 = sub_1DC51825C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DC2DD6F0(char a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a1 & 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC2DD738(char a1)
{
  if (a1)
  {
    return 0x736C6562616CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DC2DD794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC2DD604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC2DD7C8(uint64_t a1)
{
  v2 = sub_1DC2DF660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DC2DD804(uint64_t a1)
{
  v2 = sub_1DC2DF660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DC2DD840()
{
  OUTLINED_FUNCTION_28_1();
  v13[0] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0F8, &qword_1DC522A38);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DC2DF660();
  sub_1DC51835C();
  sub_1DC5181BC();
  if (!v0)
  {
    v13[1] = v13[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C100, &qword_1DC522A40);
    sub_1DC2DFAE8(&qword_1ECC7C108, &qword_1ECC7C110);
    sub_1DC51820C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC2DD9FC()
{
  sub_1DC51769C();
  v0 = OUTLINED_FUNCTION_31_0();

  return sub_1DC2DF9EC(v0, v1);
}

uint64_t sub_1DC2DDA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC5182FC();
  sub_1DC51769C();
  sub_1DC2DF9EC(v5, a3);
  return sub_1DC51833C();
}

uint64_t sub_1DC2DDAA0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C118, &qword_1DC522A48);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC2DF660();
  sub_1DC51834C();
  if (!v1)
  {
    v9 = sub_1DC5180FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C100, &qword_1DC522A40);
    sub_1DC2DFAE8(&qword_1ECC7C120, &qword_1ECC7C128);
    sub_1DC51814C();
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_16();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1DC2DDCC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC2DDAA0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1DC2DDCF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DC2DD840();
}

uint64_t sub_1DC2DDD38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1DC2DD9FC();
}

uint64_t sub_1DC2DDD44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DC5182FC();
  sub_1DC51769C();
  sub_1DC2DF9EC(v5, v3);
  return sub_1DC51833C();
}

void sub_1DC2DDDA4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for NLRouterOverride(0);
  v9 = OUTLINED_FUNCTION_35(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_1DC28FB9C(v3, v53);
  sub_1DC51764C();
  OUTLINED_FUNCTION_53_2();
  v54 = v15;
  v55 = v16;
  OUTLINED_FUNCTION_52_3();
  v56 = v17;
  v18 = sub_1DC2DE1F4();
  if ((v18 & 1) != 0 && (v19 = *(v0 + *(v8 + 36)), MEMORY[0x1EEE9AC00](v18), *(&v47 - 2) = v5, *(&v47 - 1) = v53, sub_1DC2D64AC(sub_1DC2DFBC4, (&v47 - 4), v19)))
  {
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v49 = v0;
    if (v20)
    {
      v47 = v14;
      v48 = v7;
      v52 = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v20, 0);
      v21 = v52;
      v22 = v19 + 32;
      do
      {
        sub_1DC28FB9C(v22, v51);
        sub_1DC28FB9C(v51, &v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C050, qword_1DC522870);
        v23 = sub_1DC51777C();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        v52 = v21;
        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        if (v27 >= v26 >> 1)
        {
          v29 = OUTLINED_FUNCTION_26(v26);
          sub_1DC2DF6FC(v29, v27 + 1, 1);
          v21 = v52;
        }

        *(v21 + 16) = v27 + 1;
        v28 = v21 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v22 += 40;
        --v20;
      }

      while (v20);
      v7 = v48;
      v1 = v49;
      v14 = v47;
    }

    v51[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2DFC38();
    sub_1DC5176AC();

    v31 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v32 = sub_1DC2A5914();
    OUTLINED_FUNCTION_6_3();
    sub_1DC2DFC9C(v1, v14);
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v33 = 136315394;
      sub_1DC510B6C();
      sub_1DC2DF618(&qword_1ECC7BE90, MEMORY[0x1E69695A8]);
      sub_1DC51823C();
      OUTLINED_FUNCTION_20_6();
      v34 = OUTLINED_FUNCTION_43();
      v37 = sub_1DC291244(v34, v35, v36);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = OUTLINED_FUNCTION_56();
      v41 = sub_1DC291244(v38, v39, v40);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1DC287000, v32, v31, "Overrides matched id %s by [%s]", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_40_0();
      v42 = v33;
      v1 = v49;
      MEMORY[0x1E1298840](v42, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_20_6();
    }

    v43 = v54;
    v44 = type metadata accessor for OverrideMatch(0);
    v45 = *(v44 + 20);
    OUTLINED_FUNCTION_6_3();
    sub_1DC2DFC9C(v1, v7 + v46);
    *v7 = v43;
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v44);
  }

  else
  {
    v30 = type metadata accessor for OverrideMatch(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v30);
  }

  sub_1DC2DFB94(v53);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2DE1F4()
{
  v1 = OUTLINED_FUNCTION_38_2();
  v2 = type metadata accessor for NLRouterOverride(v1);
  v3 = *(v0 + v2[5]);
  sub_1DC2D73A4();
  if (v3 == (v4 & 1) && (v5 = *(v0 + v2[6]), sub_1DC2D7974(), v5 == (v6 & 1)) && (v7 = *(v0 + v2[7]), sub_1DC2D8008(), v7 == (v8 & 1)))
  {
    v11 = *(v0 + v2[8]);
    sub_1DC2D863C();
    v9 = v11 ^ v12 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1DC2DE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v192 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v183 = v173 - v30;
  OUTLINED_FUNCTION_12();
  v191 = sub_1DC51591C();
  v31 = OUTLINED_FUNCTION_0(v191);
  v195 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v189 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v188 = v173 - v41;
  OUTLINED_FUNCTION_12();
  v194 = sub_1DC51587C();
  v42 = OUTLINED_FUNCTION_0(v194);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v202 = v48 - v47;
  OUTLINED_FUNCTION_12();
  v49 = sub_1DC51588C();
  v50 = OUTLINED_FUNCTION_0(v49);
  v205 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  v187 = v54 - v55;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v56);
  v186 = v173 - v57;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v58);
  v201 = v173 - v59;
  OUTLINED_FUNCTION_22();
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = v173 - v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_62();
  v206 = v64;
  v65 = OUTLINED_FUNCTION_12();
  v66 = type metadata accessor for NLRouterOverrideRoute(v65);
  v67 = OUTLINED_FUNCTION_10(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_1();
  v72 = v71 - v70;
  v73 = sub_1DC5157EC();
  v74 = OUTLINED_FUNCTION_0(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_8();
  v81 = (v79 - v80);
  MEMORY[0x1EEE9AC00](v82);
  v84 = v173 - v83;
  v85 = *(type metadata accessor for NLRouterOverride(0) + 40);
  OUTLINED_FUNCTION_5_6();
  v193 = v20;
  sub_1DC2DFC9C(v20 + v86, v72);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
  if (__swift_getEnumTagSinglePayload(v72, 1, v87) == 1)
  {
    OUTLINED_FUNCTION_2_8();
    sub_1DC2DFCF4(v72, v88);
    OUTLINED_FUNCTION_18_3();
LABEL_35:
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    goto LABEL_36;
  }

  v185 = v44;
  v93 = *(v76 + 32);
  v93(v84, v72, v73);
  (*(v76 + 16))(v81, v84, v73);
  v94 = (*(v76 + 88))(v81, v73);
  if (v94 == *MEMORY[0x1E69D02C8])
  {
    v177 = v94;
    v95 = *(v76 + 96);
    v178 = v73;
    v95(v81, v73);
    v96 = *v81;
    v97 = *(*v81 + 16);
    if (!v97)
    {

      v102 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v172 = v178;
      (*(v76 + 8))(v84, v178);
      *v25 = v102;
      (*(v76 + 104))(v25, v177, v172);
      v89 = v25;
      v90 = 0;
      v91 = 1;
      v92 = v172;
      goto LABEL_35;
    }

    v174 = v84;
    v175 = v76;
    v176 = v25;
    v204 = *(v205 + 16);
    v98 = (*(v205 + 80) + 32) & ~*(v205 + 80);
    v173[1] = v96;
    v200 = v98;
    v99 = v96 + v98;
    v100 = *(v205 + 72);
    v198 = v205 + 88;
    v203 = *MEMORY[0x1E69D0330];
    v196 = v205 + 32;
    v197 = (v205 + 8);
    v190 = v205 + 96;
    v180 = v195 + 4;
    v205 += 16;
    v182 = v205 + 88;
    v179 = (v195 + 1);
    v101 = (v185 + 32);
    v184 = v185 + 8;
    v102 = MEMORY[0x1E69E7CC0];
    LODWORD(v185) = *MEMORY[0x1E69D0340];
    v103 = v194;
    v181 = v63;
    v195 = v101;
    v199 = v100;
    while (1)
    {
      v104 = v205;
      v105 = v206;
      v106 = v204;
      v204(v206, v99, v49);
      v106(v63, v105, v49);
      v107 = OUTLINED_FUNCTION_34_2();
      v109 = v108(v107);
      if (v109 == v203)
      {
        v110 = OUTLINED_FUNCTION_34_2();
        v111(v110);
        v112 = *v101;
        (*v101)(v202, v63, v103);
        sub_1DC51582C();
        OUTLINED_FUNCTION_46_2();
        MEMORY[0x1EEE9AC00](v113);
        OUTLINED_FUNCTION_30_2();
        v104 = v188;
        sub_1DC51583C();
        v103 = v194;

        if (__swift_getEnumTagSinglePayload(v104, 1, v103) == 1)
        {
          sub_1DC2AAF50(v104, &qword_1ECC7BF00, &unk_1DC529C30);
          OUTLINED_FUNCTION_32_2();
          v114();
        }

        else
        {
          v121 = v201;
          v112(v201, v104, v103);
          OUTLINED_FUNCTION_37(&a15);
          v122(v121, v203, v49);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = *(v102 + 16);
          OUTLINED_FUNCTION_18_3();
          v102 = sub_1DC2DF4D4(v142, v143, v144, v145);
        }

        v101 = v195;
        OUTLINED_FUNCTION_35_3();
        if (v124)
        {
          OUTLINED_FUNCTION_26(v123);
          OUTLINED_FUNCTION_18_3();
          v102 = sub_1DC2DF4D4(v146, v147, v148, v149);
        }

        OUTLINED_FUNCTION_37(&a17);
        v125(v202, v103);
        OUTLINED_FUNCTION_55_3();
        v126(v206, v49);
        v127 = OUTLINED_FUNCTION_12_4();
        v129 = v201;
      }

      else
      {
        if (v109 != v185)
        {
          OUTLINED_FUNCTION_32_2();
          v130();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = *(v102 + 16);
            OUTLINED_FUNCTION_18_3();
            v102 = sub_1DC2DF4D4(v151, v152, v153, v154);
          }

          OUTLINED_FUNCTION_35_3();
          if (v124)
          {
            OUTLINED_FUNCTION_26(v131);
            OUTLINED_FUNCTION_18_3();
            v102 = sub_1DC2DF4D4(v155, v156, v157, v158);
          }

          v132 = *v197;
          (*v197)(v206, v49);
          v133 = OUTLINED_FUNCTION_12_4();
          v134(v133, v187, v49);
          v63 = v181;
          v132(v181, v49);
          v101 = v195;
          goto LABEL_30;
        }

        v115 = OUTLINED_FUNCTION_34_2();
        v116(v115);
        v117 = *v180;
        (*v180)(v189, v63, v191);
        sub_1DC5158EC();
        OUTLINED_FUNCTION_46_2();
        MEMORY[0x1EEE9AC00](v118);
        OUTLINED_FUNCTION_30_2();
        v104 = v183;
        sub_1DC5158FC();
        v119 = v191;

        if (__swift_getEnumTagSinglePayload(v104, 1, v119) == 1)
        {
          sub_1DC2AAF50(v104, &qword_1ECC7BF10, &unk_1DC522A50);
          OUTLINED_FUNCTION_32_2();
          v120();
        }

        else
        {
          v135 = v186;
          v117(v186, v104, v119);
          OUTLINED_FUNCTION_37(&a15);
          v136(v135, v185, v49);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v194;
        v101 = v195;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v159 = *(v102 + 16);
          OUTLINED_FUNCTION_18_3();
          v102 = sub_1DC2DF4D4(v160, v161, v162, v163);
        }

        OUTLINED_FUNCTION_35_3();
        if (v124)
        {
          OUTLINED_FUNCTION_26(v138);
          OUTLINED_FUNCTION_18_3();
          v102 = sub_1DC2DF4D4(v164, v165, v166, v167);
        }

        OUTLINED_FUNCTION_37(&a12);
        v139(v189, v191);
        OUTLINED_FUNCTION_55_3();
        v140(v206, v49);
        v127 = OUTLINED_FUNCTION_12_4();
        v129 = v186;
      }

      v128(v127, v129, v49);
LABEL_30:
      v99 += v104;
      if (!--v97)
      {

        v25 = v176;
        v76 = v175;
        v84 = v174;
        goto LABEL_34;
      }
    }
  }

  v93(v25, v84, v73);
  OUTLINED_FUNCTION_18_3();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
  (*(v76 + 8))(v81, v73);
LABEL_36:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2DED0C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_38_2();
  v5 = type metadata accessor for NLRouterOverride(v4);
  v6 = *(v5 + 44);
  if (sub_1DC510ABC())
  {
    return *(a2 + *(v5 + 48)) < *(v2 + *(v5 + 48));
  }

  return sub_1DC510A9C();
}

BOOL sub_1DC2DED90(uint64_t a1, uint64_t a2)
{
  if ((sub_1DC510B3C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_68();
  return *(a1 + v4) == *(a2 + v4);
}

BOOL sub_1DC2DEDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterOverride(0);
  v5 = *(v4 + 44);
  if (sub_1DC510ABC())
  {
    v6 = *(a1 + *(v4 + 48)) < *(a2 + *(v4 + 48));
  }

  else
  {
    v6 = sub_1DC510A9C();
  }

  return (v6 & 1) == 0;
}

BOOL sub_1DC2DEE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterOverride(0);
  v5 = *(v4 + 44);
  if (sub_1DC510ABC())
  {
    v6 = *(a2 + *(v4 + 48)) < *(a1 + *(v4 + 48));
  }

  else
  {
    v6 = sub_1DC510A9C();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1DC2DEED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterOverride(0);
  v5 = *(v4 + 44);
  if (sub_1DC510ABC())
  {
    return *(a1 + *(v4 + 48)) < *(a2 + *(v4 + 48));
  }

  return sub_1DC510A9C();
}

uint64_t sub_1DC2DEFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[3];
  v7 = v5[4];
  v8 = OUTLINED_FUNCTION_31_0();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v49 = v5;
  result = (*(v7 + 8))(v49[6], v49[7], v6, v7);
  if (result)
  {
    v11 = result;
    v12 = sub_1DC5176FC();
    v48 = v11;
    v13 = [v11 matchesInString:v12 options:0 range:{0, sub_1DC51783C()}];

    sub_1DC298C74(0, &unk_1ECC7B958, 0x1E696AEF8);
    v14 = sub_1DC517A1C();

    v15 = sub_1DC2DB350(v14);
    if (v15)
    {
      v16 = v15;
      if (v15 >= 1)
      {
        v17 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1E1296800](v17, v14);
          }

          else
          {
            v18 = *(v14 + 8 * v17 + 32);
          }

          v19 = v18;
          if ([v18 numberOfRanges] <= 1 || (v20 = objc_msgSend(v19, sel_rangeAtIndex_, 1), v20 == sub_1DC51068C()) || (OUTLINED_FUNCTION_31_0(), sub_1DC517B5C(), (v21 & 1) != 0))
          {
          }

          else
          {
            v22 = sub_1DC5179AC();
            v23 = MEMORY[0x1E1296060](v22);
            v25 = v24;

            v50 = v23;
            v26 = sub_1DC5176FC();
            v27 = [a5 rangeWithName_];

            if (v27 == sub_1DC51068C() || (OUTLINED_FUNCTION_31_0(), OUTLINED_FUNCTION_57_2(), sub_1DC517B5C(), (v28 & 1) != 0))
            {
            }

            else
            {
              OUTLINED_FUNCTION_57_2();
              v29 = sub_1DC5179AC();
              v46 = MEMORY[0x1E1296060](v29);
              v47 = v30;

              v31 = v49[5];
              swift_isUniquelyReferenced_nonNull_native();
              v52 = v49[5];
              v32 = sub_1DC2AEB04(v50, v25);
              if (__OFADD__(v52[2], (v33 & 1) == 0))
              {
                goto LABEL_32;
              }

              v34 = v32;
              v45 = v33;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
              if (sub_1DC517FFC())
              {
                v35 = sub_1DC2AEB04(v50, v25);
                v37 = v45;
                if ((v45 & 1) != (v36 & 1))
                {
                  goto LABEL_34;
                }

                v34 = v35;
              }

              else
              {
                v37 = v45;
              }

              if (v37)
              {
                v38 = (v52[7] + 16 * v34);
                v39 = v38[1];
                *v38 = v46;
                v38[1] = v47;
              }

              else
              {
                v52[(v34 >> 6) + 8] |= 1 << v34;
                v40 = (v52[6] + 16 * v34);
                *v40 = v50;
                v40[1] = v25;
                v41 = (v52[7] + 16 * v34);
                *v41 = v46;
                v41[1] = v47;
                v42 = v52[2];
                v43 = __OFADD__(v42, 1);
                v44 = v42 + 1;
                if (v43)
                {
                  goto LABEL_33;
                }

                v52[2] = v44;
              }

              v49[5] = v52;
            }
          }

          if (v16 == ++v17)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_1DC51829C();
      __break(1u);
    }

    else
    {
LABEL_27:
    }
  }

  return result;
}

size_t sub_1DC2DF3B0(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC2AC4FC(v9, a2, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride);
  v11 = *(type metadata accessor for NLRouterOverride(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC2AB454(a4 + v12, v9, v10 + v12, type metadata accessor for NLRouterOverride);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC2DF4D4(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC2AC4FC(v9, a2, &qword_1ECC7BFA8, &unk_1DC5224D0, MEMORY[0x1E69D0348]);
  v11 = *(sub_1DC51588C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC2AB454(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0348]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC2DF5F8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2DF71C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2DF618(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DC2DF660()
{
  result = qword_1ECC85B10[0];
  if (!qword_1ECC85B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC85B10);
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

char *sub_1DC2DF6FC(char *a1, int64_t a2, char a3)
{
  result = sub_1DC2DF8E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC2DF71C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C150, &qword_1DC522EF8);
  v10 = *(sub_1DC5172FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC5172FC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2AB454(a4 + v16, v8, v13 + v16, MEMORY[0x1E69DB0B8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DC2DF8E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC2DF9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1296BB0](v3);
  if (v3)
  {
    v5 = *(sub_1DC5172FC() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1DC2DF618(&qword_1ECC7C148, MEMORY[0x1E69DB0B8]);
    do
    {
      result = sub_1DC51768C();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DC2DFAE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C100, &qword_1DC522A40);
    OUTLINED_FUNCTION_17_1();
    sub_1DC2DF618(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DC2DFBC4(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(v5 + 8))(v3, v2, v4, v5) & 1;
}

unint64_t sub_1DC2DFC38()
{
  result = qword_1ECC7B9F0;
  if (!qword_1ECC7B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B9F0);
  }

  return result;
}

uint64_t sub_1DC2DFC9C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC2DFCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DC2DFFE4()
{
  result = qword_1ECC7C138;
  if (!qword_1ECC7C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C138);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DC2E00A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_41_0(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_41_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }
}

uint64_t sub_1DC2E00DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DC2E0170()
{
  sub_1DC2E01C8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1DC2E01C8()
{
  if (!qword_1ECC7BB78)
  {
    v0 = sub_1DC5157EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BB78);
    }
  }
}

void sub_1DC2E0220()
{
  sub_1DC510B6C();
  if (v0 <= 0x3F)
  {
    sub_1DC2E02F0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NLRouterOverrideRoute(319);
      if (v2 <= 0x3F)
      {
        sub_1DC510AFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DC2E02F0()
{
  if (!qword_1ECC7BA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C050, qword_1DC522870);
    v0 = sub_1DC517A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BA28);
    }
  }
}

uint64_t sub_1DC2E0354(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_41_0(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_41_0(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v4);
}

uint64_t sub_1DC2E03A4(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1DC2E042C()
{
  sub_1DC2E04B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NLRouterOverride(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DC2E04B0()
{
  if (!qword_1ECC7BA88)
  {
    v0 = sub_1DC51766C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BA88);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DC2E0520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC2E0560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpansForNamedCaptureGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for SpansForNamedCaptureGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DC2E0730()
{
  result = qword_1ECC86020[0];
  if (!qword_1ECC86020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC86020);
  }

  return result;
}

unint64_t sub_1DC2E0788()
{
  result = qword_1ECC86130;
  if (!qword_1ECC86130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC86130);
  }

  return result;
}

unint64_t sub_1DC2E07E0()
{
  result = qword_1ECC86138[0];
  if (!qword_1ECC86138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC86138);
  }

  return result;
}

uint64_t sub_1DC2E0834()
{
  v0 = sub_1DC2E54B8();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC522F00;
  *(v3 + 32) = sub_1DC51486C();
  *(v3 + 40) = sub_1DC514C2C();
  result = sub_1DC5148AC();
  *(v3 + 48) = result;
  qword_1ECC8F288 = v3;
  return result;
}

uint64_t *sub_1DC2E08AC()
{
  if (qword_1ECC7EAC0 != -1)
  {
    OUTLINED_FUNCTION_18_4();
    swift_once();
  }

  return &qword_1ECC8F288;
}

uint64_t sub_1DC2E08F0()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C150, &qword_1DC522EF8);
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F10;
  v7 = (v6 + v5);
  v8 = swift_allocObject();
  v9 = sub_1DC3EAB00();
  v10 = v9[1];
  v8[2] = *v9;
  v8[3] = v10;
  OUTLINED_FUNCTION_48_4();
  v8[4] = v11;
  v8[5] = 0xEA00000000007974;
  *v7 = v8;
  v12 = *MEMORY[0x1E69DB098];
  v13 = *(v2 + 104);
  v13(v7, v12, v0);
  v14 = swift_allocObject();

  v15 = sub_1DC3EAAF4();
  v16 = v15[1];
  v14[2] = *v15;
  v14[3] = v16;
  OUTLINED_FUNCTION_48_4();
  v14[4] = v17;
  v14[5] = 0xEA00000000007974;
  *(v7 + v4) = v14;
  v13((v7 + v4), v12, v0);
  qword_1ECC8F708 = v6;
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E0A70()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B0, &qword_1DC522F88);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DC522F20;
  sub_1DC51641C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DC2E5748(0, 1, 0);
  v12 = v16;
  (*(v1 + 16))(v5, v11 + v10, v0);

  sub_1DC51643C();
  (*(v1 + 8))(v5, v0);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1DC2E5748(v13 > 1, v14 + 1, 1);
    v12 = v16;
  }

  *(v12 + 16) = v14 + 1;
  (*(v1 + 32))(v12 + v10 + v14 * v9, v8, v0);
  qword_1ECC8F710 = v12;
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E0C94()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v210 = v3;
  v204 = sub_1DC51122C();
  v4 = OUTLINED_FUNCTION_0(v204);
  v205 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v186 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v200 = v19;
  OUTLINED_FUNCTION_12();
  v212 = sub_1DC5157EC();
  v20 = OUTLINED_FUNCTION_0(v212);
  v202 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  v203 = v31;
  v32 = &unk_1DC5234A0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v186 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_40_3();
  v43 = type metadata accessor for NLRouterNLParseResponse(0);
  v44 = OUTLINED_FUNCTION_35(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  v206 = v48 - v47;
  OUTLINED_FUNCTION_12();
  v209 = sub_1DC516F5C();
  v49 = OUTLINED_FUNCTION_0(v209);
  v208 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  v56 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v57 = sub_1DC2BE518();
  v58 = OUTLINED_FUNCTION_130();
  v207 = v55;
  v211 = v56;
  sub_1DC2A2ED0("HeuristicRules.NoteRule", 23, 2, v57, v58 & 1, v55);

  v59 = v2;
  v60 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F308(v2 + *(v60 + 32), v38, &qword_1ECC7C158, &unk_1DC5234A0);
  v61 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v38, 1, v61);
  if (v65)
  {
    sub_1DC28EB30(v38, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v43);
LABEL_6:
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v212);
    OUTLINED_FUNCTION_35_4();
    goto LABEL_98;
  }

  sub_1DC28F308(v38, v0, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v38, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v0, 1, v43);
  if (v65)
  {
    goto LABEL_6;
  }

  sub_1DC2E53A4(v0, v206);
  v188 = type metadata accessor for HeuristicRoutingRequest(0);
  v69 = v202;
  v70 = *(v202 + 16);
  v191 = *(v188 + 20);
  v71 = v2 + v191;
  v72 = v203;
  v73 = v212;
  v190 = v70;
  v189 = v202 + 16;
  v70(v203, v71, v212);
  v192 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v74 = sub_1DC344BC0();
  v76 = v75;
  v77 = sub_1DC312FB4(0);
  v43 = v78;
  if (v74 == v77 && v76 == v78)
  {
  }

  else
  {
    v80 = sub_1DC51825C();

    if ((v80 & 1) == 0)
    {
      sub_1DC344BC0();
      sub_1DC312F68();
      OUTLINED_FUNCTION_43_0();
      if (v65)
      {
        OUTLINED_FUNCTION_7_4(v220);
      }

      else
      {
        OUTLINED_FUNCTION_20_3(v220);
        sub_1DC312E7C(v81, v82);
        OUTLINED_FUNCTION_10_5();
        if (!v83)
        {
          v187 = v59;
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_27_4();
          v89();
          v43 = 0;
          OUTLINED_FUNCTION_50_3();
          v32 = *v90;
          v73 = *(*v90 + 16);
          v69 = v205 + 16;
          v59 = v205 + 8;
          while (1)
          {
            if (v73 == v43)
            {
              OUTLINED_FUNCTION_12_5();
              v73 = v212;
              v119(v198, v212);
              v59 = v187;
              v72 = v203;
              goto LABEL_19;
            }

            if (v43 >= *(v32 + 16))
            {
              break;
            }

            v91 = v205;
            v92 = *(v205 + 80);
            OUTLINED_FUNCTION_24();
            v72 = v204;
            (*(v91 + 16))(v10, v32 + v93 + *(v91 + 72) * v43++, v204);
            v55 = sub_1DC5111AC();
            sub_1DC2E1DD4(v55, v94, v95, v96, v97, v98, v99, v100, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
            v102 = v101;

            (*(v91 + 8))(v10, v72);
            if (v102)
            {
              OUTLINED_FUNCTION_20_3(&v215);
              OUTLINED_FUNCTION_46_3();
              OUTLINED_FUNCTION_12_5();
              v73 = v212;
              v103(v43, v212);
              v104 = OUTLINED_FUNCTION_6_4();
              v105(v104);
              v59 = v187;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      sub_1DC28EB30(v55, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_19:
  v32 = v192;
  sub_1DC344AE4();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v65)
  {
    v85 = v55 == v84;
  }

  else
  {
    v85 = 0;
  }

  if (v85)
  {

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_56_6();

  if (v43)
  {
    goto LABEL_42;
  }

  sub_1DC344AE4();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v65)
  {
    OUTLINED_FUNCTION_7_4(&v219);
LABEL_30:
    sub_1DC28EB30(v55, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_20_3(&v219);
  sub_1DC312E7C(v86, v87);
  OUTLINED_FUNCTION_10_5();
  if (v88)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_27_4();
  v106();
  v43 = 0;
  OUTLINED_FUNCTION_50_3();
  v10 = *v107;
  v212 = *(*v107 + 2);
  v200 = v205 + 16;
  v69 = v205 + 8;
  while (v212 != v43)
  {
    if (v43 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v72 = v59;
    v108 = v73;
    v109 = v205;
    v110 = *(v205 + 80);
    OUTLINED_FUNCTION_24();
    v112 = v201;
    v113 = v204;
    (*(v109 + 16))(v201, &v10[v111 + *(v109 + 72) * v43++], v204);
    v55 = sub_1DC5111AC();
    sub_1DC2E2560();
    v32 = v114;

    (*(v109 + 8))(v112, v113);
    v73 = v108;
    v59 = v72;
    if (v32)
    {
      OUTLINED_FUNCTION_20_3(&v215);
      OUTLINED_FUNCTION_46_3();
      v69 = v202;
      v115 = OUTLINED_FUNCTION_11_5();
      v116(v115);
      v117 = OUTLINED_FUNCTION_6_4();
      v118(v117);
      goto LABEL_41;
    }
  }

  OUTLINED_FUNCTION_12_5();
  v120(v197, v73);
  v72 = v203;
LABEL_41:
  v32 = v192;
LABEL_42:
  sub_1DC344C58();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v65)
  {
    v122 = v55 == v121;
  }

  else
  {
    v122 = 0;
  }

  if (v122)
  {

    goto LABEL_58;
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_56_6();

  if (v43)
  {
    goto LABEL_58;
  }

  sub_1DC344C58();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v65)
  {
    OUTLINED_FUNCTION_7_4(&v216);
LABEL_53:
    sub_1DC28EB30(v55, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_20_3(&v216);
  sub_1DC312E7C(v123, v124);
  OUTLINED_FUNCTION_10_5();
  if (v125)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_42_5();
  v126 = v194;
  OUTLINED_FUNCTION_27_4();
  v127();
  v128 = v199;
  (*(v69 + 104))(v199, *MEMORY[0x1E69D02F8], v73);
  v55 = sub_1DC5157DC();
  v43 = v69 + 8;
  v10 = *(v69 + 8);
  (v10)(v128, v73);
  if (v55 & 1) != 0 && (OUTLINED_FUNCTION_50_3(), v55 = *v129, sub_1DC2E28DC(), (v130) && (OUTLINED_FUNCTION_17_2(), sub_1DC2E28DC(), (v131 & 1) == 0))
  {
    OUTLINED_FUNCTION_20_3(&v215);
    sub_1DC32DE40();
    (v10)(v126, v73);
    v180 = OUTLINED_FUNCTION_6_4();
    v181(v180);
  }

  else
  {
    (v10)(v126, v73);
  }

LABEL_58:
  sub_1DC344D34();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v65)
  {
    v133 = v55 == v132;
  }

  else
  {
    v133 = 0;
  }

  if (v133)
  {
  }

  else
  {
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_56_6();

    if ((v43 & 1) == 0)
    {
      sub_1DC344D34();
      sub_1DC312F68();
      OUTLINED_FUNCTION_43_0();
      if (v65)
      {
        OUTLINED_FUNCTION_7_4(&v217);
      }

      else
      {
        OUTLINED_FUNCTION_20_3(&v217);
        sub_1DC312E7C(v134, v135);
        OUTLINED_FUNCTION_10_5();
        if (!v136)
        {
          OUTLINED_FUNCTION_42_5();
          v43 = v195;
          OUTLINED_FUNCTION_27_4();
          v142();
          OUTLINED_FUNCTION_50_3();
          v144 = *v143;
          OUTLINED_FUNCTION_17_2();
          sub_1DC2E28DC();
          if (v145)
          {
            OUTLINED_FUNCTION_20_3(&v215);
            sub_1DC32DE40();
            v146 = OUTLINED_FUNCTION_11_5();
            v147(v146);
            v148 = OUTLINED_FUNCTION_6_4();
          }

          else
          {
            v148 = OUTLINED_FUNCTION_11_5();
          }

          v149(v148);
          goto LABEL_70;
        }
      }

      sub_1DC28EB30(v55, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_70:
  sub_1DC344E10();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_49_4();
  if (v65)
  {
    v138 = v55 == v137;
  }

  else
  {
    v138 = 0;
  }

  if (v138)
  {
  }

  else
  {
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_56_6();

    if ((v43 & 1) == 0)
    {
      sub_1DC344E10();
      sub_1DC312F68();
      OUTLINED_FUNCTION_43_0();
      if (v65)
      {
        OUTLINED_FUNCTION_7_4(&v218);
      }

      else
      {
        OUTLINED_FUNCTION_20_3(&v218);
        sub_1DC312E7C(v139, v140);
        OUTLINED_FUNCTION_10_5();
        if (!v141)
        {
          OUTLINED_FUNCTION_42_5();
          v43 = v196;
          OUTLINED_FUNCTION_27_4();
          v150();
          sub_1DC2E5460();
          v151 = sub_1DC5176CC();
          if (v151)
          {
LABEL_93:
            v174 = OUTLINED_FUNCTION_11_5();
            v175(v174);
            goto LABEL_94;
          }

          type metadata accessor for NLRouterBypassUtils();
          if (_MergedGlobals_4 == -1)
          {
LABEL_87:
            sub_1DC30A498();
            if (v152)
            {
              if (qword_1EDAC8170 != -1)
              {
                OUTLINED_FUNCTION_25_2();
              }

              sub_1DC30A0F8();
              if (v153)
              {
                v154 = sub_1DC517B9C();
                v155 = sub_1DC2BE518();
                v156 = v193;
                OUTLINED_FUNCTION_44_2();
                v157();
                if (os_log_type_enabled(v155, v154))
                {
                  v158 = swift_slowAlloc();
                  LODWORD(v205) = v154;
                  v159 = v158;
                  v212 = swift_slowAlloc();
                  v213[0] = v212;
                  *v159 = 136315650;
                  v43 = v156;
                  sub_1DC344EEC();
                  v160 = v214[0];
                  v161 = v214[1];

                  sub_1DC28EB30(v214, &qword_1ECC7C168, &qword_1DC522F30);
                  v162 = sub_1DC291244(v160, v161, v213);

                  *(v159 + 4) = v162;
                  v32 = 2080;
                  *(v159 + 12) = 2080;
                  v163 = swift_beginAccess();
                  v164 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v163);
                  v166 = sub_1DC291244(v164, v165, v213);

                  *(v159 + 14) = v166;
                  *(v159 + 22) = 2080;
                  j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v167);
                  v168 = OUTLINED_FUNCTION_31_6();
                  v73(v168);
                  v169 = OUTLINED_FUNCTION_41();
                  v172 = sub_1DC291244(v169, v170, v171);
                  v72 = v203;

                  *(v159 + 24) = v172;
                  _os_log_impl(&dword_1DC287000, v155, v205, "[NoteRule] triggered by %s. Updating routing from %s to %s", v159, 0x20u);
                  v173 = v212;
                  swift_arrayDestroy();
                  MEMORY[0x1E1298840](v173, -1, -1);
                  MEMORY[0x1E1298840](v159, -1, -1);
                }

                else
                {

                  v182 = OUTLINED_FUNCTION_31_6();
                  v73(v182);
                }

                v183 = v188;
                swift_beginAccess();
                v184 = v59 + *(v183 + 36);
                v10 = v199;
                v185 = v196;
                sub_1DC32F9DC();
                (v73)(v185, v73);
                swift_beginAccess();
                (*(v43 + 40))(v72, v10, v73);
                v69 = v43;
                goto LABEL_94;
              }
            }

            goto LABEL_93;
          }

LABEL_105:
          OUTLINED_FUNCTION_22_3();
          goto LABEL_87;
        }
      }

      sub_1DC28EB30(v55, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_94:
  swift_beginAccess();
  if (sub_1DC5157DC())
  {
    v176 = v210;
  }

  else
  {
    v176 = v210;
    OUTLINED_FUNCTION_44_2();
    v177();
  }

  OUTLINED_FUNCTION_35_4();
  __swift_storeEnumTagSinglePayload(v176, v178, 1, v73);
  (*(v69 + 8))(v72, v73);
  sub_1DC2E5408(v206, type metadata accessor for NLRouterNLParseResponse);
LABEL_98:
  v179 = sub_1DC2BE518();
  sub_1DC2B8848();

  (*(v10 + 1))(v32, v43);
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E1DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_38_2();
  v110 = sub_1DC510FDC();
  v24 = OUTLINED_FUNCTION_0(v110);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v107 = v30;
  OUTLINED_FUNCTION_12();
  v31 = sub_1DC51179C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_53_3();
  v114 = sub_1DC51164C();
  v38 = OUTLINED_FUNCTION_0(v114);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v46 = *(v20 + 16);
  if (!v46)
  {
LABEL_36:
    OUTLINED_FUNCTION_34();
    return;
  }

  v103 = 0;
  v48 = *(v40 + 16);
  v47 = v40 + 16;
  v49 = *(v47 + 64);
  OUTLINED_FUNCTION_24();
  v51 = v20 + v50;
  v112 = (v34 + 8);
  v113 = v47 - 8;
  v108 = v31;
  v109 = (v26 + 8);
  v53 = v52;
  v54 = *(v47 + 56);
  v105 = v47;
  v106 = v21;
  v104 = v52;
  v111 = v54;
  while (1)
  {
    v53(v45, v51, v114);
    if (sub_1DC5114CC())
    {
      break;
    }

    v68 = OUTLINED_FUNCTION_5_7();
    v69(v68);
LABEL_18:
    v51 += v54;
    if (!--v46)
    {
      goto LABEL_36;
    }
  }

  sub_1DC51154C();
  v55 = sub_1DC51177C();
  v56 = v112;
  v57 = *v112;
  (*v112)(v21, v31);
  if ((v55 & 1) == 0)
  {
    v70 = OUTLINED_FUNCTION_5_7();
    v71(v70);
LABEL_17:
    v54 = v111;
    goto LABEL_18;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  v58 = v107;
  sub_1DC51178C();
  v57(v21, v31);
  v59 = sub_1DC307E5C();
  v60 = *v109;
  (*v109)(v58, v110);
  if (!v59)
  {
    v72 = OUTLINED_FUNCTION_5_7();
    v73(v72);
LABEL_16:
    v31 = v108;
    v21 = v106;
    v53 = v104;
    goto LABEL_17;
  }

  sub_1DC51478C();

  if (!v116)
  {
    v74 = OUTLINED_FUNCTION_5_7();
    v75(v74);

    sub_1DC28EB30(&v115, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_16;
  }

  v61 = sub_1DC2BAD90(&v115, v117);
  if (qword_1ECC7EAC0 != -1)
  {
    OUTLINED_FUNCTION_18_4();
    v61 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v61);
  v102[-2] = v117;
  v62 = v103;
  if (sub_1DC2E24F4(sub_1DC2E56F0, &v102[-4], v63))
  {
    v93 = OUTLINED_FUNCTION_5_7();
    v94(v93);
    goto LABEL_38;
  }

  v64 = v60;
  v102[2] = v59;
  v65 = v102[0];
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3(&a16);
  sub_1DC51178C();
  v57(v65, v108);
  sub_1DC5138FC();
  if (v62)
  {

    OUTLINED_FUNCTION_34_3();

    v64(v56, v110);
    v66 = OUTLINED_FUNCTION_5_7();
    v67(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    v103 = 0;
    v21 = v106;
    v53 = v104;
LABEL_35:
    v54 = v111;
    v31 = v108;
    goto LABEL_18;
  }

  v64(v56, v110);
  sub_1DC2E3224();
  v21 = v106;
  if (v76)
  {
    sub_1DC2E34F8();
    if (v77 & 1) != 0 || (sub_1DC2E372C(), (v78) || (sub_1DC2E3968(), (v79) || (sub_1DC2E3B94(), (v80))
    {

      OUTLINED_FUNCTION_34_3();

      v95 = OUTLINED_FUNCTION_5_7();
      v96(v95);
      goto LABEL_40;
    }
  }

  sub_1DC291F78(v117, &v115);
  sub_1DC514C6C();
  v81 = swift_dynamicCast();
  v103 = 0;
  if (!v81)
  {
    v87 = OUTLINED_FUNCTION_5_7();
    v88(v87);
    OUTLINED_FUNCTION_34_3();

    v53 = v104;
    goto LABEL_34;
  }

  sub_1DC2E4284();
  v53 = v104;
  if (!v82)
  {
    v89 = OUTLINED_FUNCTION_5_7();
    v90(v89);
LABEL_33:

    OUTLINED_FUNCTION_34_3();

    goto LABEL_34;
  }

  v83 = sub_1DC514F8C();
  v84 = sub_1DC2E4CBC(1701667182, 0xE400000000000000, v83);

  if (!v84)
  {
    v91 = OUTLINED_FUNCTION_5_7();
    v92(v91);

    goto LABEL_33;
  }

  if (!sub_1DC2C20B8(v84))
  {
    OUTLINED_FUNCTION_34_3();

    v85 = OUTLINED_FUNCTION_5_7();
    v86(v85);
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    goto LABEL_35;
  }

  if ((v84 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E1296800](0, v84);
    OUTLINED_FUNCTION_34_3();

    v100 = OUTLINED_FUNCTION_5_7();
    v101(v100);
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v97 = *(v84 + 32);

    v98 = OUTLINED_FUNCTION_5_7();
    v99(v98);
LABEL_38:

LABEL_40:
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    goto LABEL_36;
  }

  __break(1u);
}

BOOL sub_1DC2E24F4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v12 = v9;
    v10 = a1(&v12);
    if (v3)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

void sub_1DC2E2560()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v42 = sub_1DC510FDC();
  v3 = OUTLINED_FUNCTION_0(v42);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v41 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v44 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v44);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v13 = sub_1DC51164C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v19 = *(v0 + 16);
  if (v19)
  {
    v22 = *(v16 + 16);
    v20 = v16 + 16;
    v21 = v22;
    v23 = *(v20 + 64);
    OUTLINED_FUNCTION_24();
    v25 = v0 + v24;
    v26 = (v20 - 8);
    v43 = (v10 + 8);
    v39 = (v27 + 8);
    v40 = v22;
    v28 = *(v20 + 56);
    v38 = v28;
    while (1)
    {
      v21(v2, v25, v13);
      if ((sub_1DC5114CC() & 1) == 0)
      {
        goto LABEL_11;
      }

      sub_1DC51154C();
      v29 = sub_1DC51177C();
      v30 = *v43;
      (*v43)(v1, v44);
      if ((v29 & 1) == 0)
      {
        break;
      }

      type metadata accessor for NLRouterBypassUtils();
      sub_1DC51154C();
      sub_1DC51178C();
      v30(v1, v44);
      v28 = v38;
      v31 = sub_1DC307E5C();
      v21 = v40;
      (*v39)(v41, v42);
      if (!v31)
      {
        break;
      }

      sub_1DC51478C();

      v26 = (v20 - 8);
      v32 = *(v20 - 8);
      v33 = OUTLINED_FUNCTION_41();
      v34(v33);
      *v46 = *&v46[5];
      *&v46[2] = v47;
      if (*(&v47 + 1))
      {
        sub_1DC28F308(v46, v45, &qword_1ECC7D3F0, &qword_1DC5238B0);
        sub_1DC51485C();
        if (swift_dynamicCast())
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          sub_1DC28EB30(v46, &qword_1ECC7D3F0, &qword_1DC5238B0);
          goto LABEL_13;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      sub_1DC28EB30(v46, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_12:
      v25 += v28;
      if (!--v19)
      {
        goto LABEL_13;
      }
    }

    v26 = (v20 - 8);
LABEL_11:
    v35 = *v26;
    v36 = OUTLINED_FUNCTION_41();
    v37(v36);
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2E28DC()
{
  OUTLINED_FUNCTION_33();
  v90 = v1;
  OUTLINED_FUNCTION_38_2();
  v93 = sub_1DC51179C();
  v2 = OUTLINED_FUNCTION_0(v93);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v92 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v83 = sub_1DC51122C();
  v9 = OUTLINED_FUNCTION_0(v83);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v82 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C170, &qword_1DC522F38);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v85 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v84 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v24 = OUTLINED_FUNCTION_10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  v98 = v31;
  OUTLINED_FUNCTION_12();
  v32 = sub_1DC51164C();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v89 = v36;
  OUTLINED_FUNCTION_22();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v78 - v39;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  v87 = v0;
  v88 = v41;
  v78 = v11 + 16;
  v79 = v11;
  v80 = (v11 + 8);
  v81 = (v11 + 32);
  v95 = v42 + 16;
  v96 = v42;
  v97 = (v42 + 32);
  v43 = (v4 + 8);
  v94 = (v42 + 8);
  swift_bridgeObjectRetain_n();
  v44 = 0;
  v86 = 0;
  v91 = v32;
  while (1)
  {
    v45 = 0;
    if (v44)
    {
      while (1)
      {
        v46 = *(v44 + 16);
        if (v45 == v46)
        {
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v60, v61, v62, v32);
          sub_1DC28EB30(v29, &qword_1ECC7C178, qword_1DC523CB0);
          goto LABEL_13;
        }

        if (v45 >= v46)
        {
          break;
        }

        v47 = *(v96 + 80);
        OUTLINED_FUNCTION_24();
        (*(v49 + 16))(v29, v44 + v48 + *(v49 + 72) * v45, v32);
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v32);
        v50 = v98;
        sub_1DC2E5B08(v29, v98, &qword_1ECC7C178, qword_1DC523CB0);
        OUTLINED_FUNCTION_39(v50, 1, v32);
        if (v51)
        {
          goto LABEL_20;
        }

        v52 = *v97;
        (*v97)(v40, v98, v32);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_10;
        }

        v53 = v40;
        v54 = v92;
        sub_1DC51154C();
        v55 = sub_1DC51177C();
        v56 = v54;
        v40 = v53;
        v32 = v91;
        (*v43)(v56, v93);
        if (v55)
        {
          v57 = v88;
          v52(v88, v53, v32);
          v58 = v89;
          v52(v89, v57, v32);
          LOBYTE(v57) = v90(v58);
          v59 = v58;
          v40 = v53;
          (*v94)(v59, v32);
          if (v57)
          {

            goto LABEL_21;
          }
        }

        else
        {
LABEL_10:
          (*v94)(v40, v32);
        }

        ++v45;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_13:
    v63 = *(v87 + 16);
    if (v86 == v63)
    {
      v64 = 1;
      v65 = v83;
    }

    else
    {
      v65 = v83;
      if (v86 >= v63)
      {
        goto LABEL_23;
      }

      v66 = *(v79 + 80);
      OUTLINED_FUNCTION_24();
      v67 = v86;
      (*(v69 + 16))(v84, v87 + v68 + *(v69 + 72) * v86, v65);
      v64 = 0;
      v86 = v67 + 1;
    }

    v70 = v84;
    __swift_storeEnumTagSinglePayload(v84, v64, 1, v65);
    v71 = v70;
    v72 = v85;
    sub_1DC2E5B08(v71, v85, &qword_1ECC7C170, &qword_1DC522F38);
    OUTLINED_FUNCTION_39(v72, 1, v65);
    if (v51)
    {
      break;
    }

    v73 = v82;
    (*v81)(v82, v85, v65);
    v74 = sub_1DC5111AC();
    (*v80)(v73, v65);

    v44 = v74;
  }

  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v32);
LABEL_20:
  sub_1DC28EB30(v98, &qword_1ECC7C178, qword_1DC523CB0);

LABEL_21:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2E2EBC()
{
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v5 = sub_1DC51179C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v8 + 8))(v0, v5);
  sub_1DC307E5C();
  v11 = OUTLINED_FUNCTION_51_3();
  v12(v11);
  if (v5)
  {

    sub_1DC51478C();

    if (v16)
    {
      sub_1DC2BAD90(&v15, v17);
      OUTLINED_FUNCTION_57_3();
      sub_1DC51479C();
      if (OUTLINED_FUNCTION_55_4())
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        return 1;
      }

      OUTLINED_FUNCTION_57_3();
      v13 = sub_1DC2E30E4(&v15);

      sub_1DC28EB30(&v15, &qword_1ECC7D3F0, &qword_1DC5238B0);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (v13)
      {

        return 1;
      }
    }

    else
    {

      sub_1DC28EB30(&v15, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }

  return 0;
}

uint64_t sub_1DC2E30E4(uint64_t a1)
{
  sub_1DC28F308(a1, v5, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v6)
  {
    goto LABEL_11;
  }

  sub_1DC28F308(v5, v4, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51494C();
  if (!OUTLINED_FUNCTION_21())
  {
    sub_1DC514ABC();
    if (OUTLINED_FUNCTION_21() || (sub_1DC514D1C(), OUTLINED_FUNCTION_21()))
    {

      sub_1DC5148BC();
      goto LABEL_7;
    }

    sub_1DC51487C();
    if (OUTLINED_FUNCTION_21())
    {

      sub_1DC51392C();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  sub_1DC514C8C();
LABEL_7:

  v1 = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_12:
  sub_1DC28EB30(v5, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v1;
}

void sub_1DC2E3224()
{
  OUTLINED_FUNCTION_33();
  v38 = sub_1DC514E7C();
  v2 = OUTLINED_FUNCTION_0(v38);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v7 = sub_1DC514ECC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = sub_1DC514E3C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC2E5144();
  OUTLINED_FUNCTION_39(v21, 1, v22);
  if (v28)
  {
    sub_1DC28EB30(v21, &qword_1ECC7C1A0, &qword_1DC522F80);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  (*(v25 + 32))(v1, v21, v22);
  v29 = sub_1DC514EFC();
  v30 = sub_1DC514E1C();
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < *(v29 + 16))
  {
    v31 = *(v10 + 80);
    OUTLINED_FUNCTION_24();
    (*(v10 + 16))(v15, v29 + v32 + *(v10 + 72) * v33, v7);

    sub_1DC514EBC();
    sub_1DC514E6C();
    (*(v4 + 8))(v0, v38);
    OUTLINED_FUNCTION_47_4();
    sub_1DC51795C();

    (*(v10 + 8))(v15, v7);
    v34 = *(v25 + 8);
    v35 = OUTLINED_FUNCTION_41();
    v36(v35);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DC2E34F8()
{
  OUTLINED_FUNCTION_33();
  v33 = sub_1DC514E7C();
  v0 = OUTLINED_FUNCTION_0(v33);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_1DC514E3C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1DC514EEC();
  v18 = 0;
  v19 = (v2 + 8);
  v34 = *(v17 + 16);
  while (1)
  {
    if (v34 == v18)
    {
      goto LABEL_11;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    v20 = *(v11 + 80);
    OUTLINED_FUNCTION_24();
    v22 = v21;
    (*(v11 + 16))(v16, v21 + v23 + *(v11 + 72) * v18, v8);
    sub_1DC514E0C();
    v24 = sub_1DC514E6C();
    v26 = v25;
    (*v19)(v7, v33);
    if (v24 == 0x656D686361747461 && v26 == 0xEB0000000073746ELL)
    {

      v31 = OUTLINED_FUNCTION_52_4();
      v32(v31);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v18;
    v28 = sub_1DC51825C();

    v29 = OUTLINED_FUNCTION_52_4();
    v30(v29);
    v17 = v22;
    if (v28)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC2E372C()
{
  OUTLINED_FUNCTION_33();
  v28 = sub_1DC514E7C();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v7 = sub_1DC514E3C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v13 = sub_1DC514EEC();
  v14 = 0;
  v29 = *(v13 + 16);
  while (1)
  {
    if (v29 == v14)
    {
      goto LABEL_11;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    v15 = *(v10 + 80);
    OUTLINED_FUNCTION_24();
    v17 = v16;
    (*(v10 + 16))(v1, v16 + v18 + *(v10 + 72) * v14, v7);
    sub_1DC514E0C();
    v19 = sub_1DC514E6C();
    v21 = v20;
    (*(v4 + 8))(v0, v28);
    if (v19 == 0xD000000000000010 && 0x80000001DC53D400 == v21)
    {

      v26 = OUTLINED_FUNCTION_28_3();
      v27(v26, v7);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v14;
    v23 = sub_1DC51825C();

    v24 = OUTLINED_FUNCTION_28_3();
    v25(v24, v7);
    v13 = v17;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC2E3968()
{
  OUTLINED_FUNCTION_33();
  v29 = sub_1DC514E7C();
  v2 = OUTLINED_FUNCTION_0(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v7 = sub_1DC514E3C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v13 = sub_1DC514EEC();
  v14 = 0;
  v15 = (v4 + 8);
  v30 = *(v13 + 16);
  while (1)
  {
    if (v30 == v14)
    {
      goto LABEL_11;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    v16 = *(v10 + 80);
    OUTLINED_FUNCTION_24();
    v18 = v17;
    (*(v10 + 16))(v1, v17 + v19 + *(v10 + 72) * v14, v7);
    sub_1DC514E0C();
    v20 = sub_1DC514E6C();
    v22 = v21;
    (*v15)(v0, v29);
    if (v20 == 1936154996 && v22 == 0xE400000000000000)
    {

      v27 = OUTLINED_FUNCTION_28_3();
      v28(v27, v7);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v14;
    v24 = sub_1DC51825C();

    v25 = OUTLINED_FUNCTION_28_3();
    v26(v25, v7);
    v13 = v18;
    if (v24)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC2E3B94()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC514ECC();
  v88 = OUTLINED_FUNCTION_0(v2);
  v89 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_15();
  v83 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v92 = v8;
  OUTLINED_FUNCTION_12();
  v97 = sub_1DC514E7C();
  v9 = OUTLINED_FUNCTION_0(v97);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v82 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v87 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53_3();
  v98 = sub_1DC514E3C();
  v18 = OUTLINED_FUNCTION_0(v98);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v93 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  v86 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  v91 = v0;
  v29 = sub_1DC514EEC();
  v30 = 0;
  v31 = *(v29 + 16);
  v96 = v20 + 16;
  v32 = (v11 + 8);
  v94 = v31;
  v95 = (v20 + 8);
  v85 = (v20 + 32);
  v90 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v94 == v30)
    {

      v85 = *(v90 + 16);
      if (!v85)
      {
LABEL_38:

        OUTLINED_FUNCTION_34();
        return;
      }

      v46 = 0;
      v47 = *(v20 + 80);
      OUTLINED_FUNCTION_24();
      v86 = v48 + v49;
      v50 = v88;
      v94 = v89 + 16;
      v84 = (v89 + 8);
      while (1)
      {
        if (v46 >= *(v48 + 16))
        {
          goto LABEL_40;
        }

        (*(v20 + 16))(v93, v86 + *(v20 + 72) * v46, v98);
        v51 = sub_1DC514EFC();
        v52 = sub_1DC514E2C();
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v52 >= *(v51 + 16))
        {
          goto LABEL_42;
        }

        v53 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v54 = v50;
        v55 = *(v89 + 72);
        v56 = *(v89 + 16);
        v56(v92, v51 + v53 + v55 * v52, v54);

        v57 = v87;
        sub_1DC514EBC();
        v58 = sub_1DC514E6C();
        v60 = v59;
        v61 = *v32;
        (*v32)(v57, v97);
        if (v58 == 0x4E5F6E6F6D6D6F63 && v60 == 0xEB0000000065746FLL)
        {
        }

        else
        {
          v63 = sub_1DC51825C();

          if ((v63 & 1) == 0)
          {
            v50 = v88;
            (*v84)(v92, v88);
            v64 = OUTLINED_FUNCTION_23_4();
            v65(v64);
            goto LABEL_35;
          }
        }

        v66 = sub_1DC514EFC();
        v67 = sub_1DC514E1C();
        if ((v67 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v67 >= *(v66 + 16))
        {
          goto LABEL_44;
        }

        v68 = v66 + v53 + v67 * v55;
        v69 = v83;
        v50 = v88;
        v56(v83, v68, v88);

        v70 = v82;
        sub_1DC514EBC();
        v71 = sub_1DC514E6C();
        v73 = v72;
        v61(v70, v97);
        if (v71 == 0x646E65707061 && v73 == 0xE600000000000000)
        {

          v79 = *v84;
          (*v84)(v69, v50);
          v79(v92, v50);
          v80 = OUTLINED_FUNCTION_23_4();
          v81(v80);
          goto LABEL_38;
        }

        v75 = sub_1DC51825C();

        v76 = *v84;
        (*v84)(v69, v50);
        v76(v92, v50);
        v77 = OUTLINED_FUNCTION_23_4();
        v78(v77);
        if (v75)
        {
          goto LABEL_38;
        }

LABEL_35:
        ++v46;
        v48 = v90;
        if (v85 == v46)
        {
          goto LABEL_38;
        }
      }
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    v33 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v34 = *(v20 + 72);
    (*(v20 + 16))(v28, v29 + v33 + v34 * v30, v98);
    sub_1DC514E0C();
    v35 = sub_1DC514E6C();
    v37 = v36;
    (*v32)(v1, v97);
    if (v35 == 0x6F43676E69727473 && v37 == 0xED0000746E65746ELL)
    {

LABEL_11:
      v40 = *v85;
      (*v85)(v86, v28, v98);
      v41 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v41;
      v84 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC2E5768(0, *(v41 + 16) + 1, 1);
        v41 = v99;
      }

      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v90 = v44 + 1;
        sub_1DC2E5768(v43 > 1, v44 + 1, 1);
        v45 = v90;
        v41 = v99;
      }

      ++v30;
      *(v41 + 16) = v45;
      v90 = v41;
      (v84)(v41 + v33 + v44 * v34, v86, v98);
    }

    else
    {
      v39 = sub_1DC51825C();

      if (v39)
      {
        goto LABEL_11;
      }

      (*v95)(v28, v98);
      ++v30;
    }
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
}

void sub_1DC2E4284()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C188, &qword_1DC522F68);
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v132 = v5;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v131 = v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C190, &qword_1DC522F70);
  v8 = OUTLINED_FUNCTION_0(v135);
  v130 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v138 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v125 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v120 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C198, &qword_1DC522F78);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v121 = v114 - v25;
  OUTLINED_FUNCTION_12();
  v26 = sub_1DC514E7C();
  v136 = OUTLINED_FUNCTION_0(v26);
  v137 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_15();
  v124 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  v129 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v114 - v34;
  v36 = sub_1DC514ECC();
  v37 = OUTLINED_FUNCTION_0(v36);
  v123 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  v118 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v114 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  OUTLINED_FUNCTION_10(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v53 = sub_1DC514E3C();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1();
  v61 = v60 - v59;
  sub_1DC2E5144();
  OUTLINED_FUNCTION_39(v0, 1, v53);
  if (v96)
  {
    v62 = &qword_1ECC7C1A0;
    v63 = &qword_1DC522F80;
    v64 = v0;
    goto LABEL_24;
  }

  v119 = v56;
  (*(v56 + 32))(v61, v0, v53);
  v65 = sub_1DC514EFC();
  v66 = sub_1DC514E1C();
  if ((v66 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
  }

  else if (v66 < *(v65 + 16))
  {
    v117 = v43;
    v67 = v123;
    v69 = *(v123 + 16);
    v68 = v123 + 16;
    v70 = *(v123 + 80);
    OUTLINED_FUNCTION_24();
    v73 = v65 + v71 + *(v68 + 56) * v72;
    v116 = v74;
    v74(v48, v73, v36);

    sub_1DC514EBC();
    sub_1DC514E6C();
    v75 = *(v137 + 8);
    v137 += 8;
    v134 = v75;
    v75(v35, v136);
    v122 = 0x80000001DC53D3C0;
    v76 = sub_1DC51795C();

    if ((v76 & 1) == 0)
    {
      (*(v67 + 8))(v48, v36);
      (*(v119 + 8))(v61, v53);
LABEL_25:
      OUTLINED_FUNCTION_34();
      return;
    }

    v133 = v36;
    v77 = v131;
    sub_1DC514E4C();
    v78 = sub_1DC514E5C();
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
    v79 = v132;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v78);
    v83 = sub_1DC514EAC();
    sub_1DC28EB30(v79, &qword_1ECC7C188, &qword_1DC522F68);
    sub_1DC28EB30(v77, &qword_1ECC7C188, &qword_1DC522F68);
    v84 = v119;
    v128 = *(v83 + 16);
    if (v128)
    {
      v114[1] = v68;
      v115 = v48;
      v85 = 0;
      v86 = *(v130 + 80);
      OUTLINED_FUNCTION_24();
      v126 = v83 + v87;
      v131 = (v123 + 8);
      v132 = (v84 + 8);
      v114[2] = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v88 = v125;
      v127 = v61;
      while (1)
      {
        if (v85 >= *(v83 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v89 = v83;
        sub_1DC28F308(v126 + *(v130 + 72) * v85, v88, &qword_1ECC7C190, &qword_1DC522F70);
        v90 = v138;
        sub_1DC28F308(v88, v138, &qword_1ECC7C190, &qword_1DC522F70);
        v91 = v129;
        sub_1DC514E0C();
        v92 = *v132;
        v93 = v53;
        (*v132)(v90, v53);
        sub_1DC514E6C();
        v94 = OUTLINED_FUNCTION_45_5();
        v95(v94);
        v96 = v53 == 0x746567726174 && v91 == 0xE600000000000000;
        if (v96)
        {

          v97 = 1;
        }

        else
        {
          v97 = sub_1DC51825C();
        }

        v98 = *v131;
        (*v131)(v138 + *(v135 + 48), v133);
        if (v97)
        {
          sub_1DC28F308(v88, v14, &qword_1ECC7C190, &qword_1DC522F70);
          v99 = *(v135 + 48);
          sub_1DC514EBC();
          v98(v14 + v99, v133);
          sub_1DC514E6C();
          v100 = OUTLINED_FUNCTION_45_5();
          v101(v100);
          LOBYTE(v99) = sub_1DC51825C();

          v92(v14, v93);
          v88 = v125;
          if (v99)
          {
            break;
          }
        }

        ++v85;
        sub_1DC28EB30(v88, &qword_1ECC7C190, &qword_1DC522F70);
        v53 = v93;
        v61 = v127;
        v83 = v89;
        if (v128 == v85)
        {

          v102 = v121;
          v103 = v133;
          v48 = v115;
          v84 = v119;
          goto LABEL_22;
        }
      }

      v107 = v120;
      sub_1DC2E5B08(v88, v120, &qword_1ECC7C190, &qword_1DC522F70);
      v108 = *(v123 + 32);
      v102 = v121;
      v109 = v133;
      v108(v121, v107 + *(v135 + 48), v133);
      __swift_storeEnumTagSinglePayload(v102, 0, 1, v109);
      v92(v107, v93);
      OUTLINED_FUNCTION_39(v102, 1, v109);
      if (!v96)
      {
        v110 = v118;
        v108(v118, v102, v109);
        v116(v117, v110, v109);
        v111 = sub_1DC514F6C();
        v112 = *(v111 + 48);
        v113 = *(v111 + 52);
        swift_allocObject();
        sub_1DC514F5C();
        sub_1DC514F3C();

        v98(v110, v109);
        v98(v115, v109);
        v92(v127, v93);
        goto LABEL_25;
      }

      v98(v115, v109);
      v92(v127, v93);
    }

    else
    {

      v98 = *(v123 + 8);
      v102 = v121;
      v103 = v133;
LABEL_22:
      v98(v48, v103);
      (*(v84 + 8))(v61, v53);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
    }

    v62 = &qword_1ECC7C198;
    v63 = &qword_1DC522F78;
    v64 = v102;
LABEL_24:
    sub_1DC28EB30(v64, v62, v63);
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1DC2E4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

BOOL sub_1DC2E4D0C()
{
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v5 = sub_1DC51179C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v8 + 8))(v0, v5);
  sub_1DC307E5C();
  v11 = OUTLINED_FUNCTION_51_3();
  v12(v11);
  if (v5)
  {

    sub_1DC51478C();

    if (v21)
    {
      sub_1DC2BAD90(&v20, v22);
      OUTLINED_FUNCTION_57_3();
      sub_1DC51479C();
      if (OUTLINED_FUNCTION_55_4())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      else
      {
        OUTLINED_FUNCTION_57_3();
        v13 = sub_1DC2E30E4(&v20);
        sub_1DC28EB30(&v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
        if (v13)
        {

          sub_1DC5145FC();

          v14 = sub_1DC514F8C();

          v15 = sub_1DC2E5024(v14);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DC522F00;
          strcpy((inited + 32), "usoQuantifier");
          *(inited + 46) = -4864;
          *(inited + 48) = 0xD000000000000012;
          *(inited + 56) = 0x80000001DC53D420;
          *(inited + 64) = 0xD000000000000012;
          *(inited + 72) = 0x80000001DC53D440;
          v17 = sub_1DC2E5CA4(inited, v15);

          swift_setDeallocating();
          sub_1DC2A180C();
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          v18 = *(v17 + 16);

          return v18 != 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }
    }

    else
    {

      sub_1DC28EB30(&v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }

  return 0;
}

uint64_t sub_1DC2E5024(uint64_t a1)
{
  result = MEMORY[0x1E12963F0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1DC2E5B58(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DC2E5144()
{
  OUTLINED_FUNCTION_33();
  v28 = v1;
  v29 = sub_1DC514E7C();
  v2 = OUTLINED_FUNCTION_0(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v7 = sub_1DC514E3C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC514EEC();
  v17 = 0;
  v30 = *(v16 + 16);
  v18 = (v4 + 8);
  while (1)
  {
    if (v30 == v17)
    {

      v26 = 1;
      v27 = v28;
      goto LABEL_13;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v19 = *(v10 + 80);
    OUTLINED_FUNCTION_24();
    (*(v10 + 16))(v15, v16 + v20 + *(v10 + 72) * v17, v7);
    sub_1DC514E0C();
    v21 = sub_1DC514E6C();
    v23 = v22;
    (*v18)(v0, v29);
    if (v21 == 1802723700 && v23 == 0xE400000000000000)
    {

LABEL_12:

      v27 = v28;
      (*(v10 + 32))(v28, v15, v7);
      v26 = 0;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v27, v26, 1, v7);
      OUTLINED_FUNCTION_34();
      return;
    }

    v25 = sub_1DC51825C();

    if (v25)
    {
      goto LABEL_12;
    }

    (*(v10 + 8))(v15, v7);
    ++v17;
  }

  __break(1u);
}

uint64_t sub_1DC2E53A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterNLParseResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2E5408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DC2E5460()
{
  result = qword_1ECC7BB68;
  if (!qword_1ECC7BB68)
  {
    sub_1DC5157EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BB68);
  }

  return result;
}

uint64_t sub_1DC2E54B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_1ECC7C1C8;
    v2 = &unk_1DC524550;
  }

  else
  {
    v1 = &unk_1ECC7C1C0;
    v2 = &unk_1DC5248E0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1DC2E5520(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC2E560C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC514E3C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC514E3C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_1DC2E56F0(uint64_t *a1)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(*(v1 + 16), *(*(v1 + 16) + 24));
  return v2 == swift_getDynamicType();
}

size_t sub_1DC2E5748(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2E5788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC2E5768(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2E5954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC2E5788(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B0, &qword_1DC522F88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2E5520(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1DC2E5954(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C180, &qword_1DC522F60);
  v10 = *(sub_1DC514E3C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC514E3C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2E560C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DC2E5B08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

BOOL sub_1DC2E5B58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DC5182FC();
  sub_1DC51769C();
  v9 = sub_1DC51833C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1DC51825C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1DC2E6758(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1DC2E5CA4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46[0] = a1;
    v3 = *(a1 + 16);
    v44 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v43 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v44 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      sub_1DC5182FC();

      sub_1DC51769C();
      v10 = sub_1DC51833C();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v43;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (sub_1DC51825C() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v46[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v37 = swift_slowAlloc();
          v38 = sub_1DC2E64B4(v37, v20, (v2 + 56), v20, v2, v12, v46);

          MEMORY[0x1E1298840](v37, -1, -1);

          v2 = v38;
          goto LABEL_35;
        }
      }

      v39[0] = v20;
      v39[1] = v39;
      MEMORY[0x1EEE9AC00](v18);
      v22 = v39 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v41 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v45;
      v43 = *(v45 + 16);
      v20 = v17;
      while (1)
      {
        v40 = v24;
        v42 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v43)
          {
            v2 = sub_1DC2E653C(v41, v39[0], v40, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v44 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          sub_1DC5182FC();

          sub_1DC51769C();
          v27 = sub_1DC51833C();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v45;
              v17 = v42;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = sub_1DC51825C();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v41[v29];
          v41[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v45;
          v17 = v42;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v40 - 1;
        if (__OFSUB__(v40, 1))
        {
          break;
        }

        v17 = v20;
        if (v40 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_35:
  v35 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1DC2E60AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517EFC();
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
      sub_1DC2A3304(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1DC5182FC();
    sub_1DC51769C();
    result = sub_1DC51833C();
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

uint64_t sub_1DC2E6308(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1DC2E653C(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    sub_1DC5182FC();

    sub_1DC51769C();
    v15 = sub_1DC51833C();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = sub_1DC51825C();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DC2E64B4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1DC2E6308(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1DC2E653C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517F0C();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1DC5182FC();

    sub_1DC51769C();
    result = sub_1DC51833C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DC2E6758(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DC2E60AC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DC2E6A18(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DC5182FC();
      sub_1DC51769C();
      result = sub_1DC51833C();
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
        if (v19 || (sub_1DC51825C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DC2E68C0();
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
    result = sub_1DC51828C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1DC2E68C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  v2 = *v0;
  v3 = sub_1DC517EEC();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1DC2E6A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517EFC();
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
        sub_1DC5182FC();

        sub_1DC51769C();
        result = sub_1DC51833C();
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

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1DC2E6C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v232 = v20;
  v257 = v24;
  v255 = v25;
  v224 = sub_1DC5161CC();
  v26 = OUTLINED_FUNCTION_0(v224);
  v223 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v30);
  v228 = sub_1DC515DFC();
  v31 = OUTLINED_FUNCTION_0(v228);
  v235 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v35);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D0, &qword_1DC522FB0);
  OUTLINED_FUNCTION_35(v230);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  v41 = OUTLINED_FUNCTION_10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25();
  v52 = OUTLINED_FUNCTION_14(v51);
  v236 = type metadata accessor for HeuristicAgentKeywords(v52);
  v53 = OUTLINED_FUNCTION_35(v236);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v56);
  v57 = sub_1DC515EDC();
  v58 = OUTLINED_FUNCTION_0(v57);
  v240 = v59;
  v241 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  v253 = v62;
  OUTLINED_FUNCTION_12();
  v256 = sub_1DC5157EC();
  v63 = OUTLINED_FUNCTION_0(v256);
  v254 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_62();
  v248 = v68;
  OUTLINED_FUNCTION_12();
  v69 = sub_1DC515F3C();
  v70 = OUTLINED_FUNCTION_0(v69);
  v242 = v71;
  v243 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v74);
  v75 = sub_1DC5119DC();
  v76 = OUTLINED_FUNCTION_0(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_1();
  v83 = v82 - v81;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v85 = OUTLINED_FUNCTION_10(v84);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_23_1();
  v244 = v89;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v220 - v91;
  v93 = type metadata accessor for NLRouterTurnContext(0);
  v94 = OUTLINED_FUNCTION_35(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_15();
  v245 = v97;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v220 - v99;
  v101 = sub_1DC516F5C();
  v102 = OUTLINED_FUNCTION_0(v101);
  v250 = v103;
  v251 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v106 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v107 = sub_1DC2BE518();
  v108 = OUTLINED_FUNCTION_130();
  v249 = v21;
  v252 = v106;
  sub_1DC2A2ED0("HeuristicRules.GenAIRule", 24, 2, v107, v108 & 1, v21);

  v109 = type metadata accessor for NLRouterServiceRequest(0);
  v246 = *(v109 + 20);
  sub_1DC28F358(v257 + v246, v92, &qword_1ECC7BFD0, &unk_1DC522550);
  v247 = v93;
  OUTLINED_FUNCTION_39(v92, 1, v93);
  if (v194)
  {
    sub_1DC28EB30(v92, &qword_1ECC7BFD0, &unk_1DC522550);
    v259 = 1;
    v110 = v255;
LABEL_11:
    v121 = type metadata accessor for NLRouterBypassUtils();
    v122 = *(v257 + *(v109 + 24));
    v123 = sub_1DC308358(v122);
    v124 = v253;
    v125 = v254;
    v126 = v248;
    if ((v123 & 1) == 0)
    {
      v127 = v244;
      sub_1DC28F358(v257 + v246, v244, &qword_1ECC7BFD0, &unk_1DC522550);
      OUTLINED_FUNCTION_39(v127, 1, v247);
      if (v194)
      {
        sub_1DC28EB30(v127, &qword_1ECC7BFD0, &unk_1DC522550);
      }

      else
      {
        OUTLINED_FUNCTION_32_3();
        sub_1DC2E89AC(v127, v245);
        sub_1DC309850();
        if (v144 & 1) != 0 || (v145 = (v257 + *(type metadata accessor for HeuristicRoutingRequest(0) + 24)), v146 = *v145, v147 = v145[1], (sub_1DC309474(v257)))
        {
          sub_1DC517B9C();
          v148 = OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C();

          OUTLINED_FUNCTION_2_9();
          sub_1DC2EADFC(v245, v149);
LABEL_65:
          v143 = 1;
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_2_9();
        sub_1DC2EADFC(v245, v150);
      }
    }

    v258 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v128 = sub_1DC3463F4();
    v129 = MEMORY[0x1E69D02E0];
    if (v128)
    {
      v130 = type metadata accessor for HeuristicRoutingRequest(0);
      v131 = v256;
      (*(v125 + 16))(v126, v257 + *(v130 + 20), v256);
      if ((*(v125 + 88))(v126, v131) == *v129)
      {
        v245 = v121;
        v221 = v122;
        (*(v125 + 96))(v126, v131);
        v132 = v126;
        v134 = v242;
        v133 = v243;
        v135 = v238;
        (*(v242 + 32))(v238, v132, v243);
        sub_1DC515EFC();
        sub_1DC3322BC();
        v137 = v136;
        v138 = v241;
        v139 = *(v240 + 8);
        v139(v124, v241);
        if (v137)
        {
          sub_1DC515EFC();
          sub_1DC3319CC();
          v141 = v140;
          v139(v124, v138);
          if ((v259 | v141))
          {
            sub_1DC517B9C();
            v142 = OUTLINED_FUNCTION_23_5();
            OUTLINED_FUNCTION_40_1();
            sub_1DC516F0C();

            v110 = v255;
            sub_1DC32CDF4();
            (*(v242 + 8))(v135, v243);
            v143 = 0;
LABEL_66:
            v170 = v256;
            goto LABEL_67;
          }

          (*(v242 + 8))(v135, v243);
        }

        else
        {
          (*(v134 + 8))(v135, v133);
        }

        v125 = v254;
        v110 = v255;
        v122 = v221;
      }

      else
      {
        (*(v125 + 8))(v126, v131);
      }
    }

    v151 = sub_1DC308358(v122);
    v152 = v257;
    if ((v151 & 1) == 0)
    {
      v153 = type metadata accessor for HeuristicRoutingRequest(0);
      v154 = v152 + *(v153 + 20);
      sub_1DC32DBF4();
      if (v155)
      {
        v156 = v237;
        sub_1DC28F358(v152 + *(v153 + 32), v237, &qword_1ECC7C1E0, qword_1DC52A6E0);
        v157 = v236;
        OUTLINED_FUNCTION_39(v156, 1, v236);
        if (v194)
        {
          sub_1DC28EB30(v156, &qword_1ECC7C1E0, qword_1DC52A6E0);
        }

        else
        {
          v158 = v156;
          v159 = v157;
          v160 = v233;
          v161 = sub_1DC2E89AC(v158, v233);
          v162 = *(v160 + *(v159 + 28));
          if (*(v162 + 16))
          {
            MEMORY[0x1EEE9AC00](v161);
            *(&v220 - 2) = v152;

            v163 = *(sub_1DC2E8568(sub_1DC2E897C, (&v220 - 4), v162) + 16);

            if (!v163)
            {
              sub_1DC517B9C();
              v210 = OUTLINED_FUNCTION_23_5();
              OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C();

              OUTLINED_FUNCTION_12_6();
              sub_1DC2EADFC(v233, v211);
              v170 = v256;
              (*(v125 + 104))(v110, *MEMORY[0x1E69D02D8], v256);
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_12_6();
            sub_1DC2EADFC(v233, v164);
          }

          else
          {
            OUTLINED_FUNCTION_12_6();
            sub_1DC2EADFC(v160, v165);
          }
        }
      }
    }

    v166 = type metadata accessor for HeuristicRoutingRequest(0);
    v167 = v166[5];
    sub_1DC32DBF4();
    if (v168)
    {
      sub_1DC517B9C();
      v169 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v170 = v256;
      (*(v125 + 16))(v110, v152 + v167, v256);
LABEL_39:
      v143 = 0;
LABEL_67:
      __swift_storeEnumTagSinglePayload(v110, v143, 1, v170);
      v208 = sub_1DC2BE518();
      v209 = v249;
      sub_1DC2B8848();

      (*(v250 + 8))(v209, v251);
      OUTLINED_FUNCTION_34();
      return;
    }

    v171 = (v152 + v166[6]);
    v172 = *v171;
    v173 = v171[1];
    if ((sub_1DC3097BC(v152) & 1) == 0 || (sub_1DC51577C() & 1) == 0)
    {
      if ((sub_1DC308358(v122) & 1) == 0 || (v174 = *(v152 + v166[10]), sub_1DC2E86D4(), (v175 & 1) == 0))
      {
        if (sub_1DC344218())
        {
          v176 = v229;
          sub_1DC28F358(v152 + v246, v229, &qword_1ECC7BFD0, &unk_1DC522550);
          v177 = v247;
          OUTLINED_FUNCTION_39(v176, 1, v247);
          v221 = v122;
          if (v194)
          {
            sub_1DC28EB30(v176, &qword_1ECC7BFD0, &unk_1DC522550);
            v181 = v231;
            OUTLINED_FUNCTION_19();
            v183 = v228;
            __swift_storeEnumTagSinglePayload(v178, v179, v180, v228);
          }

          else
          {
            v181 = v231;
            sub_1DC28F358(v176 + *(v177 + 48), v231, &qword_1ECC7C1D8, &qword_1DC529390);
            OUTLINED_FUNCTION_2_9();
            sub_1DC2EADFC(v176, v182);
            v183 = v228;
          }

          v184 = v234;
          (*(v235 + 104))(v234, *MEMORY[0x1E69D04B8], v183);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v185, v186, v187, v183);
          v188 = *(v230 + 48);
          v189 = v239;
          sub_1DC28F358(v181, v239, &qword_1ECC7C1D8, &qword_1DC529390);
          v190 = v189;
          sub_1DC28F358(v184, v189 + v188, &qword_1ECC7C1D8, &qword_1DC529390);
          OUTLINED_FUNCTION_3_0(v189);
          if (!v194)
          {
            v192 = v189;
            v193 = v227;
            sub_1DC28F358(v192, v227, &qword_1ECC7C1D8, &qword_1DC529390);
            OUTLINED_FUNCTION_3_0(v190 + v188);
            v191 = v253;
            if (!v194)
            {
              v203 = v235;
              v204 = v225;
              (*(v235 + 32))(v225, v190 + v188, v183);
              sub_1DC2EBBA0(&qword_1ECC7BB50, MEMORY[0x1E69D04D0]);
              v205 = sub_1DC5176CC();
              v206 = *(v203 + 8);
              v206(v204, v183);
              OUTLINED_FUNCTION_61_1(&a13);
              OUTLINED_FUNCTION_61_1(&a10);
              v206(v193, v183);
              v152 = v257;
              OUTLINED_FUNCTION_61_1(&a18);
              v110 = v255;
              if (v205)
              {
                goto LABEL_64;
              }

LABEL_59:
              if (sub_1DC308358(v221))
              {
                v195 = v254;
                v196 = *(v254 + 16);
                v197 = v226;
                v198 = v256;
                v196(v226, v152 + v167, v256);
                v199 = (*(v195 + 88))(v197, v198);
                v200 = *MEMORY[0x1E69D02E0];
                (*(v195 + 8))(v197, v198);
                sub_1DC517B9C();
                v201 = sub_1DC2BE518();
                sub_1DC516F0C();

                if (v199 == v200)
                {
                  v202 = v255;
                  v170 = v256;
                  v196(v255, v152 + v167, v256);
                  v110 = v202;
                }

                else
                {
                  sub_1DC2EBBA0(&qword_1ECC7C1E8, MEMORY[0x1E69D0618]);
                  sub_1DC51502C();
                  swift_getKeyPath();
                  v212 = sub_1DC514FCC();

                  v213 = v191;
                  v214 = v223;
                  v215 = v222;
                  v216 = v224;
                  (*(v223 + 104))(v222, *MEMORY[0x1E69D0728], v224);
                  v212(v215);
                  OUTLINED_FUNCTION_78_0();
                  (*(v214 + 8))(v215, v216);
                  swift_getKeyPath();
                  v217 = sub_1DC514FCC();

                  sub_1DC515EBC();
                  sub_1DC2EBBA0(&qword_1ECC7C1F0, MEMORY[0x1E69D05E0]);
                  sub_1DC51502C();
                  sub_1DC51500C();

                  v219 = v240;
                  v218 = v241;
                  (*(v240 + 104))(v213, *MEMORY[0x1E69D0608], v241);
                  v217(v213);

                  (*(v219 + 8))(v213, v218);
                  v110 = v255;
                  sub_1DC51500C();

                  v170 = v256;
                  (*(v195 + 104))(v110, v200, v256);
                }

                v143 = 0;
                goto LABEL_67;
              }

              goto LABEL_64;
            }

            sub_1DC28EB30(v234, &qword_1ECC7C1D8, &qword_1DC529390);
            OUTLINED_FUNCTION_60_3();
            (*(v235 + 8))(v193, v183);
LABEL_58:
            sub_1DC28EB30(&qword_1ECC7C1D8, &qword_1ECC7C1D0, &qword_1DC522FB0);
            v110 = v255;
            goto LABEL_59;
          }

          sub_1DC28EB30(v184, &qword_1ECC7C1D8, &qword_1DC529390);
          OUTLINED_FUNCTION_60_3();
          OUTLINED_FUNCTION_3_0(&qword_1ECC7C1D8 + v188);
          v191 = v253;
          if (!v194)
          {
            goto LABEL_58;
          }

          sub_1DC28EB30(&qword_1ECC7C1D8, &qword_1ECC7C1D8, &qword_1DC529390);
          v110 = v255;
        }
      }
    }

LABEL_64:
    sub_1DC517B9C();
    v207 = OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    goto LABEL_65;
  }

  v221 = v109;
  v258 = v75;
  OUTLINED_FUNCTION_32_3();
  sub_1DC2E89AC(v92, v100);
  v111 = 0;
  v112 = *(v100 + 2);
  v113 = *(v112 + 16);
  v114 = (v78 + 8);
  v115 = v100;
  v116 = v258;
  while (1)
  {
    v259 = v113 == v111;
    if (v113 == v111)
    {
      goto LABEL_10;
    }

    if (v111 >= *(v112 + 16))
    {
      break;
    }

    v117 = *(v78 + 80);
    OUTLINED_FUNCTION_24();
    (*(v78 + 16))(v83, v112 + v118 + *(v78 + 72) * v111, v116);
    if (sub_1DC51191C())
    {
      (*v114)(v83, v116);
LABEL_10:
      OUTLINED_FUNCTION_2_9();
      sub_1DC2EADFC(v115, v120);
      v110 = v255;
      v109 = v221;
      goto LABEL_11;
    }

    ++v111;
    v119 = sub_1DC51195C();
    (*v114)(v83, v116);
    if (v119)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1DC2E80F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = sub_1DC510C8C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v39 = *v26;
  v40 = v26[1];
  v41 = *v24;
  v42 = v24[1];
  v43 = type metadata accessor for HeuristicRoutingRequest(0);
  sub_1DC28F358(v24 + *(v43 + 36), v32, &qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_11_6(v32);
  if (v44)
  {
    sub_1DC510B7C();
    OUTLINED_FUNCTION_11_6(v32);
    if (!v44)
    {
      sub_1DC28EB30(v32, &qword_1ECC7CD00, &unk_1DC5259F0);
    }
  }

  else
  {
    (*(v36 + 32))(v20, v32, v33);
  }

  sub_1DC32A2FC();
  v45 = *(v36 + 8);
  v46 = OUTLINED_FUNCTION_36();
  v47(v46);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2E82A4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_1DC51122C();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        sub_1DC2EBBE8(0, *(v18 + 16) + 1, 1);
        v20 = v35;
      }

      a3 = v16;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v29 = v22 + 1;
        v25 = v22;
        sub_1DC2EBBE8(v21 > 1, v22 + 1, 1);
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      *(v20 + 16) = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}