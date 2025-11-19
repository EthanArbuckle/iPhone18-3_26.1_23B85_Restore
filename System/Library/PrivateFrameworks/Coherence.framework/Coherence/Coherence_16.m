uint64_t sub_1ADF28284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a2;
  v108 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v93 - v8;
  v101 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v100 = &v93 - v11;
  v99 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v98 = &v93 - v14;
  v97 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v93 - v17;
  v95 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v94 = &v93 - v20;
  swift_getAssociatedTypeWitness();
  v106 = sub_1AE23D7CC();
  v21 = *(v106 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v93 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v93 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  v36 = *(a3 + 36);
  v37 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v110.n128_u64[0] = v37;
  v110.n128_u64[1] = AssociatedConformanceWitness;
  v111 = &protocol witness table for Int;
  v112 = MEMORY[0x1E69E6540];
  v39 = type metadata accessor for CRExtensible();
  v40 = v104;
  CRExtensible.rawValue.getter(v39, &v113);
  v41 = v21;
  v105 = v21 + 16;
  if (v113 > 1)
  {
    if (v113 == 2)
    {
      v87 = v40[1];
      v109.n128_u64[0] = *v40;
      v86 = v109.n128_u64[0];
      v109.n128_u64[1] = v87;
      v55 = v99;
      v56 = swift_getAssociatedConformanceWitness();
      v88 = WeakRef.init(id:)(&v109, &v110);
      v89 = v110;
      v59 = v41;
      v90 = *(v41 + 16);
      v61 = v108;
      v62 = v106;
      v90(v29, v108, v106, v88);
      sub_1ADDD86D8(v86, v87);
      v91 = v98;
      v92 = swift_dynamicCast();
      (*(*(v55 - 8) + 56))(v91, v92 ^ 1u, 1, v55);
      v109 = v89;
      v65 = v91;
    }

    else
    {
      if (v113 != 3)
      {
LABEL_8:
        v67 = v40[1];
        v109.n128_u64[0] = *v40;
        v66 = v109.n128_u64[0];
        v109.n128_u64[1] = v67;
        v68 = AssociatedTypeWitness;
        v69 = swift_getAssociatedConformanceWitness();
        v70 = WeakRef.init(id:)(&v109, &v110);
        v71 = v110;
        v72 = v108;
        v73 = v106;
        (*(v21 + 16))(v93, v108, v106, v70);
        sub_1ADDD86D8(v66, v67);
        v74 = v102;
        v75 = swift_dynamicCast();
        (*(*(v68 - 8) + 56))(v74, v75 ^ 1u, 1, v68);
        v109 = v71;
        sub_1ADEAEA50(v74, &v109, v68, v69);

        return (*(v21 + 8))(v72, v73);
      }

      v54 = v40[1];
      v109.n128_u64[0] = *v40;
      v53 = v109.n128_u64[0];
      v109.n128_u64[1] = v54;
      v55 = v101;
      v56 = swift_getAssociatedConformanceWitness();
      v57 = WeakRef.init(id:)(&v109, &v110);
      v58 = v110;
      v59 = v41;
      v60 = *(v41 + 16);
      v61 = v108;
      v62 = v106;
      v60(v26, v108, v106, v57);
      sub_1ADDD86D8(v53, v54);
      v63 = v100;
      v64 = swift_dynamicCast();
      (*(*(v55 - 8) + 56))(v63, v64 ^ 1u, 1, v55);
      v109 = v58;
      v65 = v63;
    }

    sub_1ADEAEA50(v65, &v109, v55, v56);

    return (*(v59 + 8))(v61, v62);
  }

  else
  {
    if (v113)
    {
      if (v113 == 1)
      {
        v43 = v40[1];
        v109.n128_u64[0] = *v40;
        v42 = v109.n128_u64[0];
        v109.n128_u64[1] = v43;
        v44 = v97;
        v45 = swift_getAssociatedConformanceWitness();
        v46 = WeakRef.init(id:)(&v109, &v110);
        v47 = v110;
        v48 = v108;
        v49 = v106;
        (*(v21 + 16))(v32, v108, v106, v46);
        sub_1ADDD86D8(v42, v43);
        v50 = v96;
        v51 = swift_dynamicCast();
        (*(*(v44 - 8) + 56))(v50, v51 ^ 1u, 1, v44);
        v109 = v47;
        sub_1ADEAEA50(v50, &v109, v44, v45);

        return (*(v21 + 8))(v48, v49);
      }

      goto LABEL_8;
    }

    v77 = v40[1];
    v109.n128_u64[0] = *v40;
    v76 = v109.n128_u64[0];
    v109.n128_u64[1] = v77;
    v78 = v95;
    v79 = swift_getAssociatedConformanceWitness();
    v80 = WeakRef.init(id:)(&v109, &v110);
    v81 = v110;
    v82 = v108;
    v83 = v106;
    (*(v21 + 16))(v35, v108, v106, v80);
    sub_1ADDD86D8(v76, v77);
    v84 = v94;
    v85 = swift_dynamicCast();
    (*(*(v78 - 8) + 56))(v84, v85 ^ 1u, 1, v78);
    v109 = v81;
    sub_1ADEAEA50(v84, &v109, v78, v79);

    return (*(v21 + 8))(v82, v83);
  }
}

uint64_t sub_1ADF28BEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_4();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_4, &associated type descriptor for Tagged_4.AnyType, sub_1ADF28284);
}

uint64_t WeakTagged_4.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_4, &associated type descriptor for Tagged_4.AnyType, sub_1ADF28284);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_4.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_4.subscript.getter(a2, a3);
  return sub_1ADF28E88;
}

uint64_t sub_1ADF28FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_4.init(from:)(a1, a3);
}

uint64_t WeakTagged_4.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_4() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
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
      goto LABEL_66;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x80000001AE25FC60;
        *(v40 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_57:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v39 = type metadata accessor for CRExtensible();
        return (*(*(v39 - 8) + 8))(a2 + v44, v39);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_61;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 <= 1)
  {
    if (!v48)
    {
      if (v34)
      {
        goto LABEL_55;
      }

      goto LABEL_65;
    }

    if (v48 == 1)
    {
      if (v34)
      {
        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_50;
  }

  if (v48 != 2)
  {
    if (v48 == 3)
    {
      if (v34)
      {
        goto LABEL_55;
      }

      goto LABEL_64;
    }

LABEL_50:
    if (v34)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

  if (v34)
  {
LABEL_55:
    v35 = swift_getAssociatedTypeWitness();
    v37 = *(a2 + 8);
    *&v45 = *a2;
    v36 = v45;
    *(&v45 + 1) = v37;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v36, v37);
    v38 = swift_getAssociatedConformanceWitness();
    v41(v35, &v45, a1, 1, v35, v38);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_57;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_5.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_5.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_5.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_5.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_5.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_5, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_5, a5);
}

uint64_t WeakTagged_5.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_5() + 36);
  v5 = *(type metadata accessor for WeakTagged_5() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_5.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_5.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_5.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_5.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_5.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_5.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_5.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v171 = a4;
  v168 = a1;
  v169 = a3;
  v172 = a5;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v150 = sub_1AE23D7CC();
  v149 = *(v150 - 8);
  v9 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v163 = &v129 - v10;
  v164 = AssociatedTypeWitness;
  v162 = *(AssociatedTypeWitness - 8);
  v11 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v129 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v146 = sub_1AE23D7CC();
  v145 = *(v146 - 8);
  v17 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v160 = &v129 - v18;
  v161 = v16;
  v159 = *(v16 - 8);
  v19 = *(v159 + 8);
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v143 = &v129 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v142 = sub_1AE23D7CC();
  v141 = *(v142 - 8);
  v25 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v157 = &v129 - v26;
  v158 = v24;
  v156 = *(v24 - 8);
  v27 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v140 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v139 = &v129 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v138 = sub_1AE23D7CC();
  v137 = *(v138 - 8);
  v33 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v155 = &v129 - v34;
  v167 = v32;
  v154 = *(v32 - 8);
  v35 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v136 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v135 = &v129 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v134 = sub_1AE23D7CC();
  v133 = *(v134 - 8);
  v41 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v152 = &v129 - v42;
  v166 = v40;
  v153 = *(v40 - 8);
  v43 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v131 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v132 = &v129 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v165 = sub_1AE23D7CC();
  v130 = *(v165 - 8);
  v49 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v51 = &v129 - v50;
  v151 = *(v48 - 8);
  v52 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v129 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v129 - v57;
  v59 = *(a2 + 36);
  v60 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v174.n128_u64[0] = v60;
  v174.n128_u64[1] = AssociatedConformanceWitness;
  v175 = &protocol witness table for Int;
  v176 = MEMORY[0x1E69E6540];
  v62 = type metadata accessor for CRExtensible();
  v63 = v170;
  CRExtensible.rawValue.getter(v62, &v177);
  v64 = v171;
  if (v177 > 1)
  {
    if (v177 == 2)
    {
      v84 = v63[1];
      v173.n128_u64[0] = *v63;
      v83 = v173.n128_u64[0];
      v173.n128_u64[1] = v84;
      v67 = v167;
      v85 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v173, &v174);
      v173 = v174;
      v86 = v64;
      v87 = *(v64 + 16);
      sub_1ADDD86D8(v83, v84);
      v88 = v155;
      v87(&v173, v67, v85, v169, v86);
      sub_1ADDCC35C(v173.n128_i64[0], v173.n128_u64[1]);
      v89 = v154;
      if ((*(v154 + 48))(v88, 1, v67) == 1)
      {
        (*(v137 + 8))(v88, v138);
        goto LABEL_15;
      }

      v115 = v88;
      v116 = *(v89 + 32);
      v117 = v135;
      v116(v135, v115, v67);
      v118 = &v168;
      goto LABEL_25;
    }

    v167 = v171 + 16;
    if (v177 == 3)
    {
      v91 = v63[1];
      v173.n128_u64[0] = *v63;
      v90 = v173.n128_u64[0];
      v173.n128_u64[1] = v91;
      v67 = v158;
      v92 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v173, &v174);
      v173 = v174;
      v93 = v64;
      v94 = *(v64 + 16);
      sub_1ADDD86D8(v90, v91);
      v95 = v157;
      v94(&v173, v67, v92, v169, v93);
      sub_1ADDCC35C(v173.n128_i64[0], v173.n128_u64[1]);
      v96 = v156;
      if ((*(v156 + 48))(v95, 1, v67) == 1)
      {
        (*(v141 + 8))(v95, v142);
        goto LABEL_15;
      }

      v116 = *(v96 + 32);
      v117 = v139;
      v116(v139, v95, v67);
      v118 = &v172;
LABEL_25:
      v116(*(v118 - 32), v117, v67);
LABEL_27:
      v125 = swift_getAssociatedTypeWitness();
      v126 = v172;
LABEL_28:
      swift_dynamicCast();
      return (*(*(v125 - 8) + 56))(v126, 0, 1, v125);
    }

    if (v177 == 4)
    {
      v66 = v63[1];
      v173.n128_u64[0] = *v63;
      v65 = v173.n128_u64[0];
      v173.n128_u64[1] = v66;
      v67 = v161;
      v68 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v173, &v174);
      v173 = v174;
      v69 = v64;
      v70 = *(v64 + 16);
      sub_1ADDD86D8(v65, v66);
      v71 = v160;
      v70(&v173, v67, v68, v169, v69);
      sub_1ADDCC35C(v173.n128_i64[0], v173.n128_u64[1]);
      v72 = v159;
      if ((*(v159 + 6))(v71, 1, v67) == 1)
      {
        (*(v145 + 8))(v71, v146);
LABEL_15:
        v82 = v172;
        goto LABEL_20;
      }

      v116 = *(v72 + 4);
      v117 = v143;
      v116(v143, v71, v67);
      v118 = &v174.n128_u64[1];
      goto LABEL_25;
    }

LABEL_18:
    v106 = v63[1];
    v173.n128_u64[0] = *v63;
    v105 = v173.n128_u64[0];
    v173.n128_u64[1] = v106;
    v107 = v164;
    v108 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v173, &v174);
    v173 = v174;
    v109 = v64;
    v110 = *(v64 + 16);
    sub_1ADDD86D8(v105, v106);
    v111 = v163;
    v110(&v173, v107, v108, v169, v109);
    sub_1ADDCC35C(v173.n128_i64[0], v173.n128_u64[1]);
    v112 = v162;
    if ((*(v162 + 48))(v111, 1, v107) == 1)
    {
      (*(v149 + 8))(v111, v150);
      v82 = v172;
      goto LABEL_20;
    }

    v127 = *(v112 + 32);
    v128 = v147;
    v127(v147, v111, v107);
    v127(v148, v128, v107);
    v125 = swift_getAssociatedTypeWitness();
    v126 = v172;
    goto LABEL_28;
  }

  v159 = v58;
  v160 = v55;
  v161 = v51;
  v73 = v165;
  v167 = v171 + 16;
  if (v177)
  {
    if (v177 == 1)
    {
      v75 = v63[1];
      v173.n128_u64[0] = *v63;
      v74 = v173.n128_u64[0];
      v173.n128_u64[1] = v75;
      v170 = v7;
      v76 = v166;
      v77 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v173, &v174);
      v173 = v174;
      v78 = v64;
      v79 = *(v64 + 16);
      sub_1ADDD86D8(v74, v75);
      v80 = v152;
      v79(&v173, v76, v77, v169, v78);
      sub_1ADDCC35C(v173.n128_i64[0], v173.n128_u64[1]);
      v81 = v153;
      if ((*(v153 + 48))(v80, 1, v76) == 1)
      {
        (*(v133 + 8))(v80, v134);
        v82 = v172;
LABEL_20:
        v113 = swift_getAssociatedTypeWitness();
        return (*(*(v113 - 8) + 56))(v82, 1, 1, v113);
      }

      v123 = *(v81 + 32);
      v124 = v132;
      v123(v132, v80, v76);
      v123(v131, v124, v76);
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v97 = *v63;
  v98 = v63[1];
  v173.n128_u64[0] = v97;
  v173.n128_u64[1] = v98;
  v170 = v6;
  v99 = v48;
  v100 = swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v173, &v174);
  v173 = v174;
  v101 = v64;
  v102 = *(v64 + 16);
  sub_1ADDD86D8(v97, v98);
  v103 = v161;
  v102(&v173, v99, v100, v169, v101);
  sub_1ADDCC35C(v173.n128_i64[0], v173.n128_u64[1]);
  v104 = v151;
  if ((*(v151 + 48))(v103, 1, v99) == 1)
  {
    (*(v130 + 8))(v103, v73);
    v82 = v172;
    goto LABEL_20;
  }

  v119 = *(v104 + 32);
  v120 = v159;
  v119(v159, v103, v99);
  v119(v160, v120, v99);
  v121 = swift_getAssociatedTypeWitness();
  v122 = v172;
  swift_dynamicCast();
  return (*(*(v121 - 8) + 56))(v122, 0, 1, v121);
}

uint64_t sub_1ADF2B208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a1;
  v160 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v139 = sub_1AE23D7CC();
  v137 = *(v139 - 8);
  v7 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v151 = &v119 - v8;
  v152 = AssociatedTypeWitness;
  v150 = *(AssociatedTypeWitness - 8);
  v9 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v119 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v135 = sub_1AE23D7CC();
  v133 = *(v135 - 8);
  v15 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v148 = &v119 - v16;
  v149 = v14;
  v147 = *(v14 - 8);
  v17 = *(v147 + 8);
  MEMORY[0x1EEE9AC00](v18);
  v134 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v119 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v131 = sub_1AE23D7CC();
  v129 = *(v131 - 8);
  v23 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v145 = &v119 - v24;
  v146 = v22;
  v144 = *(v22 - 8);
  v25 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v128 = &v119 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v127 = sub_1AE23D7CC();
  v125 = *(v127 - 8);
  v31 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v142 = &v119 - v32;
  v143 = v30;
  v141 = *(v30 - 8);
  v33 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v124 = &v119 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v156 = sub_1AE23D7CC();
  v122 = *(v156 - 8);
  v39 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v119 - v40;
  v157 = v38;
  v154 = *(v38 - 8);
  v41 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v123 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v121 = &v119 - v45;
  v46 = swift_getAssociatedTypeWitness();
  v153 = sub_1AE23D7CC();
  v120 = *(v153 - 8);
  v47 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v49 = &v119 - v48;
  v140 = *(v46 - 8);
  v50 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v119 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v119 - v55;
  v57 = *(a2 + 36);
  v58 = swift_getAssociatedTypeWitness();
  v59 = v5;
  v60 = v4;
  v61 = v159;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v162.n128_u64[0] = v58;
  v162.n128_u64[1] = AssociatedConformanceWitness;
  v163 = &protocol witness table for Int;
  v164 = MEMORY[0x1E69E6540];
  v63 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v63, &v165);
  if (v165 <= 1)
  {
    v147 = v56;
    v148 = v53;
    v149 = v49;
    v72 = v46;
    v74 = v153;
    v73 = v154;
    v76 = v155;
    v75 = v156;
    if (v165)
    {
      if (v165 != 1)
      {
        goto LABEL_17;
      }

      v78 = v61[1];
      v161.n128_u64[0] = *v61;
      v77 = v161.n128_u64[0];
      v161.n128_u64[1] = v78;
      v159 = v59;
      v79 = v157;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v161, &v162);
      v80 = v162;
      v161 = v162;
      sub_1ADDD86D8(v77, v78);
      v81 = type metadata accessor for WeakRef();
      sub_1AE21D3E4(v81, v76);
      if ((*(v73 + 48))(v76, 1, v79) != 1)
      {
        v117 = *(v73 + 32);
        v118 = v121;
        v117(v121, v76, v79);
        sub_1ADDCC35C(v80.n128_i64[0], v80.n128_u64[1]);
        v117(v123, v118, v79);
        v110 = swift_getAssociatedTypeWitness();
        v111 = v160;
        goto LABEL_28;
      }

      (*(v122 + 8))(v76, v75);
      sub_1ADDCC35C(v80.n128_i64[0], v80.n128_u64[1]);
      v82 = v160;
    }

    else
    {
      v95 = v61[1];
      v161.n128_u64[0] = *v61;
      v94 = v161.n128_u64[0];
      v161.n128_u64[1] = v95;
      v159 = v60;
      v96 = v72;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v161, &v162);
      v97 = v162;
      v161 = v162;
      sub_1ADDD86D8(v94, v95);
      v98 = type metadata accessor for WeakRef();
      v99 = v149;
      sub_1AE21D3E4(v98, v149);
      v100 = v140;
      if ((*(v140 + 48))(v99, 1, v96) != 1)
      {
        v115 = *(v100 + 32);
        v116 = v147;
        v115(v147, v99, v96);
        sub_1ADDCC35C(v97.n128_i64[0], v97.n128_u64[1]);
        v115(v148, v116, v96);
        v110 = swift_getAssociatedTypeWitness();
        v111 = v160;
        goto LABEL_28;
      }

      (*(v120 + 8))(v99, v74);
      sub_1ADDCC35C(v97.n128_i64[0], v97.n128_u64[1]);
      v82 = v160;
    }

LABEL_20:
    v106 = swift_getAssociatedTypeWitness();
    return (*(*(v106 - 8) + 56))(v82, 1, 1, v106);
  }

  if (v165 != 2)
  {
    if (v165 == 3)
    {
      v90 = v61[1];
      v161.n128_u64[0] = *v61;
      v89 = v161.n128_u64[0];
      v161.n128_u64[1] = v90;
      v66 = v146;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v161, &v162);
      v68 = v162.n128_u64[1];
      v67 = v162.n128_u64[0];
      v161 = v162;
      sub_1ADDD86D8(v89, v90);
      v91 = type metadata accessor for WeakRef();
      v92 = v145;
      sub_1AE21D3E4(v91, v145);
      v93 = v144;
      if ((*(v144 + 48))(v92, 1, v66) == 1)
      {
        (*(v129 + 8))(v92, v131);
        goto LABEL_19;
      }

      v112 = *(v93 + 32);
      v113 = v128;
      v112(v128, v92, v66);
      sub_1ADDCC35C(v67, v68);
      v114 = &v161.n128_u64[1];
      goto LABEL_27;
    }

    if (v165 == 4)
    {
      v65 = v61[1];
      v161.n128_u64[0] = *v61;
      v64 = v161.n128_u64[0];
      v161.n128_u64[1] = v65;
      v66 = v149;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v161, &v162);
      v68 = v162.n128_u64[1];
      v67 = v162.n128_u64[0];
      v161 = v162;
      sub_1ADDD86D8(v64, v65);
      v69 = type metadata accessor for WeakRef();
      v70 = v148;
      sub_1AE21D3E4(v69, v148);
      v71 = v147;
      if ((*(v147 + 6))(v70, 1, v66) == 1)
      {
        (*(v133 + 8))(v70, v135);
LABEL_19:
        sub_1ADDCC35C(v67, v68);
        v82 = v160;
        goto LABEL_20;
      }

      v112 = *(v71 + 4);
      v113 = v132;
      v112(v132, v70, v66);
      sub_1ADDCC35C(v67, v68);
      v114 = &v164;
      goto LABEL_27;
    }

LABEL_17:
    v102 = v61[1];
    v161.n128_u64[0] = *v61;
    v101 = v161.n128_u64[0];
    v161.n128_u64[1] = v102;
    v66 = v152;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v161, &v162);
    v68 = v162.n128_u64[1];
    v67 = v162.n128_u64[0];
    v161 = v162;
    sub_1ADDD86D8(v101, v102);
    v103 = type metadata accessor for WeakRef();
    v104 = v151;
    sub_1AE21D3E4(v103, v151);
    v105 = v150;
    if ((*(v150 + 48))(v104, 1, v66) == 1)
    {
      (*(v137 + 8))(v104, v139);
      goto LABEL_19;
    }

    v112 = *(v105 + 32);
    v113 = v136;
    v112(v136, v104, v66);
    sub_1ADDCC35C(v67, v68);
    v114 = &v166;
LABEL_27:
    v112(*(v114 - 32), v113, v66);
    v110 = swift_getAssociatedTypeWitness();
    v111 = v160;
    goto LABEL_28;
  }

  v84 = v61[1];
  v161.n128_u64[0] = *v61;
  v83 = v161.n128_u64[0];
  v161.n128_u64[1] = v84;
  v85 = v143;
  swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v161, &v162);
  v68 = v162.n128_u64[1];
  v67 = v162.n128_u64[0];
  v161 = v162;
  sub_1ADDD86D8(v83, v84);
  v86 = type metadata accessor for WeakRef();
  v87 = v142;
  sub_1AE21D3E4(v86, v142);
  v88 = v141;
  if ((*(v141 + 48))(v87, 1, v85) == 1)
  {
    (*(v125 + 8))(v87, v127);
    goto LABEL_19;
  }

  v108 = *(v88 + 32);
  v109 = v124;
  v108(v124, v87, v85);
  sub_1ADDCC35C(v67, v68);
  v108(v126, v109, v85);
  v110 = swift_getAssociatedTypeWitness();
  v111 = v160;
LABEL_28:
  swift_dynamicCast();
  return (*(*(v110 - 8) + 56))(v111, 0, 1, v110);
}

uint64_t sub_1ADF2C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v123 = a1;
  v122 = a2;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v116 = &v107 - v8;
  v115 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v107 - v11;
  v113 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v112 = &v107 - v14;
  v120 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = &v107 - v17;
  v119 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v110 = &v107 - v20;
  v118 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v107 - v23;
  swift_getAssociatedTypeWitness();
  v121 = sub_1AE23D7CC();
  v25 = *(v121 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v109 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v107 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v107 = &v107 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v107 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v107 - v39;
  v41 = *(a3 + 36);
  v42 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v126.n128_u64[0] = v42;
  v126.n128_u64[1] = AssociatedConformanceWitness;
  v127 = &protocol witness table for Int;
  v128 = MEMORY[0x1E69E6540];
  v44 = type metadata accessor for CRExtensible();
  v45 = v124;
  v46 = v25;
  CRExtensible.rawValue.getter(v44, &v129);
  if (v129 <= 1)
  {
    v120 = v25 + 16;
    if (!v129)
    {
      v90 = v24;
      v92 = v45[1];
      v125.n128_u64[0] = *v45;
      v91 = v125.n128_u64[0];
      v125.n128_u64[1] = v92;
      v93 = v118;
      v94 = swift_getAssociatedConformanceWitness();
      v95 = WeakRef.init(id:)(&v125, &v126);
      v96 = v126.n128_u64[1];
      v124 = v126.n128_u64[0];
      v97 = v123;
      v98 = v121;
      (*(v46 + 16))(v40, v123, v121, v95);
      sub_1ADDD86D8(v91, v92);
      v99 = swift_dynamicCast();
      (*(*(v93 - 8) + 56))(v90, v99 ^ 1u, 1, v93);
      v125.n128_u64[0] = v124;
      v125.n128_u64[1] = v96;
      sub_1ADEAEA50(v90, &v125, v93, v94);

      return (*(v46 + 8))(v97, v98);
    }

    if (v129 == 1)
    {
      v59 = v45[1];
      v125.n128_u64[0] = *v45;
      v58 = v125.n128_u64[0];
      v125.n128_u64[1] = v59;
      v60 = v119;
      v61 = swift_getAssociatedConformanceWitness();
      v62 = WeakRef.init(id:)(&v125, &v126);
      v63 = v126;
      v64 = v123;
      v65 = v121;
      (*(v46 + 16))(v37, v123, v121, v62);
      sub_1ADDD86D8(v58, v59);
      v66 = v110;
      v67 = swift_dynamicCast();
      (*(*(v60 - 8) + 56))(v66, v67 ^ 1u, 1, v60);
      v125 = v63;
      sub_1ADEAEA50(v66, &v125, v60, v61);

      return (*(v46 + 8))(v64, v65);
    }

    goto LABEL_12;
  }

  if (v129 == 2)
  {
    v69 = v45[1];
    v125.n128_u64[0] = *v45;
    v68 = v125.n128_u64[0];
    v125.n128_u64[1] = v69;
    v70 = v120;
    v71 = swift_getAssociatedConformanceWitness();
    v72 = WeakRef.init(id:)(&v125, &v126);
    v73 = v126.n128_u64[1];
    v124 = v126.n128_u64[0];
    v74 = v123;
    v75 = v121;
    (*(v46 + 16))(v34, v123, v121, v72);
    sub_1ADDD86D8(v68, v69);
    v76 = v111;
    v77 = swift_dynamicCast();
    (*(*(v70 - 8) + 56))(v76, v77 ^ 1u, 1, v70);
    v125.n128_u64[0] = v124;
    v125.n128_u64[1] = v73;
    sub_1ADEAEA50(v76, &v125, v70, v71);

    return (*(v46 + 8))(v74, v75);
  }

  v120 = v25 + 16;
  if (v129 != 3)
  {
    if (v129 == 4)
    {
      v48 = v45[1];
      v125.n128_u64[0] = *v45;
      v47 = v125.n128_u64[0];
      v125.n128_u64[1] = v48;
      v49 = v115;
      v50 = swift_getAssociatedConformanceWitness();
      v51 = WeakRef.init(id:)(&v125, &v126);
      v52 = v126;
      v53 = v123;
      v54 = v121;
      (*(v46 + 16))(v108, v123, v121, v51);
      sub_1ADDD86D8(v47, v48);
      v55 = v114;
      v56 = swift_dynamicCast();
      (*(*(v49 - 8) + 56))(v55, v56 ^ 1u, 1, v49);
      v125 = v52;
      sub_1ADEAEA50(v55, &v125, v49, v50);

      return (*(v46 + 8))(v53, v54);
    }

LABEL_12:
    v101 = v45[1];
    v125.n128_u64[0] = *v45;
    v100 = v125.n128_u64[0];
    v125.n128_u64[1] = v101;
    v102 = AssociatedTypeWitness;
    v81 = swift_getAssociatedConformanceWitness();
    v103 = WeakRef.init(id:)(&v125, &v126);
    v104 = v126;
    v84 = v123;
    v85 = v121;
    (*(v46 + 16))(v109, v123, v121, v103);
    sub_1ADDD86D8(v100, v101);
    v105 = v116;
    v106 = swift_dynamicCast();
    (*(*(v102 - 8) + 56))(v105, v106 ^ 1u, 1, v102);
    v125 = v104;
    v88 = v105;
    v89 = v102;
    goto LABEL_13;
  }

  v79 = v45[1];
  v125.n128_u64[0] = *v45;
  v78 = v125.n128_u64[0];
  v125.n128_u64[1] = v79;
  v80 = v113;
  v81 = swift_getAssociatedConformanceWitness();
  v82 = WeakRef.init(id:)(&v125, &v126);
  v83 = v126;
  v84 = v123;
  v85 = v121;
  (*(v46 + 16))(v107, v123, v121, v82);
  sub_1ADDD86D8(v78, v79);
  v86 = v112;
  v87 = swift_dynamicCast();
  (*(*(v80 - 8) + 56))(v86, v87 ^ 1u, 1, v80);
  v125 = v83;
  v88 = v86;
  v89 = v80;
LABEL_13:
  sub_1ADEAEA50(v88, &v125, v89, v81);

  return (*(v46 + 8))(v84, v85);
}

uint64_t sub_1ADF2CDDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_5();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_5, &associated type descriptor for Tagged_5.AnyType, sub_1ADF2C2D4);
}

uint64_t WeakTagged_5.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_5, &associated type descriptor for Tagged_5.AnyType, sub_1ADF2C2D4);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_5.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_5.subscript.getter(a2, a3);
  return sub_1ADF2D078;
}

uint64_t sub_1ADF2D190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_5.init(from:)(a1, a3);
}

uint64_t WeakTagged_5.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_5() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_64:
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
      goto LABEL_70;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x80000001AE25FC60;
        *(v40 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_60:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v39 = type metadata accessor for CRExtensible();
        return (*(*(v39 - 8) + 8))(a2 + v44, v39);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_64;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 <= 1)
  {
    if (!v48)
    {
      if (v34)
      {
        goto LABEL_58;
      }

      goto LABEL_69;
    }

    if (v48 == 1)
    {
      if (v34)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }
  }

  else
  {
    switch(v48)
    {
      case 2:
        if (v34)
        {
          goto LABEL_58;
        }

        goto LABEL_67;
      case 3:
        if (v34)
        {
          goto LABEL_58;
        }

        goto LABEL_68;
      case 4:
        if (v34)
        {
          goto LABEL_58;
        }

        goto LABEL_65;
    }
  }

  if (v34)
  {
LABEL_58:
    v35 = swift_getAssociatedTypeWitness();
    v37 = *(a2 + 8);
    *&v45 = *a2;
    v36 = v45;
    *(&v45 + 1) = v37;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v36, v37);
    v38 = swift_getAssociatedConformanceWitness();
    v41(v35, &v45, a1, 1, v35, v38);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_60;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_6.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_6.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_6.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_6.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_6.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_6, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_6, a5);
}

uint64_t WeakTagged_6.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_6() + 36);
  v5 = *(type metadata accessor for WeakTagged_6() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_6.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_6.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_6.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_6.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_6.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_6.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_6.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_6.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v185 = a4;
  v186[1] = a1;
  v187 = a3;
  v183 = a5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v164 = sub_1AE23D7CC();
  v163 = *(v164 - 8);
  v9 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v181 = &v137 - v10;
  v182 = AssociatedTypeWitness;
  v180 = *(AssociatedTypeWitness - 8);
  v11 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v161 = &v137 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v160 = sub_1AE23D7CC();
  v159 = *(v160 - 8);
  v17 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v178 = &v137 - v18;
  v179 = v16;
  v177 = *(v16 - 8);
  v19 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v137 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v156 = sub_1AE23D7CC();
  v155 = *(v156 - 8);
  v25 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v175 = &v137 - v26;
  v176 = v24;
  v174 = *(v24 - 8);
  v27 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v154 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v153 = &v137 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v152 = sub_1AE23D7CC();
  v151 = *(v152 - 8);
  v33 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v172 = &v137 - v34;
  v173 = v32;
  v171 = *(v32 - 8);
  v35 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v150 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v149 = &v137 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v148 = sub_1AE23D7CC();
  v147 = *(v148 - 8);
  v41 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v170 = &v137 - v42;
  v169 = *(v40 - 8);
  v43 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v146 = &v137 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v145 = &v137 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v144 = sub_1AE23D7CC();
  v143 = *(v144 - 8);
  v49 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v167 = &v137 - v50;
  v168 = v48;
  v166 = *(v48 - 8);
  v51 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v142 = &v137 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v141 = &v137 - v55;
  v56 = swift_getAssociatedTypeWitness();
  v140 = sub_1AE23D7CC();
  v139 = *(v140 - 8);
  v57 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v59 = &v137 - v58;
  v165 = *(v56 - 8);
  v60 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v138 = &v137 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v137 - v64;
  v66 = *(a2 + 36);
  v67 = swift_getAssociatedTypeWitness();
  v68 = v184;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v189.n128_u64[0] = v67;
  v189.n128_u64[1] = AssociatedConformanceWitness;
  v190 = &protocol witness table for Int;
  v191 = MEMORY[0x1E69E6540];
  v70 = type metadata accessor for CRExtensible();
  v71 = v185;
  CRExtensible.rawValue.getter(v70, &v192);
  v186[0] = v71 + 16;
  if (v192 > 2)
  {
    if (v192 != 3)
    {
      if (v192 == 4)
      {
        v116 = v68[1];
        v188.n128_u64[0] = *v68;
        v115 = v188.n128_u64[0];
        v188.n128_u64[1] = v116;
        v81 = v176;
        v117 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v188, &v189);
        v188 = v189;
        v118 = *(v71 + 16);
        sub_1ADDD86D8(v115, v116);
        v119 = v175;
        v118(&v188, v81, v117, v187, v71);
        sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
        v120 = v174;
        if ((*(v174 + 48))(v119, 1, v81) == 1)
        {
          (*(v155 + 8))(v119, v156);
          goto LABEL_22;
        }

        v128 = *(v120 + 32);
        v129 = v153;
        v128(v153, v119, v81);
        v130 = v186;
      }

      else
      {
        if (v192 != 5)
        {
LABEL_16:
          v102 = v68[1];
          v188.n128_u64[0] = *v68;
          v101 = v188.n128_u64[0];
          v188.n128_u64[1] = v102;
          v81 = v182;
          v103 = swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v188, &v189);
          v188 = v189;
          v104 = *(v71 + 16);
          sub_1ADDD86D8(v101, v102);
          v105 = v181;
          v104(&v188, v81, v103, v187, v71);
          sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
          v106 = v180;
          if ((*(v180 + 48))(v105, 1, v81) == 1)
          {
            (*(v163 + 8))(v105, v164);
            goto LABEL_22;
          }

          v128 = *(v106 + 32);
          v129 = v161;
          v128(v161, v105, v81);
          v130 = &v191;
          goto LABEL_32;
        }

        v80 = v68[1];
        v188.n128_u64[0] = *v68;
        v79 = v188.n128_u64[0];
        v188.n128_u64[1] = v80;
        v81 = v179;
        v82 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v188, &v189);
        v188 = v189;
        v83 = *(v71 + 16);
        sub_1ADDD86D8(v79, v80);
        v84 = v178;
        v83(&v188, v81, v82, v187, v71);
        sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
        v85 = v177;
        if ((*(v177 + 48))(v84, 1, v81) == 1)
        {
          (*(v159 + 8))(v84, v160);
          goto LABEL_22;
        }

        v128 = *(v85 + 32);
        v129 = v157;
        v128(v157, v84, v81);
        v130 = &v188.n128_u64[1];
      }

LABEL_32:
      v128(*(v130 - 32), v129, v81);
      v126 = swift_getAssociatedTypeWitness();
      v127 = v183;
      goto LABEL_33;
    }

    v93 = v71;
    v94 = v68[1];
    v188.n128_u64[0] = *v68;
    v95 = v188.n128_u64[0];
    v188.n128_u64[1] = v94;
    v96 = v173;
    v97 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v188, &v189);
    v188 = v189;
    v98 = *(v93 + 16);
    sub_1ADDD86D8(v95, v94);
    v99 = v172;
    v98(&v188, v96, v97, v187, v93);
    sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
    v100 = v171;
    if ((*(v171 + 48))(v99, 1, v96) == 1)
    {
      (*(v151 + 8))(v99, v152);
      goto LABEL_22;
    }

    v124 = *(v100 + 32);
    v125 = v149;
    v124(v149, v99, v96);
    v124(v150, v125, v96);
  }

  else
  {
    if (v192)
    {
      if (v192 != 1)
      {
        if (v192 == 2)
        {
          v73 = v68[1];
          v188.n128_u64[0] = *v68;
          v72 = v188.n128_u64[0];
          v188.n128_u64[1] = v73;
          v74 = swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v188, &v189);
          v188 = v189;
          v75 = *(v71 + 16);
          sub_1ADDD86D8(v72, v73);
          v76 = v170;
          v75(&v188, v40, v74, v187, v71);
          sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
          v77 = v169;
          if ((*(v169 + 48))(v76, 1, v40) == 1)
          {
            (*(v147 + 8))(v76, v148);
            v78 = v183;
LABEL_23:
            v121 = swift_getAssociatedTypeWitness();
            return (*(*(v121 - 8) + 56))(v78, 1, 1, v121);
          }

          v131 = *(v77 + 32);
          v132 = v145;
          v131(v145, v76, v40);
          v131(v146, v132, v40);
          v126 = swift_getAssociatedTypeWitness();
          v127 = v183;
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      v107 = *v68;
      v108 = v68[1];
      v188.n128_u64[0] = v107;
      v188.n128_u64[1] = v108;
      v109 = v168;
      v110 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v188, &v189);
      v188 = v189;
      v111 = v71;
      v112 = *(v71 + 16);
      sub_1ADDD86D8(v107, v108);
      v113 = v167;
      v112(&v188, v109, v110, v187, v111);
      sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
      v114 = v166;
      if ((*(v166 + 48))(v113, 1, v109) != 1)
      {
        v133 = *(v114 + 32);
        v134 = v141;
        v133(v141, v113, v109);
        v133(v142, v134, v109);
        v135 = swift_getAssociatedTypeWitness();
        v136 = v183;
        swift_dynamicCast();
        return (*(*(v135 - 8) + 56))(v136, 0, 1, v135);
      }

      (*(v143 + 8))(v113, v144);
LABEL_22:
      v78 = v183;
      goto LABEL_23;
    }

    v86 = v68;
    v87 = *v68;
    v88 = v86[1];
    v188.n128_u64[0] = v87;
    v188.n128_u64[1] = v88;
    v184 = v7;
    v89 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v188, &v189);
    v188 = v189;
    v90 = v71;
    v91 = *(v71 + 16);
    sub_1ADDD86D8(v87, v88);
    v91(&v188, v56, v89, v187, v90);
    sub_1ADDCC35C(v188.n128_i64[0], v188.n128_u64[1]);
    v92 = v165;
    if ((*(v165 + 48))(v59, 1, v56) == 1)
    {
      (*(v139 + 8))(v59, v140);
      v78 = v183;
      goto LABEL_23;
    }

    v123 = *(v92 + 32);
    v123(v65, v59, v56);
    v123(v138, v65, v56);
  }

  v126 = swift_getAssociatedTypeWitness();
  v127 = v183;
LABEL_33:
  swift_dynamicCast();
  return (*(*(v126 - 8) + 56))(v127, 0, 1, v126);
}

uint64_t sub_1ADF2F824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v166 = a1;
  v164 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = sub_1AE23D7CC();
  v143 = *(v145 - 8);
  v7 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v162 = &v119 - v8;
  v163 = AssociatedTypeWitness;
  v161 = *(AssociatedTypeWitness - 8);
  v9 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v144 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v119 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v141 = sub_1AE23D7CC();
  v139 = *(v141 - 8);
  v15 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v159 = &v119 - v16;
  v160 = v14;
  v158 = *(v14 - 8);
  v17 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v119 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v137 = sub_1AE23D7CC();
  v135 = *(v137 - 8);
  v23 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v156 = &v119 - v24;
  v157 = v22;
  v155 = *(v22 - 8);
  v25 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v134 = &v119 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v133 = sub_1AE23D7CC();
  v131 = *(v133 - 8);
  v31 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v153 = &v119 - v32;
  v154 = v30;
  v152 = *(v30 - 8);
  v33 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v130 = &v119 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v129 = sub_1AE23D7CC();
  v127 = *(v129 - 8);
  v39 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v150 = &v119 - v40;
  v151 = v38;
  v149 = *(v38 - 8);
  v41 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v128 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v126 = &v119 - v45;
  v46 = swift_getAssociatedTypeWitness();
  v125 = sub_1AE23D7CC();
  v123 = *(v125 - 8);
  v47 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v148 = &v119 - v48;
  v147 = *(v46 - 8);
  v49 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v124 = &v119 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v122 = &v119 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v121 = sub_1AE23D7CC();
  v119 = *(v121 - 8);
  v55 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v57 = &v119 - v56;
  v146 = *(v54 - 8);
  v58 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v120 = &v119 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v119 - v62;
  v64 = *(a2 + 36);
  v65 = swift_getAssociatedTypeWitness();
  v66 = v4;
  v67 = v165;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v168.n128_u64[0] = v65;
  v168.n128_u64[1] = AssociatedConformanceWitness;
  v169 = &protocol witness table for Int;
  v170 = MEMORY[0x1E69E6540];
  v69 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v69, &v171);
  if (v171 > 2)
  {
    switch(v171)
    {
      case 3:
        v90 = v67[1];
        v167.n128_u64[0] = *v67;
        v89 = v167.n128_u64[0];
        v167.n128_u64[1] = v90;
        v72 = v154;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v167, &v168);
        v74 = v168.n128_u64[1];
        v73 = v168.n128_u64[0];
        v167 = v168;
        sub_1ADDD86D8(v89, v90);
        v91 = type metadata accessor for WeakRef();
        v92 = v153;
        sub_1AE21D3E4(v91, v153);
        v93 = v152;
        if ((*(v152 + 48))(v92, 1, v72) == 1)
        {
          (*(v131 + 8))(v92, v133);
          goto LABEL_22;
        }

        v114 = *(v93 + 32);
        v115 = v130;
        v114(v130, v92, v72);
        sub_1ADDCC35C(v73, v74);
        v116 = &v164;
        goto LABEL_31;
      case 4:
        v105 = v67[1];
        v167.n128_u64[0] = *v67;
        v104 = v167.n128_u64[0];
        v167.n128_u64[1] = v105;
        v72 = v157;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v167, &v168);
        v74 = v168.n128_u64[1];
        v73 = v168.n128_u64[0];
        v167 = v168;
        sub_1ADDD86D8(v104, v105);
        v106 = type metadata accessor for WeakRef();
        v107 = v156;
        sub_1AE21D3E4(v106, v156);
        v108 = v155;
        if ((*(v155 + 48))(v107, 1, v72) == 1)
        {
          (*(v135 + 8))(v107, v137);
          goto LABEL_22;
        }

        v114 = *(v108 + 32);
        v115 = v134;
        v114(v134, v107, v72);
        sub_1ADDCC35C(v73, v74);
        v116 = &v167.n128_u64[1];
LABEL_31:
        v114(*(v116 - 32), v115, v72);
        v112 = swift_getAssociatedTypeWitness();
        v113 = v164;
        goto LABEL_32;
      case 5:
        v79 = v67[1];
        v167.n128_u64[0] = *v67;
        v78 = v167.n128_u64[0];
        v167.n128_u64[1] = v79;
        v72 = v160;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v167, &v168);
        v74 = v168.n128_u64[1];
        v73 = v168.n128_u64[0];
        v167 = v168;
        sub_1ADDD86D8(v78, v79);
        v80 = type metadata accessor for WeakRef();
        v81 = v159;
        sub_1AE21D3E4(v80, v159);
        v82 = v158;
        if ((*(v158 + 48))(v81, 1, v72) == 1)
        {
          (*(v139 + 8))(v81, v141);
          goto LABEL_22;
        }

        v114 = *(v82 + 32);
        v115 = v138;
        v114(v138, v81, v72);
        sub_1ADDCC35C(v73, v74);
        v116 = &v170;
        goto LABEL_31;
    }

LABEL_16:
    v95 = v67[1];
    v167.n128_u64[0] = *v67;
    v94 = v167.n128_u64[0];
    v167.n128_u64[1] = v95;
    v72 = v163;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v167, &v168);
    v74 = v168.n128_u64[1];
    v73 = v168.n128_u64[0];
    v167 = v168;
    sub_1ADDD86D8(v94, v95);
    v96 = type metadata accessor for WeakRef();
    v97 = v162;
    sub_1AE21D3E4(v96, v162);
    v98 = v161;
    if ((*(v161 + 48))(v97, 1, v72) == 1)
    {
      (*(v143 + 8))(v97, v145);
      goto LABEL_22;
    }

    v114 = *(v98 + 32);
    v115 = v142;
    v114(v142, v97, v72);
    sub_1ADDCC35C(v73, v74);
    v116 = &v172;
    goto LABEL_31;
  }

  if (v171)
  {
    if (v171 != 1)
    {
      if (v171 == 2)
      {
        v71 = v67[1];
        v167.n128_u64[0] = *v67;
        v70 = v167.n128_u64[0];
        v167.n128_u64[1] = v71;
        v72 = v151;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v167, &v168);
        v74 = v168.n128_u64[1];
        v73 = v168.n128_u64[0];
        v167 = v168;
        sub_1ADDD86D8(v70, v71);
        v75 = type metadata accessor for WeakRef();
        v76 = v150;
        sub_1AE21D3E4(v75, v150);
        v77 = v149;
        if ((*(v149 + 48))(v76, 1, v72) == 1)
        {
          (*(v127 + 8))(v76, v129);
LABEL_22:
          sub_1ADDCC35C(v73, v74);
          v88 = v164;
          goto LABEL_23;
        }

        v114 = *(v77 + 32);
        v115 = v126;
        v114(v126, v76, v72);
        sub_1ADDCC35C(v73, v74);
        v116 = &v160;
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    v100 = v67[1];
    v167.n128_u64[0] = *v67;
    v99 = v167.n128_u64[0];
    v167.n128_u64[1] = v100;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v167, &v168);
    v74 = v168.n128_u64[1];
    v73 = v168.n128_u64[0];
    v167 = v168;
    sub_1ADDD86D8(v99, v100);
    v101 = type metadata accessor for WeakRef();
    v102 = v148;
    sub_1AE21D3E4(v101, v148);
    v103 = v147;
    if ((*(v147 + 48))(v102, 1, v46) == 1)
    {
      (*(v123 + 8))(v102, v125);
      goto LABEL_22;
    }

    v117 = *(v103 + 32);
    v118 = v122;
    v117(v122, v102, v46);
    sub_1ADDCC35C(v73, v74);
    v117(v124, v118, v46);
    v112 = swift_getAssociatedTypeWitness();
    v113 = v164;
  }

  else
  {
    v84 = v67[1];
    v167.n128_u64[0] = *v67;
    v83 = v167.n128_u64[0];
    v167.n128_u64[1] = v84;
    v165 = v66;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v167, &v168);
    v85 = v168;
    v167 = v168;
    sub_1ADDD86D8(v83, v84);
    v86 = type metadata accessor for WeakRef();
    sub_1AE21D3E4(v86, v57);
    v87 = v146;
    if ((*(v146 + 48))(v57, 1, v54) == 1)
    {
      (*(v119 + 8))(v57, v121);
      sub_1ADDCC35C(v85.n128_i64[0], v85.n128_u64[1]);
      v88 = v164;
LABEL_23:
      v109 = swift_getAssociatedTypeWitness();
      return (*(*(v109 - 8) + 56))(v88, 1, 1, v109);
    }

    v111 = *(v87 + 32);
    v111(v63, v57, v54);
    sub_1ADDCC35C(v85.n128_i64[0], v85.n128_u64[1]);
    v111(v120, v63, v54);
    v112 = swift_getAssociatedTypeWitness();
    v113 = v164;
  }

LABEL_32:
  swift_dynamicCast();
  return (*(*(v112 - 8) + 56))(v113, 0, 1, v112);
}

uint64_t sub_1ADF30AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v142 = a2;
  v143 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = &v122 - v8;
  v136 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = &v122 - v11;
  v134 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v133 = &v122 - v14;
  v132 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v131 = &v122 - v17;
  v130 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v129 = &v122 - v20;
  v128 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v127 = &v122 - v23;
  v126 = swift_getAssociatedTypeWitness();
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v125 = &v122 - v26;
  swift_getAssociatedTypeWitness();
  v141 = sub_1AE23D7CC();
  v27 = *(v141 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v124 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v123 = &v122 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v122 = &v122 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v122 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v122 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v122 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v122 - v44;
  v46 = *(a3 + 36);
  v47 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v145.n128_u64[0] = v47;
  v145.n128_u64[1] = AssociatedConformanceWitness;
  v146 = &protocol witness table for Int;
  v147 = MEMORY[0x1E69E6540];
  v49 = type metadata accessor for CRExtensible();
  v50 = v139;
  CRExtensible.rawValue.getter(v49, &v148);
  v51 = v27;
  v140 = v27 + 16;
  if (v148 <= 2)
  {
    switch(v148)
    {
      case 0:
        v81 = v50[1];
        v144.n128_u64[0] = *v50;
        v80 = v144.n128_u64[0];
        v144.n128_u64[1] = v81;
        v82 = v126;
        v83 = swift_getAssociatedConformanceWitness();
        v84 = WeakRef.init(id:)(&v144, &v145);
        v85 = v145;
        v86 = *(v27 + 16);
        v73 = v143;
        v74 = v141;
        v86(v45, v143, v141, v84);
        sub_1ADDD86D8(v80, v81);
        v87 = v125;
        v88 = swift_dynamicCast();
        (*(*(v82 - 8) + 56))(v87, v88 ^ 1u, 1, v82);
        v144 = v85;
        v77 = v87;
        v78 = v82;
LABEL_16:
        v79 = v83;
        goto LABEL_17;
      case 1:
        v108 = v50[1];
        v144.n128_u64[0] = *v50;
        v107 = v144.n128_u64[0];
        v144.n128_u64[1] = v108;
        v101 = v128;
        v83 = swift_getAssociatedConformanceWitness();
        v109 = WeakRef.init(id:)(&v144, &v145);
        v104 = v145.n128_u64[1];
        v103 = v145.n128_u64[0];
        v110 = *(v27 + 16);
        v73 = v143;
        v74 = v141;
        v110(v42, v143, v141, v109);
        sub_1ADDD86D8(v107, v108);
        v106 = v127;
        goto LABEL_15;
      case 2:
        v53 = v50[1];
        v144.n128_u64[0] = *v50;
        v52 = v144.n128_u64[0];
        v144.n128_u64[1] = v53;
        v54 = v130;
        v55 = swift_getAssociatedConformanceWitness();
        v56 = WeakRef.init(id:)(&v144, &v145);
        v57 = v145;
        v58 = *(v27 + 16);
        v59 = v143;
        v60 = v141;
        v58(v39, v143, v141, v56);
        sub_1ADDD86D8(v52, v53);
        v61 = v129;
        v62 = swift_dynamicCast();
        (*(*(v54 - 8) + 56))(v61, v62 ^ 1u, 1, v54);
        v144 = v57;
        v63 = v61;
        v64 = v54;
        v65 = v55;
LABEL_12:
        sub_1ADEAEA50(v63, &v144, v64, v65);

        return (*(v51 + 8))(v59, v60);
    }

LABEL_13:
    v100 = v50[1];
    v144.n128_u64[0] = *v50;
    v99 = v144.n128_u64[0];
    v144.n128_u64[1] = v100;
    v101 = AssociatedTypeWitness;
    v83 = swift_getAssociatedConformanceWitness();
    v102 = WeakRef.init(id:)(&v144, &v145);
    v104 = v145.n128_u64[1];
    v103 = v145.n128_u64[0];
    v105 = *(v27 + 16);
    v73 = v143;
    v74 = v141;
    v105(v124, v143, v141, v102);
    sub_1ADDD86D8(v99, v100);
    v106 = v137;
LABEL_15:
    v111 = swift_dynamicCast();
    (*(*(v101 - 8) + 56))(v106, v111 ^ 1u, 1, v101);
    v144.n128_u64[0] = v103;
    v144.n128_u64[1] = v104;
    v77 = v106;
    v78 = v101;
    goto LABEL_16;
  }

  if (v148 == 3)
  {
    v89 = *v50;
    v90 = v50[1];
    v144.n128_u64[0] = v89;
    v144.n128_u64[1] = v90;
    v91 = v132;
    v92 = swift_getAssociatedConformanceWitness();
    v93 = WeakRef.init(id:)(&v144, &v145);
    v94 = v145;
    v95 = *(v27 + 16);
    v59 = v143;
    v60 = v141;
    v95(v36, v143, v141, v93);
    sub_1ADDD86D8(v89, v90);
    v96 = v131;
    v97 = swift_dynamicCast();
    (*(*(v91 - 8) + 56))(v96, v97 ^ 1u, 1, v91);
    v144 = v94;
    v63 = v96;
    v64 = v91;
    v65 = v92;
    goto LABEL_12;
  }

  if (v148 == 4)
  {
    v113 = v50[1];
    v144.n128_u64[0] = *v50;
    v112 = v144.n128_u64[0];
    v144.n128_u64[1] = v113;
    v114 = v134;
    v115 = swift_getAssociatedConformanceWitness();
    v116 = WeakRef.init(id:)(&v144, &v145);
    v117 = v145;
    v118 = v143;
    v119 = v141;
    (*(v51 + 16))(v122, v143, v141, v116);
    sub_1ADDD86D8(v112, v113);
    v120 = v133;
    v121 = swift_dynamicCast();
    (*(*(v114 - 8) + 56))(v120, v121 ^ 1u, 1, v114);
    v144 = v117;
    sub_1ADEAEA50(v120, &v144, v114, v115);

    return (*(v51 + 8))(v118, v119);
  }

  if (v148 != 5)
  {
    goto LABEL_13;
  }

  v67 = v50[1];
  v144.n128_u64[0] = *v50;
  v66 = v144.n128_u64[0];
  v144.n128_u64[1] = v67;
  v68 = v136;
  v69 = swift_getAssociatedConformanceWitness();
  v70 = WeakRef.init(id:)(&v144, &v145);
  v71 = v145;
  v72 = *(v27 + 16);
  v73 = v143;
  v74 = v141;
  v72(v123, v143, v141, v70);
  sub_1ADDD86D8(v66, v67);
  v75 = v135;
  v76 = swift_dynamicCast();
  (*(*(v68 - 8) + 56))(v75, v76 ^ 1u, 1, v68);
  v144 = v71;
  v77 = v75;
  v78 = v68;
  v79 = v69;
LABEL_17:
  sub_1ADEAEA50(v77, &v144, v78, v79);

  return (*(v51 + 8))(v73, v74);
}

uint64_t sub_1ADF316A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_6();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_6, &associated type descriptor for Tagged_6.AnyType, sub_1ADF30AB8);
}

uint64_t WeakTagged_6.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_6, &associated type descriptor for Tagged_6.AnyType, sub_1ADF30AB8);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_6.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_6.subscript.getter(a2, a3);
  return sub_1ADF3193C;
}

uint64_t sub_1ADF31A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_6.init(from:)(a1, a3);
}

uint64_t WeakTagged_6.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_6() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
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
      goto LABEL_74;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v35 = 0xD000000000000013;
        *(v35 + 8) = 0x80000001AE25FC60;
        *(v35 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_64:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v40 = type metadata accessor for CRExtensible();
        return (*(*(v40 - 8) + 8))(a2 + v44, v40);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_67;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 <= 2)
  {
    switch(v48)
    {
      case 0:
        if (v34)
        {
          goto LABEL_62;
        }

        goto LABEL_70;
      case 1:
        if (v34)
        {
          goto LABEL_62;
        }

        goto LABEL_73;
      case 2:
        if (v34)
        {
          goto LABEL_62;
        }

        goto LABEL_68;
    }

LABEL_57:
    if (v34)
    {
      goto LABEL_62;
    }

    goto LABEL_72;
  }

  if (v48 == 3)
  {
    if (v34)
    {
      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v48 != 4)
  {
    if (v48 == 5)
    {
      if (v34)
      {
        goto LABEL_62;
      }

      goto LABEL_69;
    }

    goto LABEL_57;
  }

  if (v34)
  {
LABEL_62:
    v36 = swift_getAssociatedTypeWitness();
    v38 = *(a2 + 8);
    *&v45 = *a2;
    v37 = v45;
    *(&v45 + 1) = v38;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v37, v38);
    v39 = swift_getAssociatedConformanceWitness();
    v41(v36, &v45, a1, 1, v36, v39);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_64;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_7.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_7.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_7.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_7.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_7.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_7, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_7, a5);
}

uint64_t WeakTagged_7.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_7() + 36);
  v5 = *(type metadata accessor for WeakTagged_7() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_7.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_7.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_7.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_7.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_7.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_7.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_7.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 6)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_7.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_7.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v209 = a1;
  v211 = a5;
  v212 = a4;
  v210 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = sub_1AE23D7CC();
  v184 = *(v185 - 8);
  v9 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v202 = &v157 - v10;
  v203 = AssociatedTypeWitness;
  v201 = *(AssociatedTypeWitness - 8);
  v11 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v157 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v181 = sub_1AE23D7CC();
  v180 = *(v181 - 8);
  v17 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v199 = &v157 - v18;
  v200 = v16;
  v198 = *(v16 - 8);
  v19 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v178 = &v157 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v177 = sub_1AE23D7CC();
  v176 = *(v177 - 8);
  v25 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v196 = &v157 - v26;
  v197 = v24;
  v195 = *(v24 - 8);
  v27 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v174 = &v157 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v173 = sub_1AE23D7CC();
  v172 = *(v173 - 8);
  v33 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v193 = &v157 - v34;
  v194 = v32;
  v192 = *(v32 - 8);
  v35 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v171 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v170 = &v157 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v169 = sub_1AE23D7CC();
  v168 = *(v169 - 8);
  v41 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v190 = &v157 - v42;
  v191 = v40;
  v189 = *(v40 - 8);
  v43 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v167 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v166 = &v157 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v165 = sub_1AE23D7CC();
  v164 = *(v165 - 8);
  v49 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v206 = &v157 - v50;
  v207[0] = v48;
  v188 = *(v48 - 8);
  v51 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v163 = &v157 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v162 = &v157 - v55;
  v56 = swift_getAssociatedTypeWitness();
  v161 = sub_1AE23D7CC();
  v160 = *(v161 - 8);
  v57 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v204 = &v157 - v58;
  v205 = v56;
  v187 = *(v56 - 8);
  v59 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v159 = &v157 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v158 = &v157 - v63;
  v64 = swift_getAssociatedTypeWitness();
  v65 = sub_1AE23D7CC();
  v157 = *(v65 - 8);
  v66 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v157 - v67;
  v186 = *(v64 - 8);
  v69 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v157 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v157 - v74;
  v76 = *(a2 + 36);
  v77 = swift_getAssociatedTypeWitness();
  v207[1] = v6;
  v78 = v208;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v214.n128_u64[0] = v77;
  v214.n128_u64[1] = AssociatedConformanceWitness;
  v215 = &protocol witness table for Int;
  v216 = MEMORY[0x1E69E6540];
  v80 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v80, &v217);
  v207[2] = v212 + 16;
  if (v217 > 2)
  {
    if (v217 <= 4)
    {
      if (v217 == 3)
      {
        v122 = v78[1];
        v213.n128_u64[0] = *v78;
        v121 = v213.n128_u64[0];
        v213.n128_u64[1] = v122;
        v83 = v191;
        v123 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v213, &v214);
        v213 = v214;
        v124 = v212;
        v125 = *(v212 + 16);
        sub_1ADDD86D8(v121, v122);
        v126 = v190;
        v125(&v213, v83, v123, v210, v124);
        sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
        v127 = v189;
        if ((*(v189 + 48))(v126, 1, v83) == 1)
        {
          (*(v168 + 8))(v126, v169);
          goto LABEL_23;
        }

        v148 = *(v127 + 32);
        v149 = v166;
        v148(v166, v126, v83);
        v150 = &v199;
      }

      else
      {
        v82 = v78[1];
        v213.n128_u64[0] = *v78;
        v81 = v213.n128_u64[0];
        v213.n128_u64[1] = v82;
        v83 = v194;
        v84 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v213, &v214);
        v213 = v214;
        v85 = v212;
        v86 = *(v212 + 16);
        sub_1ADDD86D8(v81, v82);
        v87 = v193;
        v86(&v213, v83, v84, v210, v85);
        sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
        v88 = v192;
        if ((*(v192 + 48))(v87, 1, v83) == 1)
        {
          (*(v172 + 8))(v87, v173);
LABEL_23:
          v113 = v211;
          goto LABEL_24;
        }

        v148 = *(v88 + 32);
        v149 = v170;
        v148(v170, v87, v83);
        v150 = &v203;
      }

      goto LABEL_34;
    }

    if (v217 == 5)
    {
      v129 = v78[1];
      v213.n128_u64[0] = *v78;
      v128 = v213.n128_u64[0];
      v213.n128_u64[1] = v129;
      v83 = v197;
      v130 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v213, &v214);
      v213 = v214;
      v131 = v212;
      v132 = *(v212 + 16);
      sub_1ADDD86D8(v128, v129);
      v133 = v196;
      v132(&v213, v83, v130, v210, v131);
      sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
      v134 = v195;
      if ((*(v195 + 48))(v133, 1, v83) == 1)
      {
        (*(v176 + 8))(v133, v177);
        goto LABEL_23;
      }

      v148 = *(v134 + 32);
      v149 = v174;
      v148(v174, v133, v83);
      v150 = v207;
LABEL_34:
      v148(v150[-16].n128_u64[0], v149, v83);
      v151 = swift_getAssociatedTypeWitness();
      v152 = v211;
      swift_dynamicCast();
      return (*(*(v151 - 8) + 56))(v152, 0, 1, v151);
    }

    v92 = v78;
    if (v217 == 6)
    {
      v100 = v78[1];
      v213.n128_u64[0] = *v78;
      v99 = v213.n128_u64[0];
      v213.n128_u64[1] = v100;
      v83 = v200;
      v101 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v213, &v214);
      v213 = v214;
      v102 = v212;
      v103 = *(v212 + 16);
      sub_1ADDD86D8(v99, v100);
      v104 = v199;
      v103(&v213, v83, v101, v210, v102);
      sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
      v105 = v198;
      if ((*(v198 + 48))(v104, 1, v83) == 1)
      {
        (*(v180 + 8))(v104, v181);
        goto LABEL_23;
      }

      v148 = *(v105 + 32);
      v149 = v178;
      v148(v178, v104, v83);
      v150 = &v209;
      goto LABEL_34;
    }

LABEL_17:
    v115 = v92[1];
    v213.n128_u64[0] = *v92;
    v114 = v213.n128_u64[0];
    v213.n128_u64[1] = v115;
    v83 = v203;
    v116 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v213, &v214);
    v213 = v214;
    v117 = v212;
    v118 = *(v212 + 16);
    sub_1ADDD86D8(v114, v115);
    v119 = v202;
    v118(&v213, v83, v116, v210, v117);
    sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
    v120 = v201;
    if ((*(v201 + 48))(v119, 1, v83) == 1)
    {
      (*(v184 + 8))(v119, v185);
      goto LABEL_23;
    }

    v148 = *(v120 + 32);
    v149 = v182;
    v148(v182, v119, v83);
    v150 = &v213;
    goto LABEL_34;
  }

  v199 = v75;
  v89 = v68;
  v200 = v72;
  v90 = v204;
  v91 = v206;
  if (v217)
  {
    if (v217 != 1)
    {
      v92 = v78;
      if (v217 == 2)
      {
        v94 = v78[1];
        v213.n128_u64[0] = *v78;
        v93 = v213.n128_u64[0];
        v213.n128_u64[1] = v94;
        v83 = v207[0];
        v95 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v213, &v214);
        v213 = v214;
        v96 = v212;
        v97 = *(v212 + 16);
        sub_1ADDD86D8(v93, v94);
        v97(&v213, v83, v95, v210, v96);
        sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
        v98 = v188;
        if ((*(v188 + 48))(v91, 1, v83) == 1)
        {
          (*(v164 + 8))(v91, v165);
          goto LABEL_23;
        }

        v148 = *(v98 + 32);
        v149 = v162;
        v148(v162, v91, v83);
        v150 = &v195;
        goto LABEL_34;
      }

      goto LABEL_17;
    }

    v138 = v78[1];
    v213.n128_u64[0] = *v78;
    v137 = v213.n128_u64[0];
    v213.n128_u64[1] = v138;
    v139 = v205;
    v140 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v213, &v214);
    v213 = v214;
    v141 = v212;
    v142 = *(v212 + 16);
    sub_1ADDD86D8(v137, v138);
    v142(&v213, v139, v140, v210, v141);
    sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
    v143 = v187;
    if ((*(v187 + 48))(v90, 1, v139) == 1)
    {
      (*(v160 + 8))(v90, v161);
      v113 = v211;
      goto LABEL_24;
    }

    v153 = *(v143 + 32);
    v154 = v158;
    v153(v158, v90, v139);
    v153(v159, v154, v139);
    v155 = swift_getAssociatedTypeWitness();
    v156 = v211;
    swift_dynamicCast();
    return (*(*(v155 - 8) + 56))(v156, 0, 1, v155);
  }

  else
  {
    v107 = v78[1];
    v213.n128_u64[0] = *v78;
    v106 = v213.n128_u64[0];
    v213.n128_u64[1] = v107;
    v208 = v7;
    v108 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v213, &v214);
    v213 = v214;
    v109 = v212;
    v110 = *(v212 + 16);
    sub_1ADDD86D8(v106, v107);
    v111 = v89;
    v110(&v213, v64, v108, v210, v109);
    sub_1ADDCC35C(v213.n128_i64[0], v213.n128_u64[1]);
    v112 = v186;
    if ((*(v186 + 48))(v89, 1, v64) == 1)
    {
      (*(v157 + 8))(v89, v65);
      v113 = v211;
LABEL_24:
      v135 = swift_getAssociatedTypeWitness();
      return (*(*(v135 - 8) + 56))(v113, 1, 1, v135);
    }

    v144 = *(v112 + 32);
    v145 = v199;
    v144(v199, v111, v64);
    v144(v200, v145, v64);
    v146 = swift_getAssociatedTypeWitness();
    v147 = v211;
    swift_dynamicCast();
    return (*(*(v146 - 8) + 56))(v147, 0, 1, v146);
  }
}

uint64_t sub_1ADF344EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v194[2] = a1;
  v195 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v171 = sub_1AE23D7CC();
  v169 = *(v171 - 8);
  v7 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v189 = &v142 - v8;
  v190 = AssociatedTypeWitness;
  v188 = *(AssociatedTypeWitness - 8);
  v9 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v170 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v142 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v167 = sub_1AE23D7CC();
  v165 = *(v167 - 8);
  v15 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v186 = &v142 - v16;
  v187 = v14;
  v185 = *(v14 - 8);
  v17 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v166 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v164 = &v142 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v163 = sub_1AE23D7CC();
  v161 = *(v163 - 8);
  v23 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v183 = &v142 - v24;
  v184 = v22;
  v182 = *(v22 - 8);
  v25 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v162 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v160 = &v142 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v159 = sub_1AE23D7CC();
  v157 = *(v159 - 8);
  v31 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v180 = &v142 - v32;
  v181 = v30;
  v179 = *(v30 - 8);
  v33 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v158 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v142 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v155 = sub_1AE23D7CC();
  v153 = *(v155 - 8);
  v39 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v177 = &v142 - v40;
  v178 = v38;
  v176 = *(v38 - 8);
  v41 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v154 = &v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v152 = &v142 - v45;
  v46 = swift_getAssociatedTypeWitness();
  v150 = sub_1AE23D7CC();
  v149 = *(v150 - 8);
  v47 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v192 = &v142 - v48;
  v193 = v46;
  v175 = *(v46 - 8);
  v49 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v151 = &v142 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v148 = &v142 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v147 = sub_1AE23D7CC();
  v145 = *(v147 - 8);
  v55 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v174 = &v142 - v56;
  v191 = v54;
  v173 = *(v54 - 8);
  v57 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v146 = &v142 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v144 = &v142 - v61;
  v62 = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v143 = *(v63 - 8);
  v64 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v142 - v65;
  v172 = *(v62 - 8);
  v67 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v142 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v142 - v72;
  v74 = *(a2 + 36);
  v75 = swift_getAssociatedTypeWitness();
  v194[0] = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v197.n128_u64[0] = v75;
  v197.n128_u64[1] = AssociatedConformanceWitness;
  v198[0] = &protocol witness table for Int;
  v198[1] = MEMORY[0x1E69E6540];
  v77 = type metadata accessor for CRExtensible();
  v78 = v194[1];
  CRExtensible.rawValue.getter(v77, &v199);
  if (v199 > 2)
  {
    if (v199 <= 4)
    {
      if (v199 == 3)
      {
        v112 = v78[1];
        v196.n128_u64[0] = *v78;
        v111 = v196.n128_u64[0];
        v196.n128_u64[1] = v112;
        v81 = v178;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v196, &v197);
        v83 = v197.n128_u64[1];
        v82 = v197.n128_u64[0];
        v196 = v197;
        sub_1ADDD86D8(v111, v112);
        v113 = type metadata accessor for WeakRef();
        v114 = v177;
        sub_1AE21D3E4(v113, v177);
        v115 = v176;
        if ((*(v176 + 48))(v114, 1, v81) == 1)
        {
          (*(v153 + 8))(v114, v155);
          goto LABEL_23;
        }

        v135 = *(v115 + 32);
        v136 = v152;
        v135(v152, v114, v81);
        sub_1ADDCC35C(v82, v83);
        v137 = &v186;
      }

      else
      {
        v80 = v78[1];
        v196.n128_u64[0] = *v78;
        v79 = v196.n128_u64[0];
        v196.n128_u64[1] = v80;
        v81 = v181;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v196, &v197);
        v83 = v197.n128_u64[1];
        v82 = v197.n128_u64[0];
        v196 = v197;
        sub_1ADDD86D8(v79, v80);
        v84 = type metadata accessor for WeakRef();
        v85 = v180;
        sub_1AE21D3E4(v84, v180);
        v86 = v179;
        if ((*(v179 + 48))(v85, 1, v81) == 1)
        {
          (*(v157 + 8))(v85, v159);
LABEL_23:
          v104 = v82;
          v105 = v83;
          goto LABEL_24;
        }

        v135 = *(v86 + 32);
        v136 = v156;
        v135(v156, v85, v81);
        sub_1ADDCC35C(v82, v83);
        v137 = &v190;
      }

      goto LABEL_33;
    }

    if (v199 == 5)
    {
      v117 = v78[1];
      v196.n128_u64[0] = *v78;
      v116 = v196.n128_u64[0];
      v196.n128_u64[1] = v117;
      v81 = v184;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v196, &v197);
      v83 = v197.n128_u64[1];
      v82 = v197.n128_u64[0];
      v196 = v197;
      sub_1ADDD86D8(v116, v117);
      v118 = type metadata accessor for WeakRef();
      v119 = v183;
      sub_1AE21D3E4(v118, v183);
      v120 = v182;
      if ((*(v182 + 48))(v119, 1, v81) == 1)
      {
        (*(v161 + 8))(v119, v163);
        goto LABEL_23;
      }

      v135 = *(v120 + 32);
      v136 = v160;
      v135(v160, v119, v81);
      sub_1ADDCC35C(v82, v83);
      v137 = v194;
LABEL_33:
      v135(v137[-16].n128_u64[0], v136, v81);
      v133 = swift_getAssociatedTypeWitness();
      v134 = v195;
      goto LABEL_34;
    }

    if (v199 == 6)
    {
      v95 = v78[1];
      v196.n128_u64[0] = *v78;
      v94 = v196.n128_u64[0];
      v196.n128_u64[1] = v95;
      v81 = v187;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v196, &v197);
      v83 = v197.n128_u64[1];
      v82 = v197.n128_u64[0];
      v196 = v197;
      sub_1ADDD86D8(v94, v95);
      v96 = type metadata accessor for WeakRef();
      v97 = v186;
      sub_1AE21D3E4(v96, v186);
      v98 = v185;
      if ((*(v185 + 48))(v97, 1, v81) == 1)
      {
        (*(v165 + 8))(v97, v167);
        goto LABEL_23;
      }

      v135 = *(v98 + 32);
      v136 = v164;
      v135(v164, v97, v81);
      sub_1ADDCC35C(v82, v83);
      v137 = &v196;
      goto LABEL_33;
    }

LABEL_17:
    v107 = v78[1];
    v196.n128_u64[0] = *v78;
    v106 = v196.n128_u64[0];
    v196.n128_u64[1] = v107;
    v81 = v190;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v196, &v197);
    v83 = v197.n128_u64[1];
    v82 = v197.n128_u64[0];
    v196 = v197;
    sub_1ADDD86D8(v106, v107);
    v108 = type metadata accessor for WeakRef();
    v109 = v189;
    sub_1AE21D3E4(v108, v189);
    v110 = v188;
    if ((*(v188 + 48))(v109, 1, v81) == 1)
    {
      (*(v169 + 8))(v109, v171);
      goto LABEL_23;
    }

    v135 = *(v110 + 32);
    v136 = v168;
    v135(v168, v109, v81);
    sub_1ADDCC35C(v82, v83);
    v137 = v198;
    goto LABEL_33;
  }

  v186 = v73;
  v187 = v70;
  v87 = v192;
  v88 = v193;
  if (v199)
  {
    if (v199 == 1)
    {
      v125 = v78[1];
      v196.n128_u64[0] = *v78;
      v124 = v196.n128_u64[0];
      v196.n128_u64[1] = v125;
      v126 = v191;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v196, &v197);
      v127 = v197;
      v196 = v197;
      sub_1ADDD86D8(v124, v125);
      v128 = type metadata accessor for WeakRef();
      v129 = v174;
      sub_1AE21D3E4(v128, v174);
      v130 = v173;
      if ((*(v173 + 48))(v129, 1, v126) == 1)
      {
        (*(v145 + 8))(v129, v147);
        v105 = *&v127 >> 64;
        v104 = v127;
        goto LABEL_24;
      }

      v140 = *(v130 + 32);
      v141 = v144;
      v140(v144, v129, v126);
      sub_1ADDCC35C(v127.n128_i64[0], v127.n128_u64[1]);
      v140(v146, v141, v126);
      v133 = swift_getAssociatedTypeWitness();
      v134 = v195;
    }

    else
    {
      if (v199 != 2)
      {
        goto LABEL_17;
      }

      v90 = v78[1];
      v196.n128_u64[0] = *v78;
      v89 = v196.n128_u64[0];
      v196.n128_u64[1] = v90;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v196, &v197);
      v83 = v197.n128_u64[1];
      v82 = v197.n128_u64[0];
      v196 = v197;
      sub_1ADDD86D8(v89, v90);
      v91 = type metadata accessor for WeakRef();
      v92 = v87;
      sub_1AE21D3E4(v91, v87);
      v93 = v175;
      if ((*(v175 + 48))(v87, 1, v88) == 1)
      {
        (*(v149 + 8))(v87, v150);
        goto LABEL_23;
      }

      v138 = *(v93 + 32);
      v139 = v148;
      v138(v148, v92, v88);
      sub_1ADDCC35C(v82, v83);
      v138(v151, v139, v88);
      v133 = swift_getAssociatedTypeWitness();
      v134 = v195;
    }
  }

  else
  {
    v100 = v78[1];
    v196.n128_u64[0] = *v78;
    v99 = v196.n128_u64[0];
    v196.n128_u64[1] = v100;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v196, &v197);
    v101 = v197;
    v196 = v197;
    sub_1ADDD86D8(v99, v100);
    v102 = type metadata accessor for WeakRef();
    sub_1AE21D3E4(v102, v66);
    v103 = v172;
    if ((*(v172 + 48))(v66, 1, v62) == 1)
    {
      (*(v143 + 8))(v66, v63);
      v105 = *&v101 >> 64;
      v104 = v101;
LABEL_24:
      sub_1ADDCC35C(v104, v105);
      v121 = v195;
      v122 = swift_getAssociatedTypeWitness();
      return (*(*(v122 - 8) + 56))(v121, 1, 1, v122);
    }

    v131 = *(v103 + 32);
    v132 = v186;
    v131(v186, v66, v62);
    sub_1ADDCC35C(v101.n128_i64[0], v101.n128_u64[1]);
    v131(v187, v132, v62);
    v133 = swift_getAssociatedTypeWitness();
    v134 = v195;
  }

LABEL_34:
  swift_dynamicCast();
  return (*(*(v133 - 8) + 56))(v134, 0, 1, v133);
}

uint64_t sub_1ADF35A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v153 = a2;
  v154 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v143 = &v129 - v8;
  v142 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v141 = &v129 - v11;
  v140 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v139 = &v129 - v14;
  v138 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v137 = &v129 - v17;
  v136 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v135 = &v129 - v20;
  v149 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v148 = &v129 - v23;
  v147 = swift_getAssociatedTypeWitness();
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v146 = &v129 - v26;
  v145 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v129 - v29;
  swift_getAssociatedTypeWitness();
  v152 = sub_1AE23D7CC();
  v31 = *(v152 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v134 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v133 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v132 = &v129 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v131 = &v129 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v130 = &v129 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v129 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v129 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v129 - v49;
  v51 = *(a3 + 36);
  v52 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v156.n128_u64[0] = v52;
  v156.n128_u64[1] = AssociatedConformanceWitness;
  v157 = &protocol witness table for Int;
  v158 = MEMORY[0x1E69E6540];
  v54 = type metadata accessor for CRExtensible();
  v55 = v151;
  v56 = v31;
  CRExtensible.rawValue.getter(v54, &v159);
  v150 = v31 + 16;
  if (v159 > 2)
  {
    if (v159 <= 4)
    {
      if (v159 == 3)
      {
        v104 = v55;
        v105 = *v55;
        v106 = v104[1];
        v155.n128_u64[0] = v105;
        v155.n128_u64[1] = v106;
        v107 = v136;
        v61 = swift_getAssociatedConformanceWitness();
        v108 = WeakRef.init(id:)(&v155, &v156);
        v109 = v156;
        v65 = v154;
        v66 = v152;
        (*(v56 + 16))(v130, v154, v152, v108);
        sub_1ADDD86D8(v105, v106);
        v110 = v135;
        v111 = swift_dynamicCast();
        (*(*(v107 - 8) + 56))(v110, v111 ^ 1u, 1, v107);
        v155 = v109;
        v112 = v110;
        v113 = v107;
LABEL_18:
        sub_1ADEAEA50(v112, &v155, v113, v61);

        return (*(v56 + 8))(v65, v66);
      }

      v57 = v55;
      v58 = *v55;
      v59 = v57[1];
      v155.n128_u64[0] = v58;
      v155.n128_u64[1] = v59;
      v60 = v138;
      v61 = swift_getAssociatedConformanceWitness();
      v62 = WeakRef.init(id:)(&v155, &v156);
      v64 = v156.n128_u64[1];
      v63 = v156.n128_u64[0];
      v65 = v154;
      v66 = v152;
      (*(v31 + 16))(v131, v154, v152, v62);
      sub_1ADDD86D8(v58, v59);
      v67 = &v160;
      goto LABEL_16;
    }

    if (v159 == 5)
    {
      v114 = v55;
      v115 = *v55;
      v116 = v114[1];
      v155.n128_u64[0] = v115;
      v155.n128_u64[1] = v116;
      v60 = v140;
      v61 = swift_getAssociatedConformanceWitness();
      v117 = WeakRef.init(id:)(&v155, &v156);
      v64 = v156.n128_u64[1];
      v63 = v156.n128_u64[0];
      v65 = v154;
      v66 = v152;
      (*(v31 + 16))(v132, v154, v152, v117);
      sub_1ADDD86D8(v115, v116);
      v67 = &v161;
LABEL_16:
      v87 = *(v67 - 32);
      goto LABEL_17;
    }

    if (v159 == 6)
    {
      v83 = v55;
      v84 = *v55;
      v85 = v83[1];
      v155.n128_u64[0] = v84;
      v155.n128_u64[1] = v85;
      v60 = v142;
      v61 = swift_getAssociatedConformanceWitness();
      v86 = WeakRef.init(id:)(&v155, &v156);
      v64 = v156.n128_u64[1];
      v63 = v156.n128_u64[0];
      v65 = v154;
      v66 = v152;
      (*(v31 + 16))(v133, v154, v152, v86);
      sub_1ADDD86D8(v84, v85);
      v87 = v141;
LABEL_17:
      v118 = swift_dynamicCast();
      (*(*(v60 - 8) + 56))(v87, v118 ^ 1u, 1, v60);
      v155.n128_u64[0] = v63;
      v155.n128_u64[1] = v64;
      v112 = v87;
      v113 = v60;
      goto LABEL_18;
    }

LABEL_13:
    v100 = v55;
    v101 = *v55;
    v102 = v100[1];
    v155.n128_u64[0] = v101;
    v155.n128_u64[1] = v102;
    v60 = AssociatedTypeWitness;
    v61 = swift_getAssociatedConformanceWitness();
    v103 = WeakRef.init(id:)(&v155, &v156);
    v64 = v156.n128_u64[1];
    v63 = v156.n128_u64[0];
    v65 = v154;
    v66 = v152;
    (*(v56 + 16))(v134, v154, v152, v103);
    sub_1ADDD86D8(v101, v102);
    v87 = v143;
    goto LABEL_17;
  }

  v68 = v146;
  v69 = v148;
  if (!v159)
  {
    v88 = v55;
    v89 = *v55;
    v90 = v88[1];
    v155.n128_u64[0] = v89;
    v155.n128_u64[1] = v90;
    v91 = v145;
    v92 = swift_getAssociatedConformanceWitness();
    v93 = WeakRef.init(id:)(&v155, &v156);
    v94 = v156.n128_u64[1];
    v151 = v156.n128_u64[0];
    v95 = *(v56 + 16);
    v96 = v56;
    v97 = v154;
    v98 = v152;
    v95(v50, v154, v152, v93);
    sub_1ADDD86D8(v89, v90);
    v99 = swift_dynamicCast();
    (*(*(v91 - 8) + 56))(v30, v99 ^ 1u, 1, v91);
    v155.n128_u64[0] = v151;
    v155.n128_u64[1] = v94;
    sub_1ADEAEA50(v30, &v155, v91, v92);

    return (*(v96 + 8))(v97, v98);
  }

  if (v159 != 1)
  {
    if (v159 == 2)
    {
      v70 = v55;
      v71 = *v55;
      v72 = v70[1];
      v155.n128_u64[0] = v71;
      v155.n128_u64[1] = v72;
      v73 = v149;
      v74 = swift_getAssociatedConformanceWitness();
      v75 = WeakRef.init(id:)(&v155, &v156);
      v76 = v156.n128_u64[1];
      v151 = v156.n128_u64[0];
      v77 = *(v56 + 16);
      v78 = v56;
      v79 = v154;
      v80 = v152;
      v77(v44, v154, v152, v75);
      sub_1ADDD86D8(v71, v72);
      v81 = swift_dynamicCast();
      (*(*(v73 - 8) + 56))(v69, v81 ^ 1u, 1, v73);
      v155.n128_u64[0] = v151;
      v155.n128_u64[1] = v76;
      sub_1ADEAEA50(v69, &v155, v73, v74);

      return (*(v78 + 8))(v79, v80);
    }

    goto LABEL_13;
  }

  v119 = v55;
  v120 = *v55;
  v121 = v119[1];
  v155.n128_u64[0] = v120;
  v155.n128_u64[1] = v121;
  v122 = v147;
  v123 = swift_getAssociatedConformanceWitness();
  v124 = WeakRef.init(id:)(&v155, &v156);
  v125 = v156.n128_u64[1];
  v151 = v156.n128_u64[0];
  v126 = v154;
  v127 = v152;
  (*(v56 + 16))(v47, v154, v152, v124);
  sub_1ADDD86D8(v120, v121);
  v128 = swift_dynamicCast();
  (*(*(v122 - 8) + 56))(v68, v128 ^ 1u, 1, v122);
  v155.n128_u64[0] = v151;
  v155.n128_u64[1] = v125;
  sub_1ADEAEA50(v68, &v155, v122, v123);

  return (*(v56 + 8))(v126, v127);
}

uint64_t sub_1ADF367E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_7();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_7, &associated type descriptor for Tagged_7.AnyType, sub_1ADF35A74);
}

uint64_t WeakTagged_7.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_7, &associated type descriptor for Tagged_7.AnyType, sub_1ADF35A74);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_7.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_7.subscript.getter(a2, a3);
  return sub_1ADF36A80;
}

uint64_t sub_1ADF36B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_7.init(from:)(a1, a3);
}

uint64_t WeakTagged_7.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_7() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
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
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v35 = 0xD000000000000013;
        *(v35 + 8) = 0x80000001AE25FC60;
        *(v35 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_67:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v40 = type metadata accessor for CRExtensible();
        return (*(*(v40 - 8) + 8))(a2 + v44, v40);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_70;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 > 2)
  {
    if (v48 <= 4)
    {
      if (v48 != 3)
      {
        if (v34)
        {
          goto LABEL_65;
        }

        goto LABEL_75;
      }

      if (v34)
      {
        goto LABEL_65;
      }

      goto LABEL_73;
    }

    if (v48 == 5)
    {
      if (v34)
      {
        goto LABEL_65;
      }

      goto LABEL_74;
    }

    if (v48 == 6)
    {
      if (v34)
      {
        goto LABEL_65;
      }

      goto LABEL_77;
    }

    goto LABEL_58;
  }

  if (!v48)
  {
    if (v34)
    {
      goto LABEL_65;
    }

    goto LABEL_71;
  }

  if (v48 != 1)
  {
    if (v48 == 2)
    {
      if (v34)
      {
        goto LABEL_65;
      }

      goto LABEL_76;
    }

LABEL_58:
    if (v34)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

  if (v34)
  {
LABEL_65:
    v36 = swift_getAssociatedTypeWitness();
    v38 = *(a2 + 8);
    *&v45 = *a2;
    v37 = v45;
    *(&v45 + 1) = v38;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v37, v38);
    v39 = swift_getAssociatedConformanceWitness();
    v41(v36, &v45, a1, 1, v36, v39);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_67;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_8.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_8.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_8.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_8.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_8.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_8, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_8, a5);
}

uint64_t WeakTagged_8.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_8() + 36);
  v5 = *(type metadata accessor for WeakTagged_8() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_8.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_8.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 6)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.tagged8.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 7)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_8.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_8.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v211[0] = a4;
  v211[2] = a1;
  v212 = a3;
  v213 = a5;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = sub_1AE23D7CC();
  v184 = *(v185 - 8);
  v9 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v208 = &v150 - v10;
  v209 = AssociatedTypeWitness;
  v207 = *(AssociatedTypeWitness - 8);
  v11 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v150 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v181 = sub_1AE23D7CC();
  v180 = *(v181 - 8);
  v17 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v205 = &v150 - v18;
  v206 = v16;
  v204 = *(v16 - 8);
  v19 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v178 = &v150 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v177 = sub_1AE23D7CC();
  v176 = *(v177 - 8);
  v25 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v202 = &v150 - v26;
  v203 = v24;
  v201 = *(v24 - 8);
  v27 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v174 = &v150 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v173 = sub_1AE23D7CC();
  v172 = *(v173 - 8);
  v33 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v199 = &v150 - v34;
  v200 = v32;
  v198 = *(v32 - 8);
  v35 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v171 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v170 = &v150 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v169 = sub_1AE23D7CC();
  v168 = *(v169 - 8);
  v41 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v196 = &v150 - v42;
  v197 = v40;
  v195 = *(v40 - 8);
  v43 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v167 = &v150 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v166 = &v150 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v165 = sub_1AE23D7CC();
  v164 = *(v165 - 8);
  v49 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v193 = &v150 - v50;
  v194 = v48;
  v192 = *(v48 - 8);
  v51 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v163 = &v150 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v162 = &v150 - v55;
  v56 = swift_getAssociatedTypeWitness();
  v161 = sub_1AE23D7CC();
  v160 = *(v161 - 8);
  v57 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v190 = &v150 - v58;
  v191 = v56;
  v189 = *(v56 - 8);
  v59 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v159 = &v150 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v158 = &v150 - v63;
  v64 = swift_getAssociatedTypeWitness();
  v157 = sub_1AE23D7CC();
  v156 = *(v157 - 8);
  v65 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v188 = &v150 - v66;
  v187 = *(v64 - 8);
  v67 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v155 = &v150 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v154 = &v150 - v71;
  v72 = swift_getAssociatedTypeWitness();
  v153 = sub_1AE23D7CC();
  v152 = *(v153 - 8);
  v73 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v75 = &v150 - v74;
  v186 = *(v72 - 8);
  v76 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v151 = &v150 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v150 - v80;
  v82 = *(a2 + 36);
  v83 = swift_getAssociatedTypeWitness();
  v85 = v210;
  v84 = v211[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v215.n128_u64[0] = v83;
  v215.n128_u64[1] = AssociatedConformanceWitness;
  v216 = &protocol witness table for Int;
  v217 = MEMORY[0x1E69E6540];
  v87 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v87, &v218);
  v211[1] = v84 + 16;
  if (v218 > 3)
  {
    if (v218 <= 5)
    {
      if (v218 == 4)
      {
        v119 = v85[1];
        v214.n128_u64[0] = *v85;
        v118 = v214.n128_u64[0];
        v214.n128_u64[1] = v119;
        v64 = v197;
        v120 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v214, &v215);
        v214 = v215;
        v121 = *(v84 + 16);
        sub_1ADDD86D8(v118, v119);
        v122 = v196;
        v121(&v214, v64, v120, v212, v84);
        sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
        v123 = v195;
        if ((*(v195 + 48))(v122, 1, v64) == 1)
        {
          (*(v168 + 8))(v122, v169);
          goto LABEL_28;
        }

        v147 = *(v123 + 32);
        v148 = v166;
        v147(v166, v122, v64);
        v149 = &v199;
      }

      else
      {
        v95 = v85[1];
        v214.n128_u64[0] = *v85;
        v94 = v214.n128_u64[0];
        v214.n128_u64[1] = v95;
        v64 = v200;
        v96 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v214, &v215);
        v214 = v215;
        v97 = *(v84 + 16);
        sub_1ADDD86D8(v94, v95);
        v98 = v199;
        v97(&v214, v64, v96, v212, v84);
        sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
        v99 = v198;
        if ((*(v198 + 48))(v98, 1, v64) == 1)
        {
          (*(v172 + 8))(v98, v173);
          goto LABEL_28;
        }

        v147 = *(v99 + 32);
        v148 = v170;
        v147(v170, v98, v64);
        v149 = &v203;
      }

      goto LABEL_39;
    }

    if (v218 == 6)
    {
      v131 = v85[1];
      v214.n128_u64[0] = *v85;
      v130 = v214.n128_u64[0];
      v214.n128_u64[1] = v131;
      v64 = v203;
      v132 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v214, &v215);
      v214 = v215;
      v133 = *(v84 + 16);
      sub_1ADDD86D8(v130, v131);
      v134 = v202;
      v133(&v214, v64, v132, v212, v84);
      sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
      v135 = v201;
      if ((*(v201 + 48))(v134, 1, v64) == 1)
      {
        (*(v176 + 8))(v134, v177);
        goto LABEL_28;
      }

      v147 = *(v135 + 32);
      v148 = v174;
      v147(v174, v134, v64);
      v149 = &v207;
      goto LABEL_39;
    }

    if (v218 == 7)
    {
      v107 = v85[1];
      v214.n128_u64[0] = *v85;
      v106 = v214.n128_u64[0];
      v214.n128_u64[1] = v107;
      v64 = v206;
      v108 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v214, &v215);
      v214 = v215;
      v109 = *(v84 + 16);
      sub_1ADDD86D8(v106, v107);
      v110 = v205;
      v109(&v214, v64, v108, v212, v84);
      sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
      v111 = v204;
      if ((*(v204 + 48))(v110, 1, v64) == 1)
      {
        (*(v180 + 8))(v110, v181);
        goto LABEL_28;
      }

      v147 = *(v111 + 32);
      v148 = v178;
      v147(v178, v110, v64);
      v149 = v211;
      goto LABEL_39;
    }

LABEL_26:
    v137 = v85[1];
    v214.n128_u64[0] = *v85;
    v136 = v214.n128_u64[0];
    v214.n128_u64[1] = v137;
    v64 = v209;
    v138 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v214, &v215);
    v214 = v215;
    v139 = *(v84 + 16);
    sub_1ADDD86D8(v136, v137);
    v140 = v208;
    v139(&v214, v64, v138, v212, v84);
    sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
    v141 = v207;
    if ((*(v207 + 48))(v140, 1, v64) == 1)
    {
      (*(v184 + 8))(v140, v185);
      goto LABEL_28;
    }

    v147 = *(v141 + 32);
    v148 = v182;
    v147(v182, v140, v64);
    v149 = &v213;
LABEL_39:
    v147(*(v149 - 32), v148, v64);
    v145 = swift_getAssociatedTypeWitness();
    v146 = v213;
    goto LABEL_40;
  }

  if (v218 > 1)
  {
    if (v218 == 2)
    {
      v125 = v85[1];
      v214.n128_u64[0] = *v85;
      v124 = v214.n128_u64[0];
      v214.n128_u64[1] = v125;
      v64 = v191;
      v126 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v214, &v215);
      v214 = v215;
      v127 = *(v84 + 16);
      sub_1ADDD86D8(v124, v125);
      v128 = v190;
      v127(&v214, v64, v126, v212, v84);
      sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
      v129 = v189;
      if ((*(v189 + 48))(v128, 1, v64) == 1)
      {
        (*(v160 + 8))(v128, v161);
        goto LABEL_28;
      }

      v147 = *(v129 + 32);
      v148 = v158;
      v147(v158, v128, v64);
      v149 = &v191;
    }

    else
    {
      v101 = v85[1];
      v214.n128_u64[0] = *v85;
      v100 = v214.n128_u64[0];
      v214.n128_u64[1] = v101;
      v64 = v194;
      v102 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v214, &v215);
      v214 = v215;
      v103 = *(v84 + 16);
      sub_1ADDD86D8(v100, v101);
      v104 = v193;
      v103(&v214, v64, v102, v212, v84);
      sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
      v105 = v192;
      if ((*(v192 + 48))(v104, 1, v64) == 1)
      {
        (*(v164 + 8))(v104, v165);
        goto LABEL_28;
      }

      v147 = *(v105 + 32);
      v148 = v162;
      v147(v162, v104, v64);
      v149 = &v195;
    }

    goto LABEL_39;
  }

  if (v218)
  {
    if (v218 == 1)
    {
      v89 = v85[1];
      v214.n128_u64[0] = *v85;
      v88 = v214.n128_u64[0];
      v214.n128_u64[1] = v89;
      v90 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v214, &v215);
      v214 = v215;
      v91 = *(v84 + 16);
      sub_1ADDD86D8(v88, v89);
      v92 = v188;
      v91(&v214, v64, v90, v212, v84);
      sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
      v93 = v187;
      if ((*(v187 + 48))(v92, 1, v64) == 1)
      {
        (*(v156 + 8))(v92, v157);
LABEL_28:
        v117 = v213;
        goto LABEL_29;
      }

      v147 = *(v93 + 32);
      v148 = v154;
      v147(v154, v92, v64);
      v149 = &v187;
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v113 = v85[1];
  v214.n128_u64[0] = *v85;
  v112 = v214.n128_u64[0];
  v214.n128_u64[1] = v113;
  v114 = swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v214, &v215);
  v214 = v215;
  v210 = v6;
  v115 = *(v84 + 16);
  sub_1ADDD86D8(v112, v113);
  v115(&v214, v72, v114, v212, v84);
  sub_1ADDCC35C(v214.n128_i64[0], v214.n128_u64[1]);
  v116 = v186;
  if ((*(v186 + 48))(v75, 1, v72) == 1)
  {
    (*(v152 + 8))(v75, v153);
    v117 = v213;
LABEL_29:
    v142 = swift_getAssociatedTypeWitness();
    return (*(*(v142 - 8) + 56))(v117, 1, 1, v142);
  }

  v144 = *(v116 + 32);
  v144(v81, v75, v72);
  v144(v151, v81, v72);
  v145 = swift_getAssociatedTypeWitness();
  v146 = v213;
LABEL_40:
  swift_dynamicCast();
  return (*(*(v145 - 8) + 56))(v146, 0, 1, v145);
}

uint64_t sub_1ADF3990C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a1;
  v206 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v179 = sub_1AE23D7CC();
  v177 = *(v179 - 8);
  v7 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v202 = &v145 - v8;
  v203 = AssociatedTypeWitness;
  v201 = *(AssociatedTypeWitness - 8);
  v9 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v178 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v145 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v175 = sub_1AE23D7CC();
  v173 = *(v175 - 8);
  v15 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v199 = &v145 - v16;
  v200 = v14;
  v198 = *(v14 - 8);
  v17 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v174 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v145 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v171 = sub_1AE23D7CC();
  v169 = *(v171 - 8);
  v23 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v196 = &v145 - v24;
  v197 = v22;
  v195 = *(v22 - 8);
  v25 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v170 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v168 = &v145 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v167 = sub_1AE23D7CC();
  v165 = *(v167 - 8);
  v31 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v193 = &v145 - v32;
  v194 = v30;
  v192 = *(v30 - 8);
  v33 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v166 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v164 = &v145 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v163 = sub_1AE23D7CC();
  v161 = *(v163 - 8);
  v39 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v190 = &v145 - v40;
  v191 = v38;
  v189 = *(v38 - 8);
  v41 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v162 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v160 = &v145 - v45;
  v46 = swift_getAssociatedTypeWitness();
  v159 = sub_1AE23D7CC();
  v157 = *(v159 - 8);
  v47 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v187 = &v145 - v48;
  v188 = v46;
  v186 = *(v46 - 8);
  v49 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v158 = &v145 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v156 = &v145 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v155 = sub_1AE23D7CC();
  v153 = *(v155 - 8);
  v55 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v184 = &v145 - v56;
  v185 = v54;
  v183 = *(v54 - 8);
  v57 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v154 = &v145 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v152 = &v145 - v61;
  v62 = swift_getAssociatedTypeWitness();
  v151 = sub_1AE23D7CC();
  v149 = *(v151 - 8);
  v63 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v182 = &v145 - v64;
  v181 = *(v62 - 8);
  v65 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v150 = &v145 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v148 = &v145 - v69;
  v70 = swift_getAssociatedTypeWitness();
  v147 = sub_1AE23D7CC();
  v145 = *(v147 - 8);
  v71 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v73 = &v145 - v72;
  v180 = *(v70 - 8);
  v74 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v146 = &v145 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v145 - v78;
  v80 = *(a2 + 36);
  v81 = swift_getAssociatedTypeWitness();
  v82 = v4;
  v83 = v204;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v208.n128_u64[0] = v81;
  v208.n128_u64[1] = AssociatedConformanceWitness;
  v209 = &protocol witness table for Int;
  v210 = MEMORY[0x1E69E6540];
  v85 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v85, &v211);
  if (v211 > 3)
  {
    if (v211 <= 5)
    {
      if (v211 == 4)
      {
        v116 = v83[1];
        v207.n128_u64[0] = *v83;
        v115 = v207.n128_u64[0];
        v207.n128_u64[1] = v116;
        v95 = v191;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v207, &v208);
        v89 = v208.n128_u64[1];
        v88 = v208.n128_u64[0];
        v207 = v208;
        sub_1ADDD86D8(v115, v116);
        v117 = type metadata accessor for WeakRef();
        v118 = v190;
        sub_1AE21D3E4(v117, v190);
        v119 = v189;
        if ((*(v189 + 48))(v118, 1, v95) == 1)
        {
          (*(v161 + 8))(v118, v163);
          goto LABEL_28;
        }

        v140 = *(v119 + 32);
        v141 = v160;
        v140(v160, v118, v95);
        sub_1ADDCC35C(v88, v89);
        v142 = &v194;
      }

      else
      {
        v94 = v83[1];
        v207.n128_u64[0] = *v83;
        v93 = v207.n128_u64[0];
        v207.n128_u64[1] = v94;
        v95 = v194;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v207, &v208);
        v89 = v208.n128_u64[1];
        v88 = v208.n128_u64[0];
        v207 = v208;
        sub_1ADDD86D8(v93, v94);
        v96 = type metadata accessor for WeakRef();
        v97 = v193;
        sub_1AE21D3E4(v96, v193);
        v98 = v192;
        if ((*(v192 + 48))(v97, 1, v95) == 1)
        {
          (*(v165 + 8))(v97, v167);
          goto LABEL_28;
        }

        v140 = *(v98 + 32);
        v141 = v164;
        v140(v164, v97, v95);
        sub_1ADDCC35C(v88, v89);
        v142 = &v198;
      }

      goto LABEL_39;
    }

    if (v211 == 6)
    {
      v126 = v83[1];
      v207.n128_u64[0] = *v83;
      v125 = v207.n128_u64[0];
      v207.n128_u64[1] = v126;
      v95 = v197;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v207, &v208);
      v89 = v208.n128_u64[1];
      v88 = v208.n128_u64[0];
      v207 = v208;
      sub_1ADDD86D8(v125, v126);
      v127 = type metadata accessor for WeakRef();
      v128 = v196;
      sub_1AE21D3E4(v127, v196);
      v129 = v195;
      if ((*(v195 + 48))(v128, 1, v95) == 1)
      {
        (*(v169 + 8))(v128, v171);
        goto LABEL_28;
      }

      v140 = *(v129 + 32);
      v141 = v168;
      v140(v168, v128, v95);
      sub_1ADDCC35C(v88, v89);
      v142 = &v202;
      goto LABEL_39;
    }

    if (v211 == 7)
    {
      v105 = v83[1];
      v207.n128_u64[0] = *v83;
      v104 = v207.n128_u64[0];
      v207.n128_u64[1] = v105;
      v95 = v200;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v207, &v208);
      v89 = v208.n128_u64[1];
      v88 = v208.n128_u64[0];
      v207 = v208;
      sub_1ADDD86D8(v104, v105);
      v106 = type metadata accessor for WeakRef();
      v107 = v199;
      sub_1AE21D3E4(v106, v199);
      v108 = v198;
      if ((*(v198 + 48))(v107, 1, v95) == 1)
      {
        (*(v173 + 8))(v107, v175);
        goto LABEL_28;
      }

      v140 = *(v108 + 32);
      v141 = v172;
      v140(v172, v107, v95);
      sub_1ADDCC35C(v88, v89);
      v142 = &v206;
      goto LABEL_39;
    }

LABEL_26:
    v131 = v83[1];
    v207.n128_u64[0] = *v83;
    v130 = v207.n128_u64[0];
    v207.n128_u64[1] = v131;
    v95 = v203;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v207, &v208);
    v89 = v208.n128_u64[1];
    v88 = v208.n128_u64[0];
    v207 = v208;
    sub_1ADDD86D8(v130, v131);
    v132 = type metadata accessor for WeakRef();
    v133 = v202;
    sub_1AE21D3E4(v132, v202);
    v134 = v201;
    if ((*(v201 + 48))(v133, 1, v95) == 1)
    {
      (*(v177 + 8))(v133, v179);
      goto LABEL_28;
    }

    v140 = *(v134 + 32);
    v141 = v176;
    v140(v176, v133, v95);
    sub_1ADDCC35C(v88, v89);
    v142 = &v208.n128_i64[1];
LABEL_39:
    v140(*(v142 - 32), v141, v95);
    v138 = swift_getAssociatedTypeWitness();
    v139 = v206;
    goto LABEL_40;
  }

  if (v211 > 1)
  {
    if (v211 == 2)
    {
      v121 = v83[1];
      v207.n128_u64[0] = *v83;
      v120 = v207.n128_u64[0];
      v207.n128_u64[1] = v121;
      v95 = v185;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v207, &v208);
      v89 = v208.n128_u64[1];
      v88 = v208.n128_u64[0];
      v207 = v208;
      sub_1ADDD86D8(v120, v121);
      v122 = type metadata accessor for WeakRef();
      v123 = v184;
      sub_1AE21D3E4(v122, v184);
      v124 = v183;
      if ((*(v183 + 48))(v123, 1, v95) == 1)
      {
        (*(v153 + 8))(v123, v155);
        goto LABEL_28;
      }

      v140 = *(v124 + 32);
      v141 = v152;
      v140(v152, v123, v95);
      sub_1ADDCC35C(v88, v89);
      v142 = &v186;
    }

    else
    {
      v100 = v83[1];
      v207.n128_u64[0] = *v83;
      v99 = v207.n128_u64[0];
      v207.n128_u64[1] = v100;
      v95 = v188;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v207, &v208);
      v89 = v208.n128_u64[1];
      v88 = v208.n128_u64[0];
      v207 = v208;
      sub_1ADDD86D8(v99, v100);
      v101 = type metadata accessor for WeakRef();
      v102 = v187;
      sub_1AE21D3E4(v101, v187);
      v103 = v186;
      if ((*(v186 + 48))(v102, 1, v95) == 1)
      {
        (*(v157 + 8))(v102, v159);
        goto LABEL_28;
      }

      v140 = *(v103 + 32);
      v141 = v156;
      v140(v156, v102, v95);
      sub_1ADDCC35C(v88, v89);
      v142 = &v190;
    }

    goto LABEL_39;
  }

  if (!v211)
  {
    v110 = v83[1];
    v207.n128_u64[0] = *v83;
    v109 = v207.n128_u64[0];
    v207.n128_u64[1] = v110;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v207, &v208);
    v204 = v82;
    v111 = v208;
    v207 = v208;
    sub_1ADDD86D8(v109, v110);
    v112 = type metadata accessor for WeakRef();
    sub_1AE21D3E4(v112, v73);
    v113 = v180;
    if ((*(v180 + 48))(v73, 1, v70) == 1)
    {
      (*(v145 + 8))(v73, v147);
      sub_1ADDCC35C(v111.n128_i64[0], v111.n128_u64[1]);
      v114 = v206;
LABEL_29:
      v135 = swift_getAssociatedTypeWitness();
      return (*(*(v135 - 8) + 56))(v114, 1, 1, v135);
    }

    v137 = *(v113 + 32);
    v137(v79, v73, v70);
    sub_1ADDCC35C(v111.n128_i64[0], v111.n128_u64[1]);
    v137(v146, v79, v70);
    v138 = swift_getAssociatedTypeWitness();
    v139 = v206;
    goto LABEL_40;
  }

  if (v211 != 1)
  {
    goto LABEL_26;
  }

  v87 = v83[1];
  v207.n128_u64[0] = *v83;
  v86 = v207.n128_u64[0];
  v207.n128_u64[1] = v87;
  swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v207, &v208);
  v89 = v208.n128_u64[1];
  v88 = v208.n128_u64[0];
  v207 = v208;
  sub_1ADDD86D8(v86, v87);
  v90 = type metadata accessor for WeakRef();
  v91 = v182;
  sub_1AE21D3E4(v90, v182);
  v92 = v181;
  if ((*(v181 + 48))(v91, 1, v62) == 1)
  {
    (*(v149 + 8))(v91, v151);
LABEL_28:
    sub_1ADDCC35C(v88, v89);
    v114 = v206;
    goto LABEL_29;
  }

  v143 = *(v92 + 32);
  v144 = v148;
  v143(v148, v91, v62);
  sub_1ADDCC35C(v88, v89);
  v143(v150, v144, v62);
  v138 = swift_getAssociatedTypeWitness();
  v139 = v206;
LABEL_40:
  swift_dynamicCast();
  return (*(*(v138 - 8) + 56))(v139, 0, 1, v138);
}

uint64_t sub_1ADF3B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v160 = a2;
  v161 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v155 = &v134 - v8;
  v154 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v153 = &v134 - v11;
  v152 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v151 = &v134 - v14;
  v150 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v149 = &v134 - v17;
  v148 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v147 = &v134 - v20;
  v146 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v145 = &v134 - v23;
  v144 = swift_getAssociatedTypeWitness();
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v143 = &v134 - v26;
  v142 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v141 = &v134 - v29;
  v140 = swift_getAssociatedTypeWitness();
  v30 = sub_1AE23D7CC();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v139 = &v134 - v32;
  swift_getAssociatedTypeWitness();
  v159 = sub_1AE23D7CC();
  v33 = *(v159 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v138 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v137 = &v134 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v136 = &v134 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v135 = &v134 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v134 = &v134 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v134 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v134 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v134 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v134 - v54;
  v56 = *(a3 + 36);
  v57 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v163.n128_u64[0] = v57;
  v163.n128_u64[1] = AssociatedConformanceWitness;
  v164 = &protocol witness table for Int;
  v165 = MEMORY[0x1E69E6540];
  v59 = type metadata accessor for CRExtensible();
  v60 = v157;
  CRExtensible.rawValue.getter(v59, &v166);
  v61 = v33;
  v158 = v33 + 16;
  if (v166 <= 3)
  {
    if (v166 > 1)
    {
      if (v166 != 2)
      {
        v90 = *v60;
        v91 = v60[1];
        v162.n128_u64[0] = v90;
        v162.n128_u64[1] = v91;
        v92 = v146;
        v93 = swift_getAssociatedConformanceWitness();
        v94 = WeakRef.init(id:)(&v162, &v163);
        v95 = v163;
        v96 = *(v33 + 16);
        v69 = v161;
        v70 = v159;
        v96(v46, v161, v159, v94);
        sub_1ADDD86D8(v90, v91);
        v97 = v145;
        v98 = swift_dynamicCast();
        (*(*(v92 - 8) + 56))(v97, v98 ^ 1u, 1, v92);
        v162 = v95;
        v73 = v97;
        v74 = v92;
        v75 = v93;
        goto LABEL_11;
      }

      v118 = v60[1];
      v162.n128_u64[0] = *v60;
      v117 = v162.n128_u64[0];
      v162.n128_u64[1] = v118;
      v119 = v144;
      v103 = swift_getAssociatedConformanceWitness();
      v120 = WeakRef.init(id:)(&v162, &v163);
      v121 = v163;
      v122 = *(v33 + 16);
      v83 = v161;
      v84 = v159;
      v122(v49, v161, v159, v120);
      sub_1ADDD86D8(v117, v118);
      v123 = v143;
      v124 = swift_dynamicCast();
      (*(*(v119 - 8) + 56))(v123, v124 ^ 1u, 1, v119);
      v162 = v121;
      v87 = v123;
      v88 = v119;
      goto LABEL_21;
    }

    if (v166)
    {
      if (v166 == 1)
      {
        v63 = v60[1];
        v162.n128_u64[0] = *v60;
        v62 = v162.n128_u64[0];
        v162.n128_u64[1] = v63;
        v64 = v142;
        v65 = swift_getAssociatedConformanceWitness();
        v66 = WeakRef.init(id:)(&v162, &v163);
        v67 = v163;
        v68 = *(v33 + 16);
        v69 = v161;
        v70 = v159;
        v68(v52, v161, v159, v66);
        sub_1ADDD86D8(v62, v63);
        v71 = v141;
        v72 = swift_dynamicCast();
        (*(*(v64 - 8) + 56))(v71, v72 ^ 1u, 1, v64);
        v162 = v67;
        v73 = v71;
        v74 = v64;
        v75 = v65;
LABEL_11:
        sub_1ADEAEA50(v73, &v162, v74, v75);

        return (*(v61 + 8))(v69, v70);
      }

      goto LABEL_19;
    }

    v110 = v60[1];
    v162.n128_u64[0] = *v60;
    v109 = v162.n128_u64[0];
    v162.n128_u64[1] = v110;
    v102 = v140;
    v103 = swift_getAssociatedConformanceWitness();
    v111 = WeakRef.init(id:)(&v162, &v163);
    v106 = v163.n128_u64[1];
    v105 = v163.n128_u64[0];
    v112 = *(v33 + 16);
    v83 = v161;
    v84 = v159;
    v112(v55, v161, v159, v111);
    sub_1ADDD86D8(v109, v110);
    v108 = v139;
    goto LABEL_20;
  }

  if (v166 > 5)
  {
    if (v166 == 6)
    {
      v126 = v60[1];
      v162.n128_u64[0] = *v60;
      v125 = v162.n128_u64[0];
      v162.n128_u64[1] = v126;
      v102 = v152;
      v103 = swift_getAssociatedConformanceWitness();
      v127 = WeakRef.init(id:)(&v162, &v163);
      v106 = v163.n128_u64[1];
      v105 = v163.n128_u64[0];
      v128 = *(v33 + 16);
      v83 = v161;
      v84 = v159;
      v128(v136, v161, v159, v127);
      sub_1ADDD86D8(v125, v126);
      v108 = v151;
    }

    else
    {
      if (v166 != 7)
      {
LABEL_19:
        v130 = v60[1];
        v162.n128_u64[0] = *v60;
        v129 = v162.n128_u64[0];
        v162.n128_u64[1] = v130;
        v102 = AssociatedTypeWitness;
        v103 = swift_getAssociatedConformanceWitness();
        v131 = WeakRef.init(id:)(&v162, &v163);
        v106 = v163.n128_u64[1];
        v105 = v163.n128_u64[0];
        v132 = *(v33 + 16);
        v83 = v161;
        v84 = v159;
        v132(v138, v161, v159, v131);
        sub_1ADDD86D8(v129, v130);
        v108 = v155;
        goto LABEL_20;
      }

      v101 = v60[1];
      v162.n128_u64[0] = *v60;
      v100 = v162.n128_u64[0];
      v162.n128_u64[1] = v101;
      v102 = v154;
      v103 = swift_getAssociatedConformanceWitness();
      v104 = WeakRef.init(id:)(&v162, &v163);
      v106 = v163.n128_u64[1];
      v105 = v163.n128_u64[0];
      v107 = *(v33 + 16);
      v83 = v161;
      v84 = v159;
      v107(v137, v161, v159, v104);
      sub_1ADDD86D8(v100, v101);
      v108 = v153;
    }

LABEL_20:
    v133 = swift_dynamicCast();
    (*(*(v102 - 8) + 56))(v108, v133 ^ 1u, 1, v102);
    v162.n128_u64[0] = v105;
    v162.n128_u64[1] = v106;
    v87 = v108;
    v88 = v102;
LABEL_21:
    v89 = v103;
    goto LABEL_22;
  }

  if (v166 == 4)
  {
    v114 = v60[1];
    v162.n128_u64[0] = *v60;
    v113 = v162.n128_u64[0];
    v162.n128_u64[1] = v114;
    v102 = v148;
    v103 = swift_getAssociatedConformanceWitness();
    v115 = WeakRef.init(id:)(&v162, &v163);
    v106 = v163.n128_u64[1];
    v105 = v163.n128_u64[0];
    v116 = *(v33 + 16);
    v83 = v161;
    v84 = v159;
    v116(v134, v161, v159, v115);
    sub_1ADDD86D8(v113, v114);
    v108 = v147;
    goto LABEL_20;
  }

  v77 = v60[1];
  v162.n128_u64[0] = *v60;
  v76 = v162.n128_u64[0];
  v162.n128_u64[1] = v77;
  v78 = v150;
  v79 = swift_getAssociatedConformanceWitness();
  v80 = WeakRef.init(id:)(&v162, &v163);
  v81 = v163;
  v82 = *(v33 + 16);
  v83 = v161;
  v84 = v159;
  v82(v135, v161, v159, v80);
  sub_1ADDD86D8(v76, v77);
  v85 = v149;
  v86 = swift_dynamicCast();
  (*(*(v78 - 8) + 56))(v85, v86 ^ 1u, 1, v78);
  v162 = v81;
  v87 = v85;
  v88 = v78;
  v89 = v79;
LABEL_22:
  sub_1ADEAEA50(v87, &v162, v88, v89);

  return (*(v61 + 8))(v83, v84);
}

uint64_t sub_1ADF3BE60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_8();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_8, &associated type descriptor for Tagged_8.AnyType, sub_1ADF3B088);
}

uint64_t WeakTagged_8.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_8, &associated type descriptor for Tagged_8.AnyType, sub_1ADF3B088);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_8.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_8.subscript.getter(a2, a3);
  return sub_1ADF3C0FC;
}

uint64_t sub_1ADF3C214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_8.init(from:)(a1, a3);
}

uint64_t WeakTagged_8.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_8() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
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
      __break(1u);
      goto LABEL_82;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v35 = 0xD000000000000013;
        *(v35 + 8) = 0x80000001AE25FC60;
        *(v35 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_70:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v40 = type metadata accessor for CRExtensible();
        return (*(*(v40 - 8) + 8))(a2 + v44, v40);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_73;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 > 3)
  {
    if (v48 <= 5)
    {
      if (v48 == 4)
      {
        if (v34)
        {
          goto LABEL_68;
        }

        goto LABEL_79;
      }

      if (v34)
      {
        goto LABEL_68;
      }

      goto LABEL_75;
    }

    if (v48 == 6)
    {
      if (v34)
      {
        goto LABEL_68;
      }

      goto LABEL_81;
    }

    if (v48 == 7)
    {
      if (v34)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }
  }

  else
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        if (v34)
        {
          goto LABEL_68;
        }

        goto LABEL_80;
      }

      if (v34)
      {
        goto LABEL_68;
      }

      goto LABEL_76;
    }

    if (!v48)
    {
      if (v34)
      {
        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v48 == 1)
    {
      if (v34)
      {
        goto LABEL_68;
      }

      goto LABEL_74;
    }
  }

  if (v34)
  {
LABEL_68:
    v36 = swift_getAssociatedTypeWitness();
    v38 = *(a2 + 8);
    *&v45 = *a2;
    v37 = v45;
    *(&v45 + 1) = v38;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v37, v38);
    v39 = swift_getAssociatedConformanceWitness();
    v41(v36, &v45, a1, 1, v36, v39);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_70;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_9.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_9.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_9.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_9.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_9.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_9, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_9, a5);
}

uint64_t WeakTagged_9.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_9() + 36);
  v5 = *(type metadata accessor for WeakTagged_9() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_9.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_9.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_9.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_9.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_9.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_9.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_9.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 6)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_9.tagged8.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 7)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t sub_1ADF3D804@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v7 = *(a1 + 36);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = &protocol witness table for Int;
  v22 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v10, &AssociatedTypeWitness);
  if (AssociatedTypeWitness == 8)
  {
    v12 = *v3;
    v13 = v5[1];
    v18[0] = v12;
    v18[1] = v13;
    v14 = swift_getAssociatedTypeWitness();
    v15 = swift_getAssociatedConformanceWitness();
    a2(&AssociatedTypeWitness, v18, v14, v15);
    v16 = AssociatedTypeWitness;
    v17 = AssociatedConformanceWitness;
    result = sub_1ADDD86D8(v12, v13);
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  *a3 = v16;
  a3[1] = v17;
  return result;
}

uint64_t WeakTagged_9.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_9.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v256 = a1;
  v257 = a3;
  v258 = a4;
  v253 = a5;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v223 = sub_1AE23D7CC();
  v222 = *(v223 - 8);
  v9 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v244 = &v187 - v10;
  v245 = AssociatedTypeWitness;
  v243 = *(AssociatedTypeWitness - 8);
  v11 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v220 = &v187 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v219 = sub_1AE23D7CC();
  v218 = *(v219 - 8);
  v17 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v241 = &v187 - v18;
  v242 = v16;
  v240 = *(v16 - 8);
  v19 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v217 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v216 = &v187 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v215 = sub_1AE23D7CC();
  v214 = *(v215 - 8);
  v25 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v238 = &v187 - v26;
  v239 = v24;
  v237 = *(v24 - 8);
  v27 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v213 = &v187 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v212 = &v187 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v211 = sub_1AE23D7CC();
  v210 = *(v211 - 8);
  v33 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v235 = &v187 - v34;
  v236 = v32;
  v234 = *(v32 - 8);
  v35 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v209 = &v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v208 = &v187 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v207 = sub_1AE23D7CC();
  v206 = *(v207 - 8);
  v41 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v232 = &v187 - v42;
  v233 = v40;
  v231 = *(v40 - 8);
  v43 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v205 = &v187 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v204 = &v187 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v203 = sub_1AE23D7CC();
  v202 = *(v203 - 8);
  v49 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v229 = &v187 - v50;
  v230 = v48;
  v228 = *(v48 - 8);
  v51 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v201 = &v187 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v200 = &v187 - v55;
  v56 = swift_getAssociatedTypeWitness();
  v199 = sub_1AE23D7CC();
  v198 = *(v199 - 8);
  v57 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v250 = &v187 - v58;
  v251 = v56;
  v227 = *(v56 - 8);
  v59 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v197 = &v187 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v196 = &v187 - v63;
  v64 = swift_getAssociatedTypeWitness();
  v195 = sub_1AE23D7CC();
  v194 = *(v195 - 8);
  v65 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v248 = &v187 - v66;
  v249 = v64;
  v226 = *(v64 - 8);
  v67 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v193 = &v187 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v192 = &v187 - v71;
  v72 = swift_getAssociatedTypeWitness();
  v191 = sub_1AE23D7CC();
  v190 = *(v191 - 8);
  v73 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v246 = &v187 - v74;
  v247 = v72;
  v225 = *(v72 - 8);
  v75 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v189 = &v187 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v188 = &v187 - v79;
  v80 = swift_getAssociatedTypeWitness();
  v81 = sub_1AE23D7CC();
  v187 = *(v81 - 8);
  v82 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v187 - v83;
  v224 = *(v80 - 8);
  v85 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v187 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v187 - v90;
  v92 = *(a2 + 36);
  v93 = swift_getAssociatedTypeWitness();
  v254 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v260.n128_u64[0] = v93;
  v260.n128_u64[1] = AssociatedConformanceWitness;
  v261 = &protocol witness table for Int;
  v262 = MEMORY[0x1E69E6540];
  v95 = type metadata accessor for CRExtensible();
  v96 = v255;
  CRExtensible.rawValue.getter(v95, &v263);
  v252 = v258 + 16;
  if (v263 > 3)
  {
    if (v263 > 5)
    {
      switch(v263)
      {
        case 6:
          v144 = v96[1];
          v259.n128_u64[0] = *v96;
          v143 = v259.n128_u64[0];
          v259.n128_u64[1] = v144;
          v255 = v7;
          v99 = v236;
          v145 = swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v259, &v260);
          v259 = v260;
          v146 = v258;
          v147 = *(v258 + 16);
          sub_1ADDD86D8(v143, v144);
          v148 = v235;
          v147(&v259, v99, v145, v257, v146);
          sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
          v149 = v234;
          if ((*(v234 + 48))(v148, 1, v99) == 1)
          {
            (*(v210 + 8))(v148, v211);
            goto LABEL_25;
          }

          v178 = *(v149 + 32);
          v179 = v208;
          v178(v208, v148, v99);
          v180 = &v241;
          break;
        case 7:
          v158 = v96[1];
          v259.n128_u64[0] = *v96;
          v157 = v259.n128_u64[0];
          v259.n128_u64[1] = v158;
          v99 = v239;
          v159 = swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v259, &v260);
          v259 = v260;
          v160 = v258;
          v161 = *(v258 + 16);
          sub_1ADDD86D8(v157, v158);
          v162 = v238;
          v161(&v259, v99, v159, v257, v160);
          sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
          v163 = v237;
          if ((*(v237 + 48))(v162, 1, v99) == 1)
          {
            (*(v214 + 8))(v162, v215);
            goto LABEL_30;
          }

          v178 = *(v163 + 32);
          v179 = v212;
          v178(v212, v162, v99);
          v180 = &v245;
          break;
        case 8:
          v98 = v96[1];
          v259.n128_u64[0] = *v96;
          v97 = v259.n128_u64[0];
          v259.n128_u64[1] = v98;
          v99 = v242;
          v255 = v7;
          v100 = swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v259, &v260);
          v259 = v260;
          v101 = v258;
          v102 = *(v258 + 16);
          sub_1ADDD86D8(v97, v98);
          v103 = v241;
          v102(&v259, v99, v100, v257, v101);
          sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
          v104 = v240;
          if ((*(v240 + 48))(v103, 1, v99) == 1)
          {
            (*(v218 + 8))(v103, v219);
LABEL_25:
            v115 = v253;
            goto LABEL_33;
          }

          v178 = *(v104 + 32);
          v179 = v216;
          v178(v216, v103, v99);
          v180 = &v249;
          break;
        default:
LABEL_31:
          v165 = v96[1];
          v259.n128_u64[0] = *v96;
          v164 = v259.n128_u64[0];
          v259.n128_u64[1] = v165;
          v166 = v245;
          v167 = swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v259, &v260);
          v259 = v260;
          v168 = v258;
          v169 = *(v258 + 16);
          sub_1ADDD86D8(v164, v165);
          v170 = v244;
          v169(&v259, v166, v167, v257, v168);
          sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
          v171 = v243;
          if ((*(v243 + 48))(v170, 1, v166) == 1)
          {
            (*(v222 + 8))(v170, v223);
            v115 = v253;
            goto LABEL_33;
          }

          v185 = *(v171 + 32);
          v186 = v220;
          v185(v220, v170, v166);
          v185(v221, v186, v166);
          v176 = swift_getAssociatedTypeWitness();
          v177 = v253;
          goto LABEL_44;
      }

LABEL_43:
      v178(*(v180 - 32), v179, v99);
      v176 = swift_getAssociatedTypeWitness();
      v177 = v253;
      goto LABEL_44;
    }

    if (v263 != 4)
    {
      v124 = v96[1];
      v259.n128_u64[0] = *v96;
      v123 = v259.n128_u64[0];
      v259.n128_u64[1] = v124;
      v99 = v233;
      v255 = v7;
      v125 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v259, &v260);
      v259 = v260;
      v126 = v258;
      v127 = *(v258 + 16);
      sub_1ADDD86D8(v123, v124);
      v128 = v232;
      v127(&v259, v99, v125, v257, v126);
      sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
      v129 = v231;
      if ((*(v231 + 48))(v128, 1, v99) == 1)
      {
        (*(v206 + 8))(v128, v207);
        goto LABEL_25;
      }

      v178 = *(v129 + 32);
      v179 = v204;
      v178(v204, v128, v99);
      v180 = &v237;
      goto LABEL_43;
    }

    v151 = v96[1];
    v259.n128_u64[0] = *v96;
    v150 = v259.n128_u64[0];
    v259.n128_u64[1] = v151;
    v99 = v230;
    v152 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v259, &v260);
    v259 = v260;
    v153 = v258;
    v154 = *(v258 + 16);
    sub_1ADDD86D8(v150, v151);
    v155 = v229;
    v154(&v259, v99, v152, v257, v153);
    sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
    v156 = v228;
    if ((*(v228 + 48))(v155, 1, v99) != 1)
    {
      v178 = *(v156 + 32);
      v179 = v200;
      v178(v200, v155, v99);
      v180 = &v233;
      goto LABEL_43;
    }

    (*(v202 + 8))(v155, v203);
    goto LABEL_30;
  }

  v241 = v91;
  v242 = v88;
  v106 = v246;
  v105 = v247;
  v107 = v248;
  v108 = v250;
  if (v263 > 1)
  {
    if (v263 != 2)
    {
      v117 = v96[1];
      v259.n128_u64[0] = *v96;
      v116 = v259.n128_u64[0];
      v259.n128_u64[1] = v117;
      v99 = v251;
      v255 = v7;
      v118 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v259, &v260);
      v259 = v260;
      v119 = v258;
      v120 = *(v258 + 16);
      sub_1ADDD86D8(v116, v117);
      v121 = v108;
      v120(&v259, v99, v118, v257, v119);
      sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
      v122 = v227;
      if ((*(v227 + 48))(v121, 1, v99) == 1)
      {
        (*(v198 + 8))(v121, v199);
        goto LABEL_25;
      }

      v178 = *(v122 + 32);
      v179 = v196;
      v178(v196, v121, v99);
      v180 = &v229;
      goto LABEL_43;
    }

    v138 = v96[1];
    v259.n128_u64[0] = *v96;
    v137 = v259.n128_u64[0];
    v259.n128_u64[1] = v138;
    v99 = v249;
    v139 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v259, &v260);
    v259 = v260;
    v140 = v258;
    v141 = *(v258 + 16);
    sub_1ADDD86D8(v137, v138);
    v141(&v259, v99, v139, v257, v140);
    sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
    v142 = v226;
    if ((*(v226 + 48))(v107, 1, v99) != 1)
    {
      v178 = *(v142 + 32);
      v179 = v192;
      v178(v192, v107, v99);
      v180 = &v225;
      goto LABEL_43;
    }

    (*(v194 + 8))(v107, v195);
LABEL_30:
    v115 = v253;
    goto LABEL_33;
  }

  if (!v263)
  {
    v130 = *v96;
    v131 = v96[1];
    v259.n128_u64[0] = v130;
    v259.n128_u64[1] = v131;
    v255 = v7;
    v132 = v80;
    v133 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v259, &v260);
    v259 = v260;
    v134 = v258;
    v135 = *(v258 + 16);
    sub_1ADDD86D8(v130, v131);
    v135(&v259, v132, v133, v257, v134);
    sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
    v136 = v224;
    if ((*(v224 + 48))(v84, 1, v132) != 1)
    {
      v181 = *(v136 + 32);
      v182 = v241;
      v181(v241, v84, v132);
      v181(v242, v182, v132);
      v183 = swift_getAssociatedTypeWitness();
      v184 = v253;
      swift_dynamicCast();
      return (*(*(v183 - 8) + 56))(v184, 0, 1, v183);
    }

    (*(v187 + 8))(v84, v81);
    v115 = v253;
LABEL_33:
    v172 = swift_getAssociatedTypeWitness();
    return (*(*(v172 - 8) + 56))(v115, 1, 1, v172);
  }

  if (v263 != 1)
  {
    goto LABEL_31;
  }

  v110 = v96[1];
  v259.n128_u64[0] = *v96;
  v109 = v259.n128_u64[0];
  v259.n128_u64[1] = v110;
  v111 = swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v259, &v260);
  v259 = v260;
  v112 = v258;
  v113 = *(v258 + 16);
  sub_1ADDD86D8(v109, v110);
  v113(&v259, v105, v111, v257, v112);
  sub_1ADDCC35C(v259.n128_i64[0], v259.n128_u64[1]);
  v114 = v225;
  if ((*(v225 + 48))(v106, 1, v105) == 1)
  {
    (*(v190 + 8))(v106, v191);
    v115 = v253;
    goto LABEL_33;
  }

  v174 = *(v114 + 32);
  v175 = v188;
  v174(v188, v106, v105);
  v174(v189, v175, v105);
  v176 = swift_getAssociatedTypeWitness();
  v177 = v253;
LABEL_44:
  swift_dynamicCast();
  return (*(*(v176 - 8) + 56))(v177, 0, 1, v176);
}

uint64_t sub_1ADF3F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v248 = a1;
  v245 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v215 = sub_1AE23D7CC();
  v213 = *(v215 - 8);
  v7 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v237 = &v179 - v8;
  v238 = AssociatedTypeWitness;
  v236 = *(AssociatedTypeWitness - 8);
  v9 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v214 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v212 = &v179 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v211 = sub_1AE23D7CC();
  v209 = *(v211 - 8);
  v15 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v234 = &v179 - v16;
  v235 = v14;
  v233 = *(v14 - 8);
  v17 = *(v233 + 8);
  MEMORY[0x1EEE9AC00](v18);
  v210 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v179 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v207 = sub_1AE23D7CC();
  v205 = *(v207 - 8);
  v23 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v231 = &v179 - v24;
  v232 = v22;
  v230 = *(v22 - 8);
  v25 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v206 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v204 = &v179 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v203 = sub_1AE23D7CC();
  v201 = *(v203 - 8);
  v31 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v228 = &v179 - v32;
  v229 = v30;
  v227 = *(v30 - 8);
  v33 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v202 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v179 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v199 = sub_1AE23D7CC();
  v197 = *(v199 - 8);
  v39 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v225 = &v179 - v40;
  v226 = v38;
  v224 = *(v38 - 8);
  v41 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v198 = &v179 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v196 = &v179 - v45;
  v46 = swift_getAssociatedTypeWitness();
  v195 = sub_1AE23D7CC();
  v193 = *(v195 - 8);
  v47 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v222 = &v179 - v48;
  v223 = v46;
  v221 = *(v46 - 8);
  v49 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v194 = &v179 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v192 = &v179 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v190 = sub_1AE23D7CC();
  v189 = *(v190 - 8);
  v55 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v243 = &v179 - v56;
  v244 = v54;
  v220 = *(v54 - 8);
  v57 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v191 = &v179 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v188 = &v179 - v61;
  v62 = swift_getAssociatedTypeWitness();
  v187 = sub_1AE23D7CC();
  v185 = *(v187 - 8);
  v63 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v241 = &v179 - v64;
  v242 = v62;
  v219 = *(v62 - 8);
  v65 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v186 = &v179 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v240 = &v179 - v69;
  v70 = swift_getAssociatedTypeWitness();
  v184 = sub_1AE23D7CC();
  v182 = *(v184 - 8);
  v71 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v218 = &v179 - v72;
  v239 = v70;
  v217 = *(v70 - 8);
  v73 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v183 = &v179 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v181 = &v179 - v77;
  v78 = swift_getAssociatedTypeWitness();
  v79 = sub_1AE23D7CC();
  v180 = *(v79 - 8);
  v80 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v179 - v81;
  v216 = *(v78 - 8);
  v83 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v179 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v179 - v88;
  v90 = *(a2 + 36);
  v91 = swift_getAssociatedTypeWitness();
  v246 = v5;
  v92 = v247;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v250.n128_u64[0] = v91;
  v250.n128_u64[1] = AssociatedConformanceWitness;
  v251 = &protocol witness table for Int;
  v252 = MEMORY[0x1E69E6540];
  v94 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v94, &v253);
  if (v253 > 3)
  {
    if (v253 <= 5)
    {
      if (v253 == 4)
      {
        v143 = v92[1];
        v249.n128_u64[0] = *v92;
        v142 = v249.n128_u64[0];
        v249.n128_u64[1] = v143;
        v97 = v223;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v249, &v250);
        v99 = v250.n128_u64[1];
        v98 = v250.n128_u64[0];
        v249 = v250;
        sub_1ADDD86D8(v142, v143);
        v144 = type metadata accessor for WeakRef();
        v145 = v222;
        sub_1AE21D3E4(v144, v222);
        v146 = v221;
        if ((*(v221 + 48))(v145, 1, v97) == 1)
        {
          (*(v193 + 8))(v145, v195);
          goto LABEL_31;
        }

        v166 = *(v146 + 32);
        v170 = v192;
        v166(v192, v145, v97);
        sub_1ADDCC35C(v98, v99);
        v171 = &v226;
      }

      else
      {
        v120 = v92[1];
        v249.n128_u64[0] = *v92;
        v119 = v249.n128_u64[0];
        v249.n128_u64[1] = v120;
        v97 = v226;
        swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v249, &v250);
        v99 = v250.n128_u64[1];
        v98 = v250.n128_u64[0];
        v249 = v250;
        sub_1ADDD86D8(v119, v120);
        v121 = type metadata accessor for WeakRef();
        v122 = v225;
        sub_1AE21D3E4(v121, v225);
        v123 = v224;
        if ((*(v224 + 48))(v122, 1, v97) == 1)
        {
          (*(v197 + 8))(v122, v199);
          goto LABEL_31;
        }

        v166 = *(v123 + 32);
        v170 = v196;
        v166(v196, v122, v97);
        sub_1ADDCC35C(v98, v99);
        v171 = &v230;
      }
    }

    else
    {
      switch(v253)
      {
        case 6:
          v138 = v92[1];
          v249.n128_u64[0] = *v92;
          v137 = v249.n128_u64[0];
          v249.n128_u64[1] = v138;
          v97 = v229;
          swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v249, &v250);
          v99 = v250.n128_u64[1];
          v98 = v250.n128_u64[0];
          v249 = v250;
          sub_1ADDD86D8(v137, v138);
          v139 = type metadata accessor for WeakRef();
          v140 = v228;
          sub_1AE21D3E4(v139, v228);
          v141 = v227;
          if ((*(v227 + 48))(v140, 1, v97) == 1)
          {
            (*(v201 + 8))(v140, v203);
            goto LABEL_31;
          }

          v166 = *(v141 + 32);
          v170 = v200;
          v166(v200, v140, v97);
          sub_1ADDCC35C(v98, v99);
          v171 = &v234;
          break;
        case 7:
          v148 = v92[1];
          v249.n128_u64[0] = *v92;
          v147 = v249.n128_u64[0];
          v249.n128_u64[1] = v148;
          v97 = v232;
          swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v249, &v250);
          v99 = v250.n128_u64[1];
          v98 = v250.n128_u64[0];
          v249 = v250;
          sub_1ADDD86D8(v147, v148);
          v149 = type metadata accessor for WeakRef();
          v150 = v231;
          sub_1AE21D3E4(v149, v231);
          v151 = v230;
          if ((*(v230 + 48))(v150, 1, v97) == 1)
          {
            (*(v205 + 8))(v150, v207);
            goto LABEL_31;
          }

          v166 = *(v151 + 32);
          v170 = v204;
          v166(v204, v150, v97);
          sub_1ADDCC35C(v98, v99);
          v171 = &v238;
          break;
        case 8:
          v96 = v92[1];
          v249.n128_u64[0] = *v92;
          v95 = v249.n128_u64[0];
          v249.n128_u64[1] = v96;
          v97 = v235;
          swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v249, &v250);
          v99 = v250.n128_u64[1];
          v98 = v250.n128_u64[0];
          v249 = v250;
          sub_1ADDD86D8(v95, v96);
          v100 = type metadata accessor for WeakRef();
          v101 = v234;
          sub_1AE21D3E4(v100, v234);
          v102 = v233;
          if ((*(v233 + 6))(v101, 1, v97) == 1)
          {
            (*(v209 + 8))(v101, v211);
LABEL_31:
            v113 = v98;
            v114 = v99;
            goto LABEL_32;
          }

          v166 = *(v102 + 4);
          v170 = v208;
          v166(v208, v101, v97);
          sub_1ADDCC35C(v98, v99);
          v171 = &v242;
          break;
        default:
LABEL_29:
          v153 = v92[1];
          v249.n128_u64[0] = *v92;
          v152 = v249.n128_u64[0];
          v249.n128_u64[1] = v153;
          v154 = v238;
          swift_getAssociatedConformanceWitness();
          WeakRef.init(id:)(&v249, &v250);
          v99 = v250.n128_u64[1];
          v98 = v250.n128_u64[0];
          v249 = v250;
          v155 = v153;
          v156 = v154;
          sub_1ADDD86D8(v152, v155);
          v157 = type metadata accessor for WeakRef();
          v158 = v237;
          sub_1AE21D3E4(v157, v237);
          v159 = v236;
          if ((*(v236 + 48))(v158, 1, v156) == 1)
          {
            (*(v213 + 8))(v158, v215);
            goto LABEL_31;
          }

          v177 = *(v159 + 32);
          v178 = v212;
          v177(v212, v158, v156);
          sub_1ADDCC35C(v98, v99);
          v177(v214, v178, v156);
          v174 = swift_getAssociatedTypeWitness();
          v175 = v245;
          goto LABEL_45;
      }
    }

    v168 = *(v171 - 32);
    v169 = v170;
LABEL_44:
    v166(v168, v169, v97);
    v174 = swift_getAssociatedTypeWitness();
    v175 = v245;
    goto LABEL_45;
  }

  v232 = v89;
  v235 = v82;
  v233 = v86;
  v234 = v79;
  v103 = v240;
  v104 = v241;
  v105 = v243;
  v97 = v244;
  if (v253 > 1)
  {
    if (v253 == 2)
    {
      v131 = v92[1];
      v249.n128_u64[0] = *v92;
      v130 = v249.n128_u64[0];
      v249.n128_u64[1] = v131;
      v132 = v242;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v249, &v250);
      v133 = v250;
      v249 = v250;
      sub_1ADDD86D8(v130, v131);
      v134 = type metadata accessor for WeakRef();
      sub_1AE21D3E4(v134, v104);
      v135 = v219;
      if ((*(v219 + 48))(v104, 1, v132) == 1)
      {
        (*(v185 + 8))(v104, v187);
        sub_1ADDCC35C(v133.n128_i64[0], v133.n128_u64[1]);
        v136 = v245;
LABEL_33:
        v160 = swift_getAssociatedTypeWitness();
        return (*(*(v160 - 8) + 56))(v136, 1, 1, v160);
      }

      v176 = *(v135 + 32);
      v176(v103, v104, v132);
      sub_1ADDCC35C(v133.n128_i64[0], v133.n128_u64[1]);
      v176(v186, v103, v132);
      v174 = swift_getAssociatedTypeWitness();
      v175 = v245;
      goto LABEL_45;
    }

    v116 = v92[1];
    v249.n128_u64[0] = *v92;
    v115 = v249.n128_u64[0];
    v249.n128_u64[1] = v116;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v249, &v250);
    v99 = v250.n128_u64[1];
    v98 = v250.n128_u64[0];
    v249 = v250;
    sub_1ADDD86D8(v115, v116);
    v117 = type metadata accessor for WeakRef();
    sub_1AE21D3E4(v117, v105);
    v118 = v220;
    if ((*(v220 + 48))(v105, 1, v97) == 1)
    {
      (*(v189 + 8))(v105, v190);
      goto LABEL_31;
    }

    v166 = *(v118 + 32);
    v167 = v188;
    v166(v188, v105, v97);
    sub_1ADDCC35C(v98, v99);
    v168 = v191;
    v169 = v167;
    goto LABEL_44;
  }

  if (v253)
  {
    if (v253 != 1)
    {
      goto LABEL_29;
    }

    v106 = *v92;
    v107 = v92[1];
    v249.n128_u64[0] = v106;
    v249.n128_u64[1] = v107;
    v108 = v239;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v249, &v250);
    v109 = v250;
    v249 = v250;
    sub_1ADDD86D8(v106, v107);
    v110 = type metadata accessor for WeakRef();
    v111 = v218;
    sub_1AE21D3E4(v110, v218);
    v112 = v217;
    if ((*(v217 + 48))(v111, 1, v108) != 1)
    {
      v162 = *(v112 + 32);
      v163 = v181;
      v162(v181, v111, v108);
      sub_1ADDCC35C(v109.n128_i64[0], v109.n128_u64[1]);
      v162(v183, v163, v108);
      v164 = swift_getAssociatedTypeWitness();
      v165 = v245;
      swift_dynamicCast();
      return (*(*(v164 - 8) + 56))(v165, 0, 1, v164);
    }

    (*(v182 + 8))(v111, v184);
    v114 = *&v109 >> 64;
    v113 = v109;
LABEL_32:
    sub_1ADDCC35C(v113, v114);
    v136 = v245;
    goto LABEL_33;
  }

  v125 = v92[1];
  v249.n128_u64[0] = *v92;
  v124 = v249.n128_u64[0];
  v249.n128_u64[1] = v125;
  swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v249, &v250);
  v126 = v250;
  v249 = v250;
  sub_1ADDD86D8(v124, v125);
  v127 = type metadata accessor for WeakRef();
  v128 = v235;
  sub_1AE21D3E4(v127, v235);
  v129 = v216;
  if ((*(v216 + 48))(v128, 1, v78) == 1)
  {
    (*(v180 + 8))(v128, v234);
    v114 = *&v126 >> 64;
    v113 = v126;
    goto LABEL_32;
  }

  v172 = *(v129 + 32);
  v173 = v232;
  v172(v232, v128, v78);
  sub_1ADDCC35C(v126.n128_i64[0], v126.n128_u64[1]);
  v172(v233, v173, v78);
  v174 = swift_getAssociatedTypeWitness();
  v175 = v245;
LABEL_45:
  swift_dynamicCast();
  return (*(*(v174 - 8) + 56))(v175, 0, 1, v174);
}

uint64_t sub_1ADF4108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v193 = a2;
  v194 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v180 = &v163 - v8;
  v179 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v178 = &v163 - v11;
  v177 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v176 = &v163 - v14;
  v175 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v174 = &v163 - v17;
  v173 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v172 = &v163 - v20;
  v171 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v170 = &v163 - v23;
  v188 = swift_getAssociatedTypeWitness();
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v169 = &v163 - v26;
  v187 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v186 = &v163 - v29;
  v185 = swift_getAssociatedTypeWitness();
  v30 = sub_1AE23D7CC();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v184 = &v163 - v32;
  v183 = swift_getAssociatedTypeWitness();
  v33 = sub_1AE23D7CC();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v182 = &v163 - v35;
  swift_getAssociatedTypeWitness();
  v192 = sub_1AE23D7CC();
  v36 = *(v192 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v168 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v167 = &v163 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v166 = &v163 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v165 = &v163 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v164 = &v163 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v163 = &v163 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v163 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v163 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v163 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v163 - v59;
  v61 = *(a3 + 36);
  v62 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v196.n128_u64[0] = v62;
  v196.n128_u64[1] = AssociatedConformanceWitness;
  v197 = &protocol witness table for Int;
  v198 = MEMORY[0x1E69E6540];
  v64 = type metadata accessor for CRExtensible();
  v65 = v190;
  CRExtensible.rawValue.getter(v64, &v199);
  v191 = v36;
  v189 = v36 + 16;
  if (v199 > 3)
  {
    if (v199 <= 5)
    {
      if (v199 == 4)
      {
        v137 = v65[1];
        v195.n128_u64[0] = *v65;
        v136 = v195.n128_u64[0];
        v195.n128_u64[1] = v137;
        v138 = v171;
        v139 = swift_getAssociatedConformanceWitness();
        v140 = WeakRef.init(id:)(&v195, &v196);
        v141 = v196;
        v143 = v191;
        v142 = v192;
        v144 = v194;
        (*(v191 + 16))(v163, v194, v192, v140);
        sub_1ADDD86D8(v136, v137);
        v145 = v170;
        v146 = swift_dynamicCast();
        (*(*(v138 - 8) + 56))(v145, v146 ^ 1u, 1, v138);
        v195 = v141;
        sub_1ADEAEA50(v145, &v195, v138, v139);

        return (*(v143 + 8))(v144, v142);
      }

      v103 = v65[1];
      v195.n128_u64[0] = *v65;
      v102 = v195.n128_u64[0];
      v195.n128_u64[1] = v103;
      v68 = v173;
      v69 = swift_getAssociatedConformanceWitness();
      v104 = WeakRef.init(id:)(&v195, &v196);
      v72 = v196.n128_u64[1];
      v71 = v196.n128_u64[0];
      v74 = v191;
      v73 = v192;
      v75 = v194;
      (*(v191 + 16))(v164, v194, v192, v104);
      sub_1ADDD86D8(v102, v103);
      v76 = &v200;
      goto LABEL_20;
    }

    switch(v199)
    {
      case 6:
        v126 = v65[1];
        v195.n128_u64[0] = *v65;
        v125 = v195.n128_u64[0];
        v195.n128_u64[1] = v126;
        v127 = v175;
        v128 = swift_getAssociatedConformanceWitness();
        v129 = WeakRef.init(id:)(&v195, &v196);
        v130 = v196.n128_u64[1];
        v190 = v196.n128_u64[0];
        v132 = v191;
        v131 = v192;
        v133 = v194;
        (*(v191 + 16))(v165, v194, v192, v129);
        sub_1ADDD86D8(v125, v126);
        v134 = v174;
        v135 = swift_dynamicCast();
        (*(*(v127 - 8) + 56))(v134, v135 ^ 1u, 1, v127);
        v195.n128_u64[0] = v190;
        v195.n128_u64[1] = v130;
        sub_1ADEAEA50(v134, &v195, v127, v128);

        return (*(v132 + 8))(v133, v131);
      case 7:
        v148 = v65[1];
        v195.n128_u64[0] = *v65;
        v147 = v195.n128_u64[0];
        v195.n128_u64[1] = v148;
        v68 = v177;
        v69 = swift_getAssociatedConformanceWitness();
        v149 = WeakRef.init(id:)(&v195, &v196);
        v72 = v196.n128_u64[1];
        v71 = v196.n128_u64[0];
        v74 = v191;
        v73 = v192;
        v75 = v194;
        (*(v191 + 16))(v166, v194, v192, v149);
        sub_1ADDD86D8(v147, v148);
        v76 = &v201;
        goto LABEL_20;
      case 8:
        v67 = v65[1];
        v195.n128_u64[0] = *v65;
        v66 = v195.n128_u64[0];
        v195.n128_u64[1] = v67;
        v68 = v179;
        v69 = swift_getAssociatedConformanceWitness();
        v70 = WeakRef.init(id:)(&v195, &v196);
        v72 = v196.n128_u64[1];
        v71 = v196.n128_u64[0];
        v74 = v191;
        v73 = v192;
        v75 = v194;
        (*(v191 + 16))(v167, v194, v192, v70);
        sub_1ADDD86D8(v66, v67);
        v76 = &v202;
LABEL_20:
        v150 = *(v76 - 32);
        v151 = swift_dynamicCast();
        (*(*(v68 - 8) + 56))(v150, v151 ^ 1u, 1, v68);
        v195.n128_u64[0] = v71;
        v195.n128_u64[1] = v72;
        sub_1ADEAEA50(v150, &v195, v68, v69);

        return (*(v74 + 8))(v75, v73);
    }

    goto LABEL_21;
  }

  v77 = v182;
  v78 = v184;
  v79 = v186;
  if (v199 <= 1)
  {
    if (!v199)
    {
      v106 = v65[1];
      v195.n128_u64[0] = *v65;
      v105 = v195.n128_u64[0];
      v195.n128_u64[1] = v106;
      v107 = v183;
      v108 = swift_getAssociatedConformanceWitness();
      v109 = WeakRef.init(id:)(&v195, &v196);
      v110 = v196.n128_u64[1];
      v190 = v196.n128_u64[0];
      v111 = v191;
      v112 = v192;
      v113 = v194;
      (*(v191 + 16))(v60, v194, v192, v109);
      sub_1ADDD86D8(v105, v106);
      v114 = swift_dynamicCast();
      (*(*(v107 - 8) + 56))(v77, v114 ^ 1u, 1, v107);
      v195.n128_u64[0] = v190;
      v195.n128_u64[1] = v110;
      sub_1ADEAEA50(v77, &v195, v107, v108);

      return (*(v111 + 8))(v113, v112);
    }

    if (v199 == 1)
    {
      v81 = v65[1];
      v195.n128_u64[0] = *v65;
      v80 = v195.n128_u64[0];
      v195.n128_u64[1] = v81;
      v82 = v185;
      v83 = swift_getAssociatedConformanceWitness();
      v84 = WeakRef.init(id:)(&v195, &v196);
      v85 = v196.n128_u64[1];
      v190 = v196.n128_u64[0];
      v86 = v191;
      v87 = v192;
      v88 = v194;
      (*(v191 + 16))(v57, v194, v192, v84);
      sub_1ADDD86D8(v80, v81);
      v89 = swift_dynamicCast();
      (*(*(v82 - 8) + 56))(v78, v89 ^ 1u, 1, v82);
      v195.n128_u64[0] = v190;
      v195.n128_u64[1] = v85;
      sub_1ADEAEA50(v78, &v195, v82, v83);

      return (*(v86 + 8))(v88, v87);
    }

LABEL_21:
    v153 = v65[1];
    v195.n128_u64[0] = *v65;
    v152 = v195.n128_u64[0];
    v195.n128_u64[1] = v153;
    v154 = AssociatedTypeWitness;
    v155 = swift_getAssociatedConformanceWitness();
    v156 = WeakRef.init(id:)(&v195, &v196);
    v157 = v196;
    v158 = v191;
    v159 = v192;
    v160 = v194;
    (*(v191 + 16))(v168, v194, v192, v156);
    sub_1ADDD86D8(v152, v153);
    v161 = v180;
    v162 = swift_dynamicCast();
    (*(*(v154 - 8) + 56))(v161, v162 ^ 1u, 1, v154);
    v195 = v157;
    sub_1ADEAEA50(v161, &v195, v154, v155);

    return (*(v158 + 8))(v160, v159);
  }

  if (v199 == 2)
  {
    v116 = v65[1];
    v195.n128_u64[0] = *v65;
    v115 = v195.n128_u64[0];
    v195.n128_u64[1] = v116;
    v117 = v187;
    v118 = swift_getAssociatedConformanceWitness();
    v119 = WeakRef.init(id:)(&v195, &v196);
    v120 = v196.n128_u64[1];
    v190 = v196.n128_u64[0];
    v122 = v191;
    v121 = v192;
    v123 = v194;
    (*(v191 + 16))(v54, v194, v192, v119);
    sub_1ADDD86D8(v115, v116);
    v124 = swift_dynamicCast();
    (*(*(v117 - 8) + 56))(v79, v124 ^ 1u, 1, v117);
    v195.n128_u64[0] = v190;
    v195.n128_u64[1] = v120;
    sub_1ADEAEA50(v79, &v195, v117, v118);

    return (*(v122 + 8))(v123, v121);
  }

  else
  {
    v92 = v65[1];
    v195.n128_u64[0] = *v65;
    v91 = v195.n128_u64[0];
    v195.n128_u64[1] = v92;
    v93 = v188;
    v94 = swift_getAssociatedConformanceWitness();
    v95 = WeakRef.init(id:)(&v195, &v196);
    v96 = v196;
    v98 = v191;
    v97 = v192;
    v99 = v194;
    (*(v191 + 16))(v51, v194, v192, v95);
    sub_1ADDD86D8(v91, v92);
    v100 = v169;
    v101 = swift_dynamicCast();
    (*(*(v93 - 8) + 56))(v100, v101 ^ 1u, 1, v93);
    v195 = v96;
    sub_1ADEAEA50(v100, &v195, v93, v94);

    return (*(v98 + 8))(v99, v97);
  }
}

uint64_t sub_1ADF421F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_9();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_9, &associated type descriptor for Tagged_9.AnyType, sub_1ADF4108C);
}

uint64_t WeakTagged_9.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_9, &associated type descriptor for Tagged_9.AnyType, sub_1ADF4108C);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_9.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_9.subscript.getter(a2, a3);
  return sub_1ADF4248C;
}

uint64_t sub_1ADF425A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_9.init(from:)(a1, a3);
}

uint64_t WeakTagged_9.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_9() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v35 = 0xD000000000000013;
        *(v35 + 8) = 0x80000001AE25FC60;
        *(v35 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_73:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v40 = type metadata accessor for CRExtensible();
        return (*(*(v40 - 8) + 8))(a2 + v44, v40);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_76;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 <= 3)
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        if (v34)
        {
          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_78;
    }

    if (!v48)
    {
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_80;
    }

    if (v48 != 1)
    {
      goto LABEL_70;
    }

    if (v34)
    {
      goto LABEL_71;
    }

LABEL_77:
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
    goto LABEL_86;
  }

  if (v48 <= 5)
  {
    if (v48 == 4)
    {
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_84;
    }

    if (v34)
    {
      goto LABEL_71;
    }

    goto LABEL_79;
  }

  switch(v48)
  {
    case 6:
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_82;
    case 7:
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    case 8:
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_83;
  }

LABEL_70:
  if (v34)
  {
LABEL_71:
    v36 = swift_getAssociatedTypeWitness();
    v38 = *(a2 + 8);
    *&v45 = *a2;
    v37 = v45;
    *(&v45 + 1) = v38;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v37, v38);
    v39 = swift_getAssociatedConformanceWitness();
    v41(v36, &v45, a1, 1, v36, v39);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_73;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1ADF43068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CRExtensible();
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t sub_1ADF43158(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CRExtensible();
  return (*(*(v7 - 8) + 40))(v2 + v4, a1, v7);
}

uint64_t (*WeakTagged_10.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_10.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_10.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_10.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_10.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_10, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_10, a5);
}

uint64_t sub_1ADF432AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, char *a6@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a5(0, a3, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a6[v10], a1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CRExtensible();
  result = swift_storeEnumTagMultiPayload();
  *a6 = v8;
  *(a6 + 1) = v9;
  return result;
}

uint64_t sub_1ADF4341C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, char *a6@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a5(0, a3, a4) + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CRExtensible();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a1, v11);
  *a6 = v8;
  *(a6 + 1) = v9;
  return result;
}

uint64_t WeakTagged_10.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_10() + 36);
  v5 = *(type metadata accessor for WeakTagged_10() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_10.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_10.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_10.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_10.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_10.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_10.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_10.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 6)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t WeakTagged_10.tagged8.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_u64[0] == 7)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
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

uint64_t sub_1ADF43FFC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v7 = *(a1 + 36);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = &protocol witness table for Int;
  v22 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v10, &AssociatedTypeWitness);
  if (AssociatedTypeWitness == 9)
  {
    v12 = *v3;
    v13 = v5[1];
    v18[0] = v12;
    v18[1] = v13;
    v14 = swift_getAssociatedTypeWitness();
    v15 = swift_getAssociatedConformanceWitness();
    a2(&AssociatedTypeWitness, v18, v14, v15);
    v16 = AssociatedTypeWitness;
    v17 = AssociatedConformanceWitness;
    result = sub_1ADDD86D8(v12, v13);
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  *a3 = v16;
  a3[1] = v17;
  return result;
}

uint64_t WeakTagged_10.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_10.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v261 = a4;
  v262 = a1;
  v263 = a3;
  v259 = a5;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v228 = sub_1AE23D7CC();
  v227 = *(v228 - 8);
  v9 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v257 = &v185 - v10;
  v258[0] = AssociatedTypeWitness;
  v256 = *(AssociatedTypeWitness - 8);
  v11 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v226 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v225 = &v185 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v224 = sub_1AE23D7CC();
  v223 = *(v224 - 8);
  v17 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v254 = &v185 - v18;
  v255 = v16;
  v253 = *(v16 - 8);
  v19 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v221 = &v185 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v220 = sub_1AE23D7CC();
  v219 = *(v220 - 8);
  v25 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v251 = &v185 - v26;
  v252 = v24;
  v250 = *(v24 - 8);
  v27 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v218 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v217 = &v185 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v216 = sub_1AE23D7CC();
  v215 = *(v216 - 8);
  v33 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v248 = &v185 - v34;
  v249 = v32;
  v247 = *(v32 - 8);
  v35 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v214 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v213 = &v185 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v212 = sub_1AE23D7CC();
  v211 = *(v212 - 8);
  v41 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v245 = &v185 - v42;
  v246 = v40;
  v244 = *(v40 - 8);
  v43 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v210 = &v185 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v209 = &v185 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v208 = sub_1AE23D7CC();
  v207 = *(v208 - 8);
  v49 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v242 = &v185 - v50;
  v243 = v48;
  v241 = *(v48 - 8);
  v51 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v206 = &v185 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v205 = &v185 - v55;
  v56 = swift_getAssociatedTypeWitness();
  v204 = sub_1AE23D7CC();
  v203 = *(v204 - 8);
  v57 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v239 = &v185 - v58;
  v240 = v56;
  v238 = *(v56 - 8);
  v59 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v202 = &v185 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v201 = &v185 - v63;
  v64 = swift_getAssociatedTypeWitness();
  v200 = sub_1AE23D7CC();
  v199 = *(v200 - 8);
  v65 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v236 = &v185 - v66;
  v237 = v64;
  v235 = *(v64 - 8);
  v67 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v198 = &v185 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v197 = &v185 - v71;
  v72 = swift_getAssociatedTypeWitness();
  v196 = sub_1AE23D7CC();
  v195 = *(v196 - 8);
  v73 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v233 = &v185 - v74;
  v234 = v72;
  v232 = *(v72 - 8);
  v75 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v194 = &v185 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v193 = &v185 - v79;
  v80 = swift_getAssociatedTypeWitness();
  v192 = sub_1AE23D7CC();
  v191 = *(v192 - 8);
  v81 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v231 = &v185 - v82;
  v230 = *(v80 - 8);
  v83 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v190 = &v185 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v189 = &v185 - v87;
  v88 = swift_getAssociatedTypeWitness();
  v188 = sub_1AE23D7CC();
  v187 = *(v188 - 8);
  v89 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v91 = &v185 - v90;
  v229 = *(v88 - 8);
  v92 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v186 = &v185 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v185 - v96;
  v98 = *(a2 + 36);
  v99 = swift_getAssociatedTypeWitness();
  v100 = v260;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v265.n128_u64[0] = v99;
  v265.n128_u64[1] = AssociatedConformanceWitness;
  v266 = &protocol witness table for Int;
  v267 = MEMORY[0x1E69E6540];
  v102 = type metadata accessor for CRExtensible();
  v103 = v261;
  CRExtensible.rawValue.getter(v102, &v268);
  v258[1] = v103 + 16;
  if (v268 > 4)
  {
    if (v268 <= 6)
    {
      if (v268 == 5)
      {
        v137 = v100[1];
        v264.n128_u64[0] = *v100;
        v136 = v264.n128_u64[0];
        v264.n128_u64[1] = v137;
        v106 = v243;
        v138 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v139 = *(v103 + 16);
        sub_1ADDD86D8(v136, v137);
        v140 = v242;
        v139(&v264, v106, v138, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v141 = v241;
        if ((*(v241 + 48))(v140, 1, v106) == 1)
        {
          (*(v207 + 8))(v140, v208);
          goto LABEL_34;
        }

        v177 = *(v141 + 32);
        v178 = v205;
        v177(v205, v140, v106);
        v179 = &v238;
      }

      else
      {
        v124 = v100[1];
        v264.n128_u64[0] = *v100;
        v123 = v264.n128_u64[0];
        v264.n128_u64[1] = v124;
        v106 = v246;
        v125 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v126 = *(v103 + 16);
        sub_1ADDD86D8(v123, v124);
        v127 = v245;
        v126(&v264, v106, v125, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v128 = v244;
        if ((*(v244 + 48))(v127, 1, v106) == 1)
        {
          (*(v211 + 8))(v127, v212);
          goto LABEL_34;
        }

        v177 = *(v128 + 32);
        v178 = v209;
        v177(v209, v127, v106);
        v179 = &v242;
      }

      goto LABEL_48;
    }

    switch(v268)
    {
      case 7:
        v150 = v100[1];
        v264.n128_u64[0] = *v100;
        v149 = v264.n128_u64[0];
        v264.n128_u64[1] = v150;
        v106 = v249;
        v151 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v152 = *(v103 + 16);
        sub_1ADDD86D8(v149, v150);
        v153 = v248;
        v152(&v264, v106, v151, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v154 = v247;
        if ((*(v247 + 48))(v153, 1, v106) == 1)
        {
          (*(v215 + 8))(v153, v216);
          goto LABEL_34;
        }

        v177 = *(v154 + 32);
        v178 = v213;
        v177(v213, v153, v106);
        v179 = &v246;
        goto LABEL_48;
      case 8:
        v162 = v100[1];
        v264.n128_u64[0] = *v100;
        v161 = v264.n128_u64[0];
        v264.n128_u64[1] = v162;
        v106 = v252;
        v163 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v164 = *(v103 + 16);
        sub_1ADDD86D8(v161, v162);
        v165 = v251;
        v164(&v264, v106, v163, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v166 = v250;
        if ((*(v250 + 48))(v165, 1, v106) == 1)
        {
          (*(v219 + 8))(v165, v220);
          goto LABEL_34;
        }

        v177 = *(v166 + 32);
        v178 = v217;
        v177(v217, v165, v106);
        v179 = &v250;
        goto LABEL_48;
      case 9:
        v112 = v100[1];
        v264.n128_u64[0] = *v100;
        v111 = v264.n128_u64[0];
        v264.n128_u64[1] = v112;
        v106 = v255;
        v113 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v114 = *(v103 + 16);
        sub_1ADDD86D8(v111, v112);
        v115 = v254;
        v114(&v264, v106, v113, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v116 = v253;
        if ((*(v253 + 48))(v115, 1, v106) == 1)
        {
          (*(v223 + 8))(v115, v224);
          goto LABEL_34;
        }

        v177 = *(v116 + 32);
        v178 = v221;
        v177(v221, v115, v106);
        v179 = &v254;
        goto LABEL_48;
    }

LABEL_32:
    v168 = v100[1];
    v264.n128_u64[0] = *v100;
    v167 = v264.n128_u64[0];
    v264.n128_u64[1] = v168;
    v106 = v258[0];
    v169 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v264, &v265);
    v264 = v265;
    v170 = *(v103 + 16);
    sub_1ADDD86D8(v167, v168);
    v171 = v257;
    v170(&v264, v106, v169, v263, v103);
    sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
    v172 = v256;
    if ((*(v256 + 48))(v171, 1, v106) == 1)
    {
      (*(v227 + 8))(v171, v228);
      goto LABEL_34;
    }

    v177 = *(v172 + 32);
    v178 = v225;
    v177(v225, v171, v106);
    v179 = v258;
LABEL_48:
    v177(*(v179 - 32), v178, v106);
    v181 = swift_getAssociatedTypeWitness();
    v182 = v259;
    goto LABEL_49;
  }

  if (v268 > 1)
  {
    if (v268 != 2)
    {
      if (v268 == 3)
      {
        v156 = v100[1];
        v264.n128_u64[0] = *v100;
        v155 = v264.n128_u64[0];
        v264.n128_u64[1] = v156;
        v106 = v237;
        v157 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v158 = *(v103 + 16);
        sub_1ADDD86D8(v155, v156);
        v159 = v236;
        v158(&v264, v106, v157, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v160 = v235;
        if ((*(v235 + 48))(v159, 1, v106) == 1)
        {
          (*(v199 + 8))(v159, v200);
          goto LABEL_34;
        }

        v177 = *(v160 + 32);
        v178 = v197;
        v177(v197, v159, v106);
        v179 = &v230;
      }

      else
      {
        v105 = v100[1];
        v264.n128_u64[0] = *v100;
        v104 = v264.n128_u64[0];
        v264.n128_u64[1] = v105;
        v106 = v240;
        v107 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v264, &v265);
        v264 = v265;
        v108 = *(v103 + 16);
        sub_1ADDD86D8(v104, v105);
        v109 = v239;
        v108(&v264, v106, v107, v263, v103);
        sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
        v110 = v238;
        if ((*(v238 + 48))(v109, 1, v106) == 1)
        {
          (*(v203 + 8))(v109, v204);
LABEL_34:
          v135 = v259;
          goto LABEL_35;
        }

        v177 = *(v110 + 32);
        v178 = v201;
        v177(v201, v109, v106);
        v179 = &v234;
      }

      goto LABEL_48;
    }

    v143 = v100[1];
    v264.n128_u64[0] = *v100;
    v142 = v264.n128_u64[0];
    v264.n128_u64[1] = v143;
    v144 = v234;
    v145 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v264, &v265);
    v264 = v265;
    v146 = *(v103 + 16);
    sub_1ADDD86D8(v142, v143);
    v147 = v233;
    v146(&v264, v144, v145, v263, v103);
    sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
    v148 = v232;
    if ((*(v232 + 48))(v147, 1, v144) == 1)
    {
      (*(v195 + 8))(v147, v196);
      v135 = v259;
      goto LABEL_35;
    }

    v183 = *(v148 + 32);
    v184 = v193;
    v183(v193, v147, v144);
    v183(v194, v184, v144);
    goto LABEL_41;
  }

  if (v268)
  {
    if (v268 == 1)
    {
      v118 = v100[1];
      v264.n128_u64[0] = *v100;
      v117 = v264.n128_u64[0];
      v264.n128_u64[1] = v118;
      v119 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v264, &v265);
      v264 = v265;
      v120 = *(v103 + 16);
      sub_1ADDD86D8(v117, v118);
      v121 = v231;
      v120(&v264, v80, v119, v263, v103);
      sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
      v122 = v230;
      if ((*(v230 + 48))(v121, 1, v80) == 1)
      {
        (*(v191 + 8))(v121, v192);
        goto LABEL_34;
      }

      v175 = *(v122 + 32);
      v176 = v189;
      v175(v189, v121, v80);
      v175(v190, v176, v80);
LABEL_41:
      v181 = swift_getAssociatedTypeWitness();
      v182 = v259;
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  v129 = *v100;
  v130 = v100[1];
  v264.n128_u64[0] = v129;
  v264.n128_u64[1] = v130;
  v260 = v7;
  v131 = v103;
  v132 = swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v264, &v265);
  v264 = v265;
  v133 = *(v131 + 16);
  sub_1ADDD86D8(v129, v130);
  v133(&v264, v88, v132, v263, v131);
  sub_1ADDCC35C(v264.n128_i64[0], v264.n128_u64[1]);
  v134 = v229;
  if ((*(v229 + 48))(v91, 1, v88) == 1)
  {
    (*(v187 + 8))(v91, v188);
    v135 = v259;
LABEL_35:
    v173 = swift_getAssociatedTypeWitness();
    return (*(*(v173 - 8) + 56))(v135, 1, 1, v173);
  }

  v180 = *(v134 + 32);
  v180(v97, v91, v88);
  v180(v186, v97, v88);
  v181 = swift_getAssociatedTypeWitness();
  v182 = v259;
LABEL_49:
  swift_dynamicCast();
  return (*(*(v181 - 8) + 56))(v182, 0, 1, v181);
}