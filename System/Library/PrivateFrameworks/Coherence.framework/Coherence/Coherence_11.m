uint64_t sub_1ADEB58D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*(a3 + 16) || (v6 = sub_1ADDDE7CC(a1, a2), (v7 & 1) == 0) || (v8 = *(*(a3 + 56) + 16 * v6), (result = ) == 0))
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1ADEB5924(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = type metadata accessor for PartiallyOrderedReferenceMap();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = *a3;
  v18 = a3[1];
  v62 = v17;
  v19 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v61 = v20;
  if (!a2)
  {
    swift_beginAccess();
    sub_1ADECD9E8(v4 + v19, v14, type metadata accessor for PartiallyOrderedReferenceMap);
    v25 = &v14[*(v8 + 20)];
    v26 = *(v25 + 1);
    v27 = *(v25 + 2);
    sub_1ADDDF7A8(v16, v15, *v25, &v79);
    sub_1ADDD872C(v14, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v80)
    {
      v28 = *(&v79 + 1);
      sub_1ADDDC21C(v79, *(&v79 + 1), v80);
      if (!v28)
      {
        goto LABEL_9;
      }

      return 2;
    }

LABEL_30:
    result = sub_1AE23DC5C();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v87 = v16;
  v88 = v15;
  sub_1ADDD86D8(v16, v15);
  v22 = sub_1ADDDD4A0(&v79, &v87);
  if (!*(v21 + 16))
  {
LABEL_29:
    (v22)(&v79, 0);
    sub_1ADDCC35C(v87, v88);
    swift_endAccess();
    goto LABEL_30;
  }

  v23 = *(v21 + 8);
  v24 = v23 + a2;
  if (__OFADD__(v23, a2))
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v21 + 8) = v24;
  if (v24 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (v22)(&v79, 0);
  swift_endAccess();
  sub_1ADDCC35C(v87, v88);
  if (v24)
  {
    return 2;
  }

LABEL_9:
  sub_1ADDD86D8(v16, v15);
  if (v15 >> 60 == 15)
  {
    v29 = v62;
    sub_1ADDE0F78(v62, v18);
    if (v18 >> 60 == 15)
    {
      sub_1ADDE158C(v16, v15);
      return 2;
    }
  }

  else
  {
    v29 = v62;
    if (v18 >> 60 != 15)
    {
      sub_1ADDD86D8(v16, v15);
      sub_1ADDE0F78(v29, v18);
      sub_1ADDE0F78(v16, v15);
      sub_1ADDE0F78(v29, v18);
      v43 = sub_1ADDD6F8C(v16, v15, v29, v18);
      sub_1ADDE158C(v29, v18);
      sub_1ADDE158C(v29, v18);
      sub_1ADDCC35C(v16, v15);
      sub_1ADDCC35C(v16, v15);
      sub_1ADDE158C(v16, v15);
      if (v43)
      {
        return 2;
      }

      goto LABEL_15;
    }

    sub_1ADDE0F78(v62, v18);
    sub_1ADDE0F78(v16, v15);
    sub_1ADDCC35C(v16, v15);
  }

  sub_1ADDE158C(v16, v15);
  sub_1ADDE158C(v29, v18);
LABEL_15:
  v30 = v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v30, v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v31 = v61;
  v32 = &v11[*(v61 + 20)];
  v33 = *(v32 + 1);
  v34 = *(v32 + 2);
  sub_1ADDDF7A8(v16, v15, *v32, &v87);
  sub_1ADDD872C(v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v35 = v89;
  if (v89)
  {
    v37 = v90;
    v36 = v91;
    v59 = v30;
    v38 = v31;
    v39 = v87;
    v40 = v88;

    v41 = v39;
    v31 = v38;
    v42 = v40;
    v62 = v37;
    v30 = v59;
    v60 = v36;
    sub_1ADDDC21C(v41, v42, v35);
  }

  else
  {
    v62 = 0;
    v60 = 0;
  }

  swift_beginAccess();
  v45 = v30 + *(v31 + 20);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v46 = sub_1AE23E34C();
  sub_1AE036CC4(0, v16, v15, v46, &v71);
  v83 = v75;
  v84 = v76;
  v85 = v77;
  v86 = v78;
  v79 = v71;
  v80 = v72;
  v81 = v73;
  v82 = v74;
  if (sub_1ADE23F54(&v79) == 1)
  {
    v67 = v75;
    v68 = v76;
    v69 = v77;
    v70 = v78;
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    sub_1ADDCEDE0(&v63, &qword_1EB5BA978, &qword_1AE251DD0);
  }

  else
  {
    v47 = v31;
    v49 = *(&v71 + 1);
    v48 = v71;
    v58[2] = v73;
    v59 = v72;
    v58[1] = *(&v73 + 1);
    v50 = v75;
    v51 = v76;
    v52 = v77;
    ++*(v45 + 16);
    sub_1ADECD7D0(v50, *(&v50 + 1), v51, *(&v51 + 1), v52);
    v53 = v49;
    v31 = v47;
    sub_1ADDCC35C(v48, v53);
  }

  v54 = v30 + *(v31 + 28);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v55 = sub_1AE23E34C();
  sub_1ADDE0898(0, v16, v15, v55, &v63);
  v56 = v63;
  v57 = v64;
  if (*(&v63 + 1) >> 60 == 15)
  {
    sub_1ADECD780(v63, *(&v63 + 1), v64, *(&v64 + 1));
  }

  else
  {
    ++*(v54 + 16);
    sub_1ADDE158C(v57, *(&v57 + 1));
    sub_1ADDCC35C(v56, *(&v56 + 1));
  }

  *&v63 = v16;
  *(&v63 + 1) = v15;
  sub_1ADDE0708(&v63, 1);
  swift_endAccess();
  return v62;
}

uint64_t sub_1ADEB5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = *v5;
  if (!v10[2] || (v13 = sub_1ADDDE7CC(a1, a2), (v14 & 1) == 0) || (v15 = (v10[7] + 16 * v13), v16 = *v15, v17 = v15[1], !))
  {
    if (a4 <= 0)
    {
      if (!a4)
      {
        return 0;
      }
    }

    else if (a3 && (a5 & 1) == 0)
    {
      v23 = *(a3 + 16);
      v22 = *(a3 + 24);
      sub_1ADDD86D8(v23, v22);

      v24 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27[0] = *v6;
      sub_1ADEBF66C(a3, a4, v23, v22, isUniquelyReferenced_nonNull_native);
      sub_1ADDCC35C(v23, v22);
      result = 0;
      *v6 = v27[0];
      return result;
    }

    goto LABEL_19;
  }

  v18 = __OFADD__(v17, a4);
  v19 = v17 + a4;
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v19 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1AE23DC5C();
    __break(1u);
    return result;
  }

  if (v19)
  {
    v21 = sub_1ADF5EFC4(v27, a1, a2);
    if (*v20)
    {
      v20[1] = v19;
    }

    (v21)(v27, 0);
    return 0;
  }

  sub_1ADEBEF54(a1, a2, v27);

  return 1;
}

uint64_t sub_1ADEB61F0(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v1 + v10, v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v11 = &v7[*(v4 + 28)];
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  sub_1ADDDF7A8(v9, v8, *v11, v27);
  sub_1ADDD872C(v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v14 = v28;
  if (!v28)
  {
    return 0;
  }

  v15 = v27[0];
  v16 = v27[1];

  sub_1ADDDC21C(v17, v16, v14);
  if (v15)
  {
    v18 = type metadata accessor for RetainVisitor();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v22 = sub_1ADDD9ECC(v20);
    *(v19 + 16) = v21;
    *(v19 + 24) = v22;
    v29 = v18;
    v30 = &off_1F23C4550;
    v27[0] = v19;
    v23 = *(*v15 + 128);

    v23(v27);

    __swift_destroy_boxed_opaque_existential_1(v27);
    swift_beginAccess();
    v15 = *(v19 + 16);
    v24 = *(v19 + 24);
  }

  return v15;
}

uint64_t sub_1ADEB6404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for PartiallyOrderedReferenceMap();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v16 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v16, v13, type metadata accessor for PartiallyOrderedReferenceMap);
  v17 = &v13[*(v10 + 28)];
  v18 = *(v17 + 1);
  v19 = *(v17 + 2);
  sub_1ADDDF7A8(v15, v14, *v17, v26);
  result = sub_1ADDD872C(v13, type metadata accessor for PartiallyOrderedReferenceMap);
  v21 = v27;
  if (v27)
  {
    v22 = v26[0];
    v23 = v26[1];

    result = sub_1ADDDC21C(v24, v23, v21);
    if (v22)
    {
      v26[0] = v22;
      sub_1AE2131AC(a2, v26, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1ADEB6578(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, __int128 *a6)
{
  v7 = v6;
  v41 = a3;
  v43 = a2;
  v12 = type metadata accessor for PartiallyOrderedReferenceMap();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = *a4;
  v20 = a4[1];
  v21 = *a5;
  v45 = v19;
  v46 = v20;
  v52 = v21;
  v51 = *a6;
  v22 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1AE0323AC(&v45, &v52, &v51, &v53);
  swift_endAccess();
  v23 = v54;
  *a1 = v53;
  *(a1 + 2) = v23;
  sub_1ADECD9E8(v7 + v22, v18, type metadata accessor for PartiallyOrderedReferenceMap);
  v44 = v12;
  v24 = &v18[*(v12 + 20)];
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = *(v24 + 2);
  v42 = v19;
  sub_1ADDDF7A8(v19, v20, v25, v49);
  result = sub_1ADDD872C(v18, type metadata accessor for PartiallyOrderedReferenceMap);
  v29 = v50;
  if (!v50)
  {
    __break(1u);
    goto LABEL_6;
  }

  v30 = v49[0];
  v31 = v49[1];

  result = sub_1ADDDC21C(v32, v31, v29);
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *v43 = v30;
  sub_1ADECD9E8(v7 + v22, v15, type metadata accessor for PartiallyOrderedReferenceMap);
  v33 = &v15[*(v44 + 20)];
  v34 = *(v33 + 1);
  v35 = *(v33 + 2);
  sub_1ADDDF7A8(v42, v20, *v33, &v45);
  result = sub_1ADDD872C(v15, type metadata accessor for PartiallyOrderedReferenceMap);
  v36 = v47;
  if (v47)
  {
    v37 = v48;
    v39 = v45;
    v38 = v46;

    result = sub_1ADDDC21C(v39, v38, v36);
    v40 = v41;
    *v41 = v36;
    v40[1] = v37;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1ADEB6804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v2 + v12, v9, type metadata accessor for PartiallyOrderedReferenceMap);
  v13 = &v9[*(v6 + 28)];
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  sub_1ADDDF7A8(v11, v10, *v13, v22);
  result = sub_1ADDD872C(v9, type metadata accessor for PartiallyOrderedReferenceMap);
  v17 = v23;
  if (v23)
  {
    v18 = v22[0];
    v19 = v22[1];

    result = sub_1ADDDC21C(v20, v19, v17);
  }

  else
  {
    v18 = 0;
  }

  *a2 = v18;
  return result;
}

uint64_t sub_1ADEB6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  result = swift_beginAccess();
  v9 = *(v3 + v7);
  if (*(v9 + 16) && (result = sub_1ADDDE7CC(a1, a2), (v10 & 1) != 0) && (v11 = *(*(v9 + 56) + 16 * result), result = , v11))
  {

    swift_endAccess();

    *a3 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADEB6A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (*(v6 + 16))
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    sub_1ADDD86D8(v7, v8);
    v9 = sub_1ADDDE7CC(v7, v8);
    if ((v10 & 1) == 0)
    {
LABEL_5:
      sub_1ADDCC35C(v7, v8);
      goto LABEL_6;
    }

    v11 = *(*(v6 + 56) + 16 * v9);

    sub_1ADDCC35C(v7, v8);

    if (v11)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

LABEL_6:
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_1ADDD86D8(v12, v13);

  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_1ADEBF66C(a1, a2, v12, v13, isUniquelyReferenced_nonNull_native);
  result = sub_1ADDCC35C(v12, v13);
  *v3 = v17;
  return result;
}

uint64_t sub_1ADEB6B04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for PartiallyOrderedReferenceMap();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v5 + v16, v15, type metadata accessor for PartiallyOrderedReferenceMap);
  v17 = &v15[*(v12 + 28)];
  v18 = *(v17 + 1);
  v19 = *(v17 + 2);
  sub_1ADDDF7A8(a1, a2, *v17, v27);
  result = sub_1ADDD872C(v15, type metadata accessor for PartiallyOrderedReferenceMap);
  v21 = v28;
  if (!v28)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v22 = v27[0];
  v23 = v27[1];
  v24 = v29;
  if (!a3)
  {
    if (v27[0])
    {

      result = sub_1ADDDC21C(v22, v23, v21);
      *a5 = v22;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (!v27[0])
  {
    __break(1u);
    goto LABEL_11;
  }

  a4(v27, a3, v22);

  v25 = v27[0];

  result = sub_1ADDDC21C(v22, v23, v21);
  *a5 = v25;
LABEL_8:
  a5[1] = v21;
  a5[2] = v24;
  return result;
}

uint64_t sub_1ADEB6CEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v37 = a4;
  v38 = a2;
  v9 = sub_1AE23D7CC();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - v11;
  v41 = *(a3 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PartiallyOrderedReferenceMap();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v22 = a1[1];
  v24 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v5 + v24, v21, type metadata accessor for PartiallyOrderedReferenceMap);
  v25 = &v21[*(v18 + 28)];
  v26 = *(v25 + 1);
  v27 = *(v25 + 2);
  sub_1ADDDF7A8(v23, v22, *v25, v43);
  result = sub_1ADDD872C(v21, type metadata accessor for PartiallyOrderedReferenceMap);
  v29 = v44;
  if (!v44)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v30 = v43[0];
  v31 = v45;
  v36[2] = v46;
  v36[0] = v43[1];
  v36[1] = v47;
  v32 = v39;
  v33 = v40;
  (*(v39 + 16))(v12, v38, v40);
  v34 = v41;
  if ((*(v41 + 48))(v12, 1, a3) != 1)
  {
    result = (*(v34 + 32))(v16, v12, a3);
    if (v30)
    {
      v42 = v30;

      sub_1AE202E2C(a3, v37, v43);

      (*(v34 + 8))(v16, a3);
      v35 = v43[0];

      result = sub_1ADDDC21C(v30, v36[0], v29);
      *a5 = v35;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  result = (*(v32 + 8))(v12, v33);
  if (!v30)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1ADDDC21C(v30, v36[0], v29);
  *a5 = v30;
LABEL_8:
  a5[1] = v29;
  a5[2] = v31;
  return result;
}

uint64_t sub_1ADEB7058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v11[0] = a2;
  if ((*(*a1 + 120))(v11))
  {
    *a3 = a2;
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v7 = sub_1ADDCE2E4(0, v11);
    sub_1ADDCEDE0(v11, &qword_1EB5B9DB0, &qword_1AE240B80);
    LOBYTE(v11[0]) = 2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v8 = v7;
    CREncoder.init(_:version:fileSignature:)(v8, v11, 0, 0xF000000000000000);
    (*(*a2 + 184))();
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v10 = sub_1ADE72118(v9);

    (*(*a1 + 112))(v10);
  }
}

uint64_t sub_1ADEB7364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == *a2)
  {
    *a3 = a2;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v6 = sub_1ADDCE2E4(0, v10);
    sub_1ADDCEDE0(v10, &qword_1EB5B9DB0, &qword_1AE240B80);
    LOBYTE(v10[0]) = 2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v7 = v6;
    CREncoder.init(_:version:fileSignature:)(v7, v10, 0, 0xF000000000000000);
    (*(*a2 + 184))();
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v9 = sub_1ADE72118(v8);

    (*(*a1 + 176))(v9);
  }
}

uint64_t sub_1ADEB7670@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1ADEB6B04(*(a1 + 16), *(a1 + 24), a1, sub_1ADEB7058, &v14);
  v4 = v14;
  if (v14)
  {
    v6 = *(&v14 + 1);
    v5 = v15;

    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v9 = sub_1ADDD9ECC(v7);
    sub_1ADDDA5BC(v7);
    sub_1ADDD9ECC(v7);

    swift_bridgeObjectRelease_n();
    v14 = v4;
    v15 = v6;
    v16 = v5;
    v17 = v8;
    v18 = v9;
    v10 = *(a1 + 24);
    v12 = *(a1 + 16);
    v13 = v10;
    swift_beginAccess();
    sub_1ADDD86D8(v12, v10);
    sub_1ADDD82B0(&v14, &v12);
    swift_endAccess();

    sub_1ADDCC35C(v12, v13);

    *a2 = v6;
    a2[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADEB780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = *(a1 + 24);
  v23 = *(a1 + 16);
  v24 = v9;
  v25 = a1;
  v10 = *(a3 + 48);
  sub_1ADDD86D8(v23, v9);
  v11 = type metadata accessor for AnyReference();
  v10(&v27, &v23, &v25, v11, &off_1F23C1040, a2, a3);
  result = sub_1ADDCC35C(v23, v24);
  if (!v4)
  {
    v32 = a4;
    v13 = v27;
    if (v27)
    {
      v14 = *(&v27 + 1);
      v15 = v28;

      v22 = v14;

      v16 = MEMORY[0x1E69E7CC0];
      v17 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v18 = sub_1ADDD9ECC(v16);
      sub_1ADDDA5BC(v16);
      sub_1ADDD9ECC(v16);

      swift_bridgeObjectRelease_n();
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v30 = v17;
      v31 = v18;
      v20 = *(a1 + 24);
      v25 = *(a1 + 16);
      v19 = v25;
      v26 = v20;
      swift_beginAccess();
      sub_1ADDD86D8(v19, v20);
      sub_1ADDD82B0(&v27, &v25);
      swift_endAccess();

      sub_1ADDCC35C(v25, v26);

      v21 = v32;
      *v32 = v22;
      v21[1] = v15;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1ADEB7A00(uint64_t a1)
{
  v2 = v1;
  v101 = sub_1AE23BFEC();
  v100 = *(v101 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PartiallyOrderedReferenceMap();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v97 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v97 - v14;
  v131 = MEMORY[0x1E69E7CD0];
  v15 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v98 = v15;
  v16 = *v15;
  v17 = v15[1];
  v125 = v16;
  v126 = v17;

  v18 = sub_1ADEB86C4(&v125);

  v118 = a1;
  v19 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v20 = *v19;
  v21 = *(v19 + 8);
  v97 = v19;
  v125 = v20;
  v126 = v21;

  v117 = v2;
  v103 = sub_1ADEB86C4(&v125);

  v102 = v18;
  v22 = *(v18 + 16);
  v116 = v6;
  if (v22)
  {
    v23 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    swift_beginAccess();
    v24 = (v102 + 40);
    v111 = v23;
    while (1)
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v27 = v112;
      sub_1ADECD9E8(v118 + v23, v112, type metadata accessor for PartiallyOrderedReferenceMap);
      v28 = v27 + *(v6 + 20);
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      sub_1ADDD86D8(v25, v26);
      sub_1ADDDF7A8(v25, v26, v29, &v125);
      sub_1ADDD872C(v27, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v127)
      {
        break;
      }

      sub_1ADDCC35C(v25, v26);
LABEL_4:
      v24 += 2;
      if (!--v22)
      {
        goto LABEL_16;
      }
    }

    v114 = v22;
    v115 = v127;
    v32 = v23;
    v34 = v125;
    v33 = v126;
    v35 = v6;
    v36 = v128;
    v37 = v130;
    v38 = v106;
    sub_1ADECD9E8(v117 + v32, v106, type metadata accessor for PartiallyOrderedReferenceMap);
    v39 = v38 + *(v35 + 20);
    v40 = *(v39 + 8);
    v41 = *(v39 + 16);
    sub_1ADDDF7A8(v25, v26, *v39, &v125);
    sub_1ADDD872C(v38, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v127)
    {
      v108 = v34;
      v109 = v33;
      v110 = v37;
      sub_1ADDDC21C(v125, v126, v127);
      swift_beginAccess();
      sub_1ADDD86D8(v25, v26);
      v42 = sub_1ADDE0110(v124, v25, v26);
      swift_endAccess();
      sub_1ADDCC35C(v124[0], v124[1]);
      if (v42)
      {
        swift_beginAccess();
        v122 = v25;
        v123 = v26;
        sub_1ADDD86D8(v25, v26);
        v44 = sub_1ADDE13D8(&v125, &v122);
        v45 = v109;
        v46 = v108;
        if (v43[2])
        {
          v105 = *v43;
          *v43 = v108;
          v104 = v43[3];
          v47 = v115;
          v43[2] = v115;
          v43[3] = v36;

          v44(&v125, 0);
          swift_endAccess();

          sub_1ADDDC21C(v46, v45, v47);
          sub_1ADDCC35C(v122, v123);
LABEL_15:
          sub_1ADDCC35C(v25, v26);
          v6 = v116;
          v23 = v111;
          v22 = v114;
          goto LABEL_4;
        }

        v44(&v125, 0);
        sub_1ADDCC35C(v122, v123);
        swift_endAccess();
        v48 = v46;
        v49 = v45;
      }

      else
      {
        v48 = v108;
        v49 = v109;
      }

      v50 = v115;
    }

    else
    {
      v48 = v34;
      v49 = v33;
      v50 = v115;
    }

    sub_1ADDDC21C(v48, v49, v50);
    goto LABEL_15;
  }

LABEL_16:

  v51 = *(v103 + 16);
  if (v51)
  {
    v52 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    swift_beginAccess();
    v53 = (v103 + 40);
    v109 = v52;
    do
    {
      v55 = *(v53 - 1);
      v54 = *v53;
      v56 = v113;
      sub_1ADECD9E8(v118 + v52, v113, type metadata accessor for PartiallyOrderedReferenceMap);
      v57 = v56 + *(v6 + 20);
      v58 = v52;
      v59 = *v57;
      v60 = *(v57 + 8);
      v61 = *(v57 + 16);
      sub_1ADDD86D8(v55, v54);
      sub_1ADDDF7A8(v55, v54, v59, &v125);
      sub_1ADDD872C(v56, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v127)
      {
        v114 = v51;
        v115 = v127;
        v62 = v6;
        v64 = v125;
        v63 = v126;
        v65 = v128;
        v66 = v129;
        v67 = v130;
        v68 = v117 + v58;
        v69 = v107;
        sub_1ADECD9E8(v68, v107, type metadata accessor for PartiallyOrderedReferenceMap);
        v70 = v69 + *(v62 + 20);
        v71 = *(v70 + 8);
        v72 = *(v70 + 16);
        sub_1ADDDF7A8(v55, v54, *v70, &v125);
        sub_1ADDD872C(v69, type metadata accessor for PartiallyOrderedReferenceMap);
        if (v127)
        {
          v110 = v63;
          v73 = v65;
          v111 = v66;
          v112 = v67;
          sub_1ADDDC21C(v125, v126, v127);
          swift_beginAccess();
          sub_1ADDD86D8(v55, v54);
          v74 = sub_1ADDE0110(v121, v55, v54);
          swift_endAccess();
          sub_1ADDCC35C(v121[0], v121[1]);
          if (v74)
          {
            v75 = v109;
            swift_beginAccess();
            v119 = v55;
            v120 = v54;
            sub_1ADDD86D8(v55, v54);
            v52 = v75;
            v77 = sub_1ADDE13D8(&v125, &v119);
            v78 = v73;
            v79 = v64;
            v51 = v114;
            if (v76[2])
            {
              v108 = *v76;
              *v76 = v79;
              v106 = v76[3];
              v80 = v115;
              v76[2] = v115;
              v76[3] = v78;

              v77(&v125, 0);
              swift_endAccess();

              sub_1ADDDC21C(v79, v110, v80);
              sub_1ADDCC35C(v119, v120);
            }

            else
            {
              v77(&v125, 0);
              sub_1ADDCC35C(v119, v120);
              swift_endAccess();
              sub_1ADDDC21C(v79, v110, v115);
            }

            sub_1ADDCC35C(v55, v54);
            v6 = v116;
            goto LABEL_19;
          }

          v81 = v64;
          v82 = v110;
          v83 = v115;
        }

        else
        {
          v81 = v64;
          v82 = v63;
          v83 = v115;
        }

        sub_1ADDDC21C(v81, v82, v83);
        sub_1ADDCC35C(v55, v54);
        v6 = v116;
        v52 = v109;
        v51 = v114;
      }

      else
      {
        sub_1ADDCC35C(v55, v54);
        v52 = v58;
      }

LABEL_19:
      v53 += 2;
      --v51;
    }

    while (v51);
  }

  swift_beginAccess();
  v84 = v131;

  v86 = v117;
  v87 = sub_1ADEB89D8(v85, v118);

  v88 = v97[1];
  v89 = v98;
  v90 = *v98;
  v91 = v98[1];
  *v98 = *v97;
  v89[1] = v88;

  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  v92 = v99;
  sub_1AE23BFBC();
  v93 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  (*(v100 + 40))(v86 + v93, v92, v101);
  swift_endAccess();
  swift_beginAccess();

  sub_1AE00F014(v94);
  sub_1AE00F014(v87);
  swift_endAccess();
  v95 = *(v84 + 16);

  return v95 != 0;
}

uint64_t sub_1ADEB86C4(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v1 + v10, v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v11 = *(v4 + 32);
  v12 = &v7[*(v4 + 28)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  v16 = *&v7[v11];

  v18 = sub_1ADEBE8DC(v17);
  sub_1ADDD872C(v7, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADECD850(v45);
  *(&v49[5] + 8) = v45[5];
  *(&v49[6] + 8) = v45[6];
  *(&v49[7] + 8) = v46[0];
  *(&v49[8] + 3) = *(v46 + 11);
  *(&v49[1] + 8) = v45[1];
  *(&v49[2] + 8) = v45[2];
  *(&v49[3] + 8) = v45[3];
  *(&v49[4] + 8) = v45[4];
  *(v49 + 8) = v45[0];
  *&v47 = v13;
  *(&v47 + 1) = v14;
  *&v48 = v15;
  *(&v48 + 1) = v18;
  *&v49[0] = 0;
  *(&v49[9] + 1) = v8;
  *&v50 = v9;
  BYTE8(v50) = 0;
  v51 = 0;
  v44 = MEMORY[0x1E69E7CC0];

  sub_1ADE6F2E4(0, 0, 0);
  v19 = v44;
  v40 = v49[8];
  v41 = v49[9];
  v42 = v50;
  v43 = v51;
  v36 = v49[4];
  v37 = v49[5];
  v38 = v49[6];
  v39 = v49[7];
  v32 = v49[0];
  v33 = v49[1];
  v34 = v49[2];
  v35 = v49[3];
  v30 = v47;
  v31 = v48;
  sub_1ADECD86C(&v47, v28);
  while (1)
  {
    sub_1AE03163C(v25);
    if (!v26)
    {
      break;
    }

    v20 = v25[0];

    v44 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1ADE6F2E4((v21 > 1), v22 + 1, 1);
      v19 = v44;
    }

    *(v19 + 16) = v22 + 1;
    *(v19 + 16 * v22 + 32) = v20;
  }

  sub_1ADECD8C8(&v47);
  v28[10] = v40;
  v28[11] = v41;
  v28[12] = v42;
  v29 = v43;
  v28[6] = v36;
  v28[7] = v37;
  v28[8] = v38;
  v28[9] = v39;
  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v28[5] = v35;
  v28[0] = v30;
  v28[1] = v31;
  sub_1ADECD8C8(v28);
  v24[0] = v25[0];
  v24[1] = v25[1];
  v24[2] = v26;
  v24[3] = v27;
  sub_1ADDCEDE0(v24, &qword_1EB5BA980, &qword_1AE245630);
  return v19;
}

uint64_t sub_1ADEB89D8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v113 = a2;
  v118 = type metadata accessor for PartiallyOrderedReferenceMap();
  v7 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v112 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a1;
  v126 = MEMORY[0x1E69E7CD0];
  v9 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v10 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v107[0] = v5;
  if (!v10)
  {
    v55 = a1;
    goto LABEL_30;
  }

  v111 = v9;
  v110 = v5 + v9;
  while (2)
  {
    v16 = v4;
    v17 = sub_1ADECBAD4(a1, v5);

    if (v16)
    {
LABEL_31:
    }

    v109 = 0;
    v108 = v17;
    if ((v17 & 0xC000000000000001) != 0)
    {

      sub_1AE23D93C();
      type metadata accessor for AnyReference();
      sub_1ADDE5F54(&qword_1EB5B9508, type metadata accessor for AnyReference);
      sub_1AE23D36C();
      v17 = v127;
      v18 = v128;
      v19 = v129;
      v20 = v130;
      v21 = v131;
    }

    else
    {
      v22 = -1 << *(v17 + 32);
      v18 = v17 + 56;
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v17 + 56);

      v20 = 0;
    }

    v107[1] = v19;
    v25 = (v19 + 64) >> 6;
    v116 = v25;
    v115 = v18;
    v114 = v17;
    while (v17 < 0)
    {
      v33 = sub_1AE23D9AC();
      if (!v33)
      {
        goto LABEL_3;
      }

      v121 = v33;
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      v32 = v122;
      v29 = v20;
      v30 = v21;
      if (!v122)
      {
        goto LABEL_3;
      }

LABEL_23:
      v117 = v30;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v119 = v32;
      v36 = v113;
      swift_beginAccess();
      v37 = v36 + v9;
      v38 = v112;
      sub_1ADECD9E8(v37, v112, type metadata accessor for PartiallyOrderedReferenceMap);
      v39 = v38 + *(v118 + 20);
      v40 = *(v39 + 8);
      v41 = *(v39 + 16);
      sub_1ADDDF7A8(v35, v34, *v39, &v122);
      sub_1ADDD872C(v38, type metadata accessor for PartiallyOrderedReferenceMap);
      v42 = v124;
      if (!v124)
      {
        goto LABEL_65;
      }

      v43 = v122;
      if (!v122)
      {
        goto LABEL_66;
      }

      v44 = v123;
      v45 = v125;

      v46 = v119;
      sub_1ADEB7058(v119, v43, &v122);

      v47 = v122;

      sub_1ADDDC21C(v43, v44, v42);

      v48 = MEMORY[0x1E69E7CC0];
      v49 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v50 = sub_1ADDD9ECC(v48);
      sub_1ADDDA5BC(v48);
      sub_1ADDD9ECC(v48);

      swift_bridgeObjectRelease_n();
      v132 = v47;
      *&v133 = v42;
      *(&v133 + 1) = v45;
      v134 = v49;
      v135 = v50;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      v53 = v110;
      swift_beginAccess();
      v54 = v53 + *(v118 + 20);
      sub_1ADDD86D8(v52, v51);
      sub_1ADDDA6BC(&v132, &v122);
      sub_1ADDDA718(&v132, v52, v51);
      ++*(v54 + 16);
      v136 = v133;
      if (*(*(&v133 + 1) + 16))
      {
        v26 = *(v118 + 28);
        sub_1ADDD86D8(v52, v51);
        sub_1ADDD7B0C(&v136, &v122);
        sub_1ADDDB0F8(&v122, v52, v51);
        sub_1ADDCC35C(v122, v123);
      }

      else
      {
        sub_1ADDD7B0C(&v136, &v122);
      }

      v18 = v115;
      v17 = v114;
      v122 = v52;
      v123 = v51;
      v120 = v136;
      sub_1ADDDAD3C(&v122, &v120);

      swift_endAccess();

      sub_1ADDCC35C(v52, v51);
      sub_1ADECDB64(&v132);
      v20 = v29;
      v21 = v117;
      v9 = v111;
      v25 = v116;
    }

    v27 = v20;
    v28 = v21;
    v29 = v20;
    if (!v21)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v25)
        {
          goto LABEL_3;
        }

        v28 = *(v18 + 8 * v29);
        ++v27;
        if (v28)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_19:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v17 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

    if (v32)
    {
      goto LABEL_23;
    }

LABEL_3:
    sub_1ADDDCE74();
    v11 = v108;
    v12 = v109;
    v13 = sub_1ADF98C9C(v108);
    v4 = v12;
    a1 = sub_1ADF7E6A4(v13);

    sub_1AE00F014(v14);
    v15 = sub_1ADF98FF0(v11);

    sub_1AE017714(v15);

    v5 = v107[0];
    if (*(a1 + 16))
    {
      continue;
    }

    break;
  }

  v55 = v137;
LABEL_30:

  v56 = sub_1ADEBD464(v55);
  v109 = v4;
  if (v4)
  {
    goto LABEL_31;
  }

  v58 = v56;

  v59 = 0;
  v60 = v58 + 56;
  v61 = 1 << *(v58 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v58 + 56);
  v119 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v64 = (v61 + 63) >> 6;
  v117 = v58 + 56;
  v116 = v64;
  v118 = v58;
  while (v63)
  {
LABEL_42:
    v68 = *(*(v58 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v63)))));
    v69 = *(v68 + 16);
    v70 = *(v68 + 24);
    v71 = v113;
    v72 = v119;
    swift_beginAccess();
    v73 = *(v71 + v72);
    v74 = *(v73 + 16);

    sub_1ADDD86D8(v69, v70);
    if (!v74)
    {
      goto LABEL_67;
    }

    v75 = sub_1ADDDE7CC(v69, v70);
    if ((v76 & 1) == 0)
    {
      goto LABEL_67;
    }

    v77 = *(*(v73 + 56) + 16 * v75);

    if (!v77)
    {
      goto LABEL_67;
    }

    swift_endAccess();

    sub_1ADDCC35C(v69, v70);
    v78 = v119;
    swift_beginAccess();
    v79 = *(v5 + v78);
    if (*(v79 + 16))
    {
      v80 = *(v77 + 16);
      v81 = *(v77 + 24);
      sub_1ADDD86D8(v80, v81);
      v82 = sub_1ADDDE7CC(v80, v81);
      if (v83)
      {
        v84 = *(*(v79 + 56) + 16 * v82);

        sub_1ADDCC35C(v80, v81);

        if (v84)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_1ADDCC35C(v80, v81);
      }
    }

    v86 = *(v77 + 16);
    v85 = *(v77 + 24);

    sub_1ADDD86D8(v86, v85);
    v87 = v119;
    v88 = *(v5 + v119);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v5;
    v91 = isUniquelyReferenced_nonNull_native;
    v121 = *(v90 + v87);
    v92 = v121;
    *(v90 + v87) = 0x8000000000000000;
    v93 = sub_1ADDDE7CC(v86, v85);
    v95 = v92[2];
    v96 = (v94 & 1) == 0;
    v97 = __OFADD__(v95, v96);
    v98 = v95 + v96;
    if (v97)
    {
      goto LABEL_63;
    }

    v99 = v94;
    if (v92[3] >= v98)
    {
      if ((v91 & 1) == 0)
      {
        v106 = v93;
        sub_1ADF703A0();
        v93 = v106;
      }
    }

    else
    {
      sub_1ADF6AF70(v98, v91);
      v93 = sub_1ADDDE7CC(v86, v85);
      if ((v99 & 1) != (v100 & 1))
      {
        goto LABEL_68;
      }
    }

    v5 = v107[0];
    v101 = v121;
    if (v99)
    {
      v65 = (v121[7] + 16 * v93);
      v66 = *v65;
      *v65 = v77;
      v65[1] = 0;

      sub_1ADDCC35C(v86, v85);
    }

    else
    {
      v121[(v93 >> 6) + 8] |= 1 << v93;
      v102 = (v101[6] + 16 * v93);
      *v102 = v86;
      v102[1] = v85;
      v103 = (v101[7] + 16 * v93);
      *v103 = v77;
      v103[1] = 0;
      v104 = v101[2];
      v97 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v97)
      {
        goto LABEL_64;
      }

      v101[2] = v105;
    }

    v63 &= v63 - 1;
    *(v5 + v119) = v101;
    swift_endAccess();

    v58 = v118;
    v60 = v117;
    v64 = v116;
  }

  while (1)
  {
    v67 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v67 >= v64)
    {

      return v126;
    }

    v63 = *(v60 + 8 * v67);
    ++v59;
    if (v63)
    {
      v59 = v67;
      goto LABEL_42;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t *sub_1ADEB9440(uint64_t *result)
{
  v2 = *result;
  if (*result)
  {
    v45 = result[1];
    v3 = v2 + 64;
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v50 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    v7 = (v4 + 63) >> 6;
    v47 = *result;

    v8 = 0;
    v48 = v7;
    v49 = v3;
    if (!v6)
    {
      goto LABEL_7;
    }

    do
    {
      while (1)
      {
        v11 = v8;
LABEL_17:
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v47 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1ADDE4E28(*(v47 + 56) + 32 * v13, v53);
        *&v54 = v15;
        *(&v54 + 1) = v16;
        sub_1ADDEE390(v53, &v55);
        sub_1ADDD86D8(v15, v16);
LABEL_18:
        v57 = v54;
        v58[0] = v55;
        v58[1] = v56;
        if (!*(&v56 + 1))
        {

          v31 = 1 << *(v45 + 32);
          v32 = -1;
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          v33 = v32 & *(v45 + 64);
          v34 = (v31 + 63) >> 6;

          for (i = 0; v33; result = )
          {
            v36 = i;
LABEL_36:
            v37 = __clz(__rbit64(v33));
            v33 &= v33 - 1;
            v38 = v37 | (v36 << 6);
            v39 = *(v45 + 48);
            *&v53[0] = *(*(v45 + 56) + 8 * v38);
            v54 = *(v39 + 16 * v38);
            v40 = *(&v54 + 1);
            v41 = v54;
            sub_1ADDD86D8(v54, *(&v54 + 1));
            sub_1ADDD86D8(v41, v40);

            sub_1ADEAFE28(v53, &v54, &v57);
            sub_1ADDCC35C(v41, v40);
            sub_1ADDE158C(v41, v40);
            sub_1ADDCC35C(v57, *(&v57 + 1));
          }

          while (1)
          {
            v36 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_41;
            }

            if (v36 >= v34)
            {

              v42 = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
              v43 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
              swift_beginAccess();
              v44 = *(v46 + v43);
              *(v46 + v43) = v42;
            }

            v33 = *(v45 + 64 + 8 * v36);
            ++i;
            if (v33)
            {
              i = v36;
              goto LABEL_36;
            }
          }
        }

        v17 = v57;
        sub_1ADDEE390(v58, v53);
        swift_beginAccess();
        v18 = v50 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20);
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        sub_1ADDD86D8(v17, *(&v17 + 1));
        sub_1ADDDF7A8(v17, *(&v17 + 1), v19, &v54);
        v22 = v54;
        v23 = v55;
        sub_1ADDDDE40(v54, *(&v54 + 1), v55);
        sub_1ADDDC21C(v22, *(&v22 + 1), v23);
        swift_endAccess();
        sub_1ADDCC35C(v17, *(&v17 + 1));
        if (v23)
        {
          break;
        }

        sub_1ADDCC35C(v17, *(&v17 + 1));
        result = __swift_destroy_boxed_opaque_existential_1(v53);
        v7 = v48;
        v3 = v49;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      sub_1ADDDC21C(v22, *(&v22 + 1), v23);
      swift_beginAccess();
      v52 = v17;
      sub_1ADDD86D8(v17, *(&v17 + 1));
      v25 = sub_1ADDDD4A0(&v54, &v52);
      if (v24[2])
      {
        v26 = v24;
        sub_1ADDE4E28(v53, v51);
        result = *v26;
        if (!*v26)
        {
          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = (*(**v26 + 168))();
          v28 = *v26;
          *v26 = v27;
        }

        v29 = *(&v17 + 1);
        v30 = v17;
        (*(**v26 + 144))(v51);
        (v25)(&v54, 0);
        swift_endAccess();
        sub_1ADDCEDE0(v51, &qword_1EB5BAA00, &qword_1AE2587A0);
        sub_1ADDCC35C(v52, *(&v52 + 1));
      }

      else
      {
        v29 = *(&v17 + 1);
        v30 = v17;
        (v25)(&v54, 0);
        sub_1ADDCC35C(v52, *(&v52 + 1));
        swift_endAccess();
      }

      v3 = v49;
      swift_beginAccess();
      sub_1ADDD86D8(v30, v29);
      sub_1ADDE0110(v51, v30, v29);
      swift_endAccess();
      sub_1ADDCC35C(v30, v29);
      sub_1ADDCC35C(v51[0], v51[1]);
      result = __swift_destroy_boxed_opaque_existential_1(v53);
      v7 = v48;
    }

    while (v6);
LABEL_7:
    if (v7 <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        v6 = 0;
        v56 = 0u;
        v8 = v10;
        v54 = 0u;
        v55 = 0u;
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v11);
      ++v8;
      if (v6)
      {
        v8 = v11;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADEB99CC()
{
  v1 = v0;
  v2 = sub_1AE23C88C();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AE23C8CC();
  v48 = *(v50 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v43 - v14;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED96F2F8;
  v16 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v17 = aBlock;
  v18 = v57;
  v19 = v58;
  v20 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v21 = *(v20 + 8);
  if (*(v19 + 16))
  {
    swift_beginAccess();

    sub_1ADDF8898(v17, v18, v19);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDFBCE8(v17, v18, v19);
    swift_endAccess();

    *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = v17;
  }

  else
  {
    v22 = *(v20 + 8);
  }

  v23 = *(v20 + 8);
  v24 = type metadata accessor for Replica();
  v25 = *(*(v24 - 8) + 56);
  v26 = v54;
  v25(v54, 1, 1, v24);
  v27 = v53;
  v25(v53, 1, 1, v24);
  v28 = v21;
  if (*(v21 + 16) || *(v23 + 16))
  {
    v43 = *(v15 + 40);
    v29 = v44;
    sub_1ADDCEE40(v26, v44, &unk_1EB5B9E70, &unk_1AE240EC0);
    v30 = v46;
    sub_1ADDCEE40(v27, v46, &unk_1EB5B9E70, &unk_1AE240EC0);
    v31 = *(v45 + 80);
    v32 = (v31 + 56) & ~v31;
    v33 = (v8 + v31 + v32) & ~v31;
    v34 = v28;
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E7CC8];
    v35[2] = MEMORY[0x1E69E7CC8];
    v35[3] = v34;
    v35[4] = v36;
    v35[5] = v23;
    v35[6] = v15;
    sub_1ADECD978(v29, v35 + v32);
    sub_1ADECD978(v30, v35 + v33);
    v60 = sub_1ADE4315C;
    v61 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_1ADDD2200;
    v59 = &block_descriptor_55;
    v37 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v38 = v47;
    sub_1AE23C8AC();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v39 = v27;
    v40 = v49;
    v41 = v52;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v38, v40, v37);
    _Block_release(v37);

    swift_bridgeObjectRelease_n();
    (*(v51 + 8))(v40, v41);
    (*(v48 + 8))(v38, v50);
    sub_1ADDCEDE0(v39, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v54, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v27, &unk_1EB5B9E70, &unk_1AE240EC0);
    return sub_1ADDCEDE0(v26, &unk_1EB5B9E70, &unk_1AE240EC0);
  }
}

uint64_t sub_1ADEBA0C4(void (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1ADEBA140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  v4 = sub_1AE23BFEC();
  (*(*(v4 - 8) + 24))(v1 + v3, a1, v4);
  return swift_endAccess();
}

BOOL sub_1ADEBA26C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  sub_1ADEB58D4(a1, a2, *(v2 + v5), &v8);
  v6 = v8;
  swift_endAccess();
  if (v6)
  {
  }

  return v6 != 0;
}

uint64_t sub_1ADEBA304(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1ADEB6A04(v1, 0);
  return swift_endAccess();
}

uint64_t sub_1ADEBA3C4()
{
  v1 = (v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v5[0] = v3;
  v5[1] = v2;
  swift_beginAccess();

  sub_1AE032778(v5);
  swift_endAccess();
}

uint64_t sub_1ADEBA49C(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  swift_beginAccess();
  sub_1ADDD86D8(v6, v7);
  LOBYTE(v4) = sub_1ADEB5FEC(v6, v7, v5, a2, 0);
  swift_endAccess();
  sub_1ADDCC35C(v6, v7);
  return v4 & 1;
}

uint64_t sub_1ADEBA580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_1ADEB86C4(a1);
  *a2 = result;
  return result;
}

BOOL sub_1ADEBA5BC(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v10 = *a1;
  v9 = a1[1];
  v11 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v8 + v11, v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v12 = &v7[*(v4 + 28)];
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  sub_1ADDDF7A8(v10, v9, *v12, v18);
  sub_1ADDD872C(v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v15 = v19;
  if (v19)
  {
    sub_1ADDDC21C(v18[0], v18[1], v19);
  }

  return v15 != 0;
}

uint64_t Capsule.Ref.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADEBA8CC(a1, a2, a3, sub_1ADE1E638);
}

{
  return sub_1ADEBA8CC(a1, a2, a3, sub_1ADEAE800);
}

uint64_t Capsule.Ref.subscript.setter(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_1ADECCE2C(a1, a2, a3);
  v5 = *(*(a3 - 8) + 8);

  return v5(a1, a3);
}

void (*Capsule.Ref.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *a2;
  v9 = a2[1];
  v11 = *(v3 + 32);
  v7[4] = v10;
  v12 = v7 + 4;
  v7[5] = v9;
  v7[6] = v11;

  sub_1ADDD86D8(v10, v9);
  v8[7] = sub_1ADEAE30C(v8, v12, a3);
  return sub_1ADEBA858;
}

void sub_1ADEBA858(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*a1 + 56))(*a1, 0);

  sub_1ADDCC35C(*(v1 + 32), *(v1 + 40));

  free(v1);
}

uint64_t sub_1ADEBA8CC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v9 = a1[1];
  v10 = *(v4 + 32);
  v12[0] = *a1;
  v8 = v12[0];
  v12[1] = v9;

  sub_1ADDD86D8(v12[0], v9);
  a4(v12, a2, a3);

  return sub_1ADDCC35C(v8, v9);
}

uint64_t sub_1ADEBA970(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 8);
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  sub_1ADDD86D8(v8, v9);
  a4(v11, v5, v6);

  return sub_1ADDCC35C(v8, v9);
}

uint64_t sub_1ADEBAA08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 8);
  v9 = a3[1];
  v10 = *a2;
  v12[0] = *a3;
  v12[1] = v9;
  sub_1ADDD86D8(v12[0], v9);
  return a5(a1, v12, v7, v8);
}

uint64_t Capsule.Ref.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1ADECCEA0(a1, a2, a3, a4);
  v5 = sub_1AE23D7CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Capsule.Ref.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1AE23D7CC();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v17 = *a2;
  v16 = a2[1];
  v11[6] = v15;
  v11[7] = v17;
  v11[8] = v16;
  v19[0] = v17;
  v19[1] = v16;
  sub_1ADDD86D8(v17, v16);
  sub_1ADDD86D8(v17, v16);
  Capsule.Ref.subscript.getter(v19, a3, a4);
  sub_1ADDCC35C(v17, v16);
  return sub_1ADEBAC5C;
}

void sub_1ADEBAC5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    v13 = v4;
    v14 = v3;
    sub_1ADECCEA0(v5, &v13, v11, v10);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    v13 = (*a1)[7];
    v14 = v3;
    sub_1ADECCEA0(v6, &v13, v11, v10);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t Capsule.Ref.import<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;

  sub_1ADEAEE48(v6);
}

uint64_t Capsule.Ref.import<A, B>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 32);
  v10 = *(v5 + 32);
  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v15 = v9;

  sub_1ADEAF914(a1, v14, a3, v12, a5);
}

uint64_t Capsule.Ref.import<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(v3 + 32);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v6;

  sub_1ADEAFB4C(v10, a2, a3);
}

uint64_t Capsule.Ref.merge<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 32);

  if (v2)
  {
    sub_1ADEAEF54(v2, 0, 0, 0, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.Ref.apply(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(v1 + 32);
  v5 = *a1;
  v6 = v2;

  sub_1ADEB9440(&v5);
}

uint64_t Capsule.Ref.root.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1ADECCFAC(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t Capsule.Ref.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1ADECD208(a1, a2);
  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1ADEBB0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v100 = a1;
  v96 = a3;
  v111 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v103 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v88 - v9;
  v10 = (a2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v114 = v11;
  v115 = v12;
  v95 = v11;

  v94 = v12;

  v13 = sub_1ADEB86C4(&v114);
  v14 = sub_1ADF7E6A4(v13);

  v119 = v14;
  v15 = (v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v93 = v15;
  v114 = v16;
  v115 = v17;

  v18 = sub_1ADEB86C4(&v114);

  sub_1AE017714(v18);

  v19 = swift_allocObject();
  v98 = v19;
  *(v19 + 16) = MEMORY[0x1E69E7CD0];
  v92 = (v19 + 16);
  v20 = v119;
  v21 = v119 + 56;
  v22 = 1 << *(v119 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v119 + 56);
  v25 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v107 = v4;
  swift_beginAccess();
  v104 = a2;
  swift_beginAccess();
  v26 = 0;
  v27 = (v22 + 63) >> 6;
  v99 = MEMORY[0x1E69E7CC8];
  v97 = MEMORY[0x1E69E7CC8];
  v105 = v27;
  v102 = v20;
  v101 = v21;
  v109 = v25;
LABEL_4:
  v28 = v111;
LABEL_5:
  v29 = v26;
  if (!v24)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v29;
LABEL_13:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v31 = (*(v20 + 48) + ((v26 << 10) | (16 * v30)));
      v32 = *v31;
      v22 = v31[1];
      v33 = v106;
      sub_1ADECD9E8(v107 + v25, v106, type metadata accessor for PartiallyOrderedReferenceMap);
      v34 = v33 + *(v28 + 20);
      v35 = *v34;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      sub_1ADDD86D8(v32, v22);
      sub_1ADDDF7A8(v32, v22, v35, &v114);
      result = sub_1ADDD872C(v33, type metadata accessor for PartiallyOrderedReferenceMap);
      v39 = v116;
      if (v116)
      {
        break;
      }

      sub_1ADDCC35C(v32, v22);
      v29 = v26;
      v27 = v105;
      v25 = v109;
      v28 = v111;
      if (!v24)
      {
        goto LABEL_8;
      }
    }

    v110 = v32;
    v40 = v114;
    if (!v114)
    {
      __break(1u);
      return result;
    }

    v41 = v22;
    v42 = v115;
    v43 = v117;

    v108 = v43;
    sub_1ADDDC21C(v40, v42, v39);
    v44 = v103;
    sub_1ADECD9E8(v104 + v109, v103, type metadata accessor for PartiallyOrderedReferenceMap);
    v45 = v44 + *(v111 + 20);
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v48 = v41;
    sub_1ADDDF7A8(v110, v41, *v45, &v114);
    sub_1ADDD872C(v44, type metadata accessor for PartiallyOrderedReferenceMap);
    v49 = v116;
    if (!v116 || (v50 = v115, v51 = , v52 = v50, v48 = v41, v22 = v51, sub_1ADDDC21C(v51, v52, v49), !v22))
    {
      v91 = v39;
      v64 = v110;
      sub_1ADDD86D8(v110, v48);

      v65 = v108;

      v66 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v66;
      sub_1ADEBFE98(v39, v65, v40, v64, v48, isUniquelyReferenced_nonNull_native, sub_1ADF70B90, sub_1ADF6BA98, sub_1ADF771D0);
      sub_1ADDCC35C(v64, v48);
      v99 = v114;
      v68 = type metadata accessor for RetainVisitor();
      v69 = swift_allocObject();
      v70 = MEMORY[0x1E69E7CC0];
      v71 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v72 = sub_1ADDD9ECC(v70);
      *(v69 + 16) = v71;
      *(v69 + 24) = v72;
      v117 = v68;
      v118 = &off_1F23C4550;
      v114 = v69;
      v22 = *(*v40 + 128);

      (v22)(&v114);
      __swift_destroy_boxed_opaque_existential_1(&v114);
      sub_1ADEBBBAC(v69, v104);

      sub_1ADDCC35C(v64, v48);
      v20 = v102;
      v21 = v101;
      v25 = v109;
      v27 = v105;
      goto LABEL_4;
    }

    (*(*v40 + 216))(&v114, v100, v22);
    v53 = v114;
    if (v114)
    {
      v54 = v110;
      sub_1ADDD86D8(v110, v48);

      v55 = v108;

      v90 = v22;
      v56 = v97;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v56;
      sub_1ADEBFE98(v39, v55, v53, v54, v48, v57, sub_1ADF70BA4, sub_1ADF6BAAC, sub_1ADF771D0);
      sub_1ADDCC35C(v54, v48);
      v97 = v114;
      v58 = type metadata accessor for RetainVisitor();
      v59 = swift_allocObject();
      v91 = v39;
      v60 = v59;
      v89 = v48;
      v61 = MEMORY[0x1E69E7CC0];
      v62 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v63 = sub_1ADDD9ECC(v61);
      *(v60 + 16) = v62;
      *(v60 + 24) = v63;
      v117 = v58;
      v118 = &off_1F23C4550;
      v114 = v60;
      v22 = *(*v53 + 112);

      (v22)(&v114);
      __swift_destroy_boxed_opaque_existential_1(&v114);
      sub_1ADEBBBAC(v60, v104);
      sub_1ADDCC35C(v54, v89);

      v28 = v111;
      v20 = v102;
      v21 = v101;
      v25 = v109;
      v27 = v105;
      goto LABEL_5;
    }

    sub_1ADDCC35C(v110, v41);

    v29 = v26;
    v28 = v111;
    v20 = v102;
    v21 = v101;
    v25 = v109;
    v27 = v105;
  }

  while (v24);
  while (1)
  {
LABEL_8:
    v26 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v26 >= v27)
    {
      break;
    }

    v24 = *(v21 + 8 * v26);
    ++v29;
    if (v24)
    {
      goto LABEL_13;
    }
  }

  v73 = v97;
  v74 = v95;
  v75 = v94;
  v76 = v93;
  if (*(v97 + 16))
  {
    goto LABEL_26;
  }

  v77 = *v93;
  v78 = v93[1];

  if (sub_1ADF637A8(v79, v75))
  {

    goto LABEL_26;
  }

  v80 = sub_1ADF637A8(v77, v74);

  if (v80)
  {
LABEL_26:
    v81 = *v76;
    v82 = v76[1];
    v83 = v92;
    swift_beginAccess();
    v22 = *v83;
    type metadata accessor for CapsuleMergeableDelta.Storage();
    v28 = swift_allocObject();
    *(v28 + 16) = v81;
    *(v28 + 24) = v82;
    *(v28 + 32) = v74;
    *(v28 + 40) = v75;
    v84 = v99;
    *(v28 + 48) = v73;
    *(v28 + 56) = v84;
    v85 = qword_1ED96B308;

    if (v85 == -1)
    {
LABEL_27:
      sub_1AE1F9D8C(&v113);
      v112 = v113;
      sub_1ADDE1CB8(&v112);

      v86 = v96;
      *v96 = v28;
      v86[1] = v22;
      return result;
    }

LABEL_30:
    swift_once();
    goto LABEL_27;
  }

  v87 = v96;
  *v96 = 0;
  v87[1] = 0;
  return result;
}

uint64_t sub_1ADEBBBAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v8 = (v4 + 63) >> 6;
  v9 = *(a1 + 24);

  for (i = 0; v6; result = )
  {
LABEL_10:
    while (1)
    {
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = (*(v3 + 48) + ((i << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      swift_beginAccess();
      v17 = *(a2 + v7);
      v18 = *(v17 + 16);
      sub_1ADDD86D8(v15, v16);
      if (v18)
      {
        v19 = sub_1ADDDE7CC(v15, v16);
        if (v20)
        {
          v21 = *(*(v17 + 56) + 16 * v19);

          if (v21)
          {
            break;
          }
        }
      }

      swift_endAccess();
      swift_beginAccess();
      sub_1ADDD86D8(v15, v16);
      sub_1ADEC1F28(v23, v15, v16);
      swift_endAccess();
      sub_1ADDCC35C(v15, v16);
      result = sub_1ADDCC35C(v23[0], v23[1]);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();
    sub_1ADDCC35C(v15, v16);
  }

LABEL_6:
  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
    }

    v6 = *(v3 + 64 + 8 * v12);
    ++i;
    if (v6)
    {
      i = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADEBBD8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v18 = *v4;
  if (*(v6 + 16))
  {
    v7 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
    v8 = qword_1ED96B308;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED96F2F8;
    v10 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    if (v7 != v15)
    {
      v11 = *(v9 + 40);
      sub_1AE23D6AC();
      sub_1ADDF8898(v15, v16, v17);

      v5 = v18;
    }
  }

  else
  {
  }

  if (sub_1ADF637A8(v3, v6))
  {

    v12 = 0;
  }

  else
  {
    v13 = sub_1ADF637A8(v2, v5);

    v12 = v13 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1ADEBBF48(void *a1)
{
  v94 = type metadata accessor for PartiallyOrderedReferenceMap();
  v3 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v85 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v82 - v6;
  v7 = *a1;
  swift_beginAccess();
  v8 = v7[5];
  v96 = v7[4];
  v97 = v8;

  LOBYTE(a1) = sub_1ADEBBD8C(&v96);

  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v88 = v7;
  v9 = v7[6];
  v10 = *(v9 + 64);
  v84 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v86 = v9;

  v89 = v1;
  v93 = v14;
  result = swift_beginAccess();
  v16 = 0;
  v83 = (v11 + 63) >> 6;
LABEL_5:
  if (v13)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v17 >= v83)
    {
      break;
    }

    v13 = *(v84 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
LABEL_10:
      v18 = __clz(__rbit64(v13)) | (v16 << 6);
      v19 = (*(v86 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v86 + 56) + 24 * v18);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v87;
      sub_1ADECD9E8(v89 + v93, v87, type metadata accessor for PartiallyOrderedReferenceMap);
      v27 = v26 + *(v94 + 20);
      v28 = *v27;
      v29 = *(v27 + 8);
      v92 = *(v27 + 16);
      sub_1ADDD86D8(v20, v21);
      sub_1ADDD86D8(v20, v21);

      v91 = v25;

      sub_1ADDDF7A8(v20, v21, v28, &v96);
      sub_1ADDCC35C(v20, v21);
      sub_1ADDD872C(v26, type metadata accessor for PartiallyOrderedReferenceMap);
      v30 = v98;
      if (!v98)
      {

        sub_1ADDCC35C(v20, v21);

        goto LABEL_43;
      }

      v90 = v23;
      v92 = v101;
      v31 = v96;
      v32 = v97;

      result = sub_1ADDDC21C(v33, v32, v30);
      if (!v31)
      {
        goto LABEL_48;
      }

      v13 &= v13 - 1;
      v95[0] = v91;
      v34 = (*(*v31 + 224))(v95);
      sub_1ADDCC35C(v20, v21);

      if ((v34 & 1) == 0)
      {

        return 0;
      }

      goto LABEL_5;
    }
  }

  v90 = type metadata accessor for RetainVisitor();
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E7CC0];
  v37 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v38 = sub_1ADDD9ECC(v36);
  *(v35 + 16) = v37;
  v87 = v35 + 16;
  v91 = v35;
  *(v35 + 24) = v38;
  v39 = v88[6];
  v42 = *(v39 + 64);
  v41 = v39 + 64;
  v40 = v42;
  v43 = 1 << *(v88[6] + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v40;
  v46 = (v43 + 63) >> 6;
  v92 = v88[6];

  v47 = 0;
  v48 = v91;
  if (v45)
  {
    while (1)
    {
      v49 = v47;
LABEL_22:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = (*(v92 + 56) + 24 * (v50 | (v49 << 6)));
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v99 = v90;
      v100 = &off_1F23C4550;
      v96 = v48;
      v55 = *(*v54 + 112);
      swift_retain_n();

      v55(&v96);

      result = __swift_destroy_boxed_opaque_existential_1(&v96);
      if (!v45)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_46;
    }

    if (v49 >= v46)
    {
      break;
    }

    v45 = *(v41 + 8 * v49);
    ++v47;
    if (v45)
    {
      v47 = v49;
      goto LABEL_22;
    }
  }

  v56 = v87;
  swift_beginAccess();
  v57 = *v56;
  v58 = (*v56 + 64);
  v59 = 1 << *(*v56 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *v58;
  swift_bridgeObjectRetain_n();
  swift_beginAccess();
  v62 = v89;
  result = swift_beginAccess();
  v63 = 0;
  v64 = (v59 + 63) >> 6;
  v92 = v57;
  if (v61)
  {
    goto LABEL_33;
  }

  while (2)
  {
    while (2)
    {
      while (2)
      {
        v69 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return result;
        }

        if (v69 >= v64)
        {

          return 1;
        }

        v61 = v58[v69];
        ++v63;
        if (!v61)
        {
          continue;
        }

        break;
      }

LABEL_34:
      v70 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v71 = (*(v57 + 48) + ((v69 << 10) | (16 * v70)));
      v72 = *v71;
      v73 = v71[1];
      v74 = v88[7];
      v75 = *(v74 + 16);
      sub_1ADDD86D8(*v71, v73);
      if (v75)
      {

        v76 = sub_1ADDDE7CC(v72, v73);
        if ((v77 & 1) == 0)
        {

          break;
        }

        v65 = (*(v74 + 56) + 24 * v76);
        v66 = *v65;
        v67 = v65[1];
        v68 = v65[2];

        sub_1ADDCC35C(v72, v73);
        v62 = v89;

        v57 = v92;

        v63 = v69;
        if (!v61)
        {
          continue;
        }

LABEL_33:
        v69 = v63;
        goto LABEL_34;
      }

      break;
    }

    v78 = v85;
    sub_1ADECD9E8(v62 + v93, v85, type metadata accessor for PartiallyOrderedReferenceMap);
    v79 = v78 + *(v94 + 20);
    v80 = *(v79 + 8);
    v81 = *(v79 + 16);
    sub_1ADDDF7A8(v72, v73, *v79, &v96);
    sub_1ADDCC35C(v72, v73);
    sub_1ADDD872C(v78, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v98)
    {
      result = sub_1ADDDC21C(v96, v97, v98);
      v63 = v69;
      if (!v61)
      {
        continue;
      }

      goto LABEL_33;
    }

    break;
  }

LABEL_43:

  return 0;
}

uint64_t sub_1ADEBC798(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v99 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a3[1];
  v94 = *a3;
  v93 = v9;
  swift_beginAccess();
  v96 = v8;
  v10 = *(v8 + 48);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v108 = v3;
  v101 = v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  v104 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
  v16 = (v12 + 63) >> 6;
  v102 = v10;

  v18 = 0;
  v107 = v15;
  v100 = v11;
  while (v14)
  {
LABEL_12:
    v25 = __clz(__rbit64(v14)) | (v18 << 6);
    v26 = (*(v102 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = (*(v102 + 56) + 24 * v25);
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    swift_beginAccess();
    v121 = v27;
    v122 = v28;
    sub_1ADDD86D8(v27, v28);
    sub_1ADDD86D8(v27, v28);
    v103 = v31;

    v105 = v30;

    v106 = v32;

    v34 = sub_1ADDDD4A0(&v116, &v121);
    if (v33[2])
    {
      v35 = v33;
      result = *v33;
      if (!*v33)
      {
        goto LABEL_49;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = (*(**v35 + 168))();
        v37 = *v35;
        *v35 = v36;
      }

      v38 = *v35;
      v113[0] = v106;
      (*(*v38 + 232))(v113);
      (v34)(&v116, 0);
      swift_endAccess();
      sub_1ADDCC35C(v121, v122);
    }

    else
    {
      (v34)(&v116, 0);
      sub_1ADDCC35C(v121, v122);
      swift_endAccess();
    }

    swift_beginAccess();
    v121 = v27;
    v122 = v28;
    sub_1ADDD86D8(v27, v28);
    v39 = sub_1ADDE13D8(&v116, &v121);
    if (*(v40 + 16))
    {
      v19 = v105;
      sub_1ADF5F770(v105, v113);
      v20 = v103;
      sub_1ADF5F770(v103, &v114);
      v123 = v114;
      v124 = BYTE2(v114);
      v21 = &v123;
      MergeResult.merge(_:)(v21);
      v39(&v116, 0);
      swift_endAccess();
      sub_1ADDCC35C(v121, v122);
    }

    else
    {
      v39(&v116, 0);
      sub_1ADDCC35C(v121, v122);
      swift_endAccess();
      v20 = v103;
      v19 = v105;
    }

    v14 &= v14 - 1;
    swift_beginAccess();
    sub_1ADF5F770(v19, v125);
    sub_1ADF5F770(v20, &v121);
    LOWORD(v113[0]) = v121;
    BYTE2(v113[0]) = BYTE2(v121);
    v22 = v113;
    MergeResult.merge(_:)(v22);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDD86D8(v27, v28);
    sub_1ADDE0110(v125, v27, v28);
    swift_endAccess();

    sub_1ADDCC35C(v27, v28);
    result = sub_1ADDCC35C(v125[0], v125[1]);
    v15 = v107;
    v11 = v100;
  }

  v23 = v108;
  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v24 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v24);
    ++v18;
    if (v14)
    {
      v18 = v24;
      goto LABEL_12;
    }
  }

  v41 = v96;
  swift_beginAccess();
  v42 = *(v41 + 56);
  v45 = *(v42 + 64);
  v44 = v42 + 64;
  v43 = v45;
  v46 = 1 << *(*(v41 + 56) + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v43;
  v102 = *(v41 + 56);

  result = swift_beginAccess();
  v49 = 0;
  v50 = (v46 + 63) >> 6;
  v100 = v44;
  v97 = v50;
  while (v48)
  {
    v55 = v15;
LABEL_31:
    v57 = __clz(__rbit64(v48)) | (v49 << 6);
    v58 = (*(v102 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    v61 = (*(v102 + 56) + 24 * v57);
    v62 = *v61;
    v106 = v61[1];
    v63 = v61[2];
    v64 = v23 + v55;
    v65 = v98;
    sub_1ADECD9E8(v64, v98, type metadata accessor for PartiallyOrderedReferenceMap);
    v66 = v65 + *(v99 + 20);
    v67 = *v66;
    v68 = *(v66 + 8);
    v69 = *(v66 + 16);
    sub_1ADDD86D8(v60, v59);
    sub_1ADDD86D8(v60, v59);
    v105 = v62;
    v70 = v63;
    v71 = v106;

    sub_1ADDDF7A8(v60, v59, v67, &v116);
    sub_1ADDCC35C(v60, v59);
    sub_1ADDD872C(v65, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v117)
    {
      v103 = v70;
      sub_1ADDDC21C(v116, *(&v116 + 1), v117);
      v72 = v107;
      v73 = v108;
      swift_beginAccess();
      v114 = v60;
      v115 = v59;
      sub_1ADDD86D8(v60, v59);
      v74 = v73;
      v76 = sub_1ADDDD4A0(&v116, &v114);
      v15 = v72;
      if (v75[2])
      {
        v77 = v75;
        result = *v75;
        if (!*v75)
        {
          goto LABEL_50;
        }

        v78 = v103;
        v23 = v74;
        if (v103 == result)
        {
          v80 = v106;
          if (qword_1ED9670C0 != -1)
          {
            swift_once();
          }

          v123 = word_1ED96F220;
          v124 = byte_1ED96F222;
          (v76)(&v116, 0);
        }

        else
        {
          v95 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v106;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v81 = (*(**v77 + 168))();
            v82 = *v77;
            *v77 = v81;
          }

          (*(**v77 + 96))(&v123, v78);
          v95(&v116, 0);
        }

        swift_endAccess();
        sub_1ADDCC35C(v114, v115);
      }

      else
      {
        (v76)(&v116, 0);
        sub_1ADDCC35C(v114, v115);
        swift_endAccess();
        v23 = v74;
        v80 = v106;
      }

      swift_beginAccess();
      v114 = v60;
      v115 = v59;
      sub_1ADDD86D8(v60, v59);
      v83 = sub_1ADDE13D8(&v116, &v114);
      if (*(v84 + 16))
      {
        sub_1ADF5F770(v80, &v123);
        sub_1ADF5F770(v105, &v111);
        v109 = v111;
        v110 = v112;
        v85 = &v109;
        MergeResult.merge(_:)(v85);
        v83(&v116, 0);
        swift_endAccess();
        sub_1ADDCC35C(v114, v115);
      }

      else
      {
        v83(&v116, 0);
        sub_1ADDCC35C(v114, v115);
        swift_endAccess();
      }
    }

    else
    {
      v51 = v105;

      v52 = MEMORY[0x1E69E7CC0];
      v103 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v53 = sub_1ADDD9ECC(v52);
      sub_1ADDDA5BC(v52);
      sub_1ADDD9ECC(v52);

      swift_bridgeObjectRelease_n();
      v116 = v70;
      v117 = v51;
      v118 = v71;
      v119 = v103;
      v120 = v53;
      v114 = v60;
      v115 = v59;
      v54 = v107;
      swift_beginAccess();
      sub_1ADDD82B0(&v116, &v114);
      swift_endAccess();
      v103 = v116;

      v23 = v108;

      v15 = v54;
    }

    v48 &= v48 - 1;
    swift_beginAccess();
    sub_1ADDD86D8(v60, v59);
    sub_1ADDE0110(v113, v60, v59);
    swift_endAccess();

    sub_1ADDCC35C(v60, v59);
    result = sub_1ADDCC35C(v113[0], v113[1]);
    v44 = v100;
    v50 = v97;
  }

  while (1)
  {
    v56 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v56 >= v50)
    {

      *&v116 = v94;
      *(&v116 + 1) = v93;
      sub_1ADEA9BC0(0, 0, v86, &v116);
      v87 = v96;
      swift_beginAccess();
      v88 = *(v87 + 16);
      v89 = *(v87 + 24);
      swift_beginAccess();

      sub_1ADF5F770(v90, &v114);
      sub_1ADF5F770(v88, &v123);
      v111 = v123;
      v112 = v124;
      v91 = &v111;
      MergeResult.merge(_:)(v91);
      swift_endAccess();
    }

    v48 = *(v44 + 8 * v56);
    ++v49;
    if (v48)
    {
      v55 = v15;
      v49 = v56;
      goto LABEL_31;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_1ADEBD3F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7B030(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  sub_1ADEC9744(v4);
  *a1 = v2;
}

uint64_t sub_1ADEBD464(uint64_t a1)
{
  v64 = type metadata accessor for PartiallyOrderedReferenceMap();
  v3 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1E69E7CD0];
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 56);
  v9 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v65 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;

  v69 = v1;
  v62 = v9;
  result = swift_beginAccess();
  v11 = 0;
  v12 = (v6 + 63) >> 6;
  v61 = a1 + 56;
  v60 = v12;
  v59 = a1;
  while (v8)
  {
    v13 = v11;
LABEL_12:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = (*(a1 + 48) + ((v13 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v63;
    sub_1ADECD9E8(v69 + v62, v63, type metadata accessor for PartiallyOrderedReferenceMap);
    v19 = v18 + *(v64 + 20);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    sub_1ADDD86D8(v17, v16);
    sub_1ADDDF7A8(v17, v16, v20, v73);
    sub_1ADDD872C(v18, type metadata accessor for PartiallyOrderedReferenceMap);
    v23 = v74;
    if (!v74)
    {
      v56 = v17;
      v57 = v16;
LABEL_31:
      result = sub_1ADDCC35C(v56, v57);
      v11 = v13;
      goto LABEL_6;
    }

    v70 = v17;
    v71 = v16;
    v24 = v73[0];
    v25 = v73[1];

    sub_1ADDDC21C(v26, v25, v23);
    if (!v24)
    {
      v56 = v70;
      v57 = v71;
      goto LABEL_31;
    }

    v27 = type metadata accessor for RetainVisitor();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E7CC0];
    v30 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v31 = sub_1ADDD9ECC(v29);
    *(v28 + 16) = v30;
    *(v28 + 24) = v31;
    v75 = v27;
    v76 = &off_1F23C4550;
    v73[0] = v28;
    v32 = *(*v24 + 128);

    v32(v73);

    __swift_destroy_boxed_opaque_existential_1(v73);
    swift_beginAccess();
    v33 = *(v28 + 24);

    v34 = 0;
    v36 = v33 + 64;
    v35 = *(v33 + 64);
    v67 = v33 + 64;
    v68 = v33;
    v37 = 1 << *(v33 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & v35;
    v40 = (v37 + 63) >> 6;
    v66 = v40;
    result = v70;
    v41 = v71;
    if ((v38 & v35) != 0)
    {
      do
      {
LABEL_22:
        v43 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v44 = (v34 << 10) | (16 * v43);
        v45 = v69;
        v46 = (*(v68 + 48) + v44);
        v48 = *v46;
        v47 = v46[1];
        v49 = *(*(v68 + 56) + v44);
        v50 = v65;
        swift_beginAccess();
        v51 = *(v45 + v50);
        v52 = *(v51 + 16);
        v72 = v47;
        sub_1ADDD86D8(v48, v47);

        if (v52 && (v53 = sub_1ADDDE7CC(v48, v72), (v54 & 1) != 0) && (v55 = *(*(v51 + 56) + 16 * v53), , v55))
        {
          swift_endAccess();
          sub_1ADDCC35C(v48, v72);
        }

        else
        {
          swift_endAccess();

          sub_1ADEC1658(v73, v49);
          sub_1ADDCC35C(v48, v72);
        }

        v40 = v66;
        v36 = v67;
        result = v70;
        v41 = v71;
      }

      while (v39);
    }

    while (1)
    {
      v42 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (v42 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v42);
      ++v34;
      if (v39)
      {
        v34 = v42;
        goto LABEL_22;
      }
    }

    sub_1ADDCC35C(result, v41);

    v11 = v13;
    a1 = v59;
LABEL_6:
    v5 = v61;
    v12 = v60;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_34;
    }

    if (v13 >= v12)
    {
      break;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  return v77;
}

uint64_t sub_1ADEBD93C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v161 = a8;
  v168 = a6;
  v169 = a7;
  v174 = a5;
  v166 = a3;
  v170 = a1;
  v153[1] = a10;
  v167 = a9;
  v163 = a11;
  v173 = type metadata accessor for PartiallyOrderedReferenceMap();
  v13 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v171 = v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v159 = v153 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v160 = v153 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v164 = v153 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = v153 - v22;
  v192 = MEMORY[0x1E69E7CD0];
  v191 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v172 = a2;
  v23 = *(a2 + 16);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

  v175 = v28;
  v176 = a4;
  result = swift_beginAccess();
  v30 = 0;
  v31 = (v25 + 63) >> 6;
  v165 = v23;
LABEL_4:
  if (v27)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v78 = v191;
      if (!*(v191 + 16))
      {
LABEL_100:
      }

      while (2)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v79 = *(v78 + 16);
          if (!v79)
          {
            goto LABEL_103;
          }
        }

        else
        {
          result = sub_1ADF79A04(v78);
          v78 = result;
          v79 = *(result + 16);
          if (!v79)
          {
            goto LABEL_103;
          }
        }

        v80 = v79 - 1;
        v81 = v78 + 16 * v80;
        v82 = *(v81 + 32);
        v83 = *(v81 + 40);
        *(v78 + 16) = v80;
        v191 = v78;
        sub_1ADDD86D8(v82, v83);
        v84 = sub_1ADDE0110(&v185, v82, v83);
        sub_1ADDCC35C(v185, v186);
        if ((v84 & 1) == 0)
        {

          sub_1ADDCC35C(v82, v83);
        }

        if (!v174 || (v185 = v82, v186 = v83, , v85 = v174, v86 = v174(&v185), sub_1ADDDCE80(v85), (v86 & 1) != 0))
        {
          swift_beginAccess();
          sub_1ADDD86D8(v82, v83);
          v87 = sub_1ADDE0110(&v177, v82, v83);
          swift_endAccess();
          sub_1ADDCC35C(v177, v178);
          if (v87)
          {
            v88 = v164;
            sub_1ADECD9E8(v176 + v175, v164, type metadata accessor for PartiallyOrderedReferenceMap);
            v89 = v88 + *(v173 + 20);
            v90 = *(v89 + 8);
            v91 = *(v89 + 16);
            sub_1ADDDF7A8(v82, v83, *v89, &v185);
            sub_1ADDD872C(v88, type metadata accessor for PartiallyOrderedReferenceMap);
            v92 = v187;
            if (v187)
            {
              v93 = v185;
              v94 = v186;

              sub_1ADDDC21C(v95, v94, v92);
              if (v93)
              {

                sub_1ADEB6B04(v82, v83, v93, sub_1ADEB7364, &v185);

                v96 = v185;
                if (!v185)
                {
                  goto LABEL_71;
                }

                v97 = v186;
                v165 = v187;
                v98 = v166;
                swift_beginAccess();
                sub_1ADDD86D8(v82, v83);

                v99 = *(v98 + 16);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v177 = *(v98 + 16);
                *(v98 + 16) = 0x8000000000000000;
                v157 = v93;
                sub_1ADEBFB8C(v93, v96, v82, v83, isUniquelyReferenced_nonNull_native);
                sub_1ADDCC35C(v82, v83);
                *(v98 + 16) = v177;
                swift_endAccess();
                v177 = v82;
                v178 = v83;
                v158 = v96;
                v154 = v97;
                v182[0] = v97;
                v182[1] = v165;
                v183 = v96;
                v102 = v175;
                v101 = v176;
                swift_beginAccess();
                sub_1AE0323AC(&v177, &v183, v182, v184);
                swift_endAccess();
                LODWORD(v162) = v184[0];
                LODWORD(v155) = v184[1];
                LODWORD(v156) = v184[2];
                v103 = v160;
                sub_1ADECD9E8(v101 + v102, v160, type metadata accessor for PartiallyOrderedReferenceMap);
                v104 = v103 + *(v173 + 20);
                v105 = *(v104 + 8);
                v106 = *(v104 + 16);
                sub_1ADDDF7A8(v82, v83, *v104, &v185);
                result = sub_1ADDD872C(v103, type metadata accessor for PartiallyOrderedReferenceMap);
                v107 = v187;
                if (!v187)
                {
                  goto LABEL_109;
                }

                v109 = v185;
                v108 = v186;

                result = sub_1ADDDC21C(v110, v108, v107);
                v153[3] = v109;
                if (!v109)
                {
                  goto LABEL_108;
                }

                v111 = v159;
                sub_1ADECD9E8(v176 + v175, v159, type metadata accessor for PartiallyOrderedReferenceMap);
                v112 = v111 + *(v173 + 20);
                v113 = *(v112 + 8);
                v114 = *(v112 + 16);
                sub_1ADDDF7A8(v82, v83, *v112, &v177);
                result = sub_1ADDD872C(v111, type metadata accessor for PartiallyOrderedReferenceMap);
                v115 = v179;
                if (!v179)
                {
                  goto LABEL_107;
                }

                v153[2] = v181;
                v116 = v180;
                v117 = v177;
                v118 = v178;

                v165 = v115;
                v154 = v116;
                sub_1ADDDC21C(v117, v118, v115);
                v119 = v162;
                LOBYTE(v185) = v162;
                v120 = v155;
                BYTE1(v185) = v155;
                v121 = v156;
                BYTE2(v185) = v156;
                v122 = &v185;
                MergeResult.merge(_:)(v122);
                v123 = v172;
                swift_beginAccess();
                v124 = *(v123 + 16);
                v125 = swift_isUniquelyReferenced_nonNull_native();
                v177 = *(v123 + 16);
                *(v123 + 16) = 0x8000000000000000;
                if (v121)
                {
                  v126 = 0x10000;
                }

                else
                {
                  v126 = 0;
                }

                sub_1ADEBFA40(v126 | (v120 << 8) | v119, v82, v83, v125);
                *(v123 + 16) = v177;
                swift_endAccess();
                if (v119 > 1 || v120 > 1)
                {
                  swift_beginAccess();
                  sub_1ADDD86D8(v82, v83);
                  sub_1ADDE0110(&v177, v82, v83);
                  swift_endAccess();
                  sub_1ADDCC35C(v177, v178);
                }

                if (qword_1EB5B9920 != -1)
                {
                  swift_once();
                }

                if (v162 == word_1EB5D750E && v120 == HIBYTE(word_1EB5D750E) && v121 == byte_1EB5D7510)
                {
                  swift_beginAccess();
                  sub_1ADDD86D8(v82, v83);
                  sub_1ADDE0110(&v177, v82, v83);
                  swift_endAccess();

                  sub_1ADDCC35C(v177, v178);
                }

                else
                {

LABEL_71:
                }
              }
            }
          }
        }

        v127 = v172;
        swift_beginAccess();
        v128 = *(v127 + 16);
        if (*(v128 + 16) && (v129 = sub_1ADDDE7CC(v82, v83), (v130 & 1) != 0))
        {
          v131 = (*(v128 + 56) + 3 * v129);
          v132 = *v131;
          v133 = v131[1];
          swift_endAccess();
          if (v170)
          {
            if (v132 <= 1 && v133 <= 1)
            {
              goto LABEL_89;
            }

LABEL_86:
            if (qword_1EB5B9920 != -1)
            {
              swift_once();
            }

            v135 = byte_1EB5D7510;
            v136 = v167;
            *(v167 + 16) = word_1EB5D750E;
            *(v136 + 18) = v135;
            swift_beginAccess();
            sub_1ADDD86D8(v82, v83);
            sub_1ADDE0110(&v177, v82, v83);
            swift_endAccess();
            sub_1ADDCC35C(v177, v178);
            goto LABEL_89;
          }

          if (v132 > 1)
          {
            if (v132 != 2)
            {
              goto LABEL_86;
            }
          }

          else if (v132)
          {
            goto LABEL_86;
          }

          if ((v133 & 0xFFFFFFFD) != 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          swift_endAccess();
        }

LABEL_89:
        v137 = v171;
        sub_1ADECD9E8(v176 + v175, v171, type metadata accessor for PartiallyOrderedReferenceMap);
        v138 = v137 + *(v173 + 20);
        v139 = *(v138 + 8);
        v140 = *(v138 + 16);
        sub_1ADDDF7A8(v82, v83, *v138, &v185);
        sub_1ADDD872C(v137, type metadata accessor for PartiallyOrderedReferenceMap);
        v141 = v187;
        if (v187 && (v142 = v185, v143 = v186, v144 = , sub_1ADDDC21C(v144, v143, v141), v142))
        {
          v145 = type metadata accessor for AllRefsVisitor();
          v146 = swift_allocObject();
          *(v146 + 24) = 0;
          *(v146 + 16) = MEMORY[0x1E69E7CD0];
          v147 = (v146 + 16);
          v188 = v145;
          v189 = &off_1F23C4500;
          v185 = v146;
          v148 = *(*v142 + 128);

          v148(&v185);
          __swift_destroy_boxed_opaque_existential_1(&v185);
          swift_beginAccess();
          v149 = *v147;

          v150 = *(v149 + 16);
          if (v150)
          {
            v151 = sub_1AE1941D0(*(v149 + 16), 0);
            v152 = sub_1AE03A790(&v185, v151 + 2, v150, v149);
            result = sub_1ADDDCE74();
            if (v152 != v150)
            {
              goto LABEL_104;
            }
          }

          else
          {

            v151 = MEMORY[0x1E69E7CC0];
          }

          sub_1ADFB6D60(v151);
          sub_1ADDCC35C(v82, v83);

          v78 = v191;
        }

        else
        {
          sub_1ADDCC35C(v82, v83);
        }

        if (!*(v78 + 16))
        {
          goto LABEL_100;
        }

        continue;
      }
    }

    v27 = *(v24 + 8 * v32);
    ++v30;
    if (v27)
    {
      v30 = v32;
LABEL_9:
      v33 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v34 = v33 | (v30 << 6);
      v35 = (*(v23 + 48) + 16 * v34);
      v37 = *v35;
      v36 = v35[1];
      v38 = (*(v23 + 56) + 3 * v34);
      v39 = *v38;
      v40 = v38[1];
      if (v170)
      {
        if (v39 > 1)
        {
          if (v39 == 2)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v39)
        {
          goto LABEL_24;
        }

LABEL_23:
        if ((v40 & 0xFFFFFFFD) != 0)
        {
LABEL_24:
          v53 = v166;
          swift_beginAccess();
          v54 = *(v53 + 16);
          v55 = *(v54 + 16);
          sub_1ADDD86D8(v37, v36);
          if (v55 && (v56 = sub_1ADDDE7CC(v37, v36), (v57 & 1) != 0))
          {
            v58 = (*(v54 + 56) + 16 * v56);
            v59 = *v58;
            v60 = v58[1];

            v23 = v165;
            if (v59)
            {

              v162 = v60;
              swift_endAccess();
              v50 = MEMORY[0x1E69E7D48];
              v51 = v59;
              v52 = v162;
              goto LABEL_28;
            }
          }

          else
          {
            v60 = 0;
            v23 = v165;
          }

          v76 = MEMORY[0x1E69E7D48];
          v77 = v60;
LABEL_38:
          sub_1ADECDB08(0, v77, v76);
          swift_endAccess();
          result = sub_1ADDCC35C(v37, v36);
        }
      }

      else if (v39 > 1 || v40 > 1)
      {
        v42 = v166;
        swift_beginAccess();
        v43 = *(v42 + 16);
        v44 = *(v43 + 16);
        sub_1ADDD86D8(v37, v36);
        if (!v44 || (v45 = sub_1ADDDE7CC(v37, v36), (v46 & 1) == 0))
        {
          v77 = 0;
          v23 = v165;
LABEL_37:
          v76 = MEMORY[0x1E69E7D48];
          goto LABEL_38;
        }

        v47 = (*(v43 + 56) + 16 * v45);
        v48 = *v47;
        v49 = v47[1];

        v157 = v49;

        v23 = v165;
        if (!v48)
        {
          v77 = v157;
          goto LABEL_37;
        }

        swift_endAccess();
        v50 = MEMORY[0x1E69E7D48];
        v162 = v48;
        v51 = v48;
        v52 = v157;
LABEL_28:
        sub_1ADECDB08(v51, v52, v50);
        v61 = v158;
        sub_1ADECD9E8(v176 + v175, v158, type metadata accessor for PartiallyOrderedReferenceMap);
        v62 = v61 + *(v173 + 20);
        v63 = *v62;
        v64 = *(v62 + 8);
        v65 = *(v62 + 16);
        v155 = v37;
        v156 = v36;
        sub_1ADDDF7A8(v37, v36, v63, &v185);
        result = sub_1ADDD872C(v61, type metadata accessor for PartiallyOrderedReferenceMap);
        v66 = v187;
        if (!v187)
        {
          goto LABEL_106;
        }

        v157 = v190;
        v68 = v185;
        v67 = v186;

        result = sub_1ADDDC21C(v69, v67, v66);
        if (!v68)
        {
          goto LABEL_106;
        }

        v70 = v162;
        if (v162 == v68)
        {
          v72 = MEMORY[0x1E69E7CD0];
          v73 = *(MEMORY[0x1E69E7CD0] + 16);
          if (v73)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v71 = *(*v68 + 104);

          v72 = v71(v70);

          v73 = *(v72 + 16);
          if (v73)
          {
LABEL_32:
            v74 = sub_1AE1941D0(v73, 0);
            v75 = sub_1AE03A790(&v185, v74 + 2, v73, v72);
            result = sub_1ADDDCE74();
            if (v75 != v73)
            {
              goto LABEL_105;
            }

            goto LABEL_41;
          }
        }

        v74 = MEMORY[0x1E69E7CC0];
LABEL_41:
        sub_1ADFB6D60(v74);
        sub_1ADDCC35C(v155, v156);

        v23 = v165;
        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_1ADEBE8DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 + 8;
  v7 = 32;
  v21 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v12 = *(v1 + 2);
    if (v3 >= v12)
    {
      break;
    }

    if (v5 >= v12)
    {
      goto LABEL_14;
    }

    v13 = *&v1[v7 + 16];
    v24 = *&v1[v7 + 24];
    v14 = *&v1[v6 - 16];
    v15 = *&v1[v6 - 8];
    v16 = *&v1[v6];
    v25 = *&v1[v6 + 16];
    v26 = *&v1[v6 + 8];
    v22 = *&v1[v7 + 8];
    v23 = *&v1[v7];
    sub_1ADE42C78(v23);

    sub_1ADE42C78(v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1ADDFC33C(v1);
    }

    v17 = &v1[v7];
    v18 = *&v1[v7];
    v19 = *&v1[v7 + 8];
    v20 = *&v1[v7 + 16];
    *v17 = v14;
    v17[1] = v15;
    v17[2] = v16;
    v17[3] = v26;
    v17[4] = v25;
    sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);

    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    v9 = *&v1[v6 - 16];
    v10 = *&v1[v6 - 8];
    v11 = *&v1[v6];
    *(v8 - 2) = v23;
    *(v8 - 1) = v22;
    *v8 = v13;
    *(v8 + 8) = v24;
    sub_1ADECDB08(v9, v10, MEMORY[0x1E69E7CF8]);

    v4 = v21;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    v7 += 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1ADEBEA90(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADECCE2C(a1, a2, a3);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t (*sub_1ADEBEB00(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = *v3;
  v7[4] = Capsule.Ref.subscript.modify(v7, a2, a3);
  return sub_1ADEBEB94;
}

uint64_t sub_1ADEBEB98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  sub_1ADECCEA0(a1, a2, a3, a4);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t (*sub_1ADEBEC14(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v10 = *v4;
  v9[4] = Capsule.Ref.subscript.modify(v9, a2, a3, a4);
  return sub_1ADECDC64;
}

void sub_1ADEBECA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1ADEBECF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_1ADDD8A6C(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF6E86C();
      v11 = v14;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for Replica();
    sub_1ADDD872C(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for Replica);
    sub_1ADDE5634(*(v11 + 56) + 24 * v8, a2);
    result = sub_1ADF6CF18(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_1ADEBEDCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1ADDFF050(a1);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF6EACC();
      v12 = v15;
    }

    v13 = *(v12 + 48);
    v14 = sub_1AE23BDDC();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_1ADE42D60(*(v12 + 56) + 8 * v9, a2);
    sub_1ADF6D1C4(v9, v12);
    *v3 = v12;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v8 & 1) == 0;
}

double sub_1ADEBEEB4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1ADDF1D10(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADE1B924();
      v11 = v13;
    }

    sub_1ADDEE390((*(v11 + 56) + 32 * v8), a2);
    sub_1ADF6D6A4(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1ADEBEF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1ADDDE7CC(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF703A0();
      v12 = v16;
    }

    sub_1ADDCC35C(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = (*(v12 + 56) + 16 * v9);
    v15 = *v13;
    v14 = v13[1];
    *a3 = v15;
    a3[1] = v14;
    result = sub_1ADF6DA1C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

double sub_1ADEBF000@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1ADDDE7CC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF71050();
      v12 = v14;
    }

    sub_1ADDCC35C(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    sub_1ADDEE390((*(v12 + 56) + 32 * v9), a3);
    sub_1ADF6DD9C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1ADEBF0A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1ADDFF050(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1ADF6EACC();
      goto LABEL_7;
    }

    sub_1ADF68CF4(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1ADDFF050(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1ADF6E598(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 8 * v15;

  return sub_1ADECDBE8(a1, v22);
}

unint64_t sub_1ADEBF270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1ADDD7A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1ADF6ED64();
      result = v19;
      goto LABEL_8;
    }

    sub_1ADF690CC(v16, a4 & 1);
    v20 = *v5;
    result = sub_1ADDD7A10(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_1ADF6E658(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_1ADEBF3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1ADDDE7CC(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1ADF6F47C();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1ADF698B8(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1ADDDE7CC(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
  }

  else
  {
    sub_1ADF6E65C(v15, a4, a5, a1, a2, a3, v26);

    return sub_1ADDD86D8(a4, a5);
  }
}

uint64_t sub_1ADEBF524(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDD7A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1ADF6F61C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADF69B9C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1ADDD7A10(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1ADF6E658(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1ADEBF66C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1ADDDE7CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF703A0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1ADF6AF70(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1ADDDE7CC(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1ADF6E6B0(v13, a3, a4, a1, a2, v24);

    return sub_1ADDD86D8(a3, a4);
  }
}

uint64_t sub_1ADEBF7C0(_OWORD *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDDE7CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1ADF706B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADE17954(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;

    return sub_1ADECD91C(a1, v23);
  }

  else
  {
    sub_1ADF6E700(v11, a2, a3, a1, v22);

    return sub_1ADDD86D8(a2, a3);
  }
}

unint64_t sub_1ADEBF90C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1ADDDE7CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1ADF6F314();
      result = v19;
      goto LABEL_8;
    }

    sub_1ADF69618(v16, a4 & 1);
    v20 = *v5;
    result = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_1ADDE8C98(result, a2, a3, a1, v22);

    return sub_1ADDD86D8(a2, a3);
  }

  return result;
}

unint64_t sub_1ADEBFA40(int a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1ADDDE7CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1ADF70888();
      result = v19;
      goto LABEL_8;
    }

    sub_1ADF6B504(v16, a4 & 1);
    v20 = *v5;
    result = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 3 * result;
    *v23 = a1;
    *(v23 + 2) = BYTE2(a1) & 1;
  }

  else
  {
    sub_1ADF6E75C(result, a2, a3, a1 & 0x1FFFF, v22);

    return sub_1ADDD86D8(a2, a3);
  }

  return result;
}

uint64_t sub_1ADEBFB8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1ADDDE7CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF70A04();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1ADF6B7D8(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1ADDDE7CC(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v27 = *v25;
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1ADF6E6B0(v13, a3, a4, a1, a2, v24);

    return sub_1ADDD86D8(a3, a4);
  }
}

_OWORD *sub_1ADEBFD44(_OWORD *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDDE7CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1ADF71050();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADF6C314(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1ADDEE390(a1, v23);
  }

  else
  {
    sub_1ADF6E7BC(v11, a2, a3, a1, v22);

    return sub_1ADDD86D8(a2, a3);
  }
}

uint64_t sub_1ADEBFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, void (*a7)(void), void (*a8)(uint64_t, void), void (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v9;
  v18 = *v9;
  v19 = sub_1ADDDE7CC(a4, a5);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a6 & 1) == 0)
  {
    if (v26 >= v24 && (a6 & 1) == 0)
    {
      v27 = v19;
      a7();
      v19 = v27;
      goto LABEL_8;
    }

    a8(v24, a6 & 1);
    v28 = *v11;
    v19 = sub_1ADDDE7CC(a4, a5);
    if ((v25 & 1) != (v29 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v30 = *v11;
  if (v25)
  {
    v31 = (*(v30 + 56) + 24 * v19);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    *v31 = a1;
    v31[1] = a2;
    v31[2] = a3;
  }

  else
  {
    a9(v19, a4, a5, a1, a2, a3, v30);

    return sub_1ADDD86D8(a4, a5);
  }
}

unint64_t sub_1ADEC004C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1ADF4A3F0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1ADF711F8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1ADF6C5C8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1ADF4A3F0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1ADF6E828(v9, a2, a1, v20);
  }
}

uint64_t sub_1ADEC01B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1ADDDE7CC(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1ADF715D8();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1ADF6C84C(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1ADDDE7CC(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1ADF6E65C(v15, a4, a5, a1, a2, a3, v26);

    return sub_1ADDD86D8(a4, a5);
  }
}

uint64_t sub_1ADEC0360(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1ADDFF050(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1ADF71A10();
      goto LABEL_7;
    }

    sub_1ADF6CB28(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1ADDFF050(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1ADDFF514(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = *(v21 + 56);
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_1ADEC052C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v37 = type metadata accessor for PartiallyOrderedReferenceMap();
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v31 = v4;
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v32 = a1;
    v30 = a2;
    v9 = *(v38 + 56);
    v34 = v38 + 56;
    v10 = 1 << *(v38 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v9;
    v13 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

    v35 = v13;
    swift_beginAccess();
    v33 = 0;
    v14 = 0;
    v15 = (v10 + 63) >> 6;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
LABEL_14:
      v19 = v16 | (v14 << 6);
      v20 = (*(v38 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = v36;
      sub_1ADECD9E8(v39 + v35, v36, type metadata accessor for PartiallyOrderedReferenceMap);
      v24 = v23 + *(v37 + 20);
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      sub_1ADDD86D8(v22, v21);
      sub_1ADDDF7A8(v22, v21, v25, v40);
      sub_1ADDD872C(v23, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v41)
      {
        sub_1ADDDC21C(v40[0], v40[1], v41);
        sub_1ADDCC35C(v22, v21);
        v12 = v42;
      }

      else
      {
        sub_1ADDCC35C(v22, v21);
        *(v32 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v28 = __OFADD__(v33++, 1);
        v12 = v42;
        if (v28)
        {
          __break(1u);
LABEL_19:
          sub_1AE1B2384(v32, v30, v33, v38);

          return;
        }
      }
    }

    v17 = v14;
    while (1)
    {
      v14 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v14 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v34 + 8 * v14);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1ADEC07E0(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[4];
  sub_1ADDD86D8(v8, v6);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1ADDDE7CC(v8, v6);
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
    sub_1ADF6C068(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1ADDDE7CC(v8, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_1ADF70EE0();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCC35C(v8, v6);

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v7;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 2);
      sub_1ADDD86D8(v8, v6);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_1ADDDE7CC(v8, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1ADF6C068(v32, 1);
        v33 = *a3;
        v28 = sub_1ADDDE7CC(v8, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v7;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1ADEC0BB0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1AE23D98C();

    if (v8)
    {

      v22[9] = v8;
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      result = 0;
      *a1 = v22[0];
      return result;
    }

    result = sub_1AE23D97C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1ADEC2A78(v7, result + 1);
    v22[0] = v19;
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1ADEC2EF8(v20 + 1);
      v19 = v22[0];
    }

    sub_1ADEC4D40(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_1AE23E31C();
  (*(*a2 + 104))(v22);
  v11 = sub_1AE23E34C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v2;

    sub_1ADEC4E04(v18, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(**(*(v6 + 48) + 8 * v13) + 96);

    LOBYTE(v15) = v15(a2);

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1ADEC0E1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v74 = *v5;
  v11 = *(*v5 + 40);
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (a2)
  {

    sub_1ADF76AA0(v77, a2);
    sub_1ADF76AA0(v77, a3);
    sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);
  }

  v66 = a1;
  sub_1AE23BECC();
  v12 = sub_1AE23E34C();
  v13 = -1 << *(v74 + 32);
  v14 = v12 & ~v13;
  if (((*(v74 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_81:
    v51 = *v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = *v65;
    sub_1ADE42C78(a2);
    sub_1ADDD86D8(a4, a5);
    sub_1ADEC4FC4(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v65 = *&v77[0];
    *v66 = a2;
    v66[1] = a3;
    v66[2] = a4;
    v66[3] = a5;
    result = 1;
    goto LABEL_82;
  }

  v69 = a5;
  v70 = 0;
  v73 = ~v13;
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a5 == 0xC000000000000000;
  }

  v16 = !v15;
  v68 = v16;
  v71 = a4;
  v72 = a5 >> 62;
  v17 = __OFSUB__(HIDWORD(a4), a4);
  v64 = v17;
  v63 = HIDWORD(a4) - a4;
  v67 = BYTE6(a5);
  while (1)
  {
    v18 = (*(v74 + 48) + 32 * v14);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    if (!*v18)
    {
      break;
    }

    if (!a2)
    {
      sub_1ADE42C78(0);
      sub_1ADE42C78(v19);
      sub_1ADDD86D8(v21, v22);
      sub_1ADE42C78(v19);
      sub_1ADE42C78(v19);

      goto LABEL_22;
    }

    sub_1ADE42C78(a2);
    sub_1ADE42C78(v19);
    sub_1ADDD86D8(v21, v22);
    sub_1ADE42C78(v19);
    sub_1ADE42C78(v19);
    sub_1ADF64C74(v20, a3);
    if ((v23 & 1) == 0)
    {
      v28 = MEMORY[0x1E69E7CF8];
      sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);

      v29 = v19;
      v30 = v20;
      goto LABEL_24;
    }

    sub_1ADF64C74(v19, a2);
    v25 = v24;
    v26 = MEMORY[0x1E69E7CF8];
    sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);

    v27 = v26;
    a4 = v71;
    sub_1ADECDB08(v19, v20, v27);
    if (v25)
    {
      goto LABEL_29;
    }

LABEL_25:
    sub_1ADECDB08(v19, v20, MEMORY[0x1E69E7CF8]);
    sub_1ADDCC35C(v21, v22);
LABEL_26:
    v14 = (v14 + 1) & v73;
    if (((*(v74 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  if (a2)
  {
    sub_1ADE42C78(a2);
    sub_1ADE42C78(0);
    sub_1ADDD86D8(v21, v22);
    sub_1ADE42C78(0);
LABEL_22:
    v28 = MEMORY[0x1E69E7CF8];
    sub_1ADECDB08(v19, v20, MEMORY[0x1E69E7CF8]);
    v29 = a2;
    v30 = a3;
LABEL_24:
    sub_1ADECDB08(v29, v30, v28);
    goto LABEL_25;
  }

  sub_1ADE42C78(0);
  sub_1ADE42C78(0);
  sub_1ADDD86D8(v21, v22);
  sub_1ADE42C78(0);
  sub_1ADECDB08(0, v20, MEMORY[0x1E69E7CF8]);
LABEL_29:
  v31 = v22 >> 62;
  if (v22 >> 62 == 3)
  {
    if (v21)
    {
      v32 = 0;
    }

    else
    {
      v32 = v22 == 0xC000000000000000;
    }

    v33 = v72;
    v35 = !v32 || v72 < 3;
    if (((v35 | v68) & 1) == 0)
    {
      v56 = MEMORY[0x1E69E7CF8];
      sub_1ADECDB08(v19, v20, MEMORY[0x1E69E7CF8]);
      sub_1ADDCC35C(0, 0xC000000000000000);
      sub_1ADECDB08(a2, a3, v56);
      v57 = 0;
      v58 = 0xC000000000000000;
      goto LABEL_85;
    }

LABEL_51:
    v36 = 0;
    if (v33 > 1)
    {
      goto LABEL_52;
    }

LABEL_48:
    v40 = v67;
    if (v33)
    {
      v40 = v63;
      if (v64)
      {
        goto LABEL_87;
      }
    }
  }

  else
  {
    v33 = v72;
    if (v31 <= 1)
    {
      if (v31)
      {
        LODWORD(v36) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_88;
        }

        v36 = v36;
        if (v72 > 1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v36 = BYTE6(v22);
        if (v72 > 1)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_48;
    }

    if (v31 != 2)
    {
      goto LABEL_51;
    }

    v38 = *(v21 + 16);
    v37 = *(v21 + 24);
    v39 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v39)
    {
      goto LABEL_89;
    }

    if (v72 <= 1)
    {
      goto LABEL_48;
    }

LABEL_52:
    if (v33 != 2)
    {
      if (!v36)
      {
LABEL_83:
        v55 = MEMORY[0x1E69E7CF8];
        sub_1ADECDB08(v19, v20, MEMORY[0x1E69E7CF8]);
        sub_1ADDCC35C(v21, v22);
        sub_1ADECDB08(a2, a3, v55);
        v57 = a4;
        v58 = a5;
        goto LABEL_85;
      }

      goto LABEL_25;
    }

    v42 = *(a4 + 16);
    v41 = *(a4 + 24);
    v39 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (v39)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
    }
  }

  if (v36 != v40)
  {
    goto LABEL_25;
  }

  if (v36 < 1)
  {
    goto LABEL_83;
  }

  if (v31 > 1)
  {
    if (v31 != 2)
    {
      *(v77 + 6) = 0;
      *&v77[0] = 0;
      goto LABEL_76;
    }

    v43 = *(v21 + 16);
    v61 = *(v21 + 24);
    v44 = sub_1AE23BB7C();
    if (v44)
    {
      v45 = sub_1AE23BBAC();
      if (__OFSUB__(v43, v45))
      {
        goto LABEL_92;
      }

      v44 += v43 - v45;
    }

    if (__OFSUB__(v61, v43))
    {
      goto LABEL_91;
    }
  }

  else
  {
    if (!v31)
    {
      *&v77[0] = v21;
      WORD4(v77[0]) = v22;
      BYTE10(v77[0]) = BYTE2(v22);
      BYTE11(v77[0]) = BYTE3(v22);
      BYTE12(v77[0]) = BYTE4(v22);
      BYTE13(v77[0]) = BYTE5(v22);
LABEL_76:
      v48 = a5;
      v49 = v70;
      sub_1ADDD8820(v77, a4, v48, &v76);
      sub_1ADECDB08(v19, v20, MEMORY[0x1E69E7CF8]);
      sub_1ADDCC35C(v21, v22);
      if (v76)
      {
        goto LABEL_84;
      }

LABEL_80:
      v70 = v49;
      a5 = v69;
      goto LABEL_26;
    }

    if (v21 >> 32 < v21)
    {
      goto LABEL_90;
    }

    v46 = sub_1AE23BB7C();
    if (v46)
    {
      v62 = v46;
      v47 = sub_1AE23BBAC();
      if (__OFSUB__(v21, v47))
      {
        goto LABEL_93;
      }

      v44 = v21 - v47 + v62;
    }

    else
    {
      v44 = 0;
    }
  }

  sub_1AE23BB9C();
  v50 = v44;
  v49 = v70;
  a4 = v71;
  sub_1ADDD8820(v50, v71, v69, v77);
  sub_1ADECDB08(v19, v20, MEMORY[0x1E69E7CF8]);
  sub_1ADDCC35C(v21, v22);
  if ((v77[0] & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_84:
  sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);
  v57 = a4;
  v58 = v69;
LABEL_85:
  sub_1ADDCC35C(v57, v58);
  v59 = (*(v74 + 48) + 32 * v14);
  v60 = *v59;
  v75 = v59[1];
  *v66 = *v59;
  *(v66 + 1) = v75;
  sub_1ADE42C78(v60);
  sub_1ADDD86D8(v75, *(&v75 + 1));
  result = 0;
LABEL_82:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADEC1658(void *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1AE23E31C();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1ADDD86D8(v6, v7);
  sub_1AE23BECC();
  sub_1ADDCC35C(v6, v7);
  v8 = sub_1AE23E34C();
  v9 = v4 + 56;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_56:
    v36 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v49 = *v41;

    sub_1ADEC575C(v38, v11, isUniquelyReferenced_nonNull_native);
    *v41 = *v49;
    *a1 = a2;
    result = 1;
    goto LABEL_57;
  }

  v12 = 0;
  v13 = ~v10;
  v43 = v4;
  v44 = a2;
  v45 = v4 + 56;
  v47 = ~v10;
  while (1)
  {
    v14 = *(*(v4 + 48) + 8 * v11);
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    v18 = *(a2 + 16);
    v17 = *(a2 + 24);
    v19 = v15 >> 62;
    v20 = v17 >> 62;
    if (v15 >> 62 == 3)
    {
      break;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        v22 = BYTE6(v15);
        if (v20 <= 1)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      LODWORD(v22) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_61;
      }

      v22 = v22;
      goto LABEL_27;
    }

    if (v19 == 2)
    {
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      v26 = __OFSUB__(v24, v25);
      v22 = v24 - v25;
      if (v26)
      {
        goto LABEL_60;
      }

LABEL_27:
      if (v20 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v22 = 0;
    if (v20 <= 1)
    {
LABEL_28:
      if (v20)
      {
        LODWORD(v27) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
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
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v17);
      }

      goto LABEL_35;
    }

LABEL_33:
    if (v20 != 2)
    {
      if (!v22)
      {
        goto LABEL_55;
      }

      goto LABEL_4;
    }

    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_59;
    }

LABEL_35:
    if (v22 != v27)
    {
      goto LABEL_4;
    }

    if (v22 < 1)
    {
      goto LABEL_55;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v49 = *(v14 + 16);
        *&v49[8] = v15;
        v49[10] = BYTE2(v15);
        v49[11] = BYTE3(v15);
        v49[12] = BYTE4(v15);
        v49[13] = BYTE5(v15);

        sub_1ADDD86D8(v16, v15);
        sub_1ADDD86D8(v18, v17);
        v9 = v45;
        sub_1ADDD8820(v49, v18, v17, v48);

        sub_1ADDCC35C(v16, v15);
        sub_1ADDCC35C(v18, v17);
        v13 = v47;
        if (v48[0])
        {
          goto LABEL_55;
        }

        goto LABEL_4;
      }

      v46 = v12;
      if (v16 >> 32 < v16)
      {
        goto LABEL_62;
      }

      sub_1ADDD86D8(v16, v15);
      sub_1ADDD86D8(v18, v17);
      v31 = sub_1AE23BB7C();
      if (v31)
      {
        v33 = sub_1AE23BBAC();
        if (__OFSUB__(v16, v33))
        {
          goto LABEL_65;
        }

        v31 += v16 - v33;
      }

      goto LABEL_52;
    }

    if (v19 == 2)
    {
      v30 = *(v16 + 16);
      v40 = *(v16 + 24);

      sub_1ADDD86D8(v16, v15);
      sub_1ADDD86D8(v18, v17);
      v31 = sub_1AE23BB7C();
      v46 = v12;
      if (v31)
      {
        v32 = sub_1AE23BBAC();
        if (__OFSUB__(v30, v32))
        {
          goto LABEL_64;
        }

        v31 += v30 - v32;
      }

      if (__OFSUB__(v40, v30))
      {
        goto LABEL_63;
      }

LABEL_52:
      sub_1AE23BB9C();
      v12 = v46;
      sub_1ADDD8820(v31, v18, v17, v49);

      sub_1ADDCC35C(v16, v15);
      sub_1ADDCC35C(v18, v17);
      v34 = v49[0];
      v4 = v43;
      a2 = v44;
      v9 = v45;
      goto LABEL_54;
    }

    *&v49[6] = 0;
    *v49 = 0;

    sub_1ADDD86D8(v16, v15);
    sub_1ADDD86D8(v18, v17);
    sub_1ADDD8820(v49, v18, v17, v48);

    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v18, v17);
    v34 = v48[0];
LABEL_54:
    v13 = v47;
    if (v34)
    {
      goto LABEL_55;
    }

LABEL_4:
    v11 = (v11 + 1) & v13;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  if (v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = v15 == 0xC000000000000000;
  }

  v22 = 0;
  v23 = v21 && v17 >> 62 == 3;
  if (!v23 || v18 || v17 != 0xC000000000000000)
  {
    goto LABEL_27;
  }

LABEL_55:

  *a1 = *(*(v4 + 48) + 8 * v11);

  result = 0;
LABEL_57:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADEC1B64(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1B26FCBA0](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1ADEC5CF8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1ADEC1C4C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](a2);
  v7 = sub_1AE23E34C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1ADEC5E1C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1ADEC1D6C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  v10 = *(*v5 + 40);
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v11 = sub_1AE23E34C();

  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v9 + 48) + 8 * v13);
      v16 = sub_1AE23CD0C();
      v18 = v17;
      if (v16 == sub_1AE23CD0C() && v18 == v19)
      {

        goto LABEL_12;
      }

      v21 = sub_1AE23E00C();

      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v26 = *(*(v9 + 48) + 8 * v13);
    *a1 = v26;
    v27 = v26;
    return 0;
  }

  else
  {
LABEL_9:
    v22 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v6;
    v24 = a2;
    sub_1ADEC5F68(v24, v13, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v31;
    *a1 = v24;
    return 1;
  }
}

uint64_t sub_1ADEC1F28(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v8 = sub_1AE23E34C();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_1ADDD86D8(a2, a3);
    sub_1ADEC6174(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
            __break(1u);
LABEL_65:
            __break(1u);
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_1ADDD86D8(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_1ADDD86D8(v19, v18);
      v33 = sub_1AE23BB7C();
      if (v33)
      {
        v35 = sub_1AE23BBAC();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_1ADDD86D8(v19, v18);
    v33 = sub_1AE23BB7C();
    if (v33)
    {
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_1AE23BB9C();
    a3 = v47;
    sub_1ADDD8820(v33, a2, v47, v53);
    sub_1ADDCC35C(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_1ADDD86D8(v19, v18);
LABEL_60:
  sub_1ADDD8820(v53, a2, a3, &v52);
  sub_1ADDCC35C(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_1ADDCC35C(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_1ADDD86D8(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADEC23B0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1AE23E30C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1ADEC65EC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1ADEC2490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1AE23E31C();
  sub_1ADF76AA0(v24, a2);
  sub_1ADF76AA0(v24, a3);
  v9 = sub_1AE23E34C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];

      sub_1ADF64C74(v16, a3);
      if (v17)
      {
        sub_1ADF64C74(v14, a2);
        v19 = v18;

        if (v19)
        {

          *a1 = *(*(v7 + 48) + 16 * v11);

          return 0;
        }
      }

      else
      {
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v21 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v24[0] = *v4;

  sub_1ADEC670C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v4 = *&v24[0];
  *a1 = a2;
  *(a1 + 8) = a3;
  return 1;
}

uint64_t sub_1ADEC2648(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v9 = sub_1AE23E34C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1AE23E00C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1ADEC68D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1ADEC2798(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
  v36 = a2;
  v13 = sub_1AE23CBBC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1ADDE5F54(&qword_1ED969648, MEMORY[0x1E6968FB0]);
      v23 = sub_1AE23CCBC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1ADEC6A54(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1ADEC2A78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
    v2 = sub_1AE23D9EC();
    v20 = v2;
    sub_1AE23D93C();
    v3 = sub_1AE23D9AC();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for AnyReference();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_1ADEC2EF8(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        sub_1AE23E31C();
        (*(*v6 + 104))(v19);
        result = sub_1AE23E34C();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = sub_1AE23D9AC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1ADEC2C98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC2EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1AE23E31C();
      (*(*v18 + 104))(v29);
      result = sub_1AE23E34C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC3168(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA998, &qword_1AE245648);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v20 = (*(v3 + 48) + 32 * (v17 | (v7 << 6)));
      v31 = v20[1];
      v32 = *v20;
      v21 = *(v6 + 40);
      sub_1AE23E31C();
      sub_1AE23E33C();
      if (v32)
      {

        sub_1ADF76AA0(v33, v32);
        sub_1ADF76AA0(v33, *(&v32 + 1));
        sub_1ADECDB08(v32, *(&v32 + 1), MEMORY[0x1E69E7CF8]);
      }

      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v15 = v32;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v15 = v32;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = (*(v6 + 48) + 32 * v14);
      *v16 = v15;
      v16[1] = v31;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v19 = v8[v7];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC3450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9D0, &qword_1AE245678);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1AE23E31C();
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      sub_1ADDD86D8(v20, v21);
      sub_1AE23BECC();
      sub_1ADDCC35C(v20, v21);
      result = sub_1AE23E34C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC36C4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1AE23BFEC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA988, &qword_1AE245638);
  result = sub_1AE23D9DC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8]);
      result = sub_1AE23CBBC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1ADEC3A20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C0, &qword_1AE245668);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      result = MEMORY[0x1B26FCBA0](*(v6 + 40), v18, 2);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 2 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC3C48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C8, &qword_1AE245670);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1AE23E31C();
      MEMORY[0x1B26FCBD0](v18);
      result = sub_1AE23E34C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC3E98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1AE23D9DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1AE23CD0C();
      sub_1AE23E31C();
      sub_1AE23CDAC();
      v22 = sub_1AE23E34C();

      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v4 = v31;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1ADEC410C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA28, &qword_1AE2456B0);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC436C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA20, &qword_1AE2456A8);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1AE23E30C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1ADEC4590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA990, &qword_1AE245640);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v17 = *(v6 + 40);
      v20 = *(*(v3 + 48) + 16 * (v14 | (v7 << 6)));
      sub_1AE23E31C();
      sub_1ADF76AA0(v21, v20);
      sub_1ADF76AA0(v21, *(&v20 + 1));
      sub_1AE23E34C();
      v18 = -1 << *(v6 + 32);
      result = sub_1AE23D91C();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 16 * result) = v20;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
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

    v19 = 1 << *(v3 + 32);
    if (v19 >= 64)
    {
      bzero((v3 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v19;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC4784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1AE23E31C();
      sub_1AE23CDAC();
      result = sub_1AE23E34C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ADEC49E4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1AE23BDDC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9A0, &qword_1AE245650);
  result = sub_1AE23D9DC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      result = sub_1AE23CBBC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_1ADEC4D40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1AE23E31C();
  (*(*a1 + 104))(v7);
  sub_1AE23E34C();
  v5 = -1 << *(a2 + 32);
  result = sub_1AE23D91C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1ADEC4E04(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC2EF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1ADEC6E78();
      goto LABEL_12;
    }

    sub_1ADEC7DF8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1AE23E31C();
  (*(*v5 + 104))(v17);
  result = sub_1AE23E34C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AnyReference();
    do
    {
      v12 = *(**(*(v8 + 48) + 8 * a2) + 96);

      LOBYTE(v12) = v12(v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEC4FC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v70 = *MEMORY[0x1E69E9840];
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_87;
  }

  if (a6)
  {
    v14 = v65;
    sub_1ADEC3168(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1ADEC6FC8();
      goto LABEL_87;
    }

    v14 = v65;
    sub_1ADEC8048(v12 + 1);
  }

  v67 = *v14;
  v15 = *(*v14 + 40);
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (v11)
  {

    sub_1ADF76AA0(v69, v11);
    sub_1ADF76AA0(v69, a2);
    sub_1ADECDB08(v11, a2, MEMORY[0x1E69E7CF8]);
  }

  sub_1AE23BECC();
  result = sub_1AE23E34C();
  v16 = -1 << *(v67 + 32);
  a5 = result & ~v16;
  if ((*(v67 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v66 = ~v16;
    if (a3)
    {
      v17 = 0;
    }

    else
    {
      v17 = a4 == 0xC000000000000000;
    }

    v18 = !v17;
    v61 = v18;
    v63 = a4 >> 62;
    v19 = __OFSUB__(HIDWORD(a3), a3);
    v59 = v19;
    v58 = HIDWORD(a3) - a3;
    v60 = BYTE6(a4);
    v62 = a4;
    v64 = a3;
    while (1)
    {
      v20 = (*(v67 + 48) + 32 * a5);
      v22 = *v20;
      v21 = v20[1];
      v24 = v20[2];
      v23 = v20[3];
      if (!*v20)
      {
        break;
      }

      if (!v11)
      {
        sub_1ADE42C78(0);
        sub_1ADE42C78(v22);
        sub_1ADDD86D8(v24, v23);
        sub_1ADE42C78(v22);
        sub_1ADE42C78(v22);

LABEL_29:
        v30 = MEMORY[0x1E69E7CF8];
        sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
        v31 = v11;
        v32 = a2;
LABEL_31:
        sub_1ADECDB08(v31, v32, v30);
        goto LABEL_32;
      }

      sub_1ADE42C78(v11);
      sub_1ADE42C78(v22);
      sub_1ADDD86D8(v24, v23);
      sub_1ADE42C78(v22);
      sub_1ADE42C78(v22);
      sub_1ADF64C74(v21, a2);
      if ((v25 & 1) == 0)
      {
        v30 = MEMORY[0x1E69E7CF8];
        sub_1ADECDB08(v11, a2, MEMORY[0x1E69E7CF8]);

        v31 = v22;
        v32 = v21;
        goto LABEL_31;
      }

      sub_1ADF64C74(v22, v11);
      v27 = v26;
      v28 = MEMORY[0x1E69E7CF8];
      sub_1ADECDB08(v11, a2, MEMORY[0x1E69E7CF8]);

      v29 = v28;
      a3 = v64;
      sub_1ADECDB08(v22, v21, v29);
      if (v27)
      {
        goto LABEL_36;
      }

LABEL_32:
      sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
      result = sub_1ADDCC35C(v24, v23);
LABEL_33:
      a5 = (a5 + 1) & v66;
      if (((*(v67 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    if (v11)
    {
      sub_1ADE42C78(v11);
      sub_1ADE42C78(0);
      sub_1ADDD86D8(v24, v23);
      sub_1ADE42C78(0);
      goto LABEL_29;
    }

    sub_1ADE42C78(0);
    sub_1ADE42C78(0);
    sub_1ADDD86D8(v24, v23);
    sub_1ADE42C78(0);
    sub_1ADECDB08(0, v21, MEMORY[0x1E69E7CF8]);
LABEL_36:
    v33 = v23 >> 62;
    if (v23 >> 62 == 3)
    {
      v34 = 0;
      if (v24)
      {
        v35 = 0;
      }

      else
      {
        v35 = v23 == 0xC000000000000000;
      }

      v36 = v63;
      v38 = !v35 || v63 < 3;
      if (((v38 | v61) & 1) == 0)
      {
        v24 = 0;
        v23 = 0xC000000000000000;
LABEL_99:
        sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
        sub_1ADDCC35C(v24, v23);
LABEL_100:
        result = sub_1AE23E26C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v36 = v63;
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v44 = *(v24 + 16);
          v43 = *(v24 + 24);
          v42 = __OFSUB__(v43, v44);
          v34 = v43 - v44;
          if (v42)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v34 = 0;
        }
      }

      else if (v33)
      {
        LODWORD(v34) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_92;
        }

        v34 = v34;
      }

      else
      {
        v34 = BYTE6(v23);
      }
    }

    if (v36 > 1)
    {
      if (v36 != 2)
      {
        if (!v34)
        {
          goto LABEL_99;
        }

        goto LABEL_32;
      }

      v41 = *(a3 + 16);
      v40 = *(a3 + 24);
      v42 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v42)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v39 = v60;
      if (v36)
      {
        v39 = v58;
        if (v59)
        {
          goto LABEL_90;
        }
      }
    }

    if (v34 == v39)
    {
      if (v34 < 1)
      {
        goto LABEL_99;
      }

      if (v33 > 1)
      {
        if (v33 != 2)
        {
          *(v69 + 6) = 0;
          *&v69[0] = 0;
          goto LABEL_82;
        }

        v45 = *(v24 + 16);
        v56 = *(v24 + 24);
        v46 = sub_1AE23BB7C();
        if (v46)
        {
          v47 = sub_1AE23BBAC();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_96;
          }

          v46 += v45 - v47;
        }

        if (__OFSUB__(v56, v45))
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (!v33)
        {
          *&v69[0] = v24;
          WORD4(v69[0]) = v23;
          BYTE10(v69[0]) = BYTE2(v23);
          BYTE11(v69[0]) = BYTE3(v23);
          BYTE12(v69[0]) = BYTE4(v23);
          BYTE13(v69[0]) = BYTE5(v23);
LABEL_82:
          sub_1ADDD8820(v69, a3, a4, &v68);
          sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
          result = sub_1ADDCC35C(v24, v23);
          if (v68)
          {
            goto LABEL_100;
          }

LABEL_86:
          a4 = v62;
          goto LABEL_33;
        }

        if (v24 >> 32 < v24)
        {
          goto LABEL_94;
        }

        v48 = sub_1AE23BB7C();
        if (v48)
        {
          v57 = v48;
          v49 = sub_1AE23BBAC();
          if (__OFSUB__(v24, v49))
          {
            goto LABEL_97;
          }

          v46 = v24 - v49 + v57;
        }

        else
        {
          v46 = 0;
        }
      }

      sub_1AE23BB9C();
      v50 = v46;
      a3 = v64;
      sub_1ADDD8820(v50, v64, v62, v69);
      sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
      result = sub_1ADDCC35C(v24, v23);
      if (v69[0])
      {
        goto LABEL_100;
      }

      goto LABEL_86;
    }

    goto LABEL_32;
  }

LABEL_87:
  v51 = *v65;
  *(*v65 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v52 = (*(v51 + 48) + 32 * a5);
  *v52 = v11;
  v52[1] = a2;
  v52[2] = a3;
  v52[3] = a4;
  v53 = *(v51 + 16);
  v42 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v42)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  *(v51 + 16) = v54;
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADEC575C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v51 = *MEMORY[0x1E69E9840];
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ADEC3450(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1ADEC7148();
        goto LABEL_63;
      }

      sub_1ADEC8344(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1AE23E31C();
    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_1ADDD86D8(v10, v11);
    sub_1AE23BECC();
    sub_1ADDCC35C(v10, v11);
    result = sub_1AE23E34C();
    v12 = v8 + 56;
    v13 = -1 << *(v8 + 32);
    a2 = result & ~v13;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      v44 = v8;
      v45 = v5;
      v47 = v8 + 56;
      v48 = ~v13;
      while (1)
      {
        v15 = *(*(v8 + 48) + 8 * a2);
        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v20 = v16 >> 62;
        v21 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            v23 = BYTE6(v16);
            if (v21 <= 1)
            {
              goto LABEL_35;
            }

            goto LABEL_40;
          }

          LODWORD(v23) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_69;
          }

          v23 = v23;
          goto LABEL_34;
        }

        if (v20 == 2)
        {
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          v27 = __OFSUB__(v25, v26);
          v23 = v25 - v26;
          if (v27)
          {
            goto LABEL_68;
          }

          goto LABEL_34;
        }

        v23 = 0;
        if (v21 <= 1)
        {
LABEL_35:
          if (v21)
          {
            LODWORD(v28) = HIDWORD(v19) - v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_66;
            }

            v28 = v28;
          }

          else
          {
            v28 = BYTE6(v18);
          }

          goto LABEL_42;
        }

LABEL_40:
        if (v21 != 2)
        {
          if (!v23)
          {
            goto LABEL_62;
          }

          goto LABEL_11;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
          __break(1u);
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
        }

LABEL_42:
        if (v23 == v28)
        {
          if (v23 < 1)
          {
            goto LABEL_62;
          }

          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v32 = *(v17 + 16);
              v33 = *(v17 + 24);
              v34 = *(*(v8 + 48) + 8 * a2);

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v36 = sub_1AE23BBAC();
                if (__OFSUB__(v32, v36))
                {
                  goto LABEL_72;
                }

                v35 += v32 - v36;
              }

              if (__OFSUB__(v33, v32))
              {
                goto LABEL_71;
              }

              sub_1AE23BB9C();
              sub_1ADDD8820(v35, v19, v18, v50);
              v14 = v48;

              sub_1ADDCC35C(v17, v16);
              result = sub_1ADDCC35C(v19, v18);
              v8 = v44;
              v5 = v45;
              v12 = v47;
              if (v50[0])
              {
                goto LABEL_62;
              }
            }

            else
            {
              *&v50[6] = 0;
              *v50 = 0;

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              sub_1ADDD8820(v50, v19, v18, v49);
              v14 = v48;

              sub_1ADDCC35C(v17, v16);
              result = sub_1ADDCC35C(v19, v18);
              if (v49[0])
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            if (v20)
            {
              if (v17 >> 32 < v17)
              {
                goto LABEL_70;
              }

              v37 = *(*(v8 + 48) + 8 * a2);

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              v38 = sub_1AE23BB7C();
              if (v38)
              {
                v39 = sub_1AE23BBAC();
                if (__OFSUB__(v17, v39))
                {
                  goto LABEL_73;
                }

                v38 += v17 - v39;
              }

              sub_1AE23BB9C();
              sub_1ADDD8820(v38, v19, v18, v50);

              sub_1ADDCC35C(v17, v16);
              result = sub_1ADDCC35C(v19, v18);
              v31 = v50[0];
              v8 = v44;
              v5 = v45;
              v12 = v47;
            }

            else
            {
              *v50 = *(v15 + 16);
              *&v50[8] = v16;
              v50[10] = BYTE2(v16);
              v50[11] = BYTE3(v16);
              v50[12] = BYTE4(v16);
              v50[13] = BYTE5(v16);

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              v12 = v47;
              sub_1ADDD8820(v50, v19, v18, v49);

              sub_1ADDCC35C(v17, v16);
              result = sub_1ADDCC35C(v19, v18);
              v31 = v49[0];
            }

            v14 = v48;
            if (v31)
            {
LABEL_62:
              result = sub_1AE23E26C();
              __break(1u);
              goto LABEL_63;
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v14;
        if (((*(v12 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      if (v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16 == 0xC000000000000000;
      }

      v23 = 0;
      v24 = v22 && v18 >> 62 == 3;
      if (v24 && !v19 && v18 == 0xC000000000000000)
      {
        goto LABEL_62;
      }

LABEL_34:
      if (v21 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

LABEL_63:
  v40 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v40 + 48) + 8 * a2) = v5;
  v41 = *(v40 + 16);
  v27 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (v27)
  {
    goto LABEL_67;
  }

  *(v40 + 16) = v42;
  v43 = *MEMORY[0x1E69E9840];
  return result;
}