int64_t sub_1ADE1B784(int a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v13 = (a4 >> a1) & 0x1F;
  v14 = (a7 >> a1) & 0x1F;
  if (v13 == v14)
  {
    sub_1ADDD86D8(a2, a3);
    v17 = sub_1ADE1B784((a1 + 5), a2, a3, a4, a5, a6, a7);
    v19 = v18;
    v20 = sub_1ADDDB860(16);
    *(v20 + 16) = 0;
    *(v20 + 20) = 1 << v13;
    *(v20 + 28) -= 16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
  }

  else
  {
    v21 = (1 << (a7 >> a1)) | (1 << (a4 >> a1));
    a8.i32[0] = v21;
    v22 = vcnt_s8(a8);
    v22.i16[0] = vaddlv_u8(v22);
    v23 = (16 * v22.i32[0]);
    v20 = sub_1ADDDB860(v23);
    v24 = *(v20 + 24);
    *(v20 + 28) -= v23;
    *(v20 + 16) = v21;
    *(v20 + 20) = 0;
    v25 = v20 - v23 + v24 + 32;
    v26 = (v25 + 16 * (v13 < v14));
    *v26 = a2;
    v26[1] = a3;
    v27 = v25 + 16 * (v13 >= v14);
    sub_1ADDD86D8(a2, a3);
    sub_1ADDD86D8(a2, a3);
    a5(v27);
    sub_1ADDCC35C(a2, a3);
  }

  sub_1ADDCC35C(a2, a3);
  return v20;
}

id sub_1ADE1B924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA098, &qword_1AE241878);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1ADDE4E28(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1ADDEE390(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t CRStruct_4.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v54 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v54 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v54 - v12;
  v72 = swift_getAssociatedTypeWitness();
  v74 = *(v72 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x1EEE9AC00](v72);
  v73 = &v54 - v15;
  (*(v4 + 80))(v81, a2, v4, v14);
  v16 = v81[1];
  v71 = v81[2];
  v79 = v81[4];
  v78 = v81[5];
  v17 = v81[7];
  v18 = v81[8];
  v20 = v81[10];
  v19 = v81[11];
  sub_1AE23DB8C();
  v80[0] = swift_getTupleTypeMetadata2();
  v61 = v10;
  sub_1AE23DB8C();
  v80[1] = swift_getTupleTypeMetadata2();
  v58 = v7;
  sub_1AE23DB8C();
  v80[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v80[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v76 = *(TupleTypeMetadata - 8);
  v22 = *(v76 + 16);
  v63 = v76 + 16;
  v62 = v22;
  v22(v80, v81, TupleTypeMetadata);
  v68 = v16;
  v23 = v75;

  v67 = v19;

  v64 = v20;

  v65 = v18;

  v66 = v17;

  v24 = v73;
  swift_getAtKeyPath();

  v69 = v4;
  v70 = a2;
  v25 = v72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(v23, v25);
  (*(v74 + 8))(v24, v25);
  v27 = v23[3];
  v28 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v27);
  v29 = *(v28 + 8);
  v30 = v28;
  v31 = TupleTypeMetadata;
  if ((v29(v27, v30) & 1) == 0)
  {
    v62(v80, v81, TupleTypeMetadata);

    v32 = v59;
    swift_getAtKeyPath();

    v33 = v61;
    v34 = swift_getAssociatedConformanceWitness();
    (*(*(v34 + 16) + 48))(v23, v33);
    (*(v60 + 8))(v32, v33);
    v35 = v31;
    v36 = v23[3];
    v37 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v36);
    v38 = *(v37 + 8);
    v39 = v37;
    v31 = v35;
    if ((v38(v36, v39) & 1) == 0)
    {
      v62(v80, v81, v35);

      v40 = v56;
      swift_getAtKeyPath();

      v41 = v58;
      v42 = swift_getAssociatedConformanceWitness();
      (*(*(v42 + 16) + 48))(v23, v41);
      (*(v57 + 8))(v40, v41);
      v43 = v23[3];
      v44 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v43);
      v45 = *(v44 + 8);
      v46 = v44;
      v31 = v35;
      if ((v45(v43, v46) & 1) == 0)
      {
        v62(v80, v81, v35);

        v47 = v54;
        swift_getAtKeyPath();

        v48 = AssociatedTypeWitness;
        v49 = swift_getAssociatedConformanceWitness();
        (*(*(v49 + 16) + 48))(v23, v48);
        (*(v55 + 8))(v47, v48);
        v50 = v23[3];
        v51 = v23[4];
        __swift_project_boxed_opaque_existential_1(v23, v50);
        if (((*(v51 + 8))(v50, v51) & 1) == 0)
        {
          v52 = (*(*(v69 + 8) + 24))(v70);
          sub_1ADDDC764(v23, v52);
        }
      }
    }
  }

  return (*(v76 + 8))(v81, v31);
}

uint64_t CRStruct_2.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v26 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  (*(v6 + 48))(v34, a2, v6, v13);
  v32 = v34[1];
  v33 = v34[4];
  v31 = v34[5];

  v30 = v3;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(a1, v10);
  (*(v11 + 8))(v15, v10);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  if ((*(v18 + 8))(v17, v18))
  {
  }

  else
  {

    v19 = v27;
    swift_getAtKeyPath();

    v20 = v29;
    v21 = swift_getAssociatedConformanceWitness();
    (*(*(v21 + 16) + 48))(a1, v20);
    (*(v28 + 8))(v19, v20);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    if ((*(v23 + 8))(v22, v23))
    {
    }

    else
    {
      v24 = (*(*(v6 + 8) + 24))(a2);
      sub_1ADDDC764(a1, v24);
    }
  }
}

uint64_t sub_1ADE1C81C(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t CRDictionary.visitReferences(_:)(void *a1, void *a2)
{
  v3 = v2;
  v86 = a1;
  v5 = a2[3];
  v80 = a2[6];
  v81 = v5;
  v6 = type metadata accessor for CRDictionaryElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v69 - v12;
  v82 = a2;
  v13 = a2[2];
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v95 = v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_1AE23D7CC();
  v23 = *(v89 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v69 - v27;
  v28 = *v3;
  swift_beginAccess();
  v29 = *(v28 + 40);
  v30 = *(v29 + 64);
  v70 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v69 = (v31 + 63) >> 6;
  v92 = TupleTypeMetadata2;
  v88 = TupleTypeMetadata2 - 8;
  v34 = v10;
  v72 = v14 + 16;
  v71 = v7 + 16;
  v93 = (v7 + 32);
  v94 = (v14 + 32);
  v87 = (v23 + 32);
  v78 = v7;
  v83 = (v7 + 8);
  v75 = v14;
  v84 = (v14 + 8);
  v79 = v29;

  v36 = 0;
  v77 = v18;
  v73 = v10;
  v85 = v13;
  if (v33)
  {
    while (1)
    {
      v37 = v36;
LABEL_12:
      v43 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v44 = v43 | (v37 << 6);
      v45 = v79;
      v46 = v75;
      v47 = v74;
      (*(v75 + 16))(v74, *(v79 + 48) + *(v75 + 72) * v44, v13);
      v48 = v78;
      v49 = *(v45 + 56) + *(v78 + 72) * v44;
      v50 = v76;
      v51 = v95;
      (*(v78 + 16))(v76, v49, v95);
      v40 = v92;
      v52 = *(v92 + 48);
      v53 = *(v46 + 32);
      v41 = v91;
      v53(v91, v47, v13);
      (*(v48 + 32))(&v41[v52], v50, v51);
      v54 = 0;
      v39 = v37;
      v18 = v77;
      v34 = v73;
      v42 = v90;
LABEL_13:
      v55 = *(v40 - 8);
      (*(v55 + 56))(v41, v54, 1, v40);
      (*v87)(v42, v41, v89);
      if ((*(v55 + 48))(v42, 1, v40) == 1)
      {
      }

      v96 = v39;
      v56 = *(v40 + 48);
      v57 = v85;
      (*v94)(v18, v42, v85);
      v58 = v34;
      v59 = v34;
      v60 = v95;
      (*v93)(v59, &v42[v56]);
      v61 = v86;
      v62 = v18;
      v64 = v86[3];
      v63 = v86[4];
      __swift_project_boxed_opaque_existential_1(v86, v64);
      if ((*(v63 + 8))(v64, v63) & 1) != 0 || ((*(*(v82[4] + 8) + 48))(v61, v57), v65 = v61[3], v66 = v61[4], __swift_project_boxed_opaque_existential_1(v61, v65), ((*(v66 + 8))(v65, v66)))
      {

        (*v83)(v58, v60);
        return (*v84)(v62, v57);
      }

      v67 = v60;
      v68 = *(v60 + 36);
      v34 = v58;
      (*(*(v80 + 8) + 48))(v61, v81);
      (*v83)(v58, v67);
      result = (*v84)(v62, v57);
      v36 = v96;
      v13 = v57;
      v18 = v62;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v69 <= v36 + 1)
    {
      v38 = v36 + 1;
    }

    else
    {
      v38 = v69;
    }

    v39 = v38 - 1;
    v41 = v91;
    v40 = v92;
    v42 = v90;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v69)
      {
        v33 = 0;
        v54 = 1;
        goto LABEL_13;
      }

      v33 = *(v70 + 8 * v37);
      ++v36;
      if (v33)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CROrderedTree.visitReferences(_:)(void *a1, void *a2)
{
  v9 = *v2;
  v10 = v2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v7 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.visitReferences(_:)(a1, v7);
}

uint64_t CROrderedDictionary.visitReferences(_:)(void *a1, _OWORD *a2)
{
  v10 = *(v2 + 8);

  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v5 = type metadata accessor for CRDictionary();
  CRDictionary.visitReferences(_:)(a1, v5);
}

uint64_t SharedTagged_2.visitReferences(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 36);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v18.n128_u64[0] = swift_getAssociatedTypeWitness();
  v18.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v19 = &protocol witness table for Int;
  v20 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v21);
  v10 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *v3;
  v11 = v3[1];
  v17.n128_u64[0] = v12;
  v17.n128_u64[1] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v17, &v18);
  v17 = v18;
  v15 = *(v9 + 16);
  sub_1ADDD86D8(v12, v11);
  v15(&v17, AssociatedTypeWitness, AssociatedConformanceWitness, v10, v9);
  return sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
}

__n128 Ref.init(id:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE1D29C(_OWORD *a1)
{
  v5[2] = *a1;
  v1 = type metadata accessor for Ref();
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v1, WitnessTable);
  v5[0] = v5[1];
  swift_beginAccess();
  sub_1ADE1D3FC(v5);
  v3 = v5[0];
  swift_endAccess();
  return sub_1ADDCC35C(v3, *(&v3 + 1));
}

uint64_t sub_1ADE1D374(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t Ref.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

unint64_t sub_1ADE1D3FC(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v20 = v8;
  result = sub_1ADDDE7CC(v4, v5);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v10;
  if (v8[3] < v14)
  {
    sub_1ADE1D52C(v14, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDDE7CC(v4, v5);
    if ((v2 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1AE23E27C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v3 = v8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = result;
  sub_1ADDE8C98(result, v4, v5, 0, v8);
  sub_1ADDD86D8(v4, v5);
  result = v3;
LABEL_8:
  while (1)
  {
    v16 = v8[7];
    v17 = *(v16 + 8 * result);
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v13)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v19 = result;
    sub_1ADF6F1AC();
    result = v19;
    v8 = v20;
    *v3 = v20;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 8 * result) = v18;
  return result;
}

uint64_t sub_1ADE1D52C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADE1D7CC()
{
  v1 = v0[6];
  sub_1ADE42CB8(v0[5]);
  v2 = v0[7];

  sub_1ADE73D6C(v0[8], v0[9], v0[10]);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE1D820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1ADE1D884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t Capsule.root.getter(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  sub_1ADE1D940(a1);
  Capsule.Ref.root.getter();
}

void *sub_1ADE1D940(void *result)
{
  v2 = v1[4];
  if (v2)
  {
    v5 = v1;
    v3 = *v1;
    v4 = v5[1];
    v6 = result[2];
    v7 = result[3];
    type metadata accessor for Capsule.Ref();
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v4;
    v8[4] = v2;
    sub_1ADDD86D8(v3, v4);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.Ref.root.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[4];
  v9 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v8 + v9, v7, type metadata accessor for PartiallyOrderedReferenceMap);
  swift_beginAccess();
  v11 = v1[2];
  v10 = v1[3];
  v12 = &v7[*(v4 + 28)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  sub_1ADDD86D8(v11, v10);
  sub_1ADDDF7A8(v11, v10, v13, v22);
  sub_1ADDCC35C(v11, v10);
  result = sub_1ADDD872C(v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v17 = v23;
  if (v23)
  {
    v18 = v22[0];
    v19 = v22[1];

    result = sub_1ADDDC21C(v20, v19, v17);
    if (v18)
    {
      (*(*v18 + 88))(v24, result);

      v21 = *(v2 + 80);
      return swift_dynamicCast();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE1DC00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = *(v3 + 296);
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v10, v5);
  v11 = *(v4 - 8);
  result = (*(v11 + 48))(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v11 + 32))(boxed_opaque_existential_1, v9, v4);
  }

  return result;
}

uint64_t *Capsule.callAsFunction<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  return Capsule.mutate<A>(_:)(a1, a2, a3);
}

{
  return Capsule.mutate<A>(_:)(a1, a2, a3);
}

uint64_t Capsule.Ref.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-v8];
  Capsule.Ref.root.getter();
  v10 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 16))(a2);
  v10(v12, 0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t CROrderedTree.children(of:)(uint64_t a1, void *a2)
{
  v20 = a1;
  v4 = a2[2];
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a2[3];
  v11 = a2[4];
  v12 = type metadata accessor for TreeNode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v20 - v16;
  v18 = *(v2 + 16);
  (*(v6 + 16))(v9, v20, v5, v15);
  sub_1ADE1E114(v9, v4, v17);
  sub_1AE23D11C();
  swift_getWitnessTable();
  sub_1AE23CB7C();
  (*(v13 + 8))(v17, v12);
  result = v21;
  if (!v21)
  {
    return sub_1AE23D05C();
  }

  return result;
}

uint64_t sub_1ADE1E114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v13 - v10;
  (*(v7 + 16))(&v13 - v10, a1, v6, v9);
  sub_1ADE12910(v11, a2, a3);
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_1ADE1E20C()
{
  sub_1ADE1E264();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE1E264()
{
  v1 = v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v2 = (v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v3 = v2[1];
  v13[0] = MEMORY[0x1E69E7CC8];
  v13[1] = v3;

  sub_1ADDF8100(v13);

  sub_1ADE73DF4(v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references);
  v4 = *(v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets);

  v5 = *(v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated);

  v7 = *v2;
  v6 = v2[1];

  v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  v9 = sub_1AE23BFEC();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);

  v11 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_caches);

  return v1;
}

uint64_t SharedTagged_2.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t Ref.subscript.getter(__int128 *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v6 = *v2;
  v5 = v2[1];
  v7 = a1[1];
  v14 = *a1;
  v15 = v7;
  v16 = v4;
  v12 = v6;
  v13 = v5;
  sub_1ADDD86D8(v6, v5);
  v8 = type metadata accessor for Capsule();
  Capsule.subscript.getter(&v12, v8, *(a2 + 16), *(a2 + 24));
  v9 = v12;
  v10 = v13;

  return sub_1ADDCC35C(v9, v10);
}

uint64_t *sub_1ADE1E598(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  if (*(v5 + 32))
  {
    v9 = result[1];
    v12 = *result;
    v13 = v9;
    sub_1ADDD86D8(v12, v9);
    a5(&v12, a3, a4);
    v10 = v12;
    v11 = v13;

    return sub_1ADDCC35C(v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *Capsule.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1ADE1E598(a1, a2, a3, a4, sub_1ADE1E638);
}

{
  return sub_1ADE1E598(a1, a2, a3, a4, sub_1ADEAE800);
}

uint64_t sub_1ADE1E638(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v1 + v10, v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v28 = v9;
  v29 = v8;
  v11 = type metadata accessor for Ref();
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v11, WitnessTable);
  v13 = v26;
  v14 = v27;
  v15 = &v7[*(v4 + 28)];
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  sub_1ADDDF7A8(v26, v27, *v15, v24);
  sub_1ADDCC35C(v13, v14);
  result = sub_1ADDD872C(v7, type metadata accessor for PartiallyOrderedReferenceMap);
  v19 = v25;
  if (v25)
  {
    v20 = v24[0];
    v21 = v24[1];

    result = sub_1ADDDC21C(v22, v21, v19);
    if (v20)
    {
      (*(*v20 + 88))(v30, result);

      return swift_dynamicCast();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SharedTagged_2.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1ADE1E9F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1AE23CD0C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1ADE1EA34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1EA7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1EACC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {

    v5 = v0[8];
  }

  if (v0[9])
  {

    v6 = v0[10];
  }

  if (v0[11])
  {

    v7 = v0[12];
  }

  if (v0[13])
  {

    v8 = v0[14];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE1EBE4()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE1EC4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE1EC94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE1ECD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE1ED2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1ED64()
{
  if (v0[6] != 1)
  {
    sub_1ADDCC35C(v0[2], v0[3]);
    sub_1ADDCC35C(v0[4], v0[5]);
    v1 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE1EDB8()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  v8 = *(v0 + 56);

  v9 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE1EEB0()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1ADE1EF28()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ADE1EFB8()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1ADE1F0A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE1F0DC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

__n128 sub_1ADE1F220(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1ADE1F2E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1ADE1F318(uint64_t a1, uint64_t *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;

  return sub_1ADECD208(a1, v4);
}

__n128 sub_1ADE1F368(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE1F380()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1F424@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADDD6F8C(*v2, *(v2 + 8), *a1, *(a1 + 8));
  *a2 = result & 1;
  return result;
}

__n128 sub_1ADE1F480@<Q0>(uint64_t a1@<X8>)
{
  sub_1ADE1F5AC(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1ADE1F4F0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x2000000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_1ADE1F524(uint64_t a1)
{
  v1 = ((*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128))) ^ 0x3FF;
  if (v1 >= 0x3FB)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ADE1F554(uint64_t result)
{
  *(result + 48) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_1ADE1F568(uint64_t result)
{
  *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_1ADE1F580(uint64_t result)
{
  *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_1ADE1F598(uint64_t result)
{
  *(result + 48) |= 0x3000000000000000uLL;
  *(result + 128) = 0;
  return result;
}

double sub_1ADE1F5AC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x3000000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ADE1F674()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1ADE1F6E8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ADE1FE00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1FE38()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE1FE78()
{
  v1 = v0[4];

  sub_1ADDCC35C(v0[5], v0[6]);
  sub_1ADDCC35C(v0[7], v0[8]);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1ADE1FEC8()
{
  v1 = v0[6];

  sub_1ADDCC35C(v0[7], v0[8]);
  sub_1ADDCC35C(v0[9], v0[10]);
  v2 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1ADE1FF18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE1FF50()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ADE1FFD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE20008()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE20058()
{
  v1 = v0[4];

  sub_1ADDCC35C(v0[5], v0[6]);
  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ADE200A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1ADDCC35C(v0[5], v0[6]);
  sub_1ADDCC35C(v0[7], v0[8]);
  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE200F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE20144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ADE201C8()
{
  swift_getWitnessTable();

  return sub_1AE23D3CC();
}

uint64_t sub_1ADE2024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

id sub_1ADE202E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a3;
  v9 = type metadata accessor for CRArray();
  return sub_1ADF5C6F0(a1, v8, v9);
}

__n128 sub_1ADE20344(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE20358(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AE23C12C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1ADE20404(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AE23C12C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADE204A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE204E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ADE205B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

__n128 sub_1ADE20758(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE207AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(v5 - 8);
  v9 = type metadata accessor for CRMaxRegister();
  return sub_1ADF82E68(a1, v9);
}

uint64_t sub_1ADE207FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE20840()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE20878()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE208CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADDF43A0(a1, sub_1ADE7205C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_1ADE2093C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ADE20948()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE20A54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1ADE20D88(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

__n128 sub_1ADE20DC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1ADE20DDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FinalizedTimestamp(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1ADE20E88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FinalizedTimestamp(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADE20F2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE20F64()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {

    v3 = v0[6];
  }

  if (v0[10])
  {

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

__n128 sub_1ADE21030(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1ADE21044(uint64_t *a1)
{
  v1 = *a1;
  sub_1ADFB8BD0(&v3);
  return 1;
}

uint64_t sub_1ADE2108C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return Array<A>.isDefaultState.getter();
}

__n128 sub_1ADE21144(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1ADE21198(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE211E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for CRRegister();
  return sub_1ADE031A0(a1, v7);
}

uint64_t sub_1ADE21230()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21270()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE212A8()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE2136C()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE21438()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v4 = sub_1AE23D21C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 64) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *(v0 + 7);

  (*(v5 + 8))(&v0[v7], v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

__n128 sub_1ADE2154C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1ADE21560(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AE23C12C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1ADE2160C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AE23C12C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADE216C0()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1ADE217EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21824()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1ADDCC35C(v0[5], v0[6]);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE218FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE2193C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21974()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE219BC()
{
  if (v0[3])
  {

    v1 = v0[4];
  }

  if (v0[5])
  {

    v2 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE21A14()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {

    v5 = v0[8];
  }

  if (v0[9])
  {

    v6 = v0[10];
  }

  if (v0[11])
  {

    v7 = v0[12];
  }

  if (v0[13])
  {

    v8 = v0[14];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE21AB4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE21AFC()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {

    v3 = v0[6];
  }

  if (v0[10])
  {

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE21B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1ADE21C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AE23BFEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ADE21D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for CRDTRegister();
  return sub_1AE043E64(a1, v7);
}

__n128 sub_1ADE21D7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE21E08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21E4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21EC0()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE21F64()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21F9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22020()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {

    v3 = v0[6];
  }

  if (v0[10])
  {

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE22090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v9 = a3[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v7 = type metadata accessor for CRDictionary.MergeableDelta();
  return (*(*(v7 - 8) + 48))(a1, a2, v7);
}

uint64_t sub_1ADE2215C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  v10 = a4[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v8 = type metadata accessor for CRDictionary.MergeableDelta();
  return (*(*(v8 - 8) + 56))(a1, a2, a2, v8);
}

uint64_t sub_1ADE22254@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for Anonymous();
  return Anonymous.get.getter(v7, a3);
}

double sub_1ADE22290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Anonymous();
  return sub_1AE19117C(a1, v7);
}

__n128 sub_1ADE222DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE222E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22324()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE2235C()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE223A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE223DC()
{
  if (v0[3])
  {

    v1 = v0[4];
  }

  if (v0[5])
  {

    v2 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22434()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {

    v5 = v0[8];
  }

  if (v0[9])
  {

    v6 = v0[10];
  }

  if (v0[11])
  {

    v7 = v0[12];
  }

  if (v0[13])
  {

    v8 = v0[14];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE224D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE2251C()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {

    v3 = v0[6];
  }

  if (v0[10])
  {

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE225B4()
{
  if (v0[3])
  {

    v1 = v0[4];
  }

  if (v0[5])
  {

    v2 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22650()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE22688()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1ADE22728()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE227FC()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE228DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE22914()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE229EC()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22ADC()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22B24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE22B5C()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22BAC()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {

    v3 = v0[6];
  }

  if (v0[10])
  {

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE22C14()
{
  if (v0[3])
  {

    v1 = v0[4];
  }

  if (v0[5])
  {

    v2 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22CC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE22CFC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE22D6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22DAC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE22DEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1ADE22E38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1ADE22E58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE22EA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE22EE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ADE22F20()
{
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ADE22F60()
{
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v1 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1ADE22FA8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {

    v5 = v0[8];
  }

  if (v0[9])
  {

    v6 = v0[10];
  }

  if (v0[11])
  {

    v7 = v0[12];
  }

  if (v0[13])
  {

    v8 = v0[14];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE230C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ADE23144()
{
  swift_getWitnessTable();

  return sub_1AE23D3CC();
}

uint64_t sub_1ADE231C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

void sub_1ADE23258(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 16);
  v7 = *(v4 - 1);
  v8 = *a1;
  v9 = type metadata accessor for CROrderedSet();
  CROrderedSet.subscript.getter(v8, v9, a3);
}

void sub_1ADE232B0(uint64_t a1, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a3;
  v9 = type metadata accessor for CROrderedSet();
  sub_1AE1E9CB4(a1, v8, v9);
}

__n128 sub_1ADE23314(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE23328()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23374()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1ADE23404()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE2343C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23474()
{
  v1 = sub_1AE23C70C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 44) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1AE23C6DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1ADE23610(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1ADE23620()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CRCustomFileSyncManager.disableReadingInBackground.getter();
  *a2 = result & 1;
  return result;
}

__n128 sub_1ADE236C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE236D8()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE237B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1ADDCC35C(v0[5], v0[6]);
  sub_1ADDCC35C(v0[7], v0[8]);
  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE2380C()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE238E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23934()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1ADE23984()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE239CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23A04()
{
  v1 = v0[2];

  sub_1ADDCC35C(v0[3], v0[4]);
  sub_1ADDCC35C(v0[5], v0[6]);
  v2 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ADE23A54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23A8C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ADE23B24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1ADE23BA8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ADE23BCC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1ADE23C48(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1ADE23C5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADE23C98()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {

    v3 = v0[6];
  }

  if (v0[10])
  {

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE23D00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23D38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ADE23D88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE23DE0()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23E18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23E6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for Proto4_Selection.Affinity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Proto4_Selection.Affinity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1ADE23ED4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADE23EF0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1ADE23F54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ADE23F88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1ADE23FA0()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1ADE23FBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1ADE23FD8(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_1ADE23FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void sub_1ADE24060(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != 1)
  {
    sub_1ADE42CB8(a1);
  }
}

void sub_1ADE24578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1ADE24918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7A12348, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring const*,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring const* const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1ADE24F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id Coherence_namespace::TopoID::toString(Coherence_namespace::TopoID *this)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:this];
  v4 = [v3 Coherence_shortDescription];
  v5 = [v2 stringWithFormat:@"%@.%d, %d", v4, *(this + 4), *(this + 5)];

  return v5;
}

__n128 Coherence_namespace::updateTopoID@<Q0>(Coherence_namespace *this@<X0>, const TopoID *a2@<X1>, const Coherence_namespace::TopoIDRange *a3@<X2>, uint64_t a4@<X8>)
{
  result = *this;
  *a4 = *this;
  *(a4 + 16) = *(this + 2);
  if (*(this + 4) == a2->replica.index && !uuid_compare(this, a2->replica.uuid))
  {
    v10 = *(this + 5);
    clock = a2->clock;
    if (v10 >= clock && v10 < *a2[1].replica.uuid + clock)
    {
      result = *a3;
      *a4 = *a3;
      v12 = v10 - clock + *(a3 + 5);
      *(a4 + 16) = *(a3 + 4);
      *(a4 + 20) = v12;
    }
  }

  return result;
}

void Coherence_namespace::updateTopoIDRange(unsigned __int8 *uu1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(uu1 + 4) == *(a2 + 16) && !uuid_compare(uu1, a2))
  {
    *uu1a = *uu1;
    v9 = *(uu1 + 6) + *(uu1 + 5);
    *&uu1a[16] = *(uu1 + 4);
    *&uu1a[20] = v9;
    if (Coherence_namespace::TopoID::operator<=(uu1a, a2) & 1) != 0 || (v29 = *a2, v10 = *(a2 + 24) + *(a2 + 20), v30 = *(a2 + 16), v31 = v10, (Coherence_namespace::TopoID::operator>=(uu1, &v29)))
    {
      v11 = a4;
      v12 = uu1;
LABEL_18:
      std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](v11, v12);
      v28 = *MEMORY[0x1E69E9840];
      return;
    }

    v13 = *(uu1 + 5);
    v14 = *(a2 + 20);
    if (v14 <= v13)
    {
      *uu1a = *uu1;
      v19 = *(uu1 + 6);
      *&uu1a[16] = *(uu1 + 4);
      *&uu1a[20] = v19 + v13;
      v29 = *a2;
      v20 = *(a2 + 24) + v14;
      v30 = *(a2 + 16);
      v31 = v20;
      if (!Coherence_namespace::TopoID::operator>(uu1a, &v29))
      {
        *&uu1a[12] = *(uu1 + 12);
        *uu1a = *uu1;
        *uu1a = *a3;
        v27 = *(uu1 + 5) + *(a3 + 20) - *(a2 + 20);
        *&uu1a[16] = *(a3 + 16);
        *&uu1a[20] = v27;
        v12 = uu1a;
        goto LABEL_17;
      }

      v21 = *(a2 + 20);
      v22 = *(a2 + 24) + v21;
      v24 = *(uu1 + 4);
      v23 = *(uu1 + 5);
      v25 = *(uu1 + 6) - (v22 - v23);
      v37 = *uu1;
      v38 = v24;
      v39 = v22;
      v40 = v25;
      *uu1a = *a3;
      v26 = v23 - v21 + *(a3 + 20);
      *&uu1a[16] = *(a3 + 16);
      *&uu1a[20] = v26;
      *&uu1a[24] = v22 - v23;
    }

    else
    {
      v15 = *(uu1 + 6) - (v14 - v13);
      *uu1a = *uu1;
      *&uu1a[16] = *(uu1 + 2);
      *&uu1a[24] = v14 - v13;
      v37 = *uu1a;
      v38 = *(uu1 + 4);
      v40 = v15;
      v29 = *a2;
      v16 = *(a2 + 24) + v14;
      v30 = *(a2 + 16);
      v31 = v16;
      v33 = *uu1;
      v34 = *(uu1 + 4);
      v35 = v15 + v14;
      if (Coherence_namespace::TopoID::operator<(&v29, &v33))
      {
        v17 = *(a2 + 24);
        v29 = v37;
        v30 = v38;
        v31 = v14 + v17;
        v32 = v15 - v17;
        v40 = v17;
        std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](a4, &v29);
      }

      v37 = *a3;
      v18 = *(a3 + 20);
      v38 = *(a3 + 16);
      v39 = v18;
    }

    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](a4, uu1a);
    v12 = &v37;
LABEL_17:
    v11 = a4;
    goto LABEL_18;
  }

  v8 = *MEMORY[0x1E69E9840];

  std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](a4, uu1);
}

void std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x924924924924924)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoIDRange>>(a1, v11);
    }

    v12 = 28 * v8;
    v13 = *a2;
    *(v12 + 12) = *(a2 + 12);
    *v12 = v13;
    v7 = 28 * v8 + 28;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 12) = *(a2 + 12);
    *v5 = v6;
    v7 = v5 + 28;
  }

  *(a1 + 8) = v7;
}

uint64_t Coherence_namespace::TopoID::operator<=(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) == *(uu2 + 5) && *(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return 1;
  }

  return Coherence_namespace::TopoID::operator<(uu1, uu2);
}

uint64_t Coherence_namespace::TopoID::operator>=(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) == *(uu2 + 5) && *(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return 1;
  }

  return Coherence_namespace::TopoID::operator>(uu1, uu2);
}

uint64_t Coherence_namespace::TopoID::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6)
  {
    return uuid_compare(a1, a2) == -1;
  }

  else
  {
    return v5 < v6;
  }
}

uint64_t Coherence_namespace::TopoID::operator>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6)
  {
    return uuid_compare(a1, a2) == 1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_1ADE26570(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void Coherence_namespace::TopoSubstring::~TopoSubstring(Coherence_namespace::TopoSubstring *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void sub_1ADE26B68(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1ADE26E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL Coherence_namespace::TopoSubstring::isStartNode(Coherence_namespace::TopoSubstring *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0;
  uuid_copy(dst, UUID_NULL);
  *uu2 = *dst;
  v8 = 0;
  v9 = 0;
  v7 = v5;
  result = Coherence_namespace::TopoIDRange::operator==(this, uu2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL Coherence_namespace::TopoSubstring::isEndNode(Coherence_namespace::TopoSubstring *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  uuid_copy(dst, UUID_NULL);
  *uu2 = *dst;
  v7 = v5;
  v8 = 0xFFFFFFFFLL;
  result = Coherence_namespace::TopoIDRange::operator==(this, uu2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL Coherence_namespace::TopoIDRange::contains(Coherence_namespace::TopoIDRange *this, const TopoID *uu1)
{
  if (uu1->replica.index != *(this + 4))
  {
    return 0;
  }

  if (uuid_compare(uu1->replica.uuid, this))
  {
    return 0;
  }

  clock = uu1->clock;
  v5 = *(this + 5);
  if (clock < v5)
  {
    return 0;
  }

  return clock < *(this + 6) + v5;
}

uint64_t Coherence_namespace::TopoIDRange::intersection@<X0>(uint64_t this@<X0>, const Coherence_namespace::TopoIDRange *uu2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  if (*(this + 24))
  {
    v5 = *(uu2 + 6) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || *(this + 16) != *(uu2 + 4) || (this = uuid_compare(this, uu2), this))
  {
    length = 0;
    *a3 = *v3;
    *(a3 + 16) = *(v3 + 16);
  }

  else
  {
    v9.location = *(v3 + 20);
    v9.length = *(v3 + 24);
    v10.location = *(uu2 + 5);
    v10.length = *(uu2 + 6);
    v8 = NSIntersectionRange(v9, v10);
    length = v8.length;
    this = v8.location;
    *a3 = *v3;
    *(a3 + 16) = *(v3 + 16);
    *(a3 + 20) = v8.location;
  }

  *(a3 + 24) = length;
  return this;
}

void sub_1ADE29160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::vector<_NSRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(result, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1ADE295A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  Coherence_namespace::TopoSubstring::~TopoSubstring(va);
  _Unwind_Resume(a1);
}

void std::vector<Coherence_namespace::TopoSubstring *>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void mergeStringData(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v20 = a1;
  v11 = a5;
  if (*(a3 + 40) != *(a3 + 32))
  {
    if (a2)
    {
      v12 = [v20 attributedString];
      v13 = [v12 length];
      *(a3 + 84) = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v13, v14);

      v15 = [v20 attributedString];
      v16 = v15;
      if (*(a4 + 40) == *(a4 + 32))
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a4 + 24);
      }

      [v15 Coherence_appendStorage:v11 fromRange:{*(a4 + 84), v17}];
LABEL_14:

      goto LABEL_15;
    }

    if (*(a4 + 84) != -1 && ((a6 & 1) != 0 || *(a4 + 40) != *(a4 + 32)))
    {
      v18 = [v20 attributedString];
      v16 = v18;
      if (*(a3 + 40) == *(a3 + 32))
      {
        v19 = 0;
      }

      else
      {
        v19 = *(a3 + 24);
      }

      [v18 Coherence_mergeAttributesInRange:*(a3 + 84) withStorage:v19 fromRange:{v11, *(a4 + 84), *(a4 + 24)}];
      goto LABEL_14;
    }
  }

LABEL_15:
}

void sub_1ADE29F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a15);

  _Unwind_Resume(a1);
}

uint64_t std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__find_equal<Coherence_namespace::TopoIDRange>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 64;
}

uint64_t compareSubstring(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (*(a2 + 40) == *(a2 + 32))
  {
    goto LABEL_51;
  }

  *v34 = *a2;
  *&v34[16] = *(a2 + 16);
  *&v34[24] = 1;
  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_51;
  }

  v7 = a3 + 8;
  do
  {
    v8 = std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100](v6 + 32, v34);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v6;
    }

    v6 = *(v6 + v9);
  }

  while (v6);
  if (v7 == a3 + 8)
  {
    goto LABEL_51;
  }

  v10 = Coherence_namespace::TopoIDRange::operator==(*(v7 + 64), a2);
  v11 = *(v7 + 64);
  if (v10)
  {
    if (*(v11 + 40) != *(v11 + 32))
    {
      if (*(a2 + 40) == *(a2 + 32))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a2 + 24);
      }

      v13 = (*(v5 + 2))(v5, *(v11 + 84), *(v11 + 24), *(a2 + 84), v12);
      goto LABEL_17;
    }

    goto LABEL_51;
  }

  if (!Coherence_namespace::TopoIDRange::intersects(v11, a2))
  {
    goto LABEL_51;
  }

  v14 = *(v7 + 64);
  if (*(v14 + 20) == *(a2 + 20))
  {
    if (*(v14 + 24) <= *(a2 + 24))
    {
      *v34 = *a2;
      *&v34[12] = *(a2 + 12);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v35, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
      v38 = 0;
      v39 = 0;
      v40 = 0;
      std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v38, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
      v41 = *(a2 + 80);
      v28 = 0;
      uuid_clear(uu);
      v29 = 0;
      v33 = 0;
      v32 = 0u;
      *v30 = 0u;
      *__p = 0u;
      Coherence_namespace::TopoSubstring::splitAt(v34, *(*(v7 + 64) + 24), uu);
      if (compareSubstring(v5, uu, a3) & 1) != 0 || (compareSubstring(v5, v34, a3))
      {
        Coherence_namespace::TopoSubstring::~TopoSubstring(uu);
        Coherence_namespace::TopoSubstring::~TopoSubstring(v34);
LABEL_33:
        LOBYTE(a3) = 1;
        goto LABEL_52;
      }

      Coherence_namespace::TopoSubstring::~TopoSubstring(uu);
      Coherence_namespace::TopoSubstring::~TopoSubstring(v34);
    }

    else if (*(v14 + 40) != *(v14 + 32))
    {
      v15 = *(a2 + 84);
      if (*(a2 + 40) != *(a2 + 32))
      {
        v16 = *(a2 + 24);
      }

      v13 = (*(v5 + 2))(v5, *(v14 + 84));
LABEL_17:
      if ((v13 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_33;
    }

LABEL_51:
    LOBYTE(a3) = 0;
    goto LABEL_52;
  }

  *v34 = *a2;
  *&v34[12] = *(a2 + 12);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v35, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v38, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v41 = *(a2 + 80);
  v28 = 0;
  uuid_clear(uu);
  v29 = 0;
  v33 = 0;
  v32 = 0u;
  *__p = 0u;
  *v30 = 0u;
  v17 = *(v7 + 64);
  v18 = *(v17 + 20);
  v19 = *(a2 + 20);
  if (v18 >= v19)
  {
    Coherence_namespace::TopoSubstring::splitAt(v34, v18 - v19, uu);
    v21 = compareSubstring(v5, uu, a3);
  }

  else
  {
    v20 = *(v17 + 24) + v18;
    if (v20 >= *(a2 + 24) + v19)
    {
      if (*(v17 + 40) == *(v17 + 32))
      {
        v24 = 0;
        LOBYTE(a3) = 0;
        goto LABEL_42;
      }

      v22 = *(a2 + 84);
      if (*(a2 + 40) != *(a2 + 32))
      {
        v23 = *(a2 + 24);
      }

      v21 = (*(v5 + 2))(v5, v19 - v18 + *(v17 + 84));
    }

    else
    {
      Coherence_namespace::TopoSubstring::splitAt(v34, v20 - v19, uu);
      if (compareSubstring(v5, uu, a3))
      {
LABEL_40:
        v24 = 0;
        LOBYTE(a3) = 1;
        goto LABEL_42;
      }

      v21 = compareSubstring(v5, v34, a3);
    }
  }

  if (v21)
  {
    goto LABEL_40;
  }

  v24 = 1;
LABEL_42:
  if (__p[1])
  {
    *&v32 = __p[1];
    operator delete(__p[1]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v24)
  {
    goto LABEL_51;
  }

LABEL_52:

  v25 = *MEMORY[0x1E69E9840];
  return a3 & 1;
}

void sub_1ADE2A464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  Coherence_namespace::TopoSubstring::~TopoSubstring(&a21);

  _Unwind_Resume(a1);
}

void sub_1ADE2AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_object_dispose(&a27, 8);
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a34);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__19(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void mergeSubstring(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v38 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v11 = a2;
  *v30 = *a3;
  *&v30[16] = *(a3 + 16);
  *&v30[24] = 1;
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = a4 + 8;
    do
    {
      v14 = std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100](v12 + 32, v30);
      if (v14)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (!v14)
      {
        v13 = v12;
      }

      v12 = *(v12 + v15);
    }

    while (v12);
  }

  else
  {
    v13 = a4 + 8;
  }

  if (v13 == a4 + 8)
  {
    goto LABEL_23;
  }

  if (Coherence_namespace::TopoIDRange::operator==(*(v13 + 64), a3))
  {
    v19 = v22;
    (*(v22 + 2))(v22, *(v13 + 64), a3);
    goto LABEL_24;
  }

  if (!Coherence_namespace::TopoIDRange::intersects(*(v13 + 64), a3))
  {
LABEL_23:
    v19 = v22;
    v11[2](v11, a3);
    goto LABEL_24;
  }

  v16 = *(v13 + 64);
  v17 = *(v16 + 5);
  v18 = *(a3 + 20);
  if (v17 != v18)
  {
    if (v17 < v18)
    {
      *uu = *(v13 + 64);
      if (a5)
      {
        operator new();
      }

      Coherence_namespace::TopoSubstring::splitAt(v16);
    }

    *v30 = *a3;
    *&v30[12] = *(a3 + 12);
    v32 = 0;
    v33 = 0;
    v31 = 0;
    std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v31, *(a3 + 32), *(a3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 40) - *(a3 + 32)) >> 3));
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
    v6 = v6;
    v37 = *(a3 + 80);
    if (v30 != a3)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
    }

    v24 = 0;
    uuid_clear(uu);
    v25 = 0;
    v29 = 0;
    v28 = 0u;
    *v26 = 0u;
    *__p = 0u;
    v19 = v22;
    Coherence_namespace::TopoSubstring::splitAt(v30, *(*(v13 + 64) + 20) - *(a3 + 20), uu);
    if (v6)
    {
      goto LABEL_33;
    }

LABEL_34:
    mergeSubstring(v22, v11, v30, a4, a5, 0);
    v21 = uu;
    goto LABEL_35;
  }

  if (*(v16 + 6) > *(a3 + 24))
  {
    *uu = *(v13 + 64);
    if (a5)
    {
      operator new();
    }

    Coherence_namespace::TopoSubstring::splitAt(v16);
  }

  *v30 = *a3;
  *&v30[12] = *(a3 + 12);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v31, *(a3 + 32), *(a3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
  v6 = v6;
  v37 = *(a3 + 80);
  if (v30 != a3)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
  }

  v24 = 0;
  uuid_clear(uu);
  v25 = 0;
  v29 = 0;
  v28 = 0u;
  *v26 = 0u;
  *__p = 0u;
  v19 = v22;
  Coherence_namespace::TopoSubstring::splitAt(v30, *(*(v13 + 64) + 24), uu);
  if (!v6)
  {
    goto LABEL_34;
  }

LABEL_33:
  mergeSubstring(v19, v11, uu, a4, a5, 1);
  v21 = v30;
LABEL_35:
  mergeSubstring(v19, v11, v21, a4, a5, v6);
  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1ADE2B284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  Coherence_namespace::TopoSubstring::~TopoSubstring(&a23);

  _Unwind_Resume(a1);
}

void mergeAddNewSubstring(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  a1;
  a2;
  operator new();
}

void sub_1ADE2BE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose(&a25, 8);
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a32);

  _Unwind_Resume(a1);
}

void sub_1ADE2C3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_1ADE2C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(va);

  _Unwind_Resume(a1);
}

void sub_1ADE2CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, char a44)
{
  _Block_object_dispose(&a38, 8);

  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v48 - 232), 8);
  _Block_object_dispose((v48 - 168), 8);
  _Block_object_dispose((v48 - 136), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__27(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void minIdPath(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a1;
  v85 = *a1;
  v6 = *(a1 + 16);
  v7 = *(v5 + 20);
  __p = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 1.0;
  v9 = (v5 + 56);
  v8 = *(v5 + 56);
  v10 = *(v5 + 64);
  if (v10 == v8)
  {
    v11 = 0;
LABEL_77:
    if (v4)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

  v63 = (v5 + 64);
  v11 = 0;
  while (1)
  {
    v12 = v10 - v8;
    if ((v10 - v8) >= 9)
    {
      v13 = v12 >> 3;
      if ((v12 >> 3) >= 2)
      {
        v64 = v11;
        v14 = 0;
        do
        {
          v15 = v9;
          v16 = *v9;
          v17 = *(*v9 + 8 * v14);
          v18 = *(v17 + 80);
          if (v18 < 2)
          {
            ++v14;
          }

          else
          {
            *(v17 + 80) = v18 - 1;
            v19 = v16 + 8 * v14;
            v20 = &v10[-v19 - 8];
            if (v10 != (v19 + 8))
            {
              v21 = v5;
              memmove((v16 + 8 * v14), (v19 + 8), &v10[-v19 - 8]);
              v5 = v21;
            }

            v10 = &v20[v19];
            *(v5 + 64) = &v20[v19];
            --v13;
          }

          v9 = v15;
        }

        while (v14 < v13);
        v11 = v64;
        v10 = *v63;
        v8 = *v15;
      }
    }

    v22 = v10 - v8;
    if (v22 == 8)
    {
      break;
    }

    v71 = __p;
    v24 = v9;
    std::vector<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>::reserve(&__p, v22 >> 3);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::clear(&v67);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__rehash<true>(&v67, vcvtps_u32_f32((&(*v63)[-*v24] >> 3) / v69));
    v65 = v24;
    v25 = *v24;
    v26 = *v63;
    while (v25 != v26)
    {
      *&v83 = *v25;
      *&v80 = &v83;
      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(&v67, &v83)[3] = 1;
      Coherence_namespace::TopoReplica::TopoReplica(&v77, 0, 0);
      DWORD1(v78) = 0;
      v27 = v83;
      *(&v78 + 1) = v83;
      v79 = 0;
      v82 = 0;
      v80 = v77;
      v81 = v78;
      v28 = v71;
      if (v71 >= v72)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
        v33 = v32 + 1;
        if (v32 + 1 > 0x555555555555555)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v72 - __p) >> 4) > v33)
        {
          v33 = 0x5555555555555556 * ((v72 - __p) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v72 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v34 = 0x555555555555555;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>>(&__p, v34);
        }

        v35 = 16 * ((v71 - __p) >> 4);
        *v35 = v80;
        *(v35 + 16) = v81;
        *(v35 + 32) = v82;
        *(v35 + 40) = v27;
        v31 = 48 * v32 + 48;
        v36 = (v35 - (v71 - __p));
        memcpy(v36, __p, v71 - __p);
        v37 = __p;
        __p = v36;
        v71 = v31;
        v72 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        v29 = v78;
        v30 = v79;
        *v71 = v77;
        *(v28 + 1) = v29;
        *(v28 + 4) = v30;
        *(v28 + 5) = v27;
        v31 = (v28 + 48);
      }

      v71 = v31;
      v25 += 8;
    }

    do
    {
      while (1)
      {
        v80 = 0u;
        v81 = 0u;
        LODWORD(v82) = 1065353216;
        v38 = v68;
        if (v68)
        {
          do
          {
            v39 = v38[3];
            v66 = v38[2];
            if (v39 >= *(v66 + 80))
            {
              minIdPath(&v77);
              v40 = __p;
              v41 = v71;
              v42 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
              if (v71 != __p)
              {
                v43 = 0;
                if (v42 <= 1)
                {
                  v44 = 1;
                }

                else
                {
                  v44 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
                }

                do
                {
                  if (*(__p + v43 + 24) == v66 && !uuid_is_null(__p + v43))
                  {
                    v75 = v77;
                    v76 = v78;
                    v73 = *(__p + v43);
                    v74 = *(__p + v43 + 16);
                    minimumPermenantID(&v75, &v73, &v83);
                    v77 = v83;
                    *&v78 = v84;
                  }

                  v43 += 48;
                  --v44;
                }

                while (v44);
                v40 = __p;
                v41 = v71;
                v42 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
              }

              if (v41 != v40)
              {
                v45 = v66;
                if (v42 <= 1)
                {
                  v42 = 1;
                }

                do
                {
                  if (*(v40 + 3) == v45)
                  {
                    *v40 = v77;
                    *(v40 + 1) = v78;
                    *(v40 + 4) = v79;
                  }

                  v40 += 48;
                  --v42;
                }

                while (v42);
              }

              v75 = v85;
              v76 = __PAIR64__(v7, v6);
              v73 = v77;
              v74 = v78;
              minimumPermenantID(&v75, &v73, &v83);
              v85 = v83;
              v6 = v84;
              v7 = HIDWORD(v84);
              v39 = v79;
              v66 = *(&v78 + 1);
            }

            v46 = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(&v80, &v66);
            if (v46)
            {
              v46[3] += v39;
            }

            else
            {
              *&v77 = &v66;
              std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(&v80, &v66)[3] = v39;
            }

            v38 = *v38;
          }

          while (v38);
          v47 = *&v82;
          v48 = v81;
        }

        else
        {
          v48 = 0;
          v47 = 1.0;
        }

        v69 = v47;
        std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,void *> *>>(&v67, v48, 0);
        if (!v4)
        {
          break;
        }

        std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v80);
        if (*(&v68 + 1) <= 1uLL)
        {
          goto LABEL_73;
        }
      }

      v49 = __p;
      v50 = v71;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
      if (v71 - __p < 1)
      {
        v56 = 0;
        v52 = 0;
      }

      else
      {
        v52 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
        while (1)
        {
          v53 = operator new(48 * v52, MEMORY[0x1E69E5398]);
          if (v53)
          {
            break;
          }

          v54 = v52 >> 1;
          v55 = v52 > 1;
          v52 >>= 1;
          if (!v55)
          {
            v56 = 0;
            v52 = v54;
            goto LABEL_65;
          }
        }

        v56 = v53;
      }

LABEL_65:
      std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v49, v50, v51, v56, v52);
      if (v56)
      {
        operator delete(v56);
      }

      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v80);
    }

    while (*(&v68 + 1) > 1uLL);
    if (*v63 != *v65)
    {
      v57 = 0;
      v58 = &(*v63)[-*v65] >> 3;
      if (v58 <= 1)
      {
        v58 = 1;
      }

      v59 = 40;
      do
      {
        *(*v65 + 8 * v57++) = *(__p + v59);
        v59 += 48;
      }

      while (v58 != v57);
    }

LABEL_73:
    v5 = *(v68 + 16);
    v11 = *(v68 + 24);
    if (v11 < *(v5 + 80))
    {
      goto LABEL_77;
    }

LABEL_74:
    v9 = (v5 + 56);
    v8 = *(v5 + 56);
    v10 = *(v5 + 64);
    v63 = (v5 + 64);
    if (v10 == v8)
    {
      goto LABEL_77;
    }
  }

  v5 = *v8;
  if (*(*v8 + 80) <= 1u)
  {
    v77 = v85;
    *&v78 = __PAIR64__(v7, v6);
    v83 = *v5;
    v23 = v5;
    v84 = *(v5 + 16);
    minimumPermenantID(&v77, &v83, &v80);
    v85 = v80;
    v6 = v81;
    v7 = DWORD1(v81);
    v5 = v23;
    goto LABEL_74;
  }

  v11 = 1;
  if (!v4)
  {
    goto LABEL_80;
  }

LABEL_78:
  if (v6)
  {
    v60 = v5;
    v80 = v85;
    *&v81 = __PAIR64__(v7, v6);
    v4[2](v4, &v80);
    v5 = v60;
  }

LABEL_80:
  *a3 = v85;
  *(a3 + 16) = v6;
  *(a3 + 20) = v7;
  *(a3 + 24) = v5;
  *(a3 + 32) = v11;
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v67);
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  v61 = *MEMORY[0x1E69E9840];
}

void sub_1ADE2DAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&a13);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1ADE2E030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v15 + 48);
  _Block_object_dispose((v16 - 128), 8);

  _Unwind_Resume(a1);
}

id Coherence_namespace::TopoReplica::toString(Coherence_namespace::TopoReplica *this)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:this];
  v4 = [v3 Coherence_shortDescription];
  v5 = [v2 stringWithFormat:@"%@.%d", v4, *(this + 4)];

  return v5;
}

void sub_1ADE2F1DC(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_1ADE2F910(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

uint64_t std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Coherence_namespace::TopoID>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1ADE2FD9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Coherence_namespace::TopoID>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

BOOL Coherence_namespace::TopoIDRange::operator==(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) != *(uu2 + 5))
  {
    return 0;
  }

  if (*(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return *(uu1 + 6) == *(uu2 + 6);
  }

  return 0;
}

void *Coherence_namespace::TopoSubstring::splitAt(Coherence_namespace::TopoSubstring *this, int a2, Coherence_namespace::TopoSubstring *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  v7 = *(this + 5) + a2;
  v8 = *(this + 6) - a2;
  *(this + 6) = a2;
  *a3 = *this;
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  *(a3 + 6) = v8;
  v9 = *(this + 5) - *(this + 4);
  if (v9)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 21) = v10 + *(this + 21);
  std::vector<Coherence_namespace::TopoID>::reserve(a3 + 4, 0xAAAAAAAAAAAAAAABLL * (v9 >> 3));
  v11 = *(this + 4);
  v12 = *(this + 5);
  if (v11 != v12)
  {
    v13 = *(a3 + 5);
    do
    {
      __src = *v11;
      v14 = *(v11 + 5);
      v31 = *(v11 + 4);
      v15 = v14 + a2;
      v16 = *(a3 + 6);
      if (v13 >= v16)
      {
        v18 = *(a3 + 4);
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v18) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a3 + 32, v22);
        }

        v23 = 24 * v19;
        *v23 = __src;
        *(v23 + 16) = v31;
        *(v23 + 20) = v15;
        v13 = 24 * v19 + 24;
        v24 = *(a3 + 4);
        v25 = *(a3 + 5) - v24;
        v26 = v23 - v25;
        memcpy((v23 - v25), v24, v25);
        v27 = *(a3 + 4);
        *(a3 + 4) = v26;
        *(a3 + 5) = v13;
        *(a3 + 6) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v17 = *(v11 + 4);
        *v13 = *v11;
        *(v13 + 16) = v17;
        *(v13 + 20) = v15;
        v13 += 24;
      }

      *(a3 + 5) = v13;
      v11 = (v11 + 24);
    }

    while (v11 != v12);
  }

  if (a3 != this)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(a3 + 7, *(this + 7), *(this + 8), (*(this + 8) - *(this + 7)) >> 3);
  }

  *&__src = a3;
  result = std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring * const*,Coherence_namespace::TopoSubstring * const*>(this + 7, &__src, &__src + 8, 1uLL);
  *(a3 + 20) = 1;
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::vector<Coherence_namespace::TopoID>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(result, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL Coherence_namespace::TopoIDRange::intersects(Coherence_namespace::TopoIDRange *this, const Coherence_namespace::TopoIDRange *uu1)
{
  if (*(uu1 + 4) != *(this + 4))
  {
    return 0;
  }

  if (uuid_compare(uu1, this))
  {
    return 0;
  }

  v5 = *(this + 5);
  v6 = *(uu1 + 5);
  return v6 < *(this + 6) + v5 && *(uu1 + 6) + v6 > v5;
}

BOOL std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *uu1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v15 = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v10 = v4 != 0;
  v8 = v4 - 1;
  if (!v10)
  {
    v8 = 0;
  }

  v19 = v2;
  v20 = v8 + v3;
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v16 = v5;
  v17 = v9 + v6;
  v10 = v2 >= v5;
  if (v2 == v5)
  {
    v11 = uuid_compare(uu1, &v15);
    if (!v11)
    {
      result = v20 < v17;
      goto LABEL_11;
    }

    v12 = v11;
  }

  else
  {
    v12 = -1;
    if (v10)
    {
      v12 = 1;
    }
  }

  result = v12 == -1;
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1ADE302FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::erase[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);

  operator delete(a2);
}

uint64_t std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::insert[abi:ne200100]<std::pair<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,0>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__find_equal<Coherence_namespace::TopoIDRange>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__find_equal<Coherence_namespace::TopoIDRange>(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        *uu1 = *a3;
        v8 = *(a3 + 16);
        v9 = *(a3 + 20);
        v10 = *(a3 + 24);
        v20 = *(v7 + 2);
        v11 = *(v7 + 12);
        v12 = *(v7 + 13);
        v13 = *(v7 + 14);
        v16 = v10 != 0;
        v14 = v10 - 1;
        if (!v16)
        {
          v14 = 0;
        }

        v24 = v8;
        v25 = v14 + v9;
        v15 = v13 - 1;
        if (!v13)
        {
          v15 = 0;
        }

        v21 = v11;
        v22 = v15 + v12;
        v16 = v8 >= v11;
        if (v8 == v11)
        {
          break;
        }

LABEL_13:
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_9:
        if (std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100]((v7 + 4), a3))
        {
          v5 = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v17 = uuid_compare(uu1, &v20);
      if (!v17)
      {
        v16 = v25 >= v22;
        goto LABEL_13;
      }

      if (v17 != -1)
      {
        goto LABEL_9;
      }

LABEL_14:
      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = (a1 + 8);
LABEL_17:
  *a2 = v7;
  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void mergeAddChildren(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v3 != v4)
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v3;
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      while (v8 != v9)
      {
        v10 = *v8;
        if (*(v7 + 20) == *(*v8 + 20) && *(v7 + 16) == *(v10 + 16) && !uuid_compare(v7, v10))
        {
          goto LABEL_18;
        }

        ++v8;
      }

      v16 = *v7;
      v17 = *(v7 + 16);
      v18 = 1;
      v11 = *v6;
      v12 = v6;
      if (!*v6)
      {
        goto LABEL_20;
      }

      do
      {
        v13 = std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100]((v11 + 4), &v16);
        v14 = v13;
        if (!v13)
        {
          v12 = v11;
        }

        v11 = v11[v14];
      }

      while (v11);
      if (v12 == v6)
      {
LABEL_20:
        mergeAddChildren();
      }

      *&v16 = v12[8];
      std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a1 + 56, &v16);
      ++*(v16 + 80);
LABEL_18:
      ++v3;
    }

    while (v3 != v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t minimumPermenantID@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    *a3 = *result;
    v4 = *(result + 16);
  }

  else if (*(result + 16))
  {
    *a3 = *a2;
    v4 = *(a2 + 2);
  }

  else
  {
    v9 = *result;
    v10 = *(result + 16);
    v7 = *a2;
    v8 = *(a2 + 2);
    result = Coherence_namespace::TopoID::operator<(&v9, &v7);
    if (result)
    {
      v5 = &v9;
    }

    else
    {
      v5 = &v7;
    }

    *a3 = *v5;
    v4 = *(v5 + 2);
  }

  *(a3 + 16) = v4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::vector<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>>(result, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[3];
        v8[2] = a2[2];
        v8[3] = v9;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_multi<std::pair<Coherence_namespace::TopoSubstring * const,unsigned long> const&>();
  }
}

void sub_1ADE311B0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1ADE31754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(uint64_t result, __int128 *a2, unint64_t a3, __int128 *a4, uint64_t a5)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    goto LABEL_2;
  }

  v7 = result;
  if (a3 != 2)
  {
    if (a3 > 0)
    {
      v14 = a4;
      v15 = a3 >> 1;
      v16 = (result + 48 * (a3 >> 1));
      v17 = a3 >> 1;
      if (a3 > a5)
      {
        std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(result, v16, v17, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v7 + 48 * (a3 >> 1), a2, a3 - (a3 >> 1), v14, a5);
        v18 = *MEMORY[0x1E69E9840];

        return std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v7, (v7 + 48 * (a3 >> 1)), a2, a3 >> 1, a3 - (a3 >> 1), v14, a5);
      }

      std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(result, v16, v17, a4);
      v42 = &v14[3 * v15];
      result = std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v7 + 48 * (a3 >> 1), a2, a3 - (a3 >> 1), v42);
      v43 = &v14[3 * a3];
      v44 = v42;
      while (1)
      {
        if (v44 == v43)
        {
          if (v14 != v42)
          {
            v58 = 0;
            do
            {
              v59 = &v14[v58];
              v60 = v7 + v58 * 16;
              v61 = v14[v58];
              v62 = v14[v58 + 1];
              *(v60 + 32) = *&v14[v58 + 2];
              *v60 = v61;
              *(v60 + 16) = v62;
              *(v60 + 40) = *(&v14[v58 + 2] + 1);
              v58 += 3;
            }

            while (v59 + 3 != v42);
          }

          goto LABEL_2;
        }

        v45 = *v44;
        v46 = v44[2];
        v70 = v44[1];
        v71 = v46;
        v69 = v45;
        v47 = v14[2];
        v48 = *v14;
        v67 = v14[1];
        v68 = v47;
        v66 = v48;
        if (*(&v70 + 1) == *(&v67 + 1))
        {
          result = Coherence_namespace::TopoID::operator<(&v69, &v66);
          if ((result & 1) == 0)
          {
LABEL_39:
            v51 = *v14;
            v52 = v14[1];
            *(v7 + 32) = *(v14 + 4);
            *v7 = v51;
            *(v7 + 16) = v52;
            *(v7 + 40) = *(v14 + 5);
            v14 += 3;
            goto LABEL_40;
          }
        }

        else if (*(&v70 + 1) >= *(&v67 + 1))
        {
          goto LABEL_39;
        }

        v49 = *v44;
        v50 = v44[1];
        *(v7 + 32) = *(v44 + 4);
        *v7 = v49;
        *(v7 + 16) = v50;
        *(v7 + 40) = *(v44 + 5);
        v44 += 3;
LABEL_40:
        v7 += 48;
        if (v14 == v42)
        {
          if (v44 != v43)
          {
            v53 = 0;
            do
            {
              v54 = &v44[v53];
              v55 = v7 + v53 * 16;
              v56 = v44[v53];
              v57 = v44[v53 + 1];
              *(v55 + 32) = *&v44[v53 + 2];
              *v55 = v56;
              *(v55 + 16) = v57;
              *(v55 + 40) = *(&v44[v53 + 2] + 1);
              v53 += 3;
            }

            while (v54 + 3 != v43);
          }

          goto LABEL_2;
        }
      }
    }

    if (result == a2)
    {
      goto LABEL_2;
    }

    v26 = (result + 48);
    if ((result + 48) == a2)
    {
      goto LABEL_2;
    }

    v27 = 0;
    v28 = result;
LABEL_17:
    v29 = v28;
    v28 = v26;
    v30 = *v26;
    v31 = v26[2];
    v70 = v26[1];
    v71 = v31;
    v69 = v30;
    v32 = *(v29 + 32);
    v33 = *v29;
    v67 = *(v29 + 16);
    v68 = v32;
    v66 = v33;
    if (*(&v70 + 1) == *(&v67 + 1))
    {
      result = Coherence_namespace::TopoID::operator<(&v69, &v66);
      if ((result & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(&v70 + 1) >= *(&v67 + 1))
    {
      goto LABEL_30;
    }

    v63 = *v28;
    v64 = v28[1];
    v65 = *(v28 + 4);
    v34 = *(v29 + 88);
    v35 = *v29;
    v36 = *(v29 + 16);
    *(v28 + 4) = *(v29 + 32);
    *v28 = v35;
    v28[1] = v36;
    *(v28 + 5) = *(v29 + 40);
    if (v29 == v7)
    {
LABEL_28:
      v29 = v7;
      goto LABEL_29;
    }

    v37 = v27;
    while (1)
    {
      v38 = v7 + v37;
      v69 = v63;
      v70 = v64;
      *&v71 = v65;
      *(&v71 + 1) = v34;
      v39 = *(v7 + v37 - 16);
      v40 = *(v7 + v37 - 48);
      v67 = *(v7 + v37 - 32);
      v68 = v39;
      v66 = v40;
      if (*(&v64 + 1) == *(&v67 + 1))
      {
        result = Coherence_namespace::TopoID::operator<(&v69, &v66);
        if ((result & 1) == 0)
        {
          v29 = v7 + v37;
LABEL_29:
          *v29 = v63;
          *(v29 + 16) = v64;
          *(v29 + 32) = v65;
          *(v29 + 40) = v34;
LABEL_30:
          v26 = v28 + 3;
          v27 += 48;
          if (v28 + 3 == a2)
          {
            goto LABEL_2;
          }

          goto LABEL_17;
        }
      }

      else if (*(&v64 + 1) >= *(&v67 + 1))
      {
        goto LABEL_29;
      }

      v29 -= 48;
      v41 = *(v38 - 32);
      *v38 = *(v38 - 48);
      *(v38 + 16) = v41;
      *(v38 + 32) = *(v38 - 16);
      *(v7 + v37 + 40) = *(v7 + v37 - 8);
      v37 -= 48;
      if (!v37)
      {
        goto LABEL_28;
      }
    }
  }

  v8 = *(a2 - 3);
  v9 = *(a2 - 1);
  v70 = *(a2 - 2);
  v71 = v9;
  v69 = v8;
  v10 = *(result + 32);
  v11 = *result;
  v67 = *(result + 16);
  v68 = v10;
  v66 = v11;
  if (*(&v70 + 1) == *(&v67 + 1))
  {
    result = Coherence_namespace::TopoID::operator<(&v69, &v66);
    if ((result & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (*(&v70 + 1) >= *(&v67 + 1))
  {
    goto LABEL_2;
  }

  v19 = a2 - 3;
  v20 = *v7;
  v21 = *(v7 + 16);
  v22 = *(v7 + 32);
  v23 = *(a2 - 2);
  v24 = *(a2 - 2);
  *v7 = *(a2 - 3);
  *(v7 + 16) = v24;
  *(v7 + 32) = v23;
  *(v19 + 4) = v22;
  *v19 = v20;
  v19[1] = v21;
  v25 = *(v7 + 40);
  *(v7 + 40) = *(a2 - 1);
  *(a2 - 1) = v25;
LABEL_2:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(uint64_t result, __int128 *a2, unint64_t a3, _OWORD *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_46;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v10 = a2 - 3;
    v11 = *(a2 - 3);
    v12 = *(a2 - 1);
    v63 = *(a2 - 2);
    v64 = v12;
    v62 = v11;
    v13 = *(result + 32);
    v14 = *result;
    v60 = *(result + 16);
    v61 = v13;
    v59 = v14;
    if (*(&v63 + 1) == *(&v60 + 1))
    {
      result = Coherence_namespace::TopoID::operator<(&v62, &v59);
      if (result)
      {
        goto LABEL_7;
      }
    }

    else if (*(&v63 + 1) < *(&v60 + 1))
    {
LABEL_7:
      v15 = *v10;
      v16 = *(a2 - 1);
      v4[1] = *(a2 - 2);
      v4[2] = v16;
      *v4 = v15;
      v17 = *v7;
      v18 = v7[1];
      v19 = v7[2];
LABEL_45:
      v4[4] = v18;
      v4[5] = v19;
      v4[3] = v17;
      goto LABEL_46;
    }

    v56 = *v7;
    v57 = v7[2];
    v4[1] = v7[1];
    v4[2] = v57;
    *v4 = v56;
    v17 = *v10;
    v18 = *(a2 - 2);
    v19 = *(a2 - 1);
    goto LABEL_45;
  }

  if (a3 == 1)
  {
    v8 = *result;
    v9 = *(result + 32);
    a4[1] = *(result + 16);
    a4[2] = v9;
    *a4 = v8;
    goto LABEL_46;
  }

  if (a3 > 8)
  {
    v42 = result + 48 * (a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(result, v42, a3 >> 1, a4, a3 >> 1);
    result = std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(&v7[3 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[3 * (a3 >> 1)], a3 - (a3 >> 1));
    v43 = &v7[3 * (a3 >> 1)];
    while (1)
    {
      if (v43 == a2)
      {
        while (v7 != v42)
        {
          v52 = *v7;
          v53 = v7[2];
          v4[1] = v7[1];
          v4[2] = v53;
          *v4 = v52;
          v4 += 3;
          v7 += 3;
        }

        goto LABEL_46;
      }

      v44 = *v43;
      v45 = v43[2];
      v63 = v43[1];
      v64 = v45;
      v62 = v44;
      v46 = v7[2];
      v47 = *v7;
      v60 = v7[1];
      v61 = v46;
      v59 = v47;
      if (*(&v63 + 1) == *(&v60 + 1))
      {
        result = Coherence_namespace::TopoID::operator<(&v62, &v59);
        if ((result & 1) == 0)
        {
LABEL_34:
          v50 = *v7;
          v51 = v7[2];
          v4[1] = v7[1];
          v4[2] = v51;
          *v4 = v50;
          v7 += 3;
          goto LABEL_35;
        }
      }

      else if (*(&v63 + 1) >= *(&v60 + 1))
      {
        goto LABEL_34;
      }

      v48 = *v43;
      v49 = v43[2];
      v4[1] = v43[1];
      v4[2] = v49;
      *v4 = v48;
      v43 += 3;
LABEL_35:
      v4 += 3;
      if (v7 == v42)
      {
        while (v43 != a2)
        {
          v54 = *v43;
          v55 = v43[2];
          v4[1] = v43[1];
          v4[2] = v55;
          *v4 = v54;
          v4 += 3;
          v43 += 3;
        }

        goto LABEL_46;
      }
    }
  }

  if (result == a2)
  {
    goto LABEL_46;
  }

  v20 = *result;
  v21 = *(result + 32);
  a4[1] = *(result + 16);
  a4[2] = v21;
  *a4 = v20;
  v22 = (result + 48);
  if ((result + 48) == a2)
  {
    goto LABEL_46;
  }

  v23 = 0;
  v24 = a4;
  do
  {
    v25 = v22;
    v26 = v24 + 3;
    v27 = *v22;
    v28 = v22[2];
    v63 = v22[1];
    v64 = v28;
    v29 = v24[1];
    v59 = *v24;
    v60 = v29;
    v61 = v24[2];
    v62 = v27;
    if (*(&v63 + 1) == *(&v29 + 1))
    {
      result = Coherence_namespace::TopoID::operator<(&v62, &v59);
      if ((result & 1) == 0)
      {
LABEL_23:
        v38 = *v25;
        v39 = v25[2];
        v24[4] = v25[1];
        v24[5] = v39;
        *v26 = v38;
        goto LABEL_26;
      }
    }

    else if (*(&v63 + 1) >= *(&v60 + 1))
    {
      goto LABEL_23;
    }

    v30 = v24[1];
    *v26 = *v24;
    v24[4] = v30;
    v24[5] = v24[2];
    v31 = v4;
    if (v24 == v4)
    {
      goto LABEL_25;
    }

    v32 = v23;
    while (1)
    {
      v33 = v4 + v32;
      v34 = *v25;
      v35 = v25[2];
      v63 = v25[1];
      v64 = v35;
      v36 = *(v4 + v32 - 32);
      v59 = *(v4 + v32 - 48);
      v60 = v36;
      v61 = *(v4 + v32 - 16);
      v62 = v34;
      if (*(&v63 + 1) != *(&v36 + 1))
      {
        if (*(&v63 + 1) >= *(&v60 + 1))
        {
          v31 = v24;
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      result = Coherence_namespace::TopoID::operator<(&v62, &v59);
      if ((result & 1) == 0)
      {
        break;
      }

LABEL_20:
      v24 -= 3;
      v37 = *(v33 - 2);
      *v33 = *(v33 - 3);
      *(v33 + 1) = v37;
      *(v33 + 4) = *(v33 - 2);
      *(v4 + v32 + 40) = *(v4 + v32 - 8);
      v32 -= 48;
      if (!v32)
      {
        v31 = v4;
        goto LABEL_25;
      }
    }

    v31 = (v4 + v32);
LABEL_25:
    v40 = *v25;
    v41 = v25[1];
    *(v31 + 4) = *(v25 + 4);
    *v31 = v40;
    v31[1] = v41;
    *(v31 + 5) = *(v7 + 11);
LABEL_26:
    v22 = v25 + 3;
    v23 += 48;
    v24 = v26;
    v7 = v25;
  }

  while (v25 + 3 != a2);
LABEL_46:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(uint64_t result, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v93 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    goto LABEL_74;
  }

  v7 = a5;
  v10 = result;
  do
  {
    if (v7 <= a7 || a4 <= a7)
    {
      if (a4 > v7)
      {
        if (a2 == a3)
        {
          break;
        }

        v40 = 0;
        do
        {
          v41 = &a6[v40];
          v42 = a2[v40];
          v43 = a2[v40 + 2];
          v41[1] = a2[v40 + 1];
          v41[2] = v43;
          *v41 = v42;
          v40 += 3;
        }

        while (&a2[v40] != a3);
        v44 = a3 - 1;
        v45 = &a6[v40];
        while (1)
        {
          if (a2 == v10)
          {
            for (; v45 != a6; v45 -= 3)
            {
              v74 = *(v45 - 3);
              v75 = *(v45 - 2);
              *(v44 - 1) = *(v45 - 2);
              *(v44 - 3) = v75;
              *(v44 - 5) = v74;
              *v44 = *(v45 - 1);
              v44 -= 6;
            }

            goto LABEL_74;
          }

          v46 = a2 - 3;
          v47 = *(v45 - 3);
          v48 = *(v45 - 1);
          v91 = *(v45 - 2);
          v92 = v48;
          v90 = v47;
          v49 = *(a2 - 1);
          v50 = *(a2 - 3);
          v88 = *(a2 - 2);
          v89 = v49;
          v87 = v50;
          v51 = a6;
          if (*(&v91 + 1) == *(&v88 + 1))
          {
            result = Coherence_namespace::TopoID::operator<(&v90, &v87);
            v51 = a6;
            if ((result & 1) == 0)
            {
LABEL_54:
              v46 = v45 - 3;
              v52 = v45;
              v45 -= 3;
              goto LABEL_55;
            }
          }

          else if (*(&v91 + 1) >= *(&v88 + 1))
          {
            goto LABEL_54;
          }

          v52 = a2;
          a2 -= 3;
LABEL_55:
          v53 = *v46;
          v54 = v46[1];
          *(v44 - 1) = *(v46 + 4);
          *(v44 - 3) = v54;
          *(v44 - 5) = v53;
          *v44 = *(v52 - 1);
          v44 -= 6;
          if (v45 == v51)
          {
            goto LABEL_74;
          }
        }
      }

      if (a2 == v10)
      {
        break;
      }

      v55 = a6;
      v56 = v10;
      do
      {
        v57 = *v56;
        v58 = v56[2];
        v55[1] = v56[1];
        v55[2] = v58;
        *v55 = v57;
        v55 += 3;
        v56 += 3;
      }

      while (v56 != a2);
      while (1)
      {
        if (a2 == a3)
        {
          v76 = 0;
          do
          {
            v77 = v10 + v76 * 16;
            v78 = &a6[v76];
            v79 = a6[v76];
            v80 = a6[v76 + 1];
            *(v77 + 32) = *&a6[v76 + 2];
            *v77 = v79;
            *(v77 + 16) = v80;
            *(v77 + 40) = *(&a6[v76 + 2] + 1);
            v76 += 3;
          }

          while (v55 - 3 != v78);
          goto LABEL_74;
        }

        v59 = *a2;
        v60 = a2[2];
        v91 = a2[1];
        v92 = v60;
        v90 = v59;
        v61 = a6;
        v62 = a6[2];
        v63 = *a6;
        v88 = a6[1];
        v89 = v62;
        v87 = v63;
        if (*(&v91 + 1) == *(&v88 + 1))
        {
          result = Coherence_namespace::TopoID::operator<(&v90, &v87);
          v61 = a6;
          if ((result & 1) == 0)
          {
LABEL_65:
            v66 = *v61;
            v67 = v61[1];
            *(v10 + 32) = *(v61 + 4);
            *v10 = v66;
            *(v10 + 16) = v67;
            *(v10 + 40) = *(v61 + 5);
            v61 += 3;
            goto LABEL_66;
          }
        }

        else if (*(&v91 + 1) >= *(&v88 + 1))
        {
          goto LABEL_65;
        }

        v64 = *a2;
        v65 = a2[1];
        *(v10 + 32) = *(a2 + 4);
        *v10 = v64;
        *(v10 + 16) = v65;
        *(v10 + 40) = *(a2 + 5);
        a2 += 3;
LABEL_66:
        v10 += 48;
        a6 = v61;
        if (v55 == v61)
        {
          goto LABEL_74;
        }
      }
    }

    if (!a4)
    {
      break;
    }

    v11 = 0;
    v12 = -a4;
    while (1)
    {
      v13 = *a2;
      v14 = a2[2];
      v91 = a2[1];
      v92 = v14;
      v90 = v13;
      v15 = *(v11 + v10 + 32);
      v16 = *(v11 + v10);
      v88 = *(v11 + v10 + 16);
      v89 = v15;
      v87 = v16;
      if (*(&v91 + 1) == *(&v88 + 1))
      {
        break;
      }

      if (*(&v91 + 1) < *(&v88 + 1))
      {
        goto LABEL_14;
      }

LABEL_11:
      v11 += 3;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_74;
      }
    }

    result = Coherence_namespace::TopoID::operator<(&v90, &v87);
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v82 = v11 + v10;
    if (-v12 < v7)
    {
      v83 = v7 / 2;
      v18 = &a2[3 * (v7 / 2)];
      v19 = a2;
      if ((a2 - v10) == v11)
      {
LABEL_16:
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v10 - v11) >> 4);
        goto LABEL_36;
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10 - v11) >> 4);
      v19 = v11 + v10;
      while (2)
      {
        v30 = v29 >> 1;
        v31 = (v19 + 48 * (v29 >> 1));
        v32 = *v18;
        v33 = v18[2];
        v91 = v18[1];
        v92 = v33;
        v90 = v32;
        v34 = v31[2];
        v35 = *v31;
        v88 = v31[1];
        v89 = v34;
        v87 = v35;
        if (*(&v91 + 1) == *(&v88 + 1))
        {
          if ((Coherence_namespace::TopoID::operator<(&v90, &v87) & 1) == 0)
          {
LABEL_30:
            v19 = (v31 + 3);
            v30 = v29 + ~v30;
          }
        }

        else if (*(&v91 + 1) >= *(&v88 + 1))
        {
          goto LABEL_30;
        }

        v29 = v30;
        if (!v30)
        {
          goto LABEL_16;
        }

        continue;
      }
    }

    if (v12 == -1)
    {
      v68 = v11 + v10;
      v69 = *(v11 + v10);
      v70 = *(v11 + v10 + 16);
      *&v92 = *(v11 + v10 + 32);
      v90 = v69;
      v91 = v70;
      v71 = *a2;
      v72 = a2[1];
      *(v68 + 32) = *(a2 + 4);
      *v68 = v71;
      *(v68 + 16) = v72;
      *a2 = v90;
      a2[1] = v91;
      *(a2 + 4) = v92;
      v73 = *(v11 + v10 + 40);
      *(v68 + 40) = *(a2 + 5);
      *(a2 + 5) = v73;
      break;
    }

    v20 = -v12 / 2;
    v18 = a2;
    if (a2 == a3)
    {
      goto LABEL_35;
    }

    v21 = (&v11[3 * v20] + v10);
    v22 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
    v18 = a2;
    while (2)
    {
      v23 = v22 >> 1;
      v24 = &v18[3 * (v22 >> 1)];
      v25 = *v24;
      v26 = v24[2];
      v91 = v24[1];
      v92 = v26;
      v90 = v25;
      v27 = v21[2];
      v28 = *v21;
      v88 = v21[1];
      v89 = v27;
      v87 = v28;
      if (*(&v91 + 1) == *(&v88 + 1))
      {
        if (Coherence_namespace::TopoID::operator<(&v90, &v87))
        {
LABEL_22:
          v18 = v24 + 3;
          v23 = v22 + ~v23;
        }
      }

      else if (*(&v91 + 1) < *(&v88 + 1))
      {
        goto LABEL_22;
      }

      v22 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }

    v20 = -v12 / 2;
LABEL_35:
    v83 = 0xAAAAAAAAAAAAAAABLL * (v18 - a2);
    v19 = &v11[3 * v20] + v10;
LABEL_36:
    v36 = v18;
    if (v19 != a2)
    {
      v36 = v19;
      if (a2 != v18)
      {
        v36 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v19, a2, v18);
      }
    }

    a4 = -(v20 + v12);
    v37 = v20;
    v38 = v7 - v83;
    if (v37 + v83 >= v7 - (v37 + v83) - v12)
    {
      v39 = v37;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v36, v18, a3, a4, v7 - v83, a6, a7);
      v18 = v19;
      a4 = v39;
      a3 = v36;
      v10 = v82;
      v38 = v83;
    }

    else
    {
      result = std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v11 + v10, v19, v36, v37, v83, a6, a7);
      v10 = v36;
    }

    v7 = v38;
    a2 = v18;
  }

  while (v38);
LABEL_74:
  v81 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = (a1 + 48);
  v4 = result;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 2);
    v9 = *(v5 + 4);
    v10 = v5[1];
    *(v4 - 3) = *v5;
    *(v4 - 2) = v10;
    *(v4 - 2) = v9;
    *(v5 + 4) = v8;
    *v5 = v6;
    v5[1] = v7;
    v11 = *(v4 - 1);
    *(v4 - 1) = *(v5 + 5);
    *(v5 + 5) = v11;
    v5 += 3;
    if (v5 == a3)
    {
      break;
    }

    if (v4 == a2)
    {
      a2 = v5;
    }

    v4 += 3;
    result += 3;
  }

  if (v4 != a2)
  {
    v12 = a2;
    do
    {
      while (1)
      {
        v19 = *(v4 + 4);
        v17 = *v4;
        v18 = v4[1];
        v13 = *v12;
        v14 = v12[1];
        *(v4 + 4) = *(v12 + 4);
        *v4 = v13;
        v4[1] = v14;
        *(v12 + 4) = v19;
        *v12 = v17;
        v12[1] = v18;
        v15 = *(v4 + 5);
        *(v4 + 5) = *(v12 + 5);
        *(v12 + 5) = v15;
        v4 += 3;
        v12 += 3;
        if (v12 == a3)
        {
          break;
        }

        if (v4 == a2)
        {
          a2 = v12;
        }
      }

      v12 = a2;
    }

    while (v4 != a2);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = Coherence_namespace::TopoID::operator<(a2, a1);
  v9 = Coherence_namespace::TopoID::operator<(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = *(a1 + 16);
      v11 = *a1;
      v12 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v12;
LABEL_9:
      *a3 = v11;
      *(a3 + 16) = v10;
      goto LABEL_10;
    }

    v19 = *(a1 + 16);
    v20 = *a1;
    v21 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v21;
    *a2 = v20;
    *(a2 + 16) = v19;
    if (Coherence_namespace::TopoID::operator<(a3, a2))
    {
      v10 = *(a2 + 16);
      v11 = *a2;
      v22 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = *(a2 + 16);
    v14 = *a2;
    v15 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v15;
    *a3 = v14;
    *(a3 + 16) = v13;
    if (Coherence_namespace::TopoID::operator<(a2, a1))
    {
      v16 = *(a1 + 16);
      v17 = *a1;
      v18 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v18;
      *a2 = v17;
      *(a2 + 16) = v16;
    }
  }

LABEL_10:
  result = Coherence_namespace::TopoID::operator<(a4, a3);
  if (result)
  {
    v24 = *(a3 + 16);
    v25 = *a3;
    v26 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v26;
    *a4 = v25;
    *(a4 + 16) = v24;
    result = Coherence_namespace::TopoID::operator<(a3, a2);
    if (result)
    {
      v27 = *(a2 + 16);
      v28 = *a2;
      v29 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v29;
      *a3 = v28;
      *(a3 + 16) = v27;
      result = Coherence_namespace::TopoID::operator<(a2, a1);
      if (result)
      {
        v30 = *(a1 + 16);
        v31 = *a1;
        v32 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v32;
        *a2 = v31;
        *(a2 + 16) = v30;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 24;
    if (result + 24 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = Coherence_namespace::TopoID::operator<(v4, v7);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v8 = v5;
          while (1)
          {
            v9 = v3 + v8;
            *(v9 + 24) = *(v3 + v8);
            *(v9 + 40) = *(v3 + v8 + 16);
            if (!v8)
            {
              break;
            }

            v8 -= 24;
            result = Coherence_namespace::TopoID::operator<(&v12, v8 + v3);
            if ((result & 1) == 0)
            {
              v10 = v3 + v8 + 24;
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          *v10 = v12;
          *(v10 + 16) = v13;
        }

        v4 = v6 + 24;
        v5 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 24;
    if (result + 24 != a2)
    {
      v5 = result - 24;
      do
      {
        v6 = v3;
        v3 = v4;
        result = Coherence_namespace::TopoID::operator<(v4, v6);
        if (result)
        {
          v9 = *v3;
          v10 = *(v3 + 16);
          v7 = v5;
          do
          {
            *(v7 + 48) = *(v7 + 24);
            *(v7 + 64) = *(v7 + 40);
            result = Coherence_namespace::TopoID::operator<(&v9, v7);
            v7 -= 24;
          }

          while ((result & 1) != 0);
          *(v7 + 48) = v9;
          *(v7 + 64) = v10;
        }

        v4 = v3 + 24;
        v5 += 24;
      }

      while (v3 + 24 != a2);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = *(a1 + 16);
  if (Coherence_namespace::TopoID::operator<(&v15, a2 - 24))
  {
    v4 = a1;
    do
    {
      v4 += 24;
    }

    while ((Coherence_namespace::TopoID::operator<(&v15, v4) & 1) == 0);
  }

  else
  {
    v5 = a1 + 24;
    do
    {
      v4 = v5;
      if (v5 >= v2)
      {
        break;
      }

      v6 = Coherence_namespace::TopoID::operator<(&v15, v5);
      v5 = v4 + 24;
    }

    while (!v6);
  }

  if (v4 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while ((Coherence_namespace::TopoID::operator<(&v15, v2) & 1) != 0);
  }

  while (v4 < v2)
  {
    v7 = *v4;
    v18 = *(v4 + 16);
    v17 = v7;
    v8 = *v2;
    *(v4 + 16) = *(v2 + 16);
    *v4 = v8;
    v9 = v17;
    *(v2 + 16) = v18;
    *v2 = v9;
    do
    {
      v4 += 24;
    }

    while (!Coherence_namespace::TopoID::operator<(&v15, v4));
    do
    {
      v2 -= 24;
    }

    while ((Coherence_namespace::TopoID::operator<(&v15, v2) & 1) != 0);
  }

  v10 = (v4 - 24);
  if (v4 - 24 != a1)
  {
    v11 = *v10;
    *(a1 + 16) = *(v4 - 8);
    *a1 = v11;
  }

  v12 = v15;
  *(v4 - 8) = v16;
  *v10 = v12;
  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v4 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  v17 = *(a1 + 2);
  do
  {
    v4 += 24;
  }

  while ((Coherence_namespace::TopoID::operator<(a1 + v4, &v16) & 1) != 0);
  v5 = a1 + v4;
  v6 = a1 + v4 - 24;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while ((Coherence_namespace::TopoID::operator<(a2, &v16) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!Coherence_namespace::TopoID::operator<(a2, &v16));
  }

  if (v5 < a2)
  {
    v7 = a1 + v4;
    v8 = a2;
    do
    {
      v18 = *v7;
      v9 = v18;
      v19 = *(v7 + 16);
      v10 = v19;
      v11 = *(v8 + 16);
      *v7 = *v8;
      *(v7 + 16) = v11;
      *(v8 + 16) = v10;
      *v8 = v9;
      do
      {
        v7 += 24;
      }

      while ((Coherence_namespace::TopoID::operator<(v7, &v16) & 1) != 0);
      do
      {
        v8 -= 24;
      }

      while (!Coherence_namespace::TopoID::operator<(v8, &v16));
    }

    while (v7 < v8);
    v6 = v7 - 24;
  }

  if (v6 != a1)
  {
    v12 = *v6;
    *(a1 + 2) = *(v6 + 16);
    *a1 = v12;
  }

  v13 = v16;
  *(v6 + 16) = v17;
  *v6 = v13;
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 24;
        v14 = Coherence_namespace::TopoID::operator<(a1 + 24, a1);
        v15 = Coherence_namespace::TopoID::operator<(v5, a1 + 24);
        if (v14)
        {
          if (!v15)
          {
            v33 = *(a1 + 16);
            v34 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v34;
            *(a1 + 40) = v33;
            if (!Coherence_namespace::TopoID::operator<(v5, a1 + 24))
            {
              goto LABEL_43;
            }

            v16 = *(a1 + 40);
            v17 = *(a1 + 24);
            v35 = *(v5 + 16);
            *(a1 + 24) = *v5;
            *(a1 + 40) = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = *(a1 + 16);
          v17 = *a1;
          v18 = *(v5 + 16);
          *a1 = *v5;
          *(a1 + 16) = v18;
LABEL_16:
          *v5 = v17;
          *(v5 + 16) = v16;
          goto LABEL_43;
        }

        if (!v15)
        {
          goto LABEL_43;
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 24);
        v26 = *(v5 + 16);
        *(a1 + 24) = *v5;
        *(a1 + 40) = v26;
        *v5 = v25;
        *(v5 + 16) = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(a1, a1 + 24, a1 + 48, a2 - 24);
        goto LABEL_43;
      case 5:
        v6 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(a1, a1 + 24, a1 + 48, a1 + 72);
        if (!Coherence_namespace::TopoID::operator<(v6, a1 + 72))
        {
          goto LABEL_43;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        *(v6 + 16) = v7;
        if (!Coherence_namespace::TopoID::operator<(a1 + 72, a1 + 48))
        {
          goto LABEL_43;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if (!Coherence_namespace::TopoID::operator<(a1 + 48, a1 + 24))
        {
          goto LABEL_43;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (Coherence_namespace::TopoID::operator<(a1 + 24, a1))
    {
      v27 = *(a1 + 16);
      v28 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
    }

    goto LABEL_43;
  }

  if (v4 < 2)
  {
LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v4 == 2)
  {
    v5 = a2 - 24;
    if (!Coherence_namespace::TopoID::operator<(a2 - 24, a1))
    {
      goto LABEL_43;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = (a1 + 48);
  v20 = Coherence_namespace::TopoID::operator<(a1 + 24, a1);
  v21 = Coherence_namespace::TopoID::operator<(a1 + 48, a1 + 24);
  if (v20)
  {
    if (v21)
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *v19;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v37;
      *(a1 + 40) = v36;
      if (!Coherence_namespace::TopoID::operator<(a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *v19;
      *(a1 + 40) = *(a1 + 64);
    }

    *v19 = v23;
    *(a1 + 64) = v22;
  }

  else if (v21)
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 24);
    *(a1 + 24) = *v19;
    *(a1 + 40) = *(a1 + 64);
    *v19 = v30;
    *(a1 + 64) = v29;
    if (Coherence_namespace::TopoID::operator<(a1 + 24, a1))
    {
      v31 = *(a1 + 16);
      v32 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v32;
      *(a1 + 40) = v31;
    }
  }

LABEL_33:
  v38 = a1 + 72;
  if (a1 + 72 == a2)
  {
    goto LABEL_43;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (Coherence_namespace::TopoID::operator<(v38, v19))
    {
      v46 = *v38;
      v47 = *(v38 + 16);
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if ((Coherence_namespace::TopoID::operator<(&v46, v42 + 24) & 1) == 0)
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v46;
      *(v43 + 16) = v47;
      if (++v40 == 8)
      {
        break;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 24;
    if (v38 == a2)
    {
      goto LABEL_43;
    }
  }

  result = v38 + 24 == a2;
LABEL_44:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,Coherence_namespace::TopoID *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (Coherence_namespace::TopoID::operator<(v13, a1))
        {
          v14 = *(v13 + 16);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v24 = *a1;
        v25 = *(a1 + 16);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v24;
          *(v19 + 2) = v25;
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 16);
          *v19 = v20;
          *v18 = v24;
          *(v18 + 16) = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, v19 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v19 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v22 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v9 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v10 = result + 24 * v9;
      v11 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
      if (v11 < a3 && Coherence_namespace::TopoID::operator<(result + 24 * v9, v10 + 24))
      {
        v10 += 24;
        v9 = v11;
      }

      result = Coherence_namespace::TopoID::operator<(v10, v5);
      if ((result & 1) == 0)
      {
        v18 = *v5;
        v19 = *(v5 + 16);
        do
        {
          v12 = v10;
          v13 = *v10;
          *(v5 + 16) = *(v10 + 16);
          *v5 = v13;
          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = v6 + 24 * v14;
          v15 = 2 * v9 + 2;
          if (v15 < a3 && Coherence_namespace::TopoID::operator<(v6 + 24 * v14, v10 + 24))
          {
            v10 += 24;
            v14 = v15;
          }

          result = Coherence_namespace::TopoID::operator<(v10, &v18);
          v5 = v12;
          v9 = v14;
        }

        while (!result);
        v16 = v18;
        *(v12 + 16) = v19;
        *v12 = v16;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = (v7 + 24);
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = (v7 + 48);
      if (Coherence_namespace::TopoID::operator<(v7 + 24, v7 + 48))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    v4 = result;
    v5 = (a4 - 2) >> 1;
    v6 = result + 24 * v5;
    v7 = a2 - 24;
    result = Coherence_namespace::TopoID::operator<(v6, a2 - 24);
    if (result)
    {
      v11 = *v7;
      v12 = *(v7 + 16);
      do
      {
        v8 = v6;
        v9 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v9;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = v4 + 24 * v5;
        result = Coherence_namespace::TopoID::operator<(v6, &v11);
        v7 = v8;
      }

      while ((result & 1) != 0);
      *v8 = v11;
      *(v8 + 16) = v12;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_back<Coherence_namespace::TopoSubstring **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_front<Coherence_namespace::TopoSubstring **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_front<Coherence_namespace::TopoSubstring **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoIDRange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1ADE34000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NSRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoID,Coherence_namespace::TopoID>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a4 < *a5)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a3 < *a4)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a2->n128_u64[0] < *a3)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*(a1 + 16) >= v4->n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*a1 < *(a1 + 16))
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (*a1 >= v17)
    {
      if (v17 < v19)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v21 < v6->n128_u64[0])
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v17 >= v19)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (*(a1 + 16) >= v19)
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v18->n128_u64[0] >= v20->n128_u64[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v6->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (*a1 >= v14)
  {
    if (v14 < v12)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v15 < v13->n128_u64[0])
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v14 >= v12)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (*(a1 + 16) >= v12)
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u64[0];
    v35 = v30->n128_u64[0];
    if (v34 < v30->n128_u64[0])
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v37 >= v35)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(*a1);
    std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 12) = *(v7 + 12);
      *v8 = v9;
      v10 = *(v7 + 4);
      *(v7 + 4) = 0;
      *(v8 + 32) = v10;
      v7 = (v7 + 40);
      v8 += 40;
    }

    while (v7 != v4);
    do
    {

      v5 = (v5 + 40);
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (*(v11 + 9) != *(a2 + 20) || *(v11 + 8) != *(a2 + 16) || uuid_compare(v11 + 16, a2))
  {
    goto LABEL_19;
  }

  return v11;
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::find<Coherence_namespace::TopoID>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (*(i + 9) == *(a2 + 20) && *(i + 8) == *(a2 + 16) && !uuid_compare(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1ADE35AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = _TtC9Coherence34CRTTMergeableStringUndoEditCommand;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1ADE35C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__emplace_back_slow_path<objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong} const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v4;
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(result, v12);
    }

    v13 = 40 * v9;
    v16[0] = 0;
    v16[1] = v13;
    v16[3] = 0;
    v14 = *a2;
    *(v13 + 12) = *(a2 + 12);
    *v13 = v14;
    v15 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v13 + 32) = v15;
    v16[2] = 40 * v9 + 40;
    std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(result, v16);
    v8 = v3[1];
    result = std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(v16);
  }

  else
  {
    v6 = *a2;
    *(v4 + 12) = *(a2 + 12);
    *v4 = v6;
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v4 + 32) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

void sub_1ADE36774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_48c119_ZTSNSt3__14pairIN19Coherence_namespace11TopoIDRangeEU8__strongPU37objcproto26CRTTMergeableStringStorage11objc_objectEE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = v3;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void sub_1ADE36A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 5;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<Coherence_namespace::TopoIDRange>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoIDRange*,Coherence_namespace::TopoIDRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Coherence_namespace::TopoIDRange>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<Coherence_namespace::TopoIDRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoIDRange>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__emplace_back_slow_path<objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong} const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v11[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(a1, v6);
  }

  v7 = 40 * v2;
  v11[0] = 0;
  v11[1] = v7;
  v11[3] = 0;
  v8 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v8;
  *(v7 + 32) = *(a2 + 4);
  v11[2] = v7 + 40;
  std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(a1, v11);
  v9 = a1[1];
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(v11);
  return v9;
}