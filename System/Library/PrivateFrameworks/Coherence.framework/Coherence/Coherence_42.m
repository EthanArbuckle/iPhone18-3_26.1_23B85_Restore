uint64_t CROrderedSet.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = *(*(a2 - 1) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v7 + 16))
  {
    MEMORY[0x1EEE9AC00](v7);
    v12 = a2[2];
    v13 = a2[3];
    v23[-4] = v12;
    v23[-3] = v13;
    v14 = a2[4];
    v23[-2] = v14;
    v23[-1] = v15;
    v23[0] = CROrderedSet.map<A>(_:)(sub_1ADF573E4, &v23[-6], a2, v12);
    v16 = sub_1AE23D11C();
    swift_getWitnessTable();
    v17 = v23;
    v18 = a3;
    v19 = v12;
    v20 = v16;
  }

  else
  {
    (*(v8 + 16))(v11, v3, a2, v9);
    v21 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    swift_getWitnessTable();
    v18 = a3;
    v17 = v11;
    v19 = v21;
    v20 = a2;
  }

  return CROrderedSet.init<A>(_:)(v17, v19, v20, v13, v14, v18);
}

uint64_t CROrderedSet.map<A>(_:)(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v49 = a1;
  v50 = a2;
  v7 = a3[2];
  v8 = sub_1AE23D7CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v39 - v10;
  v43 = *(v7 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = a3[3];
  v18 = a3[4];
  v55 = a3;
  v51 = v18;
  v52 = v17;
  v19 = type metadata accessor for CROrderedSetElement();
  v20 = *(v19 - 8);
  v40 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v39 - v21;
  v59 = sub_1AE23C9DC();
  CROrderedSet.count.getter(a3);
  v48 = sub_1AE23D11C();
  sub_1AE23D02C();
  v54 = v4;
  v22 = sub_1ADDEF390(v55);
  if (sub_1AE23D0AC())
  {
    v23 = 0;
    v46 = (v43 + 16);
    v47 = (v20 + 16);
    v44 = (v43 + 48);
    v45 = (v20 + 8);
    v42 = v22;
    v43 += 8;
    v41 = v20;
    while (1)
    {
      v24 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v24)
      {
        (*(v20 + 16))(v56, v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v23, v19);
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v40 != 8)
        {
          goto LABEL_17;
        }

        v58 = result;
        (*v47)(v56, &v58, v19);
        swift_unknownObjectRelease();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }
      }

      v55 = v25;
      v26 = *(v54 + 8);
      v27 = v56;
      (*v46)(v14, v56, v7);
      v28 = v19;
      (*v45)(v27, v19);
      v58 = v26;
      v29 = type metadata accessor for CRSet();
      v30 = v7;
      v31 = v53;
      CRSet.subscript.getter(v14, v29, v53);
      result = (*v44)(v31, 1, v30);
      if (result == 1)
      {
        break;
      }

      v33 = v14;
      v34 = *v43;
      v35 = v33;
      (*v43)();
      v36 = v57;
      v49(v31);
      v57 = v36;
      if (v36)
      {

        return (v34)(v31, v30);
      }

      (v34)(v31, v30);
      sub_1AE23D0CC();
      v37 = v42;
      v38 = sub_1AE23D0AC();
      ++v23;
      v14 = v35;
      v22 = v37;
      v7 = v30;
      v19 = v28;
      v20 = v41;
      if (v55 == v38)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_13:

    return v59;
  }

  return result;
}

uint64_t CROrderedSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v34 = a1;
  v30 = *(a2 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - v14;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v22 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v30 - v23;
  v35 = a6;
  CROrderedSet.init()(a6);
  v32 = v16;
  (*(v16 + 16))(v20, v34, a3);
  sub_1AE23CE7C();
  v33 = a3;
  swift_getAssociatedConformanceWitness();
  v36 = v24;
  v37 = AssociatedTypeWitness;
  sub_1AE23D80C();
  v25 = v30;
  v26 = *(v30 + 48);
  if (v26(v15, 1, a2) != 1)
  {
    v27 = *(v25 + 32);
    do
    {
      v27(v11, v15, a2);
      v28 = type metadata accessor for CROrderedSet();
      CROrderedSet.append(_:)(v11, v28);
      (*(v25 + 8))(v11, a2);
      sub_1AE23D80C();
    }

    while (v26(v15, 1, a2) != 1);
  }

  (*(v32 + 8))(v34, v33);
  return (*(v31 + 8))(v36, v37);
}

uint64_t CROrderedSet.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CROrderedSet.copy(renamingReferences:)(&v7, a2, a3);
}

void CROrderedSet.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  CROrderedSet.init()(a2);
}

uint64_t CROrderedSet.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v16);
  CROrderedSet.init<A>(_:)(v18, a3, a4, a5, a6, a7);

  return (*(v14 + 8))(a2, a4);
}

void CROrderedSet.merge(_:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36[0] = *a1;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  type metadata accessor for CROrderedSetElement();
  v10 = type metadata accessor for CRSequence();

  v11 = sub_1AE1687B8(v36, 1, v10);

  v37 = a1[1];
  v12 = type metadata accessor for CRSet();
  v13 = sub_1ADFAEA70();
  if (v13 == sub_1ADFAEA70())
  {
    v26 = qword_1ED9670C0;

    if (v26 != -1)
    {
      swift_once();
    }

    v22 = word_1ED96F220;
    v23 = HIBYTE(word_1ED96F220);
    v24 = byte_1ED96F222;
LABEL_26:

    if (v11 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  WitnessTable = swift_getWitnessTable();
  v15 = sub_1AE1755D4(&v37, v12, WitnessTable);
  v16 = sub_1ADFAEA70();
  swift_beginAccess();
  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  swift_beginAccess();
  v20 = v15[3];
  v19 = v15[4];
  v35 = 0;

  sub_1ADF6457C(v21, &v35, v17);
  sub_1ADF6457C(v20, &v35, v18);

  if (v35 == 1)
  {

    sub_1AE17A160(v28);
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v27 = &word_1EB5D750B;
    goto LABEL_25;
  }

  if (v35 == 2)
  {
    if (qword_1EB5B9908 != -1)
    {
      swift_once();
    }

    v27 = &word_1EB5D7508;
    goto LABEL_25;
  }

  if (v35 != 3)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v27 = &word_1ED96F220;
LABEL_25:
    v22 = *v27;
    v23 = *(v27 + 1);
    v24 = *(v27 + 2);

    goto LABEL_26;
  }

  sub_1ADE0FE78(v12);
  sub_1ADFAEA70();

  sub_1AE16F8E0(v15, &v35);

  v22 = v35;
  v23 = BYTE1(v35);
  v24 = BYTE2(v35);
  if (v11 == 1)
  {
LABEL_6:
    if (qword_1EB5B9908 != -1)
    {
      swift_once();
    }

    if (v22 != word_1EB5D7508 || v23 != HIBYTE(word_1EB5D7508) || ((v24 ^ byte_1EB5D750A) & 1) != 0)
    {
      sub_1ADDF210C(0, a2);
    }

    v25 = a3;
    goto LABEL_38;
  }

LABEL_27:
  if (v11 == 2)
  {
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    if (v22 == word_1EB5D750B && v23 == HIBYTE(word_1EB5D750B) && ((v24 ^ byte_1EB5D750D) & 1) == 0)
    {
      v29 = *(a2 - 1);
      (*(v29 + 8))(v4, a2);
      (*(v29 + 16))(v4, a1, a2);
    }

    else
    {
      sub_1ADDF210C(0, a2);
    }

    v25 = a3;
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v30 = &word_1EB5D750B;
  }

  else
  {
    sub_1ADDF210C(0, a2);
    v25 = a3;
    if (v11 != 3)
    {
LABEL_38:
      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }

      v30 = &word_1ED96F220;
      goto LABEL_45;
    }

    if (qword_1EB5B9528 != -1)
    {
      swift_once();
    }

    v30 = &word_1EB5D74C0;
  }

LABEL_45:
  v31 = *(v30 + 2);
  LOWORD(v37) = *v30;
  BYTE2(v37) = v31;
  LOBYTE(v35) = v22;
  BYTE1(v35) = v23;
  BYTE2(v35) = v24;
  v32 = &v35;
  MergeResult.merge(_:)(v32);
  v33 = BYTE2(v37);
  *v25 = v37;
  *(v25 + 2) = v33;
}

uint64_t CROrderedSet.newRefs(from:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  if (((*(*(a2[3] + 8) + 80))(a2[2]) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = v2[1];
  v15 = a1[1];
  v16 = v6;
  v7 = a2[4];
  v8 = type metadata accessor for CRSet();

  v9 = CRSet.newRefs(from:)(&v15, v8);

  v16 = v9;
  v10 = *v3;
  v14 = *a1;
  v15 = v10;
  type metadata accessor for CROrderedSetElement();
  v11 = type metadata accessor for CRSequence();

  v12 = CRSequence.newRefs(from:)(&v14, v11);

  sub_1AE00F014(v12);
  return v16;
}

uint64_t CROrderedSet.finalizeTimestamps(_:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  type metadata accessor for CROrderedSetElement();
  v6 = type metadata accessor for CRSequence();
  CRSequence.finalizeTimestamps(_:)(a1, v6);
  v7 = type metadata accessor for CRSet();
  return CRSet.finalizeTimestamps(_:)(a1, v7);
}

uint64_t CROrderedSet.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1ADE0FC48(v6, v6);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = *(v6 - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  swift_allocObject();
  v13 = sub_1AE23CFFC();
  (*(v10 + 16))(v14, a1, v6);
  sub_1ADE0FCBC();
  v18 = v13;
  v15 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADDF7744(&v18, a2, 0, a3, v15, WitnessTable);
}

Swift::Void __swiftcall CROrderedSet.remove(at:)(Swift::Int at)
{
  v3 = v1;
  v5 = *(v1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](at);
  v24 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v26 = *(v9 + 32);
  v27 = v10;
  v11 = type metadata accessor for CROrderedSetElement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v25 = sub_1AE23D7CC();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v19 = v22 - v18;
  v23 = v2;
  sub_1ADE10650(v3);
  v28 = *v2;
  v22[1] = type metadata accessor for CRSequence();
  CRSequence.subscript.getter();
  v20 = v24;
  (*(v6 + 16))(v24, v15, v5);
  (*(v12 + 8))(v15, v11);
  v21 = type metadata accessor for CRSet();
  CRSet.remove(_:)(v20, v21, v19);
  (*(v6 + 8))(v20, v5);
  (*(v16 + 8))(v19, v25);
  CRSequence.remove(at:)(at);
}

uint64_t CROrderedSet.remove(atOffsets:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v59 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v10 = &v59 - v9;
  v11 = a2[2];
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = a2[4];
  v72 = a2[3];
  v73 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v16;
  v78 = type metadata accessor for CROrderedSetElement();
  v17 = *(v78 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v59 - v19;
  v74 = v11;
  v69 = sub_1AE23D7CC();
  v20 = *(v69 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v59 - v22;
  v77 = sub_1AE23BFFC();
  v75 = *(v77 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v59 - v28;
  v79 = v2;
  sub_1ADE10650(a2);
  v61 = a1;
  sub_1AE23C01C();
  v30 = *(v26 + 44);
  v31 = sub_1AE23C12C();
  v32 = sub_1AE1E9C30(&qword_1ED967148, MEMORY[0x1E6969B50]);
  v75 += 8;
  v65 = (v17 + 8);
  v66 = (v12 + 16);
  v63 = (v20 + 8);
  v64 = (v12 + 8);
  v67 = v30;
  while (1)
  {
    v33 = v76;
    sub_1AE23D46C();
    sub_1AE1E9C30(&qword_1ED967158, MEMORY[0x1E6969B18]);
    v34 = v77;
    v35 = sub_1AE23CCBC();
    (*v75)(v33, v34);
    if (v35)
    {
      break;
    }

    v36 = sub_1AE23D51C();
    v38 = *v37;
    v36(v80, 0);
    sub_1AE23D47C();
    v39 = v78;
    v80[0] = *v79;
    v40 = v32;
    type metadata accessor for CRSequence();
    v41 = v29;
    v42 = v31;
    v43 = v70;
    CRSequence.subscript.getter();
    v44 = v73;
    v45 = v74;
    (*v66)(v73, v43, v74);
    v46 = v43;
    v31 = v42;
    v29 = v41;
    v32 = v40;
    (*v65)(v46, v39);
    v47 = type metadata accessor for CRSet();
    v48 = v68;
    CRSet.remove(_:)(v44, v47, v68);
    (*v64)(v44, v45);
    (*v63)(v48, v69);
  }

  sub_1ADDCEDE0(v29, &qword_1EB5BA490, &qword_1AE2514C0);
  v49 = v62;
  sub_1AE23C10C();
  v50 = sub_1AE23C0EC();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v10, v49, v50);
  v52 = *(v60 + 36);
  sub_1AE1E9C30(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  sub_1AE23D46C();
  (*(v51 + 8))(v49, v50);
  sub_1AE23D41C();
  if (*&v10[v52] != v80[0])
  {
    sub_1AE1E9C30(&qword_1EB5BB4E0, MEMORY[0x1E6969B30]);
    do
    {
      sub_1AE23CBDC();
      v53 = sub_1AE23D51C();
      v55 = *v54;
      v56 = v54[1];
      v53(v80, 0);
      v57 = type metadata accessor for CRSequence();
      CRSequence.removeSubrange(_:)(v55, v56, v57);
      sub_1AE23D41C();
    }

    while (*&v10[v52] != v80[0]);
  }

  return sub_1ADDCEDE0(v10, &qword_1EB5BB4C8, &unk_1AE24C640);
}

uint64_t sub_1AE1E1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = a6;
  v58 = *(a5 - 8);
  v59 = a3;
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 24);
  v69 = *(v19 + 32);
  v70 = v20;
  v71 = type metadata accessor for CROrderedSetElement();
  v21 = *(v71 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v24 = &v56 - v23;
  v68 = v13;
  v25 = sub_1AE23D7CC();
  v56 = *(v25 - 8);
  v26 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v56 - v27;
  v72 = v6;
  result = sub_1ADE10650(a4);
  v63 = a1;
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  v30 = v63;
  if (a2 < v63)
  {
    __break(1u);
  }

  else if (v63 < a2)
  {
    v67 = *v72;
    v31 = type metadata accessor for CRSequence();
    v65 = (v14 + 16);
    v66 = v31;
    v64 = (v21 + 8);
    v32 = (v14 + 8);
    v33 = (v56 + 8);
    v34 = v30;
    do
    {
      v35 = v34 + 1;
      v73 = v67;
      CRSequence.subscript.getter();
      v36 = v25;
      v37 = v68;
      (*v65)(v18, v24, v68);
      (*v64)(v24, v71);
      v38 = type metadata accessor for CRSet();
      CRSet.remove(_:)(v18, v38, v28);
      v39 = v37;
      v25 = v36;
      (*v32)(v18, v39);
      (*v33)(v28, v36);
      v34 = v35;
    }

    while (a2 != v35);
LABEL_6:
    v57 = a2;
    v40 = v61;
    v41 = (*(v58 + 16))(v60, v59, v61);
    MEMORY[0x1EEE9AC00](v41);
    v43 = v68;
    v42 = v69;
    *(&v56 - 6) = v68;
    *(&v56 - 5) = v40;
    v44 = v70;
    *(&v56 - 4) = v70;
    *(&v56 - 3) = v42;
    v45 = v62;
    v46 = v72;
    *(&v56 - 2) = v62;
    *(&v56 - 1) = v46;
    v47 = *(v45 + 8);
    v48 = sub_1AE23CF1C();
    v67 = &v56;
    v73 = v48;
    MEMORY[0x1EEE9AC00](v48);
    *(&v56 - 6) = v43;
    *(&v56 - 5) = v40;
    *(&v56 - 4) = v44;
    *(&v56 - 3) = v42;
    *(&v56 - 2) = v45;
    *(&v56 - 1) = v46;
    v49 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v52 = sub_1ADE08EB0(sub_1AE1EA610, (&v56 - 8), v49, v71, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v51);

    v73 = v52;
    v53 = type metadata accessor for CRSequence();
    v54 = sub_1AE23D11C();
    v55 = swift_getWitnessTable();
    CRSequence.replaceSubrange<A>(_:with:)(v63, v57, &v73, v53, v54, v55);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1E218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRSet();
  v10 = CRSet.insert(_:)(v8, a1, v9);
  (*(v5 + 8))(v8, a3);
  return v10 & 1;
}

Swift::Void __swiftcall CROrderedSet.removeAll()()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  type metadata accessor for CRSet();
  CRSet.removeAll(keepingCapacity:)(0);
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  CRSequence.removeAll()();
  v7 = *(v3 + 12);
  v8 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v9 = sub_1AE23D7CC();
  (*(*(v9 - 8) + 8))(v2 + v7, v9);
  v10 = *(*(v8 - 8) + 56);

  v10(v2 + v7, 1, 1, v8);
}

uint64_t CROrderedSet.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, void *a3)
{
  v49 = a1;
  v50 = a2;
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = a3[4];
  v51 = v11;
  v12 = type metadata accessor for CROrderedSetElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = sub_1AE23D7CC();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = sub_1AE23C12C();
  v43 = *(v20 - 8);
  v44 = v20;
  v21 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v45 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C11C();
  v41 = a3;
  v42 = v3;
  v57 = sub_1ADDEF390(a3);
  v23 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v58, v23, WitnessTable);

  v57 = v58;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v25 = sub_1AE23DC8C();
  v26 = (v14 + 32);
  v52 = TupleTypeMetadata2 - 8;
  v53 = v25;
  v27 = (v5 + 16);
  v46 = v12 - 8;
  v47 = v12;
  v28 = (v5 + 8);
  while (1)
  {
    v29 = v54;
    sub_1AE23DC7C();
    (*v26)(v19, v29, v55);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {

      v38 = v45;
      CROrderedSet.remove(atOffsets:)(v45, v41);
      return (*(v43 + 8))(v38, v44);
    }

    v30 = *v19;
    v31 = TupleTypeMetadata2;
    v32 = *(TupleTypeMetadata2 + 48);
    v33 = v48;
    v34 = v51;
    (*v27)(v48, &v19[v32], v51);
    (*(*(v47 - 8) + 8))(&v19[v32]);
    v35 = v56;
    v36 = v49(v33);
    v56 = v35;
    if (v35)
    {
      break;
    }

    v37 = v36;
    (*v28)(v33, v34);
    TupleTypeMetadata2 = v31;
    if (v37)
    {
      sub_1AE23C08C();
    }
  }

  (*v28)(v33, v34);

  return (*(v43 + 8))(v45, v44);
}

uint64_t CROrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v35 = a3;
  v6 = a2[2];
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[3];
  v17 = a2[4];
  v18 = type metadata accessor for CRSet();
  v33 = a1;
  v34 = v3;
  CRSet.remove(_:)(a1, v18, v11);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v19 = 1;
    v20 = v35;
  }

  else
  {
    v21 = v32;
    v31 = *(v12 + 32);
    v31(v32, v11, v6);
    v22 = v34;
    v23 = sub_1ADE10650(a2);
    v30 = &v30;
    v36 = *v22;
    MEMORY[0x1EEE9AC00](v23);
    *(&v30 - 4) = v6;
    *(&v30 - 3) = v16;
    v24 = v33;
    *(&v30 - 2) = v17;
    *(&v30 - 1) = v24;
    type metadata accessor for CROrderedSetElement();
    v25 = type metadata accessor for CRSequence();

    swift_getWitnessTable();
    v26 = sub_1AE1644B0(sub_1AE1E9C78, (&v30 - 6), v25);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      CRSequence.remove(at:)(v26);
    }

    v20 = v35;
    v31(v35, v21, v6);
    v19 = 0;
  }

  return (*(v12 + 56))(v20, v19, 1, v6);
}

Swift::Void __swiftcall CROrderedSet.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v4 = v3;
  v5 = v2;
  v8 = v2[2];
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](from);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Timestamp(0);
  v12 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = v5[3];
  v40 = v5[4];
  v41 = v17;
  v18 = type metadata accessor for CROrderedSetElement();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - v24;
  if (from < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v38 = v23;
  v39 = v11;
  v26 = CROrderedSet.count.getter(v5);
  if (to < 0 || v26 <= from)
  {
    goto LABEL_14;
  }

  if (CROrderedSet.count.getter(v5) < to)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (from == to || to - 1 == from)
  {
    return;
  }

  v37 = to - 1;
  sub_1ADE10650(v5);
  v45 = *v4;
  v27 = type metadata accessor for CRSequence();
  CRSequence.subscript.getter();
  CRSequence.remove(at:)(from);
  v45 = *v4;
  sub_1ADE16998(v16);
  *&v16[*(type metadata accessor for Replica() + 20)] = 0;
  v28 = *(v44 + 20);
  v29 = *&v25[*(v18 + 44) + v28];
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (from >= to)
  {
    v32 = to;
  }

  else
  {
    v32 = v37;
  }

  *&v16[v28] = v31;
  v33 = v39;
  (*(v43 + 16))(v39, v25, v8);
  v34 = v42;
  sub_1ADDF8030(v16, v42, type metadata accessor for Timestamp);
  sub_1ADE0C8B4(v33, v34, v8, v21);
  CRSequence.insert(_:at:)(v21, v32, v27);
  v35 = *(v38 + 8);
  v35(v21, v18);
  sub_1AE017AB8(v16);
  v35(v25, v18);
}

Swift::Void __swiftcall CROrderedSet.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v6 = CROrderedSet.count.getter(v2);
  if (a2 < 0 || v6 <= a1)
  {
    goto LABEL_13;
  }

  if (CROrderedSet.count.getter(v3) <= a2)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (a2 >= a1)
  {
    v7 = a1;
    if (a1 >= a2)
    {
      return;
    }
  }

  else
  {
    v7 = a2;
    a2 = a1;
  }

  CROrderedSet.move(from:to:)(a2, v7 + 1);

  CROrderedSet.move(from:to:)(v7, a2 + 1);
}

uint64_t CROrderedSet.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *(v3 + 8);
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for CRSet();
  return CRSet.subscript.getter(a1, v9, a3);
}

uint64_t CROrderedSet.subscript.setter(uint64_t a1, Swift::Int a2, void *a3)
{
  sub_1AE1E9CB4(a1, a2, a3);
  v5 = *(*(a3[2] - 8) + 8);

  return v5(a1);
}

void (*CROrderedSet.subscript.modify(void *a1, uint64_t a2, void *a3))(Swift::Int **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = a3[2];
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CROrderedSet.subscript.getter(a2, a3, v13);
  return sub_1AE1E3148;
}

void sub_1AE1E3148(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1AE1E9CB4(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1AE1E9CB4((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CROrderedSet.index(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = sub_1AE23D7CC();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1AE23DC9C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1B26FB780](a3, WitnessTable, v18);
  sub_1AE23DC6C();
  v19 = sub_1AE23DC8C();
  v36 = (v9 + 32);
  v37 = v19;
  v35 = TupleTypeMetadata2 - 8;
  v30 = (v4 + 32);
  v20 = (v4 + 8);
  while (1)
  {
    v21 = v38;
    sub_1AE23DC7C();
    (*v36)(v14, v21, v39);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v22 = *v14;
    v23 = TupleTypeMetadata2;
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v31;
    v26 = v32;
    (*v30)(v31, &v14[v24], v32);
    v27 = v40;
    v28 = v33(v25);
    (*v20)(v25, v26);
    v40 = v27;
    if (!v27)
    {
      TupleTypeMetadata2 = v23;
      if ((v28 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v22 = 0;
LABEL_7:

  return v22;
}

uint64_t CROrderedSet.actionUndoingDifference(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CROrderedSet.hasDelta(from:)(v3, v12))
  {
    WitnessTable = swift_getWitnessTable();
    CRDT.merging(_:)(a1, a2, WitnessTable, v11);
    CROrderedSet.actionUndoingDifference(from:)(a1, a2);
    return (*(v8 + 8))(v11, a2);
  }

  else
  {
    v15 = *(v3 + 8);
    v24 = a1[1];
    v25 = v15;
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = type metadata accessor for CRSet();

    CRSet.actionUndoingDifference(from:)(&v24, v19, v26);

    v20 = v26[0];
    v21 = v26[1];
    v22 = *v4;
    v24 = *a1;
    v25 = v22;
    type metadata accessor for CROrderedSetElement();
    type metadata accessor for CRSequence();

    CRSequence.actionUndoingDifference(from:)(&v24, v26);

    v23 = v26[0];
    if (v20 | v26[0])
    {
      *a3 = v20;
      a3[1] = v21;
      a3[2] = v23;
    }

    else
    {
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 1;
    }
  }

  return result;
}

void CROrderedSet.apply(_:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v12[0] = v5;
    sub_1ADF5C694(v2, v4, v5);
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    type metadata accessor for CROrderedSetElement();
    v9 = type metadata accessor for CRSequence();
    v10 = v5;
    LOBYTE(v9) = sub_1AE16501C(v12, v9);

    if (v9)
    {
      v12[0] = v2;
      v12[1] = v4;
      sub_1ADE42C78(v2);
      v11 = type metadata accessor for CRSet();
      CRSet.apply(_:)(v12, v11);
      sub_1ADE42CB8(v12[0]);
      sub_1ADDF210C(1, a2);
    }

    sub_1ADE24060(v2, v4, v5);
  }
}

uint64_t CROrderedSet.hasDelta(from:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *a1;
  v14 = *a1;
  v15 = v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  v9 = sub_1AE164BF0(&v14);

  v10 = v2[1];
  if (v9 && v10 == *(a1 + 8))
  {
    v11 = 0;
  }

  else
  {
    v14 = *(a1 + 8);
    v15 = v10;
    type metadata accessor for CRSet();

    v12 = CRSet.hasDelta(from:)(&v14);

    if (v12)
    {
      v11 = 1;
    }

    else
    {
      v14 = v5;
      v15 = v4;

      v11 = CRSequence.hasDelta(from:)(&v14);
    }
  }

  return v11 & 1;
}

uint64_t CROrderedSet.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = v4[1];
  v24 = a2[1];
  v25 = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = type metadata accessor for CRSet();

  CRSet.delta(_:from:)(a1, &v24, v13, v26);

  v22 = v26[1];
  v23 = v26[0];
  v14 = v27;
  v15 = v28;
  v16 = *v5;
  v24 = *a2;
  v25 = v16;
  type metadata accessor for CROrderedSetElement();
  v17 = type metadata accessor for CRSequence();

  CRSequence.delta(_:from:)(a1, &v24, v17, v26);

  v19 = v23;
  v20 = *&v26[0];
  if (v23 | *&v26[0])
  {
    v21 = v22;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v20 = 0;
    v19 = xmmword_1AE241280;
    v21 = 0uLL;
  }

  *a4 = v19;
  *(a4 + 16) = v21;
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  *(a4 + 48) = v20;
  return result;
}

BOOL CROrderedSet.canMerge(delta:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 48);
  if (*a1)
  {
    v7 = v2[1];
    v21 = *(a1 + 40);
    v22 = v7;
    v18 = v5;
    v8 = *(a1 + 24);
    v19 = *(a1 + 8);
    v20 = v8;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    type metadata accessor for CRSet();

    LOBYTE(v7) = CRSet.canMerge(delta:)(&v18);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v6)
  {
    return 1;
  }

  v18 = *v3;
  v22 = v6;
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  v15 = v6;

  v16 = CRSequence.canMerge(delta:)(&v22);

  return (v16 & 1) != 0;
}

BOOL CROrderedSet.merge(delta:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v8;
  v25 = v7;
  v26 = v9;
  v10 = CROrderedSet.canMerge(delta:)(&v20, a2);
  if (v10)
  {
    if (v3)
    {
      v20 = v3;
      v21 = v4;
      v22 = v5;
      v23 = v6;
      v24 = v8;
      v25 = v7;
      v11 = a2[2];
      v12 = a2[3];
      v13 = a2[4];
      v14 = type metadata accessor for CRSet();
      CRSet.merge(delta:)(&v20, v14);
    }

    if (v9)
    {
      v20 = v9;
      v15 = a2[2];
      v16 = a2[3];
      v17 = a2[4];
      type metadata accessor for CROrderedSetElement();
      v18 = type metadata accessor for CRSequence();
      CRSequence.merge(delta:)(&v20, v18);
    }

    sub_1ADDF210C(0, a2);
  }

  return v10;
}

uint64_t CROrderedSet.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v9 = *(a3 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((CROrderedSet.hasDelta(from:)(v4, v13) & 1) == 0)
  {
    return sub_1AE1E465C(v4, a2, a3, a4);
  }

  WitnessTable = swift_getWitnessTable();
  CRDT.merging(_:)(a1, a3, WitnessTable, v12);
  sub_1AE1E465C(v12, a2, a3, a4);
  return (*(v9 + 8))(v12, a3);
}

uint64_t CROrderedSet.encode(to:)(uint64_t a1, void *a2)
{
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];

    sub_1ADE6C150(v2, v6, v7, v8);
  }

  return result;
}

void sub_1AE1E4064(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  CROrderedSet.init(defaultState:)(a2);
}

uint64_t static CROrderedSet.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v9 = *(a2 + 8);
  v10 = v4;

  v5 = static CRSet.== infix(_:_:)(&v10, &v9);

  if (v5)
  {
    v6 = *a1;
    v9 = *a2;
    v10 = v6;
    type metadata accessor for CROrderedSetElement();

    v7 = static CRSequence.== infix(_:_:)(&v10, &v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1AE1E4184(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static CROrderedSet.== infix(_:_:)(a1, a2);
}

id CROrderedSet.filter(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *(a3 - 1);
  (*(v11 + 16))(a4, v6);
  result = sub_1AE1E426C(a1, a2, a3);
  if (v5)
  {
    return (*(v11 + 8))(a4, a3);
  }

  return result;
}

id sub_1AE1E426C(uint64_t (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  sub_1ADE10650(a3);
  v19[9] = *(v3 + 8);
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = type metadata accessor for CRSet();

  CRSet.filter(_:)(a1, a2, v13, &v20);

  if (!v5)
  {
    v15 = v20;
    v16 = *(v6 + 8);

    *(v6 + 8) = v15;
    MEMORY[0x1EEE9AC00](v17);
    v19[2] = v10;
    v19[3] = v11;
    v19[4] = v12;
    v19[5] = a1;
    v19[6] = a2;
    type metadata accessor for CROrderedSetElement();
    v18 = type metadata accessor for CRSequence();
    return sub_1AE1690D8(sub_1AE1EA57C, v19, v18);
  }

  return result;
}

uint64_t CROrderedSet.ObservableDifference.removed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedSet.ObservableDifference.added.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedSet.ObservableDifference.subscript.getter(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v2;
    v5 = *(a2 + 16);
    v6 = *(*(a2 + 24) + 8);
    swift_getAssociatedTypeWitness();
    result = sub_1AE23CA7C();
    if (result > v3)
    {
      return sub_1AE23CB7C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1E4574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for CROrderedSet.ObservableDifference();
  v10 = v9[11];
  v11 = sub_1AE23C12C();
  v14 = *(*(v11 - 8) + 32);
  (v14)((v11 - 8), &a5[v10], a2, v11);
  *&a5[v9[12]] = a3;
  v12 = &a5[v9[13]];

  return v14(v12, a4, v11);
}

uint64_t sub_1AE1E465C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v321 = a1;
  v302 = a4;
  v8 = a3[2];
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v295 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v324 = v295 - v14;
  v15 = a3[3];
  v314 = *(v15 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v306 = sub_1AE23D7CC();
  v299 = *(v306 - 8);
  v17 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v305 = v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v312 = v295 - v20;
  v317 = AssociatedTypeWitness;
  v298 = *(AssociatedTypeWitness - 8);
  v21 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v304 = v295 - v23;
  v353 = a3;
  v24 = a3[4];
  v25 = type metadata accessor for CROrderedSetElement();
  v26 = sub_1AE23D7CC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v315 = v295 - v28;
  v347 = *(v25 - 8);
  v29 = *(v347 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v313 = v295 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v325 = v295 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v351 = v295 - v35;
  v328 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v348 = v295 - v38;
  v303 = *(v8 - 8);
  v39 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v323 = v295 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v332 = v295 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v338 = v295 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v295 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v349 = v295 - v50;
  v352 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v344 = sub_1AE23D7CC();
  *&v342 = *(v344 - 1);
  v51 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v344);
  v297 = v295 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v333 = v295 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v346 = v295 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = (v295 - v58);
  v316 = v15;
  v355 = v24;
  v354 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v60 = sub_1AE23D7CC();
  v350 = *(v60 - 8);
  v61 = v350[8];
  MEMORY[0x1EEE9AC00](v60);
  v341 = v295 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = v295 - v64;
  v308 = sub_1AE23C12C();
  v307 = *(v308 - 8);
  v66 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v308);
  v301 = v295 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v300 = v295 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v329 = v295 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v331 = v295 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v335 = v295 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v336 = v295 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v340 = v295 - v79;
  v81.n128_f64[0] = MEMORY[0x1EEE9AC00](v80);
  v334 = v295 - v82;
  v318 = a2;
  if (!*(a2 + 24))
  {
    v368 = *v5;
    v358 = *v321;
    type metadata accessor for CRSequence();
    LODWORD(v339) = sub_1AE164BF0(&v358);

    if ((v339 & 1) != 0 && v5[1] == v321[1])
    {
      v287 = type metadata accessor for CROrderedSet.ObservableDifference();
      v288 = *(*(v287 - 8) + 56);
      v289 = v287;
      v290 = v302;

      return v288(v290, 1, 1, v289);
    }
  }

  v310 = v12;
  v374 = *v5;
  v83 = *(v353 + 12);
  v84 = v350;
  v85 = v350[2];
  v311 = v5;
  v339 = v85;
  v85(v65, v5 + v83, v60, v81);
  v86 = *(v354 - 8);
  v337 = *(v86 + 48);
  v87 = (v337)(v65, 1);
  v330 = v86;
  *&v345 = v60;
  if (v87 == 1)
  {
    v88 = v84[1];

    v88(v65, v60);
    v89 = v352;
  }

  else
  {
    (*(v307 + 16))(v340, &v65[*(v354 + 44)], v308);
    v90 = *(v86 + 8);

    v90(v65, v354);
    v91 = v307;
    v92 = v334;
    v93 = v308;
    (*(v307 + 32))(v334, v340, v308);
    v89 = v352;
    v94 = type metadata accessor for CRSequence();
    sub_1AE168474(v92, v94);
    (*(v91 + 8))(v92, v93);
  }

  v95 = v341;
  v373 = *v321;
  (v339)(v341, v321 + *(v353 + 12), v345);
  v96 = (v337)(v95, 1, v354);
  v97 = v344;
  if (v96 == 1)
  {
    v98 = v95;
    v99 = v350[1];

    v99(v98, v345);
  }

  else
  {
    v100 = v335;
    (*(v307 + 16))(v335, &v95[*(v354 + 44)], v308);
    v101 = *(v330 + 8);

    v101(v95, v354);
    v102 = v307;
    v103 = v336;
    v104 = v100;
    v105 = v308;
    (*(v307 + 32))(v336, v104, v308);
    v106 = type metadata accessor for CRSequence();
    sub_1AE168474(v103, v106);
    (*(v102 + 8))(v103, v105);
  }

  v358 = v373;
  v357 = v374;
  v107 = type metadata accessor for CRSequence();

  v350 = v107;
  CRSequence.observableDifference(from:with:)(&v357, v107, &v368);

  v108 = v346;
  if (v368)
  {
    v327 = v368;
  }

  else
  {
    type metadata accessor for _NSRange(255);
    type metadata accessor for CRSequenceStorage();
    sub_1AE23D7CC();
    swift_getTupleTypeMetadata3();
    v327 = sub_1AE23D05C();
  }

  v372 = sub_1AE23C9CC();
  v371 = sub_1AE23C9CC();
  v368 = v374;

  v109 = v350;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v358, v109, WitnessTable);

  v357 = v358;
  v295[1] = sub_1AE23DC9C();
  sub_1AE23DC6C();
  v296 = WitnessTable;
  v111 = sub_1AE23DC8C();
  v112 = (v342 + 32);
  v113 = TupleTypeMetadata2;
  v354 = v303 + 16;
  v353 = (v347 + 8);
  v330 = v111;
  while (1)
  {
    sub_1AE23DC7C();
    v114 = *v112;
    (*v112)(v59, v108, v97);
    v115 = *(v113 - 1);
    v116 = *(v115 + 48);
    v117 = (v115 + 48);
    if (v116(v59, 1, v113) == 1)
    {
      break;
    }

    v118 = *v59;
    v119 = v113[12];
    (*v354)(v349, v59 + v119, v8);
    (*v353)(v59 + v119, v89);
    v358 = v118;
    v108 = v346;
    v359 = 0;
    sub_1AE23CB1C();
    v97 = v344;
    sub_1AE23CB8C();
  }

  v340 = v114;

  sub_1AE23C11C();
  sub_1AE23C11C();
  type metadata accessor for _NSRange(255);
  type metadata accessor for CRSequenceStorage();
  sub_1AE23D7CC();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v121 = v327;
  if (sub_1AE23D0AC() < 1)
  {

    v338 = MEMORY[0x1E69E7CC0];
    v199 = v353;
    v200 = v315;
    goto LABEL_159;
  }

  v336 = v117;
  v339 = v116;
  v367 = sub_1AE23C9EC();
  v364 = sub_1AE23C9EC();

  v122 = sub_1AE23D0AC();
  v123 = v349;
  v341 = v112;
  v326 = TupleTypeMetadata3;
  if (!v122)
  {
LABEL_43:

    v363 = sub_1AE23C9CC();
    v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCC20, &qword_1AE251818);
    v362 = sub_1AE23C9CC();
    v150 = sub_1AE23D0AC();
    v151 = v333;
    if (v150)
    {
      v334 = 0;
      v152 = 0;
      v153 = 0;
      v309 = v121 + 32;
      v351 = (v303 + 8);
      v154 = MEMORY[0x1E69E7CC0];
      v48 = v332;
      while (1)
      {
        v155 = sub_1AE23D08C();
        result = sub_1AE23D00C();
        if ((v155 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(v153, 1))
        {
          goto LABEL_209;
        }

        v156 = (v309 + 32 * v153);
        v157 = *v156;
        v158 = v156[1];
        v159 = &v158[*v156];
        if (__OFADD__(*v156, v158))
        {
          goto LABEL_210;
        }

        if (v159 < v157)
        {
          goto LABEL_211;
        }

        *&v345 = v154;
        v161 = v156[2];
        v160 = v156[3];
        v335 = v157;
        v319 = v153 + 1;
        v320 = v161;
        v322 = v160;
        if (v157 != v159)
        {
          if (v157 >= v159)
          {
            goto LABEL_218;
          }

          *&v342 = v374;
          v337 = v367;
          v186 = v160;
          v187 = v335;
          while (1)
          {
            v188 = &v334[v187];
            if (__OFADD__(v187, v334))
            {
              break;
            }

            v368 = v342;
            v189 = v348;
            CRSequence.subscript.getter();
            v190 = v89;
            v191 = *v354;
            v192 = v8;
            v193 = v338;
            (*v354)(v338, v189, v192);
            (*v353)(v189, v190);
            if (sub_1AE23D37C())
            {
              v194 = &v335[v152];
              if (__OFADD__(v152, v335))
              {
                goto LABEL_197;
              }

              v195 = v193;
              v8 = v192;
              sub_1AE23CB7C();
              if (v369)
              {
                v191(v349, v195, v192);
                v368 = v188;
                v369 = v194;
                v370 = 0;
                sub_1AE23CB1C();
                sub_1AE23CB8C();
                result = (*v351)(v195, v192);
                v48 = v332;
              }

              else
              {
                v196 = v368;
                v197 = v345;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v197 = sub_1ADF79A2C(v197);
                }

                v48 = v332;
                if ((v196 & 0x8000000000000000) != 0)
                {
                  goto LABEL_199;
                }

                if (v196 >= *(v197 + 2))
                {
                  goto LABEL_200;
                }

                v198 = &v197[32 * v196];
                *(v198 + 5) = v194;
                result = (*v351)(v338, v192);
                *&v345 = v197;
                if (v196 >= *(v197 + 2))
                {
                  goto LABEL_201;
                }

                *(v198 + 4) = v188;
                v8 = v192;
              }

              v148 = __OFADD__(v152++, 1);
              v89 = v352;
              v151 = v333;
              if (v148)
              {
                goto LABEL_198;
              }
            }

            else
            {
              sub_1AE23C08C();
              result = (*v351)(v193, v192);
              v89 = v352;
              v48 = v332;
              v8 = v192;
              v151 = v333;
            }

            ++v187;
            if (!--v158)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

        result = v160;
LABEL_51:
        v162 = v322;
        if (v322)
        {
          v368 = sub_1AE16A958();
          v163 = sub_1AE23D11C();
          v322 = v162;
          v164 = swift_getWitnessTable();
          MEMORY[0x1B26FB780](&v358, v163, v164);
          v357 = v358;
          sub_1AE23DC9C();
          sub_1AE23DC6C();
          v337 = sub_1AE23DC8C();
          v165 = v335;
          while (1)
          {
            v167 = v346;
            sub_1AE23DC7C();
            (v340)(v151, v167, v344);
            v168 = TupleTypeMetadata2;
            if ((v339)(v151, 1, TupleTypeMetadata2) == 1)
            {
              break;
            }

            v169 = *v151;
            v170 = v168[12];
            v171 = *v354;
            (*v354)(v48, &v151[v170], v8);
            (*v353)(&v151[v170], v89);
            if (sub_1AE23D37C())
            {
              v172 = &v165[v152];
              v173 = v345;
              if (__OFADD__(v165, v152))
              {
                goto LABEL_192;
              }

              v174 = &v172[v169];
              if (__OFADD__(v172, v169))
              {
                goto LABEL_194;
              }

              v171(v349, v48, v8);
              v358 = *(v173 + 2);
              v359 = 0;
              v175 = v355;
              sub_1AE23CB1C();
              sub_1AE23CB8C();
              v176 = v362;
              v177 = *(v362 + 16);
              *&v178 = -1;
              *(&v178 + 1) = -1;
              v342 = v178;
              if (v177)
              {
                v179 = sub_1ADDFFB6C(v48, v8, v175);
                v165 = v335;
                if (v180)
                {
                  v342 = *(*(v176 + 56) + 16 * v179);
                }
              }

              else
              {
                v165 = v335;
              }

              v148 = __OFADD__(v165, v169);
              v181 = &v165[v169];
              if (v148)
              {
                goto LABEL_196;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v173 = sub_1ADE55D60(0, *(v173 + 2) + 1, 1, v173);
              }

              v183 = *(v173 + 2);
              v182 = *(v173 + 3);
              if (v183 >= v182 >> 1)
              {
                v173 = sub_1ADE55D60((v182 > 1), v183 + 1, 1, v173);
              }

              (*v351)(v48, v8);
              *(v173 + 2) = v183 + 1;
              *&v345 = v173;
              v166 = &v173[32 * v183];
              *(v166 + 2) = v342;
              *(v166 + 6) = v174;
              *(v166 + 7) = v181;
              v89 = v352;
              v148 = __OFSUB__(v152--, 1);
              if (v148)
              {
                goto LABEL_185;
              }
            }

            else
            {
              if (__OFADD__(v169, v165))
              {
                goto LABEL_193;
              }

              sub_1AE23C08C();
              (*v351)(v48, v8);
              v148 = __OFSUB__(v152--, 1);
              if (v148)
              {
                goto LABEL_185;
              }
            }
          }

          v184 = v322;
        }

        v154 = v345;
        v148 = __OFSUB__(v334, v320);
        v334 -= v320;
        if (v148)
        {
          goto LABEL_212;
        }

        v185 = sub_1AE23D0AC();
        v153 = v319;
        if (v319 == v185)
        {
          goto LABEL_95;
        }
      }

LABEL_208:
      result = sub_1AE23DAAC();
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v154 = MEMORY[0x1E69E7CC0];
LABEL_95:

    v360 = MEMORY[0x1E69E7CC0];
    v361 = MEMORY[0x1E69E7CC0];
    *&v345 = *(v154 + 16);
    if (v345)
    {
      swift_beginAccess();
      swift_beginAccess();
      v201 = 0;
      v202 = v154;
      v203 = *(v154 + 16);
      v204 = MEMORY[0x1E69E7CC0];
      result = MEMORY[0x1E69E7CC0];
      while (v201 < v203)
      {
        v205 = &v202[32 * v201];
        v206 = *(v205 + 5);
        v207 = *(result + 16);
        if (v207)
        {
          v208 = 0;
          v209 = (result + 32);
          v210 = *(result + 16);
          while (1)
          {
            v211 = *v209++;
            if (v206 >= v211)
            {
              v148 = __OFADD__(v208++, 1);
              if (v148)
              {
                goto LABEL_189;
              }
            }

            if (!--v210)
            {
              goto LABEL_106;
            }
          }
        }

        v208 = 0;
LABEL_106:
        v212 = *(v204 + 2);
        if (v212)
        {
          v213 = (v204 + 32);
          v214 = *(v204 + 2);
          do
          {
            v215 = *v213++;
            if (v215 < v206)
            {
              v148 = __OFSUB__(v208--, 1);
              if (v148)
              {
                goto LABEL_190;
              }
            }
          }

          while (--v214);
        }

        v216 = *(v205 + 6);
        v217 = 0;
        if (v207)
        {
          v218 = (result + 32);
          do
          {
            v219 = *v218++;
            if (v216 >= v219)
            {
              v148 = __OFADD__(v217++, 1);
              if (v148)
              {
                goto LABEL_191;
              }
            }
          }

          while (--v207);
        }

        if (v212)
        {
          v220 = (v204 + 32);
          do
          {
            v221 = *v220++;
            if (v221 < v216)
            {
              v148 = __OFSUB__(v217--, 1);
              if (v148)
              {
                goto LABEL_195;
              }
            }
          }

          while (--v212);
        }

        v222 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v223 = v222;
        }

        else
        {
          result = sub_1ADE55D4C(0, *(v222 + 16) + 1, 1, v222);
          v223 = result;
        }

        v225 = *(v223 + 2);
        v224 = *(v223 + 3);
        if (v225 >= v224 >> 1)
        {
          result = sub_1ADE55D4C((v224 > 1), v225 + 1, 1, v223);
          v223 = result;
        }

        *(v223 + 2) = v225 + 1;
        *&v223[8 * v225 + 32] = v216;
        if (v201 >= *(v202 + 2))
        {
          goto LABEL_214;
        }

        v348 = v223;
        v226 = *(v205 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v204 = sub_1ADE55D4C(0, *(v204 + 2) + 1, 1, v204);
        }

        v351 = v204;
        v228 = *(v204 + 2);
        v227 = *(v204 + 3);
        if (v228 >= v227 >> 1)
        {
          v351 = sub_1ADE55D4C((v227 > 1), v228 + 1, 1, v351);
        }

        v204 = v351;
        *(v351 + 2) = v228 + 1;
        *&v204[8 * v228 + 32] = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v202 = sub_1ADF79A2C(v202);
        }

        v89 = v352;
        v203 = *(v202 + 2);
        result = v348;
        if (v201 >= v203)
        {
          goto LABEL_215;
        }

        v229 = &v202[32 * v201];
        v230 = *(v229 + 5);
        v148 = __OFADD__(v230, v208);
        v231 = v230 + v208;
        if (v148)
        {
          goto LABEL_216;
        }

        *(v229 + 5) = v231;
        v232 = *(v229 + 6);
        v148 = __OFADD__(v232, v217);
        v233 = v232 + v217;
        if (v148)
        {
          goto LABEL_217;
        }

        ++v201;
        *(v229 + 6) = v233;
        if (v201 == v345)
        {
          v360 = v204;
          v361 = result;
          v235 = v202 + 48;
          v236 = MEMORY[0x1E69E7CC0];
          do
          {
            v241 = *(v235 - 1);
            v242 = *v235;
            v243 = *v235;
            if (v241 != *v235)
            {
              v148 = __OFSUB__(v243, 1);
              v244 = v243 - 1;
              if (v148)
              {
                goto LABEL_219;
              }

              if (v241 != v244)
              {
                v345 = *v235;
                v245 = *(v235 - 2);
                result = swift_isUniquelyReferenced_nonNull_native();
                v357 = v236;
                if ((result & 1) == 0)
                {
                  result = sub_1ADE6F3BC(0, *(v236 + 16) + 1, 1);
                  v236 = v357;
                }

                v237 = v345;
                v239 = *(v236 + 16);
                v238 = *(v236 + 24);
                if (v239 >= v238 >> 1)
                {
                  result = sub_1ADE6F3BC((v238 > 1), v239 + 1, 1);
                  v237 = v345;
                  v236 = v357;
                }

                *(v236 + 16) = v239 + 1;
                v240 = v236 + 32 * v239;
                *(v240 + 32) = v245;
                *(v240 + 40) = v241;
                *(v240 + 48) = v237;
                v89 = v352;
              }
            }

            v235 += 2;
            --v203;
          }

          while (v203);
          v338 = v236;
          v234 = v346;
          goto LABEL_155;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
      return result;
    }

    v348 = MEMORY[0x1E69E7CC0];
    v351 = MEMORY[0x1E69E7CC0];
    v338 = MEMORY[0x1E69E7CC0];
    v234 = v346;
LABEL_155:

    v357 = v373;

    MEMORY[0x1B26FB780](&v365, v350, v296);

    v356 = v365;
    sub_1AE23DC6C();
    sub_1AE23DC7C();
    v246 = v297;
    v247 = v344;
    (v340)(v297, v234, v344);
    v248 = TupleTypeMetadata2;
    v249 = (v339)(v246, 1, TupleTypeMetadata2);
    v200 = v315;
    if (v249 != 1)
    {
      *&v345 = *v354;
      do
      {
        v250 = *v246;
        v251 = v248[12];
        (v345)(v349, &v246[v251], v8);
        (*v353)(&v246[v251], v89);
        v365 = v250;
        v252 = v346;
        v366 = 0;
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        sub_1AE23DC7C();
        (v340)(v246, v252, v247);
      }

      while ((v339)(v246, 1, v248) != 1);
    }

    v199 = v353;
LABEL_159:
    v367 = sub_1AE23C9CC();
    v365 = v373;

    CRSequence.makeIterator()(v350, &v357);

    v253 = type metadata accessor for CRSequence.Iterator();
    CRSequence.Iterator.next()(v253, v200);
    v254 = *(v347 + 48);
    v255 = (v254)(v200, 1, v89);
    v256 = v325;
    if (v255 != 1)
    {
      v265 = *(v347 + 32);
      v347 += 32;
      v351 = (v303 + 48);
      v346 = (v303 + 8);
      *&v345 = v314 + 40;
      v344 = (v298 + 48);
      TupleTypeMetadata2 = (v298 + 32);
      *&v342 = v298 + 16;
      v341 = (v298 + 56);
      v340 = (v298 + 8);
      v339 = (v299 + 8);
      v349 = v254;
      v348 = v265;
      (v265)(v325, v200, v89);
      while (1)
      {
        sub_1AE23CB7C();
        if (v366 == 1)
        {
          (*v199)(v256, v89);
        }

        else
        {
          v266 = v253;
          v267 = v365;
          v268 = v321[1];
          v365 = v374;
          v269 = v313;
          CRSequence.subscript.getter();
          v270 = v323;
          (*v354)(v323, v269, v8);
          v271 = *v199;
          v271(v269, v89);
          v364 = v268;
          v272 = type metadata accessor for CRSet();
          v273 = v324;
          CRSet.subscript.getter(v270, v272, v324);
          v274 = *v351;
          result = (*v351)(v273, 1, v8);
          if (result == 1)
          {
            goto LABEL_221;
          }

          v363 = v311[1];
          v275 = v310;
          CRSet.subscript.getter(v325, v272, v310);
          result = v274(v275, 1, v8);
          if (result == 1)
          {
            goto LABEL_222;
          }

          v276 = *v346;
          (*v346)(v323, v8);
          v277 = v312;
          v278 = v324;
          (*(v314 + 40))(v275, v318, v8);
          v276(v275, v8);
          v276(v278, v8);
          v279 = v317;
          if ((*v344)(v277, 1, v317) == 1)
          {
            v256 = v325;
            v89 = v352;
            v280 = v353;
            v271(v325, v352);
            v199 = v280;
            (*v339)(v277, v306);
          }

          else
          {
            v281 = v304;
            (*TupleTypeMetadata2)(v304, v277, v279);
            v282 = v325;
            sub_1AE23CB7C();
            v283 = v279;
            if (v366)
            {
              v284 = v267;
            }

            else
            {
              v284 = v365;
            }

            v256 = v282;
            v285 = v305;
            (*v342)(v305, v281, v283);
            (*v341)(v285, 0, 1, v283);
            v365 = v284;
            sub_1AE23CB1C();
            sub_1AE23CB8C();
            (*v340)(v281, v283);
            v89 = v352;
            v286 = v353;
            v271(v256, v352);
            v199 = v286;
          }

          v200 = v315;
          v253 = v266;
          v254 = v349;
          v265 = v348;
        }

        CRSequence.Iterator.next()(v253, v200);
        if ((v254)(v200, 1, v89) == 1)
        {
          break;
        }

        (v265)(v256, v200, v89);
      }
    }

    v257 = sub_1AE23C04C();
    v48 = v338;
    if (v257 <= 0 && sub_1AE23CA7C() <= 0 && !*(v48 + 2))
    {
      goto LABEL_186;
    }

    goto LABEL_164;
  }

  v124 = 0;
  v125 = 0;
  v334 = (v121 + 32);
  v126 = (v303 + 8);
  *&v345 = v347 + 16;
  while (1)
  {
    v127 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v127 & 1) == 0)
    {
LABEL_202:
      sub_1AE23DAAC();
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    if (__OFADD__(v125, 1))
    {
      goto LABEL_203;
    }

    v128 = &v334[32 * v125];
    v129 = *v128;
    v130 = *(v128 + 1);
    v131 = *v128 + v130;
    if (__OFADD__(*v128, v130))
    {
      goto LABEL_204;
    }

    if (v131 < v129)
    {
      goto LABEL_205;
    }

    v133 = *(v128 + 2);
    v132 = *(v128 + 3);
    v335 = v125 + 1;
    v337 = v133;
    *&v342 = v132;
    if (v129 != v131)
    {
      break;
    }

    v134 = v132;
LABEL_29:
    v89 = v352;
    v138 = v342;
    if (v342)
    {
      v139 = sub_1AE16A958();
      *&v342 = v138;

      if (sub_1AE23D0AC())
      {
        v140 = 0;
        do
        {
          v141 = sub_1AE23D08C();
          sub_1AE23D00C();
          if (v141)
          {
            (*(v347 + 16))(v351, v139 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v140, v89);
            v142 = v354;
            v143 = v140 + 1;
            if (__OFADD__(v140, 1))
            {
              goto LABEL_184;
            }
          }

          else
          {
            result = sub_1AE23DAAC();
            v142 = v354;
            if (v328 != 8)
            {
              goto LABEL_220;
            }

            v368 = result;
            (*v345)(v351, &v368, v89);
            swift_unknownObjectRelease();
            v143 = v140 + 1;
            if (__OFADD__(v140, 1))
            {
              goto LABEL_184;
            }
          }

          v144 = v351;
          (*v142)(v48, v351, v8);
          v89 = v352;
          (*v353)(v144, v352);
          sub_1AE23D38C();
          v145 = v349;
          sub_1AE23D33C();
          (*v126)(v145, v8);
          ++v140;
        }

        while (v143 != sub_1AE23D0AC());
      }

      v147 = v342;

      v123 = v349;
    }

    v148 = __OFSUB__(v124, v337);
    v124 -= v337;
    if (v148)
    {
      goto LABEL_206;
    }

    v121 = v327;
    v149 = sub_1AE23D0AC();
    v125 = v335;
    if (v335 == v149)
    {
      goto LABEL_43;
    }
  }

  if (v129 >= v131)
  {
    goto LABEL_207;
  }

  v135 = v374;
  v136 = v132;
  while (!__OFADD__(v129, v124))
  {
    ++v129;
    v368 = v135;
    v137 = v348;
    CRSequence.subscript.getter();
    (*v354)(v48, v137, v8);
    sub_1AE23D38C();
    sub_1AE23D33C();
    (*v126)(v123, v8);
    (*v353)(v137, v352);
    if (!--v130)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  v291 = sub_1AE23C04C();

  if (v291 >= 1)
  {
LABEL_164:
    v258 = v367;
    v259 = *(v307 + 32);
    v260 = v300;
    v261 = v308;
    v259(v300, v329, v308);
    v262 = v301;
    v259(v301, v331, v261);
    v263 = v302;
    sub_1AE1E4574(v258, v260, v48, v262, v302);

    v264 = type metadata accessor for CROrderedSet.ObservableDifference();
    (*(*(v264 - 8) + 56))(v263, 0, 1, v264);
    goto LABEL_165;
  }

  v292 = *(v307 + 8);
  v293 = v308;
  v292(v329, v308);
  v292(v331, v293);

  v294 = type metadata accessor for CROrderedSet.ObservableDifference();
  (*(*(v294 - 8) + 56))(v302, 1, 1, v294);
LABEL_165:
}

void CROrderedSet.MergeableDelta.visitReferences(_:)(void *a1, void *a2)
{
  v5 = v2[6];
  if (*v2)
  {
    v15 = *v2;
    v16 = v2[1];
    v17 = v2[2];
    v18 = v2[3];
    v19 = v2[4];
    v20 = v2[5];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = type metadata accessor for CRSet.Partial();

    CRSet.Partial.visitReferences(_:)(a1, v9);
  }

  if (v5)
  {
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[4];
    type metadata accessor for CROrderedSetElement();
    v13 = type metadata accessor for CRSequence.MergeableDelta();
    v14 = v5;
    CRSequence.MergeableDelta.visitReferences(_:)(a1, v13);
  }
}

uint64_t CROrderedSet.MergeableDelta.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!*(a1 + 64))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000001AE25FB50;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  v83 = a2;
  v115 = a3;
  v82 = a5;
  type metadata accessor for CRDecoder.CRDTContainer();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;

  v9 = *(sub_1ADDE78C8() + 16);
  if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x8000000000000000)
  {
    v11 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v11 = &off_1ED967FA0;
  }

  v13 = *v11;

  swift_beginAccess();
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = *(v13 + 48);
  v93 = *(v13 + 32);
  v94 = v16;
  v17 = *(v13 + 80);
  v95 = *(v13 + 64);
  v96 = v17;
  if (v15)
  {
    v90 = v14;
    *&v91[0] = v15;
    *(v91 + 8) = v93;
    *(&v91[1] + 8) = v94;
    *(&v91[2] + 8) = v95;
    *(&v91[3] + 8) = v96;
    sub_1ADFAEE10(&v90, &v85);

    v18 = *(&v91[3] + 8);
    v19 = v91[2];
    v20 = v91[3];
    v21 = v91[1];
    v22 = v91[0];
    v23 = v90;
  }

  else
  {

    v23 = 0;
    v22 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v21 = 0uLL;
    v20 = 1;
    v19 = 0uLL;
    v18 = 0uLL;
  }

  v92 = v20;
  v109 = v23;
  v110 = v22;
  v111 = v21;
  v112 = v19;
  v113 = v20;
  v114 = v18;

  sub_1AE17AEEC(&v109, a1, v83, v115, a4, &v97);
  if (v5)
  {

    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  v75 = a4;
  v76 = v97;
  v77 = v98;
  v25 = v99;
  v26 = v100;
  v27 = v101;
  v28 = *(sub_1ADDE78C8() + 16);
  v80 = v27;
  if ((~v28 & 0xF000000000000007) != 0 && (v28 & 0xF000000000000000) == 0x8000000000000000)
  {
    v29 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v29 = &off_1ED967FA0;
  }

  v30 = *v29;

  swift_beginAccess();
  v31 = *(v30 + 104);
  if (v31)
  {
    v90 = *(v30 + 96);
    *&v91[0] = v31;
    v32 = *(v30 + 160);
    *(&v91[2] + 8) = *(v30 + 144);
    *(&v91[3] + 8) = v32;
    *(&v91[4] + 8) = *(v30 + 176);
    *(&v91[5] + 1) = *(v30 + 192);
    v33 = *(v30 + 128);
    *(v91 + 8) = *(v30 + 112);
    *(&v91[1] + 8) = v33;
    sub_1ADE51B64(&v90, &v85);

    v34 = v91[5];
    v35 = v91[4];
    v36 = v91[3];
    v37 = v91[2];
    v38 = *(&v91[1] + 1);
    v39 = *(v91 + 8);
    v40 = v90;
    v41 = *&v91[0];
  }

  else
  {

    v40 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    v39 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v37 = 0uLL;
    v41 = 0xE000000000000000;
    v36 = 0uLL;
    v35 = 0uLL;
    v34 = 0uLL;
  }

  v90 = v40;
  *&v91[0] = v41;
  *(v91 + 8) = v39;
  *(&v91[1] + 1) = v38;
  v91[2] = v37;
  v91[3] = v36;
  v91[4] = v35;
  v42 = v39.i64[0];
  v91[5] = v34;

  sub_1AE030800(&v90);
  v43 = *(sub_1ADDE78C8() + 16);
  v81 = v8;
  v78 = v25;
  v79 = v26;
  if ((~v43 & 0xF000000000000007) != 0 && (v43 & 0xF000000000000000) == 0x8000000000000000)
  {
    v44 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v44 = &off_1ED967FA0;
  }

  v45 = *v44;

  swift_beginAccess();
  v46 = *(v45 + 200);

  v74[2] = v74;
  v85 = v42;
  v86 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v74[1] = v42;
  v73[2] = v83;
  v73[3] = v115;
  v73[4] = v75;
  v73[5] = a1;
  v74[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE470, &unk_1AE2593A8);
  v48 = type metadata accessor for CROrderedSetElement();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v50 = sub_1AE1EA004();
  v51 = sub_1ADE13AA8(sub_1AE1E9FE0, v73, v74[0], v48, v49, v50, MEMORY[0x1E69E7288], v84);
  v115 = 0;

  v52 = *(sub_1ADDE78C8() + 16);
  if ((~v52 & 0xF000000000000007) != 0 && (v52 & 0xF000000000000000) == 0x8000000000000000)
  {
    v53 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v53 = &off_1ED967FA0;
  }

  v54 = *v53;

  swift_beginAccess();
  v55 = *(v54 + 104);
  if (v55)
  {
    v56 = *(v54 + 144);
    v57 = *(v54 + 176);
    v88[2] = *(v54 + 160);
    v88[3] = v57;
    v58 = *(v54 + 128);
    v87 = *(v54 + 112);
    v85 = *(v54 + 96);
    v86 = v55;
    *&v88[4] = *(v54 + 192);
    v88[0] = v58;
    v88[1] = v56;
    sub_1ADE51B64(&v85, v84);

    v59 = *(&v88[3] + 8);
    v60 = *(&v88[2] + 8);
    v61 = *(&v88[1] + 8);
    v62 = *(v88 + 8);
    v63 = *&v88[0];
    v64 = v87;
    v65 = v85;
    v66 = v86;
  }

  else
  {

    v65 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v64 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v62 = 0uLL;
    v66 = 0xE000000000000000;
    v61 = 0uLL;
    v60 = 0uLL;
    v59 = 0uLL;
  }

  v67 = v80;
  v102[0] = v65;
  v102[1] = v66;
  v103 = v64;
  v104 = v63;
  v105 = v62;
  v106 = v61;
  v107 = v60;
  v108 = v59;
  v68 = v115;
  sub_1AE169F80(v102, a1, v51, v48, &off_1F23C8BA0, v89);

  if (v68)
  {
    return sub_1AE1EA068(v76);
  }

  swift_setDeallocating();
  result = swift_deallocClassInstance();
  v69 = v89[0];
  v70 = v82;
  v71 = *(&v76 + 1);
  *v82 = v76;
  v70[1] = v71;
  v72 = v78;
  v70[2] = v77;
  v70[3] = v72;
  v70[4] = v79;
  v70[5] = v67;
  v70[6] = v69;
  return result;
}

uint64_t sub_1AE1E7ADC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v33 = a7;
  v34 = a5;
  v11 = type metadata accessor for Timestamp(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v32 - v15;
  v38 = *(a3 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v35 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v23 = *a1;
  v22 = a1[1];
  v36 = a1[2];
  v37 = v22;
  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(v23, a2);

  v24 = *(*(a4 + 8) + 8);
  v25 = *(v24 + 8);

  v27 = v42;
  v25(v26, a3, v24);
  if (v27)
  {

    *v41 = v27;
  }

  else
  {
    v28 = v35;
    v29 = v38;
    v30 = v39;

    sub_1ADE017C0(v37, v36, a2, v40);

    (*(v29 + 32))(v28, v21, a3);
    sub_1AE017B14(v40, v30);
    return sub_1ADE0C8B4(v28, v30, a3, v33);
  }

  return result;
}

void CROrderedSet.MergeableDelta.encode(to:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v7 = *v2;
  v80 = v2[1];
  v81 = v7;
  v79 = v2[2];
  v8 = *(v2 + 6);
  v9 = qword_1ED967F98;
  v10 = v8;
  if (v9 != -1)
  {
    v66 = v10;
    swift_once();
    v10 = v66;
  }

  v11 = off_1ED967FA0;
  if (v8)
  {
    v101 = v10;
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v110 = v10;
    type metadata accessor for CROrderedSetElement();
    v77 = a2;
    v15 = v11;
    type metadata accessor for CRSequence.MergeableDelta();

    v78 = a1;
    sub_1AE16A304(v107);
    if (v3)
    {

      return;
    }

    v76.i64[0] = v14;
    *&v75 = v13;
    *&v74 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v26 = sub_1AE1D0514(v11);

      v15 = v26;
    }

    v27 = v75;
    v91 = v107[4];
    v92 = v107[5];
    v93 = v108;
    v87 = v107[0];
    v88 = v107[1];
    v89 = v107[2];
    v90 = v107[3];
    swift_beginAccess();
    v100 = *(v15 + 192);
    v28 = *(v15 + 176);
    v98 = *(v15 + 160);
    v99 = v28;
    v29 = *(v15 + 112);
    v94 = *(v15 + 96);
    v95 = v29;
    v30 = *(v15 + 144);
    v96 = *(v15 + 128);
    v97 = v30;
    v31 = v88;
    *(v15 + 96) = v87;
    *(v15 + 112) = v31;
    v32 = v89;
    v33 = v90;
    v34 = v91;
    v35 = v92;
    *(v15 + 192) = v93;
    *(v15 + 160) = v34;
    *(v15 + 176) = v35;
    *(v15 + 128) = v32;
    *(v15 + 144) = v33;
    sub_1ADDCEDE0(&v94, &qword_1EB5BCC28, &unk_1AE251820);
    v36 = [v110 attributedString];
    type metadata accessor for CRSequenceStorage();
    swift_dynamicCastClassUnconditional();
    v37 = sub_1AE16A958();

    v38 = swift_unknownObjectRelease();
    v39 = v37;
    *&v84 = v37;
    MEMORY[0x1EEE9AC00](v38);
    v68 = v74;
    v69 = v27;
    v70 = v76.i64[0];
    v71 = v78;
    v40 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v43 = sub_1ADE08EB0(sub_1AE1EA0E8, v67, v40, &type metadata for Proto_Timestamp, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v42);
    *&v73 = 0;
    v11 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v44 = sub_1AE1D0514(v15);

      v11 = v44;
    }

    swift_beginAccess();
    v45 = *(v11 + 25);
    *(v11 + 25) = v43;

    v86[1] = v39;
    MEMORY[0x1EEE9AC00](v46);
    v68 = v74;
    v69 = v75;
    v70 = v76.i64[0];
    v71 = v78;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v48 = v73;
    v49 = sub_1ADE08EB0(sub_1ADF87ED8, v67, v40, &type metadata for Proto_Value, v47, WitnessTable, MEMORY[0x1E69E7288], v86);
    if (v48)
    {

      return;
    }

    v51 = v49;
    v4 = 0;

    swift_beginAccess();
    v52 = *(v11 + 11);
    v85[3] = *(v11 + 10);
    v85[4] = v52;
    v53 = *(v11 + 6);
    v54 = *(v11 + 7);
    *&v85[5] = *(v11 + 24);
    v84 = v53;
    v85[0] = v54;
    v55 = *(v11 + 9);
    v85[1] = *(v11 + 8);
    v85[2] = v55;
    v56 = *(&v84 + 1);
    if (*(&v84 + 1))
    {
      v57 = v84;
      v75 = *(&v85[1] + 8);
      v76 = *(v85 + 8);
      v73 = *(&v85[4] + 8);
      v74 = *(&v85[2] + 8);
      v58 = *(&v85[3] + 8);
    }

    else
    {
      v57 = 0;
      v58 = 0uLL;
      v75 = 0u;
      v76 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v56 = 0xE000000000000000;
      v73 = 0u;
      v74 = 0u;
    }

    v72 = v58;
    sub_1ADDCEE40(&v84, v82, &qword_1EB5BCC28, &unk_1AE251820);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
    }

    else
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();

      v60 = sub_1AE1D0514(v59);

      v11 = v60;
    }

    swift_beginAccess();
    v83 = *(v11 + 24);
    v61 = *(v11 + 11);
    v82[4] = *(v11 + 10);
    v82[5] = v61;
    v62 = *(v11 + 7);
    v82[0] = *(v11 + 6);
    v82[1] = v62;
    v63 = *(v11 + 9);
    v82[2] = *(v11 + 8);
    v82[3] = v63;
    *(v11 + 12) = v57;
    *(v11 + 13) = v56;
    *(v11 + 14) = v51;
    v64 = v75;
    *(v11 + 120) = v76;
    *(v11 + 136) = v64;
    *(v11 + 152) = v74;
    v65 = v73;
    *(v11 + 168) = v72;
    *(v11 + 184) = v65;
    sub_1ADDCEDE0(v82, &qword_1EB5BCC28, &unk_1AE251820);
    a2 = v77;
    a1 = v78;
  }

  else
  {
  }

  if (!v81)
  {
    goto LABEL_12;
  }

  v87 = v81;
  v88 = v80;
  v89 = v79;
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v19 = type metadata accessor for CRSet.Partial();
  sub_1AE17B124(a1, v19, v109);
  if (!v4)
  {
    v104 = v109[2];
    v105 = v109[3];
    v106 = v109[4];
    v102 = v109[0];
    v103 = v109[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v20 = sub_1AE1D0514(v11);

      v11 = v20;
    }

    swift_beginAccess();
    v21 = *(v11 + 2);
    v22 = *(v11 + 3);
    v23 = *(v11 + 5);
    v97 = *(v11 + 4);
    v98 = v23;
    v95 = v21;
    v96 = v22;
    v94 = *(v11 + 1);
    v24 = v106;
    *(v11 + 1) = v102;
    *(v11 + 4) = v105;
    *(v11 + 5) = v24;
    v25 = v104;
    *(v11 + 2) = v103;
    *(v11 + 3) = v25;
    sub_1ADDCEDE0(&v94, &qword_1EB5BCC30, &qword_1AE2580D0);
LABEL_12:
    sub_1ADDFCC74();
    if (!v4)
    {
      swift_beginAccess();

      sub_1AE1B6E5C(v50);
      swift_endAccess();
    }
  }
}

uint64_t sub_1AE1E8500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Replica();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for CROrderedSetElement() + 44);
  sub_1ADDF8030(v8, v7, type metadata accessor for Replica);
  v9 = sub_1ADDF66A8(v7);
  v10 = sub_1AE23BFEC();
  (*(*(v10 - 8) + 8))(v7, v10);
  result = type metadata accessor for Timestamp(0);
  v12 = *(v8 + *(result + 20));
  *a2 = v9;
  a2[1] = v12;
  return result;
}

uint64_t CROrderedSet.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v32 - v8;
  v10 = *(v9 + 24);
  v34 = *(v9 + 32);
  v35 = v10;
  v11 = type metadata accessor for CROrderedSetElement();
  v12 = sub_1AE23D7CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = *v2;
  v21 = sub_1AE23D0AC();
  v22 = v2[1];
  if (v22 == v21)
  {
    v23 = *(v11 - 8);
    (*(v23 + 56))(v19, 1, 1, v11);
    goto LABEL_6;
  }

  v33 = v4;
  v24 = sub_1AE23D08C();
  sub_1AE23D00C();
  if ((v24 & 1) == 0)
  {
    result = sub_1AE23DAAC();
    v25 = *(v11 - 8);
    if (*(v25 + 64) != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v39 = result;
    (*(v25 + 16))(v19, &v39, v11);
    result = swift_unknownObjectRelease();
    v27 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = *(v11 - 8);
  result = (*(v25 + 16))(v19, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v11);
  v27 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_13;
  }

LABEL_5:
  v2[1] = v27;
  v23 = v25;
  (*(v25 + 56))(v19, 0, 1, v11);
  v4 = v33;
LABEL_6:
  (*(v13 + 16))(v16, v19, v12);
  if ((*(v23 + 48))(v16, 1, v11) == 1)
  {
    v28 = *(v13 + 8);
    v28(v19, v12);
    v28(v16, v12);
    return (*(v4 + 56))(v38, 1, 1, v3);
  }

  else
  {
    v29 = v36;
    (*(v4 + 16))(v36, v16, v3);
    (*(v23 + 8))(v16, v11);
    v30 = v37;
    (*(v4 + 32))(v37, v29, v3);
    v39 = v2[2];
    v31 = type metadata accessor for CRSet();
    CRSet.subscript.getter(v30, v31, v38);
    (*(v4 + 8))(v30, v3);
    return (*(v13 + 8))(v19, v12);
  }
}

uint64_t CROrderedSet.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1ADDEF390(a1);
  v5 = *(v2 + 8);
  *a2 = v4;
  a2[1] = 0;
  a2[2] = v5;
}

uint64_t sub_1AE1E8BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  CROrderedSet.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1AE1E8C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE1E8C5C(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1AE23836C();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t CROrderedSet.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C12C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1AE23D44C())
  {
    sub_1AE23C00C();
    CROrderedSet.remove(atOffsets:)(v16, a4);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {

    return sub_1AE1E1C78(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t (*sub_1AE1E8E64(void *a1, uint64_t *a2, void *a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CROrderedSet.subscript.modify(v6, *a2, a3);
  return sub_1ADECDC64;
}

uint64_t sub_1AE1E8EEC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1AE1E9F48(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1AE23E2DC();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t (*sub_1AE1E8F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AE1DF030(v8, a2, a3, a4);
  return sub_1ADEBEB94;
}

void sub_1AE1E90AC(char *a1@<X8>, void *a2@<X0>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  CROrderedSet.init()(a1);
}

uint64_t sub_1AE1E90BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  CROrderedSet.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1AE1E915C(uint64_t a1, uint64_t a2)
{
  CROrderedSet.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1AE1E91C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CROrderedSet.append<A>(contentsOf:)(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_1AE1E925C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  a5(a1, *a2);
  v7 = *(*(*(a3 + 16) - 8) + 8);

  return v7(a1);
}

uint64_t sub_1AE1E92D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CROrderedSet.insert<A>(contentsOf:at:)(a1, *a2, a5, a3, *(a4 + 8));
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t sub_1AE1E9380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AE1DF3FC(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AE1E93E8()
{
  swift_getWitnessTable();

  return sub_1AE23D3FC();
}

Swift::Int sub_1AE1E9458@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = CROrderedSet.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AE1E9484()
{
  swift_getWitnessTable();

  return sub_1AE23D3DC();
}

uint64_t sub_1AE1E94F4(uint64_t *a1)
{
  v2 = *a1;
  swift_getWitnessTable();
  return sub_1AE23D3DC();
}

uint64_t sub_1AE1E9564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[7] = *a2;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a1;
  v9[6] = a3;
  type metadata accessor for CROrderedSetElement();
  v6 = type metadata accessor for CRSequence();

  v7 = sub_1AE165268(sub_1AE1EA5EC, v9, v6, &type metadata for Proto_Set.Element);

  return v7;
}

void sub_1AE1E961C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  if (!*(v18 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v37 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1ADDFFB6C(v16, a4, a6);
  if ((v20 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v35 = v14;
  v36 = a7;
  v21 = *(a2 + 36);
  v22 = *(a3 + 112);
  v23 = *(a3 + 120);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  sub_1AE1E9860(a2, v19, v21, 0, a3, a4, a5);
  if (v7)
  {
    v38 = v7;
  }

  else
  {
    v34[1] = v21;
    v24 = sub_1ADE71C08();
    v38 = 0;
    v25 = v24;
    swift_beginAccess();
    v26 = *(v25 + 24);
    v27 = *(a3 + 112);
    *(a3 + 112) = v22;

    v28 = *(a3 + 120);
    *(a3 + 120) = v23;

    v29 = v37;
    sub_1AE23CB9C();
    (*(v35 + 8))(v29, a4);
    sub_1ADF78ED0(v41, &v40);
    v39 = v40;
    v30 = sub_1ADDF5C7C(a3);
    v32 = v31;

    v33 = v36;
    *v36 = v26;
    v33[1] = 0;
    v33[2] = v30;
    v33[3] = v32;
    v33[4] = 0;
  }
}

uint64_t sub_1AE1E9860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23CB9C();

  (*(*(*(a7 + 8) + 8) + 16))(a5, a6);
  return (*(v10 + 8))(v13, a6);
}

uint64_t CROrderedSet<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v34[6] = a3;
  v9 = a2[2];
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23D7CC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3AC();
  v18 = sub_1ADDEF390(a2);
  v19 = *(v6 + 8);
  v31 = v18;
  v32 = 0;
  v33 = v19;
  v20 = a2[3];
  v21 = a2[4];
  v22 = type metadata accessor for CROrderedSet.Iterator();

  v30 = v22;
  CROrderedSet.Iterator.next()(v22, v16);
  v23 = v27;
  v28 = *(v27 + 48);
  v29 = v27 + 48;
  if (v28(v16, 1, v9) != 1)
  {
    v25 = *(v23 + 32);
    v24 = v23 + 32;
    v27 = v25;
    do
    {
      (v27)(v12, v16, v9);
      __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
      sub_1AE23DE6C();
      (*(v24 - 24))(v12, v9);
      if (v5)
      {
        break;
      }

      CROrderedSet.Iterator.next()(v30, v16);
    }

    while (v28(v16, 1, v9) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1AE1E9C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE1E9C78()
{
  v1 = v0[5];
  v2 = *(v0[4] + 8);
  v3 = v0[2];
  return sub_1AE23CCBC() & 1;
}

void sub_1AE1E9CB4(uint64_t a1, Swift::Int a2, void *a3)
{
  v4 = v3;
  v8 = a3[2];
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[4];
  v27[1] = *(v13 + 24);
  v29 = v14;
  v15 = type metadata accessor for CROrderedSetElement();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v28 = a1;
  v30 = a2;
  v20 = CROrderedSet.count.getter(a3);
  if (v20 <= v30)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1ADE10650(a3);
  v31 = *v4;
  type metadata accessor for CRSequence();
  CRSequence.subscript.getter();
  (*(v9 + 16))(v12, v19, v8);
  (*(v16 + 8))(v19, v15);
  v21 = v28;
  v22 = *(v29 + 8);
  v23 = sub_1AE23CCBC();
  (*(v9 + 8))(v12, v8);
  if ((v23 & 1) == 0)
  {
    v31 = v4[1];
    v24 = type metadata accessor for CRSet();

    v25 = CRSet.contains(_:)(v21, v24);

    if (!v25)
    {
      v26 = v30;
      CROrderedSet.remove(at:)(v30);
      CROrderedSet.insert(_:at:)(v21, v26, a3);
    }
  }
}

uint64_t sub_1AE1E9F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  sub_1AE23E2DC();
  swift_getWitnessTable();

  return sub_1AE23DD8C();
}

unint64_t sub_1AE1EA004()
{
  result = qword_1EB5BE478;
  if (!qword_1EB5BE478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BE470, &unk_1AE2593A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE478);
  }

  return result;
}

uint64_t sub_1AE1EA068(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1EA0E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  return sub_1AE1E8500(a1, a2);
}

uint64_t sub_1AE1EA130(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE1EA398()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1EA3EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1EA428(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1AE1EA484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1EA4FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1EA554(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_1AE1E218C(a1, v1[7], v1[2]) & 1;
}

uint64_t sub_1AE1EA57C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1() & 1;
}

uint64_t sub_1AE1EA5CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  return sub_1AE1E8500(a1, a2);
}

uint64_t sub_1AE1EA644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1ADDCEE40(a3, v24 - v10, &unk_1EB5BDD00, &qword_1AE242340);
  v12 = sub_1AE23D1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1ADDCEDE0(v11, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1AE23D16C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1AE23CD8C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void Capsule.versionUUID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
    swift_beginAccess();
    v5 = sub_1AE23BFEC();
    (*(*(v5 - 8) + 16))(a1, v2 + v4, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE1EA944()
{
  v69 = type metadata accessor for PartiallyOrderedReferenceMap();
  v1 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v71 = v0[1];
  v72 = v4;
  v70 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v5 = swift_allocObject();
  v6 = v72;
  v7 = *(&v72 + 1);
  v8 = v72;
  *(v5 + 16) = xmmword_1AE2418F0;
  *(v5 + 32) = v6;
  sub_1ADDD86D8(v8, v7);
  sub_1AE1FBBA0(v5);
  v11 = v10;
  if (!*(v10 + 16))
  {
    return v9;
  }

  v12 = 0;
  v67 = v9;
  v13 = v9;
  v14 = v10;
  v68 = v3;
  while (1)
  {
    v86 = v72;
    v87 = v71;
    v88 = v70;
    result = sub_1ADDFC54C(v3);
    if (v12 >= *(v14 + 16))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v79 = v12;
    v18 = v14 + 16 * v12;
    v19 = *(v18 + 32);
    v20 = *(v18 + 40);
    v21 = &v3[*(v69 + 20)];
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    sub_1ADDD86D8(v19, v20);
    sub_1ADDDF7A8(v19, v20, v22, v81);
    sub_1ADDCC35C(v19, v20);
    sub_1ADE73DF4(v3);
    if (v82)
    {
      break;
    }

    v15 = v14;
LABEL_4:
    v12 = v79 + 1;
    v16 = *(v14 + 16);
    v14 = v15;
    if (v79 + 1 >= v16)
    {
      return v13;
    }
  }

  v77 = v82;
  v75 = v81[1];
  v76 = v81[0];
  v74 = v83;
  v73 = v85;
  v25 = v84 + 64;
  v26 = 1 << *(v84 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v84 + 64);
  v29 = (v26 + 63) >> 6;
  v80 = v84;
  result = swift_bridgeObjectRetain_n();
  v30 = 0;
  v31 = v13;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v13 = v31;
        v78 = v14;
        while (1)
        {
          if (!v28)
          {
            while (1)
            {
              v33 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              if (v33 >= v29)
              {

                sub_1ADDDC21C(v76, v75, v77);

                v3 = v68;
                v15 = v78;
                goto LABEL_4;
              }

              v28 = *(v25 + 8 * v33);
              ++v30;
              if (v28)
              {
                v30 = v33;
                goto LABEL_19;
              }
            }

            __break(1u);
            goto LABEL_56;
          }

LABEL_19:
          v34 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v35 = (*(v80 + 48) + ((v30 << 10) | (16 * v34)));
          v36 = *v35;
          v37 = v35[1];
          v38 = *(v11 + 16);
          sub_1ADDD86D8(*v35, v37);
          if (!v13)
          {
            break;
          }

          sub_1AE1FC868(v36, v37, v11 + 32, v38, (v13 + 16), v13 + 32);
          v40 = v39;
          v42 = v41;

          if (v40)
          {
            goto LABEL_23;
          }

LABEL_13:
          result = sub_1ADDCC35C(v36, v37);
          v14 = v11;
        }

        sub_1AE1FC1B0(v36, v37, v11 + 32, v38);
        if ((v32 & 1) == 0)
        {
          goto LABEL_13;
        }

        v42 = 0;
LABEL_23:
        v43 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADE6F2E4(0, *(v11 + 16) + 1, 1);
          v43 = v89;
        }

        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        result = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v78 = *(v43 + 16);
          v66 = v46 + 1;
          sub_1ADE6F2E4((v45 > 1), v66, 1);
          result = v66;
          v46 = v78;
          v43 = v89;
        }

        *(v43 + 16) = result;
        v47 = v43 + 16 * v46;
        *(v47 + 32) = v36;
        *(v47 + 40) = v37;
        if (!v13)
        {
          v31 = 0;
          v48 = 0;
          v14 = v43;
          v49 = v46 > 0xE;
          v11 = v43;
          if (!v49)
          {
            continue;
          }

LABEL_30:
          v50 = MEMORY[0x1B26FAA50]();
          if (v48 <= v50)
          {
            v51 = v50;
          }

          else
          {
            v51 = v48;
          }

          v52 = sub_1AE1FBFA4(v11, v51, 0, v48);

          v67 = v52;
          v31 = v52;
          v14 = v11;
          continue;
        }

        break;
      }

      v78 = result;
      swift_beginAccess();
      if (MEMORY[0x1B26FAA30](*(v13 + 16) & 0x3FLL) <= v46)
      {
        v48 = *(v13 + 24) & 0x3FLL;
        if (v46 > 0xE)
        {
          v11 = v43;
        }

        else
        {
          v11 = v43;
          if (!v48)
          {

            v67 = 0;
            v31 = 0;
            v14 = v43;
            continue;
          }
        }

        goto LABEL_30;
      }

      break;
    }

    sub_1ADDD86D8(v36, v37);
    v53 = v67;
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (!v53)
      {
        goto LABEL_59;
      }

      v53 = sub_1AE23C19C();
    }

    if (v53)
    {
      v54 = *(v53 + 16);
      v55 = *(v43 + 16) + ~(*(v53 + 24) >> 6);
      v56 = (-1 << v54) ^ ~(((v55 >> 63) & ~(-1 << v54)) + v55);
      v57 = (v54 & 0x3F) * v42;
      v58 = v57 >> 6;
      *(v53 + 32 + 8 * (v57 >> 6)) = (v56 << v57) | ((((-1 << v54) + 1) << v57) - 1) & *(v53 + 32 + 8 * (v57 >> 6));
      v59 = 64 - (v57 & 0x3F);
      if (v59 < (v54 & 0x3Fu))
      {
        v60 = (v54 & 0x3F) << (v54 & 0x3F);
        v61 = __OFADD__(v60, 64);
        v62 = v60 + 64;
        if (v61)
        {
          goto LABEL_57;
        }

        v63 = v62 - 1;
        v49 = v62 < 1;
        v64 = v62 + 62;
        if (!v49)
        {
          v64 = v63;
        }

        if (v58 + 1 == v64 >> 6)
        {
          v65 = 0;
        }

        else
        {
          v65 = v58 + 1;
        }

        *(v53 + 32 + 8 * v65) = *(v53 + 32 + 8 * v65) & (-1 << (v54 - v59)) | (v56 >> v59);
      }

      result = sub_1ADDCC35C(v36, v37);
      v67 = v53;
      v31 = v53;
      v11 = v43;
      v14 = v43;
      continue;
    }

    break;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

BOOL Capsule.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = v4;
  Capsule.merge<A>(_:)(v8, a2, a3, a4, v10);
  return v10[0] > 1u || v10[1] > 1u;
}

uint64_t sub_1AE1EAF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADDF8128();
  if (v4[4])
  {
    result = sub_1ADEB18E4(a1, a3, a4);
    if (!v5)
    {
      v10 = v4[3];
      v14 = v4[2];
      v15 = v10;
      v11 = v4[1];
      v12 = *v4;
      v13 = v11;
      sub_1ADDD86D8(v14, v10);
      sub_1ADDD86D8(v12, v11);
      sub_1ADEA9BC0(0, 0, &v14, &v12);
      sub_1ADDE158C(v12, v13);
      return sub_1ADDE158C(v14, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1AE1EB038@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *a2;
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_1AE1EB04C@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1AE1EB0AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  v5 = sub_1AE23BFEC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t Capsule.delta(_:from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(v3 + 32))
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      return sub_1ADEBB0BC(result, v4, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *Capsule.merge(delta:)(uint64_t *result)
{
  if (v1[4])
  {
    v2 = *result;
    v3 = result[1];
    v11 = *result;
    v12 = v3;
    v4 = sub_1ADEBBF48(&v11);
    if ((v4 & 1) == 0)
    {
      return (v4 & 1);
    }

    result = sub_1ADDF8128();
    if (v1[4])
    {
      sub_1ADEB99CC();
      v11 = v2;
      v12 = v3;
      v5 = v1[3];
      v9 = v1[2];
      v10 = v5;
      v6 = v1[1];
      v7 = *v1;
      v8 = v6;
      sub_1ADDD86D8(v9, v5);
      sub_1ADDD86D8(v7, v6);
      sub_1ADEBC798(&v11, &v9, &v7);
      sub_1ADDE158C(v7, v8);
      sub_1ADDE158C(v9, v10);
      return (v4 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1EB234@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, __n128 *a8@<X8>)
{
  v44 = a7;
  v39 = a6;
  v38 = a5;
  v35 = a8;
  v13 = sub_1AE23BFEC();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  LOBYTE(a1) = *a1;
  type metadata accessor for CRDecoder();
  inited = swift_initStackObject();
  v20 = inited;
  v21 = MEMORY[0x1E69E7CC0];
  *(inited + 24) = MEMORY[0x1E69E7CC0];
  *(inited + 32) = v21;
  v22 = MEMORY[0x1E69E7CC8];
  *(inited + 40) = v21;
  *(inited + 48) = v22;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 57) = a1;
  if (a3)
  {
    *(inited + 16) = a3;
    sub_1ADE73B00(a2, v42);
  }

  else
  {
    *(inited + 16) = 0;
    type metadata accessor for CRProtoDecodeContext();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v22;
    v23[4] = a4;
    v23[5] = v22;
    v24 = a2[3];

    sub_1ADE73B00(a2, v42);

    sub_1ADE73B00(a2, v42);

    sub_1AE1B5950(v24);

    if (v8)
    {
      sub_1ADE6AF00(a2);

      sub_1ADE6AF00(a2);
      goto LABEL_7;
    }

    sub_1ADE6AF00(a2);
    v27 = *(v20 + 16);
    *(v20 + 16) = v23;
  }

  swift_retain_n();
  sub_1ADDD5D3C(a2);
  if (v8)
  {
    sub_1ADE6AF00(a2);

LABEL_7:

    sub_1ADE6AF00(a2);
  }

  v25 = v13;

  sub_1ADE6AF00(a2);
  *(v20 + 56) = v38 & 1;
  v39 = sub_1ADDE9B40(v42, v41, v18, v39, a2, 0, v39, v44);
  sub_1ADE6AF00(a2);
  v28 = v42[0];
  v29 = v36;
  (*(v36 + 16))(v37, v18, v25);
  v40 = v28;
  v44 = v28.n128_u64[0];
  sub_1ADDD86D8(v28.n128_i64[0], v28.n128_u64[1]);
  v30 = sub_1AE1F6098(v39, v41, v37, &v40, v42);
  (*(v29 + 8))(v18, v25, v30);
  sub_1ADDCC35C(v44, v28.n128_u64[1]);

  swift_setDeallocating();
  CRDecoder.deinit();
  result = swift_deallocClassInstance();
  v31 = v43;
  v32 = v42[1];
  v33 = v35;
  *v35 = v42[0];
  v33[1] = v32;
  v33[2].n128_u64[0] = v31;
  return result;
}

uint64_t Capsule.ObservableDifference.subscript.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_1AE1F420C(a1, a2, a3, a4, type metadata accessor for Ref, a5);
}

{
  return sub_1AE1F420C(a1, a2, a3, a4, type metadata accessor for WeakRef, a5);
}

uint64_t sub_1AE1EB6C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 176) = a2;
  *(v5 + 104) = a1;
  *(v5 + 112) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  *(v5 + 136) = v6;
  v7 = *(v6 - 8);
  *(v5 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1EB794, 0, 0);
}

uint64_t sub_1AE1EB7BC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1AE1EB8F0;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[10] = &unk_1AE25A2A0;
  v0[11] = v6;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v4 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1EB8F0()
{
  v1 = *v0;
  v2 = *v0;
  v10 = *v0;
  v3 = swift_task_alloc();
  v2[21] = v3;
  *v3 = v10;
  v3[1] = sub_1AE1EBA74;
  v4 = v1[20];
  v5 = v1[15];
  v6 = v1[14];
  v7 = *(v2 + 176);
  v8 = v1[13];

  return sub_1AE026228(v8, v7, v6, v5);
}

uint64_t sub_1AE1EBA74(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;

  v7 = *(v4 + 152);

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(a1 & 1);
  }
}

uint64_t sub_1AE1EBBDC()
{
  v1 = v0[2];

  sub_1ADDE158C(v0[3], v0[4]);
  v2 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t Capsule.Ref.rootID.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_1ADDD86D8(v3, v4);
}

__n128 sub_1AE1EBC6C(__n128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = *a1;
  *(v4 + 16) = *a1;
  *(v4 + 32) = a2;
  return result;
}

uint64_t Capsule.baseID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t Capsule.copy()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v2[4])
  {
    v3 = result;
    v6 = v2[2];
    v5 = v2[3];
    v7 = v2[1];
    v12 = *v2;
    v13 = v7;
    v10 = v6;
    v11 = v5;
    sub_1ADDD86D8(v12, v7);
    sub_1ADDD86D8(v6, v5);
    sub_1ADEAA2FC(&v12, &v10, *(v3 + 16), *(v3 + 24), a2);
    sub_1ADDCC35C(v10, v11);
    v8 = v12;
    v9 = v13;

    return sub_1ADDCC35C(v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.copyAssets(to:)(uint64_t a1, uint64_t a2)
{
  v3[65] = v2;
  v3[63] = a1;
  v3[64] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v5 = sub_1AE23BDDC();
  v3[67] = v5;
  v6 = *(v5 - 8);
  v3[68] = v6;
  v7 = *(v6 + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v3[73] = v8;
  v9 = *(v8 - 8);
  v3[74] = v9;
  v10 = *(v9 + 64) + 15;
  v3[75] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1EBEFC, 0, 0);
}

uint64_t sub_1AE1EBEFC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = sub_1ADDF8128();
  v6 = *(v1 + 32);
  *(v0 + 608) = v6;
  if (v6)
  {
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    v37 = *v7;
    v38 = v7[1];
    v9 = sub_1AE1FDF30();
    v10 = v9;
    *(v0 + 616) = v9;
    v11 = *(v9 + 32);
    *(v0 + 824) = v11;
    v12 = v9 + 64;
    v13 = 1 << v11;
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 64);
    *(v0 + 624) = OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
    *(v0 + 632) = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
    *(v0 + 640) = 0;
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_11:
      *(v0 + 656) = v18;
      *(v0 + 648) = v15;
      v19 = *(v0 + 504);
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v18 << 6);
      v22 = *(*(v10 + 56) + 16 * v21);
      *(v0 + 664) = v22;
      if (*(v22 + 32) != v19)
      {
        v23 = *(v0 + 608);
        v24 = (*(v10 + 48) + 16 * v21);
        v25 = *v24;
        *(v0 + 672) = *v24;
        v26 = v24[1];
        *(v0 + 680) = v26;

        sub_1ADDD86D8(v25, v26);

        sub_1ADDD86D8(v25, v26);
        v27 = *(v22 + 32);
        *(v0 + 688) = v27;
        *(v0 + 696) = *(v27 + 24);

        v3 = sub_1AE1EC19C;
        v4 = 0;
        v5 = 0;

        return MEMORY[0x1EEE6DFA0](v3, v4, v5);
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_11;
      }
    }

    v28 = *(v0 + 608);
    v29 = *(v0 + 600);
    v30 = *(v0 + 576);
    v31 = *(v0 + 568);
    v32 = *(v0 + 560);
    v33 = *(v0 + 552);
    v34 = *(v0 + 528);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }
}

uint64_t sub_1AE1EC19C()
{
  v1 = v0[87];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v0[2] = v0;
  v0[3] = sub_1AE1EC2EC;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[44] = &unk_1AE2544C0;
  v0[45] = v6;
  swift_weakInit();
  v0[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  v7 = *(v3 + 8);
  v0[89] = v7;
  v0[90] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1EC2EC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1EC3CC, 0, 0);
}

uint64_t sub_1AE1EC3CC()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[76];
  v5 = v0[63];
  v6 = *(v0[86] + 24);
  v0[91] = v6;

  sub_1ADDD86D8(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1AE1EC480, v6, 0);
}

uint64_t sub_1AE1EC480()
{
  v45 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = v0[91];
  v2 = v0[83];
  v3 = sub_1AE23C78C();
  v0[92] = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[91];
    v7 = v0[83];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v6 + 120), *(v6 + 128), &v44);
    *(v8 + 12) = 2080;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    sub_1ADDD86D8(v10, v11);
    v0[56] = sub_1AE23BEAC();
    v0[57] = v12;
    v0[58] = 47;
    v0[59] = 0xE100000000000000;
    v0[60] = 95;
    v0[61] = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v44);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = v0[91];
  v18 = v0[83];
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  swift_beginAccess();
  v21 = *(v17 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_10;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_10;
  }

  v24 = (*(v21 + 56) + 24 * v22);
  v0[94] = *v24;
  v25 = v24[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  ObjectType = swift_getObjectType();
  v27 = *(v25 + 16);
  swift_unknownObjectRetain();
  v28 = v27(ObjectType, v25);
  swift_unknownObjectRelease();
  if (v28)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v0[93] = v0[80];
    v29 = v0[86];
    v30 = v0[85];
    v31 = v0[84];
    v32 = v0[83];
    v33 = v0[76];
    v34 = v0[63];
    sub_1ADDCC35C(v31, v30);

    sub_1ADDCC35C(v31, v30);

    return MEMORY[0x1EEE6DFA0](sub_1AE1EC960, 0, 0);
  }

  v35 = v0[91];
  v36 = *(v35 + 120);
  v0[95] = v36;
  v37 = *(v35 + 128);
  v0[96] = v37;
  v38 = *(v25 + 32);
  swift_unknownObjectRetain();
  v43 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  v0[97] = v40;
  *v40 = v0;
  v40[1] = sub_1AE1ECB98;
  v41 = v0[66];

  return v43(v41, v36, v37, ObjectType, v25);
}

uint64_t sub_1AE1EC960()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);

  v4 = sub_1ADDCC35C(v2, v1);
  v7 = *(v0 + 656);
  v8 = (*(v0 + 648) - 1) & *(v0 + 648);
  *(v0 + 640) = *(v0 + 744);
  while (v8)
  {
    v4 = *(v0 + 616);
LABEL_8:
    *(v0 + 656) = v7;
    *(v0 + 648) = v8;
    v10 = *(v0 + 504);
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v7 << 6);
    v13 = *(*(v4 + 7) + 16 * v12);
    *(v0 + 664) = v13;
    if (*(v13 + 32) != v10)
    {
      v14 = *(v0 + 608);
      v15 = (*(v4 + 6) + 16 * v12);
      v16 = *v15;
      *(v0 + 672) = *v15;
      v17 = v15[1];
      *(v0 + 680) = v17;

      sub_1ADDD86D8(v16, v17);

      sub_1ADDD86D8(v16, v17);
      v18 = *(v13 + 32);
      *(v0 + 688) = v18;
      *(v0 + 696) = *(v18 + 24);

      v4 = sub_1AE1EC19C;
      v5 = 0;
      v6 = 0;

      return MEMORY[0x1EEE6DFA0](v4, v5, v6);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v5, v6);
    }

    v4 = *(v0 + 616);
    if (v9 >= (((1 << *(v0 + 824)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v4 + v9 + 8);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  v24 = *(v0 + 552);
  v25 = *(v0 + 528);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1AE1ECB98()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 728);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1ECCC4, v3, 0);
}

uint64_t sub_1AE1ECCC4()
{
  v36 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[94];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v0[93] = v0[80];
    v5 = v0[86];
    v6 = v0[85];
    v7 = v0[84];
    v8 = v0[83];
    v9 = v0[76];
    v10 = v0[63];
    sub_1ADDCC35C(v7, v6);

    sub_1ADDCC35C(v7, v6);
    v11 = sub_1AE1EC960;
  }

  else
  {
    v12 = v0[92];
    v13 = v0[91];
    v14 = v0[72];
    v15 = v0[71];
    v16 = *(v1 + 32);
    v0[98] = v16;
    v0[99] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v14, v3, v2);
    (*(v1 + 16))(v15, v14, v2);

    v17 = sub_1AE23C76C();
    v18 = sub_1AE23D60C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[96];
      v20 = v0[95];
      v21 = v0[71];
      v22 = v0[68];
      v23 = v0[67];
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v24 = 136315394;
      *(v24 + 4) = sub_1AE1FB594(v20, v19, &v35);
      *(v24 + 12) = 2080;
      sub_1AE030ACC();
      v25 = sub_1AE23DD9C();
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v21, v23);
      v29 = sub_1AE1FB594(v25, v27, &v35);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1ADDCA000, v17, v18, "%s reading url %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v34, -1, -1);
      MEMORY[0x1B26FDA50](v24, -1, -1);
    }

    else
    {
      v30 = v0[71];
      v31 = v0[68];
      v32 = v0[67];

      v28 = *(v31 + 8);
      v28(v30, v32);
    }

    v0[100] = v28;
    v11 = sub_1AE1ECFDC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1AE1ECFDC()
{
  v67 = v0;
  v1 = *(*(v0 + 664) + 32);
  sub_1ADDCEE40(v1 + 56, v0 + 80, &qword_1EB5B9DB0, &qword_1AE240B80);
  v2 = *(v0 + 104);
  sub_1ADDCEDE0(v0 + 80, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v2 || (sub_1ADDCEE40(*(v0 + 504) + 56, v0 + 120, &qword_1EB5B9DB0, &qword_1AE240B80), v3 = *(v0 + 144), sub_1ADDCEDE0(v0 + 120, &qword_1EB5B9DB0, &qword_1AE240B80), v3))
  {
    sub_1ADDCEE40(v1 + 56, v0 + 200, &qword_1EB5B9DB0, &qword_1AE240B80);
    v4 = *(v0 + 640);
    v5 = *(v0 + 576);
    if (*(v0 + 224))
    {
      sub_1ADE23E6C((v0 + 200), v0 + 160);
      v6 = sub_1AE23BDFC();
      if (!v4)
      {
        v8 = v6;
        v9 = v7;
        v10 = *(v0 + 184);
        v11 = *(v0 + 192);
        __swift_project_boxed_opaque_existential_1((v0 + 160), v10);
        v65 = (*(v11 + 16))(v8, v9, v10, v11);
        v30 = v12;
        v31 = *(v0 + 664);
        v63 = *(v0 + 624);
        v32 = *(v0 + 560);
        v33 = *(v0 + 504);
        v35 = *(v31 + 16);
        v34 = *(v31 + 24);
        type metadata accessor for CRAssetRef();
        v21 = swift_allocObject();
        v21[2] = v35;
        v21[3] = v34;
        v21[4] = v33;
        v36 = type metadata accessor for CRFileSnapshot();
        sub_1ADDD86D8(v35, v34);

        v60 = v34;
        v61 = v35;
        sub_1ADDD86D8(v35, v34);
        v64 = v36;
        sub_1AE162BBC(0, 0, v32);
        sub_1ADDCEE40(v33 + 56, v0 + 280, &qword_1EB5B9DB0, &qword_1AE240B80);
        v62 = v30;
        if (*(v0 + 304))
        {
          sub_1ADE23E6C((v0 + 280), v0 + 240);
          v37 = v30;
          v38 = *(v0 + 264);
          v39 = *(v0 + 272);
          __swift_project_boxed_opaque_existential_1((v0 + 240), v38);
          v40 = (*(v39 + 8))(v65, v37, v38, v39);
          v30 = v41;
          __swift_destroy_boxed_opaque_existential_1((v0 + 240));
        }

        else
        {
          sub_1ADDCEDE0(v0 + 280, &qword_1EB5B9DB0, &qword_1AE240B80);
          v40 = v65;
          sub_1ADDD86D8(v65, v30);
        }

        v42 = *(v0 + 560);
        sub_1AE23BEDC();
        v43 = *(v0 + 784);
        v58 = *(v0 + 712);
        v59 = *(v0 + 720);
        v55 = *(v0 + 600);
        v56 = *(v0 + 704);
        v57 = *(v0 + 584);
        v44 = *(v0 + 560);
        v45 = *(v0 + 552);
        v46 = *(v0 + 536);
        v53 = *(v0 + 792);
        v54 = *(v0 + 504);
        sub_1ADDCC35C(v40, v30);
        v43(v45, v44, v46);
        v47 = *(v64 + 48);
        v48 = *(v64 + 52);
        v49 = swift_allocObject();
        v43(v49 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v45, v46);
        v50 = *(v54 + 24);
        v51 = swift_allocObject();
        v51[2] = v61;
        v51[3] = v60;
        v51[4] = v49;
        *(v0 + 424) = &unk_1AE242370;
        *(v0 + 432) = v51;
        swift_weakInit();
        sub_1ADDD86D8(v61, v60);

        sub_1AE23D1FC();
        sub_1ADDCC35C(v8, v9);

        sub_1ADDCC35C(v61, v60);

        sub_1ADDCC35C(v65, v62);
        v58(v55, v57);
        __swift_destroy_boxed_opaque_existential_1((v0 + 160));
        v22 = 0;
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
LABEL_8:
      *(v0 + 816) = v4;
      v14 = *(v0 + 728);
      v15 = sub_1AE1ED6B4;
      goto LABEL_14;
    }

    v13 = *(v0 + 504);
    sub_1ADDCEDE0(v0 + 200, &qword_1EB5B9DB0, &qword_1AE240B80);
    sub_1AE1AD190(v5, 0, (v0 + 496));
    if (v4)
    {
      goto LABEL_8;
    }

    v22 = 0;
    v21 = *(v0 + 496);
  }

  else
  {
    v16 = *(v0 + 664);
    v17 = *(v0 + 576);
    v18 = *(v0 + 504);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    sub_1ADDD86D8(v19, v20);
    sub_1AE1A4038(v19, v20, v17, &v66);
    sub_1ADDCC35C(v19, v20);
    v21 = v66;
    v22 = *(v0 + 640);
  }

LABEL_11:
  *(v0 + 808) = v22;
  v23 = *(v0 + 680);
  v24 = *(v0 + 672);
  v25 = *(v0 + 632);
  v26 = *(v0 + 608);
  swift_beginAccess();
  v28 = sub_1ADF5EFC4((v0 + 320), v24, v23);
  if (*v27)
  {
    *v27 = v21;
  }

  (v28)(v0 + 320, 0);
  v29 = *(v0 + 728);
  swift_endAccess();

  v15 = sub_1AE1ED598;
  v14 = v29;
LABEL_14:

  return MEMORY[0x1EEE6DFA0](v15, v14, 0);
}

uint64_t sub_1AE1ED598()
{
  v1 = v0[100];
  v2 = v0[94];
  v3 = v0[83];
  v4 = v0[72];
  v5 = v0[67];
  v6 = v0[68] + 8;

  v1(v4, v5);
  swift_unknownObjectRelease();

  v0[93] = v0[101];
  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[76];
  v12 = v0[63];
  sub_1ADDCC35C(v9, v8);

  sub_1ADDCC35C(v9, v8);

  return MEMORY[0x1EEE6DFA0](sub_1AE1EC960, 0, 0);
}

uint64_t sub_1AE1ED6B4()
{
  v1 = v0[100];
  v2 = v0[94];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[76];
  v7 = v0[72];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[63];
  swift_unknownObjectRelease();
  v1(v7, v9);
  sub_1ADDCC35C(v4, v3);

  return MEMORY[0x1EEE6DFA0](sub_1AE1ED79C, 0, 0);
}

uint64_t sub_1AE1ED79C()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[72];
  v9 = v0[71];
  v14 = v0[70];
  v15 = v0[69];
  v16 = v0[66];
  v10 = v0[63];

  sub_1ADDCC35C(v3, v2);

  sub_1ADDCC35C(v3, v2);

  v11 = v0[1];
  v12 = v0[102];

  return v11();
}

uint64_t Capsule.copyAssetsSync(to:)(uint64_t a1)
{
  v3 = v2;
  v139 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v4 = *(v106 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v97 - v6;
  v104 = sub_1AE23BDDC();
  v7 = *(v104 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v97 - v17;
  sub_1ADDF8128();
  v19 = *(v1 + 32);
  if (!v19)
  {
    goto LABEL_43;
  }

  v20 = *(v1 + 16);
  v137[0] = *v1;
  v137[1] = v20;
  v138 = v19;
  v21 = sub_1AE1FDF30();
  v22 = *(v21 + 64);
  v109 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v102 = OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
  v110 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v108 = (v23 + 63) >> 6;
  v101 = (v7 + 32);
  v100 = (v4 + 8);

  v115 = v19;

  v26 = 0;
  v111 = xmmword_1AE259AF0;
  v107 = v12;
  v112 = v21;
  while (v25)
  {
LABEL_10:
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v28 = (v26 << 10) | (16 * v27);
    v29 = *(*(v21 + 56) + v28);
    if (*(v29 + 32) != v139)
    {
      v124 = v3;
      v30 = (*(v21 + 48) + v28);
      v32 = *v30;
      v31 = v30[1];
      type metadata accessor for AssetWrapper();
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      v116 = (v33 + 16);
      *(v33 + 24) = 0;
      *(v33 + 32) = v111;
      swift_retain_n();
      v121 = v32;
      v117 = v31;
      sub_1ADDD86D8(v32, v31);
      v122 = dispatch_semaphore_create(0);
      sub_1ADDCEE40(*(v29 + 32) + 56, v137, &qword_1EB5B9DB0, &qword_1AE240B80);
      v34 = sub_1AE23D1BC();
      v120 = *(v34 - 8);
      v35 = v119;
      (*(v120 + 56))(v119, 1, 1, v34);
      sub_1ADDCEE40(v137, &v134, &qword_1EB5B9DB0, &qword_1AE240B80);
      v36 = v139;
      sub_1ADDCEE40(v139 + 56, &v131, &qword_1EB5B9DB0, &qword_1AE240B80);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = v29;
      v38 = v135;
      *(v37 + 40) = v134;
      *(v37 + 56) = v38;
      *(v37 + 72) = v136;
      v39 = v132;
      *(v37 + 80) = v131;
      *(v37 + 96) = v39;
      *(v37 + 112) = v133;
      *(v37 + 120) = v33;
      v40 = v122;
      *(v37 + 128) = v36;
      *(v37 + 136) = v40;
      v41 = v35;
      v42 = v113;
      sub_1ADDCEE40(v41, v113, &unk_1EB5BDD00, &qword_1AE242340);
      v43 = *(v120 + 48);
      v114 = v34;
      LODWORD(v34) = v43(v42, 1, v34);
      v118 = v29;

      v123 = v33;

      v122 = v40;

      if (v34 == 1)
      {
        sub_1ADDCEDE0(v42, &unk_1EB5BDD00, &qword_1AE242340);
      }

      else
      {
        sub_1AE23D1AC();
        (*(v120 + 8))(v42, v114);
      }

      v44 = *(v37 + 16);
      v45 = *(v37 + 24);
      swift_unknownObjectRetain();

      v3 = v124;
      if (v44)
      {
        swift_getObjectType();
        v46 = sub_1AE23D16C();
        v48 = v47;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      if (v48 | v46)
      {
        v127 = 0;
        v128 = 0;
        v129 = v46;
        v130 = v48;
      }

      swift_task_create();
      sub_1ADDCEDE0(v119, &unk_1EB5BDD00, &qword_1AE242340);

      sub_1AE23D75C();
      v49 = v123;
      if (*(v123 + 32) >> 60 != 15)
      {
        v120 = *(v123 + 32);
        v50 = *(v123 + 24);
        sub_1ADDCEE40(v137, &v131, &qword_1EB5B9DB0, &qword_1AE240B80);
        if (*(&v132 + 1))
        {
          sub_1ADE23E6C(&v131, &v134);
          v51 = *(&v135 + 1);
          v52 = v136;
          v53 = v50;
          __swift_project_boxed_opaque_existential_1(&v134, *(&v135 + 1));
          v54 = *(v52 + 16);
          v55 = v50;
          v56 = v120;
          sub_1ADDD86D8(v55, v120);
          v99 = v53;
          v57 = v124;
          v58 = v54(v53, v56, v51, v52);
          v114 = v59;
          if (v57)
          {
            sub_1ADDCEDE0(v137, &qword_1EB5B9DB0, &qword_1AE240B80);

            sub_1ADDE158C(v99, v120);

            sub_1ADDCC35C(v121, v117);

            return __swift_destroy_boxed_opaque_existential_1(&v134);
          }

          v60 = v58;
          v124 = 0;
          v61 = *(v118 + 16);
          v62 = *(v118 + 24);
          type metadata accessor for CRAssetRef();
          v63 = swift_allocObject();
          v63[2] = v61;
          v63[3] = v62;
          v64 = v139;
          v98 = v63;
          v63[4] = v139;
          v65 = type metadata accessor for CRFileSnapshot();
          sub_1ADDD86D8(v61, v62);

          v97 = v61;
          sub_1ADDD86D8(v61, v62);
          sub_1AE162BBC(0, 0, v107);
          sub_1ADDCEE40(v64 + 56, &v125, &qword_1EB5B9DB0, &qword_1AE240B80);
          if (v126)
          {
            sub_1ADE23E6C(&v125, &v131);
            v67 = *(&v132 + 1);
            v66 = v133;
            __swift_project_boxed_opaque_existential_1(&v131, *(&v132 + 1));
            v68 = (*(v66 + 8))(v60, v114, v67, v66);
            v70 = v69;
            __swift_destroy_boxed_opaque_existential_1(&v131);
          }

          else
          {
            sub_1ADDCEDE0(&v125, &qword_1EB5B9DB0, &qword_1AE240B80);
            v68 = v60;
            v70 = v114;
            sub_1ADDD86D8(v60, v114);
          }

          v77 = v107;
          v78 = v124;
          sub_1AE23BEDC();
          v18 = &v140;
          v124 = v78;
          if (v78)
          {
            goto LABEL_44;
          }

          sub_1ADDCC35C(v68, v70);
          v79 = *v101;
          v80 = v103;
          v81 = v77;
          v82 = v104;
          (*v101)(v103, v81, v104);
          v83 = *(v65 + 48);
          v84 = *(v65 + 52);
          v85 = swift_allocObject();
          v79((v85 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url), v80, v82);
          v86 = *(v139 + 24);
          v87 = swift_allocObject();
          v88 = v97;
          v87[2] = v97;
          v87[3] = v62;
          v87[4] = v85;
          *&v131 = &unk_1AE259B40;
          *(&v131 + 1) = v87;
          swift_weakInit();
          sub_1ADDD86D8(v88, v62);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
          v89 = v105;
          sub_1AE23D1FC();
          sub_1ADDE158C(v99, v120);

          sub_1ADDCC35C(v88, v62);

          sub_1ADDCC35C(v60, v114);
          (*v100)(v89, v106);
          v75 = v116;
          v90 = *v116;
          *v116 = v98;

          __swift_destroy_boxed_opaque_existential_1(&v134);
          v3 = v124;
          v74 = v117;
          goto LABEL_32;
        }

        sub_1ADDCEDE0(&v131, &qword_1EB5B9DB0, &qword_1AE240B80);
      }

      v71 = *(v49 + 40);
      if (v71)
      {
        v72 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
        v73 = *(v49 + 40);

        sub_1AE1AD190(v71 + v72, 0, &v134);
        v74 = v117;
        if (v3)
        {

          sub_1ADDCC35C(v121, v74);

          sub_1ADDCEDE0(v137, &qword_1EB5B9DB0, &qword_1AE240B80);
        }

        v75 = v116;
        v76 = *v116;
        *v116 = v134;
      }

      else
      {
        v74 = v117;
        v75 = v116;
      }

LABEL_32:
      v91 = *v75;
      if (!*v75)
      {
        sub_1ADE42E40();
        swift_allocError();
        *v95 = 0xD000000000000014;
        *(v95 + 8) = 0x80000001AE263EA0;
        *(v95 + 16) = 3;
        swift_willThrow();

        sub_1ADDCC35C(v121, v74);

        return sub_1ADDCEDE0(v137, &qword_1EB5B9DB0, &qword_1AE240B80);
      }

      swift_beginAccess();

      v93 = sub_1ADF5EFC4(&v134, v121, v74);
      if (*v92)
      {
        *v92 = v91;

        (v93)(&v134, 0);
        swift_endAccess();
      }

      else
      {
        (v93)(&v134, 0);
        swift_endAccess();
      }

      sub_1ADDCC35C(v121, v74);

      sub_1ADDCEDE0(v137, &qword_1EB5B9DB0, &qword_1AE240B80);
      v21 = v112;
    }
  }

  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v108)
    {
    }

    v25 = *(v109 + 8 * v18);
    ++v26;
    if (v25)
    {
      v26 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v96 = *(v18 - 256);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE1EE714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE1EE744, 0, 0);
}

uint64_t sub_1AE1EE744()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  *(v0 + 72) = *(v1 + 32);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1AE1EE84C;
  v5 = *(v0 + 16);

  return sub_1AE1EB6C0(v5, 0, &unk_1AE25A288, v2);
}

uint64_t sub_1AE1EE84C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = sub_1AE1EE9F0;
  }

  else
  {
    v6 = *(v2 + 64);

    v5 = sub_1AE1EE98C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AE1EE98C()
{
  v1 = *(v0 + 56);
  sub_1AE23D76C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AE1EE9F0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1AE1EEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v9 = sub_1AE23BDDC();
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1EEB54, 0, 0);
}

uint64_t sub_1AE1EEB54()
{
  v28 = v0;
  if (*(v0[3] + 24))
  {
    v1 = v0[2];
    v2 = sub_1AE23BDFC();
    v3 = v0[5];
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    *(v3 + 24) = v2;
    *(v3 + 32) = v6;
    sub_1ADDE158C(v4, v5);
  }

  else
  {
    if (*(v0[4] + 24))
    {
      v8 = v0[10];
      v7 = v0[11];
      v10 = v0[8];
      v9 = v0[9];
      v11 = v0[6];
      v12 = *(v8 + 16);
      v12(v7, v0[2], v9);
      v12(v10, v11 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory, v9);
      (*(v8 + 56))(v10, 0, 1, v9);
      v13 = sub_1AE163454(v7, 0, 0, 0, v10);
      v21 = v0[5];
      v22 = *(v21 + 40);
      *(v21 + 40) = v13;
    }

    else
    {
      v15 = v0[6];
      v14 = v0[7];
      v16 = v0[5];
      v17 = v0[2];
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);
      sub_1ADDD86D8(v18, v19);
      sub_1AE1A4038(v18, v19, v17, &v27);
      sub_1ADDCC35C(v18, v19);
      v20 = *(v16 + 16);
      *(v16 + 16) = v27;
    }
  }

  v23 = v0[11];
  v24 = v0[8];

  v25 = v0[1];

  return v25();
}

uint64_t *Capsule.in(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  return Capsule.mutate<A>(_:)(sub_1AE1FE18C, v4, a3);
}

uint64_t Capsule.mutate<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = sub_1ADDE1854(a1, a2, a3);
  if (v3[4])
  {
    v5 = v3[3];
    v11 = v3[2];
    v12 = v5;
    v6 = v3[1];
    v9 = *v3;
    v10 = v6;
    sub_1ADDD86D8(v11, v5);
    sub_1ADDD86D8(v9, v6);
    sub_1ADEA9BC0(1, 1, &v11, &v9);
    sub_1ADDE158C(v9, v10);
    v7 = v11;
    v8 = v12;

    return sub_1ADDE158C(v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *Capsule.mutate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  sub_1ADDE1854(sub_1AE1FE1B4, v9, a3);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  return sub_1ADDE1320(v4);
}

uint64_t sub_1AE1EEE90(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7[3] = type metadata accessor for Capsule.Ref();
  v7[4] = &protocol witness table for Capsule<A>.Ref;
  v7[0] = a1;

  a2(v7);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t Capsule.mutateCachedValues(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  if (v4)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
    v9 = swift_beginAccess();
    v10 = *(v4 + v8);
    MEMORY[0x1EEE9AC00](v9);
    v14[2] = v7;
    v14[3] = a2;

    result = sub_1ADDE1854(sub_1AE1FEAF8, v14, a3);
    v11 = *(v3 + 32);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
      swift_beginAccess();
      v13 = *(v11 + v12);
      *(v11 + v12) = v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *Capsule.version(for:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32))
  {
    v5 = *result;
    v4 = result[1];
    swift_beginAccess();
    v12 = v5;
    v13 = v4;
    sub_1ADDD86D8(v5, v4);
    v7 = sub_1AE031554(v11, &v12);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v6 + 24);
      v10 = *(v6 + 16);

      (v7)(v11, 0);
      swift_endAccess();
      result = sub_1ADDCC35C(v12, v13);
    }

    else
    {
      (v7)(v11, 0);
      sub_1ADDCC35C(v12, v13);
      result = swift_endAccess();
      v9 = 0;
    }

    *a2 = v8;
    a2[1] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Capsule.context.getter()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1ADDCE2E4(0, v2);
  sub_1ADDCEDE0(v2, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v0;
}

uint64_t Capsule.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return Capsule.merge<A>(_:)(v7, a2, a3, a4, v9);
}

uint64_t Capsule.merge<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = *(result + 16);
  v56[0] = *result;
  v56[1] = v11;
  v12 = *(result + 32);
  v57 = v12;
  v13 = v5[4];
  if (v13)
  {
    if (v13 == v12)
    {
LABEL_3:
      if (qword_1EB5B9908 != -1)
      {
        result = swift_once();
      }

      v14 = byte_1EB5D750A;
      *a5 = word_1EB5D7508;
      *(a5 + 2) = v14;
      return result;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  Capsule.version.getter(&v55);
  v15 = v5[4];
  v16 = *(v5 + 1);
  v51 = *v5;
  v52 = v16;
  v53 = v15;
  Capsule.version.getter(&v54);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  if (!v15)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (!v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v17 = result;
  v43 = a3;
  v44 = a4;
  v47 = a2;
  if (sub_1ADEACB44(v12))
  {
    v45 = a5;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v18 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v19 = v51;
    v20 = BYTE8(v51);
    v21 = v52;
    v17[2] = v51;
    v17[3] = v20;
    v17[4] = v21;
    v22 = *(&v55 + 1);
    if (*(*(&v55 + 1) + 16))
    {
      v23 = v55;
      if (*(v21 + 16))
      {
        v51 = v55;

        sub_1ADDF8898(v19, v20, v21);

        v22 = *(&v51 + 1);
        v23 = v51;
      }

      *&v55 = v23;
      *(&v55 + 1) = v22;
    }

    v24 = *(&v54 + 1);
    v25 = v54;
    if (*(*(&v54 + 1) + 16))
    {
      if (*(v21 + 16))
      {
        v51 = v54;

        sub_1ADDF8898(v19, v20, v21);

        v24 = *(&v51 + 1);
        v25 = v51;
      }

      a5 = v45;
      *&v54 = v25;
      *(&v54 + 1) = v24;
    }

    else
    {
      a5 = v45;
    }
  }

  else
  {
    v24 = *(&v54 + 1);
    v25 = v54;
  }

  v26 = v55;
  *&v51 = 0;

  sub_1ADF6457C(v27, &v51, v24);
  sub_1ADF6457C(v26, &v51, v25);

  switch(v51)
  {
    case 3:
      v46 = a5;
      result = sub_1ADDF8128();
      if (v6[4])
      {
        sub_1ADEAEF54(v12, 0, 0, 0, &v51);
        v30 = v51;
        v31 = BYTE2(v51);

        v32 = v6[3];
        *&v51 = v6[2];
        *(&v51 + 1) = v32;
        v33 = v6[1];
        v49 = *v6;
        v50 = v33;
        sub_1ADDD86D8(v51, v32);
        sub_1ADDD86D8(v49, v33);
        sub_1ADEA9BC0(0, 0, &v51, &v49);
        sub_1ADDE158C(v49, v50);
        sub_1ADDE158C(v51, *(&v51 + 1));

        *v46 = v30;
        *(v46 + 2) = v31;
        return result;
      }

      goto LABEL_39;
    case 2:

      if (qword_1EB5B9908 != -1)
      {
        swift_once();
      }

      v29 = &word_1EB5D7508;
      break;
    case 1:

      v28 = *(v47 + 16);
      sub_1AE1EF764(v6, v56, v17, v43, *(v47 + 24), v44, a5);

    default:

      v34 = v6[4];
      v35 = *(v6 + 1);
      v51 = *v6;
      v52 = v35;
      v53 = v34;
      Capsule.version.getter(&v49);
      v36 = v50;

      v37 = sub_1ADF684B4(v36);

      Capsule.version.getter(v48);
      v38 = v48[1];

      v39 = sub_1ADF684B4(v38);

      if (v39 < v37)
      {
        v40 = *(v47 + 16);
        sub_1AE1EF764(v6, v56, v17, v43, *(v47 + 24), v44, &v51);
      }

      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }

      v29 = &word_1ED96F220;
      break;
  }

  v41 = *v29;
  v42 = *(v29 + 2);

  *a5 = v41;
  *(a5 + 2) = v42;
  return result;
}

void *sub_1AE1EF764@<X0>(uint64_t *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _WORD *a7@<X8>)
{
  v77 = a6;
  v78 = a5;
  v76 = a4;
  v79 = a7;
  v10 = type metadata accessor for PartiallyOrderedReferenceMap();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[2];
  v15 = a1[3];
  v16 = a2[1].n128_i64[0];
  v17 = a2[1].n128_u64[1];
  sub_1ADDD86D8(v14, v15);
  LOBYTE(v16) = sub_1ADDD6F8C(v14, v15, v16, v17);
  result = sub_1ADDCC35C(v14, v15);
  if ((v16 & 1) == 0)
  {
    v36 = a2[2].n128_i64[0];
    if (v36)
    {
      swift_beginAccess();
      v37 = *(a3 + 32);
      if (v37)
      {
        v38 = *(a3 + 16);
        v39 = *(a3 + 24);
        v40 = v36 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
        swift_beginAccess();
        v41 = *(*(v40 + 8) + 16);

        if (v41)
        {
          v42 = sub_1ADEADF58(0);
          sub_1ADEB0918(v38, v39 & 1, v37, 0);

          v36 = v42;
        }

        v43 = a1[4];
        v44 = *(a1 + 1);
        v85 = *a1;
        v86 = v44;
        v87 = v43;
        type metadata accessor for Capsule();
        Capsule.version.getter(&v89);
        v45 = *(v89.n128_u64[1] + 16);

        if (v45)
        {
          result = sub_1ADDF8128();
          if (!a1[4])
          {
LABEL_29:
            __break(1u);
            return result;
          }

          v46 = a1[4];

          sub_1ADEB0918(v38, v39 & 1, v37, 0);
        }
      }

      else
      {
        type metadata accessor for Capsule();
      }

      result = sub_1ADDF8128();
      if (a1[4])
      {
        v47 = a1[4];

        v48 = sub_1ADEB7A00(v36);

        if (!v48)
        {

          v53 = v79;
          *v79 = 512;
          *(v53 + 2) = 0;
          return result;
        }

        if (a1[4])
        {
          v50 = a1[3];
          v85.n128_u64[0] = a1[2];
          v49 = v85.n128_u64[0];
          v85.n128_u64[1] = v50;
          v52 = *a1;
          v51 = a1[1];
          v89.n128_u64[0] = v52;
          v89.n128_u64[1] = v51;

          sub_1ADDD86D8(v49, v50);
          sub_1ADDD86D8(v52, v51);
          sub_1ADEA9BC0(0, 0, &v85, &v89);

          sub_1ADDE158C(v89.n128_i64[0], v89.n128_u64[1]);
          result = sub_1ADDE158C(v85.n128_i64[0], v85.n128_u64[1]);
          goto LABEL_22;
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  sub_1ADDD86D8(*a1, v20);
  sub_1ADDD86D8(v21, v22);
  v23 = sub_1ADDD6F8C(v19, v20, v21, v22);
  sub_1ADDCC35C(v21, v22);
  result = sub_1ADDCC35C(v19, v20);
  if ((v23 & 1) == 0)
  {
    sub_1ADDFC54C(v13);
    v24 = *a1;
    v25 = a1[1];
    v26 = &v13[*(v10 + 20)];
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 2);
    sub_1ADDD86D8(*a1, v25);
    sub_1ADDDF7A8(v24, v25, v27, &v85);
    sub_1ADDCC35C(v24, v25);
    sub_1ADE73DF4(v13);
    if (!v86.n128_u64[0])
    {
      v55 = a1[1];
      v56 = a1[2];
      v57 = a1[3];
      v58 = a1[4];
      v80 = *a1;
      v54 = v80;
      v81 = v55;
      v82 = v56;
      v83 = v57;
      v84 = v58;
      v85.n128_u64[0] = v80;
      v85.n128_u64[1] = v55;
      Ref.init(id:)(&v85, v88);
      v89 = v88[0];
      sub_1ADDD86D8(v54, v55);
      sub_1ADDD86D8(v56, v57);

      sub_1ADDD86D8(v54, v55);
      v59 = type metadata accessor for Capsule();
      v60 = type metadata accessor for Ref();
      WitnessTable = swift_getWitnessTable();
      Capsule.encapsulate<A>(_:)(&v89, v59, v60, WitnessTable, &v85);
      sub_1ADDCC35C(v89.n128_i64[0], v89.n128_u64[1]);
      v62 = v82;
      v63 = v83;
      sub_1ADDCC35C(v80, v81);
      sub_1ADDCC35C(v62, v63);

      v64 = v87;
      v65 = *a1;
      v66 = a1[1];
      v67 = a1[2];
      v68 = a1[3];
      v69 = a1[4];
      v70 = v86;
      *a1 = v85;
      *(a1 + 1) = v70;
      a1[4] = v64;
      sub_1ADDCC35C(v65, v66);
      sub_1ADDCC35C(v67, v68);

      v71 = a2[2].n128_u64[0];
      v72 = a2[1];
      v85 = *a2;
      v86 = v72;
      v87 = v71;
      result = Capsule.merge<A>(_:)(&v80, &v85, v59, v76, v77);
      goto LABEL_22;
    }

    result = sub_1ADDDC21C(v85.n128_i64[0], v85.n128_i64[1], v86.n128_i64[0]);
  }

  v30 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v33 = a1[3];
  v34 = a2[2].n128_u64[0];
  v85.n128_u64[0] = v34;
  if (!v34)
  {
    goto LABEL_27;
  }

  v35 = a1[4];
  a1[4] = v34;
  sub_1ADDD86D8(v30, v31);
  sub_1ADDD86D8(v32, v33);
  sub_1ADDCEE40(&v85, &v80, &qword_1EB5BE828, &qword_1AE25A278);
  sub_1ADDCC35C(v30, v31);
  sub_1ADDCC35C(v32, v33);

LABEL_22:
  if (qword_1EB5B9910 != -1)
  {
    result = swift_once();
  }

  v73 = byte_1EB5D750D;
  v74 = v79;
  *v79 = word_1EB5D750B;
  *(v74 + 2) = v73;
  return result;
}

void Capsule.encapsulate<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v11 = type metadata accessor for PartiallyOrderedReferenceMap();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v36 - v18;
  v19 = *(v5 + 4);
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v42 = v17;
  v43 = a2;
  v44 = a5;
  v20 = *v5;
  v38 = v5[1];
  v39 = v20;
  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADDD9E68(v19 + v21, v14);
  v22 = *(a4 + 48);
  v40 = a1;
  v41 = a3;
  v37 = v22;
  v22(&v52, a3, a4);
  v23 = v52;
  v24 = &v14[*(v11 + 20)];
  v25 = *(v24 + 1);
  v26 = *(v24 + 2);
  sub_1ADDDF7A8(v52, *(&v52 + 1), *v24, &v49);
  sub_1ADDCC35C(v23, *(&v23 + 1));
  sub_1ADE73DF4(v14);
  v27 = v50;
  if (!v50)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v49;

  v30 = sub_1ADDDC21C(v29, *(&v28 + 1), v27);
  if (v28)
  {
    (*(*v28 + 88))(v47, v30);

    v31 = v45;
    swift_dynamicCast();
    v47[1] = v38;
    v47[0] = v39;
    v48 = v19;
    v37(&v52, v41, a4);
    *v46 = v52;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    Capsule.encapsulate<A>(crdt:id:)(v31, v46, AssociatedTypeWitness, AssociatedConformanceWitness, &v49);
    sub_1ADDCC35C(v46[0], v46[1]);
    v33 = v51;
    v34 = v50;
    v35 = v44;
    *v44 = v49;
    v35[1] = v34;
    *(v35 + 4) = v33;
    (*(v42 + 8))(v31, AssociatedTypeWitness);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t Capsule.mergeCopied(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = v2[2];
  v10 = v2[3];
  sub_1ADDD86D8(v9, v10);
  sub_1ADDD86D8(v6, v7);
  v11 = sub_1ADDD6F8C(v9, v10, v6, v7);
  sub_1ADDCC35C(v6, v7);
  sub_1ADDCC35C(v9, v10);
  if (v11)
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v18[0] = v5;
    v18[1] = v4;
    v18[2] = v6;
    v18[3] = v7;
    v18[4] = v8;
    return Capsule.merge<A>(_:)(v18, a2, v12, v13, v19);
  }

  else
  {
    v15 = v2[2];
    v16 = v2[3];
    v17 = v2[4];
    sub_1ADDCC35C(*v2, v2[1]);
    sub_1ADDCC35C(v15, v16);

    *v2 = v5;
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v7;
    v2[4] = v8;
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v6, v7);
  }
}

uint64_t Capsule.mergingWithResult(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 32);
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  v14 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v14;
  v20 = v8;
  sub_1ADDD86D8(v9, v10);
  sub_1ADDD86D8(v11, v12);
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);

  result = Capsule.merge<A>(_:)(v19, a4, v15, v16, &v21);
  v18 = v22;
  *a2 = v21;
  *(a2 + 2) = v18;
  return result;
}

uint64_t Capsule.merging(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v11;
  sub_1ADDD86D8(v7, v8);
  sub_1ADDD86D8(v9, v10);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);

  v14 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v14;
  v17 = v6;
  return Capsule.merge<A>(_:)(v16, a2, v12, v13, v18);
}

uint64_t Capsule.merging<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a1 + 32);
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];
  v14 = v5[3];
  v15 = v5[4];
  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  a5[4] = v15;
  sub_1ADDD86D8(v11, v12);
  sub_1ADDD86D8(v13, v14);

  v16 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v16;
  v19 = v10;
  return Capsule.merge<A>(_:)(v18, a2, a3, a4, v20);
}

void (*Capsule.encapsulate<A>(crdt:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>))(__n128 *, void)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *v5;
  v11 = v5[1];
  v13 = v5[2];
  v12 = v5[3];
  v14 = v5[4];
  sub_1ADDD86D8(v10, v11);
  sub_1ADDD86D8(v10, v11);
  v15 = sub_1ADDD6F8C(v10, v11, v8, v9);
  sub_1ADDCC35C(v10, v11);
  if (v15)
  {
    sub_1ADDD86D8(v10, v11);
    sub_1ADDD86D8(v13, v12);
    v16 = sub_1ADDD6F8C(v10, v11, v13, v12);
    sub_1ADDCC35C(v10, v11);
    sub_1ADDCC35C(v13, v12);
    result = sub_1ADDCC35C(v10, v11);
    if (v16)
    {
      v20 = v10;
      v21 = v11;
      v22 = v13;
      v23 = v12;
      v24 = v14;
      sub_1ADDD86D8(v10, v11);
      sub_1ADDD86D8(v13, v12);
      type metadata accessor for Capsule();

      return swift_dynamicCast();
    }
  }

  else
  {
    result = sub_1ADDCC35C(v10, v11);
  }

  if (v14)
  {
    v20 = v8;
    v21 = v9;
    return sub_1ADEAB444(a1, &v20, a3, a4, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Capsule.hashState<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PartiallyOrderedReferenceMap();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 1);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v29 - v14;
  v15 = *(v4 + 32);
  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADDD9E68(v15 + v16, v11);
  v17 = *(a4 + 48);
  v31 = a1;
  v32 = a3;
  v30 = v17;
  v17(&v37, a3, a4);
  v18 = v37;
  v19 = v38;
  v20 = &v11[*(v8 + 20)];
  v21 = *(v20 + 1);
  v22 = *(v20 + 2);
  sub_1ADDDF7A8(v37, v38, *v20, &v35);
  sub_1ADDCC35C(v18, v19);
  sub_1ADE73DF4(v11);
  v23 = v36;
  if (!v36)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = v35;

  v26 = sub_1ADDDC21C(v25, *(&v24 + 1), v23);
  if (v24)
  {
    (*(*v24 + 88))(v39, v26);

    v27 = v33;
    swift_dynamicCast();
    v30(&v35, v32, a4);
    *v39 = v35;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ADEABF90(v27, v39, AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1ADDCC35C(v39[0], v39[1]);
    (*(v34 + 8))(v27, AssociatedTypeWitness);
    return;
  }

LABEL_7:
  __break(1u);
}

void *Capsule.encapsulateTransient<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(a2 + 48);
  sub_1ADDD86D8(v7, v8);

  result = v10(&v12, a1, a2);
  if (v9)
  {
    *a3 = v12;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Capsule.finalizeTimestamps()()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v0 = sub_1ADDCE2E4(0, v1);
  sub_1ADDCEDE0(v1, &qword_1EB5B9DB0, &qword_1AE240B80);
  Capsule.finalizeTimestamps(_:)(v0);
}

uint64_t Capsule.hasDelta(from:)(uint64_t result)
{
  if (*(v1 + 32))
  {
    result = *(result + 32);
    if (result)
    {
      return sub_1ADEAC8A8(result) & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Capsule.hasDelta(to:)(uint64_t result)
{
  if (*(result + 32))
  {
    result = *(v1 + 32);
    if (result)
    {
      return sub_1ADEAC8A8(result) & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Capsule.actionUndoing(deltaTo:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 4);
  v4 = *(v2 + 32);
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  v12 = v3;
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  v9 = v4;
  return Capsule.actionUndoingDifference(from:)(v8, a2);
}

uint64_t Capsule.actionUndoingDifference(from:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*(v2 + 32))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = *(result + 32);
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  result = sub_1ADEACC78(result, v7);
  v4 = v7[0];
  if (v7[0])
  {
    v6 = v7[1];
    v5 = v7[2];

    result = sub_1AE1FE29C(v4, v6, v5, MEMORY[0x1E69E7CF8]);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v5;
  return result;
}

uint64_t *Capsule.apply(_:)(uint64_t *result)
{
  v2 = *result;
  if (*result)
  {
    v3 = result[1];
    v4 = result[2];
    v5 = *result;

    result = sub_1ADDF8128();
    if (v1[4])
    {
      v10 = v2;
      v11 = v3;
      v12 = v4;

      sub_1ADEB9440(&v10);
      sub_1AE1FE29C(v10, v11, v12, MEMORY[0x1E69E7CF8]);

      v6 = v1[3];
      v10 = v1[2];
      v11 = v6;
      v7 = v1[1];
      v8 = *v1;
      v9 = v7;
      sub_1ADDD86D8(v10, v6);
      sub_1ADDD86D8(v8, v7);
      sub_1ADEA9BC0(1, 0, &v10, &v8);
      sub_1ADDE158C(v8, v9);
      return sub_1ADDE158C(v10, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  v2 = *result;
  if (*result)
  {
    v4 = result[1];
    v3 = result[2];
    result = sub_1ADDF8128();
    if (v1[4])
    {
      v9 = v2;
      v10 = v4;
      v11 = v3;

      sub_1ADEB9440(&v9);
      sub_1AE1FE29C(v9, v10, v11, MEMORY[0x1E69E7CF8]);
      v5 = v1[3];
      v9 = v1[2];
      v10 = v5;
      v6 = v1[1];
      v7 = *v1;
      v8 = v6;
      sub_1ADDD86D8(v9, v5);
      sub_1ADDD86D8(v7, v6);
      sub_1ADEA9BC0(1, 0, &v9, &v7);
      sub_1ADDE158C(v7, v8);
      return sub_1ADDE158C(v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Capsule.applying(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  if (*a1)
  {
    v10 = a1[1];
    v9 = a1[2];
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    v12[0] = v3;
    v12[1] = v10;
    v12[2] = v9;

    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v7, v6);

    Capsule.apply(_:)(v12);
    return sub_1AE1FE29C(v3, v10, v9, MEMORY[0x1E69E7CF8]);
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v7, v6);
  }
}

{
  v3 = *a1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  if (*a1)
  {
    v10 = a1[1];
    v9 = a1[2];
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    v12[0] = v3;
    v12[1] = v10;
    v12[2] = v9;
    sub_1AE1FE1D4(v3);
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v7, v6);

    Capsule.apply(_:)(v12);
    return sub_1AE1FE29C(v3, v10, v9, MEMORY[0x1E69E7CF8]);
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v7, v6);
  }
}

uint64_t Capsule.actionUndoingDifference(from:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32))
  {
    result = *(result + 32);
    if (result)
    {
      return sub_1ADEACC78(result, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Capsule.isReferentiallyConsistent.getter()
{
  if (v0[4])
  {
    v1 = v0[3];
    v3 = *v0;
    v2 = v0[1];
    v6 = v0[2];
    v7 = v1;
    v4 = v3;
    v5 = v2;
    sub_1ADDD86D8(v6, v1);
    sub_1ADDD86D8(v3, v2);
    sub_1ADEB4434(&v6, &v4);
    sub_1ADDE158C(v4, v5);
    sub_1ADDE158C(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Capsule.getCachedValue<A>(forKey:recompute:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v5 + 16);
  v26[0] = *v5;
  v26[1] = v16;
  v27 = *(v5 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  sub_1AE1F1344(v26, v14, v15, &v24);
  os_unfair_lock_unlock(&dword_1EB5D7CD8);
  if (*(&v25 + 1))
  {
    v22 = v24;
    v23 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
    return swift_dynamicCast();
  }

  else
  {
    a2();
    os_unfair_lock_lock(&dword_1EB5D7CD8);
    sub_1AE1F14B4(&dword_1EB5D7CD8, v26, v14, v15, v12, v18, a4);
    os_unfair_lock_unlock(&dword_1EB5D7CD8);
    sub_1ADDCEDE0(&v24, &qword_1EB5BAA00, &qword_1AE2587A0);
    return (*(v9 + 32))(v21, v12, a4);
  }
}

uint64_t Capsule.getCachedValue<A>(forKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(v4 + 16);
  v16[0] = *v4;
  v16[1] = v10;
  v17 = *(v4 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  sub_1AE1F1344(v16, v8, v9, &v15);
  os_unfair_lock_unlock(&dword_1EB5D7CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  v13 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v13 ^ 1u, 1, a3);
}

void sub_1AE1F1344(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
    swift_beginAccess();
    v9 = *(v4 + v8);
    if (*(v9 + 16) && (v10 = sub_1ADDDE7CC(a2, a3), (v11 & 1) != 0))
    {
      sub_1ADDE4E28(*(v9 + 56) + 32 * v10, a4);
    }

    else
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void Capsule.setCachedValue<A>(_:forKey:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(v4 + 16);
  v12[0] = *v4;
  v12[1] = v10;
  v13 = *(v4 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  v11 = *(a3 + 24);
  sub_1AE1F14B4(&dword_1EB5D7CD8, v12, v8, v9, a1, *(a3 + 16), a4);

  os_unfair_lock_unlock(&dword_1EB5D7CD8);
}

void sub_1AE1F14B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 32))
  {
    v12[3] = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a5, a7);
    swift_beginAccess();
    sub_1ADDD86D8(a3, a4);
    sub_1AE1D1A7C(v12, a3, a4);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void Capsule.clearCachedValue(forKey:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v6;
  v10 = *(v2 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1AE1F1634(&dword_1EB5D7CD8, v9, v4, v5);

  os_unfair_lock_unlock(&dword_1EB5D7CD8);
}

uint64_t sub_1AE1F1634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a2 + 32))
  {
    memset(v7, 0, sizeof(v7));
    swift_beginAccess();
    sub_1ADDD86D8(a3, a4);
    sub_1AE1D1A7C(v7, a3, a4);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.minAppFormatVersion.getter()
{
  v1 = type metadata accessor for PartiallyOrderedReferenceMap();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 4);
  v7 = v0[1];
  v25 = *v0;
  v26 = v7;
  *&v27 = v6;
  sub_1ADDFC54C(v5);
  v8 = &v5[*(v2 + 28)];
  v9 = *v8;
  v10 = *(v8 + 1);
  sub_1AE23C1FC();
  sub_1ADE73DF4(v5);
  v11 = 0;
  while (1)
  {
    v12 = v34;
    if (v34 >= DWORD1(v34))
    {
      v13 = sub_1AE23C20C();
      if (!v13)
      {
        v31 = v39;
        v32[0] = v40[0];
        *(v32 + 11) = *(v40 + 11);
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v25 = v33;
        v26 = v34;
        sub_1ADDFD834(&v25);
        return v11;
      }
    }

    else
    {
      v13 = *(&v33 + 1);
      LODWORD(v34) = v34 + 1;
    }

    v14 = (v13 + *(v13 + 24) + (~v12 << 6));
    v15 = v14[4];
    v16 = v14[5];
    v17 = v14[6];
    v18 = v14[8];
    v19 = v14[9];
    v20 = v14[10];
    v21 = v14[11];
    sub_1ADDD86D8(v15, v16);

    sub_1ADDD86D8(v15, v16);

    if (!v17)
    {
      break;
    }

    v23 = sub_1ADDCC35C(v15, v16);
    v24 = (*(*v17 + 208))(v23);
    sub_1ADDCC35C(v15, v16);

    if (v24 <= v11)
    {
      v11 = v11;
    }

    else
    {
      v11 = v24;
    }
  }

  __break(1u);
  return result;
}

double Capsule.init(_:_:id:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = v15[1];
  (*(v10 + 16))(v14, v12);
  *&v21 = v16;
  *(&v21 + 1) = v17;
  Capsule.init(_:id:)(v14, &v21, a3, a4, v22);

  (*(v10 + 8))(a2, a3);
  v18 = v23;
  result = *v22;
  v20 = v22[1];
  *a5 = v22[0];
  *(a5 + 16) = v20;
  *(a5 + 32) = v18;
  return result;
}

uint64_t Capsule.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v27 = a3;
  v7 = sub_1AE23CD5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v12 + 16);
  v28 = a1;
  v18(v17, a1, a2, v15);
  *&v30[0] = sub_1ADDCC6B4(&unk_1F23BC190);
  *(&v30[0] + 1) = v19;
  sub_1AE23CD4C();
  v20 = sub_1AE23CD1C();
  v22 = v21;
  result = (*(v8 + 8))(v11, v7);
  if (v22 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1AE23BEEC();
    sub_1ADDE158C(v20, v22);
    v29 = v30[0];
    v24 = Capsule.init(_:id:)(v17, &v29, a2, v27, v30);
    result = (*(v12 + 8))(v28, a2, v24);
    v25 = v31;
    v26 = v30[1];
    *a4 = v30[0];
    *(a4 + 16) = v26;
    *(a4 + 32) = v25;
  }

  return result;
}

double Capsule.init<A>(_:initClosure:)@<D0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  Capsule.init<A>(initClosure:)(a2, a3, a4, a5, a6, v12);

  v9 = v13;
  result = *v12;
  v11 = v12[1];
  *a7 = v12[0];
  *(a7 + 16) = v11;
  *(a7 + 32) = v9;
  return result;
}

void (*Capsule.init<A>(initClosure:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>))(void *a1)
{
  v52 = a3;
  v53 = a5;
  v54 = a2;
  v55 = a1;
  v51 = a6;
  v50 = *(a4 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v50 - v11;
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_1ED96F228);
  (*(v14 + 16))(v17, v18, v13);
  v19 = type metadata accessor for ReplicaState();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v24 = type metadata accessor for Replica();
  v25 = *(*(v24 - 8) + 56);
  v25(v22 + v23, 1, 1, v24);
  (*(v14 + 32))(v22 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v17, v13);
  *(v22 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v22 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v25(v12, 1, 1, v24);
  swift_beginAccess();
  sub_1ADDD85E4(v12, v22 + v23);
  swift_endAccess();
  v26 = sub_1ADDD94CC(v22);
  v27 = v53;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule.Ref();
  v28 = a4;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v57 = sub_1ADDCC6B4(&unk_1F23BC1B8);
  v58 = v29;
  v30 = sub_1ADDD8E0C();
  v32 = v31;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v30, v32);
  (*(v14 + 8))(v17, v13);
  v33 = v57;
  v34 = v58;
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = v34;
  v35[4] = v26;

  v36 = v56;
  v55(v35);

  v37 = *(v27 + 48);
  v37(&v57, v28, v27);
  v39 = v57;
  v38 = v58;
  v37(&v57, v28, v27);
  v41 = v57;
  v40 = v58;
  swift_beginAccess();
  v59 = v39;
  v60 = v38;

  sub_1ADDD86D8(v39, v38);
  result = sub_1ADDDD4A0(&v57, &v59);
  if (!*(v43 + 16))
  {
    (result)(&v57, 0);
    sub_1ADDCC35C(v59, v60);
    swift_endAccess();
    goto LABEL_9;
  }

  v44 = *(v43 + 8);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (!v45)
  {
    *(v43 + 8) = v46;
    (result)(&v57, 0);
    swift_endAccess();
    sub_1ADDCC35C(v59, v60);
LABEL_9:
    swift_beginAccess();
    sub_1ADDD86D8(v39, v38);
    sub_1ADDE0110(&v61, v39, v38);
    swift_endAccess();
    sub_1ADDCC35C(v61, v62);
    v57 = v41;
    v58 = v40;
    v61 = v39;
    v62 = v38;
    sub_1ADDD86D8(v41, v40);
    sub_1ADDD86D8(v39, v38);
    sub_1ADEA9BC0(1, 1, &v57, &v61);

    sub_1ADDE158C(v61, v62);
    sub_1ADDE158C(v57, v58);
    result = (*(v50 + 8))(v36, v28);
    *&v47 = v39;
    *(&v47 + 1) = v38;
    *&v48 = v41;
    *(&v48 + 1) = v40;
    v49 = v51;
    *v51 = v47;
    v49[1] = v48;
    *(v49 + 4) = v26;
    return result;
  }

  __break(1u);
  return result;
}

double Capsule.init(_:id:initClosure:)@<D0>(void *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  Capsule.init(id:initClosure:)(&v12, a3, a4, a5, a6, v13);

  v9 = v14;
  result = *v13;
  v11 = v13[1];
  *a7 = v13[0];
  *(a7 + 16) = v11;
  *(a7 + 32) = v9;
  return result;
}

uint64_t Capsule.init(id:initClosure:)@<X0>(__int128 *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __int128 *a6@<X8>)
{
  v51 = a4;
  v52 = a5;
  v49 = a3;
  v50 = a2;
  v48 = a6;
  v47 = *(a4 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - v14;
  v16 = sub_1AE23BFEC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_1ED96F228);
  (*(v17 + 16))(v20, v21, v16);
  v22 = type metadata accessor for ReplicaState();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v27 = type metadata accessor for Replica();
  v28 = *(*(v27 - 8) + 56);
  v28(v25 + v26, 1, 1, v27);
  (*(v17 + 32))(v25 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v20, v16);
  *(v25 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v25 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v28(v15, 1, 1, v27);
  swift_beginAccess();
  sub_1ADDD85E4(v15, v25 + v26);
  swift_endAccess();
  v29 = sub_1ADDD94CC(v25);
  v30 = *(&v53 + 1);
  v31 = v53;
  v58 = v53;
  v59 = v53;
  v60 = v29;
  v32 = v51;
  v33 = type metadata accessor for Capsule();
  v34 = sub_1ADE1D940(v33);
  sub_1ADDD86D8(v31, v30);

  v50(v34);

  if (v29)
  {
    v36 = v47;
    v37 = v46;
    (*(v47 + 16))(v46, v11, v32);

    sub_1ADDD9FE4(v37, v32, &v58);
    v52 = v11;
    v38 = v58;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v41 = sub_1ADDD9ECC(v39);
    sub_1ADDDA5BC(v39);
    sub_1ADDD9ECC(v39);

    v42 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    *&v58 = v38;
    *(&v58 + 1) = 1;
    *&v59 = v42;
    *(&v59 + 1) = v42;
    v60 = v40;
    v61 = v41;
    v56 = v31;
    v57 = v30;
    swift_beginAccess();
    sub_1ADDD86D8(v31, v30);
    sub_1ADDD82B0(&v58, &v56);
    swift_endAccess();

    sub_1ADDCC35C(v56, v57);

    swift_beginAccess();

    sub_1ADDD86D8(v31, v30);
    sub_1ADDE0110(&v54, v31, v30);
    swift_endAccess();

    sub_1ADDCC35C(v54, v55);
    *&v58 = v31;
    *(&v58 + 1) = v30;
    v54 = v31;
    v55 = v30;
    sub_1ADDD86D8(v31, v30);
    sub_1ADDD86D8(v31, v30);
    sub_1ADEA9BC0(1, 1, &v58, &v54);

    sub_1ADDE158C(v54, v55);
    sub_1ADDE158C(v58, *(&v58 + 1));
    result = (*(v36 + 8))(v52, v32);
    v43 = v48;
    v44 = v53;
    *v48 = v53;
    v43[1] = v44;
    *(v43 + 4) = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.init(id:initClosure:)@<X0>(__int128 *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v51 = a5;
  v48 = a3;
  v49 = a2;
  v46 = a6;
  v62 = a4;
  v47 = *(a4 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_1AE23BFEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ED96F228);
  (*(v16 + 16))(v19, v20, v15);
  v21 = type metadata accessor for ReplicaState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v26 = type metadata accessor for Replica();
  v27 = *(*(v26 - 8) + 56);
  v27(v24 + v25, 1, 1, v26);
  (*(v16 + 32))(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v19, v15);
  *(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v27(v14, 1, 1, v26);
  swift_beginAccess();
  sub_1ADDD85E4(v14, v24 + v25);
  swift_endAccess();
  v28 = sub_1ADDD94CC(v24);
  v29 = *(&v53 + 1);
  v30 = v53;
  v58 = v53;
  v59 = v53;
  v60 = v28;
  v31 = v62;
  v32 = type metadata accessor for Capsule();
  v33 = sub_1ADE1D940(v32);
  sub_1ADDD86D8(v30, v29);
  v34 = v52;
  v35 = v50;
  v49(v33);

  if (v35)
  {
    sub_1ADDCC35C(v30, v29);
    sub_1ADDCC35C(v30, v29);
  }

  else if (v28)
  {
    v37 = v45;
    (*(v47 + 16))(v45, v34, v31);
    sub_1ADDD9FE4(v37, v31, &v58);
    v38 = v58;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v41 = sub_1ADDD9ECC(v39);
    sub_1ADDDA5BC(v39);
    sub_1ADDD9ECC(v39);

    v42 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    *&v58 = v38;
    *(&v58 + 1) = 1;
    *&v59 = v42;
    *(&v59 + 1) = v42;
    v60 = v40;
    v61 = v41;
    v56 = v30;
    v57 = v29;
    swift_beginAccess();
    sub_1ADDD86D8(v30, v29);
    sub_1ADDD82B0(&v58, &v56);
    swift_endAccess();
    sub_1ADDCC35C(v56, v57);

    swift_beginAccess();
    sub_1ADDD86D8(v30, v29);
    sub_1ADDE0110(&v54, v30, v29);
    swift_endAccess();
    sub_1ADDCC35C(v54, v55);
    *&v58 = v30;
    *(&v58 + 1) = v29;
    v54 = v30;
    v55 = v29;
    sub_1ADDD86D8(v30, v29);
    sub_1ADDD86D8(v30, v29);
    sub_1ADEA9BC0(1, 1, &v58, &v54);
    sub_1ADDE158C(v54, v55);
    sub_1ADDE158C(v58, *(&v58 + 1));
    result = (*(v47 + 8))(v52, v62);
    v43 = v46;
    v44 = v53;
    *v46 = v53;
    v43[1] = v44;
    *(v43 + 4) = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  v9 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v9;
  v13 = v8;
  Capsule.root.getter(v10);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Capsule.observableDifference(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v5 = *(a2 + 24);
  v40 = *(a2 + 16);
  v41 = v5;
  v6 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  v33 = a1[2];
  v13 = v33;
  v32 = v12;
  v14 = a1[4];
  v15 = *v3;
  v16 = v3[1];
  v18 = v3[2];
  v17 = v3[3];
  v19 = v3[4];
  v34 = type metadata accessor for Capsule.CapsuleReferenceDifferencer();
  v50[0] = v15;
  v50[1] = v16;
  v46.n128_u64[0] = v10;
  v46.n128_u64[1] = v11;
  v47 = v13;
  v20 = v32;
  v48 = v32;
  v49 = v14;
  v42.n128_u64[0] = v15;
  v42.n128_u64[1] = v16;
  v43 = v18;
  v44 = v17;
  v45 = v19;
  sub_1ADDD86D8(v15, v16);
  sub_1ADDD86D8(v15, v16);
  sub_1ADDD86D8(v10, v11);
  sub_1ADDD86D8(v33, v20);

  sub_1ADDD86D8(v15, v16);
  sub_1ADDD86D8(v18, v17);
  v21 = swift_allocObject();

  sub_1AE1F32D8(v50, &v46, &v42);
  v42.n128_u64[0] = v15;
  v42.n128_u64[1] = v16;
  v23 = v40;
  v22 = v41;
  Ref.init(id:)(&v42, &v46);
  v24 = v46;
  v42 = v46;
  v25 = v35;
  sub_1AE1F33C4(&v42, v23, v22, v35);
  sub_1ADDCC35C(v24.n128_i64[0], v24.n128_u64[1]);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v25, 1) == 1)
  {

    result = (*(v37 + 8))(v25, v38);
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    (*(v37 + 8))(v25, v38);
    swift_beginAccess();
    v27 = v21[2];
    v28 = v21[3];
    v29 = v21[4];
    sub_1ADDD86D8(v27, v28);
  }

  v30 = v39;
  *v39 = v27;
  v30[1] = v28;
  v30[2] = v29;
  return result;
}

uint64_t sub_1AE1F3230(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AE1F32D8(a1, a2, a3);
  return v6;
}

uint64_t Capsule.delta(to:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 4);
  v5 = *(v3 + 32);
  v6 = a1[1];
  v11 = *a1;
  v12 = v6;
  v13 = v4;
  v7 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v7;
  v10 = v5;
  return Capsule.observableDifference(from:)(v9, a2, a3);
}

uint64_t *sub_1AE1F32D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a2 + 32);
  v8 = *(a3 + 32);
  v9 = *(a2 + 16);
  *(v3 + 5) = *a2;
  *(v3 + 7) = v9;
  v3[9] = v7;
  v10 = *(a3 + 16);
  *(v3 + 5) = *a3;
  *(v3 + 6) = v10;
  v3[14] = v8;
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v13 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference();
  swift_getTupleTypeMetadata2();
  v14 = sub_1AE23D05C();
  v15 = sub_1ADDDF1A4();
  v16 = sub_1ADDEAF38(v14, &type metadata for CRKeyPath, v13, v15);

  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v16;
  return v3;
}

uint64_t sub_1AE1F33C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v78 = a4;
  v8 = *v5;
  v70 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = sub_1AE23D7CC();
  v65 = *(v66 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v62 - v11;
  v75 = AssociatedTypeWitness;
  v73 = *(AssociatedTypeWitness - 8);
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v71 = *(a2 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v62 - v20;
  v21 = a1[1];
  v68 = *a1;
  *&v81 = v68;
  *(&v81 + 1) = v21;
  v67 = v21;
  v72 = a2;
  v22 = type metadata accessor for Ref();
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v22, WitnessTable);
  v24 = v80[0];
  v77 = v5 + 2;
  swift_beginAccess();
  v25 = v5[4];
  v74 = v5 + 4;
  v80[0] = v24;
  sub_1ADDD86D8(v24, *(&v24 + 1));
  v26 = *(v8 + 80);
  v27 = *(v8 + 88);
  v28 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference();
  sub_1ADDDF1A4();

  sub_1AE23CB7C();

  sub_1ADDCC35C(*&v80[0], *(&v80[0] + 1));
  if (*(&v82 + 1) == 2)
  {
    v62 = v15;
    v29 = sub_1AE23D7CC();
    (*(*(v29 - 8) + 8))(&v81, v29);
    v81 = 0u;
    v82 = 0u;
    v84 = v24;
    swift_beginAccess();
    v63 = *(&v24 + 1);
    sub_1ADDD86D8(v24, *(&v24 + 1));
    v64 = sub_1AE23CB1C();
    sub_1AE23CB8C();
    swift_endAccess();
    v30 = v5[5];
    v31 = v5[6];
    v32 = v5[7];
    v33 = v5[8];
    v34 = v5[9];
    v35 = v68;
    v36 = v67;
    *&v80[0] = v68;
    *(&v80[0] + 1) = v67;
    *&v81 = v30;
    *(&v81 + 1) = v31;
    *&v82 = v32;
    *(&v82 + 1) = v33;
    v83 = v34;
    sub_1ADDD86D8(v30, v31);
    sub_1ADDD86D8(v32, v33);

    Ref.subscript.getter(&v81, v22);
    v37 = v82;
    sub_1ADDCC35C(v81, *(&v81 + 1));
    sub_1ADDCC35C(v37, *(&v37 + 1));

    v38 = v5[10];
    v39 = v5[11];
    v40 = v5[12];
    v41 = v5[13];
    v42 = v5[14];
    *&v80[0] = v35;
    *(&v80[0] + 1) = v36;
    *&v81 = v38;
    *(&v81 + 1) = v39;
    *&v82 = v40;
    *(&v82 + 1) = v41;
    v83 = v42;
    sub_1ADDD86D8(v38, v39);
    sub_1ADDD86D8(v40, v41);

    Ref.subscript.getter(&v81, v22);
    v43 = v82;
    sub_1ADDCC35C(v81, *(&v81 + 1));
    sub_1ADDCC35C(v43, *(&v43 + 1));

    *(&v82 + 1) = type metadata accessor for Capsule.CapsuleReferenceDifferencer();
    v83 = &off_1F23C9228;
    *&v81 = v5;
    v44 = v70;
    v45 = *(v70 + 40);

    v46 = v69;
    v47 = v72;
    v45(v79, &v81, v72, v44);
    sub_1ADDCEDE0(&v81, &qword_1EB5BAA40, &unk_1AE24EC50);
    v48 = v73;
    v49 = v75;
    if ((*(v73 + 48))(v46, 1, v75) == 1)
    {
      (*(v65 + 8))(v46, v66);
      v81 = 0uLL;
      *&v82 = 0;
      *(&v82 + 1) = 1;
      v50 = v63;
      *&v84 = v24;
      *(&v84 + 1) = v63;
      swift_beginAccess();
      sub_1ADDD86D8(v24, v50);
      sub_1AE23CB8C();
      swift_endAccess();
      sub_1ADDCC35C(v24, v50);
      v51 = *(v71 + 8);
      v51(v76, v47);
      v51(v79, v47);
      return (*(v48 + 56))(v78, 1, 1, v49);
    }

    else
    {
      v55 = *(v48 + 32);
      v56 = v62;
      v55(v62, v46, v49);
      *(&v82 + 1) = v49;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
      (*(v48 + 16))(boxed_opaque_existential_1, v56, v49);
      v58 = v63;
      *&v84 = v24;
      *(&v84 + 1) = v63;
      swift_beginAccess();
      sub_1ADDD86D8(v24, v58);
      sub_1AE23CB8C();
      swift_endAccess();
      sub_1ADDCC35C(v24, v58);
      v59 = *(v71 + 8);
      v59(v76, v47);
      v59(v79, v47);
      v60 = v78;
      v55(v78, v56, v49);
      return (*(v48 + 56))(v60, 0, 1, v49);
    }
  }

  else
  {
    v53 = v73;
    v54 = v75;
    sub_1ADDCC35C(v24, *(&v24 + 1));
    v80[0] = v81;
    v80[1] = v82;
    if (*(&v82 + 1) >= 2uLL)
    {
      sub_1ADDEE390(v80, &v81);
      sub_1ADDEE390(&v81, v80);
      v61 = v78;
      swift_dynamicCast();
      return (*(v53 + 56))(v61, 0, 1, v54);
    }

    else
    {
      (*(*(v28 - 8) + 8))(v80, v28);
      return (*(v53 + 56))(v78, 1, 1, v54);
    }
  }
}

uint64_t sub_1AE1F3C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v72 = a4;
  v9 = *v4;
  v10 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_1AE23D7CC();
  v62 = *(v65 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v59 - v12;
  v67 = a2;
  v13 = sub_1AE23D7CC();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = v5[5];
  v22 = v5[6];
  v23 = v5[7];
  v24 = v5[8];
  v25 = v5[9];
  v77.n128_u64[0] = v19;
  v77.n128_u64[1] = v20;
  v73.n128_u64[0] = v21;
  v73.n128_u64[1] = v22;
  v74 = v23;
  v75 = v24;
  v76 = v25;
  sub_1ADDD86D8(v21, v22);
  sub_1ADDD86D8(v23, v24);
  v63 = a3;
  v26 = type metadata accessor for WeakRef();
  v27 = *(v9 + 80);
  v28 = *(v9 + 88);

  WeakRef.subscript.getter(&v73, v26);
  v29 = v74;
  v30 = v75;
  sub_1ADDCC35C(v73.n128_i64[0], v73.n128_u64[1]);
  sub_1ADDCC35C(v29, v30);

  v31 = v5[10];
  v32 = v5[11];
  v33 = v5[12];
  v34 = v5[13];
  v35 = v5[14];
  v66 = v19;
  v76 = v35;
  v77.n128_u64[0] = v19;
  v36 = v18;
  v37 = v20;
  v38 = v67;
  v77.n128_u64[1] = v37;
  v73.n128_u64[0] = v31;
  v73.n128_u64[1] = v32;
  v74 = v33;
  v75 = v34;
  sub_1ADDD86D8(v31, v32);
  sub_1ADDD86D8(v33, v34);
  v39 = v69;

  WeakRef.subscript.getter(&v73, v26);
  v40 = v74;
  v41 = v75;
  sub_1ADDCC35C(v73.n128_i64[0], v73.n128_u64[1]);
  sub_1ADDCC35C(v40, v41);

  v42 = *(*(v38 - 8) + 48);
  v68 = v36;
  LODWORD(v41) = v42(v36, 1, v38);
  v43 = v42(v39, 1, v38);
  v44 = v43;
  if (v41 != 1)
  {
    v48 = v37;
    v49 = v70;
    v45 = v71;
    if (v43 == 1)
    {
      v46 = *(v70 + 8);
      v46(v68, v71);
      v47 = xmmword_1AE259B00;
      goto LABEL_8;
    }

    v50 = v66;
    v77.n128_u64[0] = v66;
    v77.n128_u64[1] = v48;
    v51 = v63;
    Ref.init(id:)(&v77, &v73);
    v52 = v73;
    v77 = v73;
    v60 = v48;
    sub_1ADDD86D8(v50, v48);
    v53 = v61;
    sub_1AE1F33C4(&v77, v38, v51, v61);
    sub_1ADDCC35C(v52.n128_i64[0], v52.n128_u64[1]);
    v54 = (*(*(AssociatedTypeWitness - 8) + 48))(v53, 1);
    (*(v62 + 8))(v53, v65);
    v46 = *(v49 + 8);
    v46(v68, v45);
    if (v54 != 1)
    {
      v56 = v72;
      v57 = v66;
      v58 = v60;
      *v72 = v66;
      v56[1] = v58;
      sub_1ADDD86D8(v57, v58);
      return (v46)(v39, v45);
    }

LABEL_7:
    v47 = xmmword_1AE259B10;
    goto LABEL_8;
  }

  v45 = v71;
  v46 = *(v70 + 8);
  v46(v68, v71);
  if (v44 == 1)
  {
    goto LABEL_7;
  }

  v47 = xmmword_1AE250CD0;
LABEL_8:
  *v72 = v47;
  return (v46)(v39, v45);
}

void *sub_1AE1F40E0()
{
  v1 = v0[4];
  sub_1ADDCC35C(v0[2], v0[3]);

  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  sub_1ADDCC35C(v0[5], v0[6]);
  sub_1ADDCC35C(v2, v3);

  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[14];
  sub_1ADDCC35C(v0[10], v0[11]);
  sub_1ADDCC35C(v5, v6);

  return v0;
}

uint64_t sub_1AE1F4164()
{
  sub_1AE1F40E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE1F420C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v12 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(v6 + 16);
  v39 = *a1;
  v19 = a5(0, a3, a4);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v19, WitnessTable);
  v35 = v38;
  v21 = *(a2 + 16);
  v22 = *(a2 + 24);
  v23 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference();
  sub_1ADDDF1A4();
  sub_1AE23CB7C();
  sub_1ADDCC35C(v35, *(&v35 + 1));
  if (v37 < 2)
  {
    goto LABEL_5;
  }

  if (v37 == 2)
  {
    v23 = sub_1AE23D7CC();
LABEL_5:
    (*(*(v23 - 8) + 8))(&v36, v23);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v34, 1, 1, AssociatedTypeWitness);
  }

  sub_1ADDEE390(&v36, v40);
  sub_1ADDEE390(v40, &v36);
  v25 = swift_dynamicCast();
  v26 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v25)
  {
    v27 = *(AssociatedTypeWitness - 8);
    v26(v17, 0, 1, AssociatedTypeWitness);
    v28 = v34;
    (*(v27 + 32))(v34, v17, AssociatedTypeWitness);
    v29 = v28;
    v30 = 0;
  }

  else
  {
    v26(v17, 1, 1, AssociatedTypeWitness);
    (*(v32 + 8))(v17, v33);
    v29 = v34;
    v30 = 1;
  }

  return (v26)(v29, v30, 1, AssociatedTypeWitness);
}

uint64_t Capsule.ObservableDifference.subscript.getter(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x1E69E6CE8]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v1 + 2);
  v10 = *v1;
  v11 = v7;
  Capsule.ObservableDifference.root.getter(v8);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Capsule.ObservableDifference.root.getter(uint64_t a1)
{
  v3 = v1[2];
  v9 = *v1;
  v10 = v1[1];
  sub_1ADDD86D8(*v1, v10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference();
  sub_1ADDDF1A4();
  sub_1AE23CB7C();
  sub_1ADDCC35C(v9, v10);
  if (v12 >= 2)
  {
    if (v12 != 2)
    {
      sub_1ADDEE390(&v11, v13);
      sub_1ADDEE390(v13, &v11);
      v7 = *(v5 + 16);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    v6 = sub_1AE23D7CC();
  }

  (*(*(v6 - 8) + 8))(&v11, v6);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t Capsule.Ref.mutate<A>(_:)(void (*a1)(uint64_t *))
{
  v4[3] = *v1;
  v4[4] = &protocol witness table for Capsule<A>.Ref;
  v4[0] = v1;

  a1(v4);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

double Capsule.init(_:serializedData:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)(a2, a3, 0, 0, 0xF000000000000000, a4, a5, v12);

  if (!v6)
  {
    v10 = v13;
    result = v12[0].n128_f64[0];
    v11 = v12[1];
    *a6 = v12[0];
    a6[1] = v11;
    a6[2].n128_u64[0] = v10;
  }

  return result;
}

uint64_t Capsule.init(serializedData:allowedAppFormats:fileSignature:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v48 = a7;
  v14 = a5 >> 60;
  if (a5 >> 60 != 15)
  {
    v17 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_37;
      }

      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(a5);
      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
      goto LABEL_36;
    }

    v18 = HIDWORD(a4) - a4;
LABEL_14:
    sub_1ADDD86D8(a4, a5);
LABEL_15:
    if (v18 == 4)
    {
      sub_1ADDE158C(a4, a5);
      v15 = a4;
      v16 = a5;
      goto LABEL_17;
    }

LABEL_37:
    result = sub_1AE23DC5C();
    __break(1u);
    return result;
  }

  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED96F240;
  v16 = *algn_1ED96F248;
  sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
LABEL_17:
  sub_1ADDE0F78(a4, a5);
  sub_1ADE60090(v39, a1, a2, v15, v16);
  if (v8)
  {
LABEL_18:
    sub_1ADDE158C(a4, a5);

    sub_1ADDCC35C(a1, a2);
    return sub_1ADDCC35C(v15, v16);
  }

  sub_1ADDCC35C(v15, v16);
  if (v39[0] >= 3u)
  {
    result = sub_1AE1F5054(a1, a2, a3, a4, a5, a6, v48, v39);
    v28 = *v39;
    v29 = *&v39[16];
    v30 = *&v39[32];
LABEL_33:
    *a8 = v28;
    a8[1] = v29;
    a8[2].n128_u64[0] = v30;
    return result;
  }

  v15 = a4;
  v16 = a5;
  if (v14 >= 0xF)
  {
    if (qword_1ED9697D8 == -1)
    {
LABEL_22:
      v15 = qword_1ED96F240;
      v16 = *algn_1ED96F248;
      sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
      goto LABEL_23;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

LABEL_23:
  sub_1ADDE0F78(a4, a5);
  sub_1ADE60630(&v46, a1, a2, v15, v16, 0, 0, v39);
  if (v8)
  {
    goto LABEL_18;
  }

  v32 = *v39;
  v22 = *v39;
  sub_1ADDCC35C(v15, v16);
  v23 = v46;
  if (!a3)
  {
LABEL_29:
    v47[4] = v42;
    v47[5] = v43;
    v47[6] = v44;
    v47[7] = v45;
    v47[0] = *&v39[8];
    v47[1] = *&v39[24];
    v47[2] = v40;
    v47[3] = v41;
    v36 = v23;
    sub_1ADDCEE40(v39, v35, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v27 = qword_1ED96F2A8;

    sub_1AE1EB234(&v36, v47, 0, v27, 0, a6, v48, v37);
    sub_1ADDE158C(a4, a5);
    sub_1ADDCC35C(a1, a2);
    result = sub_1ADDCEDE0(v39, &qword_1EB5BA278, &unk_1AE241D30);
    v28 = v37[0];
    v29 = v37[1];
    v30 = v38;
    goto LABEL_33;
  }

  v24 = *(a3 + 16);
  v25 = 32;
  while (v24)
  {
    v26 = *(a3 + v25);
    v25 += 2;
    --v24;
    if (v26 == v22)
    {

      goto LABEL_29;
    }
  }

  sub_1ADE42E40();
  swift_allocError();
  *v31 = v32;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  swift_willThrow();
  sub_1ADDE158C(a4, a5);
  sub_1ADDCC35C(a1, a2);
  return sub_1ADDCEDE0(v39, &qword_1EB5BA278, &unk_1AE241D30);
}

uint64_t Capsule.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v28, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v19);
  if (v5)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  v29[4] = v24;
  v29[5] = v25;
  v29[6] = v26;
  v29[7] = v27;
  v29[0] = v20;
  v29[1] = v21;
  v29[2] = v22;
  v29[3] = v23;
  v16 = v28;
  sub_1ADDCEE40(&v19, &v15, &qword_1EB5BA278, &unk_1AE241D30);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED96F2A8;

  sub_1AE1EB234(&v16, v29, 0, v12, 0, a3, a4, v17);
  sub_1ADDCEDE0(&v19, &qword_1EB5BA278, &unk_1AE241D30);
  result = sub_1ADDCC35C(a1, a2);
  v13 = v18;
  v14 = v17[1];
  *a5 = v17[0];
  a5[1] = v14;
  a5[2].n128_u64[0] = v13;
  return result;
}

uint64_t sub_1AE1F5054@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v103 = a6;
  v104 = a7;
  v131 = a5;
  v115 = a4;
  v112 = a2;
  v94 = a8;
  v10 = sub_1AE23BFEC();
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v95 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v88 - v14;
  v15 = sub_1AE23C6DC();
  v113 = *(v15 - 8);
  v114 = v15;
  v16 = *(v113 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v88 - v20;
  v102 = v22;
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v88 - v23;
  v25 = sub_1AE23C70C();
  v109 = *(v25 - 8);
  v110 = v25;
  v26 = *(v109 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v100 = v28;
  v101 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v88 - v29;
  sub_1AE23C6FC();
  sub_1AE23C6EC();
  sub_1AE23C6BC();
  v108 = v30;
  v31 = sub_1AE23C6EC();
  v32 = sub_1AE23D73C();
  if (sub_1AE23D79C())
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v31, v32, v34, "decodeDocument", "", v33, 2u);
    MEMORY[0x1B26FDA50](v33, -1, -1);
  }

  v99 = *(v113 + 16);
  v99(v21, v24, v114);
  v35 = sub_1AE23C74C();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v107 = sub_1AE23C73C();
  v38 = v131;
  v39 = v131 >> 60;
  v40 = v115;
  if (v131 >> 60 == 15)
  {
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v40 = qword_1ED96F240;
    v38 = *algn_1ED96F248;
    sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
  }

  v111 = v24;
  sub_1ADDE0F78(v115, v131);
  v41 = a1;
  v42 = a1;
  v43 = v112;
  v44 = v106;
  v45 = sub_1ADE60090(v120, v41, v112, v40, v38);
  v106 = v44;
  if (v44)
  {

    sub_1ADDCC35C(v40, v38);
    v46 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v42, v43);
    v47 = v111;
LABEL_24:
    sub_1ADDE158C(v115, v131);
    (*(v113 + 8))(v47, v114);
    return (*(v109 + 8))(v46, v110);
  }

  v48 = v45;
  sub_1ADDCC35C(v40, v38);
  v49 = v120[0];
  v50 = v42;
  v47 = v111;
  if (a3)
  {
    v51 = *(a3 + 16);
    v52 = 32;
    while (v51)
    {
      v53 = *(a3 + v52);
      v52 += 2;
      --v51;
      if (v53 == v48)
      {

        goto LABEL_14;
      }
    }

    sub_1ADE42E40();
    swift_allocError();
    *v72 = v48;
    *(v72 + 8) = 0;
    *(v72 + 16) = 1;
    swift_willThrow();
    v46 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v50, v112);
    goto LABEL_24;
  }

LABEL_14:
  v90 = v49;
  v93 = v50;
  v54 = swift_allocObject();
  v92 = v54;
  *(v54 + 16) = 0;
  v88 = (v54 + 16);
  v55 = v115;
  v56 = v131;
  if (v39 >= 0xF)
  {
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v55 = qword_1ED96F240;
    v56 = *algn_1ED96F248;
    sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
  }

  v89 = v56;
  v91 = v55;
  v57 = v109;
  v58 = v101;
  v59 = v110;
  (*(v109 + 16))(v101, v108, v110);
  v99(v105, v47, v114);
  v60 = (*(v57 + 80) + 44) & ~*(v57 + 80);
  v61 = v113;
  v62 = (v100 + *(v113 + 80) + v60) & ~*(v113 + 80);
  v63 = swift_allocObject();
  v64 = v104;
  *(v63 + 16) = v103;
  *(v63 + 24) = v64;
  *(v63 + 32) = v92;
  *(v63 + 40) = v90;
  *(v63 + 42) = v48;
  v65 = v59;
  v66 = v89;
  v67 = v91;
  (*(v57 + 32))(v63 + v60, v58, v65);
  (*(v61 + 32))(v63 + v62, v105, v114);
  sub_1ADDE0F78(v115, v131);

  v68 = v93;
  v69 = v112;
  v70 = v106;
  sub_1ADE60630(&v129, v93, v112, v67, v66, sub_1AE1FE7B4, v63, v120);
  if (v70)
  {
    sub_1ADDCC35C(v67, v66);

    v71 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v68, v69);
    v47 = v111;
    v46 = v71;
    goto LABEL_24;
  }

  sub_1ADDCC35C(v67, v66);

  v73 = v88;
  swift_beginAccess();
  if (!*v73)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v76 = 0xD000000000000012;
    *(v76 + 8) = 0x80000001AE264030;
    *(v76 + 16) = 0;
    swift_willThrow();
    sub_1ADDCEDE0(v120, &qword_1EB5BA278, &unk_1AE241D30);

    v46 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v68, v69);
    v47 = v111;
    goto LABEL_24;
  }

  v130[4] = v125;
  v130[5] = v126;
  v130[6] = v127;
  v130[7] = v128;
  v130[0] = v121;
  v130[1] = v122;
  v130[2] = v123;
  v130[3] = v124;

  v74 = v98;
  v75 = sub_1ADDE9B40(v117, v119, v98, v103, v130, 0, v103, v104);
  v77 = v117[0];
  v78 = v95;
  v79 = v96;
  v80 = *(v96 + 16);
  v106 = v75;
  v81 = v74;
  v82 = v97;
  v80(v95, v81, v97);
  v116 = v77;
  sub_1ADDD86D8(v77.n128_i64[0], v77.n128_u64[1]);
  v83 = sub_1AE1F6098(v106, v119, v78, &v116, v117);
  (*(v79 + 8))(v98, v82, v83);
  sub_1ADDCC35C(v77.n128_i64[0], v77.n128_u64[1]);

  sub_1ADDCEDE0(v120, &qword_1EB5BA278, &unk_1AE241D30);

  v85 = v118;
  v86 = v117[1];
  v87 = v94;
  *v94 = v117[0];
  v87[1] = v86;
  v87[2].n128_u64[0] = v85;
  v46 = v108;
  sub_1AE1F88EC(v108, v107, "decodeDocument");

  sub_1ADDCC35C(v93, v69);
  sub_1ADDE158C(v115, v131);
  (*(v113 + 8))(v111, v114);
  return (*(v109 + 8))(v46, v110);
}

uint64_t sub_1AE1F5B00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_beginAccess();
  v14 = *(a2 + 16);
  if (!v14)
  {
    v54[4] = a5;
    v21 = *(a1 + 80);
    v53[4] = *(a1 + 64);
    v53[5] = v21;
    v22 = *(a1 + 112);
    v53[6] = *(a1 + 96);
    v53[7] = v22;
    v23 = *(a1 + 16);
    v53[0] = *a1;
    v53[1] = v23;
    v24 = *(a1 + 48);
    v53[2] = *(a1 + 32);
    v53[3] = v24;
    v25 = *(&v23 + 1);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v26 = qword_1ED96F2A8;
    type metadata accessor for CRDecoder();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 32) = MEMORY[0x1E69E7CC0];
    *(v27 + 40) = v28;
    v29 = MEMORY[0x1E69E7CC8];
    *(v27 + 48) = MEMORY[0x1E69E7CC8];
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0;
    *(v27 + 57) = a3;
    *(v27 + 16) = 0;
    *(v27 + 24) = v28;
    type metadata accessor for CRProtoDecodeContext();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v29;
    v30[4] = v26;
    v30[5] = v29;
    swift_retain_n();
    sub_1ADE73B00(v53, v52);

    sub_1AE1B5950(v25);
    if (!v7)
    {

      sub_1ADE6AF00(v53);
      v31 = *(v27 + 16);
      *(v27 + 16) = v30;

      sub_1ADDD5D3C(v53);
      v54[0] = *&v53[0];
      if ((~*&v53[0] & 0xF000000000000007) != 0 && (*&v53[0] & 0xC000000000000000) == 0x8000000000000000)
      {
        v32 = (*&v53[0] & 0x3FFFFFFFFFFFFFFFLL);
        swift_beginAccess();
        v33 = v32[8];
        v34 = v32[9];
        v35 = v32[10];
        if (v33)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        v47 = v36;
        v37 = 0xC000000000000000;
        if (v33)
        {
          v37 = v35;
        }

        v46 = v37;

        sub_1ADDCEE40(v54, v51, &qword_1EB5BA300, &qword_1AE25A270);
        sub_1ADE56F74(v33, v34, v35);
        result = sub_1ADDE94BC(v47, v46, v50);
        if (!*(v27 + 16))
        {
          goto LABEL_28;
        }

        v48 = v50[0];
        v49 = v50[1];

        sub_1AE1DDF08(a7, v50, v27);
        v39 = MEMORY[0x1E69E7CC0];

        *(a1 + 24) = v39;
        v40 = *(a1 + 104);
        sub_1ADE73B5C(*(a1 + 80), *(a1 + 88), *(a1 + 96));
        *(a1 + 80) = xmmword_1AE241910;
        *(a1 + 96) = v39;
        *(a1 + 104) = v39;
        v41 = sub_1AE23C6EC();
        v42 = sub_1AE23D74C();
        if (sub_1AE23D79C())
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = sub_1AE23C6CC();
          _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v41, v42, v44, "Decoded root.", "", v43, 2u);
          MEMORY[0x1B26FDA50](v43, -1, -1);

          sub_1ADDCC35C(v48, v49);
          sub_1ADDCEDE0(v54, &qword_1EB5BA300, &qword_1AE25A270);
        }

        else
        {
          sub_1ADDCC35C(v48, v49);
          sub_1ADDCEDE0(v54, &qword_1EB5BA300, &qword_1AE25A270);
        }

        swift_beginAccess();
        v45 = *(a2 + 16);
        *(a2 + 16) = v27;
      }

      else
      {
        sub_1ADE42E40();
        swift_allocError();
        *v38 = 0xD000000000000019;
        *(v38 + 8) = 0x80000001AE260230;
        *(v38 + 16) = 0;
        swift_willThrow();
      }
    }

    sub_1ADE6AF00(v53);
LABEL_10:
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(a1 + 24);
    v17 = *(*v15 + 160);

    v18 = v17(v16, v14);
    if (!v7)
    {
      v19 = v18;

      if (*(v14 + 16))
      {
        v20 = *(v14 + 16);

        sub_1AE1DE048(v19, v14);

        *(a1 + 24) = MEMORY[0x1E69E7CC0];
        return result;
      }

      goto LABEL_27;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

__n128 sub_1AE1F6098@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v98 = a3;
  v93 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v79 - v10;
  v96 = sub_1AE23BFEC();
  v94 = *(v96 - 8);
  v11 = *(v94 + 64);
  v12 = MEMORY[0x1EEE9AC00](v96);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v79 - v14;
  v16 = type metadata accessor for PartiallyOrderedReferenceMap();
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v79 - v21;
  v23 = a2[1];
  v97 = *a2;
  v24 = *a4;
  v101 = a1;
  v25 = v24;
  v92 = v24;
  v100 = v24;

  sub_1ADDD86D8(v25.n128_i64[0], v25.n128_u64[1]);
  v26 = v95;
  v27 = sub_1ADECBDF8(&v100, &v101);
  if (v26)
  {
    sub_1ADDCC35C(v25.n128_i64[0], v25.n128_u64[1]);

    (*(v94 + 8))(v98, v96);
    sub_1ADDE158C(v100.n128_i64[0], v100.n128_u64[1]);
  }

  else
  {
    v95 = v20;
    v84 = v25;
    v89 = v15;
    v85 = v28;
    v86 = v27;
    v30 = v94;
    v88 = 0;
    sub_1ADDE158C(v100.n128_i64[0], v100.n128_u64[1]);
    v31 = v101;
    v32 = qword_1ED96AC50;
    v33 = v97;

    if (v32 != -1)
    {
      swift_once();
    }

    v87 = a1;
    sub_1ADDD0F70();
    sub_1AE23BFBC();

    v35 = sub_1AE1FDB14(v34);
    v36 = &v22[v16[5]];
    *v36 = v35;
    v36[1] = v37;
    v36[2] = v38;
    v39 = sub_1AE23C1EC();
    v40 = *v39;
    v41 = &v22[v16[7]];
    *v41 = *v39;
    *(v41 + 1) = 0;
    *(v41 + 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AE2418F0;

    v43 = sub_1ADE1AFA0(v31);
    *(v42 + 32) = v33;
    *(v42 + 40) = v23;
    *(v42 + 48) = v43;
    *(v42 + 56) = v44;
    *(v42 + 64) = v45;
    *&v22[v16[6]] = v42;
    v83 = v22;
    sub_1ADDD9E68(v22, v95);
    v46 = v30;
    v82 = v31;
    v47 = *(v30 + 16);
    v48 = v96;
    v47(v89, v98, v96);
    v49 = qword_1ED969288;

    v81 = v23;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v48, qword_1ED96F228);
    v51 = v90;
    v47(v90, v50, v48);
    v52 = type metadata accessor for ReplicaState();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    v55 = swift_allocObject();
    v56 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v57 = type metadata accessor for Replica();
    v80 = v47;
    v58 = v57;
    v59 = *(*(v57 - 8) + 56);
    v59(v55 + v56, 1, 1, v57);
    (*(v46 + 32))(v55 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v51, v48);
    *(v55 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v55 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v60 = v91;
    v59(v91, 1, 1, v58);
    swift_beginAccess();
    sub_1ADDD85E4(v60, v55 + v56);
    swift_endAccess();
    v61 = type metadata accessor for CapsuleRef();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    v64 = swift_allocObject();
    v65 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
    v66 = MEMORY[0x1E69E7CC0];
    *(v64 + v65) = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
    v67 = (v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    v68 = v81;
    *v67 = v97;
    v67[1] = v68;
    v69 = v89;
    v80(v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID, v89, v48);
    *(v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState) = v55;
    v70 = v95;
    sub_1ADDD9E68(v95, v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references);
    v71 = sub_1ADDD9ECC(v66);
    v72 = v69;
    v73 = *(v46 + 8);
    v73(v72, v48);
    sub_1ADE73DF4(v70);
    v74 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
    *(v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets) = v71;
    *(v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated) = MEMORY[0x1E69E7CD0];
    v75 = OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration;
    *(v64 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = 0;

    sub_1ADDD86D8(v84.n128_i64[0], v84.n128_u64[1]);

    swift_beginAccess();
    v76 = *(v64 + v74);
    *(v64 + v74) = v85;

    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v77 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v73(v98, v48);
    sub_1ADE73DF4(v83);
    *(v64 + v75) = v99;

    v78 = v93;
    result = v92;
    *v93 = v92;
    v78[1] = result;
    v78[2].n128_u64[0] = v64;
  }

  return result;
}

uint64_t Capsule.serializedData()(uint64_t a1)
{
  v3 = *(v1 + 4);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v4 = sub_1ADDCE2E4(0, &v8);
  sub_1ADDCEDE0(&v8, &qword_1EB5B9DB0, &qword_1AE240B80);
  v5 = v1[1];
  v8 = *v1;
  v9 = v5;
  v10 = v3;
  v11 = 1;
  v6 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(v4, &v11, 0, 0, 0xF000000000000000, a1);

  return v6;
}

uint64_t Capsule.serializedData(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  v7 = 1;
  return Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(a1, &v7, 0, 0, 0xF000000000000000, a2);
}

uint64_t Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a6;
  *&v83 = a5;
  *&v82 = a4;
  v88 = a3;
  *&v81 = a1;
  v127 = sub_1AE23C6DC();
  v94 = *(v127 - 8);
  v8 = *(v94 + 64);
  v9 = MEMORY[0x1EEE9AC00](v127);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v72 - v12;
  v14 = sub_1AE23C70C();
  v90 = *(v14 - 8);
  v91 = v14;
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v93) = *a2;
  v18 = *v6;
  v85 = v6[1];
  v86 = v18;
  v19 = v6[2];
  v87 = v6[3];
  v92 = v6[4];
  sub_1AE23C6FC();
  sub_1AE23C6EC();
  sub_1AE23C6BC();
  v89 = v17;
  v20 = sub_1AE23C6EC();
  v21 = sub_1AE23D73C();
  if (sub_1AE23D79C())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v20, v21, v23, "encodeDocument", "", v22, 2u);
    MEMORY[0x1B26FDA50](v22, -1, -1);
  }

  v24 = v94;
  (*(v94 + 16))(v11, v13, v127);
  v25 = sub_1AE23C74C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1AE23C73C();
  v30 = v85;
  v29 = v86;
  *&v99 = v86;
  *(&v99 + 1) = v85;
  v31 = v87;
  *&v100[0] = v19;
  *(&v100[0] + 1) = v87;
  *&v100[1] = v92;
  LOBYTE(v115) = v93;
  v32 = v95;
  v33 = sub_1AE1F721C(&v115, v88);
  v95 = v32;
  if (v32)
  {
    v34 = v89;
    sub_1AE1F88EC(v89, v28, "encodeDocument");

    v35 = v127;
  }

  else
  {
    v80 = v28;
    v88 = v13;
    v122 = v29;
    v123 = v30;
    v124 = v19;
    v125 = v31;
    v126 = v92;
    LODWORD(v79) = v33;
    sub_1ADDD86D8(v29, v30);
    sub_1ADDD86D8(v19, v31);

    v36 = v81;
    Capsule.finalizeTimestamps(_:)(v81);
    LOBYTE(v99) = v93;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v37 = v36;
    v38 = v82;
    v39 = v83;
    sub_1ADDE0F78(v82, v83);
    v40 = CREncoder.init(_:version:fileSignature:)(v37, &v99, v38, v39);
    v42 = v122;
    v41 = v123;
    v43 = v124;
    v44 = v125;
    v45 = v126;
    v110 = v122;
    v111 = v123;
    v112 = v124;
    v113 = v125;
    v114 = v126;
    sub_1ADDD86D8(v122, v123);
    sub_1ADDD86D8(v43, v44);
    v47 = *(v84 + 16);
    v46 = *(v84 + 24);

    v48 = v47;
    v49 = v95;
    sub_1ADE6A25C(&v110, v79, 0, v48, v46, &v99);
    v95 = v49;
    if (v49)
    {

      v50 = v112;
      v51 = v113;
      sub_1ADDCC35C(v110, v111);
      sub_1ADDCC35C(v50, v51);

      sub_1ADDCC35C(v42, v41);
      sub_1ADDCC35C(v43, v44);

      v34 = v89;
      sub_1AE1F88EC(v89, v80, "encodeDocument");

      v24 = v94;
      v13 = v88;
      v35 = v127;
    }

    else
    {
      v85 = v42;
      v86 = v41;
      v87 = v43;
      v92 = v44;
      v93 = v45;
      v52 = v99;
      v76 = *&v100[0];
      v77 = *(&v99 + 1);
      v74 = v101;
      v75 = *(&v100[1] + 1);
      v73 = *(&v101 + 1);
      v81 = v103;
      v82 = v102;
      v83 = *(v100 + 8);
      v78 = v105;
      v79 = v104;
      v53 = v106;
      v54 = v107;
      v84 = v108;
      v55 = v109;
      v56 = v112;
      v57 = v40;
      v58 = v113;
      sub_1ADDCC35C(v110, v111);
      sub_1ADDCC35C(v56, v58);

      *&v115 = v52;
      *(&v115 + 1) = v77;
      *(v116 + 8) = v83;
      *&v116[0] = v76;
      *(&v116[1] + 1) = v75;
      *&v117 = v74;
      *(&v117 + 1) = v73;
      v118 = v82;
      v119 = v81;
      v120 = v79;
      v121 = v78;
      v59 = v95;
      sub_1ADE67778(&v115);
      if (!v59)
      {
        *&v81 = v55;
        v102 = v118;
        v103 = v119;
        v104 = v120;
        v105 = v121;
        v99 = v115;
        v100[0] = v116[0];
        v100[1] = v116[1];
        v101 = v117;
        v97 = v53;
        v98 = v54;
        *&v82 = v53;
        *&v83 = v54;
        sub_1ADDD86D8(v53, v54);
        sub_1ADE73BC8();
        v61 = sub_1AE23C51C();
        v95 = 0;
        v63 = v85;
        v62 = v86;
        v64 = v92;
        v65 = v61;
        v67 = v66;
        sub_1AE23BEEC();
        sub_1ADDCC35C(v65, v67);
        v68 = v84;
        v69 = v81;
        sub_1AE23BEEC();
        v70 = *(v57 + 16);
        sub_1ADDF6EEC();
        sub_1ADDCC35C(v68, v69);
        sub_1ADDCC35C(v82, v83);
        sub_1ADDCC35C(v63, v62);
        sub_1ADDCC35C(v87, v64);

        v34 = v97;
        v96[4] = v118;
        v96[5] = v119;
        v96[6] = v120;
        v96[7] = v121;
        v96[0] = v115;
        v96[1] = v116[0];
        v96[2] = v116[1];
        v96[3] = v117;
        sub_1ADE6AF00(v96);
        v71 = v89;
        sub_1AE1F88EC(v89, v80, "encodeDocument");

        (*(v94 + 8))(v88, v127);
        (*(v90 + 8))(v71, v91);
        return v34;
      }

      sub_1ADDCC35C(v85, v86);
      sub_1ADDCC35C(v87, v92);

      sub_1ADDCC35C(v84, v55);
      sub_1ADDCC35C(v53, v54);
      v102 = v118;
      v103 = v119;
      v104 = v120;
      v105 = v121;
      v99 = v115;
      v100[0] = v116[0];
      v100[1] = v116[1];
      v101 = v117;
      sub_1ADE6AF00(&v99);
      v34 = v89;
      sub_1AE1F88EC(v89, v80, "encodeDocument");

      v35 = v127;
      v24 = v94;
      v13 = v88;
    }
  }

  (*(v24 + 8))(v13, v35);
  (*(v90 + 8))(v34, v91);
  return v34;
}