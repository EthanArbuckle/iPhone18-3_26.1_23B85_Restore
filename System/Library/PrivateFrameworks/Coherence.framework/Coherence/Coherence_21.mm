uint64_t sub_1ADF91530(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v68 = a2;
  v69 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v59 - v8;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB40, &qword_1AE24E078);
  v13 = *(*(v72 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for RetainedMapRun(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v59 - v29;
  v71 = v28;
  sub_1ADDCEE40(v4 + *(v28 + 36), v20, &qword_1EB5BA450, &unk_1AE25B3B0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    result = sub_1ADDCEDE0(v20, &qword_1EB5BA450, &unk_1AE25B3B0);
    v32 = *v4;
    if (*v4 <= a3)
    {
      v33 = v71;
      v34 = *(v22 + 56);
      result = v34(&v30[*(v71 + 36)], 1, 1, v21);
      *v30 = v32;
      *(v30 + 1) = a3;
      v35 = v4[1];
      if (v35 >= a3)
      {
        v36 = *(v33 + 36);
        v37 = v68;
        v34(v68 + v36, 1, 1, v21);
        *v37 = a3;
        v37[1] = v35;
        return sub_1ADDD2198(v30, v69, &qword_1EB5BA148, &qword_1AE241B60);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v63 = v21;
  result = sub_1ADDDE5A8(v20, v25, type metadata accessor for RetainedMapRun);
  v38 = *v4;
  v62 = a3;
  v39 = a3 - v38;
  if (__OFSUB__(a3, v38))
  {
    goto LABEL_15;
  }

  v61 = v4;
  v40 = v70;
  v41 = v70 + *(v72 + 48);
  sub_1ADDCEE40(v25, v9, &qword_1EB5BA460, &qword_1AE251020);
  v43 = v66;
  v42 = v67;
  if ((*(v66 + 48))(v9, 1, v67) == 1)
  {
    sub_1ADDCEDE0(v9, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDF8098(v25, v40, type metadata accessor for RetainedMapRun);
    sub_1ADDF8098(v25, v41, type metadata accessor for RetainedMapRun);
    goto LABEL_10;
  }

  v60 = v39;
  v44 = v64;
  sub_1ADDDE5A8(v9, v64, type metadata accessor for FinalizedTimestamp);
  sub_1ADDF8098(v25, v40, type metadata accessor for RetainedMapRun);
  v45 = sub_1AE23BFEC();
  (*(*(v45 - 8) + 16))(v41, v44, v45);
  v46 = *(v44 + v42[5]);
  result = sub_1ADDE5360(v44, type metadata accessor for FinalizedTimestamp);
  if (!__OFADD__(v46, v60))
  {
    *(v41 + v42[5]) = v46 + v60;
    (*(v43 + 56))(v41, 0, 1, v42);
    *(v41 + *(v63 + 20)) = *&v25[*(v63 + 20)];
LABEL_10:
    result = sub_1ADDE5360(v25, type metadata accessor for RetainedMapRun);
    v47 = v62;
    if (v38 <= v62)
    {
      v48 = v71;
      v49 = *(v71 + 36);
      v50 = v65;
      sub_1ADDCEE40(v40, v65, &qword_1EB5BBB40, &qword_1AE24E078);
      v51 = v72;
      v52 = *(v72 + 48);
      sub_1ADDDE5A8(v50, &v30[v49], type metadata accessor for RetainedMapRun);
      v53 = v63;
      v67 = *(v22 + 56);
      (v67)(&v30[v49], 0, 1, v63);
      *v30 = v38;
      *(v30 + 1) = v47;
      v54 = v50;
      result = sub_1ADDE5360(v50 + v52, type metadata accessor for RetainedMapRun);
      v55 = v61[1];
      if (v55 >= v47)
      {
        v56 = *(v48 + 36);
        sub_1ADDD2198(v70, v50, &qword_1EB5BBB40, &qword_1AE24E078);
        v57 = v50 + *(v51 + 48);
        v58 = v68;
        sub_1ADDDE5A8(v57, v68 + v56, type metadata accessor for RetainedMapRun);
        (v67)(v58 + v56, 0, 1, v53);
        *v58 = v47;
        v58[1] = v55;
        sub_1ADDE5360(v54, type metadata accessor for RetainedMapRun);
        return sub_1ADDD2198(v30, v69, &qword_1EB5BA148, &qword_1AE241B60);
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF91C08()
{
  v1 = type metadata accessor for Timestamp(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v5 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  sub_1ADDF8098(v0 + v5, v4, type metadata accessor for Timestamp);
  if (*&v4[*(type metadata accessor for Replica() + 20)])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
    v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
    v7 = *(*v6 + 72);
    v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AE2418F0;
    v10 = v6[14];
    sub_1ADDF8098(v4, v9 + v8, type metadata accessor for Replica);
    v11 = *&v4[*(v1 + 20)];
    sub_1AE23C09C();
    sub_1ADF8D9C4(v9, &unk_1F23C0E20, sub_1ADF9377C, &block_descriptor_15);
  }

  sub_1ADDE5360(v4, type metadata accessor for Timestamp);
  sub_1ADDE5360(v0 + v5, type metadata accessor for Timestamp);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRTimestampRef()
{
  result = qword_1EB5BBB20;
  if (!qword_1EB5BBB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADF91EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ADDF8098(a1, a2, type metadata accessor for Timestamp);
  *(a2 + *(type metadata accessor for Replica() + 20));
  sub_1ADDD8290(a2);

  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v3 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  sub_1ADF833C4(v5, v6, v7);
}

uint64_t sub_1ADF91FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  result = swift_beginAccess();
  if (*(v9 + *(v5 + 28)))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v9 + *(type metadata accessor for Timestamp(0) + 20));
    sub_1ADDF8098(v9, v8, type metadata accessor for Replica);
    v12 = sub_1ADDF66A8(v8);
    v13 = sub_1AE23BFEC();
    (*(*(v13 - 8) + 8))(v8, v13);
    result = sub_1ADE71C08();
    if (!v2)
    {
      swift_beginAccess();

      sub_1AE1B6B44(v12, v11);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1ADF9217C(uint64_t a1)
{
  v43 = a1;
  v2 = type metadata accessor for Timestamp(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = *v1;
  v13 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  sub_1ADDF8098(v12 + v13, v11, type metadata accessor for Timestamp);
  v14 = type metadata accessor for Replica();
  v15 = *&v11[*(v14 + 20)];
  result = sub_1ADDE5360(v11, type metadata accessor for Timestamp);
  if (v15 >= 1)
  {
    v17 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v1;
    v20 = &unk_1ED96B000;
    v21 = &unk_1ED96F000;
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = *v1;
    }

    else
    {
      v23 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
      swift_beginAccess();
      sub_1ADDF8098(v19 + v23, v8, type metadata accessor for Timestamp);
      v24 = type metadata accessor for CRTimestampRef();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v22 = swift_allocObject();
      v20 = &unk_1ED96B000;
      sub_1ADDF8098(v8, v22 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp, type metadata accessor for Timestamp);
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      if (*&v8[*(v14 + 20)])
      {
        v42 = qword_1ED96F2F8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
        v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
        v28 = *(*v27 + 72);
        v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1AE2418F0;
        v31 = v27[14];
        sub_1ADDF8098(v8, v30 + v29, type metadata accessor for Replica);
        v32 = *&v8[*(v2 + 20)];
        sub_1AE23C09C();
        sub_1ADF8D9C4(v30, &unk_1F23C0D80, sub_1ADF92ED0, &block_descriptor_6);
        v20 = &unk_1ED96B000;
      }

      sub_1ADDE5360(v8, type metadata accessor for Timestamp);

      *v1 = v22;
      v21 = &unk_1ED96F000;
    }

    v47 = MEMORY[0x1E69E7CC8];
    v48 = MEMORY[0x1E69E7CC8];
    v33 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
    swift_beginAccess();
    sub_1ADDF8098(v22 + v33, v5, type metadata accessor for Timestamp);
    *&v5[*(v14 + 20)];
    sub_1ADDD8290(v5);
    v34 = sub_1ADDE5360(v5, type metadata accessor for Timestamp);
    if (v20[97] != -1)
    {
      v34 = swift_once();
    }

    v35 = v47;
    v36 = v48;
    v37 = *(v21[95] + 40);
    MEMORY[0x1EEE9AC00](v34);
    *(&v42 - 4) = v35;
    *(&v42 - 3) = v36;
    *(&v42 - 2) = v38;
    *(&v42 - 1) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v39 = v44;
    v40 = v45;
    v41 = v46;
    swift_beginAccess();
    sub_1ADF833C4(v39, v40, v41);
    swift_endAccess();
  }

  return result;
}

void sub_1ADF92678()
{
  sub_1AE23E31C();
  sub_1AE23DC5C();
  __break(1u);
}

void sub_1ADF9271C()
{
  sub_1AE23E31C();
  sub_1AE23DC5C();
  __break(1u);
}

BOOL sub_1ADF9277C()
{
  v1 = *v0 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for Replica() + 20)) > 0;
}

uint64_t sub_1ADF927E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADF933BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1ADF9282C()
{
  result = qword_1EB5BBB30;
  if (!qword_1EB5BBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB30);
  }

  return result;
}

unint64_t sub_1ADF92880(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1ADDE2A5C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1ADF92954(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1ADF92954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1ADDCEDE0(a4, &qword_1EB5BBB38, &qword_1AE24E070);
  }

  if (v17 < 1)
  {
    return sub_1ADDCEDE0(a4, &qword_1EB5BBB38, &qword_1AE24E070);
  }

  result = sub_1ADDCEE40(a4, v15, &qword_1EB5BA148, &qword_1AE241B60);
  if (v12 >= v17)
  {
    return sub_1ADDCEDE0(a4, &qword_1EB5BBB38, &qword_1AE24E070);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1ADF92AF0(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for Timestamp(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = a1 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  v23 = type metadata accessor for Replica();
  v24 = *(v22 + *(v23 + 20));
  v25 = a2 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  if (v24 > 0 == *(v25 + *(v23 + 20)) < 1)
  {
    v27 = v33;
    if (v24 < 1)
    {
      sub_1ADDF8098(v25, v12, type metadata accessor for Timestamp);
      v21 = v30;
      sub_1ADF91EE8(v12, v30);
      sub_1ADDE5360(v12, type metadata accessor for Timestamp);
      v28 = v31;
      sub_1ADDF8098(v22, v31, type metadata accessor for Timestamp);
      if (*&v21[*(v27 + 20)] == *(v28 + *(v27 + 20)) && *&v21[*(v23 + 20)] == *(v28 + *(v23 + 20)))
      {
        v26 = sub_1AE23BF8C();
      }

      else
      {
        v26 = 0;
      }

      v18 = v28;
    }

    else
    {
      sub_1ADDF8098(v22, v12, type metadata accessor for Timestamp);
      sub_1ADF91EE8(v12, v15);
      sub_1ADDE5360(v12, type metadata accessor for Timestamp);
      v18 = v32;
      sub_1ADDF8098(v25, v32, type metadata accessor for Timestamp);
      if (*&v15[*(v27 + 20)] == *&v18[*(v27 + 20)] && *&v15[*(v23 + 20)] == *&v18[*(v23 + 20)])
      {
        v26 = sub_1AE23BF8C();
        v21 = v15;
      }

      else
      {
        v26 = 0;
        v21 = v15;
      }
    }
  }

  else
  {
    sub_1ADDF8098(v22, v21, type metadata accessor for Timestamp);
    sub_1ADDF8098(v25, v18, type metadata accessor for Timestamp);
    if (*&v21[*(v33 + 20)] == *&v18[*(v33 + 20)] && *&v21[*(v23 + 20)] == *&v18[*(v23 + 20)])
    {
      v26 = sub_1AE23BF8C();
    }

    else
    {
      v26 = 0;
    }
  }

  sub_1ADDE5360(v18, type metadata accessor for Timestamp);
  sub_1ADDE5360(v21, type metadata accessor for Timestamp);
  return v26 & 1;
}

unint64_t sub_1ADF92ED8()
{
  result = qword_1ED96AA50;
  if (!qword_1ED96AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA50);
  }

  return result;
}

uint64_t sub_1ADF92F3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ADF92FA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = type metadata accessor for Timestamp(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - v10;
  v12 = type metadata accessor for Replica();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 24);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v17 > a1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v31[1] = a3;
    v20 = sub_1AE23BFEC();
    (*(*(v20 - 8) + 16))(v15, v16 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * a1, v20);
    *&v15[*(v12 + 20)] = 0;
    sub_1ADDF8098(v15, v11, type metadata accessor for Replica);
    *&v11[*(v5 + 20)] = v32;
    sub_1ADDF8098(v11, v9, type metadata accessor for Timestamp);
    v21 = type metadata accessor for CRTimestampRef();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    a3 = swift_allocObject();
    sub_1ADDF8098(v9, a3 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp, type metadata accessor for Timestamp);
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    if (*&v9[*(v12 + 20)])
    {
      v32 = qword_1ED96F2F8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
      v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
      v25 = *(*v24 + 72);
      v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AE2418F0;
      v28 = v24[14];
      sub_1ADDF8098(v9, v27 + v26, type metadata accessor for Replica);
      v29 = *&v9[*(v5 + 20)];
      sub_1AE23C09C();
      sub_1ADF8D9C4(v27, &unk_1F23C0D80, sub_1ADF92ED0, &block_descriptor_6);
    }

    else
    {
    }

    sub_1ADDE5360(v9, type metadata accessor for Timestamp);
    sub_1ADDE5360(v11, type metadata accessor for Timestamp);
    sub_1ADDE5360(v15, type metadata accessor for Replica);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v19 = 0xD000000000000013;
    *(v19 + 8) = 0x80000001AE25FD70;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_1ADF933BC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
    if ((~v3 & 0xF000000000000007) != 0 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 9)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    return sub_1ADF92FA4(v5, v6, a1);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD000000000000017;
    *(v8 + 8) = 0x80000001AE25FB70;
    *(v8 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ADF934B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_1ADF9352C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF935FC(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1ADF936D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 2 * result + 2 * a3;
  v10 = (v6 + 32 + 2 * a2);
  if (result != v10 || result >= v10 + 2 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 2 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1ADF93784(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF93880()
{
  v1 = v0[2];

  v3 = v0[3];
  v2 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1ADF938F4()
{
  type metadata accessor for CRStructDecoder.KeyedContainer();

  swift_getWitnessTable();
  return sub_1AE23DD4C();
}

uint64_t sub_1ADF9397C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  v87 = a2;
  v83 = a6;
  v12 = sub_1AE23D7CC();
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v80 - v14;
  v86 = a4;
  v85 = *(a4 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AE23E3DC();
  if (v21)
  {
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](544826699, 0xE400000000000000);
    v22 = *(a5 + 16);
    sub_1AE23DFDC();
    v23 = 0xD000000000000018;
    v24 = 0x80000001AE261770;
LABEL_3:
    MEMORY[0x1B26FB670](v23, v24);
    v25 = v88;
    v26 = v89;
    sub_1ADE42E40();
    swift_allocError();
    *v27 = v25;
    *(v27 + 8) = v26;
LABEL_4:
    *(v27 + 16) = 0;
    return swift_willThrow();
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v82 = v6;
    v28 = v20;
    result = swift_conformsToProtocol2();
    if (result && a1)
    {
      v30 = v87[3];
      v31 = *(v30 + 16);
      if (!v31)
      {
LABEL_12:
        v87 = v80;
        v34 = *(*(a1 - 8) + 64);
        v35 = MEMORY[0x1EEE9AC00](result);
        v37 = v82;
        (*(v36 + 40))(a1, v35);
        if (v37)
        {

          (*(v85 + 56))(v15, 1, 1, v86);
        }

        else
        {
          v75 = v86;
          v76 = swift_dynamicCast();
          v77 = v85;
          (*(v85 + 56))(v15, v76 ^ 1u, 1, v75);
          if ((*(v77 + 48))(v15, 1, v75) != 1)
          {
            v79 = *(v77 + 32);
            v79(v19, v15, v75);
            return (v79)(v83, v19, v75);
          }
        }

        (*(v84 + 8))(v15, v12);
        v88 = 0;
        v89 = 0xE000000000000000;
        sub_1AE23DA2C();
        MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE261790);
        v78 = *(a5 + 16);
        sub_1AE23DFDC();
        v24 = 0x80000001AE2617B0;
        v23 = 0xD000000000000012;
        goto LABEL_3;
      }

      v32 = 0;
      v33 = v30 + 32;
      while (*(v33 + 8 * v32) != v28)
      {
        if (v31 == ++v32)
        {
          goto LABEL_12;
        }
      }

      v68 = v87[4];
      if (v32 >= *(v68 + 16))
      {
        goto LABEL_54;
      }

      v69 = result;
      v70 = *(v68 + 8 * v32 + 32);
      v71 = v87[2];
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v72 = sub_1ADE0262C(v70, v71);

      v73 = *(v69 + 8);
      v90 = a1;
      v91 = v69;
      __swift_allocate_boxed_opaque_existential_1(&v88);
      v74 = v82;
      v73(v72, a1, v69);

      if (v74)
      {
        return __swift_deallocate_boxed_opaque_existential_0(&v88);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
      return swift_dynamicCast();
    }

LABEL_38:
    sub_1ADE42E40();
    swift_allocError();
    *v67 = xmmword_1AE24E080;
    *(v67 + 16) = 4;
    return swift_willThrow();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_38;
  }

  v39 = swift_conformsToProtocol2();
  if (!v39 || !a3)
  {
    goto LABEL_38;
  }

  v40 = (*(v39 + 8))(a3, v39);
  v41 = v40;
  v42 = v87;
  v43 = v87[3];
  v44 = *(v43 + 16);
  if (!v44)
  {
    v48 = MEMORY[0x1E69E7CC8];
LABEL_47:

    v88 = v48;
    return swift_dynamicCast();
  }

  v80[1] = v38;
  v45 = v43 + 32;
  v46 = v40 + 56;

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC8];
  while (v47 < *(v43 + 16))
  {
    v49 = *(v45 + 8 * v47);
    if (v49 < 0)
    {
      goto LABEL_53;
    }

    if (*(v41 + 16))
    {
      v50 = *(v41 + 40);
      v51 = *(v45 + 8 * v47);
      result = sub_1AE23E30C();
      v52 = -1 << *(v41 + 32);
      v53 = result & ~v52;
      if ((*(v46 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
      {
        v54 = ~v52;
        v42 = v87;
        while (*(*(v41 + 48) + 8 * v53) != v49)
        {
          v53 = (v53 + 1) & v54;
          if (((*(v46 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_36;
      }

      v42 = v87;
    }

LABEL_28:
    v55 = v42[3];
    v56 = *(v55 + 16);
    if (!v56)
    {
LABEL_45:

      sub_1ADE42E40();
      swift_allocError();
      *v27 = 0xD00000000000001ELL;
      *(v27 + 8) = 0x80000001AE2617D0;
      goto LABEL_4;
    }

    v57 = 0;
    v58 = v55 + 32;
    while (*(v58 + 8 * v57) != v49)
    {
      if (v56 == ++v57)
      {
        goto LABEL_45;
      }
    }

    v84 = v41;
    v85 = v43;
    v81 = v45;
    v82 = v44;
    v59 = v42[4];
    if (v57 >= *(v59 + 16))
    {
      goto LABEL_55;
    }

    v60 = v48;
    v61 = v7;
    v62 = *(v59 + 8 * v57 + 32);
    v63 = v42[2];
    type metadata accessor for CRDecoder();
    swift_allocObject();
    swift_retain_n();

    sub_1ADE0262C(v62, v63);

    AnyCRValue.init(from:)(v64, &v88);
    if (v61)
    {
    }

    v65 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v60;
    sub_1ADEC004C(v65, v49, isUniquelyReferenced_nonNull_native);

    v7 = 0;
    v48 = v92;
    v42 = v87;
    v41 = v84;
    v43 = v85;
    v45 = v81;
    v44 = v82;
LABEL_36:
    if (++v47 == v44)
    {

      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1ADF941DC(uint64_t a1, uint64_t a2)
{
  result = sub_1AE23E3DC();
  if (v4)
  {
    return 1;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v6 = *(a2 + 24);
    v7 = *(v6 + 16);
    v8 = (v6 + 32);
    do
    {
      v5 = v7 == 0;
      if (!v7)
      {
        break;
      }

      v9 = *v8++;
      --v7;
    }

    while (v9 != result);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF94288@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = &type metadata for CRStructDecoder.UnkeyedContainer;
  a2[4] = sub_1ADF96EE4();
  *a2 = a1;
  a2[1] = 0;
}

uint64_t sub_1ADF942DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructDecoder();
  a2[4] = sub_1ADF96FB4();
  *a2 = a1;
}

uint64_t sub_1ADF9432C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructDecoder();
  a2[4] = sub_1ADF96FB4();
  *a2 = a1;
}

uint64_t sub_1ADF94388(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1ADF97008();
}

uint64_t sub_1ADF94394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1ADF941DC(a1, *v2) & 1;
}

uint64_t sub_1ADF943BC(uint64_t a1, uint64_t a2)
{
  sub_1ADF9397C(MEMORY[0x1E69E6370], *v2, *(a2 + 16), MEMORY[0x1E69E6370], *(a2 + 24), &v6);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_1ADF94414(uint64_t a1, uint64_t a2)
{
  result = sub_1ADF9397C(MEMORY[0x1E69E6158], *v2, *(a2 + 16), MEMORY[0x1E69E6158], *(a2 + 24), &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_1ADF94468(uint64_t a1, uint64_t a2)
{
  sub_1ADF9397C(MEMORY[0x1E69E63B0], *v2, *(a2 + 16), MEMORY[0x1E69E63B0], *(a2 + 24), &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_1ADF944BC(uint64_t a1, uint64_t a2)
{
  sub_1ADF9397C(MEMORY[0x1E69E6448], *v2, *(a2 + 16), MEMORY[0x1E69E6448], *(a2 + 24), &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ADF94640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADF9397C(a4, *v4, *(a2 + 16), a4, *(a2 + 24), &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ADF946B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADF9397C(a4, *v4, *(a2 + 16), a4, *(a2 + 24), &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ADF94728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADF9397C(a4, *v4, *(a2 + 16), a4, *(a2 + 24), &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ADF9479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADF9397C(a4, *v4, *(a2 + 16), a4, *(a2 + 24), &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ADF9485C()
{
  result = sub_1AE23E0DC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF948AC()
{
  result = sub_1AE23E0EC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF94954()
{
  result = sub_1AE23E11C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF949A4()
{
  result = sub_1AE23E0FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF94AE4()
{
  result = sub_1AE23E12C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF94B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ADF94B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  return sub_1ADF9425C();
}

uint64_t sub_1ADF94BB8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ADF94288(*v2, a2);
}

uint64_t sub_1ADF94BDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ADF942DC(*v2, a2);
}

uint64_t sub_1ADF94C00@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ADF9432C(*v2, a2);
}

BOOL sub_1ADF94C24(_BOOL8 result)
{
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v5 = sub_1ADE0262C(v3, v4);

    if (*(v5 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      *(swift_initStackObject() + 16) = v5;
      sub_1ADDF4474();
      v7 = v6;

      if (!v1)
      {
        return v7 != 0;
      }
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v9 = 0xD000000000000017;
      *(v9 + 8) = 0x80000001AE25FB70;
      *(v9 + 16) = 0;
      swift_willThrow();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ADF94D64(unint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v3 = v1;
    v4 = *(v2 + 32);
    v5 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v6 = sub_1ADE0262C(v4, v5);

    if (*(v6 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      *(swift_initStackObject() + 16) = v6;
      sub_1ADE05C74();
      if (!v1)
      {
        v3 = v7;

        return v3;
      }
    }

    else
    {
      v3 = 0x80000001AE25FB70;
      sub_1ADE42E40();
      swift_allocError();
      *v8 = 0xD000000000000017;
      *(v8 + 8) = 0x80000001AE25FB70;
      *(v8 + 16) = 0;
      swift_willThrow();
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF94EAC(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v4 = sub_1ADE0262C(v2, v3);

    if (*(v4 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      *(swift_initStackObject() + 16) = v4;
      sub_1ADE08CAC();
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v5 = 0xD000000000000017;
      *(v5 + 8) = 0x80000001AE25FB70;
      *(v5 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF94FEC(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v4 = sub_1ADE0262C(v2, v3);

    if (*(v4 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      *(swift_initStackObject() + 16) = v4;
      sub_1ADE71F8C();
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v5 = 0xD000000000000017;
      *(v5 + 8) = 0x80000001AE25FB70;
      *(v5 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1ADF9512C(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 16))
    {
      v7 = result;
      v8 = *(v6 + 32);
      v9 = *(a1 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v10 = sub_1ADE0262C(v8, v9);

      v11 = *(v7 + 8);
      v13[3] = a2;
      v13[4] = v7;
      __swift_allocate_boxed_opaque_existential_1(v13);
      v11(v10, a2, v7);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v13);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        swift_dynamicCast();
        return v14;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = xmmword_1AE24E080;
    *(v12 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1ADF952BC(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 16))
    {
      v7 = result;
      v8 = *(v6 + 32);
      v9 = *(a1 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v10 = sub_1ADE0262C(v8, v9);

      v11 = *(v7 + 8);
      v13[3] = a2;
      v13[4] = v7;
      __swift_allocate_boxed_opaque_existential_1(v13);
      v11(v10, a2, v7);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v13);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        swift_dynamicCast();
        return v14;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = xmmword_1AE24E080;
    *(v12 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1ADF9544C(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 16))
    {
      v7 = result;
      v8 = *(v6 + 32);
      v9 = *(a1 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v10 = sub_1ADE0262C(v8, v9);

      v11 = *(v7 + 8);
      v13[3] = a2;
      v13[4] = v7;
      __swift_allocate_boxed_opaque_existential_1(v13);
      v11(v10, a2, v7);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v13);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        swift_dynamicCast();
        return v14;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = xmmword_1AE24E080;
    *(v12 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADF955DC(uint64_t result, uint64_t (*a2)(void))
{
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v4 = *(v2 + 32);
    v5 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v6 = sub_1ADE0262C(v4, v5);

    if (*(v6 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      *(swift_initStackObject() + 16) = v6;
      v7 = a2();
    }

    else
    {
      v7 = 0x80000001AE25FB70;
      sub_1ADE42E40();
      swift_allocError();
      *v8 = 0xD000000000000017;
      *(v8 + 8) = 0x80000001AE25FB70;
      *(v8 + 16) = 0;
      swift_willThrow();
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1ADF9571C(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    v6 = *(a2 + 32);
    if (*(v6 + 16))
    {
      v7 = result;
      v8 = *(v6 + 32);
      v9 = *(a2 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v10 = sub_1ADE0262C(v8, v9);

      v11 = *(v7 + 8);
      v13[3] = a1;
      v13[4] = v7;
      __swift_allocate_boxed_opaque_existential_1(v13);
      v11(v10, a1, v7);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v13);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        return swift_dynamicCast();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = xmmword_1AE24E080;
    *(v12 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

void sub_1ADF95A58()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(*v0 + 32);
  if (v1 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v0[1] = v1 + 1;
  v5 = *(v2 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v6 = sub_1ADE0262C(v4, v5);

  if (*(v6 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v6;
    sub_1ADDF4474();
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v7 = 0xD000000000000017;
    *(v7 + 8) = 0x80000001AE25FB70;
    *(v7 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADF95BB8()
{
  v2 = v0[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *v0;
  v4 = *(*v0 + 32);
  if (v2 >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *(v4 + 8 * v2 + 32);
  v0[1] = v2 + 1;
  v6 = *(v3 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v7 = sub_1ADE0262C(v5, v6);

  if (*(v7 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v7;
    sub_1ADE05C74();
    if (!v1)
    {

      return;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD000000000000017;
    *(v8 + 8) = 0x80000001AE25FB70;
    *(v8 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADF95D20()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(*v0 + 32);
  if (v1 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v0[1] = v1 + 1;
  v5 = *(v2 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v6 = sub_1ADE0262C(v4, v5);

  if (*(v6 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v6;
    sub_1ADE08CAC();
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v7 = 0xD000000000000017;
    *(v7 + 8) = 0x80000001AE25FB70;
    *(v7 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADF95E80()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(*v0 + 32);
  if (v1 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v0[1] = v1 + 1;
  v5 = *(v2 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v6 = sub_1ADE0262C(v4, v5);

  if (*(v6 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v6;
    sub_1ADE71F8C();
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v7 = 0xD000000000000017;
    *(v7 + 8) = 0x80000001AE25FB70;
    *(v7 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t *sub_1ADF95FE0(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }

  v5 = v1[1];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *v1;
  v7 = *(*v1 + 32);
  if (v5 >= *(v7 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v7 + 8 * v5 + 32);
  v1[1] = v5 + 1;
  v10 = *(v6 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v11 = sub_1ADE0262C(v9, v10);

  v12 = *(v8 + 8);
  v14[3] = a1;
  v14[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v14);
  v12(v11, a1, v8);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  swift_dynamicCast();
  return v15;
}

uint64_t *sub_1ADF96188(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }

  v5 = v1[1];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *v1;
  v7 = *(*v1 + 32);
  if (v5 >= *(v7 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v7 + 8 * v5 + 32);
  v1[1] = v5 + 1;
  v10 = *(v6 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v11 = sub_1ADE0262C(v9, v10);

  v12 = *(v8 + 8);
  v14[3] = a1;
  v14[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v14);
  v12(v11, a1, v8);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  swift_dynamicCast();
  return v15;
}

uint64_t *sub_1ADF96330(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }

  v5 = v1[1];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *v1;
  v7 = *(*v1 + 32);
  if (v5 >= *(v7 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v7 + 8 * v5 + 32);
  v1[1] = v5 + 1;
  v10 = *(v6 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v11 = sub_1ADE0262C(v9, v10);

  v12 = *(v8 + 8);
  v14[3] = a1;
  v14[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v14);
  v12(v11, a1, v8);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  swift_dynamicCast();
  return v15;
}

uint64_t (*sub_1ADF964D8(uint64_t (*result)(void)))(void)
{
  v2 = v1[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *v1;
  v4 = *(*v1 + 32);
  if (v2 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(v4 + 8 * v2 + 32);
  v1[1] = v2 + 1;
  v7 = *(v3 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v8 = sub_1ADE0262C(v6, v7);

  if (*(v8 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v8;
    v9 = v5();
  }

  else
  {
    v9 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001AE25FB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t *sub_1ADF96638(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result || !a1)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }

  v5 = v1[1];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *v1;
  v7 = *(*v1 + 32);
  if (v5 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v7 + 8 * v5 + 32);
  v1[1] = v5 + 1;
  v10 = *(v6 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v11 = sub_1ADE0262C(v9, v10);

  v12 = *(v8 + 8);
  v14[3] = a1;
  v14[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v14);
  v12(v11, a1, v8);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  return swift_dynamicCast();
}

uint64_t sub_1ADF969EC()
{
  result = sub_1AE23DDDC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96A3C()
{
  result = sub_1AE23DDEC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96AE4()
{
  result = sub_1AE23DE1C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96B34()
{
  result = sub_1AE23DDFC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96C74()
{
  result = sub_1AE23DE2C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ADF96D1C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1ADF967F0();
}

uint64_t sub_1ADF96D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
  a3[1] = v5;
}

uint64_t sub_1ADF96D68@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for CRStructDecoder();
  a1[4] = sub_1ADF96FB4();
  *a1 = v3;
}

uint64_t sub_1ADF96DE8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for CRStructDecoder.UnkeyedContainer;
  a1[4] = sub_1ADF96EE4();
  *a1 = v3;
  a1[1] = 0;
}

uint64_t sub_1ADF96E3C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for CRStructDecoder.SingleValueContainer;
  a1[4] = sub_1ADF96E90();
  *a1 = v3;
}

unint64_t sub_1ADF96E90()
{
  result = qword_1EB5BBB48;
  if (!qword_1EB5BBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB48);
  }

  return result;
}

unint64_t sub_1ADF96EE4()
{
  result = qword_1EB5BBB50;
  if (!qword_1EB5BBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB50);
  }

  return result;
}

uint64_t sub_1ADF96F50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1ADF96FB4()
{
  result = qword_1ED9692A0[0];
  if (!qword_1ED9692A0[0])
  {
    type metadata accessor for CRStructDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9692A0);
  }

  return result;
}

__n128 sub_1ADF97074(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  *(v2 + 16) = *a1;
  return result;
}

uint64_t sub_1ADF970AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v42 = *(a2 + 16);
  v43 = *(a1 + 16);
  if (v42 >= v43)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE6F254(0, v5, 0);
  v7 = v50;
  v44 = v5;
  v38 = a1;
  v40 = a2;
  if (v5)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 48);
    while (1)
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v14 = *v8++;
      v13 = v14;

      result = sub_1ADDD86D8(v11, v12);
      if (!v10)
      {
        break;
      }

      v15 = a3(&v48, v10, v11, v12, v13);
      if (v47)
      {

        sub_1ADDCC35C(v11, v12);
        return v7;
      }

      v16 = v15;
      v49 = v15;

      result = sub_1ADDCC35C(v11, v12);
      v17 = v48;
      v50 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        v37 = v48;
        result = sub_1ADE6F254((v18 > 1), v19 + 1, 1);
        v17 = v37;
        v7 = v50;
      }

      v9 += 3;
      *(v7 + 16) = v19 + 1;
      v20 = v7 + 24 * v19;
      *(v20 + 32) = v17;
      *(v20 + 48) = v16;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v22 = v42;
    v21 = v43;
    if (v43 <= v42)
    {
      return v7;
    }

    v41 = v40 + 32;
    v23 = v44;
    v24 = (v38 + 24 * v44 + 48);
    v25 = v47;
    while (v23 < v21)
    {
      if (__OFADD__(v23, 1))
      {
        goto LABEL_27;
      }

      if (v22 == v23)
      {
        return v7;
      }

      if (v23 >= v22)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_29;
      }

      v45 = v23 + 1;
      v26 = *(v24 - 2);
      v27 = *(v24 - 1);
      v28 = *v24;
      v29 = v23;
      v30 = *(v41 + 8 * v23);

      sub_1ADDD86D8(v27, v28);
      v31 = a3(&v48, v26, v27, v28, v30);
      if (v25)
      {

        sub_1ADDCC35C(v27, v28);

        return v7;
      }

      v32 = v31;

      result = sub_1ADDCC35C(v27, v28);
      v49 = v32;
      v33 = v48;
      v50 = v7;
      v35 = *(v7 + 16);
      v34 = *(v7 + 24);
      if (v35 >= v34 >> 1)
      {
        v39 = v48;
        result = sub_1ADE6F254((v34 > 1), v35 + 1, 1);
        v33 = v39;
        v7 = v50;
      }

      *(v7 + 16) = v35 + 1;
      v36 = v7 + 24 * v35;
      *(v36 + 32) = v33;
      *(v36 + 48) = v32;
      v23 = v29 + 1;
      v24 += 3;
      v21 = v43;
      v25 = 0;
      v22 = v42;
      if (v45 == v43)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF973C0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      *a1 = a3;
      a1[1] = a4;
      return a5;
    }

    if (a3 == a3 >> 32)
    {
      goto LABEL_10;
    }

LABEL_11:
    v8 = a1;
    v9 = a4;
    v10 = a3;
    sub_1ADDD86D8(a3, a4);
    a1 = v8;
    a3 = v10;
    a4 = v9;
    goto LABEL_12;
  }

  if (v6 != 2)
  {
LABEL_8:
    sub_1ADDCC35C(a3, a4);
    goto LABEL_10;
  }

  if (*(a3 + 16) != *(a3 + 24))
  {
    goto LABEL_11;
  }

LABEL_10:
  sub_1ADE42E40();
  swift_allocError();
  *v7 = 0xD000000000000016;
  *(v7 + 8) = 0x80000001AE25FC80;
  *(v7 + 16) = 0;
  swift_willThrow();
  return a5;
}

BOOL sub_1ADF974C4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1ADF65450(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1ADF655B8(v2, v3);
}

uint64_t sub_1ADF976EC()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 104))(v3);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF97794()
{
  sub_1AE23E31C();
  (*(**v0 + 104))(v2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF978CC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);
  type metadata accessor for TypedReference();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    v4 = 0;
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v5 = 0xF000000000000000;
LABEL_6:
    sub_1ADDD86D8(v6, v7);
    if (v7 >> 60 == 15)
    {
      sub_1ADDE1588(v4, v5);
      return 1;
    }

    goto LABEL_8;
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1ADDD86D8(v4, v5);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (v5 >> 60 == 15)
  {
    goto LABEL_6;
  }

  sub_1ADDD86D8(*(v0 + 16), *(v0 + 24));
  if (v7 >> 60 == 15)
  {
    sub_1ADDE0F78(v4, v5);
    sub_1ADDCC35C(v4, v5);
LABEL_8:
    sub_1ADDE1588(v4, v5);
    sub_1ADDE1588(v6, v7);
    return 0;
  }

  sub_1ADDD86D8(v6, v7);
  sub_1ADDE0F78(v4, v5);
  sub_1ADDE0F78(v4, v5);
  sub_1ADDE0F78(v6, v7);
  v9 = sub_1ADDD6F8C(v4, v5, v6, v7);
  sub_1ADDE1588(v6, v7);
  sub_1ADDE1588(v6, v7);
  sub_1ADDCC35C(v6, v7);
  sub_1ADDE1588(v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDE1588(v4, v5);
  return v9 & 1;
}

uint64_t sub_1ADF97A80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1ADDD86D8(v2, v1);
  sub_1AE23BECC();

  return sub_1ADDCC35C(v2, v1);
}

uint64_t sub_1ADF97AE0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = *(*v2 + 144);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - v7;
  v10 = *(*(*(v9 + 152) + 16) + 8);
  v11 = *(v10 + 8);

  result = v11(v12, v5, v10);
  if (!v3)
  {
    return sub_1ADDD9FE4(v8, v5, a2);
  }

  return result;
}

BOOL sub_1ADF97BD4(uint64_t a1)
{
  v2 = *v1;
  (*(**a1 + 88))(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return DynamicType == *(v2 + 144);
}

unint64_t sub_1ADF97D0C()
{
  result = qword_1EB5B9500;
  if (!qword_1EB5B9500)
  {
    type metadata accessor for AnyReference();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9500);
  }

  return result;
}

void sub_1ADF97D60(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
    goto LABEL_3;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];
  sub_1ADDD86D8(v8, v7);
  if (v7 >> 60 == 15)
  {
    goto LABEL_3;
  }

  v41 = v8;
  v42 = v7;
  v9 = *a3;
  v10 = sub_1ADDDE7CC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1ADE1D52C(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1ADDDE7CC(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v23 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v24 = (v23[6] + 16 * v10);
    *v24 = v8;
    v24[1] = v7;
    *(v23[7] + 8 * v10) = v6;
    v25 = v23[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v14)
    {
      v23[2] = v26;
      if (v40 == 1)
      {
LABEL_3:

        return;
      }

      v5 = a1 + 9;
      v6 = 1;
      while (v6 < a1[2])
      {
        v7 = *(v5 - 1);
        v27 = *v5;
        v8 = *(v5 - 2);
        sub_1ADDD86D8(v8, v7);
        if (v7 >> 60 == 15)
        {
          goto LABEL_3;
        }

        v41 = v8;
        v42 = v7;
        v28 = *a3;
        v29 = sub_1ADDDE7CC(v8, v7);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v14 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v30;
        if (v28[3] < v33)
        {
          sub_1ADE1D52C(v33, 1);
          v34 = *a3;
          v29 = sub_1ADDDE7CC(v8, v7);
          if ((v16 & 1) != (v35 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v36 = *a3;
        *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v8;
        v37[1] = v7;
        *(v36[7] + 8 * v29) = v27;
        v38 = v36[2];
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v6;
        v36[2] = v39;
        v5 += 3;
        if (v40 == v6)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = v10;
  sub_1ADF6F1AC();
  v10 = v22;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v6 = 0xD000000000000015;
  sub_1ADE42E40();
  v19 = swift_allocError();
  *v20 = 0xD000000000000015;
  *(v20 + 8) = 0x80000001AE2601D0;
  *(v20 + 16) = 0;
  swift_willThrow();
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ADDCC35C(v41, v42);

    return;
  }

LABEL_28:
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](v6 + 6, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADF9811C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  sub_1ADDD86D8(v3, v2);
}

uint64_t sub_1ADF98164(uint64_t *a1)
{
  v100[11] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E7CC0];
  sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);

  v98 = sub_1ADDD9ECC(v3);
  __dst[0] = 1;
  type metadata accessor for CRDecoder();
  swift_allocObject();
  sub_1ADE73CBC(a1, v100);
  sub_1ADE649D0(a1, __dst);
  if (v1)
  {

    sub_1ADE73C68(a1);

LABEL_4:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = *a1;
  v6 = a1[1];

  v8 = sub_1ADF970AC(v5, v6, sub_1ADF98C10);

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
    v9 = sub_1AE23DCDC();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  v100[0] = v9;
  sub_1ADF97D60(v8, 1, v100);
  v78 = v100[0];
  v99 = a1[4];
  v81 = v99;
  v10 = *(v99 + 16);
  v11 = sub_1ADE55498(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v77 = a1;
  if (v10)
  {
    v12 = 0;
    v86 = a1[3];
    v88 = a1[2];
    do
    {
      if (v12 == 0x7FFFFFFFFFFFFFE0)
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
      }

      if (v12 + 32 <= v12)
      {
        goto LABEL_78;
      }

      v13 = sub_1AE23BE7C();
      v100[3] = MEMORY[0x1E6969080];
      v100[4] = MEMORY[0x1E6969078];
      v100[0] = v13;
      v100[1] = v14;
      v15 = __swift_project_boxed_opaque_existential_1(v100, MEMORY[0x1E6969080]);
      v16 = *v15;
      v17 = v15[1];
      v18 = v17 >> 62;
      if ((v17 >> 62) > 1)
      {
        if (v18 == 2)
        {
          v22 = v11;
          v23 = *(v16 + 16);
          v24 = *(v16 + 24);
          v25 = sub_1AE23BB7C();
          if (v25)
          {
            v26 = v25;
            v27 = sub_1AE23BBAC();
            if (__OFSUB__(v23, v27))
            {
              goto LABEL_86;
            }

            v28 = (v23 - v27 + v26);
            v29 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_84;
            }
          }

          else
          {
            v28 = 0;
            v29 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_84;
            }
          }

          v35 = sub_1AE23BB9C();
          v16 = 0;
          if (v35 < v29)
          {
            v29 = v35;
          }

          v17 = 0xC000000000000000;
          v11 = v22;
          if (v28)
          {
            if (v29)
            {
              if (v29 >= 15)
              {
                goto LABEL_42;
              }

              memset(__dst, 0, sizeof(__dst));
              v97 = v29;
              memcpy(__dst, v28, v29);
              v16 = *__dst;
              v17 = v79 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v97 << 16)) << 32);
              v79 = v17;
            }
          }
        }
      }

      else if (v18)
      {
        v30 = (v16 >> 32) - v16;
        if (v16 >> 32 < v16)
        {
          goto LABEL_83;
        }

        v31 = sub_1AE23BB7C();
        if (v31)
        {
          v32 = v31;
          v33 = sub_1AE23BBAC();
          if (__OFSUB__(v16, v33))
          {
            goto LABEL_87;
          }

          v34 = (v16 - v33 + v32);
        }

        else
        {
          v34 = 0;
        }

        v36 = sub_1AE23BB9C();
        v16 = 0;
        if (v36 >= v30)
        {
          v29 = v30;
        }

        else
        {
          v29 = v36;
        }

        v17 = 0xC000000000000000;
        if (!v34 || !v29)
        {
          goto LABEL_50;
        }

        if (v29 >= 15)
        {
LABEL_42:
          v37 = sub_1AE23BBCC();
          v38 = *(v37 + 48);
          v39 = *(v37 + 52);
          swift_allocObject();
          v40 = sub_1AE23BB6C();
          v41 = v40;
          if (v29 >= 0x7FFFFFFF)
          {
            sub_1AE23BE2C();
            v16 = swift_allocObject();
            *(v16 + 16) = 0;
            *(v16 + 24) = v29;
            v17 = v41 | 0x8000000000000000;
          }

          else
          {
            v16 = v29 << 32;
            v17 = v40 | 0x4000000000000000;
          }

          goto LABEL_50;
        }

        memset(__dst, 0, sizeof(__dst));
        v97 = v29;
        memcpy(__dst, v34, v29);
        v16 = *__dst;
        v17 = v82 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v97 << 16)) << 32);
        v82 = v17;
      }

      else
      {
        __src = *v15;
        v91 = v17;
        v92 = BYTE2(v17);
        v93 = BYTE3(v17);
        v94 = BYTE4(v17);
        v95 = BYTE5(v17);
        if (BYTE6(v17))
        {
          if (BYTE6(v17) <= 0xEuLL)
          {
            memset(__dst, 0, sizeof(__dst));
            v97 = BYTE6(v17);
            memcpy(__dst, &__src, BYTE6(v17));
            v16 = *__dst;
            v17 = v84 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v97 << 16)) << 32);
            v84 = v17;
          }

          else
          {
            v19 = sub_1AE23BBCC();
            v20 = *(v19 + 48);
            v21 = *(v19 + 52);
            swift_allocObject();
            v16 = BYTE6(v17) << 32;
            v17 = sub_1AE23BB6C() | 0x4000000000000000;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0xC000000000000000;
        }
      }

LABEL_50:
      __swift_destroy_boxed_opaque_existential_1(v100);
      v43 = *(v11 + 2);
      v42 = *(v11 + 3);
      if (v43 >= v42 >> 1)
      {
        v11 = sub_1ADE55498((v42 > 1), v43 + 1, 1, v11);
      }

      *(v11 + 2) = v43 + 1;
      v44 = &v11[16 * v43];
      *(v44 + 4) = v16;
      *(v44 + 5) = v17;
      v12 += 32;
      --v10;
    }

    while (v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB60, &qword_1AE24E680);
  sub_1AE23CA3C();
  v80 = v11;
  v45 = *(v11 + 2);

  if (!v45)
  {
LABEL_74:

    sub_1ADF98C2C(&v99);
    sub_1ADE73C68(v77);
LABEL_76:
    result = v78;
    goto LABEL_4;
  }

  v46 = 0;
  v47 = v98;
  v48 = (v80 + 40);
  while (1)
  {
    if (v46 >= *(v80 + 2))
    {
      goto LABEL_79;
    }

    v52 = *(v48 - 1);
    v51 = *v48;
    v53 = *(v81 + 16);
    if (v46 == v53)
    {
      sub_1ADDD86D8(*(v48 - 1), *v48);

      sub_1ADF98C2C(&v99);
      sub_1ADE73C68(v77);
      sub_1ADDCC35C(v52, v51);
      goto LABEL_76;
    }

    if (v46 >= v53)
    {
      goto LABEL_80;
    }

    v89 = *(v81 + 32 + 8 * v46);
    sub_1ADDD86D8(v52, v51);
    sub_1AE1A3880(v52, v51, v100);
    v54 = v100[0];
    if (v47[2])
    {
      v55 = *(v100[0] + 16);
      v56 = *(v100[0] + 24);
      sub_1ADDD86D8(v55, v56);
      v57 = sub_1ADDDE7CC(v55, v56);
      if (v58)
      {
        v59 = *(v47[7] + 16 * v57);

        sub_1ADDCC35C(v55, v56);

        if (v59)
        {
          goto LABEL_81;
        }
      }

      else
      {
        sub_1ADDCC35C(v55, v56);
      }
    }

    v85 = v48;
    v87 = v52;
    v83 = v46;
    v60 = v51;
    v61 = *(v54 + 16);
    v62 = *(v54 + 24);
    sub_1ADDD86D8(v61, v62);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__dst = v47;
    v65 = sub_1ADDDE7CC(v61, v62);
    v66 = v47[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_82;
    }

    v69 = v64;
    if (v47[3] < v68)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADF703A0();
    }

LABEL_71:
    v47 = *__dst;
    if (v69)
    {
      v49 = (*(*__dst + 56) + 16 * v65);
      v50 = *v49;
      *v49 = v54;
      v49[1] = v89;

      sub_1ADDCC35C(v87, v60);

      sub_1ADDCC35C(v61, v62);
    }

    else
    {
      *(*__dst + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v72 = (v47[6] + 16 * v65);
      *v72 = v61;
      v72[1] = v62;
      v73 = (v47[7] + 16 * v65);
      *v73 = v54;
      v73[1] = v89;
      sub_1ADDCC35C(v87, v60);

      v74 = v47[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_85;
      }

      v47[2] = v76;
    }

    v46 = v83 + 1;
    v98 = v47;
    v48 = v85 + 2;
    if (v45 == v83 + 1)
    {
      goto LABEL_74;
    }
  }

  sub_1ADF6AF70(v68, isUniquelyReferenced_nonNull_native);
  v70 = sub_1ADDDE7CC(v61, v62);
  if ((v69 & 1) == (v71 & 1))
  {
    v65 = v70;
    goto LABEL_71;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADF98A98(uint64_t a1, unint64_t a2)
{
  v5 = sub_1AE23C34C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1ADDD86D8(a1, a2);
  sub_1AE23C33C();
  sub_1ADE73D18();
  sub_1AE23C52C();
  if (v2)
  {
    v7 = v2;

    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v15[2] = v11;
    v15[3] = v12;
    v15[4] = v13;
    v16 = v14;
    v15[0] = v9;
    v15[1] = v10;
    v7 = sub_1ADF98164(v15);
    sub_1ADDCC35C(a1, a2);
  }

  return v7;
}

uint64_t sub_1ADF98C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB68, &qword_1AE24E688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADF98C9C(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1AE23D97C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F2E4(0, v2 & ~(v2 >> 63), 0);
    v34 = v39;
    if (v32)
    {
      result = sub_1AE23D92C();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = sub_1AE23D8EC();
      v4 = *(v1 + 36);
    }

    v36 = result;
    v37 = v4;
    v38 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v36;
        v10 = v38;
        v33 = v37;
        v11 = v1;
        v12 = sub_1ADF9C0B0(v36, v37, v38, v1);
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        sub_1ADDD86D8(v14, v13);

        v15 = v34;
        v39 = v34;
        v17 = *(v34 + 16);
        v16 = *(v34 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1ADE6F2E4((v16 > 1), v17 + 1, 1);
          v15 = v39;
        }

        *(v15 + 16) = v17 + 1;
        v18 = v15 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v13;
        v34 = v15;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1AE23D94C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB70, &qword_1AE24E6E8);
          v7 = sub_1AE23D31C();
          sub_1AE23D9BC();
          result = v7(v35, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_1ADDFFBC8(v36, v37, v38);
            return v34;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v19 = 1 << *(v11 + 32);
          if (v9 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v9 >> 6;
          v21 = *(v30 + 8 * (v9 >> 6));
          if (((v21 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v33)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v9 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                result = sub_1ADDFFBC8(v9, v33, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            result = sub_1ADDFFBC8(v9, v33, 0);
          }

LABEL_31:
          v28 = *(v11 + 36);
          v36 = v19;
          v37 = v28;
          v38 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF98FF0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE23D93C();
    type metadata accessor for AnyReference();
    sub_1ADF9D934();
    result = sub_1AE23D36C();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v19 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1AE23D9AC() || (type metadata accessor for AnyReference(), v13 = swift_dynamicCast(), (v12 = v25) == 0))
    {
LABEL_24:
      sub_1ADDDCE74();
      return v19;
    }

LABEL_17:
    if ((*(*v12 + 128))(v13))
    {
      v14 = v12[2];
      v15 = v12[3];
      sub_1ADDD86D8(v14, v15);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1ADE5534C(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v17 = *(v19 + 16);
      v16 = *(v19 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1ADE5534C((v16 > 1), v17 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 16) = v17 + 1;
      v18 = v19 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF99278(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v56 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v68 = sub_1ADF9D624(v6);
  v67 = a1;
  v7 = *(a1 + 16);
  if (!v7)
  {

    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_4:
      v54 = v2;
      v57 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
      result = swift_beginAccess();
      v12 = 0;
      v13 = *(v11 + 2);
      v15 = v55;
      v14 = v56;
      v16 = v11;
      while (v12 < v13)
      {
        v17 = &v16[16 * v12];
        v18 = *(v17 + 4);
        v19 = *(v17 + 5);
        sub_1ADDD9E68(v58 + v57, v15);
        v20 = v15 + *(v14 + 20);
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        sub_1ADDD86D8(v18, v19);
        sub_1ADDDF7A8(v18, v19, v21, &v62);
        sub_1ADE73DF4(v15);
        v24 = v64;
        if (v64)
        {
          v60 = v18;
          v61 = v19;
          v59 = v16;
          v25 = v62;
          v26 = v63;

          sub_1ADDDC21C(v27, v26, v24);
          if (v25)
          {
            v28 = type metadata accessor for RetainVisitor();
            v29 = swift_allocObject();
            v30 = MEMORY[0x1E69E7CC0];
            v31 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
            v32 = sub_1ADDD9ECC(v30);
            *(v29 + 16) = v31;
            *(v29 + 24) = v32;
            v65 = v28;
            v66 = &off_1F23C4550;
            v62 = v29;
            v33 = *(*v25 + 128);

            v33(&v62);

            __swift_destroy_boxed_opaque_existential_1(&v62);
            swift_beginAccess();
            v34 = *(v29 + 16);

            v35 = 0;
            v36 = 1 << *(v34 + 32);
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            else
            {
              v37 = -1;
            }

            v38 = v37 & *(v34 + 64);
            v39 = (v36 + 63) >> 6;
            while (1)
            {
              result = v60;
              if (!v38)
              {
                break;
              }

              v40 = v35;
LABEL_19:
              v41 = __clz(__rbit64(v38));
              v38 &= v38 - 1;
              v42 = (*(v34 + 48) + ((v40 << 10) | (16 * v41)));
              v44 = *v42;
              v43 = v42[1];
              sub_1ADDD86D8(*v42, v43);
              sub_1ADDD86D8(v44, v43);
              v45 = sub_1ADDE0110(&v62, v44, v43);
              sub_1ADDCC35C(v62, v63);
              if (v45)
              {
                sub_1ADDD86D8(v44, v43);
                sub_1ADDE0110(&v62, v44, v43);
                sub_1ADDCC35C(v62, v63);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v59 = sub_1ADE5534C(0, *(v59 + 2) + 1, 1, v59);
                }

                v47 = *(v59 + 2);
                v46 = *(v59 + 3);
                v48 = v47 + 1;
                if (v47 >= v46 >> 1)
                {
                  v53 = v47 + 1;
                  v51 = sub_1ADE5534C((v46 > 1), v47 + 1, 1, v59);
                  v48 = v53;
                  v59 = v51;
                }

                v49 = v59;
                *(v59 + 2) = v48;
                v50 = &v49[16 * v47];
                *(v50 + 4) = v44;
                *(v50 + 5) = v43;
                v35 = v40;
              }

              else
              {
                sub_1ADDCC35C(v44, v43);
                v35 = v40;
              }
            }

            while (1)
            {
              v40 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (v40 >= v39)
              {
                sub_1ADDCC35C(v60, v61);

                v15 = v55;
                v14 = v56;
                goto LABEL_28;
              }

              v38 = *(v34 + 64 + 8 * v40);
              ++v35;
              if (v38)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            break;
          }

          result = sub_1ADDCC35C(v60, v61);
LABEL_28:
          v16 = v59;
        }

        else
        {
          result = sub_1ADDCC35C(v18, v19);
        }

        ++v12;
        v13 = *(v16 + 2);
        if (v12 >= v13)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_31:

    return v68;
  }

  v8 = sub_1AE1941D0(*(a1 + 16), 0);
  v9 = sub_1AE03A790(&v62, v8 + 2, v7, a1);
  v61 = v66;
  swift_bridgeObjectRetain_n();
  result = sub_1ADDDCE74();
  if (v9 == v7)
  {
    v11 = v8;
    if (v8[2])
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1ADF9975C(_WORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v144 = a5;
  v162 = a4;
  v161 = a3;
  v167 = a2;
  v132 = a1;
  v134 = sub_1AE23BFEC();
  v133 = *(v134 - 8);
  v12 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v131 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v125 - v15;
  v163 = a8;
  v159 = *(a8 + 16);
  v164 = a6;
  swift_getAssociatedTypeWitness();
  v137 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = *(AssociatedTypeWitness - 8);
  v16 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v153 = &v125 - v17;
  v166 = a9;
  v168 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v141 = *(AssociatedConformanceWitness + 8);
  v158 = swift_getAssociatedTypeWitness();
  v142 = *(v158 - 8);
  v18 = *(v142 + 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v125 - v19;
  v149 = swift_checkMetadataState();
  v143 = *(v149 - 8);
  v20 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v136 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v125 - v23;
  v147 = swift_checkMetadataState();
  v148 = *(v147 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v139 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v125 - v27;
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CD0];
  v156 = v29;
  *(v29 + 16) = MEMORY[0x1E69E7CD0];
  v31 = v29 + 16;
  v32 = swift_allocObject();
  v160 = v32;
  *(v32 + 16) = v30;
  v33 = v32 + 16;
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC8];
  v155 = v34;
  *(v34 + 16) = MEMORY[0x1E69E7CC8];
  v165 = swift_allocObject();
  *(v165 + 16) = v35;
  v36 = v166;
  v37 = v168;
  v145 = *(v166 + 24);
  v145(&v171, v168, v166);
  v38 = *(&v171 + 1);
  v151 = v171;
  v169 = v175;
  (*(v159 + 24))(&v171, v164);
  v170 = v171;
  v39 = *(v36 + 56);
  v146 = v28;
  v40 = v152;
  v39(&v170, v37, v36);
  if (v40)
  {

    v41 = v170;

    return v41;
  }

  v128 = v33;
  v129 = v31;
  v130 = v38;

  v42 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = MEMORY[0x1E69E7CD0];
  v169 = v175;
  v44 = v168;
  v45 = v166;
  v145(&v171, v168, v166);
  v170 = v171;
  (*(v159 + 56))(&v170, v164);
  v126 = (v43 + 16);
  v127 = v43;

  v46 = v146;
  v47 = v147;
  (*(v45 + 40))(v146, v147, AssociatedConformanceWitness, v44, v45);
  v48 = swift_allocObject();
  v49 = v155;
  v50 = v156;
  if (qword_1ED9670C0 != -1)
  {
    v122 = v48;
    swift_once();
    v48 = v122;
  }

  v51 = byte_1ED96F222;
  *(v48 + 8) = word_1ED96F220;
  v152 = v48;
  v48[18] = v51;
  (*(v148 + 16))(v139, v46, v47);
  sub_1AE23CE7C();
  swift_getAssociatedConformanceWitness();
  sub_1AE23D80C();
  v52 = *(&v171 + 1);
  v53 = v127;
  v54 = v160;
  if (*(&v171 + 1) >> 60 != 15)
  {
    v55 = v171;
    do
    {
      *&v171 = v55;
      *(&v171 + 1) = v52;
      sub_1ADF9C614(&v171, v161, v162, v54, v175, v167, v49, v152, v165, v50, v53, v164, v168, v163, v166);
      sub_1ADDE1588(v55, v52);
      sub_1AE23D80C();
      v52 = *(&v171 + 1);
      v55 = v171;
    }

    while (*(&v171 + 1) >> 60 != 15);
  }

  (*(v142 + 1))(v157, v158);
  (*(v143 + 16))(v136, v150, v149);
  sub_1AE23CE7C();
  swift_getAssociatedConformanceWitness();
  sub_1AE23D80C();
  v56 = *(&v171 + 1);
  if (*(&v171 + 1) >> 60 == 15)
  {
    v57 = v152;
    v58 = v164;
  }

  else
  {
    v59 = v171;
    v57 = v152;
    v58 = v164;
    do
    {
      *&v171 = v59;
      *(&v171 + 1) = v56;
      v60 = v53;
      v124 = v53;
      v61 = v49;
      v62 = v49;
      v63 = v57;
      sub_1ADF9C614(&v171, v161, v162, v160, v175, v167, v62, v57, v165, v50, v124, v58, v168, v163, v166);
      sub_1ADDE1588(v59, v56);
      sub_1AE23D80C();
      v56 = *(&v171 + 1);
      v59 = v171;
      v57 = v63;
      v49 = v61;
      v53 = v60;
    }

    while (*(&v171 + 1) >> 60 != 15);
  }

  v142 = v57 + 16;
  (*(v138 + 8))(v153, AssociatedTypeWitness);
  v64 = v144;
  if (!v144)
  {
    v70 = v149;
    v65 = v50;
    goto LABEL_59;
  }

  v65 = v50;
  if ((v144 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    type metadata accessor for AnyReference();
    sub_1ADF9D934();
    sub_1AE23D36C();
    v64 = v172;
    v66 = v173[0];
    v68 = v173[1];
    v67 = v173[2];
    v69 = v173[3];
  }

  else
  {
    v71 = -1 << *(v144 + 32);
    v66 = v144 + 56;
    v68 = ~v71;
    v72 = -v71;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v69 = (v73 & *(v144 + 56));

    v67 = 0;
  }

  AssociatedConformanceWitness = v68;
  v74 = (v68 + 64) >> 6;
  v157 = (v159 + 64);
  v141 = v163 + 64;
  v70 = v149;
  v144 = v64;
  AssociatedTypeWitness = v74;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v158 = v42;
  v75 = sub_1AE23D9AC();
  if (!v75)
  {
    v42 = v158;
    goto LABEL_58;
  }

  *&v170 = v75;
  type metadata accessor for AnyReference();
  swift_dynamicCast();
  v76 = v171;
  v77 = v67;
  v78 = v69;
  v42 = v158;
  if (!v171)
  {
LABEL_65:
    v49 = v155;
    v65 = v156;
    v70 = v149;
LABEL_58:
    sub_1ADDDCE74();
    v53 = v127;
    v58 = v164;
LABEL_59:
    v99 = v129;
    swift_beginAccess();
    v100 = v58;
    v101 = v163;
    v102 = v175;
    v41 = v175;
    v103 = sub_1ADF9BB64(*v99, v167, v100, v168, v163, v166);
    if (!v42)
    {
      v104 = v103;
      swift_beginAccess();

      sub_1AE00F014(v105);
      swift_endAccess();
      swift_beginAccess();
      sub_1AE00F014(v104);
      swift_endAccess();
      v123 = v65;
      v106 = v165;
      v107 = v161;
      v108 = v162;
      v109 = v160;
      sub_1ADF9CB28(0, v165, v49, v102, v161, v162, v160, v167, v152, v123, v53, v164, v168, v101, v166);
      v110 = sub_1ADF9CB28(1, v106, v49, v102, v107, v108, v109, v167, v152, v156, v53, v164, v168, v101, v166);
      v42 = 0;
      v162 = &v125;
      v114 = MEMORY[0x1EEE9AC00](v110);
      v66 = v164;
      (*(v115 + 24))(sub_1ADF9D928, v114);

      swift_beginAccess();
      LODWORD(v64) = v152[16];
      LODWORD(v69) = v152[17];
      v116 = v152[18];
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v70 = v135;
      v77 = v156;
      if (v64 == word_1EB5D750B && v69 == HIBYTE(word_1EB5D750B) && ((v116 ^ byte_1EB5D750D) & 1) == 0)
      {
        LODWORD(v162) = v116;
        (*(v166 + 32))(v168);
      }

      else
      {
        if (v64 <= 1 && v69 < 2)
        {
          goto LABEL_82;
        }

        LODWORD(v162) = v116;
        if (qword_1ED96AC50 != -1)
        {
          swift_once();
        }

        sub_1ADDD0F70();
        v70 = v131;
        sub_1AE23BFBC();
      }

      (*(v163 + 32))(v70, v66);
      goto LABEL_81;
    }

    (*(v143 + 8))(v150, v70);
    (*(v148 + 8))(v146, v147);

LABEL_62:

    v111 = v173;
LABEL_63:
    v112 = *(v111 - 32);

    return v41;
  }

  while (1)
  {
    v158 = v78;
    v145 = v67;
    v153 = v69;
    v81 = v175;
    *&v170 = v175;
    v82 = *(v76 + 24);
    *&v171 = *(v76 + 16);
    *(&v171 + 1) = v82;
    v83 = v159;
    v84 = *(v159 + 64);
    sub_1ADDD86D8(v171, v82);
    v85 = v164;
    v86 = v84(&v171, v164, v83);
    sub_1ADDCC35C(v171, *(&v171 + 1));
    if (v86)
    {

      v67 = v77;
      v69 = v158;
      v49 = v155;
      v65 = v156;
      v70 = v149;
      v64 = v144;
      v74 = AssociatedTypeWitness;
      if (v144 < 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v87 = *(v76 + 16);
    v88 = *(v76 + 24);
    swift_beginAccess();
    sub_1ADDD86D8(v87, v88);
    sub_1ADDE0110(&v170, v87, v88);
    swift_endAccess();
    sub_1ADDCC35C(v170, *(&v170 + 1));
    v41 = v81;
    (*(v163 + 64))(&v171, v76, v167, v168, v166, v85);
    if (v42)
    {

      sub_1ADDDCE74();
      (*(v143 + 8))(v150, v149);
      (*(v148 + 8))(v146, v147);

      v111 = &v174;
      goto LABEL_63;
    }

    v89 = v66;

    v64 = v144;
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v90 = word_1EB5D750B;
    v91 = HIBYTE(word_1EB5D750B);
    v92 = byte_1EB5D750D;

    v93 = v142;
    swift_beginAccess();
    v70 = v149;
    v94 = v158;
    if (v90)
    {
      v95 = *v93;
      if (v95 != v90)
      {
        if (*v93 <= 1u)
        {
          if (!*v93)
          {
LABEL_44:
            *v93 = v90;
            goto LABEL_45;
          }

          v96 = v90 == 2;
LABEL_42:
          if (v96)
          {
            LOBYTE(v90) = 3;
          }

          goto LABEL_44;
        }

        if (v95 == 2)
        {
          v96 = v90 == 1;
          goto LABEL_42;
        }
      }
    }

LABEL_45:
    v66 = v89;
    v74 = AssociatedTypeWitness;
    if (v91)
    {
      v97 = v152[17];
      if (v97 != v91)
      {
        if (v152[17] > 1u)
        {
          if (v97 != 2)
          {
            goto LABEL_55;
          }

          v98 = v91 == 1;
        }

        else
        {
          if (!v152[17])
          {
LABEL_54:
            v152[17] = v91;
            goto LABEL_55;
          }

          v98 = v91 == 2;
        }

        if (v98)
        {
          LOBYTE(v91) = 3;
        }

        goto LABEL_54;
      }
    }

LABEL_55:
    v152[18] = (v152[18] | v92) & 1;
    v67 = v77;
    v69 = v94;
    v49 = v155;
    v65 = v156;
    if (v64 < 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v79 = v67;
    v80 = v69;
    v77 = v67;
    if (!v69)
    {
      break;
    }

LABEL_28:
    v78 = (v80 - 1) & v80;
    v76 = *(*(v64 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v80)))));

    if (!v76)
    {
      goto LABEL_65;
    }
  }

  while (1)
  {
    v77 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v77 >= v74)
    {
      v49 = v155;
      v65 = v156;
      goto LABEL_58;
    }

    v80 = *(v66 + 8 * v77);
    v79 = (v79 + 1);
    if (v80)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_81:
  (*(v133 + 8))(v70, v134);
  v116 = v162;
LABEL_82:
  if (qword_1EB5B9920 != -1)
  {
    swift_once();
  }

  if (v64 == word_1EB5D750E)
  {
    v117 = v148;
    if (v69 == HIBYTE(word_1EB5D750E) && ((v116 ^ byte_1EB5D7510) & 1) == 0)
    {
      v118 = v126;
      swift_beginAccess();
      v119 = *v118;
      v41 = v175;
      (*(v163 + 40))(v119, 1, v66);
      if (v42)
      {
        (*(v143 + 8))(v150, v149);
        (*(v117 + 8))(v146, v147);

        goto LABEL_62;
      }
    }
  }

  else
  {
    v117 = v148;
  }

  (*(v163 + 104))(v66);
  (*(v143 + 8))(v150, v149);
  (*(v117 + 8))(v146, v147);
  v41 = *(v77 + 16);
  v120 = v152[18];
  v121 = v132;
  *v132 = *(v152 + 8);
  *(v121 + 2) = v120;

  return v41;
}

uint64_t sub_1ADF9B34C(void *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v105 = a4[1];
  v107 = *a4;
  v11 = sub_1ADDD9ECC(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117[0] = v11;
  sub_1ADDDCB94(a2, sub_1ADF9811C, 0, isUniquelyReferenced_nonNull_native, v117);
  v13 = v6;

  v14 = v117[0];
  v112 = a6;
  if (a1[2])
  {

    v15 = v6;
    v103 = a3;
    while (1)
    {
      v102 = v14;
      v18 = MEMORY[0x1E69E7CC0];
      v109 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v19 = 0;
      v118 = sub_1ADDD9ECC(v18);
      v20 = a1 + 8;
      v21 = 1 << *(a1 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & a1[8];
      v24 = (v21 + 63) >> 6;
      v113 = a1;
      while (v23)
      {
LABEL_13:
        v26 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v27 = v26 | (v19 << 6);
        v28 = *(a1[7] + 8 * v27);
        if ((a3 & 1) != 0 || v28)
        {
          *v117 = *(a1[6] + 16 * v27);
          v116[0] = v107;
          v116[1] = v105;
          v29 = *(v112 + 8);
          v114 = v117[1];
          v30 = v117[0];
          sub_1ADDD86D8(v117[0], v117[1]);
          v31 = v29(v117, v28, v116, a5, v112);
          if (v15)
          {

            return sub_1ADDCC35C(v30, v114);
          }

          v33 = v31;
          v34 = v32;
          if ((v31 - 1) < 2)
          {
            sub_1ADDDDEAC(v31);
LABEL_45:
            sub_1ADDCC35C(v30, v114);
            goto LABEL_46;
          }

          if (v31 == 3 || v31 == 0)
          {
            goto LABEL_45;
          }

          v36 = v31 + 64;
          v37 = 1 << *(v31 + 32);
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          else
          {
            v38 = -1;
          }

          v39 = v38 & *(v31 + 64);
          v40 = (v37 + 63) >> 6;

          v41 = 0;
          v42 = 0;
          v93 = v40;
          if (v39)
          {
            while (1)
            {
              v99 = v41;
              v43 = v42;
LABEL_30:
              v94 = v43;
              v95 = v39;
              v44 = __clz(__rbit64(v39)) | (v43 << 6);
              v45 = (*(v33 + 48) + 16 * v44);
              v46 = *v45;
              v101 = v45[1];
              v96 = *(*(v33 + 56) + 8 * v44);
              sub_1ADDD86D8(*v45, v101);
              sub_1ADDDCE80(v99);
              v47 = v109;
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v117[0] = v109;
              v100 = v46;
              v49 = sub_1ADDDE7CC(v46, v101);
              v50 = v109[2];
              v51 = (v48 & 1) == 0;
              v52 = v50 + v51;
              if (__OFADD__(v50, v51))
              {
                goto LABEL_78;
              }

              if (v109[3] >= v52)
              {
                v36 = v33 + 64;
                if (v97)
                {
                  if (v48)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v98 = v49;
                  v110 = v48;
                  sub_1ADF6F1AC();
                  v68 = v110;
                  v49 = v98;
                  v47 = v117[0];
                  v109 = v117[0];
                  if (v68)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                v53 = v48;
                sub_1ADE1D52C(v52, v97);
                v109 = v117[0];
                v54 = sub_1ADDDE7CC(v100, v101);
                v56 = v55 & 1;
                v57 = v53;
                v58 = v53 & 1;
                v36 = v33 + 64;
                if (v58 != v56)
                {
                  goto LABEL_81;
                }

                v49 = v54;
                v47 = v109;
                if (v57)
                {
                  goto LABEL_39;
                }
              }

              v59 = v49;
              sub_1ADF98C94(v117);
              v60 = v117[0];
              v109[(v59 >> 6) + 8] |= 1 << v59;
              v61 = (v109[6] + 16 * v59);
              *v61 = v100;
              v61[1] = v101;
              *(v109[7] + 8 * v59) = v60;
              v62 = v109[2];
              v63 = __OFADD__(v62, 1);
              v64 = v62 + 1;
              if (v63)
              {
                goto LABEL_80;
              }

              v109[2] = v64;
              sub_1ADDD86D8(v100, v101);
              v47 = v109;
              v49 = v59;
              v36 = v33 + 64;
LABEL_39:
              v65 = v47[7];
              v66 = *(v65 + 8 * v49);
              v63 = __OFSUB__(v66, v96);
              v67 = v66 - v96;
              if (v63)
              {
                goto LABEL_79;
              }

              v39 = (v95 - 1) & v95;
              *(v65 + 8 * v49) = v67;
              sub_1ADDCC35C(v100, v101);
              v41 = sub_1ADF98C94;
              v42 = v94;
              v40 = v93;
              if (!v39)
              {
                goto LABEL_26;
              }
            }
          }

          while (1)
          {
LABEL_26:
            v43 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_77;
            }

            if (v43 >= v40)
            {
              break;
            }

            v39 = *(v36 + 8 * v43);
            ++v42;
            if (v39)
            {
              v99 = v41;
              goto LABEL_30;
            }
          }

          v69 = v41;

          sub_1ADDDD108(v34);
          sub_1ADDDCE80(v69);
          sub_1ADDCC35C(v30, v114);

LABEL_46:
          v15 = 0;
          a3 = v103;
          a1 = v113;
        }
      }

      while (1)
      {
        v25 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_75:
          sub_1ADDCC35C(v113, v114);
        }

        if (v25 >= v24)
        {
          break;
        }

        v23 = v20[v25];
        ++v19;
        if (v23)
        {
          v19 = v25;
          goto LABEL_13;
        }
      }

      v16 = v118;

      v17 = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v102;
      sub_1ADDDCB94(v16, sub_1ADF9811C, 0, v17, v117);
      swift_bridgeObjectRelease_n();
      v14 = v117[0];
      a1 = v109;
      if (!v109[2])
      {
        v13 = v15;

        break;
      }
    }
  }

  v71 = 0;
  v72 = v14 + 64;
  v73 = 1 << *(v14 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v14 + 64);
  v108 = (v73 + 63) >> 6;
  v104 = MEMORY[0x1E69E7CC0];
  v106 = MEMORY[0x1E69E7CC0];
  while (v75)
  {
LABEL_58:
    v77 = __clz(__rbit64(v75));
    v75 &= v75 - 1;
    v78 = (v71 << 10) | (16 * v77);
    v79 = (*(v14 + 56) + v78);
    v80 = v79[1];
    if (v80)
    {
      v81 = v14;
      v82 = (*(v14 + 48) + v78);
      v84 = *v82;
      v83 = v82[1];
      v117[0] = *v79;
      v85 = *(v112 + 16);
      v115 = v117[0];
      swift_retain_n();
      v113 = v84;
      v114 = v83;
      sub_1ADDD86D8(v84, v83);
      v86 = v85(v117, v80, a5, v112);
      if (v13)
      {
        goto LABEL_75;
      }

      v87 = v86;

      if (v87)
      {
        v14 = v81;
        if (v87 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1ADE55498(0, *(v104 + 2) + 1, 1, v104);
          }

          v89 = *(v104 + 2);
          v88 = *(v104 + 3);
          if (v89 >= v88 >> 1)
          {
            v104 = sub_1ADE55498((v88 > 1), v89 + 1, 1, v104);
          }

          *(v104 + 2) = v89 + 1;
          v90 = &v104[16 * v89];
          *(v90 + 4) = v84;
          *(v90 + 5) = v83;
        }

        else
        {
          sub_1ADDCC35C(v84, v83);
        }
      }

      else
      {
        v14 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1ADE556B0(0, *(v106 + 2) + 1, 1, v106);
        }

        v92 = *(v106 + 2);
        v91 = *(v106 + 3);
        if (v92 >= v91 >> 1)
        {
          v106 = sub_1ADE556B0((v91 > 1), v92 + 1, 1, v106);
        }

        sub_1ADDCC35C(v84, v83);
        *(v106 + 2) = v92 + 1;
        *&v106[8 * v92 + 32] = v115;
      }
    }
  }

  while (1)
  {
    v76 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v76 >= v108)
    {

      return v106;
    }

    v75 = *(v72 + 8 * v76);
    ++v71;
    if (v75)
    {
      v71 = v76;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADF9BB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v11 = a1;
  v65 = a1;
  v59 = MEMORY[0x1E69E7CD0];
  v12 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v13 = v6;
  v56 = a5;
  if (!v12)
  {
    v45 = v11;
LABEL_25:

    v32 = sub_1ADF9C2DC(v45, a3, a5);
    if (!v8)
    {
      v55 = a3;
      v34 = v32;

      result = v34;
      v35 = 0;
      v36 = v34 + 56;
      v37 = 1 << *(v34 + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v39 = v38 & *(v34 + 56);
      v40 = (v37 + 63) >> 6;
      v48 = v34;
      for (i = v34 + 56; v39; v36 = i)
      {
        v41 = v35;
LABEL_35:
        v42 = *(*(result + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v39)))));
        v43 = *(v42 + 16);
        v44 = *(v42 + 24);
        v53 = *(a6 + 72);

        sub_1ADDD86D8(v43, v44);
        v53(&v57, v43, v44, a4, a6);
        sub_1ADDCC35C(v43, v44);
        v58 = v57;
        (*(v56 + 80))(&v58, v55);
        v39 &= v39 - 1;

        v35 = v41;
        result = v48;
      }

      while (1)
      {
        v41 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v41 >= v40)
        {

          return v59;
        }

        v39 = *(v36 + 8 * v41);
        ++v35;
        if (v39)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      return result;
    }

LABEL_26:
  }

  v54 = a3;
  while (1)
  {
    v14 = sub_1ADF9D9E8(v11, v13, a3, a5);
    if (v8)
    {

      goto LABEL_26;
    }

    v15 = v14;

    v47 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {

      sub_1AE23D93C();
      type metadata accessor for AnyReference();
      sub_1ADF9D934();
      sub_1AE23D36C();
      v15 = v60;
      v16 = v61;
      v17 = v62;
      v18 = v63;
      v19 = v64;
    }

    else
    {
      v20 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v15 + 56);

      v18 = 0;
    }

    v52 = v15;
    if (v15 < 0)
    {
LABEL_11:
      v23 = sub_1AE23D9AC();
      if (!v23)
      {
        goto LABEL_21;
      }

      v58 = v23;
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      v24 = v57;
      v25 = v18;
      v26 = v19;
      if (!v57)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_14:
    v27 = v18;
    v28 = v19;
    v25 = v18;
    if (!v19)
    {
      break;
    }

LABEL_18:
    v26 = (v28 - 1) & v28;
    v24 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v28)))));

    if (v24)
    {
LABEL_19:
      (*(v56 + 64))(&v57, v24, a2, a4, a6, v54);

      v18 = v25;
      v19 = v26;
      v15 = v52;
      if (v52 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

LABEL_21:
    sub_1ADDDCE74();
    v29 = sub_1ADF98C9C(v47);
    v8 = 0;
    v11 = sub_1ADF7E6A4(v29);

    sub_1AE00F014(v30);
    v31 = sub_1ADF98FF0(v47);

    sub_1AE017714(v31);

    a5 = v56;
    v13 = v6;
    a3 = v54;
    if (!*(v11 + 16))
    {
      v45 = v65;
      goto LABEL_25;
    }
  }

  while (1)
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v25 >= ((v17 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v28 = *(v16 + 8 * v25);
    ++v27;
    if (v28)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1ADF9C0B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_1AE23D95C();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v15 = sub_1AE23D96C();
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      v7 = v14[0];
      v8 = *(a4 + 40);
      sub_1AE23E31C();
      (*(*v14[0] + 104))(v14);
      v9 = sub_1AE23E34C();
      v10 = -1 << *(a4 + 32);
      v5 = v9 & ~v10;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v11 = ~v10;
        do
        {
          v12 = *(**(*(a4 + 48) + 8 * v5) + 96);

          LOBYTE(v12) = v12(v7);

          if (v12)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v11;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v13 = *(*(a4 + 48) + 8 * v5);
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x1B26FC240](result, a2, v6);
  type metadata accessor for AnyReference();
  swift_dynamicCast();
  return v14[0];
}

uint64_t sub_1ADF9C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v39 = MEMORY[0x1E69E7CD0];
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = v6;
  v31 = result;
  v29 = v10;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v38 = *(*(v5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *(a3 + 88);
      v32 = v38;
      sub_1ADDD86D8(v38, *(&v38 + 1));
      v15 = v14(&v38, a2, a3);
      v36 = v16;
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;
      if (v15)
      {

        v17 = 0;
        v18 = v36 + 64;
        v19 = 1 << *(v36 + 32);
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 & *(v36 + 64);
        v22 = (v19 + 63) >> 6;
        v33 = v22;
        while (v21)
        {
          v23 = v17;
LABEL_22:
          v24 = (v23 << 10) | (16 * __clz(__rbit64(v21)));
          v25 = (*(v36 + 48) + v24);
          v27 = *v25;
          v26 = v25[1];
          v28 = *(*(v36 + 56) + v24);
          v37 = *(a3 + 72);
          sub_1ADDD86D8(*v25, v26);

          v4 = 0;
          v21 &= v21 - 1;
          if (v37(v27, v26, a2, a3))
          {

            result = sub_1ADDCC35C(v27, v26);
          }

          else
          {

            sub_1ADEC1658(&v38, v28);
            sub_1ADDCC35C(v27, v26);
          }

          v17 = v23;
          v22 = v33;
          v18 = v36 + 64;
        }

        while (1)
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_31;
          }

          if (v23 >= v22)
          {
            break;
          }

          v21 = *(v18 + 8 * v23);
          ++v17;
          if (v21)
          {
            goto LABEL_22;
          }
        }

        sub_1ADDCC35C(v32, *(&v32 + 1));

        v12 = v13;
        v6 = v30;
        v5 = v31;
        v10 = v29;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1ADDCC35C(v32, *(&v32 + 1));
        v12 = v13;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    return sub_1ADDCC35C(v32, *(&v32 + 1));
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v39;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF9C614(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a1;
  v18 = a1[1];
  if (a2)
  {
    v44 = *a1;
    v45 = v18;

    v20 = a2(&v44);
    sub_1ADDDCE80(a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  sub_1ADDD86D8(v17, v18);
  v21 = sub_1ADDE0110(&v38, v17, v18);
  swift_endAccess();
  sub_1ADDCC35C(v38, v39);
  if (v21)
  {
    v44 = v17;
    v45 = v18;
    (*(a14 + 56))(&v38, &v44, a12, a14);
    if (!v15)
    {
      v24 = v38;
      if (v38)
      {
        v38 = v17;
        v39 = v18;
        v40 = v24;
        v36 = *(a15 + 48);

        v36(&v44, &v38, &v40, &type metadata for AnyCRDT, &off_1F23C9418, a13, a15);

        v25 = v44;
        if (v44)
        {
          v26 = v45;
          v37 = v46;
          swift_beginAccess();
          sub_1ADDD86D8(v17, v18);

          v27 = *(a7 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(a7 + 16);
          *(a7 + 16) = 0x8000000000000000;
          sub_1ADEBFB8C(v24, v25, v17, v18, isUniquelyReferenced_nonNull_native);
          sub_1ADDCC35C(v17, v18);
          *(a7 + 16) = v38;
          swift_endAccess();
          v38 = v17;
          v39 = v18;
          v40 = v26;
          v41 = v37;
          v42 = v25;
          (*(a14 + 48))(&v47, &v43, &v44, &v38, &v42, &v40, a12, a14);

          v29 = v47;
          v30 = HIBYTE(v47);
          v31 = v48;
          LOWORD(v38) = v47;
          BYTE2(v38) = v48;
          swift_beginAccess();
          v32 = &v38;
          MergeResult.merge(_:)(v32);
          swift_beginAccess();
          v33 = *(a9 + 16);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(a9 + 16);
          *(a9 + 16) = 0x8000000000000000;
          if (v31)
          {
            v35 = 0x10000;
          }

          else
          {
            v35 = 0;
          }

          sub_1ADEBFA40(v35 | (v30 << 8) | v29, v17, v18, v34);
          *(a9 + 16) = v40;
          swift_endAccess();
          if (v29 > 1 || v30 >= 2)
          {
            swift_beginAccess();
            sub_1ADDD86D8(v17, v18);
            sub_1ADDE0110(&v40, v17, v18);
            swift_endAccess();
            sub_1ADDCC35C(v40, v41);
          }

          if (qword_1EB5B9920 != -1)
          {
            swift_once();
          }

          if (v29 == word_1EB5D750E && v30 == HIBYTE(word_1EB5D750E) && v31 == byte_1EB5D7510)
          {
            swift_beginAccess();
            sub_1ADDD86D8(v17, v18);
            sub_1ADDE0110(&v40, v17, v18);
            swift_endAccess();

            sub_1ADDCC35C(v40, v41);
          }

          else
          {
          }

          v22 = 1;
        }

        else
        {

          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
LABEL_6:
    v22 = 0;
  }

  return v22 & 1;
}

char *sub_1ADF9CB28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v121 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v106 = a2;
  v19 = *(a2 + 16);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(a2 + 16) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;

  v28 = 0;
  v101 = v27;
  while (2)
  {
    v102 = v18;
    do
    {
      while (1)
      {
        if (v25)
        {
          goto LABEL_13;
        }

        do
        {
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:

            v99 = *(&v114 + 1);
            v98 = v114;
            return sub_1ADDCC35C(v98, v99);
          }

          if (v32 >= v26)
          {

            swift_beginAccess();
            if (!*(v18 + 2))
            {
LABEL_93:
            }

            v70 = a14;
            v69 = a4;
            v71 = v106;
            while (2)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v72 = *(v18 + 2);
                if (!v72)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v18 = sub_1ADF79A04(v18);
                v72 = *(v18 + 2);
                if (!v72)
                {
                  goto LABEL_97;
                }
              }

              v73 = v72 - 1;
              v74 = &v18[16 * v73];
              v76 = *(v74 + 4);
              v75 = *(v74 + 5);
              *(v18 + 2) = v73;
              v120 = v18;
              sub_1ADDD86D8(v76, v75);
              v77 = sub_1ADDE0110(&v117, v76, v75);
              sub_1ADDCC35C(v117, *(&v117 + 1));
              if ((v77 & 1) == 0)
              {
                sub_1ADDCC35C(v76, v75);
                goto LABEL_93;
              }

              *&v117 = v76;
              *(&v117 + 1) = v75;
              sub_1ADF9C614(&v117, a5, a6, a7, v69, a8, a3, a9, v71, a10, a11, a12, a13, v70, a15);
              if (v16)
              {

                v98 = v76;
                v99 = v75;
                return sub_1ADDCC35C(v98, v99);
              }

              v78 = v18;
              swift_beginAccess();
              v79 = *(v71 + 16);
              if (!*(v79 + 16) || (v80 = sub_1ADDDE7CC(v76, v75), (v81 & 1) == 0))
              {
                swift_endAccess();
                goto LABEL_81;
              }

              v82 = (*(v79 + 56) + 3 * v80);
              v83 = *v82;
              v84 = v82[1];
              swift_endAccess();
              if (a1)
              {
                if (v83 <= 1 && v84 <= 1)
                {
                  goto LABEL_81;
                }

                goto LABEL_78;
              }

              if (v83 > 1)
              {
                if (v83 != 2)
                {
LABEL_78:
                  if (qword_1EB5B9920 != -1)
                  {
                    swift_once();
                  }

                  v86 = byte_1EB5D7510;
                  *(a9 + 16) = word_1EB5D750E;
                  *(a9 + 18) = v86;
                  swift_beginAccess();
                  sub_1ADDD86D8(v76, v75);
                  sub_1ADDE0110(v115, v76, v75);
                  swift_endAccess();
                  sub_1ADDCC35C(v115[0], v115[1]);
LABEL_81:
                  *&v117 = v76;
                  *(&v117 + 1) = v75;
                  (*(v70 + 56))(v115, &v117, a12, v70);
                  v87 = v115[0];
                  if (v115[0])
                  {
                    v88 = type metadata accessor for AllRefsVisitor();
                    v89 = swift_allocObject();
                    *(v89 + 24) = 0;
                    *(v89 + 16) = MEMORY[0x1E69E7CD0];
                    v90 = (v89 + 16);
                    v118 = v88;
                    v119 = &off_1F23C4500;
                    *&v117 = v89;
                    v91 = *(*v87 + 128);

                    v91(&v117);
                    __swift_destroy_boxed_opaque_existential_1(&v117);
                    swift_beginAccess();
                    v92 = *v90;

                    v93 = *(v92 + 16);
                    if (v93)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
                      v94 = swift_allocObject();
                      v95 = _swift_stdlib_malloc_size(v94);
                      v96 = v95 - 32;
                      if (v95 < 32)
                      {
                        v96 = v95 - 17;
                      }

                      *(v94 + 16) = v93;
                      *(v94 + 24) = 2 * (v96 >> 4);
                      v97 = sub_1AE03A790(&v117, (v94 + 32), v93, v92);
                      sub_1ADDDCE74();
                      if (v97 != v93)
                      {
                        goto LABEL_98;
                      }
                    }

                    else
                    {

                      v94 = MEMORY[0x1E69E7CC0];
                    }

                    sub_1ADFB6D60(v94);
                    sub_1ADDCC35C(v76, v75);

                    v18 = v120;
                    v70 = a14;
                    v69 = a4;
                    v71 = v106;
                    if (!*(v120 + 2))
                    {
                      goto LABEL_93;
                    }
                  }

                  else
                  {
                    sub_1ADDCC35C(v76, v75);
                    v18 = v78;
                    if (!*(v78 + 2))
                    {
                      goto LABEL_93;
                    }
                  }

                  continue;
                }
              }

              else if (v83)
              {
                goto LABEL_78;
              }

              break;
            }

            if ((v84 & 0xFFFFFFFD) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_78;
          }

          v25 = *(v21 + 8 * v32);
          ++v28;
        }

        while (!v25);
        v28 = v32;
LABEL_13:
        v33 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v34 = v33 | (v28 << 6);
        v114 = *(*(v27 + 48) + 16 * v34);
        v35 = (*(v27 + 56) + 3 * v34);
        v36 = *v35;
        v37 = v35[1];
        if (a1)
        {
          break;
        }

        if (v36 > 1 || v37 > 1)
        {
          swift_beginAccess();
          v38 = *(a3 + 16);
          v39 = *(v38 + 16);
          sub_1ADDD86D8(v114, *(&v114 + 1));
          if (v39 && (v40 = sub_1ADDDE7CC(v114, *(&v114 + 1)), (v41 & 1) != 0))
          {
            v42 = (*(v38 + 56) + 16 * v40);
            v29 = *v42;
            v43 = v42[1];

            v31 = v43;
            v18 = v102;
            if (v29)
            {

              swift_endAccess();
              v50 = MEMORY[0x1E69E7D48];
              v51 = v29;
              v52 = v43;
              goto LABEL_31;
            }
          }

          else
          {
            v31 = 0;
            v18 = v102;
          }

          v30 = MEMORY[0x1E69E7D48];
LABEL_7:
          sub_1ADF9D98C(0, v31, v30);
          swift_endAccess();
          sub_1ADDCC35C(v114, *(&v114 + 1));
          v27 = v101;
        }
      }

      if (v36 > 1)
      {
        if (v36 == 2)
        {
          continue;
        }

        break;
      }

      if (v36)
      {
        break;
      }
    }

    while ((v37 & 0xFFFFFFFD) == 0);
    swift_beginAccess();
    v44 = *(a3 + 16);
    v45 = *(v44 + 16);
    sub_1ADDD86D8(v114, *(&v114 + 1));
    if (!v45 || (v46 = sub_1ADDDE7CC(v114, *(&v114 + 1)), (v47 & 1) == 0))
    {
      v29 = 0;
      v18 = v102;
LABEL_6:
      v30 = MEMORY[0x1E69E7D48];
      v31 = v29;
      goto LABEL_7;
    }

    v48 = (*(v44 + 56) + 16 * v46);
    v49 = *v48;
    v29 = v48[1];

    v18 = v102;
    if (!v49)
    {
      goto LABEL_6;
    }

    swift_endAccess();
    v50 = MEMORY[0x1E69E7D48];
    v51 = v49;
    v52 = v29;
LABEL_31:
    sub_1ADF9D98C(v51, v52, v50);
    v117 = v114;
    result = (*(a14 + 56))(v116, &v117, a12);
    if (v16)
    {
      goto LABEL_99;
    }

    if (!v116[0])
    {
      goto LABEL_105;
    }

    if (v29 == v116[0])
    {
      v55 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v54 = *(*v116[0] + 104);

      v55 = v54(v29);
    }

    v56 = *(v55 + 16);
    if (!v56)
    {

      v57 = MEMORY[0x1E69E7CC0];
LABEL_42:
      v105 = v57;
      v60 = *(v57 + 16);
      v61 = v18;
      v62 = *(v18 + 2);
      v100 = v60;
      v63 = v62 + v60;
      if (__OFADD__(v62, v60))
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v64 = *(v61 + 3) >> 1, v64 >= v63))
      {
        v18 = v61;
      }

      else
      {
        if (v62 <= v63)
        {
          v65 = v63;
        }

        else
        {
          v65 = v62;
        }

        result = sub_1ADE5534C(result, v65, 1, v61);
        v18 = result;
        v64 = *(result + 3) >> 1;
      }

      if (*(v105 + 16))
      {
        if (v64 - *(v18 + 2) < v100)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v100)
        {
          v66 = *(v18 + 2);
          v67 = __OFADD__(v66, v100);
          v68 = v66 + v100;
          if (v67)
          {
            goto LABEL_104;
          }

          *(v18 + 2) = v68;
        }
      }

      else
      {

        if (v100)
        {
          goto LABEL_101;
        }
      }

      sub_1ADDCC35C(v114, *(&v114 + 1));

      v120 = v18;
      v27 = v101;
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v103 = v55;
  v57 = swift_allocObject();
  v58 = _swift_stdlib_malloc_size(v57);
  v59 = v58 - 32;
  if (v58 < 32)
  {
    v59 = v58 - 17;
  }

  *(v57 + 16) = v56;
  *(v57 + 24) = 2 * (v59 >> 4);
  v104 = sub_1AE03A790(&v117, (v57 + 32), v56, v103);
  result = sub_1ADDDCE74();
  if (v104 == v56)
  {
    goto LABEL_42;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

void sub_1ADF9D508(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  sub_1ADF5F770(a4, &v7);
  sub_1ADF5F770(a3, &v11);
  v9 = v11;
  v10 = v12;
  v5 = &v9;
  MergeResult.merge(_:)(v5);
  v11 = v7;
  v12 = v8;
  swift_beginAccess();
  v6 = &v11;
  MergeResult.merge(_:)(v6);
}

void *sub_1ADF9D5AC(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1ADF9D824(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1ADF9D624(uint64_t a1)
{
  v1 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v5 = v21 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = *(v1 + 56) & v9;
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:
        result = sub_1AE1B2384(v5, v3, v6, v1);
        goto LABEL_16;
      }
    }

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
        goto LABEL_15;
      }

      v15 = *(v1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_1ADF9D5AC(v19, v3, v1);

  MEMORY[0x1B26FDA50](v19, -1, -1);
  result = v20;
LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADF9D824(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = *(a3 + 56) & v9;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_14:

      return sub_1AE1B2384(v5, a2, v6, a3);
    }
  }

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
      goto LABEL_14;
    }

    v15 = *(a3 + 56 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ADF9D934()
{
  result = qword_1EB5B9508;
  if (!qword_1EB5B9508)
  {
    type metadata accessor for AnyReference();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9508);
  }

  return result;
}

uint64_t sub_1ADF9D98C(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result)
  {
    a3();

    return (a3)(a2);
  }

  return result;
}

uint64_t sub_1ADF9D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = type metadata accessor for MissingTypedRefVisitor();
  v25 = sub_1AE03D6C8(a2);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v23 = a4;
  v14 = a2;
  swift_unknownObjectRetain();
  v24 = a1;

  v16 = 0;
  if (v12)
  {
    while (1)
    {
      v26 = v5;
      v17 = v16;
LABEL_9:
      v27 = *(*(v24 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v12)))));
      v28 = v25;
      v18 = *(v23 + 96);
      v19 = *(&v27 + 1);
      v20 = v27;
      sub_1ADDD86D8(v27, *(&v27 + 1));
      v18(&v27, &v28, v21, &off_1F23C4578, a3, v23);
      v5 = v26;
      if (v26)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_1ADDCC35C(v20, v19);
      v16 = v17;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_1ADDCC35C(v20, v19);
    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v13)
      {

        swift_beginAccess();
        v14 = *(v25 + 16);

        return v14;
      }

      v12 = *(v9 + 8 * v17);
      ++v16;
      if (v12)
      {
        v26 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF9DBE0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = type metadata accessor for CRStructEncoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  v4[3] = MEMORY[0x1E69E7CC0];
  v6 = v4 + 3;
  v4[4] = v5;
  v4[2] = v2;
  v37[3] = v3;
  v37[4] = sub_1ADFA00FC();
  v37[0] = v4;
  v7 = v4;

  sub_1AE23CBAC();
  if (v38)
  {

    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    swift_beginAccess();
    v9 = *v6;
    v10 = v4 + 3;
    if (*(*v6 + 16))
    {
      v38 = v1;
      v11 = v7[4];

      v36 = sub_1AE03C634(v9, v11);
      sub_1ADF7BDBC(&v36);
      v12 = v5;

      v13 = v36;
      v14 = v36[2];
      if (v14)
      {
        v35 = v7;
        v36 = v12;
        sub_1ADE6F00C(0, v14, 0);
        v15 = v36;
        v16 = v36[2];
        v17 = 4;
        v18 = v14;
        do
        {
          v19 = v13[v17];
          v36 = v15;
          v20 = v15[3];
          if (v16 >= v20 >> 1)
          {
            sub_1ADE6F00C((v20 > 1), v16 + 1, 1);
            v15 = v36;
          }

          v15[2] = v16 + 1;
          v15[v16 + 4] = v19;
          v17 += 2;
          ++v16;
          --v18;
        }

        while (v18);
        v21 = *v10;
        *v10 = v15;

        v12 = MEMORY[0x1E69E7CC0];
        v36 = MEMORY[0x1E69E7CC0];
        sub_1AE23DB1C();
        v22 = 5;
        do
        {
          v23 = v13[v22];

          sub_1AE23DAEC();
          v24 = v36[2];
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          v22 += 2;
          --v14;
        }

        while (v14);

        v25 = v36;
        v7 = v35;
      }

      else
      {
        v27 = *v10;
        *v10 = v12;

        v25 = v12;
      }

      v28 = v7[4];
      v7[4] = v25;

      v9 = v7[3];
      v26 = *(v9 + 16);
    }

    else
    {
      v26 = 0;
      v12 = v5;
    }

    v29 = sub_1ADF7B940(0, v26);
    v31 = sub_1ADE522B8(v9, v29, v30);

    if (v31)
    {
      v32 = *v10;
      *v10 = v12;
    }

    v33 = v7[3];
    v34 = v7[4];
    swift_beginAccess();

    sub_1AE1B6BF8(v33, v34);
    swift_endAccess();
  }
}

uint64_t sub_1ADF9DF4C()
{
  type metadata accessor for CRStructEncoder.KeyedContainer();

  swift_getWitnessTable();
  return sub_1AE23DD6C();
}

uint64_t sub_1ADF9DFCC(uint64_t a1, uint64_t a2, void *a3, int64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v57 = a7;
  v8 = a5;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v20 = v19;
  v21 = sub_1AE23E3DC();
  if (v22)
  {
    goto LABEL_34;
  }

  if (v21 < 0)
  {
    (*(v12 + 16))(v15, a1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
    if (swift_dynamicCast())
    {
      a6 = 0;
      v31 = v60[0];
      v8 = v60[0] + 64;
      v32 = *(v60[0] + 64);
      v33 = 1 << *(v60[0] + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v32;
      v36 = (v33 + 63) >> 6;
      v55 = v36;
      v56 = v60[0];
      if ((v34 & v32) != 0)
      {
LABEL_20:
        while (1)
        {
          v38 = (a6 << 9) | (8 * __clz(__rbit64(v35)));
          a4 = *(*(v31 + 48) + v38);
          if (a4 < 0)
          {
            break;
          }

          v39 = *(*(v31 + 56) + v38);
          swift_beginAccess();
          v40 = a3[3];
          v57 = v39;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3[3] = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_1ADDF69D0(0, *(v40 + 2) + 1, 1, v40);
            a3[3] = v40;
          }

          v43 = *(v40 + 2);
          v42 = *(v40 + 3);
          if (v43 >= v42 >> 1)
          {
            v40 = sub_1ADDF69D0((v42 > 1), v43 + 1, 1, v40);
          }

          *(v40 + 2) = v43 + 1;
          *&v40[8 * v43 + 32] = a4;
          a3[3] = v40;
          v15 = a3[2];
          v44 = (v15 + 112);
          v45 = *(v15 + 14);
          a4 = *(v15 + 15);
          *(v15 + 15) = 0;
          *(v15 + 14) = 0;
          v46 = v61;
          (*(*v57 + 152))(a3[2]);
          v61 = v46;
          if (v46)
          {
          }

          if (*(v15 + 15))
          {
            sub_1ADE42E40();
            swift_allocError();
            *v54 = 0xD00000000000003DLL;
            *(v54 + 8) = 0x80000001AE260360;
            *(v54 + 16) = 3;
            swift_willThrow();
          }

          v47 = *v44;
          if (!*v44)
          {
            type metadata accessor for CREncoder.CRValueContainer();
            v47 = swift_allocObject();
            type metadata accessor for Proto_Value._StorageClass();
            inited = swift_initStaticObject();
            *(v47 + 16) = v15;
            *(v47 + 24) = inited;
            *(v15 + 14) = v47;
          }

          swift_beginAccess();
          v49 = *(v47 + 24);
          *(v15 + 14) = v45;

          v50 = *(v15 + 15);
          *(v15 + 15) = a4;

          v51 = swift_beginAccess();
          MEMORY[0x1B26FB860](v51);
          v52 = a3[4];
          if (*(v52 + 16) >= *(v52 + 24) >> 1)
          {
            a4 = *(v52 + 16);
            sub_1AE23D03C();
          }

          v35 &= v35 - 1;
          v20 = (a3 + 4);
          sub_1AE23D09C();
          swift_endAccess();

          v36 = v55;
          v31 = v56;
          if (!v35)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        while (1)
        {
          v37 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            break;
          }

          if (v37 >= v36)
          {
          }

          v35 = *(v8 + 8 * v37);
          ++a6;
          if (v35)
          {
            a6 = v37;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_34:
    sub_1ADE42E40();
    swift_allocError();
    *v53 = xmmword_1AE24E080;
    *(v53 + 16) = 4;
    return swift_willThrow();
  }

  v15 = v21;
  (*(v12 + 16))(v18, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (!swift_dynamicCast())
  {
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    sub_1ADFA019C(v58);
    goto LABEL_34;
  }

  sub_1ADE23E6C(v58, v60);
  swift_beginAccess();
  v20 = a3[3];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  a3[3] = v20;
  if ((v23 & 1) == 0)
  {
LABEL_40:
    v23 = sub_1ADDF69D0(0, *(v20 + 2) + 1, 1, v20);
    v20 = v23;
    a3[3] = v23;
  }

  v25 = *(v20 + 2);
  v24 = *(v20 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1ADDF69D0((v24 > 1), v25 + 1, 1, v20);
    v20 = v23;
  }

  *(v20 + 2) = v25 + 1;
  *&v20[8 * v25 + 32] = v15;
  a3[3] = v20;
  v26 = a3[2];
  MEMORY[0x1EEE9AC00](v23);
  *(&v55 - 6) = a4;
  *(&v55 - 5) = v8;
  v27 = v57;
  *(&v55 - 4) = a6;
  *(&v55 - 3) = v27;
  *(&v55 - 2) = v60;
  *(&v55 - 1) = a3;
  v28 = v61;
  sub_1ADE6B938(sub_1ADFA0284);
  if (!v28)
  {
    v29 = swift_beginAccess();
    MEMORY[0x1B26FB860](v29);
    if (*(a3[4] + 16) >= *(a3[4] + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1ADF9E674@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = &type metadata for CRStructEncoder.UnkeyedContanier;
  a2[4] = sub_1ADFA0090();
  *a2 = a1;
}

uint64_t sub_1ADF9E6C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructEncoder();
  a2[4] = sub_1ADFA00FC();
  *a2 = a1;
}

uint64_t sub_1ADF9E710@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructEncoder();
  a2[4] = sub_1ADFA00FC();
  *a2 = a1;
}

uint64_t sub_1ADF9E7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  return sub_1ADF9DFCC(v6, a3, *v4, *(a4 + 16), MEMORY[0x1E69E6158], *(a4 + 24), MEMORY[0x1E69E6160]);
}

uint64_t sub_1ADF9EE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  return sub_1ADF9E648();
}

uint64_t sub_1ADF9EE60@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ADF9E674(*v2, a2);
}

uint64_t sub_1ADF9EE70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ADF9E6C4(*v2, a2);
}

uint64_t sub_1ADF9EE80@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ADF9E710(*v2, a2);
}

uint64_t sub_1ADF9EEBC(char a1, uint64_t a2)
{
  v9[3] = MEMORY[0x1E69E6370];
  v9[4] = &protocol witness table for Bool;
  LOBYTE(v9[0]) = a1;
  v4 = *(a2 + 16);
  sub_1ADE6B938(sub_1ADFA0454);
  if (!v2)
  {
    v5 = swift_beginAccess();
    MEMORY[0x1B26FB860](v5);
    v6 = *(a2 + 32);
    if (*(v6 + 16) >= *(v6 + 24) >> 1)
    {
      v8 = *(v6 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1ADF9EFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[3] = MEMORY[0x1E69E6158];
  v10[4] = &protocol witness table for String;
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(a3 + 16);

  sub_1ADE6B938(sub_1ADFA0454);
  if (!v3)
  {
    v6 = swift_beginAccess();
    MEMORY[0x1B26FB860](v6);
    v7 = *(a3 + 32);
    if (*(v7 + 16) >= *(v7 + 24) >> 1)
    {
      v9 = *(v7 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1ADF9F0A4(uint64_t a1, double a2)
{
  v9[3] = MEMORY[0x1E69E63B0];
  v9[4] = &protocol witness table for Double;
  *v9 = a2;
  v4 = *(a1 + 16);
  sub_1ADE6B938(sub_1ADFA0454);
  if (!v2)
  {
    v5 = swift_beginAccess();
    MEMORY[0x1B26FB860](v5);
    v6 = *(a1 + 32);
    if (*(v6 + 16) >= *(v6 + 24) >> 1)
    {
      v8 = *(v6 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1ADF9F194(uint64_t a1, float a2)
{
  v9[3] = MEMORY[0x1E69E6448];
  v9[4] = &protocol witness table for Float;
  *v9 = a2;
  v4 = *(a1 + 16);
  sub_1ADE6B938(sub_1ADFA0454);
  if (!v2)
  {
    v5 = swift_beginAccess();
    MEMORY[0x1B26FB860](v5);
    v6 = *(a1 + 32);
    if (*(v6 + 16) >= *(v6 + 24) >> 1)
    {
      v8 = *(v6 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1ADF9F284(char a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v7 = sub_1ADE23E6C(v12, v15);
    v8 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v7);
    sub_1ADE6B938(a4);
    if (!v4)
    {
      v9 = swift_beginAccess();
      MEMORY[0x1B26FB860](v9);
      if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1ADFA019C(v12);
    sub_1ADE42E40();
    swift_allocError();
    *v11 = xmmword_1AE24E080;
    *(v11 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9F41C(__int16 a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v7 = sub_1ADE23E6C(v12, v15);
    v8 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v7);
    sub_1ADE6B938(a4);
    if (!v4)
    {
      v9 = swift_beginAccess();
      MEMORY[0x1B26FB860](v9);
      if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1ADFA019C(v12);
    sub_1ADE42E40();
    swift_allocError();
    *v11 = xmmword_1AE24E080;
    *(v11 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9F5B4(int a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v7 = sub_1ADE23E6C(v12, v15);
    v8 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v7);
    sub_1ADE6B938(a4);
    if (!v4)
    {
      v9 = swift_beginAccess();
      MEMORY[0x1B26FB860](v9);
      if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1ADFA019C(v12);
    sub_1ADE42E40();
    swift_allocError();
    *v11 = xmmword_1AE24E080;
    *(v11 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v12[3] = a3;
  v12[4] = a4;
  v12[0] = a1;
  v7 = *(a2 + 16);
  sub_1ADE6B938(a5);
  if (!v5)
  {
    v8 = swift_beginAccess();
    MEMORY[0x1B26FB860](v8);
    v9 = *(a2 + 32);
    if (*(v9 + 16) >= *(v9 + 24) >> 1)
    {
      v11 = *(v9 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1ADF9F81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v9 = sub_1ADE23E6C(v15, v17);
    v10 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v9);
    *&v15[-1] = v17;
    *(&v15[-1] + 1) = a2;
    sub_1ADE6B938(sub_1ADFA0204);
    if (!v3)
    {
      v11 = swift_beginAccess();
      MEMORY[0x1B26FB860](v11);
      v12 = *(a2 + 32);
      if (*(v12 + 16) >= *(v12 + 24) >> 1)
      {
        v17[6] = *(v12 + 16);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1ADFA019C(v15);
    sub_1ADE42E40();
    swift_allocError();
    *v14 = xmmword_1AE24E080;
    *(v14 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9FA40()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16);
}

uint64_t sub_1ADF9FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1ADF9FE88@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for CRStructEncoder();
  a1[4] = sub_1ADFA00FC();
  *a1 = v3;
}

uint64_t sub_1ADF9FFE8@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for CRStructEncoder.UnkeyedContanier;
  a2[4] = a1();
  *a2 = v4;
}

unint64_t sub_1ADFA003C()
{
  result = qword_1EB5BBB78;
  if (!qword_1EB5BBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB78);
  }

  return result;
}

unint64_t sub_1ADFA0090()
{
  result = qword_1EB5BBB80;
  if (!qword_1EB5BBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB80);
  }

  return result;
}

unint64_t sub_1ADFA00FC()
{
  result = qword_1ED968040[0];
  if (!qword_1ED968040[0])
  {
    type metadata accessor for CRStructEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED968040);
  }

  return result;
}

uint64_t sub_1ADFA0150()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFA019C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB88, &qword_1AE24EB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADFA021C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(*(v2 + 16), v3, v4);
}

uint64_t sub_1ADFA0284()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(*(v2 + 16), v3, v4);
}

uint64_t sub_1ADFA046C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return sub_1ADE92304(v3, v4, v5, v6, v7);
}

uint64_t sub_1ADFA0518(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[19];
  v9 = *(a1 + 16);
  *(v1 + 15) = *a1;
  *(v1 + 17) = v9;
  v1[19] = v3;
  return sub_1ADE92284(v4, v5, v6, v7, v8);
}

void sub_1ADFA0580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1ADFA04C4();
  if (*(v8 + 32) != 1)
  {
    v13 = *(v2 + 9);
    v9 = *(v6 + 640);
    v10 = *(v6 + 632);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Capsule();
    Capsule.finalizeTimestamps(_:)(v13);
  }

  (v7)(v12, 0);
  v11 = objc_autoreleasePoolPush();
  sub_1ADFA06F8(v3, a1, a2, v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_1ADFA06F8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a2;
  v22 = a3;
  v28 = *a1;
  v7 = *(v28 + 632);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - v10;
  result = sub_1ADFA046C(&v23);
  v13 = v27;
  if (v27 != 1)
  {
    v18 = a4;
    v14 = v23;
    v19 = v24;
    v20 = v23;
    v15 = v25;
    v16 = v26;
    (*(v8 + 16))(v11, &a1[*(*a1 + 656)], v7);
    v23 = v14;
    v17 = v19;
    v24 = v19;
    v25 = v15;
    v26 = v16;
    v27 = v13;
    (*(*(v28 + 640) + 32))(&v23, v21, *(a1 + 9), v22, v7);
    (*(v8 + 8))(v11, v7);
    result = sub_1ADE92284(v20, v17, v15, v16, v13);
    if (v4)
    {
      *v18 = v4;
    }
  }

  return result;
}

uint64_t sub_1ADFA08D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 632);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-1] - v12;
  (*(v9 + 16))(&v20[-1] - v12, &v4[*(v7 + 656)], v8, v11);
  (*(*(v7 + 640) + 24))(v20, a1, *(v4 + 9), a2, v8);
  (*(v9 + 8))(v13, v8);
  if (!v3)
  {
    v14 = v20[0];
    v15 = v20[1];
    v16 = v20[2];
    v17 = v20[3];
    LOBYTE(v4) = sub_1AE215B78(v20);
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v16, v17);
  }

  return v4 & 1;
}

uint64_t sub_1ADFA0A90()
{
  v1 = *v0;
  sub_1ADE92284(v0[15], v0[16], v0[17], v0[18], v0[19]);
  v2 = *(*(*(v1 + 632) - 8) + 8);
  v3 = v0 + *(*v0 + 656);

  return v2(v3);
}

uint64_t sub_1ADFA0B20()
{
  v1 = *v0;
  v2 = sub_1AE213A10();
  sub_1ADE92284(*(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 144), *(v2 + 152));
  (*(*(*(v1 + 632) - 8) + 8))(v2 + *(*v2 + 656));
  return v2;
}

uint64_t sub_1ADFA0BB8()
{
  v0 = *sub_1ADFA0B20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *CRCustomFileSyncManager.__allocating_init(_:sync:at:customSync:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ADFA115C(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a4);

  return v7;
}

uint64_t *CRCustomFileSyncManager.init(_:sync:at:customSync:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_1ADFA0FC8(a1, a2, a3, a4);
  (*(*(*(v7 + 80) - 8) + 8))(a4);

  return v8;
}

uint64_t CRCustomFileSyncManager.sync(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return sub_1AE213BD4(v6);
}

uint64_t CRCustomFileSyncManager.sync(_:finished:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v3 + 16);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  return sub_1AE213F4C(v8, a2, a3);
}

uint64_t CRCustomFileSyncManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CRCustomFileSyncManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_1ADFA0E20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v11 = *v6;
  v12 = sub_1AE23BDDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  *(v6 + 15) = 0u;
  *(v6 + 17) = 0u;
  v6[19] = 1;
  (*(*(*(v11 + 632) - 8) + 16))(v6 + *(v11 + 656), a4);
  v18 = *a2;
  v24[1] = *(a2 + 16);
  v24[0] = v18;
  v25 = v17;
  (*(v13 + 16))(v16, a3, v12);
  v19 = sub_1AE21BFC8(a1, v24, v16, v22, v23);
  (*(v13 + 8))(a3, v12);
  return v19;
}

uint64_t *sub_1ADFA0FC8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 4);
  v17 = *(v10 + 80);
  v18 = *(v10 + 88);
  v19 = type metadata accessor for CRCustomFileSyncManagerInternals();
  v20 = *a2;
  v26[1] = a2[1];
  v26[0] = v20;
  v27 = v16;
  (*(v12 + 16))(v15, a3, v11);
  v21 = *(v19 + 48);
  v22 = *(v19 + 52);
  swift_allocObject();
  v23 = sub_1ADFA0E20(a1, v26, v15, a4, 0, 0);
  (*(v12 + 8))(a3, v11);
  v5[2] = v23;
  return v5;
}

uint64_t sub_1ADFA1210(uint64_t a1)
{
  v1 = *(a1 + 632);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFA130C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v11 = a5;
  v15 = *(a1 + 16);
  if ((~v15 & 0xF000000000000007) != 0 && (v15 & 0xF000000000000000) == 0x2000000000000000)
  {
    v24 = (v15 & 0xFFFFFFFFFFFFFFFLL);
    v25 = v24[2];
    v26 = v24[3];
    v27 = v24[5];
    *&v38[48] = v24[4];
    v39 = v27;
    *&v38[16] = v25;
    *&v38[32] = v26;
    *v38 = v24[1];
    v34 = *(&v27 + 1);
    v35 = v27;
    v22 = v38[56];
    v32 = *&v38[24];
    v33 = *&v38[40];
    v31 = *&v38[8];
    v30 = *v38;
    v48 = a8;
    v36 = a2;
    sub_1ADFAEE10(v38, v37);
    v21 = v32;
    v23 = v33;
    v20 = v31;
    v17 = v30;
    v19 = v34;
    v18 = v35;
    v11 = a5;
    a2 = v36;
    a8 = v48;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v21 = 0uLL;
    v22 = 1;
    v23 = 0uLL;
  }

  v38[0] = v22;
  v41 = v17;
  v42 = v20;
  v43 = v21;
  v44 = v23;
  v45 = v22;
  v46 = v18;
  v47 = v19;
  sub_1ADE10DC0(&v41, a2, 0, 0, a3, a4, v11, a6, &v40, a7);

  if (!v8)
  {
    *a8 = v40;
  }

  return result;
}

uint64_t sub_1ADFA14A4(uint64_t a1, void *a2)
{
  v6 = *v2;
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v21[1] = v6;
  v8 = *(a1 + 16);
  v9 = sub_1AE16CC2C();
  v21[0] = 0;
  v10 = a2[2];
  v11 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADFAD9A8(v9, a1, v21, a2, v11, WitnessTable, v22);

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = swift_allocObject();
      v14 = *(inited + 16);
      *(v13 + 16) = v14;
      sub_1ADE5215C(v14);

      inited = v13;
    }

    v15 = swift_allocObject();
    v16 = v22[3];
    *(v15 + 48) = v22[2];
    *(v15 + 64) = v16;
    *(v15 + 80) = v22[4];
    v17 = v22[1];
    *(v15 + 16) = v22[0];
    *(v15 + 32) = v17;
    v18 = v15 | 0x2000000000000000;
    v19 = *(inited + 16);
    *(inited + 16) = v18;
    sub_1ADE52174(v19);
  }

  return inited;
}

uint64_t sub_1ADFA1604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  result = type metadata accessor for FinalizedTimestamp(0);
  v16 = *(result + 20);
  v17 = *(v4 + v16);
  if (*(a1 + v16) > v17)
  {
    v17 = *(a1 + v16);
  }

  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1ADDD2728(v4, type metadata accessor for FinalizedTimestamp);
    (*(v10 + 32))(v4, v14, v9);
    *(v4 + v16) = v18;
    (*(*(*(a3 + 16) - 8) + 24))(v4 + *(a3 + 36), a2);
    return sub_1ADDD2658(v4, a4, type metadata accessor for FinalizedTimestamp);
  }

  return result;
}

uint64_t sub_1ADFA17A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v13);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v6 + 8))(v9, v5);
LABEL_4:
    v17 = v2 + *(a2 + 36);
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 8));
  }

  (*(v10 + 32))(v15, v9, a2);
  v16 = sub_1ADF77EEC(*(v2 + *(a2 + 40)), *&v15[*(a2 + 40)]);
  (*(v10 + 8))(v15, a2);
  if (v16)
  {
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1ADFA199C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for CRDictionaryElement.Delta();
  v12 = *(v11 + 36);
  (*(*(a4 - 8) + 56))(a5 + v12, 1, 1, a4);
  sub_1ADF92F3C(a1, a5, &qword_1EB5BA460, &qword_1AE251020);
  v13 = sub_1AE23D7CC();
  result = (*(*(v13 - 8) + 40))(a5 + v12, a2, v13);
  *(a5 + *(v11 + 40)) = a3;
  return result;
}

uint64_t sub_1ADFA1ADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = sub_1AE23D7CC();
  v64 = *(v65 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v52 - v14;
  v15 = type metadata accessor for FinalizedTimestamp(0);
  v16 = *(v15 - 8);
  v59 = *(v16 + 56);
  v58 = v16 + 56;
  v59(a5, 1, 1, v15);
  v60 = a4;
  v17 = type metadata accessor for CRDictionaryElement.Delta();
  v18 = *(a3 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v63 = *(v17 + 36);
  v67 = a5;
  v57 = v19;
  v19((a5 + v63), 1, 1, a3);
  v21 = a1[2];
  v22 = a1[3];
  v68 = a1;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  if (v21)
  {
    v24 = v22;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v21);

  v25 = v66;
  v26 = sub_1ADDF4A24(v23, v24, a2);
  if (v25)
  {

    v27 = v68;
    v77 = *v68;
    sub_1ADDCEDE0(&v77, &qword_1EB5BBD18, &qword_1AE24F340);
    v76 = v27[1];
    sub_1ADDCEDE0(&v76, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v21);
    v75 = v27[4];
    v28 = v67;
    sub_1ADDCEDE0(&v75, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADDCEDE0(v28, &qword_1EB5BA460, &qword_1AE251020);
    return (*(v64 + 8))(v28 + v63, v65);
  }

  v55 = v15;
  v54 = v20;
  v66 = a2;
  v56 = v22;
  v30 = v67;
  *(v67 + *(v17 + 40)) = v26;
  v31 = v68;
  v32 = v68[1];
  if (!v32)
  {

    v74 = *v31;
    sub_1ADDCEDE0(&v74, &qword_1EB5BBD18, &qword_1AE24F340);
    sub_1ADE42CB8(v21);
    v73 = v31[4];
    return sub_1ADDCEDE0(&v73, qword_1EB5BBD20, &unk_1AE253900);
  }

  v33 = *(v32 + 16);
  if (v33 >> 60 || (v33 & 0xF000000000000007) == 0xF000000000000007)
  {
    v38 = &unk_1ED968480;
    swift_beginAccess();
    v37 = v62;
    if (byte_1ED9684A0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = v68[1];
    v35 = v30;
    v36 = *(v33 + 16);
    swift_beginAccess();
    v37 = v62;
    if (*(v36 + 32))
    {
      v30 = v35;
      v32 = v34;
      goto LABEL_25;
    }

    v38 = *(v33 + 16);
    v30 = v35;
    v32 = v34;
  }

  swift_beginAccess();
  if (*(v38 + 32))
  {
    v39 = 0;
  }

  else
  {
    v39 = v38[2];
  }

  if (*(v38 + 32))
  {
    v40 = 0;
  }

  else
  {
    v40 = v38[3];
  }

  v41 = v66;

  sub_1ADE058D4(v39, v40, v41, v37);
  v59(v37, 0, 1, v55);
  sub_1ADF92F3C(v37, v30, &qword_1EB5BA460, &qword_1AE251020);
LABEL_25:
  v42 = *(v32 + 16);
  if (v42 >> 60 || (v42 & 0xF000000000000007) == 0xF000000000000007)
  {
    v44 = &unk_1ED968480;
    swift_beginAccess();
    if (qword_1ED9684A8)
    {
      goto LABEL_30;
    }

LABEL_32:

    v47 = v68;
    v72 = *v68;
    sub_1ADDCEDE0(&v72, &qword_1EB5BBD18, &qword_1AE24F340);

    sub_1ADE42CB8(v21);
    v71 = v47[4];
    return sub_1ADDCEDE0(&v71, qword_1EB5BBD20, &unk_1AE253900);
  }

  v43 = *(v42 + 16);
  swift_beginAccess();
  if (!*(v43 + 40))
  {
    goto LABEL_32;
  }

  v44 = *(v42 + 16);
LABEL_30:
  v67 = v32;
  swift_beginAccess();
  v45 = v44[5];
  v53 = v21;
  if (v45)
  {
    inited = v45;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v48 = v66;

  v49 = sub_1ADE0262C(inited, v48);

  v50 = v61;
  (*(*(*(v60 + 8) + 8) + 8))(v49, a3);

  v51 = v68;
  v70 = *v68;
  sub_1ADDCEDE0(&v70, &qword_1EB5BBD18, &qword_1AE24F340);

  sub_1ADE42CB8(v53);
  v69 = v51[4];
  sub_1ADDCEDE0(&v69, qword_1EB5BBD20, &unk_1AE253900);
  v57(v50, 0, 1, a3);
  return (*(v64 + 40))(v30 + v63, v50, v65);
}

uint64_t sub_1ADFA234C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v7 = *(a2 + 16);
  v8 = sub_1AE23D7CC();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - v10;
  v75 = v7;
  v71 = *(v7 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v63 - v17;
  v19 = type metadata accessor for FinalizedTimestamp(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + *(a2 + 40));

  sub_1ADF78ED0(v25, &v74);
  v73 = v74;
  v26 = sub_1ADDF5C7C(a1);
  v69 = v27;
  v70 = v26;

  sub_1ADE17348(v4, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1ADDCEDE0(v18, &qword_1EB5BA460, &qword_1AE251020);
    inited = 0;
    v29 = v75;
    v30 = v67;
  }

  else
  {
    sub_1ADE172E4(v18, v23);
    v64 = a1;
    v31 = sub_1ADDF66A8(v23);
    v63 = *&v23[*(v19 + 20)];
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v32 = *(inited + 16);
    if (v32 >> 60 || (v32 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v33 = swift_initStaticObject();
    }

    else
    {
      v33 = *(v32 + 16);
    }

    v29 = v75;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1ADDD2728(v23, type metadata accessor for FinalizedTimestamp);
    }

    else
    {
      type metadata accessor for Proto_Register._StorageClass();
      swift_allocObject();
      v34 = v31;

      v36 = sub_1ADDE8D20(v35);
      sub_1ADDD2728(v23, type metadata accessor for FinalizedTimestamp);

      v33 = v36;
      v31 = v34;
      v29 = v75;
    }

    swift_beginAccess();
    v37 = v63;
    *(v33 + 16) = v31;
    *(v33 + 24) = v37;
    *(v33 + 32) = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v67;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = swift_allocObject();
      v40 = *(inited + 16);
      *(v39 + 16) = v40;
      sub_1ADE5215C(v40);

      inited = v39;
    }

    a1 = v64;
    v41 = swift_allocObject();
    *(v41 + 16) = v33;
    v42 = *(inited + 16);
    *(inited + 16) = v41;
    sub_1ADE52174(v42);
  }

  v43 = v4 + *(a2 + 36);
  v44 = v68;
  (*(v30 + 16))(v11, v43, v68);
  v45 = v71;
  if ((*(v71 + 48))(v11, 1, v29) == 1)
  {
    result = (*(v30 + 8))(v11, v44);
  }

  else
  {
    v47 = v65;
    v48 = (*(v45 + 32))();
    MEMORY[0x1EEE9AC00](v48);
    v49 = *(a2 + 24);
    *(&v63 - 4) = v29;
    *(&v63 - 3) = v49;
    *(&v63 - 2) = v47;
    *(&v63 - 1) = a1;
    v50 = v72;
    v51 = sub_1ADE6B938(sub_1ADE74060);
    if (v50)
    {
      (*(v45 + 8))(v47, v29);
    }

    v52 = v51;
    if (inited)
    {
      v53 = inited;
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v53 = swift_initStaticObject();
    }

    v54 = *(v53 + 16);
    if (v54 >> 60 || (v54 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v55 = swift_initStaticObject();
    }

    else
    {
      v55 = *(v54 + 16);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_Register._StorageClass();
      swift_allocObject();
      v55 = sub_1ADDE8D20(v55);
    }

    swift_beginAccess();
    v56 = *(v55 + 40);
    *(v55 + 40) = v52;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v57 = swift_allocObject();
      v58 = *(v53 + 16);
      *(v57 + 16) = v58;
      sub_1ADE5215C(v58);

      v53 = v57;
    }

    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    v60 = *(v53 + 16);
    *(v53 + 16) = v59;
    sub_1ADE52174(v60);

    result = (*(v45 + 8))(v47, v29);
    inited = v53;
  }

  v61 = v66;
  *v66 = 0;
  v61[1] = inited;
  v62 = v69;
  v61[2] = v70;
  v61[3] = v62;
  v61[4] = 0;
  return result;
}

uint64_t sub_1ADFA2A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v90 = a1;
  v4 = *(a2 + 16);
  v87 = sub_1AE23D7CC();
  v89 = *(v87 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v77 - v8;
  v86 = *(v4 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v23 = type metadata accessor for FinalizedTimestamp(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v81 = &v77 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v77 - v30;
  v92 = a2;
  v31 = *(a2 + 24);
  v88 = v4;
  v85 = v31;
  v32 = type metadata accessor for CRDictionaryElement();
  v33 = sub_1AE23D7CC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v77 - v36;
  v38 = *(v32 - 8);
  v39 = *(v38 + 64);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v77 - v42;
  (*(v34 + 16))(v37, v90, v33, v41);
  v44 = (v24 + 48);
  if ((*(v38 + 48))(v37, 1, v32) == 1)
  {
    (*(v34 + 8))(v37, v33);
    v45 = v94;
    sub_1ADE17348(v94, v19);
    if ((*v44)(v19, 1, v23) == 1)
    {
      sub_1ADDCEDE0(v19, &qword_1EB5BA460, &qword_1AE251020);
      return (*(v38 + 56))(v93, 1, 1, v32);
    }

    v52 = v81;
    sub_1ADE172E4(v19, v81);
    v53 = v92;
    v54 = v89;
    v55 = v82;
    v56 = v87;
    (*(v89 + 16))(v82, v45 + *(v92 + 36), v87);
    v57 = v86;
    v51 = v88;
    if ((*(v86 + 48))(v55, 1, v88) == 1)
    {
      sub_1ADDD2728(v52, type metadata accessor for FinalizedTimestamp);
      (*(v54 + 8))(v55, v56);
      return (*(v38 + 56))(v93, 1, 1, v32);
    }

    v72 = *(v57 + 32);
    v73 = v52;
    v74 = v79;
    v72(v79, v55, v51);
    v75 = v78;
    sub_1ADE172E4(v73, v78);
    v76 = v80;
    v72(v80, v74, v51);
    v68 = *(v45 + *(v53 + 40));
    v67 = v93;
    v69 = v93;
    v70 = v75;
    v71 = v76;
  }

  else
  {
    (*(v38 + 32))(v43, v37, v32);
    v46 = v94;
    sub_1ADE17348(v94, v22);
    v47 = *v44;
    v48 = v46;
    if ((*v44)(v22, 1, v23) == 1)
    {
      sub_1ADDD2658(v43, v91, type metadata accessor for FinalizedTimestamp);
      v49 = v47(v22, 1, v23);
      v51 = v88;
      v50 = v89;
      if (v49 != 1)
      {
        sub_1ADDCEDE0(v22, &qword_1EB5BA460, &qword_1AE251020);
      }
    }

    else
    {
      sub_1ADE172E4(v22, v91);
      v51 = v88;
      v50 = v89;
    }

    v59 = v92;
    v60 = v84;
    v61 = v87;
    (*(v50 + 16))(v84, v48 + *(v92 + 36), v87);
    v62 = v86;
    v63 = *(v86 + 48);
    if (v63(v60, 1, v51) == 1)
    {
      v64 = v83;
      (*(v62 + 16))(v83, &v43[*(v32 + 36)], v51);
      (*(v38 + 8))(v43, v32);
      v65 = v63(v60, 1, v51);
      v66 = v64;
      v59 = v92;
      if (v65 != 1)
      {
        (*(v89 + 8))(v60, v61);
      }
    }

    else
    {
      (*(v38 + 8))(v43, v32);
      v66 = v83;
      (*(v62 + 32))(v83, v60, v51);
    }

    v67 = v93;
    v68 = *(v94 + *(v59 + 40));
    v69 = v93;
    v70 = v91;
    v71 = v66;
  }

  sub_1ADE12F9C(v70, v71, v68, v51, v69);
  (*(v38 + 56))(v67, 0, 1, v32);
}

double sub_1ADFA323C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ADFA234C(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_1ADFA3288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a5;
  v76 = *(a4 - 8);
  v77 = a2;
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v10 + 16);
  v11 = sub_1AE23D7CC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v67 - v16;
  v17 = sub_1AE23D7CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - v23;
  v73 = type metadata accessor for FinalizedTimestamp(0);
  v69 = *(v73 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67 - v28;
  v31 = *a3;
  v30 = a3[1];
  v79 = v31;
  v80 = v30;
  v32 = *(a4 + 40);
  v72 = v5;
  v33 = *(v5 + v32);
  if ((sub_1ADF7974C(v33) & 1) == 0)
  {
    (*(v18 + 16))(v21, v77, v17);
    v45 = v76;
    if ((*(v76 + 48))(v21, 1, a4) == 1)
    {
      (*(v18 + 8))(v21, v17);
LABEL_11:
      v52 = *(a4 + 24);
      v53 = type metadata accessor for CRDictionaryElement.Delta();
      return (*(*(v53 - 8) + 56))(v75, 1, 1, v53);
    }

    v46 = v68;
    (*(v45 + 32))(v68, v21, a4);
    v47 = v72;
    v48 = v73;
    v49 = *(v73 + 20);
    v50 = *&v46[v49];
    v51 = *(v72 + v49);
    if (v50 == v51)
    {
      if ((sub_1ADF5EB00() & 1) == 0)
      {
LABEL_10:
        (*(v45 + 8))(v46, a4);
        goto LABEL_11;
      }
    }

    else if (v50 >= v51)
    {
      goto LABEL_10;
    }

    v54 = v70;
    sub_1ADDD2658(v47, v70, type metadata accessor for FinalizedTimestamp);
    (*(v69 + 56))(v54, 0, 1, v48);
    v55 = v74;
    v56 = v45;
    v57 = *(v74 - 8);
    v58 = v71;
    (*(v57 + 16))(v71, v47 + *(a4 + 36), v74);
    (*(v57 + 56))(v58, 0, 1, v55);
    v59 = *(a4 + 24);
    v60 = v75;
    sub_1ADFA199C(v54, v58, MEMORY[0x1E69E7CC0], v55, v75);
    (*(v56 + 8))(v46, a4);
LABEL_19:
    v66 = type metadata accessor for CRDictionaryElement.Delta();
    return (*(*(v66 - 8) + 56))(v60, 0, 1, v66);
  }

  v78 = v33;
  v79 = v31;
  v80 = v30;

  sub_1ADF777D8(&v79);
  v34 = v76;
  v35 = *(v76 + 48);
  v36 = v35(v77, 1, a4);
  v37 = v72;
  v38 = v73;
  if (v36 == 1)
  {
    goto LABEL_16;
  }

  sub_1ADDD2658(v72, v29, type metadata accessor for FinalizedTimestamp);
  (*(v18 + 16))(v24, v77, v17);
  result = v35(v24, 1, a4);
  if (result != 1)
  {
    v40 = v67;
    sub_1ADDD2658(v24, v67, type metadata accessor for FinalizedTimestamp);
    (*(v34 + 8))(v24, a4);
    v41 = *(v38 + 20);
    v42 = *(v40 + v41);
    v43 = *&v29[v41];
    if (v42 == v43)
    {
      v44 = sub_1ADF5EB00();
    }

    else
    {
      v44 = v42 < v43;
    }

    sub_1ADDD2728(v40, type metadata accessor for FinalizedTimestamp);
    sub_1ADDD2728(v29, type metadata accessor for FinalizedTimestamp);
    if ((v44 & 1) == 0)
    {
      v61 = v70;
      (*(v69 + 56))(v70, 1, 1, v38);
      v62 = v74;
      v64 = v71;
      (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
      goto LABEL_18;
    }

LABEL_16:
    v61 = v70;
    sub_1ADDD2658(v37, v70, type metadata accessor for FinalizedTimestamp);
    (*(v69 + 56))(v61, 0, 1, v38);
    v62 = v74;
    v63 = *(v74 - 8);
    v64 = v71;
    (*(v63 + 16))(v71, v37 + *(a4 + 36), v74);
    (*(v63 + 56))(v64, 0, 1, v62);
LABEL_18:
    v65 = *(a4 + 24);
    v60 = v75;
    sub_1ADFA199C(v61, v64, v78, v62, v75);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADFA3A20(uint64_t a1)
{
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x1B26FB670](91, 0xE100000000000000);
  v3 = *(v1 + *(a1 + 40));

  sub_1ADF78ED0(v4, &v11);
  v5 = CRVersion.description.getter();
  v7 = v6;

  MEMORY[0x1B26FB670](v5, v7);

  MEMORY[0x1B26FB670](4074845, 0xE300000000000000);
  v8 = *(a1 + 36);
  v9 = *(a1 + 16);
  sub_1AE23DFCC();
  return v12;
}

uint64_t (*sub_1ADFA3B08(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 40);
  return result;
}

void sub_1ADFA3B4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1ADFAE974();
}

void *sub_1ADFA3B88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1ADDE8628();
}

void *sub_1ADFA3BBC()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1ADDF5234(0, &v20);
  v18 = v20;
  sub_1ADDE1CB8(&v18);

  v7 = v0[2];
  v8 = qword_1ED967EE8;

  if (v8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v9 = sub_1AE1FEFC0(&dword_1ED96F1F8, v7);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  swift_beginAccess();
  v10 = v1[4];
  *&v19 = v1[3];
  *(&v19 + 1) = v10;
  swift_beginAccess();
  v11 = v1[5];
  v12 = v1[6];
  v13 = qword_1ED96F250;
  swift_beginAccess();
  sub_1ADDD2658(v1 + v13, v6, type metadata accessor for FinalizedTimestamp);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();

  return sub_1ADE138D8(v9, &v19, v11, v12, v6);
}

uint64_t sub_1ADFA3E00(char *a1, uint64_t a2)
{
  v3 = v2;
  v132 = a2;
  v121 = *v2;
  v5 = v121[55];
  v6 = v121[56];
  v124 = v121[59];
  v7 = type metadata accessor for CRDictionaryElement();
  swift_getTupleTypeMetadata2();
  v8 = sub_1AE23D7CC();
  v129 = *(v8 - 8);
  v130 = v8;
  v9 = *(v129 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v109 - v10;
  v116 = type metadata accessor for Replica();
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C12C();
  v113 = *(v13 - 8);
  v14 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Timestamp(0);
  v16 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v119 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v5;
  v18 = *(v5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v109 - v23;
  v126 = v7;
  v125 = *(v7 - 8);
  v24 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v109 - v26;
  v127 = type metadata accessor for FinalizedTimestamp(0);
  v27 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v117 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v114 = &v109 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v109 - v32;
  v34 = sub_1AE23D7CC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v109 - v37;
  v39 = *(v6 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v122 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v109 - v45;
  (*(v35 + 16))(v38, a1, v34, v44);
  if ((*(v39 + 48))(v38, 1, v6) == 1)
  {
    v47 = *(v35 + 8);
    v47(v38, v34);
    v48 = v128;
    v49 = v132;
    sub_1AE16D8FC(v132, v128);
    (*(v18 + 8))(v49, v131);
    v47(a1, v34);
    return (*(v129 + 1))(v48, v130);
  }

  v110 = v35;
  v128 = v34;
  v129 = a1;
  v130 = v18;
  (*(v39 + 32))(v46, v38, v6);
  swift_beginAccess();
  v51 = v3;
  if (!*(*(v3 + 40) + 16) || (v52 = v121[58], v53 = *(v3 + 40), , sub_1ADDFFB6C(v132, v131, v52), v55 = v54, , (v55 & 1) == 0))
  {
    v80 = qword_1ED96F278;
    v81 = sub_1AE23BFEC();
    (*(*(v81 - 8) + 16))(v33, v3 + v80, v81);
    v82 = v3 + qword_1ED96F250;
    swift_beginAccess();
    v83 = *(v127 + 20);
    v84 = *(v82 + v83);
    v85 = __OFADD__(v84, 1);
    v86 = v84 + 1;
    if (!v85)
    {
      *&v33[v83] = v86;
      swift_beginAccess();
      sub_1ADFAF2E4(v33, v82);
      swift_endAccess();
      sub_1ADDD2658(v82, v33, type metadata accessor for FinalizedTimestamp);
      v87 = v122;
      (*(v39 + 16))(v122, v46, v6);
      v88 = v123;
      sub_1ADE12F9C(v33, v87, MEMORY[0x1E69E7CC0], v6, v123);
      v89 = v132;
      sub_1AE16D0B0(v132, v88);
      (*(v130 + 8))(v89, v131);
      (*(v110 + 8))(v129, v128);
      (*(v125 + 8))(v88, v126);
      return (*(v39 + 8))(v46, v6);
    }

    __break(1u);
    goto LABEL_26;
  }

  v123 = v39;
  v124 = v6;
  v3 = v131;
  v56 = *(v130 + 16);
  v57 = v120;
  v56(v120, v132, v131);
  v58 = qword_1ED96F278;
  v59 = sub_1AE23BFEC();
  v60 = v117;
  (*(*(v59 - 8) + 16))(v117, v51 + v58, v59);
  v61 = v51 + qword_1ED96F250;
  swift_beginAccess();
  *(v60 + *(v127 + 20)) = *(v61 + *(v127 + 20));
  swift_beginAccess();
  v62 = v118;
  v56(v118, v57, v3);
  v63 = v126;
  sub_1AE23CADC();
  v64 = sub_1AE23CAEC();
  if ((*(v125 + 48))(v65, 1, v63) == 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v66 = v114;
  v127 = v46;
  sub_1ADFA1604(v60, v46, v63, v114);
  sub_1ADDD2728(v60, type metadata accessor for FinalizedTimestamp);
  v64(v133, 0);
  v67 = v130 + 8;
  v68 = *(v130 + 8);
  v68(v62, v3);
  a1 = v68;
  v130 = v67;
  v68(v120, v3);
  swift_endAccess();
  swift_beginAccess();
  sub_1ADFAF2E4(v66, v61);
  swift_endAccess();
  v69 = v119;
  sub_1ADE10580(v119);
  swift_beginAccess();
  if (!*(v69 + *(v116 + 20)))
  {
    v90 = *(v69 + *(v115 + 20));
    v91 = *(v51 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = *(v51 + 24);
    v73 = v134;
    *(v51 + 24) = 0x8000000000000000;
    v39 = sub_1ADDD8A6C(v69);
    v94 = v73[2];
    v95 = (v93 & 1) == 0;
    v96 = v94 + v95;
    if (!__OFADD__(v94, v95))
    {
      v97 = v93;
      if (v73[3] >= v96)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
          v73 = v134;
        }
      }

      else
      {
        sub_1ADDDDED0(v96, isUniquelyReferenced_nonNull_native);
        v73 = v134;
        v98 = sub_1ADDD8A6C(v69);
        if ((v97 & 1) != (v99 & 1))
        {
          goto LABEL_30;
        }

        v39 = v98;
      }

      v101 = v128;
      v100 = v129;
      *(v51 + 24) = v73;
      if (v97)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v70 = *(v69 + *(v115 + 20));
  v71 = *(v51 + 32);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *(v51 + 32);
  v73 = v134;
  *(v51 + 32) = 0x8000000000000000;
  v39 = sub_1ADDD8A6C(v69);
  v75 = v73[2];
  v76 = (v74 & 1) == 0;
  v77 = v75 + v76;
  if (__OFADD__(v75, v76))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1ADDFB81C();
    v73 = v134;
LABEL_18:
    v101 = v128;
    v100 = v129;
    *(v51 + 32) = v73;
    if (v3)
    {
LABEL_19:
      v102 = v110;
      v103 = v113;
      v104 = v119;
LABEL_24:
      v107 = v132;
      v108 = v73[7] + *(v103 + 72) * v39;
      sub_1AE23C08C();
      sub_1ADDD2728(v104, type metadata accessor for Timestamp);
      swift_endAccess();
      (a1)(v107, v131);
      (*(v102 + 8))(v100, v101);
      return (*(v123 + 8))(v127, v124);
    }

LABEL_23:
    v105 = v111;
    sub_1AE23C11C();
    v104 = v119;
    v106 = v112;
    sub_1ADDD2658(v119, v112, type metadata accessor for Replica);
    sub_1ADDDE678(v39, v106, v105, v73);
    v102 = v110;
    v103 = v113;
    goto LABEL_24;
  }

  LOBYTE(v3) = v74;
  if (v73[3] >= v77)
  {
    if (v72)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  sub_1ADDDDED0(v77, v72);
  v73 = v134;
  v78 = sub_1ADDD8A6C(v69);
  if ((v3 & 1) == (v79 & 1))
  {
    v39 = v78;
    goto LABEL_18;
  }

LABEL_30:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADFA4AD4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a2;
  v25 = a1;
  v27 = a4;
  v5 = *v4;
  v6 = *(*v4 + 448);
  v7 = *(*v4 + 472);
  v8 = type metadata accessor for CRDictionaryElement();
  v26 = sub_1AE23D7CC();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v23 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  swift_beginAccess();
  v18 = v4[5];
  v19 = *(v5 + 440);
  v20 = *(v5 + 464);

  sub_1AE23CB7C();

  if ((*(*(v8 - 8) + 48))(v12, 1, v8))
  {
    v21 = (*(v9 + 8))(v12, v26);
    return v24(v21);
  }

  else
  {
    (*(v13 + 16))(v17, &v12[*(v8 + 36)], v6);
    (*(v9 + 8))(v12, v26);
    return (*(v13 + 32))(v27, v17, v6);
  }
}

uint64_t sub_1ADFA4D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 440);
  v6 = *(*v2 + 448);
  v7 = *(*v2 + 472);
  v8 = type metadata accessor for CRDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_1AE16D8FC(a1, &v18 - v13);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    (*(v11 + 8))(v14, v10);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }

  else
  {
    v16 = &v14[*(TupleTypeMetadata2 + 48)];
    v17 = *(v6 - 8);
    (*(v17 + 16))(a2, &v16[*(v8 + 36)], v6);
    (*(*(v8 - 8) + 8))(v16, v8);
    (*(v17 + 56))(a2, 0, 1, v6);
    return (*(*(v5 - 8) + 8))(v14, v5);
  }
}

uint64_t sub_1ADFA5020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v32 = a3;
  v6 = *v3;
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1AE16B474(a1, a2, &v33);
  v18 = qword_1ED96F250;
  swift_beginAccess();
  sub_1ADDD2658(v3 + v18, v14, type metadata accessor for FinalizedTimestamp);
  v19 = qword_1ED96F250;
  swift_beginAccess();
  sub_1ADDD2658(a2 + v19, v11, type metadata accessor for FinalizedTimestamp);
  v20 = *(v8 + 28);
  v21 = *&v11[v20];
  v22 = *&v14[v20];
  if (v21 != v22)
  {
    if (v21 >= v22)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = v11;
    v11 = v14;
    goto LABEL_6;
  }

  if (sub_1ADF5EB00())
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = v14;
LABEL_6:
  sub_1ADDD2728(v23, type metadata accessor for FinalizedTimestamp);
  sub_1ADE172E4(v11, v17);
  v24 = v6[55];
  v25 = v6[56];
  v26 = v6[57];
  v27 = v6[58];
  v28 = v6[59];
  v29 = v6[60];
  return sub_1ADFA5220(&v33, v17, v32);
}

uint64_t sub_1ADFA5220@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  a3[2] = a1[2];
  v6 = type metadata accessor for CRDictionary.MergeableDelta();
  return sub_1ADE172E4(a2, a3 + *(v6 + 68));
}

uint64_t sub_1ADFA5284()
{
  sub_1ADDD2728(v0 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v1 = qword_1ED96F278;
  v2 = sub_1AE23BFEC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t CRDictionary.copy(renamingReferences:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = a1;
  v63 = a3;
  v5 = *(a2 + 24);
  v76 = sub_1AE23D7CC();
  v83 = *(v76 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v62 - v7;
  v8 = *(a2 + 16);
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  *&v68 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v62 = v23;
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v67 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  v30 = *v3;
  v31 = *(a2 + 32);
  v33 = *(a2 + 48);
  v32 = *(a2 + 56);
  v77 = a2;
  v80 = v31;
  v81 = v8;
  v34 = v31;
  v79 = v32;
  CRDictionary.init()(&v89);
  v35 = *v69;
  v78 = (v13 + 48);
  v75 = (v73 + 32);
  v36 = *(v35 + 16);
  v74 = v5 - 8;
  v73 += 8;
  v72 = (v83 + 8);
  v71 = (v13 + 8);
  v82 = v33;
  v83 = v5;
  if (v36)
  {
    *&v84 = v30;
    CRDictionary.makeIterator()(&v88);
    v37 = v5;
    v38 = v62;
    v39 = v34;
    while (1)
    {
      *&v84 = v81;
      *(&v84 + 1) = v37;
      v85 = v80;
      v86 = v82;
      v87 = v79;
      v40 = type metadata accessor for CRDictionary.Iterator();
      CRDictionary.Iterator.next()(v40, v29);
      if ((*v78)(v29, 1, v38) == 1)
      {
        break;
      }

      v41 = *(v38 + 48);
      v42 = v81;
      (*v75)(v22, v29, v81);
      v43 = *(v37 - 8);
      (*(v43 + 32))(&v22[v41], &v29[v41], v37);
      v44 = v68;
      v45 = v69;
      (*(*(v39 + 8) + 24))(v69, v42);
      v46 = v70;
      v47 = v45;
      v37 = v83;
      (*(*(v82 + 8) + 24))(v47, v83);
      (*(v43 + 56))(v46, 0, 1, v37);
      sub_1ADFAEA78(v46, v44, v77);
      (*v73)(v44, v42);
      (*v72)(v46, v76);
      (*v71)(v22, v38);
    }
  }

  else
  {
    v65 = v19;
    v66 = v16;
    *&v84 = v30;
    CRDictionary.makeIterator()(&v88);
    v64 = (v13 + 16);
    *&v48 = v81;
    *(&v48 + 1) = v5;
    v68 = v48;
    v49 = v62;
    v50 = v81;
    while (1)
    {
      v84 = v68;
      v85 = v80;
      v86 = v82;
      v87 = v79;
      v51 = type metadata accessor for CRDictionary.Iterator();
      v52 = v67;
      CRDictionary.Iterator.next()(v51, v67);
      if ((*v78)(v52, 1, v49) == 1)
      {
        break;
      }

      v53 = *(v49 + 48);
      (*v75)(v22, v52, v50);
      v54 = *(v5 - 8);
      v55 = *(v54 + 32);
      v55(&v22[v53], v52 + v53, v5);
      v56 = *v64;
      v57 = v65;
      (*v64)(v65, v22, v49);
      v69 = *(v49 + 48);
      v58 = v66;
      v56(v66, v22, v49);
      v59 = v70;
      v55(v70, &v58[*(v49 + 48)], v83);
      (*(v54 + 56))(v59, 0, 1, v83);
      sub_1ADFAEA78(v59, v57, v77);
      v60 = *v73;
      (*v73)(v57, v50);
      (*v72)(v59, v76);
      (*v71)(v22, v49);
      v60(v58, v50);
      v5 = v83;
      (*(v54 + 8))(v69 + v57, v83);
    }
  }

  result = sub_1ADDDCE74();
  *v63 = v89;
  return result;
}

uint64_t CRDictionary.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v4;
  a1[1] = v4 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v9 & v7;
}

void CRDictionary.Iterator.next()(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[6];
  v91 = a1[3];
  v6 = type metadata accessor for CRDictionaryElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v79 - v9;
  v10 = *(a1[2] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  v18 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1AE23D7CC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = TupleTypeMetadata2;
  v100 = *(TupleTypeMetadata2 - 8);
  v23 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v80 = &v79 - v29;
  v30 = *v2;
  v31 = v2[1];
  v98 = v16;
  v99 = v31;
  v32 = v2[3];
  v101 = v2[2];
  v33 = v2[4];
  v34 = v32;
  v92 = a2;
  v93 = v27;
  v84 = v7;
  v85 = v18;
  v87 = v10;
  v82 = v35;
  v83 = v36;
  v90 = v37;
  v81 = v38;
  v96 = v33;
  v97 = v32;
  v94 = v22;
  v95 = v30;
  if (v33)
  {
LABEL_10:
    v89 = (v33 - 1) & v33;
    v45 = __clz(__rbit64(v33)) | (v34 << 6);
    v46 = *(v30 + 48) + *(v10 + 72) * v45;
    v47 = *(v10 + 16);
    v48 = v14;
    v86 = v14;
    v49 = v30;
    v50 = v27;
    v47(v48, v46, v16, v28);
    v51 = *(v49 + 56) + *(v7 + 72) * v45;
    v52 = v88;
    (*(v7 + 16))(v88, v51, v18);
    v53 = *(v22 + 48);
    (*(v10 + 32))(v50, v86, v16);
    (*(v7 + 32))(v50 + v53, v52, v18);
    v54 = v100;
    (*(v100 + 56))(v50, 0, 1, v22);
    v88 = v34;
    v44 = v99;
LABEL_11:
    v55 = *v2;
    v56 = v2[1];
    v57 = v2[2];
    v58 = v2[3];
    v59 = v2[4];
    v60 = v95;
    v61 = v101;
    sub_1ADFAEBFC();
    sub_1ADDDCE74();
    *v2 = v60;
    v2[1] = v44;
    v63 = v88;
    v62 = v89;
    v2[2] = v61;
    v2[3] = v63;
    v2[4] = v62;
    v64 = v93;
    v65 = v94;
    if ((*(v54 + 48))(v93, 1, v94) == 1)
    {
      (*(v81 + 8))(v64, v82);
      v66 = swift_getTupleTypeMetadata2();
      (*(*(v66 - 8) + 56))(v92, 1, 1, v66);
    }

    else
    {
      v100 = *(v54 + 32);
      v67 = v80;
      (v100)(v80, v64, v65);
      v68 = v98;
      v69 = v91;
      v70 = swift_getTupleTypeMetadata2();
      v99 = *(v70 + 48);
      v71 = v90;
      (*(v54 + 16))(v90, v67, v65);
      v101 = *(v65 + 48);
      v72 = v87;
      v73 = v92;
      (*(v87 + 32))(v92, v71, v68);
      v74 = v83;
      (v100)(v83, v67, v65);
      v75 = v74 + *(v65 + 48);
      v76 = v85;
      (*(*(v69 - 8) + 16))(v73 + v99, v75 + *(v85 + 36), v69);
      v77 = *(v84 + 8);
      v77(v75, v76);
      (*(*(v70 - 8) + 56))(v73, 0, 1, v70);
      (*(v72 + 8))(v74, v68);
      v77(v90 + v101, v76);
    }
  }

  else
  {
    v39 = v14;
    v40 = (v101 + 64) >> 6;
    if (v40 <= v32 + 1)
    {
      v41 = v32 + 1;
    }

    else
    {
      v41 = (v101 + 64) >> 6;
    }

    v42 = (v41 - 1);
    v43 = v32;
    v44 = v99;
    while (1)
    {
      v34 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v34 >= v40)
      {
        v54 = v100;
        v78 = *(v100 + 56);
        v88 = v42;
        v78(v27, 1, 1, v22, v28);
        v89 = 0;
        goto LABEL_11;
      }

      v33 = *(v99 + 8 * v34);
      ++v43;
      if (v33)
      {
        v16 = v98;
        v10 = v87;
        v14 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t CRDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADFAEA78(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t CRDictionary.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v7;

  CRDictionary.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t CRDictionary.version.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
}

void CRDictionary.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  CRDictionary.init()(&v4);

  *a2 = v4;
}

void *CRDictionary.init(defaultState:)@<X0>(void *a1@<X8>)
{
  result = CRDictionary.init()(&v3);
  *a1 = v3;
  return result;
}

uint64_t CRDictionary.MutatingAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  if (*(a1 + 64))
  {
    v62 = a4;
    v63 = a6;
    v64 = a5;
    v57 = a8;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v58 = inited;
    v13 = *(sub_1ADDE78C8() + 16);
    if ((~v13 & 0xF000000000000007) != 0 && (v13 & 0xF000000000000000) == 0x1000000000000000)
    {
      v19 = (v13 & 0xFFFFFFFFFFFFFFFLL);
      v20 = v19[3];
      v21 = v19[4];
      v15 = v19[5];
      v22 = v19[6];
      v16 = v19[10];
      v23 = v19[11];
      v59 = a7;
      v65 = v20;

      sub_1ADE42C78(v15);
      sub_1ADE42C78(v16);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v65 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42CB8(v15);
    v24 = sub_1ADE42CB8(v16);
    v60 = &v54;
    v67 = v65;
    MEMORY[0x1EEE9AC00](v24);
    v47 = a2;
    v48 = a3;
    v49 = v62;
    v50 = v64;
    v51 = v63;
    v52 = a7;
    v53 = a1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v27 = v25;
    v28 = sub_1ADE11630();
    v29 = v61;
    v30 = sub_1ADE08EB0(sub_1ADFAEC04, v46, v27, a2, v26, v28, MEMORY[0x1E69E7288], &v66);
    if (v29)
    {
    }

    else
    {
      v31 = v30;
      v54 = v28;
      v55 = v27;
      v59 = a7;
      v61 = a3;

      v67 = v31;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v65 = sub_1AE23D39C();
      v32 = sub_1ADDE78C8();
      v33 = 0;
      v34 = *(v32 + 16);
      v56 = a2;
      if ((~v34 & 0xF000000000000007) != 0)
      {
        v35 = MEMORY[0x1E69E7CC0];
        v36 = 0;
        if ((v34 & 0xF000000000000000) == 0x1000000000000000)
        {
          v37 = (v34 & 0xFFFFFFFFFFFFFFFLL);
          v38 = v37[3];
          v35 = v37[4];
          v33 = v37[5];
          v39 = v37[6];
          v36 = v37[10];
          v40 = v37[11];
          v60 = v32;

          sub_1ADE42C78(v33);
          sub_1ADE42C78(v36);
        }
      }

      else
      {
        v35 = MEMORY[0x1E69E7CC0];
        v36 = 0;
      }

      sub_1ADE42CB8(v33);
      v41 = sub_1ADE42CB8(v36);
      v58 = &v54;
      v60 = v35;
      v67 = v35;
      MEMORY[0x1EEE9AC00](v41);
      v47 = v56;
      v48 = v61;
      v49 = v62;
      v50 = v64;
      v51 = v63;
      v52 = v59;
      v53 = a1;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v43 = sub_1ADE08EB0(sub_1ADFAEC30, v46, v55, TupleTypeMetadata2, v26, v54, MEMORY[0x1E69E7288], &v66);

      v67 = v43;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v44 = sub_1AE23CA4C();

      v45 = v57;
      *v57 = v65;
      v45[1] = v44;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x80000001AE25FB50;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADFA6998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v14 = sub_1ADE0262C(inited, a2);

  result = (*(*(*(a5 + 8) + 8) + 8))(v14, a3);
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

uint64_t sub_1ADFA6A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, void *a8)
{
  v12 = a1[1];
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v14 = swift_initStaticObject();
  }

  v15 = *(v14 + 16);
  if (v15 >> 60)
  {
    v16 = 1;
  }

  else
  {
    v16 = (v15 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v16)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v17 = swift_initStaticObject();
  }

  else
  {
    v17 = *(v15 + 16);
  }

  swift_beginAccess();
  if (*(v17 + 40))
  {
    v18 = *(v17 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    swift_initStaticObject();
  }

  swift_allocObject();

  v20 = sub_1ADE0262C(v19, a2);

  v21 = *(*(a5 + 8) + 8);
  v22 = *(v21 + 8);

  v22(v23, a3, v21);
  if (v28)
  {

    *a8 = v28;
  }

  else
  {
    v24 = a7 + *(swift_getTupleTypeMetadata2() + 48);
    (*(*(*(a6 + 8) + 8) + 8))(v20, a4);
  }

  return result;
}