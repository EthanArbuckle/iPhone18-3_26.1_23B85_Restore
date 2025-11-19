uint64_t sub_1ADEEAB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a1;
  v46 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = v39 - v9;
  v42 = swift_getAssociatedTypeWitness();
  v10 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v39 - v11;
  v40 = swift_getAssociatedTypeWitness();
  v12 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39[1] = v39 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = *(a2 + 36);
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48.n128_u64[0] = v19;
  v48.n128_u64[1] = AssociatedConformanceWitness;
  v49 = &protocol witness table for Int;
  v50 = MEMORY[0x1E69E6540];
  v21 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v21, &v51);
  if (v51 > 1)
  {
    if (v51 == 2)
    {
      v35 = v3[1];
      v47.n128_u64[0] = *v3;
      v34 = v47.n128_u64[0];
      v47.n128_u64[1] = v35;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v47, &v48);
      v36 = v48;
      v47 = v48;
      sub_1ADDD86D8(v34, v35);
      v37 = type metadata accessor for Ref();
      sub_1AE002018(v45, v37);
      sub_1ADDCC35C(v36.n128_i64[0], v36.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

LABEL_6:
    v27 = v3[1];
    v47.n128_u64[0] = *v4;
    v26 = v47.n128_u64[0];
    v47.n128_u64[1] = v27;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v47, &v48);
    v28 = v48;
    v47 = v48;
    sub_1ADDD86D8(v26, v27);
    v29 = type metadata accessor for Ref();
    sub_1AE002018(v45, v29);
    sub_1ADDCC35C(v28.n128_i64[0], v28.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (!v51)
  {
    v31 = v3[1];
    v47.n128_u64[0] = *v4;
    v30 = v47.n128_u64[0];
    v47.n128_u64[1] = v31;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v47, &v48);
    v32 = v48;
    v47 = v48;
    sub_1ADDD86D8(v30, v31);
    v33 = type metadata accessor for Ref();
    sub_1AE002018(v45, v33);
    sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (v51 != 1)
  {
    goto LABEL_6;
  }

  v23 = v3[1];
  v47.n128_u64[0] = *v4;
  v22 = v47.n128_u64[0];
  v47.n128_u64[1] = v23;
  swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v47, &v48);
  v24 = v48;
  v47 = v48;
  sub_1ADDD86D8(v22, v23);
  v25 = type metadata accessor for Ref();
  sub_1AE002018(v45, v25);
  sub_1ADDCC35C(v24.n128_i64[0], v24.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEEB16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v79 = a2;
  v80 = a1;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v75 = AssociatedTypeWitness;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = &v63 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v63 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v63 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v66 = *(v17 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v63 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v64 = *(v20 - 8);
  v21 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v78 = swift_getAssociatedTypeWitness();
  v24 = *(v78 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v63 - v26;
  v27 = *(a3 + 36);
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82.n128_u64[0] = v28;
  v82.n128_u64[1] = AssociatedConformanceWitness;
  v83 = &protocol witness table for Int;
  v84 = MEMORY[0x1E69E6540];
  v30 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v30, &v85);
  v31 = v24;
  v76 = v24 + 16;
  if (v85 <= 1)
  {
    if (!v85)
    {
      v53 = v3[1];
      v81.n128_u64[0] = *v4;
      v54 = v81.n128_u64[0];
      v81.n128_u64[1] = v53;
      swift_getAssociatedConformanceWitness();
      v55 = Ref.init(id:)(&v81, &v82);
      v75 = v82.n128_u64[1];
      v56 = v82.n128_u64[0];
      v57 = v78;
      v58 = v80;
      (*(v31 + 16))(v77, v80, v78, v55);
      sub_1ADDD86D8(v54, v53);
      swift_dynamicCast();
      v81.n128_u64[0] = v56;
      v81.n128_u64[1] = v75;
      sub_1ADECCBCC(v23, &v81, v20);
      (*(v64 + 8))(v23, v20);

      return (*(v31 + 8))(v58, v57);
    }

    if (v85 == 1)
    {
      v32 = v3[1];
      v81.n128_u64[0] = *v4;
      v33 = v81.n128_u64[0];
      v81.n128_u64[1] = v32;
      swift_getAssociatedConformanceWitness();
      v34 = Ref.init(id:)(&v81, &v82);
      v35 = v82;
      v36 = v78;
      v37 = v80;
      (*(v31 + 16))(v77, v80, v78, v34);
      sub_1ADDD86D8(v33, v32);
      v38 = v65;
      swift_dynamicCast();
      v81 = v35;
      sub_1ADECCBCC(v38, &v81, v17);
      (*(v66 + 8))(v38, v17);

      return (*(v31 + 8))(v37, v36);
    }

LABEL_8:
    v49 = v3[1];
    v81.n128_u64[0] = *v4;
    v50 = v81.n128_u64[0];
    v81.n128_u64[1] = v49;
    v42 = v75;
    swift_getAssociatedConformanceWitness();
    v51 = Ref.init(id:)(&v81, &v82);
    v52 = v82;
    v45 = v78;
    v46 = v80;
    (*(v31 + 16))(v77, v80, v78, v51);
    sub_1ADDD86D8(v50, v49);
    v47 = v73;
    swift_dynamicCast();
    v81 = v52;
    sub_1ADECCBCC(v47, &v81, v42);
    v48 = v74;
    goto LABEL_11;
  }

  if (v85 == 2)
  {
    v59 = v3[1];
    v81.n128_u64[0] = *v4;
    v60 = v81.n128_u64[0];
    v81.n128_u64[1] = v59;
    v42 = v69;
    swift_getAssociatedConformanceWitness();
    v61 = Ref.init(id:)(&v81, &v82);
    v62 = v82;
    v45 = v78;
    v46 = v80;
    (*(v31 + 16))(v77, v80, v78, v61);
    sub_1ADDD86D8(v60, v59);
    v47 = v67;
    swift_dynamicCast();
    v81 = v62;
    sub_1ADECCBCC(v47, &v81, v42);
    v48 = v68;
    goto LABEL_11;
  }

  if (v85 != 3)
  {
    goto LABEL_8;
  }

  v40 = v3[1];
  v81.n128_u64[0] = *v4;
  v41 = v81.n128_u64[0];
  v81.n128_u64[1] = v40;
  v42 = v72;
  swift_getAssociatedConformanceWitness();
  v43 = Ref.init(id:)(&v81, &v82);
  v44 = v82;
  v45 = v78;
  v46 = v80;
  (*(v31 + 16))(v77, v80, v78, v43);
  sub_1ADDD86D8(v41, v40);
  v47 = v70;
  swift_dynamicCast();
  v81 = v44;
  sub_1ADECCBCC(v47, &v81, v42);
  v48 = v71;
LABEL_11:
  (*(v48 + 8))(v47, v42);

  return (*(v31 + 8))(v46, v45);
}

uint64_t sub_1ADEEBA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_4();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_4, &associated type descriptor for Tagged_4.AnyType, sub_1ADEEB16C);
}

uint64_t SharedTagged_4.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_4, &associated type descriptor for Tagged_4.AnyType, sub_1ADEEB16C);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_4.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  SharedTagged_4.subscript.getter(a2, a3);
  return sub_1ADEEBC8C;
}

uint64_t SharedTagged_4.visitReferences(_:)(void *a1, uint64_t a2)
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

uint64_t sub_1ADEEBFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_4.init(from:)(a1, a3);
}

uint64_t SharedTagged_4.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v9 = *(type metadata accessor for SharedTagged_4() + 36);
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
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
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
    v41(v35, &v45, a1, 0, v35, v38);
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

uint64_t (*SharedTagged_5.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_5.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_5.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_5.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_5.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_5, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_5, a5);
}

uint64_t SharedTagged_5.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_5();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_5();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_5();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_5();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 4;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_5();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_5.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 4;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_5.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_5();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_5();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_5();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_5();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_5();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_5.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_5() + 36);
  v5 = *(type metadata accessor for SharedTagged_5() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_5.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_5.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_5.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_5.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_5.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_5.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
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
  if (v15.n128_i64[0] >= 5)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_5.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_5.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v60 = a5;
  v61 = a4;
  v58 = a1;
  v59 = a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = v51 - v11;
  v54 = swift_getAssociatedTypeWitness();
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v51 - v13;
  v52 = swift_getAssociatedTypeWitness();
  v14 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51[1] = v51 - v15;
  v57 = swift_getAssociatedTypeWitness();
  v16 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v51[0] = v51 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = *(a2 + 36);
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63.n128_u64[0] = v23;
  v63.n128_u64[1] = AssociatedConformanceWitness;
  v64 = &protocol witness table for Int;
  v65 = MEMORY[0x1E69E6540];
  v25 = type metadata accessor for CRExtensible();
  v26 = v61;
  CRExtensible.rawValue.getter(v25, &v66);
  if (v66 <= 1)
  {
    v57 = v26 + 8;
    if (v66)
    {
      if (v66 != 1)
      {
        goto LABEL_12;
      }

      v33 = *v6;
      v32 = v6[1];
      v62.n128_u64[0] = v33;
      v62.n128_u64[1] = v32;
      v34 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v62, &v63);
      v62 = v63;
      v35 = *(v26 + 8);
      sub_1ADDD86D8(v33, v32);
      v35(&v62, v18, v34, v59, v26);
      sub_1ADDCC35C(v62.n128_i64[0], v62.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }

    else
    {
      v44 = *v6;
      v43 = v6[1];
      v62.n128_u64[0] = v44;
      v62.n128_u64[1] = v43;
      v45 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v62, &v63);
      v62 = v63;
      v46 = v26;
      v47 = *(v26 + 8);
      sub_1ADDD86D8(v44, v43);
      v47(&v62, v20, v45, v59, v46);
      sub_1ADDCC35C(v62.n128_i64[0], v62.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }
  }

  else
  {
    if (v66 != 2)
    {
      v57 = v26 + 8;
      if (v66 == 3)
      {
        v42 = *v6;
        v41 = v6[1];
        v62.n128_u64[0] = v42;
        v62.n128_u64[1] = v41;
        v29 = v52;
        v30 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v62, &v63);
        v62 = v63;
        v31 = *(v26 + 8);
        sub_1ADDD86D8(v42, v41);
        goto LABEL_13;
      }

      if (v66 == 4)
      {
        v28 = *v6;
        v27 = v6[1];
        v62.n128_u64[0] = v28;
        v62.n128_u64[1] = v27;
        v29 = v54;
        v30 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v62, &v63);
        v62 = v63;
        v31 = *(v26 + 8);
        sub_1ADDD86D8(v28, v27);
LABEL_13:
        v31(&v62, v29, v30, v59, v26);
        sub_1ADDCC35C(v62.n128_i64[0], v62.n128_u64[1]);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

LABEL_12:
      v49 = *v6;
      v48 = v6[1];
      v62.n128_u64[0] = v49;
      v62.n128_u64[1] = v48;
      v29 = AssociatedTypeWitness;
      v30 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v62, &v63);
      v62 = v63;
      v31 = *(v26 + 8);
      sub_1ADDD86D8(v49, v48);
      goto LABEL_13;
    }

    v37 = *v6;
    v36 = v6[1];
    v62.n128_u64[0] = v37;
    v62.n128_u64[1] = v36;
    v38 = v57;
    v39 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v62, &v63);
    v62 = v63;
    v40 = *(v26 + 8);
    sub_1ADDD86D8(v37, v36);
    v40(&v62, v38, v39, v59, v26);
    sub_1ADDCC35C(v62.n128_i64[0], v62.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEF0740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v49 = a1;
  v50 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = v41 - v9;
  v46 = swift_getAssociatedTypeWitness();
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v41 - v11;
  v44 = swift_getAssociatedTypeWitness();
  v12 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v41 - v13;
  v42 = swift_getAssociatedTypeWitness();
  v14 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41[1] = v41 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = *(a2 + 36);
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52.n128_u64[0] = v21;
  v52.n128_u64[1] = AssociatedConformanceWitness;
  v53 = &protocol witness table for Int;
  v54 = MEMORY[0x1E69E6540];
  v23 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v23, &v55);
  if (v55 <= 1)
  {
    if (v55)
    {
      if (v55 != 1)
      {
LABEL_9:
        v37 = v3[1];
        v51.n128_u64[0] = *v4;
        v36 = v51.n128_u64[0];
        v51.n128_u64[1] = v37;
        swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v51, &v52);
        v38 = v52;
        v51 = v52;
        sub_1ADDD86D8(v36, v37);
        v39 = type metadata accessor for Ref();
        sub_1AE002018(v49, v39);
        sub_1ADDCC35C(v38.n128_i64[0], v38.n128_u64[1]);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

      v25 = v3[1];
      v51.n128_u64[0] = *v4;
      v24 = v51.n128_u64[0];
      v51.n128_u64[1] = v25;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v51, &v52);
      v26 = v52;
      v51 = v52;
      sub_1ADDD86D8(v24, v25);
      v27 = type metadata accessor for Ref();
      sub_1AE002018(v49, v27);
      sub_1ADDCC35C(v26.n128_i64[0], v26.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }

    else
    {
      v33 = v3[1];
      v51.n128_u64[0] = *v3;
      v32 = v51.n128_u64[0];
      v51.n128_u64[1] = v33;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v51, &v52);
      v34 = v52;
      v51 = v52;
      sub_1ADDD86D8(v32, v33);
      v35 = type metadata accessor for Ref();
      sub_1AE002018(v49, v35);
      sub_1ADDCC35C(v34.n128_i64[0], v34.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }
  }

  else
  {
    if (v55 != 2)
    {
      goto LABEL_9;
    }

    v29 = v3[1];
    v51.n128_u64[0] = *v4;
    v28 = v51.n128_u64[0];
    v51.n128_u64[1] = v29;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v51, &v52);
    v30 = v52;
    v51 = v52;
    sub_1ADDD86D8(v28, v29);
    v31 = type metadata accessor for Ref();
    sub_1AE002018(v49, v31);
    sub_1ADDCC35C(v30.n128_i64[0], v30.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEF0E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a1;
  v85 = a2;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v81 = AssociatedTypeWitness;
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v68 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v68 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v68 - v14;
  v82 = swift_getAssociatedTypeWitness();
  v72 = *(v82 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v71 = &v68 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  v21 = swift_getAssociatedTypeWitness();
  v69 = *(v21 - 8);
  v22 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v84 = swift_getAssociatedTypeWitness();
  v25 = *(v84 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v68 - v27;
  v28 = *(a3 + 36);
  v29 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89.n128_u64[0] = v29;
  v89.n128_u64[1] = AssociatedConformanceWitness;
  v90 = &protocol witness table for Int;
  v91 = MEMORY[0x1E69E6540];
  v31 = type metadata accessor for CRExtensible();
  v32 = v87;
  CRExtensible.rawValue.getter(v31, &v92);
  v33 = v25;
  if (v92 <= 1)
  {
    v82 = v25 + 16;
    if (!v92)
    {
      v57 = v32[1];
      v88.n128_u64[0] = *v32;
      v58 = v88.n128_u64[0];
      v88.n128_u64[1] = v57;
      swift_getAssociatedConformanceWitness();
      v59 = Ref.init(id:)(&v88, &v89);
      v60 = v89.n128_u64[1];
      v87 = v89.n128_u64[0];
      v61 = v84;
      v62 = v86;
      (*(v33 + 16))(v83, v86, v84, v59);
      sub_1ADDD86D8(v58, v57);
      swift_dynamicCast();
      v88.n128_u64[0] = v87;
      v88.n128_u64[1] = v60;
      sub_1ADECCBCC(v24, &v88, v21);
      (*(v69 + 8))(v24, v21);

      return (*(v33 + 8))(v62, v61);
    }

    if (v92 != 1)
    {
      goto LABEL_12;
    }

    v43 = v32[1];
    v88.n128_u64[0] = *v32;
    v44 = v88.n128_u64[0];
    v88.n128_u64[1] = v43;
    swift_getAssociatedConformanceWitness();
    v45 = Ref.init(id:)(&v88, &v89);
    v46 = v89.n128_u64[1];
    v87 = v89.n128_u64[0];
    v39 = v84;
    v40 = v86;
    (*(v33 + 16))(v83, v86, v84, v45);
    sub_1ADDD86D8(v44, v43);
    swift_dynamicCast();
    v88.n128_u64[0] = v87;
    v88.n128_u64[1] = v46;
    sub_1ADECCBCC(v20, &v88, v17);
    (*(v70 + 8))(v20, v17);
  }

  else
  {
    if (v92 != 2)
    {
      v82 = v25 + 16;
      if (v92 == 3)
      {
        v53 = v32[1];
        v88.n128_u64[0] = *v32;
        v54 = v88.n128_u64[0];
        v88.n128_u64[1] = v53;
        v36 = v75;
        swift_getAssociatedConformanceWitness();
        v55 = Ref.init(id:)(&v88, &v89);
        v56 = v89;
        v39 = v84;
        v40 = v86;
        (*(v33 + 16))(v83, v86, v84, v55);
        sub_1ADDD86D8(v54, v53);
        v41 = v73;
        swift_dynamicCast();
        v88 = v56;
        sub_1ADECCBCC(v41, &v88, v36);
        v42 = v74;
        goto LABEL_13;
      }

      if (v92 == 4)
      {
        v34 = v32[1];
        v88.n128_u64[0] = *v32;
        v35 = v88.n128_u64[0];
        v88.n128_u64[1] = v34;
        v36 = v78;
        swift_getAssociatedConformanceWitness();
        v37 = Ref.init(id:)(&v88, &v89);
        v38 = v89;
        v39 = v84;
        v40 = v86;
        (*(v33 + 16))(v83, v86, v84, v37);
        sub_1ADDD86D8(v35, v34);
        v41 = v76;
        swift_dynamicCast();
        v88 = v38;
        sub_1ADECCBCC(v41, &v88, v36);
        v42 = v77;
LABEL_13:
        (*(v42 + 8))(v41, v36);
        goto LABEL_14;
      }

LABEL_12:
      v64 = v32[1];
      v88.n128_u64[0] = *v32;
      v65 = v88.n128_u64[0];
      v88.n128_u64[1] = v64;
      v36 = v81;
      swift_getAssociatedConformanceWitness();
      v66 = Ref.init(id:)(&v88, &v89);
      v67 = v89;
      v39 = v84;
      v40 = v86;
      (*(v33 + 16))(v83, v86, v84, v66);
      sub_1ADDD86D8(v65, v64);
      v41 = v79;
      swift_dynamicCast();
      v88 = v67;
      sub_1ADECCBCC(v41, &v88, v36);
      v42 = v80;
      goto LABEL_13;
    }

    v47 = v32[1];
    v88.n128_u64[0] = *v32;
    v48 = v88.n128_u64[0];
    v88.n128_u64[1] = v47;
    v49 = v82;
    swift_getAssociatedConformanceWitness();
    v50 = Ref.init(id:)(&v88, &v89);
    v87 = v89.n128_u64[1];
    v51 = v89.n128_u64[0];
    v39 = v84;
    v40 = v86;
    (*(v33 + 16))(v83, v86, v84, v50);
    sub_1ADDD86D8(v48, v47);
    v52 = v71;
    swift_dynamicCast();
    v88.n128_u64[0] = v51;
    v88.n128_u64[1] = v87;
    sub_1ADECCBCC(v52, &v88, v49);
    (*(v72 + 8))(v52, v49);
  }

LABEL_14:

  return (*(v33 + 8))(v40, v39);
}

uint64_t sub_1ADEF185C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_5();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_5, &associated type descriptor for Tagged_5.AnyType, sub_1ADEF0E60);
}

uint64_t SharedTagged_5.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_5, &associated type descriptor for Tagged_5.AnyType, sub_1ADEF0E60);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_5.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  SharedTagged_5.subscript.getter(a2, a3);
  return sub_1ADEF1AE0;
}

uint64_t SharedTagged_5.visitReferences(_:)(void *a1, uint64_t a2)
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

uint64_t sub_1ADEF1E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_5.init(from:)(a1, a3);
}

uint64_t SharedTagged_5.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v9 = *(type metadata accessor for SharedTagged_5() + 36);
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
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
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
    v41(v35, &v45, a1, 0, v35, v38);
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

uint64_t (*SharedTagged_6.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_6.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_6.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_6.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_6.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_6, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_6, a5);
}

uint64_t SharedTagged_6.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_6();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_6();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_6();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_6();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 4;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_6();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 5;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_6();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_6.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_6();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_6();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_6();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_6();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 4;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_6();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 5;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_6();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_6.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_6();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_6();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_6();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_6();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_6();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 5;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_6();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_6.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_6() + 36);
  v5 = *(type metadata accessor for SharedTagged_6() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_6.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_6.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_6.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_6.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_6.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_6.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_6.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
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
  if (v15.n128_i64[0] >= 6)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_6.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_6.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v66 = a5;
  v67 = a4;
  v64 = a1;
  v65 = a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = v53 - v11;
  v60 = swift_getAssociatedTypeWitness();
  v12 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = v53 - v13;
  v58 = swift_getAssociatedTypeWitness();
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = v53 - v15;
  v56 = swift_getAssociatedTypeWitness();
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v53 - v17;
  v54 = swift_getAssociatedTypeWitness();
  v18 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53[1] = v53 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = *(a2 + 36);
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69.n128_u64[0] = v25;
  v69.n128_u64[1] = AssociatedConformanceWitness;
  v70 = &protocol witness table for Int;
  v71 = MEMORY[0x1E69E6540];
  v27 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v27, &v72);
  v63 = v67 + 8;
  if (v72 > 2)
  {
    switch(v72)
    {
      case 3:
        v42 = *v6;
        v41 = v6[1];
        v68.n128_u64[0] = v42;
        v68.n128_u64[1] = v41;
        v30 = v56;
        v31 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v68, &v69);
        v68 = v69;
        v32 = v67;
        v33 = *(v67 + 8);
        sub_1ADDD86D8(v42, v41);
        goto LABEL_15;
      case 4:
        v51 = *v6;
        v50 = v6[1];
        v68.n128_u64[0] = v51;
        v68.n128_u64[1] = v50;
        v30 = v58;
        v31 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v68, &v69);
        v68 = v69;
        v32 = v67;
        v33 = *(v67 + 8);
        sub_1ADDD86D8(v51, v50);
        goto LABEL_15;
      case 5:
        v35 = *v6;
        v34 = v6[1];
        v68.n128_u64[0] = v35;
        v68.n128_u64[1] = v34;
        v30 = v60;
        v31 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v68, &v69);
        v68 = v69;
        v32 = v67;
        v33 = *(v67 + 8);
        sub_1ADDD86D8(v35, v34);
        goto LABEL_15;
    }

LABEL_12:
    v44 = *v6;
    v43 = v6[1];
    v68.n128_u64[0] = v44;
    v68.n128_u64[1] = v43;
    v30 = AssociatedTypeWitness;
    v31 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v68, &v69);
    v68 = v69;
    v32 = v67;
    v33 = *(v67 + 8);
    sub_1ADDD86D8(v44, v43);
    goto LABEL_15;
  }

  if (v72)
  {
    if (v72 != 1)
    {
      if (v72 == 2)
      {
        v29 = *v6;
        v28 = v6[1];
        v68.n128_u64[0] = v29;
        v68.n128_u64[1] = v28;
        v30 = v54;
        v31 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v68, &v69);
        v68 = v69;
        v32 = v67;
        v33 = *(v67 + 8);
        sub_1ADDD86D8(v29, v28);
LABEL_15:
        v33(&v68, v30, v31, v65, v32);
        sub_1ADDCC35C(v68.n128_i64[0], v68.n128_u64[1]);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

      goto LABEL_12;
    }

    v46 = *v6;
    v45 = v6[1];
    v68.n128_u64[0] = v46;
    v68.n128_u64[1] = v45;
    v47 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v68, &v69);
    v68 = v69;
    v48 = v67;
    v49 = *(v67 + 8);
    sub_1ADDD86D8(v46, v45);
    v49(&v68, v20, v47, v65, v48);
    sub_1ADDCC35C(v68.n128_i64[0], v68.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v37 = *v6;
    v36 = v6[1];
    v68.n128_u64[0] = v37;
    v68.n128_u64[1] = v36;
    v38 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v68, &v69);
    v68 = v69;
    v39 = v67;
    v40 = *(v67 + 8);
    sub_1ADDD86D8(v37, v36);
    v40(&v68, v22, v38, v65, v39);
    sub_1ADDCC35C(v68.n128_i64[0], v68.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEF7124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v49 = a1;
  v50 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v39 - v9;
  v46 = swift_getAssociatedTypeWitness();
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - v11;
  v44 = swift_getAssociatedTypeWitness();
  v12 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - v13;
  v42 = swift_getAssociatedTypeWitness();
  v14 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - v15;
  v40 = swift_getAssociatedTypeWitness();
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v39 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = *(a2 + 36);
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52.n128_u64[0] = v23;
  v52.n128_u64[1] = AssociatedConformanceWitness;
  v53 = &protocol witness table for Int;
  v54 = MEMORY[0x1E69E6540];
  v25 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v25, &v55);
  if (v55 > 2)
  {
    goto LABEL_8;
  }

  if (v55)
  {
    if (v55 != 1)
    {
LABEL_8:
      v35 = v3[1];
      v51.n128_u64[0] = *v4;
      v34 = v51.n128_u64[0];
      v51.n128_u64[1] = v35;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v51, &v52);
      v36 = v52;
      v51 = v52;
      sub_1ADDD86D8(v34, v35);
      v37 = type metadata accessor for Ref();
      sub_1AE002018(v49, v37);
      sub_1ADDCC35C(v36.n128_i64[0], v36.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    v31 = v3[1];
    v51.n128_u64[0] = *v3;
    v30 = v51.n128_u64[0];
    v51.n128_u64[1] = v31;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v51, &v52);
    v32 = v52;
    v51 = v52;
    sub_1ADDD86D8(v30, v31);
    v33 = type metadata accessor for Ref();
    sub_1AE002018(v49, v33);
    sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v27 = v3[1];
    v51.n128_u64[0] = *v4;
    v26 = v51.n128_u64[0];
    v51.n128_u64[1] = v27;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v51, &v52);
    v28 = v52;
    v51 = v52;
    sub_1ADDD86D8(v26, v27);
    v29 = type metadata accessor for Ref();
    sub_1AE002018(v49, v29);
    sub_1ADDCC35C(v28.n128_i64[0], v28.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEF78E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a2;
  v107 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  v101 = AssociatedTypeWitness;
  v7 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v99 = &v84 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v84 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v84 - v14;
  v92 = swift_getAssociatedTypeWitness();
  v91 = *(v92 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v84 - v16;
  v89 = swift_getAssociatedTypeWitness();
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v84 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v86 = *(v19 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v84 - v21;
  v23 = swift_getAssociatedTypeWitness();
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v84 - v25;
  v105 = swift_getAssociatedTypeWitness();
  v27 = *(v105 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v84 - v29;
  v30 = *(a3 + 36);
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109.n128_u64[0] = v31;
  v109.n128_u64[1] = AssociatedConformanceWitness;
  v110 = &protocol witness table for Int;
  v111 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  v34 = v102;
  CRExtensible.rawValue.getter(v33, &v112);
  v35 = v27;
  v103 = v27 + 16;
  if (v112 > 2)
  {
    switch(v112)
    {
      case 3:
        v61 = v34;
        v62 = *v34;
        v63 = v61[1];
        v108.n128_u64[0] = v62;
        v108.n128_u64[1] = v63;
        v47 = v92;
        swift_getAssociatedConformanceWitness();
        v64 = Ref.init(id:)(&v108, &v109);
        v65 = v109;
        v41 = v105;
        v42 = v107;
        (*(v27 + 16))(v104, v107, v105, v64);
        sub_1ADDD86D8(v62, v63);
        v50 = v90;
        swift_dynamicCast();
        v108 = v65;
        sub_1ADECCBCC(v50, &v108, v47);
        v51 = v91;
        break;
      case 4:
        v79 = v34;
        v80 = *v34;
        v81 = v79[1];
        v108.n128_u64[0] = v80;
        v108.n128_u64[1] = v81;
        v47 = v95;
        swift_getAssociatedConformanceWitness();
        v82 = Ref.init(id:)(&v108, &v109);
        v83 = v109;
        v41 = v105;
        v42 = v107;
        (*(v27 + 16))(v104, v107, v105, v82);
        sub_1ADDD86D8(v80, v81);
        v50 = v93;
        swift_dynamicCast();
        v108 = v83;
        sub_1ADECCBCC(v50, &v108, v47);
        v51 = v94;
        break;
      case 5:
        v44 = v34;
        v45 = *v34;
        v46 = v44[1];
        v108.n128_u64[0] = v45;
        v108.n128_u64[1] = v46;
        v47 = v98;
        swift_getAssociatedConformanceWitness();
        v48 = Ref.init(id:)(&v108, &v109);
        v49 = v109;
        v41 = v105;
        v42 = v107;
        (*(v27 + 16))(v104, v107, v105, v48);
        sub_1ADDD86D8(v45, v46);
        v50 = v96;
        swift_dynamicCast();
        v108 = v49;
        sub_1ADECCBCC(v50, &v108, v47);
        v51 = v97;
        break;
      default:
        goto LABEL_12;
    }

LABEL_15:
    (*(v51 + 8))(v50, v47);
    goto LABEL_16;
  }

  if (!v112)
  {
    v52 = v34;
    v53 = *v34;
    v54 = v52[1];
    v108.n128_u64[0] = v53;
    v108.n128_u64[1] = v54;
    swift_getAssociatedConformanceWitness();
    v55 = Ref.init(id:)(&v108, &v109);
    v56 = v109.n128_u64[1];
    v102 = v109.n128_u64[0];
    v57 = *(v27 + 16);
    v58 = v105;
    v59 = v107;
    v57(v104, v107, v105, v55);
    sub_1ADDD86D8(v53, v54);
    swift_dynamicCast();
    v108.n128_u64[0] = v102;
    v108.n128_u64[1] = v56;
    sub_1ADECCBCC(v26, &v108, v23);
    (*(v85 + 8))(v26, v23);

    return (*(v35 + 8))(v59, v58);
  }

  if (v112 == 1)
  {
    v71 = v34;
    v72 = *v34;
    v73 = v71[1];
    v108.n128_u64[0] = v72;
    v108.n128_u64[1] = v73;
    swift_getAssociatedConformanceWitness();
    v74 = Ref.init(id:)(&v108, &v109);
    v75 = v109.n128_u64[1];
    v102 = v109.n128_u64[0];
    v76 = *(v27 + 16);
    v77 = v105;
    v78 = v107;
    v76(v104, v107, v105, v74);
    sub_1ADDD86D8(v72, v73);
    swift_dynamicCast();
    v108.n128_u64[0] = v102;
    v108.n128_u64[1] = v75;
    sub_1ADECCBCC(v22, &v108, v19);
    (*(v86 + 8))(v22, v19);

    return (*(v35 + 8))(v78, v77);
  }

  if (v112 != 2)
  {
LABEL_12:
    v66 = v34;
    v67 = *v34;
    v68 = v66[1];
    v108.n128_u64[0] = v67;
    v108.n128_u64[1] = v68;
    v47 = v101;
    swift_getAssociatedConformanceWitness();
    v69 = Ref.init(id:)(&v108, &v109);
    v70 = v109;
    v41 = v105;
    v42 = v107;
    (*(v27 + 16))(v104, v107, v105, v69);
    sub_1ADDD86D8(v67, v68);
    v50 = v99;
    swift_dynamicCast();
    v108 = v70;
    sub_1ADECCBCC(v50, &v108, v47);
    v51 = v100;
    goto LABEL_15;
  }

  v37 = v34[1];
  v108.n128_u64[0] = *v34;
  v36 = v108.n128_u64[0];
  v108.n128_u64[1] = v37;
  v38 = v89;
  swift_getAssociatedConformanceWitness();
  v39 = Ref.init(id:)(&v108, &v109);
  v40 = v109;
  v41 = v105;
  v42 = v107;
  (*(v27 + 16))(v104, v107, v105, v39);
  sub_1ADDD86D8(v36, v37);
  v43 = v87;
  swift_dynamicCast();
  v108 = v40;
  sub_1ADECCBCC(v43, &v108, v38);
  (*(v88 + 8))(v43, v38);
LABEL_16:

  return (*(v27 + 8))(v42, v41);
}

uint64_t sub_1ADEF8490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_6();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_6, &associated type descriptor for Tagged_6.AnyType, sub_1ADEF78E4);
}

uint64_t SharedTagged_6.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_6, &associated type descriptor for Tagged_6.AnyType, sub_1ADEF78E4);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_6.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  SharedTagged_6.subscript.getter(a2, a3);
  return sub_1ADEF8714;
}

uint64_t SharedTagged_6.visitReferences(_:)(void *a1, uint64_t a2)
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

uint64_t sub_1ADEF8AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_6.init(from:)(a1, a3);
}

uint64_t SharedTagged_6.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v9 = *(type metadata accessor for SharedTagged_6() + 36);
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
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
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
    v41(v36, &v45, a1, 0, v36, v39);
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

uint64_t (*SharedTagged_7.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_7.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_7.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_7.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_7.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_7, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_7, a5);
}

uint64_t SharedTagged_7.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 4;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 5;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 6;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_7();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_7.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 4;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 5;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 6;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_7();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_7.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 5;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 6;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_7();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_7.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_7() + 36);
  v5 = *(type metadata accessor for SharedTagged_7() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_7.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_7.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
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
  if (v15.n128_i64[0] >= 7)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_7.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_7.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a5;
  v78 = a4;
  v75 = a1;
  v76 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = v60 - v9;
  v67 = swift_getAssociatedTypeWitness();
  v10 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v60 - v11;
  v65 = swift_getAssociatedTypeWitness();
  v12 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v60 - v13;
  v63 = swift_getAssociatedTypeWitness();
  v14 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v60 - v15;
  v61 = swift_getAssociatedTypeWitness();
  v16 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60[1] = v60 - v17;
  v70 = swift_getAssociatedTypeWitness();
  v18 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(a2 + 36);
  v24 = swift_getAssociatedTypeWitness();
  v71 = v6;
  v72 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80.n128_u64[0] = v24;
  v80.n128_u64[1] = AssociatedConformanceWitness;
  v81 = &protocol witness table for Int;
  v82 = MEMORY[0x1E69E6540];
  v26 = type metadata accessor for CRExtensible();
  v27 = v73;
  CRExtensible.rawValue.getter(v26, &v83);
  v74 = v78 + 8;
  if (v83 > 2)
  {
    if (v83 <= 4)
    {
      v28 = v27[1];
      v79.n128_u64[0] = *v27;
      v29 = v79.n128_u64[0];
      v79.n128_u64[1] = v28;
      if (v83 == 3)
      {
        v30 = v61;
        v31 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v79, &v80);
        v79 = v80;
        v32 = v78;
        v33 = *(v78 + 8);
        sub_1ADDD86D8(v29, v28);
        v34 = &v84;
      }

      else
      {
        v30 = v63;
        v31 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v79, &v80);
        v79 = v80;
        v32 = v78;
        v33 = *(v78 + 8);
        sub_1ADDD86D8(v29, v28);
        v34 = &v85;
      }

      goto LABEL_16;
    }

    if (v83 == 5)
    {
      v50 = v27[1];
      v79.n128_u64[0] = *v27;
      v51 = v79.n128_u64[0];
      v79.n128_u64[1] = v50;
      v30 = v65;
      v31 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v79, &v80);
      v79 = v80;
      v32 = v78;
      v33 = *(v78 + 8);
      sub_1ADDD86D8(v51, v50);
      v34 = &v86;
LABEL_16:
      v52 = *(v34 - 32);
      goto LABEL_17;
    }

    if (v83 == 6)
    {
      v41 = v27[1];
      v79.n128_u64[0] = *v27;
      v42 = v79.n128_u64[0];
      v79.n128_u64[1] = v41;
      v30 = v67;
      v31 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v79, &v80);
      v79 = v80;
      v32 = v78;
      v33 = *(v78 + 8);
      sub_1ADDD86D8(v42, v41);
LABEL_17:
      v33(&v79, v30, v31, v76, v32);
      sub_1ADDCC35C(v79.n128_i64[0], v79.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

LABEL_13:
    v48 = v27[1];
    v79.n128_u64[0] = *v27;
    v49 = v79.n128_u64[0];
    v79.n128_u64[1] = v48;
    v30 = AssociatedTypeWitness;
    v31 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v79, &v80);
    v79 = v80;
    v32 = v78;
    v33 = *(v78 + 8);
    sub_1ADDD86D8(v49, v48);
    goto LABEL_17;
  }

  if (v83)
  {
    if (v83 == 1)
    {
      v54 = v27[1];
      v79.n128_u64[0] = *v27;
      v55 = v79.n128_u64[0];
      v79.n128_u64[1] = v54;
      v56 = v19;
      v57 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v79, &v80);
      v79 = v80;
      v58 = v78;
      v59 = *(v78 + 8);
      sub_1ADDD86D8(v55, v54);
      v59(&v79, v56, v57, v76, v58);
      sub_1ADDCC35C(v79.n128_i64[0], v79.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    if (v83 != 2)
    {
      goto LABEL_13;
    }

    v35 = v27[1];
    v79.n128_u64[0] = *v27;
    v36 = v79.n128_u64[0];
    v79.n128_u64[1] = v35;
    v37 = v70;
    v38 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v79, &v80);
    v79 = v80;
    v39 = v78;
    v40 = *(v78 + 8);
    sub_1ADDD86D8(v36, v35);
    v40(&v79, v37, v38, v76, v39);
    sub_1ADDCC35C(v79.n128_i64[0], v79.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v43 = v27[1];
    v79.n128_u64[0] = *v27;
    v44 = v79.n128_u64[0];
    v79.n128_u64[1] = v43;
    v45 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v79, &v80);
    v79 = v80;
    v46 = v78;
    v47 = *(v78 + 8);
    sub_1ADDD86D8(v44, v43);
    v47(&v79, v21, v45, v76, v46);
    sub_1ADDCC35C(v79.n128_i64[0], v79.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEFEA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v60 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v45 - v7;
  v52 = swift_getAssociatedTypeWitness();
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - v9;
  v50 = swift_getAssociatedTypeWitness();
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45 - v11;
  v48 = swift_getAssociatedTypeWitness();
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v45 - v13;
  v46 = swift_getAssociatedTypeWitness();
  v14 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v45 - v15;
  v55 = swift_getAssociatedTypeWitness();
  v16 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v18 = &v45 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(a2 + 36);
  v24 = swift_getAssociatedTypeWitness();
  v56 = v5;
  v57 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62.n128_u64[0] = v24;
  v62.n128_u64[1] = AssociatedConformanceWitness;
  v63 = &protocol witness table for Int;
  v64 = MEMORY[0x1E69E6540];
  v26 = type metadata accessor for CRExtensible();
  v27 = v58;
  CRExtensible.rawValue.getter(v26, &v65);
  if (v65 > 2)
  {
    goto LABEL_7;
  }

  v52 = v18;
  if (!v65)
  {
    v32 = v27[1];
    v61.n128_u64[0] = *v27;
    v33 = v61.n128_u64[0];
    v61.n128_u64[1] = v32;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v61, &v62);
    v34 = v62;
    v61 = v62;
    sub_1ADDD86D8(v33, v32);
    v35 = type metadata accessor for Ref();
    sub_1AE002018(v59, v35);
    sub_1ADDCC35C(v34.n128_i64[0], v34.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (v65 == 1)
  {
    v42 = v27[1];
    v61.n128_u64[0] = *v27;
    v41 = v61.n128_u64[0];
    v61.n128_u64[1] = v42;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v61, &v62);
    v43 = v62;
    v61 = v62;
    sub_1ADDD86D8(v41, v42);
    v44 = type metadata accessor for Ref();
    sub_1AE002018(v59, v44);
    sub_1ADDCC35C(v43.n128_i64[0], v43.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (v65 != 2)
  {
LABEL_7:
    v37 = v27[1];
    v61.n128_u64[0] = *v27;
    v36 = v61.n128_u64[0];
    v61.n128_u64[1] = v37;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v61, &v62);
    v38 = v62;
    v61 = v62;
    sub_1ADDD86D8(v36, v37);
    v39 = type metadata accessor for Ref();
    sub_1AE002018(v59, v39);
    sub_1ADDCC35C(v38.n128_i64[0], v38.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  v29 = v27[1];
  v61.n128_u64[0] = *v27;
  v28 = v61.n128_u64[0];
  v61.n128_u64[1] = v29;
  swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v61, &v62);
  v30 = v62;
  v61 = v62;
  sub_1ADDD86D8(v28, v29);
  v31 = type metadata accessor for Ref();
  sub_1AE002018(v59, v31);
  sub_1ADDCC35C(v30.n128_i64[0], v30.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEFF33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a2;
  v112 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v104 = AssociatedTypeWitness;
  v7 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v87 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v87 - v11;
  v98 = swift_getAssociatedTypeWitness();
  v97 = *(v98 - 8);
  v12 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v87 - v13;
  v95 = swift_getAssociatedTypeWitness();
  v94 = *(v95 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v87 - v15;
  v92 = swift_getAssociatedTypeWitness();
  v91 = *(v92 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v87 - v17;
  v106 = swift_getAssociatedTypeWitness();
  v89 = *(v106 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v87 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v88 = *(v20 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v87 = *(v24 - 8);
  v25 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v110 = swift_getAssociatedTypeWitness();
  v28 = *(v110 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v87 - v30;
  v31 = *(a3 + 36);
  v32 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114.n128_u64[0] = v32;
  v114.n128_u64[1] = AssociatedConformanceWitness;
  v115 = &protocol witness table for Int;
  v116 = MEMORY[0x1E69E6540];
  v34 = type metadata accessor for CRExtensible();
  v35 = v107;
  CRExtensible.rawValue.getter(v34, &v117);
  v36 = v28;
  v108 = v28 + 16;
  if (v117 > 2)
  {
    if (v117 <= 4)
    {
      v37 = v35[1];
      v113.n128_u64[0] = *v35;
      v38 = v113.n128_u64[0];
      v113.n128_u64[1] = v37;
      if (v117 == 3)
      {
        v39 = v92;
        swift_getAssociatedConformanceWitness();
        v74 = Ref.init(id:)(&v113, &v114);
        v75 = v114;
        v42 = v110;
        v43 = v112;
        (*(v36 + 16))(v109, v112, v110, v74);
        sub_1ADDD86D8(v38, v37);
        v44 = v90;
        swift_dynamicCast();
        v113 = v75;
        sub_1ADECCBCC(v44, &v113, v39);
        v45 = &v118;
      }

      else
      {
        v39 = v95;
        swift_getAssociatedConformanceWitness();
        v40 = Ref.init(id:)(&v113, &v114);
        v41 = v114;
        v42 = v110;
        v43 = v112;
        (*(v36 + 16))(v109, v112, v110, v40);
        sub_1ADDD86D8(v38, v37);
        v44 = v93;
        swift_dynamicCast();
        v113 = v41;
        sub_1ADECCBCC(v44, &v113, v39);
        v45 = &v119;
      }

      goto LABEL_16;
    }

    if (v117 == 5)
    {
      v76 = v35[1];
      v113.n128_u64[0] = *v35;
      v77 = v113.n128_u64[0];
      v113.n128_u64[1] = v76;
      v39 = v98;
      swift_getAssociatedConformanceWitness();
      v78 = Ref.init(id:)(&v113, &v114);
      v79 = v114;
      v42 = v110;
      v43 = v112;
      (*(v36 + 16))(v109, v112, v110, v78);
      sub_1ADDD86D8(v77, v76);
      v44 = v96;
      swift_dynamicCast();
      v113 = v79;
      sub_1ADECCBCC(v44, &v113, v39);
      v45 = &v120;
LABEL_16:
      v62 = *(v45 - 32);
      goto LABEL_17;
    }

    if (v117 == 6)
    {
      v58 = v35[1];
      v113.n128_u64[0] = *v35;
      v59 = v113.n128_u64[0];
      v113.n128_u64[1] = v58;
      v39 = v101;
      swift_getAssociatedConformanceWitness();
      v60 = Ref.init(id:)(&v113, &v114);
      v61 = v114;
      v42 = v110;
      v43 = v112;
      (*(v36 + 16))(v109, v112, v110, v60);
      sub_1ADDD86D8(v59, v58);
      v44 = v99;
      swift_dynamicCast();
      v113 = v61;
      sub_1ADECCBCC(v44, &v113, v39);
      v62 = v100;
LABEL_17:
      (*(v62 + 8))(v44, v39);

      return (*(v36 + 8))(v43, v42);
    }

LABEL_13:
    v70 = v35[1];
    v113.n128_u64[0] = *v35;
    v71 = v113.n128_u64[0];
    v113.n128_u64[1] = v70;
    v39 = v104;
    swift_getAssociatedConformanceWitness();
    v72 = Ref.init(id:)(&v113, &v114);
    v73 = v114;
    v42 = v110;
    v43 = v112;
    (*(v36 + 16))(v109, v112, v110, v72);
    sub_1ADDD86D8(v71, v70);
    v44 = v102;
    swift_dynamicCast();
    v113 = v73;
    sub_1ADECCBCC(v44, &v113, v39);
    v62 = v103;
    goto LABEL_17;
  }

  v46 = v27;
  v47 = v24;
  v48 = v20;
  v49 = v105;
  v50 = v106;
  if (!v117)
  {
    v63 = v35[1];
    v113.n128_u64[0] = *v35;
    v64 = v113.n128_u64[0];
    v113.n128_u64[1] = v63;
    v65 = v47;
    swift_getAssociatedConformanceWitness();
    v66 = Ref.init(id:)(&v113, &v114);
    v107 = v114.n128_u64[1];
    v67 = v114.n128_u64[0];
    v68 = v110;
    v69 = v112;
    (*(v36 + 16))(v109, v112, v110, v66);
    sub_1ADDD86D8(v64, v63);
    swift_dynamicCast();
    v113.n128_u64[0] = v67;
    v113.n128_u64[1] = v107;
    sub_1ADECCBCC(v46, &v113, v65);
    (*(v87 + 8))(v46, v65);

    return (*(v36 + 8))(v69, v68);
  }

  if (v117 != 1)
  {
    if (v117 == 2)
    {
      v51 = v35[1];
      v113.n128_u64[0] = *v35;
      v52 = v113.n128_u64[0];
      v113.n128_u64[1] = v51;
      swift_getAssociatedConformanceWitness();
      v53 = Ref.init(id:)(&v113, &v114);
      v54 = v114.n128_u64[1];
      v107 = v114.n128_u64[0];
      v55 = v110;
      v56 = v112;
      (*(v36 + 16))(v109, v112, v110, v53);
      sub_1ADDD86D8(v52, v51);
      swift_dynamicCast();
      v113.n128_u64[0] = v107;
      v113.n128_u64[1] = v54;
      sub_1ADECCBCC(v49, &v113, v50);
      (*(v89 + 8))(v49, v50);

      return (*(v36 + 8))(v56, v55);
    }

    goto LABEL_13;
  }

  v80 = v35[1];
  v113.n128_u64[0] = *v35;
  v81 = v113.n128_u64[0];
  v113.n128_u64[1] = v80;
  v82 = v48;
  swift_getAssociatedConformanceWitness();
  v83 = Ref.init(id:)(&v113, &v114);
  v107 = v114.n128_u64[1];
  v84 = v114.n128_u64[0];
  v85 = v110;
  v86 = v112;
  (*(v36 + 16))(v109, v112, v110, v83);
  sub_1ADDD86D8(v81, v80);
  swift_dynamicCast();
  v113.n128_u64[0] = v84;
  v113.n128_u64[1] = v107;
  sub_1ADECCBCC(v23, &v113, v82);
  (*(v88 + 8))(v23, v82);

  return (*(v36 + 8))(v86, v85);
}

uint64_t sub_1ADF0005C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_7();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_7, &associated type descriptor for Tagged_7.AnyType, sub_1ADEFF33C);
}

uint64_t SharedTagged_7.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_7, &associated type descriptor for Tagged_7.AnyType, sub_1ADEFF33C);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_7.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  SharedTagged_7.subscript.getter(a2, a3);
  return sub_1ADF002E0;
}

uint64_t SharedTagged_7.visitReferences(_:)(void *a1, uint64_t a2)
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

uint64_t sub_1ADF006D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_7.init(from:)(a1, a3);
}

uint64_t SharedTagged_7.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v9 = *(type metadata accessor for SharedTagged_7() + 36);
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
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
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
    v41(v36, &v45, a1, 0, v36, v39);
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

uint64_t (*SharedTagged_8.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_8.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_8.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_8.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_8.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_8, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_8, a5);
}

uint64_t SharedTagged_8.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 4;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 5;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 6;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 7;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_8();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_8.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 4;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 5;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 6;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 7;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_8();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_8.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 5;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 6;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 7;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_8();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_8.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_8() + 36);
  v5 = *(type metadata accessor for SharedTagged_8() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_8.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.tagged8.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
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

uint64_t SharedTagged_8.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
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
  if (v15.n128_i64[0] >= 8)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_8.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_8.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v69 = a1;
  v70 = a3;
  v71 = a5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = v53 - v10;
  v64 = swift_getAssociatedTypeWitness();
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v53 - v12;
  v62 = swift_getAssociatedTypeWitness();
  v13 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v53 - v14;
  v60 = swift_getAssociatedTypeWitness();
  v15 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = v53 - v16;
  v58 = swift_getAssociatedTypeWitness();
  v17 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = v53 - v18;
  v56 = swift_getAssociatedTypeWitness();
  v19 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v53 - v20;
  v54 = swift_getAssociatedTypeWitness();
  v21 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53[1] = v53 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = swift_getAssociatedTypeWitness();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = *(a2 + 36);
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73.n128_u64[0] = v28;
  v73.n128_u64[1] = AssociatedConformanceWitness;
  v74 = &protocol witness table for Int;
  v75 = MEMORY[0x1E69E6540];
  v30 = type metadata accessor for CRExtensible();
  v31 = v5;
  v32 = v67;
  CRExtensible.rawValue.getter(v30, &v76);
  v68 = v32 + 8;
  if (v76 > 3)
  {
    if (v76 > 5)
    {
      if (v76 == 6)
      {
        v49 = v5[1];
        v72.n128_u64[0] = *v31;
        v48 = v72.n128_u64[0];
        v72.n128_u64[1] = v49;
        v39 = v62;
        v40 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v72, &v73);
        v72 = v73;
        v41 = *(v32 + 8);
        sub_1ADDD86D8(v48, v49);
      }

      else
      {
        if (v76 != 7)
        {
LABEL_19:
          v51 = v5[1];
          v72.n128_u64[0] = *v31;
          v50 = v72.n128_u64[0];
          v72.n128_u64[1] = v51;
          v39 = AssociatedTypeWitness;
          v40 = swift_getAssociatedConformanceWitness();
          Ref.init(id:)(&v72, &v73);
          v72 = v73;
          v41 = *(v32 + 8);
          sub_1ADDD86D8(v50, v51);
          goto LABEL_20;
        }

        v43 = v5[1];
        v72.n128_u64[0] = *v31;
        v42 = v72.n128_u64[0];
        v72.n128_u64[1] = v43;
        v39 = v64;
        v40 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v72, &v73);
        v72 = v73;
        v41 = *(v32 + 8);
        sub_1ADDD86D8(v42, v43);
      }

LABEL_20:
      v41(&v72, v39, v40, v70, v32);
      sub_1ADDCC35C(v72.n128_i64[0], v72.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    v38 = v5[1];
    v72.n128_u64[0] = *v31;
    v37 = v72.n128_u64[0];
    v72.n128_u64[1] = v38;
    if (v76 == 4)
    {
      v39 = v58;
    }

    else
    {
      v39 = v60;
    }

LABEL_9:
    v40 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v72, &v73);
    v72 = v73;
    v41 = *(v32 + 8);
    sub_1ADDD86D8(v37, v38);
    goto LABEL_20;
  }

  if (v76 > 1)
  {
    v38 = v5[1];
    v72.n128_u64[0] = *v31;
    v37 = v72.n128_u64[0];
    v72.n128_u64[1] = v38;
    if (v76 == 2)
    {
      v39 = v54;
    }

    else
    {
      v39 = v56;
    }

    goto LABEL_9;
  }

  if (!v76)
  {
    v45 = v5[1];
    v72.n128_u64[0] = *v5;
    v44 = v72.n128_u64[0];
    v72.n128_u64[1] = v45;
    v46 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v72, &v73);
    v72 = v73;
    v47 = *(v32 + 8);
    sub_1ADDD86D8(v44, v45);
    v47(&v72, v25, v46, v70, v32);
    sub_1ADDCC35C(v72.n128_i64[0], v72.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (v76 != 1)
  {
    goto LABEL_19;
  }

  v34 = v5[1];
  v72.n128_u64[0] = *v31;
  v33 = v72.n128_u64[0];
  v72.n128_u64[1] = v34;
  v35 = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v72, &v73);
  v72 = v73;
  v36 = *(v32 + 8);
  sub_1ADDD86D8(v33, v34);
  v36(&v72, v23, v35, v70, v32);
  sub_1ADDCC35C(v72.n128_i64[0], v72.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADF070F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v57 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = v43 - v7;
  v52 = swift_getAssociatedTypeWitness();
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v43 - v9;
  v50 = swift_getAssociatedTypeWitness();
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v43 - v11;
  v48 = swift_getAssociatedTypeWitness();
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v43 - v13;
  v46 = swift_getAssociatedTypeWitness();
  v14 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v43 - v15;
  v44 = swift_getAssociatedTypeWitness();
  v16 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43[1] = v43 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v43[0] = v43 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = *(a2 + 36);
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59.n128_u64[0] = v26;
  v59.n128_u64[1] = AssociatedConformanceWitness;
  v60 = &protocol witness table for Int;
  v61 = MEMORY[0x1E69E6540];
  v28 = type metadata accessor for CRExtensible();
  v29 = v55;
  CRExtensible.rawValue.getter(v28, &v62);
  if (v62 > 3)
  {
    goto LABEL_11;
  }

  if (v62 > 1)
  {
    if (v62 == 2)
    {
      goto LABEL_5;
    }

LABEL_11:
    v39 = v29[1];
    v58.n128_u64[0] = *v29;
    v38 = v58.n128_u64[0];
    v58.n128_u64[1] = v39;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v58, &v59);
    v40 = v59;
    v58 = v59;
    sub_1ADDD86D8(v38, v39);
    v41 = type metadata accessor for Ref();
    sub_1AE002018(v56, v41);
    sub_1ADDCC35C(v40.n128_i64[0], v40.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (!v62)
  {
    v35 = v29[1];
    v58.n128_u64[0] = *v29;
    v34 = v58.n128_u64[0];
    v58.n128_u64[1] = v35;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v58, &v59);
    v36 = v59;
    v58 = v59;
    sub_1ADDD86D8(v34, v35);
    v37 = type metadata accessor for Ref();
    sub_1AE002018(v56, v37);
    sub_1ADDCC35C(v36.n128_i64[0], v36.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (v62 != 1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v31 = v29[1];
  v58.n128_u64[0] = *v29;
  v30 = v58.n128_u64[0];
  v58.n128_u64[1] = v31;
  swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v58, &v59);
  v32 = v59;
  v58 = v59;
  sub_1ADDD86D8(v30, v31);
  v33 = type metadata accessor for Ref();
  sub_1AE002018(v56, v33);
  sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADF07AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v125 = a2;
  v126 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = *(AssociatedTypeWitness - 8);
  v120 = AssociatedTypeWitness;
  v7 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v118 = &v97 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v116 = *(v9 - 8);
  v117 = v9;
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v97 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v113 = *(v12 - 8);
  v114 = v12;
  v13 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v97 - v14;
  v111 = swift_getAssociatedTypeWitness();
  v110 = *(v111 - 8);
  v15 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v97 - v16;
  v108 = swift_getAssociatedTypeWitness();
  v107 = *(v108 - 8);
  v17 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v97 - v18;
  v105 = swift_getAssociatedTypeWitness();
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v97 - v20;
  v102 = swift_getAssociatedTypeWitness();
  v101 = *(v102 - 8);
  v21 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v97 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v99 = *(v23 - 8);
  v24 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v97 - v25;
  v27 = swift_getAssociatedTypeWitness();
  v98 = *(v27 - 8);
  v28 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v97 - v29;
  v124 = swift_getAssociatedTypeWitness();
  v31 = *(v124 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v97 - v33;
  v34 = *(a3 + 36);
  v35 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128.n128_u64[0] = v35;
  v128.n128_u64[1] = AssociatedConformanceWitness;
  v129 = &protocol witness table for Int;
  v130 = MEMORY[0x1E69E6540];
  v37 = type metadata accessor for CRExtensible();
  v38 = v121;
  v39 = v31;
  CRExtensible.rawValue.getter(v37, &v131);
  v122 = v31 + 16;
  if (v131 > 3)
  {
    if (v131 <= 5)
    {
      v48 = v38;
      v49 = *v38;
      v50 = v48[1];
      v127.n128_u64[0] = v49;
      v127.n128_u64[1] = v50;
      if (v131 == 4)
      {
        v51 = v108;
        swift_getAssociatedConformanceWitness();
        v75 = Ref.init(id:)(&v127, &v128);
        v76 = v128;
        v54 = v124;
        v55 = v126;
        (*(v31 + 16))(v123, v126, v124, v75);
        sub_1ADDD86D8(v49, v50);
        v56 = v106;
        swift_dynamicCast();
        v127 = v76;
        sub_1ADECCBCC(v56, &v127, v51);
        v57 = v107;
      }

      else
      {
        v51 = v111;
        swift_getAssociatedConformanceWitness();
        v52 = Ref.init(id:)(&v127, &v128);
        v53 = v128;
        v54 = v124;
        v55 = v126;
        (*(v31 + 16))(v123, v126, v124, v52);
        sub_1ADDD86D8(v49, v50);
        v56 = v109;
        swift_dynamicCast();
        v127 = v53;
        sub_1ADECCBCC(v56, &v127, v51);
        v57 = v110;
      }

      goto LABEL_19;
    }

    if (v131 == 6)
    {
      v87 = v38;
      v88 = *v38;
      v89 = v87[1];
      v127.n128_u64[0] = v88;
      v127.n128_u64[1] = v89;
      v51 = v114;
      swift_getAssociatedConformanceWitness();
      v90 = Ref.init(id:)(&v127, &v128);
      v91 = v128;
      v54 = v124;
      v55 = v126;
      (*(v31 + 16))(v123, v126, v124, v90);
      sub_1ADDD86D8(v88, v89);
      v56 = v112;
      swift_dynamicCast();
      v127 = v91;
      sub_1ADECCBCC(v56, &v127, v51);
      v57 = v113;
    }

    else
    {
      if (v131 != 7)
      {
LABEL_18:
        v92 = v38;
        v93 = *v38;
        v94 = v92[1];
        v127.n128_u64[0] = v93;
        v127.n128_u64[1] = v94;
        v51 = v120;
        swift_getAssociatedConformanceWitness();
        v95 = Ref.init(id:)(&v127, &v128);
        v96 = v128;
        v54 = v124;
        v55 = v126;
        (*(v31 + 16))(v123, v126, v124, v95);
        sub_1ADDD86D8(v93, v94);
        v56 = v118;
        swift_dynamicCast();
        v127 = v96;
        sub_1ADECCBCC(v56, &v127, v51);
        v57 = v119;
        goto LABEL_19;
      }

      v63 = v38;
      v64 = *v38;
      v65 = v63[1];
      v127.n128_u64[0] = v64;
      v127.n128_u64[1] = v65;
      v51 = v117;
      swift_getAssociatedConformanceWitness();
      v66 = Ref.init(id:)(&v127, &v128);
      v67 = v128;
      v54 = v124;
      v55 = v126;
      (*(v31 + 16))(v123, v126, v124, v66);
      sub_1ADDD86D8(v64, v65);
      v56 = v115;
      swift_dynamicCast();
      v127 = v67;
      sub_1ADECCBCC(v56, &v127, v51);
      v57 = v116;
    }
  }

  else
  {
    if (v131 <= 1)
    {
      if (!v131)
      {
        v68 = v38;
        v69 = *v38;
        v70 = v68[1];
        v127.n128_u64[0] = v69;
        v127.n128_u64[1] = v70;
        swift_getAssociatedConformanceWitness();
        v71 = Ref.init(id:)(&v127, &v128);
        v72 = v128.n128_u64[1];
        v121 = v128.n128_u64[0];
        v73 = v124;
        v74 = v126;
        (*(v31 + 16))(v123, v126, v124, v71);
        sub_1ADDD86D8(v69, v70);
        swift_dynamicCast();
        v127.n128_u64[0] = v121;
        v127.n128_u64[1] = v72;
        sub_1ADECCBCC(v30, &v127, v27);
        (*(v98 + 8))(v30, v27);

        return (*(v31 + 8))(v74, v73);
      }

      if (v131 == 1)
      {
        v40 = v38;
        v41 = *v38;
        v42 = v40[1];
        v127.n128_u64[0] = v41;
        v127.n128_u64[1] = v42;
        swift_getAssociatedConformanceWitness();
        v43 = Ref.init(id:)(&v127, &v128);
        v44 = v128.n128_u64[1];
        v121 = v128.n128_u64[0];
        v45 = v124;
        v46 = v126;
        (*(v31 + 16))(v123, v126, v124, v43);
        sub_1ADDD86D8(v41, v42);
        swift_dynamicCast();
        v127.n128_u64[0] = v121;
        v127.n128_u64[1] = v44;
        sub_1ADECCBCC(v26, &v127, v23);
        (*(v99 + 8))(v26, v23);

        return (*(v31 + 8))(v46, v45);
      }

      goto LABEL_18;
    }

    if (v131 == 2)
    {
      v77 = v38;
      v78 = *v38;
      v79 = v77[1];
      v127.n128_u64[0] = v78;
      v127.n128_u64[1] = v79;
      v80 = v102;
      swift_getAssociatedConformanceWitness();
      v81 = Ref.init(id:)(&v127, &v128);
      v82 = v128;
      v83 = *(v31 + 16);
      v84 = v124;
      v85 = v126;
      v83(v123, v126, v124, v81);
      sub_1ADDD86D8(v78, v79);
      v86 = v100;
      swift_dynamicCast();
      v127 = v82;
      sub_1ADECCBCC(v86, &v127, v80);
      (*(v101 + 8))(v86, v80);

      return (*(v39 + 8))(v85, v84);
    }

    v58 = v38;
    v59 = *v38;
    v60 = v58[1];
    v127.n128_u64[0] = v59;
    v127.n128_u64[1] = v60;
    v51 = v105;
    swift_getAssociatedConformanceWitness();
    v61 = Ref.init(id:)(&v127, &v128);
    v62 = v128;
    v54 = v124;
    v55 = v126;
    (*(v31 + 16))(v123, v126, v124, v61);
    sub_1ADDD86D8(v59, v60);
    v56 = v103;
    swift_dynamicCast();
    v127 = v62;
    sub_1ADECCBCC(v56, &v127, v51);
    v57 = v104;
  }

LABEL_19:
  (*(v57 + 8))(v56, v51);

  return (*(v31 + 8))(v55, v54);
}

uint64_t sub_1ADF089B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_8();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_8, &associated type descriptor for Tagged_8.AnyType, sub_1ADF07AE8);
}

uint64_t SharedTagged_8.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_8, &associated type descriptor for Tagged_8.AnyType, sub_1ADF07AE8);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_8.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  SharedTagged_8.subscript.getter(a2, a3);
  return sub_1ADF08C34;
}

uint64_t SharedTagged_8.visitReferences(_:)(void *a1, uint64_t a2)
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

uint64_t sub_1ADF09060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_8.init(from:)(a1, a3);
}

uint64_t SharedTagged_8.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v9 = *(type metadata accessor for SharedTagged_8() + 36);
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
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
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
    v41(v36, &v45, a1, 0, v36, v39);
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